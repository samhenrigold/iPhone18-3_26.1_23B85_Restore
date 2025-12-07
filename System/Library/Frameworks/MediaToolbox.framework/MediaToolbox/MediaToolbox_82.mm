unint64_t MediaSegmentStartTimeList_RB_NEXT(unint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 8);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 8) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 16);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(uint64_t a1, int a2, uint64_t *a3, CFTypeRef *a4, void *a5, double *a6, double a7)
{
  v7 = a6;
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a6)
        {
          FigSimpleMutexLock();
          if (*(a1 + 272))
          {
            FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_1(v29);
            v15 = 0;
            v24 = v29[0];
          }

          else
          {
            v14 = *(a1 + 168);
            if (v14)
            {
              v28 = v7;
              v15 = 0;
              v16 = 0;
              v17 = 0.0;
              do
              {
                LOBYTE(v29[0]) = 0;
                if ((*(a1 + 220) & 2) == 0 || !stream_EnsurePersistentStreamInfo(v14, v29))
                {
                  if (*(v14 + 56) == a2)
                  {
                    v18 = *(v14 + 24);
                    if (v18)
                    {
                      while (1)
                      {
                        v19 = *(v18 + 120);
                        if (v19 <= a7 && v19 + *(v18 + 128) > a7)
                        {
                          break;
                        }

                        if (v19 >= a7)
                        {
                          v20 = 8;
                        }

                        else
                        {
                          v20 = 16;
                        }

                        v18 = *(v18 + v20);
                        if (!v18)
                        {
                          goto LABEL_22;
                        }
                      }

                      LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(v18, 1);
                      v22 = *(LastSegmentOfContiguousRangeContainingSegment + 120);
                      if (*(LastSegmentOfContiguousRangeContainingSegment + 128) + v22 - a7 > v17)
                      {
                        v17 = *(LastSegmentOfContiguousRangeContainingSegment + 128) + v22 - a7;
                        v15 = v14;
                      }

                      if (*(v14 + 80) > v16)
                      {
                        v16 = *(v14 + 80);
                      }
                    }
                  }

LABEL_22:
                  if ((*(a1 + 220) & 2) != 0)
                  {
                    if (LOBYTE(v29[0]))
                    {
                      stream_UnlockPersistentStreamInfoForAnything(v14);
                      if (v23)
                      {
                        v24 = v23;
                        goto LABEL_34;
                      }
                    }
                  }
                }

                v14 = *(v14 + 8);
              }

              while (v14);
              if (v15 && v16 > *(v15 + 80))
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                v7 = v28;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v24 = 0;
                goto LABEL_37;
              }

              v24 = 0;
LABEL_34:
              v7 = v28;
LABEL_37:
              FigSimpleMutexUnlock();
              if (v24)
              {
                return v24;
              }

              goto LABEL_38;
            }

            v15 = 0;
            v24 = 0;
          }

          v17 = 0.0;
          goto LABEL_37;
        }

        FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_2(v29);
      }

      else
      {
        FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_3(v29);
      }
    }

    else
    {
      FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_4(v29);
    }
  }

  else
  {
    FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_5(v29);
  }

  v15 = 0;
  v24 = v29[0];
  v17 = 0.0;
  if (v29[0])
  {
    return v24;
  }

LABEL_38:
  *a3 = v15;
  if (v15)
  {
    *a4 = CFRetain(*(v15 + 64));
    *v7 = v17;
    if (a5)
    {
      v26 = *(v15 + 72);
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      goto LABEL_44;
    }
  }

  else
  {
    *a4 = 0;
    *v7 = v17;
    if (a5)
    {
      v26 = 0;
LABEL_44:
      *a5 = v26;
    }
  }

  return v24;
}

unint64_t stream_GetLastSegmentOfContiguousRangeContainingSegment(unint64_t a1, int a2)
{
  v2 = a1;
  if ((*(a1 + 160) & 5) == 1)
  {
    for (i = MediaSegmentStartTimeList_RB_NEXT(a1); i; v2 = v5)
    {
      if ((*(v2 + 160) & 5) != 1)
      {
        break;
      }

      v5 = i;
      if (a2)
      {
        if ((*(i + 160) & 1) == 0)
        {
          break;
        }
      }

      i = MediaSegmentStartTimeList_RB_NEXT(i);
    }
  }

  return v2;
}

uint64_t FigStreamingCacheMediaStreamSetPlaylist(uint64_t a1, void *a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_3(v18);
    return v18[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_2(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_1(&v16 + 1);
    v10 = HIDWORD(v16);
    goto LABEL_8;
  }

  v8 = *(a1 + 168);
  if (!v8)
  {
LABEL_7:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18[1]);
    v10 = v9;
LABEL_8:
    FigSimpleMutexUnlock();
    return v10;
  }

  while (v8 != a2)
  {
    v8 = v8[1];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = v8[11];
  v8[11] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v8[14];
  v8[14] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if ((*(a1 + 220) & 2) != 0)
  {
    CFRetain(a1);
    dispatch_async_f(*(a1 + 240), v8, stream_WriteMediaPlaylistToDiskDispatchFunction);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigStreamingCacheMediaStreamCopyPlaylist(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_3(v16);
    return v16[0];
  }

  if (!(a3 | a4))
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_1(&v14 + 1);
    return HIDWORD(v14);
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_2(&v15);
    v10 = v15;
  }

  else
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      while (v8 != a2)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      if (a3)
      {
        sc_CopyPlaylistForStream(a1, v8, a3);
        v10 = v13;
        if (a4 && !v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (a4)
        {
LABEL_10:
          v11 = *(v8 + 112);
          if (v11)
          {
            v11 = CFRetain(v11);
          }

          v10 = 0;
          *a4 = v11;
          goto LABEL_14;
        }

        v10 = 0;
      }
    }

    else
    {
LABEL_7:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
      v10 = v9;
    }
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigStreamingCacheMediaStreamSetNetworkURL(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_4(v13);
    return v13[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_3(v13);
    return v13[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_2(v13);
    return v13[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_1(v13);
    v8 = v13[0];
    goto LABEL_14;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v9 = *(v6 + 64);
    *(v6 + 64) = a3;
    CFRetain(a3);
    if (v9)
    {
      CFRelease(v9);
    }

    if ((*(a1 + 220) & 2) == 0)
    {
      goto LABEL_13;
    }

    stream_SetPropertyForPersistentStreamInfoUpgradingToWritingIfNecessary(v6, @"StreamInfoMediaPlaylistNetworkURL", *(v6 + 64));
    if (!v7)
    {
      if (*(v6 + 120) && !*(v6 + 121))
      {
        stream_DowngradePersistentStreamInfoForReading(v6);
      }

LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }
  }

  else
  {
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]);
  }

  v8 = v7;
LABEL_14:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamCopyNetworkURL(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_4(v13);
    return v13[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_3(v13);
    return v13[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_2(v13);
    return v13[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_1(v13);
    v8 = v13[0];
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      v9 = *(v6 + 64);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v8 = 0;
      *a3 = v9;
    }

    else
    {
LABEL_8:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]);
      v8 = v7;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamReserveSpaceForByteSize(uint64_t a1, uint64_t a2, const void *a3, double a4)
{
  v13 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_4(v15);
    return v15[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_3(v15);
    return v15[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_1(v15);
  }

  else
  {
    if (!*(a1 + 216) || (v8 = *(a1 + 112), v8 <= 0.0) || v8 + *(a1 + 192) > a4)
    {
      v9 = *(a1 + 168);
      if (v9)
      {
        while (v9 != a2)
        {
          v9 = *(v9 + 8);
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        CFDictionarySetValue(*(a1 + 232), *(v9 + 56), 0);
        if (sc_HasEnoughAvailableBackingMemory(a1, a3, &v13) || sc_GetBackingForMediaStreamAtTime(a1, v9, v13, a4))
        {
          CFDictionarySetValue(*(a1 + 232), *(v9 + 56), a3);
          v11 = 0;
        }

        else
        {
          v11 = 4294951055;
        }
      }

      else
      {
LABEL_10:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15[1]);
        v11 = v10;
      }

      goto LABEL_13;
    }

    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_2(v15);
  }

  v11 = v15[0];
LABEL_13:
  FigSimpleMutexUnlock();
  return v11;
}

BOOL sc_HasEnoughAvailableBackingMemory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  context = 0;
  CFDictionaryApplyFunction(*(a1 + 232), sc_ComputeTotalReservedSizeFunc, &context);
  if ((*(a1 + 220) & 2) == 0)
  {
    v6 = *(a1 + 72);
    if (v6 >= 1)
    {
      result = v6 >= (*(a1 + 184) + a2 + context);
      if (!a3)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_6:
    result = 1;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    goto LABEL_6;
  }

  result = FigShared_ReserveDiskCacheBacking(*(a1 + 32), *(a1 + 48), *(a1 + 184) + a2 + context) == 0;
  if (!a3)
  {
    return result;
  }

LABEL_9:
  if (result)
  {
    a2 = 0;
  }

  else if ((*(a1 + 220) & 2) == 0)
  {
    a2 = *(a1 + 184) + a2 + context - *(a1 + 72);
  }

  *a3 = a2;
  return result;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentAtTime(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_4(v16);
LABEL_25:
    i = 0;
LABEL_26:
    v10 = v16[0];
    if (v16[0])
    {
      return v10;
    }

    goto LABEL_20;
  }

  i = a2;
  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_3(v16);
    goto LABEL_26;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_2(v16);
    goto LABEL_25;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_1(v16);
    i = 0;
    v10 = v16[0];
  }

  else
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      while (v8 != i)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      for (i = *(v8 + 24); i; i = *(i + v12))
      {
        v11 = *(i + 120);
        if (v11 <= a4 && v11 + *(i + 128) > a4)
        {
          break;
        }

        v12 = v11 >= a4 ? 8 : 16;
      }

      if (i)
      {
        v10 = 0;
      }

      else
      {
        v10 = 4294951053;
      }
    }

    else
    {
LABEL_8:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
      v10 = v9;
      i = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (!v10)
  {
LABEL_20:
    *a3 = i;
  }

  return v10;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t *a6)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_6(&v30);
LABEL_26:
    v15 = 0;
    LOBYTE(v9) = 0;
LABEL_27:
    v14 = v30;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_5(&v30);
    goto LABEL_26;
  }

  v9 = a3;
  if (!a3)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_4(&v30);
    v15 = 0;
    goto LABEL_27;
  }

  if (a4 < 0)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_3(&v30);
    goto LABEL_26;
  }

  if (!a6)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_2(&v30);
    LOBYTE(v9) = 0;
    v14 = v30;
    if (!a5)
    {
      return v14;
    }

    goto LABEL_20;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_1(&v30);
    v15 = 0;
    LOBYTE(v9) = 0;
    v14 = v30;
  }

  else
  {
    v12 = *(a1 + 168);
    if (v12)
    {
      while (v12 != a2)
      {
        v12 = *(v12 + 8);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      *(&v24 + 1) = v9;
      *&v25 = a4;
      v16 = MediaSegmentOffsetList_RB_FIND((v12 + 32), &v19);
      v15 = v16;
      if (v16)
      {
        v14 = 0;
        LOBYTE(v9) = v16[20] & 1;
      }

      else
      {
        LOBYTE(v9) = 0;
        v14 = 4294951053;
      }
    }

    else
    {
LABEL_10:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, DWORD2(v19), v20);
      v14 = v13;
      v15 = 0;
      LOBYTE(v9) = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (a6)
  {
LABEL_15:
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    *a6 = v17;
  }

LABEL_19:
  if (a5)
  {
LABEL_20:
    *a5 = v9;
  }

  return v14;
}

uint64_t **MediaSegmentOffsetList_RB_FIND(uint64_t ***a1, void *a2)
{
  for (i = *a1; i; i = i[v5])
  {
    started = segment_SortByURLAndStartOffset(a2, i);
    if (started < 0)
    {
      v5 = 4;
    }

    else
    {
      if (!started)
      {
        return i;
      }

      v5 = 5;
    }
  }

  return i;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  valuePtr = a3;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_5(&v29);
LABEL_23:
    v13 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_4(&v29);
    goto LABEL_23;
  }

  if (!a5)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_3(&v29);
    goto LABEL_23;
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v9)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_1(&v29);
      v13 = 0;
      v14 = 0;
      v12 = v29;
    }

    else
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        while (v10 != a2)
        {
          v10 = *(v10 + 8);
          if (!v10)
          {
            goto LABEL_9;
          }
        }

        *(&v23 + 1) = v9;
        v15 = MediaSegmentMediaSequenceNumberList_RB_FIND((v10 + 40), &v17);
        v13 = v15;
        if (v15)
        {
          v12 = 0;
          v14 = *(v15 + 160) & 1;
        }

        else
        {
          v14 = 0;
          v12 = 4294951053;
        }
      }

      else
      {
LABEL_9:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, DWORD2(v17), v18);
        v12 = v11;
        v13 = 0;
        v14 = 0;
      }
    }

    FigSimpleMutexUnlock();
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_2(&v29);
  v13 = 0;
LABEL_25:
  v14 = 0;
  v12 = v29;
  if (!v29)
  {
LABEL_14:
    *a5 = v13;
  }

LABEL_15:
  if (a4)
  {
    *a4 = v14;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t MediaSegmentMediaSequenceNumberList_RB_FIND(uint64_t *a1, uint64_t a2)
{
  for (i = *a1; i; i = *(i + v5))
  {
    v4 = CFNumberCompare(*(a2 + 104), *(i + 104), 0);
    if (v4 < 0)
    {
      v5 = 56;
    }

    else
    {
      if (!v4)
      {
        return i;
      }

      v5 = 64;
    }
  }

  return i;
}

uint64_t FigStreamingCacheMediaStreamCopyCachedTimeRanges(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v31 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_6(&range);
    return LODWORD(range.start.value);
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_5(&range);
    return LODWORD(range.start.value);
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_4(&range);
    return LODWORD(range.start.value);
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_1(&range);
    goto LABEL_41;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = Mutable;
      if ((*(a1 + 220) & 2) != 0)
      {
        v25 = stream_EnsurePersistentStreamInfo(v6, &v31);
        if (v25)
        {
          goto LABEL_34;
        }
      }

      v12 = *(v6 + 24);
      if (v12)
      {
        do
        {
          started = v12;
          v12 = *(v12 + 8);
        }

        while (v12);
        do
        {
          memset(&range, 0, sizeof(range));
          memset(&v29, 0, sizeof(v29));
          memset(&v28, 0, sizeof(v28));
          if (*(started + 160))
          {
            CMTimeMakeWithSeconds(&v29, *(started + 120), 1000);
            LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(started, 1);
            v14 = LastSegmentOfContiguousRangeContainingSegment;
            v16 = *(LastSegmentOfContiguousRangeContainingSegment + 120);
            if (*(LastSegmentOfContiguousRangeContainingSegment + 160))
            {
              v16 = v16 + *(LastSegmentOfContiguousRangeContainingSegment + 128);
            }

            CMTimeMakeWithSeconds(&v28, v16 - *(started + 120), 1000);
            v26.start = v29;
            duration = v28;
            CMTimeRangeMake(&range, &v26.start, &duration);
            v17 = FigGetAllocatorForMedia();
            v26 = range;
            v18 = CMTimeRangeCopyAsDictionary(&v26, v17);
            if (!v18)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26.start.value, v26.start.timescale, LODWORD(v26.start.epoch));
              goto LABEL_34;
            }

            v19 = v18;
            CFArrayAppendValue(v11, v18);
            CFRelease(v19);
          }

          else
          {
            v14 = started;
          }

          started = MediaSegmentStartTimeList_RB_NEXT(v14);
        }

        while (started);
      }

      if (!CFArrayGetCount(v11))
      {
        v20 = FigGetAllocatorForMedia();
        v21 = *(MEMORY[0x1E6960CA8] + 16);
        *&range.start.value = *MEMORY[0x1E6960CA8];
        *&range.start.epoch = v21;
        *&range.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
        v22 = CMTimeRangeCopyAsDictionary(&range, v20);
        if (!v22)
        {
          FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_2(&range);
          value_low = LODWORD(range.start.value);
          goto LABEL_26;
        }

        v23 = v22;
        CFArrayAppendValue(v11, v22);
        CFRelease(v23);
      }

      if ((*(a1 + 220) & 2) != 0 && v31 && (stream_UnlockPersistentStreamInfoForAnything(v6), v25))
      {
LABEL_34:
        value_low = v25;
      }

      else
      {
        value_low = 0;
        *a3 = CFRetain(v11);
      }

LABEL_26:
      CFRelease(v11);
      goto LABEL_27;
    }

    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_3(&range);
LABEL_41:
    value_low = LODWORD(range.start.value);
    goto LABEL_27;
  }

LABEL_8:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26.start.value, v26.start.timescale, LODWORD(v26.start.epoch));
  value_low = v7;
LABEL_27:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigStreamingCacheMediaStreamMarkComplete(uint64_t a1, _BYTE *a2)
{
  v16 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_4(v17);
    return v17[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_3(v17);
    return v17[0];
  }

  FigStreamingCacheFlushIOSync(a1);
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_1(v17);
    v6 = v17[0];
    goto LABEL_19;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 168);
  if (!v4)
  {
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17[1]);
    goto LABEL_9;
  }

  while (v4 != a2)
  {
    v4 = *(v4 + 1);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v4[120])
  {
LABEL_24:
    v6 = 0;
    goto LABEL_19;
  }

  v5 = sc_UpgradePersistentStoreForWriting(a1, &v16);
  if (!v5)
  {
    v7 = *(a1 + 280);
    v8 = *(v4 + 17);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9(v7, v8, 1);
    if (!v10)
    {
      if ((*(*v4 + 220) & 2) != 0 && (v4[176] & 2) == 0)
      {
        FigStreamingCacheMediaStreamMarkComplete_cold_2(v17);
        v6 = v17[0];
        goto LABEL_18;
      }

      FigHLSPersistentStreamInfoGetFigBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v13)
      {
LABEL_17:
        v6 = 4294954514;
LABEL_18:
        sc_RestorePersistentStoreLockStatus(a1, v16);
        goto LABEL_19;
      }

      v10 = v13(v12, @"StreamInfoCompleteState", *MEMORY[0x1E695E4D0]);
      if (!v10)
      {
        v6 = stream_SetNeedsToCommitPersistentStreamInfo(v4);
        if (!v6)
        {
          v4[120] = 1;
        }

        goto LABEL_18;
      }
    }

    v6 = v10;
    goto LABEL_18;
  }

LABEL_9:
  v6 = v5;
LABEL_19:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t stream_SetNeedsToCommitPersistentStreamInfo(_BYTE *a1)
{
  if ((*(*a1 + 220) & 2) != 0 && (a1[176] & 2) == 0)
  {
    v6 = v1;
    v7 = v2;
    stream_SetNeedsToCommitPersistentStreamInfo_cold_1(&v5);
    return v5;
  }

  else
  {
    v3 = 0;
    a1[122] = 1;
  }

  return v3;
}

uint64_t FigStreamingCacheMediaStreamIsComplete(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_4(v12);
    return v12[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_3(v12);
    return v12[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_2(v12);
    return v12[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamIsComplete_cold_1(v12);
    v8 = v12[0];
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      v8 = 0;
      *a3 = *(v6 + 120);
    }

    else
    {
LABEL_8:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12[1]);
      v8 = v7;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamIsWritableToDisk(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_4(v13);
    return v13[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_3(v13);
    return v13[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_2(v13);
    return v13[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_1(v13);
    v8 = v13[0];
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      if (*(v6 + 128))
      {
        if ((*(*v6 + 220) & 2) != 0)
        {
          v9 = (*(v6 + 176) >> 1) & 1;
        }

        else
        {
          LOBYTE(v9) = 1;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      v8 = 0;
      *a3 = v9;
    }

    else
    {
LABEL_8:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]);
      v8 = v7;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamSetPersistent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E695E4D0] != a3;
  if (*MEMORY[0x1E695E4D0] == a3)
  {
    v4 = kFigHLSPersistentStreamInfoEvictionPolicy_Persists;
  }

  else
  {
    v4 = kFigHLSPersistentStreamInfoEvictionPolicy_EvictionByMaxStreamSize;
  }

  v14 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_4(v15);
    return v15[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_3(v15);
    return v15[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_1(v15);
    goto LABEL_31;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
LABEL_26:
    v10 = 0;
    goto LABEL_24;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    v8 = *v4;
    while (v7 != a2)
    {
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (*(v7 + 121) != v3)
    {
      if ((*(*v7 + 220) & 2) == 0 || (*(v7 + 176) & 2) != 0)
      {
        v9 = sc_UpgradePersistentStoreForWriting(a1, &v14);
        if (!v9)
        {
          stream_SetPropertyForPersistentStreamInfoUpgradingToWritingIfNecessary(v7, @"StreamInfoEvictionPolicy", v8);
          v10 = v11;
          if (!v11)
          {
            if (*(v7 + 120) && !*(v7 + 121))
            {
              stream_DowngradePersistentStreamInfoForReading(v7);
            }

            *(v7 + 121) = v3;
          }

          sc_RestorePersistentStoreLockStatus(a1, v14);
          goto LABEL_24;
        }

        goto LABEL_13;
      }

      FigStreamingCacheMediaStreamSetPersistent_cold_2(v15);
LABEL_31:
      v10 = v15[0];
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_12:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15[1]);
LABEL_13:
  v10 = v9;
LABEL_24:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigStreamingCacheMediaStreamCopyPersistent(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_4(v13);
    return v13[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_3(v13);
    return v13[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_2(v13);
    return v13[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_1(v13);
    v8 = v13[0];
    if (v13[0])
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
LABEL_12:
    v9 = MEMORY[0x1E695E4C0];
LABEL_14:
    v8 = 0;
    *a3 = *v9;
    goto LABEL_15;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    if (!*(v6 + 121))
    {
      v9 = MEMORY[0x1E695E4D0];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_9:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamCreateMediaSegment(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v19 = 0;
  valuePtr = a5;
  if (!a6)
  {
    FigStreamingCacheMediaStreamCreateMediaSegment_cold_2(&v21);
    return v21;
  }

  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
    FigStreamingCacheMediaStreamCreateMediaSegment_cold_1(&v21);
    return v21;
  }

  v16 = v15;
  v17 = sc_CreateMediaSegment(a1, a2, a3, a4, v15, 1, &v19, a7, a8);
  if (!v17)
  {
    *a6 = v19;
  }

  CFRelease(v16);
  return v17;
}

uint64_t sc_CreateMediaSegment(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, int a6, unint64_t *a7, double a8, double a9)
{
  v184 = 0;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  memset(v178, 0, sizeof(v178));
  if (!a1)
  {
    sc_CreateMediaSegment_cold_11(&v177);
    return v177;
  }

  if (!a2)
  {
    sc_CreateMediaSegment_cold_10(&v177);
    return v177;
  }

  if (!a3)
  {
    sc_CreateMediaSegment_cold_9(&v177);
    return v177;
  }

  if (a4 < 0)
  {
    sc_CreateMediaSegment_cold_8(&v177);
    return v177;
  }

  if (a9 <= 0.0)
  {
    sc_CreateMediaSegment_cold_7(&v177);
    return v177;
  }

  v15 = a7;
  if (!a7)
  {
    sc_CreateMediaSegment_cold_6(&v177);
    return v177;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    sc_CreateMediaSegment_cold_1(&v177);
    goto LABEL_330;
  }

  if (a6 && *(a1 + 217))
  {
    if (*(a1 + 200) > a8)
    {
      sc_CreateMediaSegment_cold_3(&v177);
    }

    else
    {
      if (*(a1 + 208) >= a8)
      {
        goto LABEL_12;
      }

      sc_CreateMediaSegment_cold_2(&v177);
    }

LABEL_330:
    v23 = v177;
    goto LABEL_316;
  }

LABEL_12:
  v19 = a9 + 0.0000111111111;
  if (*(a1 + 216))
  {
    v20 = *(a1 + 112);
    if (v20 > 0.0 && v19 + a8 > v20 + *(a1 + 192))
    {
      sc_CreateMediaSegment_cold_4(&v177);
      goto LABEL_330;
    }
  }

  v21 = *(a1 + 168);
  if (!v21)
  {
LABEL_18:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951054, "<< StreamingCache >>", 2050, v9);
LABEL_19:
    v23 = v22;
    goto LABEL_316;
  }

  while (v21 != a2)
  {
    v21 = *(v21 + 8);
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  *(&v179 + 1) = a3;
  *&v180 = a4;
  *(&v181 + 1) = a8;
  for (i = *(v21 + 24); i; i = *(i + v26))
  {
    v25 = a8 - *(i + 120);
    if (v25 >= 0.0)
    {
      if (v25 <= 0.0)
      {
        v23 = 4294951052;
        goto LABEL_316;
      }

      v26 = 16;
    }

    else
    {
      v26 = 8;
    }
  }

  v27 = (v21 + 32);
  v28 = MediaSegmentOffsetList_RB_FIND((v21 + 32), v178);
  if (v28)
  {
    v29 = v28;
    v176 = a5;
    v30 = v15;
    v31 = 0;
    for (j = 0; ; ++j)
    {
      Count = v29[17];
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (j >= Count || v31)
      {
        break;
      }

      v177 = 0;
      FigCFArrayGetDoubleAtIndex();
      v31 = vabdd_f64(0.0, a8) < 2.22044605e-16;
    }

    v15 = v30;
    v27 = (v21 + 32);
    a5 = v176;
    if (!v31)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951052, "<< StreamingCache >>", 2074, v9);
      goto LABEL_19;
    }
  }

  v34 = malloc_type_calloc(1uLL, 0xA8uLL, 0x1060040A1004B64uLL);
  if (!v34)
  {
    sc_CreateMediaSegment_cold_5(&v177);
    goto LABEL_330;
  }

  v35 = v34;
  v34[11] = CFRetain(a3);
  *(v35 + 96) = a4;
  if (a5)
  {
    v36 = CFRetain(a5);
  }

  else
  {
    v36 = 0;
  }

  *(v35 + 104) = v36;
  *(v35 + 120) = a8;
  *(v35 + 128) = v19;
  *v35 = v21;
  *(v35 + 80) = 1;
  v37 = *(v21 + 24);
  CFSetAddValue(*(v21 + 48), v35);
  v38 = *(v21 + 24);
  if (v38)
  {
    v39 = *(v21 + 24);
    v40 = (v21 + 24);
    do
    {
      v41 = v39;
      v42 = *(v35 + 120) - *(v39 + 120);
      v43 = v42 < 0.0;
      if (v42 >= 0.0)
      {
        v44 = 16;
        if (v42 == 0.0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v44 = 8;
      }

      v39 = *(v41 + v44);
    }

    while (v39);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v40 = (v21 + 24);
  }

  if (*(v35 + 24))
  {
    v45 = v41 | 1;
  }

  else
  {
    v45 = v41;
  }

  v46 = (v45 & 0xFFFFFFFFFFFFFFFELL);
  v47 = v45 | 1;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = v45 | 1;
  v48 = v40;
  v49 = v35;
  if (v41)
  {
    if (v43)
    {
      v48 = (v41 + 8);
    }

    else
    {
      v48 = (v41 + 16);
    }

    v49 = v38;
  }

  *v48 = v35;
  if (v46)
  {
    v50 = v35;
    do
    {
      v51 = v46[3];
      if ((v51 & 1) == 0)
      {
        break;
      }

      v52 = (v51 & 0xFFFFFFFFFFFFFFFELL);
      v53 = *((v51 & 0xFFFFFFFFFFFFFFFELL) + 8);
      if (v53 == v46)
      {
        v58 = v52[2];
        if (!v58 || (v59 = *(v58 + 24), (v59 & 1) == 0))
        {
          v60 = v46[2];
          if (v60 == v50)
          {
            v65 = *(v60 + 8);
            v46[2] = v65;
            if (v65)
            {
              v66 = v47 | 1;
              if ((*(v65 + 24) & 1) == 0)
              {
                v66 = v46;
              }

              *(v65 + 24) = v66;
              v67 = v46[3];
            }

            else
            {
              v67 = v51;
            }

            *(v60 + 24) = v67 & 0xFFFFFFFFFFFFFFFELL | *(v60 + 24) & 1;
            if ((v67 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v75 = v46[3];
              v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v75 & 0xFFFFFFFFFFFFFFFELL) + 8) == v46)
              {
                *(v76 + 8) = v60;
              }

              else
              {
                *(v76 + 16) = v60;
              }
            }

            else
            {
              *v40 = v60;
              v75 = v46[3];
              v49 = v60;
            }

            *(v60 + 8) = v46;
            if (v75)
            {
              v60 = v50 | 1;
            }

            v46[3] = v60;
            v53 = v52[1];
            v61 = *(v50 + 24) & 0xFFFFFFFFFFFFFFFELL;
            v57 = v46;
          }

          else
          {
            v61 = v51 & 0xFFFFFFFFFFFFFFFELL;
            v57 = v50;
            v50 = v46;
          }

          *(v50 + 24) = v61;
          v77 = v52[3] | 1;
          v52[3] = v77;
          v78 = *(v53 + 16);
          v52[1] = v78;
          if (v78)
          {
            if (*(v78 + 24))
            {
              v79 = v51;
            }

            else
            {
              v79 = v51 & 0xFFFFFFFFFFFFFFFELL;
            }

            *(v78 + 24) = v79;
            v77 = v52[3];
          }

          *(v53 + 24) = v77 & 0xFFFFFFFFFFFFFFFELL | *(v53 + 24) & 1;
          if ((v77 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v80 = v52[3];
            v81 = v80 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v80 & 0xFFFFFFFFFFFFFFFELL) + 8) == v52)
            {
              *(v81 + 8) = v53;
            }

            else
            {
              *(v81 + 16) = v53;
            }
          }

          else
          {
            *v40 = v53;
            v80 = v52[3];
            v49 = v53;
          }

          *(v53 + 16) = v52;
          if (v80)
          {
            v70 = v53 | 1;
          }

          else
          {
            v70 = v53;
          }

          goto LABEL_122;
        }

        *(v58 + 24) = v59 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        if (!v53 || (v54 = *(v53 + 24), (v54 & 1) == 0))
        {
          v55 = v46[1];
          if (v55 == v50)
          {
            v62 = *(v55 + 16);
            v46[1] = v62;
            if (v62)
            {
              v63 = v47 | 1;
              if ((*(v62 + 24) & 1) == 0)
              {
                v63 = v46;
              }

              *(v62 + 24) = v63;
              v64 = v46[3];
            }

            else
            {
              v64 = v51;
            }

            *(v55 + 24) = v64 & 0xFFFFFFFFFFFFFFFELL | *(v55 + 24) & 1;
            if ((v64 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v68 = v46[3];
              v69 = v68 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v68 & 0xFFFFFFFFFFFFFFFELL) + 8) == v46)
              {
                *(v69 + 8) = v55;
              }

              else
              {
                *(v69 + 16) = v55;
              }
            }

            else
            {
              *v40 = v55;
              v68 = v46[3];
              v49 = v55;
            }

            *(v55 + 16) = v46;
            if (v68)
            {
              v55 = v50 | 1;
            }

            v46[3] = v55;
            v56 = *(v50 + 24) & 0xFFFFFFFFFFFFFFFELL;
            v57 = v46;
          }

          else
          {
            v56 = v51 & 0xFFFFFFFFFFFFFFFELL;
            v57 = v50;
            v50 = v46;
          }

          *(v50 + 24) = v56;
          v70 = v52[2];
          v71 = v52[3] | 1;
          v52[3] = v71;
          v72 = *(v70 + 8);
          v52[2] = v72;
          if (v72)
          {
            if ((*(v72 + 24) & 1) == 0)
            {
              v51 &= ~1uLL;
            }

            *(v72 + 24) = v51;
            v71 = v52[3];
          }

          *(v70 + 24) = v71 & 0xFFFFFFFFFFFFFFFELL | *(v70 + 24) & 1;
          if ((v71 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v73 = v52[3];
            v74 = v73 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v73 & 0xFFFFFFFFFFFFFFFELL) + 8) == v52)
            {
              *(v74 + 8) = v70;
            }

            else
            {
              *(v74 + 16) = v70;
            }
          }

          else
          {
            *v40 = v70;
            v73 = v52[3];
            v49 = v70;
          }

          *(v70 + 8) = v52;
          if (v73)
          {
            v70 |= 1uLL;
          }

LABEL_122:
          v52[3] = v70;
          goto LABEL_123;
        }

        *(v53 + 24) = v54 & 0xFFFFFFFFFFFFFFFELL;
      }

      v46[3] &= ~1uLL;
      v52[3] |= 1uLL;
      v57 = v51 & 0xFFFFFFFFFFFFFFFELL;
LABEL_123:
      v47 = *(v57 + 24);
      v50 = v57;
      v46 = (v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    while ((v47 & 0xFFFFFFFFFFFFFFFELL) != 0);
  }

  *(v49 + 24) &= ~1uLL;
LABEL_125:
  v82 = *v27;
  if (*v27)
  {
    do
    {
      v83 = v82;
      started = segment_SortByURLAndStartOffset(v35, v82);
      if ((started & 0x80000000) != 0)
      {
        v85 = 32;
      }

      else
      {
        if (!started)
        {
          goto LABEL_209;
        }

        v85 = 40;
      }

      v82 = *(v83 + v85);
    }

    while (v82);
    LODWORD(v82) = started >> 31;
  }

  else
  {
    v83 = 0;
  }

  if (*(v35 + 48))
  {
    v86 = v83 | 1;
  }

  else
  {
    v86 = v83;
  }

  v87 = v86 | 1;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = v86 | 1;
  if (v82)
  {
    v88 = (v83 + 32);
  }

  else
  {
    v88 = (v83 + 40);
  }

  if (!v83)
  {
    v88 = v27;
  }

  *v88 = v35;
  v89 = (v86 & 0xFFFFFFFFFFFFFFFELL);
  if ((v86 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v90 = v35;
    do
    {
      v91 = v89[6];
      if ((v91 & 1) == 0)
      {
        break;
      }

      v92 = (v91 & 0xFFFFFFFFFFFFFFFELL);
      v93 = *((v91 & 0xFFFFFFFFFFFFFFFELL) + 32);
      if (v93 == v89)
      {
        v98 = v92[5];
        if (!v98 || (v99 = *(v98 + 48), (v99 & 1) == 0))
        {
          v100 = v89[5];
          if (v100 == v90)
          {
            v105 = *(v100 + 32);
            v89[5] = v105;
            if (v105)
            {
              v106 = v87 | 1;
              if ((*(v105 + 48) & 1) == 0)
              {
                v106 = v89;
              }

              *(v105 + 48) = v106;
              v107 = v89[6];
            }

            else
            {
              v107 = v91;
            }

            *(v100 + 48) = v107 & 0xFFFFFFFFFFFFFFFELL | *(v100 + 48) & 1;
            if ((v107 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v116 = v89[6];
              v117 = v116 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v116 & 0xFFFFFFFFFFFFFFFELL) + 32) == v89)
              {
                *(v117 + 32) = v100;
              }

              else
              {
                *(v117 + 40) = v100;
              }
            }

            else
            {
              *v27 = v100;
              v116 = v89[6];
            }

            *(v100 + 32) = v89;
            if (v116)
            {
              v100 = v90 | 1;
            }

            v89[6] = v100;
            v93 = v92[4];
            v101 = *(v90 + 48) & 0xFFFFFFFFFFFFFFFELL;
            v97 = v89;
          }

          else
          {
            v101 = v91 & 0xFFFFFFFFFFFFFFFELL;
            v97 = v90;
            v90 = v89;
          }

          *(v90 + 48) = v101;
          v118 = v92[6] | 1;
          v92[6] = v118;
          v119 = *(v93 + 40);
          v92[4] = v119;
          if (v119)
          {
            if ((*(v119 + 48) & 1) == 0)
            {
              v91 &= ~1uLL;
            }

            *(v119 + 48) = v91;
            v118 = v92[6];
          }

          *(v93 + 48) = v118 & 0xFFFFFFFFFFFFFFFELL | *(v93 + 48) & 1;
          if ((v118 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v120 = v92[6];
            v121 = v120 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v120 & 0xFFFFFFFFFFFFFFFELL) + 32) == v92)
            {
              *(v121 + 32) = v93;
            }

            else
            {
              *(v121 + 40) = v93;
            }
          }

          else
          {
            *v27 = v93;
            v120 = v92[6];
          }

          *(v93 + 40) = v92;
          if (v120)
          {
            v115 = v93 | 1;
          }

          else
          {
            v115 = v93;
          }

          goto LABEL_206;
        }

        *(v98 + 48) = v99 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        if (!v93 || (v94 = *(v93 + 48), (v94 & 1) == 0))
        {
          v95 = v89[4];
          if (v95 == v90)
          {
            v102 = *(v95 + 40);
            v89[4] = v102;
            if (v102)
            {
              v103 = v87 | 1;
              if ((*(v102 + 48) & 1) == 0)
              {
                v103 = v89;
              }

              *(v102 + 48) = v103;
              v104 = v89[6];
            }

            else
            {
              v104 = v91;
            }

            *(v95 + 48) = v104 & 0xFFFFFFFFFFFFFFFELL | *(v95 + 48) & 1;
            if ((v104 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v108 = v89[6];
              v109 = v108 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v108 & 0xFFFFFFFFFFFFFFFELL) + 32) == v89)
              {
                *(v109 + 32) = v95;
              }

              else
              {
                *(v109 + 40) = v95;
              }
            }

            else
            {
              *v27 = v95;
              v108 = v89[6];
            }

            *(v95 + 40) = v89;
            if (v108)
            {
              v95 = v90 | 1;
            }

            v89[6] = v95;
            v96 = *(v90 + 48) & 0xFFFFFFFFFFFFFFFELL;
            v97 = v89;
          }

          else
          {
            v96 = v91 & 0xFFFFFFFFFFFFFFFELL;
            v97 = v90;
            v90 = v89;
          }

          *(v90 + 48) = v96;
          v110 = v92[5];
          v111 = v92[6] | 1;
          v92[6] = v111;
          v112 = *(v110 + 32);
          v92[5] = v112;
          if (v112)
          {
            if ((*(v112 + 48) & 1) == 0)
            {
              v91 &= ~1uLL;
            }

            *(v112 + 48) = v91;
            v111 = v92[6];
          }

          *(v110 + 48) = v111 & 0xFFFFFFFFFFFFFFFELL | *(v110 + 48) & 1;
          if ((v111 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v113 = v92[6];
            v114 = v113 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v113 & 0xFFFFFFFFFFFFFFFELL) + 32) == v92)
            {
              *(v114 + 32) = v110;
            }

            else
            {
              *(v114 + 40) = v110;
            }
          }

          else
          {
            *v27 = v110;
            v113 = v92[6];
          }

          *(v110 + 32) = v92;
          if (v113)
          {
            v115 = v110 | 1;
          }

          else
          {
            v115 = v110;
          }

LABEL_206:
          v92[6] = v115;
          goto LABEL_207;
        }

        *(v93 + 48) = v94 & 0xFFFFFFFFFFFFFFFELL;
      }

      v89[6] &= ~1uLL;
      v92[6] |= 1uLL;
      v97 = v91 & 0xFFFFFFFFFFFFFFFELL;
LABEL_207:
      v87 = *(v97 + 48);
      v90 = v97;
      v89 = (v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    while ((v87 & 0xFFFFFFFFFFFFFFFELL) != 0);
  }

  (*v27)[6] = ((*v27)[6] & 0xFFFFFFFFFFFFFFFELL);
LABEL_209:
  if (a5)
  {
    v124 = *(v21 + 40);
    v123 = (v21 + 40);
    v122 = v124;
    if (v124)
    {
      do
      {
        v125 = v122;
        v126 = CFNumberCompare(*(v35 + 104), *(v122 + 104), 0);
        if ((v126 & 0x80000000) != 0)
        {
          v127 = 56;
        }

        else
        {
          if (!v126)
          {
            goto LABEL_294;
          }

          v127 = 64;
        }

        v122 = *(v125 + v127);
      }

      while (v122);
      v122 = (v126 >> 31) & 1;
    }

    else
    {
      v125 = 0;
    }

    if (*(v35 + 72))
    {
      v128 = v125 | 1;
    }

    else
    {
      v128 = v125;
    }

    v129 = v128 | 1;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    *(v35 + 72) = v128 | 1;
    if (v122)
    {
      v130 = (v125 + 56);
    }

    else
    {
      v130 = (v125 + 64);
    }

    if (!v125)
    {
      v130 = v123;
    }

    *v130 = v35;
    v131 = (v128 & 0xFFFFFFFFFFFFFFFELL);
    if ((v128 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v132 = v35;
      do
      {
        v133 = v131[9];
        if ((v133 & 1) == 0)
        {
          break;
        }

        v134 = (v133 & 0xFFFFFFFFFFFFFFFELL);
        v135 = *((v133 & 0xFFFFFFFFFFFFFFFELL) + 56);
        if (v135 == v131)
        {
          v140 = v134[8];
          if (!v140 || (v141 = *(v140 + 72), (v141 & 1) == 0))
          {
            v142 = v131[8];
            if (v142 == v132)
            {
              v147 = *(v142 + 56);
              v131[8] = v147;
              if (v147)
              {
                v148 = v129 | 1;
                if ((*(v147 + 72) & 1) == 0)
                {
                  v148 = v131;
                }

                *(v147 + 72) = v148;
                v149 = v131[9];
              }

              else
              {
                v149 = v133;
              }

              *(v142 + 72) = v149 & 0xFFFFFFFFFFFFFFFELL | *(v142 + 72) & 1;
              if ((v149 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v158 = v131[9];
                v159 = v158 & 0xFFFFFFFFFFFFFFFELL;
                if (*((v158 & 0xFFFFFFFFFFFFFFFELL) + 56) == v131)
                {
                  *(v159 + 56) = v142;
                }

                else
                {
                  *(v159 + 64) = v142;
                }
              }

              else
              {
                *v123 = v142;
                v158 = v131[9];
              }

              *(v142 + 56) = v131;
              if (v158)
              {
                v142 = v132 | 1;
              }

              v131[9] = v142;
              v135 = v134[7];
              v143 = *(v132 + 72) & 0xFFFFFFFFFFFFFFFELL;
              v139 = v131;
            }

            else
            {
              v143 = v133 & 0xFFFFFFFFFFFFFFFELL;
              v139 = v132;
              v132 = v131;
            }

            *(v132 + 72) = v143;
            v160 = v134[9] | 1;
            v134[9] = v160;
            v161 = *(v135 + 64);
            v134[7] = v161;
            if (v161)
            {
              if ((*(v161 + 72) & 1) == 0)
              {
                v133 &= ~1uLL;
              }

              *(v161 + 72) = v133;
              v160 = v134[9];
            }

            *(v135 + 72) = v160 & 0xFFFFFFFFFFFFFFFELL | *(v135 + 72) & 1;
            if ((v160 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v162 = v134[9];
              v163 = v162 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v162 & 0xFFFFFFFFFFFFFFFELL) + 56) == v134)
              {
                *(v163 + 56) = v135;
              }

              else
              {
                *(v163 + 64) = v135;
              }
            }

            else
            {
              *v123 = v135;
              v162 = v134[9];
            }

            *(v135 + 64) = v134;
            if (v162)
            {
              v157 = v135 | 1;
            }

            else
            {
              v157 = v135;
            }

            goto LABEL_291;
          }

          *(v140 + 72) = v141 & 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          if (!v135 || (v136 = *(v135 + 72), (v136 & 1) == 0))
          {
            v137 = v131[7];
            if (v137 == v132)
            {
              v144 = *(v137 + 64);
              v131[7] = v144;
              if (v144)
              {
                v145 = v129 | 1;
                if ((*(v144 + 72) & 1) == 0)
                {
                  v145 = v131;
                }

                *(v144 + 72) = v145;
                v146 = v131[9];
              }

              else
              {
                v146 = v133;
              }

              *(v137 + 72) = v146 & 0xFFFFFFFFFFFFFFFELL | *(v137 + 72) & 1;
              if ((v146 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v150 = v131[9];
                v151 = v150 & 0xFFFFFFFFFFFFFFFELL;
                if (*((v150 & 0xFFFFFFFFFFFFFFFELL) + 56) == v131)
                {
                  *(v151 + 56) = v137;
                }

                else
                {
                  *(v151 + 64) = v137;
                }
              }

              else
              {
                *v123 = v137;
                v150 = v131[9];
              }

              *(v137 + 64) = v131;
              if (v150)
              {
                v137 = v132 | 1;
              }

              v131[9] = v137;
              v138 = *(v132 + 72) & 0xFFFFFFFFFFFFFFFELL;
              v139 = v131;
            }

            else
            {
              v138 = v133 & 0xFFFFFFFFFFFFFFFELL;
              v139 = v132;
              v132 = v131;
            }

            *(v132 + 72) = v138;
            v152 = v134[8];
            v153 = v134[9] | 1;
            v134[9] = v153;
            v154 = *(v152 + 56);
            v134[8] = v154;
            if (v154)
            {
              if ((*(v154 + 72) & 1) == 0)
              {
                v133 &= ~1uLL;
              }

              *(v154 + 72) = v133;
              v153 = v134[9];
            }

            *(v152 + 72) = v153 & 0xFFFFFFFFFFFFFFFELL | *(v152 + 72) & 1;
            if ((v153 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v155 = v134[9];
              v156 = v155 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v155 & 0xFFFFFFFFFFFFFFFELL) + 56) == v134)
              {
                *(v156 + 56) = v152;
              }

              else
              {
                *(v156 + 64) = v152;
              }
            }

            else
            {
              *v123 = v152;
              v155 = v134[9];
            }

            *(v152 + 56) = v134;
            if (v155)
            {
              v157 = v152 | 1;
            }

            else
            {
              v157 = v152;
            }

LABEL_291:
            v134[9] = v157;
            goto LABEL_292;
          }

          *(v135 + 72) = v136 & 0xFFFFFFFFFFFFFFFELL;
        }

        v131[9] &= ~1uLL;
        v134[9] |= 1uLL;
        v139 = v133 & 0xFFFFFFFFFFFFFFFELL;
LABEL_292:
        v129 = *(v139 + 72);
        v132 = v139;
        v131 = (v129 & 0xFFFFFFFFFFFFFFFELL);
      }

      while ((v129 & 0xFFFFFFFFFFFFFFFELL) != 0);
    }

    *(*v123 + 72) &= ~1uLL;
  }

LABEL_294:
  if (!v37)
  {
    v168 = 6;
LABEL_314:
    *(v35 + 160) |= v168;
    goto LABEL_315;
  }

  v164 = MediaSegmentStartTimeList_RB_PREV(v35);
  if (v164 && (v165 = *(v35 + 120), *(v164 + 120) + *(v164 + 128) >= v165))
  {
    v169 = *(v164 + 160);
    if ((v169 & 4) == 0 || (*(v164 + 160) = v169 & 0xFFFFFFFB, (v170 = MediaSegmentStartTimeList_RB_NEXT(v35)) != 0) && v165 + *(v35 + 128) >= *(v170 + 120))
    {
      v167 = 0;
      v166 = 1;
    }

    else
    {
      v166 = 0;
      v167 = 0;
    }
  }

  else
  {
    v166 = 1;
    v167 = 1;
  }

  v171 = MediaSegmentStartTimeList_RB_NEXT(v35);
  if (!v171)
  {
    goto LABEL_313;
  }

  v172 = *(v35 + 120);
  if (v172 + *(v35 + 128) < *(v171 + 120))
  {
    goto LABEL_313;
  }

  v173 = *(v171 + 160);
  if ((v173 & 2) != 0)
  {
    *(v171 + 160) = v173 & 0xFFFFFFFD;
    v174 = MediaSegmentStartTimeList_RB_PREV(v35);
    if (!v174 || *(v174 + 120) + *(v174 + 128) < v172)
    {
      v167 = 1;
    }
  }

  if (!v166)
  {
LABEL_313:
    v168 = 4;
    goto LABEL_314;
  }

  if (v167)
  {
    v168 = 2;
    goto LABEL_314;
  }

LABEL_315:
  v23 = 0;
  *v15 = v35;
LABEL_316:
  FigSimpleMutexUnlock();
  return v23;
}

uint64_t FigStreamingCacheMediaSegmentGetLength(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          FigSimpleMutexLock();
          if (*(a1 + 272))
          {
            FigStreamingCacheMediaSegmentGetLength_cold_1(v20);
          }

          else
          {
            v10 = *(a1 + 168);
            if (!v10)
            {
LABEL_9:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20[1]);
              v12 = v11;
              v13 = 0;
              goto LABEL_14;
            }

            while (v10 != a2)
            {
              v10 = *(v10 + 8);
              if (!v10)
              {
                goto LABEL_9;
              }
            }

            if (CFSetContainsValue(*(v10 + 48), a3))
            {
              v12 = 0;
              v14 = a3[14];
              v15 = v14 >= a4;
              v16 = v14 - a4;
              if (v15)
              {
                v13 = v16;
              }

              else
              {
                v13 = 0;
              }

LABEL_14:
              FigSimpleMutexUnlock();
              if (v12)
              {
                return v12;
              }

              goto LABEL_15;
            }

            FigStreamingCacheMediaSegmentGetLength_cold_2(v20);
          }

          v13 = 0;
          v12 = v20[0];
          goto LABEL_14;
        }

        FigStreamingCacheMediaSegmentGetLength_cold_3(v20);
      }

      else
      {
        FigStreamingCacheMediaSegmentGetLength_cold_4(v20);
      }
    }

    else
    {
      FigStreamingCacheMediaSegmentGetLength_cold_5(v20);
    }
  }

  else
  {
    FigStreamingCacheMediaSegmentGetLength_cold_6(v20);
  }

  v13 = 0;
  v12 = v20[0];
  if (v20[0])
  {
    return v12;
  }

LABEL_15:
  if ((v13 & 0x8000000000000000) != 0)
  {
    FigStreamingCacheMediaSegmentGetLength_cold_7(v20);
    return v20[0];
  }

  else
  {
    v12 = 0;
    *a5 = v13;
  }

  return v12;
}

uint64_t FigStreamingCacheMediaSegmentCopyBytes(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, size_t a4, size_t a5, BOOL *a6, CMBlockBufferRef *a7)
{
  blockBufferOut = 0;
  if (!a1)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_9(&v32);
    return v32;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_8(&v32);
    return v32;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_7(&v32);
    return v32;
  }

  if (!a5)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_6(&v32);
    return v32;
  }

  if (!a7)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_5(&v32);
    return v32;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_1(&v32);
LABEL_45:
    v16 = v32;
    goto LABEL_12;
  }

  v14 = *(a1 + 168);
  if (!v14)
  {
LABEL_10:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v28, blockBufferOut);
LABEL_11:
    v16 = v15;
    goto LABEL_12;
  }

  while (v14 != a2)
  {
    v14 = *(v14 + 8);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  if (!CFSetContainsValue(*(v14 + 48), a3))
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_4(&v32);
    goto LABEL_45;
  }

  v18 = a3[14];
  if (v18 <= a4)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_2(&v32);
    goto LABEL_45;
  }

  if (a5 + a4 <= v18)
  {
    v19 = a5;
  }

  else
  {
    v19 = v18 - a4;
  }

  v20 = v19 + a4 < v18;
  v21 = a3 + 19;
  if (a3[19])
  {
LABEL_20:
    v29 = v20;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v15 = CMBlockBufferCreateWithBufferReference(AllocatorForMedia, *v21, a4, v19, 0, &blockBufferOut);
    if (!v15)
    {
      if (v19 + a4 >= v18 && (a3[20] & 0x20) != 0 && *v21)
      {
        CFRelease(*v21);
        *v21 = 0;
      }

      *a7 = blockBufferOut;
      v16 = 0;
      if (a6)
      {
        *a6 = v29;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v23 = *a3;
  if ((*(**a3 + 220) & 2) != 0 && (*(v23 + 176) & 1) == 0)
  {
    v30 = v19 + a4 < v18;
    FigStreamingCacheMediaSegmentCopyBytes_cold_3(&v32);
    v16 = v32;
    if (v32)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  if ((a3[20] & 0x20) == 0)
  {
    goto LABEL_30;
  }

  v30 = v19 + a4 < v18;
  v24 = *(v23 + 128);
  v27 = a3[18];
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v25)
  {
    v16 = 4294954514;
    goto LABEL_12;
  }

  v16 = v25(v24, v27, a3 + 19);
  if (!v16)
  {
LABEL_33:
    v20 = v30;
    if (*v21)
    {
      goto LABEL_20;
    }

LABEL_30:
    FigBytePumpGetFigBaseObject();
    v16 = 4294951049;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t FigStreamingCacheMediaSegmentAppendBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMBlockBufferRef theBuffer, size_t a6, int64_t a7)
{
  blockBufferOut = 0;
  v37 = 0;
  customBlockSource.version = 0;
  customBlockSource.refCon = 0;
  customBlockSource.AllocateBlock = sc_AllocateSegmentBlock;
  customBlockSource.FreeBlock = sc_FreeSegmentBlock;
  if (!a1)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_12(&v38);
    return v38;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_11(&v38);
    return v38;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_10(&v38);
    return v38;
  }

  if (!theBuffer)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_9(&v38);
    return v38;
  }

  if (!a7)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_8(&v38);
    return v38;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength <= a6 || a7 + a6 > DataLength)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_7(&v38);
    goto LABEL_64;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_1(&v38);
    goto LABEL_64;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    while (v16 != a2)
    {
      v16 = *(v16 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    if ((*(*v16 + 220) & 2) != 0 && (*(v16 + 176) & 2) == 0)
    {
      FigStreamingCacheMediaSegmentAppendBytes_cold_2(&v38);
    }

    else if (CFSetContainsValue(*(v16 + 48), a3))
    {
      if (*(a3 + 112) == a4)
      {
        if ((*(a3 + 160) & 1) == 0)
        {
          Value = CFDictionaryGetValue(*(a1 + 232), *(v16 + 56));
          v20 = &Value[-a7];
          if (Value < a7)
          {
            CFDictionarySetValue(*(a1 + 232), *(v16 + 56), 0);
            if (!sc_HasEnoughAvailableBackingMemory(a1, a7, &v37) && !sc_GetBackingForMediaStreamAtTime(a1, v16, v37, *(a3 + 120)) && ((*(a1 + 220) & 2) != 0 || !*(a1 + 216) || *(a3 + 120) - *(a1 + 192) >= *(a1 + 104)))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951047, "<< StreamingCache >>", 6037, v7);
              goto LABEL_13;
            }

            v20 = 0;
          }

          if (!*(a3 + 152))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            Empty = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, (a3 + 152));
            if (Empty)
            {
              goto LABEL_13;
            }
          }

          v22 = *(a1 + 264);
          if (v22)
          {
            v22 = CFRetain(v22);
          }

          customBlockSource.refCon = v22;
          v23 = FigGetAllocatorForMedia();
          Empty = CMBlockBufferCreateContiguous(v23, theBuffer, 0, &customBlockSource, a6, a7, 2u, &blockBufferOut);
          if (Empty)
          {
            goto LABEL_13;
          }

          Empty = CMBlockBufferAppendBufferReference(*(a3 + 152), blockBufferOut, 0, 0, 0);
          if (Empty)
          {
            goto LABEL_13;
          }

          if ((*(a1 + 220) & 2) != 0 || !*(a1 + 136))
          {
LABEL_68:
            *(a3 + 160) |= 0x10u;
            *(a3 + 112) += a7;
            *(a1 + 184) += a7;
            CFDictionarySetValue(*(a1 + 232), *(v16 + 56), v20);
            v18 = 0;
            goto LABEL_69;
          }

          v24 = *(a1 + 152);
          v25 = a7 - v24;
          if (a7 >= v24)
          {
            v26 = a7 - v24;
          }

          else
          {
            v26 = 0;
          }

          if (v26 < 1)
          {
            goto LABEL_66;
          }

          v27 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
          v28 = v27;
          if (v27)
          {
            *v27 = a1;
            v27[1] = v26;
            v29 = FigSimpleMutexCreate();
            v28[2] = v29;
            if (!v29)
            {
              free(v28);
              v28 = 0;
            }
          }

          if (FigMemoryDemandIssueSync_onceToken == -1)
          {
            if (!v28)
            {
              goto LABEL_66;
            }
          }

          else
          {
            FigStreamingCacheMediaSegmentAppendBytes_cold_5();
            if (!v28)
            {
              goto LABEL_66;
            }
          }

          v30 = FigSimpleMutexTryLock();
          if (v30)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            FigSimpleMutexLock();
            v25 = v28[1];
            FigSimpleMutexUnlock();
            FigSimpleMutexUnlock();
          }

          FigSimpleMutexDestroy();
          free(v28);
          if (v30)
          {
            v31 = v26 - v25;
            if (v26 < v25)
            {
              v31 = 0;
            }

            v32 = v31 >= v26;
            v33 = v31 - v26;
            if (!v32)
            {
              v33 = 0;
            }

            goto LABEL_67;
          }

LABEL_66:
          v33 = *(a1 + 152) - a7;
LABEL_67:
          *(a1 + 152) = v33;
          goto LABEL_68;
        }

        FigStreamingCacheMediaSegmentAppendBytes_cold_4(&v38);
      }

      else
      {
        FigStreamingCacheMediaSegmentAppendBytes_cold_3(&v38);
      }
    }

    else
    {
      FigStreamingCacheMediaSegmentAppendBytes_cold_6(&v38);
    }

LABEL_64:
    v18 = v38;
    goto LABEL_69;
  }

LABEL_12:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951054, "<< StreamingCache >>", 6000, v7);
LABEL_13:
  v18 = Empty;
LABEL_69:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  FigSimpleMutexUnlock();
  return v18;
}

void sc_AllocateSegmentBlock()
{
  CFAllocatorGetDefault();

  JUMPOUT(0x19A8CC720);
}

void sc_FreeSegmentBlock(const void *a1, void *a2, uint64_t a3)
{
  Default = CFAllocatorGetDefault();
  CFAllocatorDeallocate(Default, a2);
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    FigSimpleMutexLock();
    if (!*(v8 + 272) && (*(v8 + 220) & 2) == 0)
    {
      *(v8 + 184) -= a3;
    }

    FigSimpleMutexUnlock();
    CFRelease(v8);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigStreamingCacheMediaSegmentMarkComplete(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_8(v32);
    return v32[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_7(v32);
    return v32[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_6(v32);
    return v32[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_1(v32);
    goto LABEL_56;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if ((*(*v6 + 220) & 2) != 0 && (*(v6 + 176) & 2) == 0)
    {
      FigStreamingCacheMediaSegmentMarkComplete_cold_2(v32);
      goto LABEL_56;
    }

    v9 = CFSetContainsValue(*(v6 + 48), a3);
    if (v9)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      FigStreamingCacheMediaSegmentMarkComplete_cold_5(v32);
      goto LABEL_56;
    }

    a3[40] |= 1u;
    v7 = stream_SetNeedsToCommitPersistentStreamInfo(v6);
    if (!v7)
    {
      if ((*(a1 + 220) & 2) != 0)
      {
        ++a3[20];
        a3[40] |= 0x80u;
        segment_LockDuplicateMediaSegments(v6, a3);
        CFRetain(a1);
        dispatch_async_f(*(a1 + 240), a3, segment_WriteDataToDiskDispatchFunction);
      }

      v11 = *(*v6 + 168);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *(v6 + 56);
      while (1)
      {
        if (*(v11 + 56) == v12)
        {
          v13 = *(v6 + 80);
          if (*(v11 + 80) < v13)
          {
            break;
          }
        }

        v11 = *(v11 + 8);
        if (!v11)
        {
          goto LABEL_24;
        }
      }

      v15 = **v10;
      FirstSegmentOfContiguousRangeContainingSegment = stream_GetFirstSegmentOfContiguousRangeContainingSegment(v10);
      LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(v10, 0);
      v8 = 0;
      if (!FirstSegmentOfContiguousRangeContainingSegment || !LastSegmentOfContiguousRangeContainingSegment)
      {
        goto LABEL_25;
      }

      v18 = *(LastSegmentOfContiguousRangeContainingSegment + 120) + *(LastSegmentOfContiguousRangeContainingSegment + 128);
      v19 = *(FirstSegmentOfContiguousRangeContainingSegment + 120);
      v20 = v18 - v19;
      v21 = *(v15 + 88);
      v22 = v21 > 0.0 && v20 < v21;
      if (v22 || (v23 = *(v15 + 80), v20 < v23 + v23))
      {
LABEL_24:
        v8 = 0;
        goto LABEL_25;
      }

      v24 = v18 - v23;
      v25 = v19 + v23;
      if (v19 + v23 < v18 - v23)
      {
        v26 = *(a1 + 168);
        if (v26)
        {
          do
          {
            if (*(v26 + 56) == v12 && *(v26 + 80) < v13)
            {
              if (*(v26 + 121))
              {
                v27 = *(v26 + 24);
                if (v27)
                {
                  while (1)
                  {
                    v28 = *(v27 + 120);
                    if (v28 >= v25 && v28 + *(v27 + 128) <= v25 + v24 - v25)
                    {
                      break;
                    }

                    if (v28 >= v25)
                    {
                      v29 = 8;
                    }

                    else
                    {
                      v29 = 16;
                    }

                    v27 = *(v27 + v29);
                    if (!v27)
                    {
                      goto LABEL_46;
                    }
                  }

                  FigStreamingCacheMediaSegmentMarkComplete_cold_3(v27, *v26, v24, v25);
                }
              }
            }

LABEL_46:
            v8 = 0;
            v26 = *(v26 + 8);
          }

          while (v26);
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      FigStreamingCacheMediaSegmentMarkComplete_cold_4(v32);
LABEL_56:
      v8 = v32[0];
      goto LABEL_25;
    }
  }

  else
  {
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32[1]);
  }

  v8 = v7;
LABEL_25:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t segment_WriteDataToDiskDispatchFunction(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[16];
  FigSimpleMutexLock();
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    *(a1 + 40) = v5 & 0xFFFFFF7F;
    goto LABEL_28;
  }

  if ((*(*v2 + 220) & 2) == 0 || (v2[22] & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
    v6 = 0;
  }

  v7 = a1[19];
  if (v7)
  {
    CFRetain(v7);
  }

  if (v4)
  {
    CFRetain(v4);
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    v9 = a1[19];
    v11 = a1[15];
    v10 = a1[16];
    v13 = a1[11];
    v12 = a1[12];
    v14 = a1 + 18;
    v15 = a1[13];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v16)
    {
      v17 = v16(v4, v9, v13, v12, v15, a1 + 18, *&v10, *&v11);
    }

    else
    {
      v17 = 4294954514;
    }

    FigSimpleMutexLock();
    *(a1 + 40) &= ~0x80u;
    v18 = a1[19];
    if (v18)
    {
      CFRelease(v18);
      if (!v4)
      {
LABEL_20:
        if (!v17)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      goto LABEL_20;
    }

    CFRelease(v4);
    if (!v17)
    {
LABEL_21:
      *(a1 + 40) = a1[20] & 0xFFFFFFCF | 0x20;
      if (a1[19])
      {
        FigDeferCFRelease();
        v14 = a1 + 19;
LABEL_27:
        *v14 = 0;
        goto LABEL_28;
      }

      goto LABEL_28;
    }

LABEL_25:
    sc_SendDiskWriteErrorNotification(v3, v17);
    if (*v14)
    {
      CFRelease(*v14);
      goto LABEL_27;
    }

LABEL_28:
    segment_UpdateAndUnlockDuplicateMediaSegments(v2, a1);
    segment_UnlockEntry(a1, 0);
    FigSimpleMutexUnlock();
  }

  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheMediaSegmentIsComplete(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_6(v14);
LABEL_19:
    LOBYTE(v6) = 0;
LABEL_20:
    v10 = v14[0];
    if (v14[0])
    {
      return v10;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_5(v14);
    goto LABEL_19;
  }

  v6 = a3;
  if (!a3)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_4(v14);
    goto LABEL_20;
  }

  if (!a4)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_3(v14);
    goto LABEL_19;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_1(v14);
  }

  else
  {
    v8 = *(a1 + 168);
    if (!v8)
    {
LABEL_9:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14[1]);
      v10 = v9;
      LOBYTE(v6) = 0;
      goto LABEL_12;
    }

    while (v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    if (CFSetContainsValue(*(v8 + 48), v6))
    {
      v10 = 0;
      LOBYTE(v6) = v6[160] & 1;
      goto LABEL_12;
    }

    FigStreamingCacheMediaSegmentIsComplete_cold_2(v14);
  }

  LOBYTE(v6) = 0;
  v10 = v14[0];
LABEL_12:
  FigSimpleMutexUnlock();
  if (!v10)
  {
LABEL_13:
    *a4 = v6;
  }

  return v10;
}

uint64_t FigStreamingCacheMediaSegmentLock(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentLock_cold_5(v12);
    return v12[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentLock_cold_4(v12);
    return v12[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentLock_cold_3(v12);
    return v12[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentLock_cold_1(v12);
    goto LABEL_18;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if (CFSetContainsValue(*(v6 + 48), a3))
    {
      ++a3[20];
      segment_LockDuplicateMediaSegments(v6, a3);
      v8 = 0;
      goto LABEL_9;
    }

    FigStreamingCacheMediaSegmentLock_cold_2(v12);
LABEL_18:
    v8 = v12[0];
    goto LABEL_9;
  }

LABEL_8:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12[1]);
  v8 = v7;
LABEL_9:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaSegmentUnlock(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_5(v12);
    return v12[0];
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_4(v12);
    return v12[0];
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_3(v12);
    return v12[0];
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentUnlock_cold_1(v12);
    goto LABEL_18;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if (CFSetContainsValue(*(v6 + 48), a3))
    {
      segment_UpdateAndUnlockDuplicateMediaSegments(v6, a3);
      segment_UnlockEntry(a3, 0);
      v8 = 0;
      goto LABEL_9;
    }

    FigStreamingCacheMediaSegmentUnlock_cold_2(v12);
LABEL_18:
    v8 = v12[0];
    goto LABEL_9;
  }

LABEL_8:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12[1]);
  v8 = v7;
LABEL_9:
  FigSimpleMutexUnlock();
  return v8;
}

void segment_UnlockEntry(uint64_t **value, int a2)
{
  v3 = *value;
  v4 = **value;
  v5 = *(value + 20) - 1;
  *(value + 20) = v5;
  if (a2 || !v5)
  {
    CFSetRemoveValue(v3[6], value);
    if ((*(v4 + 220) & 2) != 0)
    {
      *(v4 + 184) -= value[14];
      if ((~*(value + 40) & 0x60) == 0)
      {
        if (v3[16])
        {
          stream_UpgradePersistentStreamInfoForWriting(v3);
          if (!v11)
          {
            v12 = v3[16];
            v13 = value[18];
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v14)
            {
              v14(v12, v13);
            }
          }
        }
      }
    }

    v6 = value[11];
    if (v6)
    {
      CFRelease(v6);
      value[11] = 0;
    }

    v7 = value[13];
    if (v7)
    {
      CFRelease(v7);
      value[13] = 0;
    }

    v8 = value[18];
    if (v8)
    {
      CFRelease(v8);
      value[18] = 0;
    }

    v9 = value[19];
    if (v9)
    {
      CFRelease(v9);
      value[19] = 0;
    }

    v10 = value[17];
    if (v10)
    {
      CFRelease(v10);
    }

    free(value);
  }

  else if (v5 == 1 && (~*(value + 40) & 0xC0) == 0)
  {
    *(v4 + 184) -= value[14];
    value[14] = 0;
  }
}

uint64_t FigStreamingCacheMediaSegmentSetDuplicateSegments(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_7(&v21);
    return v21;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_6(&v21);
    return v21;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_5(&v21);
    return v21;
  }

  if (!a4)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_4(&v21);
    return v21;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_1(&v21);
    goto LABEL_34;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    while (v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    if (*(v8 + 121))
    {
LABEL_13:
      v10 = 0;
      goto LABEL_25;
    }

    if (CFSetContainsValue(*(v8 + 48), a3))
    {
      if (!*(a3 + 136))
      {
        Count = CFRetain(a4);
        *(a3 + 136) = Count;
        v21 = 0;
        v12 = *(a3 + 88);
        if (v12)
        {
          v13 = 0;
          v10 = 0;
          v14 = *(a3 + 128);
          v15 = *(a3 + 96);
          v16 = *(a3 + 104);
          v20 = 0.0;
          if (Count)
          {
            goto LABEL_23;
          }

          while (v13 < Count)
          {
            FigCFArrayGetDoubleAtIndex();
            if (v20 != *(a3 + 120))
            {
              v10 = sc_CreateMediaSegment(a1, a2, v12, v15, v16, 1, &v21, v20, v14);
              if (!v10)
              {
                v17 = v21;
                *(v21 + 160) |= *(a3 + 160) & 0xFFFFFFF9;
                v18 = *(a3 + 136);
                if (v18)
                {
                  v18 = CFRetain(v18);
                  v17 = v21;
                }

                v10 = 0;
                *(v17 + 136) = v18;
              }
            }

            ++v13;
            Count = *(a3 + 136);
            if (Count)
            {
LABEL_23:
              Count = CFArrayGetCount(Count);
            }
          }
        }

        else
        {
          FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_2(&v20);
          v10 = LODWORD(v20);
        }

        goto LABEL_25;
      }

      goto LABEL_13;
    }

    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_3(&v21);
LABEL_34:
    v10 = v21;
    goto LABEL_25;
  }

LABEL_9:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v20, v21, v22);
  v10 = v9;
LABEL_25:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigStreamingCacheSetInterstitialAssetList(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetInterstitialAssetList_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"AssetList");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheCopyInterstitialAssetList(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"AssetList", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetExclusiveWriter(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if ((*(a1 + 220) & 2) == 0)
  {
    FigSimpleMutexUnlock();
    return 1;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 != a2)
  {
    if (v4)
    {
      FigSimpleMutexUnlock();
      v6 = 0;
LABEL_8:
      CFRelease(v4);
      return v6;
    }

    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v8 = v7;
    v9 = *(a1 + 296);
    *(a1 + 296) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 1;
  }

  FigSimpleMutexUnlock();
  v6 = 1;
  if (a2)
  {
    goto LABEL_8;
  }

  return v6;
}

void FigStreamingCacheClearExclusiveWriter(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if ((*(a1 + 220) & 2) != 0)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF17CD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      v6 = v4 == a2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      FigSimpleMutexUnlock();
LABEL_12:
      CFRelease(v4);
      return;
    }

    v7 = *(a1 + 296);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 296) = 0;
    }

    FigSimpleMutexUnlock();
    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t FigStreamingCacheCreate(const __CFAllocator *a1, const __CFURL *a2, const __CFDictionary *a3, uint64_t *a4)
{
  v76[16] = *MEMORY[0x1E69E9840];
  valueCallBacks = *byte_1F0AFCEE0;
  if (!a4)
  {
    FigStreamingCacheCreate_cold_14(v76);
    return LODWORD(v76[0]);
  }

  if (!a2)
  {
    FigStreamingCacheCreate_cold_13(v76);
    return LODWORD(v76[0]);
  }

  if (sRegisterFigStreamingCacheTypeOnce != -1)
  {
    FigStreamingCacheGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamingCacheCreate_cold_12(v76);
    return LODWORD(v76[0]);
  }

  v9 = Instance;
  v10 = FigReentrantMutexCreate();
  *(v9 + 16) = v10;
  if (!v10)
  {
    FigStreamingCacheCreate_cold_11(v76);
    goto LABEL_142;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(v9 + 232) = Mutable;
  if (!Mutable)
  {
    FigStreamingCacheCreate_cold_10(v76);
    goto LABEL_142;
  }

  v12 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], &valueCallBacks);
  *(v9 + 224) = v12;
  if (!v12)
  {
    FigStreamingCacheCreate_cold_9(v76);
    goto LABEL_142;
  }

  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 264) = v13;
  if (!v13)
  {
    FigStreamingCacheCreate_cold_8(v76);
    goto LABEL_142;
  }

  if (a3)
  {
    if (CFDictionaryGetValue(a3, @"FSC_Backing") == @"FSC_DiskBacking")
    {
      *(v9 + 220) |= 2u;
    }

    Value = CFDictionaryGetValue(a3, @"FSC_DiskCacheRepositoryURL");
    if (Value)
    {
      v15 = CFURLGetString(Value);
      *(v9 + 32) = CFRetain(v15);
      *(v9 + 220) |= 2u;
      if (dword_1EAF17CD8)
      {
        LODWORD(v66) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v66;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v19 = *(v9 + 32);
          *cf = 136315650;
          *&cf[4] = "FigStreamingCacheCreate";
          v68 = 2048;
          v69 = v9;
          v70 = 2112;
          v71 = v19;
          _os_log_send_and_compose_impl(v18, 0, v76, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<< StreamingCache >> %s: [%p] cacheRespositoryURLString = %@", cf, 32, valueCallBacks.version, valueCallBacks.retain, valueCallBacks.release, valueCallBacks.copyDescription, valueCallBacks.equal);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v20 = CFDictionaryGetValue(a3, @"FSC_DownloadDestinationURL");
    if (v20)
    {
      v21 = CFRetain(v20);
      *(v9 + 40) = v21;
      if (v21)
      {
        *(v9 + 220) |= 2u;
        if (dword_1EAF17CD8)
        {
          LODWORD(v66) = 0;
          HIBYTE(v64) = 0;
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v23 = v66;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v25 = *(v9 + 40);
            *cf = 136315650;
            *&cf[4] = "FigStreamingCacheCreate";
            v68 = 2048;
            v69 = v9;
            v70 = 2112;
            v71 = v25;
            LODWORD(v64) = 32;
            _os_log_send_and_compose_impl(v24, 0, v76, 128, &dword_1962D5000, v22, 0, "<< StreamingCache >> %s: [%p] downloadDestinationURL = %@", cf, v64);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      *(v9 + 40) = 0;
    }

    v26 = CFDictionaryGetValue(a3, @"FSC_UseURLPathAsCacheKey");
    v27 = *MEMORY[0x1E695E4D0];
    if (v26 == *MEMORY[0x1E695E4D0])
    {
      *(v9 + 64) |= 1u;
    }

    if (CFDictionaryGetValue(a3, @"FSC_UseURLWithoutQueryStringAsCacheKey") == v27)
    {
      *(v9 + 64) |= 2u;
    }
  }

  if (*(v9 + 32))
  {
    goto LABEL_147;
  }

  if (!*(v9 + 40))
  {
    v28 = CFPreferencesCopyAppValue(@"streamingCachePath", @"com.apple.coremedia");
    if (v28)
    {
      v29 = v28;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v29))
      {
        *(v9 + 32) = CFRetain(v29);
        *(v9 + 220) |= 2u;
      }

      CFRelease(v29);
    }
  }

  if (*(v9 + 32))
  {
LABEL_147:
    if (*(v9 + 40))
    {
      FigStreamingCacheCreate_cold_2(v76);
      goto LABEL_142;
    }
  }

  v31 = *(v9 + 220);
  *(v9 + 220) = v31 | 1;
  if ((v31 & 2) != 0)
  {
    *(v9 + 88) = xmmword_196E7C080;
    v32 = (v9 + 88);
    *(v9 + 104) = 0x4044000000000000;
    v33 = (v9 + 104);
    if (a3)
    {
      v76[0] = 0;
      *cf = 0;
      goto LABEL_49;
    }

LABEL_60:
    *(v9 + 24) = FigCFHTTPCreateURLString(a2);
LABEL_66:
    v43 = FigCFURLCreateCacheKey();
    *(v9 + 48) = v43;
    v42 = (v9 + 48);
    if (v43)
    {
      v38 = 0;
LABEL_68:
      *(v9 + 168) = 0;
      *(v9 + 176) = v9 + 168;
      v44 = dispatch_queue_create("com.apple.coremedia.streamingCache.notification", 0);
      *(v9 + 248) = v44;
      if (v44)
      {
        if ((*(v9 + 220) & 2) == 0)
        {
          goto LABEL_70;
        }

        v53 = dispatch_queue_create("com.apple.coremedia.streamingcache.ioqueue", 0);
        *(v9 + 240) = v53;
        if (v53)
        {
          v76[0] = 0;
          *cf = 0;
          if (*(v9 + 40))
          {
            v55 = FigCFURLDoesDirectoryExist() == 0;
            v56 = *(v9 + 40);
            if (v56)
            {
              v57 = CFRetain(v56);
            }

            else
            {
              v57 = 0;
            }

            *(v9 + 56) = v57;
            v54 = sc_EnsurePersistentStoreAtURL(v9, v57, v55);
            if (!v54)
            {
              v54 = sc_RestoreCache(v9);
            }
          }

          else
          {
            v54 = FigShared_CopyDiskCacheParams(*(v9 + 32));
            if (!v54)
            {
              if (!FigShared_CheckOutOfDiskCache(*(v9 + 32)))
              {
                if (sc_EnsurePersistentStoreAtURL(v9, *(v9 + 56), 1))
                {
                  v58 = *(v9 + 56);
                  if (v58)
                  {
                    CFRelease(v58);
                    *(v9 + 56) = 0;
                  }

                  if (*cf)
                  {
                    CFRelease(*cf);
                    *cf = 0;
                  }
                }

                else if (!sc_RestoreCache(v9))
                {
LABEL_113:
                  v60 = *v42;
                  v61 = *cf;
                  *v42 = *cf;
                  if (v61)
                  {
                    CFRetain(v61);
                  }

                  if (v60)
                  {
                    CFRelease(v60);
                  }

                  if (*cf)
                  {
                    CFRelease(*cf);
                    DiskCacheBundle = 0;
                    *cf = 0;
                  }

                  else
                  {
                    DiskCacheBundle = 0;
                  }

LABEL_120:
                  sc_UnlockPersistentStoreForAnything(v9);
                  if (*cf)
                  {
                    CFRelease(*cf);
                  }

                  if (v76[0])
                  {
                    CFRelease(v76[0]);
                  }

                  if (DiskCacheBundle == -16910 || DiskCacheBundle == -16914)
                  {
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, LODWORD(valueCallBacks.version));
                    DiskCacheBundle = v62;
                  }

                  if (DiskCacheBundle)
                  {
LABEL_80:
                    if (!v38)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_81;
                  }

LABEL_70:
                  if (dword_1EAF17CD8)
                  {
                    LODWORD(v66) = 0;
                    HIBYTE(v64) = 0;
                    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v46 = v66;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = v46 & 0xFFFFFFFE;
                    }

                    if (v47)
                    {
                      v48 = "disk";
                      v49 = *(v9 + 48);
                      if ((*(v9 + 220) & 2) == 0)
                      {
                        v48 = "memory";
                      }

                      v50 = *(v9 + 72);
                      *cf = 136316162;
                      *&cf[4] = "FigStreamingCacheCreate";
                      v68 = 2048;
                      v69 = v9;
                      v70 = 2080;
                      v71 = v48;
                      v72 = 2112;
                      v73 = v49;
                      v74 = 2048;
                      v75 = v50;
                      LODWORD(v64) = 52;
                      _os_log_send_and_compose_impl(v47, 0, v76, 128, &dword_1962D5000, v45, 0, "<< StreamingCache >> %s: [%p] New %s-backed streaming cache - %@ (memoryCacheSizeLimit=%lld)", cf, v64);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  DiskCacheBundle = 0;
                  *a4 = v9;
                  v9 = 0;
                  goto LABEL_80;
                }
              }

LABEL_102:
              DiskCacheBundle = sc_CreateDiskCacheBundle(v9, v76[0], (v9 + 56));
              while (DiskCacheBundle)
              {
                if (DiskCacheBundle != 28)
                {
                  goto LABEL_120;
                }

                v66 = 0;
                if (FigShared_MakeRoomInDiskCache(*(v9 + 32)))
                {
                  v59 = 1;
                }

                else
                {
                  v59 = v66 < 1;
                }

                if (!v59)
                {
                  goto LABEL_102;
                }

                DiskCacheBundle = 28;
                if (!v66)
                {
                  goto LABEL_120;
                }
              }

              v54 = FigShared_CheckIntoAndOutOfDiskCache(*(v9 + 32));
              if (!v54)
              {
                goto LABEL_113;
              }
            }
          }

          DiskCacheBundle = v54;
          goto LABEL_120;
        }

        FigStreamingCacheCreate_cold_5(v76);
      }

      else
      {
        FigStreamingCacheCreate_cold_6(v76);
      }

      DiskCacheBundle = LODWORD(v76[0]);
      goto LABEL_80;
    }

    FigStreamingCacheCreate_cold_7(v76);
LABEL_142:
    DiskCacheBundle = LODWORD(v76[0]);
    goto LABEL_83;
  }

  *(v9 + 88) = xmmword_196E7C090;
  v32 = (v9 + 88);
  *(v9 + 72) = 0x2000000;
  *(v9 + 104) = 0x4044000000000000;
  v33 = (v9 + 104);
  if (!a3)
  {
    goto LABEL_60;
  }

  v76[0] = 0;
  *cf = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v9 + 72) = v76[0];
  }

LABEL_49:
  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v9 + 80) = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *v32 = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v9 + 96) = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *v33 = *cf;
  }

  v34 = CFDictionaryGetValue(a3, @"FSC_AddToDonorPool");
  if (v34)
  {
    v35 = CFRetain(v34);
    *(v9 + 136) = v35;
    if (v35)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  else
  {
    *(v9 + 136) = 0;
  }

  v36 = CFDictionaryGetValue(a3, @"FSC_ClientName");
  *(v9 + 24) = FigCFHTTPCreateURLString(a2);
  if (!v36)
  {
    goto LABEL_66;
  }

  v37 = FigCFURLCreateCacheKey();
  if (!v37)
  {
    FigStreamingCacheCreate_cold_4(v76);
    goto LABEL_142;
  }

  v38 = v37;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v40 = CFStringCreateMutable(AllocatorForMedia, 0);
  if (v40)
  {
    v41 = v40;
    CFStringAppend(v40, v36);
    CFStringAppend(v41, @"-");
    CFStringAppend(v41, v38);
    *(v9 + 48) = v41;
    v42 = (v9 + 48);
    goto LABEL_68;
  }

  FigStreamingCacheCreate_cold_3(v76);
  DiskCacheBundle = LODWORD(v76[0]);
LABEL_81:
  CFRelease(v38);
LABEL_82:
  if (v9)
  {
LABEL_83:
    CFRelease(v9);
  }

  return DiskCacheBundle;
}

void sc_FreeInterstitialAssetRecord(int a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  free(a2);
}

uint64_t sc_NoteMemoryDemand(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = FigSimpleMutexLock();
  if (*(a2 + 272))
  {
    sc_NoteMemoryDemand_cold_1(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, SHIDWORD(v20), v21);
  }

  else if (*(a2 + 144))
  {
    if (*a4 != a2)
    {
      FigSimpleMutexLock();
      v14 = a4[1];
      FigSimpleMutexUnlock();
      v15 = *(a2 + 168);
      if (v15)
      {
        if (v14 >= 1)
        {
          do
          {
            BackingForMediaStreamFromLaterSegments = sc_GetBackingForMediaStreamFromLaterSegments(a2, v15, v14, 0.0);
            FigSimpleMutexLock();
            v14 = a4[1] - BackingForMediaStreamFromLaterSegments;
            a4[1] = v14;
            FigSimpleMutexUnlock();
            v15 = *(v15 + 8);
            if (v15)
            {
              v17 = v14 <= 0;
            }

            else
            {
              v17 = 1;
            }
          }

          while (!v17);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

double figStreamingCacheInit(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
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

uint64_t figStreamingCacheFinalize(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figStreamingCacheInvalidate(a1);
  v3 = a1[33];
  if (v3)
  {
    CFRelease(v3);
    a1[33] = 0;
  }

  v4 = a1[30];
  if (v4)
  {
    dispatch_release(v4);
    a1[30] = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef figStreamingCacheCopyDebugDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigStreamingCache %p (%d) URL %@ currentCacheSize %lld playbackTime %.2f flags 0x%X]", a1, v3, *(a1 + 48), *(a1 + 184), *(a1 + 192), *(a1 + 220));
}

void sc_CopyDataApplierFunc(const void *a1, uint64_t a2, uint64_t a3)
{
  theBuffer = 0;
  cf = 0;
  v6 = *(a3 + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v7)
  {
    CFDataWithBlockBufferNoCopy = v7(v6, a2, &cf, &theBuffer);
    if (!CFDataWithBlockBufferNoCopy)
    {
      CMBlockBufferGetDataLength(theBuffer);
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (!CFDataWithBlockBufferNoCopy)
      {
        CFDictionaryAddValue(*(a3 + 16), a1, 0);
        goto LABEL_7;
      }
    }
  }

  else
  {
    CFDataWithBlockBufferNoCopy = -12782;
  }

  *a3 = CFDataWithBlockBufferNoCopy;
LABEL_7:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(uint64_t a1)
{
  cf = 0;
  if ((*(a1 + 220) & 2) == 0)
  {
    sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore_cold_2(&v13);
LABEL_15:
    v6 = v13;
    goto LABEL_10;
  }

  if ((*(a1 + 288) & 2) == 0)
  {
    sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore_cold_1(&v13);
    goto LABEL_15;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigHLSPersistentStoreGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"MasterPlaylistNetworkURL", AllocatorForMedia, &cf);
  }

  if (FigCFEqual())
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 24);
    FigHLSPersistentStoreGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v6 = v10(v9, @"MasterPlaylistNetworkURL", v7);
    }

    else
    {
      v6 = 4294954514;
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sc_SendDiskWriteErrorNotification(uint64_t a1, uint64_t a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetInt32();
  }

  else
  {
    sc_SendDiskWriteErrorNotification_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v11, v12, SHIDWORD(v12), v13);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void stream_CreateStreamInfoCreateOptions(uint64_t a1, __CFDictionary **a2)
{
  v3 = a1;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"StreamInfoDemandWriteAccess", *MEMORY[0x1E695E4D0]);
  }

  if (FigCFDictionaryGetCount() < 1)
  {
    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {
    *a2 = v6;
  }
}

void sc_RestoreMediaMapsFromDiskApplierFunction(const void *a1, const void *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v19[1] = 0;
  if (!v5)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_6(v19);
LABEL_19:
    v11 = v19[0];
    goto LABEL_14;
  }

  if (!v4)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_5(v19);
    goto LABEL_19;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_1(v19);
    goto LABEL_19;
  }

  v9 = CFDictionaryGetTypeID();
  if (v9 != CFGetTypeID(a2))
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_2(v19);
    goto LABEL_19;
  }

  v10 = *(v5 + 168);
  if (!v10)
  {
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    goto LABEL_14;
  }

  while (v10 != v4)
  {
    v10 = *(v10 + 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v19[0] = 0;
  Value = CFDictionaryGetValue(a2, @"URL");
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_4(&v20);
LABEL_22:
    v11 = v20;
    goto LABEL_14;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", Value, v19[0]);
  if (!v14)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_3(&v20);
    goto LABEL_22;
  }

  v15 = v14;
  CFDictionarySetValue(*(v10 + 160), v14, a1);
  if (FigCFDictionaryGetValueIfPresent())
  {
    FigCFDictionarySetValue();
  }

  CFRelease(v15);
  v11 = 0;
LABEL_14:
  *(a3 + 4) = v11;
}

void segment_EvictEntry(char *value, int a2, int a3)
{
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  memset(v184, 0, sizeof(v184));
  v3 = *(value + 40);
  if ((v3 & 8) != 0)
  {
    return;
  }

  v7 = *value;
  if (!a2)
  {
    if ((v3 & 2) != 0)
    {
      started = MediaSegmentStartTimeList_RB_NEXT(value);
      if (started)
      {
        if (*(value + 15) + *(value + 16) >= *(started + 120))
        {
          *(started + 160) |= 2u;
          v3 = *(value + 40);
        }
      }
    }

    if ((v3 & 4) != 0)
    {
      v9 = MediaSegmentStartTimeList_RB_PREV(value);
      if (v9)
      {
        if (*(v9 + 120) + *(v9 + 128) >= *(value + 15))
        {
          *(v9 + 160) |= 4u;
        }
      }
    }
  }

  *(&v184[5] + 8) = *(value + 88);
  v10 = *(value + 15);
  *(&v185 + 1) = v10;
  *(&v184[6] + 1) = *(value + 13);
  v12 = v7 + 3;
  v11 = v7[3];
  if (v11)
  {
    do
    {
      v13 = v10 - *(v11 + 120);
      if (v13 >= 0.0)
      {
        if (v13 <= 0.0)
        {
          break;
        }

        v14 = 16;
      }

      else
      {
        v14 = 8;
      }

      v11 = *(v11 + v14);
    }

    while (v11);
    if (v11 == value)
    {
      v15 = *(value + 2);
      if (*(value + 1))
      {
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *(v15 + 8);
          }

          while (v15);
          v15 = *(v16 + 16);
          v17 = *(v16 + 24);
          v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
          if (v15)
          {
            if (*(v15 + 24))
            {
              v19 = v17 | 1;
            }

            else
            {
              v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
            }

            *(v15 + 24) = v19;
          }

          v20 = v7 + 3;
          if (v18)
          {
            v20 = (v18 + 8);
            if (*(v18 + 8) != v16)
            {
              v20 = (v18 + 16);
            }
          }

          LODWORD(v17) = v17 & 1;
          *v20 = v15;
          if ((*(v16 + 24) & 0xFFFFFFFFFFFFFFFELL) == value)
          {
            v18 = v16;
          }

          v21 = *(value + 3);
          *(v16 + 8) = *(value + 8);
          *(v16 + 24) = v21;
          v22 = v7 + 3;
          v23 = *(value + 3) & 0xFFFFFFFFFFFFFFFELL;
          if (v23)
          {
            v25 = *(v23 + 8);
            v24 = (v23 + 8);
            if (v25 == value)
            {
              v22 = v24;
            }

            else
            {
              v22 = v24 + 1;
            }
          }

          *v22 = v16;
          v27 = *(value + 1);
          v26 = *(value + 2);
          if (*(v27 + 24))
          {
            v28 = v16 | 1;
          }

          else
          {
            v28 = v16;
          }

          *(v27 + 24) = v28;
          if (v26)
          {
            if (*(v26 + 24))
            {
              v16 |= 1uLL;
            }

            *(v26 + 24) = v16;
          }

          goto LABEL_53;
        }

        v18 = *(value + 3) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(value + 3) & 1;
        v15 = *(value + 1);
      }

      else
      {
        v18 = *(value + 3) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(value + 3) & 1;
        if (!v15)
        {
LABEL_49:
          v30 = v7 + 3;
          if (v18)
          {
            v30 = (v18 + 8);
            if (*(v18 + 8) != value)
            {
              v30 = (v18 + 16);
            }
          }

          *v30 = v15;
LABEL_53:
          if (!v17)
          {
            while (1)
            {
              v52 = v15;
              v15 = v18;
              if (v52)
              {
                v53 = v52[3];
                if (v53)
                {
                  break;
                }
              }

              v44 = *v12;
              if (v52 == *v12)
              {
                goto LABEL_143;
              }

              v31 = *(v15 + 8);
              if (v31 == v52)
              {
                v31 = *(v15 + 16);
                v38 = *(v31 + 24);
                if (v38)
                {
                  *(v31 + 24) = v38 & 0xFFFFFFFFFFFFFFFELL;
                  v39 = *(v15 + 24) | 1;
                  v40 = *(v31 + 8);
                  *(v15 + 16) = v40;
                  *(v15 + 24) = v39;
                  if (v40)
                  {
                    if (v40[3])
                    {
                      v41 = v15 | 1;
                    }

                    else
                    {
                      v41 = v15;
                    }

                    v40[3] = v41;
                    v39 = *(v15 + 24);
                  }

                  *(v31 + 24) = v39 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                  if ((v39 & 0xFFFFFFFFFFFFFFFELL) != 0)
                  {
                    v42 = *(v15 + 24);
                    v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
                    if (v15 == *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8))
                    {
                      *(v43 + 8) = v31;
                    }

                    else
                    {
                      *(v43 + 16) = v31;
                      v40 = *(v15 + 16);
                    }
                  }

                  else
                  {
                    *v12 = v31;
                    v42 = *(v15 + 24);
                    v44 = v31;
                  }

                  *(v31 + 8) = v15;
                  if (v42)
                  {
                    v31 |= 1uLL;
                  }

                  *(v15 + 24) = v31;
                  v31 = v40;
                }

                v49 = *(v31 + 8);
                if (v49)
                {
                  v50 = *(v49 + 24);
                  if (v50)
                  {
                    v51 = *(v31 + 16);
                    if (!v51 || (*(v51 + 24) & 1) == 0)
                    {
                      *(v49 + 24) = v50 & 0xFFFFFFFFFFFFFFFELL;
                      v59 = *(v31 + 24) | 1;
                      *(v31 + 24) = v59;
                      v60 = *(v49 + 16);
                      *(v31 + 8) = v60;
                      if (v60)
                      {
                        if (*(v60 + 24))
                        {
                          v61 = v31 | 1;
                        }

                        else
                        {
                          v61 = v31;
                        }

                        *(v60 + 24) = v61;
                        v59 = *(v31 + 24);
                      }

                      *(v49 + 24) = v59 & 0xFFFFFFFFFFFFFFFELL | *(v49 + 24) & 1;
                      if ((v59 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v62 = *(v31 + 24);
                        v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
                        if (v31 == *((v62 & 0xFFFFFFFFFFFFFFFELL) + 8))
                        {
                          *(v63 + 8) = v49;
                        }

                        else
                        {
                          *(v63 + 16) = v49;
                        }
                      }

                      else
                      {
                        *v12 = v49;
                        v62 = *(v31 + 24);
                        v44 = v49;
                      }

                      *(v49 + 16) = v31;
                      if (v62)
                      {
                        v49 |= 1uLL;
                      }

                      *(v31 + 24) = v49;
                      v31 = *(v15 + 16);
                      v51 = *(v31 + 16);
                    }

LABEL_416:
                    *(v31 + 24) = *(v31 + 24) & 0xFFFFFFFFFFFFFFFELL | *(v15 + 24) & 1;
                    *(v15 + 24) &= ~1uLL;
                    if (v51)
                    {
                      *(v51 + 24) &= ~1uLL;
                    }

                    v64 = (v31 + 8);
                    v65 = *(v31 + 8);
                    *(v15 + 16) = v65;
                    if (v65)
                    {
                      goto LABEL_130;
                    }

                    goto LABEL_134;
                  }
                }

                v51 = *(v31 + 16);
                if (v51 && (*(v51 + 24) & 1) != 0)
                {
                  goto LABEL_416;
                }
              }

              else
              {
                v32 = *(v31 + 24);
                if (v32)
                {
                  *(v31 + 24) = v32 & 0xFFFFFFFFFFFFFFFELL;
                  v33 = *(v15 + 24) | 1;
                  *(v15 + 24) = v33;
                  v34 = *(v31 + 16);
                  *(v15 + 8) = v34;
                  if (v34)
                  {
                    if (v34[3])
                    {
                      v35 = v15 | 1;
                    }

                    else
                    {
                      v35 = v15;
                    }

                    v34[3] = v35;
                    v33 = *(v15 + 24);
                  }

                  *(v31 + 24) = v33 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                  if ((v33 & 0xFFFFFFFFFFFFFFFELL) != 0)
                  {
                    v36 = *(v15 + 24);
                    v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
                    if (v15 == *((v36 & 0xFFFFFFFFFFFFFFFELL) + 8))
                    {
                      *(v37 + 8) = v31;
                      v34 = *(v15 + 8);
                    }

                    else
                    {
                      *(v37 + 16) = v31;
                    }
                  }

                  else
                  {
                    *v12 = v31;
                    v36 = *(v15 + 24);
                    v44 = v31;
                  }

                  *(v31 + 16) = v15;
                  if (v36)
                  {
                    v31 |= 1uLL;
                  }

                  *(v15 + 24) = v31;
                  v31 = v34;
                }

                v45 = *(v31 + 8);
                if (v45)
                {
                  v46 = *(v45 + 24);
                  if (v46)
                  {
                    goto LABEL_100;
                  }
                }

                v47 = *(v31 + 16);
                if (v47)
                {
                  v48 = *(v47 + 24);
                  if (v48)
                  {
                    if (!v45)
                    {
                      goto LABEL_103;
                    }

                    v46 = *(v45 + 24);
LABEL_100:
                    if ((v46 & 1) == 0)
                    {
                      v47 = *(v31 + 16);
                      if (v47)
                      {
                        v48 = *(v47 + 24);
LABEL_103:
                        *(v47 + 24) = v48 & 0xFFFFFFFFFFFFFFFELL;
                      }

                      v54 = *(v31 + 24) | 1;
                      v55 = *(v47 + 8);
                      *(v31 + 16) = v55;
                      *(v31 + 24) = v54;
                      if (v55)
                      {
                        if (*(v55 + 24))
                        {
                          v56 = v31 | 1;
                        }

                        else
                        {
                          v56 = v31;
                        }

                        *(v55 + 24) = v56;
                        v54 = *(v31 + 24);
                      }

                      *(v47 + 24) = v54 & 0xFFFFFFFFFFFFFFFELL | *(v47 + 24) & 1;
                      if ((v54 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v57 = *(v31 + 24);
                        v58 = v57 & 0xFFFFFFFFFFFFFFFELL;
                        if (v31 == *((v57 & 0xFFFFFFFFFFFFFFFELL) + 8))
                        {
                          *(v58 + 8) = v47;
                        }

                        else
                        {
                          *(v58 + 16) = v47;
                        }
                      }

                      else
                      {
                        *v12 = v47;
                        v57 = *(v31 + 24);
                        v44 = v47;
                      }

                      *(v47 + 8) = v31;
                      if (v57)
                      {
                        v47 |= 1uLL;
                      }

                      *(v31 + 24) = v47;
                      v31 = *(v15 + 8);
                      v45 = *(v31 + 8);
                    }

                    *(v31 + 24) = *(v31 + 24) & 0xFFFFFFFFFFFFFFFELL | *(v15 + 24) & 1;
                    *(v15 + 24) &= ~1uLL;
                    if (v45)
                    {
                      *(v45 + 24) &= ~1uLL;
                    }

                    v64 = (v31 + 16);
                    v65 = *(v31 + 16);
                    *(v15 + 8) = v65;
                    if (v65)
                    {
LABEL_130:
                      if (*(v65 + 24))
                      {
                        v66 = v15 | 1;
                      }

                      else
                      {
                        v66 = v15;
                      }

                      *(v65 + 24) = v66;
                    }

LABEL_134:
                    v67 = *(v15 + 24);
                    *(v31 + 24) = v67 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                    if ((v67 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v68 = *(v15 + 24);
                      v69 = v68 & 0xFFFFFFFFFFFFFFFELL;
                      if (v15 == *((v68 & 0xFFFFFFFFFFFFFFFELL) + 8))
                      {
                        *(v69 + 8) = v31;
                      }

                      else
                      {
                        *(v69 + 16) = v31;
                      }
                    }

                    else
                    {
                      *v12 = v31;
                      v68 = *(v15 + 24);
                      v44 = v31;
                    }

                    *v64 = v15;
                    if (v68)
                    {
                      v70 = v31 | 1;
                    }

                    else
                    {
                      v70 = v31;
                    }

                    *(v15 + 24) = v70;
                    v52 = v44;
LABEL_143:
                    if (!v52)
                    {
                      goto LABEL_146;
                    }

                    v53 = v52[3];
                    break;
                  }
                }
              }

              *(v31 + 24) |= 1uLL;
              v18 = *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL;
            }

            v52[3] = v53 & 0xFFFFFFFFFFFFFFFELL;
          }

          goto LABEL_146;
        }
      }

      if (*(v15 + 24))
      {
        v29 = v18 + 1;
      }

      else
      {
        v29 = v18;
      }

      *(v15 + 24) = v29;
      goto LABEL_49;
    }
  }

LABEL_146:
  v71 = v7 + 4;
  if (!v7[4] || MediaSegmentOffsetList_RB_FIND(v7 + 4, v184) != value)
  {
    goto LABEL_275;
  }

  v72 = *(value + 5);
  if (*(value + 4))
  {
    if (v72)
    {
      do
      {
        v73 = v72;
        v72 = *(v72 + 32);
      }

      while (v72);
      v72 = *(v73 + 40);
      v74 = *(v73 + 48);
      v75 = v74 & 0xFFFFFFFFFFFFFFFELL;
      if (v72)
      {
        if (*(v72 + 48))
        {
          v76 = v74 | 1;
        }

        else
        {
          v76 = v74 & 0xFFFFFFFFFFFFFFFELL;
        }

        *(v72 + 48) = v76;
      }

      v77 = v7 + 4;
      if (v75)
      {
        v77 = (v75 + 32);
        if (*(v75 + 32) != v73)
        {
          v77 = (v75 + 40);
        }
      }

      LODWORD(v74) = v74 & 1;
      *v77 = v72;
      if ((*(v73 + 48) & 0xFFFFFFFFFFFFFFFELL) == value)
      {
        v75 = v73;
      }

      v78 = *(value + 6);
      *(v73 + 32) = *(value + 2);
      *(v73 + 48) = v78;
      v79 = v7 + 4;
      v80 = *(value + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (v80)
      {
        v82 = *(v80 + 32);
        v81 = (v80 + 32);
        if (v82 == value)
        {
          v79 = v81;
        }

        else
        {
          v79 = v81 + 1;
        }
      }

      *v79 = v73;
      v84 = *(value + 4);
      v83 = *(value + 5);
      if (*(v84 + 48))
      {
        v85 = v73 | 1;
      }

      else
      {
        v85 = v73;
      }

      *(v84 + 48) = v85;
      if (v83)
      {
        if (*(v83 + 48))
        {
          v73 |= 1uLL;
        }

        *(v83 + 48) = v73;
      }

      goto LABEL_183;
    }

    v75 = *(value + 6) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(value + 6) & 1;
    v72 = *(value + 4);
    goto LABEL_175;
  }

  v75 = *(value + 6) & 0xFFFFFFFFFFFFFFFELL;
  v74 = *(value + 6) & 1;
  if (v72)
  {
LABEL_175:
    if (*(v72 + 48))
    {
      v86 = v75 + 1;
    }

    else
    {
      v86 = v75;
    }

    *(v72 + 48) = v86;
  }

  v87 = v7 + 4;
  if (v75)
  {
    v87 = (v75 + 32);
    if (*(v75 + 32) != value)
    {
      v87 = (v75 + 40);
    }
  }

  *v87 = v72;
LABEL_183:
  if (!v74)
  {
    while (1)
    {
      v109 = v72;
      v72 = v75;
      if (v109)
      {
        v110 = v109[6];
        if (v110)
        {
          break;
        }
      }

      v101 = *v71;
      if (v109 == *v71)
      {
        goto LABEL_272;
      }

      v88 = *(v72 + 32);
      if (v88 == v109)
      {
        v88 = *(v72 + 40);
        v95 = *(v88 + 48);
        if (v95)
        {
          *(v88 + 48) = v95 & 0xFFFFFFFFFFFFFFFELL;
          v96 = *(v72 + 48) | 1;
          v97 = *(v88 + 32);
          *(v72 + 40) = v97;
          *(v72 + 48) = v96;
          if (v97)
          {
            if (v97[6])
            {
              v98 = v72 | 1;
            }

            else
            {
              v98 = v72;
            }

            v97[6] = v98;
            v96 = *(v72 + 48);
          }

          *(v88 + 48) = v96 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
          if ((v96 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v99 = *(v72 + 48);
            v100 = v99 & 0xFFFFFFFFFFFFFFFELL;
            if (v72 == *((v99 & 0xFFFFFFFFFFFFFFFELL) + 32))
            {
              *(v100 + 32) = v88;
            }

            else
            {
              *(v100 + 40) = v88;
              v97 = *(v72 + 40);
            }
          }

          else
          {
            *v71 = v88;
            v99 = *(v72 + 48);
            v101 = v88;
          }

          *(v88 + 32) = v72;
          if (v99)
          {
            v88 |= 1uLL;
          }

          *(v72 + 48) = v88;
          v88 = v97;
        }

        v106 = *(v88 + 32);
        if (v106)
        {
          v107 = *(v106 + 48);
          if (v107)
          {
            v108 = *(v88 + 40);
            if (!v108 || (*(v108 + 48) & 1) == 0)
            {
              *(v106 + 48) = v107 & 0xFFFFFFFFFFFFFFFELL;
              v116 = *(v88 + 48) | 1;
              *(v88 + 48) = v116;
              v117 = *(v106 + 40);
              *(v88 + 32) = v117;
              if (v117)
              {
                if (*(v117 + 48))
                {
                  v118 = v88 | 1;
                }

                else
                {
                  v118 = v88;
                }

                *(v117 + 48) = v118;
                v116 = *(v88 + 48);
              }

              *(v106 + 48) = v116 & 0xFFFFFFFFFFFFFFFELL | *(v106 + 48) & 1;
              if ((v116 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v119 = *(v88 + 48);
                v120 = v119 & 0xFFFFFFFFFFFFFFFELL;
                if (v88 == *((v119 & 0xFFFFFFFFFFFFFFFELL) + 32))
                {
                  *(v120 + 32) = v106;
                }

                else
                {
                  *(v120 + 40) = v106;
                }
              }

              else
              {
                *v71 = v106;
                v119 = *(v88 + 48);
                v101 = v106;
              }

              *(v106 + 40) = v88;
              if (v119)
              {
                v106 |= 1uLL;
              }

              *(v88 + 48) = v106;
              v88 = *(v72 + 40);
              v108 = *(v88 + 40);
            }

LABEL_424:
            *(v88 + 48) = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v72 + 48) & 1;
            *(v72 + 48) &= ~1uLL;
            if (v108)
            {
              *(v108 + 48) &= ~1uLL;
            }

            v121 = (v88 + 32);
            v122 = *(v88 + 32);
            *(v72 + 40) = v122;
            if (v122)
            {
              goto LABEL_260;
            }

            goto LABEL_264;
          }
        }

        v108 = *(v88 + 40);
        if (v108 && (*(v108 + 48) & 1) != 0)
        {
          goto LABEL_424;
        }
      }

      else
      {
        v89 = *(v88 + 48);
        if (v89)
        {
          *(v88 + 48) = v89 & 0xFFFFFFFFFFFFFFFELL;
          v90 = *(v72 + 48) | 1;
          *(v72 + 48) = v90;
          v91 = *(v88 + 40);
          *(v72 + 32) = v91;
          if (v91)
          {
            if (v91[6])
            {
              v92 = v72 | 1;
            }

            else
            {
              v92 = v72;
            }

            v91[6] = v92;
            v90 = *(v72 + 48);
          }

          *(v88 + 48) = v90 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
          if ((v90 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v93 = *(v72 + 48);
            v94 = v93 & 0xFFFFFFFFFFFFFFFELL;
            if (v72 == *((v93 & 0xFFFFFFFFFFFFFFFELL) + 32))
            {
              *(v94 + 32) = v88;
              v91 = *(v72 + 32);
            }

            else
            {
              *(v94 + 40) = v88;
            }
          }

          else
          {
            *v71 = v88;
            v93 = *(v72 + 48);
            v101 = v88;
          }

          *(v88 + 40) = v72;
          if (v93)
          {
            v88 |= 1uLL;
          }

          *(v72 + 48) = v88;
          v88 = v91;
        }

        v102 = *(v88 + 32);
        if (v102)
        {
          v103 = *(v102 + 48);
          if (v103)
          {
            goto LABEL_230;
          }
        }

        v104 = *(v88 + 40);
        if (v104)
        {
          v105 = *(v104 + 48);
          if (v105)
          {
            if (!v102)
            {
              goto LABEL_233;
            }

            v103 = *(v102 + 48);
LABEL_230:
            if ((v103 & 1) == 0)
            {
              v104 = *(v88 + 40);
              if (v104)
              {
                v105 = *(v104 + 48);
LABEL_233:
                *(v104 + 48) = v105 & 0xFFFFFFFFFFFFFFFELL;
              }

              v111 = *(v88 + 48) | 1;
              v112 = *(v104 + 32);
              *(v88 + 40) = v112;
              *(v88 + 48) = v111;
              if (v112)
              {
                if (*(v112 + 48))
                {
                  v113 = v88 | 1;
                }

                else
                {
                  v113 = v88;
                }

                *(v112 + 48) = v113;
                v111 = *(v88 + 48);
              }

              *(v104 + 48) = v111 & 0xFFFFFFFFFFFFFFFELL | *(v104 + 48) & 1;
              if ((v111 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v114 = *(v88 + 48);
                v115 = v114 & 0xFFFFFFFFFFFFFFFELL;
                if (v88 == *((v114 & 0xFFFFFFFFFFFFFFFELL) + 32))
                {
                  *(v115 + 32) = v104;
                }

                else
                {
                  *(v115 + 40) = v104;
                }
              }

              else
              {
                *v71 = v104;
                v114 = *(v88 + 48);
                v101 = v104;
              }

              *(v104 + 32) = v88;
              if (v114)
              {
                v104 |= 1uLL;
              }

              *(v88 + 48) = v104;
              v88 = *(v72 + 32);
              v102 = *(v88 + 32);
            }

            *(v88 + 48) = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v72 + 48) & 1;
            *(v72 + 48) &= ~1uLL;
            if (v102)
            {
              *(v102 + 48) &= ~1uLL;
            }

            v121 = (v88 + 40);
            v122 = *(v88 + 40);
            *(v72 + 32) = v122;
            if (v122)
            {
LABEL_260:
              if (*(v122 + 48))
              {
                v123 = v72 | 1;
              }

              else
              {
                v123 = v72;
              }

              *(v122 + 48) = v123;
            }

LABEL_264:
            v124 = *(v72 + 48);
            *(v88 + 48) = v124 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
            if ((v124 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v125 = *(v72 + 48);
              v126 = v125 & 0xFFFFFFFFFFFFFFFELL;
              if (v72 == *((v125 & 0xFFFFFFFFFFFFFFFELL) + 32))
              {
                *(v126 + 32) = v88;
              }

              else
              {
                *(v126 + 40) = v88;
              }
            }

            else
            {
              *v71 = v88;
              v125 = *(v72 + 48);
              v101 = v88;
            }

            *v121 = v72;
            if (v125)
            {
              v88 |= 1uLL;
            }

            *(v72 + 48) = v88;
            v109 = v101;
LABEL_272:
            if (!v109)
            {
              goto LABEL_275;
            }

            v110 = v109[6];
            break;
          }
        }
      }

      *(v88 + 48) |= 1uLL;
      v75 = *(v72 + 48) & 0xFFFFFFFFFFFFFFFELL;
    }

    v109[6] = v110 & 0xFFFFFFFFFFFFFFFELL;
  }

LABEL_275:
  if (*(value + 13))
  {
    v127 = v7 + 5;
    if (v7[5])
    {
      if (MediaSegmentMediaSequenceNumberList_RB_FIND(v7 + 5, v184) == value)
      {
        v128 = *(value + 8);
        if (*(value + 7))
        {
          if (v128)
          {
            do
            {
              v129 = v128;
              v128 = *(v128 + 56);
            }

            while (v128);
            v128 = *(v129 + 64);
            v130 = *(v129 + 72);
            v131 = v130 & 0xFFFFFFFFFFFFFFFELL;
            if (v128)
            {
              if (*(v128 + 72))
              {
                v132 = v130 | 1;
              }

              else
              {
                v132 = v130 & 0xFFFFFFFFFFFFFFFELL;
              }

              *(v128 + 72) = v132;
            }

            v133 = v7 + 5;
            if (v131)
            {
              v133 = (v131 + 56);
              if (*(v131 + 56) != v129)
              {
                v133 = (v131 + 64);
              }
            }

            LODWORD(v130) = v130 & 1;
            *v133 = v128;
            if ((*(v129 + 72) & 0xFFFFFFFFFFFFFFFELL) == value)
            {
              v131 = v129;
            }

            v134 = *(value + 9);
            *(v129 + 56) = *(value + 56);
            *(v129 + 72) = v134;
            v135 = v7 + 5;
            v136 = *(value + 9) & 0xFFFFFFFFFFFFFFFELL;
            if (v136)
            {
              v138 = *(v136 + 56);
              v137 = (v136 + 56);
              if (v138 == value)
              {
                v135 = v137;
              }

              else
              {
                v135 = v137 + 1;
              }
            }

            *v135 = v129;
            v140 = *(value + 7);
            v139 = *(value + 8);
            if (*(v140 + 72))
            {
              v141 = v129 | 1;
            }

            else
            {
              v141 = v129;
            }

            *(v140 + 72) = v141;
            if (v139)
            {
              if (*(v139 + 72))
              {
                v129 |= 1uLL;
              }

              *(v139 + 72) = v129;
            }

            goto LABEL_313;
          }

          v131 = *(value + 9) & 0xFFFFFFFFFFFFFFFELL;
          v130 = *(value + 9) & 1;
          v128 = *(value + 7);
        }

        else
        {
          v131 = *(value + 9) & 0xFFFFFFFFFFFFFFFELL;
          v130 = *(value + 9) & 1;
          if (!v128)
          {
LABEL_309:
            v143 = v7 + 5;
            if (v131)
            {
              v143 = (v131 + 56);
              if (*(v131 + 56) != value)
              {
                v143 = (v131 + 64);
              }
            }

            *v143 = v128;
LABEL_313:
            if (!v130)
            {
              while (1)
              {
                v165 = v128;
                v128 = v131;
                if (v165)
                {
                  v166 = v165[9];
                  if (v166)
                  {
                    break;
                  }
                }

                v157 = *v127;
                if (v165 == *v127)
                {
                  goto LABEL_402;
                }

                v144 = *(v128 + 56);
                if (v144 == v165)
                {
                  v144 = *(v128 + 64);
                  v151 = *(v144 + 72);
                  if (v151)
                  {
                    *(v144 + 72) = v151 & 0xFFFFFFFFFFFFFFFELL;
                    v152 = *(v128 + 72) | 1;
                    v153 = *(v144 + 56);
                    *(v128 + 64) = v153;
                    *(v128 + 72) = v152;
                    if (v153)
                    {
                      if (v153[9])
                      {
                        v154 = v128 | 1;
                      }

                      else
                      {
                        v154 = v128;
                      }

                      v153[9] = v154;
                      v152 = *(v128 + 72);
                    }

                    *(v144 + 72) = v152 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                    if ((v152 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v155 = *(v128 + 72);
                      v156 = v155 & 0xFFFFFFFFFFFFFFFELL;
                      if (v128 == *((v155 & 0xFFFFFFFFFFFFFFFELL) + 56))
                      {
                        *(v156 + 56) = v144;
                      }

                      else
                      {
                        *(v156 + 64) = v144;
                        v153 = *(v128 + 64);
                      }
                    }

                    else
                    {
                      *v127 = v144;
                      v155 = *(v128 + 72);
                      v157 = v144;
                    }

                    *(v144 + 56) = v128;
                    if (v155)
                    {
                      v144 |= 1uLL;
                    }

                    *(v128 + 72) = v144;
                    v144 = v153;
                  }

                  v162 = *(v144 + 56);
                  if (v162)
                  {
                    v163 = *(v162 + 72);
                    if (v163)
                    {
                      v164 = *(v144 + 64);
                      if (!v164 || (*(v164 + 72) & 1) == 0)
                      {
                        *(v162 + 72) = v163 & 0xFFFFFFFFFFFFFFFELL;
                        v172 = *(v144 + 72) | 1;
                        *(v144 + 72) = v172;
                        v173 = *(v162 + 64);
                        *(v144 + 56) = v173;
                        if (v173)
                        {
                          if (*(v173 + 72))
                          {
                            v174 = v144 | 1;
                          }

                          else
                          {
                            v174 = v144;
                          }

                          *(v173 + 72) = v174;
                          v172 = *(v144 + 72);
                        }

                        *(v162 + 72) = v172 & 0xFFFFFFFFFFFFFFFELL | *(v162 + 72) & 1;
                        if ((v172 & 0xFFFFFFFFFFFFFFFELL) != 0)
                        {
                          v175 = *(v144 + 72);
                          v176 = v175 & 0xFFFFFFFFFFFFFFFELL;
                          if (v144 == *((v175 & 0xFFFFFFFFFFFFFFFELL) + 56))
                          {
                            *(v176 + 56) = v162;
                          }

                          else
                          {
                            *(v176 + 64) = v162;
                          }
                        }

                        else
                        {
                          *v127 = v162;
                          v175 = *(v144 + 72);
                          v157 = v162;
                        }

                        *(v162 + 64) = v144;
                        if (v175)
                        {
                          v162 |= 1uLL;
                        }

                        *(v144 + 72) = v162;
                        v144 = *(v128 + 64);
                        v164 = *(v144 + 64);
                      }

LABEL_433:
                      *(v144 + 72) = *(v144 + 72) & 0xFFFFFFFFFFFFFFFELL | *(v128 + 72) & 1;
                      *(v128 + 72) &= ~1uLL;
                      if (v164)
                      {
                        *(v164 + 72) &= ~1uLL;
                      }

                      v177 = (v144 + 56);
                      v178 = *(v144 + 56);
                      *(v128 + 64) = v178;
                      if (v178)
                      {
                        goto LABEL_390;
                      }

                      goto LABEL_394;
                    }
                  }

                  v164 = *(v144 + 64);
                  if (v164 && (*(v164 + 72) & 1) != 0)
                  {
                    goto LABEL_433;
                  }
                }

                else
                {
                  v145 = *(v144 + 72);
                  if (v145)
                  {
                    *(v144 + 72) = v145 & 0xFFFFFFFFFFFFFFFELL;
                    v146 = *(v128 + 72) | 1;
                    *(v128 + 72) = v146;
                    v147 = *(v144 + 64);
                    *(v128 + 56) = v147;
                    if (v147)
                    {
                      if (v147[9])
                      {
                        v148 = v128 | 1;
                      }

                      else
                      {
                        v148 = v128;
                      }

                      v147[9] = v148;
                      v146 = *(v128 + 72);
                    }

                    *(v144 + 72) = v146 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                    if ((v146 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v149 = *(v128 + 72);
                      v150 = v149 & 0xFFFFFFFFFFFFFFFELL;
                      if (v128 == *((v149 & 0xFFFFFFFFFFFFFFFELL) + 56))
                      {
                        *(v150 + 56) = v144;
                        v147 = *(v128 + 56);
                      }

                      else
                      {
                        *(v150 + 64) = v144;
                      }
                    }

                    else
                    {
                      *v127 = v144;
                      v149 = *(v128 + 72);
                      v157 = v144;
                    }

                    *(v144 + 64) = v128;
                    if (v149)
                    {
                      v144 |= 1uLL;
                    }

                    *(v128 + 72) = v144;
                    v144 = v147;
                  }

                  v158 = *(v144 + 56);
                  if (v158)
                  {
                    v159 = *(v158 + 72);
                    if (v159)
                    {
                      goto LABEL_360;
                    }
                  }

                  v160 = *(v144 + 64);
                  if (v160)
                  {
                    v161 = *(v160 + 72);
                    if (v161)
                    {
                      if (!v158)
                      {
                        goto LABEL_363;
                      }

                      v159 = *(v158 + 72);
LABEL_360:
                      if ((v159 & 1) == 0)
                      {
                        v160 = *(v144 + 64);
                        if (v160)
                        {
                          v161 = *(v160 + 72);
LABEL_363:
                          *(v160 + 72) = v161 & 0xFFFFFFFFFFFFFFFELL;
                        }

                        v167 = *(v144 + 72) | 1;
                        v168 = *(v160 + 56);
                        *(v144 + 64) = v168;
                        *(v144 + 72) = v167;
                        if (v168)
                        {
                          if (*(v168 + 72))
                          {
                            v169 = v144 | 1;
                          }

                          else
                          {
                            v169 = v144;
                          }

                          *(v168 + 72) = v169;
                          v167 = *(v144 + 72);
                        }

                        *(v160 + 72) = v167 & 0xFFFFFFFFFFFFFFFELL | *(v160 + 72) & 1;
                        if ((v167 & 0xFFFFFFFFFFFFFFFELL) != 0)
                        {
                          v170 = *(v144 + 72);
                          v171 = v170 & 0xFFFFFFFFFFFFFFFELL;
                          if (v144 == *((v170 & 0xFFFFFFFFFFFFFFFELL) + 56))
                          {
                            *(v171 + 56) = v160;
                          }

                          else
                          {
                            *(v171 + 64) = v160;
                          }
                        }

                        else
                        {
                          *v127 = v160;
                          v170 = *(v144 + 72);
                          v157 = v160;
                        }

                        *(v160 + 56) = v144;
                        if (v170)
                        {
                          v160 |= 1uLL;
                        }

                        *(v144 + 72) = v160;
                        v144 = *(v128 + 56);
                        v158 = *(v144 + 56);
                      }

                      *(v144 + 72) = *(v144 + 72) & 0xFFFFFFFFFFFFFFFELL | *(v128 + 72) & 1;
                      *(v128 + 72) &= ~1uLL;
                      if (v158)
                      {
                        *(v158 + 72) &= ~1uLL;
                      }

                      v177 = (v144 + 64);
                      v178 = *(v144 + 64);
                      *(v128 + 56) = v178;
                      if (v178)
                      {
LABEL_390:
                        if (*(v178 + 72))
                        {
                          v179 = v128 | 1;
                        }

                        else
                        {
                          v179 = v128;
                        }

                        *(v178 + 72) = v179;
                      }

LABEL_394:
                      v180 = *(v128 + 72);
                      *(v144 + 72) = v180 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                      if ((v180 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v181 = *(v128 + 72);
                        v182 = v181 & 0xFFFFFFFFFFFFFFFELL;
                        if (v128 == *((v181 & 0xFFFFFFFFFFFFFFFELL) + 56))
                        {
                          *(v182 + 56) = v144;
                        }

                        else
                        {
                          *(v182 + 64) = v144;
                        }
                      }

                      else
                      {
                        *v127 = v144;
                        v181 = *(v128 + 72);
                        v157 = v144;
                      }

                      *v177 = v128;
                      if (v181)
                      {
                        v144 |= 1uLL;
                      }

                      *(v128 + 72) = v144;
                      v165 = v157;
LABEL_402:
                      if (!v165)
                      {
                        goto LABEL_405;
                      }

                      v166 = v165[9];
                      break;
                    }
                  }
                }

                *(v144 + 72) |= 1uLL;
                v131 = *(v128 + 72) & 0xFFFFFFFFFFFFFFFELL;
              }

              v165[9] = v166 & 0xFFFFFFFFFFFFFFFELL;
            }

            goto LABEL_405;
          }
        }

        if (*(v128 + 72))
        {
          v142 = v131 + 1;
        }

        else
        {
          v142 = v131;
        }

        *(v128 + 72) = v142;
        goto LABEL_309;
      }
    }
  }

LABEL_405:
  v183 = *(value + 40) & 0xFFFFFFF6;
  *(value + 40) = v183 | 8;
  if (a3)
  {
    if ((*(*v7 + 220) & 2) != 0)
    {
      *(value + 40) = v183 | 0x48;
    }
  }

  segment_UnlockEntry(value, a2);
}

unint64_t MediaSegmentStartTimeList_RB_PREV(unint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 16) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 8);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

unint64_t sc_GetBackingForMediaStreamFromLaterSegments(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  if (!*(a2 + 121))
  {
    return 0;
  }

  v5 = *(a1 + 168);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 56);
  do
  {
    v11 = 0;
    v12 = a4;
    v13 = a4;
    do
    {
      if (*(v5 + 56) == v10)
      {
        v14 = *(v5 + 24);
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *(v14 + 16);
          }

          while (v14);
          if (*(v15 + 120) > v13)
          {
            v12 = v13;
            v11 = v5;
            v13 = *(v15 + 120);
          }
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5);
    if (!v11)
    {
      break;
    }

    while (1)
    {
      v16 = *(v11 + 24);
      if (!v16)
      {
        break;
      }

      do
      {
        v17 = v16;
        v16 = *(v16 + 16);
      }

      while (v16);
      if (v17 == v9)
      {
        return v8;
      }

      if (*(v17 + 120) < v12)
      {
        v9 = v17;
        break;
      }

      v18 = *(a1 + 184);
      segment_EvictEntry(v17, 0, 1);
      v8 += v18 - *(a1 + 184);
      if (v8 >= a3)
      {
        return v8;
      }
    }

    v5 = *(a1 + 168);
  }

  while (v5);
  return v8;
}

uint64_t figMemoryDemandIssueSetupOnce(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  gFigMemoryDemandIssueMutex = result;
  return result;
}

unint64_t stream_GetFirstSegmentOfContiguousRangeContainingSegment(unint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 160) & 2) == 0)
  {
    for (i = MediaSegmentStartTimeList_RB_PREV(a1); i; v1 = v3)
    {
      if ((*(i + 160) & 1) == 0)
      {
        break;
      }

      if ((*(v1 + 160) & 2) != 0)
      {
        break;
      }

      v3 = i;
      i = MediaSegmentStartTimeList_RB_PREV(i);
    }
  }

  return v1;
}

uint64_t sc_EnsurePersistentStoreAtURL(uint64_t a1, const __CFURL *a2, int a3)
{
  if (*(a1 + 280))
  {
    sc_EnsurePersistentStoreAtURL_cold_1(&v17);
    return v17;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_13:
    sc_EnsurePersistentStoreAtURL_cold_2(&v18);
    return v18;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"Playlist", @".m3u8");
  CFDictionarySetValue(v8, @"ContentCryptKey", @".key");
  CFDictionarySetValue(v8, @"AssetList", @".json");
  v9 = FigGetAllocatorForMedia();
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    CFRelease(v8);
    goto LABEL_13;
  }

  v11 = v10;
  CFDictionarySetValue(v10, @"HLSStoreCategoryToExtensionMap", v8);
  CFDictionarySetValue(v11, @"HLSStoreDoNotBlockOnLock", *MEMORY[0x1E695E4C0]);
  CFRelease(v8);
  v12 = FigGetAllocatorForMedia();
  v13 = FigHLSPersistentStoreCreateAtURL(v12, a2, v11, a3, (a1 + 280));
  if (v13 || (v14 = *(a1 + 288), *(a1 + 288) = v14 | 1, a3 == 1) && (*(a1 + 288) = v14 | 3, v13 = sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(a1), v13))
  {
    v15 = v13;
  }

  else
  {
    FigAssetDownloadStorageManagementExcludeURLFromBackup(a2);
    v15 = 0;
  }

  CFRelease(v11);
  return v15;
}

uint64_t sc_CreateDiskCacheBundle(uint64_t a1, CFURLRef url, CFURLRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, buffer[0], buffer[2]);
    return v13;
  }

  __strlcat_chk();
  v5 = mkdtemp(buffer);
  v6 = __error();
  if (!v5)
  {
    sc_CreateDiskCacheBundle_cold_2(v6, &v15 + 1);
    return HIDWORD(v15);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = strlen(buffer);
  v9 = CFURLCreateFromFileSystemRepresentation(AllocatorForMedia, buffer, v8, 1u);
  v10 = FigDirectoryEnableDirStatsTracking();
  if (v10)
  {
    v11 = v10;
    if (v10 != -17916)
    {
      if (!v9)
      {
        return v11;
      }

LABEL_11:
      CFRelease(v9);
      return v11;
    }
  }

  if (!v9)
  {
    sc_CreateDiskCacheBundle_cold_1(&v15 + 1);
    return HIDWORD(v15);
  }

  v12 = sc_EnsurePersistentStoreAtURL(a1, v9, 1);
  v11 = v12;
  if (!a3 || v12)
  {
    goto LABEL_11;
  }

  *a3 = v9;
  return v11;
}

uint64_t FigTTMLDocumentWriterCreateProfileInserter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateProfileInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateProfileInserter_cold_1(&v8);
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

void figTTMLDocumentWriterProfileInserter_Finalize()
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

uint64_t figTTMLDocumentWriterProfileInserter_StartElement(uint64_t a1, int a2)
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

uint64_t figTTMLDocumentWriterProfileInserter_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterProfileInserter_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  if (FigCFEqual() && (FigCFEqual() || FigCFEqual()))
  {
    *(DerivedStorage + 25) = 1;
  }

  if (FigCFEqual())
  {
    *(DerivedStorage + 24) = 1;
  }

  return 0;
}

uint64_t figTTMLDocumentWriterProfileInserter_Flush()
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

__n128 OUTLINED_FUNCTION_2_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, unint64_t a27)
{
  result = a26;
  v27[1].n128_u64[0] = a27;
  *v27 = a26;
  return result;
}

void FigCaptionRendereriTTRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendereriTTRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_44:
    FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_44;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_44;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendereriTTRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_41:
        v20 = 0;
        goto LABEL_42;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v37 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_48;
        }

        v29 = v28(ValueAtIndex, &v37);
        if (v29)
        {
          v16 = v29;
          goto LABEL_48;
        }

        v30 = v37;
        if (v37 && (!strcmp(v37, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(__s1, "FigCaptionRendereriTTRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_42;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_41;
        }
      }

      v16 = 4294954508;
LABEL_48:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, theString2, v37);
      return v16;
    }

LABEL_42:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
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

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
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

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
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

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
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

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v4;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &v20);
      }
    }
  }

  v8 = *(a2 + 296);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    MidX = CGRectGetMidX(v20);
    MidY = CGRectGetMidY(v20);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v12 = CMBaseObjectGetProtocolVTable();
    if (v12)
    {
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v13 + 72);
        if (v14)
        {
          v14(Value, MidX, MidY);
        }
      }
    }

    size = v20.size;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 88);
        if (v18)
        {
          v18(Value, size.width, size.height);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v99 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(a1, &v99);
        if (v99)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 16);
          v10 = *(v8 + 20) * 0.0533;
          v11 = *(v8 + 40);
          v12 = *(v8 + 24);
          if (*(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10 >= 0.0)
          {
            v13 = *(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *v8;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 80);
              if (v17)
              {
                LOBYTE(v101) = 1;
                *(&v101 + 1) = 0;
                DWORD1(v101) = 0;
                *(&v101 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v102.width) = 1;
                *(&v102.width + 1) = 0;
                HIDWORD(v102.width) = 0;
                v102.height = v13;
                LOBYTE(v103) = 1;
                *(&v103 + 1) = 0;
                DWORD1(v103) = 0;
                *(&v103 + 1) = v9 / 100.0;
                LOBYTE(v104) = 1;
                *(&v104 + 1) = 0;
                DWORD1(v104) = 0;
                *(&v104 + 1) = v10;
                v17(v14, &v101);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v101 = FCRRectNull;
          v102 = *&byte_196E76830;
          v103 = xmmword_196E76840;
          v104 = *&byte_196E76850;
          v93 = *(MEMORY[0x1E695F050] + 16);
          v94 = *MEMORY[0x1E695F050];
          v100.origin = *MEMORY[0x1E695F050];
          v100.size = v93;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v19 = CMBaseObjectGetProtocolVTable();
          if (v19)
          {
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = *(v20 + 88);
              if (v21)
              {
                v21(a1, &v101);
              }
            }
          }

          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 72);
              if (v24)
              {
                v24(a1, &v100);
              }
            }
          }

          v25 = *(&v103 + 1);
          if (*(&v103 + 1) != -1.0)
          {
            v75 = v100.origin.x + *(&v101 + 1);
            if (v101)
            {
              v75 = v100.origin.x + *(&v101 + 1) * v100.size.width;
            }

            v76 = v100.origin.y + v102.height;
            if (LOBYTE(v102.width))
            {
              v76 = v100.origin.y + v102.height * v100.size.height;
            }

            if (v103)
            {
              v25 = *(&v103 + 1) * v100.size.width;
            }

            v77 = *(&v104 + 1);
            if (v104)
            {
              v77 = v100.size.height * *(&v104 + 1);
            }

            v105 = CGRectIntegral(*(&v25 - 2));
            x = v105.origin.x;
            y = v105.origin.y;
            width = v105.size.width;
            height = v105.size.height;
            v82 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v83 = CMBaseObjectGetProtocolVTable();
            if (v83)
            {
              v84 = *(v83 + 16);
              if (v84)
              {
                v85 = *(v84 + 96);
                if (v85)
                {
                  v85(v82, x, y, width, height);
                }
              }
            }
          }

          theArray = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v26 = CMBaseObjectGetProtocolVTable();
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 24);
              if (v28)
              {
                v28(a1, &theArray);
              }
            }
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v30 = *MEMORY[0x1E695EFF8];
            v31 = *(MEMORY[0x1E695EFF8] + 8);
            v32 = *MEMORY[0x1E69607B0];
            v33 = *MEMORY[0x1E69607A0];
            v34 = *MEMORY[0x1E6960780];
            v35 = *MEMORY[0x1E6960790];
            v36 = Count + 1;
            v91 = *MEMORY[0x1E6960798];
            cf2 = *MEMORY[0x1E6960788];
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v36 - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v38 = CMBaseObjectGetProtocolVTable();
              if (!v38 || (v39 = *(v38 + 16)) == 0 || (v40 = *(v39 + 8)) == 0 || v40(ValueAtIndex, &__s1))
              {
                FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                goto LABEL_105;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v96 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v41 = CMBaseObjectGetProtocolVTable();
                if (!v41 || (v42 = *(v41 + 16)) == 0 || (v43 = *(v42 + 48)) == 0 || v43(ValueAtIndex, &v96))
                {
                  FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  goto LABEL_105;
                }

                if (v96 == 3)
                {
                  break;
                }
              }

LABEL_87:
              if (--v36 <= 1)
              {
                goto LABEL_105;
              }
            }

            v101 = v94;
            v102 = v93;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v44 = CMBaseObjectGetProtocolVTable();
            if (!v44 || (v45 = *(v44 + 16)) == 0 || (v46 = *(v45 + 104)) == 0 || v46(ValueAtIndex, &v101))
            {
              FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              goto LABEL_105;
            }

            v100.origin = v94;
            v100.size = v93;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v47 = CMBaseObjectGetProtocolVTable();
            if (!v47 || (v48 = *(v47 + 16)) == 0 || (v49 = *(v48 + 72)) == 0 || v49(ValueAtIndex, &v100))
            {
              FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
              goto LABEL_105;
            }

            v50 = *(DerivedStorage + 56);
            if (v50)
            {
              MinX = v30;
              MinY = v31;
              if (v50 != 2)
              {
                goto LABEL_65;
              }

              v53 = *(DerivedStorage + 64);
              v54 = v100;
              if (v53 == 1)
              {
                MinX = CGRectGetMinX(v54);
              }

              else if (v53 == 3)
              {
                MinX = CGRectGetMaxX(v54) - v102.width;
              }

              else
              {
                MinX = CGRectGetMidX(v54) + v102.width * -0.5;
              }

              v57 = *(DerivedStorage + 60);
            }

            else
            {
              v55 = *(DerivedStorage + 60);
              v56 = v100;
              if (v55 == 1)
              {
                MinX = CGRectGetMinX(v56);
              }

              else if (v55 == 3)
              {
                MinX = CGRectGetMaxX(v56) - v102.width;
              }

              else
              {
                MinX = CGRectGetMidX(v56) + v102.width * -0.5;
              }

              v57 = *(DerivedStorage + 64);
            }

            v58 = v100;
            if (v57 == 1)
            {
              MinY = CGRectGetMaxY(v58) - v102.height;
            }

            else if (v57 == 3)
            {
              MinY = CGRectGetMinY(v58);
            }

            else
            {
              MinY = CGRectGetMidY(v58) + v102.height * -0.5;
            }

LABEL_65:
            theDict = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v59 = CMBaseObjectGetProtocolVTable();
            if (v59)
            {
              v60 = *(v59 + 16);
              if (v60)
              {
                v61 = *(v60 + 16);
                if (v61)
                {
                  v61(ValueAtIndex, &theDict);
                }
              }
            }

            if (!theDict)
            {
              goto LABEL_79;
            }

            Value = CFDictionaryGetValue(theDict, v32);
            if (!Value)
            {
              goto LABEL_79;
            }

            v63 = Value;
            if (CFEqual(Value, v33))
            {
              goto LABEL_72;
            }

            if (CFEqual(v63, v34))
            {
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
LABEL_75:
              MinX = CGRectGetMaxX(*&v64) - v102.width;
              goto LABEL_79;
            }

            if (CFEqual(v63, v35))
            {
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
            }

            else
            {
              if (CFEqual(v63, cf2))
              {
LABEL_72:
                MinX = CGRectGetMinX(v100);
                goto LABEL_79;
              }

              v74 = CFEqual(v63, v91);
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
              if (v74)
              {
                goto LABEL_75;
              }
            }

            MinX = CGRectGetMidX(*&v64) + v102.width * -0.5;
LABEL_79:
            FigCaptionRendererNodeProtocolGetProtocolID();
            v68 = CMBaseObjectGetProtocolVTable();
            if (v68)
            {
              v69 = *(v68 + 16);
              if (v69)
              {
                v70 = *(v69 + 128);
                if (v70)
                {
                  v70(ValueAtIndex, MinX, MinY);
                }
              }
            }

            FigCaptionRendererNodeProtocolGetProtocolID();
            v71 = CMBaseObjectGetProtocolVTable();
            if (v71)
            {
              v72 = *(v71 + 16);
              if (v72)
              {
                v73 = *(v72 + 232);
                if (v73)
                {
                  v73(ValueAtIndex, 1);
                }
              }
            }

            goto LABEL_87;
          }
        }
      }
    }
  }

LABEL_105:
  v86 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v87 = CMBaseObjectGetProtocolVTable();
  if (!v87)
  {
    return 4294954508;
  }

  v88 = *(v87 + 16);
  if (!v88)
  {
    return 4294954508;
  }

  v89 = *(v88 + 288);
  if (v89)
  {
    return v89(v86, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
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

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
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

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendereriTTRegionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigPictureTileCursorServiceBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureTileCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureTileCursorServiceGetClassID_sRegisterFigPictureTileCursorServiceBaseTypeOnce, RegisterFigPictureTileCursorServiceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigPictureTileCursorBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureTileCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureTileCursorGetClassID_sRegisterFigPictureTileCursorBaseTypeOnce, RegisterFigPictureTileCursorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVideoQueueRemoteCallbackClient_NotificationIsPending(mach_port_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18081;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
}

uint64_t figvideoqueuecallback_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 18081)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      *(a2 + 32) = FigVideoQueueRemoteCallbackServer_NotificationIsPending();
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t FigVideoQueueRemoteClient_Create(mach_port_t a1, int a2, uint64_t a3, int a4, char *src, uint64_t a6, int a7, int *a8, void *a9, void *a10, _DWORD *a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  memset(v30, 0, 432);
  v25 = 0x13000000000000;
  v28 = 0;
  memset(&name, 0, sizeof(name));
  v23 = 2;
  v24 = a2;
  v26 = a6;
  LODWORD(v27) = 16777472;
  HIDWORD(v27) = a7;
  v28 = *MEMORY[0x1E69E99E0];
  *&v29 = a3;
  DWORD2(v29) = a4;
  if (MEMORY[0x1EEE9AC40])
  {
    v14 = mig_strncpy_zerofill(v30 + 4, src, 512);
  }

  else
  {
    v14 = mig_strncpy(v30 + 4, src, 512);
  }

  HIDWORD(v29) = 0;
  LODWORD(v30[0]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  *(v30 + v15 + 4) = a7;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x42B800000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v18 = mach_msg(&name, 3162387, v15 + 88, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v19 = v18;
  if ((v18 - 268435458) > 0xE || ((1 << (v18 - 2)) & 0x4003) == 0)
  {
    if (!v18)
    {
      if (name.msgh_id == 71)
      {
        v19 = 4294966988;
      }

      else if (name.msgh_id == 17180)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v19 = 4294966996;
            if (v25)
            {
              if (name.msgh_remote_port)
              {
                v19 = 4294966996;
              }

              else
              {
                v19 = v25;
              }
            }
          }

          else
          {
            v19 = 4294966996;
          }

          goto LABEL_30;
        }

        v19 = 4294966996;
        if (v23 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v25) << 16 == 1114112)
        {
          v19 = 0;
          *a8 = v24;
          v20 = v28;
          *a9 = v27;
          *a10 = v20;
          *a11 = v29;
          return v19;
        }
      }

      else
      {
        v19 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v19;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v19 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v19;
}

uint64_t FigVideoQueueRemoteClient_Destroy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v11 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = v3;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x42B900000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v5, *MEMORY[0x1E695FF48], 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 17181)
      {
        v7 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v7 = *&msg[32];
          if (!*&msg[32])
          {
            return v7;
          }
        }
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v7;
}