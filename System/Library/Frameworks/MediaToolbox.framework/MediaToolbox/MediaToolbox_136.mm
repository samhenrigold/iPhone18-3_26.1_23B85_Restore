void surrogatePlaybackItem_postDeferredNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v6 = 0;
  }

  else
  {
    v6 = surrogatePlaybackItem_copyOwningPlayer(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  surrogatePlaybackItem_deferReleaseToSafeQ(a2);

  surrogatePlayer_deferReleaseToSafeQ(v6);
}

CFIndex surrogatePlayer_getIndexOfItem(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  OUTLINED_FUNCTION_187();
  Count = CFArrayGetCount(*(v4 + 56));
  if (Count < 1)
  {
    return -1;
  }

  v7.length = Count;
  v6 = *(v3 + 56);
  v7.location = 0;

  return CFArrayGetFirstIndexOfValue(v6, v7, v2);
}

const void *surrogatePlayer_getItemAfterItem(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v12.location = 0;
  v12.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 56), v12, a2);
  v7 = FirstIndexOfValue + 1;
  if (FirstIndexOfValue == -1 || v7 >= v5)
  {
    return 0;
  }

  v10 = *(a1 + 56);

  return CFArrayGetValueAtIndex(v10, v7);
}

__CFDictionary *surrogatePlayer_makeRateDict(const void *a1, float a2)
{
  valuePtr = a2;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(Mutable, @"Rate", v5);
    if (a1)
    {
      CFDictionarySetValue(Mutable, @"SetRateOptions", a1);
    }

    CFRelease(v6);
  }

  return Mutable;
}

uint64_t surrogatePlayer_carefullyRemoveItemOnQ(const void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, a2);
  if (IndexOfItem)
  {
    OUTLINED_FUNCTION_76_12(IndexOfItem, v9, v10, v11, v12, v13, v14, v15, v40, v41, v42, v43);
    if (a4)
    {
      *a4 = v44;
    }

    return v45;
  }

  else
  {
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = v17;
    *(v16 + 160) = 0;
    if (a4)
    {
      *a4 = *(v16 + 162);
    }

    Count = CFArrayGetCount(*(v17 + 56));
    if (Count >= 1 && (v20 = Count, CFArrayGetValueAtIndex(*(v18 + 56), 0), FigCFEqual()))
    {
      v23 = OUTLINED_FUNCTION_178();
      ItemAfterItem = surrogatePlayer_getItemAfterItem(v23, v24);
      v33 = ItemAfterItem;
      v34 = *(v16 + 162);
      if (!*(v16 + 162))
      {
        v35 = OUTLINED_FUNCTION_587();
        ItemAfterItem = surrogatePlaybackItem_deferPostNotification(v35);
        if (*(v18 + 104))
        {
          surrogatePlayer_deferPostCurrentItemDidChangeNotification(a1, @"ReasonAddToPlayQueue");
          *(v18 + 104) = 0;
        }
      }

      OUTLINED_FUNCTION_76_12(ItemAfterItem, v26, v27, v28, v29, v30, v31, v32, v40, v41, v42, v43);
      v21 = v46;
      if (!v34)
      {
        v36 = OUTLINED_FUNCTION_587();
        surrogatePlaybackItem_deferPostNotification(v36);
        v37 = OUTLINED_FUNCTION_177();
        if (v20 == 1)
        {
          surrogatePlayer_deferPostCurrentItemDidChangeNotification(v37, v38);
        }

        else
        {
          replaceNextCurrentItemDidChangeNotification(v37, v38);
        }
      }

      if (v33)
      {
        if (*(v18 + 97))
        {
          v39 = CMBaseObjectGetDerivedStorage();
          if (*(v39 + 162))
          {
            if (*(v39 + 72) != *(v18 + 88))
            {
              surrogatePlaybackItem_deferPostNotification(v33);
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

void surrogatePlayer_setPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = 0uLL;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = v1[2];
    if (FigCFEqual())
    {
      *(v3 + 97) = FigCFEqual();
    }

    v5 = *v1;
    v10 = 0uLL;
    v9 = v5;
    surrogatePlayer_currentRealPlayerInternal(&v9);
    v8 = v10;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(v3[10], v1[1], v6);
    v7 = v8;
  }

  *(v1 + 3) = v7;
}

void surrogatePlayerItem_cancelPendingPrerollInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v3 = DerivedStorage, !CFDictionaryGetValue(*(DerivedStorage + 120), @"StartPreroll")))
  {
    v4 = 0;
  }

  else
  {
    FigCFDictionaryGetInt32IfPresent();
    CFDictionaryRemoveValue(*(v3 + 120), @"StartPreroll");
    v4 = surrogatePlaybackItem_copyOwningPlayer(*v1);
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      surrogatePlayer_deferPostNotification(v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  surrogatePlayer_deferReleaseToSafeQ(v4);
  if (*(v1 + 9))
  {
    surrogatePlaybackItem_deferReleaseToSafeQ(*v1);
  }

  if (*(v1 + 8))
  {
    free(v1);
  }
}

uint64_t surrogatePlaybackItem_copyAssetType()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v2, v3, v4, v5, v6, v7, v8, v10);
  result = 0;
  *v0 = 0;
  return result;
}

uint64_t surrogatePlayer_isRealItemCurrentInRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v5 = OUTLINED_FUNCTION_383();
      if (v6(v5))
      {
        return 0;
      }

      else if (a3)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 64))
        {
          return 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_216_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v8, v9, v10, v11, v12, v13, v14, v16);
  if (v5)
  {
    *v5 = 0;
  }

  if (v4)
  {
    *v4 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t surrogatePlaybackItem_createRealItem()
{
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = v2;
  v6 = v1;
  cf = 0;
  v8 = 0;
  dispatch_sync_f(*(DerivedStorage + 144), &v5, surrogatePlaybackItem_createRealItemInternal);
  result = v8;
  if (!v8)
  {
    if (v0)
    {
      result = 0;
      *v0 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 48))
  {
    goto LABEL_4;
  }

  FigAssetGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v8 = 0;
    v7 = 0;
    v11 = -12782;
    goto LABEL_18;
  }

  v6 = v5(v4, @"assetProperty_AssetType", *MEMORY[0x1E695E480], &cf);
  if (v6)
  {
    v11 = v6;
    v8 = 0;
    v7 = 0;
  }

  else
  {
LABEL_4:
    v7 = *(DerivedStorage + 72);
    if (v7)
    {
      CFRetain(*(DerivedStorage + 72));
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    *(v1 + 8) = v9;
    if (v7)
    {
      v10 = CFRetain(v7);
    }

    else
    {
      v10 = 0;
    }

    *(v1 + 16) = v10;
    if (v8)
    {
      v12 = CFRetain(v8);
    }

    else
    {
      v12 = 0;
    }

    v11 = 0;
    *(v1 + 24) = v12;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *(v1 + 32) = v11;
}

void surrogatePlaybackItem_realItemNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (FigCFEqual())
  {
    if (a5 && (value = 0, CFDictionaryGetValueIfPresent(a5, @"AsRequested", &value), value))
    {
      v7 = CFBooleanGetValue(value);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = DerivedStorage;
      if (v7)
      {
        if (*(DerivedStorage + 169))
        {
          v10 = 0;
          *(DerivedStorage + 169) = 0;
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v9 = CMBaseObjectGetDerivedStorage();
    }

    v10 = surrogatePlaybackItem_copyOwningPlayer(a2);
    if (!v10)
    {
      goto LABEL_24;
    }

    *(v9 + 169) = 0;
    v11 = CMBaseObjectGetDerivedStorage();
    v26 = a2;
    v27 = 0;
    value = v10;
    v12 = *(v11 + 64);
    v13 = surrogatePlayer_removeItemFromPlayQueueInternal;
    p_value = &value;
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v10 = 0;
    *(CMBaseObjectGetDerivedStorage() + 172) = 1;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v10 = surrogatePlaybackItem_copyOwningPlayer(a2);
    if (!v10)
    {
      goto LABEL_24;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v16 = CMBaseObjectGetDerivedStorage();
    dispatch_sync_f(*(v15 + 64), (v16 + 170), surrogatePlaybackItem_setBooleanToTrue);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_16_17();
LABEL_10:
    dispatch_sync_f(v12, p_value, v13);
LABEL_23:
    surrogatePlaybackItem_deferPostNotification(a2);
    goto LABEL_24;
  }

  if (!FigCFEqual() || a5 && (v17 = CFGetTypeID(a5), v17 == CFDictionaryGetTypeID()) && (v18 = CFDictionaryGetValue(a5, @"Properties")) != 0 && ((v19 = v18, v20 = CFGetTypeID(v18), v20 != CFArrayGetTypeID()) || CFArrayGetCount(v19)))
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  v22 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (v22)
  {
    v23 = v22;
    *v22 = CFRetain(a2);
    surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(*(v21 + 8), *(v21 + 144), v23, surrogatePlaybackItem_deferReadyForInspectionNotificationInternal);
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, value, v26);
  }

  v10 = 0;
LABEL_24:
  surrogatePlaybackItem_retainReleaseOnSafeQ(a2);
  surrogatePlayer_deferReleaseToSafeQ(v10);
}

void surrogatePlaybackItem_deferReadyForInspectionNotification(const void *a1, void *a2)
{
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    cf = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v6 = CFDictionaryCreate(v5, &kFigPlaybackItemParameter_Properties, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (cf)
    {
      CFRelease(cf);
    }

    surrogatePlaybackItem_deferPostNotification(a1);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else if (!*(DerivedStorage + 164))
  {
    *(DerivedStorage + 164) = 1;

    surrogatePlaybackItem_deferPostNotification(a1);
  }
}

uint64_t surrogatePlaybackItem_callMakeReadyForInspectionOnRealItem(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_62_13();
  if (v8)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v10 = OUTLINED_FUNCTION_502();
  result = surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(v10, v11, 0, a4, v12);
  if (!result)
  {
    if (qword_1ED4CB958 != -1)
    {
      dispatch_once_f(&qword_1ED4CB958, &qword_1ED4CB950, surrogatePlaybackItem_initPropertiesWithSpecialHandlingWhenMakingReadyForInspection);
    }

    if (qword_1ED4CB950)
    {
      v14 = CFArrayGetCount(qword_1ED4CB950);
    }

    else
    {
      v14 = 0;
    }

    if (Count < 1)
    {
LABEL_15:
      result = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v15);
        v20.location = 0;
        v20.length = v14;
        if (CFArrayContainsValue(qword_1ED4CB950, v20, ValueAtIndex))
        {
          v17 = OUTLINED_FUNCTION_502();
          result = surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(v17, v18, ValueAtIndex, a4, v19);
          if (result)
          {
            break;
          }
        }

        if (Count == ++v15)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

void surrogatePlaybackItem_deferReadyForInspectionNotificationInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  CMBaseObjectGetDerivedStorage();
  surrogatePlaybackItem_deferReadyForInspectionNotification(*v1, 0);
  CFRelease(*v1);

  free(v1);
}

void *surrogatePlayer_copyItemsToPrebuffer_internal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  v2 = *(v1 + 8);
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v4 = -12785;
  }

  else
  {
    result = result[18];
    if (result)
    {
      result = CFRetain(result);
    }

    v4 = 0;
    *v2 = result;
  }

  *(v1 + 16) = v4;
  return result;
}

uint64_t surrogatePlayer_createRealPlayer_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_createRealPlayerOnQ(v2, *(v1 + 8), *(v1 + 16));
  *(v1 + 24) = result;
  return result;
}

void surrogatePlayer_setItemsToPrebuffer_internal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v14 = -12785;
    goto LABEL_31;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 144) == v3)
  {
    v14 = 0;
    goto LABEL_31;
  }

  if (!v3)
  {
LABEL_20:
    if (*(v5 + 32))
    {
      FigPlayerGetFigBaseObject();
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v14 = v20(v19, @"ItemsToPrebuffer", 0);
      }

      else
      {
        v14 = -12782;
      }
    }

    else
    {
      v14 = 0;
    }

    if (*(v5 + 40))
    {
      FigPlayerGetFigBaseObject();
      v22 = v21;
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v23)
      {
        v14 = v23(v22, @"ItemsToPrebuffer", 0);
      }

      else
      {
        v14 = -12782;
      }
    }

    v24 = *(v5 + 144);
    if (v24)
    {
      CFRelease(v24);
      *(v5 + 144) = 0;
    }

    goto LABEL_31;
  }

  if (CFArrayGetCount(v3) < 1)
  {
LABEL_12:
    if (CFArrayGetCount(v3))
    {
      v12 = *(v5 + 144);
      *(v5 + 144) = v3;
      CFRetain(v3);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = 0;
      v14 = 0;
      while (1)
      {
        Count = *(v5 + 144);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v13 >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(v5 + 144), v13);
        *(CMBaseObjectGetDerivedStorage() + 174) = 1;
        v16 = OUTLINED_FUNCTION_178();
        v14 = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v16, v17, 0);
        ++v13;
      }

      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    if (!ValueAtIndex || (v8 = ValueAtIndex, v9 = CFGetTypeID(ValueAtIndex), v9 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemSurrogateVTable)
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v14 = v25;
      goto LABEL_31;
    }

    v10 = surrogatePlaybackItem_copyOwningPlayer(v8);
    v11 = v10;
    if (!v10 || v10 != v2)
    {
      break;
    }

    CFRelease(v10);
    if (++v6 >= CFArrayGetCount(v3))
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_243();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
  v14 = v26;
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_31:
  *(a1 + 16) = v14;
}

uint64_t surrogatePlaybackItem_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_216_0();
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (*DerivedStorage)
  {
    v11 = 0;
    v12 = 4294954511;
    goto LABEL_8;
  }

  if (CFEqual(v4, @"Timebase"))
  {
    v10 = *(v9 + 7);
    if (!v10)
    {
LABEL_7:
      v11 = 0;
      v12 = 0;
      *a4 = v10;
      goto LABEL_8;
    }

LABEL_6:
    v10 = CFRetain(v10);
    goto LABEL_7;
  }

  surrogatePlaybackItem_copyRealItemAndRealPlayer(v7, &cf, 0);
  if (cf)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      if (!FigCFEqual())
      {
        v18 = 0;
        goto LABEL_37;
      }

      v17 = (v9 + 192);
      goto LABEL_19;
    }

LABEL_18:
    v17 = MEMORY[0x1E695E4C0];
LABEL_19:
    v18 = *v17;
    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:
  v23 = 0;
  v19 = *(v9 + 6);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    v12 = 4294954514;
LABEL_29:
    v11 = 0;
    goto LABEL_8;
  }

  v21 = v20(v19, @"assetProperty_AssetType", &v23 + 4, &v23, 0);
  if (v21)
  {
    v12 = v21;
    goto LABEL_29;
  }

  if (HIDWORD(v23) == 3)
  {
    v12 = v23;
    goto LABEL_29;
  }

  if (SHIDWORD(v23) > 1)
  {
LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v22 = 1;
  if (FigCFEqual())
  {
    v9[168] = 1;
  }

LABEL_38:
  if (cf)
  {
    goto LABEL_12;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_41:
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  if (v22 || cf)
  {
    if (!cf)
    {
      if (v22)
      {
        if (a4)
        {
          if (!v18)
          {
            v10 = 0;
            goto LABEL_7;
          }

          v10 = v18;
          goto LABEL_6;
        }

        goto LABEL_41;
      }

      v11 = 0;
LABEL_54:
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_15;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = surrogatePlaybackItem_copyOwningPlayer(v7);
  if (!v11)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_489();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_15;
  }

  if (!cf)
  {
    goto LABEL_54;
  }

LABEL_13:
  FigPlaybackItemGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v14 = OUTLINED_FUNCTION_184();
    RealItemAndRealPlayer = v15(v14);
LABEL_15:
    v12 = RealItemAndRealPlayer;
    goto LABEL_8;
  }

  v12 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  surrogatePlayer_deferReleaseToSafeQ(v11);
  return v12;
}

uint64_t surrogatePlaybackItem_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  cf = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v12 = 4294954511;
  }

  else
  {
    v6 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, surrogatePlaybackItem_handleSetProperty, &v14, &cf, &v15);
    if (v6)
    {
LABEL_7:
      v12 = v6;
      goto LABEL_10;
    }

    if (v14 || (surrogatePlaybackItem_copyRealItemAndRealPlayer(a1, &v17, 0), !v17))
    {
      v12 = 0;
    }

    else
    {
      v8 = v15;
      v7 = cf;
      FigPlaybackItemGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v6 = v11(v10, v7, v8);
        goto LABEL_7;
      }

      v12 = 4294954514;
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v12;
}

void surrogatePlaybackItem_invalidateInternalOnItemQ(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10[0] = a1;
  v10[1] = 0;
  surrogatePlayerItem_cancelPendingPrerollInternal(v10);
  *DerivedStorage = 257;
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    CFArrayRemoveAllValues(v3);
  }

  v4 = *(DerivedStorage + 128);
  if (v4)
  {
    CFDictionaryRemoveAllValues(v4);
  }

  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFDictionaryRemoveAllValues(v5);
  }

  if (*(DerivedStorage + 48))
  {
    if (*(DerivedStorage + 165))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_130();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 165) = 0;
    }

    if (*(DerivedStorage + 166))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_130();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 166) = 0;
    }
  }

  if (*(DerivedStorage + 64))
  {
    if (*(DerivedStorage + 167))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_37_26();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 167) = 0;
    }

    FigPlaybackItemGetFigBaseObject();
    if (v6)
    {
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }
  }

  v9 = *(DerivedStorage + 192);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 192) = 0;
  }
}

void surrogatePlaybackItem_assetNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = 0;
    goto LABEL_31;
  }

  v8 = surrogatePlaybackItem_copyOwningPlayer(a2);
  if (v8 && !*CMBaseObjectGetDerivedStorage())
  {
    if (FigCFEqual())
    {
      if (a5)
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID())
        {
          CFDictionaryGetValue(a5, @"assetPayload_Property");
          if (FigCFEqual())
          {
            if (dword_1EAF17870 >= 2)
            {
              v62 = 0;
              BYTE4(v58) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_46();
              if (v5)
              {
                CMBaseObjectGetDerivedStorage();
                v63 = 136315650;
                OUTLINED_FUNCTION_139();
                v64 = v8;
                OUTLINED_FUNCTION_37_14();
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_448(v11, v12, v13, v14, v15, v16, v17, v18);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0(v42, v43, v44, v45, v46);
            }

            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*DerivedStorage)
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              goto LABEL_31;
            }

            v66 = a2;
            v67 = 0;
            context = v8;
            v48 = *(DerivedStorage + 64);
            v49 = surrogatePlayer_respondToLoadingOfItemAssetType_internal;
LABEL_30:
            dispatch_sync_f(v48, &context, v49);
          }
        }
      }
    }

    else
    {
      v19 = FigCFEqual();
      if (a5)
      {
        if (v19)
        {
          v20 = CFGetTypeID(a5);
          if (v20 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(a5, @"assetPayload_Property");
            if (FigCFEqual())
            {
              v22 = CFDictionaryGetValue(a5, @"assetPayload_Result");
              HIDWORD(v58) = 0;
              v23 = CFDictionaryGetValue(a5, @"assetPayload_CFError");
              if (v22 && (v24 = CFGetTypeID(v22), v24 == CFNumberGetTypeID()))
              {
                CFNumberGetValue(v22, kCFNumberSInt32Type, &v58 + 4);
                v25 = HIDWORD(v58);
              }

              else
              {
                v25 = 0;
              }

              surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a2, v25, v23, Value);
              if (dword_1EAF17870 >= 2)
              {
                OUTLINED_FUNCTION_147();
                v33 = OUTLINED_FUNCTION_126(qword_1EAF17868, v26, v27, v28, v29, v30, v31, v32, v56, v57, v58, v59, v60, v61, v62);
                os_log_type_enabled(v33, v61);
                OUTLINED_FUNCTION_46();
                if (v22)
                {
                  CMBaseObjectGetDerivedStorage();
                  v63 = 136315650;
                  OUTLINED_FUNCTION_139();
                  v64 = v8;
                  OUTLINED_FUNCTION_37_14();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_448(v34, v35, v36, v37, v38, v39, v40, v41);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v50, v51, v52, v53, v54);
              }

              v55 = CMBaseObjectGetDerivedStorage();
              if (*v55)
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_31;
              }

              v66 = a2;
              v67 = 0;
              context = v8;
              v48 = *(v55 + 64);
              v49 = &surrogatePlayer_respondToFailedLoadingOfItemAssetType_internal;
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

LABEL_31:
  surrogatePlaybackItem_retainReleaseOnSafeQ(a2);
  surrogatePlayer_deferReleaseToSafeQ(v8);
}

uint64_t surrogatePlayer_respondToLoadingOfItemAssetType_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(v2, *(v1 + 8));
  *(v1 + 16) = result;
  return result;
}

void surrogatePlaybackItem_copyRealItemAndRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    OUTLINED_FUNCTION_216_0();
    v6 = surrogatePlaybackItem_copyOwningPlayer(v5);
    if (v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        OUTLINED_FUNCTION_49_15(*(DerivedStorage + 64), v8, v9, v10, v11, v12, v13, v14, v15);
        if (v4)
        {
          *v4 = 0;
        }

        if (v3)
        {
          *v3 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  surrogatePlayer_deferReleaseToSafeQ(v6);
}

const void *surrogatePlayer_createRealItemAndRealPlayer()
{
  OUTLINED_FUNCTION_207();
  cf = 0;
  v16 = 0;
  v14 = 0;
  RealItem = surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(v1, &v14, &v16, &cf);
  if (RealItem)
  {
    goto LABEL_12;
  }

  RealItem = cf;
  if (!v16 || !cf)
  {
    if (v16)
    {
      CFRelease(v16);
      v16 = 0;
      RealItem = cf;
    }

    if (RealItem)
    {
      CFRelease(RealItem);
      cf = 0;
    }

    surrogatePlayer_createRealPlayer(v2, v14, &v16);
    if (!RealItem)
    {
      RealItem = surrogatePlaybackItem_createRealItem();
    }

LABEL_12:
    v11 = RealItem;
    if (!v0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (v0)
  {
LABEL_13:
    OUTLINED_FUNCTION_61_15(RealItem, v4, v5, v6, v7, v8, v9, v10, v13, v14, cf);
  }

LABEL_14:
  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t surrogatePlaybackItem_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19[0] = a1;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = 0;
  v14 = OUTLINED_FUNCTION_10_66(DerivedStorage);
  dispatch_sync_f(v14, v19, v15);
  *a5 = 0;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  *a6 = v16;
  if (a4)
  {
    v17 = CFRetain(a4);
  }

  else
  {
    v17 = 0;
  }

  result = 0;
  *a7 = v17;
  return result;
}

void surrogatePlaybackItem_setPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 64))
      {
        *(v1 + 24) = 1;
      }

      else
      {
        v4 = *(v1 + 16);
        if (v4 && CFEqual(*(v1 + 8), @"SelectedMediaArray") && (Value = CFDictionaryGetValue(*(v3 + 128), @"SelectedMediaArray")) != 0)
        {
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
          if (MutableCopy)
          {
            v7 = OUTLINED_FUNCTION_184();
            FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(v7, v8, 1);
            v4 = MutableCopy;
          }
        }

        else
        {
          MutableCopy = 0;
        }

        if (v4)
        {
          v9 = v4;
        }

        else
        {
          v9 = *MEMORY[0x1E695E738];
        }

        CFDictionarySetValue(*(v3 + 128), *(v1 + 8), v9);
        *(v1 + 24) = 0;
        if (MutableCopy)
        {

          CFRelease(MutableCopy);
        }
      }
    }
  }
}

uint64_t surrogatePlaybackItem_GetDimensions()
{
  OUTLINED_FUNCTION_216_0();
  v1 = v0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v2)
  {
    v3 = 0;
    v7 = 4294954511;
    goto LABEL_12;
  }

  v3 = surrogatePlaybackItem_copyOwningPlayer(v1);
  if (!v3)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_627();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_184();
  RealItemAndRealPlayer = v6(v5);
LABEL_9:
  v7 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v3);
  return v7;
}

uint64_t surrogatePlaybackItem_GetDuration(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v2)
  {
    v3 = 0;
    v7 = 4294954511;
    goto LABEL_12;
  }

  v3 = surrogatePlaybackItem_copyOwningPlayer(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_171();
  RealItemAndRealPlayer = v6(v5);
LABEL_9:
  v7 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v3);
  return v7;
}

uint64_t surrogatePlaybackItem_GetCurrentTime(CMTimeValue a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17.value = a1;
  *&v17.timescale = @"CurrentTime";
  v18 = 0;
  v19 = 0;
  v17.epoch = 0;
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v5, v6, v7, v8, v9, v10, v11, v16);
  v12 = 0;
  OUTLINED_FUNCTION_91_6();
  if (v13)
  {
    v12 = 0;
    v14 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    *(a2 + 16) = *(v14 + 16);
  }

  return v12;
}

uint64_t surrogatePlaybackItem_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v11)
  {
    v12 = 0;
    v15 = 4294954511;
    goto LABEL_12;
  }

  v12 = surrogatePlaybackItem_copyOwningPlayer(a1);
  if (v12)
  {
    OUTLINED_FUNCTION_70_10();
    RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
    if (!RealItemAndRealPlayer)
    {
      if (cf)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v14)
        {
          v15 = 4294954514;
          goto LABEL_10;
        }

        RealItemAndRealPlayer = v14(cf, a2, a3, a4, a5);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17868, 4294954513, "<<<< FigPlayerSurrogate >>>>", 6709, v5);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17868, 4294954511, "<<<< FigPlayerSurrogate >>>>", 6702, v5);
  }

  v15 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v12);
  return v15;
}

uint64_t surrogatePlaybackItem_MakeReadyForInspection()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v4)
  {
    return 4294954511;
  }

  v6[0] = v2;
  v6[1] = v1;
  v7 = 0;
  dispatch_sync_f(*(v3 + 144), v6, surrogatePlaybackItem_MakeReadyForInspectionInternal);
  result = v8;
  if (!v8)
  {
    if (v7)
    {
      return surrogatePlaybackItem_callMakeReadyForInspectionOnRealItem(v2, v7, v1, 0, v0);
    }

    else
    {
      result = 0;
      if (v0)
      {
        *v0 = 0;
      }
    }
  }

  return result;
}

uint64_t surrogatePlaybackItem_CopyCommonMetadata()
{
  OUTLINED_FUNCTION_62_13();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v1)
  {
    v2 = 0;
    v6 = 4294954511;
    goto LABEL_12;
  }

  v2 = surrogatePlaybackItem_copyOwningPlayer(v0);
  if (!v2)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v6 = 4294954514;
    goto LABEL_10;
  }

  v4 = OUTLINED_FUNCTION_502();
  RealItemAndRealPlayer = v5(v4);
LABEL_9:
  v6 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v2);
  return v6;
}

uint64_t surrogatePlaybackItem_CopyChapterImageData()
{
  OUTLINED_FUNCTION_62_13();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v1)
  {
    v2 = 0;
    v6 = 4294954511;
    goto LABEL_12;
  }

  v2 = surrogatePlaybackItem_copyOwningPlayer(v0);
  if (!v2)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v6 = 4294954514;
    goto LABEL_10;
  }

  v4 = OUTLINED_FUNCTION_502();
  RealItemAndRealPlayer = v5(v4);
LABEL_9:
  v6 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v2);
  return v6;
}

uint64_t surrogatePlaybackItem_GetNextThumbnailTime(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v4)
  {
    v5 = 0;
    v19 = 4294954511;
    goto LABEL_12;
  }

  v5 = surrogatePlaybackItem_copyOwningPlayer(a1);
  if (!v5)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_627();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

  v21 = *a2;
  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 16);
  v15 = VTable + 16;
  if (!*(v16 + 80))
  {
    v19 = 4294954514;
    goto LABEL_10;
  }

  v17 = OUTLINED_FUNCTION_2_87(v15, v8, v9, v10, v11, v12, v13, v14, v21);
  RealItemAndRealPlayer = v18(cf, v17);
LABEL_9:
  v19 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v5);
  return v19;
}

uint64_t surrogatePlaybackItem_SetTrackProperty(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v2, v3, v4, v5, v6, v7, v8, v10);
  return 0;
}

uint64_t surrogatePlaybackItem_CopyFormatReader()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  v27 = 0;
  cf = 0;
  OUTLINED_FUNCTION_45_17();
  if (v2)
  {
    v15 = 4294954511;
    goto LABEL_17;
  }

  if (!v0)
  {
    v15 = 4294954516;
    goto LABEL_17;
  }

  surrogatePlaybackItem_copyRealItemAndRealPlayer(v1, &cf, 0);
  v3 = cf;
  if (cf)
  {
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 16);
    v12 = VTable + 16;
    v14 = *(v13 + 120);
    if (v14)
    {
      v12 = v14(v3, &v27);
      v15 = v12;
    }

    else
    {
      v15 = 4294954514;
    }

    goto LABEL_12;
  }

  v16 = CFGetAllocator(v1);
  FigAssetGetCMBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    goto LABEL_16;
  }

  v12 = v19(v18, @"assetProperty_AssetType", v16, &v26);
  if (v12)
  {
    goto LABEL_15;
  }

  v12 = FigCFEqual();
  if (!v12)
  {
    v20 = CFGetAllocator(v1);
    FigAssetGetCMBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v12 = v23(v22, @"assetProperty_FormatReader", v20, &v27);
      if (!v12)
      {
        goto LABEL_10;
      }

LABEL_15:
      v15 = v12;
      goto LABEL_17;
    }

LABEL_16:
    v15 = 4294954514;
    goto LABEL_17;
  }

LABEL_10:
  if (v27)
  {
    v15 = 0;
LABEL_12:
    OUTLINED_FUNCTION_61_15(v12, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27);
    goto LABEL_17;
  }

  v15 = 4294954513;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v15;
}

uint64_t surrogatePlaybackItem_SeekToDateWithID(const char *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if (!a2)
  {
    return 4294954516;
  }

  v7 = *(DerivedStorage + 64);
  v8 = CMBaseObjectGetDerivedStorage();
  v22 = a1;
  v23 = 0;
  v9 = OUTLINED_FUNCTION_34_26(v8);
  dispatch_sync_f(v9, &v22, v10);
  v11 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    return v21;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"Date", a2);
  if (v3 && (v13 = FigCFDictionarySetInt32(), v13))
  {
    v19 = v13;
  }

  else
  {
    v14 = CMBaseObjectGetDerivedStorage();
    v22 = a1;
    v23 = @"SeekDate";
    v24 = v11;
    v25 = 0;
    v15 = OUTLINED_FUNCTION_10_66(v14);
    dispatch_sync_f(v15, &v22, v16);
    if (v25)
    {
LABEL_8:
      if (*(*(CMBaseObjectGetVTable() + 16) + 128))
      {
        v17 = OUTLINED_FUNCTION_104_0();
        v19 = v18(v17);
        if (!v11)
        {
          return v19;
        }
      }

      else
      {
        v19 = 4294954514;
        if (!v11)
        {
          return v19;
        }
      }

      goto LABEL_14;
    }

    v19 = 0;
  }

LABEL_14:
  CFRelease(v11);
  return v19;
}

uint64_t surrogatePlaybackItem_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v4 = *(DerivedStorage + 48);
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
  return result;
}

uint64_t surrogatePlaybackItem_SetProperties()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  OUTLINED_FUNCTION_45_17();
  if (v2)
  {
    v14 = 4294954511;
    goto LABEL_13;
  }

  v3 = OUTLINED_FUNCTION_171();
  v9 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v3, v4, 0, v5, v6, v7, v8);
  if (v9)
  {
    goto LABEL_10;
  }

  surrogatePlaybackItem_copyRealItemAndRealPlayer(v1, &cf, 0);
  v10 = cf;
  if (!cf)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v11 = v20;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_11;
  }

  v9 = v12(v10, v11, &v17);
  if (!v9)
  {
    v13 = v17;
LABEL_9:
    v9 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v18, v13, v0);
  }

LABEL_10:
  v14 = v9;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t surrogatePlaybackItem_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v7)
  {
    return 4294954511;
  }

  if (!a4)
  {
    return 4294954516;
  }

  v8 = OUTLINED_FUNCTION_587();
  surrogatePlaybackItem_copyRealItemAndRealPlayer(v8, v9, v10);
  if (!cf)
  {
    return 4294954513;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v11)
  {
    v12 = v11(cf, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(cf);
  return v12;
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithOptions(unint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 64);
  v8 = CMBaseObjectGetDerivedStorage();
  context = a1;
  v9 = OUTLINED_FUNCTION_34_26(v8);
  dispatch_sync_f(v9, &context, v10);
  if (v7)
  {
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  context = *a2;
  v32 = *(a2 + 16);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetValue();
  v12 = CMBaseObjectGetDerivedStorage();
  *&context = a1;
  *(&context + 1) = @"CurrentTime";
  v32 = Mutable;
  v33 = 0;
  v13 = OUTLINED_FUNCTION_10_66(v12);
  dispatch_sync_f(v13, &context, v14);
  v15 = v33;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
LABEL_6:
    v16 = *(v6 + 64);
    v30 = *a2;
    VTable = CMBaseObjectGetVTable();
    v26 = *(VTable + 16);
    v25 = VTable + 16;
    if (*(v26 + 176))
    {
      v27 = OUTLINED_FUNCTION_2_87(v25, v18, v19, v20, v21, v22, v23, v24, v30);
      v28(v16, v27);
    }
  }

  return 0;
}

void surrogatePlaybackItem_setTrackPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 64))
      {
        *(v1 + 32) = 1;
      }

      else
      {
        Value = CFDictionaryGetValue(*(DerivedStorage + 136), *(v1 + 8));
        if (!Value || (Mutable = CFRetain(Value)) == 0)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(*(v3 + 136), *(v1 + 8), Mutable);
        }

        v6 = *(v1 + 16);
        v7 = *(v1 + 24);
        if (v7)
        {
          CFDictionarySetValue(Mutable, v6, v7);
        }

        else
        {
          CFDictionaryRemoveValue(Mutable, v6);
        }

        *(v1 + 32) = 0;
        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }
    }
  }
}

void surrogatePlayer_initiateLoadingOfItemAssetTypeAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v2, *(v1 + 8), *(v1 + 16));
  surrogatePlaybackItem_deferReleaseToSafeQ(*(v1 + 8));
  surrogatePlayer_deferReleaseToSafeQ(*v1);

  free(v1);
}

uint64_t surrogatePlayer_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v56 = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if (!v3)
  {
    return 4294954516;
  }

  v16 = DerivedStorage;
  if (dword_1EAF17870)
  {
    v17 = OUTLINED_FUNCTION_11_64(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v43, v45, v48, v50, SBYTE2(v50), SBYTE3(v50), SHIDWORD(v50));
    OUTLINED_FUNCTION_130(v17, v18, v19, v20, v21, v22, v23, v24, v44, v46, v49, v51, v52, v53, v54);
    OUTLINED_FUNCTION_28();
    if (v6)
    {
      if (v4)
      {
        v25 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v25 = "";
      }

      v26 = CMBaseObjectGetDerivedStorage() + 175;
      if (a3)
      {
        v27 = (CMBaseObjectGetDerivedStorage() + 175);
      }

      else
      {
        v27 = "";
      }

      v57 = 136316674;
      v58 = "surrogatePlayer_AddToPlayQueue";
      v59 = 2048;
      v60 = v4;
      v61 = 2082;
      v62 = v25;
      v63 = 2048;
      v64 = v3;
      v65 = 2082;
      v66 = v26;
      v67 = 2048;
      v68 = a3;
      v69 = 2082;
      v70 = v27;
      LODWORD(v47) = 72;
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v33, v5, v34, &v57, v47);
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v35, v36, v37, v38, v39);
  }

  context[0] = v4;
  context[1] = v3;
  context[2] = a3;
  LOBYTE(v56) = 0;
  HIDWORD(v56) = 0;
  dispatch_sync_f(v16[8], context, surrogatePlaybackItem_addToPlayQueueInternal);
  result = HIDWORD(v56);
  if (!HIDWORD(v56))
  {
    if (v56)
    {
      v41 = OUTLINED_FUNCTION_177();
      return surrogatePlayer_deferInitiateLoadingOfItemAssetType(v41, v42, 1);
    }
  }

  return result;
}

void surrogatePlayer_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  v141 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v124 = 0;
  if (dword_1EAF17870)
  {
    v15 = OUTLINED_FUNCTION_63_13(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v112, v115, v118, v121, SHIDWORD(v121), cf);
    OUTLINED_FUNCTION_94_6(v15, v16, v17, v18, v19, v20, v21, v22, v113, v116, v119, v121, SHIDWORD(v121), cf);
    OUTLINED_FUNCTION_28();
    if (!v3)
    {
      goto LABEL_9;
    }

    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a2)
      {
LABEL_8:
        v127 = 136316162;
        OUTLINED_FUNCTION_47();
        v128 = a1;
        OUTLINED_FUNCTION_39_21();
        v132 = a2;
        v133 = v23;
        v134 = v24;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v25, v26, v27, v28, v29, v30, v2, v31);
LABEL_9:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v32, v33, v34, v35, v36);
        goto LABEL_10;
      }
    }

    else if (!a2)
    {
      goto LABEL_8;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_8;
  }

LABEL_10:
  if (*v14)
  {
    return;
  }

  if (dword_1EAF17870 >= 2)
  {
    v37 = OUTLINED_FUNCTION_63_13(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v112, v115, v118, v121, SHIDWORD(v121), cf);
    OUTLINED_FUNCTION_94_6(v37, v38, v39, v40, v41, v42, v43, v44, v114, v117, v120, v121, SHIDWORD(v121), cf);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v127 = 136315650;
      OUTLINED_FUNCTION_47();
      v128 = a1;
      OUTLINED_FUNCTION_6_104();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v50, v2, v51);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v52, v53, v54, v55, v56);
  }

  v57 = CMBaseObjectGetDerivedStorage();
  if (*v57)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v112, v115, v118);
    if (v58)
    {
      return;
    }
  }

  else
  {
    v137 = 1;
    v140 = 0;
    context = a1;
    v136 = a2;
    v138 = &v124;
    v139 = @"ReasonRemoveFromPlayqueue";
    dispatch_sync_f(*(v57 + 64), &context, surrogatePlayer_carefullyRemoveItem_internal);
    if (v140)
    {
      return;
    }
  }

  if (a2)
  {
    v121 = 0;
    cf = 0;
    surrogatePlaybackItem_copyRealItemAndRealPlayer(a2, &cf, &v121);
    if (cf && v121 && v124)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v63 = OUTLINED_FUNCTION_502();
        v64(v63);
      }
    }

    else
    {
      if (dword_1EAF17870)
      {
        OUTLINED_FUNCTION_427();
        v72 = OUTLINED_FUNCTION_371(qword_1EAF17868, v65, v66, v67, v68, v69, v70, v71, v112, v115, v118, v121, cf, v123, v124, type, v126);
        v73 = type;
        os_log_type_enabled(v72, type);
        OUTLINED_FUNCTION_46();
        if (v2)
        {
          if (a1)
          {
            v74 = (CMBaseObjectGetDerivedStorage() + 128);
          }

          else
          {
            v74 = "";
          }

          CMBaseObjectGetDerivedStorage();
          v127 = 136316162;
          OUTLINED_FUNCTION_47();
          v128 = a1;
          v129 = 2082;
          v130 = v74;
          v131 = v75;
          v132 = a2;
          v133 = 2082;
          v134 = v76;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448(v77, v78, v79, v80, v81, v82, v83, v84);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v85, v86, v87, v88, v89);
        if (dword_1EAF17870 >= 2)
        {
          OUTLINED_FUNCTION_427();
          v97 = OUTLINED_FUNCTION_371(qword_1EAF17868, v90, v91, v92, v93, v94, v95, v96, v112, v115, v118, v121, cf, v123, v124, type, v126);
          v98 = type;
          os_log_type_enabled(v97, type);
          OUTLINED_FUNCTION_40();
          if (v73)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v127 = 136315650;
            OUTLINED_FUNCTION_47();
            v128 = a1;
            OUTLINED_FUNCTION_6_104();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v99, v100, v101, v102, v103, v104, v98, v105);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v106, v107, v108, v109, v110);
        }
      }

      v111 = CMBaseObjectGetDerivedStorage();
      if (*v111)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v112, v115, v118);
      }

      else
      {
        context = a1;
        v136 = 0;
        dispatch_sync_f(*(v111 + 64), &context, surrogatePlayer_initiateEnqueueingOfCurrentItemIfNeeded_internal);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v121)
    {
      CFRelease(v121);
    }
  }

  else
  {
    v59 = *(v14 + 32);
    if (v59)
    {
      v60 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v60)
      {
        v60(v59, 0);
      }
    }

    v61 = *(v14 + 40);
    if (v61)
    {
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v62)
      {
        v62(v61, 0);
      }
    }
  }
}

uint64_t surrogatePlayer_CopyPlayQueueItem()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v4)
  {
    return 4294954511;
  }

  if (!v0)
  {
    return 4294954516;
  }

  v6[0] = v2;
  v6[1] = v1;
  v7 = 0;
  dispatch_sync_f(*(v3 + 64), v6, surrogatePlaybackItem_copyPlayQueueItemInternal);
  if (v8)
  {
    return 0;
  }

  result = 0;
  *v0 = v7;
  return result;
}

uint64_t surrogatePlayer_GetRate()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  theDict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  if (!v0)
  {
    v4 = 4294954516;
    goto LABEL_10;
  }

  surrogatePlayer_copyPropertyFromCache(v1, @"CurrentRate", &theDict, &cf);
  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v2 = OUTLINED_FUNCTION_177();
      v4 = v3(v2);
    }

    else
    {
      v4 = 4294954514;
    }

    goto LABEL_10;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Rate");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, v0);
      v4 = 0;
    }

    else
    {
      v4 = 4294954513;
    }

LABEL_10:
    if (theDict)
    {
      CFRelease(theDict);
    }

    goto LABEL_13;
  }

  v4 = 0;
  *v0 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t surrogatePlayer_StartPreroll(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v9)
  {
    return 4294954511;
  }

  OUTLINED_FUNCTION_49_15(*(v1 + 64), v2, v3, v4, v5, v6, v7, v8, v11);
  return v12;
}

void surrogatePlayer_StepByCount(uint64_t a1, uint64_t a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = 0;
    v12 = 0;
    context = a1;
    v5 = OUTLINED_FUNCTION_1_170(DerivedStorage);
    dispatch_sync_f(v5, &context, v6);
    v7 = v11;
    if (v11)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v8)
      {
        v8(v7, a2);
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, context, v11);
    }
  }
}

uint64_t surrogatePlayer_SetRateAndAnchorTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  v9 = v8;
  v11 = v10;
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v49, 0, sizeof(v49));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v49, HostTimeClock);
  if (dword_1EAF17870)
  {
    LODWORD(v45) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (v6)
    {
      if (v11)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v15 = "";
      }

      *time = *&v5->value;
      *&time[16] = v5->epoch;
      Seconds = CMTimeGetSeconds(time);
      *time = *&v4->value;
      *&time[16] = v4->epoch;
      v17 = CMTimeGetSeconds(time);
      *time = v49;
      v18 = CMTimeGetSeconds(time);
      lhs = *v4;
      rhs = v49;
      CMTimeSubtract(time, &lhs, &rhs);
      v19 = CMTimeGetSeconds(time);
      LODWORD(lhs.value) = 136317186;
      *(&lhs.value + 4) = "surrogatePlayer_SetRateAndAnchorTime";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v11;
      HIWORD(lhs.epoch) = 2082;
      v51 = v15;
      v52 = 2048;
      v53 = v9;
      v54 = 2048;
      v55 = Seconds;
      v56 = 2048;
      v57 = v17;
      v58 = 2048;
      v59 = v18;
      v60 = 2048;
      v61 = v19;
      v62 = 1024;
      v63 = a4;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, os_log_and_send_and_compose_flags_and_os_log_type, 0, v25, &lhs, 88, v45);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v26, v27, v28, v29, v30);
  }

  if (*DerivedStorage)
  {
    return 4294954511;
  }

  *&time[12] = *&v5->value;
  epoch = v5->epoch;
  v66 = *&v4->value;
  v67 = v4->epoch;
  *time = v11;
  *&time[8] = v9;
  v68 = a4;
  v69 = 0;
  v70 = 0;
  v31 = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(v31 + 64), time, surrogatePlayer_setRateAndAnchorTimeInCacheInternal);
  v32 = v70;
  if (v70)
  {
    LODWORD(rhs.value) = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = value;
    }

    else
    {
      v37 = value & 0xFFFFFFFE;
    }

    if (v37)
    {
      LODWORD(lhs.value) = 136315394;
      *(&lhs.value + 4) = "surrogatePlayer_SetRateAndAnchorTime";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = v32;
      LODWORD(v44) = 18;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v38, v39, v40, v41, v42, v35, 0, v43, &lhs, v44);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v32 = v69;
    if (v69)
    {
      rhs = *v5;
      *&v46.value = *&v4->value;
      v46.epoch = v4->epoch;
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v33)
      {
        *time = rhs;
        lhs = v46;
        return v33(v32, time, &lhs, a4, v9);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  return v32;
}

uint64_t surrogatePlayer_CreatePlaybackItemFromAsset(const __CFAllocator *a1, const void *a2, int a3, uint64_t a4, const CFDictionaryValueCallBacks **a5)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v10 = DerivedStorage;
  v47 = a5;
  CFGetAllocator(a1);
  v49 = 0;
  __str[0] = 0;
  *timebaseOut = 0;
  FigNote_AllowInternalDefaultLogs();
  OnlyTimebase = @"com.apple.coremedia";
  v12 = "player";
  OUTLINED_FUNCTION_84_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_84_6();
  fig_note_initialize_category_with_default_work_cf();
  FigPlaybackItemGetClassID();
  if (CMDerivedObjectCreate())
  {
    goto LABEL_45;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  *v13 = 0;
  *(v13 + 175) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(__str[0], (v13 + 175), 16, 0x600u);
  }

  if (FigMetricEventTimelineCreate())
  {
LABEL_45:
    OUTLINED_FUNCTION_60_14();
  }

  else
  {
    v14 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_415_0();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    *(v13 + 48) = v16;
    *(v13 + 32) = a3;
    if (MutableCopy)
    {
      v17 = CFRetain(MutableCopy);
    }

    else
    {
      v17 = 0;
    }

    *(v13 + 40) = v17;
    *(v13 + 64) = 0;
    *(v13 + 96) = 0;
    v18 = FigSimpleMutexCreate();
    *(v13 + 88) = v18;
    if (v18 && (*(v13 + 112) = 0, v19 = MEMORY[0x1E695E9D8], v12 = MEMORY[0x1E695E9E8], v20 = OUTLINED_FUNCTION_9_2(), *(v13 + 128) = CFDictionaryCreateMutable(v20, v21, v19, v12), v22 = OUTLINED_FUNCTION_9_2(), *(v13 + 136) = CFDictionaryCreateMutable(v22, v23, 0, v12), *(v13 + 162) = 0, Mutable = CFDictionaryCreateMutable(v14, 0, v19, v12), (*(v13 + 120) = Mutable) != 0))
    {
      v25 = FigSimpleMutexCreate();
      *(v13 + 152) = v25;
      if (v25)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v27 = CMTimebaseCreateWithSourceClock(v14, HostTimeClock, timebaseOut);
        if (v27)
        {
          OnlyTimebase = v27;
          v12 = 0;
        }

        else
        {
          OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
          if (OnlyTimebase)
          {
            v12 = 0;
          }

          else
          {
            v12 = v49;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_29_28();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
        OnlyTimebase = v43;
        v12 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_28();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      OUTLINED_FUNCTION_60_14();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (*timebaseOut)
  {
    CFRelease(*timebaseOut);
  }

  if (!OnlyTimebase)
  {
    v28 = CMBaseObjectGetDerivedStorage();
    v29 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v28 + 96) = v29;
    if (v29)
    {
      v30 = v10[3];
      *(v28 + 16) = v30;
      if (v30 && (dispatch_retain(v30), v31 = v10[9], (*(v28 + 24) = v31) != 0))
      {
        dispatch_retain(v31);
        v32 = v10[2];
        *(v28 + 8) = v32;
        if (v32)
        {
          dispatch_retain(v32);
        }

        if (v12)
        {
          v33 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v33 = "";
        }

        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlaybackItem[%p.%s]", v12, v33);
        if (*(v28 + 8))
        {
          v34 = dispatch_queue_create(__str, 0);
        }

        else
        {
          v34 = FigDispatchQueueCreateWithPriority();
        }

        *(v28 + 144) = v34;
        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (!Key)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_4_130();
          Key = FigNotificationCenterAddWeakListener();
          if (!Key)
          {
            *(v28 + 165) = 1;
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_4_130();
            Key = FigNotificationCenterAddWeakListener();
            if (!Key)
            {
              *(v28 + 166) = 1;
              if (dword_1EAF17870)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414(v37, v38, v39, v40, v41);
              }

              OnlyTimebase = 0;
              *v47 = v12;
              return OnlyTimebase;
            }
          }
        }

        OnlyTimebase = Key;
      }

      else
      {
        OnlyTimebase = 4294954516;
      }
    }

    else
    {
      OnlyTimebase = 4294954434;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return OnlyTimebase;
}

uint64_t surrogatePlayer_SetRateWithOptions(uint64_t a1, const void *a2, float a3)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  RateDict = surrogatePlayer_makeRateDict(a2, a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15);
  if (RateDict)
  {
    CFRelease(RateDict);
  }

  return 0;
}

uint64_t surrogatePlayer_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v26 = 0;
  cf = 0;
  theDict = 0;
  v23 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, cf);
    if (!v6)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = v6;
    goto LABEL_24;
  }

  v6 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, surrogatePlayer_handleSetProperty, &v26, &theDict, &cf);
  if (v6)
  {
    goto LABEL_20;
  }

  if (!v26)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v28 = 0;
    v29 = 0;
    context = a1;
    v8 = OUTLINED_FUNCTION_1_170(DerivedStorage);
    dispatch_sync_f(v8, &context, v9);
    v11 = v28;
    v10 = v29;
    if (v28)
    {
      v12 = theDict;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v13)
      {
        v13(v11, v12, &v23);
      }
    }

    if (v10)
    {
      v14 = OUTLINED_FUNCTION_178();
      if (CFDictionaryContainsKey(v14, v15) || CFDictionaryContainsKey(a2, @"VideoTargetArray") || CFDictionaryContainsKey(a2, @"RequiresNumVideoSlots") || CFDictionaryContainsKey(a2, @"ClosedCaptionLayerArray"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
        CFDictionaryRemoveValue(MutableCopy, @"VideoLayerArray");
        CFDictionaryRemoveValue(MutableCopy, @"VideoTargetArray");
        CFDictionaryRemoveValue(MutableCopy, @"RequiresNumVideoSlots");
        CFDictionaryRemoveValue(MutableCopy, @"ClosedCaptionLayerArray");
        v17 = theDict;
        theDict = MutableCopy;
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        MutableCopy = 0;
      }

      v18 = theDict;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v19)
      {
        v19(v10, v18, 0);
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  MutableCopy = 0;
LABEL_22:
  v20 = FPSupport_CopyCombinedSetPropertiesErrDictionary(cf, v23, a3);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_24:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v20;
}

uint64_t surrogatePlayer_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFCopyCompactDescription();
  v6 = v5;
  if (*DerivedStorage)
  {
    v11 = 4294954511;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = 0;
  context = a1;
  v8 = OUTLINED_FUNCTION_1_170(v7);
  dispatch_sync_f(v8, &context, v9);
  v10 = v18;
  if (!v17)
  {
    v11 = 0;
    if (!v18)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = FigPlayerReevaluateRouteConfigurationForReason(v17, a2, @" -> surrogate real player");
  if (v10)
  {
LABEL_6:
    v12 = OUTLINED_FUNCTION_104_0();
    FigPlayerReevaluateRouteConfigurationForReason(v12, v13, v14);
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v11;
}

uint64_t surrogatePlayer_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  v3 = OUTLINED_FUNCTION_178();
  surrogatePlayer_copyPropertyFromCache(v3, v4, v5, 0);
  MutableCopy = FigCFArrayCreateMutableCopy();
  CFArrayAppendValue(MutableCopy, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, 0);
  v15 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v15;
}

uint64_t surrogatePlayer_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  v3 = OUTLINED_FUNCTION_178();
  surrogatePlayer_copyPropertyFromCache(v3, v4, v5, 0);
  MutableCopy = FigCFArrayCreateMutableCopy();
  v7 = 0;
  if (!MutableCopy)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(MutableCopy); v7 < i; i = 0)
  {
    v9 = OUTLINED_FUNCTION_618();
    if (CFArrayGetValueAtIndex(v9, v10) == a2)
    {
      v11 = OUTLINED_FUNCTION_618();
      CFArrayRemoveValueAtIndex(v11, v12);
    }

    ++v7;
    if (MutableCopy)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v14, v15, v16, v17, v18, v19, v20, 0);
  v21 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v21;
}

uint64_t surrogatePlayer_TransferOwnershipOfPlaybackItemFromPlayer(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_187();
  v69 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870)
  {
    OUTLINED_FUNCTION_427();
    v14 = OUTLINED_FUNCTION_371(qword_1EAF17868, v7, v8, v9, v10, v11, v12, v13, v57, v58, v59, v60, v61, v63, SBYTE2(v63), SBYTE3(v63), SBYTE4(v63));
    os_log_type_enabled(v14, BYTE3(v63));
    OUTLINED_FUNCTION_53_17();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = HIDWORD(v63);
    }

    if (!v17)
    {
      goto LABEL_14;
    }

    if (v4)
    {
      CMBaseObjectGetDerivedStorage();
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
LABEL_8:
      CMBaseObjectGetDerivedStorage();
      if (!a3)
      {
LABEL_13:
        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v23, BYTE3(v63), v24);
LABEL_14:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0(v25, v26, v27, v28, v29);
        goto LABEL_15;
      }

LABEL_9:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_13;
    }

    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_15:
  if (!a3 || !v3)
  {
    OUTLINED_FUNCTION_42_23();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v52 = v55;
    v34 = 0;
    goto LABEL_36;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v32 = v31, *v31))
  {
    v34 = 0;
    v52 = 4294954511;
    goto LABEL_36;
  }

  v62 = DerivedStorage;
  v33 = CMBaseObjectGetDerivedStorage();
  v34 = surrogatePlaybackItem_copyOwningPlayer(v3);
  if (v34 != a3)
  {
    OUTLINED_FUNCTION_42_23();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v58, v59);
    v52 = v56;
    goto LABEL_36;
  }

  if (dword_1EAF17870 >= 2)
  {
    OUTLINED_FUNCTION_427();
    v42 = OUTLINED_FUNCTION_371(qword_1EAF17868, v35, v36, v37, v38, v39, v40, v41, v57, v58, v59, v5, DerivedStorage, v63, SBYTE2(v63), SBYTE3(v63), SBYTE4(v63));
    if (os_log_type_enabled(v42, type))
    {
      v43 = v65;
    }

    else
    {
      v43 = v65 & 0xFFFFFFFE;
    }

    if (v43)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_6_104();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v42, type, v49);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v50 = CMBaseObjectGetDerivedStorage();
  if (*v50)
  {
    OUTLINED_FUNCTION_42_23();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v58, v59);
    v52 = v51;
    if (v51)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v67 = v3;
    v68 = 0;
    context = a3;
    dispatch_sync_f(*(v50 + 64), &context, surrogatePlayer_removeItemWithoutReset_internal);
    v52 = v68;
    if (v68)
    {
      goto LABEL_36;
    }
  }

  if (a3 == v4)
  {
    v52 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v53 = *(v33 + 96);
    if (v53)
    {
      CFRelease(v53);
      *(v33 + 96) = 0;
    }

    *(v33 + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    FigSimpleMutexUnlock();
    v67 = v3;
    v68 = 0;
    context = a3;
    dispatch_sync_f(v32[8], &context, surrogatePlayer_removeItemFromValidItems);
    v52 = v68;
    if (!v68)
    {
      v67 = v3;
      v68 = 0;
      context = v4;
      dispatch_sync_f(v62[8], &context, surrogatePlayer_receiveOwnershipOfItem);
      v52 = v68;
    }
  }

LABEL_36:
  surrogatePlayer_deferReleaseToSafeQ(v34);
  return v52;
}

uint64_t surrogatePlayer_CopyDisplayedCVPixelBuffer()
{
  OUTLINED_FUNCTION_207();
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = 0;
  context = v0;
  v2 = OUTLINED_FUNCTION_1_170(DerivedStorage);
  dispatch_sync_f(v2, &context, v3);
  if (!v8)
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_171();
  return v5(v4);
}

void surrogatePlaybackItem_addToPlayQueueInternal(void *a1)
{
  v117 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = surrogatePlaybackItem_copyOwningPlayer(a1[1]);
  v90 = v1;
  if (a1[2])
  {
    v6 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v6 = 0;
  }

  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, a1[1]);
  Count = CFArrayGetCount(*(DerivedStorage + 56));
  v16 = Count;
  v93 = v5;
  if (!dword_1EAF17870)
  {
    goto LABEL_23;
  }

  v17 = OUTLINED_FUNCTION_97_8(Count, v9, v10, v11, v12, v13, v14, v15, v85, v86, v87, v88, v89, v1, IndexOfItem, Count, v5, v94, SBYTE2(v94), 0, 0);
  v18 = BYTE3(v94);
  if (os_log_type_enabled(v17, BYTE3(v94)))
  {
    v19 = HIDWORD(v94);
  }

  else
  {
    v19 = HIDWORD(v94) & 0xFFFFFFFE;
  }

  if (v19)
  {
    v20 = *a1;
    if (*a1)
    {
      v21 = (CMBaseObjectGetDerivedStorage() + 128);
    }

    else
    {
      v21 = "";
    }

    v89 = v21;
    v22 = a1[1];
    v88 = *(v4 + 64);
    if (v22)
    {
      v23 = (CMBaseObjectGetDerivedStorage() + 175);
    }

    else
    {
      v23 = "";
    }

    v24 = a1[2];
    if (v6)
    {
      v25 = *(v6 + 64);
      if (v24)
      {
LABEL_18:
        v26 = v23;
        v87 = v22;
        v27 = v17;
        v28 = v25;
        v29 = CMBaseObjectGetDerivedStorage();
        v25 = v28;
        v17 = v27;
        v18 = BYTE3(v94);
        v23 = v26;
        v30 = (v29 + 175);
LABEL_21:
        *v95 = 136317186;
        *&v95[4] = "surrogatePlaybackItem_addToPlayQueueInternal";
        *&v95[12] = 2048;
        *&v95[14] = v20;
        *&v95[22] = 2082;
        v96 = v89;
        *v97 = 2048;
        *&v97[2] = v22;
        *&v97[10] = 2048;
        *&v97[12] = v88;
        *&v97[20] = 2082;
        *&v97[22] = v23;
        *&v97[30] = 2048;
        v98 = v24;
        *v99 = 2048;
        *&v99[2] = v25;
        *&v99[10] = 2082;
        *&v99[12] = v30;
        LODWORD(v86) = 92;
        v85 = v95;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v17, v18, v36);
        v5 = v93;
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    v30 = "";
    goto LABEL_21;
  }

LABEL_22:
  OUTLINED_FUNCTION_7();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  IndexOfItem = v91;
  v16 = v92;
LABEL_23:
  if (*v4 || (v5 == *a1 ? (v37 = IndexOfItem == -1) : (v37 = 0), !v37))
  {
    v70 = -12780;
    goto LABEL_62;
  }

  *(v4 + 170) = 0;
  *(a1 + 24) = 0;
  v38 = a1[2];
  if (!v38)
  {
    CFArrayAppendValue(*(DerivedStorage + 56), a1[1]);
    LODWORD(v92) = 0;
    v39 = v16;
    goto LABEL_31;
  }

  v71 = surrogatePlayer_getIndexOfItem(DerivedStorage, v38);
  v72 = v71;
  if (v71)
  {
    if (v71 == -1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v86, v87);
      v70 = v73;
      goto LABEL_62;
    }

    goto LABEL_74;
  }

  if (!*(DerivedStorage + 88))
  {
LABEL_74:
    LODWORD(v92) = 0;
    goto LABEL_75;
  }

  FigPlayerGetFigBaseObject();
  v76 = v75;
  v77 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v77)
  {
    v77(v76, @"ActionAtEnd", @"None");
  }

  LODWORD(v92) = 1;
LABEL_75:
  v39 = v72 + 1;
  CFArrayInsertValueAtIndex(*(DerivedStorage + 56), v72 + 1, a1[1]);
  if (v72 + 2 <= v16)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 56), v72 + 2);
    if (*(CMBaseObjectGetDerivedStorage() + 162))
    {
      while (v16 - 2 != v72)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v72 + 3);
        ++v72;
        if (!*(CMBaseObjectGetDerivedStorage() + 162))
        {
          v78 = v72 + 1;
          goto LABEL_82;
        }
      }

      v78 = v16;
    }

    else
    {
      v78 = 0;
    }

LABEL_82:
    if (v78 >= 1 && v78 > v39)
    {
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v78);
        v80 = CMBaseObjectGetDerivedStorage();
        *(CMBaseObjectGetDerivedStorage() + 162) = 0;
        *(v80 + 169) = 1;
        v83 = v80 + 64;
        v82 = *(v80 + 64);
        v81 = *(v83 + 8);
        v84 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v84)
        {
          v84(v81, v82);
        }

        --v78;
      }

      while (v78 > v39);
      v5 = v93;
    }
  }

LABEL_31:
  v40 = surrogatePlayer_copyPlayQueueDescription(*a1);
  v48 = v40;
  if (dword_1EAF17870)
  {
    v49 = v16;
    v50 = OUTLINED_FUNCTION_97_8(v40, v41, v42, v43, v44, v45, v46, v47, v85, v86, v87, v88, v89, v90, v39, v92, v93, v94, SBYTE2(v94), 0, 0);
    if (os_log_type_enabled(v50, BYTE3(v94)))
    {
      v51 = HIDWORD(v94);
    }

    else
    {
      v51 = HIDWORD(v94) & 0xFFFFFFFE;
    }

    if (v51)
    {
      v52 = *a1;
      if (*a1)
      {
        v53 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v53 = "";
      }

      *v95 = 136315906;
      *&v95[4] = "surrogatePlaybackItem_addToPlayQueueInternal";
      *&v95[12] = 2048;
      *&v95[14] = v52;
      *&v95[22] = 2082;
      v96 = v53;
      *v97 = 2114;
      *&v97[2] = v48;
      LODWORD(v86) = 42;
      v85 = v95;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v54, v55, v56, v57, v58, v50, BYTE3(v94), v59);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v60, v61, v62, v63, v64);
    v5 = v93;
    v16 = v49;
    v39 = v91;
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v16)
  {
    if (*(DerivedStorage + 96))
    {
      v65 = v39;
      do
      {
        v66 = v65;
        v67 = v65-- < 1;
        if (v67)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v65);
      }

      while (!*(CMBaseObjectGetDerivedStorage() + 160));
      *(a1 + 24) = v66 < 1;
    }

    if (!v92)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(a1 + 24) = 1;
    *(DerivedStorage + 104) = 1;
    if (!v92)
    {
      goto LABEL_52;
    }
  }

  surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(*a1, v41, v42, v43, v44, v45, v46, v47, v85, v86, v87, v88, v89, SHIDWORD(v89), v90, SWORD2(v90), v91, v92, v93, v94, *v95, *&v95[8], *&v95[16], v96, *v97, *&v97[8], *&v97[16], *&v97[24], v98, *v99, *&v99[8], *&v99[16], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
LABEL_52:
  CFDictionaryGetValue(*(DerivedStorage + 80), @"ActionAtEnd");
  if (FigCFEqual())
  {
    v67 = v16 < 1;
  }

  else
  {
    v67 = 1;
  }

  v68 = !v67 && v39 == v16;
  if (v68 && (ValueAtIndex = FigCFArrayGetValueAtIndex(), *(CMBaseObjectGetDerivedStorage() + 173)))
  {
    v74 = *a1;
    v102 = ValueAtIndex;
    v103 = 0;
    v101 = v74;
    surrogatePlayer_removeItemFromPlayQueueInternal(&v101);
    v70 = HIDWORD(v103);
    if (v16 == 1)
    {
      surrogatePlaybackItem_deferPostNotification(ValueAtIndex);
      *(DerivedStorage + 112) = 2;
      *(DerivedStorage + 120) = @"ReasonAdvanceDueToError";
      *(a1 + 24) = 1;
    }
  }

  else
  {
    v70 = 0;
  }

LABEL_62:
  surrogatePlayer_deferReleaseToSafeQ(v5);
  *(a1 + 7) = v70;
}

uint64_t surrogatePlayer_carefullyRemoveItem_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_carefullyRemoveItemOnQ(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 40) = result;
  return result;
}

const void *surrogatePlaybackItem_copyPlayQueueItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(v1 + 8);
  if (v4)
  {
    result = surrogatePlayer_getIndexOfItem(DerivedStorage, v4);
    if (result == -1)
    {
      v10 = -12780;
      goto LABEL_11;
    }

    v8 = result;
    Count = CFArrayGetCount(*(v3 + 56));
    v6 = v8 + 1;
    if (Count > v8 + 1)
    {
      v5 = *(v3 + 56);
LABEL_4:
      result = CFArrayGetValueAtIndex(v5, v6);
      if (result)
      {
        result = CFRetain(result);
      }

      goto LABEL_10;
    }
  }

  else if (CFArrayGetCount(*(DerivedStorage + 56)) >= 1)
  {
    v5 = *(v3 + 56);
    v6 = 0;
    goto LABEL_4;
  }

  result = 0;
LABEL_10:
  v10 = 0;
  *(v1 + 16) = result;
LABEL_11:
  *(v1 + 24) = v10;
  return result;
}

void surrogatePlayer_setRateAndAnchorTimeInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v13 = -12785;
    goto LABEL_18;
  }

  v3 = *(DerivedStorage + 56);
  if (!v3 || CFArrayGetCount(v3) <= 0)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, v17);
    goto LABEL_18;
  }

  FigCFArrayGetFirstValue();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v1;
  v22 = 0;
  v21 = v5;
  surrogatePlayer_currentRealPlayerInternal(&v21);
  v6 = *(&v21 + 1);
  if (*(&v21 + 1) && *(v4 + 162))
  {
    RateDict = surrogatePlayer_makeRateDict(0, *(v1 + 2));
    v1[8] = v6;
  }

  else
  {
    v19 = *(v1 + 12);
    v20 = *(v1 + 28);
    v15 = *(v1 + 36);
    v18 = *(v1 + 52);
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9D8];
    v9 = MEMORY[0x1E695E9E8];
    RateDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFDictionaryCreateMutable(v7, 3, v8, v9);
    v12 = Mutable;
    if (RateDict)
    {
      if (!Mutable)
      {
        CFRelease(RateDict);
        RateDict = 0;
        goto LABEL_15;
      }

      v21 = v19;
      v22 = v20;
      if (FigCFDictionarySetCMTime() || (v21 = v15, v22 = v18, FigCFDictionarySetCMTime()) || FigCFDictionarySetInt32() || (CFDictionarySetValue(RateDict, @"AnchorTime", v12), FigCFDictionarySetFloat32()))
      {
        CFRelease(RateDict);
        RateDict = 0;
      }
    }

    else if (!Mutable)
    {
      goto LABEL_15;
    }

    CFRelease(v12);
  }

LABEL_15:
  *&v21 = *v1;
  *(&v21 + 1) = @"CurrentRate";
  v23 = 0;
  v24 = 0;
  v22 = RateDict;
  surrogatePlayer_setPropertyInCacheInternal(&v21);
  if (RateDict)
  {
    CFRelease(RateDict);
  }

  v13 = 0;
LABEL_18:
  *(v1 + 18) = v13;
}

void surrogatePlayer_removeItemFromValidItems(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (surrogatePlayer_getIndexOfItem(DerivedStorage, *(v1 + 8)) == -1)
  {
    FigCFWeakReferenceTableRemoveValue();
    v4 = 0;
    *(v3 + 104) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }

  *(v1 + 16) = v4;
}

void surrogatePlayer_receiveOwnershipOfItem(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v25 = 0;
  v4 = *(v3 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    Key = -12782;
    goto LABEL_21;
  }

  v6 = v5(v4, @"assetProperty_AssetType", &v25, 0, 0);
  if (v6)
  {
    Key = v6;
    goto LABEL_21;
  }

  if (v25 != 2)
  {
    v7 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v22 = surrogatePlaybackItem_copyAssetType();
  v7 = v26;
  if (!v22)
  {
    if (FigCFEqual())
    {
      v23 = 32;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_5;
      }

      v23 = 40;
    }

    v8 = *(DerivedStorage + v23);
    if (v8)
    {
      CFRetain(*(DerivedStorage + v23));
    }

LABEL_6:
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_49_15(*(v3 + 144), v9, v10, v11, v12, v13, v14, v15, v24);
    FigSimpleMutexUnlock();
    v16 = *(v3 + 72);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *(v3 + 64);
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = *(v3 + 80);
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v19)
    {
      Key = v19(v16, v17, v18);
    }

    else
    {
      Key = -12782;
    }

    v21 = *(v3 + 80);
    if (v21)
    {
      CFRelease(v21);
      *(v3 + 80) = 0;
    }

    if (!Key)
    {
LABEL_16:
      Key = FigCFWeakReferenceTableAddValueAndGetKey();
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Key = v22;
  v8 = 0;
  if (v26)
  {
LABEL_18:
    CFRelease(v7);
  }

LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_21:
  *(v1 + 16) = Key;
}

uint64_t surrogatePlayer_removeItemWithoutReset_internal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_502();
  if (surrogatePlayer_getIndexOfItem(v2, v3) == -1 || (v4 = OUTLINED_FUNCTION_178(), result = surrogatePlayer_carefullyRemoveItemOnQ(v4, v5, 0, v6), !result))
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

double surrogatePlayer_SetConnectionActive(uint64_t a1, int a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = MEMORY[0x1E695E4D0];
      if (!a2)
      {
        v6 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"Active", *v6);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_2_163(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v15);
      CFRelease(v5);
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double surrogatePlayer_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  *(&v32 + 1) = a3;
  LODWORD(v32) = 0;
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = MEMORY[0x1E695E4D0];
      if (!a2)
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"DuckDown", *v11);
      v12 = CFNumberCreate(v8, kCFNumberFloat32Type, &v32 + 4);
      if (!v12)
      {
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, *context, v34);
        v31 = v10;
        goto LABEL_17;
      }

      v13 = v12;
      CFDictionarySetValue(v10, @"DuckVolume", v12);
      v14 = CFNumberCreate(v8, kCFNumberFloat32Type, &v32);
      if (v14)
      {
        CFDictionarySetValue(v10, @"RampDuration", v14);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v35 = 0;
        v36 = 0;
        OUTLINED_FUNCTION_2_163(DerivedStorage, v16, v17, v18, v19, v20, v21, v22, v32, a1, @"DuckVolume", v10);
        v23 = v35;
        v24 = v36;
        if (v35)
        {
          v25 = *(&v32 + 1);
          v26 = *(CMBaseObjectGetVTable() + 32);
          if (v26)
          {
            v27 = *(v26 + 8);
            if (v27)
            {
              v27(v23, a2, v25, a4);
            }
          }
        }

        if (v24)
        {
          v28 = *(&v32 + 1);
          v29 = *(CMBaseObjectGetVTable() + 32);
          if (v29)
          {
            v30 = *(v29 + 8);
            if (v30)
            {
              v30(v24, a2, v28, a4);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, *context, v34);
      }

      CFRelease(v10);
      CFRelease(v13);
      if (v14)
      {
        v31 = v14;
LABEL_17:
        CFRelease(v31);
      }
    }

    else
    {
      OUTLINED_FUNCTION_429();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t surrogatePlayer_SilentMute(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v11);
  return 0;
}

const void *surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem_cold_1()
{
  OUTLINED_FUNCTION_187();
  valuePtr = 0;
  Value = CFDictionaryGetValue(v2, @"SeekID");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  result = CFDictionaryGetValue(v1, @"Date");
  if (result)
  {
    v5 = result;
    v6 = valuePtr;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = (VTable + 16);
    v9 = *(v8 + 128);
    if (v9)
    {
      return v9(v0, v5, v6);
    }
  }

  return result;
}

void surrogatePlayer_handleSetProperty_cold_10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_216_0();
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v5);
      if (*(v4 + 98) != Value)
      {

        surrogatePlayer_handleWaitForVideoTargetConditionChange(a4, 1, Value, 0);
      }
    }
  }
}

uint64_t FigMetricInitialLikelyToKeepUpEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v31 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v29 = 0;
  cf = 0;
  v27 = 0;
  v28 = 0;
  if (a1 && a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    v7 = FigGetAllocatorForMedia();
    v8 = CFArrayCreateMutable(v7, 0, v5);
    v9 = FigGetAllocatorForMedia();
    v10 = CFArrayCreateMutable(v9, 0, v5);
    v11 = v10;
    if (Mutable && v8 && v10)
    {
      v12 = xpc_dictionary_get_double(a1, "TimeTaken");
      CMTime = FigXPCMessageGetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFDate();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFString();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFArray();
            if (!CMTime)
            {
              v14 = xpc_dictionary_get_value(a1, "Variant");
              CMTime = FigAlternateCreateWithXPCObject(v14, 0, &v28);
              if (!CMTime)
              {
                v15 = xpc_dictionary_get_value(a1, "MediaPlaylistRequestEvents");
                v16 = xpc_dictionary_get_value(a1, "MediaSegmentRequestEvents");
                v17 = xpc_dictionary_get_value(a1, "ContentKeyRequestEvents");
                if (FigXPCArrayGetCount())
                {
                  v18 = 0;
                  while (1)
                  {
                    value[0] = 0;
                    xpc_array_get_value(v15, v18);
                    CMTime = FigMetricEventDeserializeEventAndCopy();
                    if (CMTime)
                    {
                      break;
                    }

                    CFArrayAppendValue(Mutable, value[0]);
                    if (FigXPCArrayGetCount() <= ++v18)
                    {
                      goto LABEL_15;
                    }
                  }
                }

                else
                {
LABEL_15:
                  if (FigXPCArrayGetCount())
                  {
                    v19 = 0;
                    while (1)
                    {
                      value[0] = 0;
                      xpc_array_get_value(v16, v19);
                      CMTime = FigMetricEventDeserializeEventAndCopy();
                      if (CMTime)
                      {
                        break;
                      }

                      CFArrayAppendValue(v8, value[0]);
                      if (FigXPCArrayGetCount() <= ++v19)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    if (FigXPCArrayGetCount())
                    {
                      v20 = 0;
                      while (1)
                      {
                        value[0] = 0;
                        xpc_array_get_value(v17, v20);
                        CMTime = FigMetricEventDeserializeEventAndCopy();
                        if (CMTime)
                        {
                          break;
                        }

                        CFArrayAppendValue(v11, value[0]);
                        if (FigXPCArrayGetCount() <= ++v20)
                        {
                          goto LABEL_23;
                        }
                      }
                    }

                    else
                    {
LABEL_23:
                      v21 = FigGetAllocatorForMedia();
                      *value = v31;
                      v26 = v32;
                      CMTime = FigMetricItemInitialLikelyToKeepUpEventCreate(v21, value, cf, v29, v28, v27, Mutable, v8, v12, v11, a2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v22 = CMTime;
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v22 = v24;
    Mutable = 0;
    v8 = 0;
    v11 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

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

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v22;
}

uint64_t FigMetricLikelyToKeepUpEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v17 = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  v15 = 0;
  cf = 0;
  v13 = 0;
  v14 = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = xpc_dictionary_get_double(a1, "TimeTaken");
      CMTime = FigXPCMessageGetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFDate();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFString();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFArray();
            if (!CMTime)
            {
              value = xpc_dictionary_get_value(a1, "Variant");
              CMTime = FigAlternateCreateWithXPCObject(value, 0, &v14);
              if (!CMTime)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                v11 = v17;
                v12 = v18;
                CMTime = FigMetricItemLikelyToKeepUpEventCreateInternal(AllocatorForMedia, &v11, cf, v15, v14, v13, a2, v5);
              }
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17888, 4294947836, "metricevent", 533, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17888, 4294947836, "metricevent", 532, v2);
  }

  v9 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t meltku_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17888, 4294947835, "metricevent", 493, v2);
LABEL_32:
    v18 = v7;
    goto LABEL_29;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17888, 4294947835, "metricevent", 494, v2);
    goto LABEL_32;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = FigAlternateCopyAsXPCObject(v6, &value);
  if (v7)
  {
    goto LABEL_32;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v9 = v8 ? v8(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v9);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v10)
  {
    v10(&v20, a1);
  }

  else
  {
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = FigXPCMessageSetCMTime();
  if (v7)
  {
    goto LABEL_32;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v11)
  {
    v11(a1);
  }

  v7 = FigXPCMessageSetCFDate();
  if (v7)
  {
    goto LABEL_32;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v12)
  {
    v13 = v12(a1);
  }

  else
  {
    v13 = 0;
  }

  v14 = FigXPCMessageSetCFString();
  if (v14)
  {
    v18 = v14;
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 40) + 48);
  v16.n128_u64[0] = 0;
  if (v15)
  {
    v16.n128_f64[0] = v15(a1, v16);
  }

  xpc_dictionary_set_double(a2, "TimeTaken", v16.n128_f64[0]);
  v17 = *(*(CMBaseObjectGetVTable() + 40) + 16);
  if (v17)
  {
    v17(a1);
  }

  v18 = FigXPCMessageSetCFArray();
  if (!v18)
  {
    xpc_dictionary_set_value(a2, "Variant", value);
  }

  if (v13)
  {
LABEL_28:
    CFRelease(v13);
  }

LABEL_29:
  FigXPCRelease();
  return v18;
}

uint64_t meiltku_serialize_cold_4(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;

  return FigXPCRelease();
}

double clcpcgcfsb_AddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v5 = DerivedStorage;
  if (!CMSampleBufferGetNumSamples(a2))
  {
    return result;
  }

  v7 = *(v5 + 8);
  if (v7)
  {
    goto LABEL_4;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  v10 = *v5;
  v20.value = 0;
  LODWORD(lhs.value) = 0;
  LODWORD(rhs.value) = 0;
  result = FigClosedCaptionGetClosedCaptionServiceFormatAndServiceIndexFromFormatDescription(FormatDescription, &lhs, &rhs);
  if (v11)
  {
    goto LABEL_20;
  }

  if (LODWORD(rhs.value) && LODWORD(lhs.value) && LODWORD(lhs.value) != 1681272888)
  {
    goto LABEL_19;
  }

  v11 = FigCEA608CaptionDecoderCreate(v10, FormatDescription, clcpcgcfsbCaptionDecoderCallback, a1, 0, &v20);
  if (v11)
  {
LABEL_20:
    v17 = v11;
    goto LABEL_21;
  }

  SInt32 = FigCFNumberCreateSInt32();
  if (!SInt32)
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  v13 = SInt32;
  FigBytePumpGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v17 = v16(v15, 0x1F0B44258, v13);
    if (!v17)
    {
      *(v5 + 8) = v20.value;
      v20.value = 0;
    }
  }

  else
  {
    v17 = -12782;
  }

  CFRelease(v13);
LABEL_21:
  if (v20.value)
  {
    CFRelease(v20.value);
  }

  if (!v17)
  {
    v7 = *(v5 + 8);
LABEL_4:
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      if (!v8(v7, a2))
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, a2);
        CMSampleBufferGetOutputDuration(&rhs, a2);
        CMTimeAdd(&v20, &lhs, &rhs);
        result = *&v20.value;
        *(v5 + 48) = v20;
      }
    }
  }

  return result;
}

void clcpcgcfsb_Finish(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (!v2 || (v3 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && (v4 = *MEMORY[0x1E6960C88], v5 = *(MEMORY[0x1E6960C88] + 16), !v3(v2, &v4, 0)))
  {
    v4 = *(DerivedStorage + 48);
    v5 = *(DerivedStorage + 64);
    clcpcgcfsbOutputLastCaptionElements(DerivedStorage, &v4, 0);
  }
}

void clcpcgcfsbOutputLastCaptionElements(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    return;
  }

  v4 = v3;
  HIDWORD(v204) = 0;
  CaptionMode = clcpcgcfsbGetCaptionMode(*(a1 + 40), &v204 + 1);
  if (CaptionMode)
  {
    return;
  }

  v16 = MEMORY[0x1E6960C70];
  switch(HIDWORD(v204))
  {
    case 0:
      OUTLINED_FUNCTION_12_62();
      if ((*(a1 + 104) & 1) == 0)
      {
        *(a1 + 92) = *(a1 + 16);
        *(a1 + 108) = *(a1 + 32);
      }

      if (!a3 || !OUTLINED_FUNCTION_14_57(v17, v18, v19, v20, v21, v22, v23, v24, v169, allocator, v188, v197, theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v212.start.value) && LODWORD(v212.start.value))
      {
        v25 = OUTLINED_FUNCTION_22_34();
        if (v25)
        {
          goto LABEL_155;
        }

        time1 = *(a1 + 92);
        memset(&time2, 0, sizeof(time2));
        OUTLINED_FUNCTION_47_7(v25, v26, v27, v28, v29, v30, v31, v32, v169, allocator, v188, v197, theArray);
        *&v213.value = *(a1 + 92);
        v33 = OUTLINED_FUNCTION_21_36(*(a1 + 108), v170, allocatord, v189, v198, theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v212.start.value);
        OUTLINED_FUNCTION_4_131(v33, v34, v35, v36, v37, v38, v39, v40, v171, allocatore, v190, theArray, *(&theArray + 1), v203, v204, *v205, v206, v207, *&time1.value, time1.epoch, v209, v210, v211, v212.start.value);
        if ((a2)(v3, &v212, *(a1 + 80)))
        {
          goto LABEL_92;
        }

        *(a1 + 92) = *v16;
        *(a1 + 108) = *(v16 + 16);
        if (v3)
        {
          goto LABEL_93;
        }
      }

      return;
    case 1:
      *v205 = *a2;
      v206 = *(a2 + 16);
      allocatora = *a1;
      v45 = *(a1 + 88);
      *&theArray = 0;
      v215 = 0;
      memset(&v214, 0, sizeof(v214));
      *v191 = *MEMORY[0x1E6960C70];
      *&v213.value = *MEMORY[0x1E6960C70];
      v46 = *(MEMORY[0x1E6960C70] + 16);
      v213.epoch = v46;
      v47 = *(a1 + 120);
      if (v47)
      {
        if (!a3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (clcpcgcfsbCaptionSlicerCreate(allocatora, (a1 + 120)))
        {
          goto LABEL_129;
        }

        *&v212.start.value = *(a1 + 16);
        OUTLINED_FUNCTION_8_74();
        if (FigCFArrayAppendCMTime())
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_11_65();
        if (!a3)
        {
          goto LABEL_36;
        }
      }

      if (OUTLINED_FUNCTION_14_57(CaptionMode, v9, v10, v11, v12, v13, v14, v15, v169, allocatora, v191[0], v191[1], theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v212.start.value))
      {
        goto LABEL_129;
      }

      if (LODWORD(v212.start.value) == 1)
      {
        if (clcpcgcfsbCreateCaptionDataArray(*(a1 + 40), v45, allocatora, &theArray) || clcpcgcfsbCreateCaptionDataArray(a3, v45, allocatora, &v215))
        {
          goto LABEL_129;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        else
        {
          Count = 0;
        }

        v148 = v215;
        if (v215)
        {
          v148 = CFArrayGetCount(v215);
        }

        if (Count >= v148)
        {
          if (Count <= v148)
          {
            goto LABEL_129;
          }

          if (Count - v148 == 1)
          {
            OUTLINED_FUNCTION_3_133(*(v47 + 8), v48, v49, v50, v51, v52, v53, v54, v169, allocatora, v191[0], v191[1], theArray, *(&theArray + 1), v203, v204, *v205);
            if (FigCFArrayAppendCMTime())
            {
              goto LABEL_129;
            }

            clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(v47);
            *&v212.start.value = *v192;
            v212.start.epoch = v46;
            CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
            if (CMTimeAtIndex)
            {
              OUTLINED_FUNCTION_18_42(CMTimeAtIndex, v158, v159, v160, v161, v162, v163, v164, v165, v177, allocatorc, v192[0], v192[1], theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v166, v212.start.value);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v177, allocatorc, LODWORD(v192[0]));
              if (v168)
              {
                goto LABEL_129;
              }
            }

            HIDWORD(v172) = 1;
            goto LABEL_41;
          }
        }

        else if ((v148 - Count) == 1)
        {
          if (!clcpcgcfsbCreateBottomLineCaptionData(*(a1 + 40), v45, 1, allocatora, &v214.epoch))
          {
            epoch = v214.epoch;
            CFArrayAppendValue(*(v47 + 16), v214.epoch);
            if (epoch)
            {
              CFRelease(epoch);
              v214.epoch = 0;
            }

            OUTLINED_FUNCTION_3_133(*v47, v150, v151, v152, v153, v154, v155, v156, v169, allocatora, v191[0], v191[1], theArray, *(&theArray + 1), v203, v204, *v205);
            FigCFArrayAppendCMTime();
          }

          goto LABEL_129;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_129;
      }

LABEL_36:
      if (!clcpcgcfsbCreateBottomLineCaptionData(*(a1 + 40), v45, 0, allocatora, &v214.epoch))
      {
        v56 = v214.epoch;
        CFArrayAppendValue(*(v47 + 16), v214.epoch);
        if (v56)
        {
          CFRelease(v56);
          v214.epoch = 0;
        }

        OUTLINED_FUNCTION_3_133(v57, v58, v59, v60, v61, v62, v63, v64, v169, allocatora, v191[0], v191[1], theArray, *(&theArray + 1), v203, v204, *v205);
        if (!clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(v47, v65))
        {
          HIDWORD(v172) = 0;
          *&v213.value = *v205;
          v213.epoch = v206;
LABEL_41:
          *&v212.start.value = *(a1 + 128);
          v212.start.epoch = *(a1 + 144);
          OUTLINED_FUNCTION_19_40();
          if (clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(v47, &v212.start, &time1, allocatorb, &v214.timescale, &v214))
          {
            goto LABEL_129;
          }

          v66 = *&v214.timescale;
          if (*&v214.timescale)
          {
            v67 = CFArrayGetCount(*&v214.timescale);
            if (v67 >= 1)
            {
              v68 = v67;
              for (i = 0; i != v68; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v66, i);
                v78 = OUTLINED_FUNCTION_13_48(ValueAtIndex, v71, v72, v73, v74, v75, v76, v77, v172, allocatorb, v192[0], v192[1], theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, *&v212.start.value, *&v212.start.epoch, *&v212.duration.timescale);
                CMTimeRangeMakeFromDictionary(&v212, v78);
                v87 = OUTLINED_FUNCTION_9_66(v79, v80, v81, v82, v83, v84, v85, v86, v173, allocatorf, v193, v199, *&theArray, *(&theArray + 1), *&v203, *&v204, *v205, *&v205[1], *&v206, *&v207, *&time1.value, *&time1.timescale, *&time1.epoch, *&v209, *&v210, *&v211, *&v212.start.value, *&v212.start.timescale, *&v212.start.epoch, *&v212.duration.value, *&v212.duration.timescale);
                if (v88(ValueAtIndex, v87))
                {
                  goto LABEL_129;
                }
              }
            }
          }

          if (*v47)
          {
            v89 = CFArrayGetCount(*v47);
          }

          else
          {
            v89 = 0;
          }

          v122 = *(v47 + 8);
          if (v122)
          {
            v123 = CFArrayGetCount(v122);
          }

          else
          {
            v123 = 0;
          }

          v124 = *(v47 + 16);
          if (v124)
          {
            v125 = CFArrayGetCount(v124);
          }

          else
          {
            v125 = 0;
          }

          if (v123 >= 1)
          {
            v126 = 0;
            while (1)
            {
              *&v212.start.value = *v192;
              v212.start.epoch = v46;
              if (!FigCFArrayGetCMTimeAtIndex())
              {
                break;
              }

              time1 = v212.start;
              time2 = v213;
              if (CMTimeCompare(&time1, &time2) <= 0)
              {
                CFArrayRemoveValueAtIndex(*(v47 + 8), v126);
                if (v126 < v89)
                {
                  CFArrayRemoveValueAtIndex(*v47, v126);
                  --v89;
                }

                --v123;
                if (v126 < v125)
                {
                  CFArrayRemoveValueAtIndex(*(v47 + 16), v126);
                  --v125;
                }
              }

              else
              {
                ++v126;
              }

              if (v126 >= v123)
              {
                goto LABEL_88;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v172, allocatorb, LODWORD(v192[0]));
            if (v167)
            {
              goto LABEL_129;
            }
          }

LABEL_88:
          *(a1 + 128) = v213;
          if ((v172 & 0x100000000) == 0)
          {
            clcpcgcfsbCaptionSlicerRelease(allocatorb, v47);
            *(a1 + 120) = 0;
            *(a1 + 128) = *v192;
            *(a1 + 144) = v46;
          }
        }
      }

LABEL_129:
      if (v214.value)
      {
        CFRelease(v214.value);
      }

      if (*&v214.timescale)
      {
        CFRelease(*&v214.timescale);
      }

      if (v214.epoch)
      {
        CFRelease(v214.epoch);
      }

      if (v215)
      {
        CFRelease(v215);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      return;
    case 2:
      OUTLINED_FUNCTION_12_62();
      v127 = OUTLINED_FUNCTION_22_34();
      if (v127)
      {
LABEL_155:
        v4 = v215;
        if (!v215)
        {
          return;
        }

LABEL_93:
        v143 = v4;
        goto LABEL_153;
      }

      time1 = *(a1 + 16);
      memset(&time2, 0, sizeof(time2));
      OUTLINED_FUNCTION_47_7(v127, v128, v129, v130, v131, v132, v133, v134, v169, allocator, v188, v197, theArray);
      *&v213.value = *(a1 + 16);
      v135 = OUTLINED_FUNCTION_21_36(*(a1 + 32), v175, allocatorh, v195, v201, theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v212.start.value);
      OUTLINED_FUNCTION_4_131(v135, v136, v137, v138, v139, v140, v141, v142, v176, allocatori, v196, theArray, *(&theArray + 1), v203, v204, *v205, v206, v207, *&time1.value, time1.epoch, v209, v210, v211, v212.start.value);
      (a2)(v3, &v212, *(a1 + 80));
LABEL_92:
      if (v3)
      {
        goto LABEL_93;
      }

      return;
    case 3:
      time2 = *a2;
      v41 = *a1;
      v42 = *(a1 + 88);
      v213.value = 0;
      v205[0] = 0;
      *&theArray = 0;
      v214.epoch = 0;
      v215 = 0;
      *&v214.timescale = 0;
      LODWORD(v214.value) = 0;
      v43 = (a1 + 120);
      v44 = *(a1 + 120);
      if (v44)
      {
        if (!a3)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (clcpcgcfsbCaptionSlicerCreate(v41, v43))
        {
          goto LABEL_144;
        }

        *&v212.start.value = *(a1 + 16);
        OUTLINED_FUNCTION_8_74();
        if (FigCFArrayAppendCMTime())
        {
          goto LABEL_144;
        }

        OUTLINED_FUNCTION_11_65();
        if (!a3)
        {
          goto LABEL_54;
        }
      }

      if (OUTLINED_FUNCTION_14_57(CaptionMode, v43, v10, v11, v12, v13, v14, v15, v169, allocator, v188, v197, theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, v212.start.value))
      {
        goto LABEL_144;
      }

      if (LODWORD(v212.start.value) != 3)
      {
LABEL_54:
        if (OUTLINED_FUNCTION_23_41())
        {
          goto LABEL_144;
        }

        value = v213.value;
        CaptionDataRowNumberArray = clcpcgcfsbCreateCaptionDataRowNumberArray(v213.value, v41, &v214.timescale);
        v94 = *&v214.timescale;
        if (CaptionDataRowNumberArray || clcpcgcfsbGetFirstNewRowNumber(*(a1 + 152), *&v214.timescale, &v214))
        {
          goto LABEL_142;
        }

        if (LODWORD(v214.value))
        {
          if (!clcpcgcfsbCopyCaptionDataOnRowNumber(value, v214.value, &theArray))
          {
            v95 = theArray;
            CFArrayAppendValue(*(v44 + 16), theArray);
            if (v95)
            {
              CFRelease(v95);
              *&theArray = 0;
            }

            *&v212.start.value = *&time2.value;
            OUTLINED_FUNCTION_8_74();
            if (!clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(v44, v96))
            {
              time1 = time2;
              *&v212.start.value = *(a1 + 128);
              OUTLINED_FUNCTION_8_74();
              if (!clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(v44, v97, &time1, v41, &v215, &v214.epoch))
              {
                v98 = v215;
                if (v215)
                {
                  v99 = CFArrayGetCount(v215);
                  if (v99 >= 1)
                  {
                    v100 = v99;
                    v101 = 0;
                    do
                    {
                      v102 = CFArrayGetValueAtIndex(v98, v101);
                      v110 = OUTLINED_FUNCTION_13_48(v102, v103, v104, v105, v106, v107, v108, v109, v169, allocator, v188, v197, theArray, *(&theArray + 1), v203, v204, v205[0], v205[1], v206, v207, time1.value, *&time1.timescale, time1.epoch, v209, v210, v211, *&v212.start.value, *&v212.start.epoch, *&v212.duration.timescale);
                      CMTimeRangeMakeFromDictionary(&v212, v110);
                      v119 = OUTLINED_FUNCTION_9_66(v111, v112, v113, v114, v115, v116, v117, v118, v174, allocatorg, v194, v200, *&theArray, *(&theArray + 1), *&v203, *&v204, *v205, *&v205[1], *&v206, *&v207, *&time1.value, *&time1.timescale, *&time1.epoch, *&v209, *&v210, *&v211, *&v212.start.value, *&v212.start.timescale, *&v212.start.epoch, *&v212.duration.value, *&v212.duration.timescale);
                      if (v120(v102, v119))
                      {
                        goto LABEL_142;
                      }
                    }

                    while (v100 != ++v101);
                  }
                }

                clcpcgcfsbCaptionSlicerRelease(v41, v44);
                *(a1 + 120) = 0;
                *(a1 + 128) = *v16;
                *(a1 + 144) = *(v16 + 16);
                v121 = *(a1 + 152);
                if (v121)
                {
                  CFRelease(v121);
                  *(a1 + 152) = 0;
                  if (!v94)
                  {
                    goto LABEL_144;
                  }

LABEL_143:
                  CFRelease(v94);
                  goto LABEL_144;
                }

LABEL_110:
                if (!v94)
                {
                  goto LABEL_144;
                }

                goto LABEL_143;
              }
            }
          }

          goto LABEL_142;
        }

        goto LABEL_141;
      }

      if (!OUTLINED_FUNCTION_23_41() && !clcpcgcfsbCreateCaptionDataArray(a3, v42, v41, v205))
      {
        v90 = v213.value;
        if (v213.value)
        {
          v91 = CFArrayGetCount(v213.value);
        }

        else
        {
          v91 = 0;
        }

        v144 = v205[0];
        if (v205[0])
        {
          v144 = CFArrayGetCount(v205[0]);
        }

        if (v144 > v91)
        {
          if ((v144 - v91) == 1)
          {
            v145 = clcpcgcfsbCreateCaptionDataRowNumberArray(v90, v41, &v214.timescale);
            v94 = *&v214.timescale;
            if (v145 || clcpcgcfsbGetFirstNewRowNumber(*(a1 + 152), *&v214.timescale, &v214))
            {
              goto LABEL_142;
            }

            if (LODWORD(v214.value))
            {
              if (!clcpcgcfsbCopyCaptionDataOnRowNumber(v90, v214.value, &theArray))
              {
                v146 = theArray;
                CFArrayAppendValue(*(v44 + 16), theArray);
                if (v146)
                {
                  CFRelease(v146);
                  *&theArray = 0;
                }

                *&v212.start.value = *&time2.value;
                OUTLINED_FUNCTION_8_74();
                if (!FigCFArrayAppendCMTime())
                {
                  v147 = *(a1 + 152);
                  *(a1 + 152) = v94;
                  if (v94)
                  {
                    CFRetain(v94);
                  }

                  if (v147)
                  {
                    CFRelease(v147);
                  }

                  goto LABEL_110;
                }
              }

LABEL_142:
              if (!v94)
              {
                goto LABEL_144;
              }

              goto LABEL_143;
            }

LABEL_141:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_142;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v169, allocator, v188);
        }
      }

LABEL_144:
      if (v214.epoch)
      {
        CFRelease(v214.epoch);
      }

      if (v215)
      {
        CFRelease(v215);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v205[0])
      {
        CFRelease(v205[0]);
      }

      v143 = v213.value;
      if (v213.value)
      {
LABEL_153:
        CFRelease(v143);
      }

      return;
    default:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      return;
  }
}

uint64_t clcpcgcfsbCreateCaptionGroupWithoutSlice(const __CFArray *a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  theArray = 0;
  v5 = clcpcgcfsbCreateCaptionDataArray(a1, a2, a3, &theArray);
  if (v5)
  {
    goto LABEL_6;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v7 = Count;
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = malloc_type_malloc(24 * Count, 0x1000040504FFAC1uLL);
        if (v12)
        {
          v9 = v12;
          v13 = *MEMORY[0x1E6960CC0];
          v14 = *(MEMORY[0x1E6960CC0] + 16);
          v15 = v12;
          do
          {
            *v15 = v13;
            v15[2] = v14;
            v15 += 3;
            --v7;
          }

          while (v7);
          Empty = FigCaptionGroupCreate();
          if (Empty)
          {
            goto LABEL_16;
          }

LABEL_8:
          v8 = 0;
          *a4 = 0;
          goto LABEL_9;
        }
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, theArray, v17);
LABEL_6:
      v8 = v5;
      v9 = 0;
      goto LABEL_9;
    }
  }

  Empty = FigCaptionGroupCreateEmpty();
  v9 = 0;
  if (!Empty)
  {
    goto LABEL_8;
  }

LABEL_16:
  v8 = Empty;
LABEL_9:
  free(v9);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v5 = CFArrayGetCount(v5);
  }

  v6 = Count - v5;
  if (v6 < 1)
  {
    return 0;
  }

  while (1)
  {
    result = FigCFArrayAppendCMTime();
    if (result)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(const __CFArray **a1, CMTime *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, CMTime *a6)
{
  NumCaptionDataWithStartAndEndTime = clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(a1);
  value = 0;
  if (!NumCaptionDataWithStartAndEndTime)
  {
    v224 = 0;
    v19 = 0;
    v16 = 0;
    goto LABEL_62;
  }

  Mutable = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v162, v169);
    v16 = v153;
    v17 = 0;
    v19 = 0;
    v224 = 0;
    NumCaptionDataWithStartAndEndTime = 0;
LABEL_73:
    v18 = 0;
    goto LABEL_56;
  }

  v195 = Mutable;
  if (NumCaptionDataWithStartAndEndTime > 0xAAAAAAAAAAAAAAALL || (v224 = malloc_type_malloc(24 * NumCaptionDataWithStartAndEndTime, 0x1000040504FFAC1uLL)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v162, v169);
    v16 = v15;
    v17 = 0;
    v224 = 0;
    NumCaptionDataWithStartAndEndTime = 0;
LABEL_5:
    v18 = 0;
    v19 = v195;
    goto LABEL_56;
  }

  v170 = NumCaptionDataWithStartAndEndTime;
  NumCaptionDataWithStartAndEndTime = malloc_type_malloc(24 * NumCaptionDataWithStartAndEndTime, 0x1000040504FFAC1uLL);
  if (!NumCaptionDataWithStartAndEndTime)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v162, v170);
    v16 = v154;
    v17 = 0;
    goto LABEL_5;
  }

  v163 = v6;
  v176 = a5;
  v182 = a6;
  v235 = *a2;
  v232 = *a3;
  v233 = *(a3 + 16);
  v20 = clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(a1);
  allocator = a4;
  v21 = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  v19 = v195;
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v6, v170);
    v17 = 0;
    if (v155)
    {
      v16 = v155;
      goto LABEL_77;
    }

    goto LABEL_52;
  }

  v22 = v21;
  v240.start = v235;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    goto LABEL_72;
  }

  v24 = MEMORY[0x1E6960C70];
  if (v20 >= 1)
  {
    v25 = 0;
    *theArray = *MEMORY[0x1E6960C70];
    v26 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      *&v240.start.value = *theArray;
      v240.start.epoch = v26;
      CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
      if (!CMTimeAtIndex)
      {
        goto LABEL_65;
      }

      v35 = OUTLINED_FUNCTION_7_89(CMTimeAtIndex, v28, v29, v30, v31, v32, v33, v34, v156, v163, v170, v176, v182, v188, v195, allocator, theArray[0], theArray[1], v218, v224, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *&v231.start.value, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, *&v235.value, v235.epoch, value, *&duration.start.value, duration.start.epoch);
      if ((v35 & 0x80000000) != 0 && (OUTLINED_FUNCTION_6_105(v35, v36, v37, v38, v39, v40, v41, v42, v156, v163, v170, v176, v182, v188, v195, allocator, theArray[0], theArray[1], v218, v224, start.start.value, *&start.start.timescale, *&start.start.epoch, *&start.duration.timescale, start.duration.epoch, *&v231.start.value, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, v233, v234, v235.value, *&v235.timescale, v235.epoch, value, *&duration.start.value, duration.start.epoch) & 0x80000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v25);
        CFArrayAppendValue(v22, ValueAtIndex);
      }

      ++v25;
    }

    while (v20 != v25);
    v44 = 0;
    while (1)
    {
      *&v240.start.value = *theArray;
      v240.start.epoch = v26;
      v45 = FigCFArrayGetCMTimeAtIndex();
      if (!v45)
      {
        break;
      }

      v53 = OUTLINED_FUNCTION_7_89(v45, v46, v47, v48, v49, v50, v51, v52, v156, v163, v170, v176, v182, v188, v195, allocator, theArray[0], theArray[1], v218, v224, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *&v231.start.value, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, *&v235.value, v235.epoch, value, *&duration.start.value, duration.start.epoch);
      if ((v53 & 0x80000000) != 0 && (OUTLINED_FUNCTION_6_105(v53, v54, v55, v56, v57, v58, v59, v60, v156, v163, v170, v176, v182, v188, v195, allocator, theArray[0], theArray[1], v218, v224, start.start.value, *&start.start.timescale, *&start.start.epoch, *&start.duration.timescale, start.duration.epoch, *&v231.start.value, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, v233, v234, v235.value, *&v235.timescale, v235.epoch, value, *&duration.start.value, duration.start.epoch) & 0x80000000) != 0)
      {
        v61 = CFArrayGetValueAtIndex(a1[1], v44);
        CFArrayAppendValue(v22, v61);
      }

      if (v20 == ++v44)
      {
        goto LABEL_23;
      }
    }

LABEL_65:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v151;
    goto LABEL_66;
  }

LABEL_23:
  *&v240.start.value = v232;
  v240.start.epoch = v233;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
LABEL_72:
    v16 = appended;
    CFRelease(v22);
    v17 = 0;
    goto LABEL_73;
  }

  Count = CFArrayGetCount(v22);
  v241.location = 0;
  v241.length = Count;
  CFArraySortValues(v22, v241, clcpcgcfsbCaptionSlicerCompareSliceTime, 0);
  v63 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v63)
  {
    goto LABEL_65;
  }

  v17 = v63;
  if (Count > 1)
  {
    v64 = 0;
    v65 = Count - 2;
    *theArray = *MEMORY[0x1E6960CC0];
    v66 = *(MEMORY[0x1E6960CC0] + 16);
    while (1)
    {
      memset(&v231, 0, 24);
      v67 = CFArrayGetValueAtIndex(v22, v64);
      CMTimeMakeFromDictionary(&v231.start, v67);
      memset(&start, 0, 24);
      v68 = CFArrayGetValueAtIndex(v22, ++v64);
      CMTimeMakeFromDictionary(&start.start, v68);
      memset(&v240, 0, sizeof(v240));
      lhs = start.start;
      rhs = v231.start;
      v69 = CMTimeSubtract(&duration.start, &lhs, &rhs);
      OUTLINED_FUNCTION_18_42(v69, v70, v71, v72, v73, v74, v75, v76, v77, v156, v163, v170, v176, v182, v188, v195, allocator, theArray[0], theArray[1], v218, v224, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v78, v231.start.value);
      CMTimeRangeMake(&v240, &lhs, &duration.start);
      *&duration.start.value = *theArray;
      duration.start.epoch = v66;
      lhs = v240.duration;
      if (CMTimeCompare(&duration.start, &lhs) < 0)
      {
        duration = v240;
        v79 = CMTimeRangeCopyAsDictionary(&duration, allocator);
        if (!v79)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v163, v170);
          v16 = v152;
          CFRelease(v17);
          v19 = v195;
LABEL_66:
          CFRelease(v22);
          v17 = 0;
          v149 = v176;
          v148 = v182;
          if (v16)
          {
LABEL_77:
            v18 = 0;
            goto LABEL_56;
          }

LABEL_53:
          v16 = 0;
          v18 = 0;
          *v149 = v19;
          v148->value = v17;
          v17 = 0;
          v19 = 0;
          goto LABEL_56;
        }

        v80 = v79;
        CFArrayAppendValue(v17, v79);
        CFRelease(v80);
      }

      if (v64 - 1 == v65)
      {
        CFRelease(v22);
        goto LABEL_33;
      }
    }
  }

  CFRelease(v22);
LABEL_33:
  v189 = CFArrayGetCount(v17);
  if (v189 < 1)
  {
    v19 = v195;
LABEL_52:
    v149 = v176;
    v148 = v182;
    goto LABEL_53;
  }

  theArray[0] = v17;
  v81 = 0;
  if (v170 <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = v170;
  }

LABEL_37:
  memset(&v240, 0, sizeof(v240));
  v83 = CFArrayGetValueAtIndex(theArray[0], v81);
  CMTimeRangeMakeFromDictionary(&v240, v83);
  v18 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v18)
  {
    v84 = 0;
    v85 = 0;
    while (1)
    {
      lhs = *v24;
      rhs = lhs;
      if (!FigCFArrayGetCMTimeAtIndex())
      {
        break;
      }

      v86 = FigCFArrayGetCMTimeAtIndex();
      if (!v86)
      {
        break;
      }

      memset(&duration, 0, sizeof(duration));
      *&v235.timescale = *&lhs.timescale;
      v235.epoch = lhs.epoch;
      OUTLINED_FUNCTION_15_49(v86, v87, v88, v89, v90, v91, v92, v93, v156, v163, v170, v176, v182, v189, v195, allocator, theArray[0], theArray[1], v218, v224, rhs.value, *&rhs.timescale, rhs.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, lhs.value);
      OUTLINED_FUNCTION_19_40();
      v94 = CMTimeRangeMake(&duration, &start.start, &v231.start);
      OUTLINED_FUNCTION_20_35(v94, v95, v96, v97, v98, v99, v100, v101, v157, v164, v171, v177, v183, v190, v196, allocatora, theArraya, theArray_8, v219, v225, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, v235.value, *&v235.timescale, v235.epoch, value, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale);
      start = v240;
      v102 = CMTimeRangeContainsTimeRange(&v231, &start);
      if (v102)
      {
        *&v235.timescale = *&duration.start.timescale;
        v235.epoch = duration.start.epoch;
        v110 = OUTLINED_FUNCTION_15_49(v102, v103, v104, v105, v106, v107, v108, v109, v156, v163, v170, v176, v182, v189, v195, allocator, theArray[0], theArray[1], v218, v224, v240.start.value, *&v240.start.timescale, v240.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, duration.start.value);
        OUTLINED_FUNCTION_17_42(v110, v111, v112, v113, v114, v115, v116, v117, v118, v158, v165, v172, v178, v184, v191, v197, allocatorb, theArrayb, theArray_8a, v220, v226, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v119, v231.start.value);
        OUTLINED_FUNCTION_20_35(v120, v121, v122, v123, v124, v125, v126, v127, v159, v166, v173, v179, v185, v192, v198, allocatorc, theArrayc, theArray_8b, v221, v227, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, v235.value, *&v235.timescale, v235.epoch, value, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale);
        CMTimeRangeGetEnd(&start.start, &v231);
        v231 = v240;
        End = CMTimeRangeGetEnd(&v235, &v231);
        v136 = OUTLINED_FUNCTION_15_49(End, v129, v130, v131, v132, v133, v134, v135, v160, v167, v174, v180, v186, v193, v199, allocatord, theArrayd, theArray_8c, v222, v228, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232, *(&v232 + 1), v233, v234, v235.value);
        OUTLINED_FUNCTION_17_42(v136, v137, v138, v139, v140, v141, v142, v143, v144, v161, v168, v175, v181, v187, v194, v200, allocatore, theArraye, theArray_8d, v223, v229, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v145, v231.start.value);
        v146 = CFArrayGetValueAtIndex(a1[2], v84);
        CFArrayAppendValue(v18, v146);
        ++v85;
      }

      if (v82 == ++v84)
      {
        if (v85)
        {
          v147 = FigCaptionGroupCreate();
          if (v147)
          {
            goto LABEL_55;
          }

          CFArrayAppendValue(v195, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          bzero(v224, 24 * v85);
          bzero(NumCaptionDataWithStartAndEndTime, 24 * v85);
        }

        CFRelease(v18);
        if (++v81 == v189)
        {
          v19 = v195;
          v149 = v176;
          v148 = v182;
          v17 = theArray[0];
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_55:
  v16 = v147;
  v19 = v195;
  v17 = theArray[0];
LABEL_56:
  if (value)
  {
    CFRelease(value);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_62:
  free(NumCaptionDataWithStartAndEndTime);
  free(v224);
  if (v19)
  {
    CFRelease(v19);
  }

  return v16;
}

uint64_t clcpcgcfsbGetPositionFromCaptionData(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  v13 = 0;
  v11 = *MEMORY[0x1E695EFF8];
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E695E480];
  CellBasedPointFromDictionary = v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v13);
  if (CellBasedPointFromDictionary)
  {
    goto LABEL_18;
  }

  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  v7 = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_10:
    v9 = 4294954514;
    goto LABEL_11;
  }

  CellBasedPointFromDictionary = v8(v7, *MEMORY[0x1E6961390], v5, &cf);
  if (CellBasedPointFromDictionary)
  {
    goto LABEL_18;
  }

  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  FigCaptionDynamicStyleGetInitialValue();
  CellBasedPointFromDictionary = FigCaptionGeometryGetCellBasedPointFromDictionary();
  if (CellBasedPointFromDictionary)
  {
LABEL_18:
    v9 = CellBasedPointFromDictionary;
    goto LABEL_11;
  }

  v9 = 0;
  if (a2)
  {
    *a2 = *(&v11 + 1);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

void FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

void FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsb_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsb_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsb_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsb_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbGetCaptionMode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t clcpcgcfsbCreateCaptionDataArray_cold_1(__CFArray *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  if (v4)
  {
    return 1;
  }

  v9.location = 0;
  v9.length = 0;
  CFArrayAppendArray(a1, 0, v9);
  return 0;
}

void clcpcgcfsbCreateCaptionDataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL clcpcgcfsbCreateCaptionDataFromCommandData_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_2(__CFAttributedString *a1, CFRange *a2, CFIndex a3, CFIndex a4, const __CFAttributedString *a5)
{
  CFAttributedStringBeginEditing(a1);
  a2->location = 0;
  a2->length = 0;
  Limit = FigCFRangeGetLimit();
  if (Limit < FigCFRangeGetLimit())
  {
    v11 = 0;
    do
    {
      v12 = FigCFRangeGetLimit();
      v16.location = a3;
      v16.length = a4;
      AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(a5, v12, @"a", v16, a2);
      if (CFBooleanGetValue(AttributeAndLongestEffectiveRange))
      {
        v15.location = a2->location - v11;
        v15.length = a2->length;
        CFAttributedStringReplaceString(a1, v15, &stru_1F0B1AFB8);
        v11 += a2->length;
      }

      v14 = FigCFRangeGetLimit();
    }

    while (v14 < FigCFRangeGetLimit());
  }

  CFAttributedStringEndEditing(a1);
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCaptionSlicerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCaptionSlicerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCaptionSlicerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCaptionSlicerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbCreateCaptionDataRowNumberArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgcfsbGetFirstNewRowNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigSurrogateAssetImageGeneratorCreateFromAsset(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v19 = 0;
  v18 = 0;
  if (a2 && a4)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8 && !v8(a2, @"assetProperty_AssetType", &v18))
    {
      if (!v18)
      {
        cf = 0;
        FigAssetImageGeneratorGetClassID();
        v10 = CMDerivedObjectCreate();
        if (!v10)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          DerivedStorage[1] = CFRetain(a2);
          if (a3)
          {
            v12 = CFRetain(a3);
          }

          else
          {
            v12 = 0;
          }

          DerivedStorage[2] = v12;
          v13 = FigDispatchQueueCreateWithPriority();
          *DerivedStorage = v13;
          if (v13)
          {
            v14 = 0;
            v15 = cf;
            v19 = cf;
            goto LABEL_13;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v19);
        }

        v14 = v10;
        v15 = cf;
        if (cf)
        {
          CFRelease(cf);
          v15 = 0;
        }

        goto LABEL_13;
      }

      v14 = surrogateAIG_CreateSubGenerator(a1, a2, a3, &v19);
      v15 = v19;
LABEL_13:
      if (v14)
      {
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        *a4 = v15;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t surrogateAIG_CreateSubGenerator(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v16 = 0;
  FigAssetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v11 = v10(v9, @"assetProperty_AssetType", a1, &cf);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      if (FigCFEqual())
      {
        v12 = FigStreamAssetImageGeneratorCreateFromAssetWithOptions(a1, a2, a3, &v16);
      }

      else
      {
        v12 = FigAssetImageGeneratorCreateFromAssetWithOptions(a1, a2, a3, &v16);
      }

      v13 = v12;
      if (!v12)
      {
        *a4 = v16;
        v16 = 0;
      }
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v13;
}

uint64_t surrogateAIG_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
LABEL_7:
    v8 = v31;
    *(v31 + 6) = v12;
    goto LABEL_8;
  }

  v7 = *DerivedStorage;
  v16 = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = __surrogateAIG_SetProperty_block_invoke;
  v19 = &unk_1E7494A20;
  v22 = DerivedStorage;
  v23 = a1;
  v20 = &v26;
  v21 = &v30;
  v24 = a2;
  v25 = a3;
  dispatch_sync(v7, &v16);
  v8 = v31;
  if (!*(v31 + 6) && v27[3])
  {
    FigAssetImageGeneratorGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v12 = v11(v10, a2, a3);
    }

    else
    {
      v12 = -12782;
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = v27[3];
  if (v13)
  {
    CFRelease(v13);
    v8 = v31;
  }

  v14 = *(v8 + 6);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v14;
}

uint64_t surrogateAIG_EnsureSubGeneratorCreated(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 24);
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = CFGetAllocator(a1);
  result = surrogateAIG_CreateSubGenerator(v6, *(v5 + 8), *(v5 + 16), v3);
  if (!result)
  {
    v7 = *(v5 + 32);
    if (v7)
    {
      CFDictionaryApplyFunction(v7, surrogateAIG_SetSavedPropertyOnSubGenerator, *(v5 + 24));
      v8 = *(v5 + 32);
      if (v8)
      {
        CFRelease(v8);
        *(v5 + 32) = 0;
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    return 0;
  }

  return result;
}

void surrogateAIG_CopyCGImageAtTime_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*a1 + 24) = v2;
}

void surrogateAIG_RequestCGImageAtTimeAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void surrogateAIG_CancelAllCGImageAsyncRequests_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigVirtualFramebufferCopyFramebufDescriptions()
{
  if (qword_1ED4CB980 != -1)
  {
    dispatch_once(&qword_1ED4CB980, &__block_literal_global_102);
  }

  if ((_MergedGlobals_124 & 1) == 0)
  {
    v0 = FigXPCCreateBasicMessage();
    if (v0)
    {
      v25 = OUTLINED_FUNCTION_20_36(v0, v1, v2, v3, v4, v5, v6, v7, v65, v69, v73, SBYTE2(v73), SBYTE3(v73), SHIDWORD(v73));
      v33 = OUTLINED_FUNCTION_106_1(v25, v26, v27, v28, v29, v30, v31, v32, v66, v70, v74, v77, v80, v83);
      if (!OUTLINED_FUNCTION_124_0(v33))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (qword_1ED4CB9C0 != -1)
      {
        dispatch_once(&qword_1ED4CB9C0, &__block_literal_global_161);
      }

      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        v16 = FigXPCMessageCopyCFString();
        if (!v16)
        {
          goto LABEL_9;
        }

        v43 = OUTLINED_FUNCTION_20_36(v16, v17, v18, v19, v20, v21, v22, v23, v65, v69, v73, SBYTE2(v73), SBYTE3(v73), SHIDWORD(v73));
        v51 = OUTLINED_FUNCTION_106_1(v43, v44, v45, v46, v47, v48, v49, v50, v68, v72, v76, v79, v82, v85);
        if (OUTLINED_FUNCTION_124_0(v51))
        {
          goto LABEL_15;
        }

LABEL_16:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_345_0(v60, v61, v62, v63, v64);
        goto LABEL_9;
      }

      v34 = OUTLINED_FUNCTION_20_36(v8, v9, v10, v11, v12, v13, v14, v15, v65, v69, v73, SBYTE2(v73), SBYTE3(v73), SHIDWORD(v73));
      v42 = OUTLINED_FUNCTION_106_1(v34, v35, v36, v37, v38, v39, v40, v41, v67, v71, v75, v78, v81, v84);
      if (!OUTLINED_FUNCTION_124_0(v42))
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_8_75();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_128_0(v52, v53, v54, v55, v56, v57, v58, v59);
    goto LABEL_16;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return 0;
}

void __fvfbserv_getVirtualFramebufs_block_invoke()
{
  v214 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB988 != -1)
  {
    dispatch_once(&qword_1ED4CB988, &__block_literal_global_12_0);
  }

  v0 = fvfbserv_getVirtualFramebufMaxCount_maxCount;
  qword_1ED4CB990 = malloc_type_calloc(fvfbserv_getVirtualFramebufMaxCount_maxCount, 8uLL, 0x2004093837F09uLL);
  v1 = @"figvirtualframebuffer_trace";
  OUTLINED_FUNCTION_36_24();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_36_24();
  fig_note_initialize_category_with_default_work_cf();
  v3 = &off_196E72000;
  v4 = 0;
  if (v0)
  {
    v1 = *MEMORY[0x1E695E480];
    *&v2 = 136315394;
    *v186 = v2;
    while (1)
    {
      v5 = qword_1ED4CB990;
      *v201 = 0;
      *v202 = 0;
      v210 = 0u;
      v211 = 0u;
      v209 = 0u;
      memset(v208, 0, sizeof(v208));
      FigVirtualFramebufferGetClassID();
      v6 = CMDerivedObjectCreate();
      if (v6)
      {
        break;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = FigSimpleMutexCreate();
      Mutable = CFDictionaryCreateMutable(v1, 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 64) = Mutable;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = v4 + 1;
      *(DerivedStorage + 88) = -1;
      *(&v208[0] + 1) = *v202;
      *(&v210 + 1) = fvfbserv_hotplugSourceSchedule;
      *&v211 = fvfbserv_hotplugSourceCancel;
      *(&v211 + 1) = fvfbserv_hotplugSourcePerform;
      *(DerivedStorage + 112) = OUTLINED_FUNCTION_40_21(Mutable, v9, v10, v11, v12, v13, v14, v15, v178, v182, v186[0], v186[1], v193, v197, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, *v206, *&v206[8], *&v206[16], v207, 0);
      asprintf(v201, "VirtualFramebufVSyncQueue.%d", *(DerivedStorage + 12));
      *(DerivedStorage + 216) = 60;
      v16 = *v201;
      v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v18 = dispatch_queue_create(v16, v17);
      *(DerivedStorage + 136) = v18;
      v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v18);
      *(DerivedStorage + 144) = v19;
      *handler = MEMORY[0x1E69E9820];
      *&handler[8] = 0x40000000;
      *&handler[16] = __fvfbserv_objCreateVirtualFramebuf_block_invoke;
      *&v204 = &__block_descriptor_tmp_20_2;
      *(&v204 + 1) = *v202;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_source_set_timer(*(DerivedStorage + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(*(DerivedStorage + 144));
      *(&v210 + 1) = fvfbserv_vsyncSourceSchedule;
      *&v211 = fvfbserv_vsyncSourceCancel;
      *(&v211 + 1) = fvfbserv_vsyncSourcePerform;
      v28 = OUTLINED_FUNCTION_40_21(v20, v21, v22, v23, v24, v25, v26, v27, v179, v183, v187, v190, v194, v198, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, *v206, *&v206[8], *&v206[16], v207, *&v208[0]);
      *(DerivedStorage + 160) = v28;
      *(&v210 + 1) = fvfbserv_hdcpSourceSchedule;
      *&v211 = fvfbserv_hdcpSourceCancel;
      *(&v211 + 1) = fvfbserv_hdcpSourcePerform;
      *(DerivedStorage + 232) = OUTLINED_FUNCTION_40_21(v28, v29, v30, v31, v32, v33, v34, v35, v180, v184, v188, v191, v195, v199, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, *v206, *&v206[8], *&v206[16], v207, *&v208[0]);
      *(v5 + 8 * v4) = *v202;
      HIDWORD(v197) = 0;
      BYTE3(v197) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_186_0(v37))
      {
        v38 = *(DerivedStorage + 12);
        *v206 = v186[0];
        *&v206[4] = "fvfbserv_objCreateVirtualFramebuf";
        *&v206[12] = 1024;
        *&v206[14] = v38;
        OUTLINED_FUNCTION_15_50();
        _os_log_send_and_compose_impl(v39, v40, v41, v42, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigVirtualFramebufferClientServer >>>> %s: created vfb %d", v206, 18);
      }

      ++v4;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635(v43, v44, v45, v46, v47);
      free(*v201);
      if (v0 == v4)
      {
        v4 = v0;
        v3 = &off_196E72000;
        goto LABEL_10;
      }
    }

    v128 = v6;
    HIDWORD(v197) = 0;
    BYTE3(v197) = 0;
    v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v1 = 0;
    v130 = os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT);
    v3 = &off_196E72000;
    if (OUTLINED_FUNCTION_124_0(v130))
    {
      *v206 = 136315650;
      *&v206[4] = "fvfbserv_objCreateVirtualFramebuf";
      *&v206[12] = 1024;
      *&v206[14] = 1454;
      *&v206[18] = 1024;
      *&v206[20] = v128;
      LODWORD(v182) = 24;
      v178 = v206;
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl(v131, v132, v133, v134, v135, v129, 0, v136);
    }

    OUTLINED_FUNCTION_43_20();
    OUTLINED_FUNCTION_345_0(v137, v138, v139, v140, v141);
    OUTLINED_FUNCTION_25_32();
    v142 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v150 = OUTLINED_FUNCTION_41_25(v142, v143, v144, v145, v146, v147, v148, v149, v178, v182, v186[0], v186[1], v193, v197, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, v206[0]);
    if (OUTLINED_FUNCTION_186_0(v150))
    {
      LODWORD(v208[0]) = 136315650;
      *(v208 + 4) = "fvfbserv_getVirtualFramebufs_block_invoke";
      WORD6(v208[0]) = 1024;
      *(v208 + 14) = 1915;
      WORD1(v208[1]) = 1024;
      DWORD1(v208[1]) = v128;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl(v151, v152, v153, v154, v155, v142, 0, v156);
    }

    OUTLINED_FUNCTION_43_20();
    OUTLINED_FUNCTION_635(v157, v158, v159, v160, v161);
  }

LABEL_10:
  qword_1ED4CB998 = v4;
  OUTLINED_FUNCTION_25_32();
  v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v56 = OUTLINED_FUNCTION_41_25(v48, v49, v50, v51, v52, v53, v54, v55, v178, v182, v186[0], v186[1], v193, v197, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, v206[0]);
  if (OUTLINED_FUNCTION_186_0(v56))
  {
    LODWORD(v208[0]) = 136315394;
    *(v208 + 4) = "fvfbserv_getVirtualFramebufs_block_invoke";
    WORD6(v208[0]) = 1024;
    *(v208 + 14) = qword_1ED4CB998;
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_65();
    _os_log_send_and_compose_impl(v57, v58, v59, v60, v61, v62, v1, v63);
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_635(v64, v65, v66, v67, v68);
  if (qword_1ED4CB9B0 != -1)
  {
    dispatch_once(&qword_1ED4CB9B0, &__block_literal_global_87);
  }

  if (byte_1ED4CB974)
  {
    FigSimpleMutexLock();
    v69 = dword_1ED4CB978;
    v70 = dword_1ED4CB978 > 0;
    OUTLINED_FUNCTION_25_32();
    v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v79 = OUTLINED_FUNCTION_41_25(v71, v72, v73, v74, v75, v76, v77, v78, v181, v185, v189, v192, v196, v200, *v201, *v202, *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, v206[0]);
    if (OUTLINED_FUNCTION_186_0(v79))
    {
      v80 = "not ";
      if (v69 > 0)
      {
        v80 = "";
      }

      LODWORD(v208[0]) = 136315394;
      *(v208 + 4) = "srmonitor_postCurrentState";
      WORD6(v208[0]) = 2080;
      *(v208 + 14) = v80;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_65();
      v88 = _os_log_send_and_compose_impl(v81, v82, v83, v84, v85, v86, v1, v87);
    }

    else
    {
      v88 = 0;
    }

    OUTLINED_FUNCTION_635(qword_1ED4CBEC8, 1, 1, v88, v88 != block);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __srmonitor_postCurrentState_block_invoke;
    block[3] = &__block_descriptor_tmp_84_0;
    v213 = v70;
    dispatch_async(qword_1ED4CB9A8, block);
    FigSimpleMutexUnlock();
  }

  *&v208[0] = 1;
  *(&v208[0] + 1) = fvfbserv_handleClientMessage;
  v208[1] = 0u;
  v209 = 0u;
  v89 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (qword_1ED4CB980 != -1)
  {
    dispatch_once(&qword_1ED4CB980, &__block_literal_global_102);
  }

  if ((_MergedGlobals_124 & 1) == 0)
  {
    OUTLINED_FUNCTION_22_35();
    v162 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v170 = OUTLINED_FUNCTION_44_22(v162, v163, v164, v165, v166, v167, v168, v169, v181, v185, v189, v192, v196, v200, *v201, v202[0], *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, *v206);
    if (OUTLINED_FUNCTION_124_0(v170))
    {
      *handler = 136315394;
      *&handler[4] = "fvfbserv_startServer";
      *&handler[12] = 1024;
      *&handler[14] = 1884;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v171, v172, v173, v174, v175, v176, v1, v177);
    }

    OUTLINED_FUNCTION_16();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_22_35();
  v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v98 = OUTLINED_FUNCTION_44_22(v90, v91, v92, v93, v94, v95, v96, v97, v181, v185, v189, v192, v196, v200, *v201, v202[0], *handler, *&handler[8], *&handler[16], v204, *(&v204 + 1), v205, *v206);
  if (OUTLINED_FUNCTION_124_0(v98))
  {
    *handler = 136315394;
    *&handler[4] = "fvfbserv_startServer";
    *&handler[12] = 2080;
    *&handler[14] = "com.apple.backboardd.virtualframebuffer";
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_65();
    v106 = _os_log_send_and_compose_impl(v99, v100, v101, v102, v103, v104, v1, v105);
  }

  else
  {
    v106 = 0;
  }

  OUTLINED_FUNCTION_345_0(qword_1ED4CBEC8, 1, 1, v106, v106 != block);
  FigCFDictionarySetInt32();
  v107 = FigXPCServerStart();
  if (v107)
  {
    v108 = v107;
    OUTLINED_FUNCTION_22_35();
    v109 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v110 = v202[0];
    v111 = os_log_type_enabled(v109, v202[0]);
    if (OUTLINED_FUNCTION_115_1(v111))
    {
      *handler = *(v3 + 134);
      *&handler[4] = "fvfbserv_startServer";
      *&handler[12] = 2080;
      *&handler[14] = "com.apple.backboardd.virtualframebuffer";
      *&handler[22] = 1024;
      LODWORD(v204) = v108;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl(v112, v113, v114, v115, v116, v109, v110, v117);
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *v206 = 1;
  FigNote_GetValue();
  if (!*v206 && !FigNote_ChangeValue() && dword_1ED4CBED0)
  {
    *v202 = 0;
    v201[0] = OS_LOG_TYPE_DEFAULT;
    v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v119 = os_log_type_enabled(v118, v201[0]);
    if (OUTLINED_FUNCTION_109_0(v119))
    {
      *handler = 136315906;
      *&handler[4] = "fvfbserv_setFigXPCNoteLevel";
      *&handler[12] = 2112;
      *&handler[14] = @"figxpc_trace";
      *&handler[22] = 1024;
      LODWORD(v204) = *v206;
      WORD2(v204) = 1024;
      *(&v204 + 6) = 1;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_456(v120, v121, v122, v123, v124, v125, v126, v127);
    }

    OUTLINED_FUNCTION_7();
LABEL_37:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v89)
  {
    CFRelease(v89);
  }
}

uint64_t fvfbserv_objCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v166 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v160 = 0;
  v161 = 0;
  if (dword_1ED4CBED0)
  {
    OUTLINED_FUNCTION_23_42();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v146));
    if (OUTLINED_FUNCTION_115_1(v8))
    {
      v162 = 136315394;
      v163 = "fvfbserv_objCopyProperty";
      v164 = 2112;
      v165 = a2;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v146), v14);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (*(DerivedStorage + 256) && *(DerivedStorage + 264))
    {
      if (CFEqual(a2, @"SupportsRotation"))
      {
        v15 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 60))
        {
          v15 = MEMORY[0x1E695E4C0];
        }

        v16 = *v15;
        goto LABEL_14;
      }

      if (CFEqual(a2, @"VirtualDisplayMode"))
      {
        v16 = *(DerivedStorage + 24);
        if (v16)
        {
LABEL_14:
          v17 = 0;
          *a4 = CFRetain(v16);
          goto LABEL_15;
        }

LABEL_20:
        v17 = 4294954512;
        goto LABEL_15;
      }

      if (CFEqual(a2, @"DisplayContainerID") || CFEqual(a2, @"Transport") || CFEqual(a2, @"Time") || CFEqual(a2, @"DisplayAttributes"))
      {
        goto LABEL_20;
      }

      v19 = FigXPCCreateBasicMessage();
      if (v19)
      {
        v17 = v19;
        v77 = OUTLINED_FUNCTION_19_41(v19, v20, v21, v22, v23, v24, v25, v26, v138, v142, v146, SBYTE2(v146), SBYTE3(v146), SHIDWORD(v146));
        v85 = OUTLINED_FUNCTION_437_1(v77, v78, v79, v80, v81, v82, v83, v84, v139, v143, v147, v150, v153, type);
        if (OUTLINED_FUNCTION_109_0(v85))
        {
LABEL_36:
          OUTLINED_FUNCTION_17_43();
          OUTLINED_FUNCTION_5_117();
          OUTLINED_FUNCTION_9_13();
          OUTLINED_FUNCTION_456(v95, v96, v97, v98, v99, v100, v101, v102);
        }
      }

      else
      {
        v27 = FigXPCMessageSetCFString();
        if (!v27)
        {
          v35 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), v161, &v160);
          if (v35)
          {
            v17 = v35;
            v103 = OUTLINED_FUNCTION_19_41(v35, v36, v37, v38, v39, v40, v41, v42, v138, v142, v146, SBYTE2(v146), SBYTE3(v146), SHIDWORD(v146));
            v111 = OUTLINED_FUNCTION_437_1(v103, v104, v105, v106, v107, v108, v109, v110, v141, v145, v149, v152, v155, typeb);
            if (OUTLINED_FUNCTION_109_0(v111))
            {
              OUTLINED_FUNCTION_17_43();
              OUTLINED_FUNCTION_5_117();
              OUTLINED_FUNCTION_9_13();
              OUTLINED_FUNCTION_456(v112, v113, v114, v115, v116, v117, v118, v119);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524(v133, v134, v135, v136, v137);
          }

          else
          {
            v43 = FigXPCMessageCopyCFObject();
            v17 = v43;
            if (v43)
            {
              v120 = OUTLINED_FUNCTION_19_41(v43, v44, v45, v46, v47, v48, v49, v50, v138, v142, v146, SBYTE2(v146), SBYTE3(v146), SHIDWORD(v146));
              v121 = os_log_type_enabled(v120, v156);
              if (OUTLINED_FUNCTION_115_1(v121))
              {
                OUTLINED_FUNCTION_17_43();
                OUTLINED_FUNCTION_5_117();
                OUTLINED_FUNCTION_9_13();
                _os_log_send_and_compose_impl(v122, v123, v124, v125, v126, v120, v156, v127);
              }

              OUTLINED_FUNCTION_16();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              *a4 = 0;
            }
          }

          goto LABEL_15;
        }

        v17 = v27;
        v86 = OUTLINED_FUNCTION_19_41(v27, v28, v29, v30, v31, v32, v33, v34, v138, v142, v146, SBYTE2(v146), SBYTE3(v146), SHIDWORD(v146));
        v94 = OUTLINED_FUNCTION_437_1(v86, v87, v88, v89, v90, v91, v92, v93, v140, v144, v148, v151, v154, typea);
        if (OUTLINED_FUNCTION_109_0(v94))
        {
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v128, v129, v130, v131, v132);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_23_42();
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = os_log_type_enabled(v51, BYTE4(v146));
    if (OUTLINED_FUNCTION_124_0(v52))
    {
      OUTLINED_FUNCTION_17_43();
      LODWORD(v165) = 725;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_13();
      OUTLINED_FUNCTION_128_0(v53, v54, v55, v56, v57, v58, v59, v60);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0(v72, v73, v74, v75, v76);
    v17 = 3758097097;
  }

  else
  {
    v17 = 3758097111;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if ((UpTimeNanoseconds - *(DerivedStorage + 96)) >= 0xF4241)
    {
      v62 = UpTimeNanoseconds;
      OUTLINED_FUNCTION_23_42();
      v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v64 = os_log_type_enabled(v63, BYTE4(v146));
      if (OUTLINED_FUNCTION_115_1(v64))
      {
        v65 = *(DerivedStorage + 12);
        v162 = 136315394;
        v163 = "fvfbserv_objCopyProperty";
        v164 = 1024;
        LODWORD(v165) = v65;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl(v66, v67, v68, v69, v70, v63, BYTE4(v146), v71);
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(DerivedStorage + 96) = v62;
    }
  }

LABEL_15:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v17;
}

uint64_t fvfbserv_objEnableMirroring(uint64_t a1, int a2)
{
  v106 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v100 = 0;
  xdict = 0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 8))
  {
    if (dword_1ED4CBED0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v46 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v39, v40, v41, v42, v43, v44, v45, v96, v97, v98, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_124_0(v46))
      {
        v102 = 136315138;
        v103 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_128_0(v47, v48, v49, v50, v51, v52, v53, v54);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0(v91, v92, v93, v94, v95);
    }

    goto LABEL_28;
  }

  if (*(DerivedStorage + 88) == a2)
  {
LABEL_28:
    v19 = 0;
    goto LABEL_14;
  }

  *(DerivedStorage + 88) = -1;
  if (*(DerivedStorage + 256) && *(DerivedStorage + 264))
  {
    if (dword_1ED4CBED0)
    {
      OUTLINED_FUNCTION_24_30();
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = os_log_type_enabled(v4, BYTE3(type));
      if (OUTLINED_FUNCTION_109_0(v5))
      {
        v6 = "disable";
        if (a2)
        {
          v6 = "enable";
        }

        v102 = 136315394;
        v103 = "fvfbserv_objEnableMirroring";
        v104 = 2080;
        v105 = v6;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl(v7, v8, v9, v10, v11, v4, BYTE3(type), v12);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v13, v14, v15, v16, v17);
    }

    v18 = FigXPCCreateBasicMessage();
    if (v18)
    {
      v19 = v18;
      OUTLINED_FUNCTION_24_30();
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v63 = OUTLINED_FUNCTION_116_0(v55, v56, v57, v58, v59, v60, v61, v62, v96, v97, v98, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v63))
      {
        v102 = 136315650;
        v103 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_26_32();
        OUTLINED_FUNCTION_5_117();
LABEL_24:
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_456(v73, v74, v75, v76, v77, v78, v79, v80);
      }
    }

    else
    {
      xpc_dictionary_set_BOOL(xdict, "Enabled", a2);
      v19 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v100);
      if (!v19)
      {
        *(DerivedStorage + 88) = a2;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_24_30();
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v72 = OUTLINED_FUNCTION_116_0(v64, v65, v66, v67, v68, v69, v70, v71, v96, v97, v98, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v72))
      {
        v102 = 136315650;
        v103 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_26_32();
        OUTLINED_FUNCTION_5_117();
        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v86, v87, v88, v89, v90);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_44_15();
  v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v29 = OUTLINED_FUNCTION_180_0(v21, v22, v23, v24, v25, v26, v27, v28, v96, v97, v98, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
  if (OUTLINED_FUNCTION_124_0(v29))
  {
    v102 = 136315394;
    v103 = "fvfbserv_objEnableMirroring";
    OUTLINED_FUNCTION_26_32();
    LODWORD(v105) = 1117;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_128_0(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_345_0(v81, v82, v83, v84, v85);
  v19 = 3758097097;
LABEL_14:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v19;
}

void __fvfbsrc_handleDeadConnection_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*v3 && *(v3 + 24))
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_44_15();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v5, v6, v7, v8, v9, v10, v11, v43, v45, v47, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v12))
    {
      OUTLINED_FUNCTION_29_29();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, v18, v1, v19);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v20, v21, v22, v23, v24);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (**(a1 + 32) == 1)
    {
      CFDictionarySetValue(Mutable, @"SuspendOnActivate", *MEMORY[0x1E695E4D0]);
    }

    _fvfbsrc_stop(*(a1 + 40));
    v26 = _fvfbsrc_start(*(a1 + 40), Mutable);
    if (v26)
    {
      v39 = v26;
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = os_log_type_enabled(v40, BYTE3(v50));
      v42 = OUTLINED_FUNCTION_115_1(v41);
      if (v42)
      {
        v51 = 136315650;
        v52 = "fvfbsrc_handleDeadConnection_block_invoke";
        v53 = 1024;
        v54 = 2911;
        v55 = 1024;
        v56 = v39;
        _os_log_send_and_compose_impl(v42, 0, v57, 128, &dword_1962D5000, v40, BYTE3(v50), "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v51, 24, v48);
      }

      OUTLINED_FUNCTION_16();
    }

    else
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = OUTLINED_FUNCTION_116_0(v27, v28, v29, v30, v31, v32, v33, v34, v44, v46, v48, v50, SBYTE2(v50), BYTE3(v50), SHIDWORD(v50));
      if (OUTLINED_FUNCTION_109_0(v35))
      {
        OUTLINED_FUNCTION_29_29();
        OUTLINED_FUNCTION_456(v36, 0, v57, 128, &dword_1962D5000, v37, v38, "<<<< FigVirtualFramebufferClientServer >>>> %s: vfb source %p restarted");
      }

      OUTLINED_FUNCTION_7();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  CFRelease(*(a1 + 40));
}

double FigVirtualFramebufferGetFramebufs_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualFramebufferGetFramebufs_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualFramebufferGetFramebufs_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualFramebufferGetFramebufs_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_hotplugSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_hotplugSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_hdcpSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_hdcpSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objSetDigitalOutMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objSubmitSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objAcquireWritebackSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objAcquireWritebackSurface_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objAcquireWritebackSurface_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objAcquireWritebackSurface_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objRelinquishWritebackSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objRelinquishWritebackSurface_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objHDCPGetReply_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_objGetProtectionOptions_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_getAndRetainFramebufFromMessage_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_startVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_startVirtualFramebuf_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_startVirtualFramebuf_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_startVirtualFramebuf_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_suspendVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbserv_resumeVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbintern_hdcpSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbintern_hdcpSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbintern_objHDCPGetReply_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbintern_objHDCPGetReply_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbintern_objGetProtectionOptions_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_objCopyProperty_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double _fvfbsrc_start_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double _fvfbsrc_start_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_5()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_6()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_9()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_10()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_11()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_12()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_13()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_14()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double fvfbsrc_handleServerMessage_cold_15()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_182(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVideoCompositionInstructionGetBackgroundColorARGB(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"BackgroundColorARGB");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v6) == 4)
      {
        for (i = 0; i != 4; ++i)
        {
          FigCFArrayGetFloat32AtIndex();
          a2 += 4;
        }

        return result;
      }

      v9 = 82;
    }

    else
    {
      v9 = 80;
    }

    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954791, "<<<< FigVideoCompositor_Utility >>>>", v9, v2);
  }

  return result;
}

uint64_t FigVideoCompositorSetDestinationPixelBufferGeometricProperties(__CVBuffer *a1, const __CFDictionary *a2)
{
  value = 0;
  v4 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a2, 0, 0, &value);
  if (!v4)
  {
    if (value)
    {
      CVBufferSetAttachment(a1, *MEMORY[0x1E6965D70], value, kCVAttachmentMode_ShouldPropagate);
    }

    v5 = CFDictionaryGetValue(a2, @"RenderPixelAspectRatio");
    if (v5)
    {
      CVBufferSetAttachment(a1, *MEMORY[0x1E6965EF8], v5, kCVAttachmentMode_ShouldPropagate);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(const __CFDictionary *a1, const __CFArray *a2)
{
  CFDictionaryGetValue(a1, @"DestinationPixelBufferDesiredTransferFunction");
  if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E6966218];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != FigVCLayerDefinitionGetTypeID())
      {
        break;
      }

      SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
      if (!SourcePixelBuffer)
      {
        break;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
      if (PixelFormatType == 1380410945)
      {
        UInt64 = 32;
      }

      else
      {
        v14 = CVPixelFormatDescriptionCreateWithPixelFormatType(v7, PixelFormatType);
        if (v14)
        {
          v15 = v14;
          if (CFDictionaryGetValue(v14, v8))
          {
            UInt64 = FigCFNumberGetUInt64();
          }

          else
          {
            UInt64 = 0;
          }

          CFRelease(v15);
        }

        else
        {
          UInt64 = 0;
        }
      }

      if (UInt64 > v6)
      {
        v6 = UInt64;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v16 = v6 <= 10;
    v17 = 10;
  }

  else
  {
    v16 = v6 <= 8;
    v17 = 8;
  }

  if (v16)
  {
    return v17;
  }

  else
  {
    return v6;
  }
}

uint64_t FigVideoCompositorCreateDestinationPixelBufferPool(const __CFDictionary *a1, uint64_t a2, const void *a3, void *a4, int a5)
{
  v14 = 0;
  CFDictionaryGetValue(a1, @"DestinationPixelBufferDesiredAttributes");
  v9 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a1, &v14, 0, 0);
  if (v9)
  {
    v12 = v9;
    Mutable = 0;
    goto LABEL_10;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryGetValue(a1, @"PixelBufferPoolSharingID");
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], a3);
  if (a5)
  {
    FigGetAlignmentForIOSurfaceOutput();
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
LABEL_13:
      v12 = PixelBufferAttributesWithIOSurfaceSupport;
      goto LABEL_10;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = 0;
  }

  FigCFDictionaryGetInt32IfPresent();
  PixelBufferAttributesWithIOSurfaceSupport = VTCreatePixelBufferPoolAttributesWithName();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    goto LABEL_13;
  }

  v12 = VTBuildPixelBufferPools2();
  if (!v12)
  {
    v12 = 0;
    *a4 = 0;
  }

LABEL_10:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(const __CFDictionary *a1, const __CFArray *a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  FigCFArrayAppendInt32();
  FigCFArrayAppendInt32();
  v8 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a1, &v12, v11, &v13);
  if (v8)
  {
    v9 = v8;
    if (Mutable)
    {
LABEL_5:
      CFRelease(Mutable);
    }
  }

  else
  {
    v9 = FigVCLayerDefinitionCopyDestinationPixelBufferWithoutComposingIfPossible(a2, &v12, v11, v13, Mutable, &v14);
    if (!v9)
    {
      *a3 = v14;
      v14 = 0;
    }

    if (Mutable)
    {
      goto LABEL_5;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

void FigVideoCompositorPropertiesGetRenderDimensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorPropertiesGetRenderDimensions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigWebVTTFormatWriterCreateForWritingWebVTTSegments(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  v20 = 0;
  v18 = 0;
  if (!a2 || !a5 || FigCFDictionaryGetStringValue() && !FigCFEqual())
  {
    goto LABEL_21;
  }

  FigFormatWriterGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
LABEL_22:
    v14 = v9;
    goto LABEL_10;
  }

  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_22;
  }

  v11 = DerivedStorage;
  v12 = ffw_vtt_createByteStreamBasedOnBlockBuffer(a1, &v18, &cf);
  v13 = v18;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = ffw_vtt_buildPipeline(a1, v20, v18);
    if (!v14)
    {
      *v11 = 1;
      *(v11 + 48) = 0;
      *(v11 + 56) = a2;
      *(v11 + 64) = a3;
      v16 = cf;
      v15 = v20;
      cf = 0;
      v20 = 0;
      *(v11 + 120) = v16;
      *(v11 + 128) = v13;
      *a5 = v15;
      goto LABEL_10;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

void ffw_vtt_AddSampleBufferToTrack(const void *a1, int a2, opaqueCMSampleBuffer *a3)
{
  v167 = *MEMORY[0x1E69E9840];
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a2)
  {
    goto LABEL_43;
  }

  if (!a3)
  {
    goto LABEL_43;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 52))
  {
    goto LABEL_43;
  }

  if (!CMSampleBufferGetNumSamples(a3))
  {
    goto LABEL_66;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v10 = *(v7 + 4);
  if (v10)
  {
    if (v10 != MediaType)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v7 + 4) = MediaType;
  }

  OUTLINED_FUNCTION_4_132();
  if (v11)
  {
    if (!*(v7 + 40) && ffw_vtt_createCaptionGroupConverter(*MEMORY[0x1E695E480], a1, (v7 + 40)))
    {
      goto LABEL_66;
    }
  }

  v12 = *v7;
  FigFormatWriterGetFigBaseObject();
  v13 = CMBaseObjectGetDerivedStorage();
  if (v12 == 1)
  {
    v158 = 0uLL;
    v159 = 0;
    ffw_vtt_getSampleBufferOutputPresentationEndTime(a3, &v158);
    FigFormatWriterGetFigBaseObject();
    if ((~*(CMBaseObjectGetDerivedStorage() + 84) & 0x11) == 0)
    {
      memset(&time1, 0, 24);
      CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, a3);
      OUTLINED_FUNCTION_4_132();
      if (v11)
      {
        v80 = *(v13 + 40);
        v81 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v81 || v81(v80, a3))
        {
          goto LABEL_66;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_76();
        if (!v11)
        {
LABEL_17:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_66;
        }

        if (FigCaptionTimelineGeneratorAddSampleBuffer(*(v13 + 32), a3))
        {
          goto LABEL_66;
        }
      }

      *(v13 + 136) = *&time1.start.value;
      *(v13 + 152) = time1.start.epoch;
LABEL_51:
      *(v13 + 184) = v158;
      *(v13 + 200) = v159;
      goto LABEL_66;
    }

    if ((*(v13 + 148) & 1) == 0 || (*(v13 + 172) & 1) == 0 || *(v13 + 176) || (*(v13 + 160) & 0x8000000000000000) != 0)
    {
      v165 = *(v13 + 96);
      v17 = *(v13 + 108);
      v166 = *(v13 + 104);
      v18 = *(v13 + 112);
      v163 = *(v13 + 72);
      v164 = *(v13 + 80);
      if (v17 & 0x1D) == 1 && (v19 = *(v13 + 84), (v19) && (v20 = *(v13 + 88), *&time1.start.value = *MEMORY[0x1E6960CC0], time1.start.epoch = *(MEMORY[0x1E6960CC0] + 16), time2.value = *(v13 + 72), time2.timescale = *(v13 + 80), time2.flags = v19, time2.epoch = v20, CMTimeCompare(&time1.start, &time2) < 0))
      {
        duration.epoch = v20;
        time2.value = v165;
        time2.timescale = v166;
        time2.flags = v17;
        time2.epoch = v18;
        duration.value = v163;
        duration.timescale = v164;
        duration.flags = v19;
        CMTimeRangeMake(&time1, &time2, &duration);
        v21 = *&time1.start.epoch;
        *(v13 + 136) = *&time1.start.value;
        *(v13 + 152) = v21;
        *(v13 + 168) = *&time1.duration.timescale;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v147, v158, DWORD2(v158));
        if (v146)
        {
          goto LABEL_66;
        }
      }
    }

    OUTLINED_FUNCTION_4_132();
    if (v11)
    {
      FigFormatWriterGetFigBaseObject();
      v82 = CMBaseObjectGetDerivedStorage();
      v83 = CFGetAllocator(a1);
      OUTLINED_FUNCTION_12_63(v83, v84, v85, v86, v87, v88, v89, v90, v147, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, time2.value, *&time2.timescale, time2.epoch);
      OUTLINED_FUNCTION_0_183();
      v99 = OUTLINED_FUNCTION_13_49(v91, v92, v93, v94, v95, v96, v97, v98, v153, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
      v107 = OUTLINED_FUNCTION_2_164(v99, v100, v101, v102, v103, v104, v105, v106, v154, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
      if (v107 <= 0)
      {
        do
        {
          v142 = *(v82 + 40);
          v143 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v143)
          {
            goto LABEL_66;
          }

          if (v143(v142, a3))
          {
            goto LABEL_66;
          }

          v115 = *(v82 + 40);
          v116 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v116)
          {
            goto LABEL_66;
          }

          if (v116(v115))
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_0_183();
          if (ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &time1.start.value))
          {
            goto LABEL_66;
          }

          v117 = *(v82 + 40);
          if (v117)
          {
            CFRelease(v117);
            *(v82 + 40) = 0;
          }

          CaptionGroupConverter = ffw_vtt_createCaptionGroupConverter(v83, a1, (v82 + 40));
          if (CaptionGroupConverter)
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_5_118(CaptionGroupConverter, v119, v120, v121, v122, v123, v124, v125, v155, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch);
          *(v82 + 136) = *&time1.start.value;
          *(v82 + 152) = time1.start.epoch;
          OUTLINED_FUNCTION_0_183();
          v134 = OUTLINED_FUNCTION_13_49(v126, v127, v128, v129, v130, v131, v132, v133, v156, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
          v107 = OUTLINED_FUNCTION_2_164(v134, v135, v136, v137, v138, v139, v140, v141, v157, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
        }

        while (v107 < 1);
      }

      if ((OUTLINED_FUNCTION_7_90(v107, v108, v109, v110, v111, v112, v113, v114, v155, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch, *&time2.value, time2.epoch) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      v144 = *(v82 + 40);
      v145 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v145)
      {
        if (!v145(v144, a3))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_76();
      if (!v11)
      {
        goto LABEL_17;
      }

      FigFormatWriterGetFigBaseObject();
      v22 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_12_63(v22, v23, v24, v25, v26, v27, v28, v29, v147, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, time2.value, *&time2.timescale, time2.epoch);
      OUTLINED_FUNCTION_0_183();
      v38 = OUTLINED_FUNCTION_13_49(v30, v31, v32, v33, v34, v35, v36, v37, v148, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
      v46 = OUTLINED_FUNCTION_2_164(v38, v39, v40, v41, v42, v43, v44, v45, v149, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
      if (v46 <= 0)
      {
        while (!FigCaptionTimelineGeneratorAddSampleBuffer(*(v22 + 32), a3))
        {
          OUTLINED_FUNCTION_0_183();
          v54 = ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &time1.start.value);
          if (v54)
          {
            break;
          }

          OUTLINED_FUNCTION_5_118(v54, v55, v56, v57, v58, v59, v60, v61, v150, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch);
          *(v22 + 136) = *&time1.start.value;
          *(v22 + 152) = time1.start.epoch;
          OUTLINED_FUNCTION_0_183();
          v70 = OUTLINED_FUNCTION_13_49(v62, v63, v64, v65, v66, v67, v68, v69, v151, v158, *(&v158 + 1), v159, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
          v46 = OUTLINED_FUNCTION_2_164(v70, v71, v72, v73, v74, v75, v76, v77, v152, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
          if (v46 >= 1)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_66;
      }

LABEL_40:
      if ((OUTLINED_FUNCTION_7_90(v46, v47, v48, v49, v50, v51, v52, v53, v150, v158, v159, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch, *&time2.value, time2.epoch) & 0x80000000) == 0 || !FigCaptionTimelineGeneratorAddSampleBuffer(*(v22 + 32), a3))
      {
        goto LABEL_51;
      }
    }

LABEL_66:
    OUTLINED_FUNCTION_11_66();
    return;
  }

  OUTLINED_FUNCTION_4_132();
  if (v11 || (OUTLINED_FUNCTION_8_76(), !v11))
  {
LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_134();
    OUTLINED_FUNCTION_11_66();

    FigSignalErrorAtGM(v78);
    return;
  }

  OUTLINED_FUNCTION_11_66();

  FigCaptionTimelineGeneratorAddSampleBuffer(v14, v15);
}

uint64_t ffw_vtt_Flush(const void *a1)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(v3);
    if (result)
    {
      return result;
    }

    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 40) = 0;
    }
  }

  if (*DerivedStorage == 1)
  {
    memset(&v10, 0, sizeof(v10));
    *&lhs.start.value = *(DerivedStorage + 184);
    lhs.start.epoch = *(DerivedStorage + 200);
    *&v7.start.value = *(DerivedStorage + 136);
    v7.start.epoch = *(DerivedStorage + 152);
    CMTimeSubtract(&v10, &lhs.start, &v7.start);
    if ((v10.flags & 1) == 0 || (*&lhs.start.value = *MEMORY[0x1E6960CC0], lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), v7.start = v10, (CMTimeCompare(&lhs.start, &v7.start) & 0x80000000) == 0) || (memset(&lhs, 0, sizeof(lhs)), *&v7.start.value = *(DerivedStorage + 136), v7.start.epoch = *(DerivedStorage + 152), duration = v10, CMTimeRangeMake(&lhs, &v7.start, &duration), v7 = lhs, result = ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &v7.start.value), !result))
    {
      FigFormatWriterGetFigBaseObject();
      if ((~*(CMBaseObjectGetDerivedStorage() + 84) & 0x11) == 0)
      {
        return 0;
      }

      result = 0;
      goto LABEL_13;
    }
  }

  else
  {
    result = ffw_vtt_finishPipeline();
    if (!result)
    {
LABEL_13:
      *(DerivedStorage + 52) = 1;
    }
  }

  return result;
}

uint64_t ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(const void *a1, __int128 *a2)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  v24 = 0;
  cf = 0;
  v6 = ffw_vtt_finishPipeline();
  if (v6)
  {
    return v6;
  }

  v22 = *a2;
  v23 = *(a2 + 2);
  v20 = *(a2 + 24);
  v21 = *(a2 + 5);
  values = 0;
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_37;
  }

  v8 = FigCFDictionarySetInt32();
  if (v8)
  {
    goto LABEL_41;
  }

  values = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!values)
  {
LABEL_37:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_41;
  }

  v8 = FigCFDictionarySetInt32();
  if (!v8)
  {
    v8 = FigCFDictionarySetInt32();
    if (!v8)
    {
      v26 = v20;
      v27 = v21;
      v8 = FigCFDictionarySetCMTime();
      if (!v8)
      {
        v26 = v22;
        v27 = v23;
        v8 = FigCFDictionarySetCMTime();
        if (!v8)
        {
          v9 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
          if (v9)
          {
            v10 = v9;
            CFDictionarySetValue(Mutable, @"SegmentReportKey_TrackReports", v9);
            CFRelease(v10);
            v11 = 0;
            v12 = Mutable;
            Mutable = 0;
            goto LABEL_11;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

LABEL_41:
  v11 = v8;
  v12 = 0;
LABEL_11:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    goto LABEL_29;
  }

  v13 = (*(DerivedStorage + 56))(*(DerivedStorage + 64), *(DerivedStorage + 120), v12);
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    ffw_vtt_releasePipeline();
    v14 = ffw_vtt_createByteStreamBasedOnBlockBuffer(v5, &v24, &cf);
    v15 = v24;
    if (v14 || (v14 = ffw_vtt_buildPipeline(v5, a1, v24), v14))
    {
      v11 = v14;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = *(DerivedStorage + 120);
      v17 = cf;
      *(DerivedStorage + 120) = cf;
      if (v17)
      {
        CFRetain(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v18 = *(DerivedStorage + 128);
      *(DerivedStorage + 128) = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v11 = 0;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v15);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t ffw_vtt_finishPipeline()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCaptionTimelineGeneratorFinish(DerivedStorage[4]);
  if (!result)
  {
    result = FigVTTCaptionWriterFinish(DerivedStorage[1]);
    if (!result)
    {
      v2 = DerivedStorage[3];

      return FigVTTSerializerFlush(v2);
    }
  }

  return result;
}

void FigWebVTTFormatWriterCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigWebVTTFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigWebVTTFormatWriterCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_AddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ffw_vtt_CaptionGroupConverterCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void configurationScheduler_timerSourceActivation(uint64_t a1)
{
  v6 = **&MEMORY[0x1E6960C70];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMTimebaseGetTime(&v6, *(v1 + 24));
    FigSimpleMutexLock();
    v3 = v2[9];
    if (v3)
    {
      if (v2[10])
      {
        v4 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v4)
        {
          goto LABEL_9;
        }

        v3 = v2[9];
      }

      else
      {
        v4 = 0;
      }

      v5 = v6;
      v3(v2, &v5, v4);
    }

    else
    {
      v4 = 0;
    }

LABEL_9:
    FigSimpleMutexUnlock();
    CFRelease(v2);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v4;
  if (!v4)
  {
    return 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

void FPSTimelineConverterL2TimeToL3(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_9_67(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119(v2);
    v3 = OUTLINED_FUNCTION_0_185();
    fpstc_L2TimeToL3Locked(v3, v4, v5);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL2TimeToL4(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v3)
  {
    OUTLINED_FUNCTION_5_119(v3);
    OUTLINED_FUNCTION_130_0();
    fpstc_L2TimeToL3Locked(v1, &v4, &v5);
    fpstc_L3TimeToL4Locked(v1, &v5, a1);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeToL2(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_9_67(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119(v2);
    v3 = OUTLINED_FUNCTION_0_185();
    fpstc_L3TimeToL2Locked(v3, v4, v5);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeToL4()
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v0)
  {
    OUTLINED_FUNCTION_5_119(v0);
    v1 = OUTLINED_FUNCTION_0_185();
    fpstc_L3TimeToL4Locked(v1, v2, v3);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeToL3()
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v0)
  {
    OUTLINED_FUNCTION_5_119(v0);
    v1 = OUTLINED_FUNCTION_0_185();
    fpstc_L4TimeToL3Locked(v1, v2, v3);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeToL2(void *a1@<X8>)
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v3)
  {
    OUTLINED_FUNCTION_5_119(v3);
    OUTLINED_FUNCTION_130_0();
    fpstc_L4TimeToL3Locked(v1, &v4, &v5);
    fpstc_L3TimeToL2Locked(v1, &v5, a1);

    FigSimpleMutexUnlock();
  }
}