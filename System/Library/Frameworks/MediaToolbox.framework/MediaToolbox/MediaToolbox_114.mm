const void *FigUserDataCopyKeysInfoAsCFNumber(CFTypeRef cf1, CFTypeRef cf, int a3, void *a4, __CFArray **a5, _OWORD *a6)
{
  v23 = 0;
  theArray = 0;
  v21 = 0uLL;
  if (cf && (v12 = CFGetTypeID(cf), v12 == CFNumberGetTypeID()))
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v14 = UserDataCopyKeysInfoCommon(a3, cf1, cf, &v23, &theArray, &v21);
    if (v14)
    {
      v13 = v14;
      goto LABEL_26;
    }

    if (v23)
    {
      v13 = FigUserDataCopyKeyAsCFNumber(v23);
    }

    else
    {
      v13 = 0;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v19 = FigUserDataCopyKeyAsCFNumber(ValueAtIndex);
          CFArrayAppendValue(Mutable, v19);
          if (v19)
          {
            CFRelease(v19);
          }
        }
      }

      goto LABEL_16;
    }
  }

  Mutable = 0;
LABEL_16:
  if (a4)
  {
    *a4 = v13;
    v13 = 0;
  }

  if (a5)
  {
    *a5 = Mutable;
    Mutable = 0;
  }

  if (a6)
  {
    *a6 = v21;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

void FigMetadataReaderCreateForUserDataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForUserDataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForUserDataArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForUserDataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigUserDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void UserDataCopyValueCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyValueCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyValueCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyValueCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyValueCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyKeysInfoCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyKeysInfoCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyKeysInfoCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void UserDataCopyKeysInfoCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromLocation_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemTextFromData_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromRecordingYear_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromRecordingYear_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromUserRating_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromUserRating_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromThumbnailData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromThumbnailData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromThumbnailData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemFromThumbnailData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double ArrayUserDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayUserDataHasKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayUserDataHasKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayUserDataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayUserDataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void ArrayUserDataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayUserDataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayUserDataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayUserDataCopyKeyAtIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double ArrayUserDataGetItemCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void ArrayUserDataCopyItemWithKeyAndIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayUserDataCopyItemWithKeyAndIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FAIGCommon_createRotatedCVImageBuffer(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, const __CFAllocator *a7, CFTypeRef *a8)
{
  v27 = 0;
  if (!a1 || !a8 || (v13 = a3, v15 = CFGetTypeID(a1), v15 != CVPixelBufferGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v17 = v16;
    goto LABEL_11;
  }

  if (v13 != 270 && v13 != 90 && v13 != 180)
  {
    if (!v13 && a5 | a4)
    {
      pixelFormatType = CVPixelBufferGetPixelFormatType(a1);
LABEL_20:
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      goto LABEL_22;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v17 = 0;
LABEL_11:
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_12;
  }

  pixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (v13 == 180)
  {
    goto LABEL_20;
  }

  Width = CVPixelBufferGetHeight(a1);
  Height = CVPixelBufferGetWidth(a1);
LABEL_22:
  v23 = Height;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6966208]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E69660B8]);
  if (a6)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v17 = 0;
      goto LABEL_12;
    }

    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660D8], Mutable);
  }

  v24 = CVPixelBufferCreate(a7, Width, v23, pixelFormatType, MutableCopy, &v27);
  if (v24 || (v24 = VTImageRotationSessionCreate(), v24) || (v25 = MEMORY[0x1E695E4D0], a5) && (v24 = VTSessionSetProperty(0, *MEMORY[0x1E6983D00], *MEMORY[0x1E695E4D0]), v24) || a4 && (v24 = VTSessionSetProperty(0, *MEMORY[0x1E6983D08], *v25), v24))
  {
    v17 = v24;
  }

  else
  {
    v17 = MEMORY[0x19A8D4E10](0, a1, v27);
    if (!v17)
    {
      *a8 = v27;
      v27 = 0;
    }
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v17;
}

void FAIGCommon_createImageRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForGenericMetadataArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMetadataReaderCreateForGenericMetadataArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMetadataReaderCreateForGenericMetadataArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMetadataReaderCreateForGenericMetadataArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyValue_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void GenericMetadataArrayCopyItemWithKeyAndIndex_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t playeroverlap_setTheSameDispatchQueueOnSubPlayers(uint64_t a1, uint64_t a2)
{
  result = playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(a1, a2, 0x1F0B29F18);
  if (!result)
  {

    return playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(a1, a2, 0x1F0B29F38);
  }

  return result;
}

uint64_t playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  FigPlayerGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(v5, a3, *MEMORY[0x1E695E480], &cf);
    if (v7)
    {
LABEL_5:
      v12 = v7;
      goto LABEL_7;
    }

    v8 = cf;
    FigPlayerGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v7 = v11(v10, a3, v8);
      goto LABEL_5;
    }
  }

  v12 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(void *a1)
{
  v305 = *MEMORY[0x1E69E9840];
  v6 = playeroverlap_itemAtIndex(a1, 0);
  if (!v6)
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(os_log_and_send_and_compose_flags_and_os_log_type, v21, v22, v23, v24, v25, v26, v27, v267, v274, v281, v289, timebase[0], timebase[1], v297, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v18)
      {
        v29 = v28;
      }

      else
      {
        v29 = v2;
      }

      if (!v29)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
        goto LABEL_58;
      }

      goto LABEL_24;
    }

    return 0;
  }

  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(v9, v10, v11, v12, v13, v14, v15, v16, v267, v274, v281, v289, timebase[0], timebase[1], v297, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = v2;
      }

      if (!v19)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
LABEL_58:
        LODWORD(time2.value) = 136315650;
        OUTLINED_FUNCTION_2_76();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl(v104, v105, v106, v107, v108, v109, v1, v110);
LABEL_59:
        OUTLINED_FUNCTION_7();
LABEL_60:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }

LABEL_24:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_58;
    }

    return 0;
  }

  if (playeroverlap_playQueueCount(a1) <= 1)
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(v30, v31, v32, v33, v34, v35, v36, v37, v267, v274, v281, v289, timebase[0], timebase[1], v297, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v18)
      {
        v39 = v38;
      }

      else
      {
        v39 = v2;
      }

      if (!v39)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
        goto LABEL_58;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if (!itemoverlap_hasAdvanceTime(v7))
  {
    if (!dword_1EAF17080)
    {
      return 0;
    }

    v57 = OUTLINED_FUNCTION_48_8();
    v65 = OUTLINED_FUNCTION_45_9(v57, v58, v59, v60, v61, v62, v63, v64, v267, v274, v281, v289, 0, timebase[1], v297, type, 0);
    OUTLINED_FUNCTION_90_3(v65, v66, v67, v68, v69, v70, v71, v72, v269, v276, v283, v291, timebase[0], timebase[1], v297, type, BYTE4(type));
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (a1)
      {
        v73 = (CMBaseObjectGetDerivedStorage() + 129);
      }

      else
      {
        v73 = "";
      }

      CMBaseObjectGetDerivedStorage();
      LODWORD(time2.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      OUTLINED_FUNCTION_61_7();
      v300 = v73;
      *v301 = v135;
      *&v301[2] = v7;
      *&v301[10] = v136;
      *&v301[12] = v137;
      OUTLINED_FUNCTION_100();
      v134 = "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] item <%p|%{public}s> does not have overlap property set.";
      goto LABEL_75;
    }

LABEL_76:
    OUTLINED_FUNCTION_7();
    goto LABEL_60;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (!dword_1EAF17080)
    {
      return 0;
    }

    v40 = OUTLINED_FUNCTION_48_8();
    v48 = OUTLINED_FUNCTION_45_9(v40, v41, v42, v43, v44, v45, v46, v47, v267, v274, v281, v289, 0, timebase[1], v297, type, 0);
    OUTLINED_FUNCTION_90_3(v48, v49, v50, v51, v52, v53, v54, v55, v268, v275, v282, v290, timebase[0], timebase[1], v297, type, BYTE4(type));
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (a1)
      {
        v56 = (CMBaseObjectGetDerivedStorage() + 129);
      }

      else
      {
        v56 = "";
      }

      CMBaseObjectGetDerivedStorage();
      LODWORD(time2.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      OUTLINED_FUNCTION_61_7();
      v300 = v56;
      *v301 = v126;
      *&v301[2] = v7;
      *&v301[10] = v127;
      *&v301[12] = v128;
      OUTLINED_FUNCTION_100();
      v134 = "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] item <%p|%{public}s> in outro, don't schedule overlap yet.";
LABEL_75:
      OUTLINED_FUNCTION_12_17(v129, v130, &time1, v131, &dword_1962D5000, v132, v133, v134);
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  LODWORD(timebase[0]) = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  v75 = *(v74 + 8);
  v76 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v76)
  {
    Duration = 4294954514;
    goto LABEL_64;
  }

  v77 = v76(v75, timebase);
  if (v77)
  {
    Duration = v77;
LABEL_64:
    if (!Duration)
    {
      return Duration;
    }

    goto LABEL_65;
  }

  if (*timebase <= 0.0)
  {
    if (dword_1EAF17080)
    {
      HIDWORD(type) = 0;
      BYTE3(type) = 0;
      OUTLINED_FUNCTION_48_8();
      v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v152, v153, v154, v155, v156, v157, v158, v159, v267, v274, v281, v289, timebase[0], timebase[1], v297, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_40();
      if (!v2)
      {
        goto LABEL_113;
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(time2.value) = 136315650;
      OUTLINED_FUNCTION_2_76();
      v261 = "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] is paused, no need to schedule an overlap yet.";
LABEL_112:
      OUTLINED_FUNCTION_12_17(v256, v257, &time1, v258, &dword_1962D5000, v259, v260, v261);
LABEL_113:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v262, v263, v264, v265, v266);
    }

LABEL_114:
    Duration = 0;
    goto LABEL_64;
  }

  if (!playeroverlap_isActionAtEnd(a1))
  {
    return 0;
  }

  v78 = CMBaseObjectGetDerivedStorage();
  v79 = *(MEMORY[0x1E6960C70] + 16);
  v297 = v79;
  *v284 = *MEMORY[0x1E6960C70];
  *timebase = *MEMORY[0x1E6960C70];
  CurrentTime_0 = FigPlaybackItemGetCurrentTime_0(v78->epoch, timebase);
  Duration = CurrentTime_0;
  if (CurrentTime_0)
  {
    HIDWORD(type) = 0;
    BYTE3(type) = 0;
    v160 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v161 = HIDWORD(type);
    OUTLINED_FUNCTION_73_4(v160, v162, v163, v164, v165, v166, v167, v168, v267, v274, v284[0], v284[1], timebase[0], timebase[1], v297, type, SBYTE2(type), BYTE3(type));
    OUTLINED_FUNCTION_189();
    if (v18)
    {
      v170 = v169;
    }

    else
    {
      v170 = v161;
    }

    if (v170)
    {
      LODWORD(time2.value) = 136315138;
      *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v171, v172, v173, v174, v175, v176, v4, v177);
    }

    OUTLINED_FUNCTION_16();
    goto LABEL_116;
  }

  if ((BYTE4(timebase[1]) & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_47_7(CurrentTime_0, v81, v82, v83, v84, v85, v86, v87, v267, v274, v284[0], v284[1], *timebase);
    time2 = v78[1];
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      if (!dword_1EAF17080)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_58_2();
      v221 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v221, v222, v223, v224, v225, v226, v227, v228, v267, v274, v284[0], v284[1], timebase[0], timebase[1], v297, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_46();
      if (v79)
      {
        v229 = CMBaseObjectGetDerivedStorage();
        v230 = v229 + 156;
        OUTLINED_FUNCTION_47_7(v229, v231, v232, v233, v234, v235, v236, v237, v272, v279, v287, v294, *timebase);
        Seconds = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_70_5(v239, v240, v241, v242, v243, v244, v245, v246, v273, v280, v288, v295, timebase[0], timebase[1], v297, type, time2.value, *&time2.timescale, time2.epoch, v300, *v301, *&v301[8], *&v301[16], *&v301[24], v302, v303, *&time1.value, time1.epoch);
        LODWORD(time2.value) = 136316162;
        OUTLINED_FUNCTION_37_6();
        *(&time2.flags + 2) = v7;
        HIWORD(time2.epoch) = 2082;
        v300 = v230;
        *v301 = v247;
        *&v301[2] = Seconds;
        *&v301[10] = v247;
        *&v301[12] = v248;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v249, v250, v251, v252, v253, v254, v4, v255);
      }

      goto LABEL_115;
    }
  }

  *timebase = *v284;
  v297 = v79;
  Duration = FigPlaybackItemGetDuration(v7, timebase);
  if (Duration)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_64;
  }

  time1 = v78[1];
  *&time2.value = *timebase;
  time2.epoch = v297;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_58_2();
    v178 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_73_4(v178, v179, v180, v181, v182, v183, v184, v185, v267, v274, v284[0], v284[1], timebase[0], timebase[1], v297, type, SBYTE2(type), BYTE3(type));
    OUTLINED_FUNCTION_46();
    if (v79)
    {
      v186 = CMBaseObjectGetDerivedStorage();
      v187 = v186 + 156;
      v195 = OUTLINED_FUNCTION_70_5(v186, v188, v189, v190, v191, v192, v193, v194, v270, v277, v285, v292, timebase[0], timebase[1], v297, type, time2.value, *&time2.timescale, time2.epoch, v300, *v301, *&v301[8], *&v301[16], *&v301[24], v302, v303, *&time1.value, time1.epoch);
      OUTLINED_FUNCTION_47_7(v196, v197, v198, v199, v200, v201, v202, v203, v271, v278, v286, v293, *timebase);
      CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      *(&time2.flags + 2) = v7;
      HIWORD(time2.epoch) = 2082;
      v300 = v187;
      *v301 = v204;
      *&v301[2] = v195;
      *&v301[10] = v204;
      *&v301[12] = v205;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v206, v207, v208, v209, v210, v211, v4, v212);
    }

LABEL_115:
    OUTLINED_FUNCTION_80_4();
LABEL_116:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_64;
  }

  timebase[0] = 0;
  v89 = *MEMORY[0x1E695E480];
  FigPlaybackItemGetFigBaseObject();
  v91 = CMBaseObjectCopyProperty(v90, @"Timebase", v89, timebase);
  if (v91)
  {
    goto LABEL_103;
  }

  Rate = CMTimebaseGetRate(timebase[0]);
  if (timebase[0])
  {
    CFRelease(timebase[0]);
    timebase[0] = 0;
  }

  if (Rate == 0.0)
  {
    v91 = itemoverlap_addTimebaseListener(v7);
    if (v91)
    {
LABEL_103:
      Duration = v91;
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_64;
    }
  }

  if (Rate <= 0.0)
  {
    if (dword_1EAF17080)
    {
      HIDWORD(type) = 0;
      BYTE3(type) = 0;
      OUTLINED_FUNCTION_48_8();
      v213 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v213, v214, v215, v216, v217, v218, v219, v220, v267, v274, v284[0], v284[1], timebase[0], timebase[1], v297, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_40();
      if (!v89)
      {
        goto LABEL_113;
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(time2.value) = 136315650;
      OUTLINED_FUNCTION_2_76();
      v261 = "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] timebase is paused, no need to schedule an overlap yet.";
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  v93 = playeroverlap_itemAtIndex(a1, 1);
  if (dword_1EAF17080)
  {
    v101 = v93;
    v102 = OUTLINED_FUNCTION_45_9(qword_1EAF17078, v94, v95, v96, v97, v98, v99, v100, v267, v274, v284[0], v284[1], 0, timebase[1], v297, type, 0);
    os_log_type_enabled(v102, BYTE4(type));
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        v103 = (CMBaseObjectGetDerivedStorage() + 129);
      }

      else
      {
        v103 = "";
      }

      v138 = CMBaseObjectGetDerivedStorage() + 156;
      if (v101)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
      LOWORD(time2.flags) = 2048;
      OUTLINED_FUNCTION_61_7();
      v300 = v103;
      *v301 = v139;
      *&v301[2] = v7;
      *&v301[10] = v140;
      *&v301[12] = v138;
      *&v301[20] = v139;
      *&v301[22] = v101;
      *&v301[30] = v140;
      v302 = v141;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_4_7(v142, v143, &time1, v144, &dword_1962D5000, v145, v146, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] Schedule overlap for item <%p|%{public}s>, next item <%p|%{public}s>.");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v147, v148, v149, v150, v151);
  }

  Duration = playeroverlap_scheduleAdvanceTimerAndAnchorTime(a1);
  if (Duration)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v267, v274, LODWORD(v284[0]));
LABEL_65:
    v112 = itemoverlap_removeTimebaseListener(v7);
    if (v112)
    {
      v113 = v112;
      OUTLINED_FUNCTION_20_15();
      v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v115 = timebase[0];
      v116 = BYTE4(type);
      os_log_type_enabled(v114, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v18)
      {
        v118 = v117;
      }

      else
      {
        v118 = v115;
      }

      if (v118)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
        LOWORD(time2.flags) = 1024;
        *(&time2.flags + 2) = v113;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v119, v120, v121, v122, v123, v124, v116, v125);
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return Duration;
}

uint64_t playeroverlap_cancelScheduledOverlap(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v3 = *(v2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v3, 0.0);
  if (!result)
  {
    playeroverlap_removeAdvanceTimer(a1);
    result = playeroverlap_resetOverlapRangeProperty(a1);
    if (!result)
    {
      v6 = OUTLINED_FUNCTION_312();
      v8 = playeroverlap_itemAtIndex(v6, v7);

      return itemoverlap_removeTimebaseListener(v8);
    }
  }

  return result;
}

uint64_t itemoverlap_removeTimebaseListener(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 96))
  {
    return 0;
  }

  v2 = DerivedStorage;
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    v4 = *(v2 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 96) = 0;
    }

    result = 0;
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t playeroverlap_isActionAtEnd(uint64_t a1)
{
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  FigPlayerGetFigBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(v2, @"ActionAtEnd", *MEMORY[0x1E695E480], &cf))
  {
    return 0;
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t playeroverlap_removeOutroItem(const void *a1, int a2)
{
  v241 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRetain(*(DerivedStorage + 56));
  }

  v8 = playeroverlap_resetOverlapRangeProperty(a1);
  if (v8)
  {
    v146 = v8;
    goto LABEL_85;
  }

  v237 = CMBaseObjectGetDerivedStorage();
  v9 = &dword_1EAF17000;
  v10 = "playeroverlap_exitOutroForItem";
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_4_60();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_53_7(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_28();
    if (!v2)
    {
LABEL_11:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v24, v25, v26, v27, v28);
      goto LABEL_12;
    }

    if (a1)
    {
      v3 = CMBaseObjectGetDerivedStorage() + 129;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = "";
      if (!v7)
      {
LABEL_10:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7(v19, v20, &time, v21, &dword_1962D5000, v22, v23, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] ending outro of <%p|%{public}s>, remove from sub-player flag = %d");
        OUTLINED_FUNCTION_67_7();
        goto LABEL_11;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_10;
  }

LABEL_12:
  if (itemoverlap_removeTimebaseListener(v7))
  {
    OUTLINED_FUNCTION_4_60();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_86_3(v29, v30, v31, v32, v33, v34, v35, v36, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
    {
      v37 = v3;
    }

    else
    {
      v37 = v3 & 0xFFFFFFFE;
    }

    if (v37)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_27_10(v38, v39, v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_67_7();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417(v46, v47, v48, v49, v50);
  }

  v51 = OUTLINED_FUNCTION_265();
  v53 = playeroverlap_itemAtIndex(v51, v52);
  if (itemoverlap_removeTimebaseListener(v53))
  {
    OUTLINED_FUNCTION_4_60();
    v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_86_3(v54, v55, v56, v57, v58, v59, v60, v61, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
    {
      v62 = v3;
    }

    else
    {
      v62 = v3 & 0xFFFFFFFE;
    }

    if (v62)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_27_10(v63, v64, v65, v66, v67, v68, v69, v70);
      OUTLINED_FUNCTION_67_7();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417(v71, v72, v73, v74, v75);
  }

  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_4_60();
    v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_53_7(v76, v77, v78, v79, v80, v81, v82, v83, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_28();
    if (!v2)
    {
      goto LABEL_34;
    }

    if (a1)
    {
      v3 = CMBaseObjectGetDerivedStorage() + 129;
      if (!v7)
      {
LABEL_33:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7(v84, v85, &time, v86, &dword_1962D5000, v87, v88, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] outro item <%p|%{public}s>, remove from sub-player flag = %d");
        OUTLINED_FUNCTION_67_7();
LABEL_34:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v89, v90, v91, v92, v93);
        goto LABEL_35;
      }
    }

    else
    {
      v3 = "";
      if (!v7)
      {
        goto LABEL_33;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_33;
  }

LABEL_35:
  HIDWORD(v238) = a2;
  v94 = CMBaseObjectGetDerivedStorage();
  v95 = *(v94 + 72);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  if (v95 == v96 % 2)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_60();
  v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  LODWORD(v2) = BYTE3(type);
  os_log_type_enabled(v97, BYTE3(type));
  OUTLINED_FUNCTION_37();
  if (v3)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_42:
        v10 = *(v94 + 72);
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_31_14();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_27_10(v98, v99, v100, v101, v102, v103, v104, v105);
        goto LABEL_43;
      }
    }

    else if (!v7)
    {
      goto LABEL_42;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_42;
  }

LABEL_43:
  OUTLINED_FUNCTION_16();
  v9 = v106;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_44:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  v109 = OUTLINED_FUNCTION_18_19(v107, v108);
  if (CFArrayGetCount(v109) == 1)
  {
    goto LABEL_53;
  }

  HIDWORD(type) = 0;
  BYTE3(type) = 0;
  v10 = v9;
  OUTLINED_FUNCTION_14_25();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_70();
  if (v9)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_51:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v110, v111, v112, v113, v114, v2, 0, v115);
        goto LABEL_52;
      }
    }

    else if (!v7)
    {
      goto LABEL_51;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_51;
  }

LABEL_52:
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_454(v116, v117, v118, v119, v120);
LABEL_53:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue == -1)
  {
    OUTLINED_FUNCTION_4_60();
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, BYTE3(type));
    OUTLINED_FUNCTION_40();
    if (!v94)
    {
      goto LABEL_81;
    }

    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_80:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_12_17(v172, v173, &time, v174, &dword_1962D5000, v175, v176, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] outro item <%p|%{public}s> unexpectedly not found in inactive play queue.");
