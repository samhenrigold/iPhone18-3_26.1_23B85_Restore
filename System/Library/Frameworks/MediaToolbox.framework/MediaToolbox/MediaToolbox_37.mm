void userdataPropertiesCallback(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v9 = 0;
    valuePtr = 0;
    *__str = 0;
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        snprintf(__str, 5uLL, "%c%c%c%c", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
        CFStringAppendFormat(a3, 0, @"     Key = %s\n", __str);
      }
    }
  }

  else if (CFEqual(a1, @"keyspace"))
  {
    CFStringAppendFormat(a3, 0, @"     Keyspace = %@\n", a2);
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"languageCode"))
  {
    CFStringAppendFormat(a3, 0, @"     Language code = %@\n", a2);
  }
}

uint64_t FigUserDataCopyValue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = *(CMBaseObjectGetDerivedStorage() + 16);

  return UserDataCopyValueCommon(a1, v14, a2, a3, a4, a5, a6, a7);
}

uint64_t FigUserDataHasKey(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v9.location = 0;
  v9.length = 0;
  if (CMBaseObjectGetDerivedStorage() && a3 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!UserDataCopyKeysInfoCommon(*(DerivedStorage + 16), a2, a3, &v11, &v10, &v9) && !FigAtomStreamInitWithByteStream() && !FigAtomStreamInitWithParent())
    {
      while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
      {
        if (HIDWORD(v11) != 1718773093 && HIDWORD(v11) != 1936419184)
        {
          if (v10)
          {
            if (CFArrayContainsValue(v10, v9, HIDWORD(v11)))
            {
              v8 = 1;
              goto LABEL_18;
            }
          }

          else if (HIDWORD(v11) == v11)
          {
            return 1;
          }
        }

        if (FigAtomStreamAdvanceToNextAtom())
        {
          break;
        }
      }
    }
  }

  else
  {
    FigUserDataHasKey_cold_1();
  }

  v8 = 0;
LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t UserDataCopyValueCommon(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (!a1)
  {
    UserDataCopyValueCommon_cold_5(&cf);
    goto LABEL_58;
  }

  v9 = a4;
  if (!a4)
  {
    UserDataCopyValueCommon_cold_4(&cf);
    goto LABEL_58;
  }

  v10 = cf1;
  if (!cf1)
  {
    UserDataCopyValueCommon_cold_3(&cf);
    goto LABEL_58;
  }

  if (!a7)
  {
    UserDataCopyValueCommon_cold_2(&cf);
    goto LABEL_58;
  }

  v14 = a2;
  if (!CFEqual(cf1, @"comn"))
  {
    v16 = v14 ? @"udta" : @"uiso";
    if (!CFEqual(v10, v16))
    {
      UserDataCopyValueCommon_cold_1(&cf);
LABEL_58:
      v33 = 0;
      v32 = cf;
      goto LABEL_41;
    }
  }

  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v17 && (v43 = v17(a1, v10, v9), v43 >= 1))
  {
    v37 = a7;
    v38 = a8;
    v18 = 0;
    v40 = 0;
    v41 = 0;
    key = *MEMORY[0x1E695E6F0];
    v39 = v10;
    v19 = 1;
    while (1)
    {
      v44 = 0;
      cf = 0;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v20)
      {
        v32 = -12782;
        goto LABEL_52;
      }

      v21 = v20(a1, v10, v9, v19 - 1, a6, &cf, &v44);
      if (v21)
      {
        break;
      }

      if (!a5 || CFGetTypeID(cf) == a5)
      {
        v22 = v9;
        v23 = a5;
        v24 = a6;
        v25 = v44;
        v26 = CFLocaleCopyCurrent();
        Value = CFLocaleGetValue(v26, key);
        v28 = 0;
        if (v25)
        {
          v29 = Value;
          if (Value)
          {
            v30 = CFDictionaryGetValue(v25, @"locale");
            v28 = v30 && (v31 = CFLocaleGetValue(v30, key)) != 0 && CFStringCompare(v31, v29, 0) == kCFCompareEqualTo;
          }
        }

        if (v26)
        {
          CFRelease(v26);
        }

        a6 = v24;
        if (v28 >= v18)
        {
          if (v40)
          {
            CFRelease(v40);
          }

          a5 = v23;
          if (v41)
          {
            CFRelease(v41);
          }

          v18 = v28 + 1;
          v40 = CFRetain(cf);
          v41 = CFRetain(v44);
        }

        else
        {
          v18 = 1;
          a5 = v23;
        }

        v9 = v22;
        v10 = v39;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v44)
      {
        CFRelease(v44);
      }

      v32 = 0;
      if (v19 < v43)
      {
        ++v19;
        if (v18 < 2)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v32 = v21;
LABEL_52:
    v33 = v40 != 0;
    if (v40 && (*v37 = v40, v38))
    {
      *v38 = v41;
      v33 = 1;
    }

    else if (v41)
    {
      CFRelease(v41);
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a5)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t UserDataCopyKeysInfoCommon(int a1, CFTypeRef cf1, uint64_t a3, _DWORD *a4, CFTypeRef *a5, void *a6)
{
  v10 = a3;
  valuePtr = 0;
  cf = 0;
  if (!cf1)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    UserDataCopyKeysInfoCommon_cold_4(&v26);
    goto LABEL_47;
  }

  if (!CFEqual(cf1, @"comn"))
  {
    if (a1)
    {
      if (CFEqual(cf1, @"udta"))
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v16 = CFGetTypeID(v10);
        if (v16 == CFStringGetTypeID())
        {
          if (!FigUserDataStringKeyToOSTypeKey(v10, &valuePtr))
          {
            UserDataCopyKeysInfoCommon_cold_2(&v26);
            goto LABEL_47;
          }

          goto LABEL_40;
        }

        v20 = CFGetTypeID(v10);
        if (v20 != CFNumberGetTypeID())
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954695, "<<<< FMDR_UserData >>>>", 970, v6);
          goto LABEL_33;
        }

        goto LABEL_39;
      }
    }

    else if (CFEqual(cf1, @"uiso"))
    {
      if (!v10)
      {
        goto LABEL_7;
      }

      v17 = CFGetTypeID(v10);
      if (v17 == CFStringGetTypeID())
      {
        if (!FigISOUserDataStringKeyToOSTypeKey(v10, &valuePtr))
        {
          UserDataCopyKeysInfoCommon_cold_3(&v26);
          goto LABEL_47;
        }

LABEL_40:
        v10 = 0;
        goto LABEL_7;
      }

      v22 = CFGetTypeID(v10);
      if (v22 != CFNumberGetTypeID())
      {
        v23 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954695, "<<<< FMDR_UserData >>>>", 984, v6);
LABEL_33:
        v10 = v19;
        if (v19)
        {
          goto LABEL_34;
        }

        goto LABEL_7;
      }

LABEL_39:
      CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
      goto LABEL_40;
    }

    v18 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294954690, "<<<< FMDR_UserData >>>>", 990, v6);
    goto LABEL_33;
  }

  if (!v10)
  {
    UserDataCopyKeysInfoCommon_cold_1(&v26);
LABEL_47:
    v10 = v26;
    if (v26)
    {
      goto LABEL_34;
    }

LABEL_7:
    Count = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
    v13 = FigUserDataCopyOSTypeKeysFromCommonKey(v10, &cf);
  }

  else
  {
    v13 = FigISOUserDataCopyOSTypeKeysFromCommonKey(v10, &cf);
  }

  v10 = v13;
  if (v13)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    if (cf)
    {
      Count = CFArrayGetCount(cf);
      v10 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }

LABEL_8:
      *a5 = cf;
      cf = 0;
      goto LABEL_9;
    }

    v10 = 4294954691;
  }

LABEL_34:
  Count = 0;
  valuePtr = 0;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a6)
  {
    *a6 = 0;
    a6[1] = Count;
  }

  if (a4)
  {
    *a4 = valuePtr;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

CFMutableDictionaryRef FigISOUserDataCreateItemTextFromLocation(const __CFAllocator *a1, CFDataRef theData, CFStringRef *a3, unint64_t a4)
{
  if (!theData)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_6(&v27);
    return v27;
  }

  if (!(a3 | a4))
  {
    FigISOUserDataCreateItemTextFromLocation_cold_5(&v27);
    return v27;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 0x13)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_4(&v27);
    return v27;
  }

  v10 = bswap32(*(BytePtr + 2));
  v11 = HIWORD(v10);
  valuePtr = HIWORD(v10);
  if (HIWORD(v10) <= 0x3FFu)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_3(&v27);
    return v27;
  }

  if (!a3)
  {
    goto LABEL_27;
  }

  if (Length - 6 < 2)
  {
    goto LABEL_22;
  }

  v12 = &BytePtr[Length];
  v13 = BytePtr + 6;
  v14 = BytePtr[6];
  if (v14 == 255)
  {
    if (BytePtr[7] != 254)
    {
      goto LABEL_11;
    }
  }

  else if (v14 != 254 || BytePtr[7] != 255)
  {
LABEL_11:
    if (Length >= 7)
    {
      v15 = (BytePtr + 6);
      while (*v15++)
      {
        v13 = v15;
        if (v15 >= v12)
        {
          goto LABEL_22;
        }
      }

      v17 = v13 + 1;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (Length < 8)
  {
LABEL_22:
    FigISOUserDataCreateItemTextFromLocation_cold_1(&v27);
    return v27;
  }

  while (*v13 || v13[1])
  {
    v13 += 2;
    if (v13 >= v12 - 1)
    {
      goto LABEL_22;
    }
  }

  v17 = v13 + 2;
LABEL_25:
  if ((v17 + 12) > v12)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_2(&v27);
    return v27;
  }

  *a3 = CFStringCreateWithFormat(a1, 0, @"%+08.4f%+09.4f%+08.3f/", vcvts_n_f32_s32(bswap32(*(v17 + 5)), 0x10uLL), vcvts_n_f32_s32(bswap32(*(v17 + 1)), 0x10uLL), vcvts_n_f32_s32(bswap32(*(v17 + 9)), 0x10uLL));
LABEL_27:
  if (!a4)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v19 = result;
    v20 = FigCFLocaleCreateWithMovieLangCode();
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(v19, @"locale", v20);
      CFRelease(v21);
    }

    v22 = FigUserDataExtendedLanguageTagCreateWithMovieLangCode(a1, v11);
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v19, @"extendedLanguageTag", v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v19, @"languageCode", v24);
      CFRelease(v25);
    }

    result = 0;
    *a4 = v19;
  }

  return result;
}

CFMutableDictionaryRef FigISOUserDataCreateItemTextFromData(const __CFAllocator *a1, CFDataRef theData, CFStringEncoding *a3, unint64_t a4, unint64_t a5)
{
  if (!theData)
  {
    FigISOUserDataCreateItemTextFromData_cold_9(&v29);
    return v29;
  }

  if (!(a4 | a5))
  {
    FigISOUserDataCreateItemTextFromData_cold_8(&v29);
    return v29;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 5)
  {
    FigISOUserDataCreateItemTextFromData_cold_7(&v29);
    return v29;
  }

  v12 = bswap32(*(BytePtr + 2));
  v13 = HIWORD(v12);
  valuePtr = HIWORD(v12);
  if (HIWORD(v12) <= 0x3FFu)
  {
    FigISOUserDataCreateItemTextFromData_cold_6(&v29);
    return v29;
  }

  v14 = Length - 8;
  if (Length < 8)
  {
    if (Length != 7)
    {
      FigISOUserDataCreateItemTextFromData_cold_1(&v29);
      return v29;
    }

    goto LABEL_12;
  }

  v15 = BytePtr + 6;
  v16 = BytePtr[6];
  if (v16 == 255)
  {
    if (BytePtr[7] == 254)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (v16 != 254 || BytePtr[7] != 255)
  {
LABEL_12:
    v14 = Length - 7;
    if (!BytePtr[Length - 1])
    {
      v17 = 0;
      v18 = 134217984;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    FigISOUserDataCreateItemTextFromData_cold_4(&v29);
    return v29;
  }

LABEL_30:
  if (Length <= 9)
  {
    FigISOUserDataCreateItemTextFromData_cold_3(&v29);
    return v29;
  }

  if (v15[Length - 7] || v15[v14])
  {
    FigISOUserDataCreateItemTextFromData_cold_2(&v29);
    return v29;
  }

  v17 = 1;
  v18 = 256;
  if (a3)
  {
LABEL_14:
    *a3 = v18;
  }

LABEL_15:
  if (!a4)
  {
    goto LABEL_18;
  }

  v19 = CFStringCreateWithBytes(a1, BytePtr + 6, v14, v18, v17);
  if (!v19)
  {
    FigISOUserDataCreateItemTextFromData_cold_5(&v29);
    return v29;
  }

  *a4 = v19;
LABEL_18:
  if (!a5)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v21 = result;
    v22 = FigCFLocaleCreateWithMovieLangCode();
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v21, @"locale", v22);
      CFRelease(v23);
    }

    v24 = FigUserDataExtendedLanguageTagCreateWithMovieLangCode(a1, v13);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v21, @"extendedLanguageTag", v24);
      CFRelease(v25);
    }

    v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    if (v26)
    {
      v27 = v26;
      CFDictionaryAddValue(v21, @"languageCode", v26);
      CFRelease(v27);
    }

    result = 0;
    *a5 = v21;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromRecordingYear(const __CFData *a1, CFNumberRef *a2)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (BytePtr && Length == 6)
    {
      valuePtr = bswap32(*(BytePtr + 2)) >> 16;
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
      result = 0;
      *a2 = v6;
    }

    else
    {
      FigISOUserDataCreateItemFromRecordingYear_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromRecordingYear_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromDate(const __CFAllocator *a1, const __CFData *a2, CFStringRef *a3)
{
  if (a2)
  {
    v4 = CFStringCreateFromExternalRepresentation(a1, a2, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      result = 0;
      *a3 = v5;
    }

    else
    {
      FigISOUserDataCreateItemFromDate_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromDate_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromUserRating(const __CFData *a1, CFNumberRef *a2)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (BytePtr && Length == 8)
    {
      valuePtr = BytePtr[7];
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
      result = 0;
      *a2 = v6;
    }

    else
    {
      FigISOUserDataCreateItemFromUserRating_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromUserRating_cold_2(&v10);
    return v10;
  }

  return result;
}

__CFDictionary *FigISOUserDataCreateItemFromThumbnailData(const __CFAllocator *a1, CFDataRef theData, CFDataRef *a3, __CFDictionary **a4)
{
  if (!theData)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_4(&v12);
    return v12;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 7)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_3(&v12);
    return v12;
  }

  if (*(BytePtr + 1) != 1734701162)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_1(&v12);
    return v12;
  }

  if ((Length - 8) <= 0)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_2(&v12);
    return v12;
  }

  *a3 = CFDataCreate(a1, BytePtr + 8, Length - 8);
  if (!a4)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v11 = result;
    CFDictionaryAddValue(result, @"dataType", *MEMORY[0x1E6963808]);
    CFDictionaryAddValue(v11, @"dataTypeNamespace", @"com.apple.uti");
    result = 0;
    *a4 = v11;
  }

  return result;
}

CFLocaleIdentifier FigUserDataExtendedLanguageTagCreateWithMovieLangCode(const __CFAllocator *a1, unsigned int a2)
{
  value = 0;
  if (a2 == 0x7FFF)
  {
    return @"und";
  }

  if (a2 <= 0x3FF)
  {
    return CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(a1, a2, -1);
  }

  ISO639_1Mapping = FigMetadataGetISO639_1Mapping();
  if (!CFDictionaryGetValueIfPresent(ISO639_1Mapping, a2, &value))
  {
    ISO639_1NonCanonicalMapping = FigMetadataGetISO639_1NonCanonicalMapping();
    if (!CFDictionaryGetValueIfPresent(ISO639_1NonCanonicalMapping, a2, &value))
    {
      bytes[0] = (a2 >> 10) | 0x60;
      bytes[1] = (a2 >> 5) & 0x1F | 0x60;
      bytes[2] = a2 & 0x1F | 0x60;
      return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 3, 0x600u, 0);
    }
  }

  return value;
}

void ArrayUserDataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayUserDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)UserDataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, userdataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayUserDataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    if (*(DerivedStorage + 8))
    {
      v7 = &kFigMetadataFormat_QuickTimeUserData;
    }

    else
    {
      v7 = &kFigMetadataFormat_ISOUserData;
    }

    goto LABEL_7;
  }

  return 4294954512;
}

uint64_t ArrayUserDataCopyValue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = *(CMBaseObjectGetDerivedStorage() + 8);

  return UserDataCopyValueCommon(a1, v14, a2, a3, a4, a5, a6, a7);
}

const void *ArrayUserDataHasKey(uint64_t a1, const void *a2, const void *a3)
{
  cf = 0;
  v10 = 0;
  v11 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataHasKey_cold_3();
LABEL_15:
    a3 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    ArrayUserDataHasKey_cold_2();
    goto LABEL_9;
  }

  if (!a2)
  {
    ArrayUserDataHasKey_cold_1();
    goto LABEL_15;
  }

  v6 = DerivedStorage;
  v7 = FigUserDataCopyKeysInfoAsCFNumber(a2, a3, *(DerivedStorage + 8), &v10, &cf, &v11);
  v8 = cf;
  if (!v7)
  {
    a3 = FigMetadataArrayHasKey(*v6, v10, 0, cf, v11, *(&v11 + 1));
    v8 = cf;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  a3 = 0;
  if (cf)
  {
LABEL_8:
    CFRelease(v8);
  }

LABEL_9:
  if (v10)
  {
    CFRelease(v10);
  }

  return a3;
}

CFIndex ArrayUserDataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataGetKeyCount_cold_2();
    return 0;
  }

  v4 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (*(DerivedStorage + 8))
  {
    if (CFEqual(a2, @"udta"))
    {
      goto LABEL_7;
    }

    if (*(v4 + 8))
    {
      goto LABEL_10;
    }
  }

  if (!CFEqual(a2, @"uiso"))
  {
LABEL_10:
    ArrayUserDataGetKeyCount_cold_1();
    return 0;
  }

LABEL_7:
  if (*(v4 + 24))
  {
    return *(v4 + 16);
  }

  result = FigMetadataArrayGetKeyCount(*v4, 0);
  *(v4 + 16) = result;
  *(v4 + 24) = 1;
  return result;
}

uint64_t ArrayUserDataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataCopyKeyAtIndex_cold_4(&v12);
    return v12;
  }

  if (!a5)
  {
    ArrayUserDataCopyKeyAtIndex_cold_3(&v12);
    return v12;
  }

  v9 = DerivedStorage;
  if (a2)
  {
    if (!*(DerivedStorage + 8))
    {
      goto LABEL_7;
    }

    if (!CFEqual(a2, @"udta"))
    {
      if (*(v9 + 8))
      {
LABEL_13:
        ArrayUserDataCopyKeyAtIndex_cold_1(&v12);
        return v12;
      }

LABEL_7:
      if (CFEqual(a2, @"uiso"))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

LABEL_8:
  if (*(v9 + 24) && *(v9 + 16) <= a3)
  {
    ArrayUserDataCopyKeyAtIndex_cold_2(&v12);
    return v12;
  }

  v10 = *v9;

  return FigMetadataArrayCopyKeyAtIndex(v10, a3, 0, a5);
}

uint64_t ArrayUserDataGetItemCount(uint64_t a1, const void *a2, const void *a3)
{
  cf = 0;
  v11 = 0;
  v12 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataGetItemCount_cold_1();
    ItemCount = 0;
    goto LABEL_7;
  }

  v6 = DerivedStorage;
  v7 = FigUserDataCopyKeysInfoAsCFNumber(a2, a3, *(DerivedStorage + 8), &v11, &cf, &v12);
  v8 = cf;
  if (!v7)
  {
    ItemCount = FigMetadataArrayGetItemCount(*v6, v11, 0, cf, v12, *(&v12 + 1));
    v8 = cf;
    if (!cf)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  ItemCount = 0;
  if (cf)
  {
LABEL_6:
    CFRelease(v8);
  }

LABEL_7:
  if (v11)
  {
    CFRelease(v11);
  }

  return ItemCount;
}

uint64_t ArrayUserDataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, unint64_t a6, __CFDictionary **a7)
{
  cf = 0;
  v17 = 0;
  v18 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataCopyItemWithKeyAndIndex_cold_2(&v20);
LABEL_14:
    v15 = v20;
    goto LABEL_7;
  }

  if (!(a6 | a7))
  {
    ArrayUserDataCopyItemWithKeyAndIndex_cold_1(&v20);
    goto LABEL_14;
  }

  v13 = DerivedStorage;
  v14 = FigUserDataCopyKeysInfoAsCFNumber(a2, a3, *(DerivedStorage + 8), &v17, &cf, &v18);
  if (v14 == -12605)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
    if (!v14)
    {
      v15 = FigMetadataArrayCopyItemWithKeyAndIndex(*v13, v17, a4, 0, cf, v18, *(&v18 + 1), a6, a7);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

CFNumberRef FigUserDataCopyKeyAsCFNumber(unsigned int a1)
{
  valuePtr = a1;
  OSTypeKeyToCFNumberMapping = FigUserDataGetOSTypeKeyToCFNumberMapping();
  Value = CFDictionaryGetValue(OSTypeKeyToCFNumberMapping, a1);
  if (!Value)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  v4 = Value;
  CFRetain(Value);
  return v4;
}

CFNumberRef OUTLINED_FUNCTION_10_30(int a1, int a2, const void *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFAllocatorRef allocator)
{

  return CFNumberCreate(allocator, kCFNumberSInt32Type, a3);
}

uint64_t FAIGCommon_createRenderPipelineOptions(const __CFAllocator *a1, CFTypeRef cf, int a3, CMTime *a4, CMTime *a5, CFDictionaryRef *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *keys = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *values = 0u;
  v20 = 0u;
  if (cf)
  {
    keys[0] = @"FormatDescription";
    values[0] = CFRetain(cf);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if ((a4->flags & 0x1D) == 1)
  {
    *(keys | (8 * v11)) = @"PreparedQueueLowWaterLevel";
    v17 = *a4;
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v11++ & 1))) = CMTimeCopyAsDictionary(&v17, a1);
  }

  if ((a5->flags & 0x1D) == 1)
  {
    keys[v11] = @"PreparedQueueHighWaterLevel";
    v17 = *a5;
    values[v11++] = CMTimeCopyAsDictionary(&v17, a1);
  }

  if (a3)
  {
    keys[v11] = @"EarlyDumpStage";
    values[v11] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v12 = v11 + 1;
    v13 = CFDictionaryCreate(a1, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v12 = v11;
    v13 = CFDictionaryCreate(a1, keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v14 = values;
  do
  {
    v15 = *v14++;
    CFRelease(v15);
    --v12;
  }

  while (v12);
LABEL_13:
  *a6 = v13;
  return 0;
}

uint64_t FAIGCommon_createImageRequest(__int128 *a1, const void *a2, const void *a3, int a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040DCD8CE1AuLL);
  if (v10)
  {
    v11 = v10;
    v12 = *a1;
    *(v10 + 28) = *(a1 + 2);
    *(v10 + 12) = v12;
    if (a2)
    {
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 5) = v13;
    if (a3)
    {
      v14 = CFRetain(a3);
    }

    else
    {
      v14 = 0;
    }

    result = 0;
    *(v11 + 6) = v14;
    *(v11 + 14) = a4;
    *a5 = v11;
  }

  else
  {
    FAIGCommon_createImageRequest_cold_1(&v16);
    return v16;
  }

  return result;
}

void FAIGCommon_releaseImageRequest(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      CFRelease(v2);
      a1[5] = 0;
    }

    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

__n128 FAIGCommon_decodedImageBecameAvailable(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  *(a4 + 24) = a2[1].n128_u64[0];
  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  return result;
}

void FAIGCommon_handleRenderPipelineDecodeErrorNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  *(a2 + 32) = -12911;
  v5 = (a2 + 32);
  if (a5)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a5))
    {
      Value = CFDictionaryGetValue(a5, @"OSStatus");
      if (Value)
      {
        v9 = Value;
        v10 = CFNumberGetTypeID();
        if (v10 == CFGetTypeID(v9))
        {

          CFNumberGetValue(v9, kCFNumberSInt32Type, v5);
        }
      }
    }
  }
}

uint64_t FAIGCommon_handleBufferConsumedNotification(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigCFEqual();
  if (result)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 8) = -12911;
    }

    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t FAIGCommon_getOutputImagePropertiesForImageRetrieval(CMVideoFormatDescriptionRef videoDesc, CFDictionaryRef theDict, int a3, _DWORD *a4, CFDictionaryRef *a5)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v12 = 1;
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, 1u, 1u);
    height = PresentationDimensions.height;
    width = PresentationDimensions.width;
    valuePtr = PresentationDimensions.height;
    v27 = PresentationDimensions.width;
    v13 = 1;
    if (!a4)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(theDict, @"ApertureMode");
  if (Value)
  {
    v11 = Value;
    v12 = CFEqual(Value, @"CleanAperture");
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = CFEqual(v11, @"ProductionAperture") != 0;
    }
  }

  else
  {
    v13 = 1;
    v12 = 1;
  }

  v17 = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, v13, v12);
  valuePtr = v17.height;
  v27 = v17.width;
  v18 = CFDictionaryGetValue(theDict, @"MaxWidth");
  if (v18)
  {
    if (!a3)
    {
      CFNumberGetValue(v18, kCFNumberCGFloatType, &v27);
      v19 = CFDictionaryGetValue(theDict, @"MaxHeight");
      if (!v19)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    CFNumberGetValue(v18, kCFNumberCGFloatType, &valuePtr);
  }

  v19 = CFDictionaryGetValue(theDict, @"MaxHeight");
  if (!v19)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_16:
    p_valuePtr = &valuePtr;
    goto LABEL_17;
  }

  p_valuePtr = &v27;
LABEL_17:
  CFNumberGetValue(v19, kCFNumberCGFloatType, p_valuePtr);
LABEL_18:
  height = valuePtr;
  width = v27;
  if (v27 < v17.width || valuePtr < v17.height)
  {
    v22 = v27 / v17.width;
    v23 = valuePtr / v17.height;
    if (v22 >= v23)
    {
      width = v17.width * v23;
      v27 = width;
      if (!a4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      height = v17.height * v22;
      valuePtr = height;
      if (!a4)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  valuePtr = v17.height;
  v27 = v17.width;
  height = v17.height;
  width = v17.width;
  if (a4)
  {
LABEL_27:
    *a4 = width;
    a4[1] = height;
  }

LABEL_28:
  if (a5 && v12 && v13)
  {
    v24 = *MEMORY[0x1E6983E30];
    values = *MEMORY[0x1E69840E0];
    keys[0] = v24;
    *a5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return 0;
}

void FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval(_DWORD *a1, uint64_t a2, CFDictionaryRef *a3, CFTypeRef cf, _BYTE *a5)
{
  if (a1)
  {
    v8 = *a1 != a2 || a1[1] != HIDWORD(a2);
    *a1 = a2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a3;
  v10 = cf | *a3;
  if (v10)
  {
    if (cf && v9)
    {
      v11 = *MEMORY[0x1E6983E30];
      CFDictionaryGetValue(*a3, *MEMORY[0x1E6983E30]);
      CFDictionaryGetValue(cf, v11);
      if (FigCFEqual())
      {
        LOBYTE(v10) = 0;
        goto LABEL_16;
      }

      v9 = *a3;
      *a3 = cf;
    }

    else
    {
      *a3 = cf;
      if (!cf)
      {
        if (!v9)
        {
LABEL_15:
          LOBYTE(v10) = 1;
          goto LABEL_16;
        }

LABEL_14:
        CFRelease(v9);
        goto LABEL_15;
      }
    }

    CFRetain(cf);
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  if (a5)
  {
    *a5 = v8 | v10;
  }
}

BOOL FAIGCommon_standardDynamicRangeIsPreferred(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  FigCFDictionaryGetStringValue();
  return FigCFEqual() == 0;
}

uint64_t RegisterFigAssetImageGeneratorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetImageGeneratorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetImageGeneratorGetClassID_sRegisterFigAssetImageGeneratorBaseTypeOnce, RegisterFigAssetImageGeneratorBaseType);

  return CMBaseClassGetCFTypeID();
}

void FigActivitySchedulerCreateForCFRunLoop(const __CFAllocator *a1, const void *a2, void *a3)
{
  v13 = 0;
  if (!a2)
  {
    v10 = v3;
    v11 = 189;
LABEL_9:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v11, v10);
    return;
  }

  if (!a3)
  {
    v10 = v3;
    v11 = 191;
    goto LABEL_9;
  }

  memset(&v12, 0, sizeof(v12));
  FigActivitySchedulerGetClassID();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    CFRetain(a2);
    v8 = FigSimpleMutexCreate();
    *(DerivedStorage + 40) = v8;
    if (v8)
    {
      v12.version = 0;
      v12.info = DerivedStorage;
      memset(&v12.retain, 0, 56);
      v12.perform = activityOnRunLoop_perform;
      v9 = CFRunLoopSourceCreate(a1, 0, &v12);
      *(DerivedStorage + 16) = v9;
      if (v9)
      {
        CFRunLoopAddSource(*(DerivedStorage + 8), v9, *MEMORY[0x1E695E8E0]);
        CFRunLoopAddSource(*(DerivedStorage + 8), *(DerivedStorage + 16), *MEMORY[0x1E695E8D0]);
        *a3 = v13;
        return;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12.version, LODWORD(v12.info), LODWORD(v12.retain));
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

_BYTE *activityOnRunLoop_perform(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      FigSimpleMutexLock();
      v2 = *(v1 + 4);
      if (v2)
      {
        v2(*(v1 + 3));
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t activityOnRunLoop_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  *DerivedStorage = 1;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRunLoopRemoveSource(*(DerivedStorage + 8), v3, *MEMORY[0x1E695E8E0]);
    CFRunLoopRemoveSource(*(v2 + 8), *(v2 + 16), *MEMORY[0x1E695E8D0]);
    CFRunLoopSourceInvalidate(*(v2 + 16));
    CFRelease(*(v2 + 16));
    *(v2 + 16) = 0;
  }

  if (*(v2 + 40))
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    *(v2 + 40) = 0;
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 8) = 0;
  }

  return 0;
}

uint64_t activityOnRunLoop_finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *activityOnRunLoop_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnRunLoop %p>", a1);
  return Mutable;
}

void activityOnRunLoop_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 119, v3);
  }

  else
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    *(v7 + 3) = a3;
    *(v7 + 4) = a2;
    FigSimpleMutexUnlock();
  }
}

void activityOnRunLoop_triggerScheduling(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954511, "(Fig)", 132, v1);
  }

  else
  {
    v3 = *(DerivedStorage + 16);
    if (v3)
    {
      CFRunLoopSourceSignal(v3);
    }
  }
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  if (!a2)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_3(&v12);
    return v12;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_2(&v12);
    return v12;
  }

  if (!a5)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_1(&v12);
    return v12;
  }

  FigMetadataReaderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = CFRetain(a2);
    DerivedStorage[1] = CFRetain(a3);
    *DerivedStorage = CFRetain(a4);
    *a5 = 0;
  }

  return v9;
}

void GenericMetadataArrayFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *GenericMetadataArrayCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigGenericMetadataArrayReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_1, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t GenericMetadataArrayCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      if (CFEqual(a2, @"complete"))
      {
        Copy = CFRetain(*MEMORY[0x1E695E4D0]);
      }

      else
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        Copy = CFStringCreateCopy(a3, *(v8 + 8));
      }

      v10 = Copy;
      result = 0;
      *a4 = v10;
    }

    else
    {
      GenericMetadataArrayCopyProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    GenericMetadataArrayCopyProperty_cold_2(&v13);
    return v13;
  }

  return result;
}

void metadataPropertiesCallback_1(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
      }
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (basic type)\n", a2);
  }
}

uint64_t GenericMetadataArrayCopyValue(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (!a1)
  {
    GenericMetadataArrayCopyValue_cold_5(&cf);
LABEL_62:
    v33 = 0;
    v32 = cf;
    goto LABEL_41;
  }

  v8 = a3;
  if (!a3)
  {
    GenericMetadataArrayCopyValue_cold_4(&cf);
    goto LABEL_62;
  }

  if (!theString)
  {
    GenericMetadataArrayCopyValue_cold_3(&cf);
    goto LABEL_62;
  }

  if (!a6)
  {
    GenericMetadataArrayCopyValue_cold_2(&cf);
    goto LABEL_62;
  }

  v13 = a1;
  if (CFStringGetLength(theString) != 4)
  {
    GenericMetadataArrayCopyValue_cold_1(&cf);
    goto LABEL_62;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v45 = v14(v13, theString, v8), v45 < 1))
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_41;
  }

  v37 = a6;
  v38 = a7;
  v15 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *MEMORY[0x1E695E6D0];
  key = *MEMORY[0x1E695E6F0];
  v39 = a5;
  v16 = 1;
  v40 = v13;
  while (1)
  {
    v46 = 0;
    cf = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      v32 = -12782;
      goto LABEL_52;
    }

    v18 = v17(v13, theString, v8, v16 - 1, a5, &cf, &v46);
    if (v18)
    {
      break;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      v19 = v15;
      v20 = v8;
      v21 = a4;
      v22 = v46;
      v23 = CFLocaleCopyCurrent();
      Value = CFLocaleGetValue(v23, key);
      v25 = CFLocaleGetValue(v23, v43);
      if (v22 && (v26 = v25, (v27 = CFDictionaryGetValue(v22, @"locale")) != 0))
      {
        v28 = v27;
        v29 = CFLocaleGetValue(v27, key);
        v30 = 0;
        if (v29 && Value)
        {
          v30 = CFStringCompare(v29, Value, 0) == kCFCompareEqualTo;
        }

        v31 = CFLocaleGetValue(v28, v43);
        if (v31)
        {
          v8 = v20;
          v15 = v19;
          if (v26 && CFStringCompare(v31, v26, 0) == kCFCompareEqualTo)
          {
            ++v30;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v30 = 0;
      }

      v8 = v20;
      v15 = v19;
LABEL_25:
      v13 = v40;
      a4 = v21;
      if (v23)
      {
        CFRelease(v23);
      }

      a5 = v39;
      if (v30 >= v15)
      {
        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        v15 = v30 + 1;
        v41 = CFRetain(cf);
        v42 = CFRetain(v46);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v46)
    {
      CFRelease(v46);
    }

    v32 = 0;
    if (v16 < v45)
    {
      ++v16;
      if (v15 < 3)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  v32 = v18;
LABEL_52:
  v33 = v41 != 0;
  if (v41 && (*v37 = v41, v38))
  {
    *v38 = v42;
    v33 = 1;
  }

  else if (v42)
  {
    CFRelease(v42);
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a4)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t GenericMetadataArrayHasKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    GenericMetadataArrayHasKey_cold_2(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v15, v16, SHIDWORD(v16), vars0);
    return 0;
  }

  if (!a3)
  {
    GenericMetadataArrayHasKey_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v15, v16, SHIDWORD(v16), vars0);
    return 0;
  }

  v13 = *(DerivedStorage + 16);

  return FigMetadataArrayHasKey(v13, a3, a2, 0, 0, 0);
}

CFIndex GenericMetadataArrayGetKeyCount(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Length = CFStringGetLength(a2);
    if (Length == 4)
    {
      v12 = CFEqual(a2, *DerivedStorage);
      if (v12)
      {
        goto LABEL_4;
      }

      GenericMetadataArrayGetKeyCount_cold_2(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, SHIDWORD(v23), vars0);
    }

    else
    {
      GenericMetadataArrayGetKeyCount_cold_1(Length, v5, v6, v7, v8, v9, v10, v11, v22, v23, SHIDWORD(v23), vars0);
    }

    return 0;
  }

LABEL_4:
  v20 = *(DerivedStorage + 16);

  return FigMetadataArrayGetKeyCount(v20, a2);
}

uint64_t GenericMetadataArrayCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (CFStringGetLength(a2) != 4)
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_1(&v12);
    return v12;
  }

  if (!CFEqual(a2, *v9))
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_2(&v13);
    return v13;
  }

  else
  {
LABEL_5:
    v10 = *(v9 + 16);

    return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
  }
}

uint64_t GenericMetadataArrayGetItemCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 && a3)
  {
    GenericMetadataArrayGetItemCount_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v15, v16, SHIDWORD(v16), vars0);
    return 0;
  }

  else
  {
    v13 = *(DerivedStorage + 16);

    return FigMetadataArrayGetItemCount(v13, a3, a2, 0, 0, 0);
  }
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  if (a6 | a7)
  {
    if (!a2 && a3)
    {
      GenericMetadataArrayCopyItemWithKeyAndIndex_cold_3(&v17);
    }

    else
    {
      v13 = FigMetadataArrayCopyItemWithKeyAndIndex(*(DerivedStorage + 16), a3, a4, a2, 0, 0, 0, &cf, &v15);
      if (a6)
      {
        if (!cf)
        {
          GenericMetadataArrayCopyItemWithKeyAndIndex_cold_1(&v17);
          goto LABEL_19;
        }

        *a6 = CFRetain(cf);
      }

      if (!a7)
      {
        goto LABEL_10;
      }

      if (v15)
      {
        *a7 = CFRetain(v15);
        goto LABEL_10;
      }

      GenericMetadataArrayCopyItemWithKeyAndIndex_cold_2(&v17);
    }
  }

  else
  {
    GenericMetadataArrayCopyItemWithKeyAndIndex_cold_4(&v17);
  }

LABEL_19:
  v13 = v17;
LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

CFArrayRef playeroverlap_copyPendingArray(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 40);
  v2 = *MEMORY[0x1E695E480];

  return CFArrayCreateCopy(v2, v1);
}

CFIndex playeroverlap_playQueueCountTest(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(DerivedStorage[3]);
  v3 = CFArrayGetCount(DerivedStorage[4]) + Count;
  return v3 + CFArrayGetCount(DerivedStorage[5]);
}

BOOL playeroverlap_hasAdvanceTimerTest(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigPlaybackTimerIsScheduled(v1);
}

void FigPlayerOverlapCreateWithOptions(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        FigPlayerGetClassID();
        if (CMDerivedObjectCreate())
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
        }

        else
        {
          FigNote_AllowInternalDefaultLogs();
          fig_note_initialize_category_with_default_work_cf();
          fig_note_initialize_category_with_default_work_cf();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *DerivedStorage = 0;
          *(DerivedStorage + 129) = 0;
          if (a4 && FigCFDictionaryGetStringIfPresent())
          {
            CFStringGetCString(0, (DerivedStorage + 129), 16, 0x600u);
          }

          if (!playeroverlap_setTheSameDispatchQueueOnSubPlayers(a2, a3))
          {
            *(DerivedStorage + 4) = 0;
            *(DerivedStorage + 8) = a2;
            CFRetain(a2);
            *(DerivedStorage + 16) = a3;
            CFRetain(a3);
            v12 = MEMORY[0x1E695E9C0];
            *(DerivedStorage + 24) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
            *(DerivedStorage + 32) = CFArrayCreateMutable(a1, 0, v12);
            *(DerivedStorage + 40) = CFArrayCreateMutable(a1, 0, v12);
            *(DerivedStorage + 48) = FigDispatchQueueCreateWithPriority();
            *(DerivedStorage + 88) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
            *(DerivedStorage + 96) = FigSimpleMutexCreate();
            if (!FigPlaybackTimerCreate((DerivedStorage + 64)) && !FigPlaybackTimerCreate((DerivedStorage + 72)))
            {
              FigCFDictionaryGetBooleanIfPresent();
              CMNotificationCenterGetDefaultLocalCenter();
              if (!FigNotificationCenterAddWeakListener())
              {
                CMNotificationCenterGetDefaultLocalCenter();
                if (!FigNotificationCenterAddWeakListener())
                {
                  if (dword_1EAF17080)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  *a5 = 0;
                }
              }
            }
          }
        }

        return;
      }

      v14 = qword_1EAF17078;
      v15 = v5;
      v16 = 3110;
    }

    else
    {
      v14 = qword_1EAF17078;
      v15 = v5;
      v16 = 3106;
    }
  }

  else
  {
    v14 = qword_1EAF17078;
    v15 = v5;
    v16 = 3102;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954516, "<<<< FigPlayerOverlap >>>>", v16, v15);
}

void playeroverlap_subPlayerNotificationWeakCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v9)
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 8 * *(DerivedStorage + 4) + 8) != a4)
    {
      return;
    }

    if (CFEqual(a3, @"CurrentItemDidChange"))
    {
      CFDictionaryGetValue(a5, @"ReasonForCurrentItemDidChange");
      if (FigCFEqual() || FigCFEqual())
      {
        if (playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a2))
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (FigCFEqual())
      {
        v12 = CMBaseObjectGetDerivedStorage();
        if (FigPlaybackTimerIsScheduled(*(v12 + 64)))
        {
          playeroverlap_cancelScheduledOverlap(a2);
        }
      }
    }

    if (CFEqual(a3, @"PlaybackStateDidChange"))
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    if (FigCFEqual())
    {
      CFDictionaryGetValue(a5, @"ReasonForCurrentItemDidChange");
      v13 = CMBaseObjectGetDerivedStorage();
      if (*(v13 + 80) && (v14 = v13, FigCFEqual()))
      {
        *(v14 + 80) = 0;
      }

      else if (FigCFEqual())
      {
        return;
      }
    }

    playeroverlap_dispatchAsyncPostNotification(a2, 0, a3, a5);
  }
}

uint64_t playeroverlap_dispatchAsyncPostNotification(uint64_t DerivedStorage, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!DerivedStorage)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (qword_1ED4CAA08 != -1)
  {
    playeroverlap_dispatchAsyncPostNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

const void *playeroverlap_itemAtIndex(uint64_t a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 8 * *(DerivedStorage + 4) + 24));
  v5 = a2 - Count;
  if (a2 >= Count)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v8 + 4);
    v10 = __OFADD__(v9++, 1);
    v11 = (v9 < 0) ^ v10;
    v12 = v9 & 1;
    if (v11)
    {
      v12 = -v12;
    }

    v13 = CFArrayGetCount(*(v8 + 8 * v12 + 24));
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      v14 = CMBaseObjectGetDerivedStorage();
      v15 = *(v14 + 4);
      v10 = __OFADD__(v15++, 1);
      v11 = (v15 < 0) ^ v10;
      v16 = v15 & 1;
      if (v11)
      {
        v16 = -v16;
      }

      CFArrayGetValueAtIndex(*(v14 + 8 * v16 + 24), 0);
      v13 = 0;
    }

    else if (v5 < v13)
    {
      v17 = CMBaseObjectGetDerivedStorage();
      v18 = *(v17 + 4);
      v10 = __OFADD__(v18++, 1);
      v11 = (v18 < 0) ^ v10;
      v19 = v18 & 1;
      if (v11)
      {
        v19 = -v19;
      }

      v7 = (v17 + 8 * v19 + 24);
      a2 = v5;
      goto LABEL_14;
    }

    a2 = v5 - v13;
    v7 = (CMBaseObjectGetDerivedStorage() + 40);
    if (a2 >= CFArrayGetCount(*v7))
    {
      return 0;
    }
  }

  else
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = (v6 + 8 * *(v6 + 4) + 24);
  }

LABEL_14:
  v20 = *v7;

  return CFArrayGetValueAtIndex(v20, a2);
}

CFIndex playeroverlap_playQueueCount(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    Count = 0;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 4);
    v4 = __OFADD__(v3++, 1);
    v5 = (v3 < 0) ^ v4;
    v6 = v3 & 1;
    if (v5)
    {
      v6 = -v6;
    }

    Count = CFArrayGetCount(*(DerivedStorage + 8 * v6 + 24));
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CFArrayGetCount(*(v7 + 8 * *(v7 + 4) + 24));
  v9 = CMBaseObjectGetDerivedStorage();
  return v8 + Count + CFArrayGetCount(*(v9 + 40));
}

BOOL itemoverlap_hasAdvanceTime(_BOOL8 result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((DerivedStorage[1].flags & 0x1D) == 1)
    {
      time1 = DerivedStorage[1];
      v2 = **&MEMORY[0x1E6960CC0];
      return CMTimeCompare(&time1, &v2) > 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t itemoverlap_addTimebaseListener(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v2 = (DerivedStorage + 96);
  if (*(DerivedStorage + 96))
  {
    return 0;
  }

  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"Timebase", *MEMORY[0x1E695E480], DerivedStorage + 96);
    if (!v8)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v9 = FigNotificationCenterAddWeakListener();
      v3 = v9;
      if (!v9)
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(*(DerivedStorage + 96));
        *(DerivedStorage + 104) = EffectiveRate;
        return v3;
      }

      itemoverlap_addTimebaseListener_cold_1(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, SHIDWORD(v19), v20);
      goto LABEL_10;
    }

    v3 = v8;
  }

  else
  {
    v3 = 4294954514;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
LABEL_10:
  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }

  return v3;
}

uint64_t playeroverlap_scheduleAdvanceTimerAndAnchorTime(void *a1)
{
  v93 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = playeroverlap_itemAtIndex(a1, 0);
  v5 = CMBaseObjectGetDerivedStorage();
  v71 = 0;
  v70 = 0.0;
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(v6 + 8 * *(v6 + 4) + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    value_low = 4294954514;
LABEL_26:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17078, value_low, "<<<< FigPlayerOverlap >>>>", 1570, v1);
    goto LABEL_29;
  }

  v9 = v8(v7, &v70);
  if (v9)
  {
    value_low = v9;
    goto LABEL_26;
  }

  FigPlaybackItemGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    value_low = 4294954514;
LABEL_28:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17078, value_low, "<<<< FigPlayerOverlap >>>>", 1575, v1);
    goto LABEL_29;
  }

  v13 = v12(v11, @"Timebase", *MEMORY[0x1E695E480], &v71);
  if (v13)
  {
    value_low = v13;
    goto LABEL_28;
  }

  v14 = *(DerivedStorage + 64);
  v15 = *(DerivedStorage + 48);
  time = v5[1];
  v17 = FigPlaybackTimerScheduleForTimebaseTime(v14, v71, v15, a1, playeroverlap_advanceTimeReached, &time);
  if (v16)
  {
    value_low = v16;
    playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_1(v17);
  }

  else
  {
    memset(&v69, 0, sizeof(v69));
    v18 = v71;
    HostTimeClock = CMClockGetHostTimeClock();
    time = v5[1];
    CMSyncConvertTime(&v69, &time, v18, HostTimeClock);
    if ((v69.flags & 0x1D) == 1)
    {
      memset(&v68, 0, sizeof(v68));
      v20 = CMClockGetHostTimeClock();
      CMClockGetTime(&v68, v20);
      time = v69;
      time2 = v68;
      v21 = CMTimeCompare(&time, &time2);
      v22 = MEMORY[0x1E6960C70];
      if (v21 < 0)
      {
        v69 = **&MEMORY[0x1E6960C70];
      }

      v23 = playeroverlap_itemAtIndex(a1, 1);
      v24 = playeroverlap_setOverlapRangeProperty(a1, v4, v23);
      if (v24)
      {
        value_low = v24;
      }

      else
      {
        *&v67.value = *v22;
        v62 = *&v67.value;
        v25 = *(v22 + 16);
        v67.epoch = v25;
        itemoverlap_GetCurrentTimeInPlayerQueue(v23, &v67);
        if (v26)
        {
          *&v67.value = v62;
          v67.epoch = v25;
        }

        v27 = CMBaseObjectGetDerivedStorage();
        v28 = *(v27 + 4);
        v29 = __OFADD__(v28++, 1);
        v30 = (v28 < 0) ^ v29;
        v31 = v28 & 1;
        if (v30)
        {
          v31 = -v31;
        }

        v32 = *(v27 + 8 * v31 + 8);
        v33 = v70;
        rhs = v67;
        v65 = v69;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v34)
        {
          time = rhs;
          time2 = v65;
          v35 = v34(v32, &time, &time2, 0, v33);
          if (!v35)
          {
            *&v64.value = v62;
            v64.epoch = v25;
            *&v63.value = v62;
            v63.epoch = v25;
            v36 = CMTimebaseCopySourceClock(v71);
            v37 = CMClockGetHostTimeClock();
            time = v69;
            CMSyncConvertTime(&v64, &time, v37, v36);
            CMClockGetTime(&v63, v36);
            if (v36)
            {
              CFRelease(v36);
            }

            if (dword_1EAF17080)
            {
              LODWORD(v65.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v65.value;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v40 = value;
              }

              else
              {
                v40 = value & 0xFFFFFFFE;
              }

              if (v40)
              {
                if (a1)
                {
                  v41 = (CMBaseObjectGetDerivedStorage() + 129);
                }

                else
                {
                  v41 = "";
                }

                time = v5[1];
                Seconds = CMTimeGetSeconds(&time);
                time = v69;
                v51 = CMTimeGetSeconds(&time);
                time = v68;
                v52 = CMTimeGetSeconds(&time);
                time2 = v69;
                rhs = v68;
                CMTimeSubtract(&time, &time2, &rhs);
                v53 = CMTimeGetSeconds(&time);
                time = v64;
                v54 = CMTimeGetSeconds(&time);
                time = v63;
                v55 = CMTimeGetSeconds(&time);
                time2 = v64;
                rhs = v63;
                CMTimeSubtract(&time, &time2, &rhs);
                v56 = CMTimeGetSeconds(&time);
                v57 = CMBaseObjectGetDerivedStorage();
                v58 = *(v57 + 4);
                v29 = __OFADD__(v58++, 1);
                v30 = (v58 < 0) ^ v29;
                v59 = v58 & 1;
                if (v30)
                {
                  v59 = -v59;
                }

                v60 = *(v57 + 8 * v59 + 8);
                CMTimebaseGetTime(&time, v71);
                v61 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136317954;
                *(&time2.value + 4) = "playeroverlap_scheduleAdvanceTimerAndAnchorTime";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = a1;
                HIWORD(time2.epoch) = 2082;
                v73 = v41;
                v74 = 2048;
                v75 = Seconds;
                v76 = 2048;
                v77 = v51;
                v78 = 2048;
                v79 = v52;
                v80 = 2048;
                v81 = v53;
                v82 = 2048;
                v83 = v54;
                v84 = 2048;
                v85 = v55;
                v86 = 2048;
                v87 = v56;
                v88 = 2048;
                v89 = v60;
                v90 = 2048;
                v91 = v61;
                _os_log_send_and_compose_impl(v40, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] success, advance time %1.3f set as anchor time %1.3f (now %1.3f + %1.3f) (source clock %1.3f = now %1.3f + %1.3f) on sub-player %p, outro timebase time %1.3f.", &time2, 122);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_43;
          }

          value_low = v35;
        }

        else
        {
          value_low = 4294954514;
        }

        playeroverlap_resetOverlapRangeProperty(a1);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17078, value_low, "<<<< FigPlayerOverlap >>>>", 1628, v1);
      }
    }

    else
    {
      if (playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_2(&time))
      {
LABEL_43:
        value_low = 0;
        goto LABEL_34;
      }

      value_low = LODWORD(time.value);
    }
  }

LABEL_29:
  playeroverlap_removeAdvanceTimer(a1);
  v43 = CMBaseObjectGetDerivedStorage();
  v44 = *(v43 + 4);
  v29 = __OFADD__(v44++, 1);
  v30 = (v44 < 0) ^ v29;
  v45 = v44 & 1;
  if (v30)
  {
    v45 = -v45;
  }

  v46 = *(v43 + 8 * v45 + 8);
  v47 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v47 || v47(v46, 0.0))
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(v65.value) = 0;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_34:
  if (v71)
  {
    CFRelease(v71);
  }

  return value_low;
}

void playeroverlap_timebaseNotificationWeakCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMTimebase *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    EffectiveRate = CMTimebaseGetEffectiveRate(a4);
    if (*(DerivedStorage + 104) != EffectiveRate)
    {
      v32 = 0;
      memset(&v31, 0, sizeof(v31));
      CMTimebaseGetTimeClampedAboveAnchorTime();
      memset(&v30, 0, sizeof(v30));
      HostTimeClock = CMClockGetHostTimeClock();
      memset(&time, 0, sizeof(time));
      CMSyncConvertTime(&v30, &time, a4, HostTimeClock);
      memset(&v29, 0, sizeof(v29));
      v10 = CMClockGetHostTimeClock();
      CMClockGetTime(&v29, v10);
      v28 = **&MEMORY[0x1E6960C70];
      v27 = v28;
      v11 = CMTimebaseCopySourceClock(a4);
      time = v31;
      CMSyncConvertTime(&v28, &time, a4, v11);
      CMClockGetTime(&v27, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      if (dword_1EAF17080)
      {
        *v26 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(CMBaseObjectGetDerivedStorage() + 56))
      {
        if (EffectiveRate != 0.0 && *(DerivedStorage + 104) == 0.0)
        {
          if (dword_1EAF17080)
          {
            LODWORD(rhs.value) = 0;
            v26[0] = OS_LOG_TYPE_DEFAULT;
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            v15 = v26[0];
            if (os_log_type_enabled(v13, v26[0]))
            {
              v16 = value;
            }

            else
            {
              v16 = value & 0xFFFFFFFE;
            }

            if (v16)
            {
              if (v7)
              {
                v23 = (CMBaseObjectGetDerivedStorage() + 129);
              }

              else
              {
                v23 = "";
              }

              LODWORD(lhs.value) = 136315650;
              *(&lhs.value + 4) = "playeroverlap_timebaseNotificationWeakCallback";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v7;
              HIWORD(lhs.epoch) = 2082;
              v35 = v23;
              _os_log_send_and_compose_impl(v16, 0, &time, 128, &dword_1962D5000, v13, v15, "<<<< FigPlayerOverlap >>>> %s: [player %p|%{public}s] Timebase rate changed from zero to non-zero during outro -- cancelling outro", &lhs, 32);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!playeroverlap_removeOutroItem(v7, 1))
          {
            playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v7);
          }
        }
      }

      else if (playeroverlap_itemAtIndex(v7, 0) == a2)
      {
        v17 = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v7);
        if (v17)
        {
          v18 = v17;
          LODWORD(rhs.value) = 0;
          v26[0] = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v20 = rhs.value;
          v21 = v26[0];
          if (os_log_type_enabled(v19, v26[0]))
          {
            v22 = v20;
          }

          else
          {
            v22 = v20 & 0xFFFFFFFE;
          }

          if (v22)
          {
            LODWORD(lhs.value) = 136315394;
            *(&lhs.value + 4) = "playeroverlap_timebaseNotificationWeakCallback";
            LOWORD(lhs.flags) = 1024;
            *(&lhs.flags + 2) = v18;
            _os_log_send_and_compose_impl(v22, 0, &time, 128, &dword_1962D5000, v19, v21, "<<<< FigPlayerOverlap >>>> %s: Failed to schedule overlap with error %d", &lhs, 18);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      *(DerivedStorage + 104) = EffectiveRate;
    }
  }
}

uint64_t playeroverlap_reInsertPendingQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v3, *(DerivedStorage + 40));
  CFArrayRemoveAllValues(*(DerivedStorage + 40));
  if (CFArrayGetCount(Copy) < 1)
  {
LABEL_5:
    v8 = 0;
    if (!Copy)
    {
      return v8;
    }

LABEL_6:
    CFRelease(Copy);
    return v8;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Copy, v5);
    v7 = playeroverlap_AppendToPlayQueueInPlayerQueue(a1, ValueAtIndex, 0);
    if (v7)
    {
      break;
    }

    if (CFArrayGetCount(Copy) <= ++v5)
    {
      goto LABEL_5;
    }
  }

  v8 = v7;
  if (Copy)
  {
    goto LABEL_6;
  }

  return v8;
}

void itemoverlap_addToBlockNextNotifications(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFSetAddValue(*(DerivedStorage + 80), a2);
}

uint64_t itemoverlap_findAndDiscardFromBlockNextNotifications(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFSetContainsValue(*(DerivedStorage + 80), a2);
  if (result)
  {
    if (dword_1EAF17080 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFSetRemoveValue(*(DerivedStorage + 80), a2);
    return 1;
  }

  return result;
}

BOOL playeroverlap_isPlayQueueFull(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, Count - 1);

  return itemoverlap_hasAdvanceTime(ValueAtIndex);
}

void playeroverlap_advanceTimeReached(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  playeroverlap_removeAdvanceTimer(a1);
  v2 = playeroverlap_itemAtIndex(a1, 0);
  if (dword_1EAF17080)
  {
    LODWORD(v37.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    CMBaseObjectGetDerivedStorage();
    LODWORD(v37.value) = 0;
    LOBYTE(type.value) = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  if (itemoverlap_hasAdvanceTime(v2))
  {
    v6 = 1;
  }

  else
  {
    if (dword_1EAF17080)
    {
      LODWORD(v37.value) = 0;
      LOBYTE(type.value) = 0;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 0;
  }

  if (!playeroverlap_itemAtIndex(a1, 1))
  {
    if (dword_1EAF17080)
    {
      LODWORD(v37.value) = 0;
      LOBYTE(type.value) = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 0;
  }

  if (!playeroverlap_isActionAtEnd(a1))
  {
    if (dword_1EAF17080)
    {
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_45;
  }

  if (!v6)
  {
LABEL_45:
    playeroverlap_advanceTimeReached_cold_1(a1);
    return;
  }

  v8 = playeroverlap_itemAtIndex(a1, 1);
  if (itemoverlap_addTimebaseListener(v8))
  {
    LODWORD(v37.value) = 0;
    LOBYTE(type.value) = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (itemoverlap_addTimebaseListener(v2))
  {
    LODWORD(v37.value) = 0;
    LOBYTE(type.value) = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    *(v12 + 104) = 1065353216;
  }

  cf = 0;
  v13 = *MEMORY[0x1E695E480];
  FigPlaybackItemGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"Timebase", v13, &cf);
    v17 = cf;
  }

  else
  {
    v17 = 0;
  }

  memset(&v37, 0, sizeof(v37));
  CMTimebaseGetTime(&v37, v17);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  memset(&type, 0, sizeof(type));
  if ((*(v12 + 144) & 0x1D) == 1)
  {
    lhs = v37;
    rhs = *(v12 + 132);
    CMTimeSubtract(&type, &lhs, &rhs);
  }

  else
  {
    type = v37;
  }

  v35 = **&MEMORY[0x1E6960C70];
  v30 = *&v35.value;
  epoch = v35.epoch;
  itemoverlap_GetCurrentTimeInPlayerQueue(v2, &v35);
  memset(&v34, 0, sizeof(v34));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v34, HostTimeClock);
  *&v33.value = v30;
  v33.epoch = epoch;
  v20 = CMTimebaseCopyUltimateSourceClock(cf);
  CMClockGetTime(&v33, v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (dword_1EAF17080)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  playeroverlap_dispatchAsyncPostNotification(0, v2, @"OverlappedPlaybackWillBegin", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v23 = CMBaseObjectGetDerivedStorage();
  v24 = *(v23 + 4);
  v25 = __OFADD__(v24++, 1);
  v26 = (v24 < 0) ^ v25;
  v27 = v24 & 1;
  if (v26)
  {
    v27 = -v27;
  }

  *(v23 + 4) = v27;
  playeroverlap_postUpdateActiveIndex(a1);
  *(DerivedStorage + 56) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  playeroverlap_dispatchAsyncPostNotification(0, v2, @"ItemStoppedBeingCurrent", 0);
  itemoverlap_addToBlockNextNotifications(v2, @"ItemStoppedBeingCurrent");
  playeroverlap_dispatchAsyncPostNotification(0, v8, @"ItemBecameCurrent", 0);
  playeroverlap_dispatchAsyncPostNotification(0, v2, @"ItemWasRemovedFromPlayQueue", 0);
  itemoverlap_addToBlockNextNotifications(v2, @"ItemWasRemovedFromPlayQueue");
  v28 = playeroverlap_createCurrentItemDidChangePayload(@"ReasonAdvanceForOverlappedPlayback");
  playeroverlap_dispatchAsyncPostNotification(a1, 0, @"CurrentItemDidChange", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  playeroverlap_maybeScheduleOverlappedPlaybackEndTime(a1, v2);
}

void itemoverlap_GetCurrentTimeInPlayerQueue(uint64_t a1, CMTime *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayerOverlap >>>>", 5737, v2);
  }

  else
  {
    v6 = *(CMBaseObjectGetDerivedStorage() + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v7 || v7(v6, a2))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else if (dword_1EAF17080)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

double playeroverlap_removeAdvanceTimer(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(v2 + 64)))
  {
    FigPlaybackTimerCancel(*(DerivedStorage + 64));
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t playeroverlap_postUpdateActiveIndex(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 120))
  {
    v2 = result;
    CMBaseObjectGetDerivedStorage();
    FigPlayerGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"VideoTargetArray", 0);
    }

    CMBaseObjectGetDerivedStorage();
    v6 = *MEMORY[0x1E695E4C0];
    FigPlayerGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, @"ShouldWaitForVideoTarget", v6);
    }

    CMBaseObjectGetDerivedStorage();
    v10 = *(v2 + 120);
    FigPlayerGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, @"VideoTargetArray", v10);
    }

    CMBaseObjectGetDerivedStorage();
    FigPlayerGetFigBaseObject();
    v15 = v14;
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 8);
    result = VTable + 8;
    v18 = *(v17 + 56);
    if (v18)
    {

      return v18(v15, @"ShouldWaitForVideoTarget", v6);
    }
  }

  return result;
}

__CFDictionary *playeroverlap_createCurrentItemDidChangePayload(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (Mutable)
  {
    if (a1)
    {
      CFDictionarySetValue(Mutable, @"ReasonForCurrentItemDidChange", a1);
    }
  }

  else
  {
    playeroverlap_createCurrentItemDidChangePayload_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), vars0);
  }

  return v10;
}

uint64_t playeroverlap_maybeScheduleOverlappedPlaybackEndTime(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  memset(&v18, 0, sizeof(v18));
  itemoverlap_getEffectiveOverlappedPlaybackEndTime(a2, &v18);
  if ((v18.flags & 0x1D) != 1)
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 4294954514;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_16;
  }

  v8 = v7(v6, @"Timebase", *MEMORY[0x1E695E480], &cf);
  if (v8)
  {
    v10 = v8;
    goto LABEL_7;
  }

  if (!FigPlaybackTimerIsScheduled(*(DerivedStorage + 72)) || (v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), v12 = FigPlaybackTimerCancel(*(DerivedStorage + 72)), !v12))
  {
    v13 = *(DerivedStorage + 72);
    v14 = *(DerivedStorage + 48);
    time = v18;
    FigPlaybackTimerScheduleForTimebaseTime(v13, cf, v14, a1, playeroverlap_overlappedPlaybackEndTimeReached, &time);
    if (!v12)
    {
      if (!dword_1EAF17080)
      {
LABEL_12:
        v10 = 0;
        goto LABEL_17;
      }

LABEL_11:
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }
  }

  v10 = v12;
  v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
LABEL_16:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

double playeroverlap_overlappedPlaybackEndTimeReached(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigPlaybackTimerCancel(*(DerivedStorage + 72));
  v4 = *(DerivedStorage + 56);
  if (!v4)
  {
    return playeroverlap_overlappedPlaybackEndTimeReached_cold_2();
  }

  playeroverlap_overlappedPlaybackEndTimeReached_cold_1(v4, a1);
  return result;
}

uint64_t playeroverlap_initNotificationQueueOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

void playeroverlap_Invalidate(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    dispatch_sync_f(*(DerivedStorage + 48), a1, playeroverlap_cancelOverlap_fun);
    FigSimpleMutexLock();
    CFSetApplyFunction(*(DerivedStorage + 88), itemoverlap_forEachItemInvalidate, 0);
    CFSetRemoveAllValues(*(DerivedStorage + 88));
    FigSimpleMutexUnlock();
    dispatch_sync_f(*(DerivedStorage + 48), a1, playeroverlap_flipInvalid);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(DerivedStorage + 8))
    {
      FigPlayerGetFigBaseObject();
      if (v5)
      {
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }
    }

    if (*(DerivedStorage + 16))
    {
      FigPlayerGetFigBaseObject();
      if (v8)
      {
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }
    }

    dispatch_sync_f(*(DerivedStorage + 48), 0, playeroverlap_noopToFlushTheQueue);
    CFArrayRemoveAllValues(*(DerivedStorage + 40));
    CFArrayRemoveAllValues(*(DerivedStorage + 24));
    CFArrayRemoveAllValues(*(DerivedStorage + 32));
    v11 = *(DerivedStorage + 112);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 112) = 0;
    }

    v12 = *(DerivedStorage + 120);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 120) = 0;
    }

    *(DerivedStorage + 4) = -1;
    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 56) = 0;
    }
  }
}

uint64_t playeroverlap_Finalize(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = atomic_load(DerivedStorage);
  if ((v4 & 1) == 0)
  {
    playeroverlap_Invalidate(a1);
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 24) = 0;
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

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 64) = 0;
  }

  v12 = *(DerivedStorage + 72);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 72) = 0;
  }

  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 88);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 88) = 0;
  }

  FigSimpleMutexUnlock();
  return FigSimpleMutexDestroy();
}

__CFString *playeroverlap_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = playeroverlap_itemAtIndex(a1, 0);
  v4 = playeroverlap_itemAtIndex(a1, 1);
  v5 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v5, 0);
  if (a1)
  {
    v7 = (CMBaseObjectGetDerivedStorage() + 129);
  }

  else
  {
    v7 = "";
  }

  v16 = v7;
  v8 = *(DerivedStorage + 8);
  v9 = *(DerivedStorage + 16);
  v10 = *(DerivedStorage + 4);
  if (v3)
  {
    v11 = (CMBaseObjectGetDerivedStorage() + 156);
    if (v4)
    {
LABEL_6:
      v12 = (CMBaseObjectGetDerivedStorage() + 156);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = "";
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v12 = "";
LABEL_9:
  v13 = *(DerivedStorage + 56);
  if (v13)
  {
    v14 = (CMBaseObjectGetDerivedStorage() + 156);
  }

  else
  {
    v14 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayerOverlap %p %s sub-players: [%p, %p] active index: %d, current item %p %s, next item %p %s, outro item %p %s>", a1, v16, v8, v9, v10, v3, v11, v4, v12, v13, v14);
  return Mutable;
}

void playeroverlap_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  v9 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v9)
  {
    v10 = qword_1EAF17078;
    v11 = v4;
    v12 = 3446;
LABEL_12:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayerOverlap >>>>", v12, v11);
    return;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v14 & 1) == 0)
    {
      context[3] = a4;
      context[4] = 0;
      context[0] = a1;
      context[1] = a3;
      context[2] = a2;
      dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyPropertyFromActiveSubPlayer_fun);
      return;
    }

    v10 = qword_1EAF17078;
    v11 = v4;
    v12 = 3368;
    goto LABEL_12;
  }

  if (FigCFEqual())
  {

    playeroverlap_copyVideoTargetArray(a1, a4);
  }

  else if (FigCFEqual())
  {

    playeroverlap_copyPerformanceHistoryArray(a1, a3, a4);
  }

  else if (!CFEqual(a2, @"FigAudioSession2"))
  {
    if (FigCFEqual())
    {

      playeroverlap_copyItemsToPrebuffer(a1, a4);
    }

    else if (FigCFEqual())
    {
      v15 = *(CMBaseObjectGetDerivedStorage() + 8);

      FPSupport_CreatePlayerTopology(a3, @"Overlap", v15, a4);
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      FigPlayerGetFigBaseObject();

      CMBaseObjectCopyProperty(v16, a2, a3, a4);
    }
  }
}

void playeroverlap_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {
    v8 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigPlayerOverlap >>>>", 3840, v3);
  }

  else
  {
    v9 = FigCFCopyCompactDescription();
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      CFRelease(v9);
    }

    FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, playeroverlap_handleSetProperty, 0, 0, 0);
  }
}

uint64_t playeroverlap_cancelOverlap_fun(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigPlaybackTimerIsScheduled(*(DerivedStorage + 64));
  if (result)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 4);
    v6 = __OFADD__(v5++, 1);
    v7 = (v5 < 0) ^ v6;
    v8 = v5 & 1;
    if (v7)
    {
      v8 = -v8;
    }

    v9 = *(v4 + 8 * v8 + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v10)
    {
      v10(v9, 0.0);
    }

    playeroverlap_removeAdvanceTimer(a1);
    if (playeroverlap_itemAtIndex(a1, 0))
    {
      CMBaseObjectGetDerivedStorage();
      FigPlaybackItemGetFigBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, @"OverlapRange", 0);
      }
    }

    result = playeroverlap_itemAtIndex(a1, 1);
    if (result)
    {
      CMBaseObjectGetDerivedStorage();
      FigPlaybackItemGetFigBaseObject();
      v15 = v14;
      VTable = CMBaseObjectGetVTable();
      v17 = *(VTable + 8);
      result = VTable + 8;
      v18 = *(v17 + 56);
      if (v18)
      {

        return v18(v15, @"OverlapRange", 0);
      }
    }
  }

  return result;
}

unsigned __int8 *playeroverlap_flipInvalid(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  atomic_store(1u, result);
  return result;
}

void itemoverlap_invalidateDispatchSync(uint64_t a1)
{
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v5 = atomic_load(CMBaseObjectGetDerivedStorage()), (v5))
  {
    v6 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< FigPlayerOverlap >>>>", 5070, v1);
  }

  else
  {
    v7[0] = a1;
    v7[1] = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v7, itemoverlap_invalidateDispatchSync_fun);
  }
}

void itemoverlap_invalidateDispatchSync_fun(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8);
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = playeroverlap_itemAtIndex(v6, 0);
    if (*(CMBaseObjectGetDerivedStorage() + 56) && (v8 == v2 || *(v7 + 56) == v2))
    {
      itemoverlap_invalidateDispatchSync_fun_cold_1(v6);
    }

    atomic_store(1u, DerivedStorage);
    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterRemoveWeakListener())
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (itemoverlap_removeTimebaseListener(v2))
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigPlaybackItemGetFigBaseObject();
    if (v11)
    {
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v13)
      {
        v13(v12);
      }
    }

    CFSetRemoveAllValues(*(DerivedStorage + 80));
    v4 = 0;
  }

  *(a1 + 8) = v4;
}

void itemoverlap_subItemNotificationWeakCallback(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = atomic_load(DerivedStorage);
  if (v9)
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v11 = DerivedStorage;
    if (dword_1EAF17080)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = *(v11 + 8);
    if (playeroverlap_indexForItem(v13, a2) != -1 && (FigCFEqual() || FigCFEqual()))
    {
      *(v11 + 88) = 3;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = FigCFEqual();
    if ((v14 & 1) != 0 || v15)
    {
      itemoverlap_subItemNotificationWeakCallback_cold_1(v13, v11, a2);
    }

    if (FigCFEqual() && *(v11 + 88))
    {
      playeroverlap_removeFinishedItem(v13, a2);
    }

    if (FigCFEqual())
    {
      v16 = playeroverlap_itemAtIndex(v13, 0);
      if (itemoverlap_hasAdvanceTime(v16) && (playeroverlap_itemAtIndex(v13, 1) == a2 || playeroverlap_itemAtIndex(v13, 0) == a2))
      {
        itemoverlap_subItemNotificationWeakCallback_cold_2(v13);
      }
    }

    if (!itemoverlap_findAndDiscardFromBlockNextNotifications(a2, a3))
    {
      playeroverlap_dispatchAsyncPostNotification(0, a2, a3, a5);
    }
  }
}

CFIndex playeroverlap_indexForItem(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = FigCFArrayGetFirstIndexOfValue();
  if (result == -1)
  {
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      Count = 0;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = DerivedStorage + 24;
      v9 = *(DerivedStorage + 4);
      if (FirstIndexOfValue != -1)
      {
        return CFArrayGetCount(*(v8 + 8 * v9)) + FirstIndexOfValue;
      }

      v10 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      v11 = (v12 < 0) ^ v10;
      v13 = v12 & 1;
      if (v11)
      {
        v13 = -v13;
      }

      Count = CFArrayGetCount(*(v8 + 8 * v13));
    }

    CMBaseObjectGetDerivedStorage();
    result = FigCFArrayGetFirstIndexOfValue();
    if (result != -1)
    {
      v4 = result;
      v5 = CMBaseObjectGetDerivedStorage();
      return v4 + Count + CFArrayGetCount(*(v5 + 8 * *(v5 + 4) + 24));
    }
  }

  return result;
}

BOOL playeroverlap_isLastItem(uint64_t a1, const void *a2)
{
  v4 = playeroverlap_playQueueCount(a1);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = playeroverlap_itemAtIndex(a1, v4 - 1);
  }

  return v5 == a2;
}

double playeroverlap_removeFinishedItem(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 56) == a2)
  {
    if (playeroverlap_removeOutroItem(a1, 0) || playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1))
    {
      goto LABEL_6;
    }
  }

  else
  {
    playeroverlap_removeItemAndRefreshPlayQueue(a1, a2, 0, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, SWORD2(v24), SBYTE6(v24), HIBYTE(v24), v25, *(&v25 + 1), v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    if (v17)
    {
LABEL_6:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_7:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return result;
    }
  }

  if (itemoverlap_removeTimebaseListener(a2))
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17080)
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    goto LABEL_7;
  }

  return result;
}

uint64_t playeroverlap_removeFromInternalPlayQueue(void *a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 72);
  if (v9 == -1)
  {
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    if (FirstIndexOfValue == -1)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), FirstIndexOfValue);
    }

    return 0;
  }

  v10 = v8;
  v11 = FigCFArrayGetFirstIndexOfValue();
  v12 = v11;
  v13 = 0;
  if (!a3)
  {
LABEL_23:
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 24 + 8 * v9), v12);
    v35 = CMBaseObjectGetDerivedStorage();
    *(v35 + 88) = 0;
    *(v35 + 72) = -1;
    if (v13)
    {
      v36 = CMBaseObjectGetDerivedStorage();
      if (FigPlaybackTimerIsScheduled(*(v36 + 64)))
      {
        v34 = playeroverlap_rescheduleAdvanceTimerAndAnchorTime(a1);
        if (v34)
        {
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return v34;
      }
    }

    return 0;
  }

  if (v9 != *(DerivedStorage + 4) && !v11)
  {
    itemoverlap_addToBlockNextNotifications(a2, @"ItemStoppedBeingCurrent");
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = *(v14 + 4);
    v16 = __OFADD__(v15++, 1);
    v17 = (v15 < 0) ^ v16;
    v18 = v15 & 1;
    if (v17)
    {
      v18 = -v18;
    }

    if (CFArrayGetCount(*(v14 + 8 * v18 + 24)) < 2)
    {
      v13 = 0;
    }

    else
    {
      v19 = CMBaseObjectGetDerivedStorage();
      v20 = *(v19 + 4);
      v16 = __OFADD__(v20++, 1);
      v17 = (v20 < 0) ^ v16;
      v21 = v20 & 1;
      if (v17)
      {
        v21 = -v21;
      }

      v13 = 1;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v19 + 8 * v21 + 24), 1);
      itemoverlap_addToBlockNextNotifications(ValueAtIndex, @"ItemBecameCurrent");
    }
  }

  if (a3 == 1)
  {
    v25 = *(DerivedStorage + 8 * v9 + 8);
    v26 = *(v10 + 16);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v27)
    {
      v28 = v27(v25, v26);
      goto LABEL_22;
    }

LABEL_27:
    v34 = 4294954514;
    goto LABEL_28;
  }

  v29 = CMBaseObjectGetDerivedStorage();
  v30 = CMBaseObjectGetDerivedStorage();
  v31 = *(v29 + 8 * *(v30 + 72) + 8);
  v32 = *(v30 + 16);
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v33)
  {
    goto LABEL_27;
  }

  v28 = v33(v31, v32, v31);
LABEL_22:
  v34 = v28;
  if (!v28)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (v9 != *(DerivedStorage + 4) && !v12)
  {
    itemoverlap_findAndDiscardFromBlockNextNotifications(a2, @"ItemStoppedBeingCurrent");
    v38 = CMBaseObjectGetDerivedStorage();
    v39 = *(v38 + 4);
    v16 = __OFADD__(v39++, 1);
    v17 = (v39 < 0) ^ v16;
    v40 = v39 & 1;
    if (v17)
    {
      v40 = -v40;
    }

    if (CFArrayGetCount(*(v38 + 8 * v40 + 24)) >= 2)
    {
      v41 = CMBaseObjectGetDerivedStorage();
      v42 = *(v41 + 4);
      v16 = __OFADD__(v42++, 1);
      v17 = (v42 < 0) ^ v16;
      v43 = v42 & 1;
      if (v17)
      {
        v43 = -v43;
      }

      v44 = CFArrayGetValueAtIndex(*(v41 + 8 * v43 + 24), 1);
      itemoverlap_findAndDiscardFromBlockNextNotifications(v44, @"ItemBecameCurrent");
    }
  }

  return v34;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue(uint64_t a1, const __CFArray *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  cf = 0;
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    playeroverlap_setItemsToPrebufferInPlayerQueue_cold_6(&v52, &v51);
    v41 = 0;
    v8 = v51;
    if (v51)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v52 = Mutable;
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      cf = v9;
      if (!v9)
      {
        playeroverlap_setItemsToPrebufferInPlayerQueue_cold_4(&v51);
        v41 = v51;
        goto LABEL_42;
      }

      if (!a2)
      {
        goto LABEL_32;
      }

      v10 = v9;
      Count = CFArrayGetCount(a2);
      v12 = Count;
      v13 = Count > 0;
      if (Count >= 1)
      {
        v50 = v8;
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
          if (!ValueAtIndex || (v16 = CFGetTypeID(ValueAtIndex), v16 != FigPlaybackItemGetTypeID()))
          {
            playeroverlap_setItemsToPrebufferInPlayerQueue_cold_3(&v51);
            goto LABEL_49;
          }

          if (CMBaseObjectGetVTable() != &kFigPlaybackItemOverlapVTable)
          {
            playeroverlap_setItemsToPrebufferInPlayerQueue_cold_1(&v51);
            goto LABEL_49;
          }

          if (*(CMBaseObjectGetDerivedStorage() + 8) != a1)
          {
            break;
          }

          if (v12 == ++v14)
          {
            goto LABEL_15;
          }
        }

        playeroverlap_setItemsToPrebufferInPlayerQueue_cold_2(&v51);
LABEL_49:
        v41 = v51;
        goto LABEL_41;
      }

      if (!Count)
      {
LABEL_32:
        CMBaseObjectGetDerivedStorage();
        FigPlayerGetFigBaseObject();
        v43 = v42;
        v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v44)
        {
          v44(v43, @"ItemsToPrebuffer", 0);
        }

        CMBaseObjectGetDerivedStorage();
        FigPlayerGetFigBaseObject();
        v46 = v45;
        v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v47)
        {
          v41 = v47(v46, @"ItemsToPrebuffer", 0);
        }

        else
        {
          v41 = 4294954514;
        }

        v48 = *(DerivedStorage + 112);
        if (v48)
        {
          CFRelease(v48);
          *(DerivedStorage + 112) = 0;
        }

        goto LABEL_42;
      }

      v50 = v8;
      v13 = 0;
LABEL_15:
      v17 = *(DerivedStorage + 112);
      *(DerivedStorage + 112) = a2;
      CFRetain(a2);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v13)
      {
        v18 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 112), v18);
          v19 = CMBaseObjectGetDerivedStorage();
          v20 = v19;
          v21 = *(v19 + 72);
          if (v21 == -1)
          {
            v23 = CMBaseObjectGetDerivedStorage();
            v24 = *(v23 + 8 * *(v23 + 4) + 8);
            v26 = *(v20 + 16);
            v22 = (v20 + 16);
            v25 = v26;
            v27 = CMBaseObjectGetDerivedStorage();
            v28 = *(v27 + 4);
            v29 = __OFADD__(v28++, 1);
            v30 = (v28 < 0) ^ v29;
            v31 = v28 & 1;
            if (v30)
            {
              v31 = -v31;
            }

            v32 = *(v27 + 8 * v31 + 8);
            v33 = *(*(CMBaseObjectGetVTable() + 16) + 144);
            if (v33)
            {
              v33(v24, v25, v32);
            }

            v21 = *(DerivedStorage + 4);
          }

          else
          {
            v22 = (v19 + 16);
          }

          CFArrayAppendValue(*(&v52 + v21), *v22);
          ++v18;
        }

        while (v12 != v18);
      }

      FigPlayerGetFigBaseObject();
      v35 = v34;
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v36)
      {
        v41 = 4294954514;
LABEL_41:
        v8 = v50;
        goto LABEL_42;
      }

      v8 = v50;
      v37 = v36(v35, @"ItemsToPrebuffer", v50);
      if (!v37)
      {
        FigPlayerGetFigBaseObject();
        v39 = v38;
        v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v40)
        {
          v41 = 4294954514;
          goto LABEL_42;
        }

        v37 = v40(v39, @"ItemsToPrebuffer", v10);
      }

      v41 = v37;
LABEL_42:
      CFRelease(v8);
      goto LABEL_43;
    }

    playeroverlap_setItemsToPrebufferInPlayerQueue_cold_5(&v51);
    v41 = v51;
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  return v41;
}

uint64_t playeroverlap_refreshPlayQueueFromIndex(void *a1, CFIndex a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = playeroverlap_playQueueCount(a1);
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 <= a2)
  {
    return 0;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  do
  {
    v8 = playeroverlap_itemAtIndex(a1, --v4);
    if (*(CMBaseObjectGetDerivedStorage() + 72) != -1)
    {
      itemoverlap_addToBlockNextNotifications(v8, @"ItemWasRemovedFromPlayQueue");
    }

    v9 = playeroverlap_removeFromInternalPlayQueue(a1, v8, 2);
    if (v9)
    {
      goto LABEL_19;
    }

    CFArrayInsertValueAtIndex(Mutable, 0, v8);
  }

  while (v4 > a2);
  if (CFArrayGetCount(Mutable) < 1)
  {
LABEL_13:
    v12 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v12)
    {
      playeroverlap_setItemsToPrebufferInPlayerQueue(a1, v12);
    }

    v13 = 0;
    if (!Mutable)
    {
      return v13;
    }

LABEL_16:
    CFRelease(Mutable);
    return v13;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10);
    v9 = playeroverlap_AppendToPlayQueueInPlayerQueue(a1, ValueAtIndex, 0);
    if (v9)
    {
      break;
    }

    if (++v10 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  v13 = v9;
  if (Mutable)
  {
    goto LABEL_16;
  }

  return v13;
}

void playeroverlap_GetRateInPlayerQueue(uint64_t a1, float *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayerOverlap >>>>", 4818, v2);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v8 || v8(v7, a2))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else if (dword_1EAF17080)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void playeroverlap_SetRateInPlayerQueue(const void *a1, float a2)
{
  v8[16] = *MEMORY[0x1E69E9840];
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    v6 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< FigPlayerOverlap >>>>", 4737, v2);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    memset(v8, 0, 24);
    playeroverlap_SetRateCommon(a1, v8, a2);
  }
}

void itemoverlap_Invalidate(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    v4 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954511, "<<<< FigPlayerOverlap >>>>", 5075, v1);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemoverlap_invalidateDispatchSync(a1);
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFSetRemoveValue(*(DerivedStorage + 88), a1);
    FigSimpleMutexUnlock();
  }
}

void itemoverlap_Finalize(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = atomic_load(DerivedStorage);
  if ((v4 & 1) == 0)
  {
    itemoverlap_Invalidate(a1);
  }

  *(DerivedStorage + 8) = 0;
  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 80) = 0;
  }
}

__CFString *itemoverlap_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 156);
  }

  else
  {
    v5 = "";
  }

  epoch = DerivedStorage->epoch;
  time = DerivedStorage[1];
  Seconds = CMTimeGetSeconds(&time);
  time = DerivedStorage[2];
  v8 = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackItemOverlap %p %s sub-item %p advanceTime %1.3f overlappedPlaybackEndTime %1.3f>", a1, v5, epoch, *&Seconds, *&v8);
  return Mutable;
}

void itemoverlap_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v9 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v9)
  {
    v10 = qword_1EAF17078;
    v11 = v4;
    v12 = 5177;
LABEL_11:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayerOverlap >>>>", v12, v11);
    return;
  }

  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"AdvanceTimeForOverlappedPlayback"))
  {
    v13 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v13 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v15 = atomic_load(CMBaseObjectGetDerivedStorage()), (v15))
    {
      v10 = qword_1EAF17078;
      v11 = v4;
      v12 = 5146;
      goto LABEL_11;
    }

    v24 = a1;
    v25 = a3;
    v26 = a4;
    v27 = 0;
    v19 = *(DerivedStorage + 48);
    v20 = playeroverlap_copyAdvanceTimeForOverlappedPlayback_fun;
LABEL_21:
    dispatch_sync_f(v19, &v24, v20);
    return;
  }

  if (CFEqual(a2, @"OverlappedPlaybackEndTime"))
  {
    v16 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v16 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), v17 = CMBaseObjectGetDerivedStorage(), v18 = atomic_load(CMBaseObjectGetDerivedStorage()), (v18))
    {
      v10 = qword_1EAF17078;
      v11 = v4;
      v12 = 5170;
      goto LABEL_11;
    }

    v24 = a1;
    v25 = a3;
    v26 = a4;
    v27 = 0;
    v19 = *(v17 + 48);
    v20 = playeroverlap_copyOverlappedPlaybackEndTime_fun;
    goto LABEL_21;
  }

  FigPlaybackItemGetFigBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {

    v23(v22, a2, a3, a4);
  }
}

void itemoverlap_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {
    v8 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigPlayerOverlap >>>>", 5456, v3);
  }

  else
  {
    v9 = FigCFCopyCompactDescription();
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      CFRelease(v9);
    }

    FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, itemoverlap_handleSetProperty, 0, 0, 0);
  }
}

void playeroverlap_copyAdvanceTimeForOverlappedPlayback_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8.value, v8.timescale, LODWORD(v8.epoch));
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 36) & 0x1D) == 1)
    {
      v8 = *(DerivedStorage + 24);
      v7 = CMTimeCopyAsDictionary(&v8, v2);
    }

    else
    {
      v7 = 0;
    }

    v5 = 0;
    *v3 = v7;
  }

  *(a1 + 6) = v5;
}

void playeroverlap_copyOverlappedPlaybackEndTime_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8.value, v8.timescale, LODWORD(v8.epoch));
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 60) & 0x1D) == 1)
    {
      v8 = *(DerivedStorage + 48);
      v7 = CMTimeCopyAsDictionary(&v8, v2);
    }

    else
    {
      v7 = 0;
    }

    v5 = 0;
    *v3 = v7;
  }

  *(a1 + 6) = v5;
}

void itemoverlap_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, _BYTE *a5)
{
  v10 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v10)
  {
    v11 = qword_1EAF17078;
    v12 = v5;
    v13 = 5427;
LABEL_13:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954511, "<<<< FigPlayerOverlap >>>>", v13, v12);
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (CFEqual(a3, @"AdvanceTimeForOverlappedPlayback"))
  {
    v15 = *(DerivedStorage + 8);
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v17)
    {
      v11 = qword_1EAF17078;
      v12 = v5;
      v13 = 5283;
      goto LABEL_13;
    }

    v29 = v15;
    v30 = a1;
    v31 = a4;
    v32 = 0;
    v21 = *(v16 + 48);
    v22 = playeroverlap_setAdvanceTimeForOverlappedPlayback_fun;
LABEL_22:
    dispatch_sync_f(v21, &v29, v22);
    return;
  }

  if (CFEqual(a3, @"OverlappedPlaybackEndTime"))
  {
    v18 = *(DerivedStorage + 8);
    v19 = CMBaseObjectGetDerivedStorage();
    v20 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v20)
    {
      v11 = qword_1EAF17078;
      v12 = v5;
      v13 = 5360;
      goto LABEL_13;
    }

    v29 = v18;
    v30 = a1;
    v31 = a4;
    v32 = 0;
    v21 = *(v19 + 48);
    v22 = playeroverlap_setOverlappedPlaybackEndTime_fun;
    goto LABEL_22;
  }

  if (CFEqual(a3, @"EndTime"))
  {
    v23 = *(DerivedStorage + 8);
    v24 = CMBaseObjectGetDerivedStorage();
    v25 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v25)
    {
      v11 = qword_1EAF17078;
      v12 = v5;
      v13 = 5420;
      goto LABEL_13;
    }

    v29 = v23;
    v30 = a1;
    v31 = a4;
    v32 = 0;
    v21 = *(v24 + 48);
    v22 = playeroverlap_setEndTime_fun;
    goto LABEL_22;
  }

  FigPlaybackItemGetFigBaseObject();
  v27 = v26;
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v28)
  {

    v28(v27, a3, a4);
  }
}

void playeroverlap_setAdvanceTimeForOverlappedPlayback_fun(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17078, 4294954511, "<<<< FigPlayerOverlap >>>>", 5204, v1);
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 56) == v3)
  {
    LODWORD(value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17078, 4294954436, "<<<< FigPlayerOverlap >>>>", 5216, v1);
    goto LABEL_26;
  }

  hasAdvanceTime = itemoverlap_hasAdvanceTime(v3);
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (v5)
  {
    CMTimeMakeFromDictionary(&time, v5);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  if (dword_1EAF17080)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (flags & 0x1D) != 1 && (flags)
  {
    playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_2(&time);
LABEL_31:
    refreshed = time.value;
    goto LABEL_26;
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_1(&time);
      goto LABEL_31;
    }
  }

  time = *(DerivedStorage + 24);
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  refreshed = CMTimeCompare(&time, &time2);
  if (!refreshed)
  {
    goto LABEL_26;
  }

  *(DerivedStorage + 24) = value;
  *(DerivedStorage + 32) = timescale;
  *(DerivedStorage + 36) = flags;
  *(DerivedStorage + 40) = epoch;
  if (*(DerivedStorage + 72) == -1)
  {
LABEL_25:
    refreshed = 0;
    goto LABEL_26;
  }

  if (playeroverlap_itemAtIndex(v4, 0) != v3 || !hasAdvanceTime || (v15 = CMBaseObjectGetDerivedStorage(), !FigPlaybackTimerIsScheduled(*(v15 + 64))) || (refreshed = playeroverlap_cancelScheduledOverlap(v4)) == 0)
  {
    if (hasAdvanceTime == itemoverlap_hasAdvanceTime(v3) || (v16 = playeroverlap_indexForItem(v4, v3), (refreshed = playeroverlap_refreshPlayQueueFromIndex(v4, v16 + 1)) == 0))
    {
      if (playeroverlap_itemAtIndex(v4, 0) == v3)
      {
        refreshed = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v4);
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  *(a1 + 24) = refreshed;
}

void playeroverlap_setOverlappedPlaybackEndTime_fun(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
    v7 = v6;
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = v2;
  v23 = CMBaseObjectGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (v4)
  {
    CMTimeMakeFromDictionary(&time, v4);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  if (dword_1EAF17080)
  {
    v11 = epoch;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    epoch = v11;
  }

  if (flags & 0x1D) != 1 && (flags)
  {
    playeroverlap_setOverlappedPlaybackEndTime_fun_cold_5(&time);
LABEL_29:
    v7 = time.value;
    goto LABEL_27;
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      playeroverlap_setOverlappedPlaybackEndTime_fun_cold_1(&time);
      goto LABEL_29;
    }
  }

  if ((DerivedStorage[1].flags & 0x1D) == 1)
  {
    time = DerivedStorage[1];
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    if (CMTimeCompare(&time, &time2) >= 1)
    {
      v14 = epoch;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      epoch = v14;
    }
  }

  time = DerivedStorage[2];
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  if (CMTimeCompare(&time, &time2))
  {
    if (*(v23 + 56) == v3)
    {
      if ((DerivedStorage[2].flags & 0x1D) == 1)
      {
        v17 = FigPlaybackTimerCancel(*(v23 + 72));
        if (v17)
        {
          v7 = v17;
          playeroverlap_setOverlappedPlaybackEndTime_fun_cold_2();
          goto LABEL_27;
        }
      }

      DerivedStorage[2].value = value;
      DerivedStorage[2].timescale = timescale;
      DerivedStorage[2].flags = flags;
      DerivedStorage[2].epoch = epoch;
      v16 = v22;
      v18 = playeroverlap_maybeScheduleOverlappedPlaybackEndTime(v22, v3);
      if (v18)
      {
        v7 = v18;
        playeroverlap_setOverlappedPlaybackEndTime_fun_cold_3();
        goto LABEL_27;
      }
    }

    else
    {
      DerivedStorage[2].value = value;
      DerivedStorage[2].timescale = timescale;
      DerivedStorage[2].flags = flags;
      DerivedStorage[2].epoch = epoch;
      v16 = v22;
    }

    v7 = playeroverlap_maybeSetOverlapRangeProperty(v16);
    if (v7)
    {
      playeroverlap_setOverlappedPlaybackEndTime_fun_cold_4();
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_27:
  *(a1 + 24) = v7;
}

uint64_t playeroverlap_maybeSetOverlapRangeProperty(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = playeroverlap_itemAtIndex(a1, 0);
  if (!v2)
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_13:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    return 0;
  }

  v3 = v2;
  v4 = playeroverlap_itemAtIndex(a1, 1);
  if (!v4)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v5 = v4;
  v6 = playeroverlap_itemAtIndex(a1, 0);
  if (!itemoverlap_hasAdvanceTime(v6))
  {
    if (dword_1EAF17080)
    {
LABEL_12:
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      goto LABEL_13;
    }

    return 0;
  }

  v7 = playeroverlap_setOverlapRangeProperty(a1, v3, v5);
  if (v7)
  {
    playeroverlap_maybeSetOverlapRangeProperty_cold_1();
  }

  return v7;
}

void playeroverlap_setEndTime_fun(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
    v7 = v6;
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  FigPlaybackItemGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v7 = -12782;
LABEL_16:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_17;
  }

  v13 = v12(v11, @"EndTime", v4);
  if (v13)
  {
    v7 = v13;
    goto LABEL_16;
  }

  CMTimeMakeFromDictionary(&time1, v4);
  *(DerivedStorage + 108) = time1;
  if (!*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_30;
    }

LABEL_19:
    LODWORD(time2.value) = 0;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
LABEL_29:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_30;
  }

  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  memset(&v23, 0, sizeof(v23));
  itemoverlap_getEffectiveOverlappedPlaybackEndTime(v3, &v23);
  time1 = v23;
  time2 = *(DerivedStorage + 48);
  if (!CMTimeCompare(&time1, &time2))
  {
    if (dword_1EAF17080)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v14 = playeroverlap_maybeSetOverlapRangeProperty(v2);
  if (v14)
  {
    v7 = v14;
    playeroverlap_setEndTime_fun_cold_1();
    goto LABEL_17;
  }

  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (dword_1EAF17080)
    {
LABEL_28:
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      goto LABEL_29;
    }

LABEL_30:
    v7 = 0;
    goto LABEL_17;
  }

  if (FigPlaybackTimerIsScheduled(*(v9 + 72)) && (v15 = FigPlaybackTimerCancel(*(v9 + 72))) != 0)
  {
    v7 = v15;
    playeroverlap_setEndTime_fun_cold_2();
  }

  else
  {
    v7 = playeroverlap_maybeScheduleOverlappedPlaybackEndTime(v2, v3);
    if (v7)
    {
      playeroverlap_setEndTime_fun_cold_3();
    }
  }

LABEL_17:
  *(a1 + 24) = v7;
}

void itemoverlap_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 5505, v3);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = *(CMBaseObjectGetDerivedStorage() + 16);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v10)
    {
      v10(v9, a2, a3);
    }
  }
}

void itemoverlap_GetDuration(uint64_t a1, CMTime *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayerOverlap >>>>", 5516, v2);
  }

  else
  {
    v6 = *(CMBaseObjectGetDerivedStorage() + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v7 || v7(v6, a2))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else if (dword_1EAF17080)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void itemoverlap_SetCurrentTime(uint64_t a1, __int128 *a2, int a3)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = atomic_load(CMBaseObjectGetDerivedStorage()), (v9))
  {
    v10 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayerOverlap >>>>", 5662, v3);
  }

  else
  {
    context = a1;
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = a3;
    v15 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, itemoverlap_SetCurrentTime_fun);
  }
}

void itemoverlap_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v7 = atomic_load(CMBaseObjectGetDerivedStorage()), (v7))
  {
    v8 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigPlayerOverlap >>>>", 5750, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, itemoverlap_GetCurrentTime_fun);
  }
}

void itemoverlap_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v10)
  {
    v11 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954511, "<<<< FigPlayerOverlap >>>>", 5775, v5);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = *(CMBaseObjectGetDerivedStorage() + 16);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v14)
    {
      v14(v13, a2, a3, a4, a5);
    }
  }
}

void itemoverlap_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 5787, v3);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = *(CMBaseObjectGetDerivedStorage() + 16);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v10)
    {
      v10(v9, a2, a3);
    }
  }
}

void itemoverlap_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5799, v4);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(CMBaseObjectGetDerivedStorage() + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v12)
    {
      v12(v11, a2, a3, a4);
    }
  }
}

void itemoverlap_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5811, v4);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(CMBaseObjectGetDerivedStorage() + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v12)
    {
      v12(v11, a2, a3, a4);
    }
  }
}

void itemoverlap_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5823, v4);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(CMBaseObjectGetDerivedStorage() + 16);
    v13 = *a2;
    v14 = *(a2 + 2);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v12)
    {
      v15 = v13;
      v16 = v14;
      v12(v11, &v15, a3, a4);
    }
  }
}

void itemoverlap_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  v11 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v11 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v13 = atomic_load(CMBaseObjectGetDerivedStorage()), (v13))
  {
    v14 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954511, "<<<< FigPlayerOverlap >>>>", 5684, v5);
  }

  else
  {
    context = a1;
    v16 = *a2;
    v17 = *(a2 + 2);
    v18 = a3;
    v19 = *a4;
    v20 = *(a4 + 2);
    v21 = *a5;
    v22 = *(a5 + 2);
    v23 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, itemoverlap_SetCurrentTimeWithRange_fun);
  }
}

void itemoverlap_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5834, v4);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(CMBaseObjectGetDerivedStorage() + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v12)
    {
      v12(v11, a2, a3, a4);
    }
  }
}

void itemoverlap_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayerOverlap >>>>", 5846, v2);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(CMBaseObjectGetDerivedStorage() + 16);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {
      v8(v7, a2);
    }
  }
}

void itemoverlap_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = atomic_load(CMBaseObjectGetDerivedStorage()), (v9))
  {
    v10 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayerOverlap >>>>", 5770, v3);
  }

  else
  {
    context[0] = a1;
    context[1] = a2;
    v12 = a3;
    v13 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), context, itemoverlap_SeekToDateWithID_fun);
  }
}

void itemoverlap_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5, int a6)
{
  v13 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v13 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v15 = atomic_load(CMBaseObjectGetDerivedStorage()), (v15))
  {
    v16 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954511, "<<<< FigPlayerOverlap >>>>", 5707, v6);
  }

  else
  {
    v26 = 0;
    v17 = a1;
    v18 = *a2;
    v19 = *(a2 + 2);
    v20 = a3;
    v21 = *a4;
    v22 = *(a4 + 2);
    v23 = *a5;
    v24 = *(a5 + 2);
    v25 = a6;
    dispatch_sync_f(*(DerivedStorage + 48), &v17, itemoverlap_SetCurrentTimeWithRangeAndID_fun);
  }
}

void itemoverlap_CopyAsset(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< FigPlayerOverlap >>>>", 5856, v2);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(CMBaseObjectGetDerivedStorage() + 16);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v8)
    {
      v8(v7, a2);
    }
  }
}

void itemoverlap_SetProperties(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {
    v8 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigPlayerOverlap >>>>", 5470, v3);
  }

  else
  {

    FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, itemoverlap_handleSetProperty, 0, 0, a3);
  }
}

void itemoverlap_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5867, v4);
  }

  else
  {
    v10 = *(CMBaseObjectGetDerivedStorage() + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v11)
    {

      v11(v10, a2, a3, a4);
    }
  }
}

void itemoverlap_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = atomic_load(CMBaseObjectGetDerivedStorage()), (v9))
  {
    v10 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigPlayerOverlap >>>>", 5731, v3);
  }

  else
  {
    v14 = a3;
    v15 = 0;
    v11 = a1;
    v12 = *a2;
    v13 = *(a2 + 2);
    dispatch_sync_f(*(DerivedStorage + 48), &v11, itemoverlap_SetCurrentTimeWithOptions_fun);
  }
}

void itemoverlap_SetCurrentTime_fun(uint64_t *a1)
{
  time[17] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v9 = *(a1 + 1);
  v10 = a1[3];
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    memset(time, 0, 40);
    LODWORD(time[0]) = v3;
    v11 = v9;
    v12 = v10;
    v6 = itemoverlap_SetCurrentTimeCommon(v2, &v11, time);
  }

  *(a1 + 9) = v6;
}

uint64_t itemoverlap_SetCurrentTimeSpecific(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = *a3;
    v28 = *a2;
    v30 = *(a2 + 16);
    v24 = *v4;
    v26 = *(v4 + 16);
    v20 = *(v4 + 24);
    v22 = *(v4 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v6)
    {
      v36 = v28;
      v37 = v30;
      v34 = v24;
      v35 = v26;
      v32 = v20;
      v33 = v22;
      return v6(a1, &v36, v5, &v34, &v32);
    }

    return 4294954514;
  }

  v8 = a3[2];
  if (v8)
  {
    v9 = *a3;
    v10 = *(v8 + 48);
    v29 = *a2;
    v31 = *(a2 + 16);
    v25 = *v8;
    v27 = *(v8 + 16);
    v21 = *(v8 + 24);
    v23 = *(v8 + 40);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v11)
    {
      v36 = v29;
      v37 = v31;
      v34 = v25;
      v35 = v27;
      v32 = v21;
      v33 = v23;
      return v11(a1, &v36, v9, &v34, &v32, v10);
    }

    return 4294954514;
  }

  v12 = a3[3];
  if (v12)
  {
    v13 = *v12;
    v34 = *a2;
    v35 = *(a2 + 16);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v14)
    {
      v36 = v34;
      v37 = v35;
      return v14(a1, &v36, v13);
    }

    return 4294954514;
  }

  v15 = a3[4];
  if (v15)
  {
    v16 = *v15;
    v17 = *(v15 + 2);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (!v18)
    {
      return 4294954514;
    }

    return v18(a1, v16, v17);
  }

  else
  {
    v19 = *a3;
    v36 = *a2;
    v37 = *(a2 + 16);
    return FigPlaybackItemSetCurrentTime(a1, &v36, v19);
  }
}

void itemoverlap_SetCurrentTimeWithRange_fun(uint64_t *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v12 = *(a1 + 1);
  v13 = a1[3];
  *&v11.value = *(a1 + 36);
  v11.epoch = *(a1 + 52);
  v9 = *(a1 + 60);
  v10 = *(a1 + 76);
  if (dword_1EAF17080)
  {
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    time = v11;
    v21 = v9;
    v22 = v10;
    v18 = 0u;
    v17[0] = v3;
    *v19 = 0;
    v17[1] = &time;
    v14 = v12;
    v15 = v13;
    v6 = itemoverlap_SetCurrentTimeCommon(v2, &v14, v17);
  }

  *(a1 + 21) = v6;
}

void itemoverlap_SeekToDateWithID_fun(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    v11 = v3;
    v13 = 0;
    v12 = v4;
    memset(v14, 0, sizeof(v14));
    v15 = &v11;
    v7 = itemoverlap_SetCurrentTimeCommon(v2, MEMORY[0x1E6960CC0], v14);
  }

  *(a1 + 5) = v7;
}

void itemoverlap_SetCurrentTimeWithRangeAndID_fun(uint64_t *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v9 = *(a1 + 8);
  v3 = *(a1 + 21);
  v13 = *(a1 + 1);
  v14 = a1[3];
  *&v12.value = *(a1 + 36);
  v12.epoch = *(a1 + 52);
  v10 = *(a1 + 60);
  v11 = *(a1 + 76);
  if (dword_1EAF17080)
  {
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v10);
  }

  else
  {
    time = v12;
    v23 = v10;
    v24 = v11;
    v25 = v3;
    v18 = 0u;
    v20 = 0;
    LODWORD(v18) = v9;
    *v21 = 0;
    p_time = &time;
    v15 = v13;
    v16 = v14;
    v6 = itemoverlap_SetCurrentTimeCommon(v2, &v15, &v18);
  }

  *(a1 + 22) = v6;
}

void itemoverlap_SetCurrentTimeWithOptions_fun(uint64_t *a1)
{
  v2 = *a1;
  v6 = *(a1 + 1);
  v3 = a1[4];
  v7 = a1[3];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, DWORD2(v6), v7);
  }

  else
  {
    v14 = v3;
    v10 = 0u;
    v11 = 0;
    v12 = &v14;
    v13 = 0;
    v8 = v6;
    v9 = v7;
    v5 = itemoverlap_SetCurrentTimeCommon(v2, &v8, &v10);
  }

  *(a1 + 10) = v5;
}

void playeroverlap_copyVideoTargetArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3440, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyVideoTargetArray_fun);
  }
}

void playeroverlap_copyPerformanceHistoryArray(uint64_t a1, const __CFAllocator *a2, CFArrayRef *a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3373, v3);
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v15 = 0;
    cf = 0;
    Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
    FigPlayerGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      if (!v11(v10, @"PerformanceHistoryArray", a2, &cf))
      {
        FigPlayerGetFigBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          if (!v14(v13, @"PerformanceHistoryArray", a2, &v15))
          {
            FigCFArrayAppendArray();
            FigCFArrayAppendArray();
            *a3 = CFArrayCreateCopy(a2, Mutable);
          }
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void playeroverlap_copyItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3420, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyItemsToPrebuffer_fun);
  }
}

void playeroverlap_copyPropertyFromActiveSubPlayerInPlayerQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 3359, v4);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObjectGetDerivedStorage();
    FigPlayerGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, a3, a2, a4);
    }
  }
}

void playeroverlap_copyVideoTargetArray_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 120);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
    *v2 = v6;
  }

  *(a1 + 4) = v4;
}

void playeroverlap_copyItemsToPrebuffer_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
    *v2 = v6;
  }

  *(a1 + 4) = v4;
}

void playeroverlap_handleSetProperty(uint64_t a1, uint64_t a2, __CFString *a3, __CFString *a4, _BYTE *a5)
{
  *a5 = 1;
  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v10 & 1) == 0)
    {
      v23 = a4;
      v24 = 0;
      v22 = a1;
      dispatch_sync_f(*(DerivedStorage + 48), &v22, playeroverlap_setActionAtEnd_fun);
      return;
    }

    v11 = qword_1EAF17078;
    v12 = v5;
    v13 = 3551;
LABEL_11:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954511, "<<<< FigPlayerOverlap >>>>", v13, v12);
    return;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v15 & 1) == 0)
    {
      v22 = a1;
      v23 = a3;
      v24 = a4;
      v25 = 0;
      dispatch_sync_f(*(v14 + 48), &v22, playeroverlap_setPropertyToActiveSubPlayer_fun);
      return;
    }

    v11 = qword_1EAF17078;
    v12 = v5;
    v13 = 3574;
    goto LABEL_11;
  }

  if (CFEqual(a3, @"VideoTargetArray"))
  {

    playeroverlap_setVideoTargetArray(a1, a4);
  }

  else if (CFEqual(a3, @"ItemsToPrebuffer"))
  {

    playeroverlap_setItemsToPrebuffer(a1, a4);
  }

  else if (CFEqual(a3, @"BufferedAirPlayOutput"))
  {

    playeroverlap_setBufferedAirPlayOutput(a1, a4);
  }

  else
  {
    v16 = CFEqual(a3, @"FigAudioSession");
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v18 = CFEqual(a3, @"FigAudioSession2");
      v17 = v18 != 0;
      if (v18)
      {
        a3 = @"FigAudioSession";
      }
    }

    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (v17)
    {
      if (v16)
      {
        return;
      }
    }

    else
    {
      FigPlayerGetFigBaseObject();
      v20 = CMBaseObjectSetProperty(v19, a3, a4);
      if (v16 || v20)
      {
        return;
      }
    }

    FigPlayerGetFigBaseObject();

    CMBaseObjectSetProperty(v21, a3, a4);
  }
}

void playeroverlap_setVideoTargetArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3755, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setVideoTargetArray_fun);
  }
}

void playeroverlap_setItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3674, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setItemsToPrebuffer_fun);
  }
}

void playeroverlap_setBufferedAirPlayOutput(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 3724, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setBufferedAirPlayOutput_fun);
  }
}

void playeroverlap_setActionAtEnd_fun(uint64_t *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    v6 = v5;
    goto LABEL_17;
  }

  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  playeroverlap_copyPropertyFromActiveSubPlayerInPlayerQueue(v2, *MEMORY[0x1E695E480], @"ActionAtEnd", cf);
  if (v8)
  {
    goto LABEL_22;
  }

  if (FigCFEqual())
  {
    goto LABEL_19;
  }

  CMBaseObjectGetDerivedStorage();
  FigPlayerGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_14;
  }

  v8 = v11(v10, @"ActionAtEnd", v3);
  if (v8)
  {
    goto LABEL_22;
  }

  CMBaseObjectGetDerivedStorage();
  FigPlayerGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14)
  {
LABEL_14:
    v6 = -12782;
    goto LABEL_15;
  }

  v8 = v14(v13, @"ActionAtEnd", v3);
  if (!v8)
  {
    if (FigCFEqual())
    {
      v15 = playeroverlap_itemAtIndex(v2, 0);
      if (v15)
      {
        playeroverlap_setActionAtEnd_fun_cold_1(v15, v2);
LABEL_21:
        v8 = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v2);
        goto LABEL_22;
      }

LABEL_19:
      v6 = 0;
      goto LABEL_15;
    }

    if (!*(CMBaseObjectGetDerivedStorage() + 56))
    {
      goto LABEL_19;
    }

    v8 = playeroverlap_removeOutroItem(v2, 1);
    if (!v8)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  v6 = v8;
LABEL_15:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_17:
  *(a1 + 4) = v6;
}

uint64_t playeroverlap_setPropertyToActiveSubPlayer_fun(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = atomic_load(DerivedStorage);
  if (v12)
  {
    playeroverlap_setPropertyToActiveSubPlayer_fun_cold_1(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v18, v19, SHIDWORD(v19), v20);
    result = 0;
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObjectGetDerivedStorage();
    FigPlayerGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      result = v16(v15, v2, v3);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 6) = result;
  return result;
}

uint64_t playeroverlap_setVideoTargetArray_fun(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = atomic_load(DerivedStorage);
  if (v11)
  {
    playeroverlap_setVideoTargetArray_fun_cold_1(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v19, v20, SHIDWORD(v20), v21);
    result = 0;
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = CMBaseObjectGetDerivedStorage();
    v14 = *(v13 + 120);
    *(v13 + 120) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    CMBaseObjectGetDerivedStorage();
    FigPlayerGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      result = v17(v16, @"VideoTargetArray", v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 4) = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebuffer_fun(uint64_t a1)
{
  result = playeroverlap_setItemsToPrebufferInPlayerQueue(*a1, *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void playeroverlap_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 4147, v3);
  }

  else
  {
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v10, playeroverlap_AddToPlayQueue_fun);
  }
}

void playeroverlap_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4599, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_RemoveFromPlayQueue_fun);
  }
}

void playeroverlap_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 4637, v3);
  }

  else
  {
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v10, playeroverlap_CopyPlayQueueItem_fun);
  }
}

void playeroverlap_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4747, v2);
  }

  else
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &v8, playeroverlap_SetRate_fun);
  }
}

void playeroverlap_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4831, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_GetRate_fun);
  }
}

void playeroverlap_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 4766, v3);
  }

  else
  {
    context = a1;
    v11 = a3;
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_SetRateWithFade_fun);
  }
}

void playeroverlap_StartPreroll(uint64_t a1, int a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 4844, v3);
  }

  else
  {
    v13 = 0;
    context = a1;
    v11 = a3;
    v12 = a2;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_StartPreroll_fun);
  }
}

void playeroverlap_StepByCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4855, v2);
  }

  else
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &v8, playeroverlap_StepByCount_fun);
  }
}

void playeroverlap_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, int a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v12)
  {
    v13 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954511, "<<<< FigPlayerOverlap >>>>", 4789, v5);
  }

  else
  {
    v21 = 0;
    context = a1;
    v15 = a5;
    v16 = *a2;
    v17 = *(a2 + 2);
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = a4;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_SetRateAndAnchorTime_fun);
  }
}

void playeroverlap_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v11)
  {
    v12 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954511, "<<<< FigPlayerOverlap >>>>", 4860, v5);
  }

  else if (a5)
  {
    if (a2)
    {
      CFGetAllocator(a1);
      FigPlaybackItemGetClassID();
      CMDerivedObjectCreate();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      if (!v13)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 156) = 0;
        if (a4 && FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, (DerivedStorage + 156), 16, 0x600u);
        }

        *DerivedStorage = 0;
        *(DerivedStorage + 72) = -1;
        *(DerivedStorage + 8) = a1;
        *(DerivedStorage + 80) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
        v15 = MEMORY[0x1E6960C70];
        v16 = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
        v17 = *(v15 + 16);
        *(DerivedStorage + 40) = v17;
        *(DerivedStorage + 48) = v16;
        *(DerivedStorage + 64) = v17;
        *(DerivedStorage + 108) = v16;
        *(DerivedStorage + 124) = v17;
        v18 = CMBaseObjectGetDerivedStorage();
        v19 = *(v18 + 8 * *(v18 + 4) + 8);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v20 && !v20(v19, a2, a3, a4, DerivedStorage + 16))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          if (FigNotificationCenterAddWeakListener())
          {
            playeroverlap_CreatePlaybackItemFromAsset_cold_1();
          }

          else
          {
            FigSimpleMutexLock();
            CFSetAddValue(*(v18 + 88), 0);
            FigSimpleMutexUnlock();
            if (dword_1EAF17080)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *a5 = 0;
          }
        }
      }
    }

    else
    {
      playeroverlap_CreatePlaybackItemFromAsset_cold_2(v25);
    }
  }

  else
  {
    playeroverlap_CreatePlaybackItemFromAsset_cold_3(v25);
  }
}

void playeroverlap_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 4812, v3);
  }

  else
  {
    v10[0] = a1;
    v10[1] = LODWORD(a3);
    v10[2] = a2;
    v10[3] = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v10, playeroverlap_SetRateWithOptions_fun);
  }
}

void playeroverlap_SetProperties(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {
    v8 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954511, "<<<< FigPlayerOverlap >>>>", 3854, v3);
  }

  else
  {

    FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, playeroverlap_handleSetProperty, 0, 0, a3);
  }
}

void playeroverlap_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4981, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_AddExternalStartupTask_fun);
  }
}

void playeroverlap_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    v7 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954511, "<<<< FigPlayerOverlap >>>>", 4993, v2);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_RemoveExternalStartupTask_fun);
  }
}

void playeroverlap_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    v9 = qword_1EAF17078;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayerOverlap >>>>", 5008, v3);
  }

  else
  {
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v10, playeroverlap_CopyDisplayedCVPixelBuffer_fun);
  }
}

uint64_t itemoverlap_resetPlayerIndex(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 88) = 0;
  *(result + 72) = -1;
  return result;
}

void playeroverlap_CopyPlayQueueItem_fun(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v5 & 1) == 0)
  {
    if (!v4)
    {
      playeroverlap_CopyPlayQueueItem_fun_cold_1(&v15);
      v7 = v15;
      goto LABEL_10;
    }

    *v4 = 0;
    if (v3)
    {
      v8 = playeroverlap_indexForItem(v2, v3);
      if (v8 == -1)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v16);
        v7 = v12;
        v11 = *v4;
        if (!*v4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v9 = v8 + 1;
      v10 = v2;
    }

    else
    {
      v10 = v2;
      v9 = 0;
    }

    v11 = playeroverlap_itemAtIndex(v10, v9);
    v7 = 0;
    *v4 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRetain(v11);
    goto LABEL_10;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v16);
  v7 = v6;
LABEL_10:
  *(a1 + 6) = v7;
}

void playeroverlap_SetRateWithFade_fun(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 2);
  *&v9.value = *(a1 + 12);
  v9.epoch = *(a1 + 28);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, LODWORD(v9.value));
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v9;
    v11 = 0uLL;
    p_time = &time;
    v5 = playeroverlap_SetRateCommon(v2, &p_time, v3);
  }

  *(a1 + 9) = v5;
}

void playeroverlap_StartPreroll_fun(float *a1)
{
  v2 = a1[2];
  v3 = *(a1 + 3);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v5 = v8(v7, v3, v2);
    }

    else
    {
      v5 = -12782;
    }
  }

  *(a1 + 4) = v5;
}

void playeroverlap_StepByCount_fun(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v7)
    {
      v4 = v7(v6, v2);
    }

    else
    {
      v4 = -12782;
    }
  }

  *(a1 + 3) = v4;
}

void playeroverlap_SetRateAndAnchorTime_fun(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 15);
  *&v12.value = *(a1 + 12);
  v12.epoch = *(a1 + 28);
  v10 = *(a1 + 36);
  v11 = *(a1 + 52);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v12;
    v16 = v10;
    v17 = v11;
    v18 = v4;
    v13 = 0;
    p_time = &time;
    v6 = playeroverlap_SetRateCommon(v2, &v13, v3);
  }

  *(a1 + 16) = v6;
}

void playeroverlap_SetRateWithOptions_fun(float *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 2);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = &v10;
    v10 = v4;
    v6 = playeroverlap_SetRateCommon(v2, &v7, v3);
  }

  *(a1 + 6) = v6;
}

void playeroverlap_AddExternalStartupTask_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v7)
    {
      v4 = v7(v6, v2);
    }

    else
    {
      v4 = -12782;
    }
  }

  *(a1 + 4) = v4;
}

void playeroverlap_RemoveExternalStartupTask_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v7)
    {
      v4 = v7(v6, v2);
    }

    else
    {
      v4 = -12782;
    }
  }

  *(a1 + 4) = v4;
}

void playeroverlap_CopyDisplayedCVPixelBuffer_fun(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v8)
    {
      v5 = v8(v7, v2, v3);
    }

    else
    {
      v5 = -12782;
    }
  }

  *(a1 + 6) = v5;
}

uint64_t OUTLINED_FUNCTION_6_49@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8)
{
  *(v8 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_40_10(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1)
{

  return FigCFArrayApplyFunction();
}

uint64_t OUTLINED_FUNCTION_45_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_51_9(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_53_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_70_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 timea, uint64_t time_16)
{
  timea = *(v28 + 24);
  time_16 = *(v28 + 40);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

BOOL OUTLINED_FUNCTION_73_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_86_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_88_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_90_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

__CFString *activityOnThread_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnNewThread %p>", a1);
  return Mutable;
}

void activityOnThread_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (CFEqual(@"ThreadPriority", a2))
    {
      FigSimpleMutexLock();
      *a4 = FigCFNumberCreateUInt32();
      FigSimpleMutexUnlock();
    }
  }

  else
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 208, v4);
  }
}

double activityOnThread_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"ClientPID", a2))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        FigSimpleMutexLock();
        if (!*(DerivedStorage + 8))
        {
LABEL_24:
          FigSimpleMutexUnlock();
          return result;
        }

LABEL_5:
        FigThreadSetProperty();
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (CFEqual(@"ThrottleForBackground", a2))
    {
      if (a3)
      {
        v9 = CFBooleanGetTypeID();
        if (v9 == CFGetTypeID(a3))
        {
          if (CFBooleanGetValue(a3))
          {
            v10 = 16;
          }

          else
          {
            v10 = *(DerivedStorage + 60);
          }

          valuePtr = v10;
          v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          FigSimpleMutexLock();
          if (!*(DerivedStorage + 8) || !FigThreadSetProperty())
          {
            *(DerivedStorage + 60) = valuePtr;
          }

          FigSimpleMutexUnlock();
          if (v15)
          {
            CFRelease(v15);
          }

          return result;
        }
      }

      v11 = v3;
      v12 = 251;
    }

    else if (CFEqual(@"ThreadPriority", a2))
    {
      if (a3)
      {
        v13 = CFNumberGetTypeID();
        if (v13 == CFGetTypeID(a3))
        {
          FigSimpleMutexLock();
          if (!*(DerivedStorage + 8) || !FigThreadSetProperty())
          {
            *(DerivedStorage + 60) = FigCFNumberGetUInt32();
          }

          goto LABEL_24;
        }
      }

      v11 = v3;
      v12 = 265;
    }

    else
    {
      if (!CFEqual(@"MachTimeSharePolicy", a2))
      {
        return result;
      }

      if (a3)
      {
        v14 = CFBooleanGetTypeID();
        if (v14 == CFGetTypeID(a3))
        {
          FigSimpleMutexLock();
          if (!*(DerivedStorage + 8))
          {
            goto LABEL_24;
          }

          goto LABEL_5;
        }
      }

      v11 = v3;
      v12 = 277;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v12, v11);
  }

  return result;
}

void FigRateMinderUpdateRateWithTimestamps(const void *a1, uint64_t a2, CMTime *a3, Float64 a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (*(a2 + 12))
  {
    v12 = malloc_type_malloc(0x20uLL, 0x1020040A5B76CDFuLL);
    if (v12)
    {
      v13 = v12;
      v15 = *a2;
      *v12 = CMTimeGetSeconds(&v15);
      v15 = *a3;
      v13[1] = CMTimeGetSeconds(&v15);
      v13[2] = a4;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      *(v13 + 3) = v14;
      dispatch_async_f(*v9, v13, frm_processDeltaUpdateNotification);
    }
  }

  else
  {
    v10 = *DerivedStorage;
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    dispatch_async_f(v10, v11, frm_resetInternalState);
  }
}

void frm_processDeltaUpdateNotification(double *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 3);
  free(a1);
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    (*(v7 + 8))(v6, v3, v4, v5);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void frm_resetInternalState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  v4 = *(DerivedStorage + 16);
  *(v3 + 4) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 56) = 0x3FF0000000000000;
  if (v4)
  {
    v5 = **(CMBaseObjectGetDerivedStorage() + 16);
    if (v5)
    {
      *(v5 + 48) = 0;
    }

    v6 = *v4;
    if (*v4)
    {
      *(v6 + 4) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
    }
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigRateMinderCreate(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const void *a4, int a5, CFTypeRef *a6)
{
  value = @"FigRateMinderPrefilterType_None";
  cf = 0;
  MEMORY[0x19A8D3660](&FigRateMinderGetClassID_sRegisterFigRateMinderBaseTypeOnce, RegisterFigRateMinderBaseType, a3);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v24 = v11;
LABEL_25:
    if (cf)
    {
      CFRelease(cf);
    }

    return v24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigDispatchQueueCreateWithPriority();
  *DerivedStorage = v13;
  if (a4)
  {
    v14 = CFRetain(a4);
    v13 = *DerivedStorage;
  }

  else
  {
    v14 = 0;
  }

  *(DerivedStorage + 48) = v14;
  if (!v13)
  {
    FigRateMinderCreate_cold_1(&v28);
    goto LABEL_24;
  }

  *(DerivedStorage + 8) = frm_createAndInitializeRegressionModule();
  *(DerivedStorage + 24) = 5;
  *(DerivedStorage + 32) = malloc_type_calloc(5uLL, 8uLL, 0x100004000313F17uLL);
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 56) = 0x3FF0000000000000;
  if (a2)
  {
    CFDictionaryGetValueIfPresent(a2, @"FigRateMinderPrefilterTypes", &value);
    v15 = value;
  }

  else
  {
    v15 = @"FigRateMinderPrefilterType_None";
  }

  v16 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v16)
  {
LABEL_23:
    FigRateMinderCreate_cold_2(DerivedStorage, &v28);
LABEL_24:
    v24 = v28;
    goto LABEL_25;
  }

  v17 = v16;
  if (CFEqual(v15, @"FigRateMinderPrefilterType_None"))
  {
    v17[1] = frm_processDeltaUpdate;
    goto LABEL_17;
  }

  v18 = CFEqual(v15, @"FigRateMinderPrefilterType_Mean");
  v19 = frm_preFilterFnMean;
  if (!v18)
  {
    v20 = CFEqual(v15, @"FigRateMinderPrefilterType_Median");
    v19 = frm_preFilterFnMedian;
    if (!v20)
    {
      v21 = CFEqual(v15, @"FigRateMinderPrefilterType_RemoveOutliersLocal");
      v19 = frm_preFilterFnRemoveOutliersLocal;
      if (!v21)
      {
        v22 = CFEqual(v15, @"FigRateMinderPrefilterType_RemoveOutliersGlobal");
        v19 = frm_preFilterFnRemoveOutliersGlobal;
        if (!v22)
        {
          free(v17);
          goto LABEL_23;
        }
      }
    }
  }

  v17[1] = v19;
  *v17 = frm_createAndInitializeRegressionModule();
LABEL_17:
  *(DerivedStorage + 16) = v17;
  v23 = cf;
  *a6 = cf;
  if (!a5)
  {
    return 0;
  }

  v24 = FigStreamingLiveServerClockCreate(a1, v23, (DerivedStorage + 40));
  if (v24)
  {
    goto LABEL_25;
  }

  return v24;
}

unsigned int *frm_createAndInitializeRegressionModule()
{
  v0 = malloc_type_calloc(1uLL, 0x58uLL, 0x108004019F10DC7uLL);
  *v0 = 100;
  *(v0 + 1) = malloc_type_calloc(0x64uLL, 8uLL, 0x100004000313F17uLL);
  *(v0 + 2) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 3) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 4) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 5) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  v0[1] = 0;
  v0[12] = 0;
  *(v0 + 14) = 0u;
  *(v0 + 18) = 0u;
  return v0;
}

uint64_t frm_invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*DerivedStorage, a1, frm_invalidateGuts);
  return 0;
}

void frm_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  frm_invalidateGuts(a1);
  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {

    CFRelease(v4);
  }
}

void frm_invalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[1];
  if (v2)
  {
    frm_cleanupRegressionModule(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    if (*v3)
    {
      frm_cleanupRegressionModule(*v3);
      v3 = DerivedStorage[2];
    }

    free(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    free(v4);
    DerivedStorage[4] = 0;
  }
}

void frm_cleanupRegressionModule(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
  free(a1[4]);
  free(a1[5]);

  free(a1);
}

uint64_t RegisterFigRateMinderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void frm_processDeltaUpdate(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v8[v7] = a3;
  v9[v7] = a2;
  v10 = (v7 + 1);
  *(v6 + 48) = v10;
  if (v10 == *v6)
  {
    v11 = DerivedStorage;
    v12 = 0.0;
    if (v10)
    {
      v13 = v8;
      v14 = v10;
      do
      {
        v15 = *v13++;
        v12 = v12 + v15;
        --v14;
      }

      while (v14);
      v16 = 0.0;
      v17 = v9;
      v18 = v10;
      do
      {
        v19 = *v17++;
        v16 = v16 + v19;
        --v18;
      }

      while (v18);
      v20 = *(v6 + 24);
      v21 = v8;
      v22 = v20;
      v23 = v10;
      do
      {
        v24 = *v21++;
        *v22++ = v24 * v24;
        --v23;
      }

      while (v23);
      v25 = 0.0;
      v26 = v10;
      do
      {
        v27 = *v20++;
        v25 = v25 + v27;
        --v26;
      }

      while (v26);
      v28 = *(v6 + 32);
      v29 = v28;
      v30 = v10;
      do
      {
        v31 = *v8++;
        v32 = v31;
        v33 = *v9++;
        *v29++ = v32 * v33;
        --v30;
      }

      while (v30);
      v34 = 0.0;
      v35 = v10;
      do
      {
        v36 = *v28++;
        v34 = v34 + v36;
        --v35;
      }

      while (v35);
    }

    else
    {
      v16 = 0.0;
      v25 = 0.0;
      v34 = 0.0;
    }

    v37 = *(v6 + 4);
    v38 = v37;
    v39 = v12 + *(v6 + 56) * v37 * v10;
    v40 = v37 + 1;
    v41 = *(v6 + 72);
    v42 = v25 + *(v6 + 80) * v38 * v10;
    v43 = (v40 * v10);
    v44 = v39 / v43;
    v45 = (v16 + *(v6 + 64) * v38 * v10) / v43;
    *(v6 + 56) = v44;
    *(v6 + 64) = v45;
    v46 = v42 / v43;
    v47 = (v34 + v41 * v38 * v10) / v43;
    *(v6 + 72) = v47;
    *(v6 + 80) = v46;
    v48 = -(v46 - v44 * v44);
    if (v48 == 0.0)
    {
      v52 = *(DerivedStorage + 24);
      v54 = *(DerivedStorage + 28);
      v50 = 1.79769313e308;
      v49 = 1.79769313e308;
    }

    else
    {
      v49 = -(v47 - v44 * v45) / v48;
      v50 = v49 + -1.0;
      v51 = *(DerivedStorage + 32);
      v52 = *(DerivedStorage + 24);
      v53 = *(DerivedStorage + 28);
      v54 = v53 + 1;
      *(DerivedStorage + 28) = v53 + 1;
      *(v51 + 8 * (v53 % v52)) = v49 + -1.0;
    }

    if (v54 >= v52)
    {
      if (v52)
      {
        v55 = *(DerivedStorage + 32);
        v56 = v52;
        v57 = 0.0;
        v58 = v55;
        v59 = v52;
        do
        {
          v60 = *v58++;
          v57 = v57 + v60;
          --v59;
        }

        while (v59);
        v61 = v57 / v52;
        v62 = 0.0;
        do
        {
          v63 = *v55++;
          v62 = v62 + (v63 - v61) * (v63 - v61);
          --v56;
        }

        while (v56);
        v64 = v62 / v52;
      }

      else
      {
        v61 = NAN;
        v64 = NAN;
      }

      if (fabs(sqrt(v64) / v61) < 0.02 && fabs(v50) < 0.0002)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetDouble();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(Mutable);
        *(v11 + 28) = 0;
        *(v11 + 56) = v49;
        v40 = *(v6 + 4) + 1;
      }
    }

    *(v6 + 4) = v40;
    *(v6 + 48) = 0;
  }
}

uint64_t frm_preFilterFnMean(uint64_t a1, double a2, double a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = **(result + 16);
  v8 = *(v7 + 48);
  v10 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10[v8] = a3;
  v9[v8] = a2;
  v11 = (v8 + 1);
  *(v7 + 48) = v11;
  if (v11 == *v7)
  {
    if (v11)
    {
      v12 = 0.0;
      v13 = v11;
      do
      {
        v14 = *v10++;
        v12 = v12 + v14;
        --v13;
      }

      while (v13);
      v15 = v11;
      v16 = 0.0;
      do
      {
        v17 = *v9++;
        v16 = v16 + v17;
        --v11;
      }

      while (v11);
      v18 = v12 / v15;
      v19 = v16 / v15;
    }

    else
    {
      v18 = NAN;
      v19 = NAN;
    }

    frm_processDeltaUpdate(a1, v19, v18);
    result = CMBaseObjectGetDerivedStorage();
    v20 = **(result + 16);
    if (v20)
    {
      *(v20 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnMedian(uint64_t a1, double a2, double a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = **(result + 16);
  v8 = *(v7 + 48);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v9[v8] = a3;
  v10[v8] = a2;
  v11 = v8 + 1;
  *(v7 + 48) = v8 + 1;
  if (v8 + 1 == *v7)
  {
    if (v8 == -1)
    {
      v15 = 0;
      v12 = 0.0;
    }

    else
    {
      v12 = 0.0;
      v13 = (v8 + 1);
      do
      {
        v14 = *v9++;
        v12 = v12 + v14;
        --v13;
      }

      while (v13);
      v15 = (v8 + 1);
    }

    v16 = v12 / v11;
    qsort(v10, v15, 8uLL, compare);
    v17 = v11 >> 1;
    if (v8)
    {
      v18 = v10[v17 - 1] + v10[v17];
    }

    else
    {
      v18 = v10[v17];
    }

    frm_processDeltaUpdate(a1, v18, v16);
    result = CMBaseObjectGetDerivedStorage();
    v19 = **(result + 16);
    if (v19)
    {
      *(v19 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnRemoveOutliersLocal(uint64_t a1, double a2, double a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = **(result + 16);
  v8 = *(v7 + 48);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v9[v8] = a3;
  v10[v8] = a2;
  v11 = (v8 + 1);
  *(v7 + 48) = v11;
  if (v11 == *v7)
  {
    if (v11)
    {
      v12 = 0.0;
      v13 = v9;
      v14 = v11;
      do
      {
        v15 = *v13++;
        v12 = v12 + v15;
        --v14;
      }

      while (v14);
      v16 = v11;
      v17 = 0.0;
      v18 = v10;
      v19 = v11;
      do
      {
        v20 = *v18++;
        v17 = v17 + v20;
        --v19;
      }

      while (v19);
      v21 = *(v7 + 24);
      v22 = v9;
      v23 = v21;
      v24 = v11;
      v25 = v12 / v16;
      do
      {
        v26 = *v22++;
        *v23++ = v26 * v26;
        --v24;
      }

      while (v24);
      v27 = 0.0;
      v28 = v11;
      do
      {
        v29 = *v21++;
        v27 = v27 + v29;
        --v28;
      }

      while (v28);
      v30 = *(v7 + 32);
      v31 = v9;
      v32 = v10;
      v33 = v30;
      v34 = v11;
      do
      {
        v35 = *v31++;
        v36 = v35;
        v37 = *v32++;
        *v33++ = v36 * v37;
        --v34;
      }

      while (v34);
      v38 = 0.0;
      v39 = v11;
      do
      {
        v40 = *v30++;
        v38 = v38 + v40;
        --v39;
      }

      while (v39);
      v41 = v17 / v16;
      v42 = (-v38 / v16 + v25 * (v17 / v16)) / (-v27 / v16 + v25 * v25);
      v43 = v41 - v42 * v25;
      v44 = *(v7 + 40);
      v45 = v44;
      v46 = v11;
      do
      {
        v47 = *v10++;
        v48 = v47;
        v49 = *v9++;
        *v45++ = vabdd_f64(v48, v43 + v42 * v49);
        --v46;
      }

      while (v46);
      v50 = 0.0;
      v51 = v44;
      v52 = v11;
      do
      {
        v53 = *v51++;
        v50 = v50 + v53;
        --v52;
      }

      while (v52);
      v54 = 0.0;
      v55 = v11;
      v56 = v50 / v16;
      do
      {
        v57 = *v44++;
        v54 = v54 + (v57 - v56) * (v57 - v56);
        --v55;
      }

      while (v55);
      v58 = 0;
      v59 = sqrt(v54 / v16);
      v60 = v59 + v59;
      do
      {
        if (*(*(v7 + 40) + 8 * v58) <= v60)
        {
          frm_processDeltaUpdate(a1, *(*(v7 + 16) + 8 * v58), *(*(v7 + 8) + 8 * v58));
          LODWORD(v11) = *v7;
        }

        ++v58;
      }

      while (v58 < v11);
    }

    result = CMBaseObjectGetDerivedStorage();
    v61 = **(result + 16);
    if (v61)
    {
      *(v61 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnRemoveOutliersGlobal(uint64_t a1, double a2, double a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = **(result + 16);
  v8 = *(v7 + 48);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v9[v8] = a3;
  v10[v8] = a2;
  v11 = (v8 + 1);
  *(v7 + 48) = v11;
  if (v11 == *v7)
  {
    v12 = 0.0;
    if (v11)
    {
      v13 = v9;
      v14 = v11;
      do
      {
        v15 = *v13++;
        v12 = v12 + v15;
        --v14;
      }

      while (v14);
      v16 = 0.0;
      v17 = v10;
      v18 = v11;
      do
      {
        v19 = *v17++;
        v16 = v16 + v19;
        --v18;
      }

      while (v18);
      v20 = *(v7 + 24);
      v21 = v9;
      v22 = v20;
      v23 = v11;
      do
      {
        v24 = *v21++;
        *v22++ = v24 * v24;
        --v23;
      }

      while (v23);
      v25 = 0.0;
      v26 = v11;
      do
      {
        v27 = *v20++;
        v25 = v25 + v27;
        --v26;
      }

      while (v26);
      v28 = *(v7 + 32);
      v29 = v9;
      v30 = v10;
      v31 = v28;
      v32 = v11;
      do
      {
        v33 = *v29++;
        v34 = v33;
        v35 = *v30++;
        *v31++ = v34 * v35;
        --v32;
      }

      while (v32);
      v36 = 0.0;
      v37 = v11;
      do
      {
        v38 = *v28++;
        v36 = v36 + v38;
        --v37;
      }

      while (v37);
    }

    else
    {
      v16 = 0.0;
      v25 = 0.0;
      v36 = 0.0;
    }

    v39 = *(v7 + 4);
    v40 = v11;
    v41 = v16 + *(v7 + 64) * v39 * v11;
    v42 = *(v7 + 72);
    v43 = v25 + *(v7 + 80) * v39 * v11;
    v44 = (v11 + v11 * v39);
    v45 = (v12 + *(v7 + 56) * v39 * v11) / v44;
    v46 = v41 / v44;
    *(v7 + 56) = v45;
    *(v7 + 64) = v41 / v44;
    v47 = (v36 + v42 * v39 * v11) / v44;
    *(v7 + 72) = v47;
    *(v7 + 80) = v43 / v44;
    if (v11)
    {
      v48 = -(v47 - v45 * v46) / -(v43 / v44 - v45 * v45);
      v49 = v46 - v48 * v45;
      v50 = *(v7 + 40);
      v51 = v50;
      v52 = v11;
      do
      {
        v53 = *v10++;
        v54 = v53;
        v55 = *v9++;
        *v51++ = vabdd_f64(v54, v49 + v48 * v55);
        --v52;
      }

      while (v52);
      v56 = 0.0;
      v57 = v50;
      v58 = v11;
      do
      {
        v59 = *v57++;
        v56 = v56 + v59;
        --v58;
      }

      while (v58);
      v60 = 0.0;
      v61 = v11;
      v62 = v56 / v40;
      do
      {
        v63 = *v50++;
        v60 = v60 + (v63 - v62) * (v63 - v62);
        --v61;
      }

      while (v61);
      v64 = 0;
      v65 = sqrt(v60 / v40);
      v66 = v65 + v65;
      do
      {
        if (*(*(v7 + 40) + 8 * v64) <= v66)
        {
          frm_processDeltaUpdate(a1, *(*(v7 + 16) + 8 * v64), *(*(v7 + 8) + 8 * v64));
          LODWORD(v11) = *v7;
        }

        ++v64;
      }

      while (v64 < v11);
    }

    result = CMBaseObjectGetDerivedStorage();
    v67 = **(result + 16);
    if (v67)
    {
      *(v67 + 48) = 0;
    }
  }

  return result;
}

uint64_t FigActivitySchedulerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigActivitySchedulerGetClassID_sRegisterFigActivitySchedulerTypeOnce, RegisterFigActivitySchedulerType);

  return CMBaseClassGetCFTypeID();
}

__CFString *FigGetNotifyingObjectForMediaAccessibilityChanged(uint64_t a1, uint64_t a2)
{
  if (FigGetNotifyingObjectForMediaAccessibilityChanged_registerInitFigMediaAccessibiltySupportOnce != -1)
  {
    FigGetNotifyingObjectForMediaAccessibilityChanged_cold_1();
  }

  return @"FigMediaAccessibilityNotification_MediaAccessibilityChanged";
}

uint64_t _initFigMediaAccessibiltySupport(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRegisterForBarrierSupport();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t _mediaAccessibilityDidChangeNotificationCallback()
{
  dispatch_get_global_queue(0, 0);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t _deferredMediaAccessibilityDidChangeNotificationCallback(uint64_t a1, uint64_t a2)
{
  if (FigGetNotifyingObjectForMediaAccessibilityChanged_registerInitFigMediaAccessibiltySupportOnce != -1)
  {
    FigGetNotifyingObjectForMediaAccessibilityChanged_cold_1();
  }

  return CMNotificationCenterPostNotification();
}

uint64_t RegisterFigPictureCollectionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureCollectionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureCollectionWriterGetClassID_sRegisterFigPictureCollectionWriterBaseTypeOnce, RegisterFigPictureCollectionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCoreTextSubtitleRendererTestingUpdateMediaAccessibility(uint64_t a1, int a2, uint64_t a3)
{
  FigCaptionRendererSession = FigSubtitleRendererGetFigCaptionRendererSession(a1);

  return FigCaptionRendererSessionUpdateMediaAccessibility(FigCaptionRendererSession, a2, a3);
}

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return FigCaptionRendererSessionCreate(0, 0, 0, &a10);
}

uint64_t setupFCR(uint64_t a1)
{
  v2 = FigCaptionRendererSessionCreate(0, 0, 0, (a1 + 200));
  if (v2)
  {
    v3 = v2;
    setupFCR_cold_1();
  }

  else
  {
    v3 = FigCaptionRendererSessionSetHiddenCallback(*(a1 + 200), setHiddenFCR, *(a1 + 8));
    if (v3)
    {
      setupFCR_cold_2();
    }

    else
    {
      [*(a1 + 8) setHidden:1];
      v4 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __setupFCR_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return v3;
}

uint64_t setupCoreTextRenderer(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 288) = *MEMORY[0x1E695F058];
  *(a1 + 304) = v3;
  *(a1 + 224) = 0;
  *(a1 + 256) = v2;
  *(a1 + 272) = v3;
  *(a1 + 216) = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 232) = Mutable;
  if (Mutable)
  {
    v6 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 240) = v6;
    if (v6)
    {
      v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      *(a1 + 248) = v7;
      if (v7)
      {
        v8 = FigCoreTextSubtitleRendererCreate(v4, (a1 + 208));
        if (v8)
        {
          setupCoreTextRenderer_cold_1();
        }
      }

      else
      {
        setupCoreTextRenderer_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      setupCoreTextRenderer_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    setupCoreTextRenderer_cold_4(&v12);
    return v12;
  }

  return v8;
}

void releaseFCR(uint64_t a1)
{
  FigCaptionRendererSessionStop(*(a1 + 200));
  v2 = *(a1 + 200);
  if (v2)
  {

    CFRelease(v2);
  }
}

void releaseCoreTextRenderer(uint64_t a1)
{
  if (!*(a1 + 170))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  if (*(a1 + 208))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 208);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
        [ValueAtIndex removeFromSuperlayer];
      }
    }

    v8 = *(a1 + 240);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
    if (v10 >= 1)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = CFArrayGetValueAtIndex(*(a1 + 248), j);
        [v13 removeFromSuperlayer];
      }
    }

    v14 = *(a1 + 248);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v15 = *(a1 + 232);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 216);
  if (v16)
  {

    CFRelease(v16);
  }
}

void getLayoutForAnimation(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 176);
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getLayoutForAnimation_block_invoke;
    v8[3] = &__block_descriptor_80_e5_v8__0l;
    v8[4] = a1;
    *&v8[5] = a3;
    *&v8[6] = a4;
    *&v8[7] = a5;
    *&v8[8] = a6;
    v8[9] = a2;
    dispatch_sync(v7, v8);
  }
}

void updateSubtitleDisplay(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __updateSubtitleDisplay_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

unsigned __int8 *updateNonForcedSubtitleDisplayEnabledDo(unsigned __int8 *result)
{
  v1 = *result;
  v2 = *(*result + 168);
  v3 = result[8];
  if (v2 != v3)
  {
    *(v1 + 168) = v3;
    v2 = v3;
  }

  if (*(v1 + 184) == 1)
  {
    *(v1 + 171) = (*(v1 + 224) | v2) == 0;
  }

  return result;
}

void setHiddenFCR(char a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __setHiddenFCR_block_invoke;
  v2[3] = &unk_1E7483B70;
  v2[4] = a2;
  v3 = a1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __setupFCR_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  FigCaptionRendererSessionSetCALayerDevice(*(*(a1 + 32) + 200), *(*(a1 + 32) + 8));
  [MEMORY[0x1E6979518] commit];
  v2 = *(*(a1 + 32) + 8);
}

uint64_t __setHiddenFCR_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 32) setHidden:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

void subtitleChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5)
  {
    digestSubtitleSample(0, a2, a5);
  }
}

void digestSubtitleSample(int a1, uint64_t a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v7[0] = a2;
  v7[1] = cf;
  if (a1)
  {
    digestSubtitleSampleDo_0(v7);
  }

  else
  {
    v6 = *(a2 + 176);
    if (v6)
    {
      dispatch_sync_f(v6, v7, digestSubtitleSampleDo_0);
    }
  }

  updateSubtitleDisplay(a2, 1);
}

void updateSubtitleDo(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 224) = *(a1 + 9);
  v3 = *(v2 + 216);
  v4 = a1[2];
  *(v2 + 216) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 8))
  {
    v5 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 256) = *MEMORY[0x1E695F058];
    *(v2 + 272) = v5;
  }

  v6 = !*(v2 + 224) && !*(v2 + 168);
  *(v2 + 171) = v6;
}

double __getLayoutForAnimation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v11 = *(v2 + 16);
  v12 = v3;
  v4 = *(a1 + 56);
  *(v2 + 16) = *(a1 + 40);
  *(v2 + 32) = v4;
  v10 = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 72);
  v14 = 0;
  v13[0] = v5;
  v13[1] = 0;
  v13[2] = v6;
  v13[3] = &v10;
  v13[4] = &v14;
  getSuggestedLayoutDo(v13);
  v7 = *(a1 + 32);
  result = *&v11;
  v9 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v9;
  return result;
}

void getSuggestedLayout(int a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5)
{
  v7 = 0;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = &v7;
  if (a1)
  {
    getSuggestedLayoutDo(v6);
  }

  else
  {
    v5 = *(a2 + 176);
    if (v5)
    {
      dispatch_sync_f(v5, v6, getSuggestedLayoutDo);
    }
  }
}

void getSuggestedLayoutDo(unint64_t *a1)
{
  v2 = *a1;
  v3 = *(MEMORY[0x1E695F058] + 16);
  v37 = *MEMORY[0x1E695F058];
  v38 = v3;
  v4 = *(v2 + 32);
  v31 = *(v2 + 16);
  v32 = v4;
  v33 = *(v2 + 48);
  FCRGetTransform(&v19, *(v2 + 48), *(v2 + 56), *(v2 + 32), *(v2 + 40));
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v5 = *(v2 + 64);
  v6 = 1.0;
  if (*(v2 + 169) == 1)
  {
    v7 = [*(v2 + 8) getLayerDisplay];
    if ([v7 isOverscanned])
    {
      [v7 overscanAmount];
      v6 = v8;
    }
  }

  v9 = [*(v2 + 8) contentsAreFlipped];
  cf = 0;
  v11 = *(v2 + 208);
  v10 = *(v2 + 216);
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v19 = v31;
  v20 = v32;
  v25 = v5;
  v26 = 0;
  v27 = 0;
  v28 = v6;
  v29 = v9;
  *a1[4] = FigSubtitleRendererLayout(v11, v10, &v19, &v37, &cf);
  if (*(a1 + 8))
  {
    v12 = v38;
    *(v2 + 288) = v37;
    *(v2 + 304) = v12;
  }

  v13 = *(v2 + 280);
  if (v13 <= 0.0 || (v14 = *(v2 + 272), v14 <= 0.0) || fabs((*(v2 + 304) - v14) / v14) >= 0.02 || fabs((*(v2 + 312) - v13) / v13) >= 0.02)
  {
    *a1[3] = 1;
    if (*(a1 + 8))
    {
      v15 = v38;
      *(v2 + 256) = v37;
      *(v2 + 272) = v15;
      v16 = *(v2 + 224);
      v19 = v2;
      BYTE9(v19) = v16;
      v20 = cf;
      updateSubtitleDo(&v19);
    }
  }

  else
  {
    *a1[3] = 0;
  }

  v17 = a1[2];
  v18 = v38;
  *v17 = v37;
  v17[1] = v18;
  if (cf)
  {
    CFRelease(cf);
  }
}

void __updateSubtitleDisplay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12[0] = *MEMORY[0x1E695F058];
  v12[1] = v4;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = 1;
  v11 = 1;
  v6 = *(v2 + 176);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __updateSubtitleDisplayDoAsync_block_invoke;
    v7[3] = &unk_1E7482510;
    v7[4] = &v8;
    v7[5] = v2;
    dispatch_sync(v6, v7);
    v5 = *(v9 + 24);
  }

  if (v5 != [*(v2 + 8) isHidden])
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [*(v2 + 8) setHidden:*(v9 + 24) != 0];
    [MEMORY[0x1E6979518] commit];
  }

  if (([*(v2 + 8) isHidden] & 1) == 0)
  {
    getSuggestedLayout(0, v2, 1u, v12, &v13);
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(v2 + 8) setNeedsLayout];
    if (v13 | v3)
    {
      [*(v2 + 8) setNeedsDisplay];
    }

    [MEMORY[0x1E6979518] commit];
  }

  _Block_object_dispose(&v8, 8);
}

void sub_1965CCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RegisterFigMetadataWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataWriterGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataWriterGetClassID_sRegisterFigMetadataWriterBaseTypeOnce, RegisterFigMetadataWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigMetadataWriterRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigMetadataWriterRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(CVPixelBufferRef pixelBuffer, int a2, int a3, CGImageRef *imageOut)
{
  if (!a2 || !a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      if (a2)
      {
        if (a3)
        {
LABEL_6:
          v10 = VTCreateCGImageFromCVPixelBuffer(pixelBuffer, v9, imageOut);
          CFRelease(v9);
          return v10;
        }
      }

      else
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E69834C8], *MEMORY[0x1E695E4C0]);
        if (a3)
        {
          goto LABEL_6;
        }
      }

      CFDictionaryAddValue(v9, *MEMORY[0x1E69834D8], *MEMORY[0x1E695E4C0]);
      goto LABEL_6;
    }
  }

  return VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, imageOut);
}

uint64_t FigShareAndAirPlayHelperLocalGetShared(uint64_t a1, uint64_t a2)
{
  if (FigShareAndAirPlayHelperLocalGetShared_onceToken != -1)
  {
    FigShareAndAirPlayHelperLocalGetShared_cold_1();
  }

  return FigShareAndAirPlayHelperLocalGetShared_sSharedHelper;
}

void __FigShareAndAirPlayHelperLocalGetShared_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E480];
  FigShareAndAirPlayHelperGetClassID(a1, a2);
  if (!CMDerivedObjectCreate())
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = dispatch_queue_create("FigShareAndAirPlayHelperLocal.queue", 0);
    *DerivedStorage = CFSetCreateMutable(v2, 0, 0);
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__4;
    v4 = getTUCallCenterClass_softClass;
    v10 = __Block_byref_object_dispose__4;
    v11 = getTUCallCenterClass_softClass;
    if (!getTUCallCenterClass_softClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getTUCallCenterClass_block_invoke;
      v5[3] = &unk_1E7486A28;
      v5[4] = &v6;
      __getTUCallCenterClass_block_invoke(v5);
      v4 = v7[5];
    }

    _Block_object_dispose(&v6, 8);
    DerivedStorage[2] = [objc_msgSend(v4 "sharedInstance")];
    FigShareAndAirPlayHelperLocalGetShared_sSharedHelper = 0;
  }
}

void sub_1965CCF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t localHelper_SetEnableEchoMitigation(uint64_t a1, char a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __localHelper_SetEnableEchoMitigation_block_invoke;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    v9 = a2;
    block[4] = DerivedStorage;
    block[5] = a3;
    dispatch_async(v6, block);
    return 0;
  }

  else
  {
    localHelper_SetEnableEchoMitigation_cold_1(&v10);
    return v10;
  }
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7486A48;
    v5 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    __getTUCallCenterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTUCallCenterClass_block_invoke_cold_1();
  }

  getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

CFIndex OUTLINED_FUNCTION_2_77()
{
  v2 = **(v0 + 32);

  return CFSetGetCount(v2);
}

uint64_t FigMetadataSerializerGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataSerializerGetClassID_sRegisterFigMetadataSerializerBaseTypeOnce, RegisterFigMetadataSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigMetadataSerializerRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

double FigMetadataSerializerCreateUserDataCommon(uint64_t a1, char a2, CFTypeRef *a3)
{
  if (a3)
  {
    FigMetadataSerializerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      *(CMBaseObjectGetDerivedStorage() + 16) = a2;
      *a3 = 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954716, "<<<< FMDW_UserData >>>>", 1461, v3);
  }

  return result;
}

double FigISOUserDataCreateItemDataFromText(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFLocale *a4, __CFData **a5)
{
  length = 0;
  *bytes = 0;
  if (a2)
  {
    if (a5)
    {
      v7 = a3;
      if (a3 == 134217984 || a3 == 268435712)
      {
        v15 = __rev16(FigMetadataGetPackedISO639_2TFromLocale(a4));
        BytesFromCFString = FigCreateBytesFromCFString();
        if (BytesFromCFString)
        {
          v10 = BytesFromCFString;
          Mutable = CFDataCreateMutable(a1, 0);
          CFDataAppendBytes(Mutable, bytes, 6);
          if (v7 == 268435712)
          {
            *v17 = -2;
            CFDataAppendBytes(Mutable, v17, 2);
          }

          CFDataAppendBytes(Mutable, v10, length);
          *a5 = Mutable;
          CFAllocatorDeallocate(a1, v10);
        }

        else
        {
          FigISOUserDataCreateItemDataFromText_cold_1(v17);
        }
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954709, "<<<< FMDW_UserData >>>>", 1504, v5);
      }
    }

    else
    {
      FigISOUserDataCreateItemDataFromText_cold_2(v17);
    }
  }

  else
  {
    FigISOUserDataCreateItemDataFromText_cold_3(v17);
  }

  return result;
}

__CFString *FigUserDataSerializerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigUserDataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v3 + 8));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v3 + 12));
    CFStringAppendFormat(Mutable, 0, @"%@", *v3);
  }

  else
  {
    FigUserDataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}