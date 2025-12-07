BOOL vtShouldSkipEncoder(const __CFDictionary *a1, CFDictionaryRef theDict)
{
  v4 = *MEMORY[0x1E695E4D0];
  if (v4 == CFDictionaryGetValue(theDict, @"Hide"))
  {
    if (a1 && v4 == CFDictionaryGetValue(a1, @"RevealHiddenEncoders"))
    {
      return 0;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == CFDictionaryGetValue(theDict, @"DVFamily"))
  {
    return !a1 || v4 != CFDictionaryGetValue(a1, @"IncludeStandardDefinitionDVEncoders");
  }

  return v5;
}

const void *copyObjectForKeyFromMatchInfoOrIORegistry(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

CFComparisonResult vtCompareCodecNameThenEncoderName(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"CodecName");
  v5 = CFDictionaryGetValue(a2, @"CodecName");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"EncoderName");
    v8 = CFDictionaryGetValue(a2, @"EncoderName");

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

void vtInitializeVideoEncoderRegistry(uint64_t a1)
{
  if (qword_1ED6D40D0 != -1)
  {
    vtInitializeVideoEncoderRegistry_cold_1();
  }

  v1 = byte_1ED6D40C9;
  sVideoEncoderRegistryMutex = FigSimpleMutexCreate();
  MEMORY[0x193AE3010](&sCreateVideoEncoderRegistryOnce, vtCreateVideoEncoderRegistry);
  vtRegisterVideoEncoderWithInfoKeysAndValues(1836415073, v2, @"Muxed Alpha", @"Apple Muxed Alpha", @"com.apple.videotoolbox.videoencoder.hevc-with-alpha", 48, @"hvc1", MuxedAlphaEncoder_CreateInstance, 0);
  vtRegisterVideoEncoderWithInfoKeysAndValues(1684632424, v3, @"Disparity", @"Apple Disparity (HEVC)", @"com.apple.videotoolbox.videoencoder.disparity-hevc", 16, @"hvc1", DepthWrapperEncoder_CreateInstance, 0);
  vtRegisterVideoEncoderWithInfoKeysAndValues(1684369512, v4, @"Depth", @"Apple Depth (HEVC)", @"com.apple.videotoolbox.videoencoder.depth-hevc", 16, @"hvc1", DepthWrapperEncoder_CreateInstance, 0);
  if (os_variant_has_internal_content())
  {
    vtRegisterVideoEncoderWithInfoKeysAndValues(1768972832, v5, @"Test IPB", @"Apple Test IPB", @"com.apple.videotoolbox.videoencoder.testipb", 4, 0, TestIPBVideoEncoder_CreateInstance, 0);
  }

  if (v1)
  {
    VTLoadVideoEncodersPreferringInternalBundles();
  }

  else
  {
    VTLoadVideoEncoders();
  }

  vtLoadParavirtualizedVideoEncoders();
}

uint64_t vtGetPreferInternalEncoders(_BYTE *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

uint64_t vtRegisterVideoEncoderWithInfoKeysAndValues(int a1, uint64_t a2, const void *a3, const void *a4, const void *a5, __int16 a6, const void *a7, const char *a8, ...)
{
  va_start(va, a8);
  v9 = a1;
  return vtRegisterVideoEncoderWithInfoKeysAndValuesInternal(&v9, 0, a3, a4, a5, a6, a7, a8, 0, va);
}

uint64_t vtRegisterVideoEncoderWithInfoKeysAndValuesInternal(unsigned int *a1, int a2, const void *a3, const void *a4, const void *a5, __int16 a6, const void *a7, const char *a8, uint64_t a9, const void **a10)
{
  valuePtr = a2;
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v19 = Mutable;
    *bytes = bswap32(*a1);
    v20 = CFStringCreateWithBytes(v17, bytes, 4, 0x600u, 0);
    if (!v20)
    {
      v21 = 0;
      goto LABEL_27;
    }

    v35 = a5;
    CFDictionarySetValue(v19, @"VTCodecType", v20);
    v21 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
    if (!v21)
    {
LABEL_27:
      fig_log_get_emitter();
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, a4);
LABEL_28:
      CFRelease(v19);
      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      return v26;
    }

    CFDictionarySetValue(v19, @"VTRating", v21);
    if ((a6 & 2) != 0)
    {
      CFDictionarySetValue(v19, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
      if ((a6 & 4) == 0)
      {
LABEL_6:
        if ((a6 & 0x80) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((a6 & 4) == 0)
    {
      goto LABEL_6;
    }

    CFDictionarySetValue(v19, @"Hide", *MEMORY[0x1E695E4D0]);
    if ((a6 & 0x80) == 0)
    {
LABEL_8:
      v34 = a8;
      if ((a6 & 8) != 0)
      {
        CFDictionarySetValue(v19, @"VTAllowSandboxedEncode", *MEMORY[0x1E695E4C0]);
      }

      if ((a6 & 0x10) != 0)
      {
        v22 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(v19, @"VTIsWrapperEncoder", *MEMORY[0x1E695E4D0]);
        if (a7)
        {
          CFDictionarySetValue(v19, @"VTWrapsCodecType", a7);
        }

        if ((a6 & 0x20) != 0)
        {
          FigCFDictionarySetInt32();
        }

        if ((a6 & 0x100) != 0)
        {
          CFDictionarySetValue(v19, @"VTWrapsSoftwareCodecOnly", v22);
        }
      }

      if ((a6 & 0x40) != 0)
      {
        CFDictionarySetValue(v19, @"VTSupportsMultiPass", *MEMORY[0x1E695E4D0]);
      }

      if ((a6 & 0x200) != 0)
      {
        CFDictionarySetValue(v19, @"VTIsParavirtualized", *MEMORY[0x1E695E4D0]);
      }

      v23 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v23)
      {
        v27 = v23;
        v40 = a10 + 1;
        v29 = *a10;
        if (*a10)
        {
          do
          {
            v30 = v40;
            v41 = v40 + 1;
            v31 = *v30;
            if (!*v30)
            {
              break;
            }

            v32 = CFEqual(v29, @"VTHostEncoderID") ? v19 : v27;
            CFDictionarySetValue(v32, v29, v31);
            v33 = v41;
            v40 = v41 + 1;
            v29 = *v33;
          }

          while (*v33);
        }

        if (CFDictionaryGetCount(v27) >= 1)
        {
          CFDictionarySetValue(v19, @"VTRequiredSpecificationEntries", v27);
        }

        v26 = vtRegisterVideoEncoderInternal(a3, a4, v35, v19, v34, a9);
        CFRelease(v19);
        v19 = v27;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_7:
    CFDictionarySetValue(v19, @"DVFamily", *MEMORY[0x1E695E4D0]);
    goto LABEL_8;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< VTVideoEncoderSelection >>>>", 968, v10);
}

void __vtLoadParavirtualizedVideoEncoders_block_invoke()
{
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  xmmword_1ED6D40E0 = CFUUIDGetUUIDBytes(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtUnregisterParavirtualizedVideoEncoders()
{
  if (sVideoEncoderRegistry)
  {
    v1 = FigRegistryCopyFilteredItemList();
    if (v1)
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954388, "<<<< VTVideoEncoderSelection >>>>", 1661, v0);
  }
}

const __CFDictionary *vtCheckRequiredVideoEncoderSpecificationKey(const void *a1, const void *a2, uint64_t a3)
{
  result = FigCFEqual();
  if (!result)
  {
    result = *a3;
    if (!*a3 || (result = CFDictionaryGetValue(result, a1), !a2) || !result || (result = CFEqual(result, a2), !result))
    {
      *(a3 + 8) = 0;
    }
  }

  return result;
}

void *vtCreateDecoderCapabilitiesDictionary(uint64_t a1, char a2)
{
  v3 = a1;
  v90 = *MEMORY[0x1E69E9840];
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(a1);
  IsHardwareCodecAvailable = vtIsHardwareCodecAvailable(v3, matched);
  if (a2)
  {
    goto LABEL_57;
  }

  v7 = IsHardwareCodecAvailable;
  IsRunningInGuest = VTParavirtualizationIsRunningInGuest(IsHardwareCodecAvailable, v6);
  if (!v7 || !IsRunningInGuest)
  {
    goto LABEL_57;
  }

  v9 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  *&v76.byte0 = 0;
  *&v76.byte8 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  cf = 0;
  v72 = 0;
  if (v9)
  {
    v10 = v9;
    v76 = CFUUIDGetUUIDBytes(v9);
    appended = VTParavirtualizationGuestInstallHandlerForUUID(&v76, &__block_literal_global_21, 0);
    if (appended || (appended = VTParavirtualizationCreateMessageAndByteStream(0x64636170u, 1u, &v76, 0, &v74, &v73)) != 0 || (appended = VTParavirtualizationMessageAppendUInt32(v73, 745956722, 5u)) != 0 || (appended = VTParavirtualizationMessageAppendSInt32(v73, 744714084, v3)) != 0 || (*value = kVTParavirtualizationDefaultReplyTimeout, v89 = 0, (appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v74, value, &v72)) != 0) || (appended = VTParavirtualizationMessageCopyCFPropertyList(v72, 744776545, &cf)) != 0)
    {
      v14 = appended;
      Mutable = 0;
    }

    else
    {
      if (cf)
      {
        v12 = CFGetTypeID(cf);
        if (v12 != CFDictionaryGetTypeID())
        {
          vtCreateDecoderCapabilitiesDictionary_cold_1(value);
          Mutable = 0;
          v14 = value[0];
          goto LABEL_16;
        }
      }

      else
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = cf;
      cf = 0;
      VTParavirtualizationMessageGetUInt32();
      v14 = v16;
    }

LABEL_16:
    VTParavirtualizationGuestRemoveHandlerForUUID(&v76);
    CFRelease(v10);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_18;
  }

  vtCreateDecoderCapabilitiesDictionary_cold_2(&v76, value);
  Mutable = 0;
  v14 = value[0];
LABEL_18:
  if (v74)
  {
    CFRelease(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (!v14)
  {
    goto LABEL_104;
  }

  *&v76.byte0 = 0;
  LOBYTE(v74) = 0;
  v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v18 = *&v76.byte0;
  v19 = v74;
  if (os_log_type_enabled(v17, v74))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 0xFFFFFFFE;
  }

  if (v20)
  {
    if (v3 < 0)
    {
      v21 = __maskrune(HIBYTE(v3), 0x40000uLL);
    }

    else
    {
      v21 = *(MEMORY[0x1E69E9830] + 4 * HIBYTE(v3) + 60) & 0x40000;
    }

    if (v21)
    {
      v22 = HIBYTE(v3);
    }

    else
    {
      v22 = 46;
    }

    theDict = v22;
    if (BYTE2(v3) > 0x7Fu)
    {
      v23 = __maskrune(BYTE2(v3), 0x40000uLL);
    }

    else
    {
      v23 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v3) + 60) & 0x40000;
    }

    if (v23)
    {
      v24 = BYTE2(v3);
    }

    else
    {
      v24 = 46;
    }

    if (BYTE1(v3) > 0x7Fu)
    {
      v25 = __maskrune(BYTE1(v3), 0x40000uLL);
    }

    else
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v3) + 60) & 0x40000;
    }

    if (v25)
    {
      v26 = BYTE1(v3);
    }

    else
    {
      v26 = 46;
    }

    if (v3 > 0x7Fu)
    {
      v27 = __maskrune(v3, 0x40000uLL);
    }

    else
    {
      v27 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
    }

    *&v77[4] = "vtCreateDecoderCapabilitiesDictionary";
    *v77 = 136316418;
    if (v27)
    {
      v28 = v3;
    }

    else
    {
      v28 = 46;
    }

    v78 = 1024;
    v79 = theDict;
    v80 = 1024;
    v81 = v24;
    v82 = 1024;
    v83 = v26;
    v84 = 1024;
    v85 = v28;
    v86 = 1024;
    v87 = v14;
    _os_log_send_and_compose_impl(v20, 0, value, 128, &dword_18F99C000, v17, v19, "<<<< VTVDCapabilites >>>> %s: Failed to copy codec capabilities from the host for codecType '%c%c%c%c', err %d", v77, 42, v64, v65, v66, v67);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_57:
  Mutable = 0;
  if (v3 > 1634759271)
  {
    if (v3 <= 1635135536)
    {
      if (v3 == 1634759272)
      {
        goto LABEL_86;
      }

      v29 = 29294;
      goto LABEL_85;
    }

    if (v3 > 1685481520)
    {
      if (v3 == 1987063865)
      {
        value[0] = 0;
        *v77 = 0;
        if (!VTIsHardwareDecodeSupported(0x76703039u))
        {
          goto LABEL_103;
        }

        v30 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v31 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v31)
          {
            CFDictionarySetValue(Mutable, @"VTPerProfileSupport", v31);
            v32 = CFArrayCreateMutable(v30, 0, MEMORY[0x1E695E9C0]);
            if (v32)
            {
              FigCFArrayAppendInt();
              FigCFArrayAppendInt();
              CFDictionarySetValue(Mutable, @"VTSupportedProfiles", v32);
              ProfileSupportEntryDictionaryForVP9Embedded = vtCreateProfileSupportEntryDictionaryForVP9Embedded(value);
              if (ProfileSupportEntryDictionaryForVP9Embedded)
              {
                v34 = ProfileSupportEntryDictionaryForVP9Embedded;
              }

              else
              {
                v34 = vtCreateProfileSupportEntryDictionaryForVP9Embedded(v77);
                if (!v34)
                {
                  CFDictionarySetValue(v31, @"0", value[0]);
                  CFDictionarySetValue(v31, @"2", *v77);
                }
              }
            }

            else
            {
              v34 = 0;
            }

LABEL_72:
            if (value[0])
            {
              CFRelease(value[0]);
            }

            if (*v77)
            {
              CFRelease(*v77);
            }

            if (v31)
            {
              CFRelease(v31);
            }

            if (v32)
            {
              CFRelease(v32);
            }

            if (Mutable && v34)
            {
              goto LABEL_102;
            }

            goto LABEL_104;
          }

          vtCreateDecoderCapabilitiesDictionary_cold_4(&v76);
          v32 = 0;
        }

        else
        {
          vtCreateDecoderCapabilitiesDictionary_cold_5(&v76);
          v32 = 0;
          v31 = 0;
        }

        v34 = *&v76.byte0;
        goto LABEL_72;
      }

      if (v3 == 1685481521)
      {
        v61 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v61)
        {
          vtCreateDecoderCapabilitiesDictionary_cold_8();
          goto LABEL_103;
        }

        vtCreateDecoderCapabilitiesDictionary_cold_7(v61, value);
        Mutable = value[0];
        goto LABEL_104;
      }

      if (v3 != 1752589105)
      {
        goto LABEL_104;
      }

      v51 = @"hvc1";
      v52 = 1752589105;
LABEL_127:
      Mutable = vtCreateH264OrHEVCDecoderCapabilitiesDictionaryInternal(v52, v51);
      goto LABEL_104;
    }

    if (v3 != 1635135537)
    {
      if (v3 != 1635148593)
      {
        goto LABEL_104;
      }

      v51 = @"avc1";
      v52 = 1635148593;
      goto LABEL_127;
    }

    v47 = VTCopyVideoDecoderRegistryMatchArrayForCodecType(0x61763031u);
    value[0] = 0;
    *v77 = 0;
    v48 = vtIsHardwareCodecAvailable(1635135537, v47);
    if (!v48)
    {
      if (!v47)
      {
        Mutable = 0;
LABEL_118:
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (*v77)
        {
          CFRelease(*v77);
        }

        goto LABEL_104;
      }

      if (CFArrayGetCount(v47) < 1)
      {
        Mutable = 0;
        v49 = 0;
        MutableCopy = 0;
LABEL_112:
        CFRelease(v47);
LABEL_113:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        goto LABEL_118;
      }
    }

    v53 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (vtCopyCodecProfilesArrayAndDictionaryForEmbedded(@"av01", v77, value))
      {
        MutableCopy = CFArrayCreateMutableCopy(v53, 0, *v77);
        if (MutableCopy)
        {
          CFDictionarySetValue(Mutable, @"VTSupportedProfiles", MutableCopy);
          theDicta = CFDictionaryGetValue(value[0], @"PerProfileConstraints");
          v54 = CFDictionaryCreateMutable(v53, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v54)
          {
            v49 = v54;
            if (CFArrayGetCount(MutableCopy) >= 1)
            {
              v55 = 0;
              v56 = MEMORY[0x1E695E4D0];
              if (!v48)
              {
                v56 = MEMORY[0x1E695E4C0];
              }

              v68 = *v56;
              do
              {
                *&v76.byte0 = 0;
                FigCFArrayGetIntAtIndex();
                v57 = CFStringCreateWithFormat(v53, 0, @"%d", *&v76.byte0);
                v58 = CFDictionaryGetValue(theDicta, v57);
                v59 = CFDictionaryCreateMutableCopy(v53, 0, v58);
                CFDictionaryAddValue(v59, @"VTIsHardwareAccelerated", v68);
                v60 = CFDictionaryGetValue(v58, @"MaxLevel");
                CFDictionaryAddValue(v59, @"VTMaxPlaybackLevel", v60);
                CFDictionaryRemoveValue(v59, @"MaxLevel");
                CFDictionaryAddValue(v49, v57, v59);
                if (v59)
                {
                  CFRelease(v59);
                }

                if (v57)
                {
                  CFRelease(v57);
                }

                ++v55;
              }

              while (CFArrayGetCount(MutableCopy) > v55);
            }

            CFDictionarySetValue(Mutable, @"VTPerProfileSupport", v49);
LABEL_142:
            if (!v47)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }
        }

        fig_log_get_emitter();
        if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, v63, v64))
        {
          CFRelease(Mutable);
          v49 = 0;
          Mutable = 0;
          goto LABEL_142;
        }

LABEL_162:
        v49 = 0;
        goto LABEL_142;
      }
    }

    else
    {
      vtCreateDecoderCapabilitiesDictionary_cold_3();
    }

    MutableCopy = 0;
    goto LABEL_162;
  }

  if ((v3 - 1634755432) <= 0xB && ((1 << (v3 - 104)) & 0x8C1) != 0 || v3 == 1634743400)
  {
    goto LABEL_86;
  }

  v29 = 13432;
LABEL_85:
  if (v3 != (v29 | 0x61700000))
  {
    goto LABEL_104;
  }

LABEL_86:
  v35 = VTCopyVideoDecoderRegistryMatchArrayForCodecType(v3);
  v36 = vtIsHardwareCodecAvailable(v3, v35);
  if (v36)
  {
    goto LABEL_89;
  }

  if (!v35)
  {
LABEL_103:
    Mutable = 0;
    goto LABEL_104;
  }

  if (CFArrayGetCount(v35) < 1)
  {
    Mutable = 0;
    v45 = 0;
    goto LABEL_99;
  }

LABEL_89:
  v37 = *MEMORY[0x1E695E480];
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (!ModelSpecificPropertyList)
  {
    v45 = 0;
    Mutable = 0;
    if (!v35)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v39 = ModelSpecificPropertyList;
  v40 = CFDictionaryGetValue(ModelSpecificPropertyList, @"vide");
  StringFromCodecType = vtCreateStringFromCodecType(v3);
  v91.length = CFArrayGetCount(v40);
  v91.location = 0;
  v42 = CFArrayContainsValue(v40, v91, StringFromCodecType);
  if (StringFromCodecType)
  {
    CFRelease(StringFromCodecType);
  }

  if (v42 != 1)
  {
    Mutable = 0;
LABEL_97:
    v45 = 0;
    goto LABEL_98;
  }

  v43 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = v43;
  if (v43)
  {
    v44 = MEMORY[0x1E695E4C0];
    if (v36)
    {
      v44 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v43, @"VTIsHardwareAccelerated", *v44);
    goto LABEL_97;
  }

  vtCreateDecoderCapabilitiesDictionary_cold_6(value);
  v45 = LOBYTE(value[0]);
LABEL_98:
  CFRelease(v39);
  if (v35)
  {
LABEL_99:
    CFRelease(v35);
  }

LABEL_100:
  if (v45 && Mutable)
  {
LABEL_102:
    CFRelease(Mutable);
    goto LABEL_103;
  }

LABEL_104:
  if (matched)
  {
    CFRelease(matched);
  }

  return Mutable;
}

CFMutableDictionaryRef VTCopyDecoderCapabilitiesDictionaryForCodecTypes(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  IsHDRAllowedOnDevice = FigIsHDRAllowedOnDevice();
  MutableCopy = FigCFArrayCreateMutableCopy();
  UInt32 = FigCFNumberCreateUInt32();
  v10 = FigCFNumberCreateUInt32();
  v11 = v10;
  if (a1)
  {
    if (UInt32)
    {
      if (v10)
      {
        if (FigCFArrayContainsValue() && !FigCFArrayContainsValue())
        {
          CFArrayAppendValue(MutableCopy, v11);
        }

        v12 = 0;
LABEL_8:
        CFRelease(UInt32);
        goto LABEL_9;
      }

      VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_1(&v22);
    }

    else
    {
      VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_2(&v22);
    }
  }

  else
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_3(&v22);
  }

  v12 = v22;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  MutableCopy = 0;
  if (UInt32)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    v21 = 1;
LABEL_38:
    if (v21 && Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

LABEL_23:
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!Mutable)
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_5();
    goto LABEL_23;
  }

  if (!v6)
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_4(&v22);
    v21 = v22;
    goto LABEL_38;
  }

  v13 = MEMORY[0x1E695E4C0];
  if (IsHDRAllowedOnDevice)
  {
    v13 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, @"VTIsHDRAllowedOnDevice", *v13);
  CFDictionarySetValue(Mutable, @"VTCodecSupportDict", v6);
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      v22 = 0;
      FigCFArrayGetIntAtIndex();
      DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(v22, 0);
      if (DecoderCapabilitiesDictionary)
      {
        v18 = DecoderCapabilitiesDictionary;
        StringFromCodecType = vtCreateStringFromCodecType(v22);
        CFDictionarySetValue(v6, StringFromCodecType, v18);
        if (StringFromCodecType)
        {
          CFRelease(StringFromCodecType);
        }

        CFRelease(v18);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  CFRelease(v6);
LABEL_25:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return Mutable;
}

CFStringRef vtCreateStringFromCodecType(unsigned int a1)
{
  v2 = HIBYTE(a1);
  v3 = MEMORY[0x1E69E9830];
  if ((a1 & 0x80000000) != 0)
  {
    v4 = __maskrune(HIBYTE(a1), 0x40000uLL);
  }

  else
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  if (BYTE2(a1) > 0x7Fu)
  {
    v5 = __maskrune(BYTE2(a1), 0x40000uLL);
  }

  else
  {
    v5 = *(v3 + 4 * BYTE2(a1) + 60) & 0x40000;
  }

  if (BYTE1(a1) > 0x7Fu)
  {
    v6 = __maskrune(BYTE1(a1), 0x40000uLL);
  }

  else
  {
    v6 = *(v3 + 4 * BYTE1(a1) + 60) & 0x40000;
  }

  if (a1 > 0x7Fu)
  {
    v7 = __maskrune(a1, 0x40000uLL);
  }

  else
  {
    v7 = *(v3 + 4 * a1 + 60) & 0x40000;
  }

  if (v6)
  {
    v8 = BYTE1(a1);
  }

  else
  {
    v8 = 46;
  }

  if (v5)
  {
    v9 = BYTE2(a1);
  }

  else
  {
    v9 = 46;
  }

  if (v4)
  {
    v10 = v2;
  }

  else
  {
    v10 = 46;
  }

  if (v7)
  {
    v11 = a1;
  }

  else
  {
    v11 = 46;
  }

  snprintf(__str, 5uLL, "%c%c%c%c", v10, v9, v8, v11);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
}

void *VTCopyHEVCDecoderCapabilitiesDictionary()
{
  DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(1752589105, 0);
  v1 = vtCreateDecoderCapabilitiesDictionary(1685481521, 0);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryApplyFunction(v1, vtDictionarySetValue, MutableCopy);
  if (DecoderCapabilitiesDictionary)
  {
    CFRelease(DecoderCapabilitiesDictionary);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return MutableCopy;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription(CMFormatDescriptionRef desc, const __CFDictionary *a2, unint64_t a3, unint64_t a4)
{
  HIWORD(v14) = 0;
  if (!(a3 | a4))
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_4(v15);
    return v15[0];
  }

  if (!desc)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_3(v15);
LABEL_46:
    result = v15[0];
    goto LABEL_35;
  }

  if (!a2)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_2(v15);
    goto LABEL_46;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_1(v15);
    goto LABEL_46;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (MediaSubType <= 1752589104)
  {
    if (MediaSubType > 1685481572)
    {
      if (MediaSubType > 1718908527)
      {
        if (MediaSubType == 1718908528)
        {
          goto LABEL_31;
        }

        v9 = 1751479857;
      }

      else
      {
        if (MediaSubType == 1685481573)
        {
          goto LABEL_31;
        }

        v9 = 1718908520;
      }
    }

    else if (MediaSubType > 1684895095)
    {
      if (MediaSubType == 1684895096)
      {
        goto LABEL_31;
      }

      v9 = 1685481521;
    }

    else
    {
      if (MediaSubType == 1667524657)
      {
        goto LABEL_31;
      }

      v9 = 1667790435;
    }

    goto LABEL_30;
  }

  if (MediaSubType <= 1902405732)
  {
    if (MediaSubType <= 1869117026)
    {
      if (MediaSubType == 1752589105)
      {
        goto LABEL_31;
      }

      v9 = 1836415073;
      goto LABEL_30;
    }

    if (MediaSubType == 1869117027)
    {
      goto LABEL_31;
    }

    v10 = 26673;
    goto LABEL_29;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1902405733)
    {
      goto LABEL_31;
    }

    v10 = 28024;
LABEL_29:
    v9 = v10 | 0x71640000;
    goto LABEL_30;
  }

  if (MediaSubType == 1902667126 || MediaSubType == 1902671459)
  {
    goto LABEL_31;
  }

  v9 = 1902998904;
LABEL_30:
  if (MediaSubType != v9)
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15[1]);
    goto LABEL_35;
  }

LABEL_31:
  Value = CFDictionaryGetValue(a2, @"VTIsHDRAllowedOnDevice");
  if (CMVideoFormatDescriptionGetVideoDynamicRange() - 11 < 0xFFFFFFF7 || Value && !FigCFEqual())
  {
    result = vtGetHEVCDecoderCapabilitiesForFormatDescription(desc, a2, &v14 + 3, &v14 + 2);
  }

  else
  {
    result = 0;
  }

LABEL_35:
  if (a3)
  {
    *a3 = HIBYTE(v14);
  }

  if (a4)
  {
    *a4 = BYTE2(v14);
  }

  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription(CMFormatDescriptionRef desc, const __CFDictionary *a2, unint64_t a3, unint64_t a4)
{
  HIWORD(v16) = 0;
  if (!(a3 | a4))
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_4(v17);
    return v17[0];
  }

  if (!desc)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_3(v17);
LABEL_38:
    result = v17[0];
    goto LABEL_28;
  }

  if (!a2)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_2(v17);
    goto LABEL_38;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_1(v17);
    goto LABEL_38;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  Value = CFDictionaryGetValue(a2, @"VTIsHDRAllowedOnDevice");
  if (CMVideoFormatDescriptionGetVideoDynamicRange() - 11 < 0xFFFFFFF7 || Value && !FigCFEqual())
  {
    v10 = CFDictionaryGetValue(a2, @"VTCodecSupportDict");
    if (v10)
    {
      StringFromCodecType = vtCreateStringFromCodecType(MediaSubType);
      v12 = CFDictionaryGetValue(v10, StringFromCodecType);
      if (StringFromCodecType)
      {
        CFRelease(StringFromCodecType);
      }
    }

    else
    {
      v12 = 0;
    }

    if (MediaSubType > 1635135536)
    {
      if (MediaSubType != 1635135537)
      {
        if (MediaSubType != 1752589105)
        {
          if (MediaSubType != 1685481521)
          {
LABEL_27:
            fig_log_get_emitter();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17[1]);
            goto LABEL_28;
          }

          if (v10)
          {
            v14 = vtCreateStringFromCodecType(0x68766331u);
            v12 = CFDictionaryGetValue(v10, v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }
        }

        if (v12)
        {
          result = vtGetHEVCDecoderCapabilitiesForFormatDescription(desc, v12, &v16 + 3, &v16 + 2);
        }

        else
        {
          result = VTGetHEVCCapabilitesForFormatDescription(desc, a2, &v16 + 3, &v16 + 2);
        }

        goto LABEL_28;
      }
    }

    else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && MediaSubType != 1634743400 && MediaSubType != 1634743416)
    {
      goto LABEL_27;
    }

    result = 0;
    HIBYTE(v16) = v12 != 0;
    BYTE2(v16) = v12 != 0;
    goto LABEL_28;
  }

  result = 0;
LABEL_28:
  if (a3)
  {
    *a3 = HIBYTE(v16);
  }

  if (a4)
  {
    *a4 = BYTE2(v16);
  }

  return result;
}

BOOL VTIsSecTaskEntitledForSpecifyingVP9Decode(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopyValueForEntitlement(a1, @"com.apple.coremedia.allow-specifying-alternate-video-decoder-selection", 0);
  v2 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t VTIsSecTaskEntitledForVP9Decode(SecTaskRef task)
{
  v1 = task;
  if (task)
  {
    v2 = SecTaskCopyValueForEntitlement(task, @"com.apple.developer.coremedia.allow-alternate-video-decoder-selection", 0);
    if (!v2)
    {
      v2 = SecTaskCopyValueForEntitlement(v1, @"com.apple.coremedia.allow-alternate-video-decoder-selection", 0);
    }

    if (v2 != *MEMORY[0x1E695E4D0] && !FigIsSecTaskGPUExtensionOfBrowserEngine())
    {
      v1 = 0;
      if (!v2)
      {
        return v1;
      }

      goto LABEL_7;
    }

    v1 = 1;
    if (v2)
    {
LABEL_7:
      CFRelease(v2);
    }
  }

  return v1;
}

uint64_t VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(uint64_t a1, uint64_t a2)
{
  if (VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_mvhevcWithAlphaCheckOnce != -1)
  {
    VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_cold_1();
  }

  return VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_enableMVHEVCWithAlphaDecoding;
}

uint64_t __VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result == 44524)
  {
    VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_enableMVHEVCWithAlphaDecoding = 1;
  }

  return result;
}

uint64_t vtIsHardwareCodecAvailable(int a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  return 0;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_3_7()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t SRSEnhancementFilter_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 82) = 1;
  SRSEnhancementFilter_CompleteFrames();
  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(DerivedStorage + 96);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 112);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 112) = 0;
  }

  v8 = *(DerivedStorage + 144);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 144) = 0;
  }

  v9 = *(DerivedStorage + 120);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 120) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 48) = 0;
  }

  *DerivedStorage = 0;
  return 0;
}

__CFString *SRSEnhancementFilter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SRSEnhancementFilter %p>", a1);
  return Mutable;
}

uint64_t SRSEnhancementFilter_CompleteFrames()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 88);
  if (v0)
  {
    dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

unint64_t srsFilter_calculateOutputDimensions(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2);
  *a3 = result;
  if (result != a2 || HIDWORD(result) != v3)
  {
    if (__PAIR64__(2 * HIDWORD(result), 2 * result) == a2)
    {
      *a3 = a2;
    }

    else
    {
      v4 = SHIDWORD(a2) / SHIDWORD(result);
      v5 = (v4 * result);
      v6 = a2 / result;
      if (v6 <= v4)
      {
        v5 = a2;
        LODWORD(v3) = (v6 * SHIDWORD(result));
      }

      *a3 = (v5 + 1) & 0xFFFFFFFE;
      LODWORD(v3) = (v3 + 1) & 0xFFFFFFFE;
    }

    *(a3 + 4) = v3;
  }

  return result;
}

uint64_t SRSEnhancementFilter_ProcessFrame(uint64_t a1, CFTypeRef *a2, __CVBuffer *a3, __int128 *a4)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v7 = v69[3];
  v8 = *(v7 + 28) != *(v7 + 12) || *(v7 + 24) != *(v7 + 8);
  if (*v7)
  {
    if (!*(v7 + 82))
    {
      dispatch_group_wait(*(v7 + 88), 0xFFFFFFFFFFFFFFFFLL);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      v10 = v69[3];
      if (PixelFormatType != *(v10 + 104))
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          CFRelease(v11);
          *(v69[3] + 64) = 0;
        }
      }

      CVPixelBufferGetIOSurface(a3);
      ProtectionOptions = IOSurfaceGetProtectionOptions();
      v13 = v69[3];
      if (ProtectionOptions != *(v13 + 128))
      {
        v14 = *(v13 + 64);
        if (v14)
        {
          CFRelease(v14);
          v15 = v69;
          *(v69[3] + 64) = 0;
          v13 = v15[3];
        }
      }

      if (*(v13 + 136) != *(v13 + 33))
      {
        v16 = *(v13 + 64);
        if (v16)
        {
          CFRelease(v16);
          v17 = v69;
          *(v69[3] + 64) = 0;
          v13 = v17[3];
        }
      }

      v18 = MEMORY[0x1E695E480];
      if (*(v13 + 64))
      {
LABEL_35:
        *(v13 + 104) = PixelFormatType;
        *(v13 + 128) = ProtectionOptions;
        *(v13 + 136) = *(v13 + 33);
        OutputPixelBufferPool = VTTemporalFilterPluginSessionGetOutputPixelBufferPool(*v13);
        if (OutputPixelBufferPool)
        {
          v32 = *v18;
          PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v32, OutputPixelBufferPool, v65 + 3);
          if (v65[3])
          {
            v30 = PixelBuffer;
            v34 = v69[3];
            if (!*(v34 + 32) || (v35 = *(v34 + 40)) == 0)
            {
LABEL_41:
              if (a3)
              {
                v37 = CFRetain(a3);
              }

              else
              {
                v37 = 0;
              }

              v57[3] = v37;
              v38 = v69[3];
              v39 = *(v38 + 88);
              v40 = *(v38 + 96);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __SRSEnhancementFilter_ProcessFrame_block_invoke;
              block[3] = &unk_1E72C8328;
              block[4] = &v68;
              block[5] = &v60;
              block[6] = &v64;
              block[7] = &v56;
              v55 = v8;
              v53 = *a4;
              v54 = *(a4 + 2);
              block[8] = a2;
              dispatch_group_async(v39, v40, block);
              v41 = v69[3];
              if (!*(v41 + 81))
              {
                dispatch_group_wait(*(v41 + 88), 0xFFFFFFFFFFFFFFFFLL);
              }

              goto LABEL_46;
            }

            v36 = CVPixelBufferPoolCreatePixelBuffer(v32, v35, v61 + 3);
            if (v61[3])
            {
              v30 = v36;
              goto LABEL_41;
            }
          }
        }

        goto LABEL_79;
      }

      v19 = CMBaseObjectGetDerivedStorage();
      v20 = *v18;
      Mutable = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v22 = Mutable;
        v50 = v8;
        v51 = a4;
        v23 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (v23)
        {
          v24 = v23;
          v25 = PixelFormatType;
          if (*(v19 + 33))
          {
            goto LABEL_19;
          }

          v27 = *(v19 + 112);
          if (v27)
          {
            v28 = CFGetTypeID(*(v19 + 112));
            if (v28 == CFStringGetTypeID())
            {
              CFStringGetCString(v27, buffer, 5, 0x600u);
              v25 = bswap32(*buffer);
              goto LABEL_19;
            }
          }

          v25 = 1882468914;
          if (PixelFormatType > 1885746227)
          {
            if (PixelFormatType <= 2019963439)
            {
              if (PixelFormatType != 1885746228)
              {
                if (PixelFormatType != 1983131952)
                {
                  v43 = 2016687156;
LABEL_66:
                  if (PixelFormatType != v43)
                  {
                    goto LABEL_19;
                  }
                }

LABEL_67:
                v25 = 1882469428;
                goto LABEL_19;
              }
            }

            else
            {
              if (PixelFormatType <= 2019963955)
              {
                if (PixelFormatType != 2019963440)
                {
                  v44 = 2019963442;
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

              if (PixelFormatType != 2019963956)
              {
                v44 = 2037741158;
LABEL_72:
                if (PixelFormatType != v44)
                {
                  goto LABEL_19;
                }

                goto LABEL_73;
              }
            }
          }

          else
          {
            if (PixelFormatType > 875836533)
            {
              if (PixelFormatType <= 1885745711)
              {
                if (PixelFormatType != 875836534)
                {
                  v43 = 1882469428;
                  goto LABEL_66;
                }

                goto LABEL_67;
              }

              if (PixelFormatType != 1885745712)
              {
                v44 = 1885745714;
                goto LABEL_72;
              }

LABEL_73:
              v25 = 1885745714;
              goto LABEL_19;
            }

            if (PixelFormatType == 875704422 || PixelFormatType == 875704934)
            {
              goto LABEL_73;
            }

            if (PixelFormatType != 875836518)
            {
LABEL_19:
              v49 = a2;
              addNumberToCFArray(v24, v25);
              CFDictionaryAddValue(v22, *MEMORY[0x1E6966130], v24);
              FigCFDictionarySetInt32();
              FigCFDictionarySetInt32();
              FigCFDictionarySetInt32();
              allocator = v20;
              if (ProtectionOptions)
              {
                v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v26)
                {
                  v30 = 4294954392;
LABEL_31:
                  CFRelease(v22);
                  CFRelease(v24);
                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  a2 = v49;
                  a4 = v51;
                  v8 = v50;
                  if (v30)
                  {
                    goto LABEL_80;
                  }

                  v13 = v69[3];
                  v18 = MEMORY[0x1E695E480];
                  goto LABEL_35;
                }

                FigCFDictionarySetInt64();
                FigCFDictionarySetValue();
              }

              else
              {
                v26 = 0;
              }

              PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v22, 0, (v19 + 64));
              if (PixelBufferAttributesWithIOSurfaceSupport || (PixelBufferAttributesWithIOSurfaceSupport = VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes(*v19, *(v19 + 64)), PixelBufferAttributesWithIOSurfaceSupport))
              {
                v30 = PixelBufferAttributesWithIOSurfaceSupport;
              }

              else if (*(v19 + 32) && !*(v19 + 33))
              {
                *buffer = 0;
                FigCFDictionarySetInt32();
                FigCFDictionarySetInt32();
                v30 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v22, 0, buffer);
                CVPixelBufferPoolCreate(allocator, 0, *buffer, (v19 + 40));
                if (*buffer)
                {
                  CFRelease(*buffer);
                }
              }

              else
              {
                v30 = 0;
              }

              goto LABEL_31;
            }
          }

          v25 = 1885746228;
          goto LABEL_19;
        }

        CFRelease(v22);
      }

LABEL_79:
      v30 = 4294954392;
      goto LABEL_80;
    }

    v30 = 4294954393;
  }

  else
  {
    v30 = 4294954394;
  }

LABEL_80:
  v45 = v65[3];
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = v57[3];
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = v61[3];
  if (v47)
  {
    CFRelease(v47);
  }

  VTTemporalFilterPluginSessionConcludeInputFrame(*v69[3], a2);
LABEL_46:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  return v30;
}

uint64_t SRSEnhancementFilter_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  MEMORY[0x193AE3010](&gSRSFilterCreateSupportedPropertyDictionaryOnce, srsFilter_createSupportedPropertyDictionary);
  if (a2 && gSRSFilterSupportedPropertyDictionary)
  {
    *a2 = CFRetain(gSRSFilterSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< SRSEnhancementTemporalFilter >>>>", 1053, v2);
  }
}

void addNumberToCFArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a1, v3);
    CFRelease(v4);
  }
}

void srsFilter_createSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  gSRSFilterSupportedPropertyDictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (gSRSFilterSupportedPropertyDictionary)
  {
    v1 = CFDictionaryCreate(v0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"OutputDimensions", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"RealTime", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterSourcePixelBufferAttributes", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterDestinationPixelBufferAttributes", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"MaxLookBehind", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"MaxLookAhead", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterParameters", v1);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t jpeg_setupreadbuffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 24) = a2;
  *(result + 12) = 32;
  *(result + 56) = a3;
  *(result + 64) = a2 + a3;
  return result;
}

uint64_t popbytes(uint64_t result, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  LODWORD(result) = 0;
  v4 = v3[8];
  v5 = *v3;
  while (v5 < v4)
  {
    --a2;
    *v3 = v5 + 1;
    result = *v5++ | (result << 8);
    if (!a2)
    {
      return result;
    }
  }

  *a3 = -12909;
  return 0xFFFFFFFFLL;
}

uint64_t popbytesCallback(uint64_t result, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  LODWORD(result) = 0;
  v4 = v3[8];
  v5 = *v3;
  while (v5 < v4)
  {
    --a2;
    *v3 = v5 + 1;
    result = *v5++ | (result << 8);
    if (!a2)
    {
      return result;
    }
  }

  *a3 = -12909;
  return 0xFFFFFFFFLL;
}

uint64_t popbitsa(unsigned __int8 **a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v3 >= 8)
  {
    v4 = a1[8];
    v5 = *a1;
    while (1)
    {
      v2 <<= 8;
      *(a1 + 2) = v2;
      if (v5 >= v4)
      {
        break;
      }

      v6 = v5 + 1;
      *a1 = v5 + 1;
      v9 = *v5;
      v7 = v5 + 2;
      v8 = v9;
      if (*(a1 + 5) == v9 && v7 < v4)
      {
        *a1 = v7;
        if (!*v6)
        {
          v6 = v7;
        }

        *a1 = v6;
      }

      v2 |= v8;
      v11 = v3 - 8;
      *(a1 + 2) = v2;
      *(a1 + 3) = v3 - 8;
      v5 = v6;
      v12 = v3 <= 15;
      v3 -= 8;
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = v3;
LABEL_15:
  *(a1 + 3) = v11 + a2;
  return (v2 << v11) >> -a2;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CreateInstance(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v10 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  VTMotionEstimationProcessorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v6 = v4;
LABEL_18:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_3;
  }

  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v6;
}

void paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 40));
  CFDictionarySetValue(*(DerivedStorage + 48), a2, a3);
  CFDictionaryGetCount(*(DerivedStorage + 48));

  os_unfair_lock_unlock((DerivedStorage + 40));
}

uint64_t ParavirtualizedMotionEstimationProcessor_Invalidate(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v7 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(0x6D696E76u, 1u, (DerivedStorage + 8), 0, &cf, 0);
  if (MessageAndByteStream || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v10, &v7), MessageAndByteStream))
  {
    v4 = MessageAndByteStream;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v9;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

void ParavirtualizedMotionEstimationProcessor_Finalize(uint64_t a1)
{
  cf[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  *DerivedStorage = 0;
  *(DerivedStorage + 24) = 0;
  if (!VTParavirtualizationCreateMessageAndByteStream(0x2D6D6570u, 0, (DerivedStorage + 8), 0, cf, 0) && VTParavirtualizationGuestSendMessageToHostAsync(cf[0]))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (VTParavirtualizationGuestRemoveHandlerForUUID((DerivedStorage + 8)))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

__CFString *ParavirtualizedMotionEstimationProcessor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<ParavirtualizedMotionEstimationProcessor %p UUID %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x>", a1, DerivedStorage[8], DerivedStorage[9], DerivedStorage[10], DerivedStorage[11], DerivedStorage[12], DerivedStorage[13], DerivedStorage[14], DerivedStorage[15], DerivedStorage[16], DerivedStorage[17], DerivedStorage[18], DerivedStorage[19], DerivedStorage[20], DerivedStorage[21], DerivedStorage[22], DerivedStorage[23]);
  return Mutable;
}

uint64_t ParavirtualizedMotionEstimationProcessor_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  cf = 0;
  v12 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D736574u, 1u, (DerivedStorage + 8), 0, &cf, &v13);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(v13, 0x2C6B6579u, a2), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(v13, 0x2C76616Cu, a3), appended) || (v15 = kVTParavirtualizationDefaultReplyTimeout, v16 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v15, &v12), appended))
  {
    v8 = appended;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v9)
  {
    CFRelease(v9);
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

  if (v12)
  {
    CFRelease(v12);
  }

  return v8;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (!a3)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_7(&v36);
LABEL_40:
    v15 = 0;
    v14 = 0;
    Mutable = 0;
LABEL_44:
    v25 = v36;
    goto LABEL_23;
  }

  if (!a4)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_6(&v36);
    goto LABEL_40;
  }

  v11 = DerivedStorage;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_5(&v36);
    v15 = 0;
    v14 = 0;
    goto LABEL_44;
  }

  v14 = CFArrayCreateMutable(v12, 2, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_4(&v36);
    v15 = 0;
    goto LABEL_44;
  }

  v15 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  if (!v15)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_3(&v36);
    goto LABEL_44;
  }

  v16 = CFUUIDCreate(v12);
  CFArrayAppendValue(v14, v16);
  CFArrayAppendValue(Mutable, a3);
  cf = v16;
  paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(a1, v16, a3);
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_2(&v36);
    v18 = 0;
LABEL_47:
    v25 = v36;
LABEL_48:
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(v16);
    goto LABEL_21;
  }

  *v15 = IOSurface;
  v18 = CFUUIDCreate(v12);
  CFArrayAppendValue(v14, v18);
  CFArrayAppendValue(Mutable, a4);
  paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(a1, v18, a4);
  v19 = CVPixelBufferGetIOSurface(a4);
  if (!v19)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_1(&v36);
    goto LABEL_47;
  }

  v15[1] = v19;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D657066u, 1u, (v11 + 8), 0, &v34, &v33);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (appended = VTParavirtualizationMessageAppendUInt32(v33, 745366886, a5), appended) || a6 && (appended = VTParavirtualizationMessageAppendCFDictionary(v33, 0x2C6D656Fu, a6), appended) || (appended = VTParavirtualizationMessageAppendCFUUIDArray(v33, 0x2C75692Bu, v14), appended))
  {
    v25 = appended;
    goto LABEL_48;
  }

  v29 = v14;
  v21 = v15;
  v22 = v34;
  Count = CFArrayGetCount(Mutable);
  v36 = kVTParavirtualizationCodecOperationReplyTimeout;
  v37 = 0;
  v24 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(v22, v15, Count, &v36, &v32);
  if (v24 || (VTParavirtualizationMessageGetSInt32(), v24))
  {
    v25 = v24;
  }

  else
  {
    v25 = v35;
    if (v35)
    {
      v26 = FigCFCopyCompactDescription();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = v21;
      v16 = cf;
      if (v26)
      {
        CFRelease(v26);
      }

      v14 = v29;
      if (!cf)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v14 = v29;
  v16 = cf;
  if (cf)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_23:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v15);
  return v25;
}

uint64_t ParavirtualizedMotionEstimationProcessor_SetProperties(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  v10 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D6D756Cu, 1u, (DerivedStorage + 8), 0, &cf, &v11);
  if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v11, 0x2C70726Fu, a2), appended) || (v13 = kVTParavirtualizationDefaultReplyTimeout, v14 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v13, &v10), appended))
  {
    v6 = appended;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_0_9@<X0>(OpaqueCMBlockBuffer *a1@<X0>, __int128 *a2@<X8>, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  a3 = *a2;
  a4 = *(a2 + 2);

  return VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(a1, &a3, va);
}

void OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15)
{

  VTParavirtualizationMessageGetSInt32();
}

void OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15)
{

  VTParavirtualizationMessageGetSInt32();
}

uint64_t GetConversionRoutine(uint64_t a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, int a8, int a9, char a10)
{
  *a2 = DoNothing;
  if (!a8)
  {
    v15 = *(a1 + 3274);
    switch(v15)
    {
      case 1:
        a8 = 944206457;
        break;
      case 4:
        a8 = 2036556651;
        break;
      case 3:
        a8 = 1497580320;
        break;
      default:
        return -12910;
    }
  }

  v10 = 0;
  v11 = IDCTFlex;
  if (a6 > 2)
  {
    if (a6 == 3)
    {
      v16 = *a7;
      if (v16 != 17)
      {
        if (v16 == 33)
        {
          if (a7[1] == 17 && a7[2] == 17)
          {
            v11 = IDCTFlex;
            v10 = 875704864;
            goto LABEL_49;
          }
        }

        else
        {
          if (v16 != 34)
          {
            goto LABEL_48;
          }

          if (a7[1] == 17 && a7[2] == 17)
          {
            v11 = IDCT;
            v10 = 875639072;
            goto LABEL_49;
          }
        }

        goto LABEL_41;
      }

      if (a7[1] != 17)
      {
        goto LABEL_48;
      }

      v12 = a7[2];
    }

    else
    {
      if (a6 != 4)
      {
        goto LABEL_49;
      }

      v13 = *a7;
      if (v13 != 17)
      {
        if (v13 == 33)
        {
          if (a7[1] == 17 && a7[2] == 17 && a7[3] == 33)
          {
            v11 = IDCTFlex;
            v14 = 875704864;
            goto LABEL_37;
          }
        }

        else
        {
          if (v13 != 34)
          {
            goto LABEL_48;
          }

          if (a7[1] == 17 && a7[2] == 17 && a7[3] == 34)
          {
            v11 = IDCTFlex;
            v14 = 875639072;
LABEL_37:
            v10 = v14 | 0x14;
            goto LABEL_49;
          }
        }

LABEL_41:
        v10 = 0;
LABEL_42:
        v11 = IDCTFlex;
        goto LABEL_49;
      }

      if (a7[1] != 17 || a7[2] != 17)
      {
        goto LABEL_48;
      }

      v12 = a7[3];
    }

LABEL_7:
    if (v12 == 17)
    {
      v10 = 1852796517;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_42;
  }

  if (a6 == 1)
  {
    v11 = IDCTFlex;
    v10 = 1852796517;
    goto LABEL_49;
  }

  if (a6 != 2)
  {
    goto LABEL_49;
  }

  if (*a7 == 17)
  {
    v12 = a7[1];
    goto LABEL_7;
  }

LABEL_48:
  v11 = IDCTFlex;
  v10 = 0;
LABEL_49:
  if (a8 != 1497580320)
  {
    if (a8 != 944206457)
    {
      return -12910;
    }

    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 != 32)
      {
        if (a9 == 846624121)
        {
          v18 = yto2vuyOne;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yto32ARGBOne;
    }

    else
    {
      if (a9 == 875704438)
      {
        v18 = yto420vOne;
        goto LABEL_92;
      }

      if (a9 != 1111970369)
      {
        if (a9 == 2033463856)
        {
          v18 = ytoY420One;
LABEL_92:
          *a2 = v18;
          v19 = 2;
LABEL_101:
          *(a1 + 4416) = v11;
          UpdatePinAndGammaTables(a1, v19);
          return 0;
        }

        return v17;
      }

      v22 = yto32BGRAOne;
    }

    goto LABEL_99;
  }

  if (v10 == 875704864)
  {
    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 != 32)
      {
        if (a9 == 846624121)
        {
          v18 = yuv422to2vuy;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yuvto32ARGB2111;
    }

    else
    {
      if (a9 == 875704438)
      {
        v18 = yuv422to420v;
        goto LABEL_92;
      }

      if (a9 != 1111970369)
      {
        if (a9 == 2033463856)
        {
          v18 = yuv422toY420;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yuvto32BGRA2111;
    }

LABEL_99:
    *a2 = v22;
LABEL_100:
    v19 = 1;
    goto LABEL_101;
  }

  if (v10 != 875639072)
  {
    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 == 32)
      {
        v23 = yuvto32ARGBOne;
        v19 = 1;
        v20 = 4;
      }

      else
      {
        if (a9 != 846624121)
        {
          return v17;
        }

        v20 = 2;
        v23 = yuvto2vuyOne;
        v19 = 2;
      }
    }

    else
    {
      switch(a9)
      {
        case 875704438:
          v20 = 0;
          v19 = 2;
          v21 = yuvto420vOne;
          break;
        case 2033463856:
          v20 = 0;
          v19 = 2;
          v21 = yuvtoY420One;
          break;
        case 1111970369:
          v19 = 1;
          v20 = 4;
          v21 = yuvto32BGRAOne;
          break;
        default:
          return v17;
      }

      v23 = v21;
    }

    v28 = *(a1 + 4096);
    if (v28 == 17)
    {
      *a2 = v23;
    }

    else
    {
      *a2 = UpsampleThenContinue;
      *(a3 + 56) = a6;
      *(a3 + 58) = v28;
      if (a6 >= 1)
      {
        v29 = 0;
        do
        {
          *(a3 + 62 + v29) = a7[v29];
          ++v29;
        }

        while (a6 > v29);
      }

      *(a3 + 60) = v20;
      *(a3 + 48) = v23;
    }

    goto LABEL_101;
  }

  v17 = -12910;
  if (a9 <= 875704437)
  {
    if (a9 != 32)
    {
      if (a9 == 846624121)
      {
        v18 = yuv411to2vuy;
        goto LABEL_92;
      }

      return v17;
    }

    v24 = a10 == 0;
    v25 = yuvto32ARGBTab;
    v26 = yuvto32ARGB;
    goto LABEL_95;
  }

  switch(a9)
  {
    case 875704438:
      v18 = yuv411to420v;
      goto LABEL_92;
    case 1111970369:
      v24 = a10 == 0;
      v25 = yuvto32BGRATab;
      v26 = yuvto32BGRA;
LABEL_95:
      if (v24)
      {
        v25 = v26;
      }

      *a2 = v25;
      goto LABEL_100;
    case 2033463856:
      v18 = yuv411toY420;
      goto LABEL_92;
  }

  return v17;
}

uint64_t getyuvMB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  *(a1 + 3200) = &unk_18FECE0F0;
  v7 = *(a1 + 4128);
  if (*(a1 + 4128))
  {
    v8 = ExtractBufferedBlocks;
  }

  else
  {
    v8 = DecodeBlocks;
  }

  if (a6)
  {
    v9 = a6;
    v14 = a1 + 1632;
    v15 = *(a1 + 4416);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    v31 = (a1 + 3400);
    v17 = (a4 + 48);
    while (1)
    {
      if (v16)
      {
        v18 = *(a2 + 52);
        v19 = __OFSUB__(v18--, 1);
        *(a2 + 52) = v18;
        if ((v18 < 0) ^ v19 | (v18 == 0))
        {
          v20 = -*(a2 + 12) & 7;
          if (v20)
          {
            popbitsa(a2, v20);
          }

            ;
          }

          reset_DC_pred(a1);
          *(a2 + 52) = v16;
        }
      }

      if (v8(a1, a2, a1 + 96, v32, a3))
      {
        break;
      }

      *&v33[0] = v14;
      v21 = *(a1 + 3274);
      if (v21 >= 2)
      {
        v22 = v21 - 1;
        v24 = v33 + 1;
        v23 = v31;
        v25 = v14;
        do
        {
          v26 = *v23++;
          v25 += v26 << 7;
          *v24++ = v25;
          --v22;
        }

        while (v22);
      }

      --v9;
      v15(a1 + 96, v14, v32);
      (*(a1 + 3192))(a4, v33, a1 + 3200);
      v27 = v17;
      v28 = 3;
      do
      {
        *(v27 - 4) += *v27;
        v27 += 10;
        --v28;
      }

      while (v28);
      if (!v9)
      {
        return 0;
      }
    }

    return -1;
  }

  else
  {
    return 0;
  }
}

__int16 *FilterBlock(int a1, __int16 *a2, uint64_t *a3, int a4, int a5, int a6, int a7)
{
  result = 0;
  if (a1 > 8480)
  {
    if (a1 > 8721)
    {
      if (a1 != 8722)
      {
        if (a1 != 8737)
        {
          if (a1 != 8738)
          {
            return result;
          }

          goto LABEL_39;
        }

        v31 = 0;
        v32 = *a3;
        v33 = a2;
        v34 = *a3;
        do
        {
          v35 = 0;
          v33 += 8;
          v36 = v34;
          do
          {
            v37 = *v36++;
            *(v33 - 8) = v37;
            *v33++ = v37;
            v16 = v35++ >= 7;
          }

          while (!v16);
          v34 += 8;
          v16 = v31++ >= 3;
        }

        while (!v16);
        if (a4 != a6)
        {
          v17 = (v32 + 64);
          goto LABEL_51;
        }

        if (a5 != a7)
        {
          v17 = (v32 - 32);
          goto LABEL_51;
        }

        return a2;
      }

LABEL_19:
      v18 = 0;
      v19 = *a3;
      v20 = a2;
      v21 = *a3;
      do
      {
        v22 = 0;
        v23 = v21;
        do
        {
          v24 = *v23++;
          *v20 = v24;
          v20[1] = v24;
          v20 += 2;
          v16 = v22++ >= 3;
        }

        while (!v16);
        v21 += 8;
        v16 = v18++ >= 7;
      }

      while (!v16);
      if (a4 == a6)
      {
        if (a5 == a7)
        {
          return a2;
        }

        v17 = (v19 + 60);
LABEL_51:
        *a3 = v17;
        return a2;
      }

      goto LABEL_40;
    }

    if (a1 != 8481)
    {
      if (a1 == 8721)
      {
        v25 = 0;
        v19 = *a3;
        v26 = a2;
        v27 = *a3;
        do
        {
          v28 = 0;
          v26 += 8;
          v29 = v27;
          do
          {
            v30 = *v29++;
            *v26 = v30;
            *(v26 - 8) = v30;
            v26[1] = v30;
            *(v26 - 7) = v30;
            v26 += 2;
            v16 = v28++ >= 3;
          }

          while (!v16);
          v27 += 8;
          v16 = v25++ >= 3;
        }

        while (!v16);
        if (a4 == a6 && a5 != a7)
        {
          v17 = (v19 + 28);
          goto LABEL_51;
        }

LABEL_40:
        v17 = (v19 + 4);
        goto LABEL_51;
      }

      return result;
    }

LABEL_39:
    a2 = *a3;
    v17 = *a3 + 128;
    goto LABEL_51;
  }

  if (a1 <= 4625)
  {
    if (a1 != 4369)
    {
      if (a1 == 4625)
      {
        v9 = 0;
        v10 = *a3;
        v11 = a2;
        v12 = *a3;
        do
        {
          v13 = 0;
          v11 += 8;
          v14 = v12;
          do
          {
            v15 = *v14++;
            *(v11 - 8) = v15;
            *v11++ = v15;
            v16 = v13++ >= 7;
          }

          while (!v16);
          v12 += 8;
          v16 = v9++ >= 3;
        }

        while (!v16);
        v17 = (v10 + 32);
        goto LABEL_51;
      }

      return result;
    }

    goto LABEL_39;
  }

  if (a1 == 4626)
  {
    goto LABEL_39;
  }

  if (a1 == 8465)
  {
    goto LABEL_19;
  }

  return result;
}

CFArrayRef vtParavirtualizationInitializeIndexedKeys()
{
  v173 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6960460];
  values[0] = *MEMORY[0x1E6960458];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960450];
  values[2] = *MEMORY[0x1E6960448];
  values[3] = v1;
  v2 = *MEMORY[0x1E6960418];
  values[4] = *MEMORY[0x1E6960400];
  values[5] = v2;
  v3 = *MEMORY[0x1E6960410];
  values[6] = *MEMORY[0x1E6960408];
  values[7] = v3;
  v4 = *MEMORY[0x1E69603F0];
  values[8] = *MEMORY[0x1E69603E8];
  values[9] = v4;
  v5 = *MEMORY[0x1E6960490];
  values[10] = *MEMORY[0x1E6960510];
  values[11] = v5;
  v6 = *MEMORY[0x1E6960518];
  values[12] = *MEMORY[0x1E6960500];
  values[13] = v6;
  v7 = *MEMORY[0x1E6960558];
  values[14] = *MEMORY[0x1E6960560];
  values[15] = v7;
  v8 = *MEMORY[0x1E6960520];
  values[16] = *MEMORY[0x1E6960540];
  values[17] = v8;
  v9 = *MEMORY[0x1E69604B0];
  values[18] = *MEMORY[0x1E69604D0];
  values[19] = v9;
  v10 = *MEMORY[0x1E6960480];
  values[20] = *MEMORY[0x1E69604F8];
  values[21] = v10;
  v11 = *MEMORY[0x1E6960530];
  values[22] = *MEMORY[0x1E69604C8];
  values[23] = v11;
  v12 = *MEMORY[0x1E69604E8];
  values[24] = *MEMORY[0x1E6960528];
  values[25] = v12;
  v13 = *MEMORY[0x1E6962DE0];
  values[26] = *MEMORY[0x1E6962E28];
  values[27] = v13;
  v14 = *MEMORY[0x1E6962E40];
  values[28] = *MEMORY[0x1E6962E48];
  values[29] = v14;
  v15 = *MEMORY[0x1E6960550];
  values[30] = *MEMORY[0x1E6962DF0];
  values[31] = v15;
  v16 = *MEMORY[0x1E6960568];
  values[32] = *MEMORY[0x1E6960588];
  values[33] = v16;
  v17 = *MEMORY[0x1E69604B8];
  values[34] = *MEMORY[0x1E69604A8];
  values[35] = v17;
  values[36] = *MEMORY[0x1E6960478];
  values[37] = @"ReferenceWasRefreshed";
  values[38] = @"EncoderRetryCount";
  values[39] = @"RequireAcknowledgementToken";
  v18 = *MEMORY[0x1E6960CB0];
  values[40] = *MEMORY[0x1E6960CB8];
  values[41] = v18;
  v19 = *MEMORY[0x1E6960C60];
  values[42] = *MEMORY[0x1E6960C58];
  values[43] = v19;
  values[44] = @"X";
  values[45] = @"Y";
  values[46] = @"Width";
  values[47] = @"Height";
  v20 = *MEMORY[0x1E69600A0];
  values[48] = *MEMORY[0x1E6960088];
  values[49] = v20;
  v21 = *MEMORY[0x1E69600C8];
  values[50] = *MEMORY[0x1E69600D0];
  values[51] = v21;
  v22 = *MEMORY[0x1E6960028];
  values[52] = *MEMORY[0x1E6960030];
  values[53] = v22;
  v23 = *MEMORY[0x1E6965D80];
  values[54] = *MEMORY[0x1E6965D70];
  values[55] = v23;
  v24 = *MEMORY[0x1E6965D68];
  values[56] = *MEMORY[0x1E6965D60];
  values[57] = v24;
  v25 = *MEMORY[0x1E69600F8];
  values[58] = *MEMORY[0x1E6965D78];
  values[59] = v25;
  v26 = *MEMORY[0x1E6960108];
  values[60] = *MEMORY[0x1E6960100];
  values[61] = v26;
  v27 = *MEMORY[0x1E6965E58];
  values[62] = *MEMORY[0x1E6965E50];
  values[63] = v27;
  values[64] = *MEMORY[0x1E6965E78];
  values[65] = *MEMORY[0x1E6965E70];
  values[66] = *MEMORY[0x1E6965E60];
  values[67] = *MEMORY[0x1E6965E68];
  values[68] = *MEMORY[0x1E6965EF8];
  values[69] = *MEMORY[0x1E6965EF0];
  values[70] = *MEMORY[0x1E6965F00];
  v32 = *MEMORY[0x1E6965D88];
  v33 = *MEMORY[0x1E6965DB8];
  v34 = *MEMORY[0x1E6965DA0];
  v35 = *MEMORY[0x1E6965DD8];
  v36 = *MEMORY[0x1E6965F30];
  v37 = *MEMORY[0x1E6965F50];
  v38 = *MEMORY[0x1E6965F68];
  v39 = *MEMORY[0x1E6965F80];
  v40 = *MEMORY[0x1E6965E80];
  v41 = *MEMORY[0x1E6965F98];
  v42 = *MEMORY[0x1E6965FD0];
  v43 = *MEMORY[0x1E6965FC8];
  v44 = *MEMORY[0x1E6965FF0];
  v45 = *MEMORY[0x1E6960038];
  v46 = *MEMORY[0x1E6960070];
  v47 = *MEMORY[0x1E6960008];
  v48 = *MEMORY[0x1E6965D00];
  v49 = *MEMORY[0x1E6965CF0];
  v50 = *MEMORY[0x1E6965D30];
  v51 = *MEMORY[0x1E6965D20];
  v52 = *MEMORY[0x1E6965D40];
  v53 = *MEMORY[0x1E6965D38];
  v54 = *MEMORY[0x1E6965D10];
  v55 = *MEMORY[0x1E6965D08];
  v56 = *MEMORY[0x1E6965D28];
  v57 = *MEMORY[0x1E69600B8];
  v58 = *MEMORY[0x1E69600A8];
  v59 = *MEMORY[0x1E69600D8];
  v60 = *MEMORY[0x1E6960098];
  v61 = *MEMORY[0x1E69600C0];
  v62 = *MEMORY[0x1E6962760];
  v63 = *MEMORY[0x1E6962768];
  v64 = *MEMORY[0x1E6962758];
  v65 = *MEMORY[0x1E6962770];
  v66 = @"avcC";
  v67 = @"d263";
  v68 = @"uuid";
  v69 = @"UUID";
  v70 = @"sinf";
  v71 = @"pinf";
  v72 = *MEMORY[0x1E69603F8];
  v73 = @"hvcC";
  v74 = *MEMORY[0x1E695FFE0];
  v75 = *MEMORY[0x1E6960318];
  v76 = *MEMORY[0x1E6960330];
  v77 = *MEMORY[0x1E6960310];
  v78 = *MEMORY[0x1E6960308];
  v79 = *MEMORY[0x1E6960300];
  v80 = *MEMORY[0x1E69602F8];
  v81 = *MEMORY[0x1E6962738];
  v82 = *MEMORY[0x1E6962730];
  v83 = *MEMORY[0x1E6962748];
  v84 = *MEMORY[0x1E6960328];
  v85 = *MEMORY[0x1E6960360];
  v86 = *MEMORY[0x1E6960320];
  v87 = *MEMORY[0x1E69606E8];
  v88 = *MEMORY[0x1E69606C8];
  v89 = *MEMORY[0x1E69606C0];
  v90 = *MEMORY[0x1E69606B8];
  v91 = *MEMORY[0x1E69606B0];
  v92 = *MEMORY[0x1E69606A8];
  v93 = *MEMORY[0x1E69606E0];
  v94 = *MEMORY[0x1E6960730];
  v95 = *MEMORY[0x1E6960720];
  v96 = *MEMORY[0x1E6960718];
  v97 = *MEMORY[0x1E6960728];
  v98 = *MEMORY[0x1E69606D8];
  v99 = *MEMORY[0x1E6960778];
  v100 = *MEMORY[0x1E6960750];
  v101 = *MEMORY[0x1E6960758];
  v102 = *MEMORY[0x1E6960768];
  v103 = *MEMORY[0x1E6960760];
  v104 = *MEMORY[0x1E69606F8];
  v105 = *MEMORY[0x1E6960710];
  v106 = *MEMORY[0x1E6960748];
  v107 = *MEMORY[0x1E69606F0];
  v108 = *MEMORY[0x1E6960708];
  v109 = *MEMORY[0x1E6960770];
  v110 = *MEMORY[0x1E6960740];
  v111 = *MEMORY[0x1E69606D0];
  v112 = v104;
  v113 = v105;
  v114 = *MEMORY[0x1E6960C40];
  v115 = *MEMORY[0x1E6960C50];
  v116 = *MEMORY[0x1E6960C48];
  v117 = *MEMORY[0x1E6960150];
  v118 = *MEMORY[0x1E6960160];
  v119 = *MEMORY[0x1E6960158];
  v120 = *MEMORY[0x1E6960148];
  v121 = *MEMORY[0x1E6960168];
  v122 = *MEMORY[0x1E6965CB8];
  v123 = *MEMORY[0x1E6965CE8];
  v124 = *MEMORY[0x1E6965EC8];
  v125 = v32;
  v126 = v36;
  v127 = v41;
  v128 = @"ColorInfoGuessedBy";
  v129 = *MEMORY[0x1E6965C60];
  v130 = *MEMORY[0x1E6965C88];
  v131 = *MEMORY[0x1E6965C80];
  v132 = @"SceneReferredExtendedLinear";
  v133 = *MEMORY[0x1E6962E30];
  v134 = *MEMORY[0x1E6960470];
  v135 = *MEMORY[0x1E6960498];
  v136 = *MEMORY[0x1E69604A0];
  v137 = *MEMORY[0x1E6960548];
  v138 = *MEMORY[0x1E6960430];
  v139 = *MEMORY[0x1E695FFF0];
  v140 = @"auxi";
  v141 = @"ccst";
  v142 = @"slmC";
  v143 = *MEMORY[0x1E69604F0];
  v144 = *MEMORY[0x1E69604C0];
  v145 = @"FECGroupID";
  v146 = @"FECLastFrameInGroup";
  v147 = @"FECLevelOfProtection";
  v148 = @"QualityMetrics";
  v149 = @"EncodedFrameAvgQP";
  v150 = @"PadByteCount";
  v151 = @"VRAWidth";
  v152 = @"VRAHeight";
  v153 = *MEMORY[0x1E6965D48];
  v154 = @"dvvC";
  v155 = @"disc";
  v156 = *MEMORY[0x1E69601C0];
  v157 = *MEMORY[0x1E69601A0];
  v158 = *MEMORY[0x1E69601B0];
  v159 = *MEMORY[0x1E69601B8];
  v160 = *MEMORY[0x1E6960190];
  v161 = *MEMORY[0x1E6960198];
  v162 = *MEMORY[0x1E69601A8];
  v163 = *MEMORY[0x1E6960438];
  v164 = *MEMORY[0x1E6960440];
  v165 = *MEMORY[0x1E6960428];
  v166 = v138;
  v167 = *MEMORY[0x1E69603E0];
  v168 = @"av1C";
  v169 = *MEMORY[0x1E6965EE8];
  v170 = *MEMORY[0x1E6965DE0];
  v171 = *MEMORY[0x1E6960420];
  v172 = @"vpcC";
  v28 = *MEMORY[0x1E695E480];
  v29 = 0;
  sVTParavirtualizationStringToKeyIndexDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 212, MEMORY[0x1E695E9D8], 0);
  do
  {
    CFDictionaryAddValue(sVTParavirtualizationStringToKeyIndexDict, values[v29], v29);
    v29 = v29 + 1;
  }

  while (v29 != 212);
  result = CFArrayCreate(v28, values, 212, MEMORY[0x1E695E9C0]);
  sVTParavirtualizationArrayOfIndexedKeys = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, const opaqueCMFormatDescription **a4, CFTypeRef *a5, CMSampleBufferRef *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
  if (IsRangeContiguous)
  {
    if (a6)
    {
      if (a4)
      {
        v16 = MEMORY[0x193AE3010](&sVTParavirtualizationInitIndexedKeysOnce, vtParavirtualizationInitializeIndexedKeys);
        if (v16 || (v16 = FigAtomStreamInitWithBBuf(), v16))
        {
          v18 = v16;
        }

        else
        {
          FigAtomStreamGetCurrentAtomTypeAndDataLength();
          VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_1(outputPresentationTimeStamp);
          v18 = outputPresentationTimeStamp[0];
        }

        goto LABEL_8;
      }

      VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_14(IsRangeContiguous, v9, v10, v11, v12, v13, v14, v15, sampleBufferOut, v20, SHIDWORD(v20), v21);
    }

    else
    {
      VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_15(IsRangeContiguous, v9, v10, v11, v12, v13, v14, v15, sampleBufferOut, v20, SHIDWORD(v20), v21);
    }

    v18 = 0;
LABEL_8:
    free(0);
    free(0);
    free(0);
    return v18;
  }

  return 4294954516;
}

CMItemCount vtParavirtualizationAtomWriterAppendNumSamples(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  result = CMSampleBufferGetNumSamples(a1);
  v3 = result;
  if (result)
  {
    return vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&v3, 4, 1853058416);
  }

  return result;
}

void vtParavirtualizationAtomWriterAppendCFType(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFArray();
  }

  else if (v6 == CFDictionaryGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFDictionary(a1, a2, a3);
  }

  else
  {
    if (v6 == CFNumberGetTypeID())
    {
      v7 = a1;
      v8 = 1852662390;
    }

    else if (v6 == CFBooleanGetTypeID())
    {
      v7 = a1;
      v8 = 1651862646;
    }

    else if (v6 == CFStringGetTypeID())
    {
      v7 = a1;
      v8 = 1937011307;
    }

    else if (v6 == CFDataGetTypeID())
    {
      v7 = a1;
      v8 = 1684108406;
    }

    else
    {
      if (v6 != CFDateGetTypeID())
      {
        if (v6 == CGColorSpaceGetTypeID())
        {

          vtParavirtualizationAtomWriterAppendCGColorSpace(a1, a3);
        }

        else if (v6 == CFURLGetTypeID())
        {

          vtParavirtualizationAtomWriterAppendCFURL(a1, a3);
        }

        else if (v6 == CMFormatDescriptionGetTypeID())
        {

          vtParavirtualizationAtomWriterAppendCMFormatDescription(a1);
        }

        else if (v6 == CFNullGetTypeID())
        {

          vtParavirtualizationAtomWriterAppendNULL();
        }

        return;
      }

      v7 = a1;
      v8 = 1685349750;
    }

    vtParavirtualizationAtomWriterAppendCFPropertyList(v7, v8, a3);
  }
}

CFPropertyListRef vtParavirtualizationAtomWriterAppendCGColorSpace(CGColorSpace *a1, uint64_t a2)
{
  result = CGColorSpaceCopyPropertyList(a1);
  if (result)
  {
    v4 = result;
    appended = vtParavirtualizationAtomWriterAppendCFPropertyList(result, 1668051571, a2);
    CFRelease(v4);
    return appended;
  }

  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL(const __CFURL *a1, uint64_t a2)
{
  v3 = CFURLCopyAbsoluteURL(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFURLGetString(v3);
    if (v5)
    {
      appended = vtParavirtualizationAtomWriterAppendCFPropertyList(v5, 1970433142, a2);
    }

    else
    {
      vtParavirtualizationAtomWriterAppendCFURL_cold_1(&v8);
      appended = v8;
    }

    CFRelease(v4);
  }

  else
  {
    vtParavirtualizationAtomWriterAppendCFURL_cold_2(&v9);
    return v9;
  }

  return appended;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary(uint64_t a1, __CFDictionary **a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (a2)
  {
    if (!Mutable)
    {
      vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_5(v9);
      return v9[0];
    }

    v5 = FigAtomStreamInitWithParent();
    if (v5)
    {
      v8 = v5;
      goto LABEL_7;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      v8 = CurrentAtomTypeAndDataLength;
      goto LABEL_6;
    }

    vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_1(v9);
  }

  else
  {
    vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_6(v9);
  }

  v8 = v9[0];
LABEL_6:
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return v8;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFType(uint64_t a1, int a2, __CFDictionary **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 1685349749)
  {
    if (a2 > 1668051570)
    {
      if (a2 == 1668051571)
      {
        if (a3)
        {
          vtParavirtualizationAtomDataReaderCopyCFType_cold_2(a1, a3, &v17, a4, a5, a6, a7, a8);
          return v17;
        }

        v12 = qword_1EAD321B8;
        v13 = v8;
        v14 = 1154;
        goto LABEL_32;
      }

      if (a2 == 1684628340)
      {

        return vtParavirtualizationAtomDataReaderCopyCFDictionary(a1, a3);
      }

      v11 = 1684108406;
      goto LABEL_30;
    }

    if (a2 == 1634886009)
    {

      return vtParavirtualizationAtomDataReaderCopyCFArray(a1, a3);
    }

    v11 = 1651862646;
LABEL_30:
    if (a2 != v11)
    {
      v12 = qword_1EAD321B8;
      v13 = v8;
      v14 = 1255;
LABEL_32:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954394, "<<<< VTParavirtualizationSampleBufferSerialization >>>>", v14, v13);
    }

    goto LABEL_35;
  }

  if (a2 > 1853189227)
  {
    if (a2 == 1853189228)
    {
      v15 = CFRetain(*MEMORY[0x1E695E738]);
      result = 0;
      *a3 = v15;
      return result;
    }

    if (a2 == 1970433142)
    {
      if (a3)
      {
        vtParavirtualizationAtomDataReaderCopyCFType_cold_1(a1, a3, &v16, a4, a5, a6, a7, a8);
        return v16;
      }

      v12 = qword_1EAD321B8;
      v13 = v8;
      v14 = 1180;
      goto LABEL_32;
    }

    v11 = 1937011307;
    goto LABEL_30;
  }

  if (a2 == 1685349750)
  {
LABEL_35:

    return vtParavirtualizationAtomDataReaderCopyCFPropertyList(a1, a3);
  }

  if (a2 != 1717859171)
  {
    v11 = 1852662390;
    goto LABEL_30;
  }

  return vtParavirtualizationAtomDataReaderCopyCMFormatDescription(a1, a3);
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFArray(uint64_t a1, __CFArray **a2)
{
  if (a2)
  {
    v4 = FigAtomStreamInitWithParent();
    if (v4)
    {
      return v4;
    }

    while (1)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        break;
      }

      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom == -12890)
      {
        v7 = 0;
        *a2 = 0;
        return v7;
      }

      v7 = Atom;
      if (Atom)
      {
        return v7;
      }
    }

    return CurrentAtomTypeAndDataLength;
  }

  else
  {
    v9 = qword_1EAD321B8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954394, "<<<< VTParavirtualizationSampleBufferSerialization >>>>", 1271, v2);
  }
}

void *__getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 0x40000000;
    v5[3] = __MediaToolboxLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_69;
    v5[5] = v5;
    v6 = xmmword_1E72C8390;
    v7 = 0;
    MediaToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaToolboxLibraryCore_frameworkLibrary;
    if (MediaToolboxLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaToolboxLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "FigCPECryptorCreateCryptorFromSerializedRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{

  return FigAtomWriterInitWithParent();
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return vtParavirtualizationAtomDataReaderCopyCFPropertyList(a1, &a10);
}

uint64_t VTIsBackgroundRunningSupportedForClientPID(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VTIsBackgroundRunningSupportedForClientPID_onceToken != -1)
  {
    VTIsBackgroundRunningSupportedForClientPID_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_19:
    VTIsBackgroundRunningSupportedForClientPID_cold_2();
    return 0;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_3:
  gotLoadHelper_x8___DASContinuedProcessingTaskAssertionTag(a2);
  v4 = **(v3 + 1328);
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
  v7 = [MEMORY[0x1E69C75D0] handleForIdentifier:v6 error:0];
  if (!v7 || (v15 = 0u, v16 = 0u, v17 = 0u, v18 = 0u, v8 = [objc_msgSend(v7 "currentState")], (v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v15, v19, 16)) == 0))
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v10 = v9;
  v11 = *v16;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v15 + 1) + 8 * i) isEqualToString:v4])
      {
        v13 = 1;
        goto LABEL_16;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v13 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v5);
  return v13;
}

void VTPixelRotationSessionInvalidate(VTPixelRotationSessionRef session)
{
  if (session)
  {
    if (!*(session + 16))
    {
      *(session + 16) = 1;
    }
  }
}

uint64_t RegisterVTPixelRotationSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTPixelRotationSessionID = v0;
  sVTPixelRotationSessionPropertyCallbacks = 0;
  *algn_1ED6D4108 = VTPixelRotationSessionCopySupportedPropertyDictionary;
  qword_1ED6D4110 = VTPixelRotationSessionSetProperty;
  qword_1ED6D4118 = VTPixelRotationSessionCopyProperty;
  qword_1ED6D4120 = VTPixelRotationSessionSetProperties;
  qword_1ED6D4128 = VTPixelRotationSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTPixelRotationSessionPropertyCallbacks, v0);
}

uint64_t VTPixelRotationSessionCreateWithRotationAndFlip(uint64_t a1, int a2, char a3, char a4, uint64_t *a5)
{
  FigKTraceInit();
  if (a2 > 179)
  {
    if (a2 != 180 && a2 != 270)
    {
      goto LABEL_14;
    }
  }

  else if (a2 && a2 != 90)
  {
LABEL_14:
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 4294954382;
    v17 = 1584;
    goto LABEL_16;
  }

  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 4294954394;
    v17 = 1587;
LABEL_16:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v16, "<<<< VTPixelRotationSession >>>>", v17, v15);
  }

  MEMORY[0x193AE3010](&VTPixelRotationSessionGetTypeID_sRegisterVTPixelRotationSessionOnce, RegisterVTPixelRotationSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    emitter = fig_log_get_emitter();
    v15 = v5;
    v16 = 4294954392;
    v17 = 1591;
    goto LABEL_16;
  }

  v12 = Instance;
  MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce, ReadGlobalVTMTSProperties);
  *(v12 + 40) = 0;
  *(v12 + 52) = a2;
  *(v12 + 56) = a3;
  *(v12 + 57) = a4;
  *(v12 + 32) = 0;
  *(v12 + 135) = globalEnableHardwareAcceleratedTransfer;
  *(v12 + 133) = globalEnableGPUAcceleratedTransfer;
  *(v12 + 134) = 0;
  *(v12 + 132) = globalEnableSoftwareTransfer;
  *(v12 + 129) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = 0;
  if (globalUsePixelTransferChain == 1)
  {
    VTPixelTransferChainCreate(a1, 0, (v12 + 40));
  }

  *(v12 + 48) = globalUsePixelTransferGraph;
  *(v12 + 49) = globalAllowFallbacks;
  *(v12 + 232) = 0;
  *(v12 + 152) = 0;
  *(v12 + 144) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = VTCelesteRotationNodeCreate((v12 + 224));
  if (v13)
  {
    CFRelease(v12);
  }

  else
  {
    *(v12 + 276) = 0;
    *(v12 + 268) = 0;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v20 = vnegq_f64(v19);
    *(v12 + 252) = v20;
    *(v12 + 324) = 0;
    *(v12 + 316) = 0;
    *(v12 + 300) = v20;
    *a5 = v12;
  }

  return v13;
}

void ReadGlobalVTMTSProperties()
{
  globalEnableHardwareAcceleratedTransfer = 1;
  globalEnableGPUAcceleratedTransfer = 1;
  globalEnableSoftwareTransfer = 1;
  globalUsePixelTransferChain = 1;
  globalUsePixelTransferGraph = 1;
  globalAllowFallbacks = 1;
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  *a2 = 0;
  if (!*(a1 + 16))
  {
    keys = @"PropertyType";
    v23 = @"ReadWriteStatus";
    values = @"Boolean";
    v15 = @"ReadWrite";
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v7)
    {
      v8 = v7;
      keys = @"PropertyType";
      v23 = @"ReadWriteStatus";
      values = @"Boolean";
      v15 = @"ReadOnly";
      v9 = CFDictionaryCreate(v6, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v9)
      {
        v10 = v9;
        v23 = @"FlipVerticalOrientation";
        values = v8;
        v15 = v8;
        *&v24 = @"Rotation";
        *&v16 = v8;
        *(&v16 + 1) = v9;
        *(&v24 + 1) = @"ScalingSupported";
        *&v25 = @"NonIntegralSourceBoundingOriginSupported";
        *&v17 = v9;
        *(&v17 + 1) = v8;
        *(&v25 + 1) = @"ForceDisableVectorInstructions";
        *&v26 = @"ForceSingleThreaded";
        *&v18 = v8;
        *(&v18 + 1) = v8;
        *(&v26 + 1) = @"EnableSoftwareTransfer";
        *&v27 = @"AllowPixelTransferChain";
        *&v19 = v8;
        *(&v19 + 1) = v8;
        *(&v27 + 1) = @"AllowPixelTransferGraph";
        *&v28 = @"EnableGPUAcceleratedTransfer";
        *&v20 = v8;
        *(&v20 + 1) = v8;
        *(&v28 + 1) = @"SetGPUPriorityLow";
        v29 = @"EnableHardwareAcceleratedTransfer";
        v30 = @"Label";
        v21 = v8;
        keys = v8;
        v11 = CFDictionaryCreate(v6, &keys, &values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v11)
        {
          v12 = 0;
          *a2 = v11;
        }

        else
        {
          VTPixelRotationSessionCopySupportedPropertyDictionary_cold_1(&v13);
          v12 = v13;
        }

        CFRelease(v8);
        CFRelease(v10);
        return v12;
      }

      VTPixelRotationSessionCopySupportedPropertyDictionary_cold_2(v8, &v13);
    }

    else
    {
      VTPixelRotationSessionCopySupportedPropertyDictionary_cold_3(&v13);
    }

    return v13;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VTPixelRotationSession >>>>", 1695, v2);
}

uint64_t VTPixelRotationSessionSetProperty(uint64_t a1, __CFString *a2, const __CFBoolean *a3)
{
  v139 = *MEMORY[0x1E69E9840];
  v137 = 0;
  if (!*(a1 + 16))
  {
    if (FigAtomicIncrement32() != 1)
    {
      HIBYTE(v136) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap();
    }

    VTMetalTransferSessionCopySupportedPropertyDictionary(*(a1 + 136), &v137);
    if (CFEqual(a2, @"FlipHorizontalOrientation"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v12 = *(a1 + 56);
        if (v12 != CFBooleanGetValue(a3))
        {
          x_low = 0;
          *(a1 + 56) = CFBooleanGetValue(a3);
LABEL_33:
          *(a1 + 32) = 0;
          goto LABEL_34;
        }

        goto LABEL_24;
      }

      emitter = fig_log_get_emitter();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTPixelRotationSession >>>>", 1839, v3);
LABEL_31:
      x_low = v18;
      goto LABEL_34;
    }

    if (CFEqual(a2, @"FlipVerticalOrientation"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v15 = CFBooleanGetTypeID();
      if (v15 == CFGetTypeID(a3))
      {
        v16 = *(a1 + 57);
        if (v16 != CFBooleanGetValue(a3))
        {
          x_low = 0;
          *(a1 + 57) = CFBooleanGetValue(a3);
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v22 = fig_log_get_emitter();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954394, "<<<< VTPixelRotationSession >>>>", 1853, v3);
      goto LABEL_31;
    }

    if (CFEqual(a2, @"Rotation"))
    {
      VTPixelRotationSessionSetProperty_cold_1(a1, a3, cf);
      x_low = LODWORD(cf[0].origin.x);
      goto LABEL_34;
    }

    v19 = @"RotationEnableHighSpeedTransfer";
    if (CFEqual(a2, @"RotationEnableHighSpeedTransfer"))
    {
      v20 = *(a1 + 224);
      if (!v20)
      {
        v21 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954394, "<<<< VTPixelRotationSession >>>>", 1881, v3);
        goto LABEL_31;
      }

LABEL_44:
      v18 = VTPixelTransferNodeCelesteRotationSetProperty(v20, v19, a3);
      goto LABEL_31;
    }

    v19 = @"RotationZeroFillData";
    if (CFEqual(a2, @"RotationZeroFillData"))
    {
      v20 = *(a1 + 224);
      if (!v20)
      {
        v23 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954394, "<<<< VTPixelRotationSession >>>>", 1890, v3);
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    v19 = @"RotationEnableHistogram";
    if (CFEqual(a2, @"RotationEnableHistogram"))
    {
      v20 = *(a1 + 224);
      if (!v20)
      {
        v24 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954394, "<<<< VTPixelRotationSession >>>>", 1899, v3);
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    v19 = @"RotationHistogramRectangle";
    if (CFEqual(a2, @"RotationHistogramRectangle"))
    {
      v20 = *(a1 + 224);
      if (!v20)
      {
        v27 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 4294954394, "<<<< VTPixelRotationSession >>>>", 1907, v3);
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v25 = CFGetTypeID(a3);
        if (v25 != CFStringGetTypeID())
        {
          v30 = fig_log_get_emitter();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954394, "<<<< VTPixelRotationSession >>>>", 1923, v3);
          goto LABEL_31;
        }
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 104);
        *(a1 + 104) = a3;
        if (!a3)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v28 = CFGetTypeID(a3);
        if (v28 != CFStringGetTypeID())
        {
          v34 = fig_log_get_emitter();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954394, "<<<< VTPixelRotationSession >>>>", 1938, v3);
          goto LABEL_31;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_24;
      }

      v26 = *(a1 + 112);
      *(a1 + 112) = a3;
      if (!a3)
      {
LABEL_62:
        if (!v26)
        {
LABEL_65:
          x_low = 0;
          goto LABEL_33;
        }

        v29 = v26;
LABEL_64:
        CFRelease(v29);
        goto LABEL_65;
      }

LABEL_61:
      CFRetain(a3);
      goto LABEL_62;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        v31 = CFGetTypeID(a3);
        if (v31 != CFDataGetTypeID())
        {
          v36 = fig_log_get_emitter();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, 4294954394, "<<<< VTPixelRotationSession >>>>", 1953, v3);
          goto LABEL_31;
        }
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        v32 = 0;
      }

      else
      {
        v32 = a3;
      }

      if (!FigCFEqual())
      {
        v33 = *(a1 + 88);
        *(a1 + 88) = v32;
        if (v32)
        {
          CFRetain(v32);
        }

        if (!v33)
        {
          goto LABEL_65;
        }

        v29 = v33;
        goto LABEL_64;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v35 = CFGetTypeID(a3);
        if (v35 != CFStringGetTypeID())
        {
          v40 = fig_log_get_emitter();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294954394, "<<<< VTPixelRotationSession >>>>", 1968, v3);
          goto LABEL_31;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_24;
      }

      v26 = *(a1 + 96);
      *(a1 + 96) = a3;
      if (!a3)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v38 = CFBooleanGetTypeID();
      if (v38 != CFGetTypeID(a3))
      {
        v43 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 4294954394, "<<<< VTPixelRotationSession >>>>", 1983, v3);
        goto LABEL_31;
      }

      v39 = *(a1 + 129);
      if (v39 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 129) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if ((!a3 || *MEMORY[0x1E695E738] == a3) && (a3 = *MEMORY[0x1E695E4C0]) == 0 || (v41 = CFBooleanGetTypeID(), v41 != CFGetTypeID(a3)))
      {
        v47 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 4294954394, "<<<< VTPixelRotationSession >>>>", 1997, v3);
        goto LABEL_31;
      }

      v42 = *(a1 + 130);
      if (v42 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 130) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if ((!a3 || *MEMORY[0x1E695E738] == a3) && (!globalEnableSoftwareTransfer ? (v44 = MEMORY[0x1E695E4C0]) : (v44 = MEMORY[0x1E695E4D0]), (a3 = *v44) == 0) || (v45 = CFBooleanGetTypeID(), v45 != CFGetTypeID(a3)))
      {
        v55 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 4294954394, "<<<< VTPixelRotationSession >>>>", 2011, v3);
        goto LABEL_31;
      }

      v46 = *(a1 + 132);
      if (v46 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 132) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalUsePixelTransferChain)
      {
        v48 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v48 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v48;
      }

      v50 = CFBooleanGetTypeID();
      if (v50 != CFGetTypeID(a3))
      {
        v60 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 4294954394, "<<<< VTPixelRotationSession >>>>", 2028, v3);
        goto LABEL_31;
      }

      v51 = (a1 + 40);
      if (!*(a1 + 40))
      {
        goto LABEL_349;
      }

      Value = CFBooleanGetValue(a3);
      v53 = *v51;
      if (!Value)
      {
        if (v53)
        {
          CFRelease(v53);
          *v51 = 0;
        }

        goto LABEL_65;
      }

      if (!v53)
      {
LABEL_349:
        if (CFBooleanGetValue(a3))
        {
          v54 = CFGetAllocator(a1);
          VTPixelTransferChainCreate(v54, 0, (a1 + 40));
          goto LABEL_65;
        }
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalUsePixelTransferGraph)
      {
        v56 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v56 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v56;
      }

      v58 = CFBooleanGetTypeID();
      if (v58 != CFGetTypeID(a3))
      {
        v65 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, 4294954394, "<<<< VTPixelRotationSession >>>>", 2043, v3);
        goto LABEL_31;
      }

      v59 = CFBooleanGetValue(a3);
      if (v59 != *(a1 + 48))
      {
        x_low = 0;
        *(a1 + 48) = v59;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalEnableGPUAcceleratedTransfer)
      {
        v61 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v61 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v61;
      }

      v63 = CFBooleanGetTypeID();
      if (v63 != CFGetTypeID(a3))
      {
        v69 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, 4294954394, "<<<< VTPixelRotationSession >>>>", 2059, v3);
        goto LABEL_31;
      }

      v64 = *(a1 + 133);
      if (v64 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 133) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v67 = CFBooleanGetTypeID();
      if (v67 != CFGetTypeID(a3))
      {
        v74 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, 4294954394, "<<<< VTPixelRotationSession >>>>", 2073, v3);
        goto LABEL_31;
      }

      v68 = *(a1 + 134);
      if (v68 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 134) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalEnableHardwareAcceleratedTransfer)
      {
        v70 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v70 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v70;
      }

      v72 = CFBooleanGetTypeID();
      if (v72 != CFGetTypeID(a3))
      {
        v77 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 4294954394, "<<<< VTPixelRotationSession >>>>", 2089, v3);
        goto LABEL_31;
      }

      v73 = *(a1 + 135);
      if (v73 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 135) = CFBooleanGetValue(a3);
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"PQEOTFOpticalScale"))
    {
      v75 = *(a1 + 136);
      if (v75)
      {
        v18 = VTSessionSetProperty(v75, a2, a3);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v80 = *(a1 + 176);
        if (v80)
        {
          CFRelease(v80);
          x_low = 0;
          *(a1 + 176) = 0;
          goto LABEL_34;
        }

        goto LABEL_24;
      }

      v76 = CFGetTypeID(a3);
      if (v76 != CFNumberGetTypeID())
      {
        v81 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 4294954394, "<<<< VTPixelRotationSession >>>>", 2112, v3);
        goto LABEL_31;
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 176);
        *(a1 + 176) = a3;
        goto LABEL_61;
      }

LABEL_24:
      x_low = 0;
LABEL_34:
      FigAtomicDecrement32();
      return x_low;
    }

    if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
    {
      v78 = *(a1 + 136);
      if (v78)
      {
        v18 = VTSessionSetProperty(v78, a2, a3);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v84 = *(a1 + 184);
        if (v84)
        {
          CFRelease(v84);
          x_low = 0;
          *(a1 + 184) = 0;
          goto LABEL_34;
        }

        goto LABEL_24;
      }

      v79 = CFGetTypeID(a3);
      if (v79 != CFNumberGetTypeID())
      {
        v85 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, 4294954394, "<<<< VTPixelRotationSession >>>>", 2135, v3);
        goto LABEL_31;
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 184);
        *(a1 + 184) = a3;
        goto LABEL_61;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"HLGOETFOpticalScale"))
    {
      v82 = *(a1 + 136);
      if (v82)
      {
        v18 = VTSessionSetProperty(v82, a2, a3);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v88 = *(a1 + 192);
        if (v88)
        {
          CFRelease(v88);
          x_low = 0;
          *(a1 + 192) = 0;
          goto LABEL_34;
        }

        goto LABEL_24;
      }

      v83 = CFGetTypeID(a3);
      if (v83 != CFNumberGetTypeID())
      {
        v89 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, 4294954394, "<<<< VTPixelRotationSession >>>>", 2158, v3);
        goto LABEL_31;
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 192);
        *(a1 + 192) = a3;
        goto LABEL_61;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
    {
      v86 = *(a1 + 136);
      if (v86)
      {
        v18 = VTSessionSetProperty(v86, a2, a3);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v93 = *(a1 + 200);
        if (v93)
        {
          CFRelease(v93);
          x_low = 0;
          *(a1 + 200) = 0;
          goto LABEL_34;
        }

        goto LABEL_24;
      }

      v87 = CFGetTypeID(a3);
      if (v87 != CFNumberGetTypeID())
      {
        v94 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, 4294954394, "<<<< VTPixelRotationSession >>>>", 2181, v3);
        goto LABEL_31;
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 200);
        *(a1 + 200) = a3;
        goto LABEL_61;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DisableDither"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      if (!a3 || (v91 = CFBooleanGetTypeID(), v91 != CFGetTypeID(a3)))
      {
        v95 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, 4294954394, "<<<< VTPixelRotationSession >>>>", 2197, v3);
        goto LABEL_31;
      }

      v92 = CFBooleanGetValue(a3);
      if (v92 != *(a1 + 208))
      {
        x_low = 0;
        *(a1 + 208) = v92;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"vImageFlags"))
    {
      v18 = 0;
      UInt64 = 0;
      if (a3 && *MEMORY[0x1E695E738] != a3)
      {
        UInt64 = *(a1 + 216);
        v97 = CFNumberGetTypeID();
        if (v97 == CFGetTypeID(a3))
        {
          UInt64 = FigCFNumberGetUInt64();
          v18 = 0;
        }

        else
        {
          fig_log_get_emitter();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v134, v135, v136);
        }
      }

      if (UInt64 != *(a1 + 216))
      {
        *(a1 + 216) = UInt64;
        *(a1 + 32) = 0;
      }

      goto LABEL_31;
    }

    if (CFEqual(a2, @"AllowFallbacks"))
    {
      if ((!a3 || *MEMORY[0x1E695E738] == a3) && (!globalAllowFallbacks ? (v98 = MEMORY[0x1E695E4C0]) : (v98 = MEMORY[0x1E695E4D0]), (a3 = *v98) == 0) || (v99 = CFBooleanGetTypeID(), v99 != CFGetTypeID(a3)))
      {
        v106 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, 4294954394, "<<<< VTPixelRotationSession >>>>", 2229, v3);
        goto LABEL_31;
      }

      v100 = CFBooleanGetValue(a3);
      if (v100 != *(a1 + 49))
      {
        x_low = 0;
        *(a1 + 49) = v100;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      if (!a3 || (v102 = CFGetTypeID(a3), v102 != CFBooleanGetTypeID()))
      {
        v107 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v107, 4294954394, "<<<< VTPixelRotationSession >>>>", 2256, v3);
        goto LABEL_31;
      }

      v103 = CFBooleanGetValue(a3);
      if (v103 != *(a1 + 234))
      {
        v104 = v103;
        IOSurfaceAcceleratorCapabilityFractionalDimensions = FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions();
        if (v104 && !IOSurfaceAcceleratorCapabilityFractionalDimensions)
        {
          x_low = 4294954394;
          goto LABEL_34;
        }

        *(a1 + 234) = v104;
        v112 = *(a1 + 224);
        if (v112)
        {
          x_low = VTPixelTransferNodeCelesteRotationSetProperty(v112, @"ReducedPrecisionFractionalOffsets", a3);
          goto LABEL_33;
        }

        goto LABEL_65;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
    {
      if ((!a3 || FigCFEqual()) && (a3 = *MEMORY[0x1E695E4C0]) == 0 || (v108 = CFBooleanGetTypeID(), v108 != CFGetTypeID(a3)))
      {
        v110 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v110, 4294954394, "<<<< VTPixelRotationSession >>>>", 2276, v3);
        goto LABEL_31;
      }

      *(a1 + 232) = CFBooleanGetValue(a3);
      v109 = *(a1 + 136);
      if (v109)
      {
        v18 = VTSessionSetProperty(v109, a2, a3);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_284;
    }

    if (!FigCFEqual() && !FigCFEqual())
    {
      if (CFEqual(a2, @"Label"))
      {
        if (a3 && !FigCFEqual())
        {
          v113 = CFGetTypeID(a3);
          if (v113 != CFStringGetTypeID())
          {
            v118 = fig_log_get_emitter();
            v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, 4294954394, "<<<< VTPixelRotationSession >>>>", 2307, v3);
            goto LABEL_31;
          }

          v114 = *(a1 + 24);
          *(a1 + 24) = a3;
          CFRetain(a3);
          if (v114)
          {
            CFRelease(v114);
          }
        }

        else
        {
          v111 = *(a1 + 24);
          if (v111)
          {
            CFRelease(v111);
            *(a1 + 24) = 0;
          }
        }

LABEL_284:
        VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
        goto LABEL_24;
      }

      if (CFEqual(a2, @"DownsamplingMode"))
      {
        if (!a3 || FigCFEqual())
        {
          goto LABEL_290;
        }

        if (FigCFEqual())
        {
          x_low = 0;
          *(a1 + 131) = 1;
          goto LABEL_34;
        }

        if (FigCFEqual())
        {
LABEL_290:
          x_low = 0;
          *(a1 + 131) = 0;
          goto LABEL_34;
        }

        v121 = fig_log_get_emitter();
        v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, 4294954394, "<<<< VTPixelRotationSession >>>>", 2324, v3);
        goto LABEL_31;
      }

      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        if (FigCFEqual())
        {
          IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
          v116 = *MEMORY[0x1E695E738];
          if (a3 && !IsTypeOfDispatchQueue && v116 != a3)
          {
            v117 = fig_log_get_emitter();
            v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, 4294954394, "<<<< VTPixelRotationSession >>>>", 2479, v3);
            goto LABEL_31;
          }
        }

        else
        {
          if (!FigCFEqual())
          {
            if (CFEqual(a2, @"SourceCropRectangle"))
            {
              if (!a3)
              {
                x_low = 0;
                *(a1 + 276) = 0;
                *(a1 + 268) = 0;
                v128.f64[0] = NAN;
                v128.f64[1] = NAN;
                *(a1 + 252) = vnegq_f64(v128);
                goto LABEL_34;
              }

              if (!FigCFEqual())
              {
                v124 = CFGetTypeID(a3);
                if (v124 != CFDictionaryGetTypeID())
                {
                  v130 = fig_log_get_emitter();
                  v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v130, 4294954394, "<<<< VTPixelRotationSession >>>>", 2547, v3);
                  goto LABEL_31;
                }
              }

              *(a1 + 268) = 0;
              *(a1 + 276) = 0;
              v125.f64[0] = NAN;
              v125.f64[1] = NAN;
              *(a1 + 252) = vnegq_f64(v125);
              if (!FigCFEqual())
              {
                memset(cf, 0, 32);
                if (CGRectMakeWithDictionaryRepresentation(a3, cf))
                {
                  cf[0] = CGRectStandardize(cf[0]);
                  v141 = CGRectIntegral(cf[0]);
                  x_low = 0;
                  *(a1 + 268) = v141.origin.x;
                  *(a1 + 276) = v141.origin.y;
                  *(a1 + 252) = v141.size.width;
                  *(a1 + 260) = v141.size.height;
                  goto LABEL_34;
                }

                v131 = fig_log_get_emitter();
                v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v131, 4294954394, "<<<< VTPixelRotationSession >>>>", 2538, v3);
                goto LABEL_31;
              }
            }

            else
            {
              if (!CFEqual(a2, @"DestinationRectangle"))
              {
                x_low = 4294954396;
                goto LABEL_34;
              }

              if (!a3)
              {
                x_low = 0;
                *(a1 + 324) = 0;
                *(a1 + 316) = 0;
                v129.f64[0] = NAN;
                v129.f64[1] = NAN;
                *(a1 + 300) = vnegq_f64(v129);
                goto LABEL_34;
              }

              if (!FigCFEqual())
              {
                v126 = CFGetTypeID(a3);
                if (v126 != CFDictionaryGetTypeID())
                {
                  v132 = fig_log_get_emitter();
                  v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, 4294954394, "<<<< VTPixelRotationSession >>>>", 2585, v3);
                  goto LABEL_31;
                }
              }

              *(a1 + 316) = 0;
              *(a1 + 324) = 0;
              v127.f64[0] = NAN;
              v127.f64[1] = NAN;
              *(a1 + 300) = vnegq_f64(v127);
              if (!FigCFEqual())
              {
                memset(cf, 0, 32);
                if (CGRectMakeWithDictionaryRepresentation(a3, cf))
                {
                  cf[0] = CGRectStandardize(cf[0]);
                  v142 = CGRectIntegral(cf[0]);
                  x_low = 0;
                  *(a1 + 316) = v142.origin.x;
                  *(a1 + 324) = v142.origin.y;
                  *(a1 + 300) = v142.size.width;
                  *(a1 + 308) = v142.size.height;
                  goto LABEL_34;
                }

                v133 = fig_log_get_emitter();
                v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, 4294954394, "<<<< VTPixelRotationSession >>>>", 2576, v3);
                goto LABEL_31;
              }
            }

            goto LABEL_24;
          }

          v119 = FigIsTypeOfDispatchQueue();
          v116 = *MEMORY[0x1E695E738];
          if (a3 && !v119 && v116 != a3)
          {
            v120 = fig_log_get_emitter();
            v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, 4294954394, "<<<< VTPixelRotationSession >>>>", 2506, v3);
            goto LABEL_31;
          }
        }

        cf[0].origin.x = 0.0;
        VTPixelRotationSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], cf);
        if (!FigCFEqual())
        {
          v122 = *(a1 + 136);
          if (v122)
          {
            v18 = VTSessionSetProperty(v122, a2, a3);
            if (v18)
            {
              goto LABEL_31;
            }
          }

          v123 = *(a1 + 144);
          if (v123)
          {
            if (!a3 || v116 == a3)
            {
              CFDictionaryRemoveValue(v123, a2);
            }

            else
            {
              CFDictionarySetValue(v123, a2, a3);
            }
          }
        }

        if (*&cf[0].origin.x)
        {
          CFRelease(*&cf[0].origin.x);
        }

        goto LABEL_24;
      }
    }

    v18 = VTPixelRotationSessionSetMetalProperty(a1, a2, a3, *(a1 + 136), *(a1 + 144));
    goto LABEL_31;
  }

  v4 = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954393, "<<<< VTPixelRotationSession >>>>", 1818, v3);
}

void VTPRS_AddOrRemoveFromDictionary(CFMutableDictionaryRef theDict, void *key, const void *a3)
{
  if (theDict)
  {
    if (a3 && !FigCFEqual())
    {

      CFDictionarySetValue(theDict, key, a3);
    }

    else
    {

      CFDictionaryRemoveValue(theDict, key);
    }
  }
}

uint64_t VTPixelRotationSessionCopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (!*(a1 + 16))
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap();
    }

    if (CFEqual(a2, @"FlipHorizontalOrientation"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = *(a1 + 56);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"FlipVerticalOrientation"))
    {
      v12 = MEMORY[0x1E695E4D0];
      v13 = *(a1 + 57);
LABEL_11:
      if (!v13)
      {
        v12 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"Rotation"))
    {
      v16 = *(a1 + 52);
      if (v16 > 179)
      {
        if (v16 == 180)
        {
          v12 = &kVTRotation_180;
          goto LABEL_13;
        }

        if (v16 == 270)
        {
          v12 = &kVTRotation_CCW90;
          goto LABEL_13;
        }
      }

      else
      {
        if (!v16)
        {
          v12 = &kVTRotation_0;
          goto LABEL_13;
        }

        if (v16 == 90)
        {
          v12 = &kVTRotation_CW90;
LABEL_13:
          UInt64 = *v12;
LABEL_14:
          UInt64 = CFRetain(UInt64);
LABEL_15:
          v15 = 0;
          *a4 = UInt64;
LABEL_16:
          FigAtomicDecrement32();
          return v15;
        }
      }

      emitter = fig_log_get_emitter();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954382, "<<<< VTPixelRotationSession >>>>", 2632, v4);
LABEL_30:
      v15 = v19;
      goto LABEL_16;
    }

    v17 = @"ScalingSupported";
    if (CFEqual(a2, @"ScalingSupported") || (v17 = @"NonIntegralSourceBoundingOriginSupported", CFEqual(a2, @"NonIntegralSourceBoundingOriginSupported")))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v12 = MEMORY[0x1E695E4C0];
        goto LABEL_13;
      }

LABEL_25:
      v19 = VTPixelTransferNodeCelesteRotationCopyProperty(v18, v17, *MEMORY[0x1E695E480], a4);
      goto LABEL_30;
    }

    v17 = @"RotationEnableHighSpeedTransfer";
    if (CFEqual(a2, @"RotationEnableHighSpeedTransfer"))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v21 = fig_log_get_emitter();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954394, "<<<< VTPixelRotationSession >>>>", 2659, v4);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v17 = @"RotationZeroFillData";
    if (CFEqual(a2, @"RotationZeroFillData"))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v22 = fig_log_get_emitter();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954394, "<<<< VTPixelRotationSession >>>>", 2666, v4);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v17 = @"RotationEnableHistogram";
    if (CFEqual(a2, @"RotationEnableHistogram"))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v23 = fig_log_get_emitter();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954394, "<<<< VTPixelRotationSession >>>>", 2673, v4);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v17 = @"RotationHistogramData";
    if (CFEqual(a2, @"RotationHistogramData"))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v24 = fig_log_get_emitter();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954394, "<<<< VTPixelRotationSession >>>>", 2681, v4);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v17 = @"RotationHistogramRectangle";
    if (CFEqual(a2, @"RotationHistogramRectangle"))
    {
      v18 = *(a1 + 224);
      if (!v18)
      {
        v25 = fig_log_get_emitter();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954394, "<<<< VTPixelRotationSession >>>>", 2689, v4);
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 104);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 112);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 88);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 96);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, @"ForceDisableVectorInstructions"))
    {
      v26 = MEMORY[0x1E695E4D0];
      v27 = *(a1 + 129);
    }

    else if (CFEqual(a2, @"ForceSingleThreaded"))
    {
      v26 = MEMORY[0x1E695E4D0];
      v27 = *(a1 + 130);
    }

    else if (CFEqual(a2, @"EnableSoftwareTransfer"))
    {
      v26 = MEMORY[0x1E695E4D0];
      v27 = *(a1 + 132);
    }

    else
    {
      if (CFEqual(a2, @"AllowPixelTransferChain"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v28 = MEMORY[0x1E695E4C0];
        v29 = *(a1 + 40) == 0;
LABEL_68:
        if (v29)
        {
          v26 = v28;
        }

        goto LABEL_70;
      }

      if (CFEqual(a2, @"AllowPixelTransferGraph"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v27 = *(a1 + 48);
      }

      else if (CFEqual(a2, @"EnableGPUAcceleratedTransfer"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v27 = *(a1 + 133);
      }

      else if (CFEqual(a2, @"SetGPUPriorityLow"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v27 = *(a1 + 134);
      }

      else if (CFEqual(a2, @"EnableHardwareAcceleratedTransfer"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v27 = *(a1 + 135);
      }

      else
      {
        if (CFEqual(a2, @"PQEOTFOpticalScale"))
        {
          UInt64 = *(a1 + 176);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
        {
          UInt64 = *(a1 + 184);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"HLGOETFOpticalScale"))
        {
          UInt64 = *(a1 + 192);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
        {
          UInt64 = *(a1 + 200);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"DisableDither"))
        {
          v26 = MEMORY[0x1E695E4D0];
          v27 = *(a1 + 208);
        }

        else
        {
          if (CFEqual(a2, @"vImageFlags"))
          {
            if (!*(a1 + 216))
            {
              v15 = 0;
              *a4 = 0;
              goto LABEL_16;
            }

            UInt64 = FigCFNumberCreateUInt64();
            goto LABEL_15;
          }

          if (CFEqual(a2, @"AllowFallbacks"))
          {
            v26 = MEMORY[0x1E695E4D0];
            v27 = *(a1 + 49);
          }

          else if (CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
          {
            v26 = MEMORY[0x1E695E4D0];
            v27 = *(a1 + 234);
          }

          else
          {
            if (CFEqual(a2, @"HardwareSupportsFractionalDimensions"))
            {
              IOSurfaceAcceleratorCapabilityFractionalDimensions = FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions();
              v26 = MEMORY[0x1E695E4D0];
              if (!IOSurfaceAcceleratorCapabilityFractionalDimensions)
              {
                v26 = MEMORY[0x1E695E4C0];
              }

LABEL_70:
              UInt64 = *v26;
              if (!*v26)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }

            if (!CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
            {
              if (!FigCFEqual() && !FigCFEqual())
              {
                if (CFEqual(a2, @"Label"))
                {
                  UInt64 = *(a1 + 24);
                  if (!UInt64)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_14;
                }

                if (CFEqual(a2, @"DownsamplingMode"))
                {
                  if (*(a1 + 131))
                  {
                    v26 = &kVTDownsamplingMode_Average;
                  }

                  else
                  {
                    v26 = &kVTDownsamplingMode_Decimate;
                  }

                  goto LABEL_70;
                }

                if (FigCFEqual())
                {
                  v31 = VTGetOnePassScalingPropertyValue(*(a1 + 136), *(a1 + 144));
                  v15 = 0;
                  v32 = MEMORY[0x1E695E4D0];
                  if (!v31)
                  {
                    v32 = MEMORY[0x1E695E4C0];
                  }

                  *a4 = *v32;
                  goto LABEL_16;
                }

                if (FigCFEqual() || FigCFEqual())
                {
                  v33 = *(a1 + 136);
                  if (!v33)
                  {
                    v34 = *(a1 + 144);
                    if (!v34)
                    {
                      v15 = 4294954394;
                      goto LABEL_16;
                    }

                    UInt64 = CFDictionaryGetValue(v34, a2);
                    if (!UInt64)
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_14;
                  }

                  v19 = VTSessionCopyProperty(v33, a2, a3, a4);
                  goto LABEL_30;
                }

                if (CFEqual(a2, @"MostRecentChainDescription"))
                {
                  UInt64 = *(a1 + 40);
                  if (UInt64)
                  {
                    UInt64 = VTPixelTransferChainCopyDescriptionChain(UInt64);
                  }

                  goto LABEL_15;
                }

                if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
                {
                  v15 = 4294954396;
                  goto LABEL_16;
                }
              }

              v19 = VTPixelRotationSessionCopyMetalProperty(a2, *MEMORY[0x1E695E480], *(a1 + 136), *(a1 + 144), a4);
              goto LABEL_30;
            }

            v26 = MEMORY[0x1E695E4D0];
            v27 = *(a1 + 232);
          }
        }
      }
    }

    v28 = MEMORY[0x1E695E4C0];
    v29 = v27 == 0;
    goto LABEL_68;
  }

  v5 = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954393, "<<<< VTPixelRotationSession >>>>", 2612, v4);
}

uint64_t VTPixelRotationSessionCopyMetalProperty(CFStringRef propertyKey, CFAllocatorRef allocator, VTSessionRef session, uint64_t a4, void *propertyValueOut)
{
  if (session)
  {

    return VTSessionCopyProperty(session, propertyKey, allocator, propertyValueOut);
  }

  else
  {
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v10 = CFRetain(Value);
      *propertyValueOut = v10;
      if (v10)
      {
        return 0;
      }
    }

    else
    {
      *propertyValueOut = 0;
    }

    return VTMetalTransferSessionCopyDefaultProperty(propertyKey, allocator, propertyValueOut);
  }
}

uint64_t VTPixelRotationSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v5 = a1;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VTPixelRotationSession >>>>", 3076, v2);
  }

  else if (theDict)
  {
    v6 = 0;
    CFDictionaryApplyFunction(theDict, vtPixelRotationSessionSetOneProperty, &v5);
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t vtPixelRotationSessionSetOneProperty(__CFString *a1, const __CFBoolean *a2, uint64_t a3)
{
  result = VTPixelRotationSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTPixelRotationSessionCopySerializableProperties(uint64_t a1)
{
  v2 = *(a1 + 16);
  emitter = fig_log_get_emitter();
  if (v2)
  {
    v4 = 4294954393;
    v5 = 3092;
  }

  else
  {
    v4 = 4294954394;
    v5 = 3094;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< VTPixelRotationSession >>>>", v5, v1);
}

OSStatus VTPixelRotationSessionRotateImage(VTPixelRotationSessionRef session, CVPixelBufferRef sourceBuffer, CVPixelBufferRef destinationBuffer)
{
  if (*(session + 16))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 4427;
LABEL_7:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< VTPixelRotationSession >>>>", v7, v5);
  }

  if (!sourceBuffer)
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954394;
    v7 = 4430;
    goto LABEL_7;
  }

  if (!destinationBuffer)
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954394;
    v7 = 4433;
    goto LABEL_7;
  }

  v12 = (session + 260);
  v13 = *(session + 252);
  v14 = *(session + 260);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL && v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    Width = CVPixelBufferGetWidth(sourceBuffer);
    Height = CVPixelBufferGetHeight(sourceBuffer);
    v16 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v16 = *(session + 268);
    v17 = *(session + 276);
    Width = v13;
    Height = v14;
  }

  v20 = v12[5];
  v21 = v12[6];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL && v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = CVPixelBufferGetWidth(destinationBuffer);
    v26 = CVPixelBufferGetHeight(destinationBuffer);
    v23 = 0.0;
    v24 = 0.0;
  }

  else
  {
    v23 = v12[7];
    v24 = v12[8];
    v25 = v20;
    v26 = v21;
  }

  v27 = CVBufferCopyAttachment(sourceBuffer, *MEMORY[0x1E6965D70], 0);
  Mutable = 0;
  if (v27)
  {
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    v36.origin = 0u;
    v36.size = 0u;
    Mutable = 0;
    if (!CGRectIsEmpty(v36))
    {
      v29 = *(session + 13);
      if (v29 <= 179)
      {
        if (v29)
        {
          if (v29 != 90)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v29 == 270)
      {
LABEL_31:
        v31 = v24;
        v32 = v23;
        v33 = v17;
        v34 = v16;
        goto LABEL_32;
      }

      if (v29 == 180)
      {
LABEL_30:
        v31 = v24;
        v32 = v23;
        v33 = v17;
        v34 = v16;
LABEL_32:
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
        }

        v17 = v33;
        v16 = v34;
        v24 = v31;
        v23 = v32;
      }
    }
  }

LABEL_35:
  v30 = VTPixelRotationSessionRotateSubImage(session, sourceBuffer, destinationBuffer, v16, v17, Width, Height, v23, v24, v25, v26);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v30;
}

uint64_t _VTPixelRotationSessionRotateSubImage(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9, float64_t a10, float64_t a11)
{
  v283[5] = *MEMORY[0x1E69E9840];
  *v252.i64 = a4;
  *&v252.i64[1] = a5;
  *v253.i64 = a6;
  *&v253.i64[1] = a7;
  v250.f64[0] = a8;
  v250.f64[1] = a9;
  v251.f64[0] = a10;
  v251.f64[1] = a11;
  v249 = 0;
  VTIsPixelBufferProtected(a2);
  VTIsPixelBufferProtected(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v21 = CVPixelBufferGetPixelFormatType(a3);
  v230 = CVPixelBufferGetWidth(a3);
  v228 = CVPixelBufferGetHeight(a3);
  v22 = *MEMORY[0x1E695E480];
  v246 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v21);
  buffer = CVPixelBufferGetIOSurface(a2);
  theDict = CVPixelBufferGetIOSurface(a3);
  v23 = *MEMORY[0x1E6965D88];
  v241 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D88], 0);
  v24 = *MEMORY[0x1E6965F30];
  v240 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F30], 0);
  v25 = *MEMORY[0x1E6965ED0];
  v242 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965ED0], 0);
  v26 = *MEMORY[0x1E6965F98];
  v245 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F98], 0);
  v27 = *MEMORY[0x1E6965EC8];
  v244 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EC8], 0);
  v28 = *MEMORY[0x1E6965CE8];
  v243 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CE8], 0);
  cf = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFAbsoluteTimeGetCurrent();
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VTPixelRotationSession >>>>", 4533);
LABEL_5:
    v32 = v30;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v240;
    v38 = v241;
    v39 = v242;
    v40 = cf;
    v41 = v246;
    goto LABEL_6;
  }

  v215 = v25;
  v217 = v28;
  v213 = v21;
  key = v26;
  v220 = v24;
  v221 = v23;
  v223 = v27;
  allocator = v22;
  if (CFEqual(a2, a3))
  {
    v31 = fig_log_get_emitter();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 4294954382, "<<<< VTPixelRotationSession >>>>", 4537);
    goto LABEL_5;
  }

  if (buffer)
  {
    IOSurfaceGetID(buffer);
  }

  v43 = a1;
  if (theDict)
  {
    IOSurfaceGetID(theDict);
  }

  value = *MEMORY[0x1E695E4D0];
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  v44 = *(a1 + 52);
  if (v44 > 179)
  {
    if (v44 != 180 && v44 != 270)
    {
      goto LABEL_163;
    }
  }

  else if (v44 && v44 != 90)
  {
LABEL_163:
    fig_log_get_emitter();
    v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v190, v192, v194);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v41 = v246;
    v37 = v240;
    v38 = v241;
    v39 = v242;
    v40 = cf;
    goto LABEL_6;
  }

  v45 = -a6;
  v46 = a4 + a6;
  if (a6 >= 0.0)
  {
    v45 = a6;
    v46 = a4;
  }

  v47 = -a7;
  v48 = a5 + a7;
  if (a7 >= 0.0)
  {
    v47 = a7;
    v48 = a5;
  }

  *v252.i64 = v46;
  *&v252.i64[1] = v48;
  *v253.i64 = v45;
  *&v253.i64[1] = v47;
  v49 = -a10;
  v50 = a8 + a10;
  if (a10 >= 0.0)
  {
    v49 = a10;
    v50 = a8;
  }

  v51 = a9 + a11;
  if (a11 >= 0.0)
  {
    v51 = a9;
  }

  v250.f64[0] = v50;
  v250.f64[1] = v51;
  if (a11 >= 0.0)
  {
    v52 = a11;
  }

  else
  {
    v52 = -a11;
  }

  v251.f64[0] = v49;
  v251.f64[1] = v52;
  v53 = CVPixelBufferGetPixelFormatType(a2);
  v54 = CVPixelBufferGetPixelFormatType(a3);
  v258 = 0;
  v254 = 0;
  v277.i8[0] = 0;
  LOBYTE(v275) = 0;
  *&v262 = 0;
  v283[0] = 0;
  v281.i64[0] = 0;
  v279.i64[0] = 0;
  v55 = CVPixelFormatDescriptionCreateWithPixelFormatType(v22, v53);
  FigCFDictionaryGetBooleanIfPresent();
  if (v55)
  {
    CFRelease(v55);
  }

  v207 = a3;
  v56 = CVPixelFormatDescriptionCreateWithPixelFormatType(v22, v54);
  FigCFDictionaryGetBooleanIfPresent();
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = CVBufferCopyAttachment(a2, key, 0);
  VTCreateYCbCrCFStringsAndProvideDefaults(v57, v277.u8[0], *(a1 + 96), v275, &v258, &v254);
  v58 = CVBufferCopyAttachment(a2, v28, 0);
  v59 = CVBufferCopyAttachment(a2, v223, 0);
  v60 = CVBufferCopyAttachment(a2, v23, 0);
  v61 = CVBufferCopyAttachment(a2, v220, 0);
  v62 = CVBufferCopyAttachment(a2, v215, 0);
  if ((v53 == 1651521076 || v53 == 1647392369) && (v63 = CVBufferCopyAttachment(a2, *MEMORY[0x1E69661F8], 0)) != 0)
  {
    CFRelease(v63);
    VTCreateColorAttachments(0, 0, *MEMORY[0x1E6965DB0], *MEMORY[0x1E6965F60], 0, *MEMORY[0x1E6965FB0], v53, 0, *(a1 + 88), *(a1 + 104), *(a1 + 112), 0, v254, v54, 0, &v262, v283);
  }

  else
  {
    VTCreateColorAttachments(v58, v59, v60, v61, v62, v258, v53, 0, *(a1 + 88), *(a1 + 104), *(a1 + 112), 0, v254, v54, 0, &v262, v283);
  }

  VTCreateColorSpacesFromDictionaries(v262, v283[0], &v281, &v279);
  if (FigCFEqual())
  {
    v64 = 1;
  }

  else
  {
    v64 = FigCFEqual() != 0;
  }

  if (FigCFEqual())
  {
    v65 = 1;
  }

  else
  {
    v65 = FigCFEqual() != 0;
  }

  if (v58)
  {
    v66 = v64;
  }

  else
  {
    v66 = 1;
  }

  if ((v66 & 1) == 0)
  {
    v64 = CGColorSpaceUsesITUR_2100TF(v58);
  }

  v67 = v262;
  *&v262 = 0;
  buffera = v67;
  theDicta = v283[0];
  v283[0] = 0;
  if (v64 || v65)
  {
    v68 = FigCFEqual();
    v69 = v281.i64[0];
    v281.i64[0] = 0;
    v208 = v279.i64[0];
    v209 = v69;
    v279.i64[0] = 0;
    v41 = v246;
    if (!v68)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v70 = v281.i64[0];
    v281.i64[0] = 0;
    v208 = v279.i64[0];
    v209 = v70;
    v279.i64[0] = 0;
    v41 = v246;
  }

  if (FigCFEqual())
  {
    FigCFEqual();
  }

LABEL_78:
  if (v258)
  {
    CFRelease(v258);
  }

  if (v254)
  {
    CFRelease(v254);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v281.i64[0])
  {
    CFRelease(v281.i64[0]);
  }

  if (v279.i64[0])
  {
    CFRelease(v279.i64[0]);
  }

  v211 = 0;
  if (v209 && v208)
  {
    v211 = FigCFEqual() == 0;
  }

  v71 = CVBufferCopyAttachments(a2, kCVAttachmentMode_ShouldPropagate);
  if (v71 | theDicta)
  {
    v77 = v71;
    LOBYTE(v258) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (v77)
    {
      CFRelease(v77);
    }

    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965D70]);
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965EF8]);
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965DE8]);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    if (v258)
    {
      CFDictionaryRemoveValue(MutableCopy, key);
    }

    if (MutableCopy)
    {
      CVBufferSetAttachments(v207, MutableCopy, kCVAttachmentMode_ShouldPropagate);
      CFRelease(MutableCopy);
    }
  }

  v79 = *(a1 + 32);
  v203 = a1 + 336;
  if (!v79)
  {
    v89 = 0;
    goto LABEL_118;
  }

  v81 = *(a1 + 88);
  v80 = *(a1 + 96);
  v83 = *(a1 + 104);
  v82 = *(a1 + 112);
  v84 = *(a1 + 336);
  if (v84 != CVPixelBufferGetPixelFormatType(a2) || (v85 = *(a1 + 400), v85 != CVPixelBufferGetPixelFormatType(v207)))
  {
    v89 = 0;
    v41 = v246;
    goto LABEL_118;
  }

  v41 = v246;
  if (!v80)
  {
    if (v81 || (v89 = 1, v83) && v82)
    {
      v138 = CVBufferCopyAttachment(a2, v217, 0);
      v139 = CVBufferCopyAttachment(a2, v223, 0);
      v140 = CVBufferCopyAttachment(a2, v221, 0);
      v218 = CVBufferCopyAttachment(a2, v220, 0);
      v86 = CVBufferCopyAttachment(a2, v215, 0);
      if (FigCFEqual())
      {
        v88 = Height;
        if (FigCFEqual() && FigCFEqual() && FigCFEqual())
        {
          if (FigCFEqual())
          {
            v141 = v79;
          }

          else
          {
            v141 = 0;
          }
        }

        else
        {
          v141 = 0;
        }
      }

      else
      {
        v141 = 0;
        v88 = Height;
      }

      *(a1 + 32) = v141;
      v39 = v242;
      if (v138)
      {
        CFRelease(v138);
      }

      v38 = v241;
      if (v139)
      {
        CFRelease(v139);
      }

      v37 = v240;
      if (v140)
      {
        CFRelease(v140);
      }

      v41 = v246;
      if (v218)
      {
        CFRelease(v218);
      }

      goto LABEL_249;
    }

LABEL_118:
    *(a1 + 32) = v89;
    v37 = v240;
    v38 = v241;
    v39 = v242;
    v88 = Height;
    v90 = v213;
    goto LABEL_119;
  }

  v86 = CVBufferCopyAttachment(a2, key, 0);
  if (FigCFEqual())
  {
    v87 = v79;
  }

  else
  {
    v87 = 0;
  }

  *(a1 + 32) = v87;
  v37 = v240;
  v38 = v241;
  v39 = v242;
  v88 = Height;
LABEL_249:
  v90 = v213;
  if (v86)
  {
    CFRelease(v86);
  }

LABEL_119:
  *(a1 + 336) = PixelFormatType;
  *(a1 + 344) = Width;
  *(a1 + 352) = v88;
  v91 = v253;
  *(a1 + 368) = v252;
  *(a1 + 384) = v91;
  v92 = *(a1 + 472);
  if (v92)
  {
    CFRelease(v92);
  }

  v93 = *(a1 + 480);
  if (v93)
  {
    CFRelease(v93);
  }

  v94 = *(a1 + 488);
  if (v94)
  {
    CFRelease(v94);
  }

  v95 = *(a1 + 496);
  if (v95)
  {
    CFRelease(v95);
  }

  v96 = *(a1 + 504);
  if (v96)
  {
    CFRelease(v96);
  }

  v97 = *(a1 + 512);
  if (v97)
  {
    CFRelease(v97);
  }

  v98 = v243;
  if (v243)
  {
    v98 = CFRetain(v243);
  }

  *(a1 + 472) = v98;
  v99 = v244;
  if (v244)
  {
    v99 = CFRetain(v244);
  }

  *(a1 + 480) = v99;
  v100 = v245;
  if (v245)
  {
    v100 = CFRetain(v245);
  }

  *(a1 + 488) = v100;
  if (v38)
  {
    v101 = CFRetain(v38);
  }

  else
  {
    v101 = 0;
  }

  *(a1 + 496) = v101;
  if (v37)
  {
    v102 = CFRetain(v37);
  }

  else
  {
    v102 = 0;
  }

  *(a1 + 504) = v102;
  if (v39)
  {
    v103 = CFRetain(v39);
  }

  else
  {
    v103 = 0;
  }

  *(a1 + 512) = v103;
  *(a1 + 400) = v90;
  *(a1 + 408) = v230;
  *(a1 + 416) = v228;
  v104 = v251;
  *(a1 + 432) = v250;
  *(a1 + 448) = v104;
  if (*(a1 + 32))
  {
    v32 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      v260 = v252;
      v261 = v253;
      v256 = v250;
      v257 = v251;
      v258 = Width;
      v259 = v88;
      v254 = v230;
      v255 = v228;
      *&v262 = v230;
      *(&v262 + 1) = v228;
      v263 = vcvtq_s64_f64(v251);
      v264 = vcvtq_s64_f64(v250);
      VTRequiresUnalignedBlackFill(v41, &v262, *(a1 + 232), v72, v73, v74, v75, v76, v191, SHIDWORD(v191), v193, SHIDWORD(v193), v195, v196, v197, v198, v199, v200, v201, v202, v203, value, v207, v208);
      VTAvoidHardwarePixelTransfer();
      VTPixelTransferSessionCanUseMetalInTheBackground();
      if (*(a1 + 133))
      {
        v107 = (a1 + 136);
        if (!*(a1 + 136) && !VTAvoidHardwarePixelTransfer())
        {
          VTMetalTransferSessionCreate(allocator, 0, (a1 + 136));
          if (*v107)
          {
            if (*(a1 + 232))
            {
              v108 = valuea;
            }

            else
            {
              v108 = *MEMORY[0x1E695E4C0];
            }

            VTSessionSetProperty(*v107, @"WriteBlackPixelsOutsideDestRect", v108);
            VTMetalTransferSessionSetProperties(*(a1 + 136), *(a1 + 144));
          }
        }
      }

      FigRegisterIOSurfacePixelTransferCapability();
    }

    v32 = 0;
    v142 = *(a1 + 40);
    if (v142)
    {
      if (!VTPixelTransferChainHasNodes(v142))
      {
        v32 = vtPixelRotation_BuildChain(*(a1 + 40), a2, v207, theDicta, v211, *(a1 + 135), *(a1 + 133), *(a1 + 52), *v252.i64, *&v252.i64[1], *v253.i64, *&v253.i64[1], v250.f64[0], v250.f64[1], v251.f64[0], v251.f64[1], *(a1 + 56), HIBYTE(*(a1 + 56)), *(a1 + 232), *(a1 + 144), *(a1 + 134), v203, &v249);
        if (v32)
        {
          v143 = *(a1 + 40);
          if (v143)
          {
            CFRelease(v143);
            *(a1 + 40) = 0;
          }
        }
      }
    }
  }

  v105 = *(a1 + 40);
  if (v105 && !v249)
  {
    v106 = vtPixelRotationChainDoTransfer(v105, a2, v252.i8, v207, &v250);
    v105 = *(a1 + 40);
    if (v106)
    {
      if (v105)
      {
        CFRelease(v105);
        *(a1 + 40) = 0;
      }

      goto LABEL_166;
    }

    v32 = 0;
  }

  if (v105)
  {
    goto LABEL_265;
  }

LABEL_166:
  v227 = v252;
  v109 = *&v252.i64[1];
  v231 = v253;
  v110 = *&v253.i64[1];
  v229 = v250;
  v111 = v250.f64[1];
  v234 = v251;
  v112 = v251.f64[1];
  v113 = CVPixelBufferGetPixelFormatType(a2);
  v262 = 0u;
  v263 = 0u;
  memset(v283, 0, 32);
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  *(a1 + 233) = 0;
  if (!*(a1 + 135) || VTAvoidHardwarePixelTransfer())
  {
    v32 = 0;
    goto LABEL_169;
  }

  v32 = vt_Rotate_Celeste(*(a1 + 224), a2, buffera, v207, theDicta, *(a1 + 52), *(a1 + 56), *(a1 + 57), v227.f64[0], v109, v231.f64[0], v110, v229.f64[0], v111, v234.f64[0], v112);
  if (v32)
  {
LABEL_169:
    v204 = v113;
    if (*(a1 + 133))
    {
      v114 = (a1 + 136);
      if (*(a1 + 136))
      {
        goto LABEL_178;
      }

      if (!VTAvoidHardwarePixelTransfer())
      {
        VTMetalTransferSessionCreate(allocator, 0, (a1 + 136));
        if (!*v114)
        {
          goto LABEL_197;
        }

        if (*(a1 + 232))
        {
          v115 = value;
        }

        else
        {
          v115 = *MEMORY[0x1E695E4C0];
        }

        VTSessionSetProperty(*v114, @"WriteBlackPixelsOutsideDestRect", v115);
        VTMetalTransferSessionSetProperties(*(a1 + 136), *(a1 + 144));
      }

      if (*v114)
      {
LABEL_178:
        v116 = MEMORY[0x1E695E9D8];
        v117 = MEMORY[0x1E695E9E8];
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v119 = CFDictionaryCreateMutable(allocator, 0, v116, v117);
        v120 = CFDictionaryCreateMutable(allocator, 0, v116, v117);
        v210 = CFDictionaryGetValue(theDicta, v221);
        v212 = CFDictionaryGetValue(theDicta, v220);
        v214 = CFDictionaryGetValue(theDicta, key);
        v121 = v119;
        v216 = CFDictionaryGetValue(theDicta, v223);
        if (*(a1 + 52))
        {
          FigCFDictionarySetInt();
        }

        if (*(a1 + 56))
        {
          CFDictionarySetValue(v119, @"FlipHorizontalOrientation", value);
        }

        if (*(a1 + 57))
        {
          CFDictionarySetValue(v119, @"FlipVerticalOrientation", value);
        }

        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        if (v210)
        {
          CFDictionarySetValue(v120, v221, v210);
        }

        v39 = v242;
        if (v212)
        {
          CFDictionarySetValue(v120, v220, v212);
        }

        v122 = v246;
        if (v214)
        {
          CFDictionarySetValue(v120, key, v214);
        }

        v37 = v240;
        if (v216)
        {
          CFDictionarySetValue(v120, v223, v216);
        }

        CFDictionarySetValue(Mutable, @"SourceAmendments", v121);
        CFDictionarySetValue(Mutable, @"DestinationAmendments", v120);
        if (*(a1 + 134))
        {
          CFDictionarySetValue(Mutable, @"SetGPUPriorityLow", value);
        }

        v32 = VTMetalTransferSessionTransferImageSync(*(a1 + 136), a2, v207, Mutable);
        if (!v32)
        {
          v123 = 0;
          *(a1 + 233) = 1;
          if (!Mutable)
          {
            goto LABEL_257;
          }

          goto LABEL_256;
        }

LABEL_198:
        if (!*(a1 + 132))
        {
          fig_log_get_emitter();
          v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
          goto LABEL_255;
        }

        CFDictionaryGetValue(buffera, v221);
        if (FigCFEqual())
        {
          CFDictionaryGetValue(buffera, v220);
          if (FigCFEqual())
          {
            CFDictionaryGetValue(theDicta, v221);
            if (FigCFEqual())
            {
              CFDictionaryGetValue(theDicta, v220);
              if (FigCFEqual())
              {
                v124 = vmovn_s64(vceqq_f64(v231, v234));
                v125 = vuzp1_s16(v124, v124);
                if ((v125.i8[4] & 1) != 0 && (v125.i8[6] & 1) != 0 && !*(a1 + 52) && !*(a1 + 56) && !*(a1 + 57))
                {
                  v239 = v120;
                  v224 = CVPixelBufferGetPixelFormatType(a2);
                  v222 = CVPixelBufferGetPixelFormatType(v207);
                  CVPixelBufferLockBaseAddress(a2, 1uLL);
                  CVPixelBufferLockBaseAddress(v207, 0);
                  v258 = CVPixelBufferGetWidth(a2);
                  v259 = CVPixelBufferGetHeight(a2);
                  v260 = vcvtq_s64_f64(v231);
                  v261 = vcvtq_s64_f64(v227);
                  v254 = CVPixelBufferGetWidth(v207);
                  v255 = CVPixelBufferGetHeight(v207);
                  v256 = vcvtq_s64_f64(v234);
                  v257 = vcvtq_s64_f64(v229);
                  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
                  v270[0] = BytesPerRowOfPlane;
                  v152 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
                  v270[1] = v152;
                  v153 = CVPixelBufferGetBytesPerRowOfPlane(v207, 0);
                  v269[0] = v153;
                  v154 = CVPixelBufferGetBytesPerRowOfPlane(v207, 1uLL);
                  v269[1] = v154;
                  v268[0] = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
                  v268[1] = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
                  v267[0] = CVPixelBufferGetBaseAddressOfPlane(v207, 0);
                  v267[1] = CVPixelBufferGetBaseAddressOfPlane(v207, 1uLL);
                  v266[0] = CVPixelBufferGetHeightOfPlane(a2, 0) * BytesPerRowOfPlane;
                  v266[1] = CVPixelBufferGetHeightOfPlane(a2, 1uLL) * v152;
                  v265[0] = CVPixelBufferGetHeightOfPlane(v207, 0) * v153;
                  v265[1] = CVPixelBufferGetHeightOfPlane(v207, 1uLL) * v154;
                  v155 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v123 = v155;
                  v156 = *(a1 + 176);
                  if (v156)
                  {
                    CFDictionarySetValue(v155, @"kCGPQEOTFOpticalScale", v156);
                  }

                  v157 = *(a1 + 184);
                  if (v157)
                  {
                    CFDictionarySetValue(v123, @"kCGPQInvEOTFOpticalScale", v157);
                  }

                  v158 = *(a1 + 192);
                  v122 = v246;
                  v120 = v239;
                  if (v158)
                  {
                    CFDictionarySetValue(v123, @"kCGHLGOETFOpticalScale", v158);
                  }

                  v159 = *(a1 + 200);
                  if (v159)
                  {
                    CFDictionarySetValue(v123, @"kCGHLGInvOETFOpticalScale", v159);
                  }

                  if (*(a1 + 152) || (v32 = VTPixelBlitterColorHandlingOptimized_setup(v224, buffera, v222, theDicta, v123, *(a1 + 129), *(a1 + 130), (a1 + 152), (a1 + 168), 0, (a1 + 160)), !v32))
                  {
                    v160 = *(a1 + 168);
                    if (v160)
                    {
                      v32 = v160(*(a1 + 152), &v258, v268, v270, v266, &v254, v267, v269, v265);
                    }

                    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
                    CVPixelBufferUnlockBaseAddress(v207, 0);
                  }

                  v37 = v240;
                  if (!Mutable)
                  {
                    goto LABEL_257;
                  }

                  goto LABEL_256;
                }
              }
            }
          }
        }

        if (*(a1 + 56) && *(a1 + 57) || !VTDoColorDictionariesMatch(buffera, theDicta))
        {
          fig_log_get_emitter();
          v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
          v123 = 0;
          if (!Mutable)
          {
            goto LABEL_257;
          }

          goto LABEL_256;
        }

        v126 = floor(v227.f64[0]);
        v127 = floor(v109);
        v128 = ceil(v227.f64[0] + v231.f64[0]) - v126;
        v129 = ceil(v109 + v110) - v127;
        v130 = floor(v229.f64[0]);
        v131 = floor(v111);
        v132 = v111 + v112;
        v133 = ceil(v229.f64[0] + v234.f64[0]) - v130;
        v134 = ceil(v132) - v131;
        if (!vtPixelRotation_IsValidForSoftware(*(a1 + 52), a2, v207, v126, v127, v128, v129, v130, v131, v133, v134))
        {
          fig_log_get_emitter();
          v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
LABEL_264:
          v41 = v122;
          v38 = v241;
          goto LABEL_265;
        }

        PlaneCount = 1;
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        CVPixelBufferLockBaseAddress(v207, 0);
        if (CVPixelBufferIsPlanar(a2))
        {
          PlaneCount = CVPixelBufferGetPlaneCount(a2);
        }

        v136 = vtPixelRotationSession_PrepareRotationParameters(a2, PlaneCount, &v262, v283, &v279, &v281, (a1 + 72), (a1 + 64), v126, v127, v128, v129);
        if (v136)
        {
          goto LABEL_253;
        }

        v137 = CVPixelBufferIsPlanar(v207) ? CVPixelBufferGetPlaneCount(v207) : 1;
        v136 = vtPixelRotationSession_PrepareRotationParameters(v207, v137, &v277, &v275, &v271, &v273, (a1 + 72), (a1 + 64), v130, v131, v133, v134);
        if (v136)
        {
          goto LABEL_253;
        }

        v145 = *(a1 + 52);
        if (v145)
        {
          if (v204 <= 1815491697)
          {
            if (v204 > 1278226533)
            {
              if (v204 > 1647534391)
              {
                if (v204 > 1717856626)
                {
                  if (v204 != 1717856627)
                  {
                    if (v204 == 1751410032)
                    {
                      goto LABEL_379;
                    }

                    v146 = 1751411059;
                    goto LABEL_342;
                  }

                  goto LABEL_412;
                }

                if (v204 == 1647534392)
                {
                  v162 = vt_Rotate_b3a8(&v277, &v275, &v281, &v279, &v273, &v271, v145);
                  if (v162)
                  {
                    goto LABEL_522;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_b3a8(&v277, &v275, &v273, &v271, &v273, &v271, *(a1 + 56), *(a1 + 57));
                    goto LABEL_522;
                  }

                  goto LABEL_415;
                }

                v150 = 1717855600;
LABEL_386:
                v43 = a1;
                if (v204 != v150)
                {
                  goto LABEL_461;
                }

                goto LABEL_412;
              }

              if (v204 <= 1278226741)
              {
                if (v204 != 1278226534)
                {
                  v146 = 1278226536;
LABEL_342:
                  if (v204 != v146)
                  {
                    goto LABEL_461;
                  }

LABEL_379:
                  v172 = vt_Rotate_16(&v277, &v275, &v281, &v279, &v273, &v271, v145);
                  if (!v172)
                  {
                    if (*(a1 + 56))
                    {
                      vt_Flip_16(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                      goto LABEL_522;
                    }

LABEL_415:
                    v32 = 0;
LABEL_523:
                    v122 = v246;
                    v43 = a1;
                    goto LABEL_524;
                  }

                  goto LABEL_413;
                }

LABEL_412:
                v172 = vt_Rotate_32(&v277, &v275, &v281, &v279, &v273, &v271, v145);
                if (!v172)
                {
                  if (*(v43 + 56))
                  {
                    vt_Flip_32(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(v43 + 56), *(v43 + 57));
                    goto LABEL_522;
                  }

                  goto LABEL_415;
                }

                goto LABEL_413;
              }

              if (v204 == 1278226742)
              {
                goto LABEL_379;
              }

              if (v204 == 1380411457)
              {
                goto LABEL_376;
              }

              goto LABEL_461;
            }

            if (v204 > 875836517)
            {
              if (v204 > 1111970368)
              {
                if (v204 == 1111970369)
                {
                  goto LABEL_412;
                }

                if (v204 == 1278226488)
                {
                  v162 = vt_Rotate_8(&v277, &v275, &v281, &v279, &v273, &v271, v145, v144);
                  if (v162)
                  {
                    goto LABEL_522;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_8(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                    goto LABEL_522;
                  }

                  goto LABEL_415;
                }

                goto LABEL_461;
              }

              if (v204 != 875836518)
              {
                v164 = 875836534;
                goto LABEL_393;
              }
            }

            else
            {
              if (v204 <= 875704421)
              {
                if (v204 == 32)
                {
                  goto LABEL_412;
                }

                if (v204 != 846624121)
                {
                  goto LABEL_461;
                }

                v162 = vt_Rotate_2vuy(v277.i64, &v275, v281.i64, &v279, v273.i64, &v271, v145);
                if (!v162)
                {
                  if (!*(a1 + 56))
                  {
                    goto LABEL_415;
                  }

                  vt_Flip_2vuy(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                }

                goto LABEL_522;
              }

              if (v204 != 875704422)
              {
                v164 = 875704438;
LABEL_393:
                if (v204 != v164)
                {
                  goto LABEL_461;
                }
              }
            }

            v172 = vt_Rotate_420v(&v277, &v275, &v281, &v279, &v273, &v271, v145);
            if (!v172)
            {
              if (*(a1 + 56))
              {
                vt_Flip_420v(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                goto LABEL_522;
              }

              goto LABEL_415;
            }

LABEL_413:
            v32 = v172;
            v122 = v246;
LABEL_524:
            v37 = v240;
            goto LABEL_254;
          }

          if (v204 > 2019963441)
          {
            if (v204 > 2021077553)
            {
              if (v204 > 2021078127)
              {
                if (v204 == 2037741171)
                {
                  v162 = vt_Rotate_yuvs(v277.i64, &v275, v281.i64, &v279, v273.i64, &v271, v145);
                  if (v162)
                  {
                    goto LABEL_522;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_yuvs(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                    goto LABEL_522;
                  }

                  goto LABEL_415;
                }

                if (v204 == 2033463856)
                {
                  v162 = vt_Rotate_y420(&v277, &v275, &v281, &v279, &v273, &v271, v145);
                  if (v162)
                  {
                    goto LABEL_522;
                  }

                  if (*(a1 + 56))
                  {
                    v162 = vt_Flip_y420(&v277, &v275, &v273, &v271, &v273, &v271, *(a1 + 56), *(a1 + 57));
                    goto LABEL_522;
                  }

                  goto LABEL_415;
                }

                v150 = 2021078128;
                goto LABEL_386;
              }

              v43 = a1;
              if (v204 == 2021077554)
              {
                goto LABEL_409;
              }

              v173 = 13364;
              goto LABEL_390;
            }

            if (v204 > 2019964015)
            {
              if (v204 == 2019964016)
              {
                goto LABEL_412;
              }

              v173 = 12848;
LABEL_390:
              v174 = v173 | 0x78770000;
              goto LABEL_408;
            }

            if (v204 == 2019963442)
            {
              goto LABEL_409;
            }

            v163 = 13364;
            goto LABEL_407;
          }

          if (v204 > 2016686641)
          {
            if (v204 > 2016687215)
            {
              if (v204 == 2016687216)
              {
                goto LABEL_412;
              }

              v163 = 12848;
LABEL_407:
              v174 = v163 | 0x78660000;
LABEL_408:
              if (v204 != v174)
              {
                goto LABEL_461;
              }

LABEL_409:
              v172 = vt_Rotate_x420(&v277, &v275, &v281, &v279, &v273, &v271, v145);
              if (!v172)
              {
                if (*(v43 + 56))
                {
                  vt_Flip_x420(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(v43 + 56), *(v43 + 57));
                  goto LABEL_522;
                }

                goto LABEL_415;
              }

              goto LABEL_413;
            }

            if (v204 == 2016686642)
            {
              goto LABEL_409;
            }

            v165 = 13364;
          }

          else
          {
            if (v204 <= 1999843441)
            {
              if (v204 == 1815491698)
              {
LABEL_376:
                v162 = vt_Rotate_64(&v277, &v275, &v281, &v279, &v273, &v271, v145);
                if (!v162)
                {
                  if (!*(a1 + 56))
                  {
                    goto LABEL_415;
                  }

                  vt_Flip_64(v277.i64, &v275, v273.i64, &v271, v273.i64, &v271, *(a1 + 56), *(a1 + 57));
                }

                goto LABEL_522;
              }

              if (v204 != 1983000886)
              {
LABEL_461:
                fig_log_get_emitter();
                v172 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
                goto LABEL_413;
              }

              v162 = vt_Rotate_v216(v277.i64, &v275, &v281, v279.i64, &v273, &v271, v145);
              if (!v162)
              {
                if (!*(a1 + 56))
                {
                  goto LABEL_415;
                }

                vt_Flip_v216(v277.i64, &v275, &v273, &v271, &v273, &v271, *(a1 + 56), *(a1 + 57));
              }

LABEL_522:
              v32 = v162;
              goto LABEL_523;
            }

            if (v204 == 1999843442)
            {
              goto LABEL_412;
            }

            v165 = 12848;
          }

          v174 = v165 | 0x78340000;
          goto LABEL_408;
        }

        v147 = *(a1 + 56);
        if (*(a1 + 56) || *(a1 + 57))
        {
          if (v204 <= 1815491697)
          {
            if (v204 > 1278226533)
            {
              if (v204 > 1647534391)
              {
                if (v204 > 1717856626)
                {
                  v148 = v204;
                  v122 = v246;
                  v43 = a1;
                  v37 = v240;
                  if (v204 != 1717856627)
                  {
                    if (v204 != 1751410032)
                    {
                      v149 = 1751411059;
                      goto LABEL_363;
                    }

LABEL_426:
                    vt_Flip_16(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(v43 + 57));
                    goto LABEL_253;
                  }

LABEL_451:
                  vt_Flip_32(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(v43 + 57));
                  goto LABEL_253;
                }

                if (v204 == 1647534392)
                {
                  v43 = a1;
                  vt_Flip_b3a8(&v277, &v275, &v273, &v271, &v273, &v271, v147, *(a1 + 57));
                  goto LABEL_413;
                }

                v161 = 1717855600;
LABEL_431:
                v122 = v246;
                v43 = a1;
                v37 = v240;
                if (v204 != v161)
                {
                  goto LABEL_473;
                }

                goto LABEL_451;
              }

              if (v204 <= 1278226741)
              {
                v148 = v204;
                v122 = v246;
                v43 = a1;
                v37 = v240;
                if (v204 != 1278226534)
                {
                  v149 = 1278226536;
LABEL_363:
                  if (v148 != v149)
                  {
                    goto LABEL_473;
                  }

                  goto LABEL_426;
                }

                goto LABEL_451;
              }

              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 == 1278226742)
              {
                goto LABEL_426;
              }

              if (v204 == 1380411457)
              {
                goto LABEL_425;
              }

              goto LABEL_473;
            }

            if (v204 > 875836517)
            {
              if (v204 > 1111970368)
              {
                v122 = v246;
                v43 = a1;
                v37 = v240;
                if (v204 == 1111970369)
                {
                  goto LABEL_451;
                }

                if (v204 == 1278226488)
                {
                  vt_Flip_8(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(a1 + 57));
                  goto LABEL_253;
                }

                goto LABEL_473;
              }

              v169 = v204;
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 != 875836518)
              {
                v170 = 875836534;
                goto LABEL_438;
              }
            }

            else
            {
              if (v204 <= 875704421)
              {
                v122 = v246;
                v43 = a1;
                v37 = v240;
                if (v204 == 32)
                {
                  goto LABEL_451;
                }

                if (v204 != 846624121)
                {
                  goto LABEL_473;
                }

                vt_Flip_2vuy(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(a1 + 57));
                goto LABEL_253;
              }

              v169 = v204;
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 != 875704422)
              {
                v170 = 875704438;
LABEL_438:
                if (v169 != v170)
                {
                  goto LABEL_473;
                }
              }
            }

            vt_Flip_420v(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(v43 + 57));
            goto LABEL_253;
          }

          if (v204 > 2019963441)
          {
            if (v204 > 2021077553)
            {
              if (v204 > 2021078127)
              {
                if (v204 == 2037741171)
                {
                  v43 = a1;
                  vt_Flip_yuvs(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(a1 + 57));
                  goto LABEL_413;
                }

                if (v204 == 2033463856)
                {
                  v43 = a1;
                  v172 = vt_Flip_y420(&v277, &v275, &v281, &v279, &v273, &v271, v147, *(a1 + 57));
                  goto LABEL_413;
                }

                v161 = 2021078128;
                goto LABEL_431;
              }

              v167 = v204;
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 == 2021077554)
              {
                goto LABEL_450;
              }

              v176 = 13364;
              goto LABEL_435;
            }

            if (v204 > 2019964015)
            {
              v167 = v204;
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 == 2019964016)
              {
                goto LABEL_451;
              }

              v176 = 12848;
LABEL_435:
              v177 = v176 | 0x78770000;
              goto LABEL_449;
            }

            v167 = v204;
            v122 = v246;
            v43 = a1;
            v37 = v240;
            if (v204 == 2019963442)
            {
              goto LABEL_450;
            }

            v168 = 13364;
            goto LABEL_448;
          }

          if (v204 > 2016686641)
          {
            if (v204 > 2016687215)
            {
              v167 = v204;
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 == 2016687216)
              {
                goto LABEL_451;
              }

              v168 = 12848;
LABEL_448:
              v177 = v168 | 0x78660000;
LABEL_449:
              if (v167 != v177)
              {
                goto LABEL_473;
              }

LABEL_450:
              vt_Flip_x420(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(v43 + 57));
              goto LABEL_253;
            }

            v167 = v204;
            v122 = v246;
            v43 = a1;
            v37 = v240;
            if (v204 == 2016686642)
            {
              goto LABEL_450;
            }

            v171 = 13364;
          }

          else
          {
            if (v204 <= 1999843441)
            {
              v122 = v246;
              v43 = a1;
              v37 = v240;
              if (v204 == 1815491698)
              {
LABEL_425:
                vt_Flip_64(v277.i64, &v275, v281.i64, v279.i64, v273.i64, &v271, v147, *(v43 + 57));
                goto LABEL_253;
              }

              if (v204 != 1983000886)
              {
LABEL_473:
                fig_log_get_emitter();
                v136 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
                goto LABEL_253;
              }

              vt_Flip_v216(v277.i64, &v275, &v281, v279.i64, &v273, &v271, v147, *(a1 + 57));
LABEL_253:
              v32 = v136;
LABEL_254:
              CVPixelBufferUnlockBaseAddress(a2, 1uLL);
              CVPixelBufferUnlockBaseAddress(v207, 0);
LABEL_255:
              v123 = 0;
              if (!Mutable)
              {
LABEL_257:
                if (v121)
                {
                  CFRelease(v121);
                }

                if (v120)
                {
                  CFRelease(v120);
                }

                if (v123)
                {
                  CFRelease(v123);
                }

                v39 = v242;
                goto LABEL_264;
              }

LABEL_256:
              CFRelease(Mutable);
              goto LABEL_257;
            }

            v167 = v204;
            v122 = v246;
            v43 = a1;
            v37 = v240;
            if (v204 == 1999843442)
            {
              goto LABEL_451;
            }

            v171 = 12848;
          }

          v177 = v171 | 0x78340000;
          goto LABEL_449;
        }

        if (v204 <= 1815491697)
        {
          if (v204 > 1278226533)
          {
            if (v204 > 1647534391)
            {
              if (v204 > 1717856626)
              {
                if (v204 != 1717856627)
                {
                  if (v204 != 1751410032)
                  {
                    v166 = 1751411059;
                    goto LABEL_477;
                  }

LABEL_491:
                  v181 = v279.i64[0];
                  v182 = v281.i64[0];
                  v183 = v271;
                  v184 = v273.i64[0];
                  v185 = v277.i64[0];
                  v186 = v275;
LABEL_492:
                  v187 = 2;
                  goto LABEL_521;
                }

                goto LABEL_519;
              }

              if (v204 != 1647534392)
              {
                v175 = 1717855600;
LABEL_497:
                if (v204 != v175)
                {
                  goto LABEL_531;
                }

                goto LABEL_519;
              }

              v162 = vtCopyPlane(v279.i64[0], v281.i64[0], v271, v273.i64[0], v277.i64[0], v275, 4);
              if (v162)
              {
                goto LABEL_522;
              }

              v181 = v279.i64[1];
              v182 = v281.i64[1];
              v183 = *(&v271 + 1);
              v184 = v273.i64[1];
              v185 = v277.i64[1];
              v186 = *(&v275 + 1);
LABEL_530:
              v187 = 1;
              goto LABEL_521;
            }

            if (v204 <= 1278226741)
            {
              if (v204 != 1278226534)
              {
                v166 = 1278226536;
LABEL_477:
                if (v204 != v166)
                {
                  goto LABEL_531;
                }

                goto LABEL_491;
              }

              goto LABEL_519;
            }

            if (v204 == 1278226742)
            {
              goto LABEL_491;
            }

            if (v204 == 1380411457)
            {
LABEL_490:
              v181 = v279.i64[0];
              v182 = v281.i64[0];
              v183 = v271;
              v184 = v273.i64[0];
              v185 = v277.i64[0];
              v186 = v275;
              v187 = 8;
LABEL_521:
              v162 = vtCopyPlane(v181, v182, v183, v184, v185, v186, v187);
              goto LABEL_522;
            }

LABEL_531:
            fig_log_get_emitter();
            v162 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, v193, v195);
            goto LABEL_522;
          }

          if (v204 > 875836517)
          {
            if (v204 > 1111970368)
            {
              if (v204 == 1111970369)
              {
                goto LABEL_519;
              }

              if (v204 == 1278226488)
              {
                v181 = v279.i64[0];
                v182 = v281.i64[0];
                v183 = v271;
                v184 = v273.i64[0];
                v185 = v277.i64[0];
                v186 = v275;
                goto LABEL_530;
              }

              goto LABEL_531;
            }

            if (v204 == 875836518)
            {
LABEL_505:
              v162 = vtCopyPlane(v279.i64[0], v281.i64[0], v271, v273.i64[0], v277.i64[0], v275, 1);
              if (v162)
              {
                goto LABEL_522;
              }

              v181 = v279.i64[1];
              v182 = v281.i64[1];
              v183 = *(&v271 + 1);
              v184 = v273.i64[1];
              v185 = v277.i64[1];
              v186 = *(&v275 + 1);
              goto LABEL_492;
            }

            v179 = 875836534;
          }

          else
          {
            if (v204 <= 875704421)
            {
              if (v204 != 32)
              {
                v166 = 846624121;
                goto LABEL_477;
              }

LABEL_519:
              v181 = v279.i64[0];
              v182 = v281.i64[0];
              v183 = v271;
              v184 = v273.i64[0];
              v185 = v277.i64[0];
              v186 = v275;
LABEL_520:
              v187 = 4;
              goto LABEL_521;
            }

            if (v204 == 875704422)
            {
              goto LABEL_505;
            }

            v179 = 875704438;
          }

          if (v204 != v179)
          {
            goto LABEL_531;
          }

          goto LABEL_505;
        }

        if (v204 > 2019963441)
        {
          if (v204 > 2021077553)
          {
            if (v204 > 2021078127)
            {
              if (v204 == 2037741171)
              {
                goto LABEL_491;
              }

              if (v204 != 2033463856)
              {
                v175 = 2021078128;
                goto LABEL_497;
              }

              v162 = vtCopyPlane(v279.i64[0], v281.i64[0], v271, v273.i64[0], v277.i64[0], v275, 1);
              if (v162)
              {
                goto LABEL_522;
              }

              v162 = vtCopyPlane(v279.i64[1], v281.i64[1], *(&v271 + 1), v273.i64[1], v277.i64[1], *(&v275 + 1), 1);
              if (v162)
              {
                goto LABEL_522;
              }

              v181 = v280;
              v182 = v282;
              v183 = v272;
              v184 = v274;
              v185 = v278;
              v186 = v276;
              goto LABEL_530;
            }

            if (v204 == 2021077554)
            {
              goto LABEL_517;
            }

            v188 = 13364;
            goto LABEL_501;
          }

          if (v204 > 2019964015)
          {
            if (v204 == 2019964016)
            {
              goto LABEL_519;
            }

            v188 = 12848;
LABEL_501:
            v189 = v188 | 0x78770000;
            goto LABEL_516;
          }

          if (v204 == 2019963442)
          {
            goto LABEL_517;
          }

          v178 = 13364;
          goto LABEL_515;
        }

        if (v204 > 2016686641)
        {
          if (v204 > 2016687215)
          {
            if (v204 == 2016687216)
            {
              goto LABEL_519;
            }

            v178 = 12848;
LABEL_515:
            v189 = v178 | 0x78660000;
LABEL_516:
            if (v204 != v189)
            {
              goto LABEL_531;
            }

LABEL_517:
            v162 = vtCopyPlane(v279.i64[0], v281.i64[0], v271, v273.i64[0], v277.i64[0], v275, 2);
            if (v162)
            {
              goto LABEL_522;
            }

            v181 = v279.i64[1];
            v182 = v281.i64[1];
            v183 = *(&v271 + 1);
            v184 = v273.i64[1];
            v185 = v277.i64[1];
            v186 = *(&v275 + 1);
            goto LABEL_520;
          }

          if (v204 == 2016686642)
          {
            goto LABEL_517;
          }

          v180 = 13364;
        }

        else
        {
          if (v204 <= 1999843441)
          {
            if (v204 != 1815491698)
            {
              v175 = 1983000886;
              goto LABEL_497;
            }

            goto LABEL_490;
          }

          if (v204 == 1999843442)
          {
            goto LABEL_519;
          }

          v180 = 12848;
        }

        v189 = v180 | 0x78340000;
        goto LABEL_516;
      }
    }

LABEL_197:
    v122 = v41;
    v121 = 0;
    v120 = 0;
    Mutable = 0;
    goto LABEL_198;
  }

LABEL_265:
  if (!*(v43 + 232))
  {
    v40 = cf;
LABEL_269:
    *(v43 + 32) = 1;
    goto LABEL_270;
  }

  v40 = cf;
  v258 = CVPixelBufferGetWidth(v207);
  v259 = CVPixelBufferGetHeight(v207);
  v260 = vcvtq_s64_f64(v251);
  v261 = vcvtq_s64_f64(v250);
  v32 = VTFillPixelsOutsideDestRectWithBlack(v207, &v258, (v43 + 64));
  if (!v32)
  {
    goto LABEL_269;
  }

LABEL_270:
  v33 = buffera;
  v34 = theDicta;
  v36 = v208;
  v35 = v209;
LABEL_6:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v245)
  {
    CFRelease(v245);
  }

  if (v244)
  {
    CFRelease(v244);
  }

  if (v243)
  {
    CFRelease(v243);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v32;
}

void VTPixelTransferNodeRotationFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  free(*(DerivedStorage + 40));
  *(DerivedStorage + 40) = 0;

  VTPixelTransferNodeBaseFinalize(a1);
}

uint64_t VTPixelTransferNodeRotationDoTransfer(uint64_t a1, __CVBuffer *a2, double *a3, __CVBuffer *a4, double *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v12 = a5[2];
  v13 = a5[3];
  v14 = a5[4];
  v15 = a5[5];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = floor(v8);
  v18 = floor(v9);
  v19 = ceil(v8 + v10) - v17;
  v20 = ceil(v9 + v11) - v18;
  v21 = floor(v12);
  v22 = floor(v13);
  v23 = v12 + v14;
  v24 = v17;
  v25 = ceil(v23) - v21;
  v26 = v13 + v15;
  v27 = v18;
  v28 = ceil(v26) - v22;
  if (vtPixelRotation_IsValidForSoftware(*(DerivedStorage + 32), a2, a4, v17, v18, v19, v20, v21, v22, v25, v28))
  {
    PlaneCount = 1;
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    if (CVPixelBufferIsPlanar(a2))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a2);
    }

    v30 = vtPixelRotationSession_PrepareRotationParameters(a2, PlaneCount, v43, v42, v40, v41, (DerivedStorage + 36), (DerivedStorage + 40), v24, v27, v19, v20);
    if (!v30)
    {
      v31 = CVPixelBufferIsPlanar(a4) ? CVPixelBufferGetPlaneCount(a4) : 1;
      v30 = vtPixelRotationSession_PrepareRotationParameters(a4, v31, v39, v38, v36, v37, (DerivedStorage + 36), (DerivedStorage + 40), v21, v22, v25, v28);
      if (!v30)
      {
        v34 = *(DerivedStorage + 24);
        if (!v34)
        {
          v35 = 0;
          goto LABEL_15;
        }

        v30 = v34(v43, v42, v41, v40, v39, v38, v37, v36);
      }
    }

    v35 = v30;
LABEL_15:
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    CVPixelBufferUnlockBaseAddress(a4, 0);
    return v35;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954382, "<<<< VTPixelRotationSession >>>>", 868, v5);
}

uint64_t vtPixelRotation_IsValidForSoftware(int a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v23 = CVPixelBufferGetPixelFormatType(a3);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v26 = CVPixelBufferGetWidth(a3);
  v27 = CVPixelBufferGetHeight(a3);
  if (PixelFormatType != v23 || a4 < 0.0)
  {
    return 0;
  }

  v29 = v27;
  result = 0;
  if (a4 + a6 > Width || a5 < 0.0 || a5 + a7 > Height)
  {
    return result;
  }

  if (a8 < 0.0)
  {
    return 0;
  }

  result = 0;
  if (a8 + a10 > v26 || a9 < 0.0 || a9 + a11 > v29)
  {
    return result;
  }

  if (a1 <= 179)
  {
    if (a1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a1 != 270)
  {
    if (a1 != 180)
    {
      return 1;
    }

LABEL_17:
    result = 0;
    if (a6 != a10 || a7 != a11)
    {
      return result;
    }

LABEL_19:
    if (a1 == 90)
    {
      goto LABEL_20;
    }

    return 1;
  }

LABEL_20:
  result = 0;
  if (a6 == a11 && a7 == a10)
  {
    return 1;
  }

  return result;
}

uint64_t vtPixelRotationSession_PrepareRotationParameters(__CVBuffer *a1, size_t a2, size_t *a3, size_t *a4, void **a5, size_t *a6, OSType *a7, void **a8, double a9, double a10, double a11, double a12)
{
  v22 = a10 != 0.0 || a9 != 0.0;
  v23 = a11;
  Width = CVPixelBufferGetWidth(a1);
  v52 = a12;
  Height = CVPixelBufferGetHeight(a1);
  v25 = Height;
  v48 = v22;
  v49 = v23;
  if (!v22 && Width == v23 && Height == v52)
  {
LABEL_18:
    if (CVPixelBufferIsPlanar(a1))
    {
      if (!a2)
      {
        return 0;
      }

      v33 = 0;
      do
      {
        a3[v33] = CVPixelBufferGetWidthOfPlane(a1, v33);
        a4[v33] = CVPixelBufferGetHeightOfPlane(a1, v33);
        a5[v33] = CVPixelBufferGetBaseAddressOfPlane(a1, v33);
        a6[v33] = CVPixelBufferGetBytesPerRowOfPlane(a1, v33);
        ++v33;
      }

      while (a2 != v33);
    }

    else
    {
      *a3 = CVPixelBufferGetWidth(a1);
      *a4 = CVPixelBufferGetHeight(a1);
      *a5 = CVPixelBufferGetBaseAddress(a1);
      *a6 = CVPixelBufferGetBytesPerRow(a1);
    }

    v34 = !v48;
    if (!a2)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      v35 = 0;
      v36 = a2;
      do
      {
        v37 = *a8 + v35;
        v38 = *a6++;
        *a5 = *a5 + (v37[2] >> 3) * (a9 / (v37[3] * *v37)) + v38 * (a10 / (v37[4] * v37[1]));
        ++a5;
        v35 += 112;
        --v36;
      }

      while (v36);
    }

    v39 = v25;
    if (Width != v49 && a2)
    {
      v40 = (*a8 + 24);
      v41 = a2;
      do
      {
        v42 = *v40;
        v40 += 14;
        *a3++ = (v49 - 1 + v42) / v42;
        --v41;
      }

      while (v41);
    }

    v43 = 0;
    if (v39 == v52 || !a2)
    {
      return v43;
    }

    v44 = (*a8 + 32);
    do
    {
      v45 = *v44;
      v44 += 14;
      *a4++ = (v52 - 1 + v45) / v45;
      --a2;
    }

    while (a2);
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v28 = *a8;
  pixelFormat = PixelFormatType;
  if (*a7 == PixelFormatType)
  {
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    free(v28);
    *a8 = 0;
    *a7 = 0;
  }

  v47 = a8;
  v29 = malloc_type_calloc(a2, 0x70uLL, 0x100004081F0E799uLL);
  if (!a2)
  {
LABEL_17:
    *a7 = pixelFormat;
    *v47 = v29;
    a8 = v47;
    goto LABEL_18;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    PixelFormatPixelBlockInfo = VTBlackFillGetPixelFormatPixelBlockInfo(pixelFormat, v31, &v29[v30], &v29[v30 + 8], &v29[v30 + 16], &v29[v30 + 24], &v29[v30 + 32], &v29[v30 + 105], &v29[v30 + 40], &v29[v30 + 104], &v29[v30 + 106], &v29[v30 + 110]);
    if (PixelFormatPixelBlockInfo)
    {
      break;
    }

    ++v31;
    v30 += 112;
    if (a2 == v31)
    {
      goto LABEL_17;
    }
  }

  v43 = PixelFormatPixelBlockInfo;
  free(v29);
  return v43;
}

double vtPixelRotationSessionInit(uint64_t a1)
{
  *(a1 + 512) = 0;
  result = 0.0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void vtPixelRotationSessionFinalize(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v2();
      *(a1 + 168) = 0;
    }
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v3 = *(a1 + 176);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 192) = 0;
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 200) = 0;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 224) = 0;
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 136) = 0;
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 144) = 0;
  }

  v10 = *(a1 + 472);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 472) = 0;
  }

  v11 = *(a1 + 480);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 480) = 0;
  }

  v12 = *(a1 + 488);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 488) = 0;
  }

  v13 = *(a1 + 496);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 496) = 0;
  }

  v14 = *(a1 + 504);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 504) = 0;
  }

  v15 = *(a1 + 512);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 512) = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 40) = 0;
  }
}

__CFString *vtPixelRotationSessionCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  VTGetOnePassScalingPropertyValue(*(a1 + 136), *(a1 + 144));
  v6 = 0;
  VTPixelRotationSessionCopyMetalBooleanProperty(@"PreferRenderKernel", *(a1 + 136), *(a1 + 144), &v6 + 1);
  VTPixelRotationSessionCopyMetalBooleanProperty(@"AllowLowQualityScaling", *(a1 + 136), *(a1 + 144), &v6);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPixelRotationSession %p [%p]>{", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t vtPixelRotationChainDoTransfer(uint64_t result, CVPixelBufferRef pixelBuffer, __int128 *a3, __CVBuffer *a4, __int128 *a5)
{
  if (result)
  {
    v9 = result;
    *&v13[0] = CVPixelBufferGetWidth(pixelBuffer);
    *(&v13[0] + 1) = CVPixelBufferGetHeight(pixelBuffer);
    v10 = a3[1];
    v13[1] = *a3;
    v13[2] = v10;
    *&v12[0] = CVPixelBufferGetWidth(a4);
    *(&v12[0] + 1) = CVPixelBufferGetHeight(a4);
    v11 = a5[1];
    v12[1] = *a5;
    v12[2] = v11;
    return VTPixelTransferChainDoTransfer(v9, pixelBuffer, v13, a4, v12);
  }

  return result;
}

uint64_t vtPixelRotation_BuildChain(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, const __CFDictionary *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, char a18, char a19, const __CFDictionary *a20, char a21, uint64_t a22, _BYTE *a23)
{
  v23 = a8;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v95 = CVPixelBufferGetPixelFormatType(a3);
  session[0] = 0;
  v93 = a1;
  VTPixelTransferChainRemoveAllNodes(a1);
  if (a6)
  {
    if (VTAvoidHardwarePixelTransfer())
    {
      a6 = 0;
    }

    else
    {
      a6 = VTPixelTransferChainAppendCelesteRotationNode(a1, v23, a17, a18, 0);
      if (!a6)
      {
        appended = 0;
        *(a22 + 128) = 3;
        goto LABEL_289;
      }
    }
  }

  v92 = v23;
  v94 = a5;
  if (!a7 || VTAvoidHardwarePixelTransfer())
  {
    v36 = 0;
    Mutable = 0;
    v38 = 0;
    goto LABEL_8;
  }

  v45 = a6;
  v46 = *MEMORY[0x1E695E480];
  VTMetalTransferSessionCreate(*MEMORY[0x1E695E480], 0, session);
  if (!session[0])
  {
    v36 = 0;
    v38 = 0;
    a6 = v45;
    Mutable = 0;
LABEL_8:
    if (v94)
    {
      appended = 4294954382;
      goto LABEL_283;
    }

    if (v23 != 180 && v23)
    {
      appended = 4294954382;
      if (a11 != a16 || a12 != a15)
      {
        goto LABEL_283;
      }
    }

    else
    {
      appended = 4294954382;
      if (a11 != a15 || a12 != a16)
      {
        goto LABEL_283;
      }
    }

    if (PixelFormatType != v95)
    {
      goto LABEL_282;
    }

    if (PixelFormatType > 1751410031)
    {
      if (PixelFormatType > 2019963439)
      {
        if (PixelFormatType > 2021078067)
        {
          if (PixelFormatType > 2033463855)
          {
            if (PixelFormatType == 2033463856)
            {
              v40 = a18 | a17;
              if (v23 || v40)
              {
                v41 = 0;
                v80 = v23 == 90;
                v81 = v23;
                if (v23 == 90)
                {
                  v42 = vt_Rotate_y420_90CW;
                }

                else
                {
                  v42 = vt_Rotate_y420_180;
                }

                if (!v80 && v81 != 180)
                {
                  v41 = 0;
                  if (v92 == 270)
                  {
                    v42 = vt_Rotate_y420_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_y420_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_y420_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_y420_Ver;
              goto LABEL_274;
            }

            if (PixelFormatType == 2037741158 || PixelFormatType == 2037741171)
            {
              v40 = a18 | a17;
              if (v23 || v40)
              {
                v41 = 0;
                v65 = v23 == 90;
                v66 = v23;
                if (v23 == 90)
                {
                  v42 = vt_Rotate_yuvs_90CW;
                }

                else
                {
                  v42 = vt_Rotate_yuvs_180;
                }

                if (!v65 && v66 != 180)
                {
                  v41 = 0;
                  if (v92 == 270)
                  {
                    v42 = vt_Rotate_yuvs_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_NonPlanar16_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_yuvs_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_yuvs_Ver;
LABEL_274:
              if (v57)
              {
                v72 = v56;
              }

              else
              {
                v72 = v58;
              }

              if (!v40 && v41)
              {
                a6 = VTPixelTransferChainAppendSoftwareNode(v93, 0, v41, 0, 0, 0, 0);
                v40 = 0;
                *(a22 + 128) = 1;
              }

              goto LABEL_280;
            }

LABEL_223:
            v72 = 0;
            v73 = 0;
            if (!(a18 | a17))
            {
LABEL_282:
              appended = a6;
              goto LABEL_283;
            }

LABEL_293:
            appended = VTPixelTransferChainAppendRotationNode(v93, v72, 0, v73, 0, 0);
            *(a22 + 128) = 1;
            goto LABEL_283;
          }

          if (PixelFormatType != 2021078068)
          {
            v43 = 2021078128;
            goto LABEL_115;
          }

LABEL_119:
          v40 = a18 | a17;
          if (v23 || v40)
          {
            v41 = 0;
            v59 = v23 == 90;
            v60 = v23;
            if (v23 == 90)
            {
              v42 = vt_Rotate_x420_90CW;
            }

            else
            {
              v42 = vt_Rotate_x420_180;
            }

            if (!v59 && v60 != 180)
            {
              v41 = 0;
              if (v92 == 270)
              {
                v42 = vt_Rotate_x420_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v42 = 0;
            v41 = vt_Copy_x420_Crop;
            if (PixelFormatType != 2016686640 && PixelFormatType != 2019963440 && PixelFormatType != 2021077552)
            {
              v42 = 0;
              v41 = vt_Copy_x444_Crop;
            }
          }

          if (a17)
          {
            v56 = vt_Flip_x420_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_x420_Ver;
          goto LABEL_274;
        }

        if (PixelFormatType > 2019964015)
        {
          if (PixelFormatType == 2019964016)
          {
            goto LABEL_116;
          }

          v52 = 2021077552;
        }

        else
        {
          if (PixelFormatType == 2019963440)
          {
            goto LABEL_119;
          }

          v52 = 2019963956;
        }

LABEL_85:
        if (PixelFormatType != v52)
        {
          goto LABEL_223;
        }

        goto LABEL_119;
      }

      if (PixelFormatType <= 1999843441)
      {
        if (PixelFormatType <= 1815491697)
        {
          if (PixelFormatType == 1751410032)
          {
            goto LABEL_96;
          }

          v44 = 1751411059;
          goto LABEL_95;
        }

        if (PixelFormatType != 1815491698)
        {
          if (PixelFormatType == 1983000886)
          {
            v40 = a18 | a17;
            if (v23 || v40)
            {
              v41 = 0;
              v78 = v23 == 90;
              v79 = v23;
              if (v23 == 90)
              {
                v42 = vt_Rotate_v216_90CW;
              }

              else
              {
                v42 = vt_Rotate_v216_180;
              }

              if (!v78 && v79 != 180)
              {
                v41 = 0;
                if (v92 == 270)
                {
                  v42 = vt_Rotate_v216_90CCW;
                }

                else
                {
                  v42 = 0;
                }
              }
            }

            else
            {
              v41 = vt_Copy_NonPlanar32_Crop;
              v42 = 0;
            }

            if (a17)
            {
              v56 = vt_Flip_v216_Hor;
            }

            else
            {
              v56 = 0;
            }

            v57 = a18 == 0;
            v58 = vt_Flip_v216_Ver;
            goto LABEL_274;
          }

          goto LABEL_223;
        }

LABEL_176:
        v40 = a18 | a17;
        if (v23 || v40)
        {
          v69 = v23 == 90;
          v70 = v23;
          if (v23 == 90)
          {
            v42 = vt_Rotate_64_90CW;
          }

          else
          {
            v42 = vt_Rotate_64_180;
          }

          if (!v69 && v70 != 180)
          {
            if (v92 == 270)
            {
              v42 = vt_Rotate_64_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        if (a17)
        {
          v71 = vt_Flip_64_Hor;
        }

        else
        {
          v71 = 0;
        }

        if (a18)
        {
          v72 = vt_Flip_64_Ver;
        }

        else
        {
          v72 = v71;
        }

LABEL_280:
        if (v42)
        {
          a6 = VTPixelTransferChainAppendRotationNode(v93, v42, v92, 0, 0, 0);
          v73 = 1;
          *(a22 + 128) = 1;
          if (!v40)
          {
            goto LABEL_282;
          }
        }

        else
        {
          v73 = 0;
          if (!v40)
          {
            goto LABEL_282;
          }
        }

        goto LABEL_293;
      }

      if (PixelFormatType <= 2016687155)
      {
        if (PixelFormatType == 1999843442)
        {
          goto LABEL_116;
        }

        v52 = 2016686640;
        goto LABEL_85;
      }

      if (PixelFormatType == 2016687156)
      {
        goto LABEL_119;
      }

      v43 = 2016687216;
      goto LABEL_115;
    }

    if (PixelFormatType > 1278226487)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType <= 1717855599)
        {
          if (PixelFormatType != 1380411457)
          {
            if (PixelFormatType == 1647534392)
            {
              v40 = a18 | a17;
              if (v23 || v40)
              {
                v41 = 0;
                v76 = v23 == 90;
                v77 = v23;
                if (v23 == 90)
                {
                  v42 = vt_Rotate_b3a8_90CW;
                }

                else
                {
                  v42 = vt_Rotate_b3a8_180;
                }

                if (!v76 && v77 != 180)
                {
                  v41 = 0;
                  if (v92 == 270)
                  {
                    v42 = vt_Rotate_b3a8_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_b3a8_b3a8_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_b3a8_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_b3a8_Ver;
              goto LABEL_274;
            }

            goto LABEL_223;
          }

          goto LABEL_176;
        }

        if (PixelFormatType == 1717855600)
        {
          goto LABEL_116;
        }

        v43 = 1717856627;
      }

      else
      {
        if (PixelFormatType > 1278226535)
        {
          if (PixelFormatType == 1278226536)
          {
            goto LABEL_96;
          }

          v44 = 1278226742;
LABEL_95:
          if (PixelFormatType != v44)
          {
            goto LABEL_223;
          }

LABEL_96:
          v40 = a18 | a17;
          if (v23 || v40)
          {
            v41 = 0;
            v63 = v23 == 90;
            v64 = v23;
            if (v23 == 90)
            {
              v42 = vt_Rotate_16_90CW;
            }

            else
            {
              v42 = vt_Rotate_16_180;
            }

            if (!v63 && v64 != 180)
            {
              v41 = 0;
              if (v92 == 270)
              {
                v42 = vt_Rotate_16_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v41 = vt_Copy_NonPlanar16_Crop;
            v42 = 0;
          }

          if (a17)
          {
            v56 = vt_Flip_16_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_16_Ver;
          goto LABEL_274;
        }

        if (PixelFormatType == 1278226488)
        {
          v40 = a18 | a17;
          if (v23 || v40)
          {
            v41 = 0;
            v74 = v23 == 90;
            v75 = v23;
            if (v23 == 90)
            {
              v42 = vt_Rotate_8_90CW;
            }

            else
            {
              v42 = vt_Rotate_8_180;
            }

            if (!v74 && v75 != 180)
            {
              v41 = 0;
              if (v92 == 270)
              {
                v42 = vt_Rotate_8_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v41 = vt_Copy_NonPlanar8_Crop;
            v42 = 0;
          }

          if (a17)
          {
            v56 = vt_Flip_8_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_8_Ver;
          goto LABEL_274;
        }

        v43 = 1278226534;
      }

LABEL_115:
      if (PixelFormatType != v43)
      {
        goto LABEL_223;
      }

LABEL_116:
      v40 = a18 | a17;
      if (v23 || v40)
      {
        v41 = 0;
        v54 = v23 == 90;
        v55 = v23;
        if (v23 == 90)
        {
          v42 = vt_Rotate_32_90CW;
        }

        else
        {
          v42 = vt_Rotate_32_180;
        }

        if (!v54 && v55 != 180)
        {
          v41 = 0;
          if (v92 == 270)
          {
            v42 = vt_Rotate_32_90CCW;
          }

          else
          {
            v42 = 0;
          }
        }
      }

      else
      {
        v41 = vt_Copy_NonPlanar32_Crop;
        v42 = 0;
      }

      if (a17)
      {
        v56 = vt_Flip_32_Hor;
      }

      else
      {
        v56 = 0;
      }

      v57 = a18 == 0;
      v58 = vt_Flip_32_Ver;
      goto LABEL_274;
    }

    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType > 875836533)
      {
        if (PixelFormatType != 875836534)
        {
          v43 = 1111970369;
          goto LABEL_115;
        }

LABEL_101:
        v40 = a18 | a17;
        if (v23 || v40)
        {
          v41 = 0;
          v61 = v23 == 90;
          v62 = v23;
          if (v23 == 90)
          {
            v42 = vt_Rotate_420v_90CW;
          }

          else
          {
            v42 = vt_Rotate_420v_180;
          }

          if (!v61 && v62 != 180)
          {
            v41 = 0;
            if (v92 == 270)
            {
              v42 = vt_Rotate_420v_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
          if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
          {
            v41 = vt_Copy_420v_Crop;
          }

          else
          {
            v41 = vt_Copy_444v_Crop;
          }
        }

        if (a17)
        {
          v56 = vt_Flip_420v_Hor;
        }

        else
        {
          v56 = 0;
        }

        v57 = a18 == 0;
        v58 = vt_Flip_420v_Ver;
        goto LABEL_274;
      }

      if (PixelFormatType == 875704438)
      {
        goto LABEL_101;
      }

      v53 = 875836518;
    }

    else
    {
      if (PixelFormatType <= 846624120)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_116;
        }

        if (PixelFormatType != 846624102)
        {
          goto LABEL_223;
        }

LABEL_173:
        v40 = a18 | a17;
        if (v23 || v40)
        {
          v41 = 0;
          v67 = v23 == 90;
          v68 = v23;
          if (v23 == 90)
          {
            v42 = vt_Rotate_2vuy_90CW;
          }

          else
          {
            v42 = vt_Rotate_2vuy_180;
          }

          if (!v67 && v68 != 180)
          {
            v41 = 0;
            if (v92 == 270)
            {
              v42 = vt_Rotate_2vuy_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v41 = vt_Copy_NonPlanar16_Crop;
          v42 = 0;
        }

        if (a17)
        {
          v56 = vt_Flip_2vuy_Hor;
        }

        else
        {
          v56 = 0;
        }

        v57 = a18 == 0;
        v58 = vt_Flip_2vuy_Ver;
        goto LABEL_274;
      }

      if (PixelFormatType == 846624121)
      {
        goto LABEL_173;
      }

      v53 = 875704422;
    }

    if (PixelFormatType != v53)
    {
      goto LABEL_223;
    }

    goto LABEL_101;
  }

  v47 = MEMORY[0x1E695E9D8];
  v48 = MEMORY[0x1E695E9E8];
  theDict = CFDictionaryCreateMutable(v46, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v46, 0, v47, v48);
  v36 = CFDictionaryCreateMutable(v46, 0, v47, v48);
  key = *MEMORY[0x1E6965D88];
  value = CFDictionaryGetValue(a4, *MEMORY[0x1E6965D88]);
  v84 = *MEMORY[0x1E6965F30];
  v88 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965F30]);
  v85 = *MEMORY[0x1E6965F98];
  v89 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965F98]);
  v86 = *MEMORY[0x1E6965EC8];
  v90 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965EC8]);
  v49 = *MEMORY[0x1E695E4D0];
  if (a19)
  {
    v50 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v50 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(session[0], @"WriteBlackPixelsOutsideDestRect", v50);
  VTMetalTransferSessionSetProperties(session[0], a20);
  if (v23)
  {
    FigCFDictionarySetInt();
  }

  if (a17)
  {
    CFDictionarySetValue(Mutable, @"FlipHorizontalOrientation", v49);
  }

  if (a18)
  {
    CFDictionarySetValue(Mutable, @"FlipVerticalOrientation", v49);
  }

  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  if (value)
  {
    CFDictionarySetValue(v36, key, value);
  }

  v38 = theDict;
  if (v88)
  {
    CFDictionarySetValue(v36, v84, v88);
  }

  if (v89)
  {
    CFDictionarySetValue(v36, v85, v89);
  }

  if (v90)
  {
    CFDictionarySetValue(v36, v86, v90);
  }

  CFDictionarySetValue(theDict, @"SourceAmendments", Mutable);
  CFDictionarySetValue(theDict, @"DestinationAmendments", v36);
  if (a21)
  {
    CFDictionarySetValue(theDict, @"SetGPUPriorityLow", v49);
  }

  v51 = VTMetalTransferSessionTransferImageSync(session[0], pixelBuffer, a3, theDict);
  if (v51)
  {
    goto LABEL_65;
  }

  if (a23)
  {
    *a23 = 1;
  }

  *(a22 + 128) = 2;
  v51 = VTPixelTransferChainAppendNode(v93, session[0]);
  if (v51)
  {
LABEL_65:
    a6 = v51;
    goto LABEL_8;
  }

  appended = 0;
LABEL_283:
  if (v38)
  {
    CFRelease(v38);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_289:
  if (session[0])
  {
    CFRelease(session[0]);
  }

  return appended;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a7;
  v62 = a8;
  v67 = a4;
  v68 = a5;
  v60 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v59 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v63 = *a2;
  v64 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v65 = v16;
  v66 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v67 * (v35 + 1 + v36)) > *v68 || (v38 = v34 + 1 + v37, (*v62 * v38) > *a9) || (v62[1] * (v38 / 2)) > a9[1] || (v62[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v65;
      ++v66;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v63)
  {
    v32 = v63 - v30;
  }

  if (v33 + v31 > v64)
  {
    v33 = v64 - v31;
  }

  if (v35 + v36 > v66)
  {
    v35 = v66 - v36;
  }

  if (v34 + v37 > v65)
  {
    v34 = v65 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v67 + 8 * (v39 + v30)) > *v68)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v62 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v61;
  if (*(v61 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v62[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v61 + 16) && (v46 + v62[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v57, v58);
    v47 = v61;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v63;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v67;
  v23[7] = v60;
  v23[8] = v49;
  v50 = v64;
  v23[9] = v68;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v62;
  v23[18] = v28;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}