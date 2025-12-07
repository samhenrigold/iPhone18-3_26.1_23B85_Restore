void mutableComposition_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = *(DerivedStorage + 8);
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (CFEqual(a2, @"MutableComposition_AssetCreationFlags"))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
          *(*(*(v7 + 8) + 160) + 16) = valuePtr;
        }
      }

      goto LABEL_50;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationOptions"))
    {
      if (!a3)
      {
        v37 = *(*(v7 + 8) + 160);
        v15 = *(v37 + 24);
        *(v37 + 24) = 0;
LABEL_48:
        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_50;
      }

      v13 = CFGetTypeID(a3);
      if (v13 == CFDictionaryGetTypeID())
      {
        v14 = *(*(v7 + 8) + 160);
        v15 = *(v14 + 24);
        *(v14 + 24) = a3;
        CFRetain(a3);
        goto LABEL_48;
      }

LABEL_50:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return;
    }

    if (!CFEqual(a2, @"MutableComposition_TrackReferenceDictionary"))
    {
      if (CFEqual(a2, @"MutableComposition_Metadata"))
      {
        if (!a3 || (v38 = CFGetTypeID(a3), v38 == CFArrayGetTypeID()))
        {
          mutableComposition_setMetadata(v8, a3, Mutable);
        }

        else
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", 6689, v3);
        }
      }

      goto LABEL_50;
    }

    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 != CFDictionaryGetTypeID())
      {
        v42 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 4294954516, "<<<< CompositeReader >>>>", 6682, v3);
        goto LABEL_50;
      }

      Copy = CFDictionaryCreateCopy(v9, a3);
      FigSimpleMutexLock();
      if (Copy)
      {
        v18 = CFGetTypeID(Copy);
        if (v18 != CFDictionaryGetTypeID())
        {
          v20 = 0;
          v21 = 0;
          v36 = 0;
          goto LABEL_68;
        }

        Count = CFDictionaryGetCount(Copy);
        v20 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        if (v20)
        {
          v21 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
          if (v21)
          {
            CFDictionaryGetKeysAndValues(Copy, v20, v21);
            if (Count < 1)
            {
              v36 = 1;
            }

            else
            {
              v22 = 0;
              v43 = Count;
              v44 = v20;
              while (1)
              {
                v23 = v20[v22];
                if (!v23)
                {
                  break;
                }

                v24 = v21[v22];
                v25 = CFGetTypeID(v23);
                if (v25 != CFStringGetTypeID() || v24 == 0)
                {
                  break;
                }

                v27 = CFGetTypeID(v24);
                if (v27 != CFArrayGetTypeID())
                {
                  break;
                }

                if (!GetTrackReferenceOSTypeFromKeyString(v23))
                {
                  break;
                }

                v28 = CFArrayGetCount(v24);
                v29 = v28;
                if (v28)
                {
                  break;
                }

                if (v28 >= 1)
                {
                  v30 = 0;
                  do
                  {
                    LODWORD(valuePtr) = 0;
                    v46 = 0;
                    if (!FigCFArrayGetInt32AtIndex())
                    {
                      goto LABEL_65;
                    }

                    if (!FigCFArrayGetInt32AtIndex())
                    {
                      goto LABEL_65;
                    }

                    v31 = v8[2];
                    if (v31 < 1)
                    {
                      goto LABEL_65;
                    }

                    v32 = v8[4];
                    v33 = v8[2];
                    while (*(v32 + 4) != valuePtr)
                    {
                      v32 += 168;
                      if (!--v33)
                      {
                        v32 = 0;
                        break;
                      }
                    }

                    v34 = (v8[4] + 4);
                    while (1)
                    {
                      v35 = *v34;
                      v34 += 42;
                      if (v35 == v46)
                      {
                        break;
                      }

                      if (!--v31)
                      {
                        goto LABEL_65;
                      }
                    }

                    if (!v32)
                    {
                      goto LABEL_65;
                    }

                    v30 += 2;
                  }

                  while (v30 < v29);
                }

                ++v22;
                v36 = 1;
                v20 = v44;
                if (v22 == v43)
                {
                  goto LABEL_68;
                }
              }

LABEL_65:
              v36 = 0;
              v20 = v44;
            }

LABEL_68:
            free(v20);
            free(v21);
            if ((v36 & 1) == 0)
            {
              FigSimpleMutexUnlock();
LABEL_72:
              CFRelease(Copy);
LABEL_73:
              CFDictionarySetValue(Mutable, @"TrackReferenceDictionary", *MEMORY[0x1E695E4D0]);
              goto LABEL_50;
            }

            v40 = v8[6];
            v8[6] = Copy;
            CFRetain(Copy);
            v41 = 0;
            if (!v40)
            {
LABEL_60:
              FigSimpleMutexUnlock();
              if (v41)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

LABEL_59:
            CFRelease(v40);
            goto LABEL_60;
          }
        }

        else
        {
          v21 = 0;
        }

        v36 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      FigSimpleMutexLock();
    }

    Copy = 0;
    v40 = v8[6];
    v8[6] = 0;
    v41 = 1;
    if (!v40)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v12 = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954516, "<<<< CompositeReader >>>>", 6649, v3);
}

void compositionTable_releaseAndClear(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1 && !FigAtomicDecrement32())
  {
    if (*(v1 + 8))
    {
      FigSimpleMutexDestroy();
      *(v1 + 8) = 0;
    }

    if (*(v1 + 72))
    {
      FigSimpleMutexDestroy();
      *(v1 + 72) = 0;
    }

    compositionTable_releaseAndClearMetadata(v1);
    v2 = *(v1 + 32);
    if (v2)
    {
      if (*(v1 + 16) >= 1)
      {
        v3 = 0;
        do
        {
          compositionTableTrack_releaseAndClear(v1, v2);
          ++v3;
          v2 += 21;
        }

        while (v3 < *(v1 + 16));
        v2 = *(v1 + 32);
      }

      free(v2);
      *(v1 + 32) = 0;
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      CFBagRemoveAllValues(v4);
      v5 = *(v1 + 40);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 40) = 0;
      }
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 48) = 0;
    }

    if (*(v1 + 56))
    {
      FigSimpleMutexDestroy();
      *(v1 + 56) = 0;
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      CFDictionaryRemoveAllValues(v7);
      v8 = *(v1 + 64);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 64) = 0;
      }
    }

    if (*(v1 + 120))
    {
      FigSimpleMutexDestroy();
      *(v1 + 120) = 0;
    }

    v9 = *(v1 + 136);
    if (v9)
    {
      v10 = *(v1 + 144);
      if (v10 >= 2)
      {
        v11 = 1;
        v12 = 16;
        do
        {
          if (*&v9[v12])
          {
            CFRelease(*&v9[v12]);
            v9 = *(v1 + 136);
            v10 = *(v1 + 144);
            *&v9[v12] = 0;
          }

          ++v11;
          v12 += 16;
        }

        while (v11 < v10);
      }

      free(v9);
      *(v1 + 136) = 0;
    }

    v13 = *(v1 + 152);
    if (v13)
    {
      CFDictionaryRemoveAllValues(v13);
      v14 = *(v1 + 152);
      if (v14)
      {
        CFRelease(v14);
        *(v1 + 152) = 0;
      }
    }

    compositionSharedCache_releaseAndClear((v1 + 160));

    free(v1);
  }
}

void compositionTable_releaseAndClearMetadata(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
    a1[11] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
    a1[12] = 0;
  }

  v5 = a1[13];
  if (v5)
  {
    CFRelease(v5);
    a1[13] = 0;
  }

  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
    a1[14] = 0;
  }
}

void compositionTableTrack_releaseAndClear(uint64_t a1, void *a2)
{
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(a2[2], a2[1], *(a1 + 40));
  v3 = a2[2];
  if (v3)
  {
    a2[2] = 0;
    free(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
    a2[4] = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    CFRelease(v5);
    a2[5] = 0;
  }

  v6 = a2[6];
  if (v6)
  {
    CFRelease(v6);
    a2[6] = 0;
  }

  v7 = a2[7];
  if (v7)
  {
    CFRelease(v7);
    a2[7] = 0;
  }

  v8 = a2[8];
  if (v8)
  {
    CFRelease(v8);
    a2[8] = 0;
  }

  compositionTableTrack_releaseAndClearMetadata(a2);
  v9 = a2[15];
  if (v9)
  {
    CFRelease(v9);
    a2[15] = 0;
  }

  v10 = a2[16];
  if (v10)
  {
    CFRelease(v10);
    a2[16] = 0;
  }

  v11 = a2[17];
  if (v11)
  {
    CFRelease(v11);
    a2[17] = 0;
  }

  v12 = a2[18];
  if (v12)
  {
    CFRelease(v12);
    a2[18] = 0;
  }

  v13 = a2[19];
  if (v13)
  {
    CFRelease(v13);
    a2[19] = 0;
  }

  v14 = a2[13];
  if (v14)
  {
    CFRelease(v14);
    a2[13] = 0;
  }

  v15 = a2[14];
  if (v15)
  {
    CFRelease(v15);
    a2[14] = 0;
  }
}

void compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(uint64_t a1, uint64_t a2, CFMutableBagRef theBag)
{
  if (a1)
  {
    v3 = a2;
    if (a2 >= 1)
    {
      v5 = (a1 + 96);
      do
      {
        if ((*(v5 - 21) & 0x1D) == 1)
        {
          if (theBag && *v5)
          {
            CFBagRemoveValue(theBag, *v5);
          }

          if (*v5)
          {
            CFRelease(*v5);
            *v5 = 0;
          }
        }

        v5 = (v5 + 108);
        --v3;
      }

      while (v3);
    }
  }
}

void compositionTableTrack_releaseAndClearMetadata(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
    a1[11] = 0;
  }

  v5 = a1[12];
  if (v5)
  {
    CFRelease(v5);
    a1[12] = 0;
  }
}

__CFString *compositionTableTrack_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(a1 + 4);
  v28 = bswap32(*a1);
  CFStringAppendFormat(Mutable, 0, @"{ trackID %d, mediaType %.4s, ", v3, &v28);
  CFStringAppendFormat(Mutable, 0, @"editCount %d", *(a1 + 8));
  if (*(a1 + 8) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 16) + v4;
      v7 = *(v6 + 48);
      if ((*(v6 + 12) & 0x1D) == 1)
      {
        time.epoch = *(v6 + 64);
        *&time.value = v7;
        Seconds = CMTimeGetSeconds(&time);
        v9 = *(a1 + 16) + v4;
        v10 = *(v9 + 72);
        time.epoch = *(v9 + 88);
        *&time.value = v10;
        v11 = CMTimeGetSeconds(&time);
        v12 = (*(a1 + 16) + v4);
        v13 = *v12;
        time.epoch = *(v12 + 2);
        *&time.value = v13;
        v14 = CMTimeGetSeconds(&time);
        v15 = *(a1 + 16) + v4;
        v16 = *(v15 + 24);
        time.epoch = *(v15 + 40);
        *&time.value = v16;
        v17 = CMTimeGetSeconds(&time);
        CFStringAppendFormat(Mutable, 0, @", [%1.3f,+%1.3f] -> [%1.3f,+%1.3f] of asset %@ trackID %d", *&Seconds, *&v11, *&v14, *&v17, *(*(a1 + 16) + v4 + 96), *(*(a1 + 16) + v4 + 104));
      }

      else
      {
        time.epoch = *(v6 + 64);
        *&time.value = v7;
        v18 = CMTimeGetSeconds(&time);
        v19 = *(a1 + 16) + v4;
        v20 = *(v19 + 72);
        time.epoch = *(v19 + 88);
        *&time.value = v20;
        v22 = CMTimeGetSeconds(&time);
        CFStringAppendFormat(Mutable, 0, @", [%1.3f,+%1.3f] -> empty", *&v18, *&v22, v23, v24, v25, v26);
      }

      ++v5;
      v4 += 108;
    }

    while (v5 < *(a1 + 8));
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

uint64_t compositionTable_createAvailableMetadataReaderPropertiesArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a2 + 80);
    if (v7)
    {
      if (CFDictionaryGetValue(v7, @"com.apple.itunes"))
      {
        CFArrayAppendValue(v6, @"iTunesMetadataReader");
      }

      v8 = *(a2 + 80);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"com.apple.quicktime.mdta"))
        {
          CFArrayAppendValue(v6, @"QuickTimeMetadataReader");
        }

        v9 = *(a2 + 80);
        if (v9)
        {
          if (CFDictionaryGetValue(v9, @"com.apple.quicktime.udta"))
          {
            CFArrayAppendValue(v6, @"QuickTimeUserDataReader");
          }

          v10 = *(a2 + 80);
          if (v10 && CFDictionaryGetValue(v10, @"org.mp4ra"))
          {
            CFArrayAppendValue(v6, @"ISOUserDataReader");
          }
        }
      }
    }

    if (!CFArrayGetCount(v6))
    {
      CFRelease(v6);
      v6 = 0;
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    compositionTable_createAvailableMetadataReaderPropertiesArray_cold_1(&v12);
    return v12;
  }

  return result;
}

uint64_t mutableComposition_CopyFormatReader(const void *a1, int a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CFGetAllocator(a1);
  if (a2 || !*DerivedStorage)
  {
    FigFormatReaderGetClassID();
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      return v9;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      compositionTable_createCopy(*MEMORY[0x1E695E4B0], *(DerivedStorage + 8), v10);
    }

    else
    {
      *v10 = *(DerivedStorage + 8);
      FigAtomicIncrement32();
      *DerivedStorage = CFRetain(0);
    }

    *(v10 + 8) = FigSimpleMutexCreate();
    *(v10 + 16) = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
    *(v10 + 24) = a2 == 0;
    v11 = 0;
  }

  else
  {
    v11 = CFRetain(*DerivedStorage);
  }

  v9 = 0;
  *a4 = v11;
  return v9;
}

uint64_t mutableComposition_AddTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = a4;
  v7 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage[1];
  FigSimpleMutexLock();
  compositionTable_addTrack(v10, v7, v6, a5, 0);
  ++*(v10 + 4);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
  }

  return 0;
}

uint64_t mutableComposition_DeleteTrack(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage[1];
  FigSimpleMutexLock();
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17[1]);
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v7 = *(v5 + 32);
    v8 = -v6;
    v9 = 1;
    while (*(v7 + 4) != a2)
    {
      v7 += 168;
      ++v9;
      if (v8 + v9 == 1)
      {
        goto LABEL_5;
      }
    }

    if (*(v5 + 48))
    {
      mutableComposition_DeleteTrack_cold_1((v5 + 48), &v16, v17, v7);
    }

    compositionTableTrack_releaseAndClear(v5, v7);
    v13 = *(v5 + 16);
    if (v13 > v9)
    {
      memmove(v7, (v7 + 168), 168 * (v13 - v9));
      v13 = *(v5 + 16);
    }

    v11 = 0;
    *(v5 + 16) = v13 - 1;
    *(v5 + 4) += 2;
    v12 = 1;
  }

  FigSimpleMutexUnlock();
  compositionTable_discardUnusedAssets(v5);
  if (v12 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
  }

  return v11;
}

uint64_t mutableComposition_CopyTrackEditList(uint64_t a1, int a2, void *a3, uint64_t a4, CFTypeRef *a5)
{
  v10 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v11 = *(v10 + 16);
  if (v11 >= 1)
  {
    v12 = *(v10 + 32) + 8;
    while (*(v12 - 4) != a2)
    {
      v12 += 168;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      *a3 = *v12;
    }

    if (a5)
    {
      v16 = *v12;
      if (*v12 > a4)
      {
        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", 7277, v5);
        goto LABEL_6;
      }

      if (v16 >= 1)
      {
        memcpy(a5, *(v12 + 8), 108 * v16);
        v16 = *v12;
        if (*v12 >= 1)
        {
          v18 = 0;
          v19 = a5 + 12;
          do
          {
            if (*v19)
            {
              CFRetain(*v19);
              v16 = *v12;
            }

            ++v18;
            v19 = (v19 + 108);
          }

          while (v18 < v16);
        }
      }

      bzero(a5 + 108 * v16, 108 * (a4 - v16));
    }

    v15 = 0;
    goto LABEL_20;
  }

LABEL_5:
  v13 = fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954453, "<<<< CompositeReader >>>>", 7270, v5);
LABEL_6:
  v15 = v14;
LABEL_20:
  FigSimpleMutexUnlock();
  return v15;
}

double mutableComposition_AddFormatReaderForURL(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v7 = *(DerivedStorage + 8);
      if (CMBaseObjectGetVTable() != &kComposite_FormatReader_VTable)
      {
        v8 = *(v7 + 160);
        value = 0;
        FigSimpleMutexLock();
        if (CFDictionaryContainsKey(*(v8 + 40), a2) || (v13 = CFGetAllocator(a3), FigAssetCreateWithFormatReader(v13, a3, 0, 0, &value), !value))
        {
          FigSimpleMutexUnlock();
        }

        else
        {
          CFDictionarySetValue(*(v8 + 40), a2, value);
          v14 = value;
          FigSimpleMutexUnlock();
          if (v14)
          {
            FigSimpleMutexLock();
            CFDictionarySetValue(*(v7 + 64), a2, v14);
            FigSimpleMutexUnlock();
            CFRelease(v14);
          }
        }

        return result;
      }

      emitter = fig_log_get_emitter();
      v11 = v3;
      v12 = 6840;
    }

    else
    {
      emitter = fig_log_get_emitter();
      v11 = v3;
      v12 = 6836;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 6833;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", v12, v11);
}

uint64_t mutableComposition_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, void *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 >= 1)
  {
    v11 = *(v9 + 32) + 104;
    while (*(v11 - 100) != a2)
    {
      v11 += 168;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    if (CFEqual(a3, @"MutableCompositionTrack_NaturalTimeScale") || CFEqual(a3, @"TrackTimescale"))
    {
      ReconstitutedMetadataProperty = *(v11 - 72);
      if (!ReconstitutedMetadataProperty)
      {
LABEL_10:
        v12 = 0;
        *a5 = ReconstitutedMetadataProperty;
        goto LABEL_11;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_LanguageCode") || CFEqual(a3, @"TrackLanguageCode"))
    {
      ReconstitutedMetadataProperty = *(v11 - 64);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID") || CFEqual(a3, @"AlternateGroupID") || CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID"))
    {
      ReconstitutedMetadataProperty = *v11;
      if (!*v11)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_ExtendedLanguageTag") || CFEqual(a3, @"ExtendedLanguageTagString"))
    {
      ReconstitutedMetadataProperty = *(v11 - 56);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_PreferredTransform") || CFEqual(a3, @"TrackMatrix"))
    {
      ReconstitutedMetadataProperty = *(v11 - 48);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_Volume"))
    {
      ReconstitutedMetadataProperty = *(v11 - 40);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (CFEqual(a3, @"MutableCompositionTrack_Metadata"))
      {
        ReconstitutedMetadataProperty = mutableComposition_CreateReconstitutedMetadataProperty(*(v11 - 32), a4);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"MutableCompositionTrack_Enabled") || CFEqual(a3, @"TrackEnabled"))
      {
        v15 = MEMORY[0x1E695E4D0];
        if (!*(v11 + 56))
        {
          v15 = MEMORY[0x1E695E4C0];
        }

        ReconstitutedMetadataProperty = *v15;
        if (!*v15)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_FormatDescriptionReplacementTable"))
      {
        ReconstitutedMetadataProperty = *(v11 + 8);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_Layer"))
      {
        ReconstitutedMetadataProperty = *(v11 + 16);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_CleanApertureDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 24);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_ProductionApertureDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 32);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_EncodedPixelsDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 40);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!CFEqual(a3, @"MutableCompositionTrack_LoadSettings"))
        {
          v12 = 4294954512;
          goto LABEL_11;
        }

        ReconstitutedMetadataProperty = *(v11 + 48);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }
    }

    ReconstitutedMetadataProperty = CFRetain(ReconstitutedMetadataProperty);
    goto LABEL_10;
  }

LABEL_5:
  v12 = 4294954516;
LABEL_11:
  FigSimpleMutexUnlock();
  return v12;
}

void mutableComposition_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFString *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 8);
  cf = 0;
  if (a3)
  {
    v10 = DerivedStorage;
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigSimpleMutexLock();
    v13 = *(v9 + 16);
    if (v13 < 1)
    {
LABEL_6:
      v15 = 0;
      goto LABEL_39;
    }

    v14 = *(v9 + 32);
    while (*(v14 + 4) != a2)
    {
      v14 += 168;
      if (!--v13)
      {
        goto LABEL_6;
      }
    }

    if (CFEqual(a3, @"MutableCompositionTrack_NaturalTimeScale") || CFEqual(a3, @"TrackTimescale"))
    {
      if (!a4)
      {
        v18 = *(v14 + 32);
        *(v14 + 32) = 0;
LABEL_16:
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_33;
      }

      v17 = CFGetTypeID(a4);
      if (v17 == CFNumberGetTypeID())
      {
        v18 = *(v14 + 32);
        *(v14 + 32) = a4;
        CFRetain(a4);
        goto LABEL_16;
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", 7531, v4);
LABEL_33:
      FigSimpleMutexUnlock();
      if (CFDictionaryGetCount(Mutable))
      {
        v26 = *v10;
        if (v26)
        {
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v27)
          {
            if (!v27(v26, a2, &cf, 0))
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
            }
          }
        }
      }

      v15 = 1;
      goto LABEL_39;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_LanguageCode") || CFEqual(a3, @"TrackLanguageCode"))
    {
      if (a4)
      {
        v20 = CFGetTypeID(a4);
        if (v20 != CFStringGetTypeID())
        {
          v28 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 4294954516, "<<<< CompositeReader >>>>", 7541, v4);
          goto LABEL_33;
        }

        Copy = CFStringCreateCopy(v11, a4);
        v22 = Copy;
        v23 = *(v14 + 40);
        *(v14 + 40) = Copy;
        if (Copy)
        {
          CFRetain(Copy);
          v24 = 0;
LABEL_27:
          if (v23)
          {
            CFRelease(v23);
          }

          if ((v24 & 1) == 0)
          {
            CFRelease(v22);
          }

          v25 = kFigTrackProperty_LanguageCode;
          goto LABEL_32;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v14 + 40);
        *(v14 + 40) = 0;
      }

      v24 = 1;
      goto LABEL_27;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_ExtendedLanguageTag") || CFEqual(a3, @"ExtendedLanguageTagString"))
    {
      if (a4)
      {
        v29 = CFGetTypeID(a4);
        if (v29 != CFStringGetTypeID())
        {
          v34 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954516, "<<<< CompositeReader >>>>", 7551, v4);
          goto LABEL_33;
        }

        v30 = CFStringCreateCopy(v11, a4);
        v31 = v30;
        v32 = *(v14 + 48);
        *(v14 + 48) = v30;
        if (v30)
        {
          CFRetain(v30);
          v33 = 0;
LABEL_55:
          if (v32)
          {
            CFRelease(v32);
          }

          if ((v33 & 1) == 0)
          {
            CFRelease(v31);
          }

          v25 = kFigTrackProperty_ExtendedLanguageTagString;
          goto LABEL_32;
        }
      }

      else
      {
        v31 = 0;
        v32 = *(v14 + 48);
        *(v14 + 48) = 0;
      }

      v33 = 1;
      goto LABEL_55;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_PreferredTransform") || CFEqual(a3, @"TrackMatrix"))
    {
      if (a4)
      {
        v35 = CFGetTypeID(a4);
        if (v35 != CFArrayGetTypeID())
        {
          v40 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294954516, "<<<< CompositeReader >>>>", 7561, v4);
          goto LABEL_33;
        }

        v36 = CFArrayCreateCopy(v11, a4);
        v37 = v36;
        v38 = *(v14 + 56);
        *(v14 + 56) = v36;
        if (v36)
        {
          CFRetain(v36);
          v39 = 0;
LABEL_69:
          if (v38)
          {
            CFRelease(v38);
          }

          if ((v39 & 1) == 0)
          {
            CFRelease(v37);
          }

          v25 = kFigTrackProperty_Matrix;
          goto LABEL_32;
        }
      }

      else
      {
        v37 = 0;
        v38 = *(v14 + 56);
        *(v14 + 56) = 0;
      }

      v39 = 1;
      goto LABEL_69;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Volume") || CFEqual(a3, @"Volume"))
    {
      if (a4)
      {
        v41 = CFGetTypeID(a4);
        if (v41 != CFNumberGetTypeID())
        {
          v43 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 4294954516, "<<<< CompositeReader >>>>", 7569, v4);
          goto LABEL_33;
        }

        v42 = *(v14 + 64);
        *(v14 + 64) = a4;
        CFRetain(a4);
      }

      else
      {
        v42 = *(v14 + 64);
        *(v14 + 64) = 0;
      }

      if (v42)
      {
        CFRelease(v42);
      }

      v25 = kFigTrackProperty_Volume;
      goto LABEL_32;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID") || CFEqual(a3, @"AlternateGroupID"))
    {
      if (a4)
      {
        v44 = CFGetTypeID(a4);
        if (v44 != CFNumberGetTypeID())
        {
          v46 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 4294954516, "<<<< CompositeReader >>>>", 7584, v4);
          goto LABEL_33;
        }
      }

      LOWORD(v81.width) = 0;
      CFNumberGetValue(a4, kCFNumberSInt16Type, &v81);
      v45 = *(v14 + 104);
      if (LOWORD(v81.width))
      {
        *(v14 + 104) = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v45)
        {
          CFRelease(v45);
        }
      }

      else if (v45)
      {
        CFRelease(*(v14 + 104));
        *(v14 + 104) = 0;
      }

      v25 = kFigTrackProperty_AlternateGroupID;
      goto LABEL_32;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Metadata"))
    {
      if (!a4 || (v47 = CFGetTypeID(a4), v47 == CFArrayGetTypeID()))
      {
        mutableCompositionTrack_setMetadata(v14, a4, Mutable);
      }

      else
      {
        v48 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 4294954516, "<<<< CompositeReader >>>>", 7591, v4);
      }

      goto LABEL_33;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Enabled") || CFEqual(a3, @"IsEnabled"))
    {
      if (a4)
      {
        v49 = CFGetTypeID(a4);
        if (v49 != CFBooleanGetTypeID())
        {
          v50 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 4294954516, "<<<< CompositeReader >>>>", 7599, v4);
          goto LABEL_33;
        }
      }

      *(v14 + 160) = CFBooleanGetValue(a4) != 0;
      v25 = kFigTrackProperty_Enabled;
      goto LABEL_32;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_FormatDescriptionReplacementTable"))
    {
      if (!compositionTableTrack_setFormatDescriptionReplacementTable(v14, a4))
      {
        goto LABEL_33;
      }

      v15 = 0;
LABEL_39:
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if ((v15 & 1) == 0)
      {
        FigSimpleMutexUnlock();
      }

      return;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Layer"))
    {
      if (a4)
      {
        v51 = CFGetTypeID(a4);
        if (v51 != CFNumberGetTypeID())
        {
          v57 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 4294954516, "<<<< CompositeReader >>>>", 7612, v4);
          goto LABEL_33;
        }

        v52 = *(v14 + 120);
        *(v14 + 120) = a4;
        CFRetain(a4);
      }

      else
      {
        v52 = *(v14 + 120);
        *(v14 + 120) = 0;
      }

      if (v52)
      {
        CFRelease(v52);
      }

      v25 = kFigTrackProperty_Layer;
LABEL_32:
      CFDictionarySetValue(Mutable, *v25, *MEMORY[0x1E695E4D0]);
      goto LABEL_33;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_CleanApertureDimensions"))
    {
      if (!a4)
      {
        v62 = *(v14 + 128);
        if (v62)
        {
          CFRelease(v62);
          *(v14 + 128) = 0;
        }

        goto LABEL_139;
      }

      v53 = CFGetTypeID(a4);
      if (v53 != CFDictionaryGetTypeID())
      {
        v63 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 4294954516, "<<<< CompositeReader >>>>", 7633, v4);
        goto LABEL_33;
      }

      v81.width = 0.0;
      v81.height = 0.0;
      if (!CGSizeMakeWithDictionaryRepresentation(a4, &v81))
      {
        v68 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 4294954516, "<<<< CompositeReader >>>>", 7629, v4);
        goto LABEL_33;
      }

      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v81);
      if (DictionaryRepresentation)
      {
        v55 = DictionaryRepresentation;
        v56 = *(v14 + 128);
        *(v14 + 128) = DictionaryRepresentation;
        CFRetain(DictionaryRepresentation);
        if (v56)
        {
          CFRelease(v56);
        }

        CFRelease(v55);
LABEL_139:
        v25 = kFigTrackProperty_CleanApertureDimensions;
        goto LABEL_32;
      }

      mutableComposition_SetTrackProperty_cold_1(&v81, &v83);