LABEL_81:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v177, v178, v179, v180, v181);
        v146 = 4294954436;
        goto LABEL_82;
      }
    }

    else if (!v7)
    {
      goto LABEL_80;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_80;
  }

  v122 = FirstIndexOfValue;
  if (!HIDWORD(v238))
  {
    goto LABEL_57;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v2 = *(v123 + 8);
  v124 = *(v94 + 16);
  v125 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v125)
  {
    v146 = 4294954514;
LABEL_72:
    OUTLINED_FUNCTION_4_60();
    v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v155 = OUTLINED_FUNCTION_40_10(v147, v148, v149, v150, v151, v152, v153, v154, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v155))
    {
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v156, v157, v158, v159, v160, v161, v10, v162);
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_82:
    OUTLINED_FUNCTION_4_60();
    v182 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v190 = OUTLINED_FUNCTION_40_10(v182, v183, v184, v185, v186, v187, v188, v189, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v190))
    {
LABEL_83:
      OUTLINED_FUNCTION_74_6();
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v191, v192, v193, v194, v195, v196, v10, v197);
    }

LABEL_84:
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_85;
  }

  v126 = v125(v2, v124);
  if (v126)
  {
    v146 = v126;
    goto LABEL_72;
  }

LABEL_57:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  v10 = 2;
  v129 = OUTLINED_FUNCTION_18_19(v127, v128);
  CFArrayRemoveValueAtIndex(v129, v122);
  v130 = CMBaseObjectGetDerivedStorage();
  *(v130 + 88) = 0;
  *(v130 + 72) = -1;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_15_25();
  v132 = *(v131 + 8);
  v133 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v133)
  {
    v146 = 4294954514;
    goto LABEL_75;
  }

  v134 = v133(v132, 0.0);
  if (v134)
  {
    v146 = v134;
LABEL_75:
    OUTLINED_FUNCTION_4_60();
    v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v171 = OUTLINED_FUNCTION_40_10(v163, v164, v165, v166, v167, v168, v169, v170, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v171))
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  v135 = v237;
  v136 = *(v237 + 56);
  if (v136)
  {
    CFRelease(v136);
    *(v237 + 56) = 0;
  }

  inserted = playeroverlap_reInsertPendingQueue(a1);
  if (inserted)
  {
    v146 = inserted;
    OUTLINED_FUNCTION_14_25();
    v217 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v225 = OUTLINED_FUNCTION_40_10(v217, v218, v219, v220, v221, v222, v223, v224, v234, v235, v236, v237, v238, type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_124_0(v225))
    {
      OUTLINED_FUNCTION_74_6();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v226, v227, v228, v229, v230, v231, v135, v232);
    }

    goto LABEL_84;
  }

  if (FigPlaybackTimerIsScheduled(*(v237 + 72)))
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_4_60();
      v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_53_7(v138, v139, v140, v141, v142, v143, v144, v145, v234, v235, v236, v237, v238, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_28();
      if (v2)
      {
        if (v7)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_74_6();
        OUTLINED_FUNCTION_55_8();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7(v199, v200, &time, v201, &dword_1962D5000, v202, v203, "<<<< FigPlayerOverlap >>>> %s: <%p|%{public}s> the OverlappedPlaybackEndTime timer is active, cancel it");
        OUTLINED_FUNCTION_67_7();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v204, v205, v206, v207, v208);
    }

    v209 = FigPlaybackTimerCancel(*(v135 + 72));
    if (v209)
    {
      v146 = v209;
      OUTLINED_FUNCTION_14_25();
      v233 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
      goto LABEL_84;
    }
  }

  v210 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  playeroverlap_dispatchAsyncPostNotification(0, v7, @"OverlappedPlaybackItemDidComplete", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v212 = CFDictionaryCreateMutable(v210, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  time = **&MEMORY[0x1E6960C70];
  v213 = CMTimeCopyAsDictionary(&time, v210);
  FigCFDictionarySetValue();
  if (v213)
  {
    CFRelease(v213);
  }

  FigCFDictionarySetInt32();
  v214 = OUTLINED_FUNCTION_265();
  playeroverlap_dispatchAsyncPostNotification(v214, v215, v216, v212);
  if (v212)
  {
    CFRelease(v212);
  }

  v146 = 0;
LABEL_85:
  if (v7)
  {
    CFRelease(v7);
  }

  return v146;
}

uint64_t playeroverlap_rescheduleAdvanceTimerAndAnchorTime(void *a1)
{
  v2 = playeroverlap_cancelScheduledOverlap(a1);
  if (v2)
  {
    return v2;
  }

  v3 = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }

  return v3;
}

uint64_t playeroverlap_setOverlapRangeProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v68 = **&MEMORY[0x1E6960CC0];
  itemoverlap_GetCurrentTimeInPlayerQueue(a3, &v68);
  if (v8)
  {
    v32 = v8;
    v21 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  *(DerivedStorage + 108) = FigAtomicIncrement32();
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  v62 = a1;
  v63 = a2;
  v12 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"Outro", *MEMORY[0x1E695E4D0]);
  v13 = FigCFDictionarySetInt32();
  if (v13 || (v85[0] = *(v7 + 24), v13 = FigCFDictionarySetCMTime(), v13))
  {
    v32 = v13;
    v21 = 0;
    goto LABEL_22;
  }

  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if ((*(v7 + 60) & 0x1D) == 1)
  {
    memset(v85, 0, 24);
    itemoverlap_getEffectiveOverlappedPlaybackEndTime(a2, v85);
    if ((v85[0].flags & 0x1D) == 1)
    {
      v69 = v85[0];
      v19 = FigCFDictionarySetCMTime();
      if (v19)
      {
LABEL_55:
        v32 = v19;
        v21 = 0;
        goto LABEL_22;
      }
    }

    memset(&v69, 0, sizeof(v69));
    lhs = v85[0];
    type = *(v7 + 24);
    CMTimeSubtract(&v69, &lhs, &type);
    type = v68;
    rhs = v69;
    CMTimeAdd(&lhs, &type, &rhs);
    value = lhs.value;
    flags = lhs.flags;
    timescale = lhs.timescale;
    epoch = lhs.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  FigPlaybackItemGetFigBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v18)
  {
    v21 = 0;
    v32 = 4294954514;
    goto LABEL_22;
  }

  v61 = a3;
  v19 = v18(v17, @"OverlapRange", v11);
  if (v19)
  {
    goto LABEL_55;
  }

  v20 = CFDictionaryCreateMutable(v9, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = v20;
  if (!v20)
  {
    v28 = 0;
    v27 = 0;
LABEL_47:
    v32 = 0;
    goto LABEL_48;
  }

  CFDictionarySetValue(v20, @"Intro", v12);
  v22 = FigCFDictionarySetInt32();
  if (v22 || (v85[0] = v68, v22 = FigCFDictionarySetCMTime(), v22) || (flags & 0x1D) == 1 && (v85[0].value = value, *&v85[0].timescale = __PAIR64__(flags, timescale), v85[0].epoch = epoch, v22 = FigCFDictionarySetCMTime(), v22))
  {
    v32 = v22;
  }

  else
  {
    FigPlaybackItemGetFigBaseObject();
    v24 = v23;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v26 = v25(v24, @"OverlapRange", v21);
      if (!v26)
      {
        v27 = FigCFCopyCompactDescription();
        v28 = FigCFCopyCompactDescription();
        if (dword_1EAF17080)
        {
          LODWORD(lhs.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value_low = LOBYTE(type.value);
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
          OUTLINED_FUNCTION_70();
          if (v17)
          {
            if (v62)
            {
              v31 = (CMBaseObjectGetDerivedStorage() + 129);
            }

            else
            {
              v31 = "";
            }

            v64 = v31;
            if (v63)
            {
              v42 = (CMBaseObjectGetDerivedStorage() + 156);
            }

            else
            {
              v42 = "";
            }

            if (v61)
            {
              HIDWORD(v60) = v17;
              v43 = value_low;
              v44 = os_log_and_send_and_compose_flags_and_os_log_type;
              v45 = v42;
              v46 = CMBaseObjectGetDerivedStorage();
              v42 = v45;
              os_log_and_send_and_compose_flags_and_os_log_type = v44;
              value_low = v43;
              v47 = (v46 + 156);
            }

            else
            {
              v47 = "";
            }

            v48 = *(DerivedStorage + 108);
            LODWORD(v69.value) = 136317442;
            *(&v69.value + 4) = "playeroverlap_setOverlapRangeProperty";
            LOWORD(v69.flags) = 2048;
            *(&v69.flags + 2) = v62;
            HIWORD(v69.epoch) = 2082;
            v70 = v64;
            v71 = 2114;
            v72 = v27;
            v73 = 2048;
            v74 = v63;
            v75 = 2082;
            v76 = v42;
            v77 = 2114;
            v78 = v28;
            v79 = 2048;
            v80 = v61;
            v81 = 2082;
            v82 = v47;
            v83 = 1024;
            v84 = v48;
            LODWORD(v60) = 98;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, os_log_and_send_and_compose_flags_and_os_log_type, value_low, v54, &v69, v60);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v55, v56, v57, v58, v59);
        }

        goto LABEL_47;
      }

      v32 = v26;
    }

    else
    {
      v32 = 4294954514;
    }
  }

LABEL_22:
  FigPlaybackItemGetFigBaseObject();
  v34 = v33;
  v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v35)
  {
    v35(v34, @"OverlapRange", 0);
  }

  FigPlaybackItemGetFigBaseObject();
  v37 = v36;
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v38)
  {
    v38(v37, @"OverlapRange", 0);
  }

  v28 = 0;
  v27 = 0;
  v39 = 0;
  v40 = 0;
  if (v11)
  {
LABEL_48:
    CFRelease(v11);
    v39 = v28;
    v40 = v27;
    if (!v21)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v21)
  {
LABEL_28:
    CFRelease(v21);
  }

LABEL_29:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v32;
}

double itemoverlap_getEffectiveOverlappedPlaybackEndTime@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a2 + 16) = v7;
  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    return *&v6;
  }

  v8 = DerivedStorage;
  value = *(DerivedStorage + 108);
  flags = *(DerivedStorage + 120);
  timescale = *(DerivedStorage + 116);
  if ((flags & 0x1D) != 1)
  {
    *&time2.value = v6;
    time2.epoch = v7;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v11 || v11(a1, &time2))
    {
      OUTLINED_FUNCTION_147();
      v20 = OUTLINED_FUNCTION_69_3(v12, v13, v14, v15, v16, v17, v18, v19, v59, v62, v65, *v68, v68[2], v68[3], v68[4]);
      v28 = OUTLINED_FUNCTION_88_4(v20, v21, v22, v23, v24, v25, v26, v27, v60, v63, v66, v69, v71, v73, v75);
      if (!OUTLINED_FUNCTION_77_0(v28))
      {
        goto LABEL_14;
      }
    }

    else
    {
      flags = time2.flags;
      if ((time2.flags & 0x1D) == 1)
      {
        value = time2.value;
        timescale = time2.timescale;
        epoch = time2.epoch;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_147();
      v44 = OUTLINED_FUNCTION_69_3(v36, v37, v38, v39, v40, v41, v42, v43, v59, v62, v65, *v68, v68[2], v68[3], v68[4]);
      v52 = OUTLINED_FUNCTION_88_4(v44, v45, v46, v47, v48, v49, v50, v51, v61, v64, v67, v70, v72, v74, v76);
      if (!OUTLINED_FUNCTION_77_0(v52))
      {
LABEL_14:
        OUTLINED_FUNCTION_16();
        *&v6 = OUTLINED_FUNCTION_420(v53, v54, v55, v56, v57);
        return *&v6;
      }
    }

    v78 = 136315138;
    v79 = "itemoverlap_getEffectiveOverlappedPlaybackEndTime";
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, v8, v35);
    goto LABEL_14;
  }

  epoch = *(DerivedStorage + 124);
LABEL_8:
  time1 = v8[2];
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = v8[1];
    time2 = v8[2];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v6 = *&v8[2].value;
      *a2 = v6;
      *(a2 + 16) = v8[2].epoch;
    }
  }

  return *&v6;
}

double playeroverlap_removeItemAndRefreshPlayQueue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t a22, int type, float a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_458();
  a57 = v58;
  a58 = v59;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  a46 = *MEMORY[0x1E69E9840];
  v67 = playeroverlap_indexForItem(v65, v63);
  if (v67 != -1)
  {
    v68 = v67;
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      v69 = OUTLINED_FUNCTION_312();
      if (playeroverlap_itemAtIndex(v69, v70) == v64)
      {
        refreshed = playeroverlap_removeOutroItem(v66, 1);
        if (refreshed)
        {
          goto LABEL_13;
        }

        refreshed = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v66);
        if (refreshed)
        {
          goto LABEL_13;
        }
      }
    }

    v71 = OUTLINED_FUNCTION_312();
    if (playeroverlap_itemAtIndex(v71, v72) == v64 || playeroverlap_itemAtIndex(v66, 1) == v64)
    {
      v73 = OUTLINED_FUNCTION_312();
      v75 = playeroverlap_itemAtIndex(v73, v74);
      if (itemoverlap_hasAdvanceTime(v75))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
        {
          refreshed = playeroverlap_cancelScheduledOverlap(v66);
          if (refreshed)
          {
            goto LABEL_13;
          }
        }
      }
    }

    refreshed = playeroverlap_removeFromInternalPlayQueue(v66, v64, v62);
    if (refreshed)
    {
      goto LABEL_13;
    }

    if (itemoverlap_hasAdvanceTime(v64))
    {
      v78 = CMBaseObjectGetDerivedStorage();
      v79 = OUTLINED_FUNCTION_34_12(v78);
      if (!CFArrayGetCount(v79))
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_3_58();
        if (CFArrayGetCount(*(v81 + 24)))
        {
          if (v62)
          {
            v82 = &kFigPlayerCurrentItemDidChangeReason_RemoveFromPlayQueue;
          }

          else
          {
            v82 = &kFigPlayerCurrentItemDidChangeReason_AdvanceAtEnd;
          }

          v83 = OUTLINED_FUNCTION_312();
          v85 = playeroverlap_itemAtIndex(v83, v84);
          if (!dword_1EAF17080)
          {
            goto LABEL_30;
          }

          a24 = 0.0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_40();
          if (!v60)
          {
LABEL_29:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v94, v95, v96, v97, v98);
LABEL_30:
            a24 = 0.0;
            playeroverlap_GetRateInPlayerQueue(v66, &a24);
            if (refreshed)
            {
              goto LABEL_13;
            }

            if (a24 != 0.0)
            {
              playeroverlap_SetRateInPlayerQueue(v66, 0.0);
              if (refreshed)
              {
                goto LABEL_13;
              }
            }

            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_31_14();
            *(v100 + 4) = v99 % 2;
            playeroverlap_postUpdateActiveIndex(v66);
            if (a24 != 0.0)
            {
              playeroverlap_SetRateInPlayerQueue(v66, a24);
              if (refreshed)
              {
                goto LABEL_13;
              }
            }

            v101 = *v82;
            playeroverlap_dispatchAsyncPostNotification(0, v85, @"ItemBecameCurrent", 0);
            v102 = playeroverlap_createCurrentItemDidChangePayload(v101);
            v103 = OUTLINED_FUNCTION_312();
            playeroverlap_dispatchAsyncPostNotification(v103, v104, v105, v102);
            if (v102)
            {
              CFRelease(v102);
            }

            inserted = playeroverlap_reInsertPendingQueue(v66);
            if (inserted)
            {
              v110 = inserted;
              v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v112 = os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT);
              if (OUTLINED_FUNCTION_77_0(v112))
              {
                LODWORD(a25) = 136315138;
                *(&a25 + 4) = "playeroverlap_swapActiveSubPlayer";
                OUTLINED_FUNCTION_39();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl(v113, v114, v115, v116, v117, v118, 0, v119);
                OUTLINED_FUNCTION_192_0();
              }

              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_420(v120, v121, v122, v123, v124);
              refreshed = v110;
              goto LABEL_13;
            }

            v107 = *(CMBaseObjectGetDerivedStorage() + 112);
            if (v107)
            {
              playeroverlap_setItemsToPrebufferInPlayerQueue(v66, v107);
            }

            goto LABEL_12;
          }

          if (v66)
          {
            v87 = (CMBaseObjectGetDerivedStorage() + 129);
            if (!v85)
            {
LABEL_28:
              LODWORD(a25) = 136316162;
              *(&a25 + 4) = "playeroverlap_swapActiveSubPlayer";
              WORD6(a25) = 2048;
              *(&a25 + 14) = v66;
              OUTLINED_FUNCTION_443();
              a27 = v87;
              OUTLINED_FUNCTION_63_4();
              *(&a29 + 4) = v88;
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_12_17(v89, v90, &a30, v91, &dword_1962D5000, v92, v93, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] next item <%p|%{public}s>");
              OUTLINED_FUNCTION_612();
              goto LABEL_29;
            }
          }

          else
          {
            v87 = "";
            if (!v85)
            {
              goto LABEL_28;
            }
          }

          CMBaseObjectGetDerivedStorage();
          goto LABEL_28;
        }
      }

      refreshed = playeroverlap_refreshPlayQueueFromIndex(v66, v68);
      if (refreshed)
      {
LABEL_13:
        OUTLINED_FUNCTION_457(refreshed);
        return result;
      }
    }

LABEL_12:
    playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v66);
    refreshed = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_457("%s signalled err=%d at <>:%d");

  return FigSignalErrorAtGM(v108);
}

uint64_t playeroverlap_SetRateCommon(const void *a1, __int128 **a2, float a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    playeroverlap_removeOutroItem(a1, 1);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsScheduled = FigPlaybackTimerIsScheduled(*(DerivedStorage + 64));
  if (a3 == 0.0 && IsScheduled)
  {
    playeroverlap_cancelScheduledOverlap(a1);
  }

  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_48_8();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_37_12();
      OUTLINED_FUNCTION_12_17(v10, v11, &v38, v12, &dword_1962D5000, v13, v14, "<<<< FigPlayerOverlap >>>> %s: rate = %1.3f, to active sub-player %p");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v15, v16, v17, v18, v19);
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  v20 = *a2;
  if (*a2)
  {
    v36 = *v20;
    v37 = *(v20 + 2);
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v38 = v36;
      v39 = v37;
      v21 = OUTLINED_FUNCTION_79_4();
      result = v22(v21);
      goto LABEL_17;
    }

LABEL_16:
    result = 4294954514;
    goto LABEL_17;
  }

  v24 = a2[1];
  if (v24)
  {
    v34 = *v24;
    v35 = *(v24 + 16);
    if (*(*(CMBaseObjectGetVTable() + 16) + 88))
    {
      v38 = v34;
      v39 = v35;
      v25 = OUTLINED_FUNCTION_79_4();
      result = v26(v25);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!a2[2])
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      goto LABEL_32;
    }

    return 4294954514;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 104))
  {
    return 4294954514;
  }

LABEL_32:
  v32 = OUTLINED_FUNCTION_79_4();
  result = v33(v32);
LABEL_17:
  if (!result)
  {
    if (a3 != 0.0)
    {
      if (a3 > 0.0)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      *(CMBaseObjectGetDerivedStorage() + 104) = v27;
    }

    v28 = OUTLINED_FUNCTION_312();
    result = playeroverlap_itemAtIndex(v28, v29);
    if (result)
    {
      v30 = CMBaseObjectGetDerivedStorage();
      v31 = v30;
      if (a3 > 0.0 && *(v30 + 88) == 2 || a3 < 0.0 && *(v30 + 88) == 1)
      {
        result = 0;
        *(v31 + 88) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t itemoverlap_SetCurrentTimeCommon(const void *a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)) && (playeroverlap_itemAtIndex(v8, 1) == a1 || playeroverlap_itemAtIndex(v8, 0) == a1))
  {
    v14 = playeroverlap_cancelScheduledOverlap(v8);
    if (v14)
    {
      return v14;
    }

    OUTLINED_FUNCTION_1_16();
    v11 = itemoverlap_SetCurrentTimeSpecific(v15, &v53, a3);
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_13:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v11;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 56) == a1)
    {
      if (dword_1EAF17080)
      {
        OUTLINED_FUNCTION_147();
        v23 = OUTLINED_FUNCTION_126(qword_1EAF17078, v16, v17, v18, v19, v20, v21, v22, v42, v44, v46, *v48, v48[2], v48[3], v48[4]);
        OUTLINED_FUNCTION_835(v23, v24, v25, v26, v27, v28, v29, v30, v43, v45, v47, v49, v50, v51, v52);
        OUTLINED_FUNCTION_70();
        if (v5)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_8_27();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v3, v4, v36);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454(v37, v38, v39, v40, v41);
      }

      if (!playeroverlap_removeOutroItem(v8, 1))
      {
        playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v8);
      }
    }

    else if (playeroverlap_itemAtIndex(v8, 0) == a1)
    {
      playeroverlap_removeOutroItem(v8, 1);
    }
  }

  OUTLINED_FUNCTION_1_16();
  v11 = itemoverlap_SetCurrentTimeSpecific(v10, &v53, a3);
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_9:
  OUTLINED_FUNCTION_1_16();
  v12 = CMBaseObjectGetDerivedStorage();
  *(v12 + 88) = 0;
  *(v12 + 132) = v53;
  *(v12 + 148) = v54;
  return v11;
}

void playeroverlap_AddToPlayQueue_fun(void **a1)
{
  v4 = a1;
  v194 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    OUTLINED_FUNCTION_36_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160, v165, v170);
    goto LABEL_60;
  }

  v171 = v4;
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v18 = OUTLINED_FUNCTION_27_15(v10, v11, v12, v13, v14, v15, v16, v17, v160, v165, v4, v176, SBYTE2(v176), SBYTE3(v176), SBYTE4(v176));
    OUTLINED_FUNCTION_830(v18, v19, v20, v21, v22, v23, v24, v25, v161, v166, v172, v177, v181, v185, v189);
    OUTLINED_FUNCTION_37();
    if (!v3)
    {
      goto LABEL_13;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else if (v6)
    {
LABEL_7:
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_12:
        OUTLINED_FUNCTION_7_38();
        OUTLINED_FUNCTION_443();
        OUTLINED_FUNCTION_81_3();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_27_10(v26, v27, v28, v29, v30, v31, v32, v33);
LABEL_13:
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_14;
      }

LABEL_8:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_12;
    }

    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_14:
  if (!v6 || (v34 = atomic_load(CMBaseObjectGetDerivedStorage()), (v34 & 1) != 0))
  {
    OUTLINED_FUNCTION_36_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_38;
  }

  CMBaseObjectGetDerivedStorage();
  if (!v7 || (v35 = OUTLINED_FUNCTION_517(), playeroverlap_isLastItem(v35, v36)))
  {
    LODWORD(hasAdvanceTime) = playeroverlap_AppendToPlayQueueInPlayerQueue(v5, v6, 1);
    if (!hasAdvanceTime)
    {
      v133 = playeroverlap_playQueueCount(v5);
      v4 = v171;
      if (v133 > 1)
      {
        v139 = playeroverlap_itemAtIndex(v5, v133 - 2);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (v139)
        {
          v141 = DerivedStorage;
          if (*(DerivedStorage + 88))
          {
            if (playeroverlap_isActionAtEnd(v5))
            {
              v142 = OUTLINED_FUNCTION_517();
              playeroverlap_removeFinishedItem(v142, v143);
              *(v141 + 88) = 0;
            }
          }
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
      }

      goto LABEL_56;
    }

    goto LABEL_38;
  }

  v37 = OUTLINED_FUNCTION_265();
  hasAdvanceTime = playeroverlap_itemAtIndex(v37, v38);
  if (hasAdvanceTime == v7)
  {
    v46 = OUTLINED_FUNCTION_265();
    v48 = playeroverlap_itemAtIndex(v46, v47);
    hasAdvanceTime = itemoverlap_hasAdvanceTime(v48);
    if (hasAdvanceTime)
    {
      v49 = CMBaseObjectGetDerivedStorage();
      hasAdvanceTime = FigPlaybackTimerIsScheduled(*(v49 + 64));
      if (hasAdvanceTime)
      {
        hasAdvanceTime = playeroverlap_cancelScheduledOverlap(v5);
        if (hasAdvanceTime)
        {
          goto LABEL_38;
        }
      }
    }
  }

  if (dword_1EAF17080)
  {
    v50 = OUTLINED_FUNCTION_17_22(hasAdvanceTime, v39, v40, v41, v42, v43, v44, v45, v160, v165, v171, v176, SBYTE2(v176), SBYTE3(v176), SHIDWORD(v176));
    OUTLINED_FUNCTION_130(v50, v51, v52, v53, v54, v55, v56, v57, v162, v167, v173, v178, v182, v186, v190);
    OUTLINED_FUNCTION_28();
    if (v2)
    {
      if (v5)
      {
        CMBaseObjectGetDerivedStorage();
      }

      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_81_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_4_7(v58, v59, v193, v60, &dword_1962D5000, v61, v62, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s] itemToAdd <%p|%{public}s>, afterItem <%p|%{public}s>");
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v63, v64, v65, v66, v67);
  }

  v68 = OUTLINED_FUNCTION_517();
  if (playeroverlap_indexForItem(v68, v69) == -1)
  {
    LODWORD(hasAdvanceTime) = -12780;
    goto LABEL_38;
  }

  v70 = CMBaseObjectGetDerivedStorage();
  v71 = CMBaseObjectGetDerivedStorage();
  v72 = CMBaseObjectGetDerivedStorage();
  v73 = *(v72 + 72);
  if (v73 == -1)
  {
    v107 = *(v70 + 40);
    OUTLINED_FUNCTION_502();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    CFArrayInsertValueAtIndex(v107, FirstIndexOfValue + 1, v6);
    *(v71 + 72) = -1;
    v4 = v171;
    if (dword_1EAF17080)
    {
      v117 = OUTLINED_FUNCTION_17_22(v109, v110, v111, v112, v113, v114, v115, v116, v160, v165, v171, v176, SBYTE2(v176), SBYTE3(v176), SHIDWORD(v176));
      OUTLINED_FUNCTION_304(v117, v118, v119, v120, v121, v122, v123, v124, v164, v169, v175, v180, v184, v188, v192);
      OUTLINED_FUNCTION_46();
      if (v1)
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v125, v126, v127, v128, v129, v130, v131, v132);
        OUTLINED_FUNCTION_507();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v134, v135, v136, v137, v138);
    }

    goto LABEL_56;
  }

  v74 = v72;
  v75 = *(v70 + 8 + 8 * v73);
  v76 = *(v71 + 16);
  v77 = *(v70 + 8 + 8 * ((v73 + 1) % 2));
  v78 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (v78)
  {
    v78(v75, v76, v77);
  }

  v79 = *(v70 + 8 + 8 * *(v74 + 72));
  v80 = *(v71 + 16);
  v81 = *(v74 + 16);
  v82 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v82)
  {
    LODWORD(hasAdvanceTime) = -12782;
    goto LABEL_38;
  }

  LODWORD(hasAdvanceTime) = v82(v79, v80, v81);
  if (hasAdvanceTime)
  {
LABEL_38:
    v4 = v171;
    goto LABEL_60;
  }

  v83 = *(v70 + 8 * *(v74 + 72) + 24);
  v84 = FigCFArrayGetFirstIndexOfValue();
  CFArrayInsertValueAtIndex(v83, v84 + 1, v6);
  *(v71 + 72) = *(v74 + 72);
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v93 = OUTLINED_FUNCTION_126(*(v85 + 120), v86, v87, v88, v89, v90, v91, v92, v160, v165, v171, v176, SBYTE2(v176), SBYTE3(v176), SBYTE4(v176));
    OUTLINED_FUNCTION_835(v93, v94, v95, v96, v97, v98, v99, v100, v163, v168, v174, v179, v183, v187, v191);
    OUTLINED_FUNCTION_70();
    if (v80)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v101, v102, v103, v104, v105, v71, v83, v106);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v144, v145, v146, v147, v148);
  }

  v4 = v171;
  if (!itemoverlap_hasAdvanceTime(v6) && !itemoverlap_hasAdvanceTime(v7))
  {
    goto LABEL_56;
  }

  v149 = OUTLINED_FUNCTION_517();
  v151 = playeroverlap_indexForItem(v149, v150);
  v152 = itemoverlap_hasAdvanceTime(v7);
  v153 = 1;
  if (!v152)
  {
    v153 = 2;
  }

  LODWORD(hasAdvanceTime) = playeroverlap_refreshPlayQueueFromIndex(v5, v153 + v151);
  if (!hasAdvanceTime)
  {
LABEL_56:
    v154 = OUTLINED_FUNCTION_265();
    if (playeroverlap_itemAtIndex(v154, v155) == v6 || playeroverlap_itemAtIndex(v5, 1) == v6)
    {
      v156 = OUTLINED_FUNCTION_265();
      v158 = playeroverlap_itemAtIndex(v156, v157);
      LODWORD(hasAdvanceTime) = itemoverlap_hasAdvanceTime(v158);
      if (hasAdvanceTime)
      {
        v159 = CMBaseObjectGetDerivedStorage();
        if (!FigPlaybackTimerIsScheduled(*(v159 + 64)) || (LODWORD(hasAdvanceTime) = playeroverlap_cancelScheduledOverlap(v5), !hasAdvanceTime))
        {
          LODWORD(hasAdvanceTime) = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v5);
        }
      }
    }

    else
    {
      LODWORD(hasAdvanceTime) = 0;
    }
  }

LABEL_60:
  *(v4 + 6) = hasAdvanceTime;
}

uint64_t playeroverlap_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v6 = OUTLINED_FUNCTION_48_8();
    v14 = OUTLINED_FUNCTION_126(v6, v7, v8, v9, v10, v11, v12, v13, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
    OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v40, v42, v44, v46, v47, v48, v49);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17(v22, v23, v50, v24, &dword_1962D5000, v25, v26, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s]");
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = *(OUTLINED_FUNCTION_71_3(DerivedStorage) + 24);
  if (!v33)
  {
    return 4294954514;
  }

  v34 = *(v33 + 24);
  if (!v34)
  {
    return 4294954514;
  }

  result = v34(v2, a2);
  if (result)
  {
    return result;
  }

  v36 = *(a1 + 16);
  v37 = *(CMBaseObjectGetVTable() + 24);
  if (v37 && (v38 = *(v37 + 24)) != 0)
  {
    return v38(v36, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playeroverlap_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_48_8();
    v18 = OUTLINED_FUNCTION_126(v10, v11, v12, v13, v14, v15, v16, v17, v43, v45, v47, *v49, v49[2], v49[3], v49[4]);
    OUTLINED_FUNCTION_311(v18, v19, v20, v21, v22, v23, v24, v25, v44, v46, v48, v50, v51, v52, v53);
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17(v26, v27, v54, v28, &dword_1962D5000, v29, v30, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s]");
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v31, v32, v33, v34, v35);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v37 = *(OUTLINED_FUNCTION_71_3(DerivedStorage) + 32);
  if (!v37)
  {
    return 4294954514;
  }

  v38 = *(v37 + 8);
  if (!v38)
  {
    return 4294954514;
  }

  result = v38(v4, a2, a3, a4);
  if (result)
  {
    return result;
  }

  v40 = *(a1 + 16);
  v41 = *(CMBaseObjectGetVTable() + 32);
  if (v41 && (v42 = *(v41 + 8)) != 0)
  {
    return v42(v40, a2, a3, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playeroverlap_SilentMute(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v6 = OUTLINED_FUNCTION_48_8();
    v14 = OUTLINED_FUNCTION_126(v6, v7, v8, v9, v10, v11, v12, v13, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
    OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v40, v42, v44, v46, v47, v48, v49);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17(v22, v23, v50, v24, &dword_1962D5000, v25, v26, "<<<< FigPlayerOverlap >>>> %s: [%p|%{public}s]");
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = *(OUTLINED_FUNCTION_71_3(DerivedStorage) + 32);
  if (!v33)
  {
    return 4294954514;
  }

  v34 = *(v33 + 16);
  if (!v34)
  {
    return 4294954514;
  }

  result = v34(v2, a2);
  if (result)
  {
    return result;
  }

  v36 = *(a1 + 16);
  v37 = *(CMBaseObjectGetVTable() + 32);
  if (v37 && (v38 = *(v37 + 16)) != 0)
  {
    return v38(v36, a2);
  }

  else
  {
    return 4294954514;
  }
}

BOOL playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t playeroverlap_advanceTimeReached_cold_1(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v3 = *(v2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    v4(v3, 0.0);
  }

  return playeroverlap_resetOverlapRangeProperty(a1);
}

void playeroverlap_overlappedPlaybackEndTimeReached_cold_1(const void *a1, void *a2)
{
  CFRetain(a1);
  if (!playeroverlap_removeOutroItem(a2, 2))
  {
    playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a2);
  }

  playeroverlap_dispatchAsyncPostNotification(0, a1, @"DidPlayToTheEnd", 0);
  CFRelease(a1);
}

double playeroverlap_overlappedPlaybackEndTimeReached_cold_2()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_overlappedPlaybackEndTimeReached");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

uint64_t itemoverlap_invalidateDispatchSync_fun_cold_1(void *a1)
{
  result = playeroverlap_removeOutroItem(a1, 1);
  if (!result)
  {

    return playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
  }

  return result;
}

void itemoverlap_subItemNotificationWeakCallback_cold_1(void *a1, uint64_t a2, const void *a3)
{
  if (playeroverlap_isActionAtEnd(a1) || playeroverlap_isActionAtEnd(a1) && !playeroverlap_isLastItem(a1, a3))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
    {
      v7 = OUTLINED_FUNCTION_312();
      if (playeroverlap_itemAtIndex(v7, v8) == a3)
      {
        playeroverlap_advanceTimeReached(a1);
      }
    }

    playeroverlap_removeFinishedItem(a1, a3);
  }

  else if (!*(a2 + 88))
  {
    *(a2 + 88) = *(CMBaseObjectGetDerivedStorage() + 104);
  }
}

uint64_t itemoverlap_subItemNotificationWeakCallback_cold_2(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
  {
    playeroverlap_cancelScheduledOverlap(a1);
  }

  return playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
}

double playeroverlap_setOverlappedPlaybackEndTime_fun_cold_2()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setOverlappedPlaybackEndTime_fun_cold_3()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setOverlappedPlaybackEndTime_fun_cold_4()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_maybeSetOverlapRangeProperty_cold_1()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_maybeSetOverlapRangeProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setEndTime_fun_cold_1()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setEndTime_fun_cold_2()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setEndTime_fun_cold_3()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

double playeroverlap_setActionAtEnd_fun_cold_1(uint64_t a1, void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 88))
  {
    return playeroverlap_removeFinishedItem(a2, a1);
  }

  return result;
}

double playeroverlap_CreatePlaybackItemFromAsset_cold_1()
{
  v1 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840], v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v9 = OUTLINED_FUNCTION_103_0(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_77_0(v9))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_CreatePlaybackItemFromAsset");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v0, v16);
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420(v17, v18, v19, v20, v21);
}

void FigRateMinderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRateMinderCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  *(a1 + 16) = 0;
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

uint64_t FigCaptionRendererTestingSimple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_77(a1, a2, a3, a4, a5, a6, a7, a8, v11, cf);
  if (v8 || (v8 = FigCaptionRendererSessionSetMasterClock(cfa), v8) || (FigCaptionRendererSessionSetRate(cfa), v8))
  {
    v9 = v8;
  }

  else if (FigCaptionRendererSessionGetRate(cfa) == 2.5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294954516;
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v9;
}

void FigCaptionRendererTestingSetupLegible(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  fcrTestingSetup(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_79();

    FigCaptionRendererSessionSetLegibleOutputDevice(v13);
  }
}

void fcrTestingSetup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (!OUTLINED_FUNCTION_1_77(a1, a2, a3, a4, a5, a6, a7, a8, v22, v24))
  {
    if (FigCaptionRendererSessionGetIsMACacheReady(v25))
    {
      goto LABEL_20;
    }

    v15 = 0;
    do
    {
      v16 = v15;
      usleep(0x186A0u);
      ++v15;
      if (FigCaptionRendererSessionGetIsMACacheReady(v25))
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 >= 0x1D;
      }
    }

    while (!v17);
    if (v16 < 0x1D)
    {
LABEL_20:
      if (!FigCaptionRendererSessionClear(v25) && !FigCaptionRendererSessionSetLayoutContext_Viewport(v25) && !FigCaptionRendererSessionSetLayoutContext_VideoSize(v25, a11, a12) && !FigCaptionRendererSessionSetLayoutContext_Gravity(v25, 0, v18, v19) && !FigCaptionRendererSessionSetLayoutContext_Overscan(v25, 0, v20, v21))
      {
        *a1 = v25;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v25, v26);
    }
  }
}

void FigCaptionRendererTestingSetupCGContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  fcrTestingSetup(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_79();

    FigCaptionRendererSessionSetCGContextDevice(v13);
  }
}

void FigCaptionRendererTestingSetupCALayer(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  fcrTestingSetup(a2, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!v14 && !FigCaptionRendererSessionSetCALayerDevice(*a2, a1) && !FigCaptionRendererSessionSetMasterClock(*a2))
  {
    v15 = *a2;

    FigCaptionRendererSessionStart(v15);
  }
}

uint64_t FigCaptionRendererTestingGetSampleWithLayout(void *a1, uint64_t a2, void *a3)
{
  v8 = 0;
  cf = 0;
  updated = FigCaptionRendererLayoutContextCreate(&cf);
  if (updated || (updated = FigCaptionRendererSessionSetCaptionSample(a1), updated) || (updated = FigCaptionRendererSessionUpdateLegibleOutputContext(a1, cf), updated))
  {
    SubtitleSample = updated;
  }

  else
  {
    SubtitleSample = FigCaptionRendererLayoutContextGetSubtitleSample(cf, &v8);
    if (!SubtitleSample)
    {
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return SubtitleSample;
}

uint64_t FigCaptionRendererTestingUpdateCGContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCaptionRendererSessionSetCaptionSample(a1);
  if (!result)
  {

    return FigCaptionRendererSessionUpdateCGContext(a1, a3);
  }

  return result;
}

uint64_t FigCaptionRendererTestingSetPlayer(uint64_t a1, CFTypeRef *a2)
{
  result = FigPlayerFileCreate(*MEMORY[0x1E695E480], a2);
  if (!result)
  {
    v5 = *a2;

    return FigCaptionRendererSessionSetPlayer(a1, v5);
  }

  return result;
}

uint64_t FigCoreTextSubtitleRendererTestingSetup(void *a1)
{
  v3 = 0;
  result = FigCoreTextSubtitleRendererCreate(*MEMORY[0x1E695E480], &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

void digestSubtitleSampleDo_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  theDict = 0;
  v33 = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 56) * 0.15;
  cf = 0;
  if (!FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v1, &theDict, &v33 + 1, 0.0, 0.0, v3, v4))
  {
    v5 = theDict;
    if (theDict)
    {
      value = 0;
      ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"SubtitleOverHDRVideo", &value);
      v7 = *(v2 + 8);
      if (ValueIfPresent)
      {
        v8 = value == *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __digestSubtitleSampleDo_block_invoke;
      block[3] = &unk_1E7483B70;
      block[4] = v7;
      v31 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v5 = theDict;
    }

    FigSubtitleRendererDetachRegionInfo(v5, &cf, &v33);
    if (cf)
    {
      FigSubtitleRendererPatchRegionInfo(*(v2 + 232), cf);
      v10 = CFDictionaryGetValue(*(v2 + 232), *MEMORY[0x1E6960A90]);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v10);
      if (MutableCopy)
      {
        v12 = MutableCopy;
        Count = CFArrayGetCount(*(v2 + 240));
        if (Count >= 1)
        {
          v14 = Count;
          v15 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 240), v15);
            v17 = [ValueAtIndex getContentID];
            v18 = CFDictionaryGetValue(v12, v17);
            if (v18)
            {
              [ValueAtIndex setContent:v18];
              CFDictionaryRemoveValue(v12, v17);
              ++v15;
            }

            else
            {
              CFArrayRemoveValueAtIndex(*(v2 + 240), v15);
              CFArrayAppendValue(*(v2 + 248), ValueAtIndex);
              [MEMORY[0x1E6979518] begin];
              if (!pthread_main_np())
              {
                [MEMORY[0x1E6979518] activateBackground:1];
              }

              [MEMORY[0x1E6979518] setDisableActions:1];
              [ValueAtIndex setHidden:1];
              [MEMORY[0x1E6979518] commit];
              --v14;
            }
          }

          while (v15 < v14);
        }

        v19 = CFDictionaryGetCount(v12);
        if (v19)
        {
          v20 = v19;
          v21 = malloc_type_calloc(v19, 8uLL, 0xC0040B8AA526DuLL);
          v22 = malloc_type_calloc(v20, 8uLL, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(v10, v21, v22);
          if (v20 < 1)
          {
LABEL_25:
            free(v21);
            free(v22);
          }

          else
          {
            v23 = v22;
            while (1)
            {
              v24 = objc_alloc_init(FigSubtitleWebVTTRegionCALayer);
              if (!v24)
              {
                break;
              }

              v25 = v24;
              [*(v2 + 8) addSublayer:v24];
              CFArrayAppendValue(*(v2 + 240), v25);
              [(FigSubtitleWebVTTRegionCALayer *)v25 setRenderer:*(v2 + 208)];
              [(FigSubtitleWebVTTRegionCALayer *)v25 setViewport:FCRGetVideoPresentationBounds(*(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40))];
              v26 = *v23++;
              [(FigSubtitleWebVTTRegionCALayer *)v25 setContent:v26];
              if (!--v20)
              {
                goto LABEL_25;
              }
            }
          }
        }

        CFRelease(v12);
      }
    }

    else
    {
      v27 = CFArrayGetCount(*(v2 + 240));
      if (v27 >= 1)
      {
        v28 = v27 + 1;
        do
        {
          v29 = CFArrayGetValueAtIndex(*(v2 + 240), 0);
          CFArrayRemoveValueAtIndex(*(v2 + 240), 0);
          CFArrayAppendValue(*(v2 + 248), v29);
          [MEMORY[0x1E6979518] begin];
          if (!pthread_main_np())
          {
            [MEMORY[0x1E6979518] activateBackground:1];
          }

          [MEMORY[0x1E6979518] setDisableActions:1];
          [v29 setHidden:1];
          [MEMORY[0x1E6979518] commit];
          --v28;
        }

        while (v28 > 1);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      value = v2;
      v36 = 1;
      BYTE1(v36) = HIBYTE(v33);
      v37 = theDict;
      v38 = 0;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      value = v2;
      v36 = 1;
      BYTE1(v36) = HIBYTE(v33);
    }

    updateSubtitleDo(&value);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

double setupFCR_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double setupFCR_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double setupCoreTextRenderer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void setupCoreTextRenderer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setupCoreTextRenderer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setupCoreTextRenderer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __getTUCallCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTUCallCenterClass(void)_block_invoke") description:{@"FigShareAndAirPlayHelperLocal.m", 50, @"Unable to find class %s", "TUCallCenter"}];
  __break(1u);
}

void __getTUCallCenterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *TelephonyUtilitiesLibrary(void)") description:{@"FigShareAndAirPlayHelperLocal.m", 48, @"%s", *a1}];
  __break(1u);
}

uint64_t FigUserDataCreateActualKey(const void *a1, const void *a2, __CFString *a3, unint64_t a4, unint64_t a5)
{
  valuePtr = 0;
  theArray = 0;
  v9 = CFGetAllocator(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a4 | a5))
  {
    goto LABEL_32;
  }

  v11 = DerivedStorage;
  if (CFEqual(a2, @"comn"))
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFStringGetTypeID())
    {
      if (*(v11 + 16))
      {
        v13 = FigUserDataCopyOSTypeKeysFromCommonKey(a3, &theArray);
      }

      else
      {
        v13 = FigISOUserDataCopyOSTypeKeysFromCommonKey(a3, &theArray);
      }

      v16 = v13;
      if (v13)
      {
        goto LABEL_34;
      }

      if (theArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v18 = bswap32(ValueAtIndex);
        v19 = HIBYTE(v18);
        valuePtr = ValueAtIndex;
LABEL_15:
        v20 = CFStringCreateWithFormat(v9, 0, @"%c%c%c%c", v18, BYTE1(v18), BYTE2(v18), v19);
        goto LABEL_16;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_33:
      v16 = v15;
      goto LABEL_34;
    }

LABEL_32:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  if (*(v11 + 16))
  {
    if (CFEqual(a2, @"udta"))
    {
      v14 = CFGetTypeID(a3);
      if (v14 == CFStringGetTypeID())
      {
        if (!FigUserDataStringKeyToOSTypeKey(a3, &valuePtr))
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

      v23 = CFGetTypeID(a3);
      if (v23 != CFNumberGetTypeID())
      {
        goto LABEL_32;
      }

      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        v18 = bswap32(valuePtr);
        v19 = HIBYTE(v18);
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (*(v11 + 16))
    {
      goto LABEL_32;
    }
  }

  if (!CFEqual(a2, @"uiso"))
  {
    goto LABEL_32;
  }

  v22 = CFGetTypeID(a3);
  if (v22 == CFStringGetTypeID())
  {
    if (!FigISOUserDataStringKeyToOSTypeKey(a3, &valuePtr))
    {
      goto LABEL_10;
    }

LABEL_24:
    v20 = CFRetain(a3);
    goto LABEL_16;
  }

  v24 = CFGetTypeID(a3);
  if (v24 != CFNumberGetTypeID())
  {
    goto LABEL_32;
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  v20 = FigUserDataCFStringCreateFromOSType(v9, valuePtr);
LABEL_16:
  v21 = v20;
  if (a4)
  {
    *a4 = valuePtr;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = v20;
LABEL_34:
    v21 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v16;
}

void FigUserDataWriteItemAtom(const __CFString *a1, const void *a2, _BYTE *a3)
{
  v20 = 0;
  if (a3[64])
  {
    FigUserDataStringKeyToOSTypeKey(a1, &v20);
  }

  else
  {
    FigISOUserDataStringKeyToOSTypeKey(a1, &v20);
  }

  v6 = CFGetTypeID(a2);
  if (v6 == CFDictionaryGetTypeID())
  {
    if (!FigAtomWriterBeginAtom())
    {
      v7 = a3 + 8;
      if (a3[64])
      {
        v8 = FigQTUserDataWriteItemData(v7, v20, a2);
      }

      else
      {
        v8 = FigISOUserDataWriteItemData(v7, v20, a2);
      }

      if (!v8 && !FigAtomWriterEndAtom())
      {
        *a3 = 1;
      }
    }
  }

  else if (CFArrayGetCount(a2) >= 1)
  {
    v9 = 0;
    v10 = 0;
    Mutable = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
      if (ValueAtIndex)
      {
        v15 = ValueAtIndex;
        if (HIBYTE(v20) == 169)
        {
          if (!v9 && FigAtomWriterBeginAtom())
          {
            goto LABEL_35;
          }

          v16 = a3 + 8;
          if (a3[64] ? FigQTUserDataWriteItemData(v16, v20, v15) : FigISOUserDataWriteItemData(v16, v20, v15))
          {
            goto LABEL_35;
          }

          v9 = 1;
          *a3 = 1;
        }

        else
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v12, 0, v13);
          }

          CFArrayAppendValue(Mutable, v15);
        }
      }

      ++v10;
    }

    while (v10 < CFArrayGetCount(a2));
    if (v9 && FigAtomWriterEndAtom())
    {
LABEL_35:
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      if (!Mutable)
      {
        return;
      }

      if (CFArrayGetCount(Mutable) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = CFArrayGetValueAtIndex(Mutable, v18);
          FigUserDataWriteItemAtom(a1, v19, a3);
          ++v18;
        }

        while (v18 < CFArrayGetCount(Mutable));
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t FigQTUserDataWriteItemData(uint64_t a1, unsigned int a2, CFDictionaryRef theDict)
{
  valuePtr = 0x7FFF;
  cf = 0;
  theData = 0;
  Value = CFDictionaryGetValue(theDict, @"value");
  if (Value)
  {
    v6 = CFRetain(Value);
  }

  else
  {
    v6 = 0;
  }

  v7 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
  v8 = CFDictionaryGetValue(theDict, @"dataType");
  FigMetadataGetCoreMediaDataType(v7, v8, 0);
  v9 = MEMORY[0x1E695E480];
  if (a2 != -1453039239 || !v6)
  {
    if (HIBYTE(a2) == 169)
    {
      goto LABEL_12;
    }

    if (FigUserDataWeKnowIsISOText(a2))
    {
      v25 = CFDictionaryGetValue(theDict, @"locale");
      if (FigCFEqual())
      {
        v26 = 268435712;
      }

      else
      {
        v26 = 134217984;
      }

      FigISOUserDataCreateItemDataFromText(*v9, v6, v26, v25, &theData);
      if (appended)
      {
        goto LABEL_38;
      }

      ExternalRepresentation = theData;
      if (!theData)
      {
LABEL_53:
        v22 = 0;
        v24 = 0;
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 1851878757)
    {
      v27 = *v9;
      v28 = v6;
      v29 = 0;
    }

    else
    {
      if (a2 != 1952540515)
      {
        TypeID = CFDataGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
          goto LABEL_38;
        }

        if (v6)
        {
          ExternalRepresentation = CFRetain(v6);
        }

        else
        {
          ExternalRepresentation = 0;
        }

        goto LABEL_50;
      }

      v27 = *v9;
      v28 = v6;
      v29 = 1536;
    }

    ExternalRepresentation = CFStringCreateExternalRepresentation(v27, v28, v29, 0);
LABEL_50:
    theData = ExternalRepresentation;
    if (!ExternalRepresentation)
    {
      goto LABEL_53;
    }

LABEL_51:
    CFDataGetLength(ExternalRepresentation);
    if (!CFDataGetBytePtr(theData))
    {
      goto LABEL_53;
    }

    appended = FigAtomWriterAppendData();
    if (!appended)
    {
      goto LABEL_53;
    }

LABEL_38:
    v24 = appended;
    v22 = 0;
LABEL_54:
    v12 = v6;
    goto LABEL_55;
  }

  v10 = CFGetTypeID(v6);
  if (v10 == CFDateGetTypeID())
  {
    appended = FigMetadataCopyISO8601GMTStringFromDate(v6, &cf);
    if (!appended)
    {
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CFRelease(v6);
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_12:
  v12 = v6;
LABEL_13:
  v13 = CFDictionaryGetValue(theDict, @"locale");
  v14 = CFDictionaryGetValue(theDict, @"languageCode");
  if (v12 && (v15 = v14, v16 = CFGetTypeID(v12), v16 == CFStringGetTypeID()))
  {
    if ((!v15 || !CFNumberGetValue(v15, kCFNumberSInt16Type, &valuePtr)) && v13)
    {
      valuePtr = FigMetadataGetPackedISO639_2TFromLocale(v13);
    }

    v17 = FigCFEqual() == 0;
    v19 = valuePtr < 0x400u || valuePtr == 0x7FFF;
    v20 = v17 || v19;
    if (v17 || v19)
    {
      BytesFromCFStringAndMovieLangCode = FigCreateBytesFromCFStringAndMovieLangCode();
    }

    else
    {
      BytesFromCFStringAndMovieLangCode = FigCreateBytesFromCFString();
    }

    v22 = BytesFromCFStringAndMovieLangCode;
    v23 = FigAtomWriterAppendData();
    if (!v23)
    {
      if (v20 || (v23 = FigAtomWriterAppendData(), !v23))
      {
        v23 = FigAtomWriterAppendData();
      }
    }

    v24 = v23;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, 0);
    v24 = v33;
    v22 = 0;
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v22)
  {
    CFAllocatorDeallocate(*v9, v22);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v24;
}

__CFData *FigISOUserDataWriteItemData(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  cf = 0;
  *theData = 0;
  Value = CFDictionaryGetValue(theDict, @"value");
  if (Value && (v6 = CFRetain(Value)) != 0)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFDateGetTypeID())
    {
      v9 = FigMetadataCopyISO8601GMTStringFromDate(v7, &cf);
      if (v9)
      {
        v20 = v9;
        v10 = v7;
        goto LABEL_78;
      }

      v10 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CFRelease(v7);
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  IsISOText = FigISOUserDataWeKnowIsISOText(a2);
  v12 = MEMORY[0x1E695E480];
  if (!IsISOText)
  {
    if (a2 == 1684108389)
    {
      if (!v10)
      {
        goto LABEL_85;
      }

      v40 = CFGetTypeID(v10);
      if (v40 != CFStringGetTypeID())
      {
        goto LABEL_85;
      }

      goto LABEL_64;
    }

    if (a2 == 2037543523)
    {
      *&bytes[4] = 0;
      *bytes = 0;
      if (v10 && CFNumberGetValue(v10, kCFNumberSInt16Type, &bytes[4]))
      {
        v31 = *v12;
        *&bytes[4] = bswap32(*&bytes[4]) >> 16;
        Mutable = CFDataCreateMutable(v31, 0);
        v20 = Mutable;
        v33 = bytes;
        v34 = 6;
        goto LABEL_92;
      }

      goto LABEL_86;
    }

    if (a2 != 1953000802)
    {
      if (a2 != 1970430324)
      {
        if (a2 != 1952540515)
        {
          if (v10)
          {
            v21 = CFGetTypeID(v10);
            if (v21 == CFDataGetTypeID())
            {
              ExternalRepresentation = CFRetain(v10);
              goto LABEL_65;
            }
          }

LABEL_85:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v20 = v44;
          goto LABEL_78;
        }

LABEL_64:
        ExternalRepresentation = CFStringCreateExternalRepresentation(*v12, v10, 0x600u, 0);
LABEL_65:
        v20 = ExternalRepresentation;
        v27 = 0;
        v14 = 0;
        *theData = ExternalRepresentation;
        if (ExternalRepresentation)
        {
          goto LABEL_71;
        }

        goto LABEL_74;
      }

      *bytes = 0;
      LOWORD(valuePtr) = 0;
      if (v10)
      {
        v35 = *MEMORY[0x1E695E480];
        CFNumberGetValue(v10, kCFNumberSInt16Type, &valuePtr);
        bytes[7] = valuePtr;
        Mutable = CFDataCreateMutable(v35, 0);
        v20 = Mutable;
        v33 = bytes;
        v34 = 8;
        goto LABEL_92;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
      if (v50)
      {
        v20 = v50;
        v10 = 0;
        goto LABEL_78;
      }

LABEL_87:
      v20 = 0;
      goto LABEL_78;
    }

    *bytes = 0x6765706A00000000;
    if (v10)
    {
      if (theDict)
      {
        v36 = CFDictionaryGetValue(theDict, @"dataType");
        if (v36)
        {
          v37 = v36;
          v38 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
          if (!v38)
          {
            v38 = @"com.apple.quicktime.udta";
          }

          FigMetadataGetCoreMediaDataType(v38, v37, 0);
          if (FigCFEqual())
          {
            BytePtr = CFDataGetBytePtr(v10);
            if (CFDataGetLength(v10) < 4 || *BytePtr != 255 || BytePtr[1] != 216 || BytePtr[2] != 255)
            {
              goto LABEL_86;
            }
          }

          else if (!FigCFEqual())
          {
            goto LABEL_86;
          }

          v46 = CFDataGetBytePtr(v10);
          Length = CFDataGetLength(v10);
          if (v46)
          {
            v48 = Length;
            if (Length > 0)
            {
              v20 = CFDataCreateMutable(*v12, 0);
              CFDataAppendBytes(v20, bytes, 8);
              Mutable = v20;
              v33 = v46;
              v34 = v48;
LABEL_92:
              CFDataAppendBytes(Mutable, v33, v34);
              v27 = 0;
              v14 = 0;
              *theData = v20;
              if (v20)
              {
                goto LABEL_71;
              }

              goto LABEL_74;
            }
          }
        }
      }
    }

LABEL_86:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v20 = v45;
    if (v45)
    {
      goto LABEL_78;
    }

    goto LABEL_87;
  }

  v13 = CFDictionaryGetValue(theDict, @"locale");
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (a2 != 1819239273)
  {
    v23 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
    v24 = CFDictionaryGetValue(theDict, @"dataType");
    FigMetadataGetCoreMediaDataType(v23, v24, 0);
    if (FigCFEqual())
    {
      v25 = 268435712;
    }

    else
    {
      v25 = 134217984;
    }

    if (a2 == 1668313716)
    {
      if (v14 && (v26 = FigMetadataCopyLangCodeFromLocale(v14), *bytes = 0, v26))
      {
        v27 = v26;
        CFNumberGetValue(v26, kCFNumberSInt32Type, bytes);
        if (*bytes != 0x7FFF && *bytes != 138)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v27 = 0;
      }

      v29 = CFLocaleCreate(*v12, @"en");
      v30 = v29;
      if (v29)
      {
        CFRetain(v29);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v30)
      {
        CFRelease(v30);
        v14 = v30;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_68;
    }

    v27 = 0;
LABEL_68:
    FigISOUserDataCreateItemDataFromText(*v12, v10, v25, v14, theData);
    v20 = v41;
    goto LABEL_69;
  }

  valuePtr = 0;
  *bytes = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  if (v10 && (v15 = *v12, v16 = CFStringGetLength(v10), (BytesFromCFString = FigCreateBytesFromCFString()) != 0))
  {
    v18 = BytesFromCFString;
    if (v16 + 1 == valuePtr)
    {
      memset(&theData[8], 0, 12);
      sscanf(BytesFromCFString, "%f%f%f", &theData[16], &theData[12], &theData[8]);
      v58 = vrev32_s8(vmovn_s64(vcvtq_n_s64_f64(vcvtq_f64_f32(*&theData[12]), 0x10uLL)));
      v59 = bswap32(vcvtd_n_s64_f64(*&theData[8], 0x10uLL));
      *&bytes[4] = __rev16(FigMetadataGetPackedISO639_2TFromLocale(v14));
      v19 = CFDataCreateMutable(v15, 0);
      CFDataAppendBytes(v19, bytes, 20);
      CFDataAppendBytes(v19, "earth", 6);
      CFDataAppendBytes(v19, &v56, 1);
      v20 = 0;
      *theData = v19;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
      v20 = v28;
    }

    CFAllocatorDeallocate(v15, v18);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v20 = v49;
  }

  v27 = 0;
LABEL_69:
  if (!v20)
  {
    v20 = *theData;
    if (*theData)
    {
LABEL_71:
      CFDataGetLength(v20);
      if (CFDataGetBytePtr(*theData) && (appended = FigAtomWriterAppendData(), appended))
      {
        v20 = appended;
      }

      else
      {
        v20 = 0;
      }
    }
  }

LABEL_74:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_78:
  if (cf)
  {
    CFRelease(cf);
  }

  if (*theData)
  {
    CFRelease(*theData);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v20;
}

void FigISOUserDataCreateItemDataFromText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemDataFromText_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigISOUserDataCreateItemDataFromText_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigUserDataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigUserDataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigUserDataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerAddItem_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigUserDataSerializerContainsKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigUserDataSerializerContainsKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigUserDataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigUserDataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frlo_ensureRenderPipelinesForFormatDo_applier(void *key, uint64_t a2, CFMutableArrayRef *a3)
{
  Value = CFDictionaryGetValue(*(*a3 + 9), key);
  if (CMFormatDescriptionGetMediaType(a3[1]) == 1935832172 || CMFormatDescriptionGetMediaType(a3[1]) == 1952807028)
  {
    v5 = *(Value + 7);
    if (!v5)
    {
      goto LABEL_6;
    }

    if (*(a3 + 40))
    {
      CFRelease(v5);
      *(Value + 7) = 0;
LABEL_6:
      v7 = *a3;
      v6 = a3[1];
      v8 = *(Value + 8);
      v23 = *(Value + 3);
      v22 = v8;
      if (FigCreateCaptionRenderPipeline(v6, frlo_newSubtitleSampleArrivedCallback, v7, 0, 0, frlo_renderPipelineDidFlush, v7, 0, &v22, 0, Value + 7))
      {
        return;
      }
    }
  }

  if (*(*a3 + 81))
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  FigRenderPipelineGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v12(v11, @"DisplayNonForcedSubtitles", *v9);
  }

  v13 = a3[3];
  if (!v13 || (FigRenderPipelineGetFigBaseObject(), v15 = v14, (v16 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v16(v15, 0x1F0B55118, v13))
  {
    v17 = a3[2];
    if (!v17 || (FigRenderPipelineGetFigBaseObject(), v19 = v18, (v20 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v20(v19, 0x1F0B550D8, v17))
    {
      v21 = *(Value + 7);
      if (v21)
      {
        CFDictionaryAddValue(*(*a3 + 8), *(Value + 7), Value);
        CFArrayAppendValue(a3[4], v21);
      }
    }
  }
}

void frlo_convertSubtitleSampleIntoPixelBuffersDo(void *a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v47 = 0;
  theArray = 0;
  v46 = 0;
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_63;
  }

  Value = CFDictionaryGetValue(*(*a1 + 64), v2);
  v4 = MEMORY[0x1E695E480];
  if (!v1[2])
  {
    v17 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_43;
    }

LABEL_64:
    v33 = 0;
    v34 = 0;
    goto LABEL_48;
  }

  if (!*(*v1 + 81) && !*(v1 + 48))
  {
    goto LABEL_63;
  }

  if (FigCaptionRendererSessionClearForRLO(*(*v1 + 96)))
  {
    goto LABEL_63;
  }

  v5 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Viewport(v5))
  {
    goto LABEL_63;
  }

  v6 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_VideoSize(v6, Value[4], Value[5]))
  {
    goto LABEL_63;
  }

  v7 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Gravity(v7, 0, v8, v9))
  {
    goto LABEL_63;
  }

  v10 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Overscan(v10, 0, v11, v12))
  {
    goto LABEL_63;
  }

  if (FigSubtitleSampleCreatePropertyList(v1[2], *(v1 + 48), *(v1 + 49), &v46, *(v1 + 7), *(v1 + 8), *(v1 + 9), *(v1 + 10)))
  {
    goto LABEL_63;
  }

  cf[0] = 0;
  FigCaptionRendererLayoutContextCreate(cf);
  if (!cf[0])
  {
    goto LABEL_63;
  }

  v13 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetCaptionSample(v13))
  {
    goto LABEL_63;
  }

  v14 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionUpdateLegibleOutputContext(v14, cf[0]))
  {
    goto LABEL_63;
  }

  v45 = 0;
  if (FigCaptionRendererLayoutContextGetSubtitleSample(cf[0], &v45))
  {
    goto LABEL_63;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v15 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionCopyOutputNodeImagesAndPositions(v15, &theArray, &v47) || (!theArray ? (Count = 0) : (Count = CFArrayGetCount(theArray)), v17 = *v4, (v19 = CFArrayCreateMutable(*v4, Count, MEMORY[0x1E695E9C0])) == 0))
  {
LABEL_63:
    Mutable = 0;
    goto LABEL_64;
  }

  v41 = v1;
  v42 = v19;
  v40 = Value;
  if (Count)
  {
    v20 = 0;
    v21 = MEMORY[0x1E695E9E8];
    v43 = Count;
    v44 = v17;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      pixelBufferOut.value = 0;
      Width = CGImageGetWidth(ValueAtIndex);
      Height = CGImageGetHeight(ValueAtIndex);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v26 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E528], v21);
      if (v26)
      {
        v27 = v21;
        v21 = CFDictionaryCreate(v17, 0, 0, 0, MEMORY[0x1E695E9D8], v21);
        FigCFDictionarySetValue();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (CVPixelBufferCreate(v17, Width, Height, 0x42475241u, v26, &pixelBufferOut))
        {
          v32 = 0;
          v31 = 0;
          v30 = 0;
        }

        else if (pixelBufferOut.value)
        {
          CVPixelBufferLockBaseAddress(pixelBufferOut.value, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut.value);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut.value);
          v30 = 1;
          v31 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 1u);
          v53.size.width = Width;
          v53.size.height = Height;
          v53.origin.x = 0.0;
          v53.origin.y = 0.0;
          CGContextDrawImage(v31, v53, ValueAtIndex);
          CVPixelBufferUnlockBaseAddress(pixelBufferOut.value, 0);
          v32 = pixelBufferOut.value;
          pixelBufferOut.value = 0;
        }

        else
        {
          v32 = 0;
          v31 = 0;
          v30 = 1;
        }
      }

      else
      {
        v27 = v21;
        v32 = 0;
        v31 = 0;
        v30 = 1;
      }

      CGColorSpaceRelease(DeviceRGB);
      CGContextRelease(v31);
      CVPixelBufferRelease(pixelBufferOut.value);
      if (v26)
      {
        CFRelease(v26);
      }

      v17 = v44;
      if (v21)
      {
        CFRelease(v21);
      }

      if (!v30)
      {
        break;
      }

      if (v32)
      {
        CFArrayAppendValue(v42, v32);
        CVPixelBufferRelease(v32);
      }

      ++v20;
      v21 = v27;
      if (v43 == v20)
      {
        goto LABEL_42;
      }
    }

    v1 = v41;
    Mutable = v42;
    goto LABEL_64;
  }

LABEL_42:
  Value = v40;
  v1 = v41;
  Mutable = v42;
LABEL_43:
  pixelBufferOut = *(v1 + 1);
  v33 = CMTimeCopyAsDictionary(&pixelBufferOut, v17);
  pixelBufferOut.value = @"RenderedLegibleOutputKey";
  cf[0] = *Value;
  cf[1] = Mutable;
  *&pixelBufferOut.timescale = @"RenderedLegibleOutputPixelBuffers";
  pixelBufferOut.epoch = @"RenderedLegibleOutputPositions";
  v51 = @"FigTime";
  cf[2] = v47;
  cf[3] = v33;
  v34 = CFDictionaryCreate(v17, &pixelBufferOut, cf, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v34)
  {
    v35 = *(*v1 + 32);
    v36 = *(*v1 + 48);
    v37 = OUTLINED_FUNCTION_2_78();
    *v37 = CFRetain(v34);
    v37[1] = v35;
    if (v36)
    {
      v38 = CFRetain(v36);
    }

    else
    {
      v38 = 0;
    }

    v37[2] = v38;
    dispatch_async_f(*(*v1 + 24), v37, frlo_invokeCallbackAndDisposeContext);
  }

LABEL_48:
  if (*v1)
  {
    CFRelease(*v1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v39 = v1[2];
  if (v39)
  {
    CFRelease(v39);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  free(v1);
}

void frlo_renderPipelineDidFlushDo(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Value = CFDictionaryGetValue(*(*a1 + 64), v2);
    if (Value)
    {
      v4 = *Value;
      v6 = *(*a1 + 40);
      v5 = *(*a1 + 48);
      v7 = OUTLINED_FUNCTION_2_78();
      if (v4)
      {
        v8 = CFRetain(v4);
      }

      else
      {
        v8 = 0;
      }

      *v7 = v8;
      v7[1] = v6;
      if (v5)
      {
        v9 = CFRetain(v5);
      }

      else
      {
        v9 = 0;
      }

      v7[2] = v9;
      dispatch_async_f(*(*a1 + 24), v7, frlo_invokeFlushCallbackAndDisposeContext);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = a1[1];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void FigRenderedLegibleOutputManagerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderedLegibleOutputManagerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

BOOL frlo_rebuildFigRenderedLegibleOutputs_applier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

uint64_t FigiTunesMetadataSerializerContainsKey(const void *a1, __CFString *a2, const __CFString *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2 && a3)
  {
    v7 = DerivedStorage;
    v8 = CFGetAllocator(a1);
    FigiTunesMetadataCreateActualKey(v8, a2, a3, 0, &key);
    if (!v9 && *v7)
    {
      v10 = CFDictionaryContainsKey(*v7, key);
      goto LABEL_9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v10 = 0;
LABEL_9:
  if (key)
  {
    CFRelease(key);
  }

  return v10;
}

double FigiTunesMetadataWriteItemAtom(const __CFString *a1, CFTypeRef cf, uint64_t a3)
{
  v5 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  ValueAtIndex = cf;
  if (v5 != TypeID)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
  if (CFEqual(Value, @"itsk"))
  {
    LODWORD(result.location) = 0;
    FigiTunesMetadataShortStringKeyToOSTypeKey(a1, &result);
    if (FigAtomWriterBeginAtom())
    {
      return v9;
    }

    OUTLINED_FUNCTION_4_9();
    if (FigAtomWriterInitWithParent())
    {
      return v9;
    }

    goto LABEL_6;
  }

  if (!CFEqual(Value, @"itlk"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (FigAtomWriterBeginAtom())
  {
    return v9;
  }

  OUTLINED_FUNCTION_4_9();
  if (FigAtomWriterInitWithParent())
  {
    return v9;
  }

  if (CFStringHasPrefix(a1, @"com.apple.iTunes."))
  {
    result.location = 0;
    result.length = 0;
    Length = CFStringGetLength(a1);
    v25 = 0;
    v28.location = 0;
    v28.length = Length;
    if (CFStringFindWithOptions(a1, @".", v28, 4uLL, &result))
    {
      appended = FigAtomWriterBeginAtom();
      if (!appended)
      {
        appended = FigAtomWriterAppendVersionAndFlags();
        if (!appended)
        {
          strlen(FigiTunesMetadataWriteMeaningAndNameAtoms_longMeaning);
          appended = FigAtomWriterAppendData();
          if (!appended)
          {
            appended = FigAtomWriterEndAtom();
            if (!appended)
            {
              appended = FigAtomWriterBeginAtom();
              if (!appended)
              {
                appended = FigAtomWriterAppendVersionAndFlags();
                if (!appended)
                {
                  v14 = *MEMORY[0x1E695E480];
                  v29.location = result.location + 1;
                  v29.length = Length + ~result.location;
                  v15 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v29);
                  if (v15)
                  {
                    v16 = v15;
                    BytesFromCFString = FigCreateBytesFromCFString();
                    if (BytesFromCFString)
                    {
                      v18 = BytesFromCFString;
                      v19 = FigAtomWriterAppendData();
                      CFAllocatorDeallocate(v14, v18);
                      if (v19)
                      {
                        goto LABEL_30;
                      }

                      v20 = FigAtomWriterEndAtom();
                    }

                    else
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_1_11();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, DWORD2(v21), v22);
                    }

                    v19 = v20;
LABEL_30:
                    CFRelease(v16);
                    if (v19)
                    {
                      return v9;
                    }

                    goto LABEL_6;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_11();
                  v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, DWORD2(v21), v22);
                }
              }
            }
          }
        }
      }

      if (appended)
      {
        return v9;
      }
    }
  }

LABEL_6:
  if (v5 == TypeID)
  {
    if (FigiTunesMetadataWriteItemDataAtom(&v21, ValueAtIndex))
    {
      return v9;
    }

    goto LABEL_36;
  }

  if (CFArrayGetCount(cf) < 1)
  {
LABEL_36:
    FigAtomWriterEndAtom();
    return v9;
  }

  v10 = 0;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(cf, v10);
    if (v11)
    {
      if (FigiTunesMetadataWriteItemDataAtom(&v21, v11))
      {
        return v9;
      }
    }

    if (++v10 >= CFArrayGetCount(cf))
    {
      goto LABEL_36;
    }
  }
}

uint64_t FigiTunesMetadataWriteItemDataAtom(uint64_t a1, const __CFDictionary *a2)
{
  v34 = 0;
  v33 = 0;
  *v31 = 0;
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    return appended;
  }

  Value = CFDictionaryGetValue(a2, @"value");
  FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.itunes", a2, @"com.apple.itunes", &v33, v31);
  if (!v5)
  {
    if (v33 != 21 || !Value)
    {
      goto LABEL_20;
    }

    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = v31[0];
      if (!*v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = CFGetTypeID(Value);
      TypeID = CFBooleanGetTypeID();
      v9 = v31[0];
      if (v10 != TypeID || *v31 == 0)
      {
        goto LABEL_20;
      }
    }

    if (!FigMetadataDataLengthCanHoldValue(v9, 1, Value))
    {
      *v31 = 0;
    }

    goto LABEL_20;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    if (v6 == CFNumberGetTypeID() || v6 == CFBooleanGetTypeID())
    {
      v7 = 21;
      goto LABEL_13;
    }

LABEL_20:
    LOBYTE(v7) = v33;
    goto LABEL_21;
  }

  v7 = 1;
LABEL_13:
  v33 = v7;
LABEL_21:
  HIBYTE(v34) = v7;
  appended = FigAtomWriterAppendData();
  if (appended)
  {
    return appended;
  }

  appended = FigAtomWriterAppendData();
  if (appended)
  {
    return appended;
  }

  if (v33 > 0x19)
  {
    goto LABEL_39;
  }

  if (((1 << v33) & 0x2008606) == 0)
  {
    if (v33 == 21)
    {
      v19 = CFGetTypeID(Value);
      if (v19 == CFNumberGetTypeID() || (v20 = CFGetTypeID(Value), v20 == CFBooleanGetTypeID()))
      {
        ByteSize = *v31;
        if (!*v31)
        {
          ByteSize = CFNumberGetByteSize(Value);
        }

        v17 = 4294954709;
        switch(ByteSize)
        {
          case 1:
            v22 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v22, kCFNumberSInt8Type, v23))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 2:
            v27 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v27, kCFNumberSInt16Type, v28))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 4:
            v25 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v25, kCFNumberSInt32Type, v26))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 8:
            v29 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v29, kCFNumberSInt64Type, v30))
            {
              return FigAtomWriterEndAtom();
            }

LABEL_48:
            OUTLINED_FUNCTION_4_9();
            goto LABEL_41;
          default:
            return v17;
        }
      }

      return FigAtomWriterEndAtom();
    }

LABEL_39:
    v24 = CFGetTypeID(Value);
    if (v24 == CFDataGetTypeID())
    {
      CFDataGetLength(Value);
      CFDataGetBytePtr(Value);
LABEL_41:
      appended = FigAtomWriterAppendData();
      if (appended)
      {
        return appended;
      }
    }

    return FigAtomWriterEndAtom();
  }

  v13 = CFGetTypeID(Value);
  if (v13 != CFStringGetTypeID())
  {
    return FigAtomWriterEndAtom();
  }

  v14 = *MEMORY[0x1E695E480];
  BytesFromCFString = FigCreateBytesFromCFString();
  if (!BytesFromCFString)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v31[0], v32);
    return appended;
  }

  v16 = BytesFromCFString;
  v17 = FigAtomWriterAppendData();
  CFAllocatorDeallocate(v14, v16);
  if (!v17)
  {
    return FigAtomWriterEndAtom();
  }

  return v17;
}

double FigiTunesMetadataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigiTunesMetadataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigiTunesMetadataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateActualKey_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerCreateBBuf_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigAssetReaderCreateWithURLAndFormatReader(const __CFAllocator *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  v16 = 0;
  FigKTraceInit();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (!(a2 | a3) || !a6 || a2 && !FigCFURLIsLocalResource())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v12 = v14;
    goto LABEL_15;
  }

  if (a3)
  {
    v11 = FigAssetCreateWithFormatReader(a1, a3, 1, 0, &cf);
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_22:
    v12 = v11;
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = FigAssetCreateWithURL(a1, a2, 1, 0, &cf);
    if (v11)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v12 = FigAssetReaderCreateWithAsset(a1, cf, a5, &v16);
  if (v12)
  {
    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    *a6 = v16;
    v16 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t assetReader_ExtractAndRetainNextSampleBuffer(uint64_t a1, int a2, int a3, Boolean *a4, void *a5)
{
  Storage = remakerFamily_getStorage(a1);
  v193 = 0;
  v194 = 0;
  OUTLINED_FUNCTION_18_20();
  if (v13)
  {
    v14 = *(Storage + 20);
    emitter = fig_log_get_emitter();
    if (v14)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, *(Storage + 20), "<<<< FigAssetReader >>>>", 3224, v5);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigAssetReader >>>>", 3226, v5);
    }

    goto LABEL_36;
  }

  if (v12 != 3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v150, 4294955165, "<<<< FigAssetReader >>>>", 3229, v151);
LABEL_36:
    EarliestSequentialImageTime = TaggedBufferGroupSampleBuffer;
    goto LABEL_37;
  }

  ChannelByExtractionID = assetReader_getChannelByExtractionID(a1, a2);
  if (!ChannelByExtractionID)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, 4294954891, "<<<< FigAssetReader >>>>", 3231, v153);
    goto LABEL_36;
  }

  v18 = ChannelByExtractionID;
  v19 = *(ChannelByExtractionID + 72);
  v20 = MEMORY[0x1E6960C70];
  if (!v19)
  {
    *numSamplesa = *MEMORY[0x1E6960C70];
    *&v196.value = *MEMORY[0x1E6960C70];
    v36 = *(MEMORY[0x1E6960C70] + 16);
    v196.epoch = v36;
    LOBYTE(pixelBufferOut[0]) = 0;
    EarliestSequentialImageTime = *(v18 + 64);
    if (EarliestSequentialImageTime)
    {
LABEL_55:
      *(v18 + 64) = 0;
      goto LABEL_37;
    }

    while (1)
    {
      EarliestSequentialImageTime = *(Storage + 20);
      if (EarliestSequentialImageTime)
      {
        goto LABEL_37;
      }

      EarliestSequentialImageTime = FigVisualContextGetEarliestSequentialImageTime(*(v18 + 112), 0, &v196, pixelBufferOut);
      if (!EarliestSequentialImageTime)
      {
        break;
      }

LABEL_51:
      if (EarliestSequentialImageTime != -12813)
      {
        goto LABEL_37;
      }

      v24 = pixelBufferOut[0];
      if (!a3 || LOBYTE(pixelBufferOut[0]))
      {
        goto LABEL_87;
      }

      FigSemaphoreWaitRelative();
      EarliestSequentialImageTime = *(v18 + 64);
      if (EarliestSequentialImageTime)
      {
        goto LABEL_55;
      }
    }

    if (*(v18 + 160))
    {
      *&v192.duration.value = *numSamplesa;
      v192.duration.epoch = v36;
      v37 = *(v18 + 120);
      if (v37)
      {
        Count = CFArrayGetCount(v37);
        if (Count >= 2)
        {
          v39 = Count;
          v40 = 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v18 + 120), v40);
            if (!ValueAtIndex)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_120();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v146, 4294954891, "<<<< FigAssetReader >>>>", 3336, v147);
              goto LABEL_36;
            }

            v42 = FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v192, pixelBufferOut);
            if (v42)
            {
              EarliestSequentialImageTime = v42;
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_21_17();
            time2 = v192.duration;
            if (CMTimeCompare(&time1, &time2))
            {
              break;
            }

            if (v39 == ++v40)
            {
              goto LABEL_56;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
          EarliestSequentialImageTime = 0;
          goto LABEL_37;
        }
      }
    }

LABEL_56:
    v24 = pixelBufferOut[0];
    if (a5)
    {
      memset(&v192, 0, sizeof(v192));
      if (!*(v18 + 160))
      {
        v43 = *(v18 + 112);
        time2 = v196;
        v44 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v44)
        {
          EarliestSequentialImageTime = 4294954514;
          goto LABEL_37;
        }

        v45 = *MEMORY[0x1E695E480];
        time1 = time2;
        TaggedBufferGroupSampleBuffer = v44(v43, v45, &time1, 3, &v194, 0, 0);
        if (TaggedBufferGroupSampleBuffer)
        {
          goto LABEL_36;
        }

        v46 = v194;
        if (!v194)
        {
LABEL_67:
          v192.presentationTimeStamp = v196;
          *&v192.decodeTimeStamp.value = *numSamplesa;
          v192.decodeTimeStamp.epoch = v36;
          *&v192.duration.value = *numSamplesa;
          v192.duration.epoch = v36;
          if (v46)
          {
            OUTLINED_FUNCTION_9_32();
            TaggedBufferGroupSampleBuffer = CMSampleBufferCreateForImageBuffer(v49, v50, v51, v52, v53, v54, v55, v56);
            if (TaggedBufferGroupSampleBuffer)
            {
              goto LABEL_36;
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_32();
            TaggedBufferGroupSampleBuffer = CMSampleBufferCreate(v60, v61, v62, v63, v64, 0, 0, 1, &v192, 0, 0, &v193);
            if (TaggedBufferGroupSampleBuffer)
            {
              goto LABEL_36;
            }

            CMSetAttachment(v193, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
          }

          goto LABEL_87;
        }

        v48 = (v18 + 192);
        v47 = *(v18 + 192);
        if (v47)
        {
          if (CMVideoFormatDescriptionMatchesImageBuffer(v47, v194))
          {
LABEL_66:
            v46 = v194;
            goto LABEL_67;
          }

          if (*v48)
          {
            CFRelease(*v48);
            *v48 = 0;
          }
        }

        TaggedBufferGroupSampleBuffer = CMVideoFormatDescriptionCreateForImageBuffer(v45, v194, (v18 + 192));
        if (TaggedBufferGroupSampleBuffer)
        {
          goto LABEL_36;
        }

        goto LABEL_66;
      }

      OUTLINED_FUNCTION_21_17();
      TaggedBufferGroupSampleBuffer = assetReader_createTaggedBufferGroupSampleBuffer(v18, &time1, &v193);
      if (TaggedBufferGroupSampleBuffer)
      {
        goto LABEL_36;
      }
    }

LABEL_87:
    v22 = 0;
LABEL_88:
    if (!a5)
    {
      goto LABEL_188;
    }

    goto LABEL_89;
  }

  EarliestSequentialImageTime = *(v18 + 64);
  if (!a3)
  {
    if (EarliestSequentialImageTime)
    {
      v22 = 0;
      goto LABEL_224;
    }

    EarliestSequentialImageTime = *(Storage + 20);
    if (!EarliestSequentialImageTime)
    {
      if (a4)
      {
        if (*(v18 + 160))
        {
          v57 = assetReader_outputBufferQueuesAtEndOfData(*(v18 + 128));
        }

        else
        {
          v57 = CMBufferQueueIsAtEndOfData(v19);
        }

        v24 = v57;
        if (!a5)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v24 = 0;
        if (!a5)
        {
          goto LABEL_202;
        }
      }

      if (!*(v18 + 160))
      {
        v22 = 0;
        v193 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v18 + 72));
        goto LABEL_89;
      }

      v138 = assetReader_outputBufferQueuesIfDataReady(*(v18 + 128), (v18 + 164));
      if (v138)
      {
        OUTLINED_FUNCTION_11_31(v138, v139, v140, v141, v142, v143, v144, v145, sampleTimingArray, v157, sampleSizeArray, v160, v161, v162, v163, v164, v166, v168, v170, v172, v174, v176, v177, cf, v180, v182, group, poolOut, numSamples, numSamples_8, *&v192.duration.value, v192.duration.epoch);
      }

LABEL_202:
      v22 = 0;
      if (!a5)
      {
        goto LABEL_188;
      }

LABEL_89:
      if (!*(v18 + 28))
      {
        goto LABEL_188;
      }

      v65 = v193;
      if (!v193)
      {
        goto LABEL_188;
      }

      v193 = 0;
      blockBufferOut = 0;
      pixelBufferOut[0] = 0;
      sizeArrayEntriesNeededOut = 0;
      timingArrayEntriesNeededOut = 0;
      v198 = 0;
      v199 = 0;
      v175 = *v20;
      *&v192.duration.value = *v20;
      v173 = *(v20 + 2);
      v192.duration.epoch = v173;
      v66 = CMSampleBufferGetNumSamples(v65);
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v65, 0, 0, &timingArrayEntriesNeededOut);
      v68 = v65;
      if (SampleTimingInfoArray)
      {
        EarliestSequentialImageTime = SampleTimingInfoArray;
        if (SampleTimingInfoArray != -12736)
        {
          v71 = 0;
          v72 = 0;
          SampleBufferProcessor = 0;
          v69 = 0;
          goto LABEL_175;
        }
      }

      numSamplesb = v66;
      if (timingArrayEntriesNeededOut < 1)
      {
        v69 = 0;
      }

      else
      {
        v69 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
        if (!v69)
        {
          goto LABEL_126;
        }

        v70 = CMSampleBufferGetSampleTimingInfoArray(v65, timingArrayEntriesNeededOut, v69, 0);
        if (v70)
        {
          goto LABEL_127;
        }
      }

      if (*(v18 + 160))
      {
        groupa = CMSampleBufferGetTaggedBufferGroup(v65);
        CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(groupa, 0);
      }

      else
      {
        CVPixelBufferAtIndex = CMSampleBufferGetImageBuffer(v65);
        groupa = 0;
      }

      DataBuffer = CMSampleBufferGetDataBuffer(v68);
      if (CVPixelBufferAtIndex)
      {
        if (*(v18 + 16))
        {
          cfa = FigCFWeakReferenceHolderCopyReferencedObject();
          if (cfa)
          {
            v167 = CVPixelBufferAtIndex;
            v169 = v68;
            poolOuta = (v18 + 32);
            v183 = a4;
            v171 = v69;
            if (*(v18 + 32))
            {
              goto LABEL_106;
            }

            v92 = cfa[29];
            if (v92)
            {
              SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v92);
              if (!SampleBufferProcessor)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_3();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
                EarliestSequentialImageTime = v154;
                v71 = 0;
                goto LABEL_174;
              }

              CFGetAllocator(cfa);
              FigSampleBufferProcessorGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v93 = OUTLINED_FUNCTION_400_0();
                v94(v93);
              }
            }

            if (cfa[7])
            {
              if (*poolOuta)
              {
                goto LABEL_106;
              }

              CFGetAllocator(cfa);
              FigRenderPipelineGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v95 = OUTLINED_FUNCTION_400_0();
                v96(v95);
              }
            }

            if (*poolOuta)
            {
LABEL_106:
              v76 = (v18 + 40);
              if (*(v18 + 40) || (v77 = CFGetAllocator(cfa), PixelBuffer = VTPixelTransferSessionCreate(v77, (v18 + 40)), !PixelBuffer))
              {
                v79 = CFGetAllocator(v167);
                PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v79, *poolOuta, pixelBufferOut);
                if (!PixelBuffer)
                {
                  CVBufferPropagateAttachments(v167, pixelBufferOut[0]);
                  PixelBuffer = VTPixelTransferSessionTransferImage(*v76, v167, pixelBufferOut[0]);
                  if (!PixelBuffer)
                  {
                    v81 = (v18 + 48);
                    v80 = *(v18 + 48);
                    if (v80)
                    {
                      if (CMVideoFormatDescriptionMatchesImageBuffer(v80, pixelBufferOut[0]))
                      {
LABEL_115:
                        if (*(v18 + 160))
                        {
                          v82 = *(v18 + 152);
                          if (v82)
                          {
                            v83 = CFArrayGetCount(v82);
                          }

                          else
                          {
                            v83 = 0;
                          }

                          v181 = *MEMORY[0x1E695E480];
                          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v83, MEMORY[0x1E695E9C0]);
                          SampleBufferProcessor = Mutable;
                          if (Mutable)
                          {
                            CFArrayAppendValue(Mutable, pixelBufferOut[0]);
                            if (v83 >= 2)
                            {
                              v124 = 1;
                              do
                              {
                                if (pixelBufferOut[0])
                                {
                                  CFRelease(pixelBufferOut[0]);
                                  pixelBufferOut[0] = 0;
                                }

                                v125 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(groupa, v124);
                                v126 = CFGetAllocator(v125);
                                v127 = CVPixelBufferPoolCreatePixelBuffer(v126, *poolOuta, pixelBufferOut);
                                if (v127)
                                {
                                  goto LABEL_228;
                                }

                                CVBufferPropagateAttachments(v125, pixelBufferOut[0]);
                                v127 = VTPixelTransferSessionTransferImage(*v76, v125, pixelBufferOut[0]);
                                if (v127)
                                {
                                  goto LABEL_228;
                                }

                                CFArrayAppendValue(SampleBufferProcessor, pixelBufferOut[0]);
                              }

                              while (v83 != ++v124);
                            }

                            v127 = MEMORY[0x19A8D33F0](v181, *(v18 + 152), SampleBufferProcessor, &v198);
                            if (!v127)
                            {
                              memset(&time1, 0, sizeof(time1));
                              v68 = v169;
                              CMSampleBufferGetOutputPresentationTimeStamp(&time1, v169);
                              v196 = time1;
                              *&time2.value = v175;
                              time2.epoch = v173;
                              v128 = FigSampleBufferCreateForTaggedBufferGroup();
                              v71 = 0;
                              v122 = numSamplesb;
                              if (v128)
                              {
                                EarliestSequentialImageTime = v128;
LABEL_172:
                                a4 = v183;
LABEL_173:
                                v69 = v171;
LABEL_174:
                                v72 = cfa;
                                goto LABEL_175;
                              }

LABEL_167:
                              v129 = v68;
                              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v68, 0);
                              if (SampleAttachmentsArray)
                              {
                                v131 = SampleAttachmentsArray;
                                v132 = CMSampleBufferGetSampleAttachmentsArray(v199, 1u);
                                if (v122 >= 1)
                                {
                                  v133 = v132;
                                  v134 = 0;
                                  do
                                  {
                                    v135 = CFArrayGetValueAtIndex(v131, v134);
                                    v136 = CFArrayGetValueAtIndex(v133, v134);
                                    CFDictionaryApplyFunction(v135, assetReader_addValueToDictionary, v136);
                                    ++v134;
                                  }

                                  while (numSamplesb != v134);
                                }
                              }

                              v68 = v129;
                              CMPropagateAttachments(v129, v199);
                              CMSampleBufferGetOutputPresentationTimeStamp(&v192.duration, v129);
                              time1 = v192.duration;
                              CMSampleBufferSetOutputPresentationTimeStamp(v199, &time1);
                              EarliestSequentialImageTime = 0;
                              v193 = v199;
                              v199 = 0;
                              goto LABEL_172;
                            }
                          }

                          else
                          {
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_0_4();
                            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
                          }

LABEL_228:
                          EarliestSequentialImageTime = v127;
                          v71 = 0;
                          a4 = v183;
                          v68 = v169;
                          goto LABEL_173;
                        }

                        v68 = v169;
                        CFGetAllocator(v169);
                        OUTLINED_FUNCTION_9_32();
                        v113 = CMSampleBufferCreateForImageBuffer(v106, v107, v108, v109, v110, v111, v69, v112);
                        v71 = 0;
                        if (v113)
                        {
                          EarliestSequentialImageTime = v113;
                          SampleBufferProcessor = 0;
                          a4 = v183;
                          goto LABEL_174;
                        }

                        SampleBufferProcessor = 0;
LABEL_155:
                        v122 = numSamplesb;
                        goto LABEL_167;
                      }

                      if (*v81)
                      {
                        CFRelease(*v81);
                        *v81 = 0;
                      }
                    }

                    PixelBuffer = CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], pixelBufferOut[0], (v18 + 48));
                    if (!PixelBuffer)
                    {
                      goto LABEL_115;
                    }
                  }
                }
              }

              EarliestSequentialImageTime = PixelBuffer;
              v71 = 0;
              SampleBufferProcessor = 0;
              v68 = v169;
              goto LABEL_174;
            }

            PixelFormatType = CVPixelBufferGetPixelFormatType(v167);
            CVPixelBufferGetWidth(v167);
            CVPixelBufferGetHeight(v167);
            IOSurface = CVPixelBufferGetIOSurface(v167);
            if (!*(v18 + 56))
            {
              CVPixelBufferGetAttributes();
            }

            MutableCopy = FigCFDictionaryCreateMutableCopy();
            if (!MutableCopy)
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
              v68 = v169;
              goto LABEL_236;
            }

            v99 = MutableCopy;
            Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]);
            if (Value)
            {
              v101 = Value;
              v102 = CFGetTypeID(Value);
              if (v102 != CFArrayGetTypeID())
              {
                goto LABEL_207;
              }

              v103 = CFArrayGetCount(v101);
              if (v103 < 1)
              {
                goto LABEL_207;
              }

              v104 = v103;
              v105 = 0;
              while (1)
              {
                LODWORD(time1.value) = 0;
                if (FigCFArrayGetInt32AtIndex())
                {
                  if (LODWORD(time1.value) == PixelFormatType)
                  {
                    break;
                  }
                }

                if (v104 == ++v105)
                {
                  goto LABEL_207;
                }
              }
            }

            if (FigCFDictionarySetInt32())
            {
              v148 = 0;
              a4 = v183;
              v68 = v169;
              v69 = v171;
              goto LABEL_214;
            }

LABEL_207:
            a4 = v183;
            v68 = v169;
            if ((!CFDictionaryGetValue(v99, *MEMORY[0x1E6966208]) || !CFDictionaryGetValue(v99, *MEMORY[0x1E69660B8])) && (FigCFDictionarySetInt32() || FigCFDictionarySetInt32()))
            {
              v148 = 0;
              v69 = v171;
            }

            else
            {
              if (!IOSurface)
              {
                v148 = v99;
                v69 = v171;
                goto LABEL_217;
              }

              time1.value = 0;
              v69 = v171;
              if (FigCreatePixelBufferAttributesWithIOSurfaceSupport())
              {
                v148 = 0;
              }

              else
              {
                CFRelease(v99);
                v99 = 0;
                v148 = time1.value;
              }
            }

LABEL_214:
            if (v99)
            {
              CFRelease(v99);
            }

LABEL_217:
            if (v148)
            {
              v149 = CFGetAllocator(cfa);
              EarliestSequentialImageTime = CVPixelBufferPoolCreate(v149, 0, v148, poolOuta);
              CFRelease(v148);
              if (EarliestSequentialImageTime)
              {
                goto LABEL_237;
              }

              goto LABEL_106;
            }

LABEL_236:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_3();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
            EarliestSequentialImageTime = v155;
LABEL_237:
            v71 = 0;
            SampleBufferProcessor = 0;
            goto LABEL_174;
          }
        }

LABEL_126:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_127:
        EarliestSequentialImageTime = v70;
LABEL_128:
        v71 = 0;
LABEL_129:
        v72 = 0;
        SampleBufferProcessor = 0;
        goto LABEL_175;
      }

      v84 = DataBuffer;
      if (DataBuffer)
      {
        v85 = CFGetAllocator(DataBuffer);
        v86 = v69;
        v87 = CFGetAllocator(v84);
        DataLength = CMBlockBufferGetDataLength(v84);
        v89 = v87;
        v69 = v86;
        v70 = CMBlockBufferCreateContiguous(v85, v84, v89, 0, 0, DataLength, 2u, &blockBufferOut);
        if (v70)
        {
          goto LABEL_127;
        }
      }

      v90 = CMSampleBufferGetSampleSizeArray(v68, 0, 0, &sizeArrayEntriesNeededOut);
      if (v90)
      {
        EarliestSequentialImageTime = v90;
        if (v90 != -12735)
        {
          goto LABEL_128;
        }
      }

      v183 = a4;
      if (sizeArrayEntriesNeededOut < 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = malloc_type_malloc(8 * sizeArrayEntriesNeededOut, 0x100004000313F17uLL);
        if (!v71)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v157, sampleSizeArray);
LABEL_231:
          EarliestSequentialImageTime = v91;
          goto LABEL_129;
        }

        v91 = CMSampleBufferGetSampleSizeArray(v68, sizeArrayEntriesNeededOut, v71, 0);
        if (v91)
        {
          goto LABEL_231;
        }
      }

      CFGetAllocator(v68);
      CMSampleBufferGetFormatDescription(v68);
      v158 = sizeArrayEntriesNeededOut;
      OUTLINED_FUNCTION_9_32();
      v121 = CMSampleBufferCreate(v114, v115, v116, v117, v118, v119, numSamplesb, v120, v69, v158, v71, &v199);
      v72 = 0;
      if (v121)
      {
        EarliestSequentialImageTime = v121;
        SampleBufferProcessor = 0;
LABEL_175:
        if (pixelBufferOut[0])
        {
          CFRelease(pixelBufferOut[0]);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        free(v69);
        free(v71);
        if (v199)
        {
          CFRelease(v199);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        if (SampleBufferProcessor)
        {
          CFRelease(SampleBufferProcessor);
        }

        if (v198)
        {
          CFRelease(v198);
        }

        CFRelease(v68);
        if (EarliestSequentialImageTime)
        {
          goto LABEL_192;
        }

LABEL_188:
        if (a5)
        {
          *a5 = v193;
          v193 = 0;
        }

        EarliestSequentialImageTime = 0;
        if (a4)
        {
          *a4 = v24;
        }

        goto LABEL_192;
      }

      v171 = v69;
      cfa = 0;
      SampleBufferProcessor = 0;
      goto LABEL_155;
    }

LABEL_37:
    v22 = 0;
    goto LABEL_192;
  }

  v22 = 0;
  if (EarliestSequentialImageTime)
  {
LABEL_224:
    *(v18 + 64) = 0;
    goto LABEL_192;
  }

  while (1)
  {
    EarliestSequentialImageTime = *(Storage + 20);
    if (EarliestSequentialImageTime)
    {
      break;
    }

    if (*(v18 + 160))
    {
      v23 = assetReader_outputBufferQueuesAtEndOfData(*(v18 + 128));
    }

    else
    {
      v23 = CMBufferQueueIsAtEndOfData(*(v18 + 72));
    }

    v24 = v23;
    if (v23)
    {
      goto LABEL_88;
    }

    if (a5)
    {
      if (v193)
      {
        CFRelease(v193);
        v193 = 0;
      }

      if (*(v18 + 160))
      {
        v27 = assetReader_outputBufferQueuesIfDataReady(*(v18 + 128), (v18 + 164));
        if (v27)
        {
          v35 = OUTLINED_FUNCTION_11_31(v27, v28, v29, v30, v31, v32, v33, v34, sampleTimingArray, v157, sampleSizeArray, v160, v161, v162, v163, v164, v166, v168, v170, v172, v174, v176, v177, cf, v180, v182, group, poolOut, numSamples, numSamples_8, *&v192.duration.value, v192.duration.epoch);
          if (v35)
          {
            EarliestSequentialImageTime = v35;
            break;
          }
        }
      }

      else
      {
        v193 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v18 + 72));
        if (v193)
        {
          if (v22)
          {
            CFRelease(v22);
          }

          if (!*(v18 + 16) || (v25 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_3();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, 4294955004, "<<<< FigAssetReader >>>>", 3268, v59);
            goto LABEL_36;
          }

          v22 = v25;
          if (CMSampleBufferGetNumSamples(v193) > 0 || remakerFamily_keepMarkerSbuf(a1, v22, v193))
          {
LABEL_77:
            v24 = 0;
            if (a5)
            {
              goto LABEL_89;
            }

            goto LABEL_188;
          }
        }
      }
    }

    else
    {
      Head = CMBufferQueueGetHead(*(v18 + 72));
      if (Head && CMSampleBufferDataIsReady(Head))
      {
        goto LABEL_77;
      }
    }

    FigSemaphoreWaitRelative();
    EarliestSequentialImageTime = *(v18 + 64);
    if (EarliestSequentialImageTime)
    {
      goto LABEL_224;
    }
  }

LABEL_192:
  if (v193)
  {
    CFRelease(v193);
  }

  if (v194)
  {
    CFRelease(v194);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return EarliestSequentialImageTime;
}

uint64_t assetReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions(const void *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  valuePtr = a2;
  Storage = remakerFamily_getStorage(a1);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v17 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  cf = CFDictionaryCreate(v17, &kFigAssetReaderSourceTrackArrayKey_TrackID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = CFArrayCreate(v17, &cf, 1, MEMORY[0x1E695E9C0]);
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
    goto LABEL_14;
  }

  if (!a3)
  {
    SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v31);
    if (!SourceASBDForTrackID)
    {
      *(&v31 + 1) = 0x96C70636DLL;
      LODWORD(v33) = 32;
      DWORD1(v32) = 1;
      DWORD2(v32) = 4 * HIDWORD(v32);
      LODWORD(v32) = 4 * HIDWORD(v32);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v19 = a3[1];
  v31 = *a3;
  v32 = v19;
  v33 = *(a3 + 4);
  if (*&v31 != 0.0 && HIDWORD(v32))
  {
    goto LABEL_12;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v26);
  if (SourceASBDForTrackID)
  {
LABEL_14:
    v22 = SourceASBDForTrackID;
    goto LABEL_16;
  }

  if (*&v31 == 0.0)
  {
    *&v31 = v26;
  }

  if (!HIDWORD(v32))
  {
    HIDWORD(v32) = HIDWORD(v27);
  }

LABEL_12:
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v21)
  {
    SourceASBDForTrackID = v21(a1, v18, &v31, a4, a5, a6, a7, a8, a9);
    goto LABEL_14;
  }

  v22 = 4294954514;
LABEL_16:
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v22;
}

uint64_t assetReader_EnableCaptionExtraction(const void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  Storage = remakerFamily_getStorage(a1);
  v42 = 0;
  v41 = 0;
  cf = 0;
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
    goto LABEL_27;
  }

  v9 = Storage;
  v10 = *(Storage + 72);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v11)
  {
LABEL_22:
    v33 = 4294954514;
    goto LABEL_23;
  }

  v12 = v11(v10, a2, &cf);
  if (v12)
  {
LABEL_27:
    v33 = v12;
    goto LABEL_23;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    goto LABEL_22;
  }

  v13 = OUTLINED_FUNCTION_173_0();
  v12 = v14(v13);
  if (v12)
  {
    goto LABEL_27;
  }

  v12 = remakerFamily_createChannel(a1, a2, v41, &v42);
  if (v12)
  {
    goto LABEL_27;
  }

  v12 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v42, a3);
  if (v12)
  {
    goto LABEL_27;
  }

  v15 = v42;
  *(v42 + 50) = 1;
  *(*(v15 + 152) + 28) = 0;
  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v16 = OUTLINED_FUNCTION_173_0();
  v12 = CMBufferQueueCreate(v16, v17, v18, v19);
  if (v12)
  {
    goto LABEL_27;
  }

  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v20 = OUTLINED_FUNCTION_173_0();
  v12 = CMBufferQueueCreate(v20, v21, v22, v23);
  if (v12)
  {
    goto LABEL_27;
  }

  v24 = CFGetAllocator(a1);
  FigRenderPipelineCreateForBufferQueue(v24, *(v42 + 248), 0, (v42 + 56));
  if (v12)
  {
    goto LABEL_27;
  }

  v12 = assetReader_ensureRemakerQueue(a1);
  if (v12)
  {
    goto LABEL_27;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v12 = FigNotificationCenterAddWeakListeners();
  if (v12)
  {
    goto LABEL_27;
  }

  v25 = CFGetAllocator(a1);
  v26 = *(v42 + 248);
  v27 = *(*(v42 + 152) + 72);
  CMTimeMake(&v39, 2, 1);
  CMTimeMake(&v38, 1, 1);
  v28 = *(v9 + 32) ? 0 : 31;
  v12 = FigMediaProcessorCreateForCaptionConversionWithBufferQueue(v25, 1668310898, 1668310898, v26, v27, 0, &v39.value, 0, &v38, 0, v28, (v42 + 232));
  if (v12)
  {
    goto LABEL_27;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v12 = FigNotificationCenterAddWeakListeners();
  if (v12)
  {
    goto LABEL_27;
  }

  v29 = v42;
  v30 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v30);
  *(v29 + 300) = v31;
  assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v42 + 152));
  if (v12)
  {
    goto LABEL_27;
  }

  v32 = v42;
  *(v42 + 52) = 1;
  if (a4)
  {
    *a4 = *(v32 + 300);
  }

  remakerFamily_commitChannel(a1, v32);
  v33 = 0;
  v42 = 0;
LABEL_23:
  remakerFamily_discardChannel(a1, v42);
  if (cf)
  {
    CFRelease(cf);
  }

  return v33;
}

uint64_t assetReader_EnableVideoCompositionExtraction3(const void *a1, const __CFArray *a2, const __CFArray *a3, const void *a4, const void *a5, __CFString *a6, const void *a7, const void *a8, int a9, const __CFArray *a10, uint64_t a11, const void *a12, uint64_t a13, unsigned int a14, int a15, int a16, int a17, int a18, uint64_t a19, const __CFDictionary *a20, int a21, const __CFDictionary *a22, const __CFDictionary *a23, uint64_t a24, CFTypeRef cf, const __CFDictionary *a26, _DWORD *a27)
{
  v156 = a3;
  Storage = remakerFamily_getStorage(a1);
  v165 = 0;
  v166 = 0;
  propertyValueOut = 0;
  v164 = 0;
  if (*Storage != 1 || !a2 || !a7 || (a17 >= 1 ? (v36 = a18 <= 0) : (v36 = 1), v36 || (v157 = a13, (*(a13 + 12) & 0x1D) != 1) || (v37 = Storage, HIDWORD(v149) = a17, LODWORD(v150) = a18, v155 = a6, cf) && (v38 = CFGetTypeID(cf), v38 != CFDictionaryGetTypeID())))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_81;
  }

  v39 = *(v37 + 60);
  *(v37 + 60) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(v37 + 61);
  *(v37 + 61) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v41 = remakerFamily_createChannel(a1, 0, 1986618469, &v166);
  if (v41)
  {
    goto LABEL_81;
  }

  v152 = a7;
  v42 = v166;
  *(v166 + 48) = 0;
  *(v42 + 50) = 1;
  *(*(v42 + 152) + 28) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v154 = a26;
  FigCFDictionaryGetBooleanIfPresent();
  v43 = v166;
  v44 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v44);
  *(v43 + 300) = v45;
  v151 = cf;
  Value = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_OutputBufferDescription");
  v47 = MEMORY[0x1E695E480];
  v153 = a8;
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

  v48 = Value;
  Count = CFArrayGetCount(Value);
  v50 = CFArrayCreateMutable(*v47, 0, MEMORY[0x1E695E9C0]);
  if (!v50)
  {
LABEL_77:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_81:
    v120 = v41;
    Mutable = 0;
    goto LABEL_61;
  }

  Mutable = v50;
  if (Count >= 2)
  {
    v52 = CFArrayGetCount(v48);
    if (v52 >= 1)
    {
      v53 = v52;
      do
      {
        v54 = CFGetAllocator(a1);
        v55 = FigVisualContextCreateBasic(v54, 0, &v165);
        if (v55)
        {
          goto LABEL_79;
        }

        CFArrayAppendValue(Mutable, v165);
        if (v165)
        {
          CFRelease(v165);
          v165 = 0;
        }
      }

      while (--v53);
    }

    OUTLINED_FUNCTION_15_26();
    v56 = 1;
    *(v57 + 160) = 1;
    CFRetain(Mutable);
    OUTLINED_FUNCTION_15_26();
    *(v59 + 120) = v58;
    CFRetain(v48);
    OUTLINED_FUNCTION_15_26();
    *(v61 + 152) = v60;
    FirstValue = FigCFArrayGetFirstValue();
    v165 = CFRetain(FirstValue);
    goto LABEL_33;
  }

LABEL_31:
  v63 = CFGetAllocator(a1);
  v55 = FigVisualContextCreateBasic(v63, 0, &v165);
  if (v55)
  {
    goto LABEL_79;
  }

  CFArrayAppendValue(Mutable, v165);
  v56 = 0;
LABEL_33:
  v158 = Mutable;
  if (a21)
  {
    v64 = CFGetAllocator(a1);
    CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    OUTLINED_FUNCTION_15_26();
    v55 = CMBufferQueueCreate(v64, 0, v66, (v65 + 72));
    if (v55)
    {
      goto LABEL_79;
    }

    assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v166 + 152));
    if (v55)
    {
      goto LABEL_79;
    }

    v55 = remakerFamily_createRemakerVideoEncoderSpecification(a1, a22, &v164);
    if (v55)
    {
      goto LABEL_79;
    }

    CFGetAllocator(a1);
    if (v56)
    {
      OUTLINED_FUNCTION_10_31();
      CMTimeRangeFromTimeToTime(&v162, &start, &end);
      CMTimeMake(&start, 2, 1);
      v67 = CMTimeMake(&end, 1, 1);
      OUTLINED_FUNCTION_8_28(v67, v68, v69, v70, v71, v72, v73, v74, v124, v126, v128, v131, v132, v133, v134, v137, v140, v143, v146, v147, v148, v27, v149, v150, cf, v152, v153, a26, v155, v156, a13);
      v75 = OUTLINED_FUNCTION_14_26();
      FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(v75, v76, v77, v78, v79, v80, Mutable, v81, &v162.start.value, 0, 0, &start.value, 0, &end.value, v135, v138, v141, v144);
      if (v55)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v82 = v165;
      OUTLINED_FUNCTION_10_31();
      CMTimeRangeFromTimeToTime(&v162, &start, &end);
      OUTLINED_FUNCTION_15_26();
      v83 = Mutable;
      v85 = *(v84 + 72);
      CMTimeMake(&start, 2, 1);
      v86 = CMTimeMake(&end, 1, 1);
      OUTLINED_FUNCTION_8_28(v86, v87, v88, v89, v90, v91, v92, v93, v124, v126, v128, v131, v132, v133, v134, v137, v140, v143, v146, v147, v148, v27, v149, v150, cf, v152, v153, a26, v155, v156, a13);
      v130 = v85;
      Mutable = v83;
      v94 = OUTLINED_FUNCTION_14_26();
      v55 = FigMediaProcessorCreateForVideoCompression(v94, v95, v96, v97, v98, v99, 0, v82, v159, &v162.start.value, v130, &start.value, 0, &end.value, v136, v139, v142, v145);
      if (v55)
      {
        goto LABEL_79;
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v55 = FigNotificationCenterAddWeakListeners();
    if (!v55)
    {
      if (a23)
      {
        FigCFDictionaryGetInt32IfPresent();
        v100 = OUTLINED_FUNCTION_16_22();
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v100);
        VTSessionSetProperties(VTCompressionSession, a23);
      }

      v102 = OUTLINED_FUNCTION_16_22();
      if (FigMediaProcessorGetSampleBufferProcessor(v102))
      {
        v103 = *MEMORY[0x1E695E4D0];
        FigSampleBufferProcessorGetFigBaseObject();
        v105 = v104;
        v106 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v106)
        {
          v106(v105, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput", v103);
        }

        v107 = OUTLINED_FUNCTION_16_22();
        v108 = FigMediaProcessorGetVTCompressionSession(v107);
        v109 = *MEMORY[0x1E69838A8];
        v110 = CFGetAllocator(a1);
        v55 = VTSessionCopyProperty(v108, v109, v110, &propertyValueOut);
        if (v55)
        {
          goto LABEL_79;
        }

        if (*(v37 + 424) == 1)
        {
          v111 = OUTLINED_FUNCTION_16_22();
          v112 = FigMediaProcessorGetVTCompressionSession(v111);
          v55 = VTSessionSetProperty(v112, *MEMORY[0x1E6983708], v103);
          if (v55)
          {
            goto LABEL_79;
          }
        }

        v113 = propertyValueOut;
        if (*(v37 + 58))
        {
          v114 = OUTLINED_FUNCTION_16_22();
          v115 = FigMediaProcessorGetVTCompressionSession(v114);
          VTSessionSetProperty(v115, *MEMORY[0x1E69837A0], *(v37 + 58));
        }

        goto LABEL_52;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, v127, v129);
    }

LABEL_79:
    v120 = v55;
    goto LABEL_61;
  }

  v123 = v165;
  *(*(v166 + 152) + 112) = v165;
  CFRetain(v123);
  assetReaderTrack_setUpOutputVisualContextSemaphore(*(v166 + 152));
  if (v116)
  {
LABEL_72:
    v120 = v116;
    Mutable = v158;
    goto LABEL_61;
  }

  v113 = a19;
LABEL_52:
  v116 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v166, v154);
  if (v116)
  {
    goto LABEL_72;
  }

  v117 = a9;
  if (v154)
  {
    v118 = CFDictionaryGetValue(v154, @"AssetReader_FieldMode");
    v117 = a9;
  }

  else
  {
    v118 = 0;
  }

  *&v162.start.value = *v157;
  v162.start.epoch = *(v157 + 16);
  v116 = remakerFamily_finishVideoCompositionChannel(a1, v166, a2, v156, v155, v152, v153, v117, a10, a11, a12, &v162.start.value, a14, a15, a16, v118, a20, v151, v158, v113);
  if (v116)
  {
    goto LABEL_72;
  }

  if (v113)
  {
    v119 = CFRetain(v113);
  }

  else
  {
    v119 = 0;
  }

  Mutable = v158;
  v120 = 0;
  v121 = v166;
  *(*(v166 + 152) + 56) = v119;
  *a27 = *(v121 + 300);
  v166 = 0;
LABEL_61:
  remakerFamily_discardChannel(a1, v166);
  if (v165)
  {
    CFRelease(v165);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v120;
}

uint64_t assetReader_enableOriginalSampleExtractionFromTrackCommon(const void *a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  Storage = remakerFamily_getStorage(a1);
  v35 = 0;
  v34 = 0;
  cf = 0;
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, DWORD2(v31), v32);
    goto LABEL_29;
  }

  v11 = *(Storage + 72);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
LABEL_15:
    v19 = 4294954514;
    goto LABEL_16;
  }

  v13 = v12(v11, a2, &cf);
  if (v13)
  {
LABEL_29:
    v19 = v13;
    goto LABEL_16;
  }

  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_15;
  }

  v13 = v15(v14, 0, &v34);
  if (v13)
  {
    goto LABEL_29;
  }

  v13 = remakerFamily_createChannel(a1, a2, v34, &v35);
  if (v13)
  {
    goto LABEL_29;
  }

  if (v34 == 1936684398)
  {
    v16 = CFGetTypeID(a1);
    v13 = remakerFamily_copyFormatDescription(v16, cf, (v35 + 40));
    if (v13)
    {
      goto LABEL_29;
    }
  }

  v13 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v35, a3);
  if (v13)
  {
    goto LABEL_29;
  }

  v17 = v35;
  *(v35 + 50) = 1;
  v17 += 50;
  *(*(v17 + 102) + 28) = 0;
  *(v17 - 2) = 1;
  FigCFDictionaryGetBooleanIfPresent();
  if (!a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    v18 = v35;
    if ((BYTE12(v31) & 0x1D) == 1)
    {
      *(v35 + 344) = v32;
      *(v18 + 328) = v31;
      *(v18 + 49) = 1;
    }
  }

  if (FigCFDictionaryGetBooleanIfPresent() && *(v35 + 121))
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  FigCFDictionaryGetBooleanIfPresent();
  *(v35 + 51) = a4;
  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v21 = OUTLINED_FUNCTION_173_0();
  v13 = CMBufferQueueCreate(v21, v22, v23, v24);
  if (v13)
  {
    goto LABEL_29;
  }

  v25 = CFGetAllocator(a1);
  FigRenderPipelineCreateForBufferQueue(v25, *(*(v35 + 152) + 72), 0, (v35 + 56));
  if (v13)
  {
    goto LABEL_29;
  }

  v13 = assetReader_ensureRemakerQueue(a1);
  if (v13)
  {
    goto LABEL_29;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v13 = FigNotificationCenterAddWeakListeners();
  if (v13)
  {
    goto LABEL_29;
  }

  v26 = v35;
  v27 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v27);
  *(v26 + 300) = v28;
  assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v35 + 152));
  v19 = v29;
  if (!v29)
  {
    v30 = v35;
    *a5 = *(v35 + 300);
    remakerFamily_commitChannel(a1, v30);
    v35 = 0;
  }

LABEL_16:
  remakerFamily_discardChannel(a1, v35);
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

double assetReaderTrack_setUpOutputBufferQueueSemaphore(uint64_t a1)
{
  *(a1 + 80) = FigSemaphoreCreate();
  v41 = *MEMORY[0x1E6960C70];
  OUTLINED_FUNCTION_6_50();
  if (!CMBufferQueueInstallTrigger(v2, v3, a1, 7, v4, (a1 + 88)))
  {
    OUTLINED_FUNCTION_4_61(*(a1 + 72), v5, v6, v7, v8, v9, v10, v11, v41);
    if (!CMBufferQueueInstallTrigger(v13, v14, a1, 8, v15, (a1 + 96)))
    {
      if (*(a1 + 160))
      {
        v16 = *(a1 + 128);
        if (v16)
        {
          Count = CFArrayGetCount(v16);
          if (Count > 0)
          {
            v18 = Count;
            v19 = 8 * Count;
            v20 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            *(a1 + 136) = v20;
            if (v20)
            {
              v21 = malloc_type_malloc(v19, 0x2004093837F09uLL);
              *(a1 + 144) = v21;
              if (v21)
              {
                v22 = 0;
                v23 = 0;
                while (1)
                {
                  if (v23)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), v23);
                    if (!ValueAtIndex)
                    {
                      break;
                    }

                    v25 = ValueAtIndex;
                    OUTLINED_FUNCTION_6_50();
                    v30 = CMBufferQueueInstallTrigger(v27, v28, a1, 7, v29, (v26 + v22));
                    if (v30)
                    {
                      return result;
                    }

                    OUTLINED_FUNCTION_4_61(v30, v31, v32, v33, v34, v35, v36, v37, v42);
                    if (CMBufferQueueInstallTrigger(v25, v39, a1, 8, v40, (v38 + v22)))
                    {
                      return result;
                    }
                  }

                  else
                  {
                    **(a1 + 136) = *(a1 + 88);
                    **(a1 + 144) = *(a1 + 96);
                  }

                  ++v23;
                  v22 += 8;
                  if (v18 == v23)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
LABEL_16:
        CMBufferQueueInstallTriggerWithIntegerThreshold(*(a1 + 72), assetReaderTrack_defer_outputQueueBecameEmpty, a1, 10, 1, (a1 + 104));
      }
    }
  }

  return result;
}

void assetReaderTrack_defer_outputQueueBecameEmpty(void *a1)
{
  v2 = assetReaderTrack_copyRemaker(a1);
  Storage = remakerFamily_getStorage(v2);
  if (v2)
  {
    v4 = Storage;
    if ((*Storage - 7) >= 0xFFFFFFFC && !assetReader_ensureRemakerQueue(v2))
    {
      remakerFamily_safeDispatchAsync(v4[7], a1, assetReaderTrack_outputQueueBecameEmpty);
    }

    CFRelease(v2);
  }
}

double assetReaderTrack_setUpOutputVisualContextSemaphore(uint64_t a1)
{
  *(a1 + 80) = FigSemaphoreCreate();
  if (*(a1 + 160))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        while (CFArrayGetValueAtIndex(*(a1 + 120), v5))
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
          {
            return result;
          }

          OUTLINED_FUNCTION_7_39();
          v7 = OUTLINED_FUNCTION_400_0();
          if (v8(v7))
          {
            return result;
          }

          if (v4 == ++v5)
          {
            goto LABEL_12;
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v9 = *(a1 + 112);
    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      OUTLINED_FUNCTION_7_39();
      if (!v10(v9))
      {
LABEL_12:
        v11 = *(a1 + 112);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v12)
        {
          if (!v12(v11, assetReaderTrack_sourceNoMoreImages, a1))
          {
            v13 = *(a1 + 112);
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v14)
            {

              v14(v13, assetReaderTrack_defer_visualContextBecameEmpty, a1);
            }
          }
        }
      }
    }
  }

  return result;
}

void assetReaderTrack_defer_visualContextBecameEmpty(uint64_t a1, void *a2)
{
  v3 = assetReaderTrack_copyRemaker(a2);
  Storage = remakerFamily_getStorage(v3);
  if (v3)
  {
    v5 = Storage;
    OUTLINED_FUNCTION_18_20();
    if (!(!v7 & v6) && !assetReader_ensureRemakerQueue(v3))
    {
      remakerFamily_safeDispatchAsync(*(v5 + 56), a2, assetReaderTrack_visualContextBecameEmpty);
    }

    CFRelease(v3);
  }
}

const __CFArray *assetReader_outputBufferQueuesAtEndOfData(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        result = CMBufferQueueIsAtEndOfData(ValueAtIndex);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

const __CFArray *assetReader_outputBufferQueuesIfDataReady(const __CFArray *result, CMTime *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E6960C88];
  v15 = *(MEMORY[0x1E6960C88] + 8);
  if (result)
  {
    v3 = result;
    v4 = *(MEMORY[0x1E6960C88] + 16);
    v5 = *(MEMORY[0x1E6960C88] + 12);
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        CMBufferQueueGetFirstPresentationTimeStamp(&time1, ValueAtIndex);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
        if (CMBufferQueueIsEmpty(ValueAtIndex) || (flags & 1) == 0)
        {
          break;
        }

        if (v7)
        {
          OUTLINED_FUNCTION_13_22();
          v12.value = value;
          v12.timescale = timescale;
          v12.flags = flags;
          v12.epoch = epoch;
          if (CMTimeCompare(&time1, &v12))
          {
            break;
          }
        }

        else
        {
          v14 = value;
          v15 = timescale;
          v4 = epoch;
          v5 = flags;
        }

        if (Count == ++v7)
        {
          v7 = Count;
          break;
        }
      }
    }

    OUTLINED_FUNCTION_13_22();
    v12 = *a2;
    v11 = CMTimeCompare(&time1, &v12);
    result = 0;
    if (v7 == Count)
    {
      if (v11)
      {
        a2->value = v14;
        a2->timescale = v15;
        a2->flags = v5;
        a2->epoch = v4;
        return 1;
      }
    }
  }

  return result;
}

uint64_t assetReader_createTaggedBufferGroupSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  value = 0;
  v5 = *(a1 + 152);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (*(a1 + 72))
    {
      if (Count >= 1)
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), v9);
          if (!ValueAtIndex)
          {
            break;
          }

          v11 = CMBufferQueueDequeueIfDataReadyAndRetain(ValueAtIndex);
          v12 = v11;
          if (!v11)
          {
            goto LABEL_25;
          }

          CMSampleBufferGetPresentationTimeStamp(&v22, v11);
          *a2 = v22;
          if ((*(a2 + 12) & 1) == 0)
          {
            v12 = 0;
            goto LABEL_25;
          }

          ImageBuffer = CMSampleBufferGetImageBuffer(v12);
          value = ImageBuffer;
          if (!ImageBuffer)
          {
            break;
          }

          CFArrayAppendValue(Mutable, ImageBuffer);
          value = 0;
          CFRelease(v12);
          if (Count == ++v9)
          {
            goto LABEL_22;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (Count < 1)
    {
LABEL_22:
      v18 = OUTLINED_FUNCTION_400_0();
      v17 = MEMORY[0x19A8D33F0](v18);
      if (!v17)
      {
        v22 = *a2;
        OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
        v17 = FigSampleBufferCreateForTaggedBufferGroup();
      }

      goto LABEL_24;
    }

    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(*(a1 + 120), v14);
      *&v20.value = *a2;
      v20.epoch = *(a2 + 16);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v16)
      {
        v12 = 4294954514;
        goto LABEL_25;
      }

      v22 = v20;
      v17 = v16(v15, v7, &v22, 3, &value, 0, 0);
      if (v17)
      {
        goto LABEL_24;
      }

      if (!value)
      {
        break;
      }

      CFArrayAppendValue(Mutable, value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (Count == ++v14)
      {
        goto LABEL_22;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_24:
  v12 = v17;
LABEL_25:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

void FigAssetReaderCreateWithAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetReaderCreateWithAsset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetReaderCreateWithAsset_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetReaderCreateWithAsset_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_ensureRemakerQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_5(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_10(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_11(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a3 = v4;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableDecodedVideoExtractionFromTrack_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_EnableAudioMixdownExtraction_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRanges_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRangesFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRangesFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRangesFromTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_StartExtractionForTimeRangesFromTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL assetReader_StartExtractionForTimeRangesFromTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

double assetReaderTrack_dataBecameReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetReaderTrack_endOfDataReached_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetReaderTrack_outputQueueBecameEmpty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetReaderTrack_outputQueueBecameEmpty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetReaderTrack_sourceImageAvailable_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetReaderTrack_sourceNoMoreImages_cold_1(uint64_t a1, const void *a2)
{
  assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
  assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_EndOfDataReached");
  FigSemaphoreSignal();

  CFRelease(a2);
}

double assetReaderTrack_sourceNoMoreImages_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetReaderTrack_visualContextBecameEmpty_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_20();
  if (!(!v4 & v3))
  {
    *(*(a2 + 152) + 200) = 1;
    if (*(a2 + 356))
    {
      remakerFamily_startNextSegmentIfMultiPassComplete(a2);
    }
  }

  CFRelease(a2);
}

double assetReaderTrack_visualContextBecameEmpty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetReader_startExtractionForTimeRangeCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetReader_startExtractionForTimeRangeCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigQuickTimeMetadataCreateActualKey(const __CFAllocator *a1, __CFString *cf1, const void *ValueAtIndex, unint64_t a4, unint64_t a5)
{
  theArray = 0;
  if (!(a4 | a5))
  {
    goto LABEL_27;
  }

  v8 = cf1;
  if (!CFEqual(cf1, @"comn"))
  {
    if (!CFEqual(v8, @"mdta"))
    {
      goto LABEL_10;
    }

    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 == CFStringGetTypeID())
    {
      goto LABEL_10;
    }

LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_18;
  }

  v10 = CFGetTypeID(ValueAtIndex);
  if (v10 != CFStringGetTypeID())
  {
    goto LABEL_27;
  }

  v11 = FigQuickTimeMetadataCopyNativeKeysFromCommonKey(ValueAtIndex, &theArray);
  if (!v11)
  {
    if (!theArray || !CFArrayGetCount(theArray))
    {
LABEL_17:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_18;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v8 = @"mdta";
LABEL_10:
    if (!a5)
    {
      goto LABEL_13;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      CFDictionaryAddValue(Mutable, @"key", ValueAtIndex);
      CFDictionaryAddValue(v14, @"keyspace", v8);
      *a5 = v14;
LABEL_13:
      if (a4)
      {
        if (ValueAtIndex)
        {
          v15 = CFRetain(ValueAtIndex);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        *a4 = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_18:
  v16 = v11;
LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

double FigQuickTimeMetadataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigQuickTimeMetadataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigQuickTimeMetadataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerAddItem_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigQuickTimeMetadataSerializerContainsKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigQuickTimeMetadataSerializerContainsKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigQuickTimeMetadataSerializerContainsKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigQuickTimeMetadataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_8(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateBBuf_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double piqca_loadCAImageQueueSetEDRDeadline()
{
  v1 = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
  if (v1)
  {
    sCAImageQueueSetEDRDeadline = dlsym(v1, "CAImageQueueSetEDRDeadline");
    if (!sCAImageQueueSetEDRDeadline)
    {
      v3 = qword_1EAF170D8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 4294954486, "<<<< IQ-CA >>>>", 1910, v0);
    }
  }

  return result;
}

void piqca_syncMomentSourceCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = CACurrentMediaTime();
    v15 = *(DerivedStorage + 3080);
    v16 = *(DerivedStorage + 3088);
    v17 = *(DerivedStorage + 3096);
    v18 = *(a2 + 4);
    if (v18)
    {
      *(DerivedStorage + 2544) = mach_absolute_time();
      piqca_gmstats_dump(v4);
      v18 = *(a2 + 4);
    }

    if ((v18 & 3) != 0 || vabdd_f64(OUTLINED_FUNCTION_1_80(v6, v7, v8, v9, v10, v11, v12, v13, *&v29.value, v29.epoch), v17 + (v14 - v15) * v16) >= 0.005)
    {
      v29 = *(a2 + 40);
      Seconds = CMTimeGetSeconds(&v29);
      v28 = OUTLINED_FUNCTION_1_80(v20, v21, v22, v23, v24, v25, v26, v27, *&v29.value, v29.epoch);
      piqca_setImageQueueTiming(v4, Seconds, v28, *(a2 + 8));
    }

    CFRelease(v4);
  }
}

uint64_t piqca_requestRendererPreparationForPreroll(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 3200);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 4294951395;
  }

  piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(a1, 1, a2);
  return 0;
}

double piqca_createSlot(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23[24] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a4)
    {
      if (!FPSupport_CreateCASlot(*DerivedStorage, &v22))
      {
        v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
        if (v11)
        {
          v12 = v11;
          *v11 = a3;
          v11[1] = a2;
          v13 = CFGetAllocator(a1);
          if (FigImageQueueSlotCreateWithSlotID(v13, v22, piqcas_imageQueueSlotWasDestroyedCallback, v12, v23))
          {
            v18 = v23[0];
            free(v12);
            if (v18)
            {
              CFRelease(v18);
            }
          }

          else
          {
            if (dword_1EAF19510)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *a4 = v23[0];
          }
        }

        else
        {
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
        }
      }

      return result;
    }

    v15 = qword_1EAF170D8;
    v16 = v4;
    v17 = 2369;
  }

  else
  {
    v15 = qword_1EAF170D8;
    v16 = v4;
    v17 = 2368;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954486, "<<<< IQ-CA >>>>", v17, v16);
}

id FigTrialCopyTrialValueForFactor(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1 || ![*(a1 + 72) count])
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = 0;
  while (![a2 isEqualToString:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 72), "objectAtIndex:", v5), "factor"), "name")}])
  {
    if ([*(a1 + 72) count] <= ++v5)
    {
      goto LABEL_6;
    }
  }

  v9 = [*(a1 + 40) levelForFactor:a2 withNamespaceName:*(a1 + 48)];
  v6 = v9;
  if (v9)
  {
    v10 = [v9 metadata];
    if (v10)
    {
      v11 = [v10 valueForKey:@"clientNameMetaData"];
      if (v11)
      {
        v12 = *(a1 + 24);
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v11, @",");
        if (ArrayBySeparatingStrings)
        {
          v14 = ArrayBySeparatingStrings;
          v16.length = CFArrayGetCount(ArrayBySeparatingStrings);
          v16.location = 0;
          if (CFArrayContainsValue(v14, v16, v12))
          {
            CFRelease(v14);
            goto LABEL_7;
          }

          v15 = FigCFEqual();
          CFRelease(v14);
          if (v15)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v7 = v6;
  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t FigTrialGetInt(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = FigTrialCopyTrialValueForFactor(a1, a2);
    v6 = v5;
    if (v5 && [v5 levelOneOfCase] == 13)
    {
      a1 = [v6 longValue];
    }

    else
    {
      a1 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return a1;
}

double FigTrialGetDouble(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0.0;
  if (a1)
  {
    v6 = FigTrialCopyTrialValueForFactor(a1, a2);
    v7 = v6;
    if (v6 && [v6 levelOneOfCase] == 15)
    {
      [v7 doubleValue];
      v5 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

__CFString *FigTrialCopyExperimentId(__CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    isa = a1[2].isa;
    if (isa)
    {
      a1 = isa;
    }

    else
    {
      a1 = @"Empty";
    }
  }

  objc_autoreleasePoolPop(v2);
  return a1;
}

double FigTrialCreate(const void *a1, uint64_t a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  if (!a1)
  {
LABEL_32:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (qword_1ED4CAA70 != -1)
  {
    dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
  }

  if (!_MergedGlobals_55)
  {
    v6 = *MEMORY[0x1E695E480];
    if (qword_1ED4CAA60 != -1)
    {
      OUTLINED_FUNCTION_0_82();
      dispatch_once_f(v18, v19, v20);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v8 + 80) = Mutable;
      if (Mutable && (*(v8 + 24) = CFRetain(a1), v10 = FigSimpleMutexCreate(), (*(v8 + 32) = v10) != 0))
      {
        *(v8 + 56) = 221;
        if (qword_1ED4CAA70 != -1)
        {
          dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
        }

        if (_MergedGlobals_55 || (FigSimpleMutexLock(), v11 = qword_1ED4CAA80, ++qword_1ED4CAA88, FigSimpleMutexUnlock(), !v11))
        {
          *(v8 + 40) = 0;
        }

        else
        {
          v12 = CFRetain(v11);
          *(v8 + 40) = v12;
          if (v12)
          {
            if (qword_1ED4CAA70 != -1)
            {
              dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
            }

            if (!_MergedGlobals_55)
            {
              Value = CFDictionaryGetValue(qword_1ED4CAA98, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (Value)
              {
                Value = CFRetain(Value);
              }

              *(v8 + 48) = Value;
              v14 = CFDictionaryGetValue(qword_1ED4CAAA0, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (v14)
              {
                v14 = CFRetain(v14);
              }

              *(v8 + 64) = v14;
              v15 = CFDictionaryGetValue(qword_1ED4CAAA8, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (v15)
              {
                v15 = CFRetain(v15);
              }

              *(v8 + 72) = v15;
              if (dword_1EAF170C0)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *a3 = v8;
              return result;
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      CFRelease(v8);
      return result;
    }

    goto LABEL_32;
  }

  return result;
}

void FigTrial_Finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  FigSimpleMutexDestroy();
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    if (qword_1ED4CAA70 != -1)
    {
      dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
    }

    if (!_MergedGlobals_55)
    {
      FigSimpleMutexLock();
      v5 = qword_1ED4CAA88 == 1;
      if (qword_1ED4CAA88 >= 1)
      {
        --qword_1ED4CAA88;
        if (v5)
        {
          if (byte_1ED4CAA90)
          {
            byte_1ED4CAA90 = 0;
            [qword_1ED4CAA80 refresh];
            fstc_populateCachesWithMutex(&qword_1ED4CAA78);
          }
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

void __getTRINamespaceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTRINamespaceClass(void)_block_invoke") description:{@"FigTrial.m", 68, @"Unable to find class %s", "TRINamespace"}];
  __break(1u);
}

void TrialLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *TrialLibrary(void)") description:{@"FigTrial.m", 64, @"%s", *a1}];
  __break(1u);
}

void __getTRIClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTRIClientClass(void)_block_invoke") description:{@"FigTrial.m", 67, @"Unable to find class %s", "TRIClient"}];
  __break(1u);
}

uint64_t figFairplayPSSHAtom_replyingMessageHandler(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t FigVideoTargetCreateRemoteWithVideoReceiver(const __CFAllocator *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v14 = 0;
  cf = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170F8, 4294951734, "<< FigVideoTargetRemoteXPC >>", 1518, v4);
    goto LABEL_11;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF170F8, 4294951734, "<< FigVideoTargetRemoteXPC >>", 1519, v4);
    goto LABEL_11;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_8;
  }

  v10 = v9(a2, &v14);
  if (v10)
  {
LABEL_11:
    v11 = v10;
    goto LABEL_8;
  }

  v11 = figVideoTargetRemoteCreateCommon(a1, v14, a3, &cf);
  if (v11)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 80) = CFRetain(a2);
    *a4 = cf;
    cf = 0;
  }

LABEL_8:
  FigXPCRelease();
  return v11;
}

uint64_t remoteXPCVideoTargetClient_EnsureClientEstablished()
{
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(v8, v8 + 1, v9);
  }

  v0 = qword_1ED4CAAC8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v1 = dispatch_time(0, 10000000000);
  if (v0)
  {
    v2 = v1;
    FigSimpleMutexLock();
    v3 = *v0;
    FigSimpleMutexUnlock();
    if (v3 != 1)
    {
      v4 = dispatch_group_create();
      dispatch_retain(v4);
      dispatch_group_enter(v4);
      v11 = MEMORY[0x1E69E9820];
      v12 = 0x40000000;
      v13 = __FigVideoTargetConnectionEstablisher_EstablishConnectionSync_block_invoke;
      v14 = &unk_1E7487058;
      v15 = &v17;
      v16 = v4;
      FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(v0, &v11);
      if (dispatch_group_wait(v4, v2))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
        *(v18 + 6) = v5;
      }

      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    *(v18 + 6) = v10;
  }

  v6 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  if (!v6)
  {
    if (*qword_1ED4CAAC8 == 1)
    {
      return 0;
    }

    else
    {
      return *(qword_1ED4CAAC8 + 4);
    }
  }

  return v6;
}

uint64_t videoTargetRemote_completeObjectSetupWithServerReply(const void *a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v7 = FigXPCMessageCopyCFString();
  if (v7)
  {
    goto LABEL_28;
  }

  if (dword_1EAF17100)
  {
    OUTLINED_FUNCTION_4_62();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_102_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v46, v47, v49, SBYTE2(v49), BYTE3(v49), SHIDWORD(v49)))
    {
      v16 = v2;
    }

    else
    {
      v16 = v2 & 0xFFFFFFFE;
    }

    if (v16)
    {
      OUTLINED_FUNCTION_3_60();
      HIWORD(v54) = v17;
      LOWORD(v56) = 2114;
      *(&v56 + 2) = v18;
      LODWORD(v47) = 42;
      OUTLINED_FUNCTION_5_55(v19, v20, v21, v22, &dword_1962D5000, v23, v24, "<< FigVideoTargetRemoteXPC >> %s: (%p) called w/ objectID %016llx initialLoadingState %{public}@", &v52, v47, v49, 0, v52, v53, v54, uint64, v56, *(&v56 + 1), v57);
      v2 = HIDWORD(v49);
    }

    OUTLINED_FUNCTION_7_40();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 116))
  {
    OUTLINED_FUNCTION_4_62();
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_102_0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v49, SBYTE2(v49), BYTE3(v49), SHIDWORD(v49)))
    {
      v33 = v2;
    }

    else
    {
      v33 = v2 & 0xFFFFFFFE;
    }

    if (v33)
    {
      OUTLINED_FUNCTION_3_60();
      HIWORD(v54) = 1024;
      LODWORD(v55) = v34;
      LODWORD(v48) = 28;
      OUTLINED_FUNCTION_5_55(v35, v36, v37, v38, &dword_1962D5000, v39, v40, "<< FigVideoTargetRemoteXPC >> %s: (%p) delaying videoTarget connection for %d microseconds. TEST ONLY MECHANISM -- should not be enabled outside of unit tests.", &v52, v48, v50, cf, v52, v53, v54, v55, v56, *(&v56 + 1), v57);
    }

    OUTLINED_FUNCTION_7_40();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    usleep(*(DerivedStorage + 116));
  }

  v7 = remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(a1, uint64, cf);
  if (v7)
  {
LABEL_28:
    v42 = v7;
  }

  else if (*(DerivedStorage + 112))
  {
    v58 = 0;
    v52 = 0;
    ObjectID = FigVideoTargetXPCRemoteGetObjectID(a1, &v52);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        if (_MergedGlobals_57 != -1)
        {
          OUTLINED_FUNCTION_0_84();
          dispatch_once_f(v44, v44 + 1, v45);
        }

        ObjectID = FigXPCRemoteClientSendAsyncMessage();
      }
    }

    v42 = ObjectID;
    FigXPCRelease();
  }

  else
  {
    v42 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v42;
}

uint64_t remoteXPCVideoTarget_informServerActiveStateChanged(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_BOOL(0, "Active", a2 != 0);
    if (_MergedGlobals_57 != -1)
    {
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_51(v9, v10, v11);
    }

    v3 = FigXPCRemoteClientSendSyncMessage();
  }

  v4 = v3;
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v6, v7, v8);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCVideoTarget_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v8, v9, v10);
  }

  FigXPCRemoteClientDisassociateObject();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_8;
  }

  if (!FigXPCCreateBasicMessage())
  {
    if (_MergedGlobals_57 != -1)
    {
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_51(v14, v15, v16);
    }

    if (!FigXPCRemoteClientSendAsyncMessage())
    {
LABEL_8:
      v2 = *(DerivedStorage + 80);
      if (v2)
      {
        CFRelease(v2);
        *(DerivedStorage + 80) = 0;
      }

      FigSimpleMutexDestroy();
      v3 = *(DerivedStorage + 40);
      if (v3)
      {
        CFRelease(v3);
        *(DerivedStorage + 40) = 0;
      }

      v4 = *(DerivedStorage + 24);
      if (v4)
      {
        CFRelease(v4);
        *(DerivedStorage + 24) = 0;
      }

      if (*(DerivedStorage + 104))
      {
        FigSimpleMutexDestroy();
        *(DerivedStorage + 104) = 0;
      }

      v5 = *(DerivedStorage + 88);
      if (v5)
      {
        CFRelease(v5);
        *(DerivedStorage + 88) = 0;
      }

      v6 = *(DerivedStorage + 72);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 72) = 0;
      }

      if (*(DerivedStorage + 56))
      {
        FigSimpleMutexDestroy();
        *(DerivedStorage + 56) = 0;
      }
    }
  }

  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v11, v12, v13);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCVideoTarget_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CVPixelBufferRef *a4)
{
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a4)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_49;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (*(DerivedStorage + 80))
  {
    pixelBufferOut = 0;
    if (*(CMBaseObjectGetDerivedStorage() + 80))
    {
      if (FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey(a2, &pixelBufferOut))
      {
        v10 = pixelBufferOut;
        FigVideoReceiverGetCMBaseObject();
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          if (!v13(v12, v10, a3, a4))
          {
LABEL_37:
            v16 = 0;
            goto LABEL_38;
          }
        }
      }
    }
  }

  if (CFEqual(a2, @"InstanceType"))
  {
    v14 = kFigVideoTargetInstanceType_Remote;
LABEL_10:
    v15 = *v14;
LABEL_11:
    v15 = CFRetain(v15);
LABEL_12:
    v16 = 0;
    *a4 = v15;
    goto LABEL_38;
  }

  if (!CFEqual(a2, @"LastSampledCVPixelBuffer"))
  {
    if (CFEqual(a2, @"VideoReceiver"))
    {
      v15 = *(v9 + 80);
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (CFEqual(a2, @"ReceiverLoadingState"))
    {
      FigSimpleMutexLock();
      v20 = *(v9 + 88);
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      *a4 = v20;
      FigSimpleMutexUnlock();
      goto LABEL_37;
    }

    if (CFEqual(a2, @"IsValid"))
    {
      isValid = remoteXPCVideoTarget_isValid(a1);
      v14 = MEMORY[0x1E695E4D0];
      if (!isValid)
      {
        v14 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_10;
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v28);
      if (!ObjectID)
      {
        RemoteVideoTargetGetRemoteClient();
        ObjectID = FigXPCSendStdCopyPropertyMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_49:
    v16 = ObjectID;
    goto LABEL_38;
  }

  v30 = 0;
  pixelBufferOut = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    v17 = FigXPCCreateBasicMessage();
    if (!v17)
    {
      if (_MergedGlobals_57 != -1)
      {
        OUTLINED_FUNCTION_0_84();
        dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v26);
      }

      v17 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v17)
      {
        value = xpc_dictionary_get_value(xdict, "LastSampledIOSurface");
        if (value)
        {
          v19 = IOSurfaceLookupFromXPCObject(value);
          if (v19)
          {
            v16 = CVPixelBufferCreateWithIOSurface(a3, v19, 0, &pixelBufferOut);
            if (!v16)
            {
              *a4 = pixelBufferOut;
              pixelBufferOut = 0;
            }
          }

          else
          {
            OUTLINED_FUNCTION_243();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, xdict, v30);
            v16 = v27;
          }
        }

        else
        {
          v19 = 0;
          v16 = 0;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, xdict, v30);
  }

  v16 = v17;
  v19 = 0;
LABEL_23:
  FigXPCRelease();
  FigXPCRelease();
  if (v19)
  {
    CFRelease(v19);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v25);
  }

  FigXPCRemoteClientKillServerOnTimeout();
LABEL_38:
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v24);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}