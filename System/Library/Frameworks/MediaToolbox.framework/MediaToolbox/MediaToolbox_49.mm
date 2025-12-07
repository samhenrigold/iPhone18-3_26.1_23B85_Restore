__CFString *vdms_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVenueDescriptionMetadataSupplier %p: ", a1);
  FigSimpleMutexLock();
  CFStringAppendFormat(Mutable, 0, @"VideoTargetArray %@,", *(DerivedStorage + 24), 0);
  FigSimpleMutexUnlock();
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t vdms_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(@"SMS_VideoTargetArray", a2))
  {
    v8 = *(DerivedStorage + 24);
    if (!v8)
    {
      v12 = 0;
      *a4 = 0;
      goto LABEL_12;
    }

    Copy = CFArrayCreateCopy(a3, v8);
  }

  else
  {
    if (!CFEqual(@"SMS_ProcessingStatus", a2))
    {
      v12 = 4294951446;
      goto LABEL_12;
    }

    v10 = *(DerivedStorage + 16);
    if (v10 == 7)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 6;
    }

    valuePtr = v11;
    Copy = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  v12 = 0;
  *a4 = Copy;
LABEL_12:
  FigSimpleMutexUnlock();
  return v12;
}

CFIndex vdms_removeFVTNotificationListeners(CFArrayRef theArray, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v4 < result; result = 0)
  {
    CFArrayGetValueAtIndex(theArray, v4);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

double vdms_deferredAssetPropertyLoadedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return vdms_deferredAssetPropertyLoadedCallback_cold_5(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v38, v39, SHIDWORD(v39), v40);
  }

  v16 = DerivedStorage;
  v17 = FigCFEqual();
  if (!v17)
  {
    v17 = FigCFEqual();
    if (!v17)
    {
      return vdms_deferredAssetPropertyLoadedCallback_cold_4(v17, v18, v19, v20, v21, v22, v23, v24, v38, v39, SHIDWORD(v39), v40);
    }
  }

  if (*v16 != a4)
  {
    return vdms_deferredAssetPropertyLoadedCallback_cold_1(v17, v18, v19, v20, v21, v22, v23, v24, v38, v39, SHIDWORD(v39), v40);
  }

  CFDictionaryGetValue(a5, @"assetPayload_Property");
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    if (*(v16 + 16) == 1)
    {
      if (FigCFEqual())
      {
        v26 = CMBaseObjectGetDerivedStorage();
        if (*(v26 + 80))
        {
          v27 = v26;
          v28 = *MEMORY[0x1E695E480];
          Current = CFAbsoluteTimeGetCurrent();
          v30 = CFDateCreate(v28, Current);
          if (v30)
          {
            vdms_deferredAssetPropertyLoadedCallback_cold_2(v27, v30);
          }

          else
          {
            vdms_deferredAssetPropertyLoadedCallback_cold_3(0, v31, v32, v33, v34, v35, v36, v37, v38, v39, SHIDWORD(v39), v40);
          }
        }
      }

      vdms_reevaluateProcessingStateAndNotify(a2, 0);
    }

    FigSimpleMutexUnlock();
  }

  return result;
}

void vdms_destroyResourceEntry(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t vdms_dataChannelResourceProcessingStateChangedNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  if (a2)
  {
    FigSimpleMutexLock();
    if ((*(v14 + 16) - 5) <= 1)
    {
      FigCFDictionaryGetInt32IfPresent();
      v15 = (CMBaseObjectGetDerivedStorage() + 48);
      do
      {
        v15 = *v15;
      }

      while (v15 && !FigCFEqual());
      vdms_reevaluateProcessingStateAndNotify(a2, 0);
    }
  }

  else
  {
    vdms_dataChannelResourceProcessingStateChangedNotificationHandler_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v17, v18, SHIDWORD(v18), v19);
  }

  return FigSimpleMutexUnlock();
}

void __vdms_gracefullySetVideoTargetArray_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  vdms_reevaluateProcessingStateAndNotify(*(a1 + 32), *(a1 + 48));
  FigSimpleMutexUnlock();
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t vdms_updateDataChannelConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v10 = DerivedStorage;
        FigSimpleMutexLock();
        if (*(v10 + 16) < 4)
        {
          v13 = 4294951442;
        }

        else
        {
          DataChannelResourceEntryByTarget = vdms_findDataChannelResourceEntryByTarget(a1, a2);
          if (DataChannelResourceEntryByTarget && (v12 = DataChannelResourceEntryByTarget[3]) != 0)
          {
            v13 = FigDataChannelConfigurationAddDataChannelResource(a3, v12);
          }

          else
          {
            v13 = 0;
          }
        }

        FigSimpleMutexUnlock();
      }

      else
      {
        vdms_updateDataChannelConfig_cold_1(&v15);
        return v15;
      }
    }

    else
    {
      vdms_updateDataChannelConfig_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    vdms_updateDataChannelConfig_cold_3(&v17);
    return v17;
  }

  return v13;
}

void *vdms_findDataChannelResourceEntryByTarget(uint64_t a1, uint64_t a2)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 48);
  do
  {
    v2 = *v2;
  }

  while (v2 && !FigCFEqual());
  return v2;
}

void vdms_pumpTransferCallback(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v7 = CFRetain(Owner);
  }

  else
  {
    v7 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174D0)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 16) == 2)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    FigBytePumpRetain(a2);
    FigRetainProxyRetain();
    FigRetainProxyRetainOwner();
    v10 = *(DerivedStorage + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vdms_pumpTransferCallback_block_invoke;
    block[3] = &unk_1E748E140;
    block[6] = DerivedStorage;
    block[7] = a3;
    block[8] = a2;
    block[4] = a1;
    block[5] = v7;
    dispatch_async(v10, block);
  }

  else if (dword_1EAF174D0)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyRelease();
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t vdms_getAllDataChannelResourceProcessingStatus(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) - 7) <= 0xFFFFFFFD)
  {
    if (dword_1EAF174D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v2 = *(DerivedStorage + 48);
    if (v2)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = *(v2 + 9);
        if (v5 != 1)
        {
          v4 = 0;
        }

        v3 |= v5 == 2;
        v2 = *v2;
      }

      while (v2);
      if (v4)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (v3)
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v6;
}

void __vdms_pumpTransferCallback_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(*(a1 + 48) + 16) = 3;
  if (*(a1 + 56))
  {
    if (dword_1EAF174D0)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(*(a1 + 48) + 64) = FigBytePumpRetain(*(a1 + 64));
    v4 = *(*(a1 + 48) + 64);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v5)
    {
      v5(v4);
    }
  }

  vdms_reevaluateProcessingStateAndNotify(*(a1 + 40), 0);
  FigSimpleMutexUnlock();
  FigRetainProxyReleaseOwner();
  FigRetainProxyRelease();
  FigBytePumpRelease(*(a1 + 64));
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t OUTLINED_FUNCTION_7_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, __int16 a18, char a19, char a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_12_37(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = (a1 + 8);
  }

  *v2 = v1;
  *v1 = a1;
}

BOOL OUTLINED_FUNCTION_13_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, __int16 a18, char a19, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

CFTimeInterval OUTLINED_FUNCTION_14_35(uint64_t a1, CFDateRef theDate)
{
  v4 = *(a1 + 96);

  return CFDateGetTimeIntervalSinceDate(theDate, v4);
}

uint64_t mv_IsStringInCArrayList(CFStringRef theString1, CFStringRef **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  for (i = a2 + 1; ; ++i)
  {
    v5 = 1;
    if (CFStringCompare(theString1, *v2, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    v6 = *i;
    v2 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t FigMediaValidatorIsNonByteStreamURLStreaming(int a1, const __CFURL *a2, const __CFURL *a3, __CFHTTPMessage *a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a1 == -12939)
  {
    if (mv_IsStreaming(a2, a3, a4))
    {
      return 1;
    }

    if (a4)
    {
      ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(a4);
      if (ResponseStatusCode == 200 || ResponseStatusCode == 416 || ResponseStatusCode == 206)
      {
        v12 = 0;
        if (mv_IsMimeTypeInList(a4, audioMimeTypes, &v12))
        {
          goto LABEL_11;
        }

        v11 = a3 ? a3 : a2;
        if (v11)
        {
          if (mv_IsExtensionInList(v11, a4, audioExtensions, &v12 + 1))
          {
LABEL_11:
            if (a5)
            {
              *a5 = 1;
            }

            return 1;
          }

          if (!(v12 | HIBYTE(v12)))
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mv_GetValidationType(const __CFDictionary *a1, int *a2)
{
  Value = CFDictionaryGetValue(a1, @"ValidationType");
  if (Value)
  {
    v4 = Value;
    if (CFEqual(Value, @"RejectIfUnrecognized"))
    {
      v5 = 0;
LABEL_8:
      result = 0;
      *a2 = v5;
      return result;
    }

    if (CFEqual(v4, @"RequireOneRecognized"))
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (CFEqual(v4, @"IgnoreUnrecognized"))
    {
      v5 = 2;
      goto LABEL_8;
    }
  }

  return 4294954334;
}

uint64_t FigMediaValidatorValidateFormatDescription(const opaqueCMFormatDescription *a1, const __CFDictionary *a2)
{
  v16 = 0;
  v15 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = a2;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaType);
  if (CFStringFrom4CC)
  {
    v6 = CFStringFrom4CC;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(a2, CFStringFrom4CC, @"TrackTypes", &v15, &v16);
    if (IsValueInArrayInDictionary)
    {
LABEL_21:
      v11 = IsValueInArrayInDictionary;
LABEL_22:
      CFRelease(v6);
      v13 = HIBYTE(v16) != 0;
      goto LABEL_23;
    }

    if (v16)
    {
      if (v15)
      {
        if (MediaType <= 1936684397)
        {
          if (MediaType == 1668047728)
          {
            IsValueInArrayInDictionary = mv_CheckIfClosedCaptionsPlayable(v17, v6, a1, 0, &v16 + 1);
            goto LABEL_21;
          }

          if (MediaType == 1935832172)
          {
            IsValueInArrayInDictionary = mv_CheckIfSubTitlesPlayable(v17, v6, a1, 0, &v16 + 1);
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (MediaType == 1936684398)
        {
          IsValueInArrayInDictionary = mv_CheckIfAudioPlayable(v17, v6, a1, 0, 0, &v16 + 1);
          goto LABEL_21;
        }

        if (MediaType != 1953325924)
        {
          if (MediaType == 1986618469)
          {
            IsValueInArrayInDictionary = mv_CheckIfVideoPresentable(v17, v6, a1, 0, 0, 0, 0, &v16 + 1);
            goto LABEL_21;
          }

LABEL_20:
          IsValueInArrayInDictionary = mv_CheckIfOtherMediaTypePlayable(v17, v6, a1, &v16 + 1);
          goto LABEL_21;
        }

        MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
        v9 = mv_CreateCFStringFrom4CC(MediaSubType);
        if (v9)
        {
          v10 = v9;
          v19 = 0;
          v11 = mv_IsValueInArrayInDictionary(a2, v9, v6, &v19 + 1, &v19);
          if (!v11)
          {
            if (v19)
            {
              v12 = 0;
              if (!HIBYTE(v19))
              {
                v11 = FigSignalErrorAt();
                v12 = 1;
              }
            }

            else
            {
              v12 = 0;
            }

            HIBYTE(v16) = v12;
          }

          CFRelease(v10);
          goto LABEL_22;
        }

        FigMediaValidatorValidateFormatDescription_cold_1(&v20);
      }

      else
      {
        FigMediaValidatorValidateFormatDescription_cold_2(&v20);
      }
    }

    else
    {
      FigMediaValidatorValidateFormatDescription_cold_3(&v20);
    }

    v11 = v20;
    goto LABEL_22;
  }

  FigMediaValidatorValidateFormatDescription_cold_4(&v20);
  v13 = 0;
  v11 = v20;
LABEL_23:
  if (v11 == 0 && v13)
  {
    return 4294954346;
  }

  else
  {
    return v11;
  }
}

uint64_t mv_CheckIfVideoPresentable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, uint64_t a4, uint64_t a5, int a6, _BYTE *a7, BOOL *a8)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a7)
  {
    *a7 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v17 = CFStringFrom4CC;
    v158 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v158 + 1, &v158);
    if (IsValueInArrayInDictionary || !v158 && (IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), v17, @"VideoCodecs", &v158 + 1, &v158), IsValueInArrayInDictionary))
    {
      v31 = IsValueInArrayInDictionary;
      goto LABEL_151;
    }

    resolvedDictionaryOut = 0;
    values[0] = 0;
    value = 0;
    v154 = a4;
    if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
    {
LABEL_33:
      if (!v158)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v141, cf, v145);
        v31 = v40;
        goto LABEL_148;
      }

      if (!HIBYTE(v158))
      {
        v31 = FigSignalErrorAt();
        if (!v31)
        {
          goto LABEL_148;
        }

        goto LABEL_46;
      }

      v32 = a8;
      v33 = CMFormatDescriptionGetMediaSubType(desc);
      v34 = mv_CreateCFStringFrom4CC(v33);
      v162 = 0;
      v163 = 0;
      v160 = 0;
      v161 = 0;
      if (!v34)
      {
        mv_CheckIfVideoPresentable_cold_6(values);
        v31 = LODWORD(values[0]);
        a8 = v32;
        if (!LODWORD(values[0]))
        {
          goto LABEL_148;
        }

        goto LABEL_46;
      }

      v35 = v34;
      v36 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *MEMORY[0x1E695E4D0]);
      VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      number = 0;
      valuePtr = 0;
      *v165 = 0;
      v164 = 0;
      if (VideoDecoderInstance)
      {
        goto LABEL_39;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
      v43 = *(a1 + 112);
      TypeID = CFNumberGetTypeID();
      mv_GetCodecProperty(v43, v35, @"VideoCodecProfiles", @"VideoMaxWidth", TypeID, &number);
      if (VideoProfileAndLevelConstraints)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v164) && v164 < Dimensions.width)
      {
        goto LABEL_193;
      }

      v148 = v36;
      v45 = *(a1 + 112);
      v46 = CFNumberGetTypeID();
      mv_GetCodecProperty(v45, v35, @"VideoCodecProfiles", @"VideoMaxHeight", v46, &number);
      if (VideoProfileAndLevelConstraints)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v164) && v164 < Dimensions.height)
      {
        goto LABEL_193;
      }

      v47 = *(a1 + 112);
      v48 = CFNumberGetTypeID();
      mv_GetCodecProperty(v47, v35, @"VideoCodecProfiles", @"VideoMaxPixelsPerFrame", v48, &number);
      if (VideoProfileAndLevelConstraints)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v164) && v164 < Dimensions.height * Dimensions.width)
      {
LABEL_193:
        mv_CheckIfVideoPresentable_cold_1(values);
        goto LABEL_230;
      }

      if (a5)
      {
        v49 = *(a1 + 112);
        v50 = CFBooleanGetTypeID();
        mv_GetCodecProperty(v49, v35, @"VideoCodecProfiles", @"VideoNoFrameReordering", v50, &valuePtr);
        if (valuePtr)
        {
          if (CFBooleanGetValue(valuePtr))
          {
            values[0] = 0;
            FigTrackReaderGetFigBaseObject();
            v52 = v51;
            v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v53)
            {
              v53(v52, @"TrackFrameReorderingRequired", v36, values);
            }

            if (values[0])
            {
              v54 = CFBooleanGetValue(values[0]);
              CFRelease(values[0]);
              if (v54)
              {
LABEL_39:
                VideoProfileAndLevelConstraints = FigSignalErrorAt();
LABEL_40:
                v31 = VideoProfileAndLevelConstraints;
LABEL_41:
                a8 = v32;
                goto LABEL_42;
              }
            }
          }
        }
      }

      VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(*(a1 + 112), v35, &v163, 0, &v162, &v161, &v160, 0);
      if (VideoProfileAndLevelConstraints)
      {
        goto LABEL_40;
      }

      v55 = v160;
      if (!v160 || !(v163 | v161))
      {
        goto LABEL_206;
      }

      v159 = 0;
      if (v161)
      {
        CFNumberGetValue(v161, kCFNumberSInt32Type, &v159 + 4);
        v55 = v160;
      }

      CFNumberGetValue(v55, kCFNumberSInt32Type, &v159);
      if (v33 <= 1752589104)
      {
        if (v33 != 1635148593)
        {
          if (v33 == 1748121139)
          {
            v150 = v17;
            v56 = a1;
            v57 = v163;
            v58 = HIDWORD(v159);
            v156 = v159;
            Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
            if (!Extension)
            {
              goto LABEL_247;
            }

            v60 = Extension;
            v61 = CFDictionaryGetTypeID();
            if (v61 != CFGetTypeID(v60))
            {
              goto LABEL_247;
            }

            v62 = CFDictionaryGetValue(v60, @"d263");
            if (!v62)
            {
              goto LABEL_247;
            }

            ValueAtIndex = v62;
            v64 = CFArrayGetTypeID();
            if (v64 == CFGetTypeID(ValueAtIndex))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
              if (!ValueAtIndex)
              {
                goto LABEL_247;
              }
            }

            else
            {
              v87 = CFDataGetTypeID();
              if (v87 != CFGetTypeID(ValueAtIndex))
              {
                goto LABEL_247;
              }
            }

            if (CFDataGetLength(ValueAtIndex) >= 7)
            {
              BytePtr = CFDataGetBytePtr(ValueAtIndex);
              v89 = BytePtr[6];
              v90 = BytePtr[5];
              if (v57)
              {
                v36 = v148;
                if (!mv_IsIntInCFArray(v89, v57))
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v36 = v148;
                if (v58 < v89)
                {
                  goto LABEL_246;
                }
              }

              if (v156 >= v90)
              {
                v17 = v150;
                goto LABEL_206;
              }

LABEL_246:
              FigSignalErrorAt();
            }

LABEL_247:
            v31 = 4294954341;
            a8 = v32;
            a1 = v56;
            v17 = v150;
            goto LABEL_42;
          }

LABEL_206:
          v114 = *(a1 + 112);
          v115 = CFBooleanGetTypeID();
          mv_GetCodecProperty(v114, v35, @"VideoCodecProfiles", @"VideoNoInterlacing", v115, &valuePtr);
          if (VideoProfileAndLevelConstraints)
          {
            goto LABEL_40;
          }

          if (!valuePtr || (v116 = CFBooleanGetValue(valuePtr), v33 != 1635148593) || !v116 || (LOBYTE(value) = 0, resolvedDictionaryOut = 0, values[0] = 0, (Extensions = CMFormatDescriptionGetExtensions(desc)) != 0) && (v118 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) != 0 && (v119 = v118, v120 = CFDictionaryGetTypeID(), v120 == CFGetTypeID(v119)) && (v121 = CFDictionaryGetValue(v119, @"avcC")) != 0 && ((v122 = v121, v123 = CFArrayGetTypeID(), v123 != CFGetTypeID(v122)) || (v122 = CFArrayGetValueAtIndex(v122, 0)) != 0) && (v124 = CFDataGetTypeID(), v124 == CFGetTypeID(v122)) && (CFDataGetBytePtr(v122), CFDataGetLength(v122), !FigH264Bridge_GetSPSFromAVCC()) && !FigH264Bridge_GetSPSIsInterlaced() && !value)
          {
            v125 = *(a1 + 112);
            v126 = CFStringGetTypeID();
            mv_GetCodecProperty(v125, v35, @"VideoCodecProfiles", @"MaxVideoTrackMatrixType", v126, v165);
            v31 = v127;
            if (v127)
            {
              goto LABEL_41;
            }

            a8 = v32;
            if (*v165)
            {
              values[0] = 0;
              FigTrackReaderGetFigBaseObject();
              v129 = v128;
              v130 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v130)
              {
                v131 = v130(v129, @"TrackMatrix", v36, values);
                v31 = 0;
                v132 = values[0];
                if (!v131 && values[0])
                {
                  v31 = mv_CheckIfMatrixIsSupported(*v165, values[0]);
                  v132 = values[0];
                }

                if (v132)
                {
                  CFRelease(v132);
                }
              }

              else
              {
                v31 = 0;
              }
            }

LABEL_42:
            CFRelease(v35);
            if (!v31)
            {
LABEL_148:
              v41 = 0;
              if (!a8)
              {
                goto LABEL_151;
              }

LABEL_149:
              if (!v31)
              {
                *a8 = v41;
              }

              goto LABEL_151;
            }

LABEL_46:
            v41 = *(a1 + 104) == 1;
            if (*(a1 + 104) == 1)
            {
              v31 = 0;
            }

            else
            {
              v31 = v31;
            }

            if (!a8)
            {
              goto LABEL_151;
            }

            goto LABEL_149;
          }

          mv_CheckIfVideoPresentable_cold_5(values);
LABEL_230:
          v31 = LODWORD(values[0]);
          goto LABEL_41;
        }

        v73 = v163;
        cfa = v162;
        v151 = HIDWORD(v159);
        v146 = v159;
        v74 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
        if (v74)
        {
          v75 = v74;
          v76 = CFDictionaryGetTypeID();
          if (v76 == CFGetTypeID(v75))
          {
            v77 = CFDictionaryGetValue(v75, @"avcC");
            if (v77)
            {
              v78 = v77;
              v79 = CFArrayGetTypeID();
              if (v79 == CFGetTypeID(v78))
              {
                v78 = CFArrayGetValueAtIndex(v78, 0);
                if (!v78)
                {
                  goto LABEL_205;
                }
              }

              else
              {
                v96 = CFDataGetTypeID();
                if (v96 != CFGetTypeID(v78))
                {
                  goto LABEL_205;
                }
              }

              if (CFDataGetLength(v78) >= 5)
              {
                v97 = CFDataGetBytePtr(v78);
                v98 = v97[1];
                v99 = v97[3];
                if (v73)
                {
                  IsIntInCFArray = mv_IsIntInCFArray(v97[1], v73);
                }

                else
                {
                  IsIntInCFArray = v151 >= v98;
                }

                if (!IsIntInCFArray)
                {
                  goto LABEL_268;
                }

                if (!a6)
                {
                  v153 = v17;
                  if (a5 && cfa && mv_isMovieFamilyFormatReader())
                  {
                    v136 = v146;
                    LODWORD(values[0]) = v146;
                    v137 = mv_EvaluateProfileConstraints(v98, cfa, a5, values, 0);
                    if (SLODWORD(values[0]) < v146)
                    {
                      v136 = values[0];
                    }

                    v146 = v136;
                    v17 = v153;
                    if (!v137)
                    {
                      goto LABEL_268;
                    }
                  }

                  v17 = v153;
                  if (v146 < v99)
                  {
                    if (!v154 || !a5 || !mv_isMovieFamilyFormatReader())
                    {
                      goto LABEL_268;
                    }

                    v108 = CMVideoFormatDescriptionGetDimensions(desc);
                    v109 = 0.0;
                    if (v146 > 40)
                    {
                      if (v146 > 49)
                      {
                        if (v146 == 50)
                        {
                          v135 = 0x4122000000000000;
                        }

                        else
                        {
                          if (v146 != 51)
                          {
                            goto LABEL_263;
                          }

                          v135 = 0x412E000000000000;
                        }

                        goto LABEL_262;
                      }

                      if (v146 != 41)
                      {
                        if (v146 == 42)
                        {
                          v109 = 522240.0;
                        }

LABEL_263:
                        v138 = v108.height + 30;
                        if (v108.height >= -15)
                        {
                          v138 = v108.height + 15;
                        }

                        v139 = v138 >> 4;
                        v140 = v108.width + 15;
                        if (v108.width < -15)
                        {
                          v140 = v108.width + 30;
                        }

                        v17 = v153;
                        if (mv_CheckIfDroppingFramesEnablesPlayability(a5, v109 / (v139 * (v140 >> 4)), 0.0))
                        {
                          goto LABEL_205;
                        }

LABEL_268:
                        v31 = 4294954341;
                        FigSignalErrorAt();
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      if (v146 <= 31)
                      {
                        if (v146 == 30)
                        {
                          v109 = 40500.0;
                        }

                        else if (v146 == 31)
                        {
                          v109 = 108000.0;
                        }

                        goto LABEL_263;
                      }

                      if (v146 == 32)
                      {
                        v109 = 216000.0;
                        goto LABEL_263;
                      }

                      if (v146 != 40)
                      {
                        goto LABEL_263;
                      }
                    }

                    v135 = 0x410E000000000000;
LABEL_262:
                    v109 = *&v135;
                    goto LABEL_263;
                  }
                }
              }
            }
          }
        }

LABEL_205:
        v36 = v148;
        goto LABEL_206;
      }

      if (v33 != 1752589105)
      {
        if (v33 != 1836070006)
        {
          goto LABEL_206;
        }

        v150 = v17;
        v56 = a1;
        v65 = v163;
        v66 = HIDWORD(v159);
        v157 = v159;
        v67 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
        if (!v67)
        {
          goto LABEL_247;
        }

        v68 = v67;
        v69 = CFDictionaryGetTypeID();
        if (v69 != CFGetTypeID(v68))
        {
          goto LABEL_247;
        }

        v70 = CFDictionaryGetValue(v68, @"esds");
        if (!v70)
        {
          goto LABEL_247;
        }

        v71 = v70;
        v72 = CFArrayGetTypeID();
        if (v72 == CFGetTypeID(v71))
        {
          v71 = CFArrayGetValueAtIndex(v71, 0);
          if (!v71)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v91 = CFDataGetTypeID();
          if (v91 != CFGetTypeID(v71))
          {
            goto LABEL_247;
          }
        }

        v92 = CFDataGetBytePtr(v71);
        Length = CFDataGetLength(v71);
        if (!v92 || Length < 5)
        {
          goto LABEL_246;
        }

        v94 = Length - 4;
        v95 = v92 + 2;
        while (*(v95 - 2) || *(v95 - 1) || *v95 != 1 || v95[1] != 176)
        {
          ++v95;
          if (!--v94)
          {
            goto LABEL_246;
          }
        }

        v110 = v95[2];
        v111 = &byte_196E77F76;
        v112 = 15;
        while (v110 != *(v111 - 2))
        {
          v111 += 3;
          if (!--v112)
          {
            goto LABEL_247;
          }
        }

        v113 = *(v111 - 1);
        if (v65)
        {
          if (!mv_IsIntInCFArray(v113, v65))
          {
            goto LABEL_246;
          }
        }

        else if (v66 < v113)
        {
          goto LABEL_246;
        }

        if (v157 < *v111)
        {
          goto LABEL_246;
        }

        v17 = v150;
        goto LABEL_205;
      }

      v80 = v163;
      cfb = v162;
      v147 = HIDWORD(v159);
      v152 = v159;
      v81 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
      if (v81)
      {
        v82 = v81;
        v83 = CFGetTypeID(v81);
        if (v83 == CFDictionaryGetTypeID())
        {
          v84 = CFDictionaryGetValue(v82, @"hvcC");
          if (v84)
          {
            v85 = v84;
            v86 = CFGetTypeID(v84);
            if (v86 == CFArrayGetTypeID())
            {
              if (!CFArrayGetValueAtIndex(v85, 0))
              {
                goto LABEL_239;
              }

LABEL_126:
              resolvedDictionaryOut = 0;
              value = 0;
              v169 = 0;
              v168 = 0;
              if (FigHEVCBridge_GetHEVCParameterSetAtIndex() || FigHEVCBridge_GetSPSProfileTierLevel())
              {
                goto LABEL_239;
              }

              v102 = HIBYTE(v169);
              v103 = v168;
              values[0] = 0;
              if (v80)
              {
                v104 = mv_IsIntInCFArray(HIBYTE(v169), v80);
              }

              else
              {
                v104 = v147 >= HIBYTE(v169);
              }

              if (!v104)
              {
                goto LABEL_238;
              }

              if (a6)
              {
                goto LABEL_205;
              }

              if (!a5 || !cfb || !mv_isMovieFamilyFormatReader())
              {
                goto LABEL_137;
              }

              v171 = v152;
              v133 = mv_EvaluateProfileConstraints(v102, cfb, a5, &v171, values);
              if (v154 && !v133)
              {
                if (!mv_isMovieFamilyFormatReader())
                {
                  goto LABEL_238;
                }

                CMVideoFormatDescriptionGetDimensions(desc);
                v133 = mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(a5, 0.0, *values);
              }

              v134 = v152;
              if (v171 < v152)
              {
                v134 = v171;
              }

              v152 = v134;
              if (v133)
              {
LABEL_137:
                if (v152 >= v103)
                {
                  goto LABEL_205;
                }

                if (v154 && a5 && mv_isMovieFamilyFormatReader())
                {
                  v105 = CMVideoFormatDescriptionGetDimensions(desc);
                  v106 = 0.0;
                  if (v152 <= 122)
                  {
                    if (v152 > 89)
                    {
                      switch(v152)
                      {
                        case 'Z':
                          v106 = 16588800.0;
                          break;
                        case ']':
                          v106 = 33177600.0;
                          break;
                        case 'x':
                          v106 = 66846720.0;
                          break;
                      }
                    }

                    else
                    {
                      switch(v152)
                      {
                        case 30:
                          v106 = 552960.0;
                          break;
                        case 60:
                          v106 = 3686400.0;
                          break;
                        case 63:
                          v106 = 7372800.0;
                          break;
                      }
                    }
                  }

                  else if (v152 <= 155)
                  {
                    switch(v152)
                    {
                      case 123:
                        v106 = 133693440.0;
                        break;
                      case 150:
                        v106 = 267386880.0;
                        break;
                      case 153:
                        v106 = 534773760.0;
                        break;
                    }
                  }

                  else if (v152 > 182)
                  {
                    if (v152 == 183)
                    {
                      v106 = 2139095040.0;
                    }

                    else if (v152 == 186)
                    {
                      v106 = 4278190080.0;
                    }
                  }

                  else if (v152 == 156 || v152 == 180)
                  {
                    v106 = 1069547520.0;
                  }

                  if (mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(a5, v106 / (v105.height * v105.width), 0.0))
                  {
                    goto LABEL_205;
                  }
                }
              }

LABEL_238:
              mv_CheckIfVideoPresentable_cold_4();
              goto LABEL_239;
            }

            v101 = CFGetTypeID(v85);
            if (v101 == CFDataGetTypeID())
            {
              goto LABEL_126;
            }
          }
        }
      }

LABEL_239:
      v31 = 4294954341;
      goto LABEL_41;
    }

    v19 = CMFormatDescriptionGetMediaSubType(desc);
    v20 = *MEMORY[0x1E695E480];
    v21 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v19);
    if (!v21)
    {
      v28 = 0;
      goto LABEL_29;
    }

    v22 = v21;
    v149 = v17;
    v23 = a1;
    v24 = a5;
    v25 = a8;
    values[0] = CFDictionaryCreateMutable(v20, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(values[0], *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
    v26 = CFArrayCreate(v20, values, 1, MEMORY[0x1E695E9C0]);
    CVPixelBufferCreateResolvedAttributesDictionary(v20, v26, &resolvedDictionaryOut);
    if (resolvedDictionaryOut)
    {
      CFDictionaryGetValueIfPresent(resolvedDictionaryOut, *MEMORY[0x1E6966130], &value);
      if (value)
      {
        v27 = CFGetTypeID(value);
        if (v27 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr) = 0;
          if (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
          {
            v28 = VTPixelTransferSessionCanTransfer() != 0;
LABEL_24:
            CFRelease(v22);
            if (values[0])
            {
              CFRelease(values[0]);
              values[0] = 0;
            }

            if (v26)
            {
              CFRelease(v26);
            }

            a8 = v25;
            a5 = v24;
            a1 = v23;
            v17 = v149;
LABEL_29:
            if (resolvedDictionaryOut)
            {
              CFRelease(resolvedDictionaryOut);
            }

            if (v28)
            {
              v31 = 0;
LABEL_151:
              CFRelease(v17);
              return v31;
            }

            goto LABEL_33;
          }
        }

        else if (value)
        {
          v29 = CFGetTypeID(value);
          if (v29 == CFArrayGetTypeID() && CFArrayGetCount(value) >= 1)
          {
            v30 = 0;
            while (1)
            {
              LODWORD(valuePtr) = 0;
              if (FigCFArrayGetInt32AtIndex())
              {
                if (VTPixelTransferSessionCanTransfer())
                {
                  break;
                }
              }

              ++v30;
              v28 = 0;
              if (CFArrayGetCount(value) <= v30)
              {
                goto LABEL_24;
              }
            }

            v28 = 1;
            goto LABEL_24;
          }
        }
      }
    }

    v28 = 0;
    goto LABEL_24;
  }

  mv_CheckIfVideoPresentable_cold_7(values);
  return LODWORD(values[0]);
}

uint64_t mv_CheckIfAudioPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, _BYTE *a4, _BYTE *a5, BOOL *a6)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a5)
  {
    *a5 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (!CFStringFrom4CC)
  {
    mv_CheckIfAudioPlayable_cold_4(&number);
    return number;
  }

  v14 = CFStringFrom4CC;
  v35 = 0;
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v35 + 1, &v35);
  if (IsValueInArrayInDictionary)
  {
    goto LABEL_38;
  }

  if (v35)
  {
    goto LABEL_8;
  }

  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), v14, @"AudioCodecs", &v35 + 1, &v35);
  if (IsValueInArrayInDictionary)
  {
LABEL_38:
    v29 = IsValueInArrayInDictionary;
    goto LABEL_35;
  }

  if (v35)
  {
LABEL_8:
    if (MediaSubType == 1634754915)
    {
      mv_CheckIfAudioPlayable_cold_3(desc, &number);
      v27 = number;
      goto LABEL_24;
    }

    if (!HIBYTE(v35))
    {
      v27 = FigSignalErrorAt();
      goto LABEL_24;
    }

    v16 = CMFormatDescriptionGetMediaSubType(desc);
    v17 = mv_CreateCFStringFrom4CC(v16);
    if (!v17)
    {
      mv_CheckIfAudioPlayable_cold_2(&v39);
      v27 = v39;
      goto LABEL_24;
    }

    v18 = v17;
    BOOLean = 0;
    number = 0;
    valuePtr = 0.0;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    if (StreamBasicDescription)
    {
      p_mSampleRate = &StreamBasicDescription->mSampleRate;
      v21 = *(a1 + 112);
      TypeID = CFNumberGetTypeID();
      mv_GetCodecProperty(v21, v18, @"AudioCodecProfiles", @"AudioMaxSampleRate", TypeID, &number);
      if (v23)
      {
        v27 = v23;
        goto LABEL_22;
      }

      if (number && CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr) && *p_mSampleRate > valuePtr)
      {
        v32 = 4294954338;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 112);
        v25 = CFBooleanGetTypeID();
        mv_GetCodecProperty(v24, v18, @"AudioCodecProfiles", @"TrackMustBeDisabled", v25, &BOOLean);
        v27 = v26;
        if (v26 || !BOOLean)
        {
          goto LABEL_22;
        }

        if (!*a4 || !CFBooleanGetValue(BOOLean))
        {
LABEL_21:
          v27 = 0;
LABEL_22:
          CFRelease(v18);
LABEL_24:
          if (v27)
          {
            v28 = *(a1 + 104) == 1;
            if (*(a1 + 104) == 1)
            {
              v29 = 0;
            }

            else
            {
              v29 = v27;
            }

            if (!a6)
            {
              goto LABEL_35;
            }

            goto LABEL_33;
          }

          v29 = 0;
          goto LABEL_32;
        }

        v32 = 4294954339;
      }

      mv_CheckIfAudioPlayable_cold_1(v32, &v39);
      v27 = v39;
      goto LABEL_22;
    }

    v27 = -12957;
    goto LABEL_22;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, LODWORD(valuePtr));
  v29 = v30;
LABEL_32:
  v28 = 0;
  if (a6)
  {
LABEL_33:
    if (!v29)
    {
      *a6 = v28;
    }
  }

LABEL_35:
  CFRelease(v14);
  return v29;
}

uint64_t mv_CheckIfSubTitlesPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, _BYTE *a4, char *a5)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a4)
  {
    *a4 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v12 = CFStringFrom4CC;
    v16 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v16 + 1, &v16);
    if (!IsValueInArrayInDictionary)
    {
      if (v16)
      {
        v14 = 0;
        if (!HIBYTE(v16))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (a5)
      {
        *a5 = v14;
      }
    }

    CFRelease(v12);
  }

  else
  {
    mv_CheckIfSubTitlesPlayable_cold_1(&v17);
    return v17;
  }

  return IsValueInArrayInDictionary;
}

uint64_t mv_CheckIfClosedCaptionsPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, BOOL *a4, char *a5)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v10 = MediaSubType;
  if (a4)
  {
    *a4 = MediaSubType == 1882599480;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v12 = CFStringFrom4CC;
    v16 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v16 + 1, &v16);
    if (!IsValueInArrayInDictionary)
    {
      if (v16)
      {
        v14 = 0;
        if (!HIBYTE(v16))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v10 != 1664495672 && v10 != 1664561208 && v10 != 1882599480)
      {
        IsValueInArrayInDictionary = FigSignalErrorAt();
        v14 = 1;
      }

      if (a5)
      {
        *a5 = v14;
      }
    }

    CFRelease(v12);
  }

  else
  {
    mv_CheckIfClosedCaptionsPlayable_cold_1(&v17);
    return v17;
  }

  return IsValueInArrayInDictionary;
}

uint64_t mv_CheckIfOtherMediaTypePlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, char *a4)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v9 = CFStringFrom4CC;
    v13 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v13 + 1, &v13);
    if (!IsValueInArrayInDictionary)
    {
      if (v13)
      {
        v11 = 0;
        if (!HIBYTE(v13))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      if (a4)
      {
        *a4 = v11;
      }
    }

    CFRelease(v9);
  }

  else
  {
    mv_CheckIfOtherMediaTypePlayable_cold_1(&v14);
    return v14;
  }

  return IsValueInArrayInDictionary;
}

uint64_t FigMediaValidatorCreateInternal(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10E00405F25D67FuLL);
  if (v2 && (v3 = FigReentrantMutexCreate(), (v2[26] = v3) != 0))
  {
    v4 = 0;
    v2[8] = v2;
    *a1 = v2;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    v4 = v6;
    if (v6)
    {
      free(v2);
    }
  }

  return v4;
}

uint64_t FigMediaValidatorValidateAsyncInternal(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, unint64_t a6)
{
  values = @"com.apple.coremedia.mediavalidator";
  v28 = 0;
  v12 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a3 || !a5 || !(a2 | a6) || !CFDictionaryGetValue(a5, @"TrackTypes"))
  {
    FigMediaValidatorValidateAsyncInternal_cold_4(&v29);
LABEL_39:
    v22 = v29;
    goto LABEL_35;
  }

  if (CFDictionaryGetValue(a5, @"vide"))
  {
    v13 = 1;
  }

  else
  {
    v13 = CFDictionaryGetValue(a5, @"VideoCodecs") != 0;
  }

  if (CFDictionaryGetValue(a5, @"soun"))
  {
    v14 = 1;
  }

  else
  {
    v14 = CFDictionaryGetValue(a5, @"AudioCodecs") != 0;
  }

  if (!v14 || !v13)
  {
    FigMediaValidatorValidateAsyncInternal_cold_3(&v29);
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(a5, @"DiskCacheURL");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(a1 + 48) = Value;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 176) = CFRetain(a5);
  if (a6)
  {
    *(a1 + 56) = CFRetain(a6);
  }

  ValidationType = mv_GetValidationType(a5, (a1 + 168));
  if (ValidationType)
  {
    goto LABEL_40;
  }

  if (a2)
  {
    *a1 = CFRetain(a2);
  }

  v17 = CFDictionaryGetValue(a5, @"RefMovieSecurityPolicy");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFNumberGetTypeID() || !CFNumberGetValue(v18, kCFNumberSInt32Type, (a1 + 184)))
    {
      FigMediaValidatorValidateAsyncInternal_cold_1(&v29);
      goto LABEL_44;
    }
  }

  *(a1 + 72) = CFDictionaryGetValue(a5, @"VideoTrackPresent");
  v20 = FigSemaphoreCreate();
  *(a1 + 216) = v20;
  if (!v20)
  {
    FigMediaValidatorValidateAsyncInternal_cold_2(&v29);
LABEL_44:
    v22 = v29;
    if (!v29)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  ValidationType = FigThreadCreate();
  if (!ValidationType)
  {
    if (!FigSemaphoreWaitRelative())
    {
      v22 = 0;
      goto LABEL_35;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, values, v28);
    v22 = v21;
    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

LABEL_40:
  v22 = ValidationType;
LABEL_26:
  if (*(a1 + 216))
  {
    FigSemaphoreDestroy();
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v23 = *(a1 + 176);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 176) = 0;
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 56) = 0;
  }

LABEL_35:
  if (v12)
  {
    CFRelease(v12);
  }

  return v22;
}

uint64_t FigMediaValidatorCreateSync(void *a1)
{
  v3 = 0;
  result = FigMediaValidatorCreateInternal(&v3);
  *a1 = v3;
  return result;
}

uint64_t FigMediaValidatorValidateURL(uint64_t a1, unint64_t a2, const __CFDictionary *a3, _DWORD *a4, _OWORD *a5)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (*(a1 + 200) || *(a1 + 44) || *(a1 + 40))
  {
    return 4294954342;
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = FigSemaphoreCreate();
  v6 = FigMediaValidatorValidateAsyncInternal(a1, a2, completeSync, &v12, a3, 0);
  if (!v6)
  {
    FigSemaphoreWaitRelative();
    v6 = v12;
    *a4 = HIDWORD(v12);
    *a5 = v13;
  }

  FigSemaphoreDestroy();
  return v6;
}

uint64_t completeSync(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 16) = a6;
  return FigSemaphoreSignal();
}

uint64_t FigMediaValidatorCreateWithByteStream(unint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v15 = 0;
  v10 = FigMediaValidatorCreateInternal(&v15);
  v11 = v10;
  v12 = v15;
  if (v15)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v11 = FigMediaValidatorValidateAsyncInternal(v15, 0, a2, a3, a4, a1);
    if (v11)
    {
      free(v12);
    }

    else
    {
      *a5 = v12;
    }
  }

  return v11;
}

uint64_t FigMediaValidatorGetStatus(uint64_t a1, float *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  v2 = 1.0;
  if (!*(a1 + 44))
  {
    v2 = 0.3;
    if (!*(a1 + 80))
    {
      v2 = 0.0;
    }
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281ExtendedMIMEType(const __CFString *a1, const __CFArray *a2, const __CFDictionary *a3)
{
  cf = 0;
  v3 = mv_validateRFC4281ExtendedMIMETypeAndCopyStandardMIMEType(a1, a2, a3, 0, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t mv_validateRFC4281ExtendedMIMETypeAndCopyStandardMIMEType(const __CFString *a1, const __CFArray *a2, const __CFDictionary *a3, uint64_t a4, CFTypeRef *a5)
{
  v5 = 0;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v8 = a4;
  Length = CFStringGetLength(a1);
  v5 = malloc_type_calloc(Length + 1, 1uLL, 0x100004077774924uLL);
  if (!v5 || !CFStringGetCString(a1, v5, Length + 1, 0x8000100u))
  {
    goto LABEL_35;
  }

  v12 = 0;
  if (Length)
  {
    v13 = MEMORY[0x1E69E9830];
    do
    {
      v14 = v5[v12];
      if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune(v14, 0x4000uLL))
        {
          goto LABEL_13;
        }
      }

      else if ((*(v13 + 4 * v14 + 60) & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      ++v12;
    }

    while (Length != v12);
LABEL_35:
    free(v5);
    return 4294954344;
  }

LABEL_13:
  if (v12 == Length)
  {
    goto LABEL_35;
  }

  v43 = v8;
  v15 = 0;
  v16 = &v5[v12];
  do
  {
    v17 = v15;
    if (v12 + v15 + 1 >= Length)
    {
      break;
    }

    v18 = v16[v15 + 1];
    v19 = (v18 & 0x80000000) != 0 ? __maskrune(v16[v15 + 1], 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x4000;
    v15 = v17 + 1;
  }

  while (v18 != 59 && v19 == 0);
  v21 = *MEMORY[0x1E695E480];
  v46.length = v17 + 1;
  v46.location = v12;
  v22 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v46);
  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = v22;
  if (a5)
  {
    *a5 = CFRetain(v22);
  }

  if (!mv_IsStringInCFArrayList(v23, a2))
  {
    free(v5);
    v27 = 4294954344;
    goto LABEL_74;
  }

  v24 = v12 + v17 + 2;
  if (v24 >= Length)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = v5[v24];
      if (v26 == 42)
      {
        v25 = 1;
      }

      else if (v26 == 61)
      {
        goto LABEL_39;
      }

      ++v24;
    }

    while (v24 < Length);
    v24 = Length;
  }

LABEL_39:
  v29 = v24 + 1;
  do
  {
    v30 = v29;
    if (v29 >= Length)
    {
      if (v25)
      {
        v27 = 0;
        goto LABEL_73;
      }

      alloc = v21;
LABEL_66:
      v37 = 1;
      v34 = Length;
      goto LABEL_67;
    }

    v31 = v5[v29];
    if ((v31 & 0x80000000) != 0)
    {
      v32 = __maskrune(v31, 0x4000uLL);
    }

    else
    {
      v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x4000;
    }

    v29 = v30 + 1;
  }

  while (v32);
  alloc = v21;
  if (!v25)
  {
    goto LABEL_66;
  }

  v44 = 0;
  v41 = 0;
  v42 = 0;
  v33 = 0;
  v34 = v30;
  while (1)
  {
    v35 = v5[v34];
    if ((v35 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x4000) == 0)
    {
      goto LABEL_51;
    }

LABEL_60:
    if (++v34 >= Length)
    {
      v34 = Length;
      goto LABEL_62;
    }
  }

  if (__maskrune(v5[v34], 0x4000uLL))
  {
    goto LABEL_60;
  }

LABEL_51:
  if (v35 == 39)
  {
    v36 = v44;
    if (v42)
    {
      v36 = 1;
    }

    v44 = v36;
    v42 = 1;
    goto LABEL_60;
  }

  if (v35 != 34)
  {
    if (v33 == 0 && v44 != 0)
    {
      v33 = 1;
      v30 = v34;
    }

    goto LABEL_60;
  }

  if (!v41)
  {
    v30 = v34 + 1;
    v41 = 1;
    goto LABEL_60;
  }

  v33 = 1;
LABEL_62:
  v37 = v33 != 0;
LABEL_67:
  v27 = 0;
  if (v37 && v30 < Length && v34 > v30)
  {
    v47.location = v30;
    v47.length = v34 - v30;
    v38 = CFStringCreateWithSubstring(alloc, a1, v47);
    if (v38)
    {
      v39 = v38;
      v45 = 0;
      v27 = FigMediaValidatorValidateRFC4281Codecs(v23, v38, v25, a3, v43, &v45);
      CFRelease(v39);
    }

    else
    {
      v27 = 4294954344;
    }
  }

LABEL_73:
  free(v5);
LABEL_74:
  CFRelease(v23);
  return v27;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(CFStringRef theString, const __CFDictionary *a2, _DWORD *a3, const __CFDictionary **a4)
{
  v21 = 1;
  if (a2 && mv_GetValidationType(a2, &v21))
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_1(&v23);
    return v23;
  }

  if (!theString)
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_5(&v23);
    return v23;
  }

  Length = CFStringGetLength(theString);
  v9 = malloc_type_malloc(Length + 1, 0x7C1C561BuLL);
  if (!v9)
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_4(&v23);
    return v23;
  }

  v10 = v9;
  if (CFStringGetCString(theString, v9, Length + 1, 0x600u))
  {
    __stringp = v10;
    if (*v10 != 34)
    {
      goto LABEL_10;
    }

    __stringp = v10 + 1;
    v11 = strchr(v10 + 1, 34);
    if (v11 && *v11)
    {
      *v11 = 0;
LABEL_10:
      if (a4)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        Mutable = 0;
        if (!a3)
        {
LABEL_13:
          v13 = MEMORY[0x1E69E9830];
          do
          {
            v14 = strsep(&__stringp, ",");
            v15 = *v14;
            if (*v14)
            {
              do
              {
                if (v15 < 0)
                {
                  if (!__maskrune(v15, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v13 + 4 * v15 + 60) & 0x4000) == 0)
                {
                  break;
                }

                v16 = *++v14;
                v15 = v16;
              }

              while (v16);
            }

            v23 = v14;
            if (*v14)
            {
              v17 = strsep(&v23, ".");
              if (strlen(v17) == 4)
              {
                v18 = bswap32(*v17);
              }

              else
              {
                v18 = 0;
              }

              v19 = mv_ValidateRFC4281IdEvaluationFn(v18, v23, 2, 1, a2, a3, Mutable);
              if (v19)
              {
                goto LABEL_31;
              }
            }

            else
            {
              FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_2(&v24);
              v19 = v24;
              if (v24)
              {
                goto LABEL_31;
              }
            }
          }

          while (__stringp);
          if (a4)
          {
            v19 = 0;
            *a4 = Mutable;
            goto LABEL_33;
          }

LABEL_31:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_33;
        }
      }

      *a3 = 0;
      goto LABEL_13;
    }

    v19 = 4294954344;
  }

  else
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_3(&v23);
    v19 = v23;
  }

LABEL_33:
  free(v10);
  return v19;
}

uint64_t FigCopySetOfAudioSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = audioMimeTypes[0];
      if (audioMimeTypes[0])
      {
        v6 = off_1EAEFF150;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfAudioSupportedMIMETypes_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopySetOfAudioSupportedMIMETypes_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigCopySetOfPlaylistSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = streamingMimeType[0];
      if (streamingMimeType[0])
      {
        v6 = off_1EAEFF1E8;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfPlaylistSupportedMIMETypes_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopySetOfPlaylistSupportedMIMETypes_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigCopySetOfStreamingSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = streamingMimeType[0];
      if (streamingMimeType[0])
      {
        v6 = off_1EAEFF1E8;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v8 = audioMimeTypes[0];
      if (audioMimeTypes[0])
      {
        v9 = off_1EAEFF150;
        do
        {
          CFSetAddValue(v4, *v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfStreamingSupportedMIMETypes_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigCopySetOfStreamingSupportedMIMETypes_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t FigCopySetOfStreamingSupportedUTIs(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      for (i = 0; i != 2; ++i)
      {
        CFSetAddValue(v4, *streamingUTIs[i]);
      }

      v6 = audioUTIs[0];
      if (audioUTIs[0])
      {
        v7 = &off_1EAEFF1B8;
        do
        {
          CFSetAddValue(v4, *v6);
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfStreamingSupportedUTIs_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigCopySetOfStreamingSupportedUTIs_cold_2(&v11);
    return v11;
  }

  return result;
}

const __CFDictionary *FigMediaValidatorGetMaxFrameRate(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"MaxFrameRate");
  }

  return result;
}

uint64_t FigMediaValidatorCreateMediaValidatorPropertyList(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", a1);
      result = 0;
      *a2 = v3;
    }

    else
    {
      FigMediaValidatorCreateMediaValidatorPropertyList_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigMediaValidatorCreateMediaValidatorPropertyList_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t mv_CheckIfFormatReaderIsSupported(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 112), @"AllowedFormatReaders");
  if (result)
  {
    v2 = result;
    value = 0;
    FigFormatReaderGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      result = v5(v4, @"Identifier", *MEMORY[0x1E695E480], &value);
      if (!result)
      {
        v9.length = CFArrayGetCount(v2);
        v9.location = 0;
        v6 = CFArrayContainsValue(v2, v9, value);
        if (value)
        {
          CFRelease(value);
        }

        if (v6)
        {
          return 0;
        }

        else
        {
          mv_CheckIfFormatReaderIsSupported_cold_1(&v8);
          return v8;
        }
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t mv_CheckIfMatrixIsSupported(const void *a1, CFArrayRef theArray)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0.0;
  v19 = 0u;
  v20 = 0u;
  if (CFArrayGetCount(theArray) != 9)
  {
    return 4294954344;
  }

  v4 = 0;
  v5 = &v19;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v5);
    ++v4;
    v5 = (v5 + 4);
  }

  while (v4 != 9);
  v7 = 8;
  if (*(&v19 + 2) == 0.0 && *(&v20 + 1) == 0.0 && v21 == 1.0)
  {
    v9 = *(&v20 + 2) != 0.0;
    if (*(&v20 + 3) != 0.0)
    {
      v9 = 1;
    }

    v10 = *(&v19 + 1);
    if (*&v19 == 0.0)
    {
      v12 = *(&v19 + 3);
      v11 = *&v20;
      v13 = *(&v19 + 1) == 1.0 && *(&v19 + 3) == -1.0;
      if (v13 && *&v20 == 0.0)
      {
        goto LABEL_29;
      }

      if (*(&v19 + 1) == -1.0)
      {
        v14 = 0;
        v10 = -1.0;
        if (*(&v19 + 3) != 1.0 || *&v20 != 0.0)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v12 = *(&v19 + 3);
      v11 = *&v20;
    }

    v14 = *(&v19 + 1) == 0.0;
    if (*&v19 != -1.0 || *(&v19 + 1) != 0.0 || v11 != -1.0 || v12 != 0.0)
    {
      if (*&v19 != 0.0)
      {
        goto LABEL_37;
      }

      if (*(&v19 + 1) > 0.0 && v12 < 0.0 && v11 == 0.0)
      {
LABEL_41:
        if (*&v19 != v11 || v10 != -v12)
        {
          v9 |= 0x20u;
        }

        v7 = v9 | 0x50;
        goto LABEL_62;
      }

      if (*(&v19 + 1) >= 0.0)
      {
        goto LABEL_37;
      }

LABEL_35:
      if (v12 <= 0.0 || v11 != 0.0)
      {
LABEL_37:
        if (*&v19 >= 0.0 || !v14 || v11 >= 0.0 || v12 != 0.0)
        {
          if (v10 == 0.0 && v12 == 0.0)
          {
            if (*&v19 != v11)
            {
              v9 |= 0x20u;
            }

            if (*&v19 <= 0.0 || v11 <= 0.0 || *&v19 == 1.0 && v11 == 1.0)
            {
              if (v11 == 1.0 && *&v19 == 1.0)
              {
                v7 = v9;
              }

              else
              {
                v7 = v9 | 2;
              }
            }

            else
            {
              v7 = v9 | 0x10;
            }
          }

          else
          {
            v7 = v9 | 4;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

      goto LABEL_41;
    }

LABEL_29:
    v7 = v9 | 0x40;
  }

LABEL_62:
  if (CFEqual(a1, @"Identity"))
  {
    v18 = -1;
  }

  else if (CFEqual(a1, @"UprightUniformScale"))
  {
    v18 = -18;
  }

  else if (CFEqual(a1, @"UprightScale"))
  {
    v18 = -50;
  }

  else if (CFEqual(a1, @"Scale"))
  {
    v18 = -52;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndUniformScale"))
  {
    v18 = -82;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndUprightScale"))
  {
    v18 = -114;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndScale"))
  {
    v18 = -116;
  }

  else if (CFEqual(a1, @"OrthogonalRotation"))
  {
    v18 = -66;
  }

  else if (CFEqual(a1, @"Linear"))
  {
    v18 = -120;
  }

  else
  {
    v18 = -1;
  }

  if ((v18 & v7) != 0)
  {
    return FigSignalErrorAt();
  }

  else
  {
    return 0;
  }
}

uint64_t mv_ValidateTrackWithTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  cf = 0;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    CFStringFrom4CC = 0;
    goto LABEL_12;
  }

  v13 = v12(a3, &v62, &v63);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v63 == 1751740020;
  }

  if (v14)
  {
    v20 = v13;
LABEL_44:
    CFStringFrom4CC = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    goto LABEL_24;
  }

  v71 = 0;
  v72 = 0;
  FigTrackReaderGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    goto LABEL_8;
  }

  v17(v16, @"EditCursorService", *MEMORY[0x1E695E480], &v72);
  v18 = v72;
  if (!v72)
  {
    goto LABEL_19;
  }

  v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v31 || (*theArray = *MEMORY[0x1E6960C80], *&v66 = *(MEMORY[0x1E6960C80] + 16), v31(v18, theArray, &v71), !v71))
  {
LABEL_8:
    LODWORD(v18) = 0;
    goto LABEL_9;
  }

  v32 = 0;
  while (1)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    *theArray = 0u;
    v66 = 0u;
    v33 = v71;
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v34 || v34(v33, theArray) || (BYTE4(theArray[1]) & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v32 > 0)
    {
      break;
    }

    ++v32;
LABEL_60:
    v35 = v71;
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v36 || v36(v35, 1))
    {
      goto LABEL_62;
    }
  }

  v32 = 2;
LABEL_62:
  LODWORD(v18) = v32 > 1;
LABEL_9:
  if (v72)
  {
    CFRelease(v72);
    v72 = 0;
  }

LABEL_19:
  if (v71)
  {
    CFRelease(v71);
  }

  if (v18)
  {
    mv_ValidateTrackWithTrackReader_cold_8(theArray);
    CFStringFrom4CC = 0;
    goto LABEL_23;
  }

LABEL_24:
  TrackBoolean = mv_GetTrackBoolean(a3, @"TrackEnabled", 1);
  if (!TrackBoolean && !a5 && *(a1 + 104) == 1)
  {
    v20 = 0;
    goto LABEL_44;
  }

  v24 = v63;
  if (v63 != 1952807028)
  {
LABEL_32:
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(v24);
    if (CFStringFrom4CC)
    {
      goto LABEL_33;
    }

    mv_ValidateTrackWithTrackReader_cold_7(theArray);
    goto LABEL_23;
  }

  theArray[0] = 0;
  v72 = 0;
  if (FCSupport_GetListOfChapterTitleTrackIDs(a2, theArray, &v72, 0) || (v26 = theArray[0], theArray[0] < 1))
  {
LABEL_27:
    CFStringFrom4CC = 0;
  }

  else
  {
    v27 = v72;
    while (1)
    {
      v28 = *v27++;
      if (v28 == v62)
      {
        break;
      }

      v26 = (v26 - 1);
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    CFStringFrom4CC = CFRetain(@"ChapterName");
  }

  if (v72)
  {
    free(v72);
  }

  if (!CFStringFrom4CC)
  {
    v24 = v63;
    goto LABEL_32;
  }

LABEL_33:
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, @"TrackTypes", &v64, &v61 + 1);
  if (IsValueInArrayInDictionary)
  {
    goto LABEL_40;
  }

  if (!HIBYTE(v61))
  {
    mv_ValidateTrackWithTrackReader_cold_6(theArray);
    goto LABEL_23;
  }

  if (v64 || !a5 && *(a1 + 104))
  {
    FigCFDictionaryGetBooleanIfPresent();
    v29 = mv_GetTrackBoolean(a3, @"TrackIsSelfContained", 1);
    v30 = MEMORY[0x1E695E480];
    if (!v29)
    {
      mv_ValidateTrackWithTrackReader_cold_5(theArray);
      goto LABEL_23;
    }

    FigTrackReaderGetFigBaseObject();
    v38 = v37;
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39)
    {
      IsValueInArrayInDictionary = v39(v38, @"TrackFormatDescriptionArray", *v30, &cf);
      if (IsValueInArrayInDictionary)
      {
        goto LABEL_40;
      }

      if (cf)
      {
        Count = CFArrayGetCount(cf);
        if (Count)
        {
          v41 = Count;
          if (v63 <= 1936684397)
          {
            if (v63 == 1668047728)
            {
              v54 = cf;
              LOBYTE(theArray[0]) = 0;
              LOBYTE(v72) = 0;
              if (Count >= 1)
              {
                v55 = 0;
                v47 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v54, v55);
                  IsValueInArrayInDictionary = mv_CheckIfClosedCaptionsPlayable(a1, CFStringFrom4CC, ValueAtIndex, theArray, &v72);
                  if (IsValueInArrayInDictionary)
                  {
                    goto LABEL_40;
                  }

                  if (v72)
                  {
                    goto LABEL_135;
                  }

                  if (LOBYTE(theArray[0]))
                  {
                    v47 = 1;
                  }

                  if (v41 == ++v55)
                  {
                    goto LABEL_119;
                  }
                }
              }

              v47 = 0;
LABEL_119:
              if (!TrackBoolean)
              {
                goto LABEL_135;
              }

              v57 = *(a1 + 88);
              *(a1 + 88) = v57 + 1;
            }

            else
            {
              if (v63 != 1935832172)
              {
                goto LABEL_100;
              }

              v45 = cf;
              LOBYTE(theArray[0]) = 0;
              LOBYTE(v72) = 0;
              if (Count >= 1)
              {
                v46 = 0;
                v47 = 0;
                while (1)
                {
                  v48 = CFArrayGetValueAtIndex(v45, v46);
                  IsValueInArrayInDictionary = mv_CheckIfSubTitlesPlayable(a1, CFStringFrom4CC, v48, &v72, theArray);
                  if (IsValueInArrayInDictionary)
                  {
                    goto LABEL_40;
                  }

                  if (LOBYTE(theArray[0]))
                  {
                    goto LABEL_135;
                  }

                  if (v72)
                  {
                    v47 = 1;
                  }

                  if (v41 == ++v46)
                  {
                    goto LABEL_129;
                  }
                }
              }

              v47 = 0;
LABEL_129:
              if (!TrackBoolean)
              {
                goto LABEL_135;
              }

              v57 = *(a1 + 80);
              *(a1 + 80) = v57 + 1;
            }

            if (v57 >= 1 && !*(a1 + 104))
            {
LABEL_39:
              IsValueInArrayInDictionary = FigSignalErrorAt();
              goto LABEL_40;
            }

            v20 = 0;
          }

          else
          {
            if (v63 != 1936684398)
            {
              if (v63 == 1952807028)
              {
                if (CFEqual(CFStringFrom4CC, @"ChapterName"))
                {
                  goto LABEL_135;
                }
              }

              else if (v63 == 1986618469)
              {
                v59 = cf;
                LOBYTE(theArray[0]) = 0;
                LOBYTE(v72) = 0;
                ++*(a1 + 48);
                if (Count >= 1)
                {
                  v42 = 0;
                  v43 = 0;
                  while (1)
                  {
                    v44 = CFArrayGetValueAtIndex(v59, v42);
                    IsValueInArrayInDictionary = mv_CheckIfVideoPresentable(a1, CFStringFrom4CC, v44, a2, a3, a6, theArray, &v72);
                    if (IsValueInArrayInDictionary)
                    {
                      goto LABEL_40;
                    }

                    if (v72)
                    {
                      goto LABEL_135;
                    }

                    if (LOBYTE(theArray[0]))
                    {
                      v43 = 1;
                    }

                    if (v41 == ++v42)
                    {
                      goto LABEL_122;
                    }
                  }
                }

                v43 = 0;
LABEL_122:
                if (TrackBoolean)
                {
                  v58 = *(a1 + 56);
                  *(a1 + 56) = v58 + 1;
                  if (v58 < 1 || *(a1 + 104))
                  {
                    *(a1 + 42) = 1;
                    if (!a6)
                    {
                      *(a1 + 41) = 1;
                    }

                    v20 = 0;
                    *(a1 + 40) = v43;
                    goto LABEL_13;
                  }

                  goto LABEL_39;
                }

LABEL_135:
                v20 = 0;
                goto LABEL_13;
              }

LABEL_100:
              v21 = cf;
              if (v41 < 1)
              {
                v20 = 0;
                if (cf)
                {
                  goto LABEL_14;
                }

                goto LABEL_15;
              }

              v52 = 0;
              while (1)
              {
                LOBYTE(theArray[0]) = 0;
                v53 = CFArrayGetValueAtIndex(v21, v52);
                IsValueInArrayInDictionary = mv_CheckIfOtherMediaTypePlayable(a1, CFStringFrom4CC, v53, theArray);
                if (IsValueInArrayInDictionary)
                {
                  break;
                }

                if (v41 == ++v52)
                {
                  goto LABEL_135;
                }
              }

LABEL_40:
              v20 = IsValueInArrayInDictionary;
              goto LABEL_13;
            }

            v49 = cf;
            LOBYTE(theArray[0]) = TrackBoolean;
            LOBYTE(v72) = 0;
            LOBYTE(v71) = 0;
            ++*(a1 + 64);
            if (Count >= 1)
            {
              v50 = 0;
              v47 = 0;
              while (1)
              {
                v51 = CFArrayGetValueAtIndex(v49, v50);
                IsValueInArrayInDictionary = mv_CheckIfAudioPlayable(a1, CFStringFrom4CC, v51, theArray, &v72, &v71);
                if (IsValueInArrayInDictionary)
                {
                  goto LABEL_40;
                }

                if (v71)
                {
                  goto LABEL_135;
                }

                if (v72)
                {
                  v47 = 1;
                }

                if (v41 == ++v50)
                {
                  TrackBoolean = LOBYTE(theArray[0]);
                  goto LABEL_116;
                }
              }
            }

            v47 = 0;
LABEL_116:
            if (!TrackBoolean)
            {
              goto LABEL_135;
            }

            v20 = 0;
            ++*(a1 + 72);
            *(a1 + 41) = 257;
          }

          *(a1 + 40) = v47;
          goto LABEL_13;
        }

        mv_ValidateTrackWithTrackReader_cold_3(theArray);
      }

      else
      {
        mv_ValidateTrackWithTrackReader_cold_4(theArray);
      }

LABEL_23:
      v20 = LODWORD(theArray[0]);
      goto LABEL_13;
    }

LABEL_12:
    v20 = 4294954514;
    goto LABEL_13;
  }

  if (CFEqual(CFStringFrom4CC, @"ChapterName"))
  {
    goto LABEL_39;
  }

  v20 = 4294954335;
LABEL_13:
  v21 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v21);
    cf = 0;
  }

LABEL_15:
  if (CFStringFrom4CC)
  {
    CFRelease(CFStringFrom4CC);
  }

  return v20;
}

uint64_t mv_IsIntInCFArray(int a1, const __CFArray *a2)
{
  valuePtr = a1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v8.length = CFArrayGetCount(a2);
  v8.location = 0;
  v5 = CFArrayContainsValue(a2, v8, v4);
  CFRelease(v4);
  return v5;
}

uint64_t mv_isMovieFamilyFormatReader()
{
  cf = 0;
  FigFormatReaderGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"Identifier", *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t mv_CheckIfDroppingFramesEnablesPlayability(uint64_t a1, double a2, double a3)
{
  memset(&v12, 0, sizeof(v12));
  CMTimeMake(&v12, 2, 1);
  if (a2 <= 0.0 && a3 <= 0.0)
  {
    return 0;
  }

  v10 = 0.0;
  v11 = 0.0;
  v9 = v12;
  if (mv_ComputeDroppableFrameRate(a1, &v9, -1, &v11, &v10))
  {
    return 0;
  }

  v7 = a3 > 0.0;
  v8 = a2 > 0.0;
  if (v11 > a2)
  {
    v8 = 0;
  }

  if (v10 > a3)
  {
    v7 = 0;
  }

  return v7 | v8;
}

uint64_t mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(uint64_t a1, double a2, double a3)
{
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, 2, 1);
  theArray = 0;
  if (a2 <= 0.0 && a3 <= 0.0)
  {
    return 0;
  }

  FigTrackReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9 && !v9(v8, @"HEVCTemporalLevelInfoCombinations", *MEMORY[0x1E695E480], &theArray))
  {
    if (!theArray || CFArrayGetCount(theArray) < 1)
    {
      v6 = mv_CheckIfDroppingFramesEnablesPlayability(a1, a2, a3);
      goto LABEL_16;
    }

    v14 = 0.0;
    v15 = 0.0;
    v13 = v17;
    if (!mv_ComputeDroppableFrameRate(a1, &v13, 0, &v15, &v14))
    {
      v10 = a3 > 0.0;
      v11 = a2 > 0.0;
      if (v15 > a2)
      {
        v11 = 0;
      }

      if (v14 > a3)
      {
        v10 = 0;
      }

      v6 = v10 | v11;
      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

uint64_t mv_ValidateAudioCodecsParameterValue(uint64_t a1)
{
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  inSpecifier[0] = a1;
  inSpecifier[1] = 1836069990;
  LODWORD(result) = AudioFormatGetProperty(0x63646370u, 0x10u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (outPropertyData)
  {
    v2 = 0;
  }

  else
  {
    v2 = -12957;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

BOOL mv_IsStringInCFArrayList(const __CFString *a1, CFArrayRef theArray)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex;
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFStringGetTypeID() && CFStringCompare(v7, a1, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v4 < i;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs(const __CFString *a1, CFStringRef theString, int a3, const __CFDictionary *a4, int a5, _DWORD *a6)
{
  Length = CFStringGetLength(theString);
  v12 = malloc_type_malloc(Length + 1, 0x8D7B7AF3uLL);
  if (v12)
  {
    v13 = v12;
    v37 = v12;
    if (CFStringGetCString(theString, v12, Length + 1, 0x8000100u))
    {
      __stringp = v13;
      if (*v13 != 34)
      {
LABEL_7:
        if (a6)
        {
          *a6 = 0;
        }

        if (a5)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        v40 = v15;
        v39 = a3;
        while (1)
        {
          v16 = strsep(&__stringp, ", \t");
          v17 = v16;
          if (!v16)
          {
            goto LABEL_47;
          }

          if (!*v16)
          {
            v17 = 0;
            goto LABEL_47;
          }

          value = 0;
          __s = v16;
          if (!CFDictionaryGetValueIfPresent(a4, @"MIMETypesToTreatAsISOBMFFMediaFormatContainers", &value) || !value || (v18 = CFGetTypeID(value), v18 != CFArrayGetTypeID()) || !mv_IsStringInCFArrayList(a1, value) || !@"video/mp4" || (v19 = CFRetain(@"video/mp4")) == 0)
          {
            v19 = FigFormatReaderUtilityCopyRepresentativeMIMETypeForMIMEType(a1);
            if (!v19 && (!a1 || (v19 = CFRetain(a1)) == 0))
            {
              FigMediaValidatorValidateRFC4281Codecs_cold_2(&v42);
              v22 = 0;
              v17 = v42;
              goto LABEL_46;
            }
          }

          v20 = v19;
          if (a3)
          {
            v42 = 0;
            v21 = strlen(v17);
            v22 = malloc_type_calloc(v21 + 1, 1uLL, 0x100004077774924uLL);
            if (!__s || !*__s)
            {
              FigMediaValidatorValidateRFC4281Codecs_cold_1(&v45);
              v17 = v45;
              goto LABEL_45;
            }

            v23 = strsep(&__s, ".");
            if (!v23)
            {
              v17 = 0;
              goto LABEL_45;
            }

            v24 = v23;
            v25 = strlen(v23);
            mv_ConvertTokenToCString(v24, v25, v22, v21 + 1, &v42);
            v26 = v42;
            if (v42 == 4)
            {
              v27 = bswap32(*v22);
            }

            else
            {
              v27 = 0;
            }

            if (__s)
            {
              v29 = strlen(__s);
              mv_ConvertTokenToCString(__s, v29, v22 + v42 + 1, v21 - v42, 0);
              __s = v22 + v26 + 1;
            }

            v28 = v22;
            a3 = v39;
          }

          else
          {
            v28 = strsep(&__s, ".");
            v22 = 0;
            if (strlen(v28) == 4)
            {
              v27 = bswap32(*v28);
            }

            else
            {
              v27 = 0;
            }
          }

          if (FigCFEqual())
          {
            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 1;
          }

          else if (FigCFEqual())
          {
            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 2;
          }

          else if (FigCFEqual())
          {
            if (!a5)
            {
              v17 = 4294954332;
              goto LABEL_45;
            }

            v30 = __s;
            v31 = v27;
            v32 = 3;
            v33 = 4;
          }

          else
          {
            if (!FigCFEqual())
            {
              LODWORD(v42) = 0;
              v45 = 0;
              v34 = FigFormatReaderUtilityConvertCodecElementsToMediaSubType(v20, v27, v28, __s, 0, &v42, &v45);
              if (v34)
              {
                v17 = 0;
              }

              else
              {
                v17 = 4294954346;
              }

              if (v34)
              {
                if (a4)
                {
                  CFStringFrom4CC = mv_CreateCFStringFrom4CC(v42);
                  v17 = mv_LookupCodecSupport(CFStringFrom4CC, a4);
                  if (CFStringFrom4CC)
                  {
                    CFRelease(CFStringFrom4CC);
                  }
                }
              }

              goto LABEL_45;
            }

            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 8;
          }

          v17 = mv_ValidateRFC4281IdEvaluationFn(v31, v30, v32, v33, a4, a6, 0);
LABEL_45:
          CFRelease(v20);
LABEL_46:
          free(v22);
LABEL_47:
          if (v17 || !__stringp)
          {
            goto LABEL_68;
          }
        }
      }

      __stringp = v13 + 1;
      v14 = strchr(v13 + 1, 34);
      if (v14 && *v14)
      {
        *v14 = 0;
        goto LABEL_7;
      }

      v17 = 4294954344;
    }

    else
    {
      FigMediaValidatorValidateRFC4281Codecs_cold_3(&__s);
      v17 = __s;
    }

LABEL_68:
    free(v37);
  }

  else
  {
    FigMediaValidatorValidateRFC4281Codecs_cold_4(&__s);
    return __s;
  }

  return v17;
}

uint64_t mv_ConvertTokenToCString(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  if (a3)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = result + v5;
        v8 = *(result + v5);
        if (*(result + v5))
        {
          v9 = v6 >= a4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          break;
        }

        if (v8 == 37)
        {
          v10 = v5 + 2;
          if (v5 + 2 < a2 && (v11 = *(v7 + 1), *(v7 + 1)) && (v12 = *(result + v10), *(result + v10)))
          {
            v13 = v11 - 48;
            v14 = v11 - 65;
            if ((v11 - 97) >= 6)
            {
              v15 = -1;
            }

            else
            {
              v15 = v11 - 87;
            }

            v16 = v11 - 55;
            if (v14 > 5)
            {
              v16 = v15;
            }

            if (v13 < 0xA)
            {
              v16 = v13;
            }

            v17 = v12 - 48;
            v18 = v12 - 65;
            if ((v12 - 97) >= 6)
            {
              v19 = -1;
            }

            else
            {
              v19 = v12 - 87;
            }

            v20 = v12 - 55;
            if (v18 > 5)
            {
              v20 = v19;
            }

            if (v17 < 0xA)
            {
              v20 = v17;
            }

            v21 = v20 >= 0;
            if (v20 >= 0)
            {
              v22 = v20 + 16 * v16;
            }

            else
            {
              v22 = 63;
            }

            if (v21)
            {
              v23 = v5 + 2;
            }

            else
            {
              v23 = v5;
            }

            if (v16 >= 0)
            {
              LOBYTE(v8) = v22;
            }

            else
            {
              LOBYTE(v8) = 63;
            }

            if (v16 >= 0)
            {
              v5 = v23;
            }
          }

          else
          {
            LOBYTE(v8) = 63;
          }
        }

        *(a3 + v6++) = v8;
        ++v5;
      }

      while (v5 < a2);
    }

    else
    {
      v6 = 0;
    }

    if (v6 < a4)
    {
      *(a3 + v6) = 0;
      if (!a5)
      {
        return result;
      }

LABEL_46:
      *a5 = v6;
      return result;
    }

    *(a3 + a4 - 1) = 0;
    if (a5)
    {
      v6 = a4 - 1;
      goto LABEL_46;
    }
  }

  return result;
}

uint64_t mv_ValidateRFC4281IdEvaluationFn(signed int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, CFDictionaryRef theDict)
{
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
    mv_ValidateRFC4281IdEvaluationFn_cold_1(&v30, &v31);
    v12 = v31;
    if (!a6)
    {
      return v12;
    }

    goto LABEL_32;
  }

  v27 = a2;
  v28 = 0;
  v23 = a5;
  v24 = a1;
  v25 = a3;
  v10 = &dword_1F0AEB088;
  v11 = 37;
  v26 = a4;
  do
  {
    if (*(v10 - 4) == a1 && (a4 & ~*(v10 - 3)) == 0)
    {
      v31 = 0;
      v14 = *v10;
      LODWORD(v28) = *v10;
      v15 = *(v10 - 1);
      if (v15)
      {
        v12 = v15(&v23, &v29, &v31);
        LODWORD(v15) = v31;
      }

      else
      {
        v12 = 0;
        v29 = v14;
      }

      v13 = v15 | v10[1];
      goto LABEL_18;
    }

    v10 += 6;
    --v11;
  }

  while (v11);
  if (a3 == 2)
  {
    v12 = 0;
    v13 = 4;
LABEL_18:
    v30 = v13;
    goto LABEL_19;
  }

  if ((a4 & 2) != 0)
  {
    goto LABEL_41;
  }

  v12 = 4294954346;
  if (a1 <= 1634743415)
  {
    if (a1 != 1634742376 && a1 != 1634742888)
    {
      v16 = 13416;
LABEL_37:
      if (a1 != (v16 | 0x61700000))
      {
        goto LABEL_19;
      }
    }
  }

  else if (((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0) && ((a1 - 1634759272) > 6 || ((1 << (a1 - 104)) & 0x51) == 0))
  {
    v16 = 13432;
    goto LABEL_37;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_41:
  v12 = 4294954346;
  if (a1 > 1752589104)
  {
    if (a1 <= 1902207855)
    {
      if (a1 > 1885430639)
      {
        if (a1 == 1885430640 || a1 == 1886745441)
        {
          goto LABEL_19;
        }

        v21 = 1902207848;
      }

      else
      {
        if (a1 == 1752589105 || a1 == 1885430115)
        {
          goto LABEL_19;
        }

        v21 = 1885430632;
      }
    }

    else if (a1 <= 1987063864)
    {
      if (a1 == 1902207856 || a1 == 1903522657)
      {
        goto LABEL_19;
      }

      v21 = 1970495843;
    }

    else if (a1 > 2053202799)
    {
      if (a1 == 2053202800)
      {
        goto LABEL_19;
      }

      v21 = 2054517601;
    }

    else
    {
      if (a1 == 1987063865)
      {
        goto LABEL_19;
      }

      v21 = 2053202792;
    }
  }

  else if (a1 > 1635135536)
  {
    if (a1 > 1668641632)
    {
      if (a1 == 1668641633 || a1 == 1684108849)
      {
        goto LABEL_19;
      }

      v21 = 1685481521;
    }

    else
    {
      if (a1 == 1635135537 || a1 == 1667326824)
      {
        goto LABEL_19;
      }

      v21 = 1667326832;
    }
  }

  else
  {
    if ((a1 - 1633772389) <= 0xB && ((1 << (a1 - 101)) & 0x80F) != 0 || a1 == 1633771875)
    {
      goto LABEL_19;
    }

    v21 = 1633772320;
  }

  if (a1 != v21)
  {
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(a1);
    v12 = mv_LookupCodecSupport(CFStringFrom4CC, a5);
    if (CFStringFrom4CC)
    {
      CFRelease(CFStringFrom4CC);
    }
  }

LABEL_19:
  if (!theDict)
  {
    goto LABEL_31;
  }

  if (v30)
  {
    v17 = @"soun";
  }

  else
  {
    if ((v30 & 2) == 0)
    {
      goto LABEL_31;
    }

    v17 = @"vide";
  }

  if (CFDictionaryContainsKey(theDict, v17))
  {
    Value = CFDictionaryGetValue(theDict, v17);
    if (!Value)
    {
      goto LABEL_31;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_31;
    }

    Value = Mutable;
    CFDictionarySetValue(theDict, v17, Mutable);
    CFRelease(Value);
  }

  if (!mv_IsIntInCFArray(v29, Value))
  {
    FigCFArrayAppendInt32();
  }

LABEL_31:
  if (a6)
  {
LABEL_32:
    *a6 |= v30;
  }

  return v12;
}

uint64_t mv_ValidateRFC4281_avc1_avc3_evaluation_fn(uint64_t *a1, _DWORD *a2)
{
  if (*(a1 + 8) == 1635148595 && (*(a1 + 3) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v4 = a1[3];
  if (v4)
  {
    v5 = *a1;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    *v13 = 0;
    v10 = 0;
    number = 0;
    v9 = 0;
    if (strlen(v4) == 6 && sscanf(v4, "%x%c", &v15, &v14) == 1)
    {
      HIBYTE(v9) = BYTE2(v15);
      LOBYTE(v9) = v15;
      if (!v5)
      {
LABEL_18:
        v8 = 0;
LABEL_19:
        if (*(a1 + 8) != 1635148595)
        {
          result = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v6 = sscanf(v4, "%hhu.%hhu%c", &v9 + 1, &v9, &v14);
      if (!v5 || v6 != 2)
      {
        goto LABEL_18;
      }
    }

    result = mv_GetVideoProfileAndLevelConstraints(v5, @"avc1", v13, 0, &v12, &number, &v10, 0);
    if (!result)
    {
      if (!(number | *v13) || !v10)
      {
        goto LABEL_18;
      }

      result = mv_ValidateVideoProfileLevelTier(*v13, number, v10, 0, HIBYTE(v9), v9, 0);
    }

    v8 = result == -16055;
    if (result)
    {
      if (result != -16055)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  result = CheckVideoCodecAvailable(a1, 0x61766331u);
LABEL_22:
  *a2 = *(a1 + 2);
  return result;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 8) == 1751479857 && (*(a1 + 3) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v6 = a1[3];
  if (!v6)
  {
    v10 = 0;
LABEL_45:
    result = CheckVideoCodecAvailable(a1, 0x68766331u);
    goto LABEL_46;
  }

  v7 = *v6;
  if ((v7 - 65) < 3 || (v7 - 48) >= 0xA)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
LABEL_40:
    v10 = 0;
LABEL_41:
    result = v26;
    goto LABEL_34;
  }

  v8 = *a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  theDict = 0;
  *v22 = 0;
  v19 = 0;
  number = 0;
  v18 = 0;
  if (sscanf(v6, "%u.%x.%c%d*", &v24, &v25, &v23, &v24 + 4) != 4)
  {
LABEL_39:
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
    goto LABEL_40;
  }

  if (v23 != 76)
  {
    if (v23 == 72)
    {
      v9 = 1;
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  v9 = 0;
LABEL_13:
  if (!v8)
  {
    v16 = 0;
    v10 = 0;
    goto LABEL_43;
  }

  result = mv_GetVideoProfileAndLevelConstraints(v8, @"hvc1", v22, 0, &theDict, &number, &v19, &v18);
  if (!result)
  {
    if (!theDict || !*v22 || !mv_IsIntInCFArray(v24, *v22))
    {
      goto LABEL_27;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v24);
    Value = CFDictionaryGetValue(theDict, v12);
    LOBYTE(v26) = 0;
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    if (v26)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (Value)
    {
      v15 = CFDictionaryGetValue(Value, @"MaxLevel");
      if (v15)
      {
        v19 = v15;
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (!BooleanIfPresent)
    {
LABEL_27:
      if (mv_IsHEVCDecoderHardwareAccelerated_hevcHardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_1();
      }

      if (sHEVCDecoderIsHardwareAccelerated)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    if (number | *v22)
    {
      result = mv_ValidateVideoProfileLevelTier(*v22, number, v19, v18, v24, SHIDWORD(v24), v9);
      goto LABEL_34;
    }

    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v26);
    goto LABEL_41;
  }

  v10 = 0;
LABEL_34:
  v16 = result == -16055;
  if (result)
  {
    if (result != -16055)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_43:
  if (*(a1 + 8) == 1751479857)
  {
    goto LABEL_45;
  }

  result = 0;
  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v10 == 1)
  {
    v17 = 24;
  }

  else
  {
    v17 = 16;
  }

  *a3 |= v17;
  *a2 = *(a1 + 2);
  return result;
}

uint64_t mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 32) == 1685481573 && (*(a1 + 12) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
LABEL_54:
    v16 = CheckVideoCodecAvailable(a1, 0x64766831u);
    goto LABEL_55;
  }

  v7 = *a1;
  v31 = 0;
  theArray = 0;
  theDict = 0;
  __stringp = v6;
  v8 = strsep(&__stringp, ".");
  if (!v8 || (v9 = v8, !*v8))
  {
    if (!mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn_cold_1(&__stringp, &v29))
    {
      LODWORD(v7) = 0;
      v16 = v29;
      goto LABEL_51;
    }

    goto LABEL_77;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v8, 0x8000100u);
  v12 = v11;
  if (__stringp)
  {
    v13 = strsep(&__stringp, ".");
    v14 = v13;
    if (v13 && *v13)
    {
      v15 = CFStringCreateWithCString(v10, v13, 0x8000100u);
    }

    else
    {
      v15 = 0;
    }

    if (__stringp || !v12)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (!v11)
    {
      goto LABEL_61;
    }
  }

  if (CFStringGetLength(v12) == 2 && (*v9 - 48) <= 9 && (v9[1] - 48) <= 9 && v15 && CFStringGetLength(v15) == 2 && (*v14 - 48) <= 9 && (v14[1] - 48) <= 9)
  {
    v17 = CFRetain(v12);
    v18 = 0;
LABEL_25:
    v19 = CFRetain(v15);
    CFRelease(v12);
LABEL_26:
    v12 = v15;
    goto LABEL_27;
  }

LABEL_61:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, theDict);
  if (v27)
  {
    v16 = v27;
    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    LODWORD(v7) = 0;
    goto LABEL_51;
  }

  if (!v12)
  {
    if (v15)
    {
      v19 = CFRetain(v15);
      v17 = 0;
      v18 = 1;
      goto LABEL_26;
    }

LABEL_77:
    v19 = 0;
    v17 = 0;
    v18 = 1;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_78:
    v16 = 0;
    goto LABEL_79;
  }

  v17 = CFRetain(v12);
  v18 = 1;
  if (v15)
  {
    goto LABEL_25;
  }

  v19 = 0;
LABEL_27:
  CFRelease(v12);
  if (!v7)
  {
    goto LABEL_78;
  }

LABEL_28:
  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"dvh1", &theArray, &v31, &theDict, 0, 0, 0);
  if (VideoProfileAndLevelConstraints)
  {
    v16 = VideoProfileAndLevelConstraints;
LABEL_73:
    LODWORD(v7) = 0;
    goto LABEL_79;
  }

  v7 = theArray;
  if (theArray)
  {
    v34.length = CFArrayGetCount(theArray);
    v34.location = 0;
    if (CFArrayContainsValue(v7, v34, v17) || (v29 = 0, FigCFStringGetCStringPtrAndBufferToFree(), v16 = FigSignalErrorAt(), free(v29), !v16))
    {
      if ((v18 & 1) != 0 || v19 && (v21 = v31) != 0 && (v35.length = CFArrayGetCount(v31), v35.location = 0, CFArrayContainsValue(v21, v35, v19)))
      {
        v16 = 0;
      }

      else
      {
        v29 = 0;
        FigCFStringGetCStringPtrAndBufferToFree();
        v16 = FigSignalErrorAt();
        free(v29);
      }

      if (theDict)
      {
        if (v17)
        {
          v22 = *MEMORY[0x1E695E480];
          IntValue = CFStringGetIntValue(v17);
          v24 = CFStringCreateWithFormat(v22, 0, @"%d", IntValue);
          CFDictionaryGetValue(theDict, v24);
          LOBYTE(v29) = 0;
          FigCFDictionaryGetBooleanIfPresent();
          if (v24)
          {
            CFRelease(v24);
          }
        }
      }

      if (mv_IsHEVCDecoderHardwareAccelerated_hevcHardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_1();
      }

      if (sHEVCDecoderIsHardwareAccelerated)
      {
        LODWORD(v7) = 2;
      }

      else
      {
        LODWORD(v7) = 1;
      }

      if (!v17)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_73;
  }

  mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v29);
  v16 = v29;
LABEL_79:
  if (v17)
  {
LABEL_48:
    CFRelease(v17);
  }

LABEL_49:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_51:
  if (v16 == -16055)
  {
    goto LABEL_54;
  }

  if (!v16)
  {
    if (*(a1 + 32) != 1685481573)
    {
      v16 = 0;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_55:
  if (v7 == 1)
  {
    v25 = 24;
  }

  else
  {
    v25 = 16;
  }

  *a3 |= v25;
  *a2 = *(a1 + 8);
  return v16;
}

uint64_t mv_ValidateRFC4281_av01_evaluation_fn(const __CFDictionary **a1, _DWORD *a2, int *a3)
{
  v6 = a1[3];
  if (!v6)
  {
    v10 = 0;
LABEL_70:
    result = CheckVideoCodecAvailable(a1, 0x61763031u);
    goto LABEL_71;
  }

  v7 = *a1;
  v38 = 0;
  number = 0;
  theDict = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 32;
  v30 = 0;
  v31 = 0;
  v29 = 272;
  v8 = sscanf(v6, "%1u.%2u%c.%2u.%1d.%03x", &v33 + 4, &v33, &v32, &v31, &v30, &v29);
  if (v8 < 4 || HIDWORD(v33) >= 3 || (v31 & 0xFFFFFFFD) != 8 && (HIDWORD(v33) != 2 || v31 != 12))
  {
    goto LABEL_67;
  }

  if (v32 == 77)
  {
    v9 = 0;
  }

  else
  {
    if (v32 != 72)
    {
      goto LABEL_67;
    }

    v9 = 1;
  }

  if (v8 != 4 && v30 >= 2)
  {
    goto LABEL_67;
  }

  if (v8 < 6)
  {
    goto LABEL_33;
  }

  if ((v29 & 0xFFFFFF00) > 0x100 || (v29 & 0xF0u) > 0x10 || (v29 & 0xFu) > 3)
  {
    goto LABEL_67;
  }

  v11 = (v29 & 0xFF0) == 0x110 || (v29 & 0xF) == 0;
  v12 = !v11;
  if ((v29 & 0xFF0) == 0x10 || v12 || v30 && (v29 & 0xFFF) != 0x110)
  {
    goto LABEL_67;
  }

  if (!HIDWORD(v33))
  {
    if ((v29 & 0xFFFFFEFF) != 0)
    {
      goto LABEL_33;
    }

LABEL_67:
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
    v10 = 0;
LABEL_68:
    result = v39;
    goto LABEL_69;
  }

  if (HIDWORD(v33) == 1 && v29 == 256)
  {
    goto LABEL_67;
  }

LABEL_33:
  if (!v7)
  {
    v10 = 0;
    goto LABEL_65;
  }

  result = mv_GetVideoProfileAndLevelConstraints(v7, @"av01", &v38, 0, &theDict, &number, &v35, &v34);
  v10 = 0;
  if (result)
  {
    goto LABEL_69;
  }

  if (!theDict || !v38)
  {
LABEL_57:
    if (!(number | v38))
    {
      mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v39);
      goto LABEL_68;
    }

    result = mv_ValidateVideoProfileLevelTier(v38, number, v35, v34, SHIDWORD(v33), v33, v9);
    if (result)
    {
      goto LABEL_69;
    }

    if (!v10)
    {
      if (mv_IsAV1DecoderHardwareAccelerated_av1HardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_av01_evaluation_fn_cold_1();
      }

      if (sAV1DecoderIsHardwareAccelerated)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

LABEL_65:
    result = 0;
    goto LABEL_71;
  }

  if (!mv_IsIntInCFArray(SHIDWORD(v33), v38))
  {
    goto LABEL_66;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", HIDWORD(v33));
  Value = CFDictionaryGetValue(theDict, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (!Value)
  {
LABEL_66:
    v10 = 0;
    goto LABEL_57;
  }

  LOBYTE(v39) = 0;
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v39)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (BooleanIfPresent)
  {
    v10 = v18;
  }

  else
  {
    v10 = 0;
  }

  v19 = CFDictionaryGetValue(Value, @"MaxLevel");
  if (v19)
  {
    v35 = v19;
  }

  v20 = CFDictionaryGetValue(Value, @"ChromaSubsampling");
  if (!v20)
  {
    goto LABEL_56;
  }

  v21 = v20;
  v22 = CFStringCreateWithFormat(v14, 0, @"%03x", v29 & 0xFF0 | v30);
  v40.length = CFArrayGetCount(v21);
  v40.location = 0;
  v23 = CFArrayContainsValue(v21, v40, v22);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
LABEL_56:
    v24 = CFDictionaryGetValue(Value, @"ColorDepth");
    if (!v24)
    {
      goto LABEL_57;
    }

    v25 = v24;
    v26 = CFStringCreateWithFormat(v14, 0, @"%02d", v31);
    v41.length = CFArrayGetCount(v25);
    v41.location = 0;
    v27 = CFArrayContainsValue(v25, v41, v26);
    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      goto LABEL_57;
    }
  }

  result = FigSignalErrorAt();
LABEL_69:
  if (result == -16055)
  {
    goto LABEL_70;
  }

LABEL_71:
  if (v10)
  {
    v28 = *a3;
    *a3 |= 0x10u;
    if (v10 == 1)
    {
      *a3 = v28 | 0x18;
    }
  }

  *a2 = 1635135537;
  return result;
}

uint64_t mv_ValidateRFC4281_dav1_evaluation_fn(const __CFDictionary **a1, _DWORD *a2, int *a3)
{
  v6 = a1[3];
  if (!v6)
  {
    v15 = 0;
LABEL_26:
    v16 = CheckVideoCodecAvailable(a1, 0x64617631u);
    goto LABEL_27;
  }

  v7 = *a1;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  theArray = 0;
  theDict = 0;
  if (sscanf(v6, "%02u.%02u", &v23, &v22) != 2 || v23 != 10)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
LABEL_39:
    v15 = 0;
    v16 = v24;
    goto LABEL_25;
  }

  if (v22 >= 0xE)
  {
    mv_ValidateRFC4281_dav1_evaluation_fn_cold_4(&v24);
    goto LABEL_39;
  }

  if (!v7)
  {
    v16 = 0;
    goto LABEL_30;
  }

  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"dav1", &theArray, &v20, &theDict, 0, 0, 0);
  if (VideoProfileAndLevelConstraints)
  {
    v16 = VideoProfileAndLevelConstraints;
    v15 = 0;
    goto LABEL_25;
  }

  if (!theArray)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v24);
    goto LABEL_39;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v23);
  v11 = theArray;
  v25.length = CFArrayGetCount(theArray);
  v25.location = 0;
  if (!CFArrayContainsValue(v11, v25, v10))
  {
    v16 = FigSignalErrorAt();
    v15 = 0;
    v12 = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = CFStringCreateWithFormat(v9, 0, @"%02d", v22);
  v13 = v20;
  if (v20)
  {
    v26.length = CFArrayGetCount(v20);
    v26.location = 0;
    if (CFArrayContainsValue(v13, v26, v12))
    {
      if (theDict && ((CFDictionaryGetValue(theDict, v10), LOBYTE(v24) = 0, BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent(), !v24) ? (v15 = 1) : (v15 = 2), BooleanIfPresent))
      {
        v16 = 0;
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (mv_IsAV1DecoderHardwareAccelerated_av1HardwareCheckOnce != -1)
        {
          mv_ValidateRFC4281_av01_evaluation_fn_cold_1();
        }

        v16 = 0;
        if (sAV1DecoderIsHardwareAccelerated)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        if (!v10)
        {
          goto LABEL_23;
        }
      }

LABEL_22:
      CFRelease(v10);
      goto LABEL_23;
    }
  }

  v16 = FigSignalErrorAt();
  v15 = 0;
  if (v10)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_25:
  if (v16 == -16055)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v15)
  {
    v17 = *a3;
    *a3 |= 0x10u;
    if (v15 == 1)
    {
      *a3 = v17 | 0x18;
    }
  }

LABEL_30:
  *a2 = 1684108849;
  return v16;
}

void mv_ValidateRFC4281_video_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    mv_ValidateRFC4281VideoFromCodecType(v4, *(a1 + 32));
  }

  *a2 = *(a1 + 32);
}

void mv_ValidateRFC4281_video_evaluation_fn_no_HLS(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 12) == 2)
  {
    *a2 = *(a1 + 32);
    *a3 |= 4u;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      mv_ValidateRFC4281VideoFromCodecType(v5, *(a1 + 32));
    }

    *a2 = *(a1 + 32);
  }
}

double mv_ValidateRFC4281_mp2v_evaluation_fn(uint64_t *a1, _DWORD *a2)
{
  v9 = 0;
  v4 = a1[3];
  if (!v4)
  {
    v9 = 97;
LABEL_11:
    *a2 = 1836069494;
    return mv_ValidateRFC4281VideoFromCodecType(*a1, 0x6D703276u);
  }

  v8 = 0;
  v5 = sscanf(v4, "%x%c", &v9, &v8);
  if ((v9 - 96) <= 5 && ((1 << (v9 - 96)) & 0x23) != 0)
  {
    if (v5 >= 2)
    {
      mv_ValidateRFC4281_mp2v_evaluation_fn_cold_1(&v10);
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

void mv_ValidateRFC4281_mp4v_evaluation_fn(uint64_t a1, int *a2, _DWORD *a3)
{
  v19 = 0;
  v6 = *(a1 + 24);
  if (!v6)
  {
    HIDWORD(v19) = 32;
    goto LABEL_8;
  }

  LOBYTE(v23) = 0;
  LODWORD(v6) = sscanf(v6, "%x.%d%c", &v19 + 4, &v19, &v23);
  if (SHIDWORD(v19) > 100)
  {
    if (HIDWORD(v19) != 101)
    {
      if (HIDWORD(v19) != 106)
      {
        if (HIDWORD(v19) != 108)
        {
LABEL_38:
          FigSignalErrorAt();
          v14 = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_53;
        }

        if (v6 != 1)
        {
          mv_ValidateRFC4281_mp4v_evaluation_fn_cold_3(&v23);
          return;
        }

        v15 = (*(a1 + 16) & 2u) >> 1;
        if ((*(a1 + 16) & 2) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = 1785750887;
        }

        if ((*(a1 + 16) & 2) != 0)
        {
          v17 = -12956;
        }

        else
        {
          v17 = 0;
        }

LABEL_44:
        if (v17)
        {
          v14 = v16;
        }

        else
        {
          v14 = 0;
        }

        if (!v17 && (v15 & 1) == 0)
        {
          if (*a1)
          {
            mv_ValidateRFC4281VideoFromCodecType(*a1, v16);
          }

          v14 = v16;
        }

        if (!a2)
        {
          return;
        }

LABEL_53:
        *a2 = v14;
        return;
      }

      if (v6 != 1)
      {
        mv_ValidateRFC4281_mp4v_evaluation_fn_cold_2(&v23);
        return;
      }

      if ((*(a1 + 16) & 2) == 0)
      {
        v16 = 1836069238;
        if (*(a1 + 12) == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        LOBYTE(v15) = 0;
        v17 = 0;
        goto LABEL_44;
      }

LABEL_55:
      v14 = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

LABEL_33:
    if (v6 != 1)
    {
      mv_ValidateRFC4281_mp4v_evaluation_fn_cold_1(&v23);
      return;
    }

    if ((*(a1 + 16) & 2) == 0)
    {
      v16 = 1836069494;
      if (*(a1 + 12) == 2)
      {
LABEL_36:
        LOBYTE(v15) = 0;
        v17 = 0;
        *a3 |= 4u;
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_55;
  }

  if ((HIDWORD(v19) - 96) < 2)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v19) != 32)
  {
    goto LABEL_38;
  }

  if (v6 >= 3)
  {
    mv_ValidateRFC4281_mp4v_evaluation_fn_cold_4(&v23);
    return;
  }

LABEL_8:
  if (*(a1 + 12) == 2)
  {
    *a3 |= 4u;
  }

  if (v6 != 2)
  {
    LOBYTE(v15) = 0;
    v17 = 0;
    v16 = 1836070006;
    goto LABEL_44;
  }

  v7 = *(a1 + 24);
  v8 = *a1;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  number = 0;
  v9 = sscanf(v7, "%x.%d%c", &v25 + 4, &v25, &v24);
  if (v8)
  {
    if (v9 == 2 && !mv_GetVideoProfileAndLevelConstraints(v8, @"mp4v", &v23, 0, &v22, &number, &v20, 0))
    {
      v10 = v23;
      if (number | v23)
      {
        if (v20)
        {
          v11 = v25;
          if (v23)
          {
            v18 = 0;
          }

          else
          {
            v12 = &byte_196E77F76;
            v13 = 15;
            while (v25 != *(v12 - 2))
            {
              v12 += 3;
              if (!--v13)
              {
                FigSignalErrorAt();
                goto LABEL_21;
              }
            }

            v11 = *(v12 - 1);
            v18 = *v12;
            v10 = 0;
          }

          mv_ValidateVideoProfileLevelTier(v10, number, v20, 0, v11, v18, 0);
        }
      }
    }
  }

LABEL_21:
  v14 = 1836070006;
  if (a2)
  {
    goto LABEL_53;
  }
}

uint64_t mv_ValidateRFC4281_vp9_evaluation_fn(const __CFDictionary **a1, _DWORD *a2, int *a3)
{
  v6 = a1[3];
  if (!v6)
  {
    v16 = 0;
LABEL_34:
    v7 = CheckVideoCodecAvailable(a1, 0x76703039u);
    goto LABEL_35;
  }

  v7 = *a1;
  v31 = 0;
  v30 = 0;
  valuePtr = 0;
  v27 = 0;
  theArray = 0;
  theDict = 0;
  if (sscanf(v6, "%u.%u.%u", &v30, &v30 + 4, &v31) != 3)
  {
    v7 = FigSignalErrorAt();
    goto LABEL_20;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"vp09", &theArray, &v27, &theDict, 0, 0, 0);
  if (!theArray)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v32);
    v16 = 0;
    v7 = v32;
    goto LABEL_33;
  }

  v7 = VideoProfileAndLevelConstraints;
  if (!theDict)
  {
LABEL_20:
    v16 = 0;
    goto LABEL_33;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%02d", v30);
  v11 = theArray;
  v33.length = CFArrayGetCount(theArray);
  v33.location = 0;
  if (!CFArrayContainsValue(v11, v33, v10))
  {
    v7 = FigSignalErrorAt();
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v12 = CFStringCreateWithFormat(v9, 0, @"%d", v30);
  Value = CFDictionaryGetValue(theDict, v12);
  LOBYTE(v32) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v32)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (BooleanIfPresent)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(Value, @"ColorDepth");
  if (!v17)
  {
    v19 = 0;
LABEL_24:
    v22 = CFDictionaryGetValue(Value, @"MaxLevel");
    CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
    v20 = CFStringCreateWithFormat(v9, 0, @"%02d", valuePtr);
    v21 = CFStringCreateWithFormat(v9, 0, @"%02d", HIDWORD(v30));
    v23 = v27;
    v35.length = CFArrayGetCount(v27);
    v35.location = 0;
    v36.length = CFArrayGetFirstIndexOfValue(v23, v35, v20) + 1;
    v36.location = 0;
    if (CFArrayContainsValue(v27, v36, v21))
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  v18 = v17;
  v19 = CFStringCreateWithFormat(v9, 0, @"%02d", v31);
  v34.length = CFArrayGetCount(v18);
  v34.location = 0;
  if (CFArrayContainsValue(v18, v34, v19))
  {
    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
LABEL_40:
  v7 = FigSignalErrorAt();
LABEL_25:
  if (v10)
  {
LABEL_26:
    CFRelease(v10);
  }

LABEL_27:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_33:
  if (v7 == -16055)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (v16)
  {
    v24 = *a3;
    *a3 |= 0x10u;
    if (v16 == 1)
    {
      *a3 = v24 | 0x18;
    }
  }

LABEL_38:
  *a2 = 1987063865;
  return v7;
}

void mv_ValidateRFC4281_mp4a_evaluation_fn(uint64_t a1, int *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v3 = *(a1 + 24);
  if (!v3)
  {
    mv_ValidateRFC4281_mp4a_evaluation_fn_cold_1(&v17 + 1);
    return;
  }

  v5 = *(a1 + 12);
  v17 = 0;
  v16 = 0;
  v6 = sscanf(v3, "%x.%d%c", &v17 + 4, &v17, &v16);
  if (v6 == 2)
  {
    if (HIDWORD(v17) == 107 || HIDWORD(v17) == 105)
    {
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_36;
      }

      switch(v17)
      {
        case 3:
          v7 = 778924083;
          goto LABEL_42;
        case 2:
LABEL_40:
          v7 = 778924082;
          goto LABEL_42;
        case 1:
LABEL_19:
          v7 = 778924081;
          goto LABEL_42;
      }
    }

    else if (HIDWORD(v17) == 64)
    {
      switch(v17)
      {
        case 1:
          goto LABEL_23;
        case 2:
          goto LABEL_31;
        case 3:
          goto LABEL_25;
        case 4:
          v8 = 84;
          goto LABEL_26;
        case 5:
          v8 = 72;
          goto LABEL_26;
        case 7:
          v7 = 1953986161;
          goto LABEL_42;
        case 8:
          v7 = 1667591280;
          goto LABEL_42;
        case 9:
          v7 = 1752594531;
          goto LABEL_42;
        case 23:
          v8 = 76;
          goto LABEL_26;
        case 29:
          v8 = 80;
          goto LABEL_26;
        case 32:
          goto LABEL_19;
        case 33:
          goto LABEL_40;
        case 34:
          if (v5 == 2)
          {
            v7 = 778924083;
          }

          else
          {
            v7 = 1836069684;
          }

          goto LABEL_42;
        case 35:
          v18[0] = 0x6473642064737420;
          v7 = 1685287968;
          v9 = 2;
          goto LABEL_43;
        case 36:
          v7 = 1634497332;
          goto LABEL_42;
        case 38:
          v7 = 1936487278;
          goto LABEL_42;
        case 39:
          v8 = 69;
          goto LABEL_26;
        case 42:
          v7 = 1970495843;
          goto LABEL_42;
        default:
          goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (v6 != 1)
  {
    goto LABEL_36;
  }

  if (SHIDWORD(v17) <= 104)
  {
    if (SHIDWORD(v17) > 102)
    {
      if (HIDWORD(v17) == 103)
      {
LABEL_31:
        v7 = 1633772320;
        goto LABEL_42;
      }

LABEL_25:
      v8 = 82;
    }

    else
    {
      if (HIDWORD(v17) == 64)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v17) != 102)
      {
        goto LABEL_29;
      }

LABEL_23:
      v8 = 77;
    }

LABEL_26:
    v7 = v8 | 0x61616320;
    goto LABEL_42;
  }

  if (SHIDWORD(v17) <= 164)
  {
    if (HIDWORD(v17) == 105 || HIDWORD(v17) == 107)
    {
      goto LABEL_36;
    }
  }

  else
  {
    switch(HIDWORD(v17))
    {
      case 0xA5:
        if (v5 == 2)
        {
          v7 = 1633889587;
          goto LABEL_42;
        }

        goto LABEL_36;
      case 0xA6:
        if (v5 == 2)
        {
          v7 = 1700998451;
          goto LABEL_42;
        }

        goto LABEL_36;
      case 0xE1:
        v7 = 1365470320;
LABEL_42:
        LODWORD(v18[0]) = v7;
        v9 = 1;
LABEL_43:
        if (*a1)
        {
          v10 = v18;
          v11 = 1;
          while (1)
          {
            v13 = *v10++;
            v12 = v13;
            if (v13 > 1633772391)
            {
              break;
            }

            v15 = 1633772320;
            if (v12 != 1633772320)
            {
              if (!v12)
              {
                goto LABEL_55;
              }

LABEL_53:
              v15 = v12;
            }

LABEL_54:
            mv_ValidateRFC4281AudioFromCodecType(*a1, v15);
LABEL_55:
            if (v11 < v9)
            {
              ++v11;
              if (!v12)
              {
                continue;
              }
            }

            goto LABEL_37;
          }

          v14 = v12 == 1633772392 || v12 == 1633772400;
          v15 = 1633772320;
          if (v14)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        goto LABEL_37;
    }
  }

LABEL_29:
  if (FigSignalErrorAt())
  {
    v7 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
LABEL_37:
  if (a2)
  {
    *a2 = v7;
  }
}

void mv_ValidateRFC4281_audio_evaluation_fn_no_HLS(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 12) == 2)
  {
    *a2 = *(a1 + 32);
    *a3 |= 4u;
  }

  else
  {
    mv_ValidateRFC4281AudioFromCodecType(*a1, *(a1 + 32));
    *a2 = *(a1 + 32);
  }
}

void mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn_cold_1(&v12);
    return;
  }

  v11 = 0;
  v10 = 0;
  v3 = sscanf(v2, "%x.%x%c", &v11 + 4, &v11, &v10);
  if (v3 < 1)
  {
    return;
  }

  v4 = *(a1 + 8);
  v6 = v3 == 1 && v4 == 1836069473;
  if (SHIDWORD(v11) <= 103)
  {
    if (HIDWORD(v11) != 102)
    {
      if (HIDWORD(v11) != 103 || !v6)
      {
        return;
      }

      v7 = 1633772320;
LABEL_35:
      if (*a1)
      {
        mv_ValidateRFC4281AudioFromCodecType(*a1, v7);
      }

      return;
    }

    if (!v6)
    {
      return;
    }

    v9 = 77;
LABEL_34:
    v7 = v9 | 0x61616320;
    goto LABEL_35;
  }

  if (HIDWORD(v11) == 104)
  {
    if (!v6)
    {
      return;
    }

    v9 = 82;
    goto LABEL_34;
  }

  if ((HIDWORD(v11) == 105 || HIDWORD(v11) == 107) && v3 <= 2 && (*(a1 + 16) & 4) != 0 && (v4 == 1836069473 && HIDWORD(v11) == 105 || v4 == 1836069217 && HIDWORD(v11) == 107))
  {
    v7 = 778924083;
    if (v3 == 2)
    {
      v8 = 778924082;
      if (v11 != 2)
      {
        v8 = 778924083;
      }

      if (v11 == 1)
      {
        v7 = 778924081;
      }

      else
      {
        v7 = v8;
      }
    }

    goto LABEL_35;
  }
}

uint64_t mv_ValidateRFC4281_apac_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = HIBYTE(v3);
  v6 = *MEMORY[0x1E695E480];
  if (v4)
  {
    v7 = CFStringCreateWithFormat(v6, 0, @"%c%c%c%c.%s", v5, BYTE2(v3), BYTE1(v3), v3, v4);
  }

  else
  {
    v7 = CFStringCreateWithFormat(v6, 0, @"%c%c%c%c", v5, BYTE2(v3), BYTE1(v3), v3);
  }

  v8 = v7;
  v9 = mv_ValidateAudioCodecsParameterValue(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  *a2 = 1634754915;
  return v9;
}

void mv_ValidateRFC4281_stpp_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  v14 = 0;
  if (!v3)
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_3(&__stringp);
    goto LABEL_37;
  }

  __stringp = v3;
  strsep(&__stringp, ".");
  if (strcmp(v3, "ttml"))
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_1(&v15);
    goto LABEL_37;
  }

  if (!__stringp)
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_2(&v15);
    goto LABEL_37;
  }

  v15 = __stringp;
  strsep(&v15, ".");
  v4 = 0;
  v5 = __stringp;
  v6 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      v7 = *v5;
      if (v7 == 43)
      {
        if (v4)
        {
          if (v4 == 1768763764)
          {
            v9 = (&v14 + 1);
          }

          else
          {
            v9 = &v14;
          }

          *v9 = 1;
        }

        v4 = 0;
        goto LABEL_25;
      }

      if (v7 != 124)
      {
        break;
      }

      if (v4)
      {
        if (v4 == 1768763764)
        {
          v8 = (&v14 + 1);
        }

        else
        {
          v8 = &v14;
        }

        *v8 = 1;
      }

      if (HIBYTE(v14) && !v14)
      {
        goto LABEL_33;
      }

      v4 = 0;
      v14 = 0;
LABEL_25:
      __stringp = ++v5;
    }

    if (!*v5)
    {
      goto LABEL_29;
    }

    if (v7 < 0)
    {
      break;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x4000) != 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v5 = __stringp + 1;
    v10 = HIBYTE(v4);
    v4 = *__stringp++ | (v4 << 8);
    if (v10)
    {
      goto LABEL_34;
    }
  }

  if (!__maskrune(v7, 0x4000uLL))
  {
    goto LABEL_27;
  }

LABEL_29:
  if (v4)
  {
    v11 = (&v14 + 1);
    if (v4 != 1768763764)
    {
      v11 = &v14;
    }

    *v11 = 1;
  }

LABEL_33:
  ++__stringp;
LABEL_34:
  if (v14 || !HIBYTE(v14))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v15);
  }

LABEL_37:
  *a2 = 1937010800;
}

uint64_t CheckVideoCodecAvailable(const __CFDictionary **a1, unsigned int a2)
{
  if (!*a1)
  {
    return 0;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
  v9 = 0;
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*a1, CFStringFrom4CC, @"vide", &v9 + 1, &v9);
  if (HIBYTE(v9))
  {
    v5 = v9 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = mv_IsValueInArrayInDictionary(*a1, CFStringFrom4CC, @"VideoCodecs", &v9 + 1, &v9);
    if (HIBYTE(v9))
    {
      v7 = v6;
    }

    else
    {
      v7 = 4294954344;
    }

    if (CFStringFrom4CC)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = IsValueInArrayInDictionary;
    if (CFStringFrom4CC)
    {
LABEL_14:
      CFRelease(CFStringFrom4CC);
    }
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_0_128()
{

  return FigSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_90(uint64_t a1, uint64_t a2, const void *a3)
{

  return mv_IsValueInArrayInDictionary(v4, v3, a3, (v5 - 34), (v5 - 33));
}

uint64_t OUTLINED_FUNCTION_4_92(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, Boolean a13)
{

  return mv_IsValueInArrayInDictionary(v14, v13, a3, &a13, &a12);
}

double OUTLINED_FUNCTION_7_57(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, const void **a6)
{

  return mv_GetCodecProperty(v7, v6, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_8_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return CMBaseObjectGetVTable();
}

void FigMetadataRewriterSetValues(const __CFURL *a1, const __CFDictionary *a2)
{
  v21 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (a1)
  {
    memset(v20, 0, sizeof(v20));
    if (a2)
    {
      v4 = CFURLCopyPathExtension(a1);
      BYTE8(v19) = FigCFStringIsISOExtension(v4);
      v5 = *MEMORY[0x1E695E480];
      if (!CMByteStreamCreateForFileURL() && !FigAtomStreamInitWithByteStream())
      {
        figMDRW_ParseChildAtoms(v20, 2, &FigMetadataRewriterSetValues_atomDispatch, &v14);
        if (!v6)
        {
          if ((!BYTE9(v19) || BYTE10(v19)) && (BYTE9(v19) || !BYTE8(v19)))
          {
            v24 = 0;
            v25 = 0;
            v22 = v21;
            v23 = 0;
            v26 = @"udta";
            v27 = *(&v14 + 1);
            v28 = *(&v17 + 1);
            if (!*(&v17 + 1) || (FigMetadataReaderCreateForQuickTimeUserData(v5, v21, *(&v14 + 1), &v24), !v10))
            {
              FigMetadataSerializerCreateForQuickTimeUserData(v5, &v25);
              if (!v10)
              {
                v10 = figMDRW_WriteMetadata(&v22, a2);
              }
            }

            v11 = v10;
            if (v24)
            {
              CFRelease(v24);
            }

            if (v25)
            {
              CFRelease(v25);
            }

            if (v11)
            {
LABEL_35:
              if (!v4)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }

            v24 = 0;
            v25 = 0;
            v22 = v21;
            v23 = 0;
            v26 = @"mdta";
            v27 = v15;
            v28 = v18;
            if (v18 && (FigMetadataReaderCreateForQuickTimeMetadata(v5, v21, v15, &v24), v12) || (FigMetadataSerializerCreateForQuickTimeMetadata(v5, &v25), v13))
            {
LABEL_31:
              if (v24)
              {
                CFRelease(v24);
              }

              if (v25)
              {
                CFRelease(v25);
              }

              goto LABEL_35;
            }
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v22 = v21;
            v23 = 0;
            v26 = @"uiso";
            v27 = *(&v14 + 1);
            v28 = *(&v17 + 1);
            if (*(&v17 + 1))
            {
              FigMetadataReaderCreateForISOUserData(v5, v21, *(&v14 + 1), &v24);
              if (v7)
              {
                goto LABEL_31;
              }
            }

            FigMetadataSerializerCreateForISOUserData(v5, &v25);
            if (v8)
            {
              goto LABEL_31;
            }
          }

          figMDRW_WriteMetadata(&v22, a2);
          goto LABEL_31;
        }
      }

      if (v4)
      {
LABEL_36:
        CFRelease(v4);
      }
    }

LABEL_37:
    if (v21)
    {
      CFRelease(v21);
    }

    return;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< MetadataRewriter >>>>", 1358, v2);
}

uint64_t FigRewriteMetadata(const __CFURL *a1, const __CFDictionary *a2, uint64_t a3, char *a4)
{
  cf = 0;
  v89 = 0;
  *v86 = 0u;
  memset(v87, 0, sizeof(v87));
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  if (!a1)
  {
    FigRewriteMetadata_cold_5(&v108);
LABEL_214:
    v11 = v108;
    goto LABEL_178;
  }

  if (!a2)
  {
    FigRewriteMetadata_cold_4(&v108);
    goto LABEL_214;
  }

  v8 = CFURLCopyPathExtension(a1);
  BYTE8(v85) = FigCFStringIsISOExtension(v8);
  v9 = *MEMORY[0x1E695E480];
  v10 = CMByteStreamCreateForFileURL();
  if (v10)
  {
    goto LABEL_12;
  }

  v10 = FigAtomStreamInitWithByteStream();
  if (v10)
  {
    goto LABEL_12;
  }

  figMDRW_ParseChildAtoms(v87, 3, &FigRewriteMetadata_atomDispatch, &v80);
  if (v10)
  {
    goto LABEL_12;
  }

  if (!LOBYTE(v86[0]))
  {
    if (BYTE9(v85))
    {
      if (BYTE10(v85))
      {
LABEL_16:
        v12 = &kFigMetadataFormat_QuickTimeUserData;
        goto LABEL_19;
      }
    }

    else if (!BYTE8(v85))
    {
      goto LABEL_16;
    }

    v12 = &kFigMetadataFormat_ISOUserData;
LABEL_19:
    v13 = *v12;
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    if (*(&v82 + 1))
    {
      v14 = v85 == 0;
    }

    else
    {
      v14 = 1;
    }

    v16 = v14 || v82 >= v80;
    v79 = v16;
    Value = CFDictionaryGetValue(a2, v13);
    if (Value)
    {
      Mutable = CFRetain(Value);
    }

    else
    {
      Mutable = 0;
    }

    v95 = Mutable;
    v19 = CFDictionaryGetValue(a2, @"com.apple.quicktime.mdta");
    structureAllocator = v9;
    if (v19)
    {
      v20 = CFRetain(v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = CFDictionaryGetValue(a2, @"com.apple.itunes");
    v78 = v13;
    if (v21)
    {
      v22 = CFRetain(v21);
      v23 = v22;
      v94 = v22;
      if (!Mutable)
      {
        if (v22)
        {
          MetadataBBufFromMetadataArray = figMDRW_CreateMetadataBBufFromMetadataArray(v22, @"com.apple.itunes", *(&v84 + 1), &v92);
          if (MetadataBBufFromMetadataArray)
          {
            goto LABEL_217;
          }

          v28 = v92;
          if (v92)
          {
            DataLength = CMBlockBufferGetDataLength(v92);
            if (DataLength != *(&v84 + 1))
            {
              CFRelease(v28);
              v92 = 0;
              MetadataBBufFromMetadataArray = figMDRW_CopyMetadataArrayFromByteStream(&cf, v78, &v95);
              if (MetadataBBufFromMetadataArray)
              {
                goto LABEL_217;
              }

              Mutable = v95;
              if (!v95)
              {
                Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
                v95 = Mutable;
                if (!Mutable)
                {
                  FigRewriteMetadata_cold_1(&v108);
                  v11 = v108;
                  goto LABEL_164;
                }
              }

              v26 = v20;
              UserDataBBufWithiTunes = figMDRW_CreateUserDataBBufWithiTunes(Mutable, *(&v83 + 1), v23, v78, &v93);
              if (UserDataBBufWithiTunes)
              {
                goto LABEL_219;
              }

              v25 = v93;
              if (v93)
              {
                goto LABEL_44;
              }

LABEL_49:
              v28 = 0;
              goto LABEL_51;
            }
          }

          v26 = v20;
        }

        else
        {
          v26 = v20;
          v28 = 0;
        }

        v25 = 0;
        Mutable = 0;
LABEL_51:
        v29 = 1;
LABEL_52:
        v30 = 0;
        v31 = 1;
        if (!v29 || !v26)
        {
LABEL_54:
          if (v29 && v31)
          {
            v108 = 0;
            v20 = v26;
            if (!v30 || (MetadataBBufFromMetadataArray = CMByteStreamWriteBlockBuffer(), !MetadataBBufFromMetadataArray))
            {
              if (v25 || v28)
              {
                v11 = CMByteStreamWriteBlockBuffer();
              }

              else
              {
                v11 = 0;
              }

              v46 = v79;
              if (a4 && !v11)
              {
                v47 = 0;
LABEL_161:
                v11 = 0;
                *a4 = v46;
                goto LABEL_162;
              }

              goto LABEL_164;
            }

LABEL_217:
            v11 = MetadataBBufFromMetadataArray;
            goto LABEL_164;
          }

          v97 = 0;
          v98 = 0;
          sourceBytes = 0;
          v20 = v26;
          if (v26)
          {
            v32 = CFRetain(v26);
          }

          else
          {
            v32 = 0;
          }

          v101 = v32;
          if (Mutable)
          {
            v33 = CFRetain(Mutable);
          }

          else
          {
            v33 = 0;
          }

          v100 = v33;
          if (v23)
          {
            v34 = CFRetain(v23);
          }

          else
          {
            v34 = 0;
          }

          v99 = v34;
          v109 = 0;
          v108 = 0;
          v104 = 0;
          blockBufferOut = 0;
          v102 = 0;
          v103 = 0;
          if (!*(&v82 + 1))
          {
            goto LABEL_157;
          }

          v35 = cf;
          v36 = v80;
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v37)
          {
            v45 = 0;
            v11 = 4294954514;
            goto LABEL_115;
          }

          v38 = v37(v35, 4, v36, &v109, &v108);
          if (v38)
          {
            goto LABEL_221;
          }

          v39 = bswap32(v109);
          v109 = v39;
          v106 = 0;
          v107 = 0;
          v40 = v84;
          if (*(&v83 + 1))
          {
            v41 = *(&v80 + 1);
            if (v84)
            {
              if (*(&v80 + 1) <= v81)
              {
                v42 = v81;
              }

              else
              {
                v42 = *(&v80 + 1);
              }

              if (*(&v80 + 1) < v81)
              {
                v43 = *(&v83 + 1);
              }

              else
              {
                v41 = v81;
                v43 = v84;
              }

              v107 = v43;
              if (*(&v80 + 1) >= v81)
              {
                v40 = *(&v83 + 1);
              }

              v44 = &v106;
            }

            else
            {
              v42 = 0;
              v44 = &v107;
              v40 = *(&v83 + 1);
            }
          }

          else
          {
            if (!v84)
            {
              v50 = 0;
              v41 = 0;
              v42 = 0;
LABEL_96:
              v51 = v80;
              if (v50)
              {
                v52 = v41 - v80;
              }

              else
              {
                v52 = v39;
              }

              v53 = cf;
              v54 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v54)
              {
                v55 = v54(v53, v52, v51, &v104, &v108);
                if (v55)
                {
                  goto LABEL_224;
                }

                v56 = v106;
                v57 = v39;
                if (v50)
                {
                  if (!v106)
                  {
                    v42 = v80 + v39;
                  }

                  v58 = cf;
                  v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                  if (!v59)
                  {
                    goto LABEL_113;
                  }

                  v51 = v41 + v50;
                  v60 = v42 - (v41 + v50);
                  v55 = v59(v58, v60, v51, &v103, &v108);
                  v57 = v60;
                  if (v55)
                  {
                    goto LABEL_224;
                  }
                }

                if (!v56)
                {
LABEL_109:
                  if (!v104)
                  {
                    v66 = 0;
                    v20 = v26;
                    goto LABEL_197;
                  }

                  v55 = CMBlockBufferCreateEmpty(structureAllocator, 8u, 1u, &blockBufferOut);
                  if (!v55)
                  {
                    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v104, 0, 0, 0);
                    v20 = v26;
                    if (appended)
                    {
                      v11 = appended;
                      v45 = 0;
                      goto LABEL_115;
                    }

                    v66 = blockBufferOut;
LABEL_197:
                    if (v103)
                    {
                      v38 = CMBlockBufferAppendBufferReference(v66, v103, 0, 0, 0);
                      if (v38)
                      {
                        goto LABEL_221;
                      }

                      v66 = blockBufferOut;
                    }

                    if (!v102)
                    {
LABEL_203:
                      v76 = CMBlockBufferGetDataLength(v66);
                      if (!HIDWORD(v76))
                      {
                        v109 = bswap32(v76);
                        v11 = CMBlockBufferReplaceDataBytes(&v109, blockBufferOut, 0, 4uLL);
                        if (!v11)
                        {
                          v45 = blockBufferOut;
                          blockBufferOut = 0;
                          goto LABEL_115;
                        }

                        goto LABEL_222;
                      }

                      FigRewriteMetadata_cold_2(v110);
                      v45 = 0;
                      v11 = v110[0];
LABEL_115:
                      if (v102)
                      {
                        CFRelease(v102);
                      }

                      if (v103)
                      {
                        CFRelease(v103);
                      }

                      if (v104)
                      {
                        CFRelease(v104);
                      }

                      if (blockBufferOut)
                      {
                        CFRelease(blockBufferOut);
                      }

                      if (v11)
                      {
                        goto LABEL_189;
                      }

                      if (v45)
                      {
                        v67 = v101;
                        if (v101)
                        {
                          goto LABEL_187;
                        }

                        v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.quicktime.mdta", &v101);
                        if (v68)
                        {
                          goto LABEL_188;
                        }

                        v67 = v101;
                        if (v101)
                        {
LABEL_187:
                          v68 = figMDRW_CreateMetadataBBufFromMetadataArray(v67, @"com.apple.quicktime.mdta", 0, &v98);
                          if (v68)
                          {
                            goto LABEL_188;
                          }
                        }

                        v69 = v100;
                        if (!v100)
                        {
                          v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, v78, &v100);
                          if (v68)
                          {
                            goto LABEL_188;
                          }

                          v69 = v100;
                          if (!v100)
                          {
                            v69 = CFArrayCreateMutable(structureAllocator, 0, MEMORY[0x1E695E9C0]);
                            v100 = v69;
                            if (!v69)
                            {
                              FigRewriteMetadata_cold_3(&v108);
                              v47 = 0;
                              v11 = v108;
LABEL_141:
                              v71 = v97;
                              if (!v97)
                              {
                                goto LABEL_143;
                              }

                              goto LABEL_142;
                            }
                          }
                        }

                        v70 = v99;
                        if (v99)
                        {
LABEL_135:
                          figMDRW_CreateUserDataBBufWithiTunes(v69, 0, v70, v78, &v97);
                          if (!v98 || (v68 = CMBlockBufferAppendBufferReference(v45, v98, 0, 0, 0), !v68))
                          {
                            v71 = v97;
                            if (v97)
                            {
                              v72 = CMBlockBufferAppendBufferReference(v45, v97, 0, 0, 0);
                              if (v72)
                              {
                                v11 = v72;
                                v47 = 0;
LABEL_142:
                                CFRelease(v71);
LABEL_143:
                                if (v98)
                                {
                                  CFRelease(v98);
                                }

                                if (v45)
                                {
                                  CFRelease(v45);
                                }

                                if (v99)
                                {
                                  CFRelease(v99);
                                }

                                if (v100)
                                {
                                  CFRelease(v100);
                                }

                                if (v101)
                                {
                                  CFRelease(v101);
                                }

                                if (v11)
                                {
LABEL_162:
                                  if (!v47)
                                  {
                                    goto LABEL_164;
                                  }

                                  goto LABEL_163;
                                }

                                if (v47)
                                {
                                  v73 = figMDRW_RewriteMovieHeader(cf, v80, *(&v82 + 1));
                                  if (v73)
                                  {
                                    v11 = v73;
                                    goto LABEL_163;
                                  }
                                }

LABEL_158:
                                v46 = v79;
                                if (v90)
                                {
                                  v46 = 0;
                                }

                                if (a4)
                                {
                                  goto LABEL_161;
                                }

                                v11 = 0;
                                if (!v47)
                                {
LABEL_164:
                                  if (v93)
                                  {
                                    CFRelease(v93);
                                  }

                                  if (v92)
                                  {
                                    CFRelease(v92);
                                  }

                                  if (v91)
                                  {
                                    CFRelease(v91);
                                  }

                                  if (v94)
                                  {
                                    CFRelease(v94);
                                  }

                                  if (v95)
                                  {
                                    CFRelease(v95);
                                  }

                                  if (v20)
                                  {
                                    CFRelease(v20);
                                  }

                                  if (v8)
                                  {
                                    goto LABEL_177;
                                  }

                                  goto LABEL_178;
                                }

LABEL_163:
                                CFRelease(v47);
                                goto LABEL_164;
                              }
                            }

                            sourceBytes = bswap32(CMBlockBufferGetDataLength(v45));
                            v11 = CMBlockBufferReplaceDataBytes(&sourceBytes, v45, 0, 4uLL);
                            if (!v11)
                            {
                              v47 = v45;
                              v45 = 0;
                              goto LABEL_141;
                            }

                            goto LABEL_189;
                          }

                          goto LABEL_188;
                        }

                        v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.itunes", &v99);
                        if (!v68)
                        {
                          v70 = v99;
                          goto LABEL_135;
                        }

LABEL_188:
                        v11 = v68;
LABEL_189:
                        v47 = 0;
                        goto LABEL_141;
                      }

LABEL_157:
                      v47 = 0;
                      goto LABEL_158;
                    }

                    v38 = CMBlockBufferAppendBufferReference(v66, v102, 0, 0, 0);
                    if (!v38)
                    {
                      v66 = blockBufferOut;
                      goto LABEL_203;
                    }

LABEL_221:
                    v11 = v38;
LABEL_222:
                    v45 = 0;
                    goto LABEL_115;
                  }

                  goto LABEL_224;
                }

                v61 = v57;
                v62 = v80;
                v63 = cf;
                v64 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v64)
                {
                  v55 = v64(v63, v39 - (v51 + v56 + v61) + v62);
                  if (!v55)
                  {
                    goto LABEL_109;
                  }

LABEL_224:
                  v11 = v55;
                  v45 = 0;
                  goto LABEL_114;
                }
              }

LABEL_113:
              v45 = 0;
              v11 = 4294954514;
LABEL_114:
              v20 = v26;
              goto LABEL_115;
            }

            v42 = 0;
            v44 = &v107;
            v41 = v81;
          }

          *v44 = v40;
          v50 = v107;
          goto LABEL_96;
        }

        UserDataBBufWithiTunes = figMDRW_CreateMetadataBBufFromMetadataArray(v26, @"com.apple.quicktime.mdta", v84, &v91);
        if (!UserDataBBufWithiTunes)
        {
          v30 = v91;
          if (v91)
          {
            v49 = CMBlockBufferGetDataLength(v91);
            v31 = v49 == v84;
          }

          else
          {
            v31 = 1;
          }

          goto LABEL_54;
        }

LABEL_219:
        v11 = UserDataBBufWithiTunes;
        v20 = v26;
        goto LABEL_164;
      }

      if (v22)
      {
LABEL_41:
        MetadataBBufFromMetadataArray = figMDRW_CreateUserDataBBufWithiTunes(Mutable, *(&v83 + 1), v23, v13, &v93);
        if (MetadataBBufFromMetadataArray)
        {
          goto LABEL_217;
        }

        v25 = v93;
        if (v93)
        {
          v26 = v20;
LABEL_44:
          v27 = CMBlockBufferGetDataLength(v25);
          v28 = 0;
          v29 = v27 == *(&v83 + 1);
          goto LABEL_52;
        }

        v26 = v20;
        goto LABEL_49;
      }
    }

    else
    {
      v94 = 0;
      if (!Mutable)
      {
        v26 = v20;
        v28 = 0;
        v25 = 0;
        v23 = 0;
        goto LABEL_51;
      }
    }

    MetadataBBufFromMetadataArray = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.itunes", &v94);
    if (MetadataBBufFromMetadataArray)
    {
      goto LABEL_217;
    }

    v23 = v94;
    goto LABEL_41;
  }

  if (v86[1])
  {
    v10 = figMDRW_RewriteMovieHeader(cf, v80, *(&v82 + 1));
    if (!v10)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = FigRewriteMetadata(a1, a2, a3, a4);
    }

LABEL_12:
    v11 = v10;
    if (!v8)
    {
      goto LABEL_178;
    }

LABEL_177:
    CFRelease(v8);
    goto LABEL_178;
  }

  v11 = 4294954709;
  if (v8)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (v86[1])
  {
    CFRelease(v86[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  return v11;
}

uint64_t GetDataCompressionAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamReadCurrentAtomData();
  *(a2 + 100) = bswap32(0);
  return result;
}

void *InitInflatorLibrary()
{
  result = dlopen("/usr/lib/libz.dylib", 6);
  if (result)
  {
    v1 = result;
    _MergedGlobals_82 = dlsym(result, "inflateInit_");
    off_1ED4CAF38 = dlsym(v1, "inflate");
    result = dlsym(v1, "inflateEnd");
    off_1ED4CAF40 = result;
  }

  return result;
}

void figMDRW_MergeQuickTimeMetadataApplierFunc(const void *a1, CFMutableDictionaryRef a2, uint64_t a3)
{
  value = 0;
  cf = 0;
  theArray = 0;
  if (!FigQuickTimeMetadataCopyNativeKeysFromCommonKey(a1, &theArray))
  {
    if (!theArray)
    {
      return;
    }

    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (CFEqual(a2, *MEMORY[0x1E695E738]))
      {
        CFDictionaryRemoveValue(*(a3 + 8), ValueAtIndex);
        goto LABEL_34;
      }

      v6 = CFGetTypeID(a2);
      if (v6 != CFDictionaryGetTypeID())
      {
        v11 = CFGetTypeID(a2);
        TypeID = CFStringGetTypeID();
        ItemFromValue = figMDRW_CreateItemFromValue(a2, v11 == TypeID);
        MutableCopy = ItemFromValue;
        if (v11 == TypeID)
        {
          v10 = 0;
          value = CFDictionaryGetValue(ItemFromValue, @"locale");
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_18;
      }

      v7 = CFDictionaryGetValue(a2, @"value");
      if (v7)
      {
        v8 = CFGetTypeID(v7);
        if (v8 != CFStringGetTypeID())
        {
          MutableCopy = 0;
          v10 = 1;
          goto LABEL_19;
        }

        value = CFDictionaryGetValue(a2, @"locale");
        if (value)
        {
          MutableCopy = 0;
          v10 = 0;
          if (!CFDictionaryGetValueIfPresent(*(a3 + 8), ValueAtIndex, &cf))
          {
            goto LABEL_29;
          }

LABEL_19:
          v14 = CFGetTypeID(cf);
          v15 = CFArrayGetTypeID();
          v16 = cf;
          if (v14 == v15)
          {
            if ((v10 & 1) != 0 || (Count = CFArrayGetCount(cf), Count < 1))
            {
LABEL_26:
              CFArrayAppendValue(v16, a2);
            }

            else
            {
              v18 = Count;
              v19 = 0;
              while (1)
              {
                v20 = CFArrayGetValueAtIndex(v16, v19);
                v21 = CFDictionaryGetValue(v20, @"locale");
                if (figMDRW_LocaleIsEqual(v21, value, 0))
                {
                  break;
                }

                if (v18 == ++v19)
                {
                  goto LABEL_26;
                }
              }

              CFArraySetValueAtIndex(v16, v19, a2);
            }

            goto LABEL_32;
          }

          v22 = CFDictionaryGetValue(cf, @"locale");
          if ((v10 & 1) != 0 || !figMDRW_LocaleIsEqual(v22, value, 0))
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v24 = Mutable;
              CFArrayAppendValue(Mutable, v16);
              CFArrayAppendValue(v24, a2);
              CFDictionarySetValue(*(a3 + 8), ValueAtIndex, v24);
              CFRelease(v24);
            }

            else
            {
              figMDRW_MergeQuickTimeMetadataApplierFunc_cold_1();
            }
          }

          else
          {
LABEL_29:
            CFDictionarySetValue(*(a3 + 8), ValueAtIndex, a2);
          }

LABEL_32:
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_34;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
        FigMetadataCopyCurrentLocaleAndLangCode(&value, 0);
        if (value)
        {
          CFDictionaryAddValue(MutableCopy, @"locale", value);
          CFRelease(value);
        }

        v10 = 0;
LABEL_18:
        a2 = MutableCopy;
        goto LABEL_19;
      }

      figMDRW_MergeQuickTimeMetadataApplierFunc_cold_2();
    }
  }

LABEL_34:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t figMDRW_WriteMetadataApplierFunc(uint64_t a1, const void *a2, uint64_t a3)
{
  FigMetadataSerializerGetFigMetadataWriter();
  v7 = v6;
  v8 = CFGetTypeID(a2);
  if (v8 == CFArrayGetTypeID())
  {
    result = CFArrayGetCount(a2);
    if (result >= 1)
    {
      v10 = result;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        result = CFDictionaryGetValue(ValueAtIndex, @"value");
        if (result)
        {
          v13 = result;
          v14 = *(a3 + 32);
          VTable = CMBaseObjectGetVTable();
          v16 = *(VTable + 16);
          result = VTable + 16;
          v17 = *(v16 + 8);
          if (v17)
          {
            result = v17(v7, v14, a1, v13, ValueAtIndex);
          }
        }
      }
    }
  }

  else
  {
    result = CFDictionaryGetValue(a2, @"value");
    if (result)
    {
      v18 = result;
      v19 = *(a3 + 32);
      v20 = CMBaseObjectGetVTable();
      v21 = *(v20 + 16);
      result = v20 + 16;
      v22 = *(v21 + 8);
      if (v22)
      {

        return v22(v7, v19, a1, v18, a2);
      }
    }
  }

  return result;
}

void figMDRW_MergeUserData(void *a1, uint64_t a2, CFArrayRef theArray)
{
  value = 0;
  number = 0;
  cf = 0;
  valuePtr = 0;
  if (!theArray)
  {
    return;
  }

  v3 = theArray;
  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_58;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = *MEMORY[0x1E695E738];
  v32 = a2;
  allocator = *MEMORY[0x1E695E480];
  v34 = *MEMORY[0x1E695E738];
  while (1)
  {
    valuePtr = CFArrayGetValueAtIndex(v3, v6);
    v9 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
    if (!v9)
    {
      figMDRW_MergeUserData_cold_2();
      goto LABEL_58;
    }

    v10 = v9;
    v11 = HIBYTE(valuePtr) << 24;
    if (!CFEqual(a1, v8))
    {
      break;
    }

    CFDictionaryRemoveValue(*(a2 + 8), v10);
LABEL_33:
    CFRelease(v10);
    if (++v6 >= CFArrayGetCount(v3))
    {
      goto LABEL_58;
    }
  }

  v12 = CFGetTypeID(a1);
  if (v12 != CFDictionaryGetTypeID())
  {
    ItemFromValue = figMDRW_CreateItemFromValue(a1, v11 == -1459617792);
    MutableCopy = ItemFromValue;
    if (v11 == -1459617792)
    {
      cf = CFDictionaryGetValue(ItemFromValue, @"locale");
    }

    v15 = MutableCopy;
    goto LABEL_16;
  }

  if (v11 != -1459617792)
  {
    MutableCopy = 0;
    v15 = a1;
LABEL_16:
    v8 = v34;
    goto LABEL_17;
  }

  cf = CFDictionaryGetValue(a1, @"locale");
  v13 = CFDictionaryGetValue(a1, @"languageCode");
  number = v13;
  v8 = v34;
  if (cf && v13)
  {
    MutableCopy = 0;
    v15 = a1;
    goto LABEL_17;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, a1);
  v28 = a2;
  if (cf | number)
  {
    if (cf)
    {
      v29 = FigMetadataCopyLangCodeFromLocale(cf);
      v30 = 0;
      number = v29;
    }

    else
    {
      if (number && (v35 = 0, CFNumberGetValue(number, kCFNumberSInt16Type, &v35)))
      {
        v30 = FigCFLocaleCreateWithMovieLangCode();
        cf = v30;
      }

      else
      {
        v30 = 0;
      }

      v29 = 0;
    }

    v31 = cf;
    if (!cf)
    {
      goto LABEL_47;
    }
  }

  else
  {
    FigMetadataCopyCurrentLocaleAndLangCode(&cf, &number);
    v31 = cf;
    v29 = number;
    v30 = cf;
    if (!cf)
    {
      goto LABEL_47;
    }
  }

  CFDictionaryAddValue(MutableCopy, @"locale", v31);
LABEL_47:
  if (number)
  {
    CFDictionaryAddValue(MutableCopy, @"languageCode", number);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v15 = MutableCopy;
  a2 = v28;
LABEL_17:
  if (!CFDictionaryGetValueIfPresent(*(a2 + 8), v10, &value))
  {
LABEL_28:
    CFDictionarySetValue(*(a2 + 8), v10, v15);
LABEL_31:
    v7 = allocator;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_33;
  }

  v17 = CFGetTypeID(value);
  TypeID = CFArrayGetTypeID();
  v19 = value;
  if (v17 != TypeID)
  {
    v25 = CFDictionaryGetValue(value, @"locale");
    if (v11 != -1459617792 || !figMDRW_LocaleIsEqual(v25, cf, 1))
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        figMDRW_MergeUserData_cold_1();
        goto LABEL_55;
      }

      v27 = Mutable;
      CFArrayAppendValue(Mutable, v19);
      CFArrayAppendValue(v27, v15);
      a2 = v32;
      CFDictionarySetValue(*(v32 + 8), v10, v27);
      CFRelease(v27);
      goto LABEL_31;
    }

    a2 = v32;
    goto LABEL_28;
  }

  if (v11 != -1459617792 || (Count = CFArrayGetCount(value), Count < 1))
  {
LABEL_24:
    CFArrayAppendValue(v19, v15);
    a2 = v32;
    v8 = v34;
    goto LABEL_31;
  }

  v21 = Count;
  v22 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
    v24 = CFDictionaryGetValue(ValueAtIndex, @"locale");
    if (figMDRW_LocaleIsEqual(v24, cf, 1))
    {
      break;
    }

    if (v21 == ++v22)
    {
      goto LABEL_24;
    }
  }

  CFArraySetValueAtIndex(v19, v22, v15);
LABEL_55:
  CFRelease(v3);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v3 = v10;
LABEL_58:
  CFRelease(v3);
}

__CFDictionary *figMDRW_CreateItemFromValue(const void *a1, int a2)
{
  cf = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"value", a1);
    if (a2)
    {
      FigMetadataCopyCurrentLocaleAndLangCode(&value, &cf);
      if (value)
      {
        CFDictionaryAddValue(v5, @"locale", value);
      }

      if (cf)
      {
        CFDictionaryAddValue(v5, @"languageCode", cf);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, value, v9);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL figMDRW_LocaleIsEqual(const __CFLocale *a1, const __CFLocale *a2, int a3)
{
  if (!a1 || !a2)
  {
    return (a1 | a2) == 0;
  }

  if (a3)
  {
    v4 = *MEMORY[0x1E695E6F0];
    Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
    v6 = CFLocaleGetValue(a2, v4);
  }

  else
  {
    Value = MEMORY[0x19A8CD070]();
    v6 = MEMORY[0x19A8CD070](a2);
  }

  return CFEqual(Value, v6) != 0;
}

uint64_t figMDRW_CopyMetadataArrayFromByteStream(uint64_t *a1, void *key, __CFArray **a3)
{
  theDict = 0;
  value = 0;
  v6 = a1[1];
  if (v6)
  {
    goto LABEL_24;
  }

  v7 = *a1;
  theArray = 0;
  cf = 0;
  keya = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = FigFormatReaderCreateForStream(v7, v8, 0, &cf);
    if (v10)
    {
LABEL_58:
      v22 = v10;
      goto LABEL_16;
    }

    FigFormatReaderGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v10 = v13(v12, @"MetadataReaders", v8, &theArray);
      if (!v10)
      {
        if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
        {
          v15 = Count;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
            FigMetadataReaderGetFigBaseObject();
            v19 = v18;
            v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v20)
            {
              v22 = 4294954514;
              goto LABEL_51;
            }

            v21 = v20(v19, @"format", v8, &keya);
            if (v21)
            {
              break;
            }

            CFDictionaryAddValue(Mutable, keya, ValueAtIndex);
            if (keya)
            {
              CFRelease(keya);
              keya = 0;
            }

            if (v15 == ++v16)
            {
              goto LABEL_14;
            }
          }

          v22 = v21;
LABEL_51:
          if (keya)
          {
            CFRelease(keya);
          }
        }

        else
        {
LABEL_14:
          v22 = 0;
          a1[1] = Mutable;
          Mutable = 0;
        }

        goto LABEL_16;
      }

      goto LABEL_58;
    }

    v22 = 4294954514;
  }

  else
  {
    figMDRW_CopyMetadataArrayFromByteStream_cold_1(&v42);
    v22 = v42;
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    goto LABEL_42;
  }

  v6 = a1[1];
LABEL_24:
  v23 = CFDictionaryGetValue(v6, key);
  if (v23 && (v24 = v23, (v25 = *(*(CMBaseObjectGetVTable() + 16) + 40)) != 0) && (v26 = v25(v24, 0, 0), v26 >= 1))
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = *MEMORY[0x1E695E480];
    v31 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v32)
      {
        v22 = 4294954514;
        goto LABEL_48;
      }

      v33 = v32(v24, 0, 0, v28, v30, &value, &theDict);
      if (v33)
      {
        break;
      }

      if (!theDict)
      {
        figMDRW_CopyMetadataArrayFromByteStream_cold_4(&cf);
LABEL_55:
        v22 = cf;
        goto LABEL_48;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v30, 0, theDict);
      if (!MutableCopy)
      {
        figMDRW_CopyMetadataArrayFromByteStream_cold_3(&cf);
        goto LABEL_55;
      }

      v35 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, @"value", value);
      if (!v29)
      {
        v29 = CFArrayCreateMutable(v30, 0, v31);
        if (!v29)
        {
          figMDRW_CopyMetadataArrayFromByteStream_cold_2(v35, &cf);
          v22 = cf;
          goto LABEL_42;
        }
      }

      CFArrayAppendValue(v29, v35);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      CFRelease(v35);
      if (v27 == ++v28)
      {
        goto LABEL_41;
      }
    }

    v22 = v33;
LABEL_48:
    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    v29 = 0;
LABEL_41:
    v22 = 0;
    *a3 = v29;
  }

LABEL_42:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v22;
}

double figID3CreateMetadataReaderCommon(CFAllocatorRef Default, const void *a2, uint64_t a3, char a4, CFTypeRef *a5)
{
  if (a2)
  {
    if (a5)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        FigMetadataReaderGetClassID();
        if (!CMDerivedObjectCreate())
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (!Default)
          {
            Default = CFAllocatorGetDefault();
          }

          *DerivedStorage = CFRetain(Default);
          *(DerivedStorage + 8) = CFRetain(a2);
          *(DerivedStorage + 16) = a3;
          if (!ID3ParserOpen() && !ID3ParserGetProperty())
          {
            *(DerivedStorage + 32) = 0;
            *(DerivedStorage + 65) = a4;
            if (!ID3ParserGetProperty())
            {
              *(DerivedStorage + 40) = 0;
              *a5 = 0;
            }
          }
        }

        return result;
      }

      emitter = fig_log_get_emitter();
      v14 = v5;
      v15 = 4294954695;
      v16 = 1106;
    }

    else
    {
      emitter = fig_log_get_emitter();
      v14 = v5;
      v15 = 4294954696;
      v16 = 1103;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v14 = v5;
    v15 = 4294954696;
    v16 = 1100;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v15, "<<<< FMDR_ID3 >>>>", v16, v14);
}

uint64_t FigMetadataReaderCreateForTimedID3(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2)
  {
    v5 = CMByteStreamCreateForBlockBuffer();
    if (!v5)
    {
      figID3CreateMetadataReaderCommon(a1, 0, 0, 1, a3);
    }

    return v5;
  }

  else
  {
    FigMetadataReaderCreateForTimedID3_cold_1(&v8);
    return v8;
  }
}

void FigID3MetadataFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    ID3ParserClose();
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigID3MetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigID3MetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*(DerivedStorage + 8));
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_2, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigID3MetadataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    FigID3MetadataCopyProperty_cold_1(DerivedStorage, a4, &v10);
    return v10;
  }

  if (CFEqual(a2, @"format"))
  {
    v7 = CFRetain(@"org.id3");
LABEL_4:
    Property = 0;
LABEL_8:
    *a4 = v7;
    return Property;
  }

  if (!CFEqual(a2, @"formatVersion"))
  {
    if (!CFEqual(a2, @"size"))
    {
      return 4294954512;
    }

    v10 = DerivedStorage[4];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v10);
    goto LABEL_4;
  }

  LODWORD(v10) = 0;
  v11 = 4;
  Property = ID3ParserGetProperty();
  if (!Property)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v10);
    goto LABEL_8;
  }

  return Property;
}

void metadataPropertiesCallback_2(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v5 = CFGetTypeID(a2);
    if (v5 == CFNumberGetTypeID())
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
      v6 = CFGetTypeID(a2);
      if (v6 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }
}

uint64_t FigID3MetadataCopyValue(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v19 = 0;
  cf = 0;
  if (!a1)
  {
    FigID3MetadataCopyValue_cold_5(&v21);
    goto LABEL_23;
  }

  if (!a3)
  {
    FigID3MetadataCopyValue_cold_4(&v21);
    goto LABEL_23;
  }

  if (!cf1)
  {
    FigID3MetadataCopyValue_cold_3(&v21);
    goto LABEL_23;
  }

  if (!a6)
  {
    FigID3MetadataCopyValue_cold_2(&v21);
    goto LABEL_23;
  }

  if (!CFEqual(cf1, @"comn") && !CFEqual(cf1, @"org.id3"))
  {
    FigID3MetadataCopyValue_cold_1(&v21);
    goto LABEL_23;
  }

  if (a7)
  {
    v14 = &v19;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_17;
  }

  v16 = v15(a1, cf1, a3, 0, a5, &cf, v14);
  if (v16)
  {
    v17 = v16;
LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_19;
  }

  if (a4 && CFGetTypeID(cf) != a4)
  {
    FigID3MetadataCopyValue_cold_6(&v21);
LABEL_23:
    v17 = v21;
    goto LABEL_17;
  }

  *a6 = cf;
  cf = 0;
  v17 = 0;
  if (a7)
  {
    *a7 = v19;
    return v17;
  }

LABEL_19:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

CFIndex FigID3MetadataGetKeyCount(const void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigID3MetadataGetKeyCount_cold_2();
    return 0;
  }

  v5 = DerivedStorage;
  if (a2 && !CFEqual(a2, @"org.id3"))
  {
    FigID3MetadataGetKeyCount_cold_1();
    return 0;
  }

  if (!*(v5 + 64))
  {
    if (!ID3ParserGetProperty())
    {
      Mutable = 0;
      do
      {
        if (!Mutable)
        {
          v8 = CFGetAllocator(a1);
          Mutable = CFSetCreateMutable(v8, 0, 0);
        }

        CFSetAddValue(Mutable, 0);
        ++v10;
      }

      while (!ID3ParserGetProperty());
      if (Mutable)
      {
        Count = CFSetGetCount(Mutable);
        *(v5 + 56) = Count;
        *(v5 + 64) = 1;
        CFRelease(Mutable);
        return Count;
      }
    }

    return 0;
  }

  return *(v5 + 56);
}

uint64_t FigID3MetadataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  v11 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigID3MetadataCopyKeyAtIndex_cold_3(&valuePtr);
    return valuePtr;
  }

  if (!a5)
  {
    FigID3MetadataCopyKeyAtIndex_cold_2(&valuePtr);
    return valuePtr;
  }

  if (a2 && !CFEqual(a2, @"org.id3"))
  {
    FigID3MetadataCopyKeyAtIndex_cold_1(&valuePtr);
    return valuePtr;
  }

  v10 = 0;
  valuePtr = 0;
  while (!ID3ParserGetProperty())
  {
    if (HIDWORD(v11) == a3)
    {
      *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      return 0;
    }

    ++HIDWORD(v11);
    v10 = 0;
    valuePtr = 0;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_91(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t a14, char a15)
{

  return ID3ParserGetProperty();
}

void FigPlayerServerStart()
{
  v3 = 1;
  v4 = HandlePlayerServerMessage;
  v5 = HandlePlayerServerNoReplyMessage;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  FigPlayerCelesteOneTimeInitialization();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  }

  else
  {
    IsMediaplaybackd = FigServer_IsMediaplaybackd();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigPlayerServerStart_cold_1(IsMediaplaybackd, Mutable, &v3, &v9);
    }

    else
    {
      FigPlayerServerStart_cold_2(&v9);
    }
  }
}

uint64_t HandlePlayerServerNoReplyMessage(uint64_t a1, void *a2)
{
  v11 = 0;
  v9 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_7;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_7;
  }

  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(cf))
  {
    FigXPCPlaybackCoordinatorServerHandleNoReplyMessage(cf, v9, a2, a1);
LABEL_7:
    v5 = OpCode;
    goto LABEL_8;
  }

  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(cf))
  {
    FigXPCImageQueueGaugeServerHandleNoReplyMessage(cf, v9, a2, a1);
    goto LABEL_7;
  }

  v5 = 4294951138;
LABEL_8:
  if (_MergedGlobals_83 != -1)
  {
    HandlePlayerServerNoReplyMessage_cold_7();
  }

  v6 = qword_1ED4CAF50;
  dispatch_retain(qword_1ED4CAF50);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __HandlePlayerServerNoReplyMessage_block_invoke;
  v8[3] = &__block_descriptor_tmp_162;
  v8[4] = cf;
  dispatch_async(v6, v8);
  dispatch_release(v6);
  return v5;
}

void __HandlePlayerServerMessage_block_invoke(uint64_t a1)
{
  v340 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (v2 <= 1346529645)
  {
    if (v2 > 1231320433)
    {
      if (v2 > 1232302194)
      {
        if (v2 <= 1232303212)
        {
          switch(v2)
          {
            case 1232302195:
              v219 = *(*(*(a1 + 40) + 8) + 24);
              v221 = *(a1 + 64);
              v220 = *(a1 + 72);
              LOBYTE(v322[0]) = 0;
              *__str = 0;
              cf[0] = 0;
              *&v330 = 0;
              *&valuePtr = 0;
              v326[0] = 0;
              if (!v219 || (v222 = CFGetTypeID(v219), v222 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_7(v324);
                goto LABEL_642;
              }

              if (!v221)
              {
                __HandlePlayerServerMessage_block_invoke_cold_6(v324);
                goto LABEL_642;
              }

              if (!v220)
              {
                __HandlePlayerServerMessage_block_invoke_cold_5(v324);
                goto LABEL_642;
              }

              v79 = FigXPCMessageCopyCFDictionary();
              if (!v79)
              {
                __HandlePlayerServerMessage_block_invoke_cold_4(v324);
                goto LABEL_642;
              }

LABEL_323:
              v32 = v79;
LABEL_426:
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              if (v326[0])
              {
                CFRelease(v326[0]);
              }

              goto LABEL_430;
            case 1232302695:
              v207 = *(*(*(a1 + 40) + 8) + 24);
              v209 = *(a1 + 64);
              v208 = *(a1 + 72);
              valuePtr = *MEMORY[0x1E6960C70];
              v329 = *(MEMORY[0x1E6960C70] + 16);
              *v326 = valuePtr;
              v327 = v329;
              *v324 = valuePtr;
              v325 = v329;
              if (!v207 || (v210 = CFGetTypeID(v207), v210 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_53(__str);
                goto LABEL_631;
              }

              if (!v209)
              {
                __HandlePlayerServerMessage_block_invoke_cold_52(__str);
                goto LABEL_631;
              }

              if (!v208)
              {
                __HandlePlayerServerMessage_block_invoke_cold_51(__str);
                goto LABEL_631;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              uint64 = xpc_dictionary_get_uint64(v209, "TimeFlags");
              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              *v322 = valuePtr;
              v323 = v329;
              v320 = *v326;
              v321 = v327;
              v318 = *v324;
              v319 = v325;
              v212 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (!v212)
              {
                goto LABEL_391;
              }

              *__str = *v322;
              *&v333 = v323;
              *cf = v320;
              *&v311 = v321;
              v330 = v318;
              v331 = v319;
              CMTime = v212(v207, __str, uint64, cf, &v330);
              if (CMTime)
              {
                goto LABEL_501;
              }

              break;
            case 1232302697:
              v11 = *(*(*(a1 + 40) + 8) + 24);
              v13 = *(a1 + 64);
              v12 = *(a1 + 72);
              valuePtr = *MEMORY[0x1E6960C70];
              v329 = *(MEMORY[0x1E6960C70] + 16);
              *v326 = valuePtr;
              v327 = v329;
              *v324 = valuePtr;
              v325 = v329;
              if (!v11 || (v14 = CFGetTypeID(v11), v14 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_50(__str);
                goto LABEL_631;
              }

              if (!v13)
              {
                __HandlePlayerServerMessage_block_invoke_cold_49(__str);
                goto LABEL_631;
              }

              if (!v12)
              {
                __HandlePlayerServerMessage_block_invoke_cold_48(__str);
                goto LABEL_631;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              v15 = xpc_dictionary_get_uint64(v13, "TimeFlags");
              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              int64 = xpc_dictionary_get_int64(v13, "SeekID");
              *v322 = valuePtr;
              v323 = v329;
              v320 = *v326;
              v321 = v327;
              v318 = *v324;
              v319 = v325;
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 144);
              if (!v17)
              {
                goto LABEL_391;
              }

              *__str = *v322;
              *&v333 = v323;
              *cf = v320;
              *&v311 = v321;
              v330 = v318;
              v331 = v319;
              CMTime = v17(v11, __str, v15, cf, &v330, int64);
              if (CMTime)
              {
                goto LABEL_501;
              }

              break;
            default:
              goto LABEL_460;
          }

          goto LABEL_331;
        }

        if (v2 == 1232303213)
        {
          v223 = *(*(*(a1 + 40) + 8) + 24);
          v225 = *(a1 + 64);
          v224 = *(a1 + 72);
          *cf = *MEMORY[0x1E6960C70];
          *&v311 = *(MEMORY[0x1E6960C70] + 16);
          if (!v223 || (v226 = CFGetTypeID(v223), v226 != FigPlaybackItemGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_56(__str);
            goto LABEL_631;
          }

          if (!v225)
          {
            __HandlePlayerServerMessage_block_invoke_cold_55(__str);
            goto LABEL_631;
          }

          if (!v224)
          {
            __HandlePlayerServerMessage_block_invoke_cold_54(__str);
            goto LABEL_631;
          }

          CMTime = FigXPCMessageGetCMTime();
          if (CMTime)
          {
            goto LABEL_501;
          }

          v227 = xpc_dictionary_get_uint64(v225, "TimeFlags");
          v330 = *cf;
          v331 = v311;
          v228 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v228)
          {
            goto LABEL_391;
          }

          *__str = v330;
          *&v333 = v331;
          CMTime = v228(v223, __str, v227);
          if (CMTime)
          {
            goto LABEL_501;
          }

LABEL_331:
          serverXPCItem_addTimeSyncUpdateToMessage();
LABEL_332:
          v32 = 0;
          goto LABEL_506;
        }

        if (v2 == 1232303215)
        {
          v213 = *(*(*(a1 + 40) + 8) + 24);
          v215 = *(a1 + 64);
          v214 = *(a1 + 72);
          *cf = *MEMORY[0x1E6960C70];
          *&v311 = *(MEMORY[0x1E6960C70] + 16);
          *&valuePtr = 0;
          if (v213 && (v216 = CFGetTypeID(v213), v216 == FigPlaybackItemGetTypeID()))
          {
            if (v215)
            {
              if (v214)
              {
                v217 = FigXPCMessageGetCMTime();
                if (!v217)
                {
                  v217 = FigXPCMessageCopyCFDictionary();
                  if (!v217)
                  {
                    v330 = *cf;
                    v331 = v311;
                    v218 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                    if (!v218)
                    {
                      v32 = -12782;
                      goto LABEL_504;
                    }

                    *__str = v330;
                    *&v333 = v331;
                    v217 = v218(v213, __str, valuePtr);
                    if (!v217)
                    {
                      serverXPCItem_addTimeSyncUpdateToMessage();
                      v32 = 0;
                      goto LABEL_504;
                    }
                  }
                }

                v32 = v217;
LABEL_504:
                v146 = valuePtr;
                if (!valuePtr)
                {
                  goto LABEL_506;
                }

LABEL_505:
                CFRelease(v146);
                goto LABEL_506;
              }

              __HandlePlayerServerMessage_block_invoke_cold_45(__str);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_46(__str);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_47(__str);
          }

          v32 = *__str;
          goto LABEL_504;
        }

        if (v2 != 1232303216)
        {
          goto LABEL_460;
        }

        v71 = *(*(*(a1 + 40) + 8) + 24);
        v72 = *(a1 + 64);
        *__str = 0;
        cf[0] = 0;
        if (!v71 || (v73 = CFGetTypeID(v71), v73 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_35(&v330);
          goto LABEL_641;
        }

        if (!v72)
        {
          __HandlePlayerServerMessage_block_invoke_cold_34(&v330);
          goto LABEL_641;
        }

        xpc_dictionary_get_uint64(v72, "TrackID");
        v74 = FigXPCMessageCopyCFString();
        if (!v74)
        {
          __HandlePlayerServerMessage_block_invoke_cold_33(&v330);
          goto LABEL_641;
        }

LABEL_452:
        v32 = v74;
        goto LABEL_453;
      }

      if (v2 > 1232233592)
      {
        if (v2 != 1232233593)
        {
          if (v2 != 1232298598)
          {
            if (v2 != 1232300900)
            {
              goto LABEL_460;
            }

            v43 = *(*(*(a1 + 40) + 8) + 24);
            v44 = *(a1 + 64);
            *__str = 0;
            if (v43 && (v45 = CFGetTypeID(v43), v45 == FigPlaybackItemGetTypeID()))
            {
              if (v44)
              {
                IDByAssociatingWithClientConnection = FigXPCMessageCopyCFDate();
                if (IDByAssociatingWithClientConnection)
                {
                  goto LABEL_417;
                }

                v46 = xpc_dictionary_get_int64(v44, "SeekID");
                v47 = *(*(CMBaseObjectGetVTable() + 16) + 128);
                if (v47)
                {
                  IDByAssociatingWithClientConnection = v47(v43, *__str, v46);
                  goto LABEL_417;
                }

                goto LABEL_418;
              }

              __HandlePlayerServerMessage_block_invoke_cold_43(cf);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_44(cf);
            }

            goto LABEL_603;
          }

          v117 = *(*(*(a1 + 40) + 8) + 24);
          v118 = *(a1 + 64);
          v119 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          *&v330 = 0;
          if (v117 && (v120 = CFGetTypeID(v117), v120 == FigPlaybackItemGetTypeID()))
          {
            if (v118)
            {
              if (v119)
              {
                v121 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
                if (v121)
                {
LABEL_196:
                  v32 = v121;
                  goto LABEL_409;
                }

                if (*(cf[0] + 6))
                {
                  v122 = xpc_dictionary_get_uint64(v118, "TrackID");
                  v123 = xpc_dictionary_get_uint64(v118, "ExtractionID");
                  v124 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (v124)
                  {
                    v121 = v124(v117, v122, v123, &v330);
                    if (!v121)
                    {
                      v121 = FigXPCMessageAddCMSampleBuffer();
                    }

                    goto LABEL_196;
                  }

                  v32 = -12782;
LABEL_409:
                  if (*__str)
                  {
                    CFRelease(*__str);
                  }

                  v292 = v330;
                  if (v330)
                  {
LABEL_454:
                    CFRelease(v292);
                  }

LABEL_455:
                  v146 = cf[0];
                  if (!cf[0])
                  {
                    goto LABEL_506;
                  }

                  goto LABEL_505;
                }

                __HandlePlayerServerMessage_block_invoke_cold_8(&valuePtr);
              }

              else
              {
                __HandlePlayerServerMessage_block_invoke_cold_9(&valuePtr);
              }
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_10(&valuePtr);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_11(&valuePtr);
          }

          v32 = valuePtr;
          goto LABEL_409;
        }

        v125 = *(*(*(a1 + 40) + 8) + 24);
        v127 = *(a1 + 64);
        v126 = *(a1 + 72);
        *__str = 0;
        LOBYTE(v330) = 0;
        if (!v125 || (v128 = CFGetTypeID(v125), v128 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_32(cf);
          goto LABEL_603;
        }

        if (!v127)
        {
          __HandlePlayerServerMessage_block_invoke_cold_31(cf);
          goto LABEL_603;
        }

        if (!v126)
        {
          __HandlePlayerServerMessage_block_invoke_cold_30(cf);
          goto LABEL_603;
        }

        IDByAssociatingWithClientConnection = FigXPCMessageCopyCFArray();
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v129 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v129)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v129(v125, *__str, &v330);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        xpc_dictionary_set_BOOL(v126, "AlreadyReady", v330 != 0);
LABEL_464:
        v32 = 0;
        goto LABEL_465;
      }

      if (v2 > 1231515251)
      {
        if (v2 != 1231515252)
        {
          if (v2 == 1231647079)
          {
            v303 = *(*(*(a1 + 40) + 8) + 24);
            v304 = &kFigPlaybackItemProperty_ImageQueueGauge;
          }

          else
          {
            if (v2 != 1232103783)
            {
              goto LABEL_460;
            }

            v303 = *(*(*(a1 + 40) + 8) + 24);
            v304 = &kFigPlaybackItemProperty_PriorImageQueueGauge;
          }

          CMTime = serverXPCItem_HandleCopyImageQueueGaugeMessage(v303, *v304, *(a1 + 56), *(a1 + 64), *(a1 + 72));
          goto LABEL_501;
        }

        v99 = *(*(*(a1 + 40) + 8) + 24);
        v101 = *(a1 + 64);
        v100 = *(a1 + 72);
        *cf = *MEMORY[0x1E6960C70];
        *&v311 = *(MEMORY[0x1E6960C70] + 16);
        v330 = *cf;
        v331 = v311;
        if (!v99 || (v102 = CFGetTypeID(v99), v102 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_23(__str);
          goto LABEL_631;
        }

        if (!v101)
        {
          __HandlePlayerServerMessage_block_invoke_cold_22(__str);
          goto LABEL_631;
        }

        if (!v100)
        {
          __HandlePlayerServerMessage_block_invoke_cold_21(__str);
          goto LABEL_631;
        }

        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v103 = xpc_dictionary_get_uint64(v101, "ThumbnailFlags");
        valuePtr = *cf;
        v329 = v311;
        v104 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v104)
        {
          goto LABEL_391;
        }

        *__str = valuePtr;
        *&v333 = v329;
        CMTime = v104(v99, __str, v103, &v330);
        if (CMTime)
        {
          goto LABEL_501;
        }

        *__str = v330;
        *&v333 = v331;
LABEL_186:
        CMTime = FigXPCMessageSetCMTime();
        goto LABEL_501;
      }

      if (v2 != 1231320434)
      {
        goto LABEL_460;
      }

      v112 = *(*(*(a1 + 40) + 8) + 24);
      v114 = *(a1 + 64);
      v113 = *(a1 + 72);
      *__str = *MEMORY[0x1E6960C70];
      *&v333 = *(MEMORY[0x1E6960C70] + 16);
      if (v112 && (v115 = CFGetTypeID(v112), v115 == FigPlaybackItemGetTypeID()))
      {
        if (v114)
        {
          if (v113)
          {
            v116 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v116)
            {
              goto LABEL_391;
            }

            CMTime = v116(v112, __str);
            if (CMTime)
            {
              goto LABEL_501;
            }

            *cf = *__str;
            *&v311 = v333;
            goto LABEL_186;
          }

          __HandlePlayerServerMessage_block_invoke_cold_57(cf);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_58(cf);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_59(cf);
      }

LABEL_608:
      v32 = cf[0];
      goto LABEL_506;
    }

    if (v2 > 1231250284)
    {
      if (v2 > 1231253604)
      {
        if (v2 != 1231253605)
        {
          if (v2 != 1231254640)
          {
            if (v2 != 1231317357)
            {
              goto LABEL_460;
            }

            v63 = *(*(*(a1 + 40) + 8) + 24);
            v65 = *(a1 + 64);
            v64 = *(a1 + 72);
            LODWORD(cf[0]) = 0;
            LODWORD(v330) = 0;
            if (!v63 || (v66 = CFGetTypeID(v63), v66 != FigPlaybackItemGetTypeID()))
            {
              __HandlePlayerServerMessage_block_invoke_cold_62(__str);
              goto LABEL_631;
            }

            if (!v65)
            {
              __HandlePlayerServerMessage_block_invoke_cold_61(__str);
              goto LABEL_631;
            }

            if (!v64)
            {
              __HandlePlayerServerMessage_block_invoke_cold_60(__str);
              goto LABEL_631;
            }

            v67 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v67)
            {
              goto LABEL_391;
            }

            CMTime = v67(v63, cf, &v330);
            if (CMTime)
            {
              goto LABEL_501;
            }

            xpc_dictionary_set_double(v64, "Width", *cf);
            xpc_dictionary_set_double(v64, "Height", *&v330);
            goto LABEL_332;
          }

          v153 = *(*(*(a1 + 40) + 8) + 24);
          v155 = *(a1 + 64);
          v154 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (!v153 || (v156 = CFGetTypeID(v153), v156 != FigPlaybackItemGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_42(&v330);
            goto LABEL_641;
          }

          if (!v155)
          {
            __HandlePlayerServerMessage_block_invoke_cold_41(&v330);
            goto LABEL_641;
          }

          if (!v154)
          {
            __HandlePlayerServerMessage_block_invoke_cold_40(&v330);
            goto LABEL_641;
          }

          xpc_dictionary_get_uint64(v155, "TrackID");
          v74 = FigXPCMessageCopyCFString();
          if (!v74)
          {
            __HandlePlayerServerMessage_block_invoke_cold_39(&v330);
            goto LABEL_641;
          }

          goto LABEL_452;
        }

        v166 = *(*(*(a1 + 40) + 8) + 24);
        v167 = *(a1 + 56);
        v168 = *(a1 + 64);
        v133 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v166 || (v169 = CFGetTypeID(v166), v169 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_14(&v330);
          goto LABEL_617;
        }

        if (!v168)
        {
          __HandlePlayerServerMessage_block_invoke_cold_13(&v330);
          goto LABEL_617;
        }

        if (!v133)
        {
          __HandlePlayerServerMessage_block_invoke_cold_12(&v330);
          goto LABEL_617;
        }

        FigPlaybackItemGetFigBaseObject();
        v171 = v170;
        v172 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v172)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v172(v171, @"CPEProtector", *MEMORY[0x1E695E480], __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        IDByAssociatingWithClientConnection = FigXPCCPEProtectorServerAssociateCopiedNeighborCPEProtector(v167);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v137 = *MEMORY[0x1E69615A0];
        v136 = cf[0];
        goto LABEL_463;
      }

      if (v2 != 1231250285)
      {
        if (v2 != 1231250804)
        {
          if (v2 != 1231251058)
          {
            goto LABEL_460;
          }

          v18 = *(*(*(a1 + 40) + 8) + 24);
          v19 = *(a1 + 56);
          v20 = *(a1 + 64);
          v21 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (v18 && (v22 = CFGetTypeID(v18), v22 == FigPlaybackItemGetTypeID()))
          {
            if (v20)
            {
              if (v21)
              {
                v23 = *(*(CMBaseObjectGetVTable() + 16) + 120);
                if (!v23)
                {
                  goto LABEL_418;
                }

                IDByAssociatingWithClientConnection = v23(v18, __str);
                if (IDByAssociatingWithClientConnection)
                {
                  goto LABEL_417;
                }

                if (FigRemote_ShouldConnectToMediaparserdForFileParsing() && FigFormatReaderIsRemote(*__str))
                {
                  v25 = *__str;
                  pid = xpc_connection_get_pid(v19);
                  v32 = FigFormatReaderXPCRemoteObtainObjectIDForOtherProcess(v25, pid, cf, v27, v28, v29, v30, v31, v308, v309, cf[0], cf[1], v311, *(&v311 + 1), v312, v313, v314, v315, v316, v317);
                }

                else
                {
                  IDByAssociatingWithClientConnection = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(v19, *__str, cf);
                  if (IDByAssociatingWithClientConnection)
                  {
                    goto LABEL_417;
                  }

                  v32 = 0;
                }

                xpc_dictionary_set_uint64(v21, "FormatReaderObjectID", cf[0]);
LABEL_465:
                v146 = *__str;
                if (!*__str)
                {
                  goto LABEL_506;
                }

                goto LABEL_505;
              }

              __HandlePlayerServerMessage_block_invoke_cold_18(&v330);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_19(&v330);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_20(&v330);
          }

LABEL_617:
          v32 = v330;
          goto LABEL_465;
        }

        v147 = *(*(*(a1 + 40) + 8) + 24);
        v148 = *(a1 + 64);
        v133 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v147 || (v149 = CFGetTypeID(v147), v149 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_3(&v330);
          goto LABEL_617;
        }

        if (!v148)
        {
          __HandlePlayerServerMessage_block_invoke_cold_2(&v330);
          goto LABEL_617;
        }

        if (!v133)
        {
          __HandlePlayerServerMessage_block_invoke_cold_1(&v330);
          goto LABEL_617;
        }

        FigPlaybackItemGetFigBaseObject();
        v151 = v150;
        v152 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v152)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v152(v151, @"MetricEventTimeline", *MEMORY[0x1E695E480], __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        if (*__str)
        {
          IDByAssociatingWithClientConnection = FigMetricEventTimelineGetIDByAssociatingWithClientConnection();
          if (IDByAssociatingWithClientConnection)
          {
            goto LABEL_417;
          }

          v136 = cf[0];
        }

        else
        {
          v136 = 0;
        }

        v137 = *MEMORY[0x1E69615A0];
        goto LABEL_463;
      }

      v159 = *(*(*(a1 + 40) + 8) + 24);
      v161 = *(a1 + 64);
      v160 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      *&v330 = 0;
      if (v159 && (v162 = CFGetTypeID(v159), v162 == FigPlaybackItemGetTypeID()))
      {
        if (v161)
        {
          if (v160)
          {
            CommonMetadataBinaryPListData = FigXPCMessageCopyCFArray();
            if (CommonMetadataBinaryPListData)
            {
LABEL_249:
              v32 = CommonMetadataBinaryPListData;
              goto LABEL_430;
            }

            v164 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v164)
            {
              v165 = *MEMORY[0x1E695E480];
              CommonMetadataBinaryPListData = v164(v159, *__str, *MEMORY[0x1E695E480], cf);
              if (!CommonMetadataBinaryPListData)
              {
                CommonMetadataBinaryPListData = FigRemote_CreateCommonMetadataBinaryPListData(cf[0], v165, &v330);
                if (!CommonMetadataBinaryPListData)
                {
                  CommonMetadataBinaryPListData = FigXPCMessageSetCFData();
                }
              }

              goto LABEL_249;
            }

            v32 = -12782;
LABEL_430:
            if (*__str)
            {
              CFRelease(*__str);
            }

LABEL_432:
            v296 = cf[0];
            if (!cf[0])
            {
              goto LABEL_434;
            }

            goto LABEL_433;
          }

          __HandlePlayerServerMessage_block_invoke_cold_24(&valuePtr);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_25(&valuePtr);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_26(&valuePtr);
      }

      v32 = valuePtr;
      goto LABEL_430;
    }

    if (v2 > 1230268003)
    {
      if (v2 == 1230268004)
      {
        v138 = *(*(*(a1 + 40) + 8) + 24);
        v140 = *(a1 + 64);
        v139 = *(a1 + 72);
        *__str = 0;
        if (v138 && (v141 = CFGetTypeID(v138), v141 == FigPlaybackItemGetTypeID()))
        {
          if (v140)
          {
            if (v139)
            {
              v142 = xpc_dictionary_get_uint64(v140, "TrackID");
              v143 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (!v143)
              {
                goto LABEL_391;
              }

              v144 = v143(v138, v142, @"FormatDescriptionArray", *MEMORY[0x1E695E480], __str);
              v145 = *__str;
              if (v144)
              {
                v32 = v144;
                if (!*__str)
                {
                  goto LABEL_506;
                }
              }

              else
              {
                v32 = FigXPCMessageSetFormatDescriptionArray();
                v145 = *__str;
                if (!*__str)
                {
                  goto LABEL_506;
                }
              }

              v146 = v145;
              goto LABEL_505;
            }

            __HandlePlayerServerMessage_block_invoke_cold_36(cf);
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_37(cf);
          }
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_38(cf);
        }

        goto LABEL_608;
      }

      if (v2 == 1231249779)
      {
        v130 = *(*(*(a1 + 40) + 8) + 24);
        v131 = *(a1 + 56);
        v132 = *(a1 + 64);
        v133 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v130 || (v134 = CFGetTypeID(v130), v134 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_17(&v330);
          goto LABEL_617;
        }

        if (!v132)
        {
          __HandlePlayerServerMessage_block_invoke_cold_16(&v330);
          goto LABEL_617;
        }

        if (!v133)
        {
          __HandlePlayerServerMessage_block_invoke_cold_15(&v330);
          goto LABEL_617;
        }

        v135 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (!v135)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v135(v130, __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        IDByAssociatingWithClientConnection = FigXPCAssetServerAssociateCopiedNeighborAsset(v131, *__str, cf);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v136 = cf[0];
        v137 = "AssetObjectID";
LABEL_463:
        xpc_dictionary_set_uint64(v133, v137, v136);
        goto LABEL_464;
      }

      if (v2 != 1231250281)
      {
        goto LABEL_460;
      }

      v48 = *(*(*(a1 + 40) + 8) + 24);
      v50 = *(a1 + 64);
      v49 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      if (v48 && (v51 = CFGetTypeID(v48), v51 == FigPlaybackItemGetTypeID()))
      {
        if (v50)
        {
          if (v49)
          {
            v52 = xpc_dictionary_get_int64(v50, "ChapterImageID");
            if (xpc_dictionary_get_BOOL(v50, "WantChapterImageFormatDesc"))
            {
              v53 = cf;
            }

            else
            {
              v53 = 0;
            }

            v54 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v54)
            {
              v55 = v54(v48, v52, __str, v53);
              if (!v55)
              {
                v32 = FigXPCMessageSetCFData();
                v56 = cf[0];
                if (v32 || !cf[0])
                {
LABEL_401:
                  if (v56)
                  {
                    CFRelease(v56);
                  }

                  goto LABEL_465;
                }

                v55 = FigXPCMessageSetFormatDescription();
              }

              v32 = v55;
            }

            else
            {
              v32 = -12782;
            }

LABEL_400:
            v56 = cf[0];
            goto LABEL_401;
          }

          __HandlePlayerServerMessage_block_invoke_cold_27(&v330);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_28(&v330);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_29(&v330);
      }

      v32 = v330;
      goto LABEL_400;
    }

    if (v2 == 778268793)
    {
      v157 = *(a1 + 64);
      v158 = *(a1 + 72);
      *&v330 = 0;
      *&valuePtr = 0;
      if (!v157)
      {
        __HandlePlayerServerMessage_block_invoke_cold_134(__str);
        goto LABEL_613;
      }

      if (!v158)
      {
        __HandlePlayerServerMessage_block_invoke_cold_133(__str);
        goto LABEL_613;
      }

      v106 = FigXPCMessageCopyCFString();
      if (!v106)
      {
        __HandlePlayerServerMessage_block_invoke_cold_132(__str);
        goto LABEL_613;
      }
    }

    else
    {
      if (v2 != 779314548)
      {
        goto LABEL_460;
      }

      v105 = *(a1 + 64);
      *&v330 = 0;
      *&valuePtr = 0;
      if (!v105)
      {
        __HandlePlayerServerMessage_block_invoke_cold_128(__str);
        goto LABEL_613;
      }

      v106 = FigXPCMessageCopyCFString();
      if (!v106)
      {
        __HandlePlayerServerMessage_block_invoke_cold_127(__str);
LABEL_613:
        v32 = *__str;
        goto LABEL_504;
      }
    }

    v32 = v106;
    goto LABEL_504;
  }

  if (v2 > 1349676907)
  {
    if (v2 <= 1349743205)
    {
      if (v2 <= 1349739370)
      {
        if (v2 != 1349676908)
        {
          if (v2 != 1349677940)
          {
            if (v2 == 1349739361)
            {
              v3 = *(*(a1 + 40) + 8);
              v4 = *(v3 + 24);
              if (v4 && (v5 = *(a1 + 64), v6 = CFGetTypeID(*(v3 + 24)), v6 == FigPlayerGetTypeID()))
              {
                if (v5)
                {
                  v7 = xpc_dictionary_get_BOOL(v5, "Active");
                  v8 = *(CMBaseObjectGetVTable() + 24);
                  if (v8)
                  {
                    v9 = *(v8 + 24);
                    if (v9)
                    {
                      CMTime = v9(v4, v7);
LABEL_501:
                      v32 = CMTime;
                      goto LABEL_506;
                    }
                  }

                  goto LABEL_391;
                }

                __HandlePlayerServerMessage_block_invoke_cold_89(__str);
              }

              else
              {
                __HandlePlayerServerMessage_block_invoke_cold_90(__str);
              }

LABEL_631:
              v32 = *__str;
              goto LABEL_506;
            }

            goto LABEL_460;
          }

          v229 = *(*(a1 + 40) + 8);
          v230 = *(v229 + 24);
          if (!v230 || (v231 = *(a1 + 48), v232 = *(a1 + 64), v233 = CFGetTypeID(*(v229 + 24)), v233 != FigPlayerGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_65(__str);
            goto LABEL_631;
          }

          if (!v232)
          {
            __HandlePlayerServerMessage_block_invoke_cold_64(__str);
            goto LABEL_631;
          }

          xpc_dictionary_get_int64(v232, "ExternalStartupTaskID");
          SInt64 = FigCFNumberCreateSInt64();
          FigSimpleMutexLock();
          Value = CFDictionaryGetValue(*(v231 + 80), SInt64);
          if (!Value)
          {
            __HandlePlayerServerMessage_block_invoke_cold_63((v231 + 72), __str);
            v32 = *__str;
            if (!SInt64)
            {
              goto LABEL_506;
            }

LABEL_473:
            v146 = SInt64;
            goto LABEL_505;
          }

          v235 = Value;
          CFRetain(Value);
          CFDictionaryRemoveValue(*(v231 + 80), SInt64);
          FigSimpleMutexUnlock();
          v236 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v236)
          {
            v32 = v236(v230, v235);
          }

          else
          {
            v32 = -12782;
          }

          v260 = v235;
          goto LABEL_471;
        }

        v261 = *(*(a1 + 40) + 8);
        v262 = *(v261 + 24);
        if (!v262 || (v263 = *(a1 + 64), v264 = CFGetTypeID(*(v261 + 24)), v264 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_98(__str);
          goto LABEL_631;
        }

        if (!v263)
        {
          __HandlePlayerServerMessage_block_invoke_cold_97(__str);
          goto LABEL_631;
        }

        v265 = xpc_dictionary_get_double(v263, "Rate");
        v266 = xpc_dictionary_get_int64(v263, "PrerollID");
        v267 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v267)
        {
          v268 = v265;
          CMTime = v267(v262, v266, v268);
          goto LABEL_501;
        }

LABEL_391:
        v32 = -12782;
        goto LABEL_506;
      }

      if (v2 != 1349739371)
      {
        if (v2 != 1349739381)
        {
          if (v2 != 1349742707)
          {
            goto LABEL_460;
          }

          v75 = *(*(*(a1 + 40) + 8) + 24);
          v76 = *(a1 + 64);
          v77 = *(a1 + 72);
          LOBYTE(v322[0]) = 0;
          *__str = 0;
          cf[0] = 0;
          *&v330 = 0;
          *&valuePtr = 0;
          v326[0] = 0;
          if (!v75 || (v78 = CFGetTypeID(v75), v78 != FigPlayerGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_82(v324);
            goto LABEL_642;
          }

          if (!v76)
          {
            __HandlePlayerServerMessage_block_invoke_cold_81(v324);
            goto LABEL_642;
          }

          if (!v77)
          {
            __HandlePlayerServerMessage_block_invoke_cold_80(v324);
            goto LABEL_642;
          }

          v79 = FigXPCMessageCopyCFDictionary();
          if (!v79)
          {
            __HandlePlayerServerMessage_block_invoke_cold_79(v324);
LABEL_642:
            v32 = v324[0];
            goto LABEL_426;
          }

          goto LABEL_323;
        }

        v244 = *(a1 + 48);
        v245 = *(*(*(a1 + 40) + 8) + 24);
        v246 = *(a1 + 56);
        v247 = *(a1 + 64);
        *__str = 0;
        cf[0] = 0;
        if (v245 && (v248 = CFGetTypeID(v245), v248 == FigPlayerGetTypeID()))
        {
          if (v247)
          {
            v74 = FigXPCMessageCopyCFURL();
            if (!v74)
            {
              v74 = FigXPCMessageCopySandboxRegistration();
              if (!v74)
              {
                v74 = serverXPCPlayer_handlePlayerSetProperty(v245, v244, v246, @"NetworkCacheURL", *__str);
              }
            }

            goto LABEL_452;
          }

          __HandlePlayerServerMessage_block_invoke_cold_66(&v330);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_67(&v330);
        }

LABEL_641:
        v32 = v330;
LABEL_453:
        v292 = *__str;
        if (!*__str)
        {
          goto LABEL_455;
        }

        goto LABEL_454;
      }

      v275 = *(*(*(a1 + 40) + 8) + 24);
      v276 = *(a1 + 64);
      *&v330 = 0;
      *&valuePtr = 0;
      if (v275 && (v277 = CFGetTypeID(v275), v277 == FigPlayerGetTypeID()))
      {
        if (v276)
        {
          v278 = xpc_dictionary_get_int64(v276, "MasterClockType");
          if (v278 == 3)
          {
            v297 = FigXPCMessageCopyCFObject();
            if (v297)
            {
              goto LABEL_445;
            }

            *__str = 0u;
            v333 = 0u;
            xpc_connection_get_audit_token();
            v298 = *MEMORY[0x1E695E480];
            *cf = 0u;
            v311 = 0u;
            v297 = FigAudioSessionClockCreateFromClockConfigurationAndAuditToken(v298, v330, cf, &valuePtr);
            if (v297)
            {
              goto LABEL_445;
            }

            goto LABEL_443;
          }

          if (v278 != 2)
          {
            if (v278 == 1)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              if (HostTimeClock)
              {
                HostTimeClock = CFRetain(HostTimeClock);
              }

              *&valuePtr = HostTimeClock;
            }

            else
            {
              *&valuePtr = 0;
            }

LABEL_443:
            v299 = valuePtr;
            FigPlayerGetFigBaseObject();
            v301 = v300;
            v302 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v302)
            {
              v297 = v302(v301, @"MasterClock", v299);
LABEL_445:
              v32 = v297;
              goto LABEL_447;
            }

            v32 = -12782;
LABEL_447:
            v296 = valuePtr;
            if (!valuePtr)
            {
LABEL_434:
              v146 = v330;
              if (!v330)
              {
                goto LABEL_506;
              }

              goto LABEL_505;
            }

LABEL_433:
            CFRelease(v296);
            goto LABEL_434;
          }

          if (xpc_dictionary_get_uint64(v276, "MasterClockObjectID"))
          {
            v297 = FigXPCAudioDeviceClockServerCopyClockForID();
            if (v297)
            {
              goto LABEL_445;
            }

            goto LABEL_443;
          }

          __HandlePlayerServerMessage_block_invoke_cold_86(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_87(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_88(__str);
      }

      v32 = *__str;
      goto LABEL_447;
    }

    if (v2 <= 1349743219)
    {
      if (v2 == 1349743206)
      {
        v269 = *(*(*(a1 + 40) + 8) + 24);
        v270 = *(a1 + 64);
        *cf = *MEMORY[0x1E6960C70];
        *&v311 = *(MEMORY[0x1E6960C70] + 16);
        if (!v269 || (v271 = CFGetTypeID(v269), v271 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_104(__str);
          goto LABEL_631;
        }

        if (!v270)
        {
          __HandlePlayerServerMessage_block_invoke_cold_103(__str);
          goto LABEL_631;
        }

        v272 = xpc_dictionary_get_double(v270, "Rate");
        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v330 = *cf;
        v331 = v311;
        v273 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v273)
        {
          v274 = v272;
          *__str = v330;
          *&v333 = v331;
          CMTime = v273(v269, __str, v274);
          goto LABEL_501;
        }

        goto LABEL_391;
      }

      if (v2 == 1349743211)
      {
        v237 = *(*(*(a1 + 40) + 8) + 24);
        v238 = *(a1 + 64);
        v330 = *MEMORY[0x1E6960C70];
        v331 = *(MEMORY[0x1E6960C70] + 16);
        valuePtr = v330;
        v329 = v331;
        if (!v237 || (v239 = CFGetTypeID(v237), v239 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_100(__str);
          goto LABEL_631;
        }

        if (!v238)
        {
          __HandlePlayerServerMessage_block_invoke_cold_99(__str);
          goto LABEL_631;
        }

        v240 = xpc_dictionary_get_double(v238, "Rate");
        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v241 = xpc_dictionary_get_uint64(v238, "Flags");
        *v326 = v330;
        v327 = v331;
        *v324 = valuePtr;
        v325 = v329;
        v242 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v242)
        {
          v243 = v240;
          *__str = *v326;
          *&v333 = v327;
          *cf = *v324;
          *&v311 = v325;
          CMTime = v242(v237, __str, cf, v241, v243);
          goto LABEL_501;
        }

        goto LABEL_391;
      }

      if (v2 != 1349743215)
      {
        goto LABEL_460;
      }

      v37 = *(*(*(a1 + 40) + 8) + 24);
      v38 = *(a1 + 64);
      *__str = 0;
      if (v37 && (v39 = CFGetTypeID(v37), v39 == FigPlayerGetTypeID()))
      {
        if (v38)
        {
          v40 = xpc_dictionary_get_double(v38, "Rate");
          IDByAssociatingWithClientConnection = FigXPCMessageCopyCFDictionary();
          if (!IDByAssociatingWithClientConnection)
          {
            v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v41)
            {
              v42 = v40;
              IDByAssociatingWithClientConnection = v41(v37, *__str, v42);
              goto LABEL_417;
            }

            goto LABEL_418;
          }

LABEL_417:
          v32 = IDByAssociatingWithClientConnection;
          goto LABEL_465;
        }

        __HandlePlayerServerMessage_block_invoke_cold_101(cf);
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_102(cf);
      }

      goto LABEL_603;
    }

    if (v2 == 1349743220)
    {
      v280 = *(*(a1 + 40) + 8);
      v281 = *(v280 + 24);
      if (!v281 || (v282 = *(a1 + 64), v283 = CFGetTypeID(*(v280 + 24)), v283 != FigPlayerGetTypeID()))
      {
        __HandlePlayerServerMessage_block_invoke_cold_106(__str);
        goto LABEL_631;
      }

      if (!v282)
      {
        __HandlePlayerServerMessage_block_invoke_cold_105(__str);
        goto LABEL_631;
      }

      v284 = xpc_dictionary_get_double(v282, "Rate");
      v285 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v285)
      {
        v286 = v284;
        CMTime = v285(v281, v286);
        goto LABEL_501;
      }

      goto LABEL_391;
    }

    if (v2 != 1349744225)
    {
      if (v2 != 1668429889)
      {
        goto LABEL_460;
      }

      v80 = *(a1 + 48);
      v81 = *(*(*(a1 + 40) + 8) + 24);
      v83 = *(a1 + 56);
      v82 = *(a1 + 64);
      v84 = *(a1 + 72);
      cf[0] = 0;
      *&v330 = 0;
      *&valuePtr = 0;
      v326[0] = 0;
      if (v81 && (v85 = CFGetTypeID(v81), v85 == FigPlayerGetTypeID()))
      {
        if (v82)
        {
          if (v84)
          {
            v86 = xpc_dictionary_get_uint64(v82, "AssetObjectID");
            v87 = xpc_dictionary_get_uint64(v82, "ItemCreateFlags");
            v88 = FigXPCMessageCopyCFDictionary();
            if (!v88)
            {
              v88 = FigXPCAssetServerCopyAssetForID(v86, &v330);
              if (!v88)
              {
                v89 = v330;
                v90 = *(*(CMBaseObjectGetVTable() + 16) + 96);
                if (!v90)
                {
                  v32 = -12782;
                  goto LABEL_482;
                }

                v88 = v90(v81, v89, v87, valuePtr, cf);
                if (!v88)
                {
                  v91 = cf[0];
                  v92 = v326[0];
                  v335 = 0u;
                  v336 = 0u;
                  v333 = 0u;
                  v334 = 0u;
                  *__str = 0u;
                  if (qword_1ED4CAF68 != -1)
                  {
                    HandlePlayerServerNoReplyMessage_cold_1();
                  }

                  Instance = _CFRuntimeCreateInstance();
                  if (Instance)
                  {
                    v94 = Instance;
                    *(Instance + 104) = 0;
                    v95 = (Instance + 104);
                    if (v92)
                    {
                      CFStringGetCString(v92, v95, 10, 0x600u);
                    }

                    v96 = v80[4];
                    *(v94 + 96) = v96;
                    dispatch_retain(v96);
                    *(v94 + 24) = v80[2];
                    v97 = v80[5];
                    *(v94 + 72) = v97;
                    dispatch_retain(v97);
                    if (v91)
                    {
                      v98 = CFRetain(v91);
                    }

                    else
                    {
                      v98 = 0;
                    }

                    *(v94 + 80) = v98;
                    snprintf(__str, 0x50uLL, "com.apple.coremedia.playerserver.timebasesync.%s", v95);
                    v305 = FigDispatchQueueCreateWithPriority();
                    *(v94 + 64) = v305;
                    if (v305)
                    {
                      v306 = FigSimpleMutexCreate();
                      *(v94 + 56) = v306;
                      if (v306)
                      {
                        goto LABEL_480;
                      }

                      v307 = 1124;
                    }

                    else
                    {
                      v307 = 1122;
                    }

                    __HandlePlayerServerMessage_block_invoke_cold_121(v307, v94, v324);
                  }

                  else
                  {
                    __HandlePlayerServerMessage_block_invoke_cold_122(v324);
                  }

                  v32 = v324[0];
                  if (!LODWORD(v324[0]))
                  {
                    v94 = 0;
LABEL_480:
                    *(v94 + 32) = xpc_connection_get_pid(v83);
                    *(v94 + 88) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    v32 = FigXPCServerAssociateObjectWithConnection();
                    if (v32)
                    {
                      CFRelease(v94);
                    }

                    else
                    {
                      xpc_dictionary_set_uint64(v84, "ItemObjectID", *(v94 + 16));
                      serverXPCItem_rebuildTimebaseSync(cf[0], v94);
                    }
                  }

LABEL_482:
                  if (v330)
                  {
                    CFRelease(v330);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  goto LABEL_504;
                }
              }
            }

            v32 = v88;
            goto LABEL_482;
          }

          __HandlePlayerServerMessage_block_invoke_cold_123(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_124(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_125(__str);
      }

      v32 = *__str;
      goto LABEL_482;
    }

    v249 = *(a1 + 48);
    v250 = *(*(*(a1 + 40) + 8) + 24);
    v252 = *(a1 + 56);
    v251 = *(a1 + 64);
    *__str = 0;
    if (v250 && (v253 = CFGetTypeID(v250), v253 == FigPlayerGetTypeID()))
    {
      if (v251)
      {
        array = xpc_dictionary_get_array(v251, "VideoTargetIDArray");
        count = xpc_array_get_count(array);
        v256 = CFGetAllocator(v250);
        SInt64 = CFArrayCreateMutable(v256, count, MEMORY[0x1E695E9C0]);
        if (SInt64)
        {
          if (count)
          {
            v257 = 0;
            while (1)
            {
              v258 = xpc_array_get_uint64(array, v257);
              v259 = FigXPCVideoTargetServerCopyVideoTargetForID(v258, __str);
              if (v259)
              {
                break;
              }

              CFArrayAppendValue(SInt64, *__str);
              if (*__str)
              {
                CFRelease(*__str);
                *__str = 0;
              }

              if (count == ++v257)
              {
                goto LABEL_362;
              }
            }
          }

          else
          {
LABEL_362:
            v259 = serverXPCPlayer_handlePlayerSetProperty(v250, v249, v252, @"VideoTargetArray", SInt64);
          }

          v32 = v259;
LABEL_364:
          v260 = *__str;
          if (!*__str)
          {
LABEL_472:
            if (!SInt64)
            {
              goto LABEL_506;
            }

            goto LABEL_473;
          }

LABEL_471:
          CFRelease(v260);
          goto LABEL_472;
        }

        __HandlePlayerServerMessage_block_invoke_cold_68(cf);
LABEL_635:
        v32 = cf[0];
        goto LABEL_364;
      }

      __HandlePlayerServerMessage_block_invoke_cold_69(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_70(cf);
    }

    SInt64 = 0;
    goto LABEL_635;
  }

  if (v2 > 1348694114)
  {
    if (v2 <= 1349349936)
    {
      if (v2 != 1348694115)
      {
        if (v2 != 1348694121)
        {
          if (v2 != 1349087091)
          {
            goto LABEL_460;
          }

          v33 = *(*(*(a1 + 40) + 8) + 24);
          SInt64 = *(a1 + 64);
          v35 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (v33 && (v36 = CFGetTypeID(v33), v36 == FigPlayerGetTypeID()))
          {
            if (!SInt64)
            {
              __HandlePlayerServerMessage_block_invoke_cold_72(&v330);
LABEL_621:
              v32 = v330;
              goto LABEL_468;
            }

            if (v35)
            {
              FigXPCMessageCopyCFNumber();
              SInt64 = 0;
              v287 = *(*(CMBaseObjectGetVTable() + 16) + 152);
              if (v287)
              {
                v32 = v287(v33, 0, __str);
                v288 = *__str;
                if (v32)
                {
                  v289 = 1;
                }

                else
                {
                  v289 = *__str == 0;
                }

                if (v289)
                {
                  if (!*__str)
                  {
                    goto LABEL_470;
                  }

                  goto LABEL_469;
                }

                IOSurface = CVPixelBufferGetIOSurface(*__str);
                if (IOSurface)
                {
                  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
                  xpc_dictionary_set_value(v35, "CurrentlyDisplayedIOSurface", XPCObject);
                }

                v32 = 0;
              }

              else
              {
                v32 = -12782;
              }

LABEL_468:
              v288 = *__str;
              if (!*__str)
              {
LABEL_470:
                FigXPCRelease();
                goto LABEL_472;
              }

LABEL_469:
              CFRelease(v288);
              goto LABEL_470;
            }

            __HandlePlayerServerMessage_block_invoke_cold_71(&v330);
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_73(&v330);
          }

          SInt64 = 0;
          goto LABEL_621;
        }

        v177 = *(*(*(a1 + 40) + 8) + 24);
        v178 = *(a1 + 64);
        v179 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        *&v330 = 0;
        if (v177 && (v180 = CFGetTypeID(v177), v180 == FigPlayerGetTypeID()))
        {
          if (v178)
          {
            if (v179)
            {
              if (!xpc_dictionary_get_uint64(v178, "AfterItemObjectID"))
              {
                v183 = 0;
LABEL_420:
                v294 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (!v294)
                {
                  v32 = -12782;
                  goto LABEL_432;
                }

                UniqueObjectIDForObjectAssociatedWithConnection = v294(v177, v183, cf);
                if (!UniqueObjectIDForObjectAssociatedWithConnection)
                {
                  if (!cf[0])
                  {
                    v295 = 0;
                    goto LABEL_476;
                  }

                  UniqueObjectIDForObjectAssociatedWithConnection = FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection();
                  if (!UniqueObjectIDForObjectAssociatedWithConnection)
                  {
                    v295 = *__str;
LABEL_476:
                    xpc_dictionary_set_uint64(v179, "ItemObjectID", v295);
                    v32 = 0;
                    goto LABEL_432;
                  }
                }

LABEL_643:
                v32 = UniqueObjectIDForObjectAssociatedWithConnection;
                goto LABEL_432;
              }

              UniqueObjectIDForObjectAssociatedWithConnection = FigXPCServerLookupAndRetainAssociatedObject();
              if (UniqueObjectIDForObjectAssociatedWithConnection)
              {
                goto LABEL_643;
              }

              v182 = CFGetTypeID(v330);
              if (v182 == FigPlaybackItemGetTypeID())
              {
                v183 = v330;
                goto LABEL_420;
              }

              __HandlePlayerServerMessage_block_invoke_cold_107(&valuePtr);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_108(&valuePtr);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_109(&valuePtr);
          }
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_110(&valuePtr);
        }

        v32 = valuePtr;
        goto LABEL_432;
      }

      v193 = *(*(*(a1 + 40) + 8) + 24);
      v194 = *(a1 + 64);
      v195 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      if (v193 && (v196 = CFGetTypeID(v193), v196 == FigPlayerGetTypeID()))
      {
        if (v194)
        {
          if (v195)
          {
            FigPlayerGetFigBaseObject();
            v198 = v197;
            v199 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v199)
            {
              v32 = -12782;
              goto LABEL_455;
            }

            v200 = v199(v198, @"MasterClock", *MEMORY[0x1E695E480], cf);
            if (!v200)
            {
              v201 = cf[0];
              if (cf[0])
              {
                if (v201 != CMClockGetHostTimeClock())
                {
                  v200 = FigXPCAudioDeviceClockServerAssociateCopiedNeighborClock();
                  if (!v200)
                  {
                    if (*__str)
                    {
                      xpc_dictionary_set_uint64(v195, "MasterClockObjectID", *__str);
                    }

                    v202 = 2;
                    goto LABEL_487;
                  }

                  goto LABEL_655;
                }

                v202 = 1;
              }

              else
              {
                v202 = 0;
              }

LABEL_487:
              xpc_dictionary_set_int64(v195, "MasterClockType", v202);
              v32 = 0;
              goto LABEL_455;
            }

LABEL_655:
            v32 = v200;
            goto LABEL_455;
          }

          __HandlePlayerServerMessage_block_invoke_cold_83(&v330);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_84(&v330);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_85(&v330);
      }

      v32 = v330;
      goto LABEL_455;
    }

    if (v2 == 1349349937)
    {
      v203 = *(*(*(a1 + 40) + 8) + 24);
      if (v203 && (v205 = *(a1 + 64), v204 = *(a1 + 72), v206 = CFGetTypeID(v203), v206 == FigPlayerGetTypeID()))
      {
        if (v205)
        {
          if (v204)
          {
            CMTime = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1();
            goto LABEL_501;
          }

          __HandlePlayerServerMessage_block_invoke_cold_76(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_77(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_78(__str);
      }

      goto LABEL_631;
    }

    if (v2 == 1349349938)
    {
      v184 = *(*(*(a1 + 40) + 8) + 24);
      if (v184 && (v185 = *(a1 + 64), v186 = CFGetTypeID(v184), v186 == FigPlayerGetTypeID()))
      {
        if (v185)
        {
          CMTime = FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2();
          goto LABEL_501;
        }

        __HandlePlayerServerMessage_block_invoke_cold_74(__str);
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_75(__str);
      }

      goto LABEL_631;
    }

    if (v2 != 1349674349)
    {
      goto LABEL_460;
    }

    v68 = *(*(*(a1 + 40) + 8) + 24);
    v69 = *(a1 + 64);
    *__str = 0;
    if (v68 && (v70 = CFGetTypeID(v68), v70 == FigPlayerGetTypeID()))
    {
      if (v69)
      {
        if (xpc_dictionary_get_uint64(v69, "ItemObjectID"))
        {
          IDByAssociatingWithClientConnection = FigXPCServerLookupAndRetainAssociatedObject();
          if (IDByAssociatingWithClientConnection)
          {
            goto LABEL_417;
          }

          __HandlePlayerServerMessage_block_invoke_cold_111(cf);
          goto LABEL_603;
        }

        v293 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v293)
        {
          IDByAssociatingWithClientConnection = v293(v68, 0);
          goto LABEL_417;
        }

LABEL_418:
        v32 = -12782;
        goto LABEL_465;
      }

      __HandlePlayerServerMessage_block_invoke_cold_112(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_113(cf);
    }

LABEL_603:
    v32 = cf[0];
    goto LABEL_465;
  }

  if (v2 <= 1348559971)
  {
    if (v2 == 1346529646)
    {
      v187 = *(*(a1 + 40) + 8);
      v188 = *(v187 + 24);
      if (!v188 || (v189 = *(a1 + 64), v190 = CFGetTypeID(*(v187 + 24)), v190 != FigPlayerGetTypeID()))
      {
        __HandlePlayerServerMessage_block_invoke_cold_94(__str);
        goto LABEL_631;
      }

      if (!v189)
      {
        __HandlePlayerServerMessage_block_invoke_cold_93(__str);
        goto LABEL_631;
      }

      v191 = *(CMBaseObjectGetVTable() + 24);
      if (v191)
      {
        v192 = *(v191 + 8);
        if (v192)
        {
          CMTime = v192(v188);
          goto LABEL_501;
        }
      }

      goto LABEL_391;
    }

    if (v2 != 1346726254)
    {
      goto LABEL_460;
    }

    v107 = *(*(*(a1 + 40) + 8) + 24);
    v108 = *(a1 + 64);
    *__str = 0;
    if (v107 && (v109 = CFGetTypeID(v107), v109 == FigPlayerGetTypeID()))
    {
      if (v108)
      {
        IDByAssociatingWithClientConnection = FigXPCMessageCopyCFString();
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v110 = *(CMBaseObjectGetVTable() + 24);
        if (v110)
        {
          v111 = *(v110 + 16);
          if (v111)
          {
            IDByAssociatingWithClientConnection = v111(v107, *__str);
            goto LABEL_417;
          }
        }

        goto LABEL_418;
      }

      __HandlePlayerServerMessage_block_invoke_cold_91(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_92(cf);
    }

    goto LABEL_603;
  }

  if (v2 != 1348559972)
  {
    if (v2 != 1348563828)
    {
      if (v2 == 1348630894)
      {
        v57 = *(*(a1 + 40) + 8);
        v58 = *(v57 + 24);
        if (v58 && (v59 = *(a1 + 64), v60 = CFGetTypeID(*(v57 + 24)), v60 == FigPlayerGetTypeID()))
        {
          if (v59)
          {
            v61 = xpc_dictionary_get_int64(v59, "StepCount");
            v62 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v62)
            {
              CMTime = v62(v58, v61);
              goto LABEL_501;
            }

            goto LABEL_391;
          }

          __HandlePlayerServerMessage_block_invoke_cold_95(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_96(__str);
        }

        goto LABEL_631;
      }

LABEL_460:
      v32 = -16158;
      goto LABEL_506;
    }

    goto LABEL_391;
  }

  v173 = *(*(*(a1 + 40) + 8) + 24);
  v174 = *(a1 + 64);
  *&v330 = 0;
  *&valuePtr = 0;
  v326[0] = 0;
  v324[0] = 0;
  v322[0] = 0;
  v339 = 0;
  v337 = 0u;
  v338 = 0u;
  v335 = 0u;
  v336 = 0u;
  v333 = 0u;
  v334 = 0u;
  *__str = 0u;
  if (!v173 || (v175 = CFGetTypeID(v173), v175 != FigPlayerGetTypeID()))
  {
    __HandlePlayerServerMessage_block_invoke_cold_119(cf);
    goto LABEL_646;
  }

  if (!v174)
  {
    __HandlePlayerServerMessage_block_invoke_cold_118(cf);
    goto LABEL_646;
  }

  xpc_dictionary_get_uint64(v174, "ItemObjectID");
  xpc_dictionary_get_uint64(v174, "AfterItemObjectID");
  v176 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
  if (!v176)
  {
    __HandlePlayerServerMessage_block_invoke_cold_117(cf);
LABEL_646:
    v32 = cf[0];
    goto LABEL_488;
  }

  v32 = v176;
LABEL_488:
  if (v330)
  {
    CFRelease(v330);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v326[0])
  {
    CFRelease(v326[0]);
  }

  if (v324[0])
  {
    CFRelease(v324[0]);
  }

  if (v322[0])
  {
    CFRelease(v322[0]);
  }

LABEL_506:
  *(*(*(a1 + 32) + 8) + 24) = v32;
}