LABEL_177:
      v15 = 0;
      goto LABEL_39;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_ProductionApertureDimensions"))
    {
      if (a4)
      {
        v58 = CFGetTypeID(a4);
        if (v58 != CFDictionaryGetTypeID())
        {
          v70 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 4294954516, "<<<< CompositeReader >>>>", 7654, v4);
          goto LABEL_33;
        }

        v81.width = 0.0;
        v81.height = 0.0;
        if (!CGSizeMakeWithDictionaryRepresentation(a4, &v81))
        {
          v76 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, 4294954516, "<<<< CompositeReader >>>>", 7650, v4);
          goto LABEL_33;
        }

        v59 = CGSizeCreateDictionaryRepresentation(v81);
        if (!v59)
        {
          mutableComposition_SetTrackProperty_cold_2(&v81, &v83);
          goto LABEL_177;
        }

        v60 = v59;
        v61 = *(v14 + 136);
        *(v14 + 136) = v59;
        CFRetain(v59);
        if (v61)
        {
          CFRelease(v61);
        }

        CFRelease(v60);
      }

      else
      {
        v69 = *(v14 + 136);
        if (v69)
        {
          CFRelease(v69);
          *(v14 + 136) = 0;
        }
      }

      v25 = kFigTrackProperty_ProductionApertureDimensions;
      goto LABEL_32;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_EncodedPixelsDimensions"))
    {
      if (a4)
      {
        v64 = CFGetTypeID(a4);
        if (v64 != CFDictionaryGetTypeID())
        {
          v78 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, 4294954516, "<<<< CompositeReader >>>>", 7675, v4);
          goto LABEL_33;
        }

        v81.width = 0.0;
        v81.height = 0.0;
        if (!CGSizeMakeWithDictionaryRepresentation(a4, &v81))
        {
          v79 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, 4294954516, "<<<< CompositeReader >>>>", 7671, v4);
          goto LABEL_33;
        }

        v65 = CGSizeCreateDictionaryRepresentation(v81);
        if (!v65)
        {
          mutableComposition_SetTrackProperty_cold_3(&v81, &v83);
          goto LABEL_177;
        }

        v66 = v65;
        v67 = *(v14 + 144);
        *(v14 + 144) = v65;
        CFRetain(v65);
        if (v67)
        {
          CFRelease(v67);
        }

        CFRelease(v66);
      }

      else
      {
        v77 = *(v14 + 144);
        if (v77)
        {
          CFRelease(v77);
          *(v14 + 144) = 0;
        }
      }

      v25 = kFigTrackProperty_EncodedPixelsDimensions;
      goto LABEL_32;
    }

    if (!CFEqual(a3, @"MutableCompositionTrack_LoadSettings"))
    {
      goto LABEL_33;
    }

    if (a4)
    {
      v71 = CFGetTypeID(a4);
      if (v71 != CFDictionaryGetTypeID())
      {
        v80 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 4294954516, "<<<< CompositeReader >>>>", 7685, v4);
        goto LABEL_33;
      }

      v72 = CFDictionaryCreateCopy(v11, a4);
      v73 = v72;
      v74 = *(v14 + 152);
      *(v14 + 152) = v72;
      if (v72)
      {
        CFRetain(v72);
        v75 = 0;
LABEL_168:
        if (v74)
        {
          CFRelease(v74);
        }

        if ((v75 & 1) == 0)
        {
          CFRelease(v73);
        }

        v25 = kFigTrackProperty_QTLoadSettings;
        goto LABEL_32;
      }
    }

    else
    {
      v73 = 0;
      v74 = *(v14 + 152);
      *(v14 + 152) = 0;
    }

    v75 = 1;
    goto LABEL_168;
  }

  v16 = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954516, "<<<< CompositeReader >>>>", 7514, v4);
}

uint64_t mutableComposition_DeleteTrackSegment(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();
    return 4294954516;
  }

  else
  {
    v7 = *(v5 + 32);
    while (*(v7 + 4) != a2)
    {
      v7 += 168;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = compositionTable_deleteTrackSegment();
    FigSimpleMutexUnlock();
    compositionTable_discardUnusedAssets(v5);
  }

  return v8;
}

uint64_t mutableComposition_DeleteSegment(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage[1];
  FigSimpleMutexLock();
  v8 = *(v7 + 16);
  if (v8 < 1)
  {
    v19 = 0;
  }

  else
  {
    v22 = a1;
    v9 = 0;
    v10 = v8 + 1;
    v11 = 168 * v8;
    v12 = MEMORY[0x1E6960CC0];
    do
    {
      v13 = *(v7 + 32);
      if (*(v13 + v11 - 160) >= 1)
      {
        v24 = *v12;
        v14 = *(v13 + v11 - 160);
        if (v14 >= 1)
        {
          v15 = *(v13 + v11 - 152) + 108 * v14;
          v16 = *(v15 - 60);
          v17 = *(v15 - 28);
          *&range.start.epoch = *(v15 - 44);
          *&range.duration.timescale = v17;
          *&range.start.value = v16;
          CMTimeRangeGetEnd(&v24, &range);
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        time2 = v24;
        if (CMTimeCompare(&range.start, &time2) < 0)
        {
          *&range.start.value = *a2;
          range.start.epoch = *(a2 + 16);
          time2 = *a3;
          v18 = compositionTable_deleteTrackSegment();
          if (v18)
          {
            v20 = v18;
            FigSimpleMutexUnlock();
            return v20;
          }

          ++v9;
        }
      }

      --v10;
      v11 -= 168;
    }

    while (v10 > 1);
    if (v9 < 1)
    {
      v19 = 0;
    }

    else
    {
      ++*(v7 + 4);
      v19 = 1;
    }

    a1 = v22;
  }

  FigSimpleMutexUnlock();
  compositionTable_discardUnusedAssets(v7);
  v20 = 0;
  if (v19 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
    return 0;
  }

  return v20;
}

uint64_t mutableComposition_ScaleTrackSegment(uint64_t a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage[1];
  FigSimpleMutexLock();
  v12 = *(v11 + 16);
  if (v12 < 1)
  {
LABEL_5:
    v14 = 4294954516;
LABEL_6:
    FigSimpleMutexUnlock();
    return v14;
  }

  v13 = *(v11 + 32);
  while (*(v13 + 4) != a2)
  {
    v13 += 168;
    if (!--v12)
    {
      goto LABEL_5;
    }
  }

  v21 = *a3;
  v22 = *(a3 + 2);
  v19 = *a4;
  v20 = *(a4 + 2);
  v17 = *a5;
  v18 = *(a5 + 2);
  v16 = compositionTable_scaleTrackSegment(v11, v13, &v21, &v19, &v17);
  if (v16)
  {
    v14 = v16;
    goto LABEL_6;
  }

  ++*(v11 + 4);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
  }

  return 0;
}

uint64_t mutableComposition_ScaleSegment(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage[1];
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 < 1)
  {
    v22 = 0;
  }

  else
  {
    v25 = DerivedStorage;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = MEMORY[0x1E6960CC0];
    do
    {
      v15 = *(v9 + 32);
      v16 = v15 + v11;
      if (*(v15 + v11 + 8) >= 1)
      {
        v29 = *v14;
        v17 = *(v16 + 8);
        if (v17 >= 1)
        {
          v18 = *(v15 + v11 + 16) + 108 * v17;
          v19 = *(v18 - 60);
          v20 = *(v18 - 28);
          *&range.start.epoch = *(v18 - 44);
          *&range.duration.timescale = v20;
          *&range.start.value = v19;
          CMTimeRangeGetEnd(&v29, &range);
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        time2 = v29;
        if (CMTimeCompare(&range.start, &time2) < 0)
        {
          *&range.start.value = *a2;
          range.start.epoch = *(a2 + 16);
          time2 = *a3;
          v26 = *a4;
          v27 = *(a4 + 16);
          v21 = compositionTable_scaleTrackSegment(v9, v16, &range, &time2.value, &v26);
          if (v21)
          {
            v23 = v21;
            FigSimpleMutexUnlock();
            return v23;
          }

          ++v13;
        }

        v10 = *(v9 + 16);
      }

      ++v12;
      v11 += 168;
    }

    while (v12 < v10);
    if (v13 < 1)
    {
      v22 = 0;
    }

    else
    {
      ++*(v9 + 4);
      v22 = 1;
    }

    DerivedStorage = v25;
  }

  FigSimpleMutexUnlock();
  v23 = 0;
  if (v22 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
    return 0;
  }

  return v23;
}

uint64_t mutableComposition_PostDeferredTracksChangedNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = 0;
  if (*(DerivedStorage + 17))
  {
    v2 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *(v2 + 17) = 0;
  }

  return 0;
}

uint64_t compositionTable_createCopy(const __CFAllocator *a1, uint64_t a2, const __CFAllocator **a3)
{
  v6 = malloc_type_calloc(0xA8uLL, 1uLL, 0x97DB9D99uLL);
  if (*MEMORY[0x1E695E4B0] == a1)
  {
    a1 = CFGetAllocator(*(a2 + 64));
  }

  v7 = *(a2 + 4);
  *v6 = 1;
  *(v6 + 1) = v7;
  *(v6 + 1) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  *(v6 + 9) = FigSimpleMutexCreate();
  v8 = *(a2 + 16);
  *(v6 + 2) = v8;
  *(v6 + 6) = *(a2 + 24);
  if (v8 < 1)
  {
    *(v6 + 4) = 0;
  }

  else
  {
    v9 = malloc_type_malloc(168 * v8, 0x1060040CA997719uLL);
    *(v6 + 4) = v9;
    memcpy(v9, *(a2 + 32), 168 * *(v6 + 2));
    if (*(v6 + 2) >= 1)
    {
      v10 = 0;
      v11 = *(v6 + 4);
      do
      {
        v12 = *(v11 + 24);
        if (v12 < 1)
        {
          *(v11 + 16) = 0;
        }

        else
        {
          v13 = malloc_type_malloc(108 * v12, 0x1060040CB727B4DuLL);
          v14 = v13;
          v15 = *(v11 + 8);
          if (v15 <= 0)
          {
            *(v11 + 16) = v13;
          }

          else
          {
            memcpy(v13, *(v11 + 16), 108 * v15);
            v16 = *(v11 + 8);
            *(v11 + 16) = v14;
            if (v16 >= 1)
            {
              v17 = 0;
              v18 = (v14 + 96);
              do
              {
                if (*v18)
                {
                  CFRetain(*v18);
                  v16 = *(v11 + 8);
                }

                ++v17;
                v18 = (v18 + 108);
              }

              while (v17 < v16);
            }
          }
        }

        v19 = *(v11 + 32);
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = *(v11 + 40);
        if (v20)
        {
          CFRetain(v20);
        }

        v21 = *(v11 + 48);
        if (v21)
        {
          CFRetain(v21);
        }

        v22 = *(v11 + 56);
        if (v22)
        {
          CFRetain(v22);
        }

        v23 = *(v11 + 64);
        if (v23)
        {
          CFRetain(v23);
        }

        v24 = *(v11 + 72);
        if (v24)
        {
          *(v11 + 72) = CFDictionaryCreateMutableCopy(a1, 0, v24);
        }

        v25 = *(v11 + 96);
        if (v25)
        {
          CFRetain(v25);
        }

        v26 = *(v11 + 80);
        if (v26)
        {
          CFRetain(v26);
        }

        v27 = *(v11 + 88);
        if (v27)
        {
          CFRetain(v27);
        }

        v28 = *(v11 + 104);
        if (v28)
        {
          CFRetain(v28);
        }

        v29 = *(v11 + 112);
        if (v29)
        {
          CFRetain(v29);
        }

        ++v10;
        v11 += 168;
      }

      while (v10 < *(v6 + 2));
    }
  }

  *(v6 + 5) = CFBagCreateMutableCopy(a1, 0, *(a2 + 40));
  v30 = *(a2 + 48);
  if (v30)
  {
    *(v6 + 6) = CFDictionaryCreateMutableCopy(a1, 0, v30);
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v31 = *(a2 + 80);
  if (v31)
  {
    *(v6 + 10) = CFDictionaryCreateMutableCopy(a1, 0, v31);
  }

  v32 = *(a2 + 112);
  *(v6 + 14) = v32;
  *(v6 + 11) = *(a2 + 88);
  v33 = *(a2 + 96);
  *(v6 + 6) = v33;
  if (v32)
  {
    CFRetain(v32);
    v34 = *(v6 + 12);
    if (!v34)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v34 = v33;
  if (v33)
  {
LABEL_47:
    CFRetain(v34);
  }

LABEL_48:
  v35 = *(v6 + 11);
  if (v35)
  {
    CFRetain(v35);
  }

  v36 = *(v6 + 13);
  if (v36)
  {
    CFRetain(v36);
  }

  FigSimpleMutexUnlock();
  *(v6 + 7) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  *(v6 + 8) = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 64));
  FigSimpleMutexUnlock();
  *(v6 + 15) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  v37 = *(a2 + 128);
  *(v6 + 16) = v37;
  v38 = malloc_type_calloc(v37, 0x10uLL, 0x1060040C2E02434uLL);
  *(v6 + 17) = v38;
  memcpy(v38, *(a2 + 136), 16 * *(v6 + 16));
  v39 = *(a2 + 144);
  *(v6 + 18) = v39;
  if (v39 >= 2)
  {
    v40 = 1;
    v41 = 16;
    do
    {
      v42 = *(*(v6 + 17) + v41);
      if (v42)
      {
        CFRetain(v42);
        v39 = *(v6 + 18);
      }

      ++v40;
      v41 += 16;
    }

    while (v40 < v39);
  }

  *(v6 + 19) = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 152));
  FigSimpleMutexUnlock();
  *(v6 + 20) = *(a2 + 160);
  result = FigAtomicIncrement32();
  *a3 = v6;
  return result;
}

void composite_formatReader_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  if (DerivedStorage[1])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
    v3 = DerivedStorage[2];
    if (v3)
    {
      CFRelease(v3);
      DerivedStorage[2] = 0;
    }
  }
}

__CFString *composite_formatReader_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *DerivedStorage;
  v4 = *(*DerivedStorage + 32);
  CFStringAppend(Mutable, @"[Composite FigFormatReader]{\n");
  if (*(v3 + 16) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = compositionTableTrack_CopyDebugDescription(v4);
      if (v5)
      {
        CFStringAppend(Mutable, @",\n");
      }

      CFStringAppend(Mutable, @"  ");
      CFStringAppend(Mutable, v6);
      if (v6)
      {
        CFRelease(v6);
      }

      ++v5;
      v4 += 168;
    }

    while (v5 < *(v3 + 16));
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

CFMutableArrayRef compositeFormatReader_copyAlternateGroupArray(uint64_t a1, const __CFAllocator *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  if (v4 < 1)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = (*(v3 + 32) + 104);
  do
  {
    v7 = *v6;
    v6 += 21;
    if (v7)
    {
      v5 = 1;
    }

    --v4;
  }

  while (v4);
  if (v5)
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(v3 + 16) >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = MEMORY[0x1E695E9C0];
      do
      {
        v12 = *(v3 + 32) + v9;
        v13 = *(v12 + 104);
        if (v13)
        {
          if (CFDictionaryGetValue(Mutable, *(v12 + 104)))
          {
            FigCFArrayAppendInt32();
          }

          else
          {
            v14 = CFArrayCreateMutable(a2, 0, v11);
            FigCFArrayAppendInt32();
            CFDictionarySetValue(Mutable, v13, v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }
        }

        ++v10;
        v9 += 168;
      }

      while (v10 < *(v3 + 16));
    }

    Count = CFDictionaryGetCount(Mutable);
    v16 = CFArrayCreateMutable(a2, Count, MEMORY[0x1E695E9C0]);
    if (v16)
    {
      CFDictionaryApplyFunction(Mutable, copyValuesToArray, v16);
    }

    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
LABEL_19:
    FigSimpleMutexUnlock();
    return 0;
  }

  return v16;
}

uint64_t compositionTable_copyQuickTimeUserDataReader(CFTypeRef *a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = a1 + 11;
  v4 = a1[11];
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = a1[10];
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.quicktime.udta")) != 0)
  {
    v6 = FigMetadataReaderCreateForQuickTimeUserDataArray(*MEMORY[0x1E695E480], Value, a1 + 11);
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyQuickTimeMetadataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.quicktime.mdta")) != 0)
  {
    v6 = FigMetadataReaderCreateForQuickTimeMetadataArray(*MEMORY[0x1E695E480], Value, (a1 + 96));
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyISOUserDataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"org.mp4ra")) != 0)
  {
    v6 = FigMetadataReaderCreateForISOUserDataArray(*MEMORY[0x1E695E480], Value, (a1 + 104));
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyiTunesMetadataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 112);
  v4 = *(a1 + 112);
  if (v4)
  {
    ForiTunesMetadataArray = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.itunes")) != 0)
  {
    ForiTunesMetadataArray = FigMetadataReaderCreateForiTunesMetadataArray(*MEMORY[0x1E695E480], Value, (a1 + 112));
  }

  else
  {
    ForiTunesMetadataArray = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return ForiTunesMetadataArray;
}

CMTime *compositionTable_getDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960CC0];
  v12 = *MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  v4 = *(v3 + 16);
  a2->epoch = v4;
  if (result->epoch >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = (*&result[1].timescale + 16);
    do
    {
      *&v14.value = v12;
      v14.epoch = v4;
      v8 = *(v7 - 1);
      if (v8 >= 1)
      {
        v9 = *v7 + 108 * v8;
        v10 = *(v9 - 60);
        v11 = *(v9 - 28);
        *&range.start.epoch = *(v9 - 44);
        *&range.duration.timescale = v11;
        *&range.start.value = v10;
        CMTimeRangeGetEnd(&v14, &range);
      }

      v7 += 21;
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
      time2 = v14;
      result = CMTimeMaximum(a2, &range.start, &time2);
      ++v6;
    }

    while (v6 < v5->epoch);
  }

  return result;
}

uint64_t composite_formatReader_GetTrackCount(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(v3 + 16);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t composite_formatReader_CopyTrackByIndex(const void *a1, uint64_t a2, void *a3, _DWORD *a4, int *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 < 0 || *(v10 + 16) <= a2)
  {
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  else
  {
    v11 = *(*(v10 + 32) + 168 * a2 + 4);
    FigSimpleMutexUnlock();
    if (a5)
    {
      *a5 = v11;
    }

    return composite_formatReader_CopyTrackByID(a1, v11, a3, a4);
  }
}

void composite_trackReader_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }
}

__CFString *composite_trackReader_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *DerivedStorage;
  v5 = *(*DerivedStorage + 16);
  if (v5 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 32);
    while (*(v6 + 4) != DerivedStorage[2])
    {
      v6 += 168;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<Composite FigTrackReader %p>", a1);
  if (v6)
  {
    v8 = compositionTableTrack_CopyDebugDescription(v6);
    CFStringAppend(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = v3[2];
    v11 = bswap32(v3[3]);
    CFStringAppendFormat(Mutable, 0, @"{ trackID %d, mediaType %.4s, table %p, ", v9, &v11, v4);
    CFStringAppend(Mutable, @"trackID not found in table");
    CFStringAppendFormat(Mutable, 0, @" }");
  }

  return Mutable;
}

void composite_trackReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v14 = v4;
    v15 = 4294954516;
    v16 = 5600;
    goto LABEL_5;
  }

  v10 = DerivedStorage;
  v11 = *DerivedStorage;
  if (CFEqual(a2, @"SecondaryEditCursorService"))
  {
    v12 = v10[2];
LABEL_10:
    *a4 = v12;
    CFRetain(v12);
    return;
  }

  if (CFEqual(a2, @"EditCursorService"))
  {
    v12 = v10[3];
    goto LABEL_10;
  }

  if (CFEqual(a2, @"TrackEnabled"))
  {
    FigSimpleMutexLock();
    v17 = v11[2];
    if (v17 < 1)
    {
LABEL_17:
      v19 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 4294954453, "<<<< CompositeReader >>>>", 5615, v4);
      goto LABEL_33;
    }

    v18 = (v11[4] + 160);
    while (*(v18 - 39) != *(v10 + 2))
    {
      v18 += 168;
      if (!--v17)
      {
        goto LABEL_17;
      }
    }

    v32 = MEMORY[0x1E695E4D0];
    if (!*v18)
    {
      v32 = MEMORY[0x1E695E4C0];
    }

    v33 = *v32;
    if (!*v32)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    v20 = CMBaseObjectGetDerivedStorage();
    v21 = *v20;
    v22 = *(v20 + 8);
    HIDWORD(v98) = *(v20 + 12);
    *&valuePtr[0] = 0;
    cf = 0;
    v23 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    v25 = CFArrayCreateMutable(a3, 0, v23);
    v26 = v25;
    value = 0;
    if (Mutable)
    {
      if (v25)
      {
        v106 = 0;
        FigSimpleMutexLock();
        v27 = *(v21 + 16);
        if (v27 >= 1)
        {
          v28 = *(v21 + 32);
          while (*(v28 + 4) != v22)
          {
            v28 += 168;
            if (!--v27)
            {
              goto LABEL_26;
            }
          }

          v31 = *(v28 + 112);
          if (v31)
          {
            CFRetain(*(v28 + 112));
          }

          v34 = *(v28 + 8);
          if (v34 >= 1)
          {
            v35 = 0;
            for (i = 0; i < v34; ++i)
            {
              v37 = *(v28 + 16) + v35;
              if ((*(v37 + 12) & 0x1D) == 1)
              {
                v38 = *(v37 + 96);
                v106 = *(v37 + 104);
                CFArrayAppendValue(Mutable, v38);
                FigCFArrayAppendInt32();
                v34 = *(v28 + 8);
              }

              v35 += 108;
            }
          }

          FigSimpleMutexUnlock();
          goto LABEL_46;
        }

LABEL_26:
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v98, v99, v101);
        v30 = v29;
        FigSimpleMutexUnlock();
        v31 = 0;
        if (!v30)
        {
LABEL_46:
          if (CFArrayGetCount(Mutable))
          {
            v102 = v26;
            v39 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
            if (CFArrayGetCount(Mutable) < 1)
            {
              v41 = 0;
LABEL_67:
              v30 = 0;
              *a4 = v39;
              v39 = 0;
            }

            else
            {
              v100 = v21;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v42);
                FigCFArrayGetInt32AtIndex();
                if (v41)
                {
                  CFRelease(v41);
                  *&valuePtr[0] = 0;
                }

                v44 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v100, ValueAtIndex, v106, HIDWORD(v98), a3, valuePtr);
                if (v44)
                {
                  v30 = v44;
                  v41 = *&valuePtr[0];
                  goto LABEL_68;
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                v41 = *&valuePtr[0];
                FigTrackReaderGetFigBaseObject();
                v46 = v45;
                v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v47)
                {
                  v30 = -12782;
                  goto LABEL_68;
                }

                v48 = v47(v46, @"TrackFormatDescriptionArray", a3, &cf);
                if (v48)
                {
                  break;
                }

                for (j = 0; ; ++j)
                {
                  Count = cf;
                  if (cf)
                  {
                    Count = CFArrayGetCount(cf);
                  }

                  if (j >= Count)
                  {
                    break;
                  }

                  v51 = CFArrayGetValueAtIndex(cf, j);
                  if (v40)
                  {
                    CFRelease(v40);
                    value = 0;
                  }

                  mutableComposition_copyReplacedFormatDescription(v31, v51, &value);
                  v40 = value;
                  CFArrayAppendValue(v39, value);
                }

                if (++v42 >= CFArrayGetCount(Mutable))
                {
                  goto LABEL_67;
                }
              }

              v30 = v48;
            }

LABEL_68:
            if (v41)
            {
              CFRelease(v41);
            }

            if (v39)
            {
              CFRelease(v39);
            }

            v26 = v102;
          }

          else
          {
            v30 = -12521;
          }
        }

LABEL_73:
        if (cf)
        {
          CFRelease(cf);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v30 == -12521)
        {
          *a4 = 0;
        }

        return;
      }

      composite_trackReader_CopyProperty_cold_1(&v106);
    }

    else
    {
      composite_trackReader_CopyProperty_cold_2(&v106);
    }

    v31 = 0;
    v30 = v106;
    goto LABEL_73;
  }

  if (CFEqual(a2, @"TrackDimensions"))
  {

    composite_trackReader_copyPropertyFromFirstNonEmptyEdit(a1, a2, a3, a4);
    return;
  }

  if (CFEqual(a2, @"TrackTimescale"))
  {
    FigSimpleMutexLock();
    v52 = v11[2];
    if (v52 < 1)
    {
      goto LABEL_99;
    }

    v53 = (v11[4] + 32);
    while (*(v53 - 7) != *(v10 + 2))
    {
      v53 += 21;
      if (!--v52)
      {
        goto LABEL_99;
      }
    }

    v33 = *v53;
    if (!*v53)
    {
LABEL_99:
      FigSimpleMutexUnlock();
      v57 = *(v10 + 2);
      v58 = *(v10 + 3);

      compositionTable_copyTrackMediaTimeScale(v11, v57, v58, a3, a4);
      return;
    }

LABEL_31:
    v33 = CFRetain(v33);
LABEL_32:
    *a4 = v33;
LABEL_33:
    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(a2, @"AlternateGroupID"))
  {
    FigSimpleMutexLock();
    v54 = v11[2];
    if (v54 < 1)
    {
LABEL_96:
      v56 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, 4294954453, "<<<< CompositeReader >>>>", 5650, v4);
      goto LABEL_33;
    }

    v55 = (v11[4] + 104);
    while (*(v55 - 25) != *(v10 + 2))
    {
      v55 += 21;
      if (!--v54)
      {
        goto LABEL_96;
      }
    }

LABEL_114:
    v33 = *v55;
    if (!*v55)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"TrackLanguageCode"))
  {
    FigSimpleMutexLock();
    v59 = v11[2];
    if (v59 < 1)
    {
LABEL_107:
      v60 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 4294954453, "<<<< CompositeReader >>>>", 5658, v4);
      goto LABEL_33;
    }

    v55 = (v11[4] + 40);
    while (*(v55 - 9) != *(v10 + 2))
    {
      v55 += 21;
      if (!--v59)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_114;
  }

  if (CFEqual(a2, @"ExtendedLanguageTagString"))
  {
    FigSimpleMutexLock();
    v61 = v11[2];
    if (v61 < 1)
    {
LABEL_113:
      v62 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 4294954453, "<<<< CompositeReader >>>>", 5666, v4);
      goto LABEL_33;
    }

    v55 = (v11[4] + 48);
    while (*(v55 - 11) != *(v10 + 2))
    {
      v55 += 21;
      if (!--v61)
      {
        goto LABEL_113;
      }
    }

    goto LABEL_114;
  }

  if (CFEqual(a2, @"TrackMatrix"))
  {
    FigSimpleMutexLock();
    v63 = v11[2];
    if (v63 < 1)
    {
      goto LABEL_129;
    }

    v64 = (v11[4] + 56);
    while (*(v64 - 13) != *(v10 + 2))
    {
      v64 += 21;
      if (!--v63)
      {
        goto LABEL_129;
      }
    }

    v33 = *v64;
    if (!*v64)
    {
LABEL_129:
      v67 = *(MEMORY[0x1E695EFD0] + 16);
      valuePtr[0] = *MEMORY[0x1E695EFD0];
      valuePtr[1] = v67;
      valuePtr[2] = *(MEMORY[0x1E695EFD0] + 32);
      v33 = FigCreate3x3MatrixArrayFromCGAffineTransform(a3, valuePtr);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"Volume"))
  {
    FigSimpleMutexLock();
    v65 = v11[2];
    if (v65 < 1)
    {
      goto LABEL_137;
    }

    v66 = (v11[4] + 64);
    while (*(v66 - 15) != *(v10 + 2))
    {
      v66 += 21;
      if (!--v65)
      {
        goto LABEL_137;
      }
    }

    v33 = *v66;
    if (!*v66)
    {
LABEL_137:
      LODWORD(valuePtr[0]) = 1065353216;
      v33 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, valuePtr);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (!CFEqual(a2, @"UneditedSampleCount"))
  {
    if (CFEqual(a2, @"MediaCharacteristicArray"))
    {
      v68 = *MEMORY[0x1E695E480];

      FigMediaCharacteristicsCopyMediaCharacteristicsForTrackReader(v68, a1, a4);
      return;
    }

    if (CFEqual(a2, @"NominalFrameRate"))
    {
      FigSimpleMutexLock();
      v69 = v11[2];
      if (v69 >= 1)
      {
        v70 = (v11[4] + 4);
        while (*v70 != *(v10 + 2))
        {
          v70 += 42;
          if (!--v69)
          {
            goto LABEL_147;
          }
        }

        FigSimpleMutexUnlock();
        v74 = *(v70 - 1);
        v73 = *v70;
        v75 = *MEMORY[0x1E695E480];

        compositionTable_copyTrackNominalFrameRate(v11, v73, v74, v75, a4);
        return;
      }

LABEL_147:
      FigSimpleMutexUnlock();
      emitter = fig_log_get_emitter();
      v14 = v4;
      v15 = 4294954453;
      v16 = 5701;
    }

    else
    {
      if (!CFEqual(a2, @"EstimatedDataRate"))
      {
        if (CFEqual(a2, @"QuickTimeUserDataReader"))
        {
          FigSimpleMutexLock();
          v76 = v11[2];
          if (v76 < 1)
          {
LABEL_162:
            v78 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, 4294954453, "<<<< CompositeReader >>>>", 5722, v4);
            goto LABEL_33;
          }

          v77 = v11[4];
          while (*(v77 + 4) != *(v10 + 2))
          {
            v77 += 168;
            if (!--v76)
            {
              goto LABEL_162;
            }
          }

          if (compositionTableTrack_assureQuickTimeUserDataReaderCreated(v77))
          {
            goto LABEL_33;
          }

          v33 = *(v77 + 80);
          if (!v33)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (CFEqual(a2, @"ISOUserDataReader"))
        {
          FigSimpleMutexLock();
          v82 = v11[2];
          if (v82 < 1)
          {
LABEL_171:
            v84 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, 4294954453, "<<<< CompositeReader >>>>", 5741, v4);
            goto LABEL_33;
          }

          v83 = v11[4];
          while (*(v83 + 4) != *(v10 + 2))
          {
            v83 += 168;
            if (!--v82)
            {
              goto LABEL_171;
            }
          }

          if (compositionTableTrack_assureISOUserDataReaderCreated(v83))
          {
            goto LABEL_33;
          }

          v33 = *(v83 + 88);
          if (!v33)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (CFEqual(a2, @"QuickTimeMetadataReader"))
        {
          FigSimpleMutexLock();
          v85 = v11[2];
          if (v85 < 1)
          {
LABEL_180:
            v87 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, 4294954453, "<<<< CompositeReader >>>>", 5760, v4);
            goto LABEL_33;
          }

          v86 = v11[4];
          while (*(v86 + 4) != *(v10 + 2))
          {
            v86 += 168;
            if (!--v85)
            {
              goto LABEL_180;
            }
          }

          if (compositionTableTrack_assureQuickTimeMetadataReaderCreated(v86))
          {
            goto LABEL_33;
          }

          v33 = *(v86 + 96);
          if (!v33)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (CFEqual(a2, @"MetadataReaders"))
        {
          FigSimpleMutexLock();
          v88 = v11[2];
          if (v88 < 1)
          {
LABEL_189:
            v91 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, 4294954453, "<<<< CompositeReader >>>>", 5779, v4);
          }

          else
          {
            v89 = *(v10 + 2);
            v90 = v11[4] + 80;
            while (*(v90 - 76) != v89)
            {
              v90 += 168;
              if (!--v88)
              {
                goto LABEL_189;
              }
            }

            if (!compositionTableTrack_assureQuickTimeUserDataReaderCreated(v90 - 80) && !compositionTableTrack_assureQuickTimeMetadataReaderCreated(v90 - 80) && !compositionTableTrack_assureISOUserDataReaderCreated(v90 - 80) && (*v90 || *(v90 + 8) || *(v90 + 16)))
            {
              v96 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
              if (v96)
              {
                composite_trackReader_CopyProperty_cold_4(v90 - 80, v96, a4, v90);
              }

              else
              {
                composite_trackReader_CopyProperty_cold_3(valuePtr);
              }
            }
          }

          goto LABEL_33;
        }

        if (CFEqual(a2, @"MetadataReaderTypes"))
        {
          FigSimpleMutexLock();
          v92 = v11[2];
          if (v92 < 1)
          {
LABEL_198:
            v94 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, 4294954453, "<<<< CompositeReader >>>>", 5813, v4);
          }

          else
          {
            v93 = v11[4];
            while (*(v93 + 4) != *(v10 + 2))
            {
              v93 += 168;
              if (!--v92)
              {
                goto LABEL_198;
              }
            }

            compositionTableTrack_createAvailableMetadataReaderPropertiesArray(a3, v93, a4);
          }

          goto LABEL_33;
        }

        if (CFEqual(a2, @"MinSampleDuration"))
        {
          v95 = *(v10 + 2);

          compositionTable_copyTrackMinSampleDuration(v11, v95, a3, a4);
        }

        else if (CFEqual(a2, @"MaxEditRate"))
        {
          LODWORD(valuePtr[0]) = 1065353216;
          if (!compositionTable_getMaxEditRate(v11, *(v10 + 2), valuePtr))
          {
            *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
          }
        }

        else
        {
          if (CFEqual(a2, @"EditsExcludePrimingAndRemainderDuration"))
          {
            *a4 = *MEMORY[0x1E695E4D0];
            return;
          }

          if (CFEqual(a2, @"HasAudioSampleDependencyInformation"))
          {
            v97 = *(v10 + 2);

            compositionTable_copyTrackHasAudioSampleDependencyInformation(v11, v97, a4);
          }

          else
          {
            if (CFEqual(a2, @"TrackLayer"))
            {
              composite_trackReader_CopyProperty_cold_5(v11);
              goto LABEL_33;
            }

            if (CFEqual(a2, @"CleanApertureDimensions"))
            {
              composite_trackReader_CopyProperty_cold_6(v11);
              goto LABEL_33;
            }

            if (CFEqual(a2, @"ProductionApertureDimensions"))
            {
              composite_trackReader_CopyProperty_cold_7(v11);
              goto LABEL_33;
            }

            if (CFEqual(a2, @"EncodedPixelsDimensions"))
            {
              composite_trackReader_CopyProperty_cold_8(v11);
              goto LABEL_33;
            }

            if (CFEqual(a2, @"TrackQTLoadSettings"))
            {
              composite_trackReader_CopyProperty_cold_9(v11);
              goto LABEL_33;
            }
          }
        }

        return;
      }

      FigSimpleMutexLock();
      v71 = v11[2];
      if (v71 >= 1)
      {
        v72 = (v11[4] + 4);
        while (*v72 != *(v10 + 2))
        {
          v72 += 42;
          if (!--v71)
          {
            goto LABEL_153;
          }
        }

        FigSimpleMutexUnlock();
        v80 = *(v72 - 1);
        v79 = *v72;
        v81 = *MEMORY[0x1E695E480];

        compositionTable_copyTrackEstimatedDataRate(v11, v79, v80, v81, a4);
        return;
      }

LABEL_153:
      FigSimpleMutexUnlock();
      emitter = fig_log_get_emitter();
      v14 = v4;
      v15 = 4294954453;
      v16 = 5711;
    }

LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v15, "<<<< CompositeReader >>>>", v16, v14);
  }
}

uint64_t composite_trackReader_copyPropertyFromFirstNonEmptyEdit(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v9 = *(DerivedStorage + 12);
  v10 = *DerivedStorage;

  return compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(v10, v8, v9, a2, a3, a4);
}

uint64_t compositionTable_copyTrackMediaTimeScale(void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  number = 0;
  v10 = 600;
  NonEmptyEdit = compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(a1, a2, a3, @"TrackTimescale", a4, &number);
  if (NonEmptyEdit == -12521)
  {
    goto LABEL_4;
  }

  v7 = NonEmptyEdit;
  if (NonEmptyEdit)
  {
    goto LABEL_6;
  }

  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  if (valuePtr <= 599)
  {
LABEL_4:
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v10);
  }

  else
  {
    v8 = number;
    if (number)
    {
      v8 = CFRetain(number);
    }
  }

  v7 = 0;
  *a5 = v8;
LABEL_6:
  if (number)
  {
    CFRelease(number);
  }

  return v7;
}

uint64_t compositionTable_copyTrackNominalFrameRate(void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  cf = 0;
  v6 = compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(a1, a2, a3, @"NominalFrameRate", a4, &cf);
  if (v6 == -12521)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_5:
    v8 = 0;
    *a5 = v7;
    return v8;
  }

  v8 = v6;
  if (!v6)
  {
    v7 = cf;
    goto LABEL_5;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositionTable_copyTrackEstimatedDataRate(void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  cf = 0;
  v6 = compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(a1, a2, a3, @"EstimatedDataRate", a4, &cf);
  if (v6 == -12521)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_5:
    v8 = 0;
    *a5 = v7;
    return v8;
  }

  v8 = v6;
  if (!v6)
  {
    v7 = cf;
    goto LABEL_5;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositionTableTrack_assureQuickTimeUserDataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 80);
  if (*(a1 + 80))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"com.apple.quicktime.udta");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForQuickTimeUserDataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_assureISOUserDataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 88);
  if (*(a1 + 88))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"org.mp4ra");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForISOUserDataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_assureQuickTimeMetadataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 96);
  if (*(a1 + 96))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"com.apple.quicktime.mdta");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForQuickTimeMetadataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_createAvailableMetadataReaderPropertiesArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a2 + 72);
    if (v7)
    {
      if (CFDictionaryGetValue(v7, @"com.apple.quicktime.udta"))
      {
        CFArrayAppendValue(v6, @"QuickTimeUserDataReader");
      }

      v8 = *(a2 + 72);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"org.mp4ra"))
        {
          CFArrayAppendValue(v6, @"ISOUserDataReader");
        }

        v9 = *(a2 + 72);
        if (v9 && CFDictionaryGetValue(v9, @"com.apple.quicktime.mdta"))
        {
          CFArrayAppendValue(v6, @"QuickTimeMetadataReader");
        }
      }
    }

    if (!CFArrayGetCount(v6))
    {
      CFRelease(v6);
      v6 = 0;
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    compositionTableTrack_createAvailableMetadataReaderPropertiesArray_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t compositionTable_copyTrackMinSampleDuration(void *a1, int a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  v44 = 0;
  v45 = v36;
  v37 = *(MEMORY[0x1E6960C70] + 12);
  v35 = *(MEMORY[0x1E6960C70] + 8);
  v46 = v35;
  v38 = *(MEMORY[0x1E6960C70] + 16);
  v9 = MEMORY[0x1E6960C88];
  v43 = 0;
  value = *MEMORY[0x1E6960C88];
  timescale = *(MEMORY[0x1E6960C88] + 8);
  FigSimpleMutexLock();
  v10 = a1[2];
  if (v10 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v32);
    v15 = v14;
    v16 = v37;
    flags = v37;
    epoch = v38;
    goto LABEL_25;
  }

  flags = *(v9 + 12);
  epoch = *(v9 + 16);
  v13 = (a1[4] + 8);
  while (*(v13 - 1) != a2)
  {
    v13 += 21;
    if (!--v10)
    {
      goto LABEL_5;
    }
  }

  v31 = a3;
  v33 = a4;
  v17 = *v13;
  if (*v13 >= 1)
  {
    v18 = 0;
    v15 = 0;
    v19 = 0;
    v34 = *MEMORY[0x1E695E480];
    while (1)
    {
      v20 = v13[1] + v18;
      if ((*(v20 + 12) & 0x1D) == 1)
      {
        v21 = *(v20 + 96);
        v22 = *(v20 + 104);
        *&time.value = *v8;
        time.epoch = v38;
        v23 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v21, v22, *(v13 - 2), v34, &v44);
        if (v23)
        {
          v15 = v23;
          v16 = v37;
          flags = v37;
          epoch = v38;
          a3 = v31;
          a4 = v33;
          goto LABEL_25;
        }

        v24 = v44;
        FigTrackReaderGetFigBaseObject();
        v26 = v25;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v27)
        {
          v15 = v27(v26, @"MinSampleDuration", v34, &v43);
          if (!v15)
          {
            CMTimeMakeFromDictionary(&time, v43);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            time2 = time;
            CMTimeMinimum(&v41, &time1, &time2);
            value = v41.value;
            flags = v41.flags;
            timescale = v41.timescale;
            epoch = v41.epoch;
          }
        }

        else
        {
          v15 = 4294954514;
        }

        if (v43)
        {
          CFRelease(v43);
          v43 = 0;
        }

        if (v24)
        {
          CFRelease(v24);
          v44 = 0;
        }

        v17 = *v13;
      }

      ++v19;
      v18 += 108;
      if (v19 >= v17)
      {
        goto LABEL_22;
      }
    }
  }

  v15 = 0;
LABEL_22:
  a3 = v31;
  a4 = v33;
  v16 = v37;
  if ((~flags & 5) == 0)
  {
    value = v36;
    timescale = v35;
    flags = v37;
    epoch = v38;
  }

  v45 = value;
  v46 = timescale;
LABEL_25:
  FigSimpleMutexUnlock();
  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v15 == -12521)
  {
    v45 = v36;
    v46 = v35;
    epoch = v38;
    flags = v16;
LABEL_32:
    time.value = v45;
    time.timescale = v46;
    time.flags = flags;
    time.epoch = epoch;
    v15 = 0;
    *a4 = CMTimeCopyAsDictionary(&time, a3);
    return v15;
  }

  if (!v15)
  {
    goto LABEL_32;
  }

  return v15;
}

void mutableComposition_copyReplacedFormatDescription(CFArrayRef theArray, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = 0;
  do
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (v6 >= Count)
    {
      v11 = cf;
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
    MEMORY[0x19A8D3660](&mutableComposition_ignoredKeysForFormatDescriptionEquality_once, mutableComposition_makeIgnoredKeysForFormatDescriptionEquality);
    ++v6;
  }

  while (!CMFormatDescriptionEqualIgnoringExtensionKeys(Value, cf, sIgnoredKeysForFormatDescriptionEquality, 0));
  v10 = CFDictionaryGetValue(ValueAtIndex, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  *a3 = v11;
}

uint64_t compositionTable_copyFormatReaderForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v16 = 0;
  FigSimpleMutexLock();
  v8 = CFDictionaryGetValue(*(a1 + 64), a2);
  value = v8;
  if (v8)
  {
    v9 = v8;
    CFRetain(v8);
  }

  else
  {
    FigSimpleMutexUnlock();
    v10 = compositionSharedCache_copyAssetForAssetURL(*(a1 + 160), a2, a3, &value);
    if (v10)
    {
      v14 = v10;
      v13 = 0;
      v9 = value;
      goto LABEL_8;
    }

    FigSimpleMutexLock();
    v9 = value;
    CFDictionaryAddValue(*(a1 + 64), a2, value);
  }

  FigSimpleMutexUnlock();
  FigAssetGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v14 = v13(v12, @"assetProperty_FormatReader", a3, &v16);
    v13 = v16;
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_8:
  *a4 = v13;
  if (v9)
  {
    CFRelease(v9);
  }

  return v14;
}

uint64_t compositionSharedCache_copyAssetForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  cf = 0;
  Value = 0;
  v16 = 0;
  compositionSharedCache_copyAssetForAssetURLFromCache(a1, a2, &Value);
  v8 = Value;
  if (Value)
  {
    v9 = 0;
LABEL_18:
    v14 = 0;
    *a4 = v8;
    Value = 0;
    goto LABEL_19;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    v12 = FigAssetCreateWithURL(a3, a2, *(a1 + 16), *(a1 + 24), &Value);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_14:
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(*(a1 + 40), a2))
    {
      v9 = Value;
      Value = CFDictionaryGetValue(*(a1 + 40), a2);
      CFRetain(Value);
    }

    else
    {
      CFDictionarySetValue(*(a1 + 40), a2, Value);
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    v8 = Value;
    goto LABEL_18;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v14 = 4294954514;
    goto LABEL_10;
  }

  v12 = v11(v10, a2, 0, 0, *MEMORY[0x1E695E480], &v16);
  if (!v12)
  {
    v12 = FigFormatReaderCreateForStream(v16, a3, 0, &cf);
    if (!v12)
    {
      v13 = CFGetAllocator(cf);
      v12 = FigAssetCreateWithFormatReader(v13, cf, 0, 0, &Value);
      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_8:
  v14 = v12;
LABEL_10:
  if (Value)
  {
    CFRelease(Value);
  }

  v9 = 0;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t compositionSharedCache_copyAssetForAssetURLFromCache(uint64_t result, const void *a2, void *a3)
{
  v4 = a2;
  if (a2)
  {
    v5 = result;
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v5 + 40), v4);
    v4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    result = FigSimpleMutexUnlock();
  }

  *a3 = v4;
  return result;
}

void mutableComposition_makeIgnoredKeysForFormatDescriptionEquality()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E69600D0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E69600C8]);
  sIgnoredKeysForFormatDescriptionEquality = Mutable;
}

uint64_t compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(void *a1, int a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, uint64_t a6)
{
  cf = 0;
  FigSimpleMutexLock();
  v12 = a1[2];
  if (v12 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, v30);
    v15 = v14;
    v16 = 0;
    v17 = 0;
LABEL_11:
    v20 = 1;
    goto LABEL_12;
  }

  v13 = (a1[4] + 8);
  while (*(v13 - 1) != a2)
  {
    v13 += 21;
    if (!--v12)
    {
      goto LABEL_5;
    }
  }

  v18 = *v13;
  if (*v13 < 1)
  {
LABEL_10:
    v16 = 0;
    v17 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v19 = (v13[1] + 104);
  while ((*(v19 - 23) & 0x1D) != 1)
  {
    v19 += 27;
    if (!--v18)
    {
      goto LABEL_10;
    }
  }

  v16 = *(v19 - 1);
  v17 = *v19;
  if (v16)
  {
    CFRetain(*(v19 - 1));
  }

  v20 = 0;
  v15 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = 4294954775;
  }

  if ((v20 & 1) != 0 || v15)
  {
    goto LABEL_24;
  }

  v22 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v16, v17, a3, a5, &cf);
  v23 = cf;
  if (!v22)
  {
    FigTrackReaderGetFigBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v26)
    {
      v21 = 4294954514;
      if (!v23)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v22 = v26(v25, a4, a5, a6);
  }

  v21 = v22;
  if (v23)
  {
LABEL_23:
    CFRelease(v23);
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }

  return v21;
}

uint64_t compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(void *a1, int a2, unsigned int a3, uint64_t a4, const __CFAllocator *a5, CFNumberRef *a6)
{
  valuePtr = 0.0;
  v65 = 0;
  v63 = **&MEMORY[0x1E6960CC0];
  v62 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  allocator = v10;
  v13 = CFArrayCreateMutable(v10, 0, v11);
  FigSimpleMutexLock();
  v14 = a1[2];
  if (v14 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, v50);
LABEL_6:
    FigSimpleMutexUnlock();
    v16 = 4294954775;
    goto LABEL_7;
  }

  v15 = (a1[4] + 16);
  while (*(v15 - 3) != a2)
  {
    v15 += 21;
    if (!--v14)
    {
      goto LABEL_5;
    }
  }

  v51 = a5;
  v18 = *(v15 - 1);
  if (v18 >= 100)
  {
    v19 = 100;
  }

  else
  {
    v19 = *(v15 - 1);
  }

  if (v18 <= 0)
  {
    goto LABEL_6;
  }

  v52 = a1;
  theArray = Mutable;
  v49 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = *v15 + v20;
    if ((*(v24 + 12) & 0x1D) == 1)
    {
      v61 = *(v24 + 24);
      v25 = *(v24 + 96);
      v26 = *(v24 + 104);
      if (v22 && (v22 == v25 ? (v27 = v21 == v26) : (v27 = 0), v27))
      {
        v28 = CFArrayGetCount(v13) - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v28);
        memset(&time, 0, sizeof(time));
        CMTimeMakeFromDictionary(&rhs, ValueAtIndex);
        lhs = v61;
        CMTimeAdd(&time, &lhs, &rhs);
        rhs = time;
        v30 = CMTimeCopyAsDictionary(&rhs, allocator);
        CFArraySetValueAtIndex(v13, v28, v30);
        v31 = 0;
      }

      else
      {
        v34 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v52, *(v24 + 96), *(v24 + 104), a3, v51, &v65);
        if (v34)
        {
          v16 = v34;
          FigSimpleMutexUnlock();
          goto LABEL_48;
        }

        v31 = v65;
        CFArrayAppendValue(theArray, v65);
        time = v61;
        v30 = CMTimeCopyAsDictionary(&time, allocator);
        CFArrayAppendValue(v13, v30);
        v22 = v25;
        v21 = v26;
      }

      v32 = *v15 + v20;
      time = v63;
      v33 = *(v32 + 72);
      rhs.epoch = *(v32 + 88);
      *&rhs.value = v33;
      CMTimeAdd(&v63, &time, &rhs);
      if (v30)
      {
        CFRelease(v30);
      }

      if (v31)
      {
        CFRelease(v31);
        v65 = 0;
      }

      v23 = 1;
    }

    v20 += 108;
    --v19;
  }

  while (v19);
  FigSimpleMutexUnlock();
  if (!v23)
  {
    v16 = 4294954775;
LABEL_48:
    Mutable = theArray;
    goto LABEL_7;
  }

  Mutable = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v38 = 0.0;
LABEL_51:
    v61 = v63;
    valuePtr = v38 / CMTimeGetSeconds(&v61);
    v16 = 0;
    *v49 = CFNumberCreate(allocator, kCFNumberFloat64Type, &valuePtr);
  }

  else
  {
    v36 = Count;
    v37 = 0;
    v38 = 0.0;
    v56 = *MEMORY[0x1E6960C70];
    v39 = *(MEMORY[0x1E6960C70] + 16);
    while (1)
    {
      rhs.value = 0;
      *&v61.value = v56;
      v61.epoch = v39;
      CFArrayGetValueAtIndex(theArray, v37);
      v40 = CFArrayGetValueAtIndex(v13, v37);
      CMTimeMakeFromDictionary(&v61, v40);
      FigTrackReaderGetFigBaseObject();
      v42 = v41;
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v43)
      {
        v16 = 4294954514;
        goto LABEL_7;
      }

      v44 = v43(v42, a4, v51, &v62);
      if (v44)
      {
        break;
      }

      CFNumberGetValue(v62, kCFNumberFloat64Type, &rhs);
      v45 = *&rhs.value;
      time = v61;
      Seconds = CMTimeGetSeconds(&time);
      if (v62)
      {
        CFRelease(v62);
        v62 = 0;
      }

      v38 = v38 + v45 * Seconds;
      if (v36 == ++v37)
      {
        goto LABEL_51;
      }
    }

    v16 = v44;
  }

LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v16;
}

uint64_t composite_trackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 8);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 12);
  }

  return 0;
}

uint64_t composite_trackReader_CopySampleCursorService(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = CFRetain(*(DerivedStorage + 32));
  return 0;
}

void compositeSuper_editCursorService_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeSuper_editCursorService_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *DerivedStorage;
  v5 = *(*DerivedStorage + 16);
  if (v5 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 32);
    while (*(v6 + 4) != DerivedStorage[2])
    {
      v6 += 168;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeSuper FigEditCursorService %p>", a1);
  if (v6)
  {
    v8 = compositionTableTrack_CopyDebugDescription(v6);
    CFStringAppend(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = v3[2];
    v11 = bswap32(v3[3]);
    CFStringAppendFormat(Mutable, 0, @"{ trackID %d, mediaType %.4s, table %p, ", v9, &v11, v4);
    CFStringAppend(Mutable, @"trackID not found in table");
    CFStringAppendFormat(Mutable, 0, @" }");
  }

  return Mutable;
}

void compositeSuper_editCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *compositeSuper_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeSuper FigEditCursor %p>{ service %p, editIndex %d }", a1, *DerivedStorage, DerivedStorage[1]);
  return Mutable;
}

uint64_t compositeSuper_editCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v4;
  FigSimpleMutexLock();
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = (*(v5 + 32) + 8);
    while (*(v7 - 1) != *(v4 + 8))
    {
      v7 += 21;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    v9 = *(DerivedStorage + 8) + a2;
    result = 4294954776;
    if (v9 < 0)
    {
      v9 = 0;
    }

    else if (v9 < v8)
    {
      result = 0;
    }

    else
    {
      v9 = v8 - 1;
      result = 4294954776;
    }
  }

  else
  {
    v9 = 0;
    result = 4294954775;
  }

  *(DerivedStorage + 8) = v9;
  return result;
}

void compositeProxy_editCursorService_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeProxy_editCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeProxy FigEditCursorService %p>", a1);
  return Mutable;
}

uint64_t compositionTable_copyConcreteTrackReaderForEpoch(uint64_t a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  FigSimpleMutexLock();
  v10 = CFDictionaryGetValue(*(a1 + 152), a2);
  value = v10;
  if (!v10)
  {
    if (a2 < 1 || *(a1 + 144) <= a2)
    {
      FigSimpleMutexUnlock();
      v14 = 0;
    }

    else
    {
      v13 = *(a1 + 136);
      v14 = *(v13 + 16 * a2);
      if (v14)
      {
        CFRetain(*(v13 + 16 * a2));
        v13 = *(a1 + 136);
      }

      v15 = *(v13 + 16 * a2 + 8);
      FigSimpleMutexUnlock();
      if (v14)
      {
        v16 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v14, v15, a3, a4, &value);
        if (v16)
        {
          v12 = v16;
          goto LABEL_14;
        }

        FigSimpleMutexLock();
        v17 = value;
        CFDictionaryAddValue(*(a1 + 152), a2, value);
        FigSimpleMutexUnlock();
        if (v17)
        {
          v12 = 0;
          *a5 = v17;
          goto LABEL_14;
        }

        v18 = 0;
LABEL_13:
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, value, v23);
        v12 = v19;
        if (v18)
        {
          return v12;
        }

LABEL_14:
        CFRelease(v14);
        return v12;
      }
    }

    v18 = 1;
    goto LABEL_13;
  }

  v11 = v10;
  CFRetain(v10);
  FigSimpleMutexUnlock();
  v12 = 0;
  *a5 = v11;
  return v12;
}

void compositeProxy_editCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }
}

__CFString *compositeProxy_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeProxy FigEditCursor %p>{ concreteEditCursor %p, epoch %d }", a1, *(DerivedStorage + 8), *(DerivedStorage + 16));
  return Mutable;
}

uint64_t compositeProxy_editCursor_Step(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

void compositeSimple_editCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeSimple_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeSimple FigEditCursor %p>{ epoch %d }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t compositeSimple_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960CC0];
  v5 = *MEMORY[0x1E6960CC0];
  *(a2 + 48) = *MEMORY[0x1E6960CC0];
  v6 = *(v4 + 16);
  *(a2 + 64) = v6;
  v7 = MEMORY[0x1E6960C88];
  v8 = *MEMORY[0x1E6960C88];
  *(a2 + 72) = *MEMORY[0x1E6960C88];
  v9 = *(v7 + 16);
  *(a2 + 88) = v9;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 40) = v9;
  *(a2 + 24) = v8;
  v10 = *(DerivedStorage + 8);
  *(a2 + 64) = v10;
  *(a2 + 16) = v10;
  return 0;
}

void compositeProxy_sampleCursorService_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

uint64_t compositeProxy_createProxySampleCursor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 72) != 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v3 |= 2u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v3 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 144))
  {
    v3 |= 8u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    v3 |= 0x10u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v3 |= 0x20u;
  }

  v5[1] = 0;
  v5[0] = v3;
  if (sCompositeProxySampleCursorVTableSetupOnce != -1)
  {
    compositeProxy_createProxySampleCursor_cold_1();
  }

  dispatch_sync_f(sCompositeProxySampleCursorVTableQueue, v5, compositeProxy_SampleCursor_getVTableWithOptionalMethodsWork);
  FigSampleCursorGetClassID();
  return CMDerivedObjectCreate();
}

CFMutableDictionaryRef compositeProxySampleCursorSetupOnce()
{
  sCompositeProxySampleCursorVTableQueue = dispatch_queue_create("com.apple.coremedia.compositeproxysamplecursor.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sCompositeProxySampleCursorVTableDictionary = result;
  return result;
}

void compositeProxy_SampleCursor_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sCompositeProxySampleCursorVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_19;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0xF0uLL, 0x10C004098B2CDEBuLL);
  __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(v4, &kCompositeProxy_SampleCursor_FigSampleCursorClass);
  if ((v2 & 2) != 0)
  {
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[8] = 0;
    if (v2)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  v4[9] = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    if ((v2 & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[10] = 0;
  if ((v2 & 8) != 0)
  {
LABEL_6:
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v4[19] = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  v4[18] = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    v4[14] = 0;
  }

LABEL_9:
  *Value = 0;
  Value[1] = &kCompositeProxy_SampleCursor_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sCompositeProxySampleCursorVTableDictionary, v2, Value);
LABEL_19:
  *(a1 + 1) = Value;
}

uint64_t compositeProxy_sampleCursor_Copy(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v16 = 0;
  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    ProxySampleCursor = 4294954514;
    goto LABEL_6;
  }

  v7 = v6(v5, &v16);
  v8 = v16;
  if (v7)
  {
    ProxySampleCursor = v7;
    if (v16)
    {
LABEL_10:
      CFRelease(v8);
    }
  }

  else
  {
    v9 = CFGetAllocator(a1);
    ProxySampleCursor = compositeProxy_createProxySampleCursor(v8, v9, &cf);
    if (!ProxySampleCursor)
    {
      v11 = CMBaseObjectGetDerivedStorage();
      *v11 = *DerivedStorage;
      FigAtomicIncrement32();
      v12 = v16;
      *(v11 + 8) = *(DerivedStorage + 8);
      v13 = *(DerivedStorage + 24);
      *(v11 + 16) = v12;
      *(v11 + 24) = v13;
      *(v11 + 32) = *(DerivedStorage + 32);
      *a2 = cf;
      return ProxySampleCursor;
    }

    v8 = v16;
    if (v16)
    {
      goto LABEL_10;
    }
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursor_CompareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  v5 = *(v3 + 24);
  if (v4 < v5)
  {
    return -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  v7 = *(DerivedStorage + 16);
  v8 = *(v3 + 16);
  v9 = *(CMBaseObjectGetVTable() + 16);
  if (v9)
  {
    v10 = v9;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
LABEL_12:
  if (v10 != v12 || !*(v10 + 32))
  {
    return 0;
  }

  v13 = *(v12 + 32);

  return v13(v7, v8);
}

uint64_t compositeProxy_sampleCursor_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t compositeProxy_sampleCursor_GetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t compositeProxy_sampleCursor_GetMPEG2FrameType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t compositeProxy_sampleCursor_TestReorderingBoundary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    if (a3 == 1)
    {
      return v6 > v7;
    }

    if (!a3)
    {
      return v6 < v7;
    }
  }

  v9 = *(DerivedStorage + 16);
  v10 = *(v5 + 16);
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = v11;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = v12;
  v13 = *(CMBaseObjectGetVTable() + 16);
  v12 = v15;
LABEL_10:
  if (v12 != v13)
  {
    return 0;
  }

  v14 = *(v12 + 80);
  if (!v14)
  {
    return 0;
  }

  return v14(v9, v10, a3);
}

uint64_t compositeProxy_sampleCursor_StepByDecodeTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t compositeProxy_sampleCursor_StepByPresentationTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t compositeProxy_sampleCursor_CopySampleLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t compositeProxy_sampleCursor_CopyChunkDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(CMBaseObjectGetDerivedStorage() + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(v17, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t compositeProxy_sampleCursor_StepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t compositeProxy_sampleCursor_StepInPresentationOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

void compositeProxy_sampleCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }
}

CFStringRef compositeProxy_sampleCursor_CopyDebugDescription(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 16);

  return CFCopyDescription(v1);
}

uint64_t compositeProxy_sampleCursor_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    compositeProxy_sampleCursor_CopyProperty_cold_2(&v18);
    return LODWORD(v18.start.value);
  }

  if (!a4)
  {
    compositeProxy_sampleCursor_CopyProperty_cold_1(&v18);
    return LODWORD(v18.start.value);
  }

  v8 = DerivedStorage;
  v9 = FigCFEqual();
  FigSampleCursorGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    if (v12)
    {
      v13 = v12(v11, a2, a3, &v19);
      v14 = v19;
      if (v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = v19 == 0;
      }

      if (!v15)
      {
        memset(&v18, 0, sizeof(v18));
        CMTimeRangeMakeFromDictionary(&v18, v19);
        if (!v18.start.epoch)
        {
          v18.start.epoch = *(v8 + 24);
        }

        v17 = v18;
        *a4 = CMTimeRangeCopyAsDictionary(&v17, a3);
        v14 = v19;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      return v13;
    }

    return 4294954514;
  }

  if (!v12)
  {
    return 4294954514;
  }

  return v12(v11, a2, a3, a4);
}

uint64_t compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  if (a2 < a3)
  {
    v8 = a2;
    v10 = 168 * a2;
    v11 = -1;
    while (1)
    {
      v12 = *(a1 + 32);
      if (*(v12 + v10) == a5)
      {
        result = v8;
        if (!a4)
        {
          goto LABEL_5;
        }

        if (!compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(a1, v12 + v10))
        {
          break;
        }
      }

LABEL_6:
      ++v8;
      v10 += 168;
      result = v11;
      if (a3 == v8)
      {
        return result;
      }
    }

    result = v8;
LABEL_5:
    v11 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return -1;
}

void compositionTable_addTrack(uint64_t a1, int a2, int a3, int *a4, uint64_t *a5)
{
  if (a3)
  {
    v9 = a3;
    v10 = *(a1 + 16);
    if (v10 >= 1)
    {
      v11 = (*(a1 + 32) + 4);
      v12 = *(a1 + 16);
      while (1)
      {
        v13 = *v11;
        v11 += 42;
        if (v13 == a3)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_9;
        }
      }

      v9 = *(a1 + 24);
    }
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 16);
  }

LABEL_9:
  *(a1 + 16) = v10 + 1;
  v14 = malloc_type_calloc(0xA8uLL, v10 + 1, 0x8DB5B262uLL);
  v15 = v14;
  v16 = *(a1 + 32);
  if (v16)
  {
    memcpy(v14, v16, 168 * v10);
    free(*(a1 + 32));
  }

  *(a1 + 32) = v15;
  v17 = &v15[168 * v10];
  *v17 = a2;
  *(v17 + 1) = v9;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v17[160] = 1;
  *(v17 + 14) = 0;
  if (v9 >= *(a1 + 24))
  {
    *(a1 + 24) = v9 + 1;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = v10;
  }
}

uint64_t mutableComposition_postPossiblyDeferredTracksChangedNotification(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 16))
  {
    *(result + 17) = 1;
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t compositionTable_discardUnusedAssets(uint64_t a1)
{
  FigSimpleMutexLock();
  Count = CFDictionaryGetCount(*(a1 + 64));
  if (Count <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_38;
  }

  v3 = Count;
  v4 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(*(a1 + 64), v4, 0);
  for (i = 0; i != v3; ++i)
  {
    v6 = v4[i];
    if (v6)
    {
      CFRetain(v6);
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  for (j = 0; j != v3; ++j)
  {
    if (CFBagContainsValue(*(a1 + 40), v4[j]))
    {
      v8 = v4[j];
      if (v8)
      {
        CFRelease(v8);
        v4[j] = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  for (k = 0; k != v3; ++k)
  {
    v10 = v4[k];
    if (v10)
    {
      CFDictionaryRemoveValue(*(a1 + 64), v10);
    }
  }

  FigSimpleMutexUnlock();
  for (m = 0; m != v3; ++m)
  {
    v12 = v4[m];
    if (v12)
    {
      FigSimpleMutexLock();
      v13 = *(a1 + 144);
      if (v13 >= 2)
      {
        v14 = 1;
        do
        {
          v15 = *(*(a1 + 136) + 16 * v14);
          if (v15)
          {
            if (CFEqual(v15, v12))
            {
              v16 = *(a1 + 136);
              v17 = *(v16 + 16 * v14);
              if (v17)
              {
                CFRelease(v17);
                v16 = *(a1 + 136);
                *(v16 + 16 * v14) = 0;
              }

              *(v16 + 16 * v14 + 8) = 0;
              Value = CFDictionaryGetValue(*(a1 + 152), v14);
              if (Value)
              {
                v19 = Value;
                CFRetain(Value);
                CFDictionaryRemoveValue(*(a1 + 152), v14);
                FigSimpleMutexUnlock();
                CFRelease(v19);
              }

              else
              {
                FigSimpleMutexUnlock();
              }

              ++v14;
              FigSimpleMutexLock();
              v13 = *(a1 + 144);
              continue;
            }

            v13 = *(a1 + 144);
          }

          ++v14;
        }

        while (v14 < v13);
      }

      FigSimpleMutexUnlock();
    }
  }

  for (n = 0; n != v3; ++n)
  {
    v21 = v4[n];
    if (v21)
    {
      CFRelease(v21);
      v4[n] = 0;
    }
  }

  free(v4);
LABEL_38:
  v22 = *(a1 + 160);
  FigSimpleMutexLock();
  v23 = CFDictionaryGetCount(*(v22 + 40));
  if (v23 >= 1)
  {
    v24 = v23;
    v25 = 8 * v23;
    v26 = malloc_type_malloc(8 * v23, 0x6004044C4A2DFuLL);
    v27 = malloc_type_malloc(v25, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(*(v22 + 40), v26, v27);
    for (ii = 0; ii != v24; ++ii)
    {
      if (CFGetRetainCount(v27[ii]) == 1)
      {
        CFDictionaryRemoveValue(*(v22 + 40), v26[ii]);
      }
    }

    free(v26);
    free(v27);
  }

  return FigSimpleMutexUnlock();
}

double compositionEditSegment_validateSegments(uint64_t a1, uint64_t a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    if (a1)
    {
      v5 = a2;
      if (a3)
      {
        *&v27.start.value = *(a1 + 48);
        v27.start.epoch = *(a1 + 64);
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&v27.start, &time2))
        {
          emitter = fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", 2028, v3);
        }
      }

      v8 = v5 - 1;
      if (v5 != 1)
      {
        v9 = a1 + 156;
        do
        {
          memset(&v28, 0, sizeof(v28));
          v10 = *(v9 - 92);
          *&v27.start.value = *(v9 - 108);
          *&v27.start.epoch = v10;
          *&v27.duration.timescale = *(v9 - 76);
          CMTimeRangeGetEnd(&v28, &v27);
          v34 = *v9;
          v11 = *(v9 + 12);
          v35 = *(v9 + 8);
          v12 = *(v9 + 16);
          value = v28.value;
          flags = v28.flags;
          timescale = v28.timescale;
          epoch = v28.epoch;
          if ((v11 & 0x1F) != 3 && (v28.flags & 0x1F) != 3 || (memset(&v27, 0, 24), v15 = *v9, rhs.epoch = v28.epoch, lhs.value = v15, lhs.timescale = *(v9 + 8), lhs.flags = v11, lhs.epoch = v12, rhs.value = v28.value, rhs.timescale = v28.timescale, rhs.flags = v28.flags, CMTimeSubtract(&time2, &lhs, &rhs), CMTimeAbsoluteValue(&v27.start, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = v27.start, CMTimeCompare(&lhs, &time2) > 0))
          {
            v27.start.value = v34;
            v27.start.timescale = v35;
            v27.start.flags = v11;
            v27.start.epoch = v12;
            time2.value = value;
            time2.timescale = timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            if (CMTimeCompare(&v27.start, &time2))
            {
              v23 = fig_log_get_emitter();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954516, "<<<< CompositeReader >>>>", 2033, v3);
            }
          }

          v9 += 108;
          --v8;
        }

        while (v8);
      }

      v16 = (a1 + 64);
      v17 = v5;
      do
      {
        if (*v16 || v16[3] || *(v16 - 6) || *(v16 - 3))
        {
          v22 = fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954516, "<<<< CompositeReader >>>>", 2042, v3);
        }

        v16 = (v16 + 108);
        --v17;
      }

      while (v17);
      for (i = (a1 + 96); ; i = (i + 108))
      {
        v19 = *i;
        if ((*(i - 21) & 0x1D) == 1)
        {
          if (!v19)
          {
            v25 = fig_log_get_emitter();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954516, "<<<< CompositeReader >>>>", 2050, v3);
          }

          v20 = CFURLGetTypeID();
          if (v20 != CFGetTypeID(*i))
          {
            v26 = fig_log_get_emitter();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 4294954516, "<<<< CompositeReader >>>>", 2052, v3);
          }
        }

        else if (v19)
        {
          v24 = fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954516, "<<<< CompositeReader >>>>", 2057, v3);
        }

        if (!--v5)
        {
          return result;
        }
      }
    }

    v21 = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954516, "<<<< CompositeReader >>>>", 2024, v3);
  }

  return result;
}

void compositionEditSegment_copySegmentsAndAddURLsToBag(CFTypeRef *a1, const void *a2, uint64_t a3, __CFBag *a4)
{
  v5 = a3;
  memcpy(a1, a2, 108 * a3);
  if (v5 >= 1)
  {
    v7 = a1 + 12;
    do
    {
      if ((*(v7 - 21) & 0x1D) == 1)
      {
        if (*v7)
        {
          CFRetain(*v7);
        }

        if (a4)
        {
          if (*v7)
          {
            CFBagAddValue(a4, *v7);
          }
        }
      }

      else
      {
        *v7 = 0;
      }

      v7 = (v7 + 108);
      --v5;
    }

    while (v5);
  }
}

uint64_t compositionEditSegment_combineEditSegmentsIfPossible(uint64_t a1, uint64_t a2, uint64_t a3, __CFBag *a4)
{
  v45 = *(a1 + 72);
  v46 = *(a1 + 88);
  v44 = *(a2 + 72);
  v42 = *(a1 + 24);
  v43 = *(a1 + 40);
  v41 = *(a2 + 24);
  *&time1.start.value = *(a1 + 72);
  time1.start.epoch = *(a1 + 88);
  time2 = *(a1 + 24);
  v8 = CMTimeCompare(&time1.start, &time2);
  time1.start = v44;
  time2 = v41;
  v9 = CMTimeCompare(&time1.start, &time2);
  time2 = **&MEMORY[0x1E6960CC0];
  v39 = time2;
  v10 = *(a1 + 64);
  *&time1.start.value = *(a1 + 48);
  *&time1.start.epoch = v10;
  *&time1.duration.timescale = *(a1 + 80);
  CMTimeRangeGetEnd(&rhs, &time1);
  *&time1.start.value = *(a2 + 48);
  time1.start.epoch = *(a2 + 64);
  if (CMTimeCompare(&rhs, &time1.start))
  {
    return 0;
  }

  v12 = *(a1 + 96);
  v13 = *(a2 + 96);
  if (!v12)
  {
    if (!v13)
    {
      *&time1.start.value = v45;
      time1.start.epoch = v46;
      rhs = v44;
      CMTimeAdd(&time2, &time1.start, &rhs);
      v28 = *(a1 + 92);
      v29 = *(a1 + 48);
      v30 = *(a1 + 80);
      *(a3 + 64) = *(a1 + 64);
      *(a3 + 80) = v30;
      *(a3 + 92) = v28;
      v31 = *(a1 + 16);
      v32 = *(a1 + 32);
      *a3 = *a1;
      *(a3 + 16) = v31;
      *(a3 + 32) = v32;
      *(a3 + 48) = v29;
      *(a3 + 72) = time2;
      return 1;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  result = CFEqual(v12, v13);
  if (result)
  {
    if (*(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }

    v14 = *(a1 + 16);
    *&time1.start.value = *a1;
    *&time1.start.epoch = v14;
    *&time1.duration.timescale = *(a1 + 32);
    CMTimeRangeGetEnd(&rhs, &time1);
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    v15 = CMTimeCompare(&rhs, &time1.start);
    result = 0;
    if (!v15 && (v8 != 0) == (v9 != 0))
    {
      if (!v8 || !v9 || (*&time1.start.value = v45, time1.start.epoch = v46, Seconds = CMTimeGetSeconds(&time1.start), time1.start = v41, v17 = Seconds * CMTimeGetSeconds(&time1.start), time1.start = v44, v18 = CMTimeGetSeconds(&time1.start), *&time1.start.value = v42, time1.start.epoch = v43, v17 == v18 * CMTimeGetSeconds(&time1.start)))
      {
        *&time1.start.value = v45;
        time1.start.epoch = v46;
        rhs = v44;
        CMTimeAdd(&time2, &time1.start, &rhs);
        *&time1.start.value = v42;
        time1.start.epoch = v43;
        rhs = v41;
        CMTimeAdd(&v39, &time1.start, &rhs);
        *&v38[28] = *(a1 + 92);
        v19 = *(a1 + 80);
        *v38 = *(a1 + 64);
        *&v38[16] = v19;
        v20 = *(a1 + 16);
        *&time1.start.value = *a1;
        *&time1.start.epoch = v20;
        v37 = *(a1 + 48);
        *&v38[8] = time2;
        time1.duration = v39;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        v21 = *MEMORY[0x1E6960C70];
        v22 = *(MEMORY[0x1E6960C70] + 16);
        *(a1 + 16) = v22;
        *a1 = v21;
        if ((*(a2 + 12) & 0x1D) == 1)
        {
          if (!a4)
          {
            goto LABEL_17;
          }

          v23 = *(a2 + 96);
          if (v23)
          {
            v33 = v21;
            CFBagRemoveValue(a4, v23);
            v21 = v33;
LABEL_17:
            v24 = *(a2 + 96);
            if (v24)
            {
              v34 = v21;
              CFRelease(v24);
              v21 = v34;
              *(a2 + 96) = 0;
            }
          }
        }

        *(a2 + 104) = 0;
        *a2 = v21;
        *(a2 + 16) = v22;
        v25 = *&v38[16];
        *(a3 + 64) = *v38;
        *(a3 + 80) = v25;
        *(a3 + 92) = *&v38[28];
        v26 = *&time1.start.epoch;
        *a3 = *&time1.start.value;
        *(a3 + 16) = v26;
        v27 = v37;
        result = 1;
        *(a3 + 32) = *&time1.duration.timescale;
        *(a3 + 48) = v27;
        return result;
      }

      return 0;
    }
  }

  return result;
}

CFArrayRef mutableComposition_CreateReconstitutedMetadataProperty(const __CFDictionary *a1, CFAllocatorRef allocator)
{
  if (a1 && (Count = CFDictionaryGetCount(a1), Count >= 1))
  {
    v5 = Count;
    theArray = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      v6 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      v7 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      v8 = 7315;
      if (v6 && v7)
      {
        CFDictionaryGetKeysAndValues(a1, v6, v7);
        v9 = 0;
        while (1)
        {
          v10 = v6[v9];
          v11 = v7[v9];
          if (v10)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              v8 = 7326;
              break;
            }

            v14 = Mutable;
            CFDictionarySetValue(Mutable, @"format", v10);
            CFDictionarySetValue(v14, @"items", v11);
            CFArrayAppendValue(theArray, v14);
            CFRelease(v14);
          }

          if (v5 == ++v9)
          {
            free(v6);
            free(v7);
            return theArray;
          }
        }
      }

      mutableComposition_CreateReconstitutedMetadataProperty_cold_1(v8, theArray);
    }

    else
    {
      mutableComposition_CreateReconstitutedMetadataProperty_cold_2();
    }

    return 0;
  }

  else
  {
    v16 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(allocator, 0, 0, v16);
  }
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFArrayGetTypeID())
    {
      compositionTableTrack_setFormatDescriptionReplacementTable_cold_1(&v23);
      return v23;
    }

    v22 = a1;
    v5 = *MEMORY[0x1E695E480];
    Count = CFArrayGetCount(cf);
    Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
    if (CFArrayGetCount(cf) < 1)
    {
      MutableCopy = 0;
LABEL_19:
      v20 = *(v22 + 112);
      *(v22 + 112) = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v19 = 0;
      if (!MutableCopy)
      {
        goto LABEL_25;
      }
    }

    else
    {
      MutableCopy = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
        if (!ValueAtIndex || (v11 = ValueAtIndex, v12 = CFGetTypeID(ValueAtIndex), v12 != CFDictionaryGetTypeID()))
        {
          compositionTableTrack_setFormatDescriptionReplacementTable_cold_4(&v23);
          goto LABEL_31;
        }

        Value = CFDictionaryGetValue(v11, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
        v14 = CFDictionaryGetValue(v11, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
        if (!Value || (v15 = v14, v16 = CFGetTypeID(Value), v16 != CMFormatDescriptionGetTypeID()))
        {
          compositionTableTrack_setFormatDescriptionReplacementTable_cold_3(&v23);
          goto LABEL_31;
        }

        if (!v15)
        {
          break;
        }

        v17 = CFGetTypeID(v15);
        if (v17 != CMFormatDescriptionGetTypeID())
        {
          break;
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v11);
        CFArrayAppendValue(Mutable, MutableCopy);
        if (++v9 >= CFArrayGetCount(cf))
        {
          goto LABEL_19;
        }
      }

      compositionTableTrack_setFormatDescriptionReplacementTable_cold_2(&v23);
LABEL_31:
      v19 = v23;
      if (!MutableCopy)
      {
        goto LABEL_25;
      }
    }

    CFRelease(MutableCopy);
LABEL_25:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v19;
  }

  v18 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  return 0;
}

double compositionTableTrack_updateTrackStartTimes(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 8) > a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = a2;
    v8 = 108 * a2 + 48;
    do
    {
      v9 = *(a1 + 16) + v8;
      v10 = *a3;
      *(v9 + 16) = *(a3 + 2);
      *v9 = v10;
      v11 = (*(a1 + 16) + v8);
      v12 = *v11;
      v13 = v11[2];
      *&v15.start.epoch = v11[1];
      *&v15.duration.timescale = v13;
      *&v15.start.value = v12;
      CMTimeRangeGetEnd(&v16, &v15);
      result = *&v16.value;
      *a3 = v16;
      ++v6;
      v8 += 108;
    }

    while (v6 < *(a1 + 8));
  }

  return result;
}

unint64_t compositionTableTrack_findEditSegmentByTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return -1;
  }

  if (v2 >= 2)
  {
    v5 = 0;
    v6 = v2 - 1;
    while (1)
    {
      v7 = (v6 + v5) >> 1;
      v8 = *(a1 + 16) + 108 * v7;
      v15 = *(v8 + 48);
      memset(&v14, 0, sizeof(v14));
      v9 = *(v8 + 48);
      v10 = *(v8 + 80);
      *&range.start.epoch = *(v8 + 64);
      *&range.duration.timescale = v10;
      *&range.start.value = v9;
      CMTimeRangeGetEnd(&v14, &range);
      *&range.start.value = *a2;
      range.start.epoch = *(a2 + 16);
      v12 = v14;
      if (CMTimeCompare(&range.start, &v12) < 1)
      {
        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        v12 = v14;
        if (!CMTimeCompare(&range.start, &v12))
        {
          return v7 + 1;
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        v12 = v15;
        if ((CMTimeCompare(&range.start, &v12) & 0x80000000) == 0)
        {
          return (v6 + v5) >> 1;
        }

        v6 = v7 - 1;
      }

      else
      {
        v5 = v7 + 1;
      }

      if (v5 >= v6)
      {
        return v5;
      }
    }
  }

  return 0;
}

void tableTrack_InsertEmptyEditsInTracks(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, CMTime *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 >= 1)
  {
    v10 = *(DerivedStorage + 8);
    v11 = MEMORY[0x1E6960CC0];
    do
    {
      v12 = *a2++;
      v13 = *(v10 + 32) + 168 * v12;
      if (*(v13 + 8) >= 1)
      {
        v20 = *v11;
        v14 = *(v13 + 8);
        if (v14 >= 1)
        {
          v15 = *(v13 + 16) + 108 * v14;
          v16 = *(v15 - 60);
          v17 = *(v15 - 28);
          *&range.start.epoch = *(v15 - 44);
          *&range.duration.timescale = v17;
          *&range.start.value = v16;
          CMTimeRangeGetEnd(&v20, &range);
        }

        *&range.start.value = *a4;
        range.start.epoch = *(a4 + 16);
        v19 = v20;
        if (CMTimeCompare(&range.start, &v19) < 0)
        {
          *&range.start.value = *a4;
          range.start.epoch = *(a4 + 16);
          v19 = *a5;
          compositionTable_insertEmptyTrackSegment(v10, v13, &range, &v19);
          if (v18)
          {
            break;
          }
        }
      }

      --a3;
    }

    while (a3);
  }
}

void mutableComposition_addAssetsForURLsFromCompositionForSegments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 8);
  v11 = *(v9 + 8);
  v15 = 0;
  if (a1 != a2 && a4 >= 1)
  {
    v12 = (a3 + 96);
    do
    {
      if ((*(v12 - 21) & 0x1D) == 1)
      {
        v13 = *v12;
        if (*v12)
        {
          compositionSharedCache_copyAssetForAssetURLFromCache(*(v11 + 160), *v12, &v15);
          v14 = v15;
          if (v15)
          {
            compositionTable_addAssetForURL(v10, v13, v15);
            CFRelease(v14);
            v15 = 0;
          }
        }
      }

      v12 = (v12 + 108);
      --a4;
    }

    while (a4);
  }
}

CMTime *compositionEditSegment_adjustSegmentStartTimes(CMTime *result, uint64_t a2, CMTime *a3)
{
  v7 = *a3;
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = result + 2;
    do
    {
      *v4 = v7;
      v5 = *&v4->epoch;
      *&v6.start.value = *&v4->value;
      *&v6.start.epoch = v5;
      *&v6.duration.timescale = *&v4[1].timescale;
      result = CMTimeRangeGetEnd(&v7, &v6);
      v4 = (v4 + 108);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t compositionTable_addAssetForURL(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 160);
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(v6 + 40), a2))
  {
    CFDictionarySetValue(*(v6 + 40), a2, a3);
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    CFDictionarySetValue(*(a1 + 64), a2, a3);
  }

  return FigSimpleMutexUnlock();
}

__n128 OUTLINED_FUNCTION_9_47@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 112) = *a1;
  *(v1 - 96) = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_45(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t *a1)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, CMTime *time2, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 time2a, uint64_t time2_16, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t time1a, int time1_8, int time1_12, uint64_t time1_16)
{
  time1a = *(v37 - 104);
  time1_8 = *(v37 - 96);
  time1_12 = v35;
  time1_16 = v36;
  time2a = *(v37 - 128);
  time2_16 = *(v37 - 112);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_34_20@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, __n128 time2a, uint64_t time2_16, uint64_t a7, __int128 time1a, uint64_t time1_16)
{
  time1a = *v9;
  time1_16 = *(v9 + 16);
  time2a = a2;
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

Float64 OUTLINED_FUNCTION_35_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, int time_8, int time_12, uint64_t time_16, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  timea = a21;
  time_8 = a22;
  time_12 = v22;
  time_16 = a11;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_36_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 + 8) = *(v11 + 8);
  *(v12 + 16) = *(v11 + 16);
  *v10 = a10;
}

void OUTLINED_FUNCTION_41_18()
{
  *(v3 - 184) = *(v3 - 112);
  *(v3 - 180) = v1;
  *(v2 + 16) = v0;
}

uint64_t OUTLINED_FUNCTION_42_18@<X0>(__int128 a1@<0:X4, 8:X5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  *(v11 - 160) = a7;
  *(v11 - 144) = v10;

  return CMTimeCompare(&time1a, (v11 - 160));
}

double OUTLINED_FUNCTION_51_17()
{
  result = 0.0;
  *(v0 + 92) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_11(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);

  return compositionEditSegment_combineEditSegmentsIfPossible(a2 - 108, a2, a2 - 108, v4);
}

uint64_t OUTLINED_FUNCTION_58_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *time2, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, __int128 time2a, uint64_t time2_16)
{
  time2a = a16;
  time2_16 = v20;

  return CMTimeCompare((v21 - 112), &time2a);
}

CMTime *OUTLINED_FUNCTION_86_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 rangea, __n128 range_16, __n128 range_32, uint64_t a12, uint64_t a13, CMTimeRange *range, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __n128 rangeb, __n128 range_16a, __n128 range_32a)
{
  range_16a = a10;
  range_32a = a11;
  rangeb = a9;

  return CMTimeRangeGetEnd(&a18, &rangeb);
}

CMTime *OUTLINED_FUNCTION_87_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *rhs, uint64_t a13, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a8, &a2, &rhsa);
}

CMTime *OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 rangea, __n128 range_16, __n128 range_32, CMTimeRange *range, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __n128 rangeb, __n128 range_16a, __n128 range_32a)
{
  range_16a = a10;
  range_32a = a11;
  rangeb = a9;

  return CMTimeRangeGetEnd(&a18, &rangeb);
}

uint64_t RegisterFigMetadataConverterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataConverterGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataConverterGetClassID_sRegisterFigMetadataConverterBaseTypeOnce, RegisterFigMetadataConverterBaseType);

  return CMBaseClassGetCFTypeID();
}

void FigMetadataCreateConverter(CFTypeRef cf1, const void *a2, const __CFDictionary *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a5)
  {
    FigMetadataCreateConverter_cold_2(&v13);
    return;
  }

  if (!cf1 || !a2)
  {
    FigMetadataCreateConverter_cold_1(&v12);
    return;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta") || CFEqual(cf1, @"org.mp4ra") || CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    if (CFEqual(a2, @"com.apple.quicktime.udta") || CFEqual(a2, @"org.mp4ra") || CFEqual(a2, @"com.apple.quicktime.mdta"))
    {

      FigMetadataConverterCreateForQuickTime(a4, cf1, a2, a3, a5);
      return;
    }

    v11 = a2;
  }

  else
  {
    if (!CFEqual(cf1, @"com.apple.itunes"))
    {
      goto LABEL_23;
    }

    if (CFEqual(a2, @"com.apple.quicktime.udta") || CFEqual(a2, @"com.apple.quicktime.mdta") || CFEqual(a2, @"org.mp4ra"))
    {
      goto LABEL_20;
    }

    v11 = cf1;
  }

  if (CFEqual(v11, @"com.apple.itunes"))
  {
LABEL_20:

    FigMetadataConverterCreateForQuickTimeToFromiTunes(a4, cf1, a2, a3, a5);
    return;
  }

LABEL_23:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954814, "(Fig)", 125, v5);
}

uint64_t registerFigPartialSampleTableBrokerType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableBrokerID = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (FigPartialSampleTableBrokerGetTypeID_sRegisterFigPartialSampleTableBrokerTypeOnce != -1)
    {
      FigPartialSampleTableBrokerCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v5[3] = Mutable;
      if (Mutable)
      {
        v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        v5[4] = v7;
        if (v7)
        {
          v8 = FigSimpleMutexCreate();
          v5[2] = v8;
          if (v8)
          {
            result = 0;
            *a2 = v5;
            return result;
          }

          v10 = 253;
        }

        else
        {
          v10 = 250;
        }
      }

      else
      {
        v10 = 247;
      }

      FigPartialSampleTableBrokerCreate_cold_2(v10, v5, &v11);
      return v11;
    }

    else
    {
      FigPartialSampleTableBrokerCreate_cold_3(&v12);
      return v12;
    }
  }

  else
  {
    FigPartialSampleTableBrokerCreate_cold_4(&v13);
    return v13;
  }
}

uint64_t FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v20.start.value = *MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 32);
  *&v20.start.epoch = v3;
  *&v20.duration.timescale = v4;
  if ((*(a2 + 12) & 0x1D) != 1)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_1(&range);
    return LODWORD(range.start.value);
  }

  if ((*(a2 + 36) & 0x1D) != 1)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (!a3)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_3(&range);
    return LODWORD(range.start.value);
  }

  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    while (1)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        v11 = 0;
LABEL_16:
        *a3 = v11;
        FigSimpleMutexUnlock();
        return 0;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), i);
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v10)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), i);
    }

    v11 = v10;
    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v10, &v20, 0);
    if (DecodeTimeRange)
    {
      break;
    }

    v13 = *(a2 + 16);
    *&range.start.value = *a2;
    *&range.start.epoch = v13;
    *&range.duration.timescale = *(a2 + 32);
    CMTimeRangeGetEnd(&time2.start, &range);
    *&range.start.value = *&v20.start.value;
    range.start.epoch = v20.start.epoch;
    if (CMTimeCompare(&range.start, &time2.start) > 0)
    {
      break;
    }

    range = v20;
    v14 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v14;
    *&time2.duration.timescale = *(a2 + 32);
    if (CMTimeRangeContainsTimeRange(&range, &time2))
    {
      range = v20;
      CMTimeRangeGetEnd(&time2.start, &range);
      v15 = *(a2 + 16);
      *&range.start.value = *a2;
      *&range.start.epoch = v15;
      *&range.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(&v17, &range);
      if (CMTimeCompare(&time2.start, &v17) > 0)
      {
        goto LABEL_16;
      }
    }

    CFRelease(v11);
  }

  FigSimpleMutexUnlock();
  CFRelease(v11);
  return DecodeTimeRange;
}

uint64_t FigPartialSampleTableBrokerInterestTokenCreate(const __CFAllocator *a1, __int128 *a2, __int128 *a3, char a4, uint64_t *a5)
{
  if (a5)
  {
    if (FigPartialSampleTableBrokerInterestTokenGetTypeID_sRegisterFigPartialSampleTableBrokerInterestTokenTypeOnce != -1)
    {
      FigPartialSampleTableBrokerInterestTokenCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v11 = Instance;
      v12 = *a2;
      *(Instance + 32) = *(a2 + 2);
      *(Instance + 16) = v12;
      v13 = *a3;
      *(Instance + 56) = *(a3 + 2);
      *(Instance + 40) = v13;
      *(Instance + 64) = a4;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v11[9] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a5 = v11;
      }

      else
      {
        FigPartialSampleTableBrokerInterestTokenCreate_cold_2(v11, &v16);
        return v16;
      }
    }

    else
    {
      FigPartialSampleTableBrokerInterestTokenCreate_cold_3(&v17);
      return v17;
    }
  }

  else
  {
    FigPartialSampleTableBrokerInterestTokenCreate_cold_4(&v18);
    return v18;
  }

  return result;
}

uint64_t pstBroker_associateRelevantTablesWithNewInterestToken(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x1E6960C98];
  while (1)
  {
    while (1)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v4 >= Count)
      {
        return 0;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), v4);
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), v4);
    }

    v8 = v7;
    v9 = v5[1];
    v14 = *v5;
    v15 = v9;
    v16 = v5[2];
    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v7, &v14, 0);
    if (DecodeTimeRange)
    {
      break;
    }

    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    if (pstBroker_tableTimeRangeIsRelevantToInterestToken(v13, a2))
    {
      CFArrayAppendValue(*(a2 + 72), v8);
    }

    CFRelease(v8);
    ++v4;
  }

  v11 = DecodeTimeRange;
  CFRelease(v8);
  return v11;
}

void *FigPartialSampleTableBroker_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t FigPartialSampleTableBroker_Finalize(void *a1)
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

  result = FigSimpleMutexDestroy();
  a1[2] = 0;
  return result;
}

__CFString *FigPartialSampleTableBroker_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableBroker %p>", a1);
  return Mutable;
}

uint64_t pstBroker_tableTimeRangeIsRelevantToInterestToken(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) < 0)
  {
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    *&end.start.value = *(a2 + 16);
    v4 = *(a2 + 32);
  }

  else
  {
    *&start.start.value = *(a2 + 16);
    start.start.epoch = *(a2 + 32);
    *&end.start.value = *MEMORY[0x1E6960C88];
    v4 = *(MEMORY[0x1E6960C88] + 16);
  }

  end.start.epoch = v4;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeFromTimeToTime(&v14, &start.start, &end.start);
  v5 = *(a1 + 16);
  *&end.start.value = *a1;
  *&end.start.epoch = v5;
  *&end.duration.timescale = *(a1 + 32);
  memset(&start, 0, sizeof(start));
  otherRange = v14;
  CMTimeRangeGetIntersection(&start, &end, &otherRange);
  v6 = *(a1 + 16);
  *&end.start.value = *a1;
  *&end.start.epoch = v6;
  *&end.duration.timescale = *(a1 + 32);
  *&otherRange.start.value = *(a2 + 16);
  otherRange.start.epoch = *(a2 + 32);
  if (!CMTimeRangeContainsTime(&end, &otherRange.start))
  {
LABEL_10:
    v8 = *(a2 + 64);
    if (v8 < 1)
    {
      goto LABEL_18;
    }

    if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0 && (end.start = start.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&end.start, &otherRange.start)) || (*&otherRange.start.value = *a1, otherRange.start.epoch = *(a1 + 16), v10 = *(a2 + 16), CMTimeSubtract(&end.start, &otherRange.start, &v10), *&otherRange.start.value = *(a2 + 40), otherRange.start.epoch = *(a2 + 56), CMTimeCompare(&end.start, &otherRange.start) >= 1))
    {
      LOBYTE(v8) = *(a2 + 64);
LABEL_18:
      if ((v8 & 0x80) == 0)
      {
        return 0;
      }

      if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
      {
        end.start = start.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&end.start, &otherRange.start))
        {
          return 0;
        }
      }

      v9 = *(a1 + 16);
      *&end.start.value = *a1;
      *&end.start.epoch = v9;
      *&end.duration.timescale = *(a1 + 32);
      CMTimeRangeGetEnd(&otherRange.start, &end);
      v10 = *(a2 + 16);
      CMTimeSubtract(&end.start, &v10, &otherRange.start);
      *&otherRange.start.value = *(a2 + 40);
      otherRange.start.epoch = *(a2 + 56);
      if (CMTimeCompare(&end.start, &otherRange.start) >= 1)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((start.start.flags & 1) == 0)
  {
    return 1;
  }

  result = 1;
  if ((start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
  {
    end.start = start.duration;
    *&otherRange.start.value = *MEMORY[0x1E6960CC0];
    otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&end.start, &otherRange.start))
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t registerFigPartialSampleTableBrokerInterestTokenType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableBrokerInterestTokenID = result;
  return result;
}

double FigPartialSampleTableBrokerInterestToken_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigPartialSampleTableBrokerInterestToken_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }
}

__CFString *FigPartialSampleTableBrokerInterestToken_CopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  time = *(a1 + 40);
  v5 = CMTimeGetSeconds(&time);
  v6 = *(a1 + 64);
  Count = *(a1 + 72);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableBrokerInterestToken %p - %.3f[%+.3f] - %ld candidates>", a1, *&Seconds, v5 * v6, Count);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_2_127(__n128 a1)
{
  *(v2 - 80) = a1;

  return FigPartialSampleTableGetDecodeTimeRange(v1, (v2 - 112), 0);
}

double FigMetadataConverterCreateForQuickTime(uint64_t a1, CFTypeRef cf1, const void *a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  if (a5)
  {
    if (cf1 && a3)
    {
      if ((CFEqual(cf1, @"com.apple.quicktime.udta") || CFEqual(cf1, @"org.mp4ra") || CFEqual(cf1, @"com.apple.quicktime.mdta")) && (CFEqual(a3, @"com.apple.quicktime.udta") || CFEqual(a3, @"org.mp4ra") || CFEqual(a3, @"com.apple.quicktime.mdta")))
      {
        if (!CFEqual(cf1, @"com.apple.quicktime.udta") || !CFEqual(a3, @"com.apple.quicktime.mdta"))
        {
          FigMetadataConverterGetClassID();
          if (!CMDerivedObjectCreate())
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            *DerivedStorage = CFRetain(cf1);
            DerivedStorage[1] = CFRetain(a3);
            if (a4)
            {
              Value = CFDictionaryGetValue(a4, @"DestFileFormat");
              if (Value)
              {
                Value = CFRetain(Value);
              }

              DerivedStorage[2] = Value;
            }

            *a5 = 0;
          }
        }
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954814, "<<<< FMC_QTISO >>>>", 1049, v5);
      }
    }

    else
    {
      FigMetadataConverterCreateForQuickTime_cold_1(&v14);
    }
  }

  else
  {
    FigMetadataConverterCreateForQuickTime_cold_2(&v14);
  }

  return result;
}

void qtiso_FigMetadataConverterFinalize(uint64_t a1)
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

__CFString *qtiso_FigMetadataConverterCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeISOMetadataConverter %p\n", DerivedStorage);
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @"  Destination Format = %@\n", *(DerivedStorage + 8));
  }

  return Mutable;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem(const void *a1, const __CFDictionary *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    qtiso_FigMetadataConverterCreateConvertedItem_cold_5(&valuePtr);
    return LODWORD(valuePtr);
  }

  v9 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, @"key");
  if (!Value)
  {
    qtiso_FigMetadataConverterCreateConvertedItem_cold_4(&valuePtr);
    return LODWORD(valuePtr);
  }

  v11 = Value;
  v12 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*v12, @"com.apple.quicktime.mdta"))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      if (CFEqual(*(v13 + 8), @"com.apple.quicktime.mdta"))
      {
        CFRetain(v11);
        v15 = v11;
LABEL_7:
        CFRetain(v15);
        goto LABEL_64;
      }

      if (!CFEqual(*(v13 + 8), @"com.apple.quicktime.udta") && CFEqual(*(v13 + 8), @"org.mp4ra") && (v32 = *(v13 + 16)) != 0 && (CFEqual(v32, @"iso.mp4") || (v36 = *(v13 + 16)) != 0 && CFEqual(v36, @"iso.3gp")))
      {
        MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
        v15 = CFDictionaryGetValue(gQTMetadataKeyTo3GPKeyDict, v11);
        CFRetain(v11);
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        CFRetain(v11);
      }

      CFRelease(v11);
    }

    return 4294954813;
  }

  v16 = v9;
  v17 = a4;
  if (!CFEqual(*v12, @"org.mp4ra"))
  {
    if (!CFEqual(*v12, @"com.apple.quicktime.udta"))
    {
      return 4294954813;
    }

    v23 = a3;
    valuePtr = 0.0;
    cf1a = CMBaseObjectGetDerivedStorage();
    OSTypeKeyToStringKeyMapping = FigUserDataGetOSTypeKeyToStringKeyMapping();
    v25 = CFGetTypeID(v11);
    if (v25 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
      v26 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, LODWORD(valuePtr));
      a3 = v23;
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = CFGetTypeID(v11);
      if (v30 != CFStringGetTypeID())
      {
        v11 = 0;
        v15 = 0;
        a3 = v23;
        v9 = v16;
        goto LABEL_63;
      }

      a3 = v23;
      if (!FigUserDataStringKeyToOSTypeKey(v11, &valuePtr))
      {
        v11 = 0;
        goto LABEL_53;
      }

      v26 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, LODWORD(valuePtr));
      if (!v26)
      {
LABEL_38:
        valuePtr = COERCE_FLOAT(bswap32(LODWORD(valuePtr)));
        v33 = CFGetAllocator(a1);
        v11 = CFStringCreateWithFormat(v33, 0, @"%c%c%c%c", SLOBYTE(valuePtr), SBYTE1(valuePtr), SBYTE2(valuePtr), SHIBYTE(valuePtr));
        if (v11)
        {
          goto LABEL_39;
        }

LABEL_53:
        v15 = 0;
        goto LABEL_54;
      }
    }

    v31 = CFRetain(v26);
    if (v31)
    {
      v11 = v31;
LABEL_39:
      if (!CFEqual(cf1a[1], @"org.mp4ra"))
      {
        v15 = v11;
        v9 = v16;
        if (CFEqual(cf1a[1], @"com.apple.quicktime.udta"))
        {
          goto LABEL_50;
        }

        CFEqual(cf1a[1], @"com.apple.quicktime.mdta");
        goto LABEL_62;
      }

      v34 = cf1a[2];
      if (v34)
      {
        v9 = v16;
        if (!CFEqual(v34, @"iso.mp4"))
        {
          v35 = cf1a[2];
          if (!v35 || !CFEqual(v35, @"iso.3gp"))
          {
            goto LABEL_62;
          }
        }

        MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
        v15 = CFDictionaryGetValue(gUserDataKeyTo3GPKeyDict, v11);
        if (!v15)
        {
          goto LABEL_63;
        }

LABEL_50:
        CFRetain(v15);
        goto LABEL_63;
      }

      v15 = 0;
LABEL_54:
      v9 = v16;
      goto LABEL_63;
    }

    goto LABEL_38;
  }

  cf1 = a3;
  valuePtr = 0.0;
  v18 = CMBaseObjectGetDerivedStorage();
  v19 = FigISOUserDataGetOSTypeKeyToStringKeyMapping();
  v20 = CFGetTypeID(v11);
  if (v20 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
    v21 = CFDictionaryGetValue(v19, LODWORD(valuePtr));
    a4 = v17;
    a3 = cf1;
    if (!v21 || (v11 = CFRetain(v21)) == 0)
    {
      valuePtr = COERCE_FLOAT(bswap32(LODWORD(valuePtr)));
      v22 = CFGetAllocator(a1);
      v11 = CFStringCreateWithFormat(v22, 0, @"%c%c%c%c", SLOBYTE(valuePtr), SBYTE1(valuePtr), SBYTE2(valuePtr), SHIBYTE(valuePtr));
      if (!v11)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    v27 = CFGetTypeID(v11);
    if (v27 != CFStringGetTypeID())
    {
      v11 = 0;
      v15 = 0;
      a4 = v17;
      a3 = cf1;
      goto LABEL_63;
    }

    v11 = CFRetain(v11);
    a4 = v17;
    a3 = cf1;
    if (!v11)
    {
      goto LABEL_62;
    }
  }

  v15 = v11;
  if (CFEqual(*(v18 + 8), @"org.mp4ra"))
  {
    goto LABEL_50;
  }

  if (CFEqual(*(v18 + 8), @"com.apple.quicktime.udta"))
  {
    v28 = &g3GPKeyToUserDataKeyDict;
    goto LABEL_47;
  }

  if (!CFEqual(*(v18 + 8), @"com.apple.quicktime.mdta"))
  {
LABEL_62:
    v15 = 0;
    goto LABEL_63;
  }

  v28 = &g3GPKeyToQTMetadataKeyDict;
LABEL_47:
  MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
  v15 = CFDictionaryGetValue(*v28, v11);
  a3 = cf1;
  if (v15)
  {
    goto LABEL_50;
  }

LABEL_63:
  if (!v15)
  {
    MutableCopy = 0;
    v29 = 4294954813;
    v39 = 1;
    goto LABEL_100;
  }

LABEL_64:
  if (a4)
  {
    if (CFEqual(v11, v15))
    {
      Count = CFDictionaryGetCount(a2);
      MutableCopy = CFDictionaryCreateMutableCopy(a3, Count, a2);
      goto LABEL_95;
    }

    v66 = a4;
    v67 = v9;
    cf1b = a3;
    theDict = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!theDict)
    {
      qtiso_FigMetadataConverterCreateConvertedItem_cold_3(&valuePtr);
      v39 = 0;
      MutableCopy = 0;
      v29 = LODWORD(valuePtr);
      goto LABEL_100;
    }

    v40 = CFDictionaryGetValue(a2, @"value");
    v41 = CFDictionaryGetValue(a2, @"locale");
    v42 = CFDictionaryGetValue(a2, @"languageCode");
    if (CFEqual(v15, @"yrrc"))
    {
      cf1c = v15;
      v43 = CFGetTypeID(v40);
      if (v43 == CFNumberGetTypeID())
      {
        MutableCopy = theDict;
        CFDictionaryAddValue(theDict, @"key", v15);
        v44 = theDict;
        v45 = v40;
LABEL_88:
        CFDictionaryAddValue(v44, @"value", v45);
        a4 = v66;
        v9 = v67;
        goto LABEL_95;
      }

      v50 = CFGetTypeID(v40);
      MutableCopy = theDict;
      if (v50 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v40);
        if (IntValue < 0)
        {
          v29 = 4294954813;
        }

        else
        {
          v51 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &IntValue);
          if (v51)
          {
            v49 = v51;
            CFDictionaryAddValue(theDict, @"key", v15);
            CFDictionaryAddValue(theDict, @"value", v49);
LABEL_94:
            CFRelease(v49);
            goto LABEL_95;
          }

          qtiso_FigMetadataConverterCreateConvertedItem_cold_1(&valuePtr);
          v29 = LODWORD(valuePtr);
        }

        v39 = 0;
        goto LABEL_134;
      }

      goto LABEL_107;
    }

    if (!CFEqual(v15, @"com.apple.quicktime.year"))
    {
      v52 = v40;
      if (CFEqual(v15, @"com.apple.quicktime.rating.user") || CFEqual(v15, @"urat"))
      {
        valuePtr = 0.0;
        v53 = CFGetTypeID(v40);
        if (v53 != CFNumberGetTypeID() || (CFNumberGetValue(v40, kCFNumberFloat32Type, &valuePtr), valuePtr < 0.0) || valuePtr > 5.0)
        {
          v39 = 0;
          v29 = 4294954813;
          MutableCopy = theDict;
          goto LABEL_100;
        }

        MutableCopy = theDict;
        v54 = theDict;
      }

      else
      {
        cf1c = v15;
        if (!CFEqual(v15, @"com.apple.quicktime.artwork") && !CFEqual(v15, @"thmb"))
        {
          v64 = CFGetTypeID(v40);
          if (v64 == CFStringGetTypeID())
          {
            CFDictionaryAddValue(theDict, @"key", v15);
            CFDictionaryAddValue(theDict, @"value", v52);
            if (v41)
            {
              CFDictionaryAddValue(theDict, @"locale", v41);
              a4 = v66;
              MutableCopy = theDict;
              if (!v42)
              {
                goto LABEL_95;
              }
            }

            else
            {
              a4 = v66;
              MutableCopy = theDict;
              if (!v42)
              {
                LOWORD(valuePtr) = FigMetadataGetPackedISO639_2T(@"und");
                v65 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
                CFDictionaryAddValue(theDict, @"languageCode", v65);
                if (v65)
                {
                  CFRelease(v65);
                }

                a4 = v66;
                MutableCopy = theDict;
                goto LABEL_95;
              }
            }

            CFDictionaryAddValue(MutableCopy, @"languageCode", v42);
LABEL_95:
            if (CFEqual(*(v9 + 8), @"com.apple.quicktime.mdta"))
            {
              v58 = kFigQuickTimeMetadataKeyspace;
            }

            else
            {
              v59 = CFEqual(*(v9 + 8), @"com.apple.quicktime.udta");
              v58 = kFigUserDataKeyspace;
              if (!v59)
              {
                v58 = kFigISOUserDataKeyspace;
              }
            }

            CFDictionarySetValue(MutableCopy, @"keyspace", *v58);
            v39 = 0;
            v29 = 0;
            *a4 = MutableCopy;
            MutableCopy = 0;
            goto LABEL_100;
          }

          v39 = 0;
          v29 = 4294954813;
LABEL_134:
          v15 = cf1c;
          MutableCopy = theDict;
          goto LABEL_100;
        }

        v61 = CFDictionaryGetValue(a2, @"dataType");
        v62 = CFDictionaryGetValue(a2, @"dataTypeNamespace");
        v63 = CFGetTypeID(v52);
        v39 = 0;
        v29 = 4294954813;
        MutableCopy = theDict;
        if (v63 != CFDataGetTypeID() || !v61)
        {
          goto LABEL_100;
        }

        CFDictionaryAddValue(theDict, @"dataType", v61);
        if (v62)
        {
          CFDictionaryAddValue(theDict, @"dataTypeNamespace", v62);
        }

        v54 = theDict;
      }

      CFDictionaryAddValue(v54, @"key", v15);
      v44 = MutableCopy;
      v45 = v52;
      goto LABEL_88;
    }

    v46 = CFGetTypeID(v40);
    if (v46 == CFNumberGetTypeID())
    {
      LOWORD(IntValue) = 0;
      MutableCopy = theDict;
      if (CFNumberGetValue(v40, kCFNumberSInt16Type, &IntValue))
      {
        v47 = cf1b;
        v48 = CFStringCreateWithFormat(cf1b, 0, @"%d", IntValue);
        if (v48)
        {
          v49 = v48;
          goto LABEL_91;
        }

        qtiso_FigMetadataConverterCreateConvertedItem_cold_2(&valuePtr);
        v29 = LODWORD(valuePtr);
      }

      else
      {
        v29 = 4294954813;
      }

      v39 = 0;
      goto LABEL_100;
    }

    v55 = CFGetTypeID(v40);
    MutableCopy = theDict;
    if (v55 != CFStringGetTypeID())
    {
LABEL_107:
      v39 = 0;
      v29 = 4294954813;
      goto LABEL_100;
    }

    v49 = CFRetain(v40);
    v47 = cf1b;
LABEL_91:
    CFDictionaryAddValue(MutableCopy, @"key", v15);
    CFDictionaryAddValue(MutableCopy, @"value", v49);
    v56 = CFLocaleCreate(v47, @"en");
    if (v56)
    {
      v57 = v56;
      CFDictionaryAddValue(MutableCopy, @"locale", v56);
      CFRelease(v57);
    }

    if (!v49)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v39 = 0;
  MutableCopy = 0;
  v29 = 0;
LABEL_100:
  if (v11)
  {
    CFRelease(v11);
  }

  if ((v39 & 1) == 0)
  {
    CFRelease(v15);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v29;
}

CFDictionaryRef qtiso_setUpKeyMapping()
{
  v73 = *MEMORY[0x1E69E9840];
  keys[0] = @"@cpy";
  keys[1] = @"@day";
  values[0] = @"cprt";
  values[1] = @"date";
  v7[0] = @"cprt";
  v8[0] = @"com.apple.quicktime.copyright";
  v8[1] = @"com.apple.quicktime.creationdate";
  v7[1] = @"date";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  allocator = *MEMORY[0x1E695E480];
  gUserDataKeyToMP4KeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gQTMetadataKeyToMP4KeyDict = CFDictionaryCreate(v0, v8, v7, 2, v1, v2);
  v54 = @"@cpy";
  v55 = @"@aut";
  v56 = @"@prf";
  v57 = @"@prd";
  v58 = @"@pub";
  v59 = @"@dir";
  v60 = @"@ART";
  v61 = @"@ope";
  v62 = @"@gen";
  v63 = @"@xyz";
  v64 = @"@nam";
  v65 = @"tnam";
  v66 = @"@des";
  v67 = @"@inf";
  v68 = @"tagc";
  v69 = @"@day";
  v70 = @"ludt";
  v35 = @"cprt";
  v36 = @"auth";
  v37 = @"perf";
  v38 = @"perf";
  v39 = @"perf";
  v40 = @"perf";
  v41 = @"perf";
  v42 = @"perf";
  v43 = @"gnre";
  v44 = @"loci";
  v45 = @"titl";
  v46 = @"titl";
  v47 = @"dscp";
  v48 = @"dscp";
  v49 = @"tagc";
  v50 = @"date";
  v51 = @"ludt";
  v23 = @"cprt";
  v24 = @"auth";
  v25 = @"perf";
  v26 = @"gnre";
  v27 = @"loci";
  v28 = @"titl";
  v29 = @"dscp";
  v30 = @"tagc";
  v31 = @"date";
  v32 = @"ludt";
  v11 = @"@cpy";
  v12 = @"@aut";
  v13 = @"@prf";
  v14 = @"@gen";
  v15 = @"@xyz";
  v16 = @"@nam";
  v17 = @"@des";
  v18 = @"tagc";
  v19 = @"@day";
  v20 = @"ludt";
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  gUserDataKeyTo3GPKeyDict = CFDictionaryCreate(allocator, &v54, &v35, 17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  g3GPKeyToUserDataKeyDict = CFDictionaryCreate(allocator, &v23, &v11, 10, v3, v4);
  v54 = @"com.apple.quicktime.copyright";
  v55 = @"com.apple.quicktime.author";
  v56 = @"com.apple.quicktime.genre";
  v57 = @"com.apple.quicktime.location.ISO6709";
  v58 = @"com.apple.quicktime.displayname";
  v59 = @"com.apple.quicktime.title";
  v60 = @"com.apple.quicktime.year";
  v61 = @"com.apple.quicktime.creationdate";
  v62 = @"com.apple.quicktime.description";
  v63 = @"com.apple.quicktime.information";
  v64 = @"com.apple.quicktime.performer";
  v65 = @"com.apple.quicktime.producer";
  v66 = @"com.apple.quicktime.publisher";
  v67 = @"com.apple.quicktime.director";
  v68 = @"com.apple.quicktime.artist";
  v69 = @"com.apple.quicktime.originalartist";
  v70 = @"com.apple.quicktime.rating.user";
  v71 = @"com.apple.quicktime.collection.user";
  v72 = @"com.apple.quicktime.artwork";
  v35 = @"cprt";
  v36 = @"auth";
  v37 = @"gnre";
  v38 = @"loci";
  v39 = @"titl";
  v40 = @"titl";
  v41 = @"yrrc";
  v42 = @"date";
  v43 = @"dscp";
  v44 = @"dscp";
  v45 = @"perf";
  v46 = @"perf";
  v47 = @"perf";
  v48 = @"perf";
  v49 = @"perf";
  v50 = @"perf";
  v51 = @"urat";
  v52 = @"coll";
  v53 = @"thmb";
  v23 = @"cprt";
  v24 = @"auth";
  v25 = @"gnre";
  v26 = @"loci";
  v27 = @"titl";
  v28 = @"yrrc";
  v29 = @"date";
  v30 = @"dscp";
  v31 = @"perf";
  v32 = @"urat";
  v33 = @"coll";
  v34 = @"thmb";
  v11 = @"com.apple.quicktime.copyright";
  v12 = @"com.apple.quicktime.author";
  v13 = @"com.apple.quicktime.genre";
  v14 = @"com.apple.quicktime.location.ISO6709";
  v15 = @"com.apple.quicktime.displayname";
  v16 = @"com.apple.quicktime.year";
  v17 = @"com.apple.quicktime.creationdate";
  v18 = @"com.apple.quicktime.description";
  v19 = @"com.apple.quicktime.performer";
  v20 = @"com.apple.quicktime.rating.user";
  v21 = @"com.apple.quicktime.collection.user";
  v22 = @"com.apple.quicktime.artwork";
  gQTMetadataKeyTo3GPKeyDict = CFDictionaryCreate(allocator, &v54, &v35, 19, v3, v4);
  result = CFDictionaryCreate(allocator, &v23, &v11, 12, v3, v4);
  g3GPKeyToQTMetadataKeyDict = result;
  return result;
}

char *FigCaptionRendererLayoutDecouple_CreateTextObject(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10200404F51ABCFuLL);
  if (v2)
  {
    if (a1)
    {
      v3 = CFRetain(a1);
    }

    else
    {
      v3 = 0;
    }

    *(v2 + 25) = v3;
    *(v2 + 48) = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(v2 + 4) = Mutable;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 40) = _Q0;
    *(v2 + 56) = _Q0;
    if (!Mutable)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void FigCaptionRendererLayoutDecouple_ReleaseTextObject(void *a1)
{
  if (a1)
  {
    v2 = a1[25];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t fcr_setNewPositions(const __CFArray *a1, int a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = MEMORY[0x1E695F060];
    do
    {
      result = CFArrayGetValueAtIndex(a1, v6);
      if (result)
      {
        v8 = result;
        v9 = *(result + 200);
        if (v9)
        {
          v21 = *v7;
          FigCaptionRendererNodeProtocolGetProtocolID();
          result = CMBaseObjectGetProtocolVTable();
          if (result)
          {
            v11 = *(result + 16);
            result += 16;
            v10 = v11;
            if (v11)
            {
              v12 = *(v10 + 120);
              if (v12)
              {
                result = v12(v9, &v21);
              }
            }
          }

          if (a2)
          {
            if (a2 != 1 || *(&v21 + 1) > *&v21)
            {
LABEL_14:
              v13 = *v8;
              v14 = v8[1];
              FigCaptionRendererNodeProtocolGetProtocolID();
              ProtocolVTable = CMBaseObjectGetProtocolVTable();
              if (ProtocolVTable)
              {
                v16 = *(ProtocolVTable + 16);
                if (v16)
                {
                  v17 = *(v16 + 128);
                  if (v17)
                  {
                    v17(v9, v13, v14);
                  }
                }
              }

              FigCaptionRendererNodeProtocolGetProtocolID();
              result = CMBaseObjectGetProtocolVTable();
              if (result)
              {
                v19 = *(result + 16);
                result += 16;
                v18 = v19;
                if (v19)
                {
                  v20 = *(v18 + 232);
                  if (v20)
                  {
                    result = v20(v9, 1);
                  }
                }
              }
            }
          }

          else if (*&v21 >= *(&v21 + 1))
          {
            goto LABEL_14;
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t fcr_objComparatorX(double *a1, double *a2)
{
  v2 = *a1 + a1[2] * 0.5;
  v3 = *a2 + a2[2] * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t fcr_objComparatorY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24) * 0.5;
  v3 = *(a2 + 8) + *(a2 + 24) * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

void fcr_validateMove(CGRect *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*a1);
  MaxX = CGRectGetMaxX(*a1);
  MinY = CGRectGetMinY(*a1);
  MaxY = CGRectGetMaxY(*a1);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  v13 = CGRectGetMinX(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  v14 = CGRectGetMaxX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  v15 = CGRectGetMinY(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  v16 = CGRectGetMaxY(v34);
  v17 = *a2;
  v18 = MinX + *a2;
  if (v18 < v13)
  {
    v17 = v13 - MinX;
  }

  v19 = MaxX + v17;
  if (MaxX + v17 > v14)
  {
    v17 = v14 - MaxX;
  }

  if (v18 < v13 || v19 > v14)
  {
    *a2 = v17;
  }

  v21 = *(a2 + 8);
  v22 = MinY + v21;
  if (MinY + v21 < v15)
  {
    v21 = v15 - MinY;
  }

  v23 = MaxY + v21;
  if (MaxY + v21 > v16)
  {
    v21 = v16 - MaxY;
  }

  if (v22 < v15 || v23 > v16)
  {
    *(a2 + 8) = v21;
  }

  v25 = fabs(v17);
  v26 = fabs(v21);
  if (v25 <= 3.0 && v26 <= 3.0)
  {
    *(a2 + 16) = 0;
  }
}

uint64_t fcr_sweepBottomUp(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcr_objComparatorBottom, 0);
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
      v10 = ValueAtIndex[1];
      if (v10 < a3)
      {
        ValueAtIndex[1] = a3;
        v8 = 1;
        v10 = a3;
      }

      *a2 = fmax(*a2, v10 + ValueAtIndex[3]);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v11 = 1;
      do
      {
        v12 = CFArrayGetValueAtIndex(a1, v11);
        v13 = 0;
        do
        {
          v14 = CFArrayGetValueAtIndex(a1, v13);
          v15 = *(v12 + 11);
          v30[10] = *(v12 + 10);
          v30[11] = v15;
          v30[12] = *(v12 + 12);
          v16 = *(v12 + 7);
          v30[6] = *(v12 + 6);
          v30[7] = v16;
          v17 = *(v12 + 9);
          v30[8] = *(v12 + 8);
          v30[9] = v17;
          v18 = *(v12 + 3);
          v30[2] = *(v12 + 2);
          v30[3] = v18;
          v19 = *(v12 + 5);
          v30[4] = *(v12 + 4);
          v30[5] = v19;
          v20 = *(v12 + 1);
          v30[0] = *v12;
          v30[1] = v20;
          v21 = *(v14 + 11);
          v29[10] = *(v14 + 10);
          v29[11] = v21;
          v29[12] = *(v14 + 12);
          v22 = *(v14 + 7);
          v29[6] = *(v14 + 6);
          v29[7] = v22;
          v23 = *(v14 + 9);
          v29[8] = *(v14 + 8);
          v29[9] = v23;
          v24 = *(v14 + 3);
          v29[2] = *(v14 + 2);
          v29[3] = v24;
          v25 = *(v14 + 5);
          v29[4] = *(v14 + 4);
          v29[5] = v25;
          v26 = *(v14 + 1);
          v29[0] = *v14;
          v29[1] = v26;
          if (fcr_isOverlap(v30, v29))
          {
            v27 = v14[1] + v14[3];
            v12[1] = v27;
            *a2 = fmax(*a2, v27 + v12[3]);
          }

          ++v13;
        }

        while (v11 != v13);
        ++v11;
      }

      while (v11 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcr_sweepLeftRight(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcr_objComparatorLeft, 0);
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
      v10 = *ValueAtIndex;
      if (*ValueAtIndex < a3)
      {
        *ValueAtIndex = a3;
        v8 = 1;
        v10 = a3;
      }

      *a2 = fmax(*a2, v10 + ValueAtIndex[2]);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v11 = 1;
      do
      {
        v12 = CFArrayGetValueAtIndex(a1, v11);
        v13 = 0;
        do
        {
          v14 = CFArrayGetValueAtIndex(a1, v13);
          v15 = *(v12 + 11);
          v30[10] = *(v12 + 10);
          v30[11] = v15;
          v30[12] = *(v12 + 12);
          v16 = *(v12 + 7);
          v30[6] = *(v12 + 6);
          v30[7] = v16;
          v17 = *(v12 + 9);
          v30[8] = *(v12 + 8);
          v30[9] = v17;
          v18 = *(v12 + 3);
          v30[2] = *(v12 + 2);
          v30[3] = v18;
          v19 = *(v12 + 5);
          v30[4] = *(v12 + 4);
          v30[5] = v19;
          v20 = *(v12 + 1);
          v30[0] = *v12;
          v30[1] = v20;
          v21 = *(v14 + 11);
          v29[10] = *(v14 + 10);
          v29[11] = v21;
          v29[12] = *(v14 + 12);
          v22 = *(v14 + 7);
          v29[6] = *(v14 + 6);
          v29[7] = v22;
          v23 = *(v14 + 9);
          v29[8] = *(v14 + 8);
          v29[9] = v23;
          v24 = *(v14 + 3);
          v29[2] = *(v14 + 2);
          v29[3] = v24;
          v25 = *(v14 + 5);
          v29[4] = *(v14 + 4);
          v29[5] = v25;
          v26 = *(v14 + 1);
          v29[0] = *v14;
          v29[1] = v26;
          if (fcr_isOverlap(v30, v29))
          {
            v27 = *v14 + v14[2];
            *v12 = v27;
            *a2 = fmax(*a2, v27 + v12[2]);
          }

          ++v13;
        }

        while (v11 != v13);
        ++v11;
      }

      while (v11 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcr_objComparatorBottom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t fcr_objComparatorTop(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24);
  v3 = *(a2 + 8) + *(a2 + 24);
  if (v2 > v3)
  {
    return -1;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t fcr_objComparatorLeft(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t fcr_objComparatorRight(double *a1, double *a2)
{
  v2 = *a1 + a1[2];
  v3 = *a2 + a2[2];
  if (v2 > v3)
  {
    return -1;
  }

  else
  {
    return v2 < v3;
  }
}

void OUTLINED_FUNCTION_0_146(uint64_t a1, uint64_t a2)
{

  fcr_validateMove(v2, a2, v6, v7, v4, v5);
}

const void *OUTLINED_FUNCTION_2_128()
{

  return CFArrayGetValueAtIndex(v0, v1);
}

void OUTLINED_FUNCTION_3_104(__CFArray *a1, uint64_t a2, uint64_t a3, CFComparisonResult (__cdecl *a4)(const void *, const void *, void *))
{
  v6.location = 0;
  v6.length = v4;

  CFArraySortValues(a1, v6, a4, 0);
}

double FigMetadataConverterCreateForQuickTimeToFromiTunes(uint64_t a1, CFTypeRef cf1, CFTypeRef cf2, uint64_t a4, CFTypeRef *a5)
{
  if (!a5)
  {
    FigMetadataConverterCreateForQuickTimeToFromiTunes_cold_1(&v16);
    return result;
  }

  if (CFEqual(cf1, cf2))
  {
    goto LABEL_7;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta") || CFEqual(cf1, @"org.mp4ra") || CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    if (CFEqual(cf2, @"com.apple.itunes"))
    {
      goto LABEL_7;
    }

    emitter = fig_log_get_emitter();
    v14 = v5;
    v15 = 1171;
  }

  else if (CFEqual(cf1, @"com.apple.itunes"))
  {
    if (CFEqual(cf2, @"com.apple.quicktime.udta") || CFEqual(cf2, @"org.mp4ra") || CFEqual(cf2, @"com.apple.quicktime.mdta"))
    {
LABEL_7:
      FigMetadataConverterGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (cf1)
        {
          v11 = CFRetain(cf1);
        }

        else
        {
          v11 = 0;
        }

        *DerivedStorage = v11;
        if (cf2)
        {
          v12 = CFRetain(cf2);
        }

        else
        {
          v12 = 0;
        }

        DerivedStorage[1] = v12;
        *a5 = 0;
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v14 = v5;
    v15 = 1181;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v14 = v5;
    v15 = 1186;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954814, "<<<< FMC_QTITUNES >>>>", v15, v14);
}

void qtitunes_FigMetadataConverterFinalize(uint64_t a1)
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
}

__CFString *qtitunes_FigMetadataConverterCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeiTunesMetadataConverter %p\n", DerivedStorage);
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @"  Destination Format = %@\n", *(DerivedStorage + 8));
  }

  return Mutable;
}

CFDictionaryRef qtitunes_setUpKeyMapping()
{
  v96 = *MEMORY[0x1E69E9840];
  keys = @"com.apple.quicktime.arranger";
  v74 = @"com.apple.quicktime.album";
  v75 = @"com.apple.quicktime.artist";
  v76 = @"com.apple.quicktime.author";
  v77 = @"com.apple.quicktime.comment";
  v78 = @"com.apple.quicktime.copyright";
  v79 = @"com.apple.quicktime.artwork";
  v80 = @"com.apple.quicktime.creationdate";
  v81 = @"com.apple.quicktime.description";
  v82 = @"com.apple.quicktime.information";
  v83 = @"com.apple.quicktime.director";
  v84 = @"com.apple.quicktime.encodedby";
  v85 = @"com.apple.quicktime.displayname";
  v86 = @"com.apple.quicktime.title";
  v87 = @"com.apple.quicktime.genre";
  v88 = @"com.apple.quicktime.make";
  v89 = @"com.apple.quicktime.originalartist";
  v90 = @"com.apple.quicktime.performer";
  v91 = @"com.apple.quicktime.producer";
  v92 = @"com.apple.quicktime.publisher";
  v93 = @"com.apple.quicktime.composer";
  v94 = @"com.apple.quicktime.credits";
  v95 = @"com.apple.quicktime.phonogramrights";
  v8 = @"com.apple.quicktime.arranger";
  v9 = @"com.apple.quicktime.album";
  values = @"@arg";
  v51 = @"@alb";
  v10 = @"com.apple.quicktime.artist";
  v52 = @"@ART";
  v53 = @"@aut";
  v11 = @"com.apple.quicktime.author";
  v12 = @"com.apple.quicktime.comment";
  v54 = @"@cmt";
  v55 = @"cprt";
  v13 = @"com.apple.quicktime.copyright";
  v14 = @"com.apple.quicktime.artwork";
  v15 = @"com.apple.quicktime.creationdate";
  v56 = @"covr";
  v57 = @"@day";
  v16 = @"com.apple.quicktime.description";
  v58 = @"@des";
  v59 = @"@des";
  v17 = @"com.apple.quicktime.director";
  v60 = @"@dir";
  v61 = @"@enc";
  v18 = @"com.apple.quicktime.encodedby";
  v62 = @"@nam";
  v63 = @"@nam";
  v19 = @"com.apple.quicktime.displayname";
  v20 = @"com.apple.quicktime.genre";
  v64 = @"@gen";
  v65 = @"@mak";
  v21 = @"com.apple.quicktime.make";
  v22 = @"com.apple.quicktime.originalartist";
  v23 = @"com.apple.quicktime.performer";
  v66 = @"@ope";
  v67 = @"@prf";
  v24 = @"com.apple.quicktime.producer";
  v68 = @"@prd";
  v69 = @"@pub";
  v25 = @"com.apple.quicktime.publisher";
  v26 = @"com.apple.quicktime.composer";
  v70 = @"@wrt";
  v71 = @"@src";
  v27 = @"com.apple.quicktime.credits";
  v72 = @"@phg";
  v29 = @"@arg";
  v30 = @"@alb";
  v31 = @"@ART";
  v32 = @"@aut";
  v33 = @"@cmt";
  v34 = @"cprt";
  v35 = @"covr";
  v36 = @"@day";
  v37 = @"@des";
  v38 = @"@dir";
  v39 = @"@enc";
  v40 = @"@nam";
  v41 = @"@gen";
  v42 = @"@mak";
  v43 = @"@ope";
  v44 = @"@prf";
  v45 = @"@prd";
  v46 = @"@pub";
  v47 = @"@wrt";
  v48 = @"@src";
  v49 = @"@phg";
  v28 = @"com.apple.quicktime.phonogramrights";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  allocator = *MEMORY[0x1E695E480];
  qword_1ED4CB490 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 23, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CB498 = CFDictionaryCreate(v0, &v29, &v8, 21, v1, v2);
  v81 = @"@inf";
  v85 = @"tnam";
  v29 = @"@arg";
  v30 = @"@alb";
  values = @"@arg";
  v51 = @"@alb";
  v54 = @"@cmt";
  v33 = @"@cmt";
  v60 = @"@enc";
  v38 = @"@enc";
  v63 = @"@gen";
  v40 = @"@gen";
  v41 = @"@mak";
  v64 = @"@mak";
  v69 = @"@wrt";
  v46 = @"@wrt";
  v47 = @"@src";
  v70 = @"@src";
  v71 = @"@phg";
  v48 = @"@phg";
  v8 = @"@arg";
  keys = @"@arg";
  v74 = @"@alb";
  v9 = @"@alb";
  v75 = @"@ART";
  v76 = @"@aut";
  v10 = @"@ART";
  v11 = @"@aut";
  v77 = @"@cmt";
  v78 = @"@cpy";
  v12 = @"@cmt";
  v13 = @"@cpy";
  v79 = @"@day";
  v80 = @"@des";
  v82 = @"@dir";
  v14 = @"@day";
  v15 = @"@des";
  v16 = @"@dir";
  v17 = @"@enc";
  v83 = @"@enc";
  v84 = @"@nam";
  v86 = @"@gen";
  v18 = @"@nam";
  v19 = @"@gen";
  v20 = @"@mak";
  v87 = @"@mak";
  v88 = @"@ope";
  v21 = @"@ope";
  v89 = @"@prf";
  v90 = @"@prd";
  v22 = @"@prf";
  v23 = @"@prd";
  v91 = @"@pub";
  v92 = @"@wrt";
  v24 = @"@pub";
  v25 = @"@wrt";
  v26 = @"@src";
  v27 = @"@phg";
  v93 = @"@src";
  v94 = @"@phg";
  v62 = @"@nam";
  v68 = @"@pub";
  v37 = @"@dir";
  v39 = @"@nam";
  v45 = @"@pub";
  v52 = @"@ART";
  v53 = @"@aut";
  v55 = @"cprt";
  v56 = @"@day";
  v57 = @"@des";
  v58 = @"@des";
  v59 = @"@dir";
  v61 = @"@nam";
  v65 = @"@ope";
  v66 = @"@prf";
  v67 = @"@prd";
  v31 = @"@ART";
  v32 = @"@aut";
  v34 = @"cprt";
  v35 = @"@day";
  v36 = @"@des";
  v42 = @"@ope";
  v43 = @"@prf";
  v44 = @"@prd";
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  qword_1ED4CB4A0 = CFDictionaryCreate(allocator, &keys, &values, 22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _MergedGlobals_95 = CFDictionaryCreate(allocator, &v8, &v29, 20, v3, v4);
  v29 = @"cprt";
  v30 = @"perf";
  v31 = @"auth";
  v32 = @"dscp";
  v33 = @"titl";
  v34 = @"yrrc";
  v35 = @"thmb";
  v8 = @"cprt";
  v9 = @"@prf";
  v10 = @"@aut";
  v11 = @"@des";
  v12 = @"@nam";
  v13 = @"@day";
  v14 = @"covr";
  keys = @"cprt";
  v74 = @"@prf";
  v75 = @"@pub";
  v76 = @"@prd";
  v77 = @"@dir";
  v78 = @"@ART";
  v79 = @"@ope";
  v80 = @"@aut";
  v81 = @"@des";
  v82 = @"@nam";
  v83 = @"@day";
  v84 = @"covr";
  values = @"cprt";
  v51 = @"perf";
  v52 = @"perf";
  v53 = @"perf";
  v54 = @"perf";
  v55 = @"perf";
  v56 = @"perf";
  v57 = @"auth";
  v58 = @"dscp";
  v59 = @"titl";
  v60 = @"yrrc";
  v61 = @"thmb";
  v5 = MEMORY[0x1E695E9E8];
  qword_1ED4CB4A8 = CFDictionaryCreate(allocator, &v29, &v8, 7, v3, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(allocator, &keys, &values, 12, v3, v5);
  qword_1ED4CB4B0 = result;
  return result;
}

void OUTLINED_FUNCTION_0_147()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_3_105(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char valuePtr)
{

  return CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
}

uint64_t FigCopyMediaTypeString(__CFBundle *a1, unsigned int a2, CFStringRef *a3)
{
  v8 = bswap32(a2);
  if (a2)
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%.4s", &v8);
    if (v5)
    {
      v6 = v5;
      *a3 = CFBundleCopyLocalizedString(a1, v5, v5, @"MediaAndSubtypes");
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigCopyMediaTypeString_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopyMediaTypeString_cold_2(&v10);
    return v10;
  }
}

__CFBundle *MTCopyLocalizedStringForVideoDynamicRange(int a1)
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (result)
  {
    if ((a1 - 1) > 9)
    {
      v3 = @"VideoDynamicRangeUnknown";
    }

    else
    {
      v3 = off_1E74904C0[a1 - 1];
    }

    return CFBundleCopyLocalizedString(result, v3, v3, @"MediaAndSubtypes");
  }

  return result;
}

uint64_t MTGetVideoDynamicRangeQualityGrade(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_196E78A14[a1 - 1];
  }
}

__CFString *MTCopyStringForColorInfo(int a1, CMFormatDescriptionRef desc)
{
  if (a1 != 1986618469)
  {
    return 0;
  }

  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965D88]);
  v4 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F30]);
  v5 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F98]);
  v6 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6960080]);
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v8 = 0;
  if (MediaSubType <= 1685481572)
  {
    if (MediaSubType == 1667524657 || MediaSubType == 1684895096)
    {
LABEL_13:
      if (!Extension)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v10 = 1685481521;
  }

  else
  {
    if (MediaSubType > 1902405732)
    {
      if (MediaSubType == 1902405733)
      {
        goto LABEL_13;
      }

      v9 = 28024;
    }

    else
    {
      if (MediaSubType == 1685481573)
      {
        goto LABEL_13;
      }

      v9 = 26673;
    }

    v10 = v9 | 0x71640000;
  }

  if (MediaSubType == v10)
  {
    goto LABEL_13;
  }

  v8 = 1;
  if (!Extension)
  {
    return 0;
  }

LABEL_14:
  v11 = CFGetTypeID(Extension);
  if (v11 == CFStringGetTypeID() && v4 != 0)
  {
    v13 = CFGetTypeID(v4);
    if (v13 == CFStringGetTypeID() && v5 != 0)
    {
      v15 = CFGetTypeID(v5);
      if (v15 == CFStringGetTypeID())
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        v17 = CFEqual(Extension, *MEMORY[0x1E6965DD8]);
        v18 = MEMORY[0x1E6965DB8];
        if (v17 && CFEqual(v4, *MEMORY[0x1E6965DB8]) && CFEqual(v5, *MEMORY[0x1E6965FC8]))
        {
          v19 = @"SD ";
        }

        else
        {
          v21 = *MEMORY[0x1E6965F50];
          if (CFEqual(Extension, *MEMORY[0x1E6965F50]) && CFEqual(v4, v21) && CFEqual(v5, *MEMORY[0x1E6965FC8]))
          {
            v19 = @"PAL ";
          }

          else if (CFEqual(Extension, *v18) && CFEqual(v4, v21) && CFEqual(v5, *MEMORY[0x1E6965FD0]))
          {
            v19 = @"HD ";
          }

          else
          {
            if (v8)
            {
              AppendColorPrimaryString(Extension, Mutable);
              AppendHDRTransferFunctionString(v4, v6, Mutable);
LABEL_42:
              IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(Extension);
              v23 = CVTransferFunctionGetIntegerCodePointForString(v4);
              v24 = CVYCbCrMatrixGetIntegerCodePointForString(v5);
              v25 = CFStringCreateWithFormat(0, 0, @"(%d-%d-%d)", IntegerCodePointForString, v23, v24);
              CFStringAppend(Mutable, v25);
              CFRelease(v25);
              return Mutable;
            }

            v19 = @"Dolby Vision ";
          }
        }

        CFStringAppend(Mutable, v19);
        goto LABEL_42;
      }
    }
  }

  return 0;
}

double MatrixArrayToCGAffineTransform@<D0>(const __CFArray *a1@<X0>, double *a2@<X8>)
{
  valuePtr = 0.0;
  v18 = 0.0;
  v16 = 0;
  v17 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr);
  v5 = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(v5, kCFNumberFloat32Type, &v18);
  v6 = CFArrayGetValueAtIndex(a1, 3);
  CFNumberGetValue(v6, kCFNumberFloat32Type, &v17 + 4);
  v7 = CFArrayGetValueAtIndex(a1, 4);
  CFNumberGetValue(v7, kCFNumberFloat32Type, &v17);
  v8 = CFArrayGetValueAtIndex(a1, 6);
  CFNumberGetValue(v8, kCFNumberFloat32Type, &v16 + 4);
  v9 = CFArrayGetValueAtIndex(a1, 7);
  CFNumberGetValue(v9, kCFNumberFloat32Type, &v16);
  result = valuePtr;
  v11 = v18;
  v12 = *(&v17 + 1);
  v13 = *&v17;
  v14 = *(&v16 + 1);
  v15 = *&v16;
  *a2 = valuePtr;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  return result;
}

uint64_t FigGetTrackUneditedDurationWithPossibleFallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || (v7(v6, @"UneditedTrackDuration", v4, &v23), (v8 = v23) == 0))
  {
    cf.value = 0;
    FigFormatReaderGetFigBaseObject();
    v10 = v9;
    value = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (value)
    {
      value(v10, @"SampleCursorTimeAccuracyIsExact", v4, &cf);
      value = cf.value;
    }

    if (value != *MEMORY[0x1E695E4D0])
    {
      FigFormatReaderGetFigBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, @"EstimatedDuration", v4, &v23);
      }
    }

    if (!v23)
    {
      FigFormatReaderGetFigBaseObject();
      v20 = v19;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v21(v20, @"NominalDuration", v4, &v23);
      }
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    v8 = v23;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v15 = CFGetTypeID(v8);
  if (v15 == CFDictionaryGetTypeID())
  {
    CMTimeMakeFromDictionary(&cf, v23);
    *a3 = *&cf.value;
    epoch = cf.epoch;
  }

  else
  {
LABEL_14:
    v17 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v17 + 16);
  }

  *(a3 + 16) = epoch;
  if (v23)
  {
    CFRelease(v23);
  }

  return 0;
}

uint64_t FigCFStringIsISOExtension(CFStringRef theString2)
{
  if (!theString2)
  {
    return 0;
  }

  v2 = 1;
  if (CFStringCompare(@"m4a", theString2, 1uLL))
  {
    v2 = 1;
    if (CFStringCompare(@"m4p", theString2, 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(@"m4v", theString2, 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(@"m4b", theString2, 1uLL))
        {
          v2 = 1;
          if (CFStringCompare(@"m4r", theString2, 1uLL))
          {
            v2 = 1;
            if (CFStringCompare(@"mp4", theString2, 1uLL))
            {
              v2 = 1;
              if (CFStringCompare(@"aax", theString2, 1uLL))
              {
                v2 = 1;
                if (CFStringCompare(@"3gp", theString2, 1uLL))
                {
                  v2 = 1;
                  if (CFStringCompare(@"3gpp", theString2, 1uLL))
                  {
                    v2 = 1;
                    if (CFStringCompare(@"3g2", theString2, 1uLL))
                    {
                      v2 = 1;
                      if (CFStringCompare(@"3gp2", theString2, 1uLL))
                      {
                        return 0;
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

  return v2;
}

CFTypeRef FigCopySetOfHEIFSupportedFileExtensions(void *a1)
{
  if (FigCopySetOfHEIFSupportedFileExtensions_onceToken != -1)
  {
    FigCopySetOfHEIFSupportedFileExtensions_cold_1();
  }

  result = CFRetain(gFigFormatReaderHEIFFileExtensionsSet);
  *a1 = result;
  return result;
}

CFSetRef createSetOfHEIFSupportedFileExtensionsOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[2] = xmmword_1E7490498;
  v1[3] = *off_1E74904A8;
  v2 = @"avis";
  v1[0] = xmmword_1E7490478;
  v1[1] = *&off_1E7490488;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 9, MEMORY[0x1E695E9F8]);
  gFigFormatReaderHEIFFileExtensionsSet = result;
  return result;
}

const __CFString *FigCFStringIsHEIFExtension(const __CFString *a1)
{
  cf = 0;
  FigCopySetOfHEIFSupportedFileExtensions(&cf);
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFStringGetTypeID() && (MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1)) != 0)
    {
      v4 = MutableCopy;
      CFStringLowercase(MutableCopy, 0);
      a1 = (CFSetContainsValue(gFigFormatReaderHEIFFileExtensionsSet, v4) != 0);
      CFRelease(v4);
    }

    else
    {
      a1 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

uint64_t FigFileTypeIsQTMovieFileType(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t FigFileTypeIsISOFileType(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

void __FigGetFileTypeForMovieFamilyExtension_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"com.apple.quicktime-movie");
  CFArrayAppendValue(Mutable, @"public.mpeg-4");
  CFArrayAppendValue(Mutable, @"com.apple.m4v-video");
  CFArrayAppendValue(Mutable, @"com.apple.m4a-audio");
  CFArrayAppendValue(Mutable, @"public.3gpp");
  CFArrayAppendValue(Mutable, @"com.apple.immersive-video");
  CFArrayAppendValue(Mutable, @"com.apple.quicktime-audio");
  Count = CFArrayGetCount(Mutable);
  qword_1ED4CB4C0 = Mutable;
  unk_1ED4CB4C8 = Count;
  v3 = CFDictionaryCreateMutable(v0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v3, *MEMORY[0x1E6963728], @"com.apple.m4a-audio");
  CFDictionarySetValue(v3, @"com.apple.mpeg-4-ringtone", @"com.apple.m4a-audio");
  CFDictionarySetValue(v3, @"public.3gpp2", @"public.3gpp");
  _MergedGlobals_96 = v3;
}

CFStringRef FigCreateStringForLanguageCode(const __CFAllocator *a1, unsigned int a2, int a3)
{
  if (!a3 && (a2 < 0x401 || a2 == 0x7FFF))
  {
    if (a2 > 0x97)
    {
      v3 = 21956;
    }

    else
    {
      v3 = kQTCodeToISO639_2_T_LanguageBits[a2];
    }
  }

  else if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 21956;
  }

  return CFStringCreateWithFormat(a1, 0, @"%c%c%c", (v3 >> 10) | 0x60, (v3 >> 5) & 0x1F | 0x60, v3 & 0x1F | 0x60);
}

uint64_t FigGetISOLanguageCodeForString(const __CFString *a1)
{
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  v3 = CFStringGetCharacterAtIndex(a1, 1);
  return (CFStringGetCharacterAtIndex(a1, 2) + 32 * v3 + (CharacterAtIndex << 10) + 29600);
}

BOOL MTShouldPlayHDRVideo(const __CFArray *a1)
{
  v4 = 0;
  v2 = FPSupport_IsInLowPowerMode();
  result = 0;
  if (!v2)
  {
    FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(a1, &v4, 0, 0);
    return v4 > 1;
  }

  return result;
}

void AppendColorPrimaryString(const void *a1, __CFString *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E695FFD0]))
  {
    v4 = @"P3 D65 ";
  }

  else if (CFEqual(a1, *MEMORY[0x1E695FFC0]))
  {
    v4 = @"BT.2020 ";
  }

  else
  {
    if (!CFEqual(a1, *MEMORY[0x1E695FFB8]))
    {
      return;
    }

    v4 = @"DCI P3 ";
  }

  CFStringAppend(a2, v4);
}

void AppendHDRTransferFunctionString(const void *a1, uint64_t a2, __CFString *a3)
{
  v6 = *MEMORY[0x1E6960158];
  v7 = CFEqual(a1, *MEMORY[0x1E6960158]);
  if (a2 && v7)
  {
    v8 = @"HDR10 ";
  }

  else if (CFEqual(a1, *MEMORY[0x1E6960148]))
  {
    v8 = @"HLG ";
  }

  else
  {
    if (!CFEqual(a1, v6))
    {
      return;
    }

    v8 = @"PQ ";
  }

  CFStringAppend(a3, v8);
}

uint64_t FigCryptGetBlockSize(int a1)
{
  if ((a1 - 1) < 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
  return 0;
}

uint64_t FigCryptGetIVSize(int a1)
{
  if ((a1 - 1) < 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
  return 0;
}

uint64_t FigCryptGetTagSize(int a1)
{
  if (a1 == 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
  return 0;
}

uint64_t FigCryptCreateForDecrypt(int a1, const void *a2, uint64_t a3, const void *a4, const void *a5, size_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
    BlockSize = FigCryptGetBlockSize(a1);
    if (BlockSize)
    {
      v14 = BlockSize;
      v15 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600408152BA4BuLL);
      if (v15)
      {
        v16 = v15;
        *(v15 + 8) = a1;
        v15[1] = v14;
        if (a1 == 3)
        {
          if (CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, a5, a6, 0, 0, 0, 0, v15))
          {
LABEL_6:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", tweakLength, v23, cryptorRef);
            v18 = v17;
            free(v16);
            return v18;
          }
        }

        else if (CCCryptorCreate(1u, 0, a1 == 1, a5, a6, 0, v15))
        {
          goto LABEL_6;
        }

        if (a2)
        {
          v20 = CFRetain(a2);
        }

        else
        {
          v20 = *MEMORY[0x1E695E480];
        }

        v16[2] = v20;
        if (a4)
        {
          v21 = CFRetain(a4);
        }

        else
        {
          v21 = *MEMORY[0x1E695E480];
        }

        result = 0;
        v16[3] = v21;
        *a7 = v16;
      }

      else
      {
        FigCryptCreateForDecrypt_cold_1(&v25);
        return v25;
      }
    }

    else
    {
      FigCryptCreateForDecrypt_cold_2(&v26);
      return v26;
    }
  }

  else
  {
    FigCryptCreateForDecrypt_cold_3(&v27);
    return v27;
  }

  return result;
}

void FigCryptSetIV(void *a1, void *iv, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 == 3)
    {
      if (CCCryptorGCMReset())
      {
        goto LABEL_12;
      }

      v7 = CCCryptorGCMSetIV();
    }

    else
    {
      v7 = CCCryptorReset(v6, iv);
    }

    if (!v7)
    {
      a1[5] = 0;
      a1[6] = 0;
      return;
    }

LABEL_12:
    FigCryptSetIV_cold_1(&v9);
    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954836, "<<<< FIGCRYPTCC >>>>", 221, v3);
}

void FigCryptDispose(CCCryptorRef *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    if (*a1)
    {
      CCCryptorRelease(*a1);
    }

    free(a1);
  }
}

uint64_t FigBufferedAirPlayOutputGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  return FigBufferedAirPlayOutputGetClassID_sFigBufferedAirPlayOutputClassID;
}

uint64_t __FigBufferedAirPlayOutputGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayOutputGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayOutputCreate(const __CFAllocator *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  sourceClock[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigBufferedAirPlayOutputCreate_cold_4(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (!a3)
  {
    FigBufferedAirPlayOutputCreate_cold_3(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (!a4)
  {
    FigBufferedAirPlayOutputCreate_cold_2(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  cf = 0;
  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 8) = v10;
  if (!v10 || (v11 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 16) = v11) == 0) || (v12 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 24) = v12) == 0) || (v13 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 32) = v13) == 0) || (v14 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 40) = v14) == 0))
  {
    v21 = 4294954510;
    goto LABEL_35;
  }

  *(DerivedStorage + 48) = CFRetain(a2);
  *(DerivedStorage + 56) = CFRetain(a3);
  *(DerivedStorage + 140) = -998653952;
  *(DerivedStorage + 137) = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v17 = v16(CMBaseObject, *MEMORY[0x1E6962340], a1, &cf);
    if (v17)
    {
      goto LABEL_53;
    }

    *(DerivedStorage + 136) = cf == *MEMORY[0x1E695E4D0];
    if (_os_feature_enabled_impl())
    {
      v17 = FigEndpointStreamAudioEngineCreateForEndpointStream();
      if (v17)
      {
        goto LABEL_53;
      }

      goto LABEL_19;
    }

    v18 = FigEndpointStreamGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v17 = v19(v18, *MEMORY[0x1E6962538], a1, DerivedStorage + 72);
      if (!v17)
      {
LABEL_19:
        sourceClock[0] = 0;
        *timebaseOut = 0;
        if (CMTimeSyncClockCreateForSystemDomainClockIdentifier())
        {
          HostTimeClock = CMClockGetHostTimeClock();
          sourceClock[0] = HostTimeClock;
          if (HostTimeClock)
          {
            CFRetain(HostTimeClock);
          }
        }

        v21 = CMTimebaseCreateWithSourceClock(a1, sourceClock[0], timebaseOut);
        if (v21)
        {
          if (sourceClock[0])
          {
            CFRelease(sourceClock[0]);
          }

          if (*timebaseOut)
          {
            CFRelease(*timebaseOut);
          }

          goto LABEL_35;
        }

        v22 = *timebaseOut;
        *(DerivedStorage + 144) = sourceClock[0];
        *(DerivedStorage + 152) = v22;
        *(DerivedStorage + 176) = 0;
        v23 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 192) = -999;
        v24 = *v23;
        *(DerivedStorage + 84) = *v23;
        v25 = *(v23 + 2);
        v26 = MEMORY[0x1E6960CC0];
        *(DerivedStorage + 100) = v25;
        *(DerivedStorage + 112) = *v26;
        *(DerivedStorage + 128) = *(v26 + 16);
        *(DerivedStorage + 108) = 1;
        *(DerivedStorage + 240) = v24;
        *(DerivedStorage + 256) = v25;
        *(DerivedStorage + 80) = 0;
        *(DerivedStorage + 268) = 0;
        FigEndpointStreamAudioEngineGetCMBaseObject();
        v28 = v27;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v30 = *MEMORY[0x1E695E480];
          v17 = v29(v28, @"inputSampleBufferConsumer", *MEMORY[0x1E695E480], DerivedStorage + 176);
          if (!v17)
          {
            Mutable = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 160) = Mutable;
            if (!Mutable)
            {
              v21 = 4294950535;
              goto LABEL_35;
            }

            v17 = FigSampleBufferConsumerInputForBufferedAirPlayOutputCreate(0, *(DerivedStorage + 176), "SBCInput4BAO", (DerivedStorage + 184));
            if (!v17)
            {
              random();
              UInt32 = FigCFNumberCreateUInt32();
              *(DerivedStorage + 272) = UInt32;
              if (UInt32)
              {
                *(DerivedStorage + 264) = FigGetCFPreferenceNumberWithDefault();
                *(DerivedStorage + 265) = 1;
                v33 = FigEndpointStreamGetCMBaseObject();
                v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v34 && !v34(v33, *MEMORY[0x1E6962530], a1, &v39) && v39 == *MEMORY[0x1E695E4C0])
                {
                  *(DerivedStorage + 265) = 0;
                }

                if (dword_1EAF17590)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v37 = CMBaseObjectGetDerivedStorage();
                if (*(v37 + 56) && *(v37 + 72))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListeners();
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListeners();
                  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, fbapo_airPlayPrefsChangedCallback, @"com.apple.airplay.bufferedAVAudioSessionOverrideChanged", 0, 0);
                }
              }

              v21 = 0;
              goto LABEL_35;
            }
          }

          goto LABEL_53;
        }

        goto LABEL_34;
      }

LABEL_53:
      v21 = v17;
      goto LABEL_35;
    }
  }

LABEL_34:
  v21 = 4294954514;
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (!v21)
  {
    CMBaseObjectGetDerivedStorage();
    *a4 = 0;
  }

  return v21;
}

__CFString *fbapo_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayOutput %p; endpointStream=%@>", a1, *(DerivedStorage + 56));
  return Mutable;
}

uint64_t fbapo_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFString **a4)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (CFEqual(a2, @"EnableLocalPlayback"))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17588, 4294954509, "<<<< FigBufferedAirPlayOutput >>>>", 4022, v4);
LABEL_5:
    v11 = v10;
    goto LABEL_6;
  }

  if (CFEqual(a2, @"LocalPlaybackVolume"))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17588, 4294954509, "<<<< FigBufferedAirPlayOutput >>>>", 4033, v4);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"PreferredClock"))
  {
    v13 = *(DerivedStorage + 144);
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"ZeroBasedTimebase"))
  {
    v13 = *(DerivedStorage + 152);
    if (!v13)
    {
LABEL_13:
      v11 = 0;
      *a4 = v13;
      goto LABEL_6;
    }

LABEL_12:
    v13 = CFRetain(v13);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"MaximumNumberOfOutputChannels"))
  {
    v14 = *MEMORY[0x1E6962570];
    v15 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v17 = v14;
    v18 = v15;
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"AtmosIsSupported"))
  {
    if (CFEqual(a2, @"PrerollDuration"))
    {
      v10 = fbapo_copyCalculatePrerollDuration(a1, a4);
      goto LABEL_5;
    }

    if (CFEqual(a2, @"AudioMode"))
    {
      v29 = 0;
      TypeID = CFStringGetTypeID();
      if (fbapo_getCachedValue(a1, TypeID, &v29))
      {
        v13 = @"AudioMode_Default";
      }

      else
      {
        v13 = v29;
        if (!v29)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"IsActiveConfigurationInvalid"))
    {
      isActiveConfigurationInvalid = fbapo_isActiveConfigurationInvalid(a1);
    }

    else
    {
      if (!CFEqual(a2, @"SupportsReceiverSideSoundCheck"))
      {
        if (CFEqual(a2, @"UniqueID"))
        {
          v13 = *(DerivedStorage + 272);
          goto LABEL_12;
        }

        if (!CFEqual(a2, @"ALACIsAllowed"))
        {
          if (CFEqual(a2, @"SourceSampleBufferConsumer"))
          {
            v13 = *(DerivedStorage + 184);
            goto LABEL_12;
          }

          if (CFEqual(a2, @"LoggingID"))
          {
            v13 = CFStringCreateWithCString(a3, (DerivedStorage + 208), 0x8000100u);
            goto LABEL_13;
          }

          if (!CFEqual(a2, @"LastSbufEndOPTS"))
          {
            v11 = 4294954512;
            goto LABEL_6;
          }

          CMBaseObject = *(DerivedStorage + 184);
          v17 = @"LastSbufEndOPTS";
          v18 = a3;
LABEL_16:
          v10 = CMBaseObjectCopyProperty(CMBaseObject, v17, v18, a4);
          goto LABEL_5;
        }

        v28 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 265))
        {
          v28 = MEMORY[0x1E695E4C0];
        }

LABEL_35:
        v13 = *v28;
        goto LABEL_12;
      }

      isActiveConfigurationInvalid = fbapo_doesSupportsReceiverSideSoundCheck(a1);
    }

    v28 = MEMORY[0x1E695E4D0];
    if (!isActiveConfigurationInvalid)
    {
      v28 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_35;
  }

  v19 = *MEMORY[0x1E6962570];
  v20 = *MEMORY[0x1E695E480];
  v21 = FigEndpointStreamGetCMBaseObject();
  v11 = CMBaseObjectCopyProperty(v21, v19, v20, &cf);
  v22 = cf;
  if (!v11)
  {
    SInt32 = FigCFNumberGetSInt32();
    v24 = MEMORY[0x1E695E4D0];
    if (SInt32 <= 7)
    {
      v24 = MEMORY[0x1E695E4C0];
    }

    v25 = *v24;
    if (*v24)
    {
      v25 = CFRetain(v25);
    }

    *a4 = v25;
    v22 = cf;
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_6:
  FigSimpleMutexUnlock();
  return v11;
}