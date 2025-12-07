uint64_t OUTLINED_FUNCTION_1_101(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 time2, uint64_t time2_16)
{
  time2 = *(v24 - 96);
  time2_16 = *(v24 - 80);

  return CMTimeCompare(&a9, &time2);
}

uint64_t FigPlaybackMemoryReportCurrentTransactions()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigOSTransactionCopyDescriptions();
  Count = CFArrayGetCount(v2);
  CFStringAppend(Mutable, @"[");
  if (Count >= 1)
  {
    v4 = 0;
    v5 = Count & 0x7FFFFFFF;
    do
    {
      v6 = v2;
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
      Length = CFStringGetLength(ValueAtIndex);
      v9 = CFStringFind(ValueAtIndex, @":", 0).location + 1;
      v17.length = Length - v9;
      result.location = 0;
      result.length = 0;
      v17.location = v9;
      CFStringFindWithOptions(ValueAtIndex, @" ", v17, 0, &result);
      v18.length = result.location - v9;
      v10 = ValueAtIndex;
      v2 = v6;
      v18.location = v9;
      v11 = CFStringCreateWithSubstring(v0, v10, v18);
      CFStringAppend(Mutable, v11);
      CFStringAppend(Mutable, @",");
      CFRelease(v11);
      ++v4;
    }

    while (v5 != v4);
  }

  v16.location = CFStringGetLength(Mutable) - 1;
  v16.length = 1;
  CFStringReplace(Mutable, v16, @"]");
  if (dword_1EAF17388)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(Mutable);
  CFRelease(v2);
  return 0;
}

uint64_t FigPlaybackMemoryReporterStart(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);
  gMemoryReporterQueue = dispatch_queue_create("com.apple.coremedia.playback-memory-reporter", v2);
  gMemoryReporterTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, gMemoryReporterQueue);
  dispatch_source_set_timer(gMemoryReporterTimer, 0, 0x45D964B800uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(gMemoryReporterTimer, &__block_literal_global_45);
  dispatch_activate(gMemoryReporterTimer);
  return 0;
}

uint64_t getpreset_AAC_44kHz_Mono_64kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Mono_64kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Mono_64kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(64000);
    getpreset_AAC_44kHz_Mono_64kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Mono_64kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_22kHz_Mono_32kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_22kHz_Mono_32kbit_audioOptions;
  if (!getpreset_AAC_22kHz_Mono_32kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(32000);
    getpreset_AAC_22kHz_Mono_32kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_22kHz_Mono_32kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_32kHz_Stereo_36kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions;
  if (!getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(36000);
    getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_32kHz_Stereo_36kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Stereo_48kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(48000);
    getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Stereo_48kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_44kHz_Stereo_128kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Stereo_128kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Stereo_128kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(128000);
    getpreset_AAC_44kHz_Stereo_128kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Stereo_128kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_44kHz_Stereo_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Stereo_256kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Stereo_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_44kHz_Stereo_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Stereo_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_128kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_128kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_128kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(128000);
    getpreset_AAC_48kHz_Stereo_128kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_128kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_160kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_160kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_160kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(160000);
    getpreset_AAC_48kHz_Stereo_160kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_160kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_256kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_48kHz_Stereo_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_256kbit_audioOptions;
  if (!getpreset_AAC_48kHz_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_48kHz_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AMR_8kHz_Mono_12kbit_CBR(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions;
  if (!getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(12200);
    getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AMR_8kHz_Mono_12kbit_CBR_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_iLBC_8kHz_Mono_15kbit(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_iLBC_8kHz_Mono_15kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM_16bit_LE_44kHz_Mono(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_16bit_LE_44kHz_Mono_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM_16bit_LE_44kHz_Stereo(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_16bit_LE_44kHz_Stereo_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_44kHz_Mono_16bitSource(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_44kHz_Mono_16bitSource_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_44kHz_Stereo_16bitSource(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_44kHz_Stereo_16bitSource_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_16bit(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_16bit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_iLBC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_iLBC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_AMR(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_AMR_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_Passthru(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_Passthru_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_AAC_22kHz_Mono_24kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_22kHz_Mono_24kbit_audioOptions;
  if (!getpreset_AAC_22kHz_Mono_24kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(24000);
    getpreset_AAC_22kHz_Mono_24kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_22kHz_Mono_24kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Mono_24kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Mono_24kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Mono_24kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(24000);
    getpreset_AACHE_44kHz_Mono_24kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Mono_24kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Mono_32kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Mono_32kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Mono_32kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(32000);
    getpreset_AACHE_44kHz_Mono_32kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Mono_32kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_NoAudio(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_NoAudio_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

CFDictionaryRef createStringIntDictionary(int a1)
{
  keys = @"FigAudioCompressionOption_AudioConverterEncodeBitRate";
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v2 = CFDictionaryCreate(v1, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  return v2;
}

uint64_t FigPictureCollectionCreateFromByteStreamWithOptions(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigPictureCollectionCreateFromByteStreamWithOptions_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    FigPictureCollectionCreateFromByteStreamWithOptions_cold_1(&v12);
    return v12;
  }

  if (a3)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  v7 = IFFParseByteStreamAndCreateItemInformation(0, a2, &cf);
  v8 = cf;
  if (v7)
  {
    IFFPictureCollection = v7;
    if (!cf)
    {
      return IFFPictureCollection;
    }

    goto LABEL_7;
  }

  IFFPictureCollection = CreateIFFPictureCollection(a1, cf, a4);
  v8 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v8);
  }

  return IFFPictureCollection;
}

uint64_t CreateIFFPictureCollection(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  FigPictureCollectionGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t FigPictureCollectionCreateFromIFFItemInformation(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a2)
  {
    if (a3)
    {

      return CreateIFFPictureCollection(a1, a2, a3);
    }

    else
    {
      FigPictureCollectionCreateFromIFFItemInformation_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigPictureCollectionCreateFromIFFItemInformation_cold_2(&v5);
    return v5;
  }
}

void IFFPictureCollectionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *IFFPictureCollectionCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureCollection %p retainCount %ld iiP %p>", a1, v4, *DerivedStorage);
  return Mutable;
}

uint64_t IFFPictureCollectionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a4)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyTracksDetected(*v6, &cf);
      if (!IsMIAF)
      {
LABEL_4:
        if (cf)
        {
          v8 = 0;
        }

        else
        {
          v8 = 4294954513;
        }

        *a4 = cf;
        return v8;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyMajorBrand(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyMajorBrandsMinorVersion(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyCompatibleBrands(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IFFInformationCopyPrimaryItemIndex(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopySourceIsMIAF(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = CreateGroupsListDescriptor(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = IsMIAF;
      goto LABEL_30;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopySourceSpecifiesOrientation(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    v8 = 4294954512;
  }

  else
  {
    IFFPictureCollectionCopyProperty_cold_1(&v11);
    v8 = v11;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void _createGroupDescription(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (*(a2 + 28))
  {
    v7 = *(a2 + 24);
    if (v7 == 1937007986)
    {
      v8 = kFigPictureCollection_GroupType_StereoPair;
LABEL_7:
      v9 = *v8;
      v10 = *(a2 + 48);
      if (v10)
      {
        Count = CFArrayGetCount(v10);
        if (Count >= 0x80000000)
        {
          _createGroupDescription_cold_1(&v45);
          return;
        }

        v12 = Count;
        v13 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
        if (v12 >= 1)
        {
          for (i = 0; i != v12; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 48), i);
            if (*(ValueAtIndex + 17))
            {
              v45 = 0;
              if (IFFInformationGetGroupByID(a1, *(ValueAtIndex + 10), &v45))
              {
                goto LABEL_66;
              }

              value = 0;
              if (_createGroupDescription(a1, v45, &value))
              {
                goto LABEL_66;
              }

              v17 = value;
              CFArrayAppendValue(Mutable, value);
              if (v17)
              {
                CFRelease(v17);
              }
            }

            else
            {
              LODWORD(v45) = 0;
              IFFInformationGetIndexOfPicture(a1, *(ValueAtIndex + 4), &v45);
              if (v18 || FigCFArrayAppendInt32())
              {
                goto LABEL_66;
              }
            }
          }

          v19 = v12 > 2;
          goto LABEL_25;
        }
      }

      else
      {
        v13 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      v19 = 0;
LABEL_25:
      v21 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v21)
      {
LABEL_66:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

      v22 = v21;
      CFDictionarySetValue(v21, @"GroupType", v9);
      CFDictionarySetValue(v22, @"GroupPictureIndexList", Mutable);
      if (FigCFDictionarySetInt32() || FigCFDictionarySetInt32())
      {
        goto LABEL_65;
      }

      if (*(a2 + 24) != 1937007986)
      {
        v24 = 0;
LABEL_59:
        if (FigCFDictionaryGetCount() >= 1)
        {
          CFDictionarySetValue(v22, @"GroupPropertiesKey", v24);
        }

        *a3 = v22;
        v22 = 0;
        goto LABEL_62;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
LABEL_65:
        CFRelease(v22);
        goto LABEL_66;
      }

      v24 = MutableCopy;
      v25 = *(a2 + 40);
      if (*(v25 + 216))
      {
        if (FigCFDictionarySetInt32())
        {
          goto LABEL_63;
        }

        v25 = *(a2 + 40);
      }

      v26 = *(v25 + 224);
      if (v26)
      {
        v42 = CFArrayGetCount(v26);
        if (v42 >= 1)
        {
          v40 = v22;
          v39 = a3;
          v41 = Mutable;
          v27 = FigCFArrayCreateMutableCopy();
          if (!v27)
          {
            goto LABEL_63;
          }

          v28 = v27;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            v43 = v29;
            v31 = FigCFArrayGetValueAtIndex();
            if (*v31)
            {
              break;
            }

LABEL_48:
            v29 = v43 + 1;
            if (v43 + 1 == v42)
            {
              v38 = 0;
              goto LABEL_53;
            }
          }

          v32 = v31;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            if (v30)
            {
              CFRelease(v30);
            }

            v30 = FigCFDictionaryCreateMutableCopy();
            if (!v30)
            {
              break;
            }

            FigCFDictionarySetValue();
            v35 = *(v32 + 1);
            if (*(v35 + v33 + 1))
            {
              v36 = FigCFDictionarySetFloat();
              if (v36)
              {
                v38 = v36;
                goto LABEL_52;
              }

              v35 = *(v32 + 1);
            }

            v37 = *(v35 + v33 + 8);
            if (v37)
            {
              CFDictionarySetValue(v30, @"SubTypeURI", v37);
            }

            CFArrayAppendValue(v28, v30);
            ++v34;
            v33 += 16;
            if (v34 >= *v32)
            {
              goto LABEL_48;
            }
          }

          v38 = -12846;
LABEL_52:
          CFRelease(v28);
          v28 = 0;
LABEL_53:
          v22 = v40;
          Mutable = v41;
          if (v30)
          {
            CFRelease(v30);
          }

          if (v38)
          {
LABEL_62:
            if (!v24)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          _createGroupDescription_cold_2(v28, v24);
          a3 = v39;
        }
      }

      if (!v19 || !FigCFDictionarySetInt32())
      {
        goto LABEL_59;
      }

LABEL_63:
      CFRelease(v24);
LABEL_64:
      if (!v22)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (v7 == 1634497650)
    {
      v8 = kFigPictureCollection_GroupType_Alternate;
      goto LABEL_7;
    }

    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954448, "<<< IFF_Parsing >>>", 1163, v3);
  }
}

uint64_t IFFPictureCollectionGetPictureCount(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  v4 = a2;
  v5 = *CMBaseObjectGetDerivedStorage();

  return IFFInformationGetPictureCount(v5, v4, a3);
}

uint64_t CreatePictureReader(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  FigPictureReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = v7;
  if (v7)
  {
    CreatePictureReader_cold_1(v7, &v13, &v14);
    v11 = v14;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *DerivedStorage = v10;
    DerivedStorage[1] = a3;
    v11 = v13;
  }

  *a4 = v11;
  return v8;
}

void PictureReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureReaderCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureReader %p> rc %ld", a1, v4);
  return Mutable;
}

uint64_t PictureReaderCopyPictureTileCursorService(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(*DerivedStorage);
  v5 = *DerivedStorage;
  v4 = *(DerivedStorage + 8);
  cf = 0;
  if (!IFFPictureTileAccessorSupportsPicture(v4))
  {
    return 4294950135;
  }

  FigPictureTileCursorServiceGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v9 = v6;
    PictureReaderCopyPictureTileCursorService_cold_1(v6, &cf);
  }

  else
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (v5)
    {
      v8 = CFRetain(v5);
    }

    else
    {
      v8 = 0;
    }

    *v7 = v8;
    v7[1] = v4;
    if (a2)
    {
      v9 = 0;
      *a2 = cf;
    }

    else
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  return v9;
}

void PictureReaderCopyXMPLocationByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();

  IFFPictureCopyXMPLocationByIndex();
}

void PictureReaderCopyDebugMetadataLocationByIndex(uint64_t a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);

  IFFPictureCopyDebugMetadataLocationByIndex(v8, a2);
}

double PictureReaderCopySampleLocationByIndex(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureCopySampleLocation(v11, a2, a3, a4, a5, a6);
}

uint64_t PictureReaderCopyCustomMetadataLocationByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureCopyCustomMetadataLocationByIndex(v16, a2, a3, a4, a5, a6, a7, a8, a9);
}

double PictureReaderCopyExifLocationAndEncodingByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFStringRef *a21)
{
  v28 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureCopyExifLocationByIndex(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void PictureReaderCopyXMPLocationAndEncodingByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CMBaseObjectGetDerivedStorage();

  IFFPictureCopyXMPLocationByIndex();
}

void PictureTileCursorServiceFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureTileCursorServiceCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureTileCursorService %p>", a1);
  return Mutable;
}

uint64_t PictureTileCursorServiceCreateCursorAtFirstTile(const void *a1, CFTypeRef *a2)
{
  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 8);

  return CreatePictureTileCursor(v5, v6, v7, a2);
}

uint64_t CreatePictureTileCursor(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  FigPictureTileCursorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v10 = v7;
    CreatePictureTileCursor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *DerivedStorage = v9;
    v10 = IFFPictureTileAccessorCreate(a3, DerivedStorage + 1);
    if (!v10)
    {
      *a4 = 0;
    }
  }

  return v10;
}

void PictureTileCursorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IFFPictureTileAccessorDispose(*(DerivedStorage + 8));
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureTileCursorCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureTileCursor %p>", a1);
  return Mutable;
}

uint64_t PictureTileCursorResetToBeginning(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureTileAccessorResetCursor(v1);
}

uint64_t PictureTileCursorMoveToPosition(uint64_t a1, unint64_t a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IFFPictureTileAccessorSeekCursorToLocation(*(DerivedStorage + 8), a2, a3);
  if (v6)
  {
    return 4294950126;
  }

  else
  {
    return 0;
  }
}

double PictureTileCursorCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureTileAccessorCopySampleLocation(v11, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_2_98(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t FigContentKeyBossStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigContentKeyBossStartServer_block_invoke;
  block[3] = &unk_1E748C678;
  block[4] = &v3;
  if (FigContentKeyBossStartServer_sFigContentKeyBossServerSetupOnce != -1)
  {
    dispatch_once(&FigContentKeyBossStartServer_sFigContentKeyBossServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigContentKeyBossStartServer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  Mutable = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    FigCFDictionarySetInt32();
    if (!FigServer_IsMediaparserd())
    {
      FigServer_IsMediaplaybackd();
    }

    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v9);
  }

  else
  {
    __FigContentKeyBossStartServer_block_invoke_cold_1(a1);
  }
}

void FigCFRelease_7(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigContentKeyBossServerGetIDByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return FigXPCServerAssociateObjectWithNeighborProcess();
      }

      else
      {
        FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_3(&v6);
    return v6;
  }
}

void ckbservercompanion_finalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    os_release(v2);
    a1[5] = 0;
  }

  FigXPCRelease();
  v3 = a1[4];
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t OUTLINED_FUNCTION_0_113(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return ckbserver_copyBossAndCompanion(v17, v16, va, 0);
}

uint64_t OUTLINED_FUNCTION_10_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return ckbserver_copyBossAndCompanion(v13, v12, va, (v14 - 72));
}

uint64_t OUTLINED_FUNCTION_14_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_15_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_16_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

void OUTLINED_FUNCTION_17_26(void *a1@<X8>)
{
  v3 = *(v1 + 16);

  xpc_connection_send_message(v3, a1);
}

uint64_t FigVisualContextServerRetainVisualContextForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigVisualContextGetTypeID(v4, v5))
      {
        return 0;
      }
    }

    FigVisualContextServerRetainVisualContextForID_cold_1(&v8);
    v6 = v8;
  }

  if (a2 && v6 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v6;
}

void FigVisualContextServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleVisualContextMessage, HandleVisualContextNoReplyMessage);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

void DisposeServedVisualContextState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      CFRelease(*a1);
    }

    FigXPCRelease();
    v4 = a1[3];
    if (v4)
    {
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t vcs_ImageAvailableImmediateCallback(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  return vcs_SendCallback(&v5, a3, a4, 1229015405);
}

__n128 OUTLINED_FUNCTION_4_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  v15[7] = a14;
  *(v16 - 112) = a15;
  return result;
}

__n128 OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  v15[5] = a14;
  *(v16 - 144) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return FigXPCMessageGetCMTime();
}

void mediaprocessor_UpcomingPTSInfoChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a2, 0, MEMORY[0x1E6960C70]);

    mediaprocessor_TriggerSchedulingIfOutputIsLow(a2);
  }
}

uint64_t mediaprocessor_ResetOutput(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 72);
  if (v6)
  {

    return v6(v2);
  }

  return result;
}

uint64_t mediaprocessor_SessionTerminated(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigMediaProcessorIsAtEndOfInputData(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

void FigMediaProcessorFlush(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< MediaProcessor >>>>", 949, v1);
  }

  else
  {
    FigSimpleMutexLock();
    do
    {
      v4 = 0;
    }

    while (!mediaprocessor_DequeueAndProcessSampleBuffer(a1, &v4) && !v4);
    FigSimpleMutexUnlock();
  }
}

uint64_t mediaprocessor_DequeueAndProcessSampleBuffer(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  if (*(a1 + 90) && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v5(v4);
  v7 = v6;
  if (v6)
  {
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetOutputPresentationTimeStamp(&v15, v6);
    v14 = v15;
    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a1, 1, &v14.value);
    v8 = *(a1 + 24);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v10 = v9(v8, v7);
    }

    else
    {
      v10 = 4294954514;
    }

    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a1, 1, MEMORY[0x1E6960C70]);
    CFRelease(v7);
    return v10;
  }

LABEL_9:
  *a2 = 1;
  if (!*(a1 + 89) && FigMediaProcessorIsAtEndOfInputData(a1))
  {
    v11 = *(a1 + 24);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v12(v11);
    }

    *(a1 + 89) = 1;
  }

  if (*(a1 + 88) || !FigMediaProcessorIsAtEndOfInputData(a1) || !*(a1 + 89))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v10 = 0;
  *(a1 + 88) = 1;
  return v10;
}

void FigMediaProcessorReset(uint64_t a1, int a2)
{
  if (!*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (a2)
    {
      FigMediaProcessorFlush(a1);
      v6 = *(a1 + 24);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v7)
      {
        v7(v6);
      }

      v8 = *(a1 + 40);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a1 + 24);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v9)
      {
LABEL_12:
        *(a1 + 88) = 0;
        FigSimpleMutexUnlock();
        return;
      }
    }

    v9(v8);
    goto LABEL_12;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< MediaProcessor >>>>", 973, v2);
}

void FigMediaProcessorSetWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954511;
    v7 = 1013;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< MediaProcessor >>>>", v7, v5);
    return;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954516;
    v7 = 1016;
    goto LABEL_7;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954516;
    v7 = 1019;
    goto LABEL_7;
  }

  v11 = (a1 + 80);
  FigSimpleMutexLock();
  v12 = CFGetAllocator(a1);
  v21 = *a2;
  v13 = CMTimeCopyAsDictionary(&v21, v12);
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v16 || v16(v15, @"HighWaterDuration", v14))
    {
      FigMediaProcessorSetWaterLevels_cold_3();
      v18 = 0;
    }

    else
    {
      v17 = CFGetAllocator(a1);
      v21 = *a3;
      v18 = CMTimeCopyAsDictionary(&v21, v17);
      if (v18)
      {
        v19 = *(a1 + 40);
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v20 || v20(v19, @"LowWaterDuration", v18))
        {
          FigMediaProcessorSetWaterLevels_cold_1();
        }

        else
        {
          mediaprocessor_TriggerSchedulingIfOutputIsLow(a1);
        }
      }

      else
      {
        FigMediaProcessorSetWaterLevels_cold_2();
      }
    }

    FigSimpleMutexUnlock();
    CFRelease(v14);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    FigMediaProcessorSetWaterLevels_cold_4(v11);
  }
}

uint64_t FigMediaProcessorCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v27 = 0;
  v16 = 0;
  keys = @"NumberOfSampleBuffersOutput";
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 152));
  v4 = CFDictionaryCreate(v3, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  *a2 = v4;
  return 0;
}

uint64_t FigMediaProcessorSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if (!cf1)
  {
    return 4294954501;
  }

  if (CFEqual(cf1, @"ClientPID"))
  {
    FigActivitySchedulerGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = kFigActivitySchedulerProperty_ClientPID;
LABEL_11:
      v12 = *v10;

      return v9(v8, v12, a3);
    }

    return 4294954514;
  }

  if (CFEqual(cf1, @"ThrottleForBackground"))
  {
    FigActivitySchedulerGetFigBaseObject();
    v8 = v11;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = kFigActivitySchedulerProperty_ThrottleForBackground;
      goto LABEL_11;
    }

    return 4294954514;
  }

  if (CFEqual(cf1, @"ActivitySchedulerPriority"))
  {
    FigActivitySchedulerGetFigBaseObject();

    return CMBaseObjectSetProperty(v13, @"ThreadPriority", a3);
  }

  if (!CFEqual(cf1, @"MinimizeMemoryUsage"))
  {
    return 4294954501;
  }

  result = FigMediaProcessorGetVTCompressionSession(a1);
  if (result)
  {
    VTSessionSetProperty(result, *MEMORY[0x1E69836D0], a3);
    return 0;
  }

  return result;
}

CFStringRef mediaprocessor_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigMediaProcessor %p%s]", a1, v1);
}

__CFString *mediaprocessor_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigMediaProcessor %p retainCount: %d%s allocator: %p, ", a1, v4, v5, v6);
  CFStringAppendFormat(Mutable, 0, @"sampleBufferProcessor %@, sampleBufferProvider %@, sampleBufferConsumer %@, activityScheduler %@", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @", numberOfSampleBuffersOutput %d", *(a1 + 152));
  if (*(a1 + 88))
  {
    v7 = " (didSendReachedEndOfOutputData)";
  }

  else
  {
    v7 = "";
  }

  if (*(a1 + 89))
  {
    v8 = " (didFinishPendingProcessingAtEndOfInput)";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"%s%s", v7, v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(uint64_t result, int a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C88];
  timescale = *(MEMORY[0x1E6960C88] + 8);
  v21 = *MEMORY[0x1E6960C80];
  v22 = *(MEMORY[0x1E6960C80] + 8);
  if (!*(result + 16))
  {
    v5 = result;
    v6 = *(MEMORY[0x1E6960C88] + 12);
    epoch = *(MEMORY[0x1E6960C88] + 16);
    flags = *(MEMORY[0x1E6960C80] + 12);
    v9 = *(MEMORY[0x1E6960C80] + 16);
    LOBYTE(v18.value) = 0;
    memset(&v20, 0, sizeof(v20));
    memset(&time1, 0, sizeof(time1));
    v10 = *(result + 32);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, &v18, &v20, &time1);
      if (LOBYTE(v18.value))
      {
        if (v20.flags)
        {
          value = v20.value;
          timescale = v20.timescale;
          epoch = v20.epoch;
          v21 = time1.value;
          flags = time1.flags;
          v22 = time1.timescale;
          v6 = v20.flags;
          v9 = time1.epoch;
        }
      }
    }

    FigSimpleMutexLock();
    if (a2)
    {
      v12 = *a3;
      *(v5 + 112) = *(a3 + 2);
      *(v5 + 96) = v12;
    }

    if ((*(v5 + 108) & 0x1D) == 1)
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = v6;
      time1.epoch = epoch;
      v18 = *(v5 + 96);
      CMTimeMinimum(&v20, &time1, &v18);
      value = v20.value;
      v6 = v20.flags;
      timescale = v20.timescale;
      epoch = v20.epoch;
      time1.value = v21;
      time1.timescale = v22;
      time1.flags = flags;
      time1.epoch = v9;
      v18 = *(v5 + 96);
      CMTimeMaximum(&v20, &time1, &v18);
      v21 = v20.value;
      flags = v20.flags;
      v22 = v20.timescale;
      v9 = v20.epoch;
    }

    v20.value = value;
    v20.timescale = timescale;
    v20.flags = v6;
    v20.epoch = epoch;
    time1 = *(v5 + 120);
    if (CMTimeCompare(&v20, &time1))
    {
      *(v5 + 120) = value;
      *(v5 + 128) = timescale;
      *(v5 + 132) = v6;
      *(v5 + 136) = epoch;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = MEMORY[0x1E695E4D0];
      if ((v6 & 0x1D) == 1)
      {
        v15 = *MEMORY[0x1E695E4D0];
        v20.value = value;
        v20.timescale = timescale;
        v20.flags = v6;
        v20.epoch = epoch;
        FigCFDictionarySetCMTime();
      }

      else
      {
        v15 = *MEMORY[0x1E695E4C0];
      }

      if ((flags & 0x1D) == 1)
      {
        v15 = *v14;
        v20.value = v21;
        v20.timescale = v22;
        v20.flags = flags;
        v20.epoch = v9;
        FigCFDictionarySetCMTime();
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x1E6960590], v15);
      v16 = *(v5 + 40);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69605A8], Mutable, 0);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigCaptionDataCreateForTTML(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, CFTypeRef *a7)
{
  if (a7)
  {
    FigCaptionDataGetClassID();
    v13 = CMDerivedObjectCreate();
    if (!v13)
    {
      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      MEMORY[0] = v14;
      if (a3)
      {
        v15 = CFRetain(a3);
      }

      else
      {
        v15 = 0;
      }

      MEMORY[8] = v15;
      MEMORY[0x18] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a5)
      {
        v16 = CFRetain(a5);
      }

      else
      {
        v16 = 0;
      }

      MEMORY[0x38] = v16;
      if (a4)
      {
        v17 = CFRetain(a4);
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x28] = v17;
      MEMORY[0x40] = a6;
      v13 = 0;
      MEMORY[0x48] = FigSimpleMutexCreate();
      *a7 = 0;
    }
  }

  else
  {
    FigCaptionDataCreateForTTML_cold_1(&v19);
    return v19;
  }

  return v13;
}

uint64_t fcd_ttml_Finalize(uint64_t a1)
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

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  return result;
}

__CFString *fcd_ttml_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  CFStringAppendFormat(Mutable, 0, @"\tCaptionData: %p text<%@>", a1, v5);
  return Mutable;
}

uint64_t fcd_ttml_CopyProperty(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
  }

  cf = 0;
  if (!a2)
  {
    fcd_ttml_CopyProperty_cold_2(&v68);
    return v68;
  }

  if (!a4)
  {
    fcd_ttml_CopyProperty_cold_1(&v68);
    NodeType = v68;
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961270]))
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v10 = v9(a1);
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = &stru_1F0B1AFB8;
    }

LABEL_11:
    v10 = CFRetain(v10);
LABEL_12:
    NodeType = 0;
    cf = v10;
LABEL_13:
    *a4 = cf;
    return NodeType;
  }

  v13 = *MEMORY[0x1E6961268];
  if (CFEqual(a2, *MEMORY[0x1E6961268]) || (v13 = *MEMORY[0x1E6961210], CFEqual(a2, *MEMORY[0x1E6961210])))
  {
    IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
    if (!IsLoaded)
    {
      CMBaseObject = FigCaptionDataGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        NodeType = 4294954514;
        goto LABEL_23;
      }

      v17 = v16(CMBaseObject, v13, a3, &cf);
      goto LABEL_20;
    }

LABEL_138:
    NodeType = IsLoaded;
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961240]))
  {
    if (a1)
    {
      v18 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v18 = 0;
    }

    if (*(v18 + 48))
    {
      goto LABEL_136;
    }

    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    fcd_ttml_getCaptionTimeRange(*v18, &v65);
    v19 = *(v18 + 8);
    v20 = *(v18 + 40);
    v21 = *(v18 + 64);
    v62[0] = 0;
    v72 = 0;
    v73[0] = 0;
    FigTTMLRegionCopyID(v20, &v72);
    v23 = MEMORY[0x1E695E480];
    if (Mutable)
    {
      goto LABEL_144;
    }

    Mutable = FigCaptionRegionCreateMutable();
    if (Mutable)
    {
      goto LABEL_144;
    }

    v24 = FigCaptionRegionGetCMBaseObject();
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v25)
    {
      v29 = 0;
      NodeType = 4294954514;
      goto LABEL_77;
    }

    Mutable = v25(v24, *MEMORY[0x1E6961338], &stru_1F0B1AFB8);
    if (Mutable)
    {
LABEL_144:
      NodeType = Mutable;
    }

    else
    {
      if (!FigGeometryAspectRatioIsValid())
      {
        goto LABEL_65;
      }

      v26 = FigGeometryAspectRatioCopyAsDictionary();
      v27 = FigCaptionRegionGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        NodeType = v28(v27, *MEMORY[0x1E6961310], v26);
      }

      else
      {
        NodeType = 4294954514;
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (!NodeType)
      {
LABEL_65:
        if ((*(v21 + 92) & 1) == 0 || (*(v21 + 104) & 0x100000000) == 0 || (*(v21 + 124) & 1) == 0 || (*(v21 + 136) & 0x100000000) == 0)
        {
          goto LABEL_66;
        }

        v31 = *(v21 + 96);
        v68 = *(v21 + 80);
        v69 = v31;
        v32 = *(v21 + 128);
        v70 = *(v21 + 112);
        v71 = v32;
        v33 = FigGeometryRectCopyAsDictionary();
        v34 = FigCaptionRegionGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v35)
        {
          NodeType = v35(v34, *MEMORY[0x1E69612D0], v33);
        }

        else
        {
          NodeType = 4294954514;
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (!NodeType)
        {
LABEL_66:
          CellResolutionProperty = fcd_ttml_createCellResolutionProperty(v21);
          v37 = FigCaptionRegionGetCMBaseObject();
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v38)
          {
            NodeType = v38(v37, *MEMORY[0x1E69612F0], CellResolutionProperty);
          }

          else
          {
            NodeType = 4294954514;
          }

          if (!*(v21 + 192) || !*(v21 + 196))
          {
            goto LABEL_159;
          }

          v49 = v73[0];
          v50 = *MEMORY[0x1E69613B0];
          v51 = FigGeometryDimensionMake();
          v53 = fcd_ttml_setDimensionProperty(v49, v50, v51, v52);
          if (v53)
          {
            NodeType = v53;
            goto LABEL_155;
          }

          v54 = v73[0];
          v55 = *MEMORY[0x1E6961328];
          v56 = FigGeometryDimensionMake();
          NodeType = fcd_ttml_setDimensionProperty(v54, v55, v56, v57);
          if (!NodeType)
          {
LABEL_159:
            if (FigCFEqual())
            {
              if (v73[0])
              {
                v29 = CFRetain(v73[0]);
              }

              else
              {
                v29 = 0;
              }

LABEL_75:
              v62[0] = 0;
              if (!CellResolutionProperty)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

            v68 = v65;
            v69 = v66;
            v70 = v67;
            NodeType = fcd_ttml_createRegionFromNode(v19, v20, v72, v73[0], &v68, v21, v62);
            if (!NodeType)
            {
              v29 = v62[0];
              goto LABEL_75;
            }
          }

LABEL_155:
          v29 = 0;
          if (!CellResolutionProperty)
          {
LABEL_77:
            if (v72)
            {
              CFRelease(v72);
            }

            if (v73[0])
            {
              CFRelease(v73[0]);
            }

            if (v62[0])
            {
              CFRelease(v62[0]);
            }

            if (!NodeType)
            {
              if (*v18 && CFArrayGetCount(*v18))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*v18, 0);
                v40 = *(v18 + 8);
                v60 = *(v18 + 64);
                *v62 = v65;
                v63 = v66;
                v64 = v67;
                v73[0] = 0;
                alloc = *v23;
                v41 = CFArrayCreateMutable(*v23, 0, MEMORY[0x1E695E9C0]);
                if (v29)
                {
                  v42 = CFRetain(v29);
                }

                else
                {
                  v42 = 0;
                }

                v58 = v29;
                v72 = 0;
                if (ValueAtIndex)
                {
                  do
                  {
                    LODWORD(v68) = 0;
                    NodeType = FigTTMLNodeGetNodeType(ValueAtIndex, &v68);
                    if (v68 == 7)
                    {
                      break;
                    }

                    if ((v68 & 0xFFFFFFFE) == 2)
                    {
                      if (v73[0])
                      {
                        CFRelease(v73[0]);
                        v73[0] = 0;
                      }

                      v44 = FigTTMLSynchronicTreeCopySSS(v40, ValueAtIndex, v73);
                      if (v44)
                      {
                        NodeType = v44;
                        v43 = 0;
                        goto LABEL_121;
                      }

                      if (CFDictionaryContainsKey(v73[0], @"http://www.w3.org/ns/ttml#styling backgroundColor") || CFDictionaryContainsKey(v73[0], @"http://www.w3.org/ns/ttml#styling display"))
                      {
                        CFArrayAppendValue(v41, ValueAtIndex);
                      }

                      NodeType = 0;
                    }

                    ValueAtIndex = FigTTMLNodeGetParentNode(ValueAtIndex);
                  }

                  while (ValueAtIndex);
                }

                else
                {
                  NodeType = 0;
                }

                Count = CFArrayGetCount(v41);
                if (Count < 1)
                {
                  v43 = v42;
                  v42 = 0;
                }

                else
                {
                  v46 = 0;
                  v47 = Count + 1;
                  while (1)
                  {
                    v48 = CFArrayGetValueAtIndex(v41, v47 - 2);
                    if (v46)
                    {
                      CFRelease(v46);
                    }

                    v46 = CFStringCreateWithFormat(alloc, 0, @"region_from_div_or_body_%p", v48);
                    if (v72)
                    {
                      CFRelease(v72);
                      v72 = 0;
                    }

                    v68 = *v62;
                    v69 = v63;
                    v70 = v64;
                    NodeType = fcd_ttml_createRegionFromNode(v40, v48, v46, v42, &v68, v60, &v72);
                    if (NodeType)
                    {
                      break;
                    }

                    v43 = v72;
                    if (v72)
                    {
                      CFRetain(v72);
                    }

                    if (v42)
                    {
                      CFRelease(v42);
                    }

                    --v47;
                    v42 = v43;
                    if (v47 <= 1)
                    {
                      v42 = 0;
                      goto LABEL_118;
                    }
                  }

                  v43 = 0;
LABEL_118:
                  v29 = v58;
                  if (v46)
                  {
                    CFRelease(v46);
                  }
                }

LABEL_121:
                if (v72)
                {
                  CFRelease(v72);
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                if (v41)
                {
                  CFRelease(v41);
                }

                if (v73[0])
                {
                  CFRelease(v73[0]);
                }

                if (NodeType)
                {
                  if (v43)
                  {
                    CFRelease(v43);
                  }

                  goto LABEL_133;
                }
              }

              else if (v29)
              {
                v43 = CFRetain(v29);
              }

              else
              {
                v43 = 0;
              }

              NodeType = 0;
              *(v18 + 48) = v43;
            }

LABEL_133:
            if (v29)
            {
              CFRelease(v29);
            }

            if (NodeType)
            {
              goto LABEL_23;
            }

LABEL_136:
            v10 = DerivedStorage[6];
            if (!v10)
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }

LABEL_76:
          CFRelease(CellResolutionProperty);
          goto LABEL_77;
        }
      }
    }

    v29 = 0;
    goto LABEL_77;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961200]))
  {
    NodeType = 0;
    cf = *MEMORY[0x1E6961168];
    goto LABEL_13;
  }

  v30 = *MEMORY[0x1E6961278];
  if (!CFEqual(a2, *MEMORY[0x1E6961278]))
  {
    v30 = *MEMORY[0x1E6961230];
    if (!CFEqual(a2, *MEMORY[0x1E6961230]))
    {
      v30 = *MEMORY[0x1E6961228];
      if (!CFEqual(a2, *MEMORY[0x1E6961228]))
      {
        v30 = *MEMORY[0x1E6961238];
        if (!CFEqual(a2, *MEMORY[0x1E6961238]))
        {
          v30 = *MEMORY[0x1E6961208];
          if (!CFEqual(a2, *MEMORY[0x1E6961208]))
          {
            v30 = *MEMORY[0x1E6961218];
            if (!CFEqual(a2, *MEMORY[0x1E6961218]))
            {
              v30 = *MEMORY[0x1E6961220];
              if (!CFEqual(a2, *MEMORY[0x1E6961220]))
              {
                if (CFEqual(a2, *MEMORY[0x1E6961260]))
                {
                  v10 = DerivedStorage[7];
                  if (!v10)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_11;
                }

                v30 = *MEMORY[0x1E6961248];
                if (!CFEqual(a2, *MEMORY[0x1E6961248]))
                {
                  v30 = *MEMORY[0x1E6961250];
                  if (!CFEqual(a2, *MEMORY[0x1E6961250]))
                  {
                    v30 = *MEMORY[0x1E6961258];
                    if (!CFEqual(a2, *MEMORY[0x1E6961258]))
                    {
                      NodeType = 4294954512;
                      goto LABEL_13;
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

  IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
  if (IsLoaded)
  {
    goto LABEL_138;
  }

  v17 = FigCaptionDataCopyProperty(DerivedStorage[2], v30, a3, &cf);
LABEL_20:
  NodeType = v17;
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return NodeType;
}

uint64_t fcd_ttml_ensureStyledTextIsLoaded(const void *a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = CMBaseObjectGetDerivedStorage() + 16;
    if (!*v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      goto LABEL_7;
    }

    return 0;
  }

  v3 = 16;
  if (MEMORY[0x10])
  {
    return 0;
  }

  DerivedStorage = 0;
LABEL_7:
  v76 = 0;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fcd_ttml_ensureStyledTextIsLoaded_cold_3();
    v4 = 0;
    goto LABEL_193;
  }

  v63 = v1;
  v64 = v3;
  allocator = v5;
  Count = CFArrayGetCount(*DerivedStorage);
  if (Count)
  {
    v7 = 0;
    v65 = Mutable;
    v67 = v2;
    do
    {
      value = CFArrayGetValueAtIndex(*DerivedStorage, v7);
      if (v2)
      {
        v8 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v8 = 0;
      }

      v69 = v7;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      v10 = v9;
      if (!v9)
      {
        fcd_ttml_ensureStyledTextIsLoaded_cold_2(cf);
        v40 = 0;
        v4 = LODWORD(cf[0]);
        goto LABEL_117;
      }

      v70 = v9;
      v71 = v8;
      v11 = *(v8 + 8);
      theDict = 0;
      v12 = FigTTMLSynchronicTreeCopySSS(v11, value, &theDict);
      if (v12)
      {
        v4 = v12;
        v40 = 0;
        MutableCopy = 0;
        goto LABEL_82;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, theDict);
      if (!MutableCopy)
      {
        fcd_ttml_ensureStyledTextIsLoaded_cold_1(cf);
        v40 = 0;
        v4 = LODWORD(cf[0]);
        goto LABEL_82;
      }

      cf[0] = 0;
      ParentNode = FigTTMLNodeGetParentNode(value);
      if (ParentNode)
      {
        while (1)
        {
          LODWORD(v86) = 0;
          NodeType = FigTTMLNodeGetNodeType(ParentNode, &v86);
          if (NodeType)
          {
            break;
          }

          if (v86 != 5)
          {
            goto LABEL_27;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          NodeType = FigTTMLSynchronicTreeCopySSS(v11, ParentNode, cf);
          if (NodeType)
          {
            break;
          }

          if (CFDictionaryContainsKey(cf[0], @"http://www.w3.org/ns/ttml#styling backgroundColor"))
          {
            v16 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling backgroundColor");
            CFDictionaryAddValue(MutableCopy, @"http://www.w3.org/ns/ttml#styling backgroundColor", v16);
          }

          if (CFDictionaryContainsKey(cf[0], @"http://www.w3.org/ns/ttml#styling display"))
          {
            v17 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling display");
            CFDictionaryAddValue(MutableCopy, @"http://www.w3.org/ns/ttml#styling display", v17);
          }

          ParentNode = FigTTMLNodeGetParentNode(ParentNode);
          if (!ParentNode)
          {
LABEL_27:
            v4 = 0;
            goto LABEL_28;
          }
        }

        v4 = NodeType;
LABEL_28:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v4)
        {
          v40 = 0;
LABEL_82:
          v23 = v71;
          goto LABEL_104;
        }
      }

      v18 = MEMORY[0x1E695E9C0];
      v19 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      v20 = CFArrayCreateMutable(v5, 0, v18);
      v21 = FigTTMLNodeGetParentNode(value);
      v22 = fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(v11, v21, v19, v20);
      if (v22)
      {
        v4 = v22;
        v23 = v71;
      }

      else
      {
        v23 = v71;
        if (v19 && CFArrayGetCount(v19))
        {
          v82 = 0;
          v24 = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]);
          if (v24)
          {
            v25 = v24;
            v89.length = CFArrayGetCount(v19);
            v89.location = 0;
            CFArrayApplyFunction(v19, v89, fcd_ttml_addAnimationSliceTimeToSet, v25);
            v90.length = CFArrayGetCount(v20);
            v90.location = 0;
            CFArrayApplyFunction(v20, v90, fcd_ttml_addAnimationSliceTimeToSet, v25);
            v26 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
            CFSetApplyFunction(v25, fcd_ttml_appendValueToArray, v26);
            v91.length = CFArrayGetCount(v26);
            v91.location = 0;
            CFArraySortValues(v26, v91, MEMORY[0x1E695D7A0], 0);
            CFRelease(v25);
            if (!v26)
            {
              goto LABEL_87;
            }

            v73 = CFArrayGetCount(v26);
            if (v73 < 1)
            {
              goto LABEL_87;
            }

            v27 = 0;
            v28 = 0;
            v72 = MutableCopy;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v26, v27);
              valuePtr = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              if (v28)
              {
                CFRelease(v28);
              }

              cf[0] = 0;
              *&v86 = 0;
              v28 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
              v30 = CFArrayGetCount(v19);
              if (v30 < 1)
              {
                v37 = 0;
                v4 = 0;
              }

              else
              {
                v31 = v30;
                v32 = v26;
                v33 = 0;
                v34 = 0;
                while (1)
                {
                  CFArrayGetValueAtIndex(v20, v33);
                  if (v86)
                  {
                    CFRelease(v86);
                    *&v86 = 0;
                  }

                  v35 = FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime();
                  if (v35)
                  {
                    break;
                  }

                  if (!CFEqual(v86, @"normal"))
                  {
                    CFArrayGetValueAtIndex(v19, v33);
                    if (cf[0])
                    {
                      CFRelease(cf[0]);
                      cf[0] = 0;
                    }

                    v35 = FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime();
                    if (v35)
                    {
                      break;
                    }

                    if (v34)
                    {
                      CFRelease(v34);
                    }

                    v34 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionarySetValue(v34, @"http://www.w3.org/ns/ttml#styling unicodeBidi", v86);
                    CFDictionarySetValue(v34, @"http://www.w3.org/ns/ttml#styling direction", cf[0]);
                    CFArrayAppendValue(v28, v34);
                  }

                  if (v31 == ++v33)
                  {
                    v4 = 0;
                    v36 = v28;
                    v28 = 0;
                    if (!v34)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_54;
                  }
                }

                v4 = v35;
                v36 = 0;
                if (v34)
                {
LABEL_54:
                  CFRelease(v34);
                }

LABEL_55:
                v37 = v28;
                v28 = v36;
                v5 = allocator;
                v26 = v32;
                MutableCopy = v72;
              }

              if (v86)
              {
                CFRelease(v86);
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v37)
              {
                CFRelease(v37);
              }

              if (v4)
              {
                break;
              }

              if (v82)
              {
                v38 = FigCaptionDynamicStyleAddKeyFrameValue();
                if (v38)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                v38 = FigCaptionDynamicStyleCreateMutable();
                if (v38)
                {
LABEL_74:
                  v4 = v38;
                  break;
                }
              }

              if (++v27 == v73)
              {
                v39 = v82;
                Mutable = v65;
                goto LABEL_88;
              }
            }

            if (v82)
            {
              CFRelease(v82);
            }

            v39 = 0;
            Mutable = v65;
            goto LABEL_89;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, v65);
          if (!v41)
          {
            v26 = 0;
LABEL_87:
            v39 = 0;
            v28 = 0;
LABEL_88:
            v4 = 0;
            v82 = 0;
LABEL_89:
            if (v28)
            {
              CFRelease(v28);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            v23 = v71;
            if (!v4)
            {
              CFDictionarySetValue(MutableCopy, @"internal direction_and_unicodeBidi", v39);
            }

            if (v39)
            {
              CFRelease(v39);
            }

            goto LABEL_97;
          }

          v4 = v41;
        }

        else
        {
          v4 = 0;
        }
      }

LABEL_97:
      if (v20)
      {
        CFRelease(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      if (v4)
      {
        v40 = 0;
      }

      else
      {
        v40 = MutableCopy;
        MutableCopy = 0;
      }

      v2 = v67;
LABEL_104:
      if (theDict)
      {
        CFRelease(theDict);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v4)
      {
        v10 = v70;
        goto LABEL_117;
      }

      v10 = v70;
      if (CFDictionaryGetValue(v40, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby internalRubyID") || CFDictionaryGetValue(v40, @"http://www.w3.org/ns/ttml#styling internalRubyID"))
      {
        FigCaptionDynamicStyleGetInitialValue();
        if (FigCFEqual() || (v44 = fcd_ttml_flushRubyNodesToStyledTextArray(v2, v70), !v44))
        {
          CFArrayAppendValue(*(v23 + 24), value);
          v42 = *(v23 + 32);
          InitialValue = FigCaptionDynamicStyleGetInitialValue();
          *(v23 + 32) = InitialValue;
          if (InitialValue)
          {
            CFRetain(InitialValue);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          goto LABEL_116;
        }
      }

      else
      {
        v44 = fcd_ttml_flushRubyNodesToStyledTextArray(v2, v70);
        if (!v44)
        {
          v45 = *(v23 + 32);
          if (v45)
          {
            CFRelease(v45);
            *(v23 + 32) = 0;
          }

          v84 = 0u;
          *v85 = 0u;
          *cf = 0u;
          FigTTMLNodeGetActiveTimeRange(value, cf);
          if (!v44)
          {
            v86 = *cf;
            v87 = v84;
            v88 = *v85;
            v44 = fcd_ttml_createStylePropertiesFromTTMLStyleSet(v40, &v86, &v78);
            if (!v44)
            {
              LODWORD(v86) = 0;
              v44 = FigTTMLNodeGetNodeType(value, &v86);
              if (!v44)
              {
                if (v86 == 6)
                {
                  v46 = @"\n";
LABEL_144:
                  v79 = v46;
LABEL_145:
                  v44 = FigCaptionDataCreateMutable();
                  if (!v44)
                  {
                    v47 = v79;
                    v48 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                    if (!v48)
                    {
                      v4 = 4294954514;
                      goto LABEL_117;
                    }

                    v44 = v48(v77, v47);
                    if (!v44)
                    {
                      CFDictionaryApplyFunction(v78, fcd_ttml_setStylePropertyToWholeStyledText, v77);
                      CFArrayAppendValue(v70, v77);
LABEL_116:
                      v92.length = CFArrayGetCount(v70);
                      v92.location = 0;
                      CFArrayAppendArray(Mutable, v70, v92);
                      v4 = 0;
                      goto LABEL_117;
                    }
                  }

                  goto LABEL_152;
                }

                if (v86 != 14)
                {
                  v46 = &stru_1F0B1AFB8;
                  goto LABEL_144;
                }

                v44 = FigTTMLTextCopyContent(value, &v79);
                if (!v44)
                {
                  goto LABEL_145;
                }
              }
            }
          }
        }
      }

LABEL_152:
      v4 = v44;
LABEL_117:
      if (v77)
      {
        CFRelease(v77);
      }

      if (v78)
      {
        CFRelease(v78);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v79)
      {
        CFRelease(v79);
      }

      if (v4)
      {
        goto LABEL_193;
      }

      v7 = v69 + 1;
    }

    while (v69 + 1 != Count);
  }

  v49 = fcd_ttml_flushRubyNodesToStyledTextArray(v2, Mutable);
  if (v49 || (v50 = CFGetAllocator(v2), v49 = fcd_ttml_concatenateStyledTextArray(Mutable, v50, &v76), v49))
  {
    v4 = v49;
LABEL_193:
    if (v76)
    {
      CFRelease(v76);
    }

    goto LABEL_195;
  }

  v51 = *DerivedStorage;
  v52 = *(DerivedStorage + 8);
  v53 = v76;
  cf[0] = 0;
  v54 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v51 || CFArrayGetCount(v51) < 1)
  {
    goto LABEL_178;
  }

  v55 = CFArrayGetValueAtIndex(v51, 0);
  if (v55)
  {
    v56 = v55;
    while (1)
    {
      LODWORD(v86) = 0;
      v57 = FigTTMLNodeGetNodeType(v56, &v86);
      if (v57)
      {
        goto LABEL_198;
      }

      if (v86 == 4)
      {
        break;
      }

      v56 = FigTTMLNodeGetParentNode(v56);
      if (!v56)
      {
        goto LABEL_162;
      }
    }

    v57 = FigTTMLSynchronicTreeCopySSS(v52, v56, cf);
    if (v57)
    {
LABEL_198:
      v4 = v57;
      goto LABEL_177;
    }

    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
    while (1)
    {
      LODWORD(v86) = 0;
      v58 = FigTTMLNodeGetNodeType(v56, &v86);
      if (v58)
      {
        break;
      }

      if (v86 == 7)
      {
        goto LABEL_175;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v58 = FigTTMLSynchronicTreeCopySSS(v52, v56, cf);
      if (v58)
      {
        break;
      }

      v59 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling display");
      if (v59)
      {
        CFDictionarySetValue(v54, @"http://www.w3.org/ns/ttml#styling display", v59);
LABEL_175:
        v4 = 0;
        goto LABEL_176;
      }

      v56 = FigTTMLNodeGetParentNode(v56);
      if (!v56)
      {
        goto LABEL_178;
      }
    }
  }

  else
  {
LABEL_162:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v64, v65);
  }

  v4 = v58;
LABEL_176:
  if (v4)
  {
LABEL_177:
    v60 = 0;
  }

  else
  {
LABEL_178:
    v4 = 0;
    v60 = v54;
    v54 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (!v4)
  {
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    fcd_ttml_getCaptionTimeRange(v51, &v86);
    v61 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    cf[0] = 0;
    MEMORY[0x19A8D3660](&fcd_ttml_getCaptionPropertyMappingDictionary_sInitializeCaptionPropertyMappingOnce, fcd_ttml_initializeCaptionPropertyMappingDictionary);
    cf[1] = sCaptionPropertyMappingDictionary;
    v84 = v86;
    v85[0] = v87;
    *&v85[1] = v86;
    *&v85[3] = v87;
    *&v85[5] = v88;
    v85[7] = v61;
    CFDictionaryApplyFunction(v60, fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary, cf);
    v4 = LODWORD(cf[0]);
    if (!LODWORD(cf[0]))
    {
      CFDictionaryApplyFunction(v61, fcd_ttml_setPropertyToObject, v53);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v4)
  {
    goto LABEL_193;
  }

  *v64 = v76;
LABEL_195:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

uint64_t FigCaptionDataCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t fcd_ttml_createStylePropertiesFromTTMLStyleSet(const __CFDictionary *a1, _OWORD *a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    context[0] = 0;
    MEMORY[0x19A8D3660](&fcd_ttml_getStylePropertyMappingDictionary_sInitializeStylePropertyMappingOnce, fcd_ttml_initializeStylePropertyMappingDictionary);
    context[1] = sStylePropertyMappingDictionary;
    v8 = a2[1];
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = v12;
    v15 = v8;
    v16 = a2[2];
    v17 = v7;
    CFDictionaryApplyFunction(a1, fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary, context);
    v9 = LODWORD(context[0]);
    if (LODWORD(context[0]))
    {
      CFRelease(v7);
    }

    else
    {
      *a3 = v7;
    }
  }

  else
  {
    fcd_ttml_createStylePropertiesFromTTMLStyleSet_cold_1(&v18);
    return v18;
  }

  return v9;
}

uint64_t fcd_ttml_setStylePropertyToWholeStyledText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a3);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v7);
  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  result = VTable + 16;
  v12 = *(v11 + 32);
  if (v12)
  {

    return v12(a3, a1, a2, 0, Length);
  }

  return result;
}

void fcd_ttml_addAnimationSliceTimeToSet(uint64_t a1, __CFSet *a2)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount >= 1)
  {
    v4 = KeyFrameCount;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      valuePtr = 0;
      if (FigCaptionDynamicStyleCopyKeyFrameValueAtIndex())
      {
        break;
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v6 = CFNumberCreate(v7, kCFNumberDoubleType, &valuePtr);
      CFSetAddValue(a2, v6);
      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary(void *key, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  Value = CFDictionaryGetValue(*(a3 + 8), key);
  if (*a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = Value == 0;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a3 + 16);
    v13.epoch = *(a3 + 32);
    v9 = *(a3 + 56);
    v12[0] = *(a3 + 40);
    v12[1] = v9;
    v12[2] = *(a3 + 72);
    *&v13.value = v8;
    v10 = fcd_ttml_createDynamicStyleFromTTML(Value, a2, &v13, v12, &v15, &v14);
    v7 = v10;
    v11 = v14;
    if (!v10)
    {
      CFDictionaryAddValue(*(a3 + 88), v15, v14);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  *a3 = v7;
}

void fcd_ttml_initializeStylePropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling color", fcd_ttml_createStylePropertyFromTTMLStyle_color);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight", fcd_ttml_createStylePropertyFromTTMLStyle_fontWeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle", fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createStylePropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline", fcd_ttml_createStylePropertyFromTTMLStyle_textOutline);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration", fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize", fcd_ttml_createStylePropertyFromTTMLStyle_fontSize);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption", fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily", fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", fcd_ttml_createStylePropertyFromTTMLStyle_visibility);
  CFDictionaryAddValue(Mutable, @"internal direction_and_unicodeBidi", fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", fcd_ttml_createStylePropertyFromTTMLStyle_textCombine);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textCombine", fcd_ttml_createStylePropertyFromTTMLStyle_textCombine);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textEmphasis", fcd_ttml_createStylePropertyFromTTMLStyle_textEmphasis);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling shear", fcd_ttml_createStylePropertyFromTTMLStyle_textShear);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textShadow", fcd_ttml_createStylePropertyFromTTMLStyle_textShadow);
  sStylePropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_color(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614E8];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961458];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontWeight(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614A0];
    if (CFEqual(a1, @"normal"))
    {
      result = 0;
      v8 = MEMORY[0x1E69614B0];
    }

    else
    {
      if (!CFEqual(a1, @"bold"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69614A8];
    }

    *a3 = *v8;
  }

  else
  {
    FigTTMLNodeGetTimeContainerSemantics_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961480];
    if (CFEqual(a1, @"normal"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961490];
    }

    else if (CFEqual(a1, @"italic"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961488];
    }

    else
    {
      if (!CFEqual(a1, @"oblique"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E6961498];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614C0];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textOutline(const __CFString *a1, void *a2, CFTypeRef *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_3(&v15);
    return v15;
  }

  if (CFEqual(a1, @"none"))
  {
    v7 = FigCaptionTextOutlineCreate();
    v8 = 0;
    v9 = 0;
LABEL_12:
    *a2 = *MEMORY[0x1E6961530];
    *a3 = 0;
    goto LABEL_13;
  }

  v10 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v8 = v10;
  if (v10 && CFArrayGetCount(v10) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v9 = FigTTMLCGColorCreateWithColorSyntax(ValueAtIndex);
    if (v9)
    {
      if (CFArrayGetCount(v8) < 2)
      {
        v14 = 529;
        goto LABEL_20;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v8, 1);
    }

    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v12 & 0x100000000) != 0)
    {
      v7 = FigCaptionTextOutlineCreate();
      goto LABEL_12;
    }

    v14 = 534;
LABEL_20:
    fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_1(v14, v9, &v15);
    v7 = v15;
    goto LABEL_14;
  }

  fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_2(&v15);
  v9 = 0;
  v7 = v15;
LABEL_13:
  CGColorRelease(v9);
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

  return v7;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration(const __CFString *a1, void *a2, CFNumberRef *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    v7 = *MEMORY[0x1E6961460];
    v8 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
    if (v8)
    {
      v9 = v8;
      v17 = a3;
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
        v13 = 0;
      }

      else
      {
        v11 = Count;
        v12 = 0;
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          if (CFEqual(ValueAtIndex, @"underline"))
          {
            v13 |= 1u;
          }

          else if (CFEqual(ValueAtIndex, @"lineThrough"))
          {
            v13 |= 2u;
          }

          else if (CFEqual(ValueAtIndex, @"overline"))
          {
            v13 |= 4u;
          }

          ++v12;
        }

        while (v11 != v12);
      }

      valuePtr = v13;
      v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *a2 = v7;
      *v17 = v15;
      CFRelease(v9);
      return 0;
    }

    else
    {
      fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_1(v7, &v19);
      return v19;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_2(&v20);
    return v20;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614B8];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontSize(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    FigTTMLParseLengthSyntax(a1);
    if ((v7 & 0x100000000) != 0)
    {
      memset(v10, 0, sizeof(v10));
      FigGeometrySizeMake();
      *a2 = *MEMORY[0x1E6961478];
      v8 = FigGeometrySizeCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontSize_cold_1(v10);
    return LODWORD(v10[0]);
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    FigTTMLParseLengthSyntax(a1);
    if ((v7 & 0x100000000) != 0)
    {
      *a2 = *MEMORY[0x1E69614D0];
      v8 = FigGeometryDimensionCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight_cold_1(&v10);
    return v10;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614D8];
    if (CFEqual(a1, @"wrap"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"noWrap"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961470];
    FontFamilyNameList = FigTTMLParseFontFamilySyntaxAndCreateFontFamilyNameList(a1);
    *a3 = FontFamilyNameList;
    if (FontFamilyNameList)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_visibility(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614C8];
    if (CFEqual(a1, @"hidden"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"visible"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_visibility_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi(const __CFArray *a1, void *a2, CFMutableArrayRef *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFArrayGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961548];
    v7 = *MEMORY[0x1E695E480];
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
    context = Mutable;
    v13 = 0;
    v15.length = CFArrayGetCount(a1);
    v15.location = 0;
    CFArrayApplyFunction(a1, v15, fcd_ttml_addWritingDirectionStylePropertyKeyFrameValueToArray, &context);
    v10 = v13;
    if (v13)
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      *a3 = Mutable;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi_cold_1(&v14);
    return v14;
  }

  return v10;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textCombine(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614F0];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961508];
    }

    else
    {
      if (!CFEqual(a1, @"all"))
      {
        return 4294950725;
      }

      result = 0;
      v8 = MEMORY[0x1E69614F8];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textCombine_cold_1(&v9);
    return v9;
  }

  return result;
}

void fcd_ttml_addWritingDirectionStylePropertyKeyFrameValueToArray(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"http://www.w3.org/ns/ttml#styling direction");
  v5 = CFDictionaryGetValue(a1, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
  valuePtr = 0;
  if (CFEqual(Value, @"ltr"))
  {
    v6 = 2;
  }

  else
  {
    if (!CFEqual(Value, @"rtl"))
    {
      goto LABEL_10;
    }

    valuePtr = 1;
    v6 = 3;
  }

  if (CFEqual(v5, @"embed"))
  {
    goto LABEL_8;
  }

  if (!CFEqual(v5, @"bidiOverride"))
  {
LABEL_10:
    *(a2 + 8) = -16576;
    return;
  }

  valuePtr = v6;
LABEL_8:
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*a2, v7);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t fcd_ttml_createDynamicStyleFromTTML(uint64_t (*a1)(CFTypeRef, CFTypeRef *, CFTypeRef *), uint64_t a2, CMTime *a3, CMTime *a4, CFTypeRef *a5, void *a6)
{
  v26 = 0;
  cf = 0;
  v25 = 0;
  v23 = 0;
  if ((a4[1].flags & 0x1D) != 1)
  {
    fcd_ttml_createDynamicStyleFromTTML_cold_1(&time);
    value_low = LODWORD(time.value);
LABEL_29:
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_21;
  }

  time = a4[1];
  Seconds = CMTimeGetSeconds(&time);
  lhs = *a4;
  v20 = *a3;
  CMTimeSubtract(&time, &lhs, &v20);
  v12 = CMTimeGetSeconds(&time);
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount >= 1)
  {
    v14 = KeyFrameCount;
    v15 = 0;
    while (1)
    {
      time.value = 0;
      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      Mutable = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
      if (Mutable)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      Mutable = a1(v26, &v25, &cf);
      if (Mutable)
      {
        break;
      }

      v17 = v23;
      if (v23)
      {
        if ((*&time.value - v12) / Seconds >= 1.0)
        {
          goto LABEL_20;
        }

        Mutable = FigCaptionDynamicStyleAddKeyFrameValue();
        if (Mutable)
        {
          break;
        }
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable();
        if (Mutable)
        {
          break;
        }
      }

      if (v14 == ++v15)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    value_low = Mutable;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_20:
  value_low = 0;
  *a5 = v25;
  *a6 = v17;
  v25 = 0;
  v23 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return value_low;
}

uint64_t fcd_ttml_setRubyTextPropertyFromDictionary(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  CFDictionaryGetValue(a1, a2);
  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  if (FigCFEqual())
  {
    v4 = *MEMORY[0x1E6961430];
    if (InitialValue && !FigCFEqual())
    {
      v5 = FigCFEqual();
      v6 = MEMORY[0x1E6961428];
      goto LABEL_5;
    }

    goto LABEL_32;
  }

  if (FigCFEqual())
  {
    v4 = *MEMORY[0x1E6961408];
    if (InitialValue)
    {
      if (FigCFEqual())
      {
LABEL_12:
        v8 = MEMORY[0x1E6961420];
        goto LABEL_27;
      }

      if (FigCFEqual())
      {
        v8 = MEMORY[0x1E69613F8];
        goto LABEL_27;
      }

      if (!FigCFEqual())
      {
        v5 = FigCFEqual();
        v6 = MEMORY[0x1E6961400];
        goto LABEL_5;
      }
    }

LABEL_32:
    if (v4)
    {
      return FigCaptionDynamicStyleCreate();
    }

    return 0;
  }

  if (FigCFEqual())
  {
    v4 = *MEMORY[0x1E6961448];
    if (!InitialValue)
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      v8 = MEMORY[0x1E6961430];
      goto LABEL_27;
    }

    if (!FigCFEqual())
    {
      FigCFEqual();
      goto LABEL_32;
    }

    v8 = MEMORY[0x1E6961428];
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v4 = *MEMORY[0x1E69613F8];
    if (!InitialValue)
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      v8 = MEMORY[0x1E6961408];
    }

    else
    {
      if (!FigCFEqual())
      {
        v5 = FigCFEqual();
        v6 = MEMORY[0x1E6961410];
LABEL_5:
        v7 = *v6;
        if (v5)
        {
          v4 = v7;
        }

        if (!v4)
        {
          return 0;
        }

        return FigCaptionDynamicStyleCreate();
      }

      v8 = MEMORY[0x1E6961400];
    }
  }

LABEL_27:
  if (*v8)
  {
    return FigCaptionDynamicStyleCreate();
  }

  return 0;
}

__n128 fcd_ttml_getCaptionTimeRange@<Q0>(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E6960C98];
  v14 = *(MEMORY[0x1E6960C98] + 16);
  v15 = *MEMORY[0x1E6960C98];
  *a2 = *MEMORY[0x1E6960C98];
  *(a2 + 16) = v14;
  v13 = v4[2];
  *(a2 + 32) = v13;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      memset(&v18, 0, sizeof(v18));
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      FigTTMLNodeGetActiveTimeRange(ValueAtIndex, &v18);
      if (v10)
      {
        break;
      }

      if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
      {
        v11 = *&v18.start.epoch;
        *a2 = *&v18.start.value;
        *(a2 + 16) = v11;
        result.n128_u64[0] = *&v18.duration.timescale;
        *(a2 + 32) = *&v18.duration.timescale;
      }

      else
      {
        v12 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v12;
        *&range.duration.timescale = *(a2 + 32);
        otherRange = v18;
        CMTimeRangeGetUnion(a2, &range, &otherRange);
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    *a2 = v15;
    *(a2 + 16) = v14;
    result = v13;
    *(a2 + 32) = v13;
  }

  return result;
}

uint64_t fcd_ttml_setPropertyToObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, a2);
  }

  return result;
}

void fcd_ttml_initializeCaptionPropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style linePadding", fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign", fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style multiRowAlign", fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createCaptionPropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling rubyReserve", fcd_ttml_createCaptionPropertyFromTTMLStyle_rubyReserve);
  sCaptionPropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_4(&v11);
    return v11;
  }

  *a2 = *MEMORY[0x1E6961230];
  v7 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(a1));
  if ((v8 & 0x100000000) == 0)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_3(&v11);
    return v11;
  }

  if (v7 < 0.0)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_2(&v11);
    return v11;
  }

  if (v8 != 1667591276)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_1(&v11);
    return v11;
  }

  v9 = FigGeometryDimensionCopyAsDictionary();
  *a3 = v9;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 4294950720;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961208];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961218];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961278];
    if (CFEqual(a1, @"start"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961570];
    }

    else if (CFEqual(a1, @"end"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961558];
    }

    else if (CFEqual(a1, @"center"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961550];
    }

    else if (CFEqual(a1, @"left"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961560];
    }

    else
    {
      if (!CFEqual(a1, @"right"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E6961568];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961228];
    if (CFEqual(a1, @"normal") || (FigTTMLParseLengthSyntax(a1), (v7 & 0x100000000) != 0))
    {
      v8 = FigGeometryDimensionCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight_cold_1(&v10);
    return v10;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961238];
    if (CFEqual(a1, @"start"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611F8];
    }

    else if (CFEqual(a1, @"center"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611E8];
    }

    else if (CFEqual(a1, @"end"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611F0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69611E0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961220];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCellResolutionProperty(uint64_t a1)
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  if (*(a1 + 184) && *(a1 + 188))
  {
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
  }

  FigGeometrySizeMake();
  return FigGeometrySizeCopyAsDictionary();
}

void fcd_ttml_convertTTMLStyleToRegionPropertyAndAddToDictionary(void *key, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  Value = CFDictionaryGetValue(*(a3 + 8), key);
  if (Value)
  {
    v6 = *(a3 + 16);
    v20.epoch = *(a3 + 32);
    v7 = *(a3 + 56);
    v17 = *(a3 + 40);
    v18 = v7;
    v19 = *(a3 + 72);
    *&v20.value = v6;
LABEL_10:
    v15 = fcd_ttml_createDynamicStyleFromTTML(Value, a2, &v20, &v17, &v22, &v21);
    v11 = v21;
    if (!v15)
    {
      CFDictionaryAddValue(*(a3 + 88), v22, v21);
    }

    goto LABEL_12;
  }

  if (!FigCFEqual())
  {
    goto LABEL_14;
  }

  v8 = *(a3 + 16);
  v20.epoch = *(a3 + 32);
  v9 = *(a3 + 56);
  v17 = *(a3 + 40);
  v18 = v9;
  v19 = *(a3 + 72);
  *&v20.value = v8;
  v10 = fcd_ttml_createDynamicStyleFromTTML(fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent, a2, &v20, &v17, &v22, &v21);
  v11 = v21;
  if (!v10)
  {
    v12 = v22;
    CFDictionaryAddValue(*(a3 + 88), v22, v21);
    if (v12)
    {
      CFRelease(v12);
      v22 = 0;
    }

    if (v11)
    {
      CFRelease(v11);
      v21 = 0;
    }

    v13 = *(a3 + 16);
    v20.epoch = *(a3 + 32);
    v14 = *(a3 + 56);
    v17 = *(a3 + 40);
    v18 = v14;
    v19 = *(a3 + 72);
    *&v20.value = v13;
    Value = fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent;
    goto LABEL_10;
  }

LABEL_12:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_14:
  v16 = v22;
  if (v22)
  {

    CFRelease(v16);
  }
}

void fcd_ttml_initializeRegionPropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling overflow", fcd_ttml_createRegionPropertyFromTTMLStyle_overflow);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling showBackground", fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling opacity", fcd_ttml_createRegionPropertyFromTTMLStyle_opacity);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling displayAlign", fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createRegionPropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", fcd_ttml_createRegionPropertyFromTTMLStyle_visibility);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling writingMode", fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling zIndex", fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling padding", fcd_ttml_createRegionPropertyFromTTMLStyle_padding);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling origin", fcd_ttml_createRegionPropertyFromTTMLStyle_origin);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling position", fcd_ttml_createRegionPropertyFromTTMLStyle_position);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling luminanceGain", fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling disparity", fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity);
  sRegionPropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_overflow(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69612F8];
    if (CFEqual(a1, @"hidden"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"visible"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_overflow_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69613A0];
    if (CFEqual(a1, @"always"))
    {
      result = 0;
      v8 = MEMORY[0x1E69613C8];
    }

    else
    {
      if (!CFEqual(a1, @"whenActive"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69613D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69612E8];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_opacity(const __CFString *a1, void *a2, uint64_t *a3)
{
  v14 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961380];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    CFStringTrimWhitespace(MutableCopy);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v9 = &CStringPtrAndBufferToFree[strlen(CStringPtrAndBufferToFree)];
    v13 = v9;
    strtof(CStringPtrAndBufferToFree, &v13);
    if (v9 == v13)
    {
      Float32 = FigCFNumberCreateFloat32();
      *a3 = Float32;
    }

    else
    {
      Float32 = *a3;
    }

    if (Float32)
    {
      v11 = 0;
    }

    else
    {
      v11 = 4294950720;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_opacity_cold_1(&v15);
    v11 = v15;
  }

  free(v14);
  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961320];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961308];
    if (CFEqual(a1, @"after"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961290];
    }

    else if (CFEqual(a1, @"before"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961298];
    }

    else
    {
      if (!CFEqual(a1, @"center"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69612A0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961330];
    if (CFEqual(a1, @"auto"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"none"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_visibility(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961370];
    if (CFEqual(a1, @"visible"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"hidden"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_visibility_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode(const void *a1, void *a2, void *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode_cold_1(&v9);
    return v9;
  }

  *a2 = *MEMORY[0x1E69613B8];
  if (!CFEqual(a1, @"lrtb"))
  {
    if (CFEqual(a1, @"rltb"))
    {
      goto LABEL_6;
    }

    if (!CFEqual(a1, @"tbrl"))
    {
      if (CFEqual(a1, @"tblr"))
      {
        result = 0;
        v8 = MEMORY[0x1E69613E8];
        goto LABEL_11;
      }

      if (CFEqual(a1, @"lr"))
      {
        goto LABEL_4;
      }

      if (CFEqual(a1, @"rl"))
      {
LABEL_6:
        result = 0;
        v8 = MEMORY[0x1E69613E0];
        goto LABEL_11;
      }

      if (!CFEqual(a1, @"tb"))
      {
        return 4294950720;
      }
    }

    result = 0;
    v8 = MEMORY[0x1E69613F0];
    goto LABEL_11;
  }

LABEL_4:
  result = 0;
  v8 = MEMORY[0x1E69613D8];
LABEL_11:
  *a3 = *v8;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex(const __CFString *a1, void *a2, uint64_t *a3)
{
  v14 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69613C0];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    CFStringTrimWhitespace(MutableCopy);
    if (CFEqual(MutableCopy, @"auto") || (CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(), v9 = &CStringPtrAndBufferToFree[strlen(CStringPtrAndBufferToFree)], v13 = v9, v10 = strtol(CStringPtrAndBufferToFree, &v13, 10), v11 = 4294950720, v9 == v13) && (v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *a3 = FigCFNumberCreateSInt32();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex_cold_1(&v13);
    v11 = v13;
  }

  free(v14);
  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding(const __CFString *a1, void *a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_5(&v42);
    v38 = v42;
    if (!Mutable)
    {
      return v38;
    }

    goto LABEL_28;
  }

  v8 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v9 = *(MEMORY[0x1E6962808] + 8);
  Count = CFArrayGetCount(v8);
  v40 = a3;
  theArray = v8;
  if (Count > 2)
  {
    if (Count == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      FigTTMLParseLengthSyntax(ValueAtIndex);
      v13 = v29;
      v30 = CFArrayGetValueAtIndex(v8, 1);
      FigTTMLParseLengthSyntax(v30);
      v9 = v31;
      v32 = CFArrayGetValueAtIndex(v8, 2);
      FigTTMLParseLengthSyntax(v32);
      v12 = v33;
      v11 = v9;
    }

    else
    {
      v11 = v9;
      v12 = v9;
      v13 = v9;
      if (Count == 4)
      {
        v18 = CFArrayGetValueAtIndex(v8, 0);
        FigTTMLParseLengthSyntax(v18);
        v13 = v19;
        v20 = CFArrayGetValueAtIndex(v8, 1);
        FigTTMLParseLengthSyntax(v20);
        v9 = v21;
        v22 = CFArrayGetValueAtIndex(v8, 2);
        FigTTMLParseLengthSyntax(v22);
        v12 = v23;
        v24 = CFArrayGetValueAtIndex(v8, 3);
        FigTTMLParseLengthSyntax(v24);
        v11 = v25;
      }
    }
  }

  else if (Count == 1)
  {
    v26 = CFArrayGetValueAtIndex(v8, 0);
    FigTTMLParseLengthSyntax(v26);
    v9 = v27;
    v11 = v27;
    v12 = v27;
    v13 = v27;
  }

  else
  {
    v11 = v9;
    v12 = v9;
    v13 = v9;
    if (Count == 2)
    {
      v14 = CFArrayGetValueAtIndex(v8, 0);
      FigTTMLParseLengthSyntax(v14);
      v12 = v15;
      v16 = CFArrayGetValueAtIndex(v8, 1);
      FigTTMLParseLengthSyntax(v16);
      v9 = v17;
      v11 = v17;
      v13 = v12;
    }
  }

  if ((v13 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_4(&v42);
LABEL_36:
    v37 = 0;
    v38 = v42;
    goto LABEL_23;
  }

  if ((v12 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_3(&v42);
    goto LABEL_36;
  }

  if ((v9 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_2(&v42);
    goto LABEL_36;
  }

  if ((v11 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_1(&v42);
    goto LABEL_36;
  }

  v34 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612B0], v34);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612A8], v35);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612C0], v36);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612B8], v37);
  v38 = 0;
  *a2 = *MEMORY[0x1E6961388];
  *v40 = Mutable;
  Mutable = 0;
LABEL_23:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (Mutable)
  {
LABEL_28:
    CFRelease(Mutable);
  }

  return v38;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin(const __CFString *a1, void *a2, uint64_t *a3)
{
  v3 = *(MEMORY[0x1E6962820] + 16);
  v20 = *MEMORY[0x1E6962820];
  v21 = v3;
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_4(v19);
    return LODWORD(v19[0]);
  }

  if (FigCFEqual())
  {
    v8 = 0;
    v9 = *(MEMORY[0x1E6962810] + 8);
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_2(v19);
    goto LABEL_14;
  }

  v13 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v8 = v13;
  if (!v13 || CFArrayGetCount(v13) != 2)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_3(v19);
    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  FigTTMLParseLengthSyntax(ValueAtIndex);
  v16 = v15;
  v17 = CFArrayGetValueAtIndex(v8, 1);
  FigTTMLParseLengthSyntax(v17);
  v9 = v18;
  if ((v16 & 0x100000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v9 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_1(v19);
LABEL_14:
    v11 = LODWORD(v19[0]);
    if (!v8)
    {
      return v11;
    }

    goto LABEL_7;
  }

  FigGeometryPointMake();
  v19[0] = v20;
  v19[1] = v21;
  v10 = FigGeometryPointCopyAsDictionary();
  v11 = 0;
  *a2 = *MEMORY[0x1E6961390];
  *a3 = v10;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain_cold_1(&v11);
    return v11;
  }

  *a2 = *MEMORY[0x1E6961378];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  CFStringTrimWhitespace(MutableCopy);
  FigTTMLParseNumber();
  if (v8)
  {
    v9 = v8;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_8;
  }

  if (-1.0 < 0.0)
  {
    v9 = 4294950720;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  *a3 = FigCFNumberCreateFloat32();
  if (MutableCopy)
  {
LABEL_8:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity(const __CFString *a1, void *a2, uint64_t *a3)
{
  HIDWORD(v11) = 0;
  v12 = 0;
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity_cold_1(v13);
    return v13[0];
  }

  *a2 = *MEMORY[0x1E69613A8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  CFStringTrimWhitespace(MutableCopy);
  v8 = FigTTMLParseLength(a1, &v12, &v11 + 1);
  if (v8 || HIDWORD(v11) >= 6 && (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13[1]), v8))
  {
    v9 = v8;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_7;
  }

  FigGeometryDimensionMake();
  v9 = 0;
  *a3 = FigGeometryDimensionCopyAsDictionary();
  if (MutableCopy)
  {
LABEL_7:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_3(&v16);
    return v16;
  }

  if (FigCFEqual())
  {
    FigGeometryDimensionMake();
    v7 = 0;
    if ((v8 & 0x100000000) != 0)
    {
LABEL_5:
      *a2 = *MEMORY[0x1E69613B0];
      v9 = 0;
      *a3 = FigGeometryDimensionCopyAsDictionary();
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v11 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v7 = v11;
  if (v11 && CFArrayGetCount(v11) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v13 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_1(&v14);
    v9 = v14;
    goto LABEL_6;
  }

  fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_2(&v15);
  v9 = v15;
LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_3(&v16);
    return v16;
  }

  if (FigCFEqual())
  {
    FigGeometryDimensionMake();
    v7 = 0;
    if ((v8 & 0x100000000) != 0)
    {
LABEL_5:
      *a2 = *MEMORY[0x1E6961328];
      v9 = 0;
      *a3 = FigGeometryDimensionCopyAsDictionary();
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v11 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v7 = v11;
  if (v11 && CFArrayGetCount(v11) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 1);
    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v13 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_1(&v14);
    v9 = v14;
    goto LABEL_6;
  }

  fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_2(&v15);
  v9 = v15;
LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

CFTypeID OUTLINED_FUNCTION_3_75(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, __int128 *a9, __int128 *a10, const void *a11, unsigned int a12, __int128 *a13, uint64_t a14, __int128 *a15, uint64_t a16, const void *a17, unsigned int a18, uint64_t *a19)
{
  v22 = a4;
  v23 = a3;
  v24 = a2;
  values = a8;
  if (a8)
  {
    v26 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v26)
    {
      FigMediaProcessorCreateForVideoCompressionWithFormatWriter2_cold_1(v36);
      return LODWORD(v36[0]);
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = *a9;
  v38 = *(a9 + 2);
  v29 = a10[1];
  v36[0] = *a10;
  v36[1] = v29;
  v36[2] = a10[2];
  v37 = v28;
  v34 = *a13;
  v35 = *(a13 + 2);
  v32 = *a15;
  v33 = *(a15 + 2);
  FigMediaProcessorCreateForVideoCompressionCommon(allocator, v24, v23, v22, a5, a6, a7, v26, &v37, v36, a11, a12, 0, &v34, a14, &v32, a16, 0, a17, a18, a19);
  v27 = v30;
  if (v26)
  {
    CFRelease(v26);
  }

  return v27;
}

void FigMediaProcessorCreateForVideoCompressionCommon(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, const __CFArray *a8, __int128 *a9, __int128 *a10, const void *a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, unsigned int a20, uint64_t *a21)
{
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  if ((a7 == 0) != (a8 != 0))
  {
    v23 = v21;
    v24 = 164;
LABEL_15:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v24, v23);
    return;
  }

  v25 = a11 != 0;
  if (a13)
  {
    ++v25;
  }

  if (a18)
  {
    ++v25;
  }

  if (v25 != 1)
  {
    v23 = v21;
    v24 = 167;
    goto LABEL_15;
  }

  v44 = *MEMORY[0x1E695E480];
  FigSampleBufferProcessorCreateWithVTCompressionSession(a1, a2, a3, a4, a5, a6, *MEMORY[0x1E695E480], a20, &v52);
  if (v27)
  {
    goto LABEL_33;
  }

  if (a7)
  {
    FigSampleBufferProviderCreateForBufferQueue(v44, a7, &v51);
    if (v28)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (!a8)
  {
    goto LABEL_28;
  }

  Count = CFArrayGetCount(a8);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a8, 0);
    v32 = *a9;
    v48.epoch = *(a9 + 2);
    v33 = a10[1];
    v45 = *a10;
    v46 = v33;
    v47 = a10[2];
    *&v48.value = v32;
    if (FigSampleBufferProviderCreateForVisualContext(v44, ValueAtIndex, &v48.value, &v45, &v51))
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (Count < 2)
  {
LABEL_28:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, a20);
    goto LABEL_33;
  }

  v34 = *a9;
  v48.epoch = *(a9 + 2);
  v35 = a10[1];
  v45 = *a10;
  v46 = v35;
  v47 = a10[2];
  *&v48.value = v34;
  FigSampleBufferProviderCreateForVisualContextGroup(v44, a8, &v48, &v45, &v51);
  if (v36)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (a11)
  {
    v45 = *a14;
    *&v46 = *(a14 + 16);
    *&v48.value = *a16;
    v48.epoch = *(a16 + 16);
    FigSampleBufferConsumerCreateForFormatWriter(a11, a12, &v45, a15, &v48, a17, &v50);
    if (v29)
    {
      goto LABEL_33;
    }
  }

  else if (a18)
  {
    if (FigSampleBufferConsumerCreateForFrameSilo(a18, &v50))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v45 = *a14;
    *&v46 = *(a14 + 16);
    *&v48.value = *a16;
    v48.epoch = *(a16 + 16);
    FigSampleBufferConsumerCreateForBufferQueue2(a13, &v45, a15, &v48, a17, &v50);
    if (v37)
    {
      goto LABEL_33;
    }
  }

  if (!a19)
  {
    v38 = a1;
    FigActivitySchedulerCreateForNewThread(a1, a20, @"com.apple.coremedia.mediaprocessor.videocompression", &v49);
    if (v40)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v38 = a1;
  FigActivitySchedulerCreateForCFRunLoop(a1, a19, &v49);
  if (!v39)
  {
LABEL_32:
    FigMediaProcessorCreate(v38, v52, v51, v50, v49, a21);
  }

LABEL_33:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v50)
  {
    CFRelease(v50);
  }
}

void FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFArray *a7, uint64_t a8, __int128 *a9, const void *a10, unsigned int a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, const void *a16, unsigned int a17, uint64_t *a18)
{
  v18 = *a8;
  v26 = *(a8 + 16);
  v19 = a9[1];
  v24[0] = *a9;
  v24[1] = v19;
  v24[2] = a9[2];
  v25 = v18;
  v22 = *a12;
  v23 = *(a12 + 2);
  v20 = *a14;
  v21 = *(a14 + 2);
  FigMediaProcessorCreateForVideoCompressionCommon(a1, a2, a3, a4, a5, a6, 0, a7, &v25, v24, a10, a11, 0, &v22, a13, &v20, a15, 0, a16, a17, a18);
}

uint64_t FigMediaProcessorCreateForVideoCompression(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, uint64_t a9, __int128 *a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, const void *a16, unsigned int a17, uint64_t *a18)
{
  values = a8;
  if (a8)
  {
    v25 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (!v25)
    {
      FigMediaProcessorCreateForVideoCompression_cold_1(v35);
      return LODWORD(v35[0]);
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *a9;
  v37 = *(a9 + 16);
  v28 = a10[1];
  v35[0] = *a10;
  v35[1] = v28;
  v35[2] = a10[2];
  v36 = v27;
  v33 = *a12;
  v34 = *(a12 + 2);
  v31 = *a14;
  v32 = *(a14 + 2);
  FigMediaProcessorCreateForVideoCompressionCommon(a1, a2, a3, a4, a5, a6, a7, v25, &v36, v35, 0, 0, a11, &v33, a13, &v31, a15, 0, a16, a17, a18);
  v26 = v29;
  if (v25)
  {
    CFRelease(v25);
  }

  return v26;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFrameSilo(CFAllocatorRef allocator, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, uint64_t a9, __int128 *a10, const void *a11, const void *a12, unsigned int a13, uint64_t *a14)
{
  values = a8;
  if (a8)
  {
    v21 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v21)
    {
      FigMediaProcessorCreateForVideoCompressionWithFrameSilo_cold_1(v26);
      return LODWORD(v26[0]);
    }
  }

  else
  {
    v21 = 0;
  }

  v27 = *a9;
  v28 = *(a9 + 16);
  v23 = a10[1];
  v26[0] = *a10;
  v26[1] = v23;
  v26[2] = a10[2];
  FigMediaProcessorCreateForVideoCompressionCommon(allocator, a2, a3, a4, a5, a6, a7, v21, &v27, v26, 0, 0, 0, MEMORY[0x1E6960C70], 0, MEMORY[0x1E6960C70], 0, a11, a12, a13, a14);
  v22 = v24;
  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

CVPixelBufferPoolRef FigMediaProcessorGetPixelBufferPool(uint64_t a1)
{
  VTCompressionSession = FigMediaProcessorGetVTCompressionSession(a1);

  return VTCompressionSessionGetPixelBufferPool(VTCompressionSession);
}

uint64_t FigRemakerCreateWithAsset(const __CFAllocator *a1, const void *a2, const __CFURL *a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v58 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  cf = 0;
  IsServerProcess = FigServer_IsServerProcess();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (!IsServerProcess)
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    FigRemakerCreateWithAsset_cold_9(__str);
    goto LABEL_75;
  }

  v11 = FigOSTransactionCreate();
  if (!v11)
  {
    FigRemakerCreateWithAsset_cold_1(__str);
    v46 = *__str;
    goto LABEL_58;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v46 = 4294954514;
    goto LABEL_56;
  }

  v15 = *MEMORY[0x1E695E480];
  TempFile = v14(v13, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &v54);
  if (TempFile)
  {
    goto LABEL_70;
  }

  if (v54)
  {
    __str[0] = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (!__str[0] && !FigCFURLIsLocalResource())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0);
      goto LABEL_70;
    }
  }

  if (!a3)
  {
    FigRemakerCreateWithAsset_cold_8(__str);
    goto LABEL_75;
  }

  if (!remakerFamily_CFURLSchemeIsFile(a3))
  {
    FigRemakerCreateWithAsset_cold_7(__str);
    goto LABEL_75;
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v18 = CFGetTypeID(Value);
    if (v18 != CFStringGetTypeID())
    {
      v46 = 4294955174;
      goto LABEL_56;
    }

    valuePtr = 0;
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v20 = CFURLCopyPathExtension(a3);
    v21 = FigCFStringGetCStringPtrAndBufferToFree();
    snprintf(__str, 0x80uLL, "-%s.%s", CStringPtrAndBufferToFree, v21);
    free(0);
    free(0);
    if (v20)
    {
      CFRelease(v20);
    }

    v22 = FigCFDictionaryGetValue();
    v23 = v22;
    if (v22)
    {
      v24 = CFGetTypeID(v22);
      if (v24 != CFURLGetTypeID())
      {
        FigRemakerCreateWithAsset_cold_2(&v56);
        v46 = v56;
        goto LABEL_56;
      }
    }

    TypeID = FigRemakerGetTypeID();
    TempFile = remakerFamily_createTempFile(TypeID, v23, a3, __str, 0, &cf);
    if (TempFile)
    {
      goto LABEL_70;
    }
  }

  else if (FigFileDoesFileExist())
  {
    FigRemakerCreateWithAsset_cold_3(__str);
    goto LABEL_75;
  }

  if (!a6)
  {
    FigRemakerCreateWithAsset_cold_6(__str);
    goto LABEL_75;
  }

  FigRemakerGetClassID();
  TempFile = CMDerivedObjectCreate();
  if (TempFile || (Storage = remakerFamily_getStorage(v55), TempFile = remakerFamily_generateLoggingIdentifier(69, (Storage + 41)), TempFile))
  {
LABEL_70:
    v46 = TempFile;
    goto LABEL_56;
  }

  v27 = MEMORY[0x1E6960CC0];
  *(Storage + 88) = *MEMORY[0x1E6960CC0];
  *(Storage + 104) = *(v27 + 16);
  v28 = MEMORY[0x1E6960C88];
  *(Storage + 112) = *MEMORY[0x1E6960C88];
  *(Storage + 128) = *(v28 + 16);
  *(Storage + 456) = -1;
  *(Storage + 8) = FigReentrantMutexCreate();
  *(Storage + 64) = FigReentrantMutexCreate();
  remakerFamily_SetRemakerState(v55, 1, 0);
  *(Storage + 72) = CFRetain(a2);
  if (cf)
  {
    v29 = cf;
  }

  else
  {
    v29 = a3;
  }

  *(Storage + 160) = CFRetain(v29);
  if (IsServerProcess)
  {
    *(Storage + 448) = v11;
    v11 = 0;
  }

  v30 = CMByteStreamCreateForFileURL();
  if (v30 == -12204 || v30 == 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = -12115;
  }

  if (v32)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0);
    goto LABEL_70;
  }

  v33 = FigDispatchQueueCreateWithPriorityAndClientPID();
  *(Storage + 56) = v33;
  if (!v33)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, v49);
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (!a5)
  {
    goto LABEL_46;
  }

  v34 = CFDictionaryGetValue(a5, @"Remaker_TemporaryDirectoryURL");
  if (!v34)
  {
LABEL_45:
    *(Storage + 232) = v34;
LABEL_46:
    *(Storage + 360) = -1;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    *(Storage + 80) = Mutable;
    if (Mutable)
    {
      TempFile = remakerFamily_createFormatWriter(v55, a1, 0, 0, a4, (Storage + 184));
      if (!TempFile)
      {
        *(Storage + 192) = FigCFWeakReferenceHolderCreateWithReferencedObject();
        CMNotificationCenterGetDefaultLocalCenter();
        TempFile = FigNotificationCenterAddWeakListeners();
        if (!TempFile)
        {
          *__str = 0;
          LODWORD(valuePtr) = 0;
          FigAssetGetCMBaseObject();
          v39 = v38;
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v40)
          {
            v40(v39, @"NaturalTimeScale", v15, __str);
            if (*__str)
            {
              CFNumberGetValue(*__str, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr >= 1)
              {
                v41 = *__str;
                FigFormatWriterGetFigBaseObject();
                v43 = v42;
                v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v44)
                {
                  v44(v43, @"MovieTimeScale", v41);
                }
              }

              CFRelease(*__str);
            }
          }

          v46 = 0;
          *a6 = v55;
          v55 = 0;
          goto LABEL_56;
        }
      }

      goto LABEL_70;
    }

    FigRemakerCreateWithAsset_cold_5(__str);
    goto LABEL_75;
  }

  v35 = v34;
  v36 = CFGetTypeID(v34);
  if (v36 == CFURLGetTypeID())
  {
    v34 = CFRetain(v35);
    goto LABEL_45;
  }

  FigRemakerCreateWithAsset_cold_4(__str);
LABEL_75:
  v46 = *__str;
LABEL_56:
  if (v11)
  {
    os_release(v11);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v46;
}

BOOL FigRemakerCanFileTypeSupportMediaType(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (remakerFamily_useAudioFormatWriterGivenFormatWriterOption(a1))
  {

    return FigAudioFileFormatWriterCanFileTypeSupportMediaType(a1, v4);
  }

  else
  {

    return FigMovieFormatWriterCanFileTypeSupportMediaType(a1, v4, v3);
  }
}

uint64_t FigRemakerCanFileTypeSupportFormatDescription(const void *a1, const opaqueCMFormatDescription *a2, int a3)
{
  if (remakerFamily_useAudioFormatWriterGivenFormatWriterOption(a1))
  {

    return FigAudioFileFormatWriterCanFileTypeSupportFormatDescription(a1, a2);
  }

  else
  {

    return FigMovieFormatWriterCanFileTypeSupportFormatDescription(a1, a2, a3);
  }
}

uint64_t remaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    remaker_CopyProperty_cold_4(&v62);
    return LODWORD(v62.value);
  }

  v9 = Storage;
  if (!CFEqual(a2, @"Remaker_SourceDuration"))
  {
    if (CFEqual(a2, @"Remaker_Progress"))
    {
      valuePtr = 0.0;
      v14 = remakerFamily_getStorage(a1);
      if (*v14 <= 2u)
      {
        remaker_CopyProperty_cold_3(&v62);
      }

      else if (*(v14 + 72))
      {
        if (*(v14 + 184))
        {
          remakerFamily_getStorage(a1);
          dictionaryRepresentation = 0;
          v62 = **&MEMORY[0x1E6960C70];
          v61 = v62;
          ExpectedDuration = remakerFamily_getExpectedDuration(a1, &v61);
          v16 = 0.0;
          if (ExpectedDuration)
          {
            goto LABEL_88;
          }

          FigFormatWriterGetFigBaseObject();
          v18 = v17;
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v19)
          {
            value_low = 4294954514;
            goto LABEL_17;
          }

          ExpectedDuration = v19(v18, @"LongestMediaDecodeDuration", a3, &dictionaryRepresentation);
          if (ExpectedDuration)
          {
LABEL_88:
            value_low = ExpectedDuration;
          }

          else
          {
            CMTimeMakeFromDictionary(&v62, dictionaryRepresentation);
            time1 = v61;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&time1, &time2))
            {
              time1 = v62;
              Seconds = CMTimeGetSeconds(&time1);
              time1 = v61;
              value_low = 0;
              v16 = Seconds / CMTimeGetSeconds(&time1);
            }

            else
            {
              value_low = 0;
            }
          }

LABEL_17:
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          if (value_low)
          {
            return value_low;
          }

          v22 = remakerFamily_getStorage(a1);
          v23 = 0.0;
          if (!*(v22 + 240))
          {
            goto LABEL_30;
          }

          v24 = v22;
          v25 = *(v22 + 216);
          if (!v25 || !*(v22 + 168))
          {
            goto LABEL_30;
          }

          v62.value = 0;
          v61.value = 0;
          v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v26)
          {
            return 4294954514;
          }

          ProgressOfCurrentPass = v26(v25, 0, &v62);
          if (ProgressOfCurrentPass)
          {
            return ProgressOfCurrentPass;
          }

          v28 = *(v24 + 168);
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v29)
          {
            return 4294954514;
          }

          ProgressOfCurrentPass = v29(v28, 0, &v61);
          if (ProgressOfCurrentPass)
          {
            return ProgressOfCurrentPass;
          }

          if (v62.value >= 1)
          {
            v30 = 0;
            v23 = v61.value / v62.value;
          }

          else
          {
LABEL_30:
            v30 = 1;
          }

          v31 = remakerFamily_getStorage(a1);
          Count = CFArrayGetCount(*(v31 + 80));
          v33 = Count - 1;
          if (Count >= 1)
          {
            v34 = Count;
            v35 = 0;
            v36 = 1;
            v37 = 0.0;
            do
            {
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v31 + 80), v35);
                v39 = *(ValueAtIndex + 45);
                if (!v39)
                {
                  break;
                }

                LODWORD(v62.value) = 0;
                ProgressOfCurrentPass = VTFrameSiloGetProgressOfCurrentPass(v39, &v62);
                if (ProgressOfCurrentPass)
                {
                  return ProgressOfCurrentPass;
                }

                v40 = *(ValueAtIndex + 107);
                v41 = 1.0 - exp2f(-(v40 - 1));
                v42 = *&v62.value;
                v43 = exp2f(-v40);
                v36 = 0;
                v44 = v41 + (v42 * v43);
                if (v37 < v44)
                {
                  v37 = v44;
                }

                if (v33 == v35++)
                {
                  goto LABEL_47;
                }
              }

              if (v37 < 0.0)
              {
                v37 = 0.0;
              }

              ++v35;
            }

            while (v34 != v35);
            if (v36)
            {
              goto LABEL_48;
            }

LABEL_47:
            v16 = v37 + (1.0 - v37) * v16;
          }

LABEL_48:
          if ((v30 & 1) == 0)
          {
            v49 = remakerFamily_getStorage(a1);
            v50 = CFArrayGetCount(*(v49 + 80));
            v51 = 0.5;
            if (v50 >= 1)
            {
              v52 = v50;
              v53 = 0;
              while (*(CFArrayGetValueAtIndex(*(v49 + 80), v53) + 48))
              {
                if (v52 == ++v53)
                {
                  goto LABEL_57;
                }
              }

              v51 = 0.1;
            }

LABEL_57:
            v16 = (v23 * v51) + v16 * (1.0 - v51);
          }

          v54 = 0.0;
          if (v16 >= 0.0)
          {
            v54 = v16;
          }

          valuePtr = fminf(v54, 1.0);
          goto LABEL_61;
        }

        remaker_CopyProperty_cold_1(&v62);
      }

      else
      {
        remaker_CopyProperty_cold_2(&v62);
      }

      value_low = LODWORD(v62.value);
      if (LODWORD(v62.value))
      {
        return value_low;
      }

LABEL_61:
      v46 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v48 = kCFNumberFloat32Type;
      goto LABEL_62;
    }

    if (CFEqual(a2, @"Remaker_MaxFileSize"))
    {
      v46 = *MEMORY[0x1E695E480];
      p_valuePtr = (v9 + 36);
      v48 = kCFNumberSInt64Type;
LABEL_62:
      v55 = CFNumberCreate(v46, v48, p_valuePtr);
LABEL_63:
      value_low = 0;
      *a4 = v55;
      return value_low;
    }

    if (CFEqual(a2, @"Remaker_ClientPID"))
    {
      v46 = *MEMORY[0x1E695E480];
      p_valuePtr = (v9 + 9);
      v48 = kCFNumberSInt32Type;
      goto LABEL_62;
    }

    if (CFEqual(a2, @"Remaker_ThrottleForBackground"))
    {
      v56 = MEMORY[0x1E695E4D0];
      v57 = *(v9 + 40);
    }

    else
    {
      if (CFEqual(a2, @"Remaker_IOPolicy"))
      {
        v46 = *MEMORY[0x1E695E480];
        p_valuePtr = (v9 + 114);
        v48 = kCFNumberIntType;
        goto LABEL_62;
      }

      if (CFEqual(a2, @"Remaker_MaximizePowerEfficiency"))
      {
        v56 = MEMORY[0x1E695E4D0];
        v57 = *(v9 + 424);
      }

      else if (CFEqual(a2, @"Remaker_MinimizeMemoryUsage"))
      {
        v56 = MEMORY[0x1E695E4D0];
        v57 = *(v9 + 425);
      }

      else
      {
        if (!CFEqual(a2, @"Remaker_RealTime"))
        {
          if (!CFEqual(a2, @"Remaker_DestinationURL"))
          {
            return 4294954512;
          }

          v55 = *(v9 + 20);
          if (!v55)
          {
            goto LABEL_63;
          }

          goto LABEL_70;
        }

        v56 = MEMORY[0x1E695E4D0];
        v57 = *(v9 + 32);
      }
    }

    if (!v57)
    {
      v56 = MEMORY[0x1E695E4C0];
    }

    v55 = *v56;
LABEL_70:
    v55 = CFRetain(v55);
    goto LABEL_63;
  }

  FigAssetGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(v11, @"Duration", a3, a4);
}

void remaker_SetProperty(const void *a1, const void *a2, const void *a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    remaker_SetProperty_cold_13(&v26);
    return;
  }

  v7 = Storage;
  if (CFEqual(a2, @"Remaker_ClientSecTask"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == SecTaskGetTypeID())
      {
        v9 = *(v7 + 55);
        *(v7 + 55) = a3;
        CFRetain(a3);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        remaker_SetProperty_cold_1(&v26);
      }
    }

    else
    {
      v11 = *(v7 + 55);
      if (v11)
      {
        CFRelease(v11);
        *(v7 + 55) = 0;
      }
    }
  }

  else if (CFEqual(a2, @"Remaker_ClientPID"))
  {
    if (a3 && (v10 = CFGetTypeID(a3), v10 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 9);

      remakerfamily_updateClientPID(a1);
    }

    else
    {
      remaker_SetProperty_cold_2(&v26);
    }
  }

  else if (CFEqual(a2, @"Remaker_ThrottleForBackground"))
  {
    if (a3 && (v12 = CFGetTypeID(a3), v12 == CFBooleanGetTypeID()))
    {
      *(v7 + 40) = CFBooleanGetValue(a3);

      remakerfamily_updateThrottleForBackground(a1);
    }

    else
    {
      remaker_SetProperty_cold_3(&v26);
    }
  }

  else if (CFEqual(a2, @"Remaker_IOPolicy"))
  {
    if (a3 && (v13 = CFGetTypeID(a3), v13 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberIntType, v7 + 114);

      remakerfamily_updateIOPolicy(a1);
    }

    else
    {
      remaker_SetProperty_cold_4(&v26);
    }
  }

  else if (CFEqual(a2, @"Remaker_MinimizeMemoryUsage"))
  {
    if (a3 && (v14 = CFGetTypeID(a3), v14 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(a3);
      *(v7 + 425) = Value;
      remakerFamily_setMemoryUsage(a1, Value);
    }

    else
    {
      remaker_SetProperty_cold_5(&v26);
    }
  }

  else
  {
    if (*v7 >= 3u)
    {
      remaker_SetProperty_cold_12(&v26);
      return;
    }

    if (CFEqual(a2, @"Remaker_MaxFileSize"))
    {
      v26 = 0;
      if (a3)
      {
        v16 = CFGetTypeID(a3);
        if (v16 != CFNumberGetTypeID())
        {
          remaker_SetProperty_cold_6(&v27);
          return;
        }

        CFNumberGetValue(a3, kCFNumberSInt64Type, &v26);
        v17 = v26;
        if (v26 < 0)
        {
          remaker_SetProperty_cold_7(&v27);
          return;
        }
      }

      else
      {
        v17 = 0;
      }

      *(v7 + 18) = v17;
      return;
    }

    if (CFEqual(a2, @"Remaker_Metadata"))
    {
      if (a3)
      {
        v18 = CFGetTypeID(a3);
        if (v18 == CFArrayGetTypeID())
        {
          v19 = *(v7 + 50);
          if (v19)
          {
            CFRelease(v19);
            *(v7 + 50) = 0;
          }

          *(v7 + 50) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        }

        else
        {
          remaker_SetProperty_cold_8(&v26);
        }
      }

      else
      {
        v22 = *(v7 + 50);
        if (v22)
        {
          CFRelease(v22);
          *(v7 + 50) = 0;
        }
      }
    }

    else if (CFEqual(a2, @"Remaker_MetadataTransferAllowList"))
    {
      if (a3)
      {
        v20 = CFGetTypeID(a3);
        if (v20 == CFDictionaryGetTypeID())
        {
          v21 = *(v7 + 51);
          if (v21)
          {
            CFRelease(v21);
            *(v7 + 51) = 0;
          }

          *(v7 + 51) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
        }

        else
        {
          remaker_SetProperty_cold_9(&v26);
        }
      }

      else
      {
        v24 = *(v7 + 51);
        if (v24)
        {
          CFRelease(v24);
          *(v7 + 51) = 0;
        }
      }
    }

    else if (CFEqual(a2, @"Remaker_MaximizePowerEfficiency"))
    {
      if (a3 && (v23 = CFGetTypeID(a3), v23 == CFBooleanGetTypeID()))
      {
        *(v7 + 424) = CFBooleanGetValue(a3);
      }

      else
      {
        remaker_SetProperty_cold_10(&v26);
      }
    }

    else if (CFEqual(a2, @"Remaker_RealTime"))
    {
      if (a3 && (v25 = CFGetTypeID(a3), v25 == CFBooleanGetTypeID()))
      {
        *(v7 + 32) = CFBooleanGetValue(a3);
      }

      else
      {
        remaker_SetProperty_cold_11(&v26);
      }
    }
  }
}

uint64_t remaker_AddVideoTrack(const void *a1, uint64_t a2, unint64_t a3, int32_t a4, const __CFDictionary *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, const __CFDictionary *a9, const __CFDictionary *a10, uint64_t a11, _DWORD *a12)
{
  v13 = v12;
  LODWORD(v16) = a3;
  v225 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v221 = 0;
  *v222 = 0;
  v220 = 1986618469;
  v219 = bswap32(a6);
  v218 = 0;
  v216 = 0;
  v217 = 0;
  propertyValueOut = 0;
  v215 = 0;
  propertyValue = 0;
  v213 = 0;
  v211 = 0;
  memset(&value[1] + 7, 0, 9);
  cf = 0;
  value[0] = 0;
  if (*Storage != 1)
  {
    remaker_AddVideoTrack_cold_1(theArray);
    goto LABEL_314;
  }

  v20 = Storage;
  v21 = *(Storage + 72);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v22)
  {
    v23 = v22(v21, a2, &v221);
    if (v23)
    {
      goto LABEL_323;
    }

    v24 = v221;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v25)
    {
      v23 = v25(v24, 0, &v220);
      if (!v23)
      {
        if (v220 != 1986618469)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0, 4294955194, "<<<< Remaker >>>>", 2763, v12);
          return v46;
        }

        v26 = CFGetTypeID(a1);
        v23 = remakerFamily_copyFormatDescription(v26, v221, &v217);
        if (!v23)
        {
          v27 = MEMORY[0x1E695E480];
          if (a6 != 1752589105 || !FigCFDictionaryGetValue())
          {
LABEL_63:
            v47 = CFGetAllocator(a1);
            theDict = CFDictionaryCreateMutableCopy(v47, 0, a9);
            if (theDict)
            {
              v48 = CFGetTypeID(a1);
              theArray[0].start.value = 0;
              v223.value = 0;
              v207.value = 0;
              allocator = *v27;
              FigAssetTrackGetCMBaseObject();
              v50 = v49;
              v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v51)
              {
                v63 = 0;
                value_low = 4294954514;
                goto LABEL_91;
              }

              v52 = v51(v50, @"FormatDescriptionArray", allocator, theArray);
              if (v52 == -12521)
              {
                goto LABEL_88;
              }

              value_low = v52;
              if (v52)
              {
LABEL_178:
                v63 = 0;
                goto LABEL_91;
              }

              if (theArray[0].start.value && (Count = CFArrayGetCount(theArray[0].start.value)) != 0)
              {
                v54 = Count;
                if (Count >= 2)
                {
                  CFArrayGetValueAtIndex(theArray[0].start.value, 0);
                  FigVideoFormatDescriptionCopyVEXUExtensions();
                  v55 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                  v56 = 1;
                  do
                  {
                    CFArrayGetValueAtIndex(theArray[0].start.value, v56);
                    FigVideoFormatDescriptionCopyVEXUExtensions();
                    v57 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                    if (!FigCFEqual() || v55 != v57)
                    {
                      goto LABEL_177;
                    }

                    if (v223.value)
                    {
                      CFRelease(v223.value);
                      v223.value = 0;
                    }
                  }

                  while (v54 != ++v56);
                }

                ValueAtIndex = CFArrayGetValueAtIndex(theArray[0].start.value, 0);
                v60 = CFDictionaryContainsKey(theDict, *MEMORY[0x1E69836E0]);
                v61 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                Extensions = CMFormatDescriptionGetExtensions(ValueAtIndex);
                v63 = Extensions;
                if (!Extensions)
                {
LABEL_86:
                  value_low = 0;
                  goto LABEL_91;
                }

                v64 = CFGetTypeID(Extensions);
                if (v64 != CFDictionaryGetTypeID())
                {
LABEL_177:
                  value_low = 0;
                  goto LABEL_178;
                }

                MutableCopy = FigCFDictionaryCreateMutableCopy();
                v63 = MutableCopy;
                if (MutableCopy)
                {
                  if (v61 && !v60)
                  {
                    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6960048]);
                    CFDictionaryRemoveValue(v63, *MEMORY[0x1E6960050]);
                    CFDictionaryRemoveValue(v63, *MEMORY[0x1E6960040]);
                    CFDictionaryRemoveValue(v63, *MEMORY[0x1E6962780]);
                  }

                  CFDictionaryApplyFunction(v63, spatialFormatDescriptionExtensionApplierFunction, theDict);
                  goto LABEL_86;
                }

                value_low = 4294955196;
              }

              else
              {
LABEL_88:
                v63 = 0;
                if (FigAssetReaderGetTypeID() == v48)
                {
                  value_low = 4294955158;
                }

                else
                {
                  value_low = 4294955173;
                }
              }

LABEL_91:
              if (theArray[0].start.value)
              {
                CFRelease(theArray[0].start.value);
              }

              if (v63)
              {
                CFRelease(v63);
              }

              if (v223.value)
              {
                CFRelease(v223.value);
              }

              if (value_low)
              {
                goto LABEL_327;
              }

              v194 = remakerFamily_IsRasterFormatDescription(v217);
              MediaSubType = CMFormatDescriptionGetMediaSubType(v217);
              v67 = 1;
              if (MediaSubType <= 1634743415)
              {
                if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
                {
                  v68 = 13416;
LABEL_106:
                  if (MediaSubType != (v68 | 0x61700000))
                  {
                    v67 = 0;
                  }
                }
              }

              else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
              {
                v68 = 13432;
                goto LABEL_106;
              }

              v197 = v67;
              Channel = remakerFamily_createChannel(a1, a2, v220, v222);
              if (!Channel)
              {
                TrackRotationAngle = remakerFamily_getTrackRotationAngle(v221, &v218 + 1, &v218);
                if (a5 && (theArray[0].start.value = 0, CFDictionaryGetValueIfPresent(a5, @"MatrixHandling", theArray)) && CFEqual(theArray[0].start.value, @"PreserveMatrix"))
                {
                  v71 = 0;
                  TrackRotationAngle = 0;
                  v218 = 0;
                }

                else
                {
                  v71 = 1;
                }

                v200 = TrackRotationAngle;
                if (a10)
                {
                  v195 = CFDictionaryGetValue(a10, @"CustomSampleBufferProcessor");
                  v72 = CFDictionaryGetValue(a10, @"CustomSampleBufferProcessorOptions");
                  if (v72 && (v73 = CFDictionaryGetValue(v72, @"CustomSampleBufferProcessorOptions_ConvenienceString")) != 0)
                  {
                    v74 = v73;
                    v75 = CFGetAllocator(a1);
                    Mutable = CFDictionaryCreateMutable(v75, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionaryAddValue(Mutable, @"SampleBufferProcessor_ConvenienceString", v74);
                  }

                  else
                  {
                    Mutable = 0;
                  }

                  if (CFDictionaryContainsKey(a10, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm"))
                  {
                    v76 = CFDictionaryGetValue(a10, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm");
                    if (v76)
                    {
                      v77 = CFGetTypeID(v76);
                      if (v77 == CFStringGetTypeID())
                      {
                        if (FigCFEqual())
                        {
                          *(*v222 + 49) = 1;
                        }
                      }
                    }
                  }

                  TrackRotationAngle = v200;
                }

                else
                {
                  Mutable = 0;
                  v195 = 0;
                }

                if (FigCPEIsSupportedFormatDescription(v217))
                {
                  remaker_AddVideoTrack_cold_2(theArray);
                  v39 = 0;
                  v41 = 0;
                  v42 = 0;
                  v43 = 0;
                  goto LABEL_329;
                }

                if (v16 && a4)
                {
                  *(*v222 + 320) |= 1u;
                  if (a5)
                  {
                    theArray[0].start.value = 0;
                    if (CFDictionaryGetValueIfPresent(a5, *MEMORY[0x1E6983E30], theArray))
                    {
                      if (!CFEqual(theArray[0].start.value, *MEMORY[0x1E69840F0]))
                      {
                        *(*v222 + 320) |= 2u;
                      }

                      v78 = CFEqual(theArray[0].start.value, *MEMORY[0x1E69840E8]);
                      v79 = v197;
                      if (v78)
                      {
                        v79 = 1;
                      }

                      v197 = v79;
                    }
                  }
                }

                else
                {
                  Dimensions = CMVideoFormatDescriptionGetDimensions(v217);
                  LODWORD(v16) = Dimensions;
                  if (TrackRotationAngle == 90 || TrackRotationAngle == 270)
                  {
                    a4 = Dimensions;
                    v16 = HIDWORD(Dimensions);
                  }

                  else
                  {
                    a4 = HIDWORD(Dimensions);
                  }
                }

                v81 = *v222;
                *(*v222 + 48) = 0;
                *(v81 + 50) = 1;
                v82 = *(v20 + 184);
                v83 = v220;
                v84 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (!v84)
                {
                  v39 = 0;
                  v41 = 0;
                  v42 = 0;
                  v43 = 0;
                  value_low = 4294954514;
LABEL_153:
                  v38 = theDict;
LABEL_307:
                  v40 = Mutable;
                  goto LABEL_24;
                }

                v85 = v84(v82, v83, 0, v81 + 300);
                if (!v85)
                {
                  v85 = remakerFamily_setFormatWriterTrackProperties(a1, *(*v222 + 300), a6, 0);
                  v86 = a10;
                  if (!v85)
                  {
                    v85 = remakerFamily_setFormatWriterProperties(a1, a6);
                    if (!v85)
                    {
                      if ((v71 & 1) == 0)
                      {
                        v223.value = 0;
                        FigAssetTrackGetCMBaseObject();
                        v88 = v87;
                        v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v89)
                        {
                          v89(v88, @"PreferredTransform", allocator, &v223);
                        }

                        if (v223.value)
                        {
                          v90 = CMVideoFormatDescriptionGetDimensions(v217);
                          width = v90.width;
                          height = v90.height;
                          FigGetCGAffineTransformFrom3x3MatrixArray(v223.value, theArray);
                          *&theArray[0].duration.timescale = vmulq_f64(*&theArray[0].duration.timescale, vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*&theArray[0].start.epoch, a4 / height), *&theArray[0].start.value, v16 / width)));
                          v93 = FigCreate3x3MatrixArrayFromCGAffineTransform(allocator, theArray);
                          if (v93)
                          {
                            v94 = v93;
                            v95 = *(v20 + 184);
                            v96 = *(*v222 + 300);
                            v97 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                            if (v97)
                            {
                              value_low = v97(v95, v96, @"TrackMatrix", v94);
                            }

                            else
                            {
                              value_low = 4294954514;
                            }

                            v86 = a10;
                            CFRelease(v94);
                            CFRelease(v223.value);
                            if (value_low)
                            {
                              goto LABEL_156;
                            }
                          }

                          else
                          {
                            CFRelease(v223.value);
                          }
                        }
                      }

                      v98 = CFGetAllocator(a1);
                      v99 = v98;
                      if (v194 != 1)
                      {
                        v43 = CFArrayCreateMutable(v98, 0, MEMORY[0x1E695E9C0]);
                        if (!v43)
                        {
                          v39 = 0;
                          v41 = 0;
                          v42 = 0;
                          value_low = 0;
                          goto LABEL_153;
                        }

                        v101 = CFGetAllocator(a1);
                        Basic = FigVisualContextCreateBasic(v101, 0, value);
                        if (Basic)
                        {
                          goto LABEL_321;
                        }

                        CFArrayAppendValue(v43, value[0]);
                        if (value[0])
                        {
                          CFRelease(value[0]);
                          value[0] = 0;
                        }

                        theArray[0].start.value = 0;
                        v103 = 1;
                        if (FigCFDictionaryGetValueIfPresent() && theArray[0].start.value)
                        {
                          v104 = CFGetTypeID(theArray[0].start.value);
                          if (v104 == CFArrayGetTypeID())
                          {
                            if (theArray[0].start.value)
                            {
                              v105 = CFArrayGetCount(theArray[0].start.value);
                              v103 = v105;
                              if (v105 >= 2)
                              {
                                v106 = v105 - 1;
                                while (1)
                                {
                                  v107 = CFGetAllocator(a1);
                                  Basic = FigVisualContextCreateBasic(v107, 0, value);
                                  if (Basic)
                                  {
                                    goto LABEL_321;
                                  }

                                  CFArrayAppendValue(v43, value[0]);
                                  if (value[0])
                                  {
                                    CFRelease(value[0]);
                                    value[0] = 0;
                                  }

                                  if (!--v106)
                                  {
                                    v86 = a10;
                                    break;
                                  }
                                }
                              }
                            }

                            else
                            {
                              v103 = 0;
                            }
                          }

                          else
                          {
                            v103 = 1;
                          }
                        }

                        v193 = 0;
                        v191 = v103 == 1;
LABEL_181:
                        if (v200 || HIBYTE(v218) || (v108 = v193, v218))
                        {
                          v109 = CFGetAllocator(a1);
                          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                          Basic = CMBufferQueueCreate(v109, 0, CallbacksForUnsortedSampleBuffers, (*v222 + 248));
                          if (Basic)
                          {
                            goto LABEL_321;
                          }

                          v108 = *(*v222 + 248);
                        }

                        v192 = v108;
                        if (v195)
                        {
                          v111 = CFGetAllocator(a1);
                          v112 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                          Basic = CMBufferQueueCreate(v111, 0, v112, (*v222 + 272));
                          if (Basic)
                          {
                            goto LABEL_321;
                          }

                          v108 = *(*v222 + 272);
                        }

                        Basic = remakerFamily_createRemakerVideoEncoderSpecification(a1, a7, &v215);
                        if (!Basic)
                        {
                          v113 = remakerFamily_setupMultiPassTrackIfNecessary(a1, *v222, v86);
                          v38 = theDict;
                          if (v113)
                          {
                            goto LABEL_324;
                          }

                          v208 = 0;
                          FigCFDictionaryGetBooleanIfPresent();
                          v114 = v43 ? CFArrayGetValueAtIndex(v43, 0) : 0;
                          value[0] = v114;
                          *&theArray[0].start.value = *a11;
                          theArray[0].start.epoch = *(a11 + 16);
                          remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, v16, a4, a6, &theArray[0].start, v215, 0, *v222, v108, v43, theDict);
                          if (v113)
                          {
                            goto LABEL_324;
                          }

                          if (a5)
                          {
                            v115 = CFDictionaryGetValue(a5, *MEMORY[0x1E6983E30]);
                            if (!v115 || CFEqual(v115, *MEMORY[0x1E69840F0]))
                            {
                              v116 = *(*v222 + 288);
                              if (v116)
                              {
                                if (!FigMediaProcessorGetSampleBufferProcessor(v116))
                                {
                                  remaker_AddVideoTrack_cold_3(theArray);
                                  goto LABEL_341;
                                }

                                FigSampleBufferProcessorGetFigBaseObject();
                                v118 = v117;
                                v119 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                if (v119)
                                {
                                  v119(v118, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput", *MEMORY[0x1E695E4D0]);
                                }
                              }
                            }
                          }

                          FigCFDictionaryGetInt32IfPresent();
                          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(*v222 + 288));
                          v121 = *MEMORY[0x1E69838A8];
                          v122 = CFGetAllocator(a1);
                          v113 = VTSessionCopyProperty(VTCompressionSession, v121, v122, &propertyValueOut);
                          if (v113)
                          {
LABEL_324:
                            value_low = v113;
                            v39 = 0;
                            v41 = 0;
LABEL_332:
                            v42 = 0;
                            goto LABEL_307;
                          }

                          if (!propertyValueOut)
                          {
                            remaker_AddVideoTrack_cold_10(theArray);
                            goto LABEL_341;
                          }

                          if (dword_1EAF173A8)
                          {
                            LODWORD(v207.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v124 = *v222;
                          if (!*(*v222 + 272))
                          {
LABEL_216:
                            v130 = a5;
                            if (!*(v124 + 248))
                            {
                              v41 = 0;
                              goto LABEL_243;
                            }

                            *(v124 + 320) |= 4u;
                            v131 = *(v124 + 264);
                            if (!v131)
                            {
                              goto LABEL_224;
                            }

                            if (FigMediaProcessorGetSampleBufferProcessor(v131))
                            {
                              v132 = CFGetAllocator(a1);
                              FigSampleBufferProcessorGetFigBaseObject();
                              v134 = v133;
                              v135 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (v135)
                              {
                                v135(v134, @"SampleBufferProcessor_SourcePixelBufferAttributes", v132, &v211);
                              }

                              if (!v211)
                              {
                                goto LABEL_227;
                              }

                              v136 = CFDictionaryContainsKey(v211, *MEMORY[0x1E6966208]);
                              v137 = CFDictionaryContainsKey(v211, *MEMORY[0x1E69660B8]);
                              if (v136 && v137)
                              {
LABEL_224:
                                if (v211)
                                {
                                  v41 = 0;
LABEL_232:
                                  v139 = CFGetAllocator(a1);
                                  v203 = HIBYTE(v218);
                                  v196 = v218;
                                  v140 = v211;
                                  if (v193)
                                  {
                                    v141 = 0;
                                  }

                                  else
                                  {
                                    v141 = value[0];
                                  }

                                  v223 = *(v20 + 88);
                                  v207 = *(v20 + 112);
                                  CMTimeRangeFromTimeToTime(theArray, &v223, &v207);
                                  v142 = *(*v222 + 248);
                                  remakerFamily_getHighWaterLevel(*(v20 + 32), &v223);
                                  remakerFamily_getLowWaterLevel(*(v20 + 32), &v207);
                                  if (*(v20 + 32))
                                  {
                                    v143 = 0;
                                  }

                                  else
                                  {
                                    v143 = 31;
                                  }

                                  *type = *a11;
                                  v206 = *(a11 + 16);
                                  FigMediaProcessorCreateForVideoRotation(v139, v200, v203, v196, v140, v193, v141, type, &theArray[0].start.value, v142, &v223, &v207, 0, v143, (*v222 + 232));
                                  if (!v144)
                                  {
                                    CMNotificationCenterGetDefaultLocalCenter();
                                    VideoPixelTransferProperties = FigNotificationCenterAddWeakListeners();
                                    v38 = theDict;
                                    if (VideoPixelTransferProperties)
                                    {
                                      goto LABEL_331;
                                    }

                                    if (v211)
                                    {
                                      CFRelease(v211);
                                      v211 = 0;
                                    }

                                    v130 = a5;
LABEL_243:
                                    if (!v130 || (v146 = CFGetAllocator(a1), VideoPixelTransferProperties = remakerFamily_createVideoPixelTransferProperties(v146, v130, v200, &propertyValue), !VideoPixelTransferProperties))
                                    {
                                      v147 = *v222;
                                      v148 = *(*v222 + 232);
                                      if (!v148)
                                      {
                                        goto LABEL_250;
                                      }

                                      if (FigMediaProcessorGetSampleBufferProcessor(v148))
                                      {
                                        v149 = CFGetAllocator(a1);
                                        FigSampleBufferProcessorGetFigBaseObject();
                                        v151 = v150;
                                        v152 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                        if (!v152)
                                        {
                                          v39 = 0;
                                          v42 = 0;
                                          value_low = 4294954514;
                                          goto LABEL_307;
                                        }

                                        VideoPixelTransferProperties = v152(v151, @"SampleBufferProcessor_SourcePixelBufferAttributes", v149, &v211);
                                        if (!VideoPixelTransferProperties)
                                        {
                                          v147 = *v222;
LABEL_250:
                                          v153 = *(v147 + 264);
                                          v154 = v211;
                                          if (!v153 || v211)
                                          {
LABEL_256:
                                            if (!v154)
                                            {
                                              v154 = CFRetain(propertyValueOut);
                                              v211 = v154;
                                            }

                                            v42 = CFRetain(v154);
                                            if (!*(*v222 + 232) && !*(*v222 + 264))
                                            {
                                              v176 = CMFormatDescriptionGetMediaSubType(v217);
                                              if (v176 == 1634759278 || v176 == 1634759272)
                                              {
                                                theArray[0].start.value = CFDictionaryGetValue(v211, *MEMORY[0x1E6966130]);
                                                if (theArray[0].start.value)
                                                {
                                                  if (v42)
                                                  {
                                                    CFRelease(v42);
                                                  }

                                                  v42 = CFDictionaryCreate(allocator, MEMORY[0x1E6966130], theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                  if (!v42)
                                                  {
                                                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v185, v187, v189);
                                                    goto LABEL_291;
                                                  }
                                                }

                                                v177 = FigMediaProcessorGetVTCompressionSession(*(*v222 + 288));
                                                RenderPipelineOptions = VTSessionSetProperty(v177, *MEMORY[0x1E6983798], propertyValue);
                                                if (RenderPipelineOptions)
                                                {
LABEL_291:
                                                  value_low = RenderPipelineOptions;
                                                  v39 = 0;
                                                  goto LABEL_307;
                                                }
                                              }
                                            }

                                            if (v211)
                                            {
                                              CFRelease(v211);
                                              v211 = 0;
                                            }

                                            v159 = CFGetAllocator(a1);
                                            v160 = v217;
                                            remakerFamily_getLowWaterLevel(*(v20 + 32), theArray);
                                            remakerFamily_getHighWaterLevel(*(v20 + 32), &v223);
                                            RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v159, v160, &theArray[0].start.value, &v223.value, 0, 0, *(v20 + 424), 1, v197, *(v20 + 32), 0, 0, 0, v20 + 41, a2, &v216);
                                            if (RenderPipelineOptions)
                                            {
                                              goto LABEL_291;
                                            }

                                            v162 = a10;
                                            if (v194)
                                            {
                                              v163 = CFGetAllocator(a1);
                                              FigRenderPipelineCreateForBufferQueue(v163, *(*v222 + 224), 0, (*v222 + 56));
                                              v39 = 0;
                                              if (v164)
                                              {
LABEL_334:
                                                value_low = v164;
                                                goto LABEL_307;
                                              }

LABEL_294:
                                              CMNotificationCenterGetDefaultLocalCenter();
                                              v164 = FigNotificationCenterAddWeakListeners();
                                              if (!v164)
                                              {
                                                if (a12)
                                                {
                                                  *a12 = *(*v222 + 300);
                                                }

                                                if ((*(a11 + 12) & 0x1D) == 1)
                                                {
                                                  v178 = *(a11 + 8);
                                                  if (v178 <= 600)
                                                  {
                                                    v178 = 600;
                                                  }

                                                  LODWORD(theArray[0].start.value) = v178;
                                                  v179 = CFNumberCreate(allocator, kCFNumberSInt32Type, theArray);
                                                  value[2] = v179;
                                                }

                                                else
                                                {
                                                  FigAssetTrackGetCMBaseObject();
                                                  CMBaseObjectCopyProperty_0(v180, @"NaturalTimeScale", allocator, &value[2]);
                                                  v179 = value[2];
                                                }

                                                if (v179)
                                                {
                                                  v181 = *(v20 + 184);
                                                  v182 = *(*v222 + 300);
                                                  v183 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                                  if (v183)
                                                  {
                                                    v183(v181, v182, @"MediaTimeScale", v179);
                                                  }

                                                  remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, value[2], 1986618469);
                                                  CFRelease(value[2]);
                                                }

                                                remakerFamily_commitChannel(a1, *v222);
                                                value_low = 0;
                                                *v222 = 0;
                                                goto LABEL_307;
                                              }

                                              goto LABEL_334;
                                            }

                                            RenderPipelineOptions = remakerFamily_createRemakerVideoDecoderSpecification(a1, a10, &v213);
                                            if (RenderPipelineOptions)
                                            {
                                              goto LABEL_291;
                                            }

                                            theArray[0].start.value = 0;
                                            if (FigCFDictionaryGetValueIfPresent() || FigCFDictionaryGetValueIfPresent())
                                            {
                                              if (!theArray[0].start.value || (v165 = CFArrayGetCount(theArray[0].start.value), v165 <= 0))
                                              {
                                                remaker_AddVideoTrack_cold_8(&v223);
                                                v39 = 0;
                                                value_low = LODWORD(v223.value);
LABEL_319:
                                                v40 = Mutable;
LABEL_320:
                                                v38 = theDict;
                                                goto LABEL_24;
                                              }

                                              v166 = v165;
                                              v167 = CFGetAllocator(a1);
                                              v39 = CFArrayCreateMutable(v167, v166, MEMORY[0x1E695E9C0]);
                                              if (!v39)
                                              {
                                                value_low = 4294955196;
                                                goto LABEL_319;
                                              }

                                              v168 = 0;
                                              while (1)
                                              {
                                                CFGetAllocator(a1);
                                                v169 = FigTagCollectionCreateMutable();
                                                if (v169)
                                                {
                                                  break;
                                                }

                                                v223.value = -1;
                                                FigCFArrayGetInt64AtIndex();
                                                if (v223.value < 0)
                                                {
                                                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v186, v188, v190);
                                                  break;
                                                }

                                                v170 = FigTagMakeWithSInt64Value();
                                                v172 = v171;
                                                *&v226.category = v170;
                                                v226.value = v172;
                                                CMTagCollectionAddTag(cf, v226);
                                                CFArrayAppendValue(v39, cf);
                                                if (cf)
                                                {
                                                  CFRelease(cf);
                                                  cf = 0;
                                                }

                                                if (v166 == ++v168)
                                                {
                                                  v173 = CFGetAllocator(a1);
                                                  v169 = FigVideoRenderPipelineCreateWithVisualContextGroup(v173, v213, v42, propertyValue, 1, v43, v39, 0, v216, (*v222 + 56));
                                                  if (v169)
                                                  {
                                                    break;
                                                  }

                                                  v38 = theDict;
                                                  v162 = a10;
                                                  goto LABEL_281;
                                                }
                                              }

LABEL_318:
                                              value_low = v169;
                                              goto LABEL_319;
                                            }

                                            if (v191)
                                            {
                                              v184 = CFGetAllocator(a1);
                                              v169 = FigVideoRenderPipelineCreateWithVisualContext(v184, v213, v42, propertyValue, 1, value[0], 0, v216, *v222 + 56);
                                              v39 = 0;
                                              if (v169)
                                              {
                                                goto LABEL_318;
                                              }
                                            }

                                            else
                                            {
                                              v39 = 0;
                                            }

LABEL_281:
                                            v174 = v222[0];
                                            if (!*(*v222 + 56))
                                            {
                                              value_low = 4294955190;
                                              goto LABEL_319;
                                            }

                                            if (v162)
                                            {
                                              v175 = CFDictionaryGetValue(v162, @"Remaker_FieldMode");
                                              FigCFDictionaryGetBooleanIfPresent();
                                              v174 = v222[0];
                                            }

                                            else
                                            {
                                              v175 = 0;
                                            }

                                            v169 = remakerFamily_setVideoRenderPipelineProperties(a1, v174, 1, HIBYTE(value[1]), v217, v175, *(v20 + 32), 0, 0, propertyValue);
                                            if (!v169)
                                            {
                                              goto LABEL_294;
                                            }

                                            goto LABEL_318;
                                          }

                                          if (FigMediaProcessorGetSampleBufferProcessor(v153))
                                          {
                                            v155 = CFGetAllocator(a1);
                                            FigSampleBufferProcessorGetFigBaseObject();
                                            v157 = v156;
                                            v158 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                            if (v158)
                                            {
                                              v158(v157, @"SampleBufferProcessor_SourcePixelBufferAttributes", v155, &v211);
                                            }

                                            v154 = v211;
                                            goto LABEL_256;
                                          }

                                          remaker_AddVideoTrack_cold_9(theArray);
                                          goto LABEL_346;
                                        }

                                        goto LABEL_331;
                                      }

                                      remaker_AddVideoTrack_cold_7(theArray);
LABEL_346:
                                      v39 = 0;
                                      goto LABEL_347;
                                    }

LABEL_331:
                                    value_low = VideoPixelTransferProperties;
                                    v39 = 0;
                                    goto LABEL_332;
                                  }

                                  value_low = v144;
                                  v39 = 0;
LABEL_322:
                                  v42 = 0;
                                  goto LABEL_153;
                                }

LABEL_227:
                                v41 = 0;
                                v211 = CFRetain(propertyValueOut);
                                goto LABEL_232;
                              }

                              v41 = CFDictionaryCreateMutableCopy(allocator, 0, v211);
                              if (!v41)
                              {
                                remaker_AddVideoTrack_cold_5(theArray);
                                goto LABEL_346;
                              }

                              FigCFDictionarySetInt32();
                              FigCFDictionarySetInt32();
                              v138 = v211;
                              v211 = v41;
                              CFRetain(v41);
                              if (v138)
                              {
                                CFRelease(v138);
                              }

                              if (v211)
                              {
                                goto LABEL_232;
                              }

                              remaker_AddVideoTrack_cold_4(theArray);
                              v39 = 0;
                              v42 = 0;
LABEL_329:
                              value_low = LODWORD(theArray[0].start.value);
                              goto LABEL_153;
                            }

                            remaker_AddVideoTrack_cold_6(theArray);
LABEL_341:
                            v39 = 0;
                            v41 = 0;
LABEL_347:
                            v42 = 0;
                            value_low = LODWORD(theArray[0].start.value);
                            goto LABEL_307;
                          }

                          v125 = CFGetAllocator(a1);
                          v126 = propertyValueOut;
                          if (v192)
                          {
                            v127 = 0;
                          }

                          else
                          {
                            v127 = value[0];
                          }

                          v223 = *(v20 + 88);
                          v207 = *(v20 + 112);
                          CMTimeRangeFromTimeToTime(theArray, &v223, &v207);
                          v128 = *(*v222 + 272);
                          remakerFamily_getHighWaterLevel(*(v20 + 32), &v223);
                          remakerFamily_getLowWaterLevel(*(v20 + 32), &v207);
                          if (*(v20 + 32))
                          {
                            v129 = 0;
                          }

                          else
                          {
                            v129 = 31;
                          }

                          *type = *a11;
                          v206 = *(a11 + 16);
                          FigMediaProcessorCreateForCustom(v125, v195, Mutable, v126, v192, v127, type, &theArray[0].start.value, v128, &v223, &v207, 0, v129, (*v222 + 264));
                          if (!Basic)
                          {
                            CMNotificationCenterGetDefaultLocalCenter();
                            Basic = FigNotificationCenterAddWeakListeners();
                            if (!Basic)
                            {
                              v124 = *v222;
                              *(*v222 + 320) = -1;
                              v38 = theDict;
                              goto LABEL_216;
                            }
                          }
                        }

LABEL_321:
                        value_low = Basic;
                        v39 = 0;
                        v41 = 0;
                        goto LABEL_322;
                      }

                      v100 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                      v85 = CMBufferQueueCreate(v99, 0, v100, (*v222 + 224));
                      if (!v85)
                      {
                        v191 = 0;
                        v43 = 0;
                        v193 = *(*v222 + 224);
                        goto LABEL_181;
                      }
                    }
                  }
                }

                value_low = v85;
LABEL_156:
                v39 = 0;
                v41 = 0;
                v42 = 0;
                v43 = 0;
                goto LABEL_153;
              }

              value_low = Channel;
LABEL_327:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              goto LABEL_320;
            }

            remaker_AddVideoTrack_cold_11(theArray);
LABEL_314:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            value_low = LODWORD(theArray[0].start.value);
            goto LABEL_24;
          }

          CFGetTypeID(a1);
          theArray[0].start.value = 0;
          FigAssetTrackGetCMBaseObject();
          v29 = v28;
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v30)
          {
            goto LABEL_58;
          }

          v31 = v30(v29, @"FormatDescriptionArray", *MEMORY[0x1E695E480], theArray);
          if (v31 != -12521)
          {
            if (v31)
            {
LABEL_58:
              v36 = 1;
              goto LABEL_59;
            }

            if (theArray[0].start.value)
            {
              v32 = CFArrayGetCount(theArray[0].start.value);
              if (v32)
              {
                v33 = v32 - 1;
                if (v32 < 1)
                {
                  v36 = 0;
                }

                else
                {
                  v34 = 0;
                  do
                  {
                    CFArrayGetValueAtIndex(theArray[0].start.value, v34);
                    v35 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                    v36 = v35 == 0;
                    if (v35)
                    {
                      v37 = v33 == v34;
                    }

                    else
                    {
                      v37 = 1;
                    }

                    ++v34;
                  }

                  while (!v37);
                }

                v13 = v12;
LABEL_59:
                v27 = MEMORY[0x1E695E480];
                if (theArray[0].start.value)
                {
                  CFRelease(theArray[0].start.value);
                }

                if (v36)
                {
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0, 4294955177, "<<<< Remaker >>>>", 2772, v13);
                  return v46;
                }

                goto LABEL_63;
              }
            }
          }

          FigAssetReaderGetTypeID();
          goto LABEL_58;
        }
      }

LABEL_323:
      value_low = v23;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      goto LABEL_24;
    }
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  value_low = 4294954514;
LABEL_24:
  remakerFamily_discardChannel(a1, *v222);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v217)
  {
    CFRelease(v217);
  }

  if (v216)
  {
    CFRelease(v216);
  }

  if (v215)
  {
    CFRelease(v215);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v213)
  {
    CFRelease(v213);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (propertyValue)
  {
    CFRelease(propertyValue);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v211)
  {
    CFRelease(v211);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return value_low;
}

uint64_t remaker_AddPassthroughTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t remaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage == 1)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      time2 = *a3;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        result = 0;
        v8 = *&a2->value;
        *(Storage + 104) = a2->epoch;
        *(Storage + 88) = v8;
        v9 = *&a3->value;
        *(Storage + 128) = a3->epoch;
        *(Storage + 112) = v9;
        return result;
      }

      remaker_SetTimeRange_cold_3(&time);
    }

    else
    {
      remaker_SetTimeRange_cold_2(&time);
    }
  }

  else
  {
    remaker_SetTimeRange_cold_1(&time);
  }

  return LODWORD(time.value);
}

double remaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, uint64_t a2, CMTime *a3)
{
  cf = 0;
  if (*remakerFamily_getStorage(a1) >= 7u)
  {
    remaker_EstimateMaxSegmentDurationForFileSize_cold_1(&v14);
  }

  else if (a2)
  {
    FigAssetGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v10 = v8(v7, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &cf);
      v11 = cf;
      if (!v10)
      {
        EstimateMaximumTrimTimeForFileSize(cf, a2, a3);
        v11 = cf;
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  else
  {
    v12 = qword_1EAF173A0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294955190, "<<<< Remaker >>>>", 5498, v3);
  }

  return result;
}

uint64_t remaker_AddAudioMixdownTrack(const void *a1, const __CFArray *a2, uint64_t a3, size_t a4, const AudioChannelLayout *a5, uint64_t a6, const __CFDictionary *a7, _DWORD *a8)
{
  v14 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v65 = 0;
  memset(&asbd, 0, sizeof(asbd));
  v62 = 0;
  formatDescriptionOut = 0;
  v61 = 0;
  Storage = remakerFamily_getStorage(a1);
  if (*Storage != 1)
  {
    remaker_AddAudioMixdownTrack_cold_1(values);
LABEL_78:
    value_low = LODWORD(values[0].value);
    remakerFamily_discardChannel(v14, 0);
    goto LABEL_63;
  }

  if (!a2)
  {
    remaker_AddAudioMixdownTrack_cold_6(values);
    goto LABEL_78;
  }

  if (!a3)
  {
    remaker_AddAudioMixdownTrack_cold_5(values);
    goto LABEL_78;
  }

  if (!*(a3 + 28))
  {
    remaker_AddAudioMixdownTrack_cold_4(values);
    goto LABEL_78;
  }

  if (*a3 == 0.0)
  {
    remaker_AddAudioMixdownTrack_cold_3(values);
    goto LABEL_78;
  }

  v66 = bswap32(*(a3 + 8));
  v58 = a2;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v58;
  }

  v56 = a3;
  v53 = a6;
  Count = CFArrayGetCount(a2);
  v17 = malloc_type_calloc(8uLL, Count, 0x926F34D1uLL);
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithm");
  }

  else
  {
    Value = 0;
  }

  *&asbd.mBitsPerChannel = *(v56 + 32);
  v18 = *(v56 + 16);
  *&asbd.mSampleRate = *v56;
  asbd.mChannelsPerFrame = HIDWORD(v18);
  asbd.mBitsPerChannel = 32;
  *&asbd.mFormatID = 0x96C70636DLL;
  asbd.mFramesPerPacket = 1;
  asbd.mBytesPerFrame = 4 * HIDWORD(v18);
  asbd.mBytesPerPacket = 4 * HIDWORD(v18);
  v19 = CFGetAllocator(v14);
  v20 = CMAudioFormatDescriptionCreate(v19, &asbd, a4, a5, 0, 0, 0, &formatDescriptionOut);
  if (v20)
  {
    goto LABEL_72;
  }

  if (Count < 1)
  {
LABEL_79:
    remaker_AddAudioMixdownTrack_cold_2(values);
    value_low = LODWORD(values[0].value);
    goto LABEL_55;
  }

  v59 = 0;
  cf = v14;
  v21 = 0;
  v55 = v17;
  v22 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
    LODWORD(v67.value) = 0;
    values[0].value = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      value_low = 0;
      goto LABEL_71;
    }

    values[0].value = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_VolumeCurve");
    if (values[0].value)
    {
      v24 = cf;
      v25 = CFGetAllocator(cf);
      v26 = CFDictionaryCreate(v25, kFigAudioCurvesKey_Volume, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v26)
      {
        value_low = 4294954510;
LABEL_71:
        v14 = cf;
        v17 = v55;
        goto LABEL_55;
      }
    }

    else
    {
      v26 = 0;
      v24 = cf;
    }

    v27 = Count;
    v28 = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_AudioProcessingTap");
    v29 = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_CinematicAudioParameters");
    v30 = CFDictionaryGetValue(ValueAtIndex, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithmSourceTrack");
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = Value;
    }

    value_low = remakerFamily_createAudioMixdownSourceTrack(v24, LODWORD(v67.value), v26, v28, v29, v31, 0, 0, v22);
    if (v26)
    {
      CFRelease(v26);
    }

    Count = v27;
    a2 = v58;
    if (value_low != -12123)
    {
      if (value_low)
      {
        goto LABEL_71;
      }

      ++v59;
    }

    ++v21;
    ++v22;
  }

  while (v27 != v21);
  v14 = cf;
  v17 = v55;
  if (!v59)
  {
    goto LABEL_79;
  }

  v20 = remakerFamily_createChannel(cf, 0, 1936684398, &v65);
  if (!v20)
  {
    v32 = v65;
    *(v65 + 48) = 0;
    *(v32 + 50) = 1;
    v33 = *(Storage + 184);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v34)
    {
      value_low = 4294954514;
      goto LABEL_55;
    }

    v20 = v34(v33, 1936684398, 0, v32 + 300);
    if (!v20)
    {
      v20 = remakerFamily_setFormatWriterTrackProperties(cf, *(v65 + 300), *(v56 + 8), 0);
      if (!v20)
      {
        v20 = remakerFamily_setFormatWriterProperties(cf, *(v56 + 8));
        if (!v20)
        {
          v35 = CFGetAllocator(cf);
          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          v20 = CMBufferQueueCreate(v35, 0, CallbacksForUnsortedSampleBuffers, (v65 + 208));
          if (!v20)
          {
            v20 = remakerFamily_buildMediaProcessorForAudioCompressionFromLPCMWithFormatWriter(cf, v65, formatDescriptionOut, v56, a4, a5, v53, *(v65 + 208));
            if (!v20)
            {
              v37 = *(v65 + 208);
              CMTimeMake(values, 2, 1);
              CMTimeMake(&v67, 1, 1);
              FigSampleBufferConsumerCreateForBufferQueue(v37, &values[0].value, &v67.value, &v62);
              if (!v20)
              {
                v38 = *(Storage + 32) ? 0 : 31;
                FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], v38, @"com.apple.coremedia.remakerOfflineMixer", &v61);
                if (!v20)
                {
                  v39 = CFGetAllocator(cf);
                  v20 = FigAudioQueueOfflineMixerCreate(v39, &asbd, a4, a5, 0, v62, v61, (v65 + 200));
                  if (!v20)
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    v20 = FigNotificationCenterAddWeakListeners();
                    if (!v20)
                    {
                      v40 = v55;
                      v41 = v27;
                      while (1)
                      {
                        if (*v40)
                        {
                          v42 = *(v65 + 200);
                          FigRenderPipelineGetFigBaseObject();
                          v44 = v43;
                          v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                          if (!v45)
                          {
                            value_low = 4294954514;
LABEL_58:
                            remakerFamily_discardChannel(cf, v65);
                            goto LABEL_59;
                          }

                          v46 = v45(v44, @"OfflineMixer", v42);
                          if (v46)
                          {
                            value_low = v46;
                            goto LABEL_58;
                          }

                          *(*v40 + 304) = *(v65 + 300);
                        }

                        ++v40;
                        if (!--v41)
                        {
                          if (a8)
                          {
                            *a8 = *(v65 + 300);
                          }

                          v47 = v55;
                          value_low = v27;
                          do
                          {
                            remakerFamily_commitChannel(cf, *v47);
                            *v47++ = 0;
                            --value_low;
                          }

                          while (value_low);
                          remakerFamily_commitChannel(cf, v65);
                          v65 = 0;
                          goto LABEL_55;
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

LABEL_72:
  value_low = v20;
LABEL_55:
  remakerFamily_discardChannel(v14, v65);
  if (v17)
  {
LABEL_59:
    if (Count >= 1)
    {
      v48 = v17;
      do
      {
        v49 = *v48++;
        remakerFamily_discardChannel(v14, v49);
        --Count;
      }

      while (Count);
    }

    free(v17);
  }

LABEL_63:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  return value_low;
}

uint64_t remaker_AddVideoCompositionTrack(const void *a1, const __CFArray *a2, const __CFArray *a3, const void *a4, const void *a5, __CFString *a6, const void *a7, const void *a8, unsigned int a9, const __CFArray *a10, uint64_t a11, const void *a12, uint64_t a13, unsigned int a14, int a15, int a16, int a17, signed int a18, CFDictionaryRef a19, int a20, const __CFDictionary *a21, const __CFDictionary *a22, const __CFDictionary *a23, CFTypeRef cf, _DWORD *a25)
{
  v115 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v111 = bswap32(a20);
  value = 0;
  *v110 = 0;
  propertyValueOut = 0;
  v108 = 0;
  *&v106.value = *a13;
  v106.epoch = *(a13 + 16);
  if (*Storage != 1)
  {
    remaker_AddVideoCompositionTrack_cold_1(v114);
LABEL_119:
    value_low = LODWORD(v114[0].value);
    goto LABEL_34;
  }

  if (!a2)
  {
    remaker_AddVideoCompositionTrack_cold_11(v114);
    goto LABEL_119;
  }

  if (!a7)
  {
    remaker_AddVideoCompositionTrack_cold_10(v114);
    goto LABEL_119;
  }

  if (a15 < 1 || a16 <= 0)
  {
    remaker_AddVideoCompositionTrack_cold_9(v114);
    goto LABEL_119;
  }

  v105 = a2;
  v101 = a3;
  v102 = a6;
  if (a17 < 1 || a18 <= 0)
  {
    remaker_AddVideoCompositionTrack_cold_8(v114);
    goto LABEL_119;
  }

  if (!a20)
  {
    remaker_AddVideoCompositionTrack_cold_7(v114);
    goto LABEL_119;
  }

  if ((*(a13 + 12) & 0x1D) != 1)
  {
    remaker_AddVideoCompositionTrack_cold_2(v114);
    goto LABEL_119;
  }

  v32 = Storage;
  if (cf)
  {
    v33 = CFGetTypeID(cf);
    if (v33 != CFDictionaryGetTypeID())
    {
      remaker_AddVideoCompositionTrack_cold_3(v114);
      goto LABEL_119;
    }
  }

  v99 = a7;
  v100 = a8;
  if (dword_1EAF173A8)
  {
    LODWORD(valuePtr) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Channel = remakerFamily_createChannel(a1, 0, 1986618469, v110);
  if (Channel)
  {
    goto LABEL_109;
  }

  v36 = *v110;
  *(*v110 + 48) = 0;
  *(v36 + 50) = 1;
  v37 = v32[23];
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v38)
  {
    value_low = 4294954514;
LABEL_34:
    remakerFamily_discardChannel(a1, *v110);
    v52 = 0;
    goto LABEL_96;
  }

  Channel = v38(v37, 1986618469, 0, v36 + 300);
  if (Channel || (Channel = remakerFamily_setFormatWriterTrackProperties(a1, *(*v110 + 300), a20, 0), Channel) || (Channel = remakerFamily_setFormatWriterProperties(a1, a20), Channel) || (Channel = remakerFamily_createRemakerVideoEncoderSpecification(a1, a21, &v108), Channel) || (Channel = remakerFamily_setupMultiPassTrackIfNecessary(a1, *v110, a23), Channel))
  {
LABEL_109:
    value_low = Channel;
    goto LABEL_34;
  }

  if (a14)
  {
    *&v106.value = *MEMORY[0x1E6960C70];
    v106.epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v39 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    value_low = 4294955196;
    goto LABEL_34;
  }

  v41 = Mutable;
  v42 = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_OutputBufferDescription");
  v43 = v42;
  if (v42 && CFArrayGetCount(v42) >= 2)
  {
    Count = CFArrayGetCount(v43);
    if (Count >= 1)
    {
      v45 = Count;
      do
      {
        v46 = CFGetAllocator(a1);
        Basic = FigVisualContextCreateBasic(v46, 0, &value);
        if (Basic)
        {
          goto LABEL_108;
        }

        CFArrayAppendValue(v41, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      while (--v45);
    }

    *(*(*v110 + 152) + 160) = 1;
    v48 = CFRetain(v41);
    *(*(*v110 + 152) + 120) = v48;
    v49 = CFRetain(v43);
    *(*(*v110 + 152) + 152) = v49;
    FirstValue = FigCFArrayGetFirstValue();
    value = CFRetain(FirstValue);
LABEL_37:
    v54 = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_SerializableLookupableSpatialVideoConfigurations");
    v55 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v55, 0, a22);
    if (!MutableCopy)
    {
      remaker_AddVideoCompositionTrack_cold_6(v114);
      v52 = 0;
      value_low = LODWORD(v114[0].value);
      goto LABEL_95;
    }

    v97 = v54;
    v98 = MutableCopy;
    valuePtr = 0;
    v57 = remakerFamily_getStorage(a1);
    v114[0].value = 0;
    *v113 = 0;
    if (!FigCFArrayGetFirstValue())
    {
      Extension = 0;
      v52 = v98;
      goto LABEL_51;
    }

    SInt32 = FigCFNumberGetSInt32();
    v59 = *(v57 + 72);
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v60)
    {
      v60(v59, SInt32, v114);
      if (v114[0].value)
      {
        FigAssetTrackGetCMBaseObject();
        v62 = v61;
        v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        v52 = v98;
        if (v63)
        {
          v63(v62, @"FormatDescriptionArray", *MEMORY[0x1E695E480], v113);
        }

        v65 = FigCFArrayGetFirstValue();
        if (v65)
        {
          Extension = CMFormatDescriptionGetExtension(v65, *MEMORY[0x1E6960090]);
        }

        else
        {
          Extension = 0;
        }

        if (v114[0].value)
        {
          CFRelease(v114[0].value);
        }

        goto LABEL_49;
      }

      Extension = 0;
    }

    else
    {
      Extension = 0;
    }

    v52 = v98;
LABEL_49:
    if (*v113)
    {
      CFRelease(*v113);
    }

LABEL_51:
    allocator = *MEMORY[0x1E695E480];
    if (!FigVideoCompositionCopyOutputFormatExtensions(*MEMORY[0x1E695E480], Extension, v43, v97, 0, 0, 0, &valuePtr))
    {
      if (!valuePtr)
      {
LABEL_53:
        v114[0] = v106;
        remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, a17, a18, a20, v114, v108, 0, *v110, 0, v41, v52);
        if (v66)
        {
          goto LABEL_117;
        }

        if (a19)
        {
          v67 = CFDictionaryGetValue(a19, *MEMORY[0x1E6983E30]);
          if (!v67 || CFEqual(v67, *MEMORY[0x1E69840F0]))
          {
            v68 = *(*v110 + 288);
            if (v68)
            {
              if (!FigMediaProcessorGetSampleBufferProcessor(v68))
              {
                remaker_AddVideoCompositionTrack_cold_5(v114);
                value_low = LODWORD(v114[0].value);
                goto LABEL_95;
              }

              FigSampleBufferProcessorGetFigBaseObject();
              v70 = v69;
              v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v71)
              {
                v71(v70, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput", *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }

        FigCFDictionaryGetInt32IfPresent();
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(*v110 + 288));
        v73 = *MEMORY[0x1E69838A8];
        v74 = CFGetAllocator(a1);
        v66 = VTSessionCopyProperty(VTCompressionSession, v73, v74, &propertyValueOut);
        if (v66)
        {
LABEL_117:
          value_low = v66;
          goto LABEL_95;
        }

        if (a23)
        {
          v75 = CFDictionaryGetValue(a23, @"Remaker_FieldMode");
        }

        else
        {
          v75 = 0;
        }

        v76 = v32[60];
        v32[60] = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        v77 = v32[61];
        v32[61] = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        if (v77)
        {
          CFRelease(v77);
        }

        *&v114[0].value = *a13;
        v114[0].epoch = *(a13 + 16);
        v78 = remakerFamily_finishVideoCompositionChannel(a1, *v110, v105, v101, v102, v99, v100, a9, a10, a11, a12, &v114[0].value, a14, a15, a16, v75, a19, cf, v41, propertyValueOut);
        if (v78)
        {
          value_low = v78;
          v52 = v98;
          goto LABEL_95;
        }

        v79 = *v110;
        v52 = v98;
        if (a25)
        {
          *a25 = *(*v110 + 300);
        }

        v80 = *(a13 + 8);
        v114[0].value = 0;
        *v113 = 0;
        v81 = remakerFamily_getStorage(a1);
        v82 = v81;
        if (!a14)
        {
          if (v80 <= 600)
          {
            v91 = 600;
          }

          else
          {
            v91 = v80;
          }

          LODWORD(valuePtr) = v91;
          v90 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
          v114[0].value = v90;
          goto LABEL_87;
        }

        v83 = *(v81 + 72);
        v84 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v84)
        {
          v85 = v84(v83, a14, v113);
          if (v85)
          {
            value_low = v85;
            goto LABEL_92;
          }

          FigAssetTrackGetCMBaseObject();
          v87 = v86;
          v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v88)
          {
            v89 = v88(v87, @"NaturalTimeScale", allocator, v114);
            v90 = v114[0].value;
            if (v89)
            {
              value_low = v89;
LABEL_90:
              if (v90)
              {
                CFRelease(v90);
              }

              goto LABEL_92;
            }

LABEL_87:
            v92 = *(v82 + 184);
            v93 = *(v79 + 300);
            v94 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v94)
            {
              v94(v92, v93, @"MediaTimeScale", v90);
            }

            remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v114[0].value, 1986618469);
            value_low = 0;
            v90 = v114[0].value;
            goto LABEL_90;
          }
        }

        value_low = 4294954514;
LABEL_92:
        if (*v113)
        {
          CFRelease(*v113);
        }

        *v110 = 0;
        goto LABEL_95;
      }

      remaker_AddVideoCompositionTrack_cold_4(valuePtr, &valuePtr, v52);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    goto LABEL_53;
  }

  v53 = CFGetAllocator(a1);
  Basic = FigVisualContextCreateBasic(v53, 0, &value);
  if (!Basic)
  {
    CFArrayAppendValue(v41, value);
    goto LABEL_37;
  }

LABEL_108:
  value_low = Basic;
  v52 = 0;
LABEL_95:
  remakerFamily_discardChannel(a1, *v110);
  CFRelease(v41);
LABEL_96:
  if (value)
  {
    CFRelease(value);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return value_low;
}

uint64_t remaker_CanPerformFastFrameRateConversion(const void *a1, int a2, __int128 *a3)
{
  remakerFamily_getStorage(a1);
  v6 = malloc_type_malloc(0x30uLL, 0x102004002AA219BuLL);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  v6[4] = v7;
  v8 = *a3;
  v6[2] = *(a3 + 2);
  *v6 = v8;
  *(v6 + 6) = a2;
  v9 = FigDispatchQueueCreateWithPriorityAndClientPID();
  v6[5] = v9;
  dispatch_async_f(v9, v6, remaker_CanPerformFastFrameRateConversionWork);
  return 0;
}

void remaker_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  if (*remakerFamily_getStorage(a1) >= 7u)
  {
    remaker_CopyTrackProperty_cold_2(&v20);
  }

  else if (a5)
  {
    Storage = remakerFamily_getStorage(a1);
    Count = CFArrayGetCount(*(Storage + 80));
    if (Count < 1)
    {
LABEL_7:
      v15 = qword_1EAF173A0;

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294955175, "<<<< Remaker >>>>", 5006, v5);
    }

    else
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 80), v13);
        if (ValueAtIndex[75] == a2)
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_7;
        }
      }

      v16 = ValueAtIndex;
      if (CFEqual(a3, @"RemakerTrack_FinalHDRMetadataGenerationState"))
      {
        v17 = *(v16 + 55);
        if (v17)
        {
          v18 = CFRetain(v17);
        }

        else
        {
          v18 = 0;
        }

        *a5 = v18;
      }
    }
  }

  else
  {
    remaker_CopyTrackProperty_cold_1(&v19);
  }
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions(unsigned int a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, __CFDictionary **a6, double a7)
{
  if (!a2)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_4(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  if (!a5)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_3(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  if (!a6)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_2(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_1(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  v14 = MutableCopy;
  v16 = *a2;
  v15 = a2[1];
  *(a5 + 32) = *(a2 + 4);
  *a5 = v16;
  *(a5 + 16) = v15;
  if (*a5 == 0.0)
  {
    *a5 = a7;
  }

  else if (*a5 > a7)
  {
    outPropertyDataSize = 0;
    if (!AudioFormatGetPropertyInfo(0x61657372u, 4u, (a5 + 8), &outPropertyDataSize))
    {
      v17 = malloc_type_malloc(outPropertyDataSize, 0x9BE5C175uLL);
      if (AudioFormatGetProperty(0x61657372u, 4u, (a5 + 8), &outPropertyDataSize, v17) || outPropertyDataSize < 0x10)
      {
        free(v17);
      }

      else
      {
        v24 = 0;
        v25 = outPropertyDataSize >> 4;
        v26 = v17 + 1;
        do
        {
          if (*(v26 - 1) <= a7 && *v26 >= a7)
          {
            *a5 = a7;
            v24 = 1;
          }

          v26 += 2;
          --v25;
        }

        while (v25);
        free(v17);
        if (v24)
        {
          CFDictionarySetValue(v14, @"FigAudioCompressionOption__AudioConverterEncoderCanAdjustBitRate", *MEMORY[0x1E695E4D0]);
        }
      }
    }
  }

  v18 = *(a5 + 28);
  if (v18)
  {
    v19 = *(a5 + 28);
  }

  else
  {
    v19 = a1;
  }

  if (a3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 > a1;
  }

  v21 = v20;
  if (!v18 || v21)
  {
    if (v21)
    {
      v19 = a1;
    }

    *(a5 + 28) = v19;
  }

  FigCFDictionaryGetInt32IfPresent();
  v22 = 0;
  *a6 = v14;
  return v22;
}

uint64_t remaker_transferTrackSettingsForPassthrough(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = 0;
  v36[32] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v34 = 0;
  v32 = 0;
  v36[0] = @"IsEnabled";
  v36[1] = @"EnableTrack";
  v36[2] = @"AlternateGroupID";
  v36[3] = @"AlternateGroupID";
  v36[4] = @"LanguageCode";
  v36[5] = @"LanguageTag";
  v36[6] = @"ExtendedLanguageTag";
  v36[7] = @"ExtendedLanguageTag";
  v36[8] = @"Layer";
  v36[9] = @"Layer";
  v36[10] = @"Volume";
  v36[11] = @"TrackVolume";
  v36[12] = @"PreferredTransform";
  v36[13] = @"TrackMatrix";
  v36[14] = @"TrackDimensions";
  v36[15] = @"TrackDimensions";
  v36[16] = @"CleanApertureDimensions";
  v36[17] = @"CleanApertureDimensions";
  v36[18] = @"ProductionApertureDimensions";
  v36[19] = @"ProductionApertureDimensions";
  v36[20] = @"EncodedPixelsDimensions";
  v36[21] = @"EncodedPixelsDimensions";
  v36[22] = @"NaturalTimeScale";
  v36[23] = @"MediaTimeScale";
  v36[24] = @"LoadSettings";
  v36[25] = @"QTLoadSettings";
  v36[26] = @"SampleGroupDescriptions";
  v36[27] = @"SampleGroupDescriptions";
  v36[28] = @"HEVCTemporalLevelInfoCombinations";
  v36[29] = @"HEVCTemporalLevelInfoCombinations";
  v36[30] = @"HEVCSyncSampleNALUnitTypes";
  v36[31] = @"HEVCSyncSampleNALUnitTypes";
  v7 = *MEMORY[0x1E695E480];
  do
  {
    v9 = v36[v6];
    v8 = v36[v6 + 1];
    cf = 0;
    FigAssetTrackGetCMBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, v9, v7, &cf);
      v13 = cf;
      if (cf)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v14)
        {
          v15 = v14(a4, a5, v8, v13);
          CFRelease(cf);
          v17 = v15 == -12784 || v15 == -12630 || v15 == -12782;
          if (!v17 && v15)
          {
            goto LABEL_27;
          }
        }

        else
        {
          CFRelease(cf);
        }
      }
    }

    v6 += 2;
  }

  while (v6 != 32);
  FigAssetTrackGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, @"NaturalTimeScale", v7, &v32);
    if (v32)
    {
      remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v32, a2);
      CFRelease(v32);
    }
  }

  FigAssetTrackGetCMBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v23(v22, @"LoadSettings", v7, &v34);
  }

  if (!v34)
  {
    return 0;
  }

  if (!FigCFDictionaryGetInt32IfPresent() || (valuePtr & 0x300000000) == 0)
  {
    v15 = 0;
LABEL_27:
    v24 = 0;
    goto LABEL_36;
  }

  LODWORD(valuePtr) = 1;
  v24 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v25)
  {
    v26 = v25(a4, a5, @"MediaDataPrecedence", v24);
  }

  else
  {
    v26 = -12782;
  }

  if ((v26 & 0xFFFFFFFD) == 0xFFFFCE10 || v26 == -12630)
  {
    v15 = 0;
  }

  else
  {
    v15 = v26;
  }

LABEL_36:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v15;
}

Float64 OUTLINED_FUNCTION_6_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  time_16 = *(a1 + 344);
  timea = *(a1 + 328);

  return CMTimeGetSeconds(&timea);
}

CFIndex OUTLINED_FUNCTION_13_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{

  return CFArrayGetCount(v23);
}

void OUTLINED_FUNCTION_14_33(const void *a1@<X1>, const void **a2@<X8>)
{
  if (!v2)
  {
    a2 = v3;
  }

  v6 = *a2;

  CFDictionarySetValue(v4, a1, v6);
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  return FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sFigBufferedAirPlayOverlapLinearTimeMapperClassID;
}

uint64_t __FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperCreate(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  v7 = CMDerivedObjectCreate();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 40) = v9;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 56) = 0;
  v11 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 60) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 76) = *(v11 + 16);
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *a4 = 0;
  return v7;
}

__CFString *fbapOverlapMapper_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayOverlapLinearTimeMappert %p>", a1);
  return Mutable;
}

uint64_t fbapOverlapMapper_update(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fbapOverlapMapper_debugPrintWithFlushInfo(a1, 0);
  }

  return 0;
}

void fbapOverlapMapper_debugPrintType(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  _Block_object_dispose(v4, 8);
}

uint64_t FigBufferedAirPlaySubPipeManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

__int128 *fbapOverlapMapper_debugPrintTimeIntervalGraph(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unsigned int a9)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  time = *a3;
  v18 = CMTimeGetSeconds(&time) - Seconds;
  fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph = 0u;
  unk_1EAF19800 = 0u;
  xmmword_1EAF19810 = 0u;
  unk_1EAF19820 = 0u;
  unk_1EAF1982F = 0;
  if (v18 <= 0.0)
  {
    return "must: firstPTS < lastPTS; both valid.";
  }

  v40 = a8;
  v19 = a9;
  v20 = v18 / a9;
  v21 = vcvtpd_s64_f64(v20);
  if (v21 >= 70)
  {
    v22 = 70;
  }

  else
  {
    v22 = v21;
  }

  if (v21 >= 1)
  {
    memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph, 45, v22);
  }

  if ((*(a4 + 12) & 1) != 0 && (a2->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1)
  {
    time = *a4;
    v23 = CMTimeGetSeconds(&time);
    v24 = v20;
    if (*(a5 + 12))
    {
      time = *a4;
      time2 = *a5;
      v25 = CMTimeCompare(&time, &time2);
      v24 = v20;
      if (v25 < 0)
      {
        time = *a5;
        v24 = (CMTimeGetSeconds(&time) - Seconds) / v19;
      }
    }

    v26 = vcvtmd_s64_f64((v23 - Seconds) / v19);
    v27 = vcvtmd_s64_f64(v24);
    v28 = v26 & ~(v26 >> 31);
    if (v22 <= v27)
    {
      v27 = v22 - 1;
    }

    if (v27 >= v28 && v27 <= 70)
    {
      memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v28, 61, (v27 - v28) + 1);
    }
  }

  if ((*(a6 + 12) & 1) == 0 || (*(a7 + 12) & 1) == 0)
  {
    goto LABEL_27;
  }

  time = *a6;
  v29 = CMTimeGetSeconds(&time);
  time = *a6;
  time2 = *a7;
  if (CMTimeCompare(&time, &time2) < 0)
  {
    time = *a7;
    v20 = (CMTimeGetSeconds(&time) - Seconds) / v19;
  }

  v30 = vcvtmd_s64_f64((v29 - Seconds) / v19);
  v31 = vcvtmd_s64_f64(v20);
  v32 = v30 & ~(v30 >> 31);
  v33 = v31 >= 69 ? 69 : v31;
  v34 = __OFSUB__(v33, v32);
  v35 = v33 - v32;
  if (v35 < 0 == v34)
  {
    memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v32, 120, v35 + 1);
    v39 = 1;
  }

  else
  {
LABEL_27:
    v39 = 0;
  }

  if (*(a1 + 12))
  {
    time = *a1;
    v36 = vcvtmd_s64_f64((CMTimeGetSeconds(&time) - Seconds) / v19);
    if ((v36 & 0x80000000) == 0 && v22 > v36)
    {
      *(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v36) = 124;
    }
  }

  result = &fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph;
  if ((v39 & 1) == 0)
  {
    v38 = v22 - 1;
    if (v21 <= 0)
    {
      v38 = 0;
    }

    *(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v38) = v40;
  }

  return result;
}