uint64_t FigAlternateGetSubtitleGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 96);
  }

  return result;
}

uint64_t FigAlternateGetClosedCaptionGroupIDString(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 104);
  }

  return result;
}

uint64_t FigAlternateIsVideoGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 113);
  }

  return result;
}

uint64_t FigAlternateIsAudioGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 112);
  }

  return result;
}

uint64_t FigAlternateIsSubtitleGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 114);
  }

  return result;
}

uint64_t FigAlternateIsClosedCaptionGroupSynthesized(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 115);
  }

  return result;
}

__CFString *FigAlternateGetVideoRangeString(__CFString *result)
{
  if (result)
  {
    v1 = FigAlternateGetVideoRange(result) - 1;
    if (v1 > 3)
    {
      return @"Unknown";
    }

    else
    {
      return off_1E7481AC8[v1];
    }
  }

  return result;
}

uint64_t FigAlternateGetStableStreamIdentifier(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 120);
  }

  return result;
}

uint64_t FigAlternateGetPlaylistAlternateURL(uint64_t result)
{
  if (result)
  {
    return *CMBaseObjectGetDerivedStorage();
  }

  return result;
}

uint64_t FigAlternateGetURLForCacheLookup(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 40);
  }

  return result;
}

uint64_t FigAlternateGetRenditionInfoForMediaType(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, int a6, const __CFDictionary **a7, void *a8, void *a9)
{
  if (a2 == 1986618469)
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    v14 = 184;
    a5 = a3;
  }

  else
  {
    if (a2 != 1936684398)
    {
      if (a2 == 1935832172 && a1)
      {
        v14 = 192;
        goto LABEL_10;
      }

LABEL_14:
      v16 = 0;
      v18 = 0;
      Value = 0;
      goto LABEL_15;
    }

    if (!a1)
    {
      goto LABEL_14;
    }

    v14 = 176;
    a5 = a4;
  }

LABEL_10:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  if (a5)
  {
    v17 = *(DerivedStorage + v14);
    v18 = 0;
    Value = 0;
    if (v17)
    {
      Value = CFDictionaryGetValue(v17, a5);
      if (Value)
      {
        v20 = Value;
        v16 = CFDictionaryGetValue(Value, *MEMORY[0x1E6962BB0]);
        v18 = CFDictionaryGetValue(v20, *MEMORY[0x1E6962BB8]);
        Value = CFDictionaryGetValue(v20, *MEMORY[0x1E6962BA8]);
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
    Value = 0;
  }

LABEL_15:
  if (a6 && !v16 && !v18 && !Value)
  {
    if (a1)
    {
      v16 = *CMBaseObjectGetDerivedStorage();
      v18 = *(CMBaseObjectGetDerivedStorage() + 40);
      Value = *(CMBaseObjectGetDerivedStorage() + 120);
    }

    else
    {
      v16 = 0;
      v18 = 0;
      Value = 0;
    }
  }

  if (a7)
  {
    *a7 = Value;
  }

  if (a8)
  {
    *a8 = v16;
  }

  if (a9)
  {
    *a9 = v18;
  }

  return 0;
}

uint64_t FigAlternateGetSubtitleGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 192);
  }

  return result;
}

uint64_t FigAlternateGetAudioGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 176);
  }

  return result;
}

uint64_t FigAlternateGetVideoGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 184);
  }

  return result;
}

const __CFURL *FigAlternateGetCacheLookupIdentifier(const __CFURL *result)
{
  if (result)
  {
    result = *(CMBaseObjectGetDerivedStorage() + 120);
    if (!result)
    {
      result = *CMBaseObjectGetDerivedStorage();
      if (result)
      {

        return CFURLGetString(result);
      }
    }
  }

  return result;
}

uint64_t FigAlternateGetClosedCaptionGroupLocatorMap(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 200);
  }

  return result;
}

uint64_t FigAlternateGetMediaGroupLocatorMap(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 1936684397)
  {
    if (a2 == 1936684398)
    {
      if (a1)
      {
        v3 = 176;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }

    if (a2 == 1986618469)
    {
      if (a1)
      {
        v3 = 184;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }
  }

  else
  {
    if (a2 == 1668047728)
    {
      if (a1)
      {
        v3 = 200;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }

    if (a2 == 1935832172)
    {
      if (a1)
      {
        v3 = 192;
        return *(CMBaseObjectGetDerivedStorage() + v3);
      }

      return 0;
    }
  }

  return v2;
}

const __CFString *FigAlternateGetAudioFormatIDs(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    FigAlternateHasAudioDeclared(0);
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 416))
  {
    v3 = *(DerivedStorage + 408);
    FigSimpleMutexUnlock();
    return v3;
  }

  FigSimpleMutexUnlock();
  if (FigAlternateHasAudioDeclared(a1))
  {
    v3 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (!v3)
    {
      goto LABEL_9;
    }

    MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, 0, &cf))
    {
      Value = FigCFDictionaryGetValue();
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(v5 + 408) = v3;
  *(v5 + 416) = 1;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

const __CFString *FigAlternateGetCountOfValidMediaSubTypes(const __CFString *result, int a2)
{
  if (!result)
  {
    return result;
  }

  if (a2 == 1986618469)
  {
    result = FigAlternateGetVideoCodecs(result);
    if (!result)
    {
      return result;
    }

    return CFArrayGetCount(result);
  }

  if (a2 != 1936684398)
  {
    return 0;
  }

  result = FigAlternateGetAudioFormatIDs(result);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const void *FigAlternateGetVideoCodecs(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    v4 = 0;
    v3 = 0;
    if (!FigAlternateHasVideoDeclared(0))
    {
      return v3;
    }

LABEL_8:
    MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
    if (FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v4, MediaValidatorPlist, 0, &cf))
    {
      v3 = 0;
    }

    else
    {
      Value = FigCFDictionaryGetValue();
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 400))
  {
    v3 = *(DerivedStorage + 392);
    FigSimpleMutexUnlock();
    return v3;
  }

  FigSimpleMutexUnlock();
  if (FigAlternateHasVideoDeclared(a1))
  {
    v4 = *(CMBaseObjectGetDerivedStorage() + 16);
    goto LABEL_8;
  }

  v3 = 0;
LABEL_15:
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(v7 + 392) = v3;
  *(v7 + 400) = 1;
  FigSimpleMutexUnlock();
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigAlternateHasAudioFormatID(const void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1700997939)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 354))
    {
      v4 = *(DerivedStorage + 353);
LABEL_20:
      FigSimpleMutexUnlock();
      return v4;
    }

    FigSimpleMutexUnlock();
    if (!fa_CodecsIncludeAudioFormatChoice(a1, 1700998451))
    {
      v4 = 0;
LABEL_19:
      v12 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v12 + 353) = v4;
      *(v12 + 354) = 1;
      goto LABEL_20;
    }

    v6 = *(CMBaseObjectGetDerivedStorage() + 176);
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v4 = 0;
      v10 = 0;
LABEL_18:
      free(v10);
      goto LABEL_19;
    }

    v8 = Count;
    v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v9)
    {
      v10 = v9;
      CFDictionaryGetKeysAndValues(v6, v9, 0);
      v11 = 0;
      while (1)
      {
        v13 = 0;
        FigAlternateGetAudioChannelCount(a1, v10[v11], &v13);
        if (v13)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v4 = 0;
          goto LABEL_18;
        }
      }

      v4 = 1;
      goto LABEL_18;
    }

    FigAlternateHasAudioFormatID_cold_1();
    return 0;
  }

  return fa_CodecsIncludeAudioFormatChoice(a1, a2);
}

uint64_t fa_CodecsIncludeAudioFormatChoice(uint64_t a1, int a2)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  v3 = 0;
  if (a2 <= 1633889586)
  {
    if (a2 > 1633772319)
    {
      switch(a2)
      {
        case 1633772320:
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(DerivedStorage + 330))
          {
            v3 = *(DerivedStorage + 329);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v24 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v24 + 329) = v3;
            *(v24 + 330) = 1;
          }

          goto LABEL_59;
        case 1633772392:
          v16 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v16 + 332))
          {
            v3 = *(v16 + 331);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v26 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v26 + 331) = v3;
            *(v26 + 332) = 1;
          }

          goto LABEL_59;
        case 1633772400:
          v7 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v7 + 334))
          {
            v3 = *(v7 + 333);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v29 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v29 + 333) = v3;
            *(v29 + 334) = 1;
          }

          goto LABEL_59;
      }
    }

    else
    {
      switch(a2)
      {
        case 778924081:
          v13 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v13 + 336))
          {
            v3 = *(v13 + 335);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v23 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v23 + 335) = v3;
            *(v23 + 336) = 1;
          }

          goto LABEL_59;
        case 778924082:
          v15 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v15 + 338))
          {
            v3 = *(v15 + 337);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v25 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v25 + 337) = v3;
            *(v25 + 338) = 1;
          }

          goto LABEL_59;
        case 778924083:
          v5 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*(v5 + 340))
          {
            v3 = *(v5 + 339);
          }

          else
          {
            FigSimpleMutexUnlock();
            v3 = FigCFStringFind();
            v28 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            *(v28 + 339) = v3;
            *(v28 + 340) = 1;
          }

          goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1700998450)
  {
    switch(a2)
    {
      case 1633889587:
        v11 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v11 + 350))
        {
          v3 = *(v11 + 349);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v19 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v19 + 349) = v3;
          *(v19 + 350) = 1;
        }

        goto LABEL_59;
      case 1634492771:
        v12 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v12 + 348))
        {
          v3 = *(v12 + 347);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v22 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v22 + 347) = v3;
          *(v22 + 348) = 1;
        }

        goto LABEL_59;
      case 1634754915:
        v6 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v6 + 356))
        {
          v3 = *(v6 + 355);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = FigCFStringFind();
          v27 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          *(v27 + 355) = v3;
          *(v27 + 356) = 1;
        }

        goto LABEL_59;
    }
  }

  else if (a2 > 1869641074)
  {
    if (a2 == 1869641075)
    {
      v10 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v10 + 346))
      {
        v3 = *(v10 + 345);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v18 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v18 + 345) = v3;
        *(v18 + 346) = 1;
      }

      goto LABEL_59;
    }

    if (a2 == 1970495843)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v8 + 342))
      {
        v3 = *(v8 + 341);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v21 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v21 + 341) = v3;
        *(v21 + 342) = 1;
      }

      goto LABEL_59;
    }
  }

  else
  {
    if (a2 == 1700998451)
    {
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v9 + 352))
      {
        v3 = *(v9 + 351);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v17 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v17 + 351) = v3;
        *(v17 + 352) = 1;
      }

      goto LABEL_59;
    }

    if (a2 == 1718378851)
    {
      v4 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(v4 + 344))
      {
        v3 = *(v4 + 343);
      }

      else
      {
        FigSimpleMutexUnlock();
        v3 = FigCFStringFind();
        v20 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v20 + 343) = v3;
        *(v20 + 344) = 1;
      }

LABEL_59:
      FigSimpleMutexUnlock();
    }
  }

  return v3;
}

uint64_t FigAlternateGetAudioChannelCount(const void *a1, const void *a2, _DWORD *a3)
{
  v6 = 0uLL;
  v7 = 0;
  fa_getDeclaredAudioInfo(a1, a2, &v6);
  result = v6;
  if (a3)
  {
    *a3 = DWORD1(v6);
  }

  if (!result)
  {
    return FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
  }

  return result;
}

BOOL FigAlternateGetBestAudioFormat(const void *a1)
{
  if (!a1)
  {
    return FigAlternateHasAudioFormat(0, 1) != 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 276))
  {
    v3 = *(DerivedStorage + 272);
  }

  else
  {
    FigSimpleMutexUnlock();
    if (fa_CodecsIncludeAudioFormatChoice(a1, 1718378851))
    {
      v3 = 2;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1634492771))
    {
      v3 = 4;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1634754915))
    {
      v3 = 8;
    }

    else if (FigAlternateHasAudioFormatID(a1, 1700997939))
    {
      v3 = 7;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1700998451))
    {
      v3 = 6;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1633889587))
    {
      v3 = 5;
    }

    else if (fa_CodecsIncludeAudioFormatChoice(a1, 1869641075))
    {
      v3 = 3;
    }

    else
    {
      v3 = FigAlternateHasAudioFormat(a1, 1) != 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 272) = v3;
    *(v4 + 276) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateGetDeclaredAudioChannelCount(const void *a1, const void *a2, _DWORD *a3)
{
  v5 = 0uLL;
  v6 = 0;
  fa_getDeclaredAudioInfo(a1, a2, &v5);
  if (a3)
  {
    *a3 = DWORD1(v5);
  }

  return v5;
}

uint64_t FigAlternateGetAudioChannelCountAccordingToCodecTag(const void *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 284))
    {
      v3 = *(DerivedStorage + 280);
    }

    else
    {
      FigSimpleMutexUnlock();
      if (FigAlternateHasAudioFormatID(a1, 1634754915))
      {
        v3 = 4;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1700998451))
      {
        v3 = 8;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1633889587))
      {
        v3 = 6;
      }

      else if (FigAlternateHasAudioFormatID(a1, 1718378851) || FigAlternateHasAudioFormatID(a1, 1869641075) || FigAlternateHasAudioFormatID(a1, 1634492771) || FigAlternateHasAudioFormat(a1, 1))
      {
        v3 = 2;
      }

      else
      {
        v3 = 2 * (*(CMBaseObjectGetDerivedStorage() + 24) == 0);
      }

      v4 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v4 + 280) = v3;
      *(v4 + 284) = 1;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateGetAudioChannelCountAccordingToCodecTag_cold_1();
    return 2;
  }

  return v3;
}

uint64_t FigAlternateGetAudioChannelCounts(const void *a1, const void *a2, _DWORD *a3, _DWORD *a4)
{
  AudioChannelCount = FigAlternateGetAudioChannelCount(a1, a2, a4);
  if (a3)
  {
    *a3 = 0;
    if (a1)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 436))
      {
        v8 = *(DerivedStorage + 432);
      }

      else
      {
        FigSimpleMutexUnlock();
        AudioFormatIDs = FigAlternateGetAudioFormatIDs(a1);
        if (AudioFormatIDs && (v10 = AudioFormatIDs, CFArrayGetCount(AudioFormatIDs) >= 1))
        {
          v8 = 0;
          v11 = 0;
          do
          {
            FigCFArrayGetInt32AtIndex();
            AudioMaximumDecodeChannelCount = FigStreamAlternateGetAudioMaximumDecodeChannelCount(0);
            if (AudioMaximumDecodeChannelCount > v8)
            {
              v8 = AudioMaximumDecodeChannelCount;
            }

            ++v11;
          }

          while (CFArrayGetCount(v10) > v11);
        }

        else
        {
          v8 = 0;
        }

        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v13 + 432) = v8;
        *(v13 + 436) = 1;
      }

      FigSimpleMutexUnlock();
      if (v8)
      {
        v14 = AudioChannelCount <= v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        *a3 = AudioChannelCount - v8;
      }
    }
  }

  return AudioChannelCount;
}

uint64_t FigAlternateHasLosslessAudio(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 294))
  {
    v3 = *(DerivedStorage + 293);
  }

  else
  {
    FigSimpleMutexUnlock();
    v3 = 1;
    if (!fa_CodecsIncludeAudioFormatChoice(a1, 1718378851))
    {
      v3 = fa_CodecsIncludeAudioFormatChoice(a1, 1634492771) != 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 293) = v3;
    *(v4 + 294) = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

double FigAlternateGetMaxAudioSampleRate(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 384))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      v8 = 0;
      v3 = 0.0;
LABEL_19:
      v11 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v11 + 376) = v3;
      *(v11 + 384) = 1;
      FigSimpleMutexUnlock();
      v4 = v8;
      goto LABEL_20;
    }

    v4 = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v8 = 0;
      v3 = 0.0;
      goto LABEL_16;
    }

    v6 = Count;
    v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetKeysAndValues(v4, v7, 0);
      v9 = 0;
      v3 = 0.0;
      do
      {
        AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v8[v9]);
        if (AudioSampleRate > v3)
        {
          v3 = AudioSampleRate;
        }

        ++v9;
      }

      while (v6 != v9);
LABEL_16:
      v4 = v8;
      if (!a1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    FigAlternateGetMaxAudioSampleRate_cold_1();
    v4 = 0;
LABEL_5:
    v3 = 0.0;
LABEL_20:
    free(v4);
    return v3;
  }

  v3 = *(DerivedStorage + 376);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateWillPlayIfFairplayProtected(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 428))
  {
    HasValidCodecs = *(DerivedStorage + 427);
  }

  else
  {
    FigSimpleMutexUnlock();
    HasValidCodecs = FigAlternateHasValidCodecs(a1);
    if (*(CMBaseObjectGetDerivedStorage() + 16) && HasValidCodecs && FigAlternateHasValidCodecs(a1) && fa_hasVideoDecodedBySoftware(a1))
    {
      HasValidCodecs = !FigAlternateHasVideoFormat(a1, 4) && !FigAlternateHasVideoFormat(a1, 7) && !fa_CodecsIncludeVideoFormat(a1, 1635135537, 0) && fa_CodecsIncludeVideoFormat(a1, 1684108849, 0) == 0;
    }

    v4 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(v4 + 427) = HasValidCodecs;
    *(v4 + 428) = 1;
  }

  FigSimpleMutexUnlock();
  return HasValidCodecs;
}

const __CFString *fa_hasVideoDecodedBySoftware(uint64_t a1)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 426))
  {
    FigSimpleMutexUnlock();
    if (a1)
    {
      v3 = *(CMBaseObjectGetDerivedStorage() + 16);
      if (!v3)
      {
LABEL_9:
        v5 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        *(v5 + 425) = v3;
        *(v5 + 426) = 1;
        goto LABEL_10;
      }

      MediaValidatorPlist = *(CMBaseObjectGetDerivedStorage() + 480);
      if (!MediaValidatorPlist)
      {
        MediaValidatorPlist = FPSupport_GetMediaValidatorPlist();
      }

      if (!FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(v3, MediaValidatorPlist, &v7, 0))
      {
        v3 = (~v7 & 0x18) == 0;
        goto LABEL_9;
      }
    }

    v3 = 0;
    goto LABEL_9;
  }

  v3 = *(DerivedStorage + 425);
LABEL_10:
  FigSimpleMutexUnlock();
  return v3;
}

BOOL FigAlternateHasVideoCodecRequiringSoftwareDecode(_BOOL8 result)
{
  if (result)
  {
    return fa_hasVideoDecodedBySoftware(result) != 0;
  }

  return result;
}

const __CFString *FigAlternateShouldBeAvoidedForPlaybackInLPM(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    result = fa_hasVideoDecodedBySoftware(result);
    if (!result)
    {
      return (FigAlternateGetVideoRange(v1) > 1);
    }
  }

  return result;
}

uint64_t FigAlternateGetMaxAudioChannelCount(const void *a1)
{
  if (!a1)
  {
    AudioChannelCountAccordingToCodecTag = 0;
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 292))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      goto LABEL_18;
    }

    AudioChannelCountAccordingToCodecTag = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v6 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (!v4)
      {
        FigAlternateGetMaxAudioChannelCount_cold_1();
        AudioChannelCountAccordingToCodecTag = 0;
        goto LABEL_21;
      }

      CFDictionaryGetKeysAndValues(AudioChannelCountAccordingToCodecTag, v4, 0);
      v7 = 0;
      LODWORD(AudioChannelCountAccordingToCodecTag) = 0;
      do
      {
        v8 = v4[v7];
        v11 = 0uLL;
        v12 = 0;
        fa_getDeclaredAudioInfo(a1, v8, &v11);
        if (v11 <= AudioChannelCountAccordingToCodecTag)
        {
          AudioChannelCountAccordingToCodecTag = AudioChannelCountAccordingToCodecTag;
        }

        else
        {
          AudioChannelCountAccordingToCodecTag = v11;
        }

        ++v7;
      }

      while (v6 != v7);
      if (AudioChannelCountAccordingToCodecTag)
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      AudioChannelCountAccordingToCodecTag = FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
      if (!a1)
      {
LABEL_21:
        free(v4);
        return AudioChannelCountAccordingToCodecTag;
      }

LABEL_20:
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v9 + 288) = AudioChannelCountAccordingToCodecTag;
      *(v9 + 292) = 1;
      FigSimpleMutexUnlock();
      goto LABEL_21;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  AudioChannelCountAccordingToCodecTag = *(DerivedStorage + 288);
  FigSimpleMutexUnlock();
  return AudioChannelCountAccordingToCodecTag;
}

uint64_t FigAlternateGetMaxPlayableAudioChannelCount(const void *a1)
{
  if (!a1)
  {
    AudioChannelCountAccordingToCodecTag = 0;
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 372))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      goto LABEL_18;
    }

    AudioChannelCountAccordingToCodecTag = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v6 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (!v4)
      {
        FigAlternateGetMaxPlayableAudioChannelCount_cold_1();
        AudioChannelCountAccordingToCodecTag = 0;
        goto LABEL_21;
      }

      CFDictionaryGetKeysAndValues(AudioChannelCountAccordingToCodecTag, v4, 0);
      v7 = 0;
      LODWORD(AudioChannelCountAccordingToCodecTag) = 0;
      do
      {
        v11 = 0;
        AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v4[v7], &v11, 0);
        if (AudioChannelCounts - v11 <= AudioChannelCountAccordingToCodecTag)
        {
          AudioChannelCountAccordingToCodecTag = AudioChannelCountAccordingToCodecTag;
        }

        else
        {
          AudioChannelCountAccordingToCodecTag = (AudioChannelCounts - v11);
        }

        ++v7;
      }

      while (v6 != v7);
      if (AudioChannelCountAccordingToCodecTag)
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      AudioChannelCountAccordingToCodecTag = FigAlternateGetAudioChannelCountAccordingToCodecTag(a1);
      if (!a1)
      {
LABEL_21:
        free(v4);
        return AudioChannelCountAccordingToCodecTag;
      }

LABEL_20:
      v9 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v9 + 368) = AudioChannelCountAccordingToCodecTag;
      *(v9 + 372) = 1;
      FigSimpleMutexUnlock();
      goto LABEL_21;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  AudioChannelCountAccordingToCodecTag = *(DerivedStorage + 368);
  FigSimpleMutexUnlock();
  return AudioChannelCountAccordingToCodecTag;
}

uint64_t FigAlternateHasBinauralAudio(const void *a1)
{
  if (!a1)
  {
    v4 = 0;
    if (!FigAlternateHasAudioDeclared(0))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 366))
  {
    FigSimpleMutexUnlock();
    if (!FigAlternateHasAudioDeclared(a1))
    {
      v3 = 0;
      v8 = 0;
LABEL_19:
      v10 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      *(v10 + 365) = v3;
      *(v10 + 366) = 1;
      FigSimpleMutexUnlock();
      v4 = v8;
      goto LABEL_20;
    }

    v4 = *(CMBaseObjectGetDerivedStorage() + 176);
LABEL_8:
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v8 = 0;
LABEL_15:
      v3 = 0;
LABEL_16:
      v4 = v8;
      if (!a1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v6 = Count;
    v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetKeysAndValues(v4, v7, 0);
      v9 = 0;
      while (FigAlternateGetSpecializedAudioChannelUsage(a1, v8[v9]) != 3)
      {
        if (v6 == ++v9)
        {
          goto LABEL_15;
        }
      }

      v3 = 1;
      goto LABEL_16;
    }

    FigAlternateHasBinauralAudio_cold_1();
    v4 = 0;
LABEL_5:
    v3 = 0;
LABEL_20:
    free(v4);
    return v3;
  }

  v3 = *(DerivedStorage + 365);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAlternateIsPeakBitRateDeclared(uint64_t result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 8);
  }

  return result;
}

BOOL FigAlternateIsAverageBitRateDeclared(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 48) != 0;
  }

  return result;
}

BOOL FigAlternateIsFrameRateDeclared(_BOOL8 result)
{
  if (result)
  {
    return *(CMBaseObjectGetDerivedStorage() + 56) > 0.0;
  }

  return result;
}

__CFString *FigAlternateGetStringFromVideoRange(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AC8[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromVideoFormat(int a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481AE8[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromAudioFormat(int a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481B30[a1 - 1];
  }
}

__CFString *FigAlternateGetStringFromHDCPState(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481B78[a1 + 1];
  }
}

__CFString *FigAlternateGetPlaylistStringFromHDCPLevel(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7481B90[a1 + 1];
  }
}

__CFString *FigAlternateGetStringFromFramerateBucket(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"UnknownBucket";
  }

  else
  {
    return off_1E7481BA8[a1];
  }
}

__CFString *FigAlternateGetStringFromSpecializedChannelUsage(int a1)
{
  if ((a1 - 2) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7481BC8[a1 - 2];
  }
}

uint64_t FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(int a1)
{
  if ((a1 - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return dword_196E76368[a1 - 1];
  }
}

BOOL FigAlternateIs4k(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *v2;
  if (*v3 < *v2)
  {
    v4 = *v3;
  }

  return v4 > 1440.0;
}

BOOL FigAlternateHasHDVideoResolution(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = (DerivedStorage + 160);
    v3 = (DerivedStorage + 168);
  }

  else
  {
    v2 = MEMORY[0x1E695F060];
    v3 = (MEMORY[0x1E695F060] + 8);
  }

  v4 = *v2;
  if (*v3 < *v2)
  {
    v4 = *v3;
  }

  return v4 >= 1440.0;
}

double fa_getAlternateAvgToPeakRatio(uint64_t a1)
{
  if (a1)
  {
    AlternateAverageBandwidth = fa_GetAlternateAverageBandwidth(a1);
  }

  else
  {
    AlternateAverageBandwidth = 0.0;
  }

  return AlternateAverageBandwidth / FigAlternateGetPeakBitRate(a1);
}

uint64_t FigAlternateGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_36 != -1)
  {
    FigAlternateGetClassID_cold_1();
  }

  return qword_1ED4CA798;
}

uint64_t RegisterFigAlternateType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_36 != -1)
  {
    FigAlternateGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternateCreate(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5, char a6, int a7, int a8, uint64_t a9, CFTypeRef *a10)
{
  if (!a10)
  {
    FigAlternateCreate_cold_2(&v42);
    return v42;
  }

  if (_MergedGlobals_36 != -1)
  {
    FigAlternateGetClassID_cold_1();
  }

  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v19 = CFRetain(a3);
    }

    else
    {
      v19 = 0;
    }

    *DerivedStorage = v19;
    v20 = *a9;
    if (*a9)
    {
      v20 = CFRetain(v20);
    }

    *(DerivedStorage + 8) = a4;
    v21 = *(a9 + 8);
    *(DerivedStorage + 40) = v20;
    *(DerivedStorage + 48) = v21;
    *(DerivedStorage + 56) = *(a9 + 16);
    if (a5)
    {
      v22 = CFRetain(a5);
    }

    else
    {
      v22 = 0;
    }

    *(DerivedStorage + 16) = v22;
    v23 = *(a9 + 32);
    if (v23)
    {
      v23 = CFRetain(v23);
    }

    *(DerivedStorage + 72) = v23;
    v24 = *(a9 + 56);
    if (v24)
    {
      v24 = CFRetain(v24);
    }

    *(DerivedStorage + 80) = v24;
    *(DerivedStorage + 112) = *(a9 + 64);
    v25 = *(a9 + 40);
    if (v25)
    {
      v25 = CFRetain(v25);
    }

    *(DerivedStorage + 88) = v25;
    *(DerivedStorage + 113) = *(a9 + 48);
    v26 = *(a9 + 72);
    if (v26)
    {
      v26 = CFRetain(v26);
    }

    *(DerivedStorage + 96) = v26;
    *(DerivedStorage + 114) = *(a9 + 80);
    v27 = *(a9 + 88);
    if (v27)
    {
      v27 = CFRetain(v27);
    }

    *(DerivedStorage + 104) = v27;
    *(DerivedStorage + 115) = *(a9 + 96);
    *(DerivedStorage + 24) = a6;
    *(DerivedStorage + 64) = *(a9 + 24);
    v28 = *(a9 + 104);
    if (v28)
    {
      v28 = CFRetain(v28);
    }

    *(DerivedStorage + 120) = v28;
    *(DerivedStorage + 128) = *(a9 + 112);
    *(DerivedStorage + 136) = *(a9 + 120);
    *(DerivedStorage + 116) = *(a9 + 200);
    v29 = *(a9 + 144);
    if (v29)
    {
      v29 = CFRetain(v29);
    }

    *(DerivedStorage + 152) = v29;
    *(DerivedStorage + 160) = *(a9 + 152);
    *(DerivedStorage + 28) = a7;
    *(DerivedStorage + 32) = a8;
    v30 = *(a9 + 168);
    if (v30)
    {
      v30 = CFRetain(v30);
    }

    *(DerivedStorage + 176) = v30;
    v31 = *(a9 + 176);
    if (v31)
    {
      v31 = CFRetain(v31);
    }

    *(DerivedStorage + 184) = v31;
    v32 = *(a9 + 184);
    if (v32)
    {
      v32 = CFRetain(v32);
    }

    *(DerivedStorage + 192) = v32;
    v33 = *(a9 + 192);
    if (v33)
    {
      v33 = CFRetain(v33);
    }

    *(DerivedStorage + 200) = v33;
    v34 = FigSimpleMutexCreate();
    *(DerivedStorage + 488) = v34;
    if (v34)
    {
      *(DerivedStorage + 216) = 0xFFEFFFFFFFFFFFFFLL;
      *(DerivedStorage + 228) = a4;
      v35 = a2;
      if (a2)
      {
        v35 = CFRetain(a2);
      }

      *(DerivedStorage + 480) = v35;
      v36 = *(a9 + 128);
      if (v36)
      {
        v36 = CFRetain(v36);
      }

      v16 = 0;
      *(DerivedStorage + 144) = v36;
      *(DerivedStorage + 117) = *(a9 + 136);
      *a10 = 0;
      return v16;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, a2, 0);
    v16 = v38;
    v17 = v41;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t FigAlternateCopy(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFTypeRef *a20)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    a3 = *DerivedStorage;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  a2 = *(DerivedStorage + 480);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a4)
  {
    goto LABEL_4;
  }

LABEL_8:
  a4 = *(DerivedStorage + 40);
LABEL_4:
  v26 = a11;
  if (a7)
  {
    v27 = a8;
  }

  else
  {
    a7 = *(DerivedStorage + 80);
    v27 = *(DerivedStorage + 112);
  }

  v28 = a13;
  if (a11)
  {
    v29 = a12;
  }

  else
  {
    v26 = *(DerivedStorage + 104);
    v29 = *(DerivedStorage + 115);
  }

  if (!a13)
  {
    v28 = *(DerivedStorage + 152);
  }

  v31 = a16;
  if (!a15)
  {
    a14 = *(DerivedStorage + 28);
  }

  v32 = a17;
  if (!a16)
  {
    v31 = *(DerivedStorage + 176);
  }

  v33 = a18;
  if (!a17)
  {
    v32 = *(DerivedStorage + 184);
  }

  v34 = a19;
  if (!a18)
  {
    v33 = *(DerivedStorage + 192);
  }

  if (!a19)
  {
    v34 = *(DerivedStorage + 200);
  }

  v35 = *(DerivedStorage + 48);
  v36 = *(DerivedStorage + 72);
  v47[0] = a4;
  v47[1] = v35;
  v37 = *(DerivedStorage + 88);
  v38 = *(DerivedStorage + 96);
  v49 = v36;
  v50 = v37;
  v51 = *(DerivedStorage + 113);
  v52 = a7;
  v53 = v27;
  v56 = HIBYTE(a8);
  v55 = HIDWORD(a8) >> 8;
  v54 = a8 >> 8;
  v57 = v38;
  v58 = *(DerivedStorage + 114);
  v59 = v26;
  v60 = v29;
  v63 = HIBYTE(a12);
  v62 = HIDWORD(a12) >> 8;
  v39 = *(DerivedStorage + 120);
  v61 = a12 >> 8;
  v64 = v39;
  v40 = *(DerivedStorage + 144);
  v66 = *(DerivedStorage + 136);
  v67 = v40;
  v68 = *(DerivedStorage + 117);
  v70 = v28;
  v72 = v31;
  v73 = v32;
  v74 = v33;
  v75 = v34;
  v41 = *MEMORY[0x1E695E480];
  v76 = *(DerivedStorage + 116);
  v42 = *(DerivedStorage + 8);
  v43 = *(DerivedStorage + 16);
  memset(v69, 0, sizeof(v69));
  v71 = *(DerivedStorage + 160);
  memset(v77, 0, sizeof(v77));
  v44 = *(DerivedStorage + 24);
  v48 = *(DerivedStorage + 56);
  v45 = *(DerivedStorage + 32);
  v65 = *(DerivedStorage + 128);
  return FigAlternateCreate(v41, a2, a3, v42, v43, v44, a14, v45, v47, a20);
}

uint64_t FigAlternatesCarryRankingScore(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(a1, v4);
    if (!result)
    {
      break;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 64) == -1.0)
    {
      return 0;
    }

    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t fa_CodecStringFindCodecAndProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"%@.%02d", a2, a3);
  v6 = FigCFStringFind();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t figAlternateEqual(uint64_t a1, uint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    if (*(CMBaseObjectGetDerivedStorage() + 120) && *(CMBaseObjectGetDerivedStorage() + 120))
    {
      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      result = FigCFEqual();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v5 = *(CMBaseObjectGetDerivedStorage() + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = FigCFHTTPCompareURLs(v5, *(DerivedStorage + 40));
      if (!result)
      {
        return result;
      }
    }

    v7 = *(CMBaseObjectGetDerivedStorage() + 8);
    if (v7 != *(CMBaseObjectGetDerivedStorage() + 8))
    {
      return 0;
    }

    v8 = *(CMBaseObjectGetDerivedStorage() + 48);
    if (v8 != *(CMBaseObjectGetDerivedStorage() + 48))
    {
      return 0;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v11 = *(v9 + 160);
    v10 = *(v9 + 168);
    v12 = CMBaseObjectGetDerivedStorage();
    result = 0;
    if (v11 != *(v12 + 160) || v10 != *(v12 + 168))
    {
      return result;
    }

    v13 = *(CMBaseObjectGetDerivedStorage() + 64);
    if (v13 != *(CMBaseObjectGetDerivedStorage() + 64))
    {
      return 0;
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 24);
    if (v14 != *(CMBaseObjectGetDerivedStorage() + 24))
    {
      return 0;
    }

    v15 = *(CMBaseObjectGetDerivedStorage() + 136);
    if (v15 != *(CMBaseObjectGetDerivedStorage() + 136))
    {
      return 0;
    }

    v16 = *(CMBaseObjectGetDerivedStorage() + 116);
    if (v16 != *(CMBaseObjectGetDerivedStorage() + 116))
    {
      return 0;
    }

    v17 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v17 != *(CMBaseObjectGetDerivedStorage() + 112))
    {
      return 0;
    }

    v18 = *(CMBaseObjectGetDerivedStorage() + 113);
    if (v18 != *(CMBaseObjectGetDerivedStorage() + 113))
    {
      return 0;
    }

    v19 = *(CMBaseObjectGetDerivedStorage() + 114);
    if (v19 != *(CMBaseObjectGetDerivedStorage() + 114))
    {
      return 0;
    }

    v20 = *(CMBaseObjectGetDerivedStorage() + 115);
    if (v20 != *(CMBaseObjectGetDerivedStorage() + 115))
    {
      return 0;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    v21 = *(CMBaseObjectGetDerivedStorage() + 56);
    if (v21 != *(CMBaseObjectGetDerivedStorage() + 56))
    {
      return 0;
    }

    VideoRange = FigAlternateGetVideoRange(a1);
    if (VideoRange != FigAlternateGetVideoRange(a2))
    {
      return 0;
    }

    v23 = *(CMBaseObjectGetDerivedStorage() + 128);
    if (v23 != *(CMBaseObjectGetDerivedStorage() + 128))
    {
      return 0;
    }

    FigAlternateGetVideoLayoutTags(a1);
    FigAlternateGetVideoLayoutTags(a2);
    result = FigCFEqual();
    if (result)
    {
      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      result = FigCFEqual();
      if (result)
      {
        CMBaseObjectGetDerivedStorage();
        CMBaseObjectGetDerivedStorage();
        result = FigCFEqual();
        if (result)
        {
          CMBaseObjectGetDerivedStorage();
          CMBaseObjectGetDerivedStorage();
          result = FigCFEqual();
          if (result)
          {
            CMBaseObjectGetDerivedStorage();
            CMBaseObjectGetDerivedStorage();
            return FigCFEqual() != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t figAlternateFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 72) = 0;
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 88) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 120);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 120) = 0;
  }

  v10 = *(DerivedStorage + 152);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 152) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 184);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 184) = 0;
  }

  v13 = *(DerivedStorage + 192);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 192) = 0;
  }

  v14 = *(DerivedStorage + 200);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 200) = 0;
  }

  v15 = *(DerivedStorage + 240);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 240) = 0;
  }

  v16 = *(DerivedStorage + 248);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 248) = 0;
  }

  v17 = *(DerivedStorage + 472);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 472) = 0;
  }

  v18 = *(DerivedStorage + 392);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 392) = 0;
  }

  v19 = *(DerivedStorage + 408);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 408) = 0;
  }

  v20 = *(DerivedStorage + 480);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 480) = 0;
  }

  v21 = *(DerivedStorage + 144);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 144) = 0;
  }

  v22 = *(DerivedStorage + 440);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 440) = 0;
  }

  v23 = *(DerivedStorage + 456);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 456) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t fa_ensureSerializationContextAndCopyMediaGroupForCache(CFMutableDictionaryRef *a1, void *key, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    Mutable = *a1;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a1 = Mutable;
      if (!Mutable)
      {
        fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_2(&v12);
        return v12;
      }
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {
      v8 = Value;
      CFRetain(Value);
    }

    else
    {
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_1(&v11);
        return v11;
      }

      v8 = v9;
      CFDictionarySetValue(*a1, key, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void OUTLINED_FUNCTION_6_26(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a12)
{
  a10 = 0uLL;
  a12 = 0;

  fa_getDeclaredAudioInfo(a1, a2, &a10);
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2)
{

  return FigCFStringFind();
}

void OUTLINED_FUNCTION_10_15(const __CFDictionary *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, void *a6)
{

  fa_serializeMediaGroupLocatorMapToXPCDict(a1, v7, v6, a4, a5, a6);
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetClassID_sGlobalRoutingRegistryOnce != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetClassID_cold_1();
  }

  return sGlobalRoutingRegistryClassID;
}

uint64_t __FigBufferedAirPlayGlobalRoutingRegistryGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetClassID_sGlobalRoutingRegistryOnce != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_onceToken != -1)
  {
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_cold_1();
  }

  return FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_sGlobalRoutingRegistry;
}

uint64_t __FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  IsMediaplaybackd = FigServer_IsMediaplaybackd();
  if (IsMediaplaybackd)
  {
    result = FigBufferedAirPlayGlobalRoutingRegistryRemoteGetShared();
  }

  else
  {
    result = FigBufferedAirPlayGlobalRoutingRegistryLocalGetShared(IsMediaplaybackd, v7);
  }

  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance_sGlobalRoutingRegistry = result;
  return result;
}

uint64_t figVTTSerializer_RegisterFigVTTSerializerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTSerializerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTSerializerGetClassID_sRegisterFigVTTSerializerBaseTypeOnce, figVTTSerializer_RegisterFigVTTSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTSerializerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTSerializerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTSerializerInvalidate(uint64_t a1)
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

uint64_t FigVTTSerializerAddText(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTSerializerFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t bossSetCursorServiceInTrackList(const __CFArray *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v8 = ValueAtIndex;
    if (a2)
    {
      v9 = ValueAtIndex + 48;
      if (*(a2 + 8 * v6))
      {
        FigCFDictionaryGetBooleanIfPresent();
      }
    }

    else
    {
      v9 = ValueAtIndex + 48;
    }

    v10 = *(v8 + 4);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v11)
    {
      break;
    }

    result = v11(v10, v9);
    if (result)
    {
      return result;
    }

    v8[420] = 0;
    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return 4294954514;
}

void *bossElectNewTimebaseStarter(void *result)
{
  if ((result[12] & 0x8000000000000000) != 0)
  {
    v1 = result;
    v2 = *MEMORY[0x1E695E4D0];
    v3 = 1;
    do
    {
      while (1)
      {
        v4 = v3;
        if (v1[10] >= 1)
        {
          break;
        }

        v3 = 0;
        if ((v4 & 1) == 0)
        {
          return result;
        }
      }

      v5 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(v1[9], v5);
        if ((v4 & 1) == 0 || *(result + 18) == 1936684398)
        {
          VTable = CMBaseObjectGetVTable();
          v7 = *(VTable + 16);
          result = (VTable + 16);
          if (*(v7 + 8))
          {
            FigRenderPipelineGetFigBaseObject();
            v9 = v8;
            v10 = CMBaseObjectGetVTable();
            v11 = *(v10 + 8);
            result = (v10 + 8);
            v12 = *(v11 + 56);
            if (v12)
            {
              result = v12(v9, @"IsTimebaseStarter", v2);
              if (!result)
              {
                break;
              }
            }
          }
        }

        if (++v5 >= v1[10])
        {
          v13 = v1[12] >> 63;
          goto LABEL_12;
        }
      }

      LODWORD(v13) = 0;
      v1[12] = v5;
LABEL_12:
      v3 = 0;
    }

    while ((v13 & v4 & 1) != 0);
  }

  return result;
}

void bossElectNewPreferredClock(uint64_t a1)
{
  newSourceClock = 0;
  if (*(a1 + 88) <= -2)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = 1;
    while (1)
    {
      v4 = v3;
      if (*(a1 + 80) >= 1)
      {
        v5 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v5);
          if ((v4 & 1) == 0 || ValueAtIndex[18] == 1936684398)
          {
            FigRenderPipelineGetFigBaseObject();
            v8 = v7;
            v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v9)
            {
              v10 = v9(v8, @"PreferredClock", v2, &newSourceClock);
              v11 = newSourceClock;
              if (!v10 && newSourceClock != 0)
              {
                *(a1 + 88) = v5;
                goto LABEL_17;
              }
            }
          }

          ++v5;
        }

        while (v5 < *(a1 + 80));
        v11 = newSourceClock;
        if (newSourceClock)
        {
          break;
        }
      }

      v3 = 0;
      if ((v4 & 1) == 0)
      {
        newSourceClock = CMClockGetHostTimeClock();
        CFRetain(newSourceClock);
        *(a1 + 88) = -2;
        v11 = newSourceClock;
        break;
      }
    }

LABEL_17:
    CMTimebaseSetSourceClock(*(a1 + 120), v11);
    CFRelease(newSourceClock);
  }
}

uint64_t bossGetVideoDecoderMaxSpeedThreshold(uint64_t a1, float *a2)
{
  if (*(a1 + 80) < 1)
  {
    return 0;
  }

  v15 = v5;
  v16 = v4;
  v17 = v2;
  v18 = v3;
  v8 = 0;
  v9 = 0;
  v10 = 3.4028e38;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
    v14 = 3.4028e38;
    if (*(ValueAtIndex + 18) == 1986618469 && !FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader(*(ValueAtIndex + 4), &v14))
    {
      if (v10 >= v14)
      {
        v12 = v14;
      }

      else
      {
        v12 = v10;
      }

      if (v9)
      {
        v10 = v12;
      }

      else
      {
        v10 = v14;
      }

      v9 = 1;
    }

    ++v8;
  }

  while (v8 < *(a1 + 80));
  result = 0;
  if (v9)
  {
    if (v10 > 2.0)
    {
      *a2 = v10;
      return 1;
    }
  }

  return result;
}

uint64_t bossSetExpectScaledEdits(const __CFArray *a1, char *a2, char *a3)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v34 = *MEMORY[0x1E695E480];
    v9 = *MEMORY[0x1E695E4D0];
    v10 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      result = CFArrayGetValueAtIndex(a1, v6);
      if (*(result + 72) == 1936684398)
      {
        break;
      }

LABEL_38:
      if (++v6 == v5)
      {
        goto LABEL_42;
      }
    }

    v42 = 0;
    v43[0] = 0;
    v41 = 0;
    FigTrackReaderGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13 && (v13(v12, @"SecondaryEditCursorService", v34, v43), (v14 = v43[0]) != 0) && (*&start.start.value = *MEMORY[0x1E6960C80], start.start.epoch = *(MEMORY[0x1E6960C80] + 16), duration = **&MEMORY[0x1E6960C88], CMTimeRangeMake(&v36, &start.start, &duration), figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v14, &v36)))
    {
LABEL_7:
      v15 = 0;
    }

    else
    {
      FigTrackReaderGetFigBaseObject();
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, @"EditCursorService", v34, &v42);
        v19 = v42;
        if (v42)
        {
          v20 = v43[0];
          if (!v43[0])
          {
            *&start.start.value = *MEMORY[0x1E6960C80];
            start.start.epoch = *(MEMORY[0x1E6960C80] + 16);
            duration = **&MEMORY[0x1E6960C88];
            CMTimeRangeMake(&v36, &start.start, &duration);
            v15 = figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v19, &v36) == 0;
            goto LABEL_24;
          }

          v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v21)
          {
            *&v36.start.value = *MEMORY[0x1E6960C80];
            v36.start.epoch = *(MEMORY[0x1E6960C80] + 16);
            if (!v21(v20, &v36, &v41))
            {
              while (1)
              {
                v38 = 0u;
                v39 = 0u;
                v37 = 0u;
                memset(&v36, 0, sizeof(v36));
                v22 = v41;
                v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (!v23 || v23(v22, &v36))
                {
                  break;
                }

                if ((v36.start.flags & 1) != 0 && (v36.duration.flags & 1) != 0 && !v36.duration.epoch && (v36.duration.value & 0x8000000000000000) == 0)
                {
                  start = v36;
                  if (figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(v42, &start))
                  {
                    goto LABEL_7;
                  }
                }

                v24 = v41;
                v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v25)
                {
                  break;
                }

                v15 = 1;
                if (v25(v24, 1))
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      v15 = 1;
    }

LABEL_24:
    if (v43[0])
    {
      CFRelease(v43[0]);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (v15)
    {
      v26 = v10;
    }

    else
    {
      v26 = v9;
    }

    FigRenderPipelineGetFigBaseObject();
    v28 = v27;
    VTable = CMBaseObjectGetVTable();
    v30 = *(VTable + 8);
    result = VTable + 8;
    v31 = *(v30 + 56);
    if (v31)
    {
      result = v31(v28, @"ExpectScaledEdits", v26);
    }

    if (!v15)
    {
      v8 = 1;
    }

    v7 = 1;
    goto LABEL_38;
  }

  v8 = 0;
  v7 = 0;
LABEL_42:
  if (a2)
  {
    *a2 = v7;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t bosstrackListDoesContainVideoTrack(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (*(CFArrayGetValueAtIndex(a1, v4) + 18) != 1986618469)
  {
    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FigPlaybackBossRemoveAndAddTracks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFIndex a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v8 = a8;
  v13 = a2;
  v99 = *MEMORY[0x1E69E9840];
  v96 = 0;
  memset(&v95, 0, sizeof(v95));
  if (dword_1EAF16E78)
  {
    LODWORD(v94.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = a2;
    v8 = a8;
  }

  if (!a1)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_12(&v98);
    return LODWORD(v98.value);
  }

  if (!(a5 | v13))
  {
    value_low = 0;
    goto LABEL_139;
  }

  if (v13 < 0)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_11(&v98);
LABEL_138:
    value_low = LODWORD(v98.value);
LABEL_139:
    *(a1 + 148) = 1;
    return value_low;
  }

  if (a5 < 0)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_10(&v98);
    goto LABEL_138;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_2(&v98);
    goto LABEL_138;
  }

  if (!a4)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_1(&v98);
    goto LABEL_138;
  }

LABEL_10:
  v89 = a5;
  if (!a5)
  {
    v84 = 0;
    theArray = 0;
    if (!v13)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  if (!a6)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_9(&v98);
    goto LABEL_138;
  }

  if (!a7)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_8(&v98);
    goto LABEL_138;
  }

  v16 = 0;
  do
  {
    v17 = *(a7 + 8 * v16);
    if (!v17 || (v18 = CFGetTypeID(v17), v18 != FigRenderPipelineGetTypeID()))
    {
      FigPlaybackBossRemoveAndAddTracks_cold_7(&v98);
      goto LABEL_138;
    }

    ++v16;
  }

  while (a5 != v16);
  if (v8)
  {
    v19 = a8;
    while (1)
    {
      if (*v19)
      {
        v20 = CFGetTypeID(*v19);
        if (v20 != CFDictionaryGetTypeID())
        {
          break;
        }
      }

      ++v19;
      if (!--a5)
      {
        goto LABEL_22;
      }
    }

    FigPlaybackBossRemoveAndAddTracks_cold_3(&v98);
    goto LABEL_138;
  }

LABEL_22:
  v21 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    FigPlaybackBossRemoveAndAddTracks_cold_6(&v98);
    goto LABEL_138;
  }

  v22 = 0;
  v83 = *MEMORY[0x1E695E4D0];
  do
  {
    v98.value = 0;
    if (FigPlaybackBossTrackGetTypeID_oneTimeOnly != -1)
    {
      FigPlaybackBossCreate_cold_2();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      v82 = 3732;
LABEL_143:
      FigPlaybackBossCreate_cold_3(v82, &v97);
      value_low = LODWORD(v97.value);
      goto LABEL_39;
    }

    v24 = Instance;
    CFArrayAppendValue(theArray, Instance);
    CFRelease(v24);
    v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v24 + 2) = v25;
    if (!v25)
    {
      v82 = 3737;
      goto LABEL_143;
    }

    v26 = *(a6 + 4 * v22);
    *(v24 + 6) = v26;
    v27 = *(a1 + 40);
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v28)
    {
      value_low = 4294954514;
LABEL_39:
      v35 = theArray;
      v36 = 0;
      v37 = 0;
      goto LABEL_129;
    }

    v29 = v28(v27, v26, v24 + 32, v24 + 72);
    if (v29)
    {
      value_low = v29;
      goto LABEL_39;
    }

    v30 = *(a7 + 8 * v22);
    if (v30)
    {
      v30 = CFRetain(v30);
    }

    *(v24 + 10) = v30;
    FigRenderPipelineGetFigBaseObject();
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v33 && !v33(v32, @"NeedsToFlushWhenRateChanges", v21, &v98) && v98.value == v83)
    {
      v24[88] = 1;
    }

    v24[89] = 1;
    ++v22;
  }

  while (v89 != v22);
  v38 = a8;
  v39 = bossSetCursorServiceInTrackList(theArray, a8);
  if (v39)
  {
    value_low = v39;
    v36 = 0;
    v37 = 0;
    v35 = theArray;
    goto LABEL_129;
  }

  v84 = CFNumberCreate(v21, kCFNumberFloat32Type, (a1 + 444));
  v40 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v40);
    v42 = ValueAtIndex;
    if (v38)
    {
      v38 = *(v38 + v40);
    }

    if (ValueAtIndex[18] == 1936684398)
    {
      FigRenderPipelineGetFigBaseObject();
      v44 = v43;
      v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v45)
      {
        v45(v44, @"PipelineRate", v84);
      }
    }

    v46 = *(a1 + 120);
    FigRenderPipelineGetFigBaseObject();
    v48 = v47;
    v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v49)
    {
      v49(v48, @"Timebase", v46);
    }

    v50 = *(v42 + 80);
    v51 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v51)
    {
      v51(v50);
    }

    v52 = bossBuildMentorForTrack(a1, v42, v21, v38);
    if (v52 || (*(v42 + 232) = 1000 * FigAtomicIncrement32(), v52 = bossAddNotificationListenersForTrack(a1, v42), v52) || (v53 = *(v42 + 112)) != 0 && (FigMediaProcessorGo(v53), v52))
    {
      value_low = v52;
      v37 = 0;
      v35 = theArray;
      v36 = v84;
      goto LABEL_129;
    }

    ++v40;
    v38 = a8;
  }

  while (v89 != v40);
  bossSetExpectScaledEdits(theArray, &v96 + 1, &v96);
  a5 = v89;
  v13 = a2;
  if (a2)
  {
LABEL_41:
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    goto LABEL_60;
  }

LABEL_59:
  Mutable = 0;
LABEL_60:
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(v94.value) = 0;
    LOBYTE(type.value) = 0;
    v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = a2;
  }

  if (v13)
  {
    v55 = 0;
    v87 = 0;
    while (*(a1 + 80) < 1)
    {
LABEL_69:
      LODWORD(v94.value) = 0;
      LOBYTE(type.value) = 0;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v61 = a2;
LABEL_87:
      if (++v55 == v61)
      {
        v69 = v87 == 0;
        goto LABEL_90;
      }
    }

    v56 = 0;
    while (1)
    {
      v57 = CFArrayGetValueAtIndex(*(a1 + 72), v56);
      if (v57[6] == *(a3 + 4 * v55))
      {
        v58 = v57;
        v59 = *(v57 + 10);
        if (v59 == *(a4 + 8 * v55))
        {
          break;
        }
      }

      if (++v56 >= *(a1 + 80))
      {
        goto LABEL_69;
      }
    }

    if (*(a1 + 96) == v56)
    {
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v62 || v62(v59))
      {
        LODWORD(v94.value) = 0;
        LOBYTE(type.value) = 0;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a5 = v89;
      }
    }

    CFArrayAppendValue(Mutable, v58);
    v64 = v87;
    if (v58[18] == 1936684398)
    {
      v64 = 1;
    }

    v87 = v64;
    v65 = *(a1 + 96);
    if (v65 == v56)
    {
      v66 = -1;
      v61 = a2;
      goto LABEL_80;
    }

    v61 = a2;
    if (v65 > v56)
    {
      v66 = v65 - 1;
LABEL_80:
      *(a1 + 96) = v66;
    }

    v67 = *(a1 + 88);
    if (v67 == v56)
    {
      v68 = -2;
      goto LABEL_85;
    }

    if (v67 > v56)
    {
      v68 = v67 - 1;
LABEL_85:
      *(a1 + 88) = v68;
    }

    CFArrayRemoveValueAtIndex(*(a1 + 72), v56);
    --*(a1 + 80);
    goto LABEL_87;
  }

  v69 = 1;
LABEL_90:
  v70 = *(a1 + 80);
  v35 = theArray;
  v100.location = 0;
  v100.length = a5;
  CFArrayAppendArray(*(a1 + 72), theArray, v100);
  *(a1 + 80) += a5;
  bossApplyThrottleForBackground(a1);
  if (*(a1 + 80) < 1)
  {
LABEL_94:
    v72 = 0;
  }

  else
  {
    v71 = 0;
    while (!*(CFArrayGetValueAtIndex(*(a1 + 72), v71) + 88))
    {
      if (*(a1 + 80) <= ++v71)
      {
        goto LABEL_94;
      }
    }

    v72 = 1;
  }

  *(a1 + 108) = v72;
  *(a1 + 106) = bosstrackListDoesContainVideoTrack(*(a1 + 72));
  if (HIBYTE(v96))
  {
    v73 = v96 == 0;
  }

  else
  {
    v73 = 1;
  }

  if (v73)
  {
    if (!v69)
    {
      bossSetExpectScaledEdits(*(a1 + 72), (a1 + 104), (a1 + 105));
    }
  }

  else
  {
    *(a1 + 104) = 257;
  }

  bossElectNewTimebaseStarter(a1);
  bossElectNewPreferredClock(a1);
  value_low = 0;
  v74 = *(a1 + 432);
  if (v74 <= 1886530415)
  {
    if (v74 > 1886151032)
    {
      v36 = v84;
      v37 = Mutable;
      if (v74 != 1886151033)
      {
        if (v74 == 1886154860)
        {
          bossSwitchMentorsToSideQueues(a1, v70, a5);
        }

        else if (v74 != 1886155888)
        {
          goto LABEL_128;
        }
      }

      memset(&v98, 0, sizeof(v98));
      CMTimebaseGetTime(&v98, *(a1 + 120));
      memset(&v97, 0, sizeof(v97));
      if (v98.timescale <= 1000)
      {
        timescale = 1000;
      }

      else
      {
        timescale = v98.timescale;
      }

      CMTimeMakeWithSeconds(&v97, *(a1 + 440) * 0.1, timescale);
      type = v98;
      rhs = v97;
      CMTimeAdd(&v94, &type, &rhs);
      v98 = v94;
      bossBroadcastPrerollRateToRenderPipelines(a1, v70, a5, *(a1 + 440));
      v94 = v98;
      v76 = bossSetMentorModesForTimeAndRate(a1, v70, a5, &v94, *(a1 + 440), *(a1 + 448), 2, 0, 1u);
LABEL_127:
      value_low = v76;
      goto LABEL_128;
    }

    if (v74 == 1768189029)
    {
      goto LABEL_121;
    }

    v36 = v84;
    v37 = Mutable;
    if (v74 != 1885435251)
    {
      goto LABEL_128;
    }

LABEL_120:
    FigPlaybackBossGetTime(a1, &v95);
    v98 = v95;
    v76 = bossSetMentorModesToScrub(a1, v70, a5, &v98, 0, 0);
    goto LABEL_127;
  }

  if (v74 > 1919247480)
  {
    if (v74 == 2003853684 || v74 == 1920298606)
    {
      goto LABEL_121;
    }

    v75 = 1919247481;
LABEL_116:
    v36 = v84;
    v37 = Mutable;
    if (v74 != v75)
    {
LABEL_128:
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      goto LABEL_129;
    }

    *(a1 + 432) = 1885435251;
    goto LABEL_120;
  }

  if (v74 != 1886530416)
  {
    if (v74 != 1886544244)
    {
      v75 = 1886545266;
      goto LABEL_116;
    }

LABEL_121:
    LODWORD(v94.value) = 0;
    LOBYTE(type.value) = 0;
    v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
    v36 = v84;
    v37 = Mutable;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    value_low = 0;
    goto LABEL_128;
  }

  FigSimpleMutexUnlock();
  v80 = *(a1 + 432);
  v81 = *(a1 + 424);
  v98 = **&MEMORY[0x1E6960C70];
  value_low = figPlaybackBossStartPrerollAndSetPlayState(a1, &v98, *(a1 + 440), *(a1 + 448), 3u, v80, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v81);
  FigSimpleMutexUnlock();
  v36 = v84;
  v37 = Mutable;
LABEL_129:
  *(a1 + 148) = 1;
  if (v35)
  {
    CFRelease(v35);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return value_low;
}

uint64_t bossApplyThrottleForBackground(uint64_t result)
{
  if (*(result + 80) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = *MEMORY[0x1E695E4D0];
    v4 = *MEMORY[0x1E695E4C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 72), v2);
      if (ValueAtIndex[10])
      {
        v6 = *(v1 + 135) ? v3 : v4;
        FigRenderPipelineGetFigBaseObject();
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v9)
        {
          v9(v8, @"ThrottleForBackground", v6);
        }
      }

      v10 = ValueAtIndex[18];
      if (v10)
      {
        VideoMentorSetThrottleForBackground(v10, *(v1 + 135));
      }

      result = ValueAtIndex[16];
      if (result)
      {
        result = AudioMentorSetThrottleForBackground(result, *(v1 + 135));
      }

      ++v2;
    }

    while (*(v1 + 80) > v2);
  }

  return result;
}

void bossBroadcastPrerollRateToRenderPipelines(uint64_t a1, CFIndex a2, uint64_t a3, float a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (a2 < FigCFRangeGetLimit())
  {
    v7 = a2;
    do
    {
      if (*(CFArrayGetValueAtIndex(*(a1 + 72), v7) + 10))
      {
        FigRenderPipelineGetFigBaseObject();
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v10)
        {
          v10(v9, @"PrerollRate", v6);
        }
      }

      ++v7;
    }

    while (v7 < FigCFRangeGetLimit());
  }

  CFRelease(v6);
}

uint64_t FigPlaybackBossSetTrackList(uint64_t a1, uint64_t a2, int *a3, void *a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  v11 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  v12 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v13 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  v14 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v15 = malloc_type_calloc(v10, 8uLL, 0x6004044C4A2DFuLL);
  v16 = v15;
  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v13 == 0 || v14 == 0 || v15 == 0)
  {
    FigPlaybackBossSetTrackList_cold_1((a1 + 64), v44);
    v38 = v44[0];
  }

  else
  {
    if (*(a1 + 80) < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v22);
        v24 = ValueAtIndex[6];
        if (a2 < 1)
        {
LABEL_28:
          v11[v21] = v24;
          v12[v21++] = *(ValueAtIndex + 10);
        }

        else
        {
          v25 = a3;
          v26 = a4;
          v27 = a2;
          while (1)
          {
            v28 = *v25++;
            if (v24 == v28 && *(ValueAtIndex + 10) == *v26)
            {
              break;
            }

            ++v26;
            if (!--v27)
            {
              goto LABEL_28;
            }
          }
        }

        ++v22;
      }

      while (v22 < *(a1 + 80));
    }

    v40 = v11;
    if (a2 < 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v41 = v21;
      do
      {
        if (*(a1 + 80) <= 0)
        {
          v37 = a3[v30];
LABEL_41:
          v13[v29] = v37;
          v16[v29] = *(a5 + 8 * v30);
          v14[v29++] = a4[v30];
        }

        else
        {
          v31 = a2;
          v32 = v14;
          v33 = v13;
          v34 = v12;
          v35 = 0;
          while (1)
          {
            v36 = CFArrayGetValueAtIndex(*(a1 + 72), v35);
            v37 = a3[v30];
            if (v36[6] == v37 && *(v36 + 10) == a4[v30])
            {
              break;
            }

            if (++v35 >= *(a1 + 80))
            {
              v12 = v34;
              v13 = v33;
              v14 = v32;
              a2 = v31;
              v21 = v41;
              goto LABEL_41;
            }
          }

          v12 = v34;
          v13 = v33;
          v14 = v32;
          a2 = v31;
          v21 = v41;
        }

        ++v30;
      }

      while (v30 != a2);
    }

    FigSimpleMutexUnlock();
    v11 = v40;
    v38 = FigPlaybackBossRemoveAndAddTracks(a1, v21, v40, v12, v29, v13, v14, v16);
  }

  free(v11);
  free(v12);
  free(v13);
  free(v14);
  free(v16);
  return v38;
}

void figPlaybackBossPrerollCompleted(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  values = 0;
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    return;
  }

  FigSimpleMutexLock();
  v6 = FigCFEqual();
  if (v6)
  {
    values = *(a1 + 504);
    *(a1 + 504) = 0;
  }

  FigSimpleMutexUnlock();
  if (!a2 && v6)
  {
    v7 = values ? CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]) : 0;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  FigSimpleMutexLock();
  v8 = FigCFEqual();
  if (!a2 && !v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_73;
  }

  v12 = 0;
  v13 = *(a1 + 432);
  v11 = 1;
  if (v13 <= 1886155887)
  {
    if (v13 <= 1885435250)
    {
      if (v13 == 1634624887)
      {
        if (a2 == 2)
        {
          v19 = 1885435251;
        }

        else
        {
          v19 = 1919247481;
        }

        goto LABEL_52;
      }

      if (v13 == 1684365668)
      {
        goto LABEL_53;
      }

      v14 = 1768189029;
LABEL_41:
      if (v13 != v14)
      {
        goto LABEL_65;
      }

      goto LABEL_53;
    }

    if (v13 == 1885435251)
    {
      goto LABEL_43;
    }

    if (v13 == 1886151033)
    {
      goto LABEL_53;
    }

    if (v13 != 1886154860)
    {
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  if (v13 <= 1886545265)
  {
    if (v13 == 1886155888)
    {
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = 0;
      v24 = 1886151033;
LABEL_63:
      *(a1 + 432) = v24;
      goto LABEL_64;
    }

    if (v13 != 1886530416)
    {
      if (v13 != 1886544244)
      {
        goto LABEL_65;
      }

      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = 0;
      v24 = 2003853684;
      goto LABEL_63;
    }

LABEL_36:
    v16 = *(a1 + 440);
    v17 = *(a1 + 444);
    time = *(a1 + 800);
    lhs = *(a1 + 824);
    if (bossStartTimebaseAndAudioContext(a1, &time.value, &lhs.value, v16, v17))
    {
      *(a1 + 432) = 1885435251;
      v12 = dword_1EAF16E78;
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_65;
    }

    *(a1 + 432) = 1886151033;
    ++*(a1 + 720);
    ++*(a1 + 728);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    *(a1 + 664) = time;
    v22 = *(a1 + 120);
    if (v22)
    {
      CMTimebaseGetTime(&time, v22);
      *(a1 + 696) = time;
    }

    v12 = dword_1EAF16E78;
    if (!dword_1EAF16E78)
    {
LABEL_65:
      if (a2 == 1)
      {
        *(a1 + 432) = 1684365668;
      }

      if (v12)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = 0;
LABEL_64:
    v11 = 1;
    goto LABEL_65;
  }

  if (v13 > 1920298605)
  {
    if (v13 == 1920298606)
    {
      goto LABEL_53;
    }

    v14 = 2003853684;
    goto LABEL_41;
  }

  if (v13 == 1886545266)
  {
    if (a2 == 2)
    {
      *(a1 + 432) = 1885435251;
LABEL_68:
      ++*(a1 + 652);
      if (*(a1 + 636))
      {
        v25 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v25);
        rhs = *(a1 + 624);
        CMTimeSubtract(&time, &lhs, &rhs);
        *(a1 + 616) = fabs(CMTimeGetSeconds(&time)) + *(a1 + 616);
        v26 = MEMORY[0x1E6960C70];
        *(a1 + 624) = *MEMORY[0x1E6960C70];
        *(a1 + 640) = *(v26 + 16);
      }

      goto LABEL_70;
    }

    v12 = 0;
    *(a1 + 432) = 1919247481;
    goto LABEL_65;
  }

  if (v13 != 1919247481)
  {
    goto LABEL_65;
  }

LABEL_43:
  if (a2)
  {
    v19 = 1885435251;
LABEL_52:
    *(a1 + 432) = v19;
LABEL_53:
    v12 = 1;
    goto LABEL_65;
  }

LABEL_70:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v10 = *(a1 + 784);
  v27 = *(a1 + 788);
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  v9 = v27 != 0;
LABEL_73:
  FigSimpleMutexUnlock();
  if (!v9 || !v10)
  {
    if (v11)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  figPlaybackBossPostSeekDidComplete(a1, v10, 0, v28, v29, v30, v31, v32);
  if ((v11 & 1) == 0)
  {
LABEL_76:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_77:
  figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(a1, 0);
  if (values)
  {
    CFRelease(values);
  }
}

void bossBumpCurrentMasterOrder(uint64_t a1)
{
  v2 = *(a1 + 544);
  ++*(a1 + 552);
  *(a1 + 544) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 552));
  *(a1 + 556) = 0;
  v3 = *(a1 + 560);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 560) = 0;
  }

  *(a1 + 568) = 0;
  v4 = *(a1 + 576);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 576) = 0;
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t bossRemoveVideoCompositionProcessorNotificationListenersForPrerollForBoss(uint64_t result)
{
  if (*(result + 789))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 789) = 0;
  }

  return result;
}

uint64_t bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(uint64_t result)
{
  if (*(result + 790))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 790) = 0;
  }

  return result;
}

uint64_t FigPlaybackBossSetSeekingWaitsForVideoCompositionRendering(uint64_t a1, int a2)
{
  if (*(a1 + 476) && *(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  *(a1 + 476) = a2;
  if (a2 && *(a1 + 600))
  {
    bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  return 0;
}

BOOL FigPlaybackBossCanChangeEndTimeTo(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 130) || *(a1 + 131) && *(a1 + 132))
  {
    v7 = 0uLL;
    v8 = 0;
    FigPlaybackBossGetDuration(a1, &v7);
    if ((*(a1 + 188) & 1) == 0 || (time1 = *(a1 + 176), *&v5.value = v7, v5.epoch = v8, (CMTimeCompare(&time1, &v5) & 0x80000000) == 0))
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        return 1;
      }

      time1 = *a2;
      *&v5.value = v7;
      v5.epoch = v8;
      if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 FigPlaybackBossGetEndTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[11];
  *a2 = result;
  a2[1].n128_u64[0] = a1[12].n128_u64[0];
  return result;
}

__n128 FigPlaybackBossGetReverseEndTime@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(a1 + 312);
  result = *(a1 + 296);
  *a2 = result;
  return result;
}

void FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16))
  {
    v10 = qword_1EAF16E70;
    v11 = v8;
    v12 = 4294954925;
    v13 = 4400;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< Boss >>>>", v13, v11);
    return;
  }

  if (*(a1 + 128))
  {
    v10 = qword_1EAF16E70;
    v11 = v8;
    v12 = 4294954924;
    v13 = 4403;
    goto LABEL_4;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    *a2 = **&MEMORY[0x1E6960C70];
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *&a2->value;
  *(a1 + 360) = a2->epoch;
  *(a1 + 344) = v16;
  if (*(a1 + 432) == 1886151033)
  {
    v17 = *(a1 + 120);
    if (v17)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v17);
    }

    else
    {
      EffectiveRate = 1.0;
    }

    bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, EffectiveRate, a2, a3, a4, a5, a6, a7, a8);
  }
}

void bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v14, 0, sizeof(v14));
  v10 = (a1 + 344);
  if ((*(a1 + 356) & 1) == 0)
  {
    goto LABEL_2;
  }

  CMTimebaseGetTime(&v14, *(a1 + 120));
  if (a2 > 0.0)
  {
    time1 = *v10;
    time2 = v14;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_2:
    time1 = *v10;
    bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, &time1.value, a4, a5, a6, a7, a8, a9);
    return;
  }

  time1 = *v10;
  time2 = v14;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    goto LABEL_2;
  }

  if (dword_1EAF16E78)
  {
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  time1 = *v10;
  bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, &time1.value, a4, a5, a6, a7, a8, a9);
  v13 = MEMORY[0x1E6960C70];
  *(a1 + 376) = *MEMORY[0x1E6960C70];
  *(a1 + 392) = *(v13 + 16);
  CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 368));
}

__n128 FigPlaybackBossGetAdvanceTimeForOverlappedPlayback@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(a1 + 360);
  result = *(a1 + 344);
  *a2 = result;
  return result;
}

void bossGetContentDuration(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  dictionaryRepresentation = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = MEMORY[0x1E695E480];
  if (*(a1 + 130) || (FigFormatReaderGetFigBaseObject(), v12 = v11, (v13 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (!v13(v12, @"EstimatedDuration", *v3, &dictionaryRepresentation) ? (v14 = dictionaryRepresentation == 0) : (v14 = 1), v14))
  {
    FigFormatReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      v8 = dictionaryRepresentation;
      goto LABEL_11;
    }

    v7 = v6(v5, @"Duration", *v3, &dictionaryRepresentation) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = dictionaryRepresentation;
  if (!v7 || dictionaryRepresentation == 0)
  {
LABEL_11:
    v10 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v10 + 16);
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  CMTimeMakeFromDictionary(a2, dictionaryRepresentation);
  v8 = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    return;
  }

LABEL_12:
  CFRelease(v8);
}

void FigPlaybackBossSetVolume(uint64_t a1, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) >= 1)
    {
      v6 = 0;
      do
      {
        if (*(CFArrayGetValueAtIndex(*(a1 + 72), v6) + 10))
        {
          FigRenderPipelineGetFigBaseObject();
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(v8, @"SoftwareVolume1", v3);
          }
        }

        ++v6;
      }

      while (*(a1 + 80) > v6);
    }

    FigSimpleMutexUnlock();
    CFRelease(v3);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }
}

float FigPlaybackBossGetVolume(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      if (*(CFArrayGetValueAtIndex(*(a1 + 72), v3) + 10))
      {
        cf[0] = 0;
        FigRenderPipelineGetFigBaseObject();
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v7(v6, @"SoftwareVolume1", v4, cf);
        }

        if (cf[0])
        {
          v8 = CFGetTypeID(cf[0]);
          if (v8 == CFNumberGetTypeID())
          {
            CFNumberGetValue(cf[0], kCFNumberFloatType, &valuePtr);
            CFRelease(cf[0]);
            break;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }
      }

      ++v3;
    }

    while (*(a1 + 80) > v3);
  }

  FigSimpleMutexUnlock();
  return valuePtr;
}

uint64_t FigPlaybackBossSetMuted(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v8 = *v7;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
      if (*(ValueAtIndex + 18) == 1936684398)
      {
        if (ValueAtIndex[10])
        {
          FigRenderPipelineGetFigBaseObject();
          v11 = v10;
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v12)
          {
            v12(v11, @"Muted", v8);
          }
        }
      }

      ++v6;
    }

    while (*(a1 + 80) > v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlaybackBossGetMuted(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3);
      if (ValueAtIndex[18] == 1936684398 && *(ValueAtIndex + 10))
      {
        cf[0] = 0;
        FigRenderPipelineGetFigBaseObject();
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(v7, @"Muted", v4, cf);
        }

        if (cf[0])
        {
          v9 = CFGetTypeID(cf[0]);
          if (v9 == CFBooleanGetTypeID())
          {
            Value = CFBooleanGetValue(cf[0]);
            CFRelease(cf[0]);
            goto LABEL_15;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }
      }

      ++v3;
    }

    while (*(a1 + 80) > v3);
  }

  Value = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t FigPlaybackBossSnapTimeToIFrameWithRange(uint64_t a1, OpaqueCMTimebase *a2, CMTime *a3, unsigned int a4, CMTime *a5, CMTime *a6, CMTime *a7)
{
  v7 = a7;
  v11 = a3;
  v12 = a1;
  v106 = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E6960C70];
  *&v98.value = v13;
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v98.epoch = v14;
  v97 = 0;
  v91 = v13;
  if (dword_1EAF16E78)
  {
    v16 = v14;
    LODWORD(v96.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a7;
    v11 = a3;
    v13 = v91;
    v14 = v16;
    v12 = a1;
  }

  if ((a5->flags & 0x1D) == 1)
  {
    *time = *&a5->value;
    *&time[16] = a5->epoch;
    time2 = *v11;
    v19 = CMTimeCompare(time, &time2);
    v13 = v91;
    if (v19 >= 1)
    {
      FigPlaybackBossSnapTimeToIFrameWithRange_cold_2(time);
      return *time;
    }
  }

  if ((a6->flags & 0x1D) == 1)
  {
    *time = *&v11->value;
    *&time[16] = v11->epoch;
    time2 = *a6;
    v20 = CMTimeCompare(time, &time2);
    v13 = v91;
    if (v20 >= 1)
    {
      FigPlaybackBossSnapTimeToIFrameWithRange_cold_1(time);
      return *time;
    }
  }

  v21 = v7;
  v22 = (a4 >> 8) & 1;
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (a4 != 1)
      {
        time2 = *v11;
        LOBYTE(v96.value) = 0;
        LOBYTE(type.value) = 0;
        v50 = *(MEMORY[0x1E6960C78] + 48);
        v102 = *(MEMORY[0x1E6960C78] + 32);
        v103 = v50;
        v51 = *(MEMORY[0x1E6960C78] + 80);
        v104 = *(MEMORY[0x1E6960C78] + 64);
        v105 = v51;
        v52 = *(MEMORY[0x1E6960C78] + 16);
        *time = *MEMORY[0x1E6960C78];
        *&time[16] = v52;
        if (!bossScanForEditSegmentContainingTrackTime(v12, &time2, &v96, &type, time, 0, 0, 0) && (!LOBYTE(v96.value) || LOBYTE(type.value) && (time[12] & 0x1D) == 1))
        {
          if (dword_1EAF16E78)
          {
            LODWORD(v96.value) = 0;
            LOBYTE(type.value) = 0;
            v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v96.value;
            value_low = LOBYTE(type.value);
            if (os_log_type_enabled(v53, type.value))
            {
              v56 = value;
            }

            else
            {
              v56 = value & 0xFFFFFFFE;
            }

            if (v56)
            {
              *time = *&v11->value;
              *&time[16] = v11->epoch;
              Seconds = CMTimeGetSeconds(time);
              LODWORD(time2.value) = 136315394;
              *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = Seconds;
              LODWORD(v87) = 22;
              _os_log_send_and_compose_impl(v56, 0, time, 128, &dword_1962D5000, v53, value_low, "<<<< Boss >>>> %s: DoNotSnap: %1.3f -> OK", &time2, v87);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          TimeOfNextIFrameInDirection = 0;
          v85 = *&v11->value;
          v21->epoch = v11->epoch;
          *&v21->value = v85;
          return TimeOfNextIFrameInDirection;
        }

        if (!dword_1EAF16E78)
        {
          return 0;
        }

        LODWORD(v96.value) = 0;
        LOBYTE(type.value) = 0;
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v63 = v96.value;
        v64 = LOBYTE(type.value);
        if (os_log_type_enabled(v62, type.value))
        {
          v65 = v63;
        }

        else
        {
          v65 = v63 & 0xFFFFFFFE;
        }

        if (v65)
        {
          *time = *&v11->value;
          *&time[16] = v11->epoch;
          v66 = CMTimeGetSeconds(time);
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v66;
          LODWORD(v87) = 22;
          _os_log_send_and_compose_impl(v65, 0, time, 128, &dword_1962D5000, v62, v64, "<<<< Boss >>>> %s: DoNotSnap: %1.3f -> empty edit", &time2, v87);
        }

        goto LABEL_165;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, -1, 0, (a4 >> 8) & 1, &v98, &v97, 0);
      if (v97)
      {
        v27 = v21;
        if (!dword_1EAF16E78)
        {
LABEL_76:
          v45 = *&v11->value;
          epoch = v11->epoch;
LABEL_101:
          v27->epoch = epoch;
          *&v27->value = v45;
          return TimeOfNextIFrameInDirection;
        }

LABEL_30:
        LODWORD(v96.value) = 0;
        LOBYTE(type.value) = 0;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = a3;
        goto LABEL_76;
      }

      if ((v98.flags & 1) == 0)
      {
        if (!dword_1EAF16E78)
        {
          return TimeOfNextIFrameInDirection;
        }

LABEL_57:
        LODWORD(v96.value) = 0;
        LOBYTE(type.value) = 0;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        goto LABEL_73;
      }

      v33 = v21;
      if ((a5->flags & 0x1D) == 1)
      {
        *time = v98;
        time2 = *a5;
        if (CMTimeCompare(time, &time2) < 0)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(v96.value) = 0;
            LOBYTE(type.value) = 0;
            v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
            goto LABEL_119;
          }

          goto LABEL_120;
        }
      }

      if (!dword_1EAF16E78)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (a4 != 2)
      {
        if (a4 != 3)
        {
          goto LABEL_75;
        }

        if (!a2)
        {
          goto LABEL_26;
        }

        CMTimebaseGetTime(time, a2);
        time2 = *v11;
        v25 = CMTimeCompare(time, &time2);
        if (v25 < 0)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        *time = *&v11->value;
        *&time[16] = v11->epoch;
        TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, v26, 0, v22, &v98, &v97, 0);
        if (v97)
        {
          v27 = v21;
          if (dword_1EAF16E78)
          {
            LODWORD(v96.value) = 0;
            LOBYTE(type.value) = 0;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v45 = *&a3->value;
          epoch = a3->epoch;
          goto LABEL_101;
        }

        if ((v98.flags & 1) == 0)
        {
          if (!dword_1EAF16E78)
          {
            return TimeOfNextIFrameInDirection;
          }

          goto LABEL_57;
        }

        if (v25 < 0)
        {
          if ((a6->flags & 0x1D) != 1)
          {
            goto LABEL_115;
          }

          *time = v98;
          time2 = *a6;
          if (CMTimeCompare(time, &time2) < 1)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if ((a5->flags & 0x1D) != 1)
          {
            goto LABEL_115;
          }

          *time = v98;
          time2 = *a5;
          if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }
        }

        v98 = *a3;
LABEL_115:
        if (dword_1EAF16E78)
        {
          LODWORD(v96.value) = 0;
          LOBYTE(type.value) = 0;
          v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *v21 = v98;
        return TimeOfNextIFrameInDirection;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, 1, 0, (a4 >> 8) & 1, &v98, &v97, 0);
      if (v97)
      {
        v27 = v21;
        if (!dword_1EAF16E78)
        {
          goto LABEL_76;
        }

        goto LABEL_30;
      }

      if ((v98.flags & 1) == 0)
      {
        if (!dword_1EAF16E78)
        {
          return TimeOfNextIFrameInDirection;
        }

        goto LABEL_57;
      }

      v33 = v21;
      if ((a6->flags & 0x1D) == 1)
      {
        *time = v98;
        time2 = *a6;
        if (CMTimeCompare(time, &time2) >= 1)
        {
          if (!dword_1EAF16E78)
          {
            goto LABEL_120;
          }

          LODWORD(v96.value) = 0;
          LOBYTE(type.value) = 0;
          v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          goto LABEL_119;
        }
      }

      if (!dword_1EAF16E78)
      {
        goto LABEL_121;
      }
    }

    LODWORD(v96.value) = 0;
    LOBYTE(type.value) = 0;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    goto LABEL_93;
  }

  if (a4 > 5u)
  {
    if (a4 != 6)
    {
      if (a4 != 7)
      {
        goto LABEL_75;
      }

LABEL_26:
      v29 = 2;
LABEL_35:
      *&v96.value = v13;
      v96.epoch = v14;
      *&type.value = v13;
      type.epoch = v14;
      v94 = 0;
      *time = *&v11->value;
      *&time[16] = v11->epoch;
      bossGetTimeOfNextIFrameInDirection(v12, time, -1, v29, (a4 >> 8) & 1, &v96, &v97, &v94 + 1);
      if (v97)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v92.value) = 0;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&v21->value = *&v96.value;
        v37 = v96.epoch;
LABEL_89:
        v21->epoch = v37;
        return 0;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      bossGetTimeOfNextIFrameInDirection(v12, time, 1, v29, (a4 >> 8) & 1, &type, &v97, &v94);
      if (v97)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v92.value) = 0;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&v21->value = *&type.value;
        v37 = type.epoch;
        goto LABEL_89;
      }

      v38 = v21;
      if ((a5->flags & 0x1D) == 1 && (v96.flags & 0x1D) == 1 && (*time = v96, time2 = *a5, CMTimeCompare(time, &time2) < 0))
      {
        v61 = *&v11->value;
        v21->epoch = v11->epoch;
        *&v21->value = v61;
        v39 = v91;
        *&v96.value = v91;
        v96.epoch = v14;
      }

      else
      {
        v39 = v91;
      }

      if ((a6->flags & 0x1D) == 1 && (type.flags & 0x1D) == 1)
      {
        *time = type;
        time2 = *a6;
        v40 = CMTimeCompare(time, &time2);
        v39 = v91;
        if (v40 >= 1)
        {
          v41 = *&v11->value;
          v21->epoch = v11->epoch;
          *&v21->value = v41;
          *&type.value = v91;
          type.epoch = v14;
        }
      }

      v42 = v94;
      if (HIBYTE(v94) | v94)
      {
        if (!HIBYTE(v94))
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v92.value) = 0;
            v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v42 = v94;
            v39 = v91;
            v38 = v21;
          }

          *&v96.value = v39;
          v96.epoch = v14;
        }

        if (!v42)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v92.value) = 0;
            v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v39 = v91;
            v38 = v21;
          }

          *&type.value = v39;
          type.epoch = v14;
        }
      }

      v68 = type.flags & 0x1D;
      if ((v96.flags & 0x1D) == 1)
      {
        if (v68 != 1)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v92.value) = 0;
            v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
LABEL_152:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_153:
          *&v38->value = *&v96.value;
          v78 = v96.epoch;
LABEL_162:
          v38->epoch = v78;
          return 0;
        }

        time2 = type;
        rhs = *v11;
        CMTimeSubtract(time, &time2, &rhs);
        rhs = *v11;
        v92 = v96;
        CMTimeSubtract(&time2, &rhs, &v92);
        if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v92.value) = 0;
            v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v70 = rhs.value;
            v71 = LOBYTE(v92.value);
            if (os_log_type_enabled(v69, v92.value))
            {
              v72 = v70;
            }

            else
            {
              v72 = v70 & 0xFFFFFFFE;
            }

            if (v72)
            {
              *time = *&v11->value;
              *&time[16] = v11->epoch;
              v73 = CMTimeGetSeconds(time);
              *time = v96;
              v74 = CMTimeGetSeconds(time);
              LODWORD(time2.value) = 136315650;
              *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v73;
              HIWORD(time2.epoch) = 2048;
              v100 = v74;
              _os_log_send_and_compose_impl(v72, 0, time, 128, &dword_1962D5000, v69, v71, "<<<< Boss >>>> %s: SnapToNearestIFrame: %1.3f -> %1.3f (earlier I frame)", &time2);
            }

            goto LABEL_152;
          }

          goto LABEL_153;
        }

        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v92.value) = 0;
          v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v80 = rhs.value;
          v81 = LOBYTE(v92.value);
          if (os_log_type_enabled(v79, v92.value))
          {
            v82 = v80;
          }

          else
          {
            v82 = v80 & 0xFFFFFFFE;
          }

          if (v82)
          {
            *time = *&v11->value;
            *&time[16] = v11->epoch;
            v83 = CMTimeGetSeconds(time);
            *time = type;
            v84 = CMTimeGetSeconds(time);
            LODWORD(time2.value) = 136315650;
            *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v83;
            HIWORD(time2.epoch) = 2048;
            v100 = v84;
            _os_log_send_and_compose_impl(v82, 0, time, 128, &dword_1962D5000, v79, v81, "<<<< Boss >>>> %s: SnapToNearestIFrame: %1.3f -> %1.3f (later I frame)", &time2);
          }

          goto LABEL_160;
        }

        goto LABEL_161;
      }

      if (v68 == 1)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v92.value) = 0;
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
LABEL_160:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_161:
        *&v38->value = *&type.value;
        v78 = type.epoch;
        goto LABEL_162;
      }

      if (!dword_1EAF16E78)
      {
        return 0;
      }

      LODWORD(rhs.value) = 0;
      LOBYTE(v92.value) = 0;
      v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
LABEL_165:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    *time = *&v11->value;
    *&time[16] = v11->epoch;
    TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, 1, 1, (a4 >> 8) & 1, &v98, 0, 0);
    if ((v98.flags & 1) == 0)
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_13;
      }

      return TimeOfNextIFrameInDirection;
    }

    if ((a6->flags & 0x1D) != 1 || (*time = v98, time2 = *a6, CMTimeCompare(time, &time2) < 1))
    {
      v33 = v21;
      if (dword_1EAF16E78)
      {
        goto LABEL_47;
      }

      goto LABEL_121;
    }

    v33 = v21;
    if (!dword_1EAF16E78)
    {
      goto LABEL_120;
    }

    LODWORD(v96.value) = 0;
    LOBYTE(type.value) = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
LABEL_119:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = a3;
    goto LABEL_120;
  }

  if (a4 == 4)
  {
    v29 = 0;
    goto LABEL_35;
  }

  if (a4 != 5)
  {
LABEL_75:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, LODWORD(v87), v88);
    return v44;
  }

  *time = *&v11->value;
  *&time[16] = v11->epoch;
  TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, -1, 1, (a4 >> 8) & 1, &v98, 0, 0);
  if (v98.flags)
  {
    if ((a5->flags & 0x1D) != 1 || (*time = v98, time2 = *a5, (CMTimeCompare(time, &time2) & 0x80000000) == 0))
    {
      v33 = v21;
      if (dword_1EAF16E78)
      {
LABEL_47:
        LODWORD(v96.value) = 0;
        LOBYTE(type.value) = 0;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
LABEL_93:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_121:
      *v33 = v98;
      return TimeOfNextIFrameInDirection;
    }

    v33 = v21;
    if (dword_1EAF16E78)
    {
      LODWORD(v96.value) = 0;
      LOBYTE(type.value) = 0;
      v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
      goto LABEL_119;
    }

LABEL_120:
    v98 = *v11;
    goto LABEL_121;
  }

  if (dword_1EAF16E78)
  {
LABEL_13:
    LODWORD(v96.value) = 0;
    LOBYTE(type.value) = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
LABEL_73:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return TimeOfNextIFrameInDirection;
}

void FigPlaybackBossSetDroppableFrameMinimumIntervalAndRequestedFrameTimestampIntervalStep(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6960C70];
  v25 = *MEMORY[0x1E6960C70];
  v26 = *(MEMORY[0x1E6960C70] + 8);
  v23 = v25;
  v24 = v26;
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 80) <= 0)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v19 = *(v4 + 12);
      LOBYTE(v20) = v19;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
        if (*(ValueAtIndex + 18) == 1986618469)
        {
          v12 = ValueAtIndex;
          v13 = ValueAtIndex + 316;
          time1 = *(ValueAtIndex + 316);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2))
          {
            if ((v20 & 1) == 0)
            {
              v25 = *v13;
              v26 = *(v13 + 2);
              v20 = *(v12 + 82);
            }

            v14 = *&a2->value;
            *(v13 + 2) = a2->epoch;
            *v13 = v14;
            v10 = 1;
            *(a1 + 142) = 1;
          }

          v15 = (v12 + 340);
          time1 = *(v12 + 340);
          time2 = *a3;
          if (CMTimeCompare(&time1, &time2))
          {
            if ((v19 & 1) == 0)
            {
              v23 = *v15;
              v24 = *(v12 + 87);
              v19 = *(v12 + 88);
            }

            v16 = *&a3->value;
            *(v12 + 356) = a3->epoch;
            *v15 = v16;
            v10 = 1;
            *(a1 + 142) = 1;
          }
        }

        ++v9;
      }

      while (*(a1 + 80) > v9);
      FigSimpleMutexUnlock();
      if (v10)
      {
        if (!dword_1EAF16E78)
        {
          return;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_24:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return;
      }
    }

    if (dword_1EAF16E78 < 2)
    {
      return;
    }

    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    goto LABEL_24;
  }

  v6 = qword_1EAF16E70;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954925, "<<<< Boss >>>>", 8584, v3);
}

void FigPlaybackBossSetRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, const void *a4, float a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 128))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 9437, v5);
    }

    else if (a5 == 0.0)
    {
      if ((a2->flags & 0x1D) == 1)
      {
        time = *a2;
        p_time = &time;
        v13 = a1;
        v14 = 2;
      }

      else
      {
        p_time = MEMORY[0x1E6960C70];
        v13 = a1;
        v14 = 1;
      }

      figPlaybackBossSetRateToZero(v13, v14, p_time);
    }

    else
    {
      time = *a2;
      rhs = *a3;
      figPlaybackBossSetRateToNonZero(a1, &time, &rhs, a4, a5);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9435, v5);
  }
}

uint64_t figPlaybackBossSetRateToNonZero(uint64_t a1, CMTime *a2, CMTime *a3, const void *a4, float a5)
{
  v97 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v90 = 0;
  v9 = *(a1 + 139);
  memset(&v89, 0, sizeof(v89));
  *(a1 + 136) = 0;
  v10 = MEMORY[0x1E6960C70];
  bossScheduleReachedEndCallbackForTime(a1, MEMORY[0x1E6960C70]);
  bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, v10, v11, v12, v13, v14, v15, v16);
  FigSimpleMutexLock();
  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v90, a5);
  v17 = *(a1 + 512);
  cf = a4;
  if (v17 == 0.0)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v17 > 0.0 == *v90.i32 <= 0.0)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(a1 + 107))
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(a1 + 108))
  {
    v18 = 1;
    if (v17 != *v90.i32 && *v90.i32 != 0.0)
    {
      if (dword_1EAF16E78)
      {
LABEL_14:
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_15:
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  if (v91 != *(a1 + 448))
  {
    if (dword_1EAF16E78)
    {
LABEL_22:
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  if (v91)
  {
    v20 = vmul_f32(*(a1 + 440), vrev64_s32(v90));
    if (vmvn_s8(vceq_f32(v20, vdup_lane_s32(v20, 1))).u8[0])
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  if (*(a1 + 140))
  {
    if (*(a1 + 512) == *v90.i32)
    {
      goto LABEL_33;
    }

    if (!dword_1EAF16E78)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (*(a1 + 106) && fabsf(*(a1 + 512)) > *(a1 + 144) == fabsf(*v90.i32) <= *(a1 + 144))
  {
    if (!dword_1EAF16E78)
    {
LABEL_32:
      v18 = 0;
      goto LABEL_33;
    }

LABEL_31:
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_32;
  }

LABEL_33:
  v23 = (a1 + 440);
  if (*(a1 + 449) != BYTE1(v91))
  {
    if (dword_1EAF16E78)
    {
LABEL_39:
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_40:
    v18 = 0;
    goto LABEL_41;
  }

  if (*(a1 + 449) && *v23 != *v90.i32)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_41:
  if (*(a1 + 556))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
  }

  if (*(a1 + 105) && *(a1 + 444) != *&v90.i32[1])
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
  }

  v27 = *(a1 + 512);
  v28 = *v90.i32;
  if (v27 == 0.0 && *v90.i32 < 0.0)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v18 = 0;
      v27 = *(a1 + 512);
      v28 = *v90.i32;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v27 > 0.0 != v28 <= 0.0)
  {
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  if ((a2->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1 && v28 == *v23 && (time1 = *a2, time2 = *(a1 + 800), !CMTimeCompare(&time1, &time2)) && (time1 = *a3, time2 = *(a1 + 824), !CMTimeCompare(&time1, &time2)))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v32 = 1886530416;
  }

  else
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v30 = 0;
      v18 = 0;
    }

    v32 = 1886530416;
    if ((a3->flags & 0x1D) == 1)
    {
      v32 = 1886151033;
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v30 = 0;
      v18 = 0;
    }
  }

  if (BYTE1(v91) && *v23 == 0.0 && *v90.i32 > 0.0 && *v90.i32 < 1.0)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
  }

  if (*(a1 + 142))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
  }

  if (*(a1 + 512) != *v90.i32 || *(a1 + 142))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossSetMentorPropertiesForRate(a1, 0, *(a1 + 80), *v90.i32);
    FigSimpleMutexUnlock();
  }

  *(a1 + 142) = 0;
  if (*(a1 + 476) && (*(a1 + 492) & 1) != 0)
  {
    v37 = *(a1 + 120);
    time1 = *(a1 + 480);
    CMTimebaseSetTime(v37, &time1);
  }

  v38 = MEMORY[0x1E6960C70];
  v84 = *MEMORY[0x1E6960C70];
  *(a1 + 480) = *MEMORY[0x1E6960C70];
  v39 = *(v38 + 16);
  *(a1 + 496) = v39;
  if (!v18)
  {
    v41 = 0;
    v47 = *(a1 + 432);
    if (v47 <= 1886530415)
    {
      if (v47 > 1886151032)
      {
        v58 = 3;
        if (v47 != 1886151033)
        {
          if (v47 == 1886154860)
          {
            bossBumpCurrentMasterOrder(a1);
            FigSimpleMutexLock();
            if (*(a1 + 848))
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
            FigSimpleMutexUnlock();
            if ((*(a1 + 464) & 0x1D) == 1)
            {
              v71 = *(a1 + 120);
              time1 = *(a1 + 452);
              CMTimebaseSetTime(v71, &time1);
              *(a1 + 452) = v84;
              *(a1 + 468) = v39;
            }

            FigSimpleMutexLock();
            if (*(a1 + 848))
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            bossResetSideQueuesAndSwitchMentorsToMainQueues(a1);
            FigSimpleMutexUnlock();
            v58 = 2;
          }

          else
          {
            v43 = 0;
            if (v47 != 1886155888)
            {
              goto LABEL_177;
            }
          }
        }

        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v90.i32))
        {
          goto LABEL_162;
        }

        bossBumpCurrentMasterOrder(a1);
        FigSimpleMutexLock();
        if (v30)
        {
          if (*(a1 + 848))
          {
            LODWORD(rhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
          bossSwitchMentorsToSideQueues(a1, 0, *(a1 + 80));
          FigSimpleMutexUnlock();
          CMTimebaseGetTime(&v89, *(a1 + 120));
          *v23 = v90;
          *(a1 + 448) = v91;
          if (fabsf(a5) <= *(a1 + 144))
          {
            if (a5 < 0.0)
            {
              v75 = 1;
            }

            else
            {
              v75 = 2;
            }

            time1 = v89;
            bossSnapTimeToIFrameWithRange(a1, &time1, v75, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88], &v89);
          }

          time1 = v89;
          started = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, *&v90, v91, 2u, 0x706C706Cu, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], cf);
          goto LABEL_175;
        }

        if (*(a1 + 848))
        {
          LODWORD(rhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 0);
        FigSimpleMutexUnlock();
        bossStopTimebaseAndAudioContext(a1, 1, MEMORY[0x1E6960C70]);
        v82 = v90;
        *v23 = v90;
        v83 = v91;
        *(a1 + 448) = v91;
        *&time1.value = v84;
        time1.epoch = v39;
        time2 = *a2;
        rhs = *a3;
        v61 = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v82, v83, v58, v32, &time2, &rhs, a4);
        goto LABEL_138;
      }

      if (v47 != 1634624887)
      {
        if (v47 == 1768189029)
        {
          goto LABEL_139;
        }

        v48 = 1885435251;
        goto LABEL_135;
      }

LABEL_136:
      CMTimebaseGetTime(&time1, *(a1 + 120));
      if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v90.i32))
      {
        goto LABEL_162;
      }

      v59 = v90;
      *v23 = v90;
      v60 = v91;
      *(a1 + 448) = v91;
      *&time1.value = v84;
      time1.epoch = v39;
      time2 = *a2;
      rhs = *a3;
      v61 = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v59, v60, 3u, v32, &time2, &rhs, a4);
LABEL_138:
      v43 = v61;
      v41 = v61 != 0;
      goto LABEL_177;
    }

    if (v47 > 1919247480)
    {
      if (v47 == 2003853684 || v47 == 1920298606)
      {
        goto LABEL_139;
      }

      v48 = 1919247481;
    }

    else
    {
      if (v47 == 1886530416)
      {
        goto LABEL_136;
      }

      if (v47 == 1886544244)
      {
        goto LABEL_139;
      }

      v48 = 1886545266;
    }

LABEL_135:
    v43 = 0;
    if (v47 != v48)
    {
      goto LABEL_177;
    }

    goto LABEL_136;
  }

  v40 = *(a1 + 424);
  *(a1 + 424) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v41 = 0;
  v42 = *(a1 + 432);
  if (v42 > 1886530415)
  {
    if (v42 > 1919247480)
    {
      if (v42 == 1919247481)
      {
        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v90.i32))
        {
          goto LABEL_162;
        }

        *v23 = v90;
        *(a1 + 448) = v91;
        v63 = bossStartTimebaseAndAudioContext(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *(a1 + 440), *(a1 + 444));
        if (v63)
        {
          v43 = v63;
          *(a1 + 440) = 0;
          *(a1 + 432) = 1885435251;
          v41 = 1;
          goto LABEL_177;
        }

        *(a1 + 432) = 1886151033;
        ++*(a1 + 720);
        ++*(a1 + 728);
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time1, HostTimeClock);
        *(a1 + 664) = time1;
        v70 = *(a1 + 120);
        if (v70)
        {
          CMTimebaseGetTime(&time1, v70);
          v41 = 0;
          v43 = 0;
          *(a1 + 696) = time1;
          goto LABEL_177;
        }

        goto LABEL_140;
      }

      if (v42 != 1920298606)
      {
        v43 = 0;
        if (v42 != 2003853684)
        {
          goto LABEL_177;
        }
      }
    }

    else
    {
      if (v42 == 1886530416)
      {
        goto LABEL_126;
      }

      if (v42 != 1886544244)
      {
        v43 = 0;
        if (v42 == 1886545266)
        {
          v41 = 0;
          v43 = 0;
          *v23 = v90;
          *(a1 + 448) = v91;
          *(a1 + 432) = 1886530416;
          epoch = a2->epoch;
          *(a1 + 800) = *&a2->value;
          *(a1 + 816) = epoch;
          v50 = a3->epoch;
          *(a1 + 824) = *&a3->value;
          *(a1 + 840) = v50;
        }

        goto LABEL_177;
      }
    }

LABEL_139:
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_140:
    v41 = 0;
    v43 = 0;
    goto LABEL_177;
  }

  if (v42 > 1886151032)
  {
    if (v42 == 1886151033)
    {
      goto LABEL_119;
    }

    if (v42 != 1886154860)
    {
      v43 = 0;
      if (v42 != 1886155888)
      {
        goto LABEL_177;
      }

LABEL_119:
      if (*v90.i32 == *v23)
      {
        v43 = 0;
        *(a1 + 512) = v90.i32[0];
      }

      else
      {
        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v90.i32))
        {
          goto LABEL_162;
        }

        *v23 = v90;
        *(a1 + 448) = v91;
        v64 = MEMORY[0x1E6960C70];
        v43 = bossSetPossiblyOutsourcedTimebaseRate(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *(a1 + 440), *(a1 + 444));
        ++*(a1 + 728);
        v65 = *(a1 + 120);
        if (v65)
        {
          v66 = (a1 + 696);
          if (*(a1 + 708))
          {
            CMTimebaseGetTime(&time2, v65);
            *&rhs.value = *v66;
            rhs.epoch = *(a1 + 712);
            CMTimeSubtract(&time1, &time2, &rhs);
            *(a1 + 688) = fabs(CMTimeGetSeconds(&time1)) + *(a1 + 688);
            *v66 = *v64;
            *(a1 + 712) = *(v64 + 16);
            v65 = *(a1 + 120);
          }

          CMTimebaseGetTime(&time1, v65);
          *v66 = *&time1.value;
          *(a1 + 712) = time1.epoch;
        }
      }

      bossScheduleReachedEndCallbackForRate(a1, *v90.i32);
      bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, *v90.i32, v51, v52, v53, v54, v55, v56, v57);
LABEL_176:
      v41 = 0;
      goto LABEL_177;
    }

LABEL_126:
    v41 = 0;
    v43 = 0;
    *v23 = v90;
    *(a1 + 448) = v91;
    goto LABEL_177;
  }

  if (v42 == 1634624887)
  {
    goto LABEL_100;
  }

  if (v42 == 1768189029)
  {
    goto LABEL_139;
  }

  v43 = 0;
  if (v42 == 1885435251)
  {
LABEL_100:
    CMTimebaseGetTime(&time1, *(a1 + 120));
    if (!bossCheckTimeWithEndTimes(a1, &time1, 0, *v90.i32))
    {
      v44 = v90;
      *v23 = v90;
      v45 = v91;
      *(a1 + 448) = v91;
      *&time1.value = v84;
      time1.epoch = v39;
      started = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v44, v45, 3u, 0x70722B70u, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a4);
LABEL_175:
      v43 = started;
      goto LABEL_176;
    }

LABEL_162:
    FigSimpleMutexUnlock();
    return 0;
  }

LABEL_177:
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    v78 = type;
    if (os_log_type_enabled(v76, type))
    {
      v79 = value;
    }

    else
    {
      v79 = value & 0xFFFFFFFE;
    }

    if (v79)
    {
      StateName = getStateName(*(a1 + 432));
      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "figPlaybackBossSetRateToNonZero";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v93 = a1 + 850;
      v94 = 2082;
      v95 = StateName;
      _os_log_send_and_compose_impl(v79, 0, &time1, 128, &dword_1962D5000, v76, v78, "<<<< Boss >>>> %s: <%p|%{public}s> playState set to %{public}s", &time2, 42);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v41)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return v43;
}

uint64_t FigPlaybackBossStartPreroll(uint64_t a1, const __CFDictionary *a2, const void *a3, float a4)
{
  v6 = a2;
  v29 = *MEMORY[0x1E69E9840];
  values = a2;
  v26 = 0;
  v25 = 0;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9471, v4);
    return v10;
  }

  if (*(a1 + 128))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 9473, v4);
    return v10;
  }

  if (a4 == 0.0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9475, v4);
    return v10;
  }

  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v25, a4);
  FigSimpleMutexLock();
  v13 = *(a1 + 504);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 504) = 0;
  }

  v11 = 0;
  v14 = *(a1 + 432);
  if (v14 <= 1886530415)
  {
    if (v14 <= 1886151032)
    {
      if (v14 == 1634624887)
      {
        goto LABEL_19;
      }

      if (v14 != 1768189029)
      {
        if (v14 == 1885435251)
        {
LABEL_19:
          FigSimpleMutexLock();
          if (!*(a1 + 848))
          {
LABEL_54:
            bossSetMentorPropertiesForRate(a1, 0, *(a1 + 80), *&v25);
            FigSimpleMutexUnlock();
            v24 = *(a1 + 504);
            *(a1 + 504) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            v28 = **&MEMORY[0x1E6960C70];
            started = figPlaybackBossStartPrerollAndSetPlayState(a1, &v28, v25, v26, 3u, 0x70726572u, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a3);
            goto LABEL_59;
          }

LABEL_53:
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_54;
        }

LABEL_60:
        FigSimpleMutexUnlock();
        return v11;
      }

LABEL_36:
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v11 = 0;
      goto LABEL_60;
    }

    if (v14 != 1886151033 && v14 != 1886154860)
    {
      v16 = 1886155888;
LABEL_34:
      if (v14 != v16)
      {
        goto LABEL_60;
      }
    }

LABEL_35:
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9533, v4);
LABEL_59:
    v11 = started;
    goto LABEL_60;
  }

  if (v14 <= 1919247480)
  {
    if (v14 != 1886530416 && v14 != 1886544244)
    {
      if (v14 == 1886545266)
      {
        if (*(a1 + 512) == *&v25)
        {
          if (dword_1EAF16E78)
          {
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9497, v4);
          goto LABEL_59;
        }

        if (dword_1EAF16E78)
        {
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexLock();
        if (!*(a1 + 848))
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      goto LABEL_60;
    }

    goto LABEL_35;
  }

  if (v14 != 1919247481)
  {
    if (v14 == 1920298606)
    {
      goto LABEL_36;
    }

    v16 = 2003853684;
    goto LABEL_34;
  }

  if (*(a1 + 512) != *&v25)
  {
    if (dword_1EAF16E78)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (!*(a1 + 848))
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (dword_1EAF16E78)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

void bossSetMentorPropertiesForRate(uint64_t a1, CFIndex a2, uint64_t a3, float a4)
{
  valuePtr[0] = a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
  if (a2 < FigCFRangeGetLimit())
  {
    v8 = 0;
    v9 = fabsf(a4);
    v10 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
      if (*(ValueAtIndex + 27))
      {
        v12 = ValueAtIndex;
        memset(&v27, 0, sizeof(v27));
        time = *(ValueAtIndex + 372);
        CMTimeMultiplyByFloat64(&v27, &time, v9);
        time = v27;
        v13 = CMTimeCopyAsDictionary(&time, v6);
        memset(&time, 0, sizeof(time));
        v25 = *(v12 + 396);
        CMTimeMultiplyByFloat64(&time, &v25, v9);
        v25 = time;
        v14 = CMTimeCopyAsDictionary(&v25, v6);
        v15 = 0;
        if ((*(v12 + 82) & 0x1D) == 1)
        {
          memset(&v25, 0, sizeof(v25));
          v24 = *(v12 + 316);
          CMTimeMultiplyByFloat64(&v25, &v24, v9);
          v24 = v25;
          v15 = CMTimeCopyAsDictionary(&v24, v6);
        }

        v16 = v7;
        if ((*(v12 + 88) & 0x1D) == 1)
        {
          memset(&v25, 0, sizeof(v25));
          v24 = *(v12 + 340);
          CMTimeMultiplyByFloat64(&v25, &v24, v9);
          v24 = v25;
          v17 = CMTimeCopyAsDictionary(&v24, v6);
        }

        else
        {
          v17 = 0;
        }

        v18 = EditMentorSetProperty(*(v12 + 27), @"IFrameMinimumInterval", v13);
        if (!v8)
        {
          v8 = v18;
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v19 = EditMentorSetProperty(*(v12 + 27), @"IFrameAverageInterval", v14);
        if (!v8)
        {
          v8 = v19;
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v20 = EditMentorSetProperty(*(v12 + 27), @"DroppableFrameMinimumInterval", v15);
        if (!v8)
        {
          v8 = v20;
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v21 = EditMentorSetProperty(*(v12 + 27), @"RequestedFrameTimestampIntervalStep", v17);
        if (!v8)
        {
          v8 = v21;
        }

        if (v17)
        {
          CFRelease(v17);
        }

        v7 = v16;
        v22 = EditMentorSetProperty(*(v12 + 27), @"PlayRate", v16);
        if (!v8)
        {
          v8 = v22;
        }
      }

      ++v10;
    }

    while (v10 < FigCFRangeGetLimit());
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void FigPlaybackBossGoQuiescent(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    figPlaybackBossTeardownTracks(a1, 0);
    if (dword_1EAF16E78)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 848) = 1;
    FigSimpleMutexUnlock();
  }

  else
  {
    v3 = qword_1EAF16E70;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 4294954925, "<<<< Boss >>>>", 9623, v1);
  }
}

uint64_t FigPlaybackBossPrerollAndScheduleGaplessStart(uint64_t a1, const void *a2, const void *a3, float a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  target = 0;
  v49 = 0;
  FigSimpleMutexLock();
  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v49, a4);
  v8 = *MEMORY[0x1E695E480];
  v9 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
  if (v9)
  {
    goto LABEL_27;
  }

  CMSetAttachment(target, *MEMORY[0x1E6960550], a2, 0);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = (a1 + 80);
  if (*(a1 + 80) <= 0)
  {
    FigSimpleMutexUnlock();
LABEL_26:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v43, sampleSizeArray);
LABEL_27:
    v28 = v9;
    goto LABEL_28;
  }

  v46 = v8;
  v45 = a3;
  v12 = 0;
  v47 = 0;
  v13 = a2;
  do
  {
    v14 = *(CFArrayGetValueAtIndex(*(a1 + 72), v12) + 10);
    if (v14)
    {
      v15 = *(a1 + 120);
      CMTimebaseGetTime(&v51, v15);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        time = v51;
        v17 = v16(v14, v15, &time, v13, 0, 0);
      }

      else
      {
        v17 = -12782;
      }

      if (dword_1EAF16E78)
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = (a1 + 80);
      }

      if (v17)
      {
        time.value = 0;
        FigRenderPipelineGetFigBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v21(v20, @"Timebase", v46, &time);
        }

        value = time.value;
        if (time.value)
        {
          goto LABEL_19;
        }

        v23 = *(a1 + 120);
        FigRenderPipelineGetFigBaseObject();
        v25 = v24;
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v26)
        {
          v26(v25, @"Timebase", v23);
        }

        value = time.value;
        if (time.value)
        {
LABEL_19:
          CFRelease(value);
        }
      }

      else
      {
        v47 = 1;
      }
    }

    ++v12;
  }

  while (*v11 > v12);
  FigSimpleMutexUnlock();
  if (!v47)
  {
    goto LABEL_26;
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v11 >= 1)
  {
    FigPlaybackBossPrerollAndScheduleGaplessStart_cold_1((a1 + 72), &target, v11);
  }

  v30 = v49;
  *(a1 + 440) = v49;
  v31 = v50;
  *(a1 + 448) = v50;
  ++*(a1 + 648);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  *(a1 + 624) = time;
  *(a1 + 432) = 1886544244;
  *(a1 + 512) = v30;
  bossBroadcastPrerollRateToRenderPipelines(a1, 0, *(a1 + 80), *&v30);
  bossBumpCurrentMasterOrder(a1);
  v33 = *(a1 + 80);
  CMTimebaseGetTime(&time, *(a1 + 120));
  v28 = bossSetMentorModesForTimeAndRate(a1, 0, v33, &time, v30, v31, 1, 0, 0);
  FigSimpleMutexUnlock();
  if (!v28)
  {
    v34 = *(a1 + 424);
    *(a1 + 424) = v45;
    if (v45)
    {
      CFRetain(v45);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    bossScheduleReachedEndCallbackForRate(a1, *(a1 + 440));
    bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, *(a1 + 440), v35, v36, v37, v38, v39, v40, v41);
    v28 = 0;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (target)
  {
    CFRelease(target);
  }

  return v28;
}

uint64_t bossSnapTimeToIFrameWithRange(uint64_t a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v11 = *(MEMORY[0x1E6960C70] + 16);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(time.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
    v19 = 1;
  }

  else
  {
    v13 = 0;
    v22 = 0;
    epoch = v11;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v13);
      if (*(ValueAtIndex + 18) == 1986618469)
      {
        v15 = ValueAtIndex;
        *&v29.value = *MEMORY[0x1E6960C70];
        v29.epoch = v11;
        v16 = ValueAtIndex[4];
        v17 = *(a1 + 120);
        lhs = *a2;
        time = *a4;
        type = *a5;
        if (!FigPlaybackBossSnapTimeToIFrameWithRange(v16, v17, &lhs, a3, &time, &type, &v29))
        {
          flags = v29.flags;
          if ((v29.flags & 0x1D) == 1)
          {
            if ((v24 & 0x1D) != 1 || (lhs.value = value, lhs.timescale = timescale, lhs.flags = v24, lhs.epoch = epoch, type = *a2, CMTimeSubtract(&time, &lhs, &type), CMTimeAbsoluteValue(&lhs, &time), time = v29, rhs = *a2, CMTimeSubtract(&type, &time, &rhs), CMTimeAbsoluteValue(&time, &type), CMTimeCompare(&lhs, &time) >= 1))
            {
              value = v29.value;
              timescale = v29.timescale;
              v22 = v15;
              epoch = v29.epoch;
              v24 = flags;
            }
          }
        }
      }

      ++v13;
    }

    while (*(a1 + 80) > v13);
    v11 = epoch;
    v19 = v22 == 0;
  }

  result = FigSimpleMutexUnlock();
  if (a6)
  {
    if (!v19)
    {
      *a6 = value;
      *(a6 + 8) = timescale;
      *(a6 + 12) = v24;
      *(a6 + 16) = v11;
    }
  }

  return result;
}

uint64_t bossResetSideQueuesAndSwitchMentorsToMainQueues(uint64_t result)
{
  if (*(result + 80) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(CFArrayGetValueAtIndex(*(v1 + 72), v2) + 12);
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 96);
      if (v6)
      {
        result = v6(v3);
      }

      ++v2;
    }

    while (v2 < *(v1 + 80));
  }

  return result;
}

void FigPlaybackBossInterruptQueueing(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 16))
  {
    v3 = qword_1EAF16E70;
    v4 = v1;
    v5 = 4294954925;
    v6 = 9979;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, "<<<< Boss >>>>", v6, v4);
    return;
  }

  if (*(a1 + 128))
  {
    v3 = qword_1EAF16E70;
    v4 = v1;
    v5 = 4294954924;
    v6 = 9981;
    goto LABEL_4;
  }

  figPlaybackBossPrerollCompleted(a1, 2u, 0);
  FigSimpleMutexLock();
  bossBumpCurrentMasterOrder(a1);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 1);
  bossBumpCurrentMasterOrder(a1);
  bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
}

uint64_t FigPlaybackBossStepByCount(uint64_t a1, int a2, const void *a3)
{
  v130 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E6960C70];
  v120 = v7;
  v121 = *(MEMORY[0x1E6960C70] + 8);
  v118 = v7;
  v87 = v121;
  v119 = v121;
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10419, v3);
LABEL_6:
    PresentationTimeAfterSampleCursorStepping = v9;
    v11 = 0;
    goto LABEL_7;
  }

  v13 = *(a1 + 432);
  if (v13 != 1885435251 && v13 != 1886545266 && v13 != 1919247481)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10429, v3);
    goto LABEL_6;
  }

  if (!a2)
  {
    return 0;
  }

  CMTimebaseGetTime(&time1.start, *(a1 + 120));
  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  if ((time1.start.flags & 0x1D) != 1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10444, v3);
    goto LABEL_6;
  }

  epoch = time1.start.epoch;
  v15 = malloc_type_calloc(*(a1 + 80), 8uLL, 0x2004093837F09uLL);
  if (!v15)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954926, "<<<< Boss >>>>", 10451, v3);
    goto LABEL_6;
  }

  v70 = v15;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v65 = flags;
  v68 = a2;
  v64 = a3;
  v74 = *(MEMORY[0x1E6960C70] + 12);
  v17 = *(MEMORY[0x1E6960C70] + 16);
  if (*(a1 + 80) < 1)
  {
    v19 = 0;
    v11 = v70;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v11 = v70;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v18);
      if (*(ValueAtIndex + 89))
      {
        v21 = ValueAtIndex[18];
        v22 = v21 == 1635088502 || v21 == 1986618469;
        if (v22 || v21 == 1935893870)
        {
          v70[v19++] = ValueAtIndex;
        }
      }

      ++v18;
    }

    while (*(a1 + 80) > v18);
  }

  if (a2 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = -a2;
  }

  if (v19 > 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  v114 = value;
  v115 = timescale;
  v86 = *MEMORY[0x1E6960C70];
  v91 = *MEMORY[0x1E6960C70];
  v92 = v17;
  v71 = v25;
  if (a2 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = -v25;
  }

  FigPlaybackBossGetDuration(a1, &v91);
  v67 = 0;
  v27 = (v26 >> 31) | 1;
  v28 = v65;
  v29 = epoch;
  v84 = v19;
  v69 = a1;
  v73 = v7;
  while (2)
  {
    v118 = v7;
    v119 = v87;
    if (v84 < 1)
    {
      v75 = v17;
      v77 = v74;
      goto LABEL_108;
    }

    v30 = 0;
    v76 = v24;
    v77 = v74;
    v75 = v17;
    v85 = v28;
    v72 = v29;
    do
    {
      v112 = v7;
      v113 = v87;
      v31 = v11[v30];
      v89 = v91;
      v90 = v92;
      v126 = v7;
      v127 = v87;
      v106 = 0;
      v32 = *(MEMORY[0x1E6960C78] + 48);
      *&rhs.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
      *&v105.start.value = v32;
      v33 = *(MEMORY[0x1E6960C78] + 80);
      *&v105.start.epoch = *(MEMORY[0x1E6960C78] + 64);
      *&v105.duration.timescale = v33;
      v34 = *(MEMORY[0x1E6960C78] + 16);
      *&rhs.start.value = *MEMORY[0x1E6960C78];
      *&rhs.start.epoch = v34;
      *&v103.value = v86;
      v103.epoch = v17;
      v101 = v33;
      *&v102.value = v86;
      v102.epoch = v17;
      v82 = v32;
      v83 = *&rhs.duration.timescale;
      v98 = *&rhs.duration.timescale;
      v99 = v32;
      v80 = v33;
      v81 = *&v105.start.epoch;
      v100 = *&v105.start.epoch;
      v78 = v34;
      v79 = *&rhs.start.value;
      *type = *&rhs.start.value;
      v97 = v34;
      v88 = v31;
      v35 = *(v31 + 32);
      time1.start.value = v114;
      time1.start.timescale = v115;
      time1.start.flags = v28;
      time1.start.epoch = v29;
      v36 = bossScanForEditSegmentContainingTrackTime(v35, &time1, &v106 + 1, &v106, &rhs, v27, &v102, type);
      if (v36)
      {
        PresentationTimeAfterSampleCursorStepping = v36;
LABEL_106:
        v52 = v74;
        v53 = v17;
        goto LABEL_92;
      }

      if (!HIBYTE(v106))
      {
        v54 = *(v88 + 48);
        time1.start.value = v114;
        time1.start.timescale = v115;
        time1.start.flags = v28;
        time1.start.epoch = v29;
        PresentationTimeAfterSampleCursorStepping = bossGetPresentationTimeAfterSampleCursorStepping(v54, &time1.start, v26, 0, &v103);
        if (!PresentationTimeAfterSampleCursorStepping)
        {
          v126 = v103.value;
          v52 = v103.flags;
          v127 = v103.timescale;
          v53 = v103.epoch;
          goto LABEL_91;
        }

        goto LABEL_106;
      }

      if (!v106)
      {
        PresentationTimeAfterSampleCursorStepping = 0;
        v52 = v74;
        v53 = v17;
        goto LABEL_91;
      }

      *&v95.value = v86;
      v95.epoch = v17;
      v124 = v114;
      v37 = v28;
      v125 = v115;
      v38 = v27 * v26;
      v39 = v27 * v26;
      v40 = v26;
      while (1)
      {
        if ((rhs.start.flags & 0x1D) != 1)
        {
          *&time1.start.value = v89;
          time1.start.epoch = v90;
          range.start.value = v124;
          range.start.timescale = v125;
          range.start.flags = v37;
          range.start.epoch = v29;
          v109 = v102;
          bossGetPresentationTimeAfterSteppingInEmptyEditSegment(&time1.start, &range.start, v40, &v109, &v95);
          v41 = v95.flags;
          if ((v95.flags & 0x1D) != 1)
          {
            PresentationTimeAfterSampleCursorStepping = 0;
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        v42 = *(v88 + 48);
        time1 = rhs;
        v117 = v105;
        range.start.value = v124;
        range.start.timescale = v125;
        range.start.flags = v37;
        range.start.epoch = v29;
        PresentationTimeAfterSteppingInNormalEditSegment = bossGetPresentationTimeAfterSteppingInNormalEditSegment(v42, &time1, &range, v40, 1, &v95);
        PresentationTimeAfterSampleCursorStepping = 4294954456;
        if (PresentationTimeAfterSteppingInNormalEditSegment == -12840)
        {
          goto LABEL_56;
        }

        v41 = v95.flags;
        if ((v95.flags & 0x1D) != 1)
        {
          PresentationTimeAfterSampleCursorStepping = PresentationTimeAfterSteppingInNormalEditSegment;
LABEL_56:
          if (v38 > 1)
          {
            v38 = 1;
            v40 = (v26 >> 31) | 1;
            if (PresentationTimeAfterSampleCursorStepping)
            {
              goto LABEL_85;
            }

            goto LABEL_58;
          }

          v95.epoch = v17;
          v44 = v105.start.value;
          v94 = *&v105.start.timescale;
          *&v95.value = v86;
          duration = v105.duration;
          v111 = 0;
          *&v109.value = v86;
          v109.epoch = v17;
          *&v108.value = v86;
          v108.epoch = v17;
          *&time1.duration.timescale = v83;
          *&v117.start.value = v82;
          *&v117.start.epoch = v81;
          *&v117.duration.timescale = v80;
          *&time1.start.value = v79;
          *&time1.start.epoch = v78;
          if (v26 < 0)
          {
            v110 = *&v105.start.timescale;
            v46 = -1;
            v45 = v105.start.value;
          }

          else
          {
            range = v105;
            CMTimeRangeGetEnd(&time2, &range);
            v45 = time2.value;
            v110 = *&time2.timescale;
            v46 = 1;
          }

          v47 = *(v88 + 32);
          range.start.value = v45 + v46;
          *&range.start.timescale = v110;
          v48 = bossScanForEditSegmentContainingTrackTime(v47, &range, &v111 + 1, &v111, &time1, v46, &v108, 0);
          if (!v48)
          {
            PresentationTimeAfterSampleCursorStepping = 4294954456;
            if (!HIBYTE(v111))
            {
              goto LABEL_81;
            }

            if (!v111)
            {
              goto LABEL_81;
            }

            range.start.value = v44;
            *&range.start.timescale = v94;
            time2 = v117.start;
            if (!CMTimeCompare(&range.start, &time2))
            {
              range.start = duration;
              time2 = v117.duration;
              if (!CMTimeCompare(&range.start, &time2))
              {
                goto LABEL_81;
              }
            }

            if (v26 < 0)
            {
              range = v117;
              CMTimeRangeGetEnd(&time2, &range);
              v49 = time2.value;
              v50 = *&time2.timescale;
            }

            else
            {
              v49 = v117.start.value;
              v50 = *&v117.start.timescale;
            }

            v110 = v50;
            if ((time1.start.flags & 0x1D) != 1)
            {
              *&range.start.value = v89;
              range.start.epoch = v90;
              time2.value = v49;
              *&time2.timescale = v110;
              bossGetPresentationTimeAfterSteppingInEmptyEditSegment(&range.start, &time2, v46, MEMORY[0x1E6960C70], &v109);
LABEL_78:
              if ((v109.flags & 0x1D) == 1)
              {
                PresentationTimeAfterSampleCursorStepping = 0;
              }

              else
              {
                PresentationTimeAfterSampleCursorStepping = 4294954456;
              }

LABEL_81:
              rhs = time1;
              v105 = v117;
              v102 = v108;
              v95 = v109;
              if (PresentationTimeAfterSampleCursorStepping)
              {
                v52 = v74;
                v53 = v17;
                a1 = v69;
                goto LABEL_87;
              }

              v41 = v95.flags;
              goto LABEL_54;
            }

            v51 = *(v88 + 48);
            range = time1;
            v129 = v117;
            time2.value = v49;
            *&time2.timescale = v110;
            v48 = bossGetPresentationTimeAfterSteppingInNormalEditSegment(v51, &range, &time2, v46, 0, &v109);
            if (!v48)
            {
              goto LABEL_78;
            }
          }

          PresentationTimeAfterSampleCursorStepping = v48;
          goto LABEL_81;
        }

        if (PresentationTimeAfterSteppingInNormalEditSegment)
        {
          break;
        }

LABEL_54:
        PresentationTimeAfterSampleCursorStepping = 0;
        v39 -= v38;
        v124 = v95.value;
        v125 = v95.timescale;
        v29 = v95.epoch;
        v37 = v41;
LABEL_58:
        if (v39 <= 0)
        {
          goto LABEL_85;
        }
      }

      PresentationTimeAfterSampleCursorStepping = PresentationTimeAfterSteppingInNormalEditSegment;
LABEL_85:
      v52 = v74;
      v53 = v17;
      a1 = v69;
      if (!PresentationTimeAfterSampleCursorStepping)
      {
        v126 = v95.value;
        v52 = v95.flags;
        v127 = v95.timescale;
        v53 = v95.epoch;
      }

LABEL_87:
      v11 = v70;
      v29 = v72;
LABEL_91:
      v112 = v126;
      v113 = v127;
LABEL_92:
      if (PresentationTimeAfterSampleCursorStepping == -12840)
      {
        v7 = v73;
        goto LABEL_102;
      }

      if (PresentationTimeAfterSampleCursorStepping)
      {
        FigSimpleMutexUnlock();
        goto LABEL_7;
      }

      v7 = v73;
      if ((v52 & 0x1D) == 1)
      {
        if (v68 < 1)
        {
          time1.start.value = v112;
          time1.start.timescale = v113;
          time1.start.flags = v52;
          time1.start.epoch = v53;
          range.start.value = v114;
          range.start.timescale = v115;
          range.start.flags = v85;
          range.start.epoch = v29;
          if (CMTimeCompare(&time1.start, &range.start) < 0)
          {
LABEL_98:
            if ((v77 & 0x1D) != 1 || (time1.start.value = v118, time1.start.timescale = v119, time1.start.flags = v77, time1.start.epoch = v75, rhs.start.value = v114, rhs.start.timescale = v115, rhs.start.flags = v85, rhs.start.epoch = v72, CMTimeSubtract(&range.start, &time1.start, &rhs.start), CMTimeAbsoluteValue(&time1.start, &range.start), range.start.value = v112, range.start.timescale = v113, range.start.flags = v52, range.start.epoch = v53, *type = v114, *&type[8] = v115, *&type[12] = v85, v29 = v72, *&v97 = v72, CMTimeSubtract(&rhs.start, &range.start, type), CMTimeAbsoluteValue(&range.start, &rhs.start), CMTimeCompare(&time1.start, &range.start) >= 1))
            {
              v118 = v112;
              v119 = v113;
              v67 = v88;
              v75 = v53;
              v77 = v52;
            }
          }
        }

        else
        {
          time1.start.value = v112;
          time1.start.timescale = v113;
          time1.start.flags = v52;
          time1.start.epoch = v53;
          range.start.value = v114;
          range.start.timescale = v115;
          range.start.flags = v85;
          range.start.epoch = v29;
          if (CMTimeCompare(&time1.start, &range.start) > 0)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_102:
      ++v30;
      v24 = v76;
      v28 = v85;
    }

    while (v30 != v84);
LABEL_108:
    v55 = v77;
    if ((v77 & 0x1D) == 1)
    {
      v114 = v118;
      v115 = v119;
      v28 = v77;
      v29 = v75;
      v56 = __OFSUB__(v24, v71);
      v24 -= v71;
      if (!((v24 < 0) ^ v56 | (v24 == 0)))
      {
        continue;
      }

      FigSimpleMutexUnlock();
      if (v67)
      {
        v120 = v118;
        v121 = v119;
        goto LABEL_115;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    break;
  }

  CMTimeMake(&range.start, 250 * v68, 1000);
  rhs.start.value = value;
  rhs.start.timescale = timescale;
  rhs.start.flags = v65;
  rhs.start.epoch = epoch;
  CMTimeAdd(&time1.start, &rhs.start, &range.start);
  v120 = time1.start.value;
  v55 = time1.start.flags;
  v121 = time1.start.timescale;
  v75 = time1.start.epoch;
LABEL_115:
  v57 = v64;
  if (dword_1EAF16E78)
  {
    v58 = v55;
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = rhs.start.value;
    v61 = type[0];
    if (os_log_type_enabled(v59, type[0]))
    {
      v62 = v60;
    }

    else
    {
      v62 = v60 & 0xFFFFFFFE;
    }

    if (v62)
    {
      time1.start.value = v120;
      time1.start.timescale = v121;
      time1.start.flags = v58;
      time1.start.epoch = v75;
      Seconds = CMTimeGetSeconds(&time1.start);
      LODWORD(range.start.value) = 136315906;
      *(&range.start.value + 4) = "FigPlaybackBossStepByCount";
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = a1;
      HIWORD(range.start.epoch) = 2082;
      range.duration.value = a1 + 850;
      LOWORD(range.duration.timescale) = 2048;
      *(&range.duration.timescale + 2) = Seconds;
      _os_log_send_and_compose_impl(v62, 0, &time1, 128, &dword_1962D5000, v59, v61, "<<<< Boss >>>> %s: <%p|%{public}s> Stepping to time: %1.3f seconds", &range, 42);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v57 = v64;
    v55 = v58;
  }

  time1.start.value = v120;
  time1.start.timescale = v121;
  time1.start.flags = v55;
  time1.start.epoch = v75;
  PresentationTimeAfterSampleCursorStepping = FigPlaybackBossSetTimeWithRange(a1, &time1.start, 0, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88], v57, 0);
LABEL_7:
  free(v11);
  return PresentationTimeAfterSampleCursorStepping;
}

uint64_t FigPlaybackBossResetCompositionInstructions(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((*(a1 + 492) & 0x1D) == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return FigVideoCompositionProcessorResetCompositionInstruction(a2, v5, a4);
}

uint64_t FigPlaybackBossRefreshVideoComposition(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  v21 = **&MEMORY[0x1E6960C70];
  if (!a1 || *(a1 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10658, v1);
LABEL_4:
    v4 = v3;
    goto LABEL_5;
  }

  if (*(a1 + 128))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 10663, v1);
    goto LABEL_4;
  }

  FigSimpleMutexLock();
  v6 = *(a1 + 432);
  if (v6 <= 1886530415)
  {
    if (v6 <= 1886151032)
    {
      switch(v6)
      {
        case 1634624887:
          goto LABEL_15;
        case 1768189029:
          goto LABEL_16;
        case 1885435251:
LABEL_15:
          if (dword_1EAF16E78)
          {
LABEL_16:
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          break;
      }

LABEL_44:
      FigSimpleMutexUnlock();
      v4 = 0;
      goto LABEL_5;
    }

    if (v6 == 1886151033)
    {
      goto LABEL_29;
    }

    if (v6 != 1886154860)
    {
      v11 = 1886155888;
LABEL_28:
      if (v6 != v11)
      {
        goto LABEL_44;
      }

LABEL_29:
      FigPlaybackBossGetTime(a1, &v21);
      if (dword_1EAF16E78)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = v21;
      v15 = a1;
      v16 = 0;
      goto LABEL_42;
    }

LABEL_31:
    if (*(a1 + 812))
    {
      v21 = *(a1 + 800);
    }

    else
    {
      FigPlaybackBossGetTime(a1, &v21);
    }

    if (dword_1EAF16E78)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v21;
    v15 = a1;
    v16 = 1;
LABEL_42:
    restarted = figPlaybackBossRestartVideoMentorsFromItemTime(v15, &time, v16);
    if (restarted)
    {
      v4 = restarted;
      FigSimpleMutexUnlock();
      goto LABEL_5;
    }

    goto LABEL_44;
  }

  if (v6 > 1919247480)
  {
    if (v6 != 1919247481)
    {
      if (v6 == 1920298606)
      {
        goto LABEL_16;
      }

      v11 = 2003853684;
      goto LABEL_28;
    }

    v10 = 1;
    v8 = 1;
  }

  else
  {
    if (v6 == 1886530416 || v6 == 1886544244)
    {
      goto LABEL_31;
    }

    if (v6 != 1886545266)
    {
      goto LABEL_44;
    }

    v8 = 0;
    cf = *(a1 + 504);
    v9 = cf;
    *(a1 + 504) = 0;
    v10 = v9 == 0;
  }

  FigPlaybackBossGetTime(a1, &v21);
  if (dword_1EAF16E78)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bossBumpCurrentMasterOrder(a1);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = *(a1 + 80);
  time = v21;
  v4 = bossSetMentorModesToScrub(a1, 0, v19, &time, 0, 0);
  FigSimpleMutexUnlock();
  *(a1 + 432) = 1885435251;
  FigSimpleMutexUnlock();
  if ((v8 & 1) == 0)
  {
    v20 = v10 ? 0 : CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v20)
    {
      CFRelease(v20);
    }
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

const char *getStateName(int a1)
{
  v1 = "unknown";
  if (a1 <= 1886155887)
  {
    v2 = 1885435250;
    v7 = "Paused";
    v14 = "PlayingAndPrerollingWillPlay";
    if (a1 != 1886154860)
    {
      v14 = "unknown";
    }

    if (a1 == 1886151033)
    {
      v15 = "Playing";
    }

    else
    {
      v15 = v14;
    }

    if (a1 != 1885435251)
    {
      v7 = v15;
    }

    v8 = 1634624887;
    v9 = "NotYetUsed";
    v10 = "Invalidated";
    v11 = 1684365668;
    v12 = a1 == 1768189029;
    v13 = "IdleNonRealTime";
  }

  else
  {
    v2 = 1886545265;
    v3 = "PrerolledWillPlayAtTransition";
    if (a1 != 2003853684)
    {
      v3 = "unknown";
    }

    if (a1 == 1920298606)
    {
      v4 = "PlayingNonRealTime";
    }

    else
    {
      v4 = v3;
    }

    v5 = "PausedButPrerolled";
    if (a1 != 1919247481)
    {
      v5 = "unknown";
    }

    if (a1 == 1886545266)
    {
      v6 = "PrerollingWillPause";
    }

    else
    {
      v6 = v5;
    }

    if (a1 <= 1920298605)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    v8 = 1886155888;
    v9 = "PlayingAfterTransitionStillPrerolling";
    v10 = "PrerollingWillPlay";
    v11 = 1886530416;
    v12 = a1 == 1886544244;
    v13 = "PrerollingWillPlayAtTransition";
  }

  if (v12)
  {
    v1 = v13;
  }

  if (a1 == v11)
  {
    v1 = v10;
  }

  if (a1 == v8)
  {
    v1 = v9;
  }

  if (a1 <= v2)
  {
    return v1;
  }

  else
  {
    return v7;
  }
}

uint64_t figPlaybackBossRestartVideoMentorsFromItemTime(uint64_t a1, CMTime *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v24 = v4;
  v5 = *(a1 + 440);
  if (v5 <= 0.0)
  {
    v6 = -v5;
  }

  else
  {
    v6 = *(a1 + 440);
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v23 = a3 != 0;
    v11 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
      if (*(ValueAtIndex + 18) == 1986618469)
      {
        v13 = ValueAtIndex;
        v14 = ValueAtIndex[28];
        ++*(ValueAtIndex + 58);
        ValueAtIndex[28] = CFNumberCreate(v11, kCFNumberSInt32Type, ValueAtIndex + 29);
        if (v14)
        {
          CFRelease(v14);
        }

        if (a3)
        {
          *(v13 + 237) = 1;
        }

        if (*(v13 + 216))
        {
          if (v5 < 0.0)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v13 + 272);
          }

          v16 = bossTrackShouldRemoveExcessFramesInRefreshIntervals(a1, v13, v6);
          v17 = bossCopyOptionsDictionaryForMentors(a1, v24, *(v13 + 240), *(v13 + 248), *(v13 + 256), *(v13 + 264), v15, 0, v6, v23, *(a1 + 849), *(a1 + 129), v5 >= 0.0, 1, *(v13 + 368), *(v13 + 424), 0, v16);
          v18 = bossCopyRenderPipelineCachedVideoFrames(a1, *(v13 + 80));
          v19 = *(v13 + 216);
          v20 = *(v13 + 224);
          time = *a2;
          if (v5 < 0.0)
          {
            v27 = *(a1 + 296);
            v28 = *(a1 + 312);
            v21 = EditMentorSetModeToReversePlayback(v19, &time.value, &v27, v17, v18, 0, v20);
          }

          else
          {
            v27 = *(a1 + 176);
            v28 = *(a1 + 192);
            v21 = EditMentorSetModeToForwardPlayback(v19, &time.value, &v27, v17, v18, 0, v20);
          }

          if (v10)
          {
            v10 = v10;
          }

          else
          {
            v10 = v21;
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }
      }

      ++v9;
    }

    while (*(a1 + 80) > v9);
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigPlaybackBossSendSampleForTime(uint64_t a1, CMTime *a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    if (!*(a1 + 128))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 10817, v3);
      return v8;
    }

    *(a1 + 436) = (a3 & 2) != 0;
    *(a1 + 437) = (a3 & 4) != 0;
    FigSimpleMutexLock();
    v11 = *(a1 + 432);
    if (v11 > 1768189028)
    {
      if (v11 == 1768189029)
      {
        goto LABEL_16;
      }

      v12 = 1920298606;
    }

    else
    {
      if (v11 == 1634624887)
      {
        goto LABEL_16;
      }

      v12 = 1684365668;
    }

    if (v11 != v12)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
      v9 = v14;
LABEL_20:
      FigSimpleMutexUnlock();
      return v9;
    }

LABEL_16:
    *(a1 + 432) = 1920298606;
    bossBumpCurrentMasterOrder(a1);
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *(a1 + 80);
    time = *a2;
    v9 = bossSetMentorModesToScrub(a1, 0, v15, &time, 1, 0);
    FigSimpleMutexUnlock();
    goto LABEL_20;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10813, v3);
  return v8;
}

uint64_t FigPlaybackBossSendSamplesForTimeRange(uint64_t a1, CMTime *a2, CMTime *a3, char a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    if (!*(a1 + 128))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 10876, v4);
      return v10;
    }

    *(a1 + 436) = (a4 & 2) != 0;
    *(a1 + 437) = (a4 & 4) != 0;
    FigSimpleMutexLock();
    v13 = *(a1 + 432);
    if (v13 > 1768189028)
    {
      if (v13 == 1768189029)
      {
        goto LABEL_16;
      }

      v14 = 1920298606;
    }

    else
    {
      if (v13 == 1634624887)
      {
        goto LABEL_16;
      }

      v14 = 1684365668;
    }

    if (v13 != v14)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      v11 = v16;
LABEL_25:
      FigSimpleMutexUnlock();
      return v11;
    }

LABEL_16:
    *(a1 + 432) = 1920298606;
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossSetMentorPropertiesForRate(a1, 0, *(a1 + 80), 1.0);
    FigSimpleMutexUnlock();
    v17 = *&a2->value;
    *(a1 + 264) = a2->epoch;
    *(a1 + 248) = v17;
    epoch = a3->epoch;
    *(a1 + 272) = *&a3->value;
    *(a1 + 288) = epoch;
    v19 = a4 & 1;
    if ((a4 & 8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    bossBumpCurrentMasterOrder(a1);
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v22 = *(a1 + 80);
    time = *a2;
    v26 = *a3;
    v11 = bossSetMentorModesToForwardPlayback(a1, 0, v22, &time, &v26, 0, 0, v20, 1.0, 1.0, v19, 0, 0, 0);
    FigSimpleMutexUnlock();
    goto LABEL_25;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 10872, v4);
  return v10;
}

__n128 FigPlaybackBossGetScheduledEndTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[20];
  *a2 = result;
  a2[1].n128_u64[0] = a1[21].n128_u64[0];
  return result;
}

uint64_t FigPlaybackBossGetStopAtEnd(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 137);
    }
  }

  return result;
}

void FigPlaybackBossSetAudibleRateRange(uint64_t a1, char a2, char a3, float a4, float a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 400) = a2;
    *(a1 + 404) = a4;
    *(a1 + 401) = a3;
    *(a1 + 408) = a5;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }
}

void FigPlaybackBossGetAudibleRateRange(uint64_t a1, _BYTE *a2, _DWORD *a3, _BYTE *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (a1 && !*(a1 + 16))
  {
    if (a2)
    {
      *a2 = *(a1 + 400);
    }

    if (a3)
    {
      *a3 = *(a1 + 404);
    }

    if (a4)
    {
      *a4 = *(a1 + 401);
    }

    if (a5)
    {
      *a5 = *(a1 + 408);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
  }
}

void FigPlaybackBossSetRateSnapping(uint64_t a1, char a2, float a3, float a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 412) = a2;
    *(a1 + 416) = a3;
    *(a1 + 420) = a4;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }
}

void FigPlaybackBossGetRateSnapping(uint64_t a1, _BYTE *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (a1 && !*(a1 + 16))
  {
    if (a2)
    {
      *a2 = *(a1 + 412);
    }

    if (a3)
    {
      *a3 = *(a1 + 416);
    }

    if (a4)
    {
      *a4 = *(a1 + 420);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
  }
}

void FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 138) = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

uint64_t FigPlaybackBossGetContinuePlayingDuringPrerollForSeek(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 138);
    }
  }

  return result;
}

void FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 139) = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

uint64_t FigPlaybackBossGetContinuePlayingDuringPrerollForRateChange(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 139);
    }
  }

  return result;
}

void FigPlaybackBossSetIFrameOnlySpeedThreshold(uint64_t a1, float a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 143) = 1;
    *(a1 + 144) = a2;
    *(a1 + 512) = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

float FigPlaybackBossGetIFrameOnlySpeedThreshold(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if (!*(a1 + 16))
    {
      return *(a1 + 144);
    }
  }

  return result;
}

void FigPlaybackBossSetReversalLimits(uint64_t a1, int a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 152) = a2;
    *(a1 + 156) = a3;
    if (*(a1 + 512) < 0.0)
    {
      *(a1 + 512) = 0;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }
}

void FigPlaybackBossGetReversalLimits(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (a1 && !*(a1 + 16))
  {
    if (a2)
    {
      *a2 = *(a1 + 152);
    }

    if (a3)
    {
      *a3 = *(a1 + 156);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
  }
}

void FigPlaybackBossSetScrubPolicy(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 160) = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

void FigPlaybackBossGetScrubPolicy(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (a1 && !*(a1 + 16))
  {
    if (a2)
    {
      *a2 = *(a1 + 160);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
  }
}

void FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 140) = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

uint64_t FigPlaybackBossGetUseIFrameOnlyPlaybackForHighRateScaledEdits(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 140);
    }
  }

  return result;
}

void FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(uint64_t a1, CMTime *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 80) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v5);
        v7 = *&a2->value;
        *(ValueAtIndex + 388) = a2->epoch;
        *(ValueAtIndex + 372) = v7;
        ++v5;
      }

      while (*(a1 + 80) > v5);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }
}

void FigPlaybackBossSetTrackEnableForStepping(uint64_t a1, int a2, char a3)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 80) >= 1)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
        if (*(ValueAtIndex + 6) == a2)
        {
          ValueAtIndex[89] = a3;
        }

        ++v8;
      }

      while (*(a1 + 80) > v8);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v5 = qword_1EAF16E70;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954925, "<<<< Boss >>>>", 11274, v3);
  }
}

void FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16))
  {
    *(a1 + 141) = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }
}

uint64_t FigPlaybackBossGetThoroughlyRefreshClosedCaptionsWhenSeeking(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 141);
    }
  }

  return result;
}

void FigPlaybackBossCopyTrackPerformanceDictionary(uint64_t a1, int a2, const __CFAllocator *a3, uint64_t a4)
{
  v65 = *MEMORY[0x1E69E9840];
  memset(v44, 0, sizeof(v44));
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) < 1)
    {
LABEL_12:
      FigSimpleMutexUnlock();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
      return;
    }

    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
      if (ValueAtIndex[6] == a2)
      {
        break;
      }

      if (*(a1 + 80) <= ++v10)
      {
        goto LABEL_12;
      }
    }

    v12 = ValueAtIndex;
    CFRetain(ValueAtIndex);
    FigSimpleMutexUnlock();
    v13 = *(a1 + 131);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *keys = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *values = 0u;
    v46 = 0u;
    if (!v13)
    {
      *&v44[0] = CFDictionaryCreate(a3, keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_40;
    }

    keys[0] = @"NumberOfSamplesInTrack";
    valuePtr = 0;
    *type = 0;
    cf = 0;
    FigFormatReaderGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = *MEMORY[0x1E695E480];
      if (!v16(v15, @"Identifier", *MEMORY[0x1E695E480], type) && (FigCFEqual() || FigCFEqual()))
      {
        if (v12[4])
        {
          FigTrackReaderGetFigBaseObject();
          v19 = v18;
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20)
          {
            if (!v20(v19, @"UneditedSampleCount", v17, values))
            {
LABEL_33:
              v27 = 1;
LABEL_35:
              if (*type)
              {
                CFRelease(*type);
              }

              *&v44[0] = CFDictionaryCreate(a3, keys, values, v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v27 && values[0])
              {
                CFRelease(values[0]);
              }

LABEL_40:
              v28 = v12[18];
              if (v28)
              {
                if (VideoMentorCopyPerformanceDictionary(v28, v44 + 1))
                {
                  v29 = 1;
                }

                else
                {
                  v29 = 2;
                }
              }

              else
              {
                v29 = 1;
              }

              if (v12[5])
              {
                FigSampleGeneratorGetFigBaseObject();
                v31 = v30;
                v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v32)
                {
                  if (!v32(v31, @"SampleGeneratorPerformanceDictionary", a3, v44 + 8 * v29))
                  {
                    ++v29;
                  }
                }
              }

              v33 = 0;
              v34 = 0;
              do
              {
                v34 += CFDictionaryGetCount(*(v44 + v33++));
              }

              while (v29 != v33);
              if (v34 < 1)
              {
                if (!v12)
                {
LABEL_54:
                  v35 = v44;
                  do
                  {
                    v36 = *v35++;
                    CFRelease(v36);
                    --v29;
                  }

                  while (v29);
                  return;
                }
              }

              else
              {
                FigCFCreateCombinedDictionary();
                if (!v12)
                {
                  goto LABEL_54;
                }
              }

              CFRelease(v12);
              goto LABEL_54;
            }
          }
        }

        v21 = v12[6];
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v22 && !v22(v21, &cf))
        {
          valuePtr = 0;
          v23 = 1;
          while (1)
          {
            v40 = 0;
            v24 = cf;
            v25 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            v26 = v25 && v25(v24, 1, &v40) == 0;
            if (v40 != 1)
            {
              break;
            }

            valuePtr = v23++;
            if (!v26)
            {
              CFRelease(cf);
              goto LABEL_34;
            }
          }

          CFRelease(cf);
          if (v26)
          {
            values[0] = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
            if (!values[0])
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
              v27 = v37 == 0;
              goto LABEL_35;
            }

            goto LABEL_33;
          }
        }
      }
    }

LABEL_34:
    v27 = 0;
    goto LABEL_35;
  }

  v6 = qword_1EAF16E70;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954925, "<<<< Boss >>>>", 11442, v4);
}

uint64_t FigPlaybackBossCopyPerformanceDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (*(a1 + 676))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, HostTimeClock);
      v9 = *(a1 + 664);
      CMTimeSubtract(&time, &lhs, &v9);
      CMTimeGetSeconds(&time);
    }

    FigCFDictionarySetDouble();
    if (*(a1 + 708))
    {
      v7 = *(a1 + 120);
      if (v7)
      {
        CMTimebaseGetTime(&lhs, v7);
        v9 = *(a1 + 696);
        CMTimeSubtract(&time, &lhs, &v9);
        CMTimeGetSeconds(&time);
      }
    }

    FigCFDictionarySetDouble();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (*(a1 + 748))
    {
      time = *(a1 + 736);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetDouble();
    }
  }

  *a3 = Mutable;
  return 0;
}

void FigPlaybackBossSetClientPID(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
        if (ValueAtIndex[10])
        {
          FigRenderPipelineGetFigBaseObject();
          v10 = v9;
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v11)
          {
            v11(v10, @"ClientPID", a2);
          }
        }

        v12 = ValueAtIndex[18];
        if (v12)
        {
          VideoMentorSetClientPID(v12, a2);
        }

        v13 = ValueAtIndex[16];
        if (v13)
        {
          AudioMentorSetClientPID(v13, a2);
        }

        ++v7;
      }

      while (*(a1 + 80) > v7);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = qword_1EAF16E70;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954925, "<<<< Boss >>>>", 11787, v2);
  }
}

void FigPlaybackBossSetThrottleForBackground(_BYTE *a1, char a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && !a1[16])
  {
    a1[135] = a2;
    FigSimpleMutexLock();
    if (a1[848])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossApplyThrottleForBackground(a1);
    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = qword_1EAF16E70;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954925, "<<<< Boss >>>>", 11843, v2);
  }
}

uint64_t bossReadModelSpecificPlaybackTuning()
{
  FigGetAllocatorForPermanentAllocations();
  result = FigCreateModelSpecificPropertyList();
  sModelSpecificPlaybackTuning = result;
  return result;
}

void bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(&v38, 0, sizeof(v38));
  v2 = *(a1 + 440);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_31;
  }

  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    if (*(CFArrayGetValueAtIndex(*(a1 + 72), v4) + 10))
    {
      dictionaryRepresentation = 0;
      FigRenderPipelineGetFigBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(v8, @"EndPresentationTimeForQueuedSamples", v6, &dictionaryRepresentation);
      }

      if (dictionaryRepresentation)
      {
        memset(&rhs, 0, sizeof(rhs));
        CMTimeMakeFromDictionary(&rhs, dictionaryRepresentation);
        if ((rhs.flags & 0x1D) != 1)
        {
LABEL_17:
          CFRelease(dictionaryRepresentation);
          goto LABEL_18;
        }

        if (v5)
        {
          if (v2 >= 0.0)
          {
            time1 = v38;
            time2 = rhs;
            CMTimeMaximum(&v38, &time1, &time2);
LABEL_16:
            v5 = 1;
            goto LABEL_17;
          }

          time2 = v38;
          type = rhs;
          CMTimeMinimum(&time1, &time2, &type);
          *&v38.value = *&time1.value;
          epoch = time1.epoch;
        }

        else
        {
          *&v38.value = *&rhs.value;
          epoch = rhs.epoch;
        }

        v38.epoch = epoch;
        goto LABEL_16;
      }
    }

LABEL_18:
    ++v4;
  }

  while (*(a1 + 80) > v4);
  FigSimpleMutexUnlock();
  if (v5)
  {
    if (bossShouldExtendEndTime(a1))
    {
      memset(&time2, 0, sizeof(time2));
      if (v2 < 0.0)
      {
        v11 = -10;
      }

      else
      {
        v11 = 10;
      }

      CMTimeMake(&rhs, v11, 1);
      time1 = v38;
      CMTimeAdd(&time2, &time1, &rhs);
      if (dword_1EAF16E78)
      {
        LODWORD(type.value) = 0;
        LOBYTE(dictionaryRepresentation) = 0;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = type.value;
        v14 = dictionaryRepresentation;
        if (os_log_type_enabled(v12, dictionaryRepresentation))
        {
          v15 = value;
        }

        else
        {
          v15 = value & 0xFFFFFFFE;
        }

        if (v15)
        {
          rhs = v38;
          Seconds = CMTimeGetSeconds(&rhs);
          rhs = time2;
          v17 = CMTimeGetSeconds(&rhs);
          LODWORD(time1.value) = 136316162;
          *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = a1;
          HIWORD(time1.epoch) = 2082;
          v40 = a1 + 850;
          v41 = 2048;
          v42 = Seconds;
          v43 = 2048;
          v44 = v17;
          _os_log_send_and_compose_impl(v15, 0, &rhs, 128, &dword_1962D5000, v12, v14, "<<<< Boss >>>> %s: <%p|%{public}s> stopped due to error. Extending end time from %1.3f to %1.3f.", &time1, 52);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v38 = time2;
    }

    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = time2.value;
      value_low = LOBYTE(type.value);
      if (os_log_type_enabled(v29, type.value))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFE;
      }

      if (v32)
      {
        rhs = v38;
        v33 = CMTimeGetSeconds(&rhs);
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 2082;
        v40 = a1 + 850;
        v41 = 2048;
        v42 = v33;
        LODWORD(v34) = 42;
        _os_log_send_and_compose_impl(v32, 0, &rhs, 128, &dword_1962D5000, v29, value_low, "<<<< Boss >>>> %s: <%p|%{public}s> scheduling reachedEnd timer using overall end time %1.3f.", &time1, v34);
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

LABEL_31:
  if (bossShouldExtendEndTime(a1))
  {
    CMTimebaseGetTime(&time1, *(a1 + 120));
    if (v2 < 0.0)
    {
      v18 = -10;
    }

    else
    {
      v18 = 10;
    }

    CMTimeMake(&time2, v18, 1);
    CMTimeAdd(&rhs, &time1, &time2);
    v38 = rhs;
    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = time2.value;
      v21 = LOBYTE(type.value);
      if (os_log_type_enabled(v19, type.value))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFE;
      }

      if (v22)
      {
        rhs = v38;
        v23 = CMTimeGetSeconds(&rhs);
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 2082;
        v40 = a1 + 850;
        v41 = 2048;
        v42 = v23;
        _os_log_send_and_compose_impl(v22, 0, &rhs, 128, &dword_1962D5000, v19, v21, "<<<< Boss >>>> %s: <%p|%{public}s> stopped due to error with empty render pipelines. Setting end time to %1.3f.", &time1, 42);
      }

LABEL_57:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_58:
    rhs = v38;
    bossScheduleReachedEndCallbackForTime(a1, &rhs);
  }

  else
  {
    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = time2.value;
      v26 = LOBYTE(type.value);
      if (os_log_type_enabled(v24, type.value))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LODWORD(time1.value) = 136315650;
        *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 2082;
        v40 = a1 + 850;
        _os_log_send_and_compose_impl(v27, 0, &rhs, 128, &dword_1962D5000, v24, v26, "<<<< Boss >>>> %s: <%p|%{public}s> scheduling reachedEnd timer immediately (all render pipelines are apparently empty).", &time1, 32);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v28 = MEMORY[0x1E6960C70];
    *(a1 + 320) = *MEMORY[0x1E6960C70];
    *(a1 + 336) = *(v28 + 16);
    CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168));
  }
}

void figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
LABEL_11:
    FigSimpleMutexUnlock();
    if (dword_1EAF16E78)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2 || (a2 = *(a1 + 576)) != 0)
    {
      CFRetain(a2);
    }

    v10 = *(a1 + 576);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 576) = 0;
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (a2)
    {
      CFRelease(a2);
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v5);
      if (*(ValueAtIndex + 236))
      {
        break;
      }

      if (*(ValueAtIndex + 237))
      {
        break;
      }

      if (*(ValueAtIndex + 238))
      {
        break;
      }

      v7 = *(ValueAtIndex + 14);
      if (v7)
      {
        if (!FigMediaProcessorIsAtEndOfOutputData(v7))
        {
          break;
        }
      }

      if (++v5 >= *(a1 + 80))
      {
        goto LABEL_11;
      }
    }

    FigSimpleMutexUnlock();
    if (a2)
    {
      v9 = *(a1 + 576);
      *(a1 + 576) = a2;
      CFRetain(a2);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void figPlaybackBossReachedEndWithContext(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    os_retain(*(a1 + 792));
    voucher_adopt();
    *(a1 + 136) = 1;
    if (*(a1 + 137))
    {
      if (dword_1EAF16E78)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = *(a1 + 320);
      figPlaybackBossSetRateToZero(a1, 2, &time);
      v3 = MEMORY[0x1E6960C70];
      *(a1 + 320) = *MEMORY[0x1E6960C70];
      *(a1 + 336) = *(v3 + 16);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v4 = voucher_adopt();
    os_release(v4);
  }
}

void figPlaybackBoss_bufferConsumedByRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!*(v6 + 16))
  {
    if (*(v6 + 600))
    {
      v8 = *(v6 + 476) == 0;
      if (!a5)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = 1;
      if (!a5)
      {
        goto LABEL_3;
      }
    }

    if (v8)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(a5, @"BossScrubOrder"))
        {
          FigSimpleMutexLock();
          if (FigCFEqual() && (v10 = *(v7 + 784), v10))
          {
            *(v7 + 788) = 0;
            *(v7 + 784) = 0;
            FigSimpleMutexUnlock();
            figPlaybackBossPostSeekDidComplete(v7, v10, 0, v11, v12, v13, v14, v15);
          }

          else
          {
            FigSimpleMutexUnlock();
          }
        }
      }
    }
  }

LABEL_3:

  CFRelease(v7);
}

void figPlaybackBoss_renderPipelineCompletedDecodeForPreroll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *Value)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    FigSimpleMutexLock();
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"RequestID");
    }

    FigSimpleMutexLock();
    if (!*(v8 + 16) && *(a2 + 224) == Value && *(a2 + 238))
    {
      v9 = *(v8 + 544);
      if (v9)
      {
        CFRetain(*(v8 + 544));
      }

      *(a2 + 238) = 0;
      FigSimpleMutexLock();
      if (*(v8 + 848))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v8 + 80) < 1)
      {
LABEL_17:
        FigSimpleMutexUnlock();
        v12 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
        *v12 = CFRetain(v8);
        if (v9)
        {
          v13 = CFRetain(v9);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        dispatch_async_f(*(v8 + 32), v12, figPlaybackBoss_allRenderPipelinesCompletedDecodeForPreroll_f);
      }

      else
      {
        v11 = 0;
        while (!*(CFArrayGetValueAtIndex(*(v8 + 72), v11) + 238))
        {
          if (*(v8 + 80) <= ++v11)
          {
            goto LABEL_17;
          }
        }

        FigSimpleMutexUnlock();
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    CFRelease(v8);
  }
}