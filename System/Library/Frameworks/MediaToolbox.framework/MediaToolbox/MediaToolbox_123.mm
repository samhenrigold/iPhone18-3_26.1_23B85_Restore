void mv_ValidateRFC4281_xvtt_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  __stringp = v3;
  if (v3)
  {
    strsep(&__stringp, ".");
    if (__stringp)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v4 = *v3;
      if ((v4 - 114) > 6 || ((1 << (v4 - 114)) & 0x53) == 0)
      {
        break;
      }

      ++v3;
    }

    if (*v3)
    {
LABEL_10:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, __stringp, v8);
    }
  }

  *a2 = 2021028980;
}

uint64_t mv_ValidateVideoProfileLevelTier(const __CFArray *a1, CFNumberRef number, const __CFNumber *a3, const __CFNumber *a4, int a5, int a6, int a7)
{
  if (!(a1 | number))
  {
    return 0;
  }

  valuePtr = 0;
  if (!a1 && number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v13 = valuePtr;
LABEL_8:
    IsIntInCFArray = v13 >= a5;
    goto LABEL_9;
  }

  if (!a1)
  {
    v13 = 0;
    goto LABEL_8;
  }

  IsIntInCFArray = mv_IsIntInCFArray(a5, a1);
LABEL_9:
  if (!IsIntInCFArray)
  {
    v15 = 4294954341;
    return OUTLINED_FUNCTION_15_4(v15);
  }

  v18 = 0;
  if (a3)
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, &v18);
    if (v18 < a6)
    {
LABEL_12:
      v15 = 4294951243;
      return OUTLINED_FUNCTION_15_4(v15);
    }

    if (a1)
    {
      if (!mv_IsIntInCFArray(a5, a1))
      {
        goto LABEL_12;
      }
    }

    else if (valuePtr < a5)
    {
      goto LABEL_12;
    }
  }

  v17 = 0;
  if (a4)
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &v17);
    if (v17 < a7)
    {
      v15 = 4294951242;
      return OUTLINED_FUNCTION_15_4(v15);
    }
  }

  return 0;
}

double mv_ValidateRFC4281VideoFromCodecType(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
    if (CFStringFrom4CC)
    {
      v10 = CFStringFrom4CC;
      v11 = OUTLINED_FUNCTION_4_92(CFStringFrom4CC, v4, @"vide", v5, v6, v7, v8, v9, v20, *v22, *&v22[4], 0, 0);
      if ((v11 || !HIBYTE(v23) || !BYTE6(v23)) && !OUTLINED_FUNCTION_4_92(v11, v12, @"VideoCodecs", v13, v14, v15, v16, v17, v21, v23, SWORD2(v23), SBYTE6(v23), HIBYTE(v23)) && (!v25 || !v24))
      {
        OUTLINED_FUNCTION_15_4(4294954340);
      }

      CFRelease(v10);
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954343, "<<<< MediaValidator >>>>", 5050, v2);
    }
  }

  return result;
}

double mv_ValidateRFC4281AudioFromCodecType(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
    if (CFStringFrom4CC)
    {
      v10 = CFStringFrom4CC;
      v11 = OUTLINED_FUNCTION_4_92(CFStringFrom4CC, v4, @"soun", v5, v6, v7, v8, v9, v20, *v22, *&v22[4], 0, 0);
      if ((v11 || !HIBYTE(v23) || !BYTE6(v23)) && !OUTLINED_FUNCTION_4_92(v11, v12, @"AudioCodecs", v13, v14, v15, v16, v17, v21, v23, SWORD2(v23), SBYTE6(v23), HIBYTE(v23)) && (!v25 || !v24))
      {
        OUTLINED_FUNCTION_15_4(4294954339);
      }

      CFRelease(v10);
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954343, "<<<< MediaValidator >>>>", 5019, v2);
    }
  }

  return result;
}

void FigMediaValidatorValidateFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMediaValidatorValidateFormatDescription_cold_2(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954335);
  *a1 = result;
  return result;
}

void FigMediaValidatorValidateFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_IsValueInArrayInDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t mv_CheckIfVideoPresentable_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954330);
  *a1 = result;
  return result;
}

uint64_t mv_CheckIfVideoPresentable_cold_5(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954329);
  *a1 = result;
  return result;
}

void mv_CheckIfVideoPresentable_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_CheckIfVideoPresentable_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t mv_CheckIfAudioPlayable_cold_1(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_15_4(a1);
  *a2 = result;
  return result;
}

void mv_CheckIfAudioPlayable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_CheckIfAudioPlayable_cold_3(uint64_t a1, _DWORD *a2)
{
  AudioCodecStringFromFormatDescription = FigCreateAudioCodecStringFromFormatDescription();
  if (!AudioCodecStringFromFormatDescription)
  {
    AudioCodecStringFromFormatDescription = mv_ValidateAudioCodecsParameterValue(0);
  }

  *a2 = AudioCodecStringFromFormatDescription;
}

void mv_CheckIfAudioPlayable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_CheckIfSubTitlesPlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_CheckIfClosedCaptionsPlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_CheckIfOtherMediaTypePlayable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAsyncInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAsyncInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAsyncInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAsyncInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfAudioSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfAudioSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfPlaylistSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfPlaylistSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfStreamingSupportedMIMETypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfStreamingSupportedMIMETypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfStreamingSupportedUTIs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCopySetOfStreamingSupportedUTIs_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorCreateMediaValidatorPropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorCreateMediaValidatorPropertyList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t mv_CheckIfFormatReaderIsSupported_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954332);
  *a1 = result;
  return result;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_1(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294951245);
  *a1 = result;
  return result;
}

void mv_ValidateTrackWithTrackReader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateTrackWithTrackReader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_5(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954327);
  *a1 = result;
  return result;
}

void mv_ValidateTrackWithTrackReader_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateTrackWithTrackReader_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t mv_ValidateTrackWithTrackReader_cold_8(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294954331);
  *a1 = result;
  return result;
}

void mv_GetCodecProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_GetCodecProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_GetCodecProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateRFC4281Codecs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateRFC4281Codecs_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateRFC4281Codecs_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMediaValidatorValidateRFC4281Codecs_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281IdEvaluationFn_cold_1(_DWORD *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  *a1 = 4;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294951241);
  *a1 = result;
  return result;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3()
{
  result = OUTLINED_FUNCTION_0_128();
  *v0 = result;
  return result;
}

BOOL mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

uint64_t mv_ValidateRFC4281_dav1_evaluation_fn_cold_4(_DWORD *a1)
{
  result = OUTLINED_FUNCTION_15_4(4294951243);
  *a1 = result;
  return result;
}

void mv_ValidateRFC4281_mp2v_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp4v_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp4v_evaluation_fn_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp4v_evaluation_fn_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp4v_evaluation_fn_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp4a_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_stpp_evaluation_fn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_stpp_evaluation_fn_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mv_ValidateRFC4281_stpp_evaluation_fn_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figMDRW_ParseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v19 = 0;
  v9 = (a3 + 8);
  while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 2;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v20, v21);
      }

      v8 |= v14;
      v15 = (*v13)(a1, a4);
      if (v15 == 1937010544)
      {
LABEL_13:
        if (a2 >= 1)
        {
          v16 = 0;
          v17 = (a3 + 4);
          do
          {
            v18 = *v17;
            v17 += 16;
            if ((v18 & 2) != 0 && ((v8 >> v16) & 1) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_4();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
            }

            ++v16;
          }

          while (a2 != v16);
        }

        return result;
      }

      if (v15)
      {
        return result;
      }
    }

LABEL_12:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t figMDRW_RewriteMovieHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3;
  v42 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  blockBufferOut = 0;
  valuePtr = 0;
  number = 0;
  i = 0;
  DataLength = CMBlockBufferGetDataLength(v13);
  v15 = *MEMORY[0x1E695E480];
  v16 = v9 - DataLength;
  if (v9 > DataLength && v16 >= 8)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    appended = CMBlockBufferCreateEmpty(v15, 8u, 1u, &blockBufferOut);
    if (appended)
    {
      goto LABEL_38;
    }

    appended = FigAtomWriterInitWithBlockBuffer();
    if (appended)
    {
      goto LABEL_38;
    }

    appended = FigMetadataAppendFreeAtom(v40, v16);
    if (appended)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_5_80();
    appended = CMBlockBufferCreateWithBufferReference(v18, v19, v20, v21, 0, v22);
    if (appended)
    {
      goto LABEL_38;
    }

    appended = CMBlockBufferAppendBufferReference(theBuffer, blockBufferOut, 0, 0, 0);
    if (appended)
    {
      goto LABEL_38;
    }

    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    goto LABEL_30;
  }

  appended = v24(CMBaseObject, *MEMORY[0x1E695FF78], v15, &number);
  if (appended)
  {
    goto LABEL_38;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if (DataLength != v9 && v9 + v11 != valuePtr)
  {
    v34 = 1701147238;
    OUTLINED_FUNCTION_5_80();
    appended = CMByteStreamAppendBlockBuffer();
    if (appended)
    {
      goto LABEL_38;
    }

    v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v28)
    {
      appended = v28(v12, 4, v11 + 4, &v34, &i);
      if (!appended)
      {
        bzero(v40, 0x1000uLL);
        v29 = v7 + v11;
        v30 = v11 + 8;
        for (i = 0; v30 < v29; v30 += i)
        {
          v31 = v29 - v30 >= 4096 ? 4096 : v29 - v30;
          v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v32)
          {
            goto LABEL_30;
          }

          appended = v32(v12, v31, v30, v40, &i);
          if (appended)
          {
            goto LABEL_38;
          }
        }

        v26 = 1;
LABEL_18:
        v27 = 0;
        *v5 = v26;
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_30:
    v27 = 4294954514;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_5_80();
  appended = CMByteStreamWriteBlockBuffer();
  if (!appended)
  {
    v26 = 0;
    goto LABEL_18;
  }

LABEL_38:
  v27 = appended;
LABEL_31:
  if (number)
  {
    CFRelease(number);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v27;
}

CFMutableDictionaryRef FigMetadataRewriterDictionaryCreateFromFigMetadataPropertyArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Count >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      Value = CFDictionaryGetValue(ValueAtIndex, @"format");
      v8 = CFDictionaryGetValue(ValueAtIndex, @"items");
      v9 = v8;
      if (Value)
      {
        v10 = OUTLINED_FUNCTION_8_42();
        v12 = CFDictionaryGetValue(v10, v11);
        if (v12)
        {
          if (!v9)
          {
            goto LABEL_11;
          }

LABEL_10:
          v32.length = CFArrayGetCount(v9);
          v32.location = 0;
          CFArrayAppendArray(v12, v9, v32);
          goto LABEL_11;
        }

        v12 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v13 = OUTLINED_FUNCTION_8_42();
        CFDictionaryAddValue(v13, v14, v12);
        CFRelease(v12);
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = v8;
      }

LABEL_11:
      if (Count == ++v4)
      {
        if (v5)
        {
          v15 = CFArrayGetCount(v5);
          if (v15 >= 1)
          {
            v16 = v15;
            for (i = 0; i != v16; ++i)
            {
              v18 = CFArrayGetValueAtIndex(v5, i);
              if (v18)
              {
                v19 = v18;
                v20 = CFDictionaryGetValue(v18, @"key");
                if (v20)
                {
                  v21 = v20;
                  v22 = 1;
                  v23 = @"com.apple.quicktime.mdta";
                  while (1)
                  {
                    v24 = v22;
                    if (FigIsCommonKeyMappedToMetadataFormat(v21, v23))
                    {
                      break;
                    }

                    v22 = 0;
                    v23 = @"com.apple.quicktime.udta";
                    if ((v24 & 1) == 0)
                    {
                      goto LABEL_24;
                    }
                  }

                  v25 = OUTLINED_FUNCTION_8_42();
                  v27 = CFDictionaryGetValue(v25, v26);
                  if (!v27)
                  {
                    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                    v28 = OUTLINED_FUNCTION_8_42();
                    CFDictionaryAddValue(v28, v29, v27);
                    CFRelease(v27);
                  }

                  CFArrayAppendValue(v27, v19);
                }
              }

LABEL_24:
              ;
            }
          }
        }

        return Mutable;
      }
    }
  }

  return Mutable;
}

double GetCompressedMovieAtom(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    memset(v4, 0, sizeof(v4));
    *(a2 + 96) = 1;
    if (!FigAtomStreamInitWithParent())
    {
      return figMDRW_ParseChildAtoms(v4, 2, &GetCompressedMovieAtom_atomDispatch, a2);
    }
  }

  return result;
}

uint64_t GetCompressedMovieDataAtom(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  cf = 0;
  if (*(a2 + 100) != 2053925218)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, 0, 0);
LABEL_16:
    v15 = BBuf;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_613();
  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_613();
  CMBlockBufferGetDataPointer(v4, v5, v6, v7, v8);
  v9 = bswap32(MEMORY[0]);
  BBuf = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v9, *MEMORY[0x1E695E480], 0, 0, v9, 1u, &v20);
  if (BBuf)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_613();
  CMBlockBufferGetDataPointer(v10, v11, v12, 0, v13);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v15 = v14;
  if (!v14)
  {
    v16 = *(a2 + 104);
    v17 = v20;
    *(a2 + 104) = v20;
    if (v17)
    {
      CFRetain(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v15 = 0;
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

  return v15;
}

uint64_t figMDRW_WriteMetadata(void *a1, const __CFDictionary *a2)
{
  v3 = v2;
  theBuffer = 0;
  v6 = MEMORY[0x1E695E480];
  if (a1[2])
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40) && (OUTLINED_FUNCTION_613(), v40 = v7(), v40 >= 1))
    {
      Mutable = 0;
      v9 = 0;
      v10 = *v6;
      key = @"key";
      v37 = a2;
      v38 = @"value";
      while (1)
      {
        theDict = 0;
        value = 0;
        cf = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v34 = 4294954514;
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_613();
        v12 = v11();
        if (v12)
        {
          goto LABEL_53;
        }

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            break;
          }
        }

        if (theDict)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
          if (!MutableCopy)
          {
            break;
          }

          v14 = MutableCopy;
          v15 = CFDictionaryGetValue(MutableCopy, @"key");
          if (v15)
          {
            v16 = v15;
            CFDictionaryAddValue(v14, @"value", value);
            if (CFDictionaryGetValueIfPresent(Mutable, v16, &cf))
            {
              v17 = v6;
              v18 = v3;
              v19 = CFGetTypeID(cf);
              if (v19 == CFArrayGetTypeID())
              {
                CFArrayAppendValue(cf, v14);
              }

              else
              {
                v20 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
                if (!v20)
                {
                  v6 = v17;
                  a2 = v37;
                  break;
                }

                v21 = v20;
                CFArrayAppendValue(v20, cf);
                CFArrayAppendValue(v21, v14);
                CFDictionarySetValue(Mutable, v16, v21);
                CFRelease(v21);
              }

              v3 = v18;
              v6 = v17;
              a2 = v37;
            }

            else
            {
              CFDictionaryAddValue(Mutable, v16, v14);
            }
          }
        }

        else
        {
          v14 = 0;
        }

        if (value)
        {
          CFRelease(value);
        }

        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (v40 == ++v9)
        {
          goto LABEL_29;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, @"value", @"key");
      if (v12)
      {
        goto LABEL_53;
      }
    }

    else
    {
      Mutable = 0;
LABEL_29:
      a1[1] = Mutable;
    }
  }

  if (!a1[1] && (v22 = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (a1[1] = v22) == 0) || (v23 = CFEqual(a1[4], @"udta"), v24 = figMDRW_MergeQuickTimeUserDataApplierFunc, !v23) && (v25 = CFEqual(a1[4], @"mdta"), v24 = figMDRW_MergeQuickTimeMetadataApplierFunc, !v25) && (v26 = CFEqual(a1[4], @"uiso"), v24 = figMDRW_MergeISOUserDataApplierFunc, !v26))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_53:
    v34 = v12;
    goto LABEL_43;
  }

  CFDictionaryApplyFunction(a2, v24, a1);
  CFDictionaryApplyFunction(a1[1], figMDRW_WriteMetadataApplierFunc, a1);
  FigMetadataSerializerGetFigMetadataWriter();
  v27 = CFNumberCreate(*v6, kCFNumberSInt64Type, a1 + 6);
  FigMetadataWriterGetFigBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v30)
  {
    goto LABEL_41;
  }

  v31 = v30(v29, @"minimumSize", v27);
  if (v31)
  {
    goto LABEL_50;
  }

  v32 = a1[3];
  v33 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v33)
  {
LABEL_41:
    v34 = 4294954514;
    if (!v27)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v31 = v33(v32, &theBuffer);
  if (!v31)
  {
    if (CMBlockBufferGetDataLength(theBuffer) == a1[6])
    {
      v31 = CMByteStreamWriteBlockBuffer();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, key);
    }
  }

LABEL_50:
  v34 = v31;
  if (v27)
  {
LABEL_42:
    CFRelease(v27);
  }

LABEL_43:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  v35 = a1[1];
  if (v35)
  {
    CFRelease(v35);
  }

  return v34;
}

void figMDRW_MergeQuickTimeUserDataApplierFunc()
{
  OUTLINED_FUNCTION_7_58();
  if (!FigUserDataCopyOSTypeKeysFromCommonKey(v2, v3))
  {
    figMDRW_MergeUserData(v1, v0, theArray);
  }
}

void figMDRW_MergeISOUserDataApplierFunc()
{
  OUTLINED_FUNCTION_7_58();
  if (!FigISOUserDataCopyOSTypeKeysFromCommonKey(v2, v3))
  {
    figMDRW_MergeUserData(v1, v0, theArray);
  }
}

uint64_t figMDRW_CreateUserDataBBufWithiTunes(CFArrayRef theArray, uint64_t a2, OpaqueCMBlockBuffer *a3, const void *a4, CFTypeRef *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0;
  theBuffer = 0;
  v9 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v29);
    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  MetadataBBufFromMetadataArray = figMDRW_CreateMetadataBBufFromMetadataArray(a3, @"com.apple.itunes", 0, &theBuffer);
  if (MetadataBBufFromMetadataArray)
  {
LABEL_44:
    v15 = MetadataBBufFromMetadataArray;
    goto LABEL_37;
  }

  a3 = theBuffer;
  if (!theBuffer)
  {
    goto LABEL_33;
  }

  v28 = a2;
  v30 = a5;
  cf = 0;
  blockBufferOut = 0;
  values = 0;
  v40 = 0;
  v41 = 0;
  keys = 0;
  v37 = 0;
  v38 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(a3, 0, DataLength) && (CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(v9, a3, v9, 0, 0, DataLength, 0, &blockBufferOut), CFDataWithBlockBufferNoCopy) || (CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy(), CFDataWithBlockBufferNoCopy))
  {
    v15 = CFDataWithBlockBufferNoCopy;
    a3 = 0;
  }

  else
  {
    keys = @"keyspace";
    if (CFEqual(@"com.apple.quicktime.udta", a4))
    {
      v14 = kFigUserDataKeyspace;
      goto LABEL_12;
    }

    if (CFEqual(@"org.mp4ra", a4))
    {
      v14 = kFigISOUserDataKeyspace;
LABEL_12:
      values = *v14;
      v40 = @"meta";
      v37 = @"key";
      v38 = @"value";
      v41 = cf;
      a3 = CFDictionaryCreate(v9, &keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (a3)
      {
        v15 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, a2, v30);
        v15 = v25;
      }

      goto LABEL_14;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, a2, v30);
    v15 = v24;
    a3 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  value = a3;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v15)
  {
    goto LABEL_35;
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v17 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v17 - 2);
      v19 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      v20 = CFDictionaryGetValue(ValueAtIndex, @"key");
      if (v19)
      {
        v21 = v20;
        if (v20)
        {
          if (CFEqual(@"uiso", v19) && CFEqual(a4, @"org.mp4ra") || CFEqual(@"udta", v19) && CFEqual(a4, @"com.apple.quicktime.udta"))
          {
            if (CFEqual(@"meta", v21) || (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v21)) && (LODWORD(values) = 0, CFNumberGetValue(v21, kCFNumberSInt32Type, &values), values == 1835365473))
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v17 - 2);
            }
          }
        }
      }

      --v17;
    }

    while (v17 > 1);
  }

  a3 = value;
  CFArrayAppendValue(MutableCopy, value);
  a2 = v28;
  a5 = v30;
LABEL_33:
  v15 = figMDRW_CreateMetadataBBufFromMetadataArray(MutableCopy, a4, a2, &v32);
  if (v15)
  {
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    *a5 = v32;
    v32 = 0;
  }

LABEL_35:
  if (a3)
  {
    CFRelease(a3);
  }

LABEL_37:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v15;
}

uint64_t figMDRW_CreateMetadataBBufFromMetadataArray(const __CFArray *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v42 = 0;
  cf = 0;
  v38 = a4;
  if (CFEqual(@"com.apple.quicktime.mdta", a2))
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = OUTLINED_FUNCTION_6_74();
    FigMetadataSerializerCreateForQuickTimeMetadata(v8, v9);
    if (v10)
    {
      goto LABEL_37;
    }
  }

  else if (CFEqual(@"com.apple.quicktime.udta", a2))
  {
    v7 = *MEMORY[0x1E695E480];
    v11 = OUTLINED_FUNCTION_6_74();
    FigMetadataSerializerCreateForQuickTimeUserData(v11, v12);
    if (v10)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!CFEqual(@"com.apple.itunes", a2))
    {
      if (CFEqual(@"org.mp4ra", a2))
      {
        v7 = *MEMORY[0x1E695E480];
        v15 = OUTLINED_FUNCTION_6_74();
        FigMetadataSerializerCreateForISOUserData(v15, v16);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, allocator);
      }

LABEL_37:
      v33 = v10;
      goto LABEL_33;
    }

    v7 = *MEMORY[0x1E695E480];
    v13 = OUTLINED_FUNCTION_6_74();
    FigMetadataSerializerCreateForiTunes(v13, v14);
    if (v10)
    {
      goto LABEL_37;
    }
  }

LABEL_12:
  v40 = a3;
  Count = CFArrayGetCount(a1);
  FigMetadataSerializerGetFigMetadataWriter();
  if (Count >= 1)
  {
    v19 = v18;
    v20 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v20);
      Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      v23 = CFDictionaryGetValue(ValueAtIndex, @"key");
      v24 = CFDictionaryGetValue(ValueAtIndex, @"value");
      if (Value)
      {
        if (v23)
        {
          v25 = v24;
          if (v24)
          {
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v26)
            {
              goto LABEL_32;
            }

            v10 = v26(v19, Value, v23, v25, ValueAtIndex);
            if (v10 && v10 != -12583)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (Count != ++v20);
  }

  valuePtr = v40;
  FigMetadataSerializerGetFigMetadataWriter();
  v28 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  if (v28)
  {
    v29 = v28;
    FigMetadataWriterGetFigBaseObject();
    v31 = v30;
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v32)
    {
      v33 = v32(v31, @"minimumSize", v29);
    }

    else
    {
      v33 = 4294954514;
    }

    CFRelease(v29);
    if (v33)
    {
      goto LABEL_33;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v38, v7);
    v33 = v36;
    if (v36)
    {
      goto LABEL_33;
    }
  }

  v34 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v34)
  {
    v33 = v34(cf, &v42);
    if (v33)
    {
      if (v42)
      {
        CFRelease(v42);
      }
    }

    else
    {
      *v38 = v42;
      v42 = 0;
    }
  }

  else
  {
LABEL_32:
    v33 = 4294954514;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v33;
}

void FigRewriteMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRewriteMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRewriteMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRewriteMetadata_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRewriteMetadata_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figMDRW_MergeQuickTimeMetadataApplierFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figMDRW_MergeQuickTimeMetadataApplierFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figMDRW_MergeUserData_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figMDRW_MergeUserData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void figMDRW_CopyMetadataArrayFromByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMDRW_CopyMetadataArrayFromByteStream_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  CFRelease(a1);
}

void figMDRW_CopyMetadataArrayFromByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMDRW_CopyMetadataArrayFromByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigID3MetadataCallbackProc(uint64_t a1, int a2, unsigned int a3, unsigned int a4, char **a5, unsigned int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  blockBufferOut = 0;
  theBuffer = 0;
  v13 = DerivedStorage[2];
  dataLength = 0;
  if (a2 == 1)
  {
    v14 = DerivedStorage[6];
    if (v14)
    {
      CFRelease(v14);
      DataPointer = 0;
      v12[6] = 0;
    }

    else
    {
      DataPointer = 0;
    }

    goto LABEL_16;
  }

  v16 = DerivedStorage[1];
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    DataPointer = 4294954514;
    goto LABEL_16;
  }

  v18 = v17(v16, a4, v13 + a3, &theBuffer, &dataLength);
  if (v18)
  {
    goto LABEL_20;
  }

  if (dataLength != a4)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, dataLength, blockBufferOut);
    goto LABEL_20;
  }

  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, a4))
  {
    v18 = CMBlockBufferCreateContiguous(*v12, theBuffer, *v12, 0, 0, dataLength, 0, &blockBufferOut);
    if (!v18)
    {
      CFRelease(theBuffer);
      v19 = blockBufferOut;
      blockBufferOut = 0;
      theBuffer = v19;
      goto LABEL_10;
    }

LABEL_20:
    DataPointer = v18;
    goto LABEL_16;
  }

LABEL_10:
  v20 = v12[6];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = theBuffer;
  v12[6] = theBuffer;
  DataPointer = CMBlockBufferGetDataPointer(v21, 0, 0, 0, a5);
  if (!DataPointer)
  {
    *a6 = a4;
  }

LABEL_16:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return DataPointer;
}

uint64_t FigID3MetadataHasKey(uint64_t a1, const void *a2, const void *a3)
{
  valuePtr = 0;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a3 || !a2)
  {
    goto LABEL_16;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, @"comn"))
  {
    if (CFEqual(a2, @"org.id3"))
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFStringGetTypeID())
      {
        v11 = OUTLINED_FUNCTION_5_81();
        if (FigID3MetadataStringKeyToOSTypeKey(v11, v12))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
LABEL_13:
            while (1)
            {
              OUTLINED_FUNCTION_4_93();
              if (OUTLINED_FUNCTION_3_91(*(v6 + 24), v14, v15, v16, v17, v18, v19, v20, v21, v22, 12, 0, v23, v24, v25))
              {
                break;
              }

              if (v23 == valuePtr)
              {
                return 1;
              }
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          return 0;
        }
      }
    }

LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return 0;
  }

  v7 = OUTLINED_FUNCTION_5_81();
  result = FigID3MetadataCommonKeyToOSTypeKey(v7, v8);
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t FigID3MetadataGetItemCount(uint64_t a1, const void *a2, const void *a3)
{
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_21;
  }

  v6 = DerivedStorage;
  if (!a2)
  {
    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (CFEqual(a2, @"comn"))
  {
    if (a3)
    {
      v7 = OUTLINED_FUNCTION_5_81();
      if (FigID3MetadataCommonKeyToOSTypeKey(v7, v8))
      {
        goto LABEL_6;
      }

      return 0;
    }

LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return 0;
  }

  if (!CFEqual(a2, @"org.id3"))
  {
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_11:
    v16 = 0;
    ID3ParserGetProperty();
    return v16;
  }

  v25 = CFGetTypeID(a3);
  if (v25 == CFStringGetTypeID())
  {
    v26 = OUTLINED_FUNCTION_5_81();
    if (!FigID3MetadataStringKeyToOSTypeKey(v26, v27))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = CFGetTypeID(a3);
    if (v28 != CFNumberGetTypeID())
    {
      goto LABEL_21;
    }

    if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      return 0;
    }
  }

LABEL_6:
  v37 = valuePtr;
  OUTLINED_FUNCTION_4_93();
  v16 = 0;
  if (!OUTLINED_FUNCTION_3_91(*(v6 + 24), v9, v10, v11, v12, v13, v14, v15, v29, v31, 12, 0, v33, v35, v37))
  {
    v16 = 0;
    do
    {
      ++v16;
      OUTLINED_FUNCTION_4_93();
    }

    while (!OUTLINED_FUNCTION_3_91(*(v6 + 24), v17, v18, v19, v20, v21, v22, v23, v30, v32, 12, 0, v34, v36, v38));
  }

  return v16;
}

uint64_t FigID3MetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFAllocator *a5, unint64_t a6, unint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, cf);
    v16 = v55;
    goto LABEL_95;
  }

  v14 = DerivedStorage;
  if (*(DerivedStorage + 65))
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = a6;
  }

  v68 = 0;
  v67 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_98;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_98;
    }

    goto LABEL_12;
  }

  if (!CFEqual(a2, @"comn"))
  {
    if (!CFEqual(a2, @"org.id3"))
    {
      goto LABEL_98;
    }

    if (a3)
    {
      v31 = CFGetTypeID(a3);
      if (v31 == CFStringGetTypeID())
      {
        if (!FigID3MetadataStringKeyToOSTypeKey(a3, &v68))
        {
LABEL_98:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v16 = v54;
          LODWORD(a3) = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v34 = CFGetTypeID(a3);
        if (v34 != CFNumberGetTypeID() || !CFNumberGetValue(a3, kCFNumberSInt32Type, &v68))
        {
          goto LABEL_98;
        }
      }

LABEL_10:
      LODWORD(v67) = v68;
    }

LABEL_12:
    v66 = 0;
    for (valuePtr = 0; ; valuePtr = 0)
    {
      v64 = 12;
      if (ID3ParserGetProperty())
      {
        LODWORD(a3) = 0;
        v16 = 0;
        goto LABEL_17;
      }

      if (HIDWORD(v67) == a4)
      {
        break;
      }

      ++HIDWORD(v67);
      v66 = 0;
    }

    if (!p_cf)
    {
      goto LABEL_44;
    }

    v63 = 0;
    v62 = 8;
    if (!ID3ParserGetProperty())
    {
      *p_cf = v63;
LABEL_44:
      v16 = 0;
      LODWORD(a3) = valuePtr;
      goto LABEL_17;
    }

    goto LABEL_98;
  }

  if (a3)
  {
    if (!FigID3MetadataCommonKeyToOSTypeKey(a3, &v68))
    {
      v16 = 4294954691;
      goto LABEL_95;
    }

    goto LABEL_10;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, cf);
  v16 = v57;
LABEL_17:
  if (v16)
  {
    goto LABEL_95;
  }

  v17 = MEMORY[0x1E695E480];
  if (!*(v14 + 65))
  {
    LODWORD(valuePtr) = a3;
    if (a7)
    {
      Mutable = CFDictionaryCreateMutable(a5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a7 = Mutable;
      if (!Mutable || (v24 = Mutable, (v25 = CFNumberCreate(*v17, kCFNumberSInt32Type, &valuePtr)) == 0))
      {
LABEL_108:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v16 = v58;
        if (!a6)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

      v26 = v25;
      CFDictionaryAddValue(v24, @"key", v25);
      CFRelease(v26);
      CFDictionaryAddValue(v24, @"keyspace", @"org.id3");
    }

    v16 = 0;
    if (!a6)
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v18 = cf;
  v19 = *(v14 + 40);
  v20 = CFDictionaryCreateMutable(a5, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v20)
  {
    goto LABEL_108;
  }

  v21 = v20;
  if (v19 == 2)
  {
    CFStringFor3CCValue = FigGetCFStringFor3CCValue();
  }

  else
  {
    CFStringFor3CCValue = FigGetCFStringForOSTypeValue();
  }

  v27 = CFStringFor3CCValue;
  if (!CFStringFor3CCValue)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, cf);
    v16 = v56;
    goto LABEL_90;
  }

  CFDictionaryAddValue(v21, @"keyspace", @"org.id3");
  CFDictionaryAddValue(v21, @"key", v27);
  if (!v18)
  {
    v30 = 0;
    goto LABEL_80;
  }

  v28 = CFGetTypeID(v18);
  if (v28 != CFDictionaryGetTypeID())
  {
    v30 = CFRetain(v18);
    v32 = 0;
    v33 = 0;
    goto LABEL_65;
  }

  Value = CFDictionaryGetValue(v18, @"data");
  if (Value)
  {
    v30 = Value;
  }

  else
  {
    v30 = CFDictionaryGetValue(v18, @"text");
    if (!v30)
    {
      goto LABEL_50;
    }
  }

  CFRetain(v30);
LABEL_50:
  v35 = CFDictionaryGetValue(v18, @"identifier");
  if (v35)
  {
    CFDictionaryAddValue(v21, @"info", v35);
  }

  v36 = CFDictionaryGetValue(v18, @"language");
  if (!v36)
  {
    goto LABEL_59;
  }

  v37 = v36;
  v38 = CFGetTypeID(v36);
  if (v38 == CFNumberGetTypeID())
  {
    v39 = CFRetain(v37);
    goto LABEL_57;
  }

  v40 = CFGetTypeID(v37);
  if (v40 == CFStringGetTypeID())
  {
    LOWORD(valuePtr) = FigMetadataGetPackedISO639_2T(v37);
    v39 = CFNumberCreate(*v17, kCFNumberSInt16Type, &valuePtr);
LABEL_57:
    v41 = v39;
    if (v39)
    {
      CFDictionaryAddValue(v21, @"languageCode", v39);
      CFRelease(v41);
    }
  }

LABEL_59:
  v33 = CFDictionaryGetValue(v18, @"MIME");
  if (v33)
  {
    CFDictionaryAddValue(v21, @"dataType", v33);
    CFDictionaryAddValue(v21, @"dataTypeNamespace", @"org.iana.media-type");
  }

  v42 = CFDictionaryGetValue(v18, @"picturetype");
  if (v42)
  {
    CFDictionaryAddValue(v21, @"pictureType", v42);
  }

  v32 = CFDictionaryGetValue(v18, @"filename");
  if (v32)
  {
    CFDictionaryAddValue(v21, @"name", v32);
  }

LABEL_65:
  if (v30)
  {
    v43 = CFURLGetTypeID();
    if (v43 != CFGetTypeID(v30))
    {
      TypeID = CFDataGetTypeID();
      if (TypeID != CFGetTypeID(v30))
      {
        goto LABEL_80;
      }

      v49 = CFStringCompare(v27, @"GEOB", 0);
      if (!v33)
      {
        goto LABEL_80;
      }

      if (v49)
      {
        goto LABEL_80;
      }

      v50 = CFStringCompare(v33, @"application/xml", 1uLL);
      if (!v32)
      {
        goto LABEL_80;
      }

      if (v50)
      {
        goto LABEL_80;
      }

      if (!CFStringHasSuffix(v32, @".plist"))
      {
        goto LABEL_80;
      }

      v51 = CFPropertyListCreateWithData(a5, v30, 0, 0, 0);
      if (!v51)
      {
        goto LABEL_80;
      }

      v47 = v51;
      v45 = v51;
      goto LABEL_70;
    }

    v44 = CFURLCopyAbsoluteURL(v30);
    if (v44)
    {
      v45 = v44;
      v46 = CFURLGetString(v44);
      if (!v46)
      {
LABEL_71:
        CFRelease(v45);
        goto LABEL_80;
      }

      v47 = v46;
LABEL_70:
      CFRetain(v47);
      CFRelease(v30);
      v30 = v47;
      goto LABEL_71;
    }
  }

LABEL_80:
  if (a6)
  {
    if (v30)
    {
      v52 = CFRetain(v30);
    }

    else
    {
      v52 = 0;
    }

    *a6 = v52;
  }

  if (a7)
  {
    *a7 = CFRetain(v21);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v16 = 0;
LABEL_90:
  CFRelease(v21);
  if (!a6)
  {
    goto LABEL_95;
  }

LABEL_91:
  if (!v16)
  {
    if (*a6)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294954689;
    }
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

void FigMetadataReaderCreateForTimedID3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigID3MetadataCopyProperty_cold_1(void *a1, void *a2, _DWORD *a3)
{
  v12 = 0;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v8)
  {
    result = v8(v6, v7, &v12);
    if (!result)
    {
      if (v12 >= a1[4])
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v11 = CFRetain(*v10);
      result = 0;
      *a2 = v11;
    }
  }

  else
  {
    result = 4294954514;
  }

  *a3 = result;
  return result;
}

void FigID3MetadataCopyValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyValue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyValue_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyValue_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigID3MetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigID3MetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigID3MetadataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigID3MetadataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t HandlePlayerServerMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v159 = *MEMORY[0x1E69E9840];
  v139 = 0;
  v140 = &v139;
  v141 = 0x2000000000;
  v142 = 0;
  v138 = 0;
  v134 = 0;
  v135 = &v134;
  v136 = 0x2000000000;
  v137 = 0;
  v133 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_222;
  }

  OpCode = FigXPCMessageGetOpCode();
  *(v140 + 6) = OpCode;
  if (OpCode)
  {
    goto LABEL_224;
  }

  v7 = xpc_dictionary_get_BOOL(a2, "IsFigSharedMessage");
  v8 = MEMORY[0x1E695E480];
  if (v7)
  {
    LODWORD(value) = 0;
    v9 = FigXPCMessageGetOpCode();
    if (v9)
    {
      CacheFileSize = v9;
      goto LABEL_205;
    }

    OUTLINED_FUNCTION_13_32();
    if (v10)
    {
      OUTLINED_FUNCTION_4_94();
      v54 = OUTLINED_FUNCTION_14_36(v86, "DesiredParentDirectory");
      if (v54)
      {
        goto LABEL_165;
      }

      if (!__str || (v87 = CFGetTypeID(__str), v87 == CFStringGetTypeID()))
      {
        OUTLINED_FUNCTION_10_41();
        v54 = FigXPCMessageCopyCFString();
        if (v54)
        {
          goto LABEL_165;
        }

        if (*&v153[0])
        {
          v88 = CFGetTypeID(*&v153[0]);
          if (v88 == CFStringGetTypeID())
          {
            v89 = OUTLINED_FUNCTION_11_44();
            CacheFileSize = FigShared_GetCacheFileSize(v89);
            if (!CacheFileSize)
            {
              xpc_dictionary_set_int64(a3, "UsedFileSize", *token.val);
            }

LABEL_166:
            if (__str)
            {
              CFRelease(__str);
            }

            v70 = *&v153[0];
            if (!*&v153[0])
            {
              goto LABEL_205;
            }

            goto LABEL_204;
          }
        }
      }

      goto LABEL_263;
    }

    OUTLINED_FUNCTION_13_32();
    if (!v10)
    {
      OUTLINED_FUNCTION_13_32();
      if (v10)
      {
        OUTLINED_FUNCTION_4_94();
        *v147.val = 0;
        v48 = OUTLINED_FUNCTION_14_36(v47, "DesiredParentDirectory");
        if (v48)
        {
          goto LABEL_179;
        }

        if (!__str || (v49 = CFGetTypeID(__str), v49 == CFStringGetTypeID()))
        {
          OUTLINED_FUNCTION_10_41();
          v48 = FigXPCMessageCopyCFString();
          if (v48)
          {
            goto LABEL_179;
          }

          if (*&v153[0])
          {
            v50 = CFGetTypeID(*&v153[0]);
            if (v50 == CFStringGetTypeID())
            {
              v48 = FigXPCMessageCopyCFURL();
              if (v48)
              {
                goto LABEL_179;
              }

              if (*token.val)
              {
                v51 = CFGetTypeID(*token.val);
                if (v51 == CFURLGetTypeID())
                {
                  v52 = OUTLINED_FUNCTION_11_44();
                  v48 = FigShared_CheckIntoAndOutOfDiskCache(v52);
                  if (!v48)
                  {
LABEL_178:
                    v48 = FigXPCMessageSetCFString();
                  }

LABEL_179:
                  CacheFileSize = v48;
                  if (__str)
                  {
                    CFRelease(__str);
                  }

                  if (*&v153[0])
                  {
                    CFRelease(*&v153[0]);
                  }

                  if (*token.val)
                  {
                    CFRelease(*token.val);
                  }

                  v70 = *v147.val;
                  if (!*v147.val)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_204;
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_32();
        if (!v10)
        {
          OUTLINED_FUNCTION_13_32();
          if (!v10)
          {
            OUTLINED_FUNCTION_13_32();
            if (!v10)
            {
              if (v12 == 1399088739)
              {
                OUTLINED_FUNCTION_7_59();
                v54 = OUTLINED_FUNCTION_14_36(v79, "DesiredParentDirectory");
                if (v54)
                {
                  goto LABEL_165;
                }

                if (!__str || (v80 = CFGetTypeID(__str), v80 == CFStringGetTypeID()))
                {
                  OUTLINED_FUNCTION_10_41();
                  v54 = FigXPCMessageCopyCFString();
                  if (v54)
                  {
                    goto LABEL_165;
                  }

                  if (*&v153[0])
                  {
                    v81 = CFGetTypeID(*&v153[0]);
                    if (v81 == CFStringGetTypeID())
                    {
                      v82 = OUTLINED_FUNCTION_11_44();
                      v54 = FigShared_DeleteFromDiskCache(v82, v83);
                      goto LABEL_165;
                    }
                  }
                }

                goto LABEL_263;
              }

              if (v12 == 1399415923)
              {
                OUTLINED_FUNCTION_7_59();
                v54 = OUTLINED_FUNCTION_14_36(v90, "DesiredParentDirectory");
                if (v54)
                {
                  goto LABEL_165;
                }

                v91 = __str;
                if (__str)
                {
                  v92 = CFGetTypeID(__str);
                  if (v92 != CFStringGetTypeID())
                  {
                    goto LABEL_263;
                  }

                  v91 = __str;
                }

                v54 = FigShared_CopyDiskCacheCheckedInIDs(v91, v153);
                if (!v54)
                {
                  v54 = FigXPCMessageSetCFArray();
                }

                goto LABEL_165;
              }

              if (v12 != 1399679858)
              {
                if (v12 != 1400005474)
                {
                  switch(v12)
                  {
                    case 1400009836:
                      *&v153[0] = 0;
                      *token.val = 0;
                      __str = 0uLL;
                      OUTLINED_FUNCTION_10_41();
                      v71 = FigXPCMessageCopyCFString();
                      if (v71)
                      {
                        goto LABEL_127;
                      }

                      FigIsItOKToLogURLs();
                      v78 = FigCopyRedactedURLFromString();
                      if (v78)
                      {
                        CFRelease(v78);
                      }

                      v71 = ObtainSinfInfoFromMedia(*&v153[0], &token);
                      if (v71)
                      {
                        goto LABEL_127;
                      }

                      CacheFileSize = PPGetRentalInfoFromSinfInfo(*token.val, &__str);
                      if (!CacheFileSize)
                      {
                        xpc_dictionary_set_uint64(a3, "RentalStartTime", __str);
                        xpc_dictionary_set_uint64(a3, "RentalDuration", DWORD1(__str));
                        xpc_dictionary_set_uint64(a3, "PlaybackStartTime", DWORD2(__str));
                        xpc_dictionary_set_uint64(a3, "PlaybackDuration", HIDWORD(__str));
                      }

                      break;
                    case 1400267632:
                      *&v153[0] = 0;
                      *token.val = 0;
                      OUTLINED_FUNCTION_10_41();
                      v71 = FigXPCMessageCopyCFDictionary();
                      if (v71)
                      {
                        goto LABEL_127;
                      }

                      uint64 = xpc_dictionary_get_uint64(a2, "VideoCodecType");
                      int64 = xpc_dictionary_get_int64(a2, "Width");
                      v74 = xpc_dictionary_get_int64(a2, "Height");
                      *&__str = 0;
                      if (int64 <= 0)
                      {
                        v75 = 100;
                      }

                      else
                      {
                        v75 = int64;
                      }

                      if (v74 <= 0)
                      {
                        v76 = 100;
                      }

                      else
                      {
                        v76 = v74;
                      }

                      v77 = VTCompressionSessionCreate(*v8, v75, v76, uint64, 0, 0, *v8, fs_dummyEncodedFrameCallback, 0, &__str);
                      if (!v77)
                      {
                        v77 = VTSessionCopySupportedPropertyDictionary(__str, &token);
                      }

                      CacheFileSize = v77;
                      VTCompressionSessionInvalidate(__str);
                      if (__str)
                      {
                        CFRelease(__str);
                      }

                      if (!CacheFileSize)
                      {
                        v71 = FigXPCMessageSetCFDictionary();
LABEL_127:
                        CacheFileSize = v71;
                      }

                      break;
                    case 1400074337:
                      *&__str = 0;
                      v13 = OUTLINED_FUNCTION_14_36(v11, "DesiredParentDirectory");
                      if (v13)
                      {
                        goto LABEL_23;
                      }

                      if (!__str || (v14 = CFGetTypeID(__str), v14 == CFStringGetTypeID()))
                      {
                        xpc_dictionary_get_int64(a2, "TargetSize");
                        xpc_dictionary_get_int64(a2, "TargetFileSize");
                        xpc_dictionary_get_BOOL(a2, "AutomaticallyManagesSize");
                        v13 = FigShared_SetDiskCacheParams(__str);
LABEL_23:
                        CacheFileSize = v13;
                        goto LABEL_203;
                      }

                      goto LABEL_262;
                    default:
                      CacheFileSize = -16158;
                      goto LABEL_205;
                  }

LABEL_134:
                  if (*&v153[0])
                  {
                    CFRelease(*&v153[0]);
                  }

                  v70 = *token.val;
                  if (!*token.val)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_204;
                }

                OUTLINED_FUNCTION_7_59();
                v54 = OUTLINED_FUNCTION_14_36(v53, "DesiredParentDirectory");
                if (v54)
                {
                  goto LABEL_165;
                }

                if (!__str || (v55 = CFGetTypeID(__str), v55 == CFStringGetTypeID()))
                {
                  OUTLINED_FUNCTION_10_41();
                  v54 = FigXPCMessageCopyCFString();
                  if (v54)
                  {
LABEL_165:
                    CacheFileSize = v54;
                    goto LABEL_166;
                  }

                  if (*&v153[0])
                  {
                    v56 = CFGetTypeID(*&v153[0]);
                    if (v56 == CFStringGetTypeID())
                    {
                      xpc_dictionary_get_int64(a2, "DesiredByteSize");
                      v57 = OUTLINED_FUNCTION_11_44();
                      v54 = FigShared_ReserveDiskCacheBacking(v57, v58, v59);
                      goto LABEL_165;
                    }
                  }
                }

LABEL_263:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_2_114();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_165;
              }

              OUTLINED_FUNCTION_7_59();
              v13 = OUTLINED_FUNCTION_14_36(v84, "DesiredParentDirectory");
              if (v13)
              {
                goto LABEL_23;
              }

              if (__str)
              {
                v85 = CFGetTypeID(__str);
                if (v85 != CFStringGetTypeID())
                {
LABEL_262:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_2_114();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  goto LABEL_23;
                }
              }

              xpc_dictionary_get_BOOL(a2, "AllAvailable");
              CacheFileSize = FigShared_MakeRoomInDiskCache(__str);
              if (!CacheFileSize)
              {
                xpc_dictionary_set_int64(a3, "BytesMadeAvailable", *&v153[0]);
              }

LABEL_203:
              v70 = __str;
              if (__str)
              {
LABEL_204:
                CFRelease(v70);
              }

LABEL_205:
              *(v140 + 6) = CacheFileSize;
              goto LABEL_224;
            }

            OUTLINED_FUNCTION_4_94();
            *v147.val = 0;
            v98 = OUTLINED_FUNCTION_14_36(v97, "DesiredParentDirectory");
            if (v98)
            {
              goto LABEL_266;
            }

            if (__str)
            {
              v99 = CFGetTypeID(__str);
              if (v99 != CFStringGetTypeID())
              {
                goto LABEL_265;
              }
            }

            OUTLINED_FUNCTION_10_41();
            v98 = FigXPCMessageCopyCFString();
            if (!v98)
            {
              if (!*&v153[0] || (v100 = CFGetTypeID(*&v153[0]), v100 != CFStringGetTypeID()))
              {
LABEL_265:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_2_114();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_266;
              }

              v98 = FigXPCMessageCopyCFString();
              if (!v98)
              {
                if (*&v153[0])
                {
                  v101 = CFGetTypeID(*&v153[0]);
                  if (v101 == CFStringGetTypeID())
                  {
                    v102 = OUTLINED_FUNCTION_11_44();
                    v107 = FigShared_CopyCacheProperty(v102, v103, *token.val, *v8, &v147, v104, v105, v106);
                    v108 = *v147.val;
                    if (v107)
                    {
                      CacheFileSize = v107;
                      if (!*v147.val)
                      {
                        goto LABEL_199;
                      }
                    }

                    else
                    {
                      CacheFileSize = FigXPCMessageSetCFObject();
                      v108 = *v147.val;
                      if (!*v147.val)
                      {
LABEL_199:
                        if (*token.val)
                        {
                          CFRelease(*token.val);
                        }

                        if (*&v153[0])
                        {
                          CFRelease(*&v153[0]);
                        }

                        goto LABEL_203;
                      }
                    }

                    CFRelease(v108);
                    goto LABEL_199;
                  }
                }

                goto LABEL_265;
              }
            }

LABEL_266:
            CacheFileSize = v98;
            goto LABEL_199;
          }

          OUTLINED_FUNCTION_4_94();
          *v147.val = 0;
          LOBYTE(cf) = 0;
          *bytes.val = 0;
          v67 = OUTLINED_FUNCTION_14_36(v66, "DesiredParentDirectory");
          if (v67)
          {
            goto LABEL_260;
          }

          v68 = __str;
          if (__str)
          {
            v69 = CFGetTypeID(__str);
            if (v69 != CFStringGetTypeID())
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_114();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCon, v126, v127);
              goto LABEL_260;
            }

            v68 = __str;
          }

          v67 = FigShared_CopyDiskCacheParams(v68);
          if (!v67)
          {
            CacheFileSize = FigXPCMessageSetCFURL();
            if (!CacheFileSize)
            {
              xpc_dictionary_set_int64(a3, "UsedFileSize", *&v153[0]);
              xpc_dictionary_set_int64(a3, "TargetSize", *token.val);
              xpc_dictionary_set_int64(a3, "TargetFileSize", *v147.val);
              xpc_dictionary_set_BOOL(a3, "AutomaticallyManagesSize", cf != 0);
            }

LABEL_110:
            if (__str)
            {
              CFRelease(__str);
            }

            v70 = *bytes.val;
            if (!*bytes.val)
            {
              goto LABEL_205;
            }

            goto LABEL_204;
          }

LABEL_260:
          CacheFileSize = v67;
          goto LABEL_110;
        }

        OUTLINED_FUNCTION_4_94();
        *v147.val = 0;
        v48 = OUTLINED_FUNCTION_14_36(v93, "DesiredParentDirectory");
        if (v48)
        {
          goto LABEL_179;
        }

        if (!__str || (v94 = CFGetTypeID(__str), v94 == CFStringGetTypeID()))
        {
          OUTLINED_FUNCTION_10_41();
          v48 = FigXPCMessageCopyCFString();
          if (v48)
          {
            goto LABEL_179;
          }

          if (*&v153[0])
          {
            v95 = CFGetTypeID(*&v153[0]);
            if (v95 == CFStringGetTypeID())
            {
              v96 = OUTLINED_FUNCTION_11_44();
              v48 = FigShared_CheckOutOfDiskCache(v96);
              if (!v48)
              {
                v48 = FigXPCMessageSetCFURL();
                if (!v48)
                {
                  goto LABEL_178;
                }
              }

              goto LABEL_179;
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_4_94();
    v61 = OUTLINED_FUNCTION_14_36(v60, "DesiredParentDirectory");
    if (!v61)
    {
      if (__str)
      {
        v62 = CFGetTypeID(__str);
        if (v62 != CFStringGetTypeID())
        {
          goto LABEL_258;
        }
      }

      OUTLINED_FUNCTION_10_41();
      v61 = FigXPCMessageCopyCFString();
      if (v61)
      {
        goto LABEL_101;
      }

      if (!*&v153[0])
      {
        goto LABEL_258;
      }

      v63 = CFGetTypeID(*&v153[0]);
      if (v63 != CFStringGetTypeID())
      {
        goto LABEL_258;
      }

      v61 = FigXPCMessageCopyCFURL();
      if (v61)
      {
        goto LABEL_101;
      }

      if (*token.val && (v64 = CFGetTypeID(*token.val), v64 == CFURLGetTypeID()))
      {
        v65 = OUTLINED_FUNCTION_11_44();
        v61 = FigShared_CheckIntoDiskCache(v65);
      }

      else
      {
LABEL_258:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_114();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

LABEL_101:
    CacheFileSize = v61;
    if (__str)
    {
      CFRelease(__str);
    }

    goto LABEL_134;
  }

  if (v138 != 1668441400)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v31 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    *(v140 + 6) = v31;
    if (v31)
    {
      goto LABEL_224;
    }

    if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(v135[3]))
    {
      OUTLINED_FUNCTION_15_33();
      FigXPCPlaybackCoordinatorServerHandleMessage(v32, v33, v34, v35, v36);
LABEL_223:
      *(v140 + 6) = v37;
      goto LABEL_224;
    }

    v38 = FigXPCImageQueueGaugeServerHandlesMessagesForObject(v135[3]);
    v39 = v135[3];
    if (v38)
    {
      OUTLINED_FUNCTION_15_33();
      FigXPCImageQueueGaugeServerHandleMessage(v40, v41, v42, v43, v44);
      goto LABEL_223;
    }

    if (v39)
    {
      v109 = CFGetTypeID(v39);
      if (v109 == FigPlayerGetTypeID())
      {
        if (v133)
        {
          v110 = CFGetTypeID(v133);
          if (qword_1ED4CAF58 != -1)
          {
            dispatch_once(&qword_1ED4CAF58, &__block_literal_global_123);
          }

          if (v110 == qword_1ED4CAF60)
          {
            v111 = v133;
            v112 = (v133 + 40);
            goto LABEL_220;
          }
        }
      }

      else
      {
        v113 = v135[3];
        if (v113)
        {
          v114 = CFGetTypeID(v113);
          if (v114 == FigPlaybackItemGetTypeID())
          {
            if (v133)
            {
              v115 = CFGetTypeID(v133);
              if (qword_1ED4CAF68 != -1)
              {
                dispatch_once(&qword_1ED4CAF68, &__block_literal_global_142);
              }

              if (v115 == qword_1ED4CAF70)
              {
                v111 = v133;
                v112 = (v133 + 72);
LABEL_220:
                v116 = *v112;
                if (*v112)
                {
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 0x40000000;
                  block[2] = __HandlePlayerServerMessage_block_invoke;
                  block[3] = &unk_1E748EC60;
                  v132 = v138;
                  block[4] = &v139;
                  block[5] = &v134;
                  block[6] = v111;
                  block[7] = a1;
                  block[8] = a2;
                  block[9] = a3;
                  dispatch_sync(v116, block);
                  goto LABEL_224;
                }
              }
            }
          }
        }
      }
    }

LABEL_222:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_223;
  }

  v148 = 0;
  v149 = 0;
  memset(&v147, 0, sizeof(v147));
  theString = 0;
  v146 = 0;
  v144 = 0;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  __str = 0u;
  memset(v153, 0, sizeof(v153));
  v16 = *MEMORY[0x1E695E480];
  if (qword_1ED4CAF58 != -1)
  {
    dispatch_once(&qword_1ED4CAF58, &__block_literal_global_123);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCon, v126, v127);
    if (v120)
    {
      v27 = v120;
      v26 = 0;
      v23 = 0;
      goto LABEL_62;
    }
  }

  FigXPCMessageCopyCFDictionary();
  *(Instance + 96) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (Instance + 96), 10, 0x600u);
  }

  snprintf(&__str, 0x50uLL, "com.apple.coremedia.playerserver.invalidation.%s", (Instance + 96));
  if (_MergedGlobals_83 != -1)
  {
    dispatch_once(&_MergedGlobals_83, &__block_literal_global_60);
  }

  v18 = dispatch_queue_create_with_target_V2(&__str, 0, qword_1ED4CAF50);
  *(Instance + 32) = v18;
  if (!v18)
  {
    v23 = 0;
    v26 = 0;
    goto LABEL_242;
  }

  snprintf(&__str, 0x50uLL, "com.apple.coremedia.playerserver.asynccontrol.%s", (Instance + 96));
  TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
  *(Instance + 40) = TargetingWorkloopWithPriority;
  if (!TargetingWorkloopWithPriority)
  {
    v23 = 0;
    v26 = 0;
    goto LABEL_242;
  }

  xdict = a3;
  v129 = xpc_dictionary_get_uint64(a2, "EngineTopology");
  xpc_dictionary_get_BOOL(a2, "ClientSDKVersion2015AndLater");
  v130 = a1;
  xpc_connection_get_audit_token();
  FigXPCMessageCopyCFString();
  v20 = xpc_dictionary_copy_mach_send();
  bytes = v147;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  cf = 0;
  value = 0;
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCona, v126, v127);
    v27 = v121;
    v23 = 0;
LABEL_238:
    v26 = v20;
    v28 = v130;
    goto LABEL_45;
  }

  v22 = MutableCopy;
  FigCFDictionarySetBoolean();
  v23 = CFDataCreate(v16, &bytes, 32);
  if (!v23)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCona, v126, v127);
    v27 = v122;
    CFRelease(v22);
    goto LABEL_238;
  }

  CFDictionarySetValue(v22, @"ClientAuditToken", v23);
  token = bytes;
  FigServer_GetClientPIDFromAuditToken();
  FigCFDictionarySetInt32();
  if ((v20 - 1) <= 0xFFFFFFFD)
  {
    if (FigMachPortHolderCreateWithMachSendRight())
    {
      goto LABEL_239;
    }

    FigCFDictionarySetValue();
  }

  FigCFDictionarySetValue();
  token = bytes;
  v24 = SecTaskCreateWithAuditToken(v16, &token);
  if (v24)
  {
    v25 = v24;
    CFDictionarySetValue(v22, @"ClientSecTask", v24);
    FigCFDictionarySetBoolean();
    v26 = v20;
    if (VTIsSecTaskEntitledForVP9Decode())
    {
      CFDictionarySetValue(v22, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
    }

    v27 = FigDispatchQueueHolderCreateWithDispatchQueue();
    v28 = v130;
    if (!v27)
    {
      CFDictionarySetValue(v22, @"AsynchronousControlQueueHolder", value);
      CFRelease(v23);
LABEL_44:
      CFRelease(v25);
      v23 = v22;
      goto LABEL_45;
    }

    goto LABEL_240;
  }

LABEL_239:
  v26 = v20;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCona, v126, v127);
  v27 = v123;
  v25 = 0;
  v28 = v130;
LABEL_240:
  CFRelease(v22);
  CFRelease(v23);
  v22 = 0;
  v23 = 0;
  if (v25)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    goto LABEL_244;
  }

  v29 = FigSharedPlayerCreateWithOptions(v16, v129 | 0x810u, v23, &v148);
  if (v29)
  {
    goto LABEL_243;
  }

  v30 = v148;
  if (v148)
  {
    v30 = CFRetain(v148);
  }

  *(Instance + 24) = v30;
  v29 = FigXPCServerAssociateObjectWithConnection();
  if (v29)
  {
LABEL_243:
    v27 = v29;
LABEL_244:
    CFRelease(Instance);
    goto LABEL_62;
  }

  *(Instance + 72) = FigSimpleMutexCreate();
  *(Instance + 80) = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = v149;
  *(Instance + 16) = v149;
  xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], v45);
  if (_os_feature_enabled_impl())
  {
    snprintf(v153, 0x50uLL, "Create %s", (Instance + 96));
    xpc_connection_get_pid(v28);
    v46 = FigOSTransactionCreateWithProcessName();
    *(Instance + 112) = v46;
    if (!v46)
    {
LABEL_242:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outputCallbackRefCona, v126, v127);
      goto LABEL_243;
    }
  }

  v27 = 0;
LABEL_62:
  if (v148)
  {
    CFRelease(v148);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v146)
  {
    CFRelease(v146);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if ((v26 - 1) <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  *(v140 + 6) = v27;
LABEL_224:
  v117 = v135[3];
  if (v117)
  {
    CFRelease(v117);
  }

  if (v133)
  {
    CFRelease(v133);
  }

  v118 = *(v140 + 6);
  _Block_object_dispose(&v134, 8);
  _Block_object_dispose(&v139, 8);
  return v118;
}

uint64_t serverXPCItem_HandleCopyImageQueueGaugeMessage(const void *a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4, void *a5)
{
  v17 = 0;
  cf = 0;
  if (a1 && (v9 = CFGetTypeID(a1), v9 == FigPlaybackItemGetTypeID()) && a4 && a5)
  {
    FigPlaybackItemGetFigBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v12)
    {
      v15 = 4294954514;
      goto LABEL_13;
    }

    v13 = v12(v11, a2, *MEMORY[0x1E695E480], &cf);
    if (!v13)
    {
      if (!cf)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v13 = FigXPCImageQueueGaugeServerAssociateCopiedNeighborImageQueueGauge(a3, cf, &v17);
      if (!v13)
      {
        v14 = v17;
LABEL_12:
        xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], v14);
        v15 = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v15 = v13;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

void servedPlayerState_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      a1[3] = 0;
      a1[5] = 0;
      OUTLINED_FUNCTION_6_75();
      v12[1] = 0x40000000;
      v12[2] = __servedPlayerState_Finalize_block_invoke;
      v12[3] = &__block_descriptor_tmp_126_1;
      v12[4] = v3;
      v12[5] = v2;
      serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(v4, v12);
    }

    v5 = a1[4];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      dispatch_release(v6);
    }

    FigSimpleMutexDestroy();
    v7 = a1[10];
    if (v7)
    {
      CFRelease(v7);
      a1[10] = 0;
    }

    v8 = a1[6];
    if (v8)
    {
      CFRelease(v8);
      a1[6] = 0;
    }

    v9 = a1[7];
    if (v9)
    {
      CFRelease(v9);
      a1[7] = 0;
    }

    v10 = a1[8];
    if (v10)
    {
      CFRelease(v10);
      a1[8] = 0;
    }

    v11 = a1[14];
    if (v11)
    {
      os_release(v11);
      a1[14] = 0;
    }
  }
}

void servedPlaybackItemState_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[10])
    {
      a1[9] = 0;
      a1[10] = 0;
      OUTLINED_FUNCTION_6_75();
      v11[1] = 0x40000000;
      v11[2] = __servedPlaybackItemState_Finalize_block_invoke;
      v11[3] = &__block_descriptor_tmp_145_1;
      v11[4] = v3;
      v11[5] = v2;
      serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(v4, v11);
    }

    v5 = a1[12];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[8];
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = a1[9];
    if (v9)
    {
      dispatch_release(v9);
    }

    FigSimpleMutexDestroy();
    v10 = a1[11];
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t serverXPCPlayer_handlePlayerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, CFMutableArrayRef a5)
{
  v24 = 0;
  v22 = 0;
  v23 = 0;
  cf = 0;
  if (!a1)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_400();
  v9 = CFGetTypeID(v8);
  if (v9 != FigPlayerGetTypeID())
  {
    goto LABEL_25;
  }

  if (FigCFEqual() && a5)
  {
    v10 = CFGetTypeID(a5);
    if (v10 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(a5) >= 1)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable || (CFArrayGetValueAtIndex(a5, 0), FigCFNumberGetUInt64(), v12 = FigXPCServerLookupAndRetainAssociatedObject(), !v12))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v18 = v20;
    Mutable = 0;
    goto LABEL_16;
  }

LABEL_10:
  Mutable = 0;
  v12 = FPSupport_HandlePlayerSetPropertyAndCopyModification(0, a4, a5, v5, serverXPCPlayer_handlePlayerSetPropertyGuts, &v24, &v23, &v22);
  if (v12)
  {
LABEL_14:
    v18 = v12;
    goto LABEL_16;
  }

  if (v24)
  {
    v18 = 0;
  }

  else
  {
    v14 = v22;
    v13 = v23;
    FigPlayerGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v12 = v17(v16, v13, v14);
      goto LABEL_14;
    }

    v18 = 4294954514;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v18;
}

uint64_t serverXPCItem_handleItemSetPropertyGuts(int a1, uint64_t a2, __CFString *a3, CFTypeRef cf, _BYTE *a5, void *a6, void *a7)
{
  if (cf)
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 80);
  v56[0] = 0;
  if (!v14)
  {
    goto LABEL_90;
  }

  v15 = CFGetTypeID(v14);
  if (v15 != FigPlaybackItemGetTypeID())
  {
    goto LABEL_90;
  }

  v16 = FigCFEqual();
  v17 = MEMORY[0x1E695E480];
  if (!v16)
  {
    if (FigCFEqual())
    {
      v54.value = 0;
      if (cf)
      {
        v26 = CFGetTypeID(cf);
        if (v26 == CFNumberGetTypeID())
        {
          v23 = a6;
          v27 = OUTLINED_FUNCTION_12_38();
          CFNumberGetValue(v27, kCFNumberSInt64Type, v28);
          v29 = FigVideoCompositorServerRetainVideoCompositorForID(v54.value, v56);
          if (!v29)
          {
            if (v13)
            {
              CFRelease(v13);
            }

            v22 = v56[0];
            v56[0] = 0;
            v30 = &kFigPlaybackItemProperty_VideoCompositor;
            goto LABEL_30;
          }

LABEL_91:
          v31 = v29;
LABEL_38:
          v22 = 0;
          goto LABEL_39;
        }
      }

LABEL_90:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_91;
    }

    if (!FigCFEqual())
    {
      if (CFEqual(@"Server_AudioProcessingTapID", a3))
      {
        v54.value = 0;
        value.value = 0;
        if (cf && (v37 = CFGetTypeID(cf), v37 == CFNumberGetTypeID()))
        {
          v38 = OUTLINED_FUNCTION_12_38();
          CFNumberGetValue(v38, kCFNumberSInt64Type, v39);
          v40 = v54.value;
        }

        else
        {
          v40 = 0;
        }

        v23 = a6;
        MTAudioProcessingTapServerIsObjectIDLocallyServed(v40);
        if (v13)
        {
          CFRelease(v13);
        }

        v22 = value.value;
        v30 = &kFigPlaybackItemProperty_AudioProcessingTap;
        goto LABEL_30;
      }

      if (CFEqual(@"Server_PriorImageQueueGaugeID", a3))
      {
        v23 = a6;
        v54.value = 0;
        value.value = 0;
        if (cf)
        {
          v41 = CFGetTypeID(cf);
          if (v41 == CFNumberGetTypeID())
          {
            v42 = OUTLINED_FUNCTION_12_38();
            CFNumberGetValue(v42, kCFNumberSInt64Type, v43);
          }
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v22 = value.value;
        v30 = &kFigPlaybackItemProperty_PriorImageQueueGauge;
        goto LABEL_30;
      }

      if (CFEqual(@"Server-TransientTimebaseDict", a3))
      {
        if (cf)
        {
          timebaseOut = 0;
          v54 = **&MEMORY[0x1E6960C70];
          value = v54;
          v52 = 0.0;
          OUTLINED_FUNCTION_12_38();
          FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetDoubleIfPresent();
          v44 = *v17;
          HostTimeClock = CMClockGetHostTimeClock();
          v29 = CMTimebaseCreateWithSourceClock(v44, HostTimeClock, &timebaseOut);
          if (v29)
          {
            goto LABEL_91;
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v13 = timebaseOut;
          if (v52 == 0.0)
          {
            v29 = CMTimebaseSetRate(timebaseOut, 0.0);
            if (v29)
            {
              goto LABEL_91;
            }

            time = v54;
            v29 = CMTimebaseSetTime(timebaseOut, &time);
            if (v29)
            {
              goto LABEL_91;
            }
          }

          else
          {
            time = v54;
            immediateSourceTime = value;
            v29 = CMTimebaseSetRateAndAnchorTime(timebaseOut, v52, &time, &immediateSourceTime);
            if (v29)
            {
              goto LABEL_91;
            }
          }
        }

        a3 = @"TransientTimebaseForCoordinatedPlaybackSynchronization";
      }

      v22 = v13;
      goto LABEL_31;
    }

    v54.value = 0;
    value.value = 0;
    if (!cf)
    {
      goto LABEL_90;
    }

    v35 = CFGetTypeID(cf);
    if (v35 != CFDictionaryGetTypeID())
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_12_38();
    if (FigCFDictionaryGetInt64IfPresent())
    {
      v29 = FigVideoCompositorServerRetainVideoCompositorForID(v54.value, v56);
      if (v29)
      {
        goto LABEL_91;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(*v17, 0, cf);
      v22 = MutableCopy;
      if (!MutableCopy)
      {
LABEL_98:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v31 = v47;
        goto LABEL_39;
      }

      CFDictionaryRemoveValue(MutableCopy, @"Server_VideoCompositorID");
      CFDictionarySetValue(v22, @"VideoCompositor", v56[0]);
    }

    else
    {
      v22 = 0;
    }

    if (!FigCFDictionaryGetValueIfPresent() || FigCFEqual())
    {
      if (v22)
      {
        if (v13)
        {
          CFRelease(v13);
        }
      }

      else
      {
        v22 = v13;
      }

      goto LABEL_31;
    }

    goto LABEL_98;
  }

  v18 = CFGetTypeID(v14);
  if (v18 == FigPlaybackItemGetTypeID() && cf && (v19 = CFGetTypeID(cf), v19 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(cf), (Mutable = CFArrayCreateMutable(*v17, Count, MEMORY[0x1E695E9C0])) != 0))
  {
    v22 = Mutable;
    v23 = a6;
    if (Count < 1)
    {
LABEL_27:
      if (v13)
      {
        CFRelease(v13);
      }

      v30 = &kFigPlaybackItemProperty_VisualContextArray;
LABEL_30:
      a3 = *v30;
      a6 = v23;
LABEL_31:
      *a5 = 0;
      if (a3)
      {
        v32 = CFRetain(a3);
      }

      else
      {
        v32 = 0;
      }

      *a6 = v32;
      if (v22)
      {
        v33 = CFRetain(v22);
      }

      else
      {
        v33 = 0;
      }

      v31 = 0;
      *a7 = v33;
      v13 = v22;
      goto LABEL_38;
    }

    v24 = 0;
    while (1)
    {
      v54.value = 0;
      OUTLINED_FUNCTION_12_38();
      if (!FigCFArrayGetInt64AtIndex())
      {
        break;
      }

      value.value = 0;
      v25 = FigVisualContextServerRetainVisualContextForID(v54.value, &value);
      if (v25)
      {
        goto LABEL_25;
      }

      CFArrayAppendValue(v22, value.value);
      CFRelease(value.value);
      if (Count == ++v24)
      {
        goto LABEL_27;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, LODWORD(immediateSourceTime.value));
LABEL_25:
    v31 = v25;
    CFRelease(v22);
  }

  else
  {
    v23 = a6;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v31 = v46;
  }

  v22 = 0;
  if (!v31)
  {
    goto LABEL_27;
  }

LABEL_39:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v56[0])
  {
    CFRelease(v56[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v31;
}

__CFArray *serverXPCItem_copyTagCollectionArrayFromDataArray(const __CFAllocator *a1, CFArrayRef theArray)
{
  newCollectionOut = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, newCollectionOut, v12);
        return Mutable;
      }

      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (CMTagCollectionCreateFromData(ValueAtIndex, a1, &newCollectionOut))
        {
          break;
        }

        CFArrayAppendValue(Mutable, newCollectionOut);
        if (newCollectionOut)
        {
          CFRelease(newCollectionOut);
          newCollectionOut = 0;
        }

        if (v5 == ++v7)
        {
          return Mutable;
        }
      }

      if (newCollectionOut)
      {
        CFRelease(newCollectionOut);
      }

      CFRelease(Mutable);
    }
  }

  return 0;
}

double serverXPCItem_addTimeSyncUpdateToMessage()
{
  OUTLINED_FUNCTION_1_20();
  if (!v1 || (v4 = v3, v5 = v2, v6 = v1, v7 = CFGetTypeID(v1), v7 != FigPlaybackItemGetTypeID()))
  {
    emitter = fig_log_get_emitter();
    v10 = v0;
    v11 = 3888;
LABEL_12:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954436, "<<<< PlayerServerXPC >>>>", v11, v10);
  }

  if (!v4)
  {
    emitter = fig_log_get_emitter();
    v10 = v0;
    v11 = 3889;
    goto LABEL_12;
  }

  if (*(v5 + 40))
  {
    if (FigTimebaseGetSyncMoment2(*(v5 + 48), v12))
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!serverXPCItem_getSyntheticSyncMomentL(v6, v12))
  {
LABEL_6:
    xpc_dictionary_set_data(v4, "TimeBaseSyncMoment", v12, 0x78uLL);
  }

  return result;
}

double fps_addMetadataOutputChangedNotificationPayloadToMessage(void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"SampleBuffers");
  if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFArrayGetTypeID()))
  {
    if (!fps_addSampleBuffersToMessage(a1, "MetadataOutputSamples", v4))
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      CFDictionaryRemoveValue(MutableCopy, @"SampleBuffers");
      FigXPCMessageSetCFDictionary();
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t fps_addLegibleOutputChangedNotificationPayloadToMessage()
{
  OUTLINED_FUNCTION_400();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryGetValue(v1, @"LegibleOutputAttributedString");
  v4 = CFDictionaryGetValue(v1, @"LegibleOutputNativeSamples");
  if (CFArrayGetCount(v3) >= 1)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      value = 0;
      if (FigTextMarkupAttributedStringCreatePropertyList(ValueAtIndex, &value))
      {
        goto LABEL_6;
      }

      if (value)
      {
        break;
      }

LABEL_8:
      if (++v5 >= CFArrayGetCount(v3))
      {
        goto LABEL_9;
      }
    }

    CFArrayAppendValue(Mutable, value);
LABEL_6:
    if (value)
    {
      CFRelease(value);
    }

    goto LABEL_8;
  }

LABEL_9:
  if (!v4 || (v7 = CFGetTypeID(v4), v7 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, value, v14);
    goto LABEL_19;
  }

  v8 = fps_addSampleBuffersToMessage(v0, "LegibleOutputSamples", v4);
  if (v8 || (v8 = FigXPCMessageSetCFArray(), v8))
  {
LABEL_19:
    v10 = v8;
    if (!Mutable)
    {
      return v10;
    }

    goto LABEL_16;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"LegibleOutputAttributedString");
  CFDictionaryRemoveValue(MutableCopy, @"LegibleOutputNativeSamples");
  v10 = FigXPCMessageSetCFDictionary();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t fps_TimebaseSynchronizationUpdate_Callback()
{
  OUTLINED_FUNCTION_400();
  v18 = 0;
  OUTLINED_FUNCTION_1_20();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2 && *v1 == 120)
  {
    v3 = *(v1 + 4);
    if (*(v0 + 24))
    {
      v3 |= 4u;
      *(v1 + 4) = v3;
      *(v0 + 24) = 0;
    }

    v7[0] = 120;
    v7[1] = v3;
    v8 = *(v1 + 8);
    v9 = *(v1 + 16);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    v15 = *(v1 + 88);
    v14 = *(v1 + 72);
    v17 = *(v1 + 112);
    v16 = *(v1 + 96);
    v4 = MEMORY[0x1E695FF58];
    v5 = *MEMORY[0x1E695FF58];
    if ((v3 & 1) != 0 && v5 == 1)
    {
      kdebug_trace();
      v3 = *(v1 + 4);
      v5 = *v4;
    }

    if ((v3 & 2) != 0 && v5 == 1)
    {
      time = *(v1 + 16);
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_data(v18, "TimeBaseSyncMoment", v7, 0x78uLL);
      xpc_connection_send_message(v2, v18);
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void fps_destroyTimebaseSyncState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void FigPlayerServerStart_cold_1(char a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  FigCFDictionarySetValue();
  started = FigXPCServerStart();
  if (!started)
  {
    started = FigXPCPlaybackCoordinatorServerStartAsSubserver(gPlayerServer);
    if (!started)
    {
      started = FigXPCImageQueueGaugeServerStartAsSubserver(gPlayerServer);
      if (!started)
      {
        FigXPCServerActivate();
        started = 0;
      }
    }
  }

  *a4 = started;
  CFRelease(a2);
}

void FigPlayerServerStart_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandlePlayerServerNoReplyMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandlePlayerServerNoReplyMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandlePlayerServerNoReplyMessage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandlePlayerServerNoReplyMessage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_26(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_27(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_28(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_29(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_30(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_31(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_32(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_33(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_34(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_35(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_36(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_37(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_38(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_39(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_40(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_41(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_42(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_43(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_44(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_45(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_46(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_47(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_48(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_49(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_50(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_51(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_52(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_53(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_54(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_55(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_56(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_57(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_58(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_59(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_60(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_61(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_62(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t __HandlePlayerServerMessage_block_invoke_cold_63(uint64_t *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;

  return FigSimpleMutexUnlock();
}

void __HandlePlayerServerMessage_block_invoke_cold_64(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_65(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_66(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_67(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_68(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_69(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_70(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_71(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_72(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_73(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_74(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_75(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_76(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_77(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_78(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_79(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_80(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_81(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_82(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_83(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_84(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_85(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_86(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_87(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_88(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_89(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_90(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_91(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_92(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_93(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_94(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_95(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_96(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_97(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_98(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_99(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_100(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_101(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_102(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_103(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_104(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_105(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_106(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_107(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_108(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_109(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_110(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_111(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_112(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_113(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_114(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_115(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_116(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_117(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_118(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_119(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_121(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;
  CFRelease(a2);
}

void __HandlePlayerServerMessage_block_invoke_cold_122(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_123(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_124(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_125(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_126(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_127(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_128(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_129(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_130(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_131(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_132(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_133(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __HandlePlayerServerMessage_block_invoke_cold_134(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL serverXPCItem_rebuildTimebaseSync_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

CFTypeRef serverXPCItem_rebuildTimebaseSync_cold_2(uint64_t a1, void *a2)
{
  result = *(a1 + 88);
  if (result)
  {
    result = CFRetain(result);
  }

  a2[2] = a1;
  v5 = *(a1 + 16);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t serverXPCItem_NotificationFilter_cold_1()
{
  OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_1_20();
  v4 = 0;
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1 && !serverXPCItem_getSyntheticSyncMomentL(v0, v3) && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_data(v4, "TimeBaseSyncMoment", v3, 0x78uLL);
    xpc_connection_send_message(v1, v4);
  }

  FigXPCRelease();
  return FigXPCRelease();
}

double serverXPCItem_NotificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void serverXPCItem_getSyntheticSyncMomentL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fps_addSampleBuffersToMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fps_addSampleBuffersToMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

__CFData *FPSupport_CopyAudioSessionPreferredOutputChannelLayout(const __CFAllocator *a1, uint64_t a2)
{
  theDict = 0;
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_18:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  dispatch_once_f(&checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce, 0, checkPlayerAudioDeviceTraceCallback);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 48);
  if (!v5 || v5(a2, *MEMORY[0x1E69AFEF0], *MEMORY[0x1E695E480], &theDict))
  {
    goto LABEL_18;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69B0640]);
  if (!Value)
  {
    goto LABEL_18;
  }

  v7 = Value;
  if (CFArrayGetCount(Value) <= 0)
  {
    goto LABEL_18;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
  v9 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E69B05D8]);
  if (!v9)
  {
    goto LABEL_18;
  }

  Count = CFArrayGetCount(v9);
  if (Count <= 0)
  {
    goto LABEL_18;
  }

  v11 = Count;
  v12 = 20 * Count + 12;
  Mutable = CFDataCreateMutable(a1, v12);
  v14 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v12);
    MutableBytePtr = CFDataGetMutableBytePtr(v14);
    *MutableBytePtr = 0;
    FigCFArrayApplyFunction();
    if (v11 != *(MutableBytePtr + 2))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, theDict, v20);
      if (v16)
      {
        CFRelease(v14);
LABEL_19:
        v14 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, theDict, v20);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

uint64_t FPSupport_IsAnAudioDeviceAvailable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E695E4C0];
    v6 = *MEMORY[0x1E695E4C0];
    v3 = *(CMBaseObjectGetVTable() + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v4(v1, @"FAS_AudioDeviceIsAvailable", *MEMORY[0x1E695E480], &v6);
        v2 = v6;
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (qword_1ED4CAF80 != -1)
    {
      dispatch_once(&qword_1ED4CAF80, &__block_literal_global_48);
    }

    if ((byte_1ED4CAF79 & 1) != 0 || byte_1ED4CAF7A)
    {
      v5 = 1;
      _MergedGlobals_84 = 1;
    }

    else
    {
      v5 = _MergedGlobals_84 | (v2 == *MEMORY[0x1E695E4D0]);
    }

    return v5 & 1;
  }

  return result;
}

void FPSupport_GetAudioSessionOutputChannelCount_cold_2(const __CFNumber *a1, int *valuePtr, const __CFAllocator *a3, uint64_t a4)
{
  CFNumberGetValue(a1, kCFNumberSInt32Type, valuePtr);
  if (*valuePtr >= 3)
  {
    v7 = FPSupport_CopyAudioSessionPreferredOutputChannelLayout(a3, a4);
    if (v7)
    {
      v8 = v7;
      Length = CFDataGetLength(v7);
      if (Length < 0xC)
      {
        CFRelease(v8);
      }

      else
      {
        v10 = Length;
        BytePtr = CFDataGetBytePtr(v8);
        HasVerticalHeightChannel = FPSupport_AudioChannelLayoutHasVerticalHeightChannel(BytePtr, v10);
        CFRelease(v8);
        if (HasVerticalHeightChannel)
        {
          *valuePtr = 16;
        }
      }
    }
  }
}

double FPSupport_CreateMaxSampleRateDictonary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FPSupport_CreateMaxSampleRateDictonary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FPSupport_CreateAudioSessionSpatializationCapabilities_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

double FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigStreamingAssetDownloadCacheTranslatorCreate(uint64_t a1, const void *a2, char a3, CFTypeRef *a4)
{
  v18 = 0;
  cf = 0;
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!a2 || !a4 || !FigCFURLIsLocalResource())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_21:
    v16 = v8;
    goto LABEL_13;
  }

  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadCacheTranslatorGetClassID_sRegisterFigStreamingAssetDownloadCacheTranslatorBaseTypeOnce, RegisterFigStreamingAssetDownloadCacheTranslatorBaseType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 8) = CFRetain(a2);
  v10 = CFGetAllocator(cf);
  v8 = FigHLSPersistentStoreCreateAtURL(v10, a2, 0, 1, &v18);
  if (v8)
  {
    goto LABEL_21;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = v11;
  if (!v11 || (v12 = dispatch_queue_create("com.apple.coremedia.downloadtranslator.ioqueue", 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  v13 = v12;
  FigSimpleMutexLock();
  v14 = cf;
  if (cf)
  {
    v14 = CFRetain(cf);
  }

  *v7 = v14;
  v15 = v18;
  if (v18)
  {
    v15 = CFRetain(v18);
  }

  v7[1] = v15;
  dispatch_async_f(v13, v7, fsadct_PrepareOfflinePlayableAlternatesAndWritePlaylistsDispatchFunction);
  *a4 = cf;
  cf = 0;
  dispatch_release(v13);
  v16 = 0;
  v7 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  free(v7);
  return v16;
}

void fsadct_PrepareOfflinePlayableAlternatesAndWritePlaylistsDispatchFunction(const __CFString **a1)
{
  v2 = a1;
  v3 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = v2[1];
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    v25 = 0;
    v23 = 0;
LABEL_32:
    v22 = -12782;
    goto LABEL_33;
  }

  v8 = v7(v5, 1, 0);
  if (v8)
  {
    v22 = v8;
    v25 = 0;
    v23 = 0;
    goto LABEL_33;
  }

  v9 = CFGetAllocator(v3);
  URLString[0] = 0;
  values = 0;
  keys[0] = 0;
  LODWORD(v257) = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  FigHLSPersistentStoreGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v23 = 0;
    v22 = -12782;
    goto LABEL_16;
  }

  v14 = v13(v12, @"MasterPlaylistNetworkURL", v9, keys);
  if (!v14)
  {
    if (CFURLCreateWithString(v9, keys[0], 0))
    {
      OUTLINED_FUNCTION_12_39();
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v15)
      {
        v16 = v15(v5, @"NetworkPlaylist", 0, 0, 0, &values);
        if (v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = OUTLINED_FUNCTION_11_45(values, v17, v18, &v257, v19, v20, v21, *(v10 + 16), 0, 0, 0, 0, URLString, 0);
          v23 = URLString[0];
          if (!v22)
          {
            if (!URLString[0])
            {
              v22 = 0;
              goto LABEL_15;
            }

            Alternates = FigMultivariantPlaylistGetAlternates(URLString[0]);
            v23 = URLString[0];
            if (Alternates)
            {
              v22 = 0;
              URLString[0] = 0;
LABEL_15:
              CFRelease(v9);
              goto LABEL_16;
            }
          }

          if (!v23)
          {
            goto LABEL_15;
          }

          CFRelease(v23);
        }

        v23 = 0;
        goto LABEL_15;
      }

      v23 = 0;
      v22 = -12782;
      goto LABEL_15;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
  }

  v22 = v14;
  v23 = 0;
LABEL_16:
  if (values)
  {
    CFRelease(values);
  }

  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  if (v22)
  {
    goto LABEL_228;
  }

  v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v26)
  {
    v25 = 0;
    goto LABEL_32;
  }

  v27 = v26(v5, 0xFFFFFFFFLL, 0);
  if (v27)
  {
    v22 = v27;
LABEL_228:
    v25 = 0;
    goto LABEL_33;
  }

  v235 = v1;
  v239 = v6;
  v257 = 0;
  if (!v23 || !FigMultivariantPlaylistGetAlternates(v23))
  {
    v25 = 0;
    goto LABEL_65;
  }

  URLString[0] = 0;
  values = 0;
  keys[0] = 0;
  v28 = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(v3);
  OUTLINED_FUNCTION_12_39();
  FigHLSPersistentStoreGetFigBaseObject();
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v31)
  {
    v43 = 0;
    v40 = 0;
    v9 = 0;
    v22 = -12782;
    goto LABEL_47;
  }

  v32 = v31(v30, @"MasterPlaylistNetworkURL", v9, URLString);
  if (!v32)
  {
    v33 = CFGetAllocator(v3);
    v9 = CFURLCreateWithString(v33, URLString[0], 0);
    v34 = *MEMORY[0x1E695E480];
    v35 = OUTLINED_FUNCTION_312();
    Mutable = CFDictionaryCreateMutable(v35, v36, v37, v38);
    v40 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"FSC_DownloadDestinationURL", *(v28 + 8));
      v41 = CFGetAllocator(v3);
      v42 = FigStreamingCacheCreate(v41, v9, v40, keys);
      if (!v42)
      {
        v22 = FigAlternateOfflinePlayableForMediaSelectionFilterCreate(v34, keys[0], 0, 0, &values);
        if (!v22)
        {
          v43 = values;
          values = 0;
          goto LABEL_47;
        }

        goto LABEL_211;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
    }

    v22 = v42;
LABEL_211:
    v43 = 0;
    goto LABEL_47;
  }

  v22 = v32;
  v43 = 0;
  v40 = 0;
  v9 = 0;
LABEL_47:
  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (values)
  {
    CFRelease(values);
  }

  v6 = v239;
  if (v9)
  {
    CFRelease(v9);
  }

  if (URLString[0])
  {
    CFRelease(URLString[0]);
  }

  if (v22)
  {
    goto LABEL_233;
  }

  v9 = FigMultivariantPlaylistGetAlternates(v23);
  v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v45)
  {
    v25 = 0;
    v22 = -12782;
    goto LABEL_62;
  }

  v22 = v45(v43, v9, &v257);
  v25 = v257;
  if (!v22)
  {
    v257 = 0;
    goto LABEL_62;
  }

  if (v257)
  {
    CFRelease(v257);
LABEL_233:
    v25 = 0;
  }

LABEL_62:
  if (v43)
  {
    CFRelease(v43);
  }

  if (!v22)
  {
LABEL_65:
    v46 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v46 || v46(v5, 1, 1))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
      v22 = v56;
      goto LABEL_33;
    }

    v229 = DerivedStorage;
    v47 = CFGetAllocator(v3);
    cf = CFSetCreateMutable(v47, 0, MEMORY[0x1E695E9F8]);
    v48 = CFGetAllocator(v3);
    URLString[0] = 0;
    keys[0] = 0;
    v49 = CFDictionaryCreateMutable(v48, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v49)
    {
      v50 = v49;
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v51)
      {
        v52 = v51(v5, URLString);
        if (!v52)
        {
          for (i = 0; ; ++i)
          {
            Count = URLString[0];
            if (URLString[0])
            {
              Count = CFArrayGetCount(URLString[0]);
            }

            if (i >= Count)
            {
              break;
            }

            CFArrayGetValueAtIndex(URLString[0], i);
            OUTLINED_FUNCTION_12_39();
            v55 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (!v55)
            {
              goto LABEL_80;
            }

            v52 = v55(v5, v9, keys);
            if (v52)
            {
              goto LABEL_226;
            }

            FigCFDictionarySetValue();
            if (keys[0])
            {
              CFRelease(keys[0]);
              keys[0] = 0;
            }
          }

          v22 = 0;
          v57 = v50;
          goto LABEL_83;
        }

LABEL_226:
        v22 = v52;
      }

      else
      {
LABEL_80:
        v22 = -12782;
      }

      CFRelease(v50);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
      v22 = v193;
    }

    v57 = 0;
LABEL_83:
    v58 = cf;
    if (URLString[0])
    {
      CFRelease(URLString[0]);
    }

    if (v22)
    {
LABEL_194:
      if (!v57)
      {
        goto LABEL_196;
      }

      goto LABEL_195;
    }

    if (v23)
    {
      v59 = CFGetAllocator(v3);
      v60 = CFStringCreateMutable(v59, 0);
      if (!v60)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
        v22 = v194;
        if (!v57)
        {
LABEL_196:
          v6 = v239;
          if (v58)
          {
            CFRelease(v58);
          }

          goto LABEL_33;
        }

LABEL_195:
        CFRelease(v57);
        goto LABEL_196;
      }

      v61 = v60;
      *&v196 = "#EXTM3U";
      CFStringAppendFormat(v60, 0, @"%s\n");
      if (FigMultivariantPlaylistGetVersion(v23))
      {
        *&v196 = "#EXT-X-VERSION";
        *(&v196 + 1) = FigMultivariantPlaylistGetVersion(v23);
        v62 = OUTLINED_FUNCTION_9_2();
        CFStringAppendFormat(v62, v63, v64);
      }

      if (FigMultivariantPlaylistHasIndependentSegments(v23))
      {
        *&v196 = "#EXT-X-INDEPENDENT-SEGMENTS";
        v65 = OUTLINED_FUNCTION_9_2();
        CFStringAppendFormat(v65, v66, v67);
      }

      v252 = 0u;
      URLString[0] = v3;
      URLString[1] = v5;
      *&v251 = v57;
      *(&v251 + 1) = v61;
      v253 = v23;
      v254 = cf;
      v255 = 0;
      AudioGroups = FigMultivariantPlaylistGetAudioGroups(v23);
      v76 = OUTLINED_FUNCTION_8_43(AudioGroups, v69, v70, v71, v72, v73, v74, v75, v196, *(&v196 + 1), v204, v208, v212, v216, v220, v224, v229, cf, v1, v239, v240, v245, URLString[0]);
      v79 = fsadct_WritePlaylistsForMediaTypeToMovpkgAndAddToMutlivariantPlaylist(v76, v77, v78, 1936684398);
      if (v79 || (SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v23), v88 = OUTLINED_FUNCTION_8_43(SubtitleGroups, v81, v82, v83, v84, v85, v86, v87, v197, v200, v205, v209, v213, v217, v221, v225, v230, cfa, v236, v239, v241, v246, URLString[0]), (v79 = fsadct_WritePlaylistsForMediaTypeToMovpkgAndAddToMutlivariantPlaylist(v88, v89, v90, 1935832172)) != 0) || (ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v23), v99 = OUTLINED_FUNCTION_8_43(ClosedCaptionGroups, v92, v93, v94, v95, v96, v97, v98, v198, v201, v206, v210, v214, v218, v222, v226, v231, cfa, v237, v239, v242, v247, URLString[0]), (v79 = fsadct_WritePlaylistsForMediaTypeToMovpkgAndAddToMutlivariantPlaylist(v99, v100, v101, 1668047728)) != 0))
      {
        v22 = v79;
        v58 = cfa;
        goto LABEL_193;
      }

      VideoGroups = FigMultivariantPlaylistGetVideoGroups(v23);
      v110 = OUTLINED_FUNCTION_8_43(VideoGroups, v103, v104, v105, v106, v107, v108, v109, v199, v202, v207, v211, v215, v219, v223, v227, v232, cfa, v238, v239, v243, v248, URLString[0]);
      v113 = fsadct_WritePlaylistsForMediaTypeToMovpkgAndAddToMutlivariantPlaylist(v110, v111, v112, 1986618469);
      if (v113)
      {
        v22 = v113;
LABEL_193:
        CFRelease(v61);
        goto LABEL_194;
      }
    }

    else
    {
      v61 = 0;
    }

    values = 0;
    keys[0] = 0;
    *&v252 = 0;
    *URLString = 0u;
    v251 = 0u;
    if (!v57)
    {
      goto LABEL_212;
    }

    if (v25)
    {
      if (CFArrayGetCount(v25) >= 1)
      {
        v249 = v57;
        v228 = v2;
        v114 = 0;
        v244 = @"Unknown";
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v25, v114);
          URLForCacheLookup = FigAlternateGetURLForCacheLookup(ValueAtIndex);
          v117 = fsadct_CopyPersistentStreamIDFromNetworkURL(v249, URLForCacheLookup, &values);
          if (v117)
          {
            break;
          }

          v118 = CFGetAllocator(v3);
          OUTLINED_FUNCTION_13_33(v118, v119, v120, v121, v122, v123, v124, v125, v196, *(&v196 + 1), v204, v208, v212, v216, v220, v228, v229, cf, v235, v239, v244, v249);
          if (v117)
          {
            break;
          }

          v117 = fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry(v3, URLString[0]);
          if (v117)
          {
            break;
          }

          v117 = fsadct_WriteMediaPlaylistAndAddToMovpkg(v3, URLString, v23);
          if (v117)
          {
            break;
          }

          if (v23 && FigMultivariantPlaylistGetAlternates(v23))
          {
            if (v61 && v58 && ValueAtIndex)
            {
              if (!FigAlternateGetAudioGroupIDString(ValueAtIndex) || FigAlternateIsAudioGroupSynthesized(ValueAtIndex) || (v126 = FigAlternateGetAudioGroupIDString(ValueAtIndex), OUTLINED_FUNCTION_10_42(v126)))
              {
                if (!FigAlternateGetSubtitleGroupIDString(ValueAtIndex) || FigAlternateIsSubtitleGroupSynthesized(ValueAtIndex) || (v127 = FigAlternateGetSubtitleGroupIDString(ValueAtIndex), OUTLINED_FUNCTION_10_42(v127)))
                {
                  if (!FigAlternateGetVideoGroupIDString(ValueAtIndex) || FigAlternateIsVideoGroupSynthesized(ValueAtIndex) || (v128 = FigAlternateGetVideoGroupIDString(ValueAtIndex), OUTLINED_FUNCTION_10_42(v128)))
                  {
                    v129 = OUTLINED_FUNCTION_9_2();
                    CFStringAppendFormat(v129, v130, @"%s:", "#EXT-X-STREAM-INF");
                    FigAlternateGetPeakBitRate(ValueAtIndex);
                    v131 = OUTLINED_FUNCTION_2_115();
                    CFStringAppendFormat(v131, v132, @"%s=%d");
                    if (FigAlternateGetAverageBitRate(ValueAtIndex) >= 1)
                    {
                      FigAlternateGetAverageBitRate(ValueAtIndex);
                      v133 = OUTLINED_FUNCTION_2_115();
                      CFStringAppendFormat(v133, v134, @",%s=%d");
                    }

                    FigAlternateGetVideoRangeString(ValueAtIndex);
                    if (!FigCFEqual())
                    {
                      FigAlternateGetVideoRangeString(ValueAtIndex);
                      v135 = OUTLINED_FUNCTION_2_115();
                      CFStringAppendFormat(v135, v136, @",%s=%@");
                    }

                    FigAlternateGetCodecString(ValueAtIndex);
                    v137 = OUTLINED_FUNCTION_2_115();
                    CFStringAppendFormat(v137, v138, @",%s=%@");
                    FigAlternateGetResolution(ValueAtIndex);
                    if (v139 != 0.0 && FigAlternateGetResolution(ValueAtIndex) != 0.0)
                    {
                      Resolution = FigAlternateGetResolution(ValueAtIndex);
                      FigAlternateGetResolution(ValueAtIndex);
                      v204 = v141;
                      v142 = OUTLINED_FUNCTION_9_2();
                      CFStringAppendFormat(v142, v143, @",%s=%llux%llu", "RESOLUTION", Resolution);
                    }

                    if (FigAlternateGetFrameRate(ValueAtIndex) > 0.0)
                    {
                      FrameRate = FigAlternateGetFrameRate(ValueAtIndex);
                      v144 = OUTLINED_FUNCTION_9_2();
                      CFStringAppendFormat(v144, v145, @",%s=%f", "FRAME-RATE", *&FrameRate);
                    }

                    if (FigAlternateGetClosedCaptionGroupIDString(ValueAtIndex))
                    {
                      ClosedCaptionGroupIDString = FigAlternateGetClosedCaptionGroupIDString(ValueAtIndex);
                      if (OUTLINED_FUNCTION_10_42(ClosedCaptionGroupIDString))
                      {
                        FigAlternateGetClosedCaptionGroupIDString(ValueAtIndex);
                        v147 = OUTLINED_FUNCTION_2_115();
                        CFStringAppendFormat(v147, v148, @",%s=%@");
                      }
                    }

                    if (FigAlternateGetAudioGroupIDString(ValueAtIndex))
                    {
                      AudioGroupIDString = FigAlternateGetAudioGroupIDString(ValueAtIndex);
                      if (OUTLINED_FUNCTION_10_42(AudioGroupIDString))
                      {
                        FigAlternateGetAudioGroupIDString(ValueAtIndex);
                        v150 = OUTLINED_FUNCTION_2_115();
                        CFStringAppendFormat(v150, v151, @",%s=%@");
                      }
                    }

                    if (FigAlternateGetSubtitleGroupIDString(ValueAtIndex))
                    {
                      SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(ValueAtIndex);
                      if (OUTLINED_FUNCTION_10_42(SubtitleGroupIDString))
                      {
                        FigAlternateGetSubtitleGroupIDString(ValueAtIndex);
                        v153 = OUTLINED_FUNCTION_2_115();
                        CFStringAppendFormat(v153, v154, @",%s=%@");
                      }
                    }

                    if (FigAlternateGetVideoGroupIDString(ValueAtIndex))
                    {
                      VideoGroupIDString = FigAlternateGetVideoGroupIDString(ValueAtIndex);
                      if (OUTLINED_FUNCTION_10_42(VideoGroupIDString))
                      {
                        FigAlternateGetVideoGroupIDString(ValueAtIndex);
                        v156 = OUTLINED_FUNCTION_2_115();
                        CFStringAppendFormat(v156, v157, @",%s=%@");
                      }
                    }

                    HDCPLevel = FigAlternateGetHDCPLevel(ValueAtIndex);
                    if (HDCPLevel != -2)
                    {
                      FigAlternateGetPlaylistStringFromHDCPLevel(HDCPLevel);
                      v159 = OUTLINED_FUNCTION_2_115();
                      CFStringAppendFormat(v159, v160, @",%s=%@");
                    }

                    if (FigAlternateGetStableStreamIdentifier(ValueAtIndex))
                    {
                      FigAlternateGetStableStreamIdentifier(ValueAtIndex);
                      v161 = OUTLINED_FUNCTION_2_115();
                      CFStringAppendFormat(v161, v162, @",%s=%@");
                    }

                    v196 = __PAIR128__(v251, URLString[1]);
                    v163 = OUTLINED_FUNCTION_9_2();
                    CFStringAppendFormat(v163, v164, @"\n../%@/%@\n");
                  }
                }
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
              if (v117)
              {
                break;
              }
            }
          }

          fsadct_DestroyMediaPlaylistWriterHelper(URLString);
          if (values)
          {
            CFRelease(values);
            values = 0;
          }

          if (++v114 >= CFArrayGetCount(v25))
          {
            v22 = 0;
            goto LABEL_154;
          }
        }

        v22 = v117;
LABEL_154:
        v2 = v228;
        v57 = v249;
LABEL_162:
        fsadct_DestroyMediaPlaylistWriterHelper(URLString);
        if (values)
        {
          CFRelease(values);
        }

        if (!v23 || v22)
        {
LABEL_192:
          if (!v61)
          {
            goto LABEL_194;
          }

          goto LABEL_193;
        }

        blockBufferOut = 0;
        v257 = 0;
        if (!v61)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_69();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
          v22 = v195;
          goto LABEL_182;
        }

        v174 = v57;
        v175 = CFGetAllocator(v3);
        appended = CMBlockBufferCreateEmpty(v175, 0, 0, &blockBufferOut);
        if (!appended)
        {
          CFGetAllocator(v3);
          BytesFromCFString = FigCreateBytesFromCFString();
          if (BytesFromCFString)
          {
            v178 = BytesFromCFString;
            v179 = blockBufferOut;
            v180 = v257;
            v181 = CFGetAllocator(v3);
            appended = CMBlockBufferAppendMemoryBlock(v179, v178, v180, v181, 0, 0, v257, 0);
            if (!appended)
            {
              v182 = blockBufferOut;
              v183 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (!v183)
              {
                v22 = -12782;
LABEL_181:
                v57 = v174;
LABEL_182:
                v58 = cf;
LABEL_190:
                if (blockBufferOut)
                {
                  CFRelease(blockBufferOut);
                }

                goto LABEL_192;
              }

              appended = v183(v5, @"OfflineAvailableMedia", @"LocallyHostedPlaylist.m3u8", 0, v182);
              if (!appended)
              {
                URLString[0] = 0;
                values = 0;
                keys[0] = 0;
                v184 = CMBaseObjectGetDerivedStorage();
                if (*v184)
                {
LABEL_179:
                  v22 = 0;
LABEL_184:
                  v57 = v174;
                  v58 = cf;
                  if (URLString[0])
                  {
                    CFRelease(URLString[0]);
                  }

                  if (keys[0])
                  {
                    CFRelease(keys[0]);
                  }

                  if (values)
                  {
                    CFRelease(values);
                  }

                  goto LABEL_190;
                }

                if (!v5)
                {
                  goto LABEL_219;
                }

                v185 = v184;
                v186 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v186)
                {
                  v187 = v186(v5, @"OfflineAvailableMedia", keys, URLString, 0, 0);
                  if (v187)
                  {
                    goto LABEL_220;
                  }

                  CFGetAllocator(v3);
                  OUTLINED_FUNCTION_12_39();
                  FigHLSPersistentStoreGetFigBaseObject();
                  v189 = v188;
                  v190 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v190)
                  {
                    v187 = v190(v189, @"DataDirectory", @"OfflineAvailableMedia", &values);
                    if (!v187)
                    {
                      v191 = CFGetAllocator(v3);
                      v192 = CFURLCreateCopyAppendingPathComponent(v191, values, URLString[0], 0);
                      *v185 = v192;
                      if (v192)
                      {
                        goto LABEL_179;
                      }

LABEL_219:
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_69();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    }

LABEL_220:
                    v22 = v187;
                    goto LABEL_184;
                  }
                }

                v22 = -12782;
                goto LABEL_184;
              }
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_69();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v196, DWORD2(v196), v204);
          }
        }

        v22 = appended;
        goto LABEL_181;
      }

LABEL_153:
      v22 = 0;
      goto LABEL_162;
    }

    if (v23)
    {
      goto LABEL_153;
    }

    if (FigCFDictionaryGetCount() == 1 && (CFDictionaryGetKeysAndValues(v57, keys, &values), keys[0]) && values)
    {
      v165 = CFGetAllocator(v3);
      OUTLINED_FUNCTION_13_33(v165, v166, v167, v168, v169, v170, v171, v172, v196, *(&v196 + 1), v204, v208, v212, v216, v220, v224, v229, cf, v235, v239, v240, v245);
      if (!v173)
      {
        v173 = fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry(v3, URLString[0]);
        if (!v173)
        {
          v22 = fsadct_WriteMediaPlaylistAndAddToMovpkg(v3, URLString, 0);
          if (!v22)
          {
            values = 0;
          }

          goto LABEL_162;
        }
      }
    }

    else
    {
LABEL_212:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v22 = v173;
    goto LABEL_162;
  }

LABEL_33:
  v44 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v44)
  {
    v44(v5, 0xFFFFFFFFLL, 1);
  }

  if (v22)
  {
    *(v6 + 20) = v22;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  free(v2);
}

uint64_t fsadct_WritePlaylistsForMediaTypeToMovpkgAndAddToMutlivariantPlaylist(_DWORD *context, int a2, CFDictionaryRef theDict, int a4)
{
  if (!theDict)
  {
    return 0;
  }

  context[8] = a4;
  CFDictionaryApplyFunction(theDict, fsadct_WritePlaylistsForMediaGroupApplierFunction, context);
  result = context[16];
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v6, v7, v8);
    return 0;
  }

  return result;
}

void fsadct_WritePlaylistsForPersistentIDApplierFunction(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 48);
  v85 = *(a3 + 40);
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962BB0]);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  cf = 0;
  v13 = *(a3 + 56);
  if (!v13)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294948155, "<<<< DownloadTranslator >>>>", 950, v3);
    goto LABEL_62;
  }

  if (!Value)
  {
    v82 = v3;
    goto LABEL_11;
  }

  v14 = fsadct_CopyPersistentStreamIDFromNetworkURL(v9, Value, &cf);
  if (v14)
  {
    goto LABEL_62;
  }

  if (!cf)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_59;
  }

  v15 = CFGetAllocator(v6);
  fsadct_MakeMediaPlaylistWriterHelper(v15, v6, v7, cf, &v87);
  if (v14 || (v14 = fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry(v6, v87)) != 0 || (v14 = fsadct_WriteMediaPlaylistAndAddToMovpkg(v6, &v87, v11)) != 0)
  {
LABEL_62:
    v21 = v14;
    goto LABEL_57;
  }

  if (!cf)
  {
    goto LABEL_19;
  }

  v82 = v3;
  v13 = *(a3 + 56);
LABEL_11:
  theSet = v13;
  v83 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B68]);
  v16 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B98]);
  v17 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962BC0]);
  v18 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B78]);
  v19 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962BA8]);
  v20 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B70]);
  v21 = 0;
  v91 = 0;
  v90 = 0;
  if (v10 != 1986618469 && v17 && v16)
  {
    if (v8)
    {
      v22 = v20;
      if (v10 == 1668047728)
      {
        v24 = "CLOSED-CAPTIONS";
        v23 = v85;
      }

      else
      {
        v23 = v85;
        if (v10 == 1935832172)
        {
          v24 = "SUBTITLES";
        }

        else
        {
          if (v10 != 1936684398)
          {
LABEL_23:
            if (v23)
            {
              v28 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v28, v29, v30, "GROUP-ID", v23);
            }

            v31 = OUTLINED_FUNCTION_383();
            CFStringAppendFormat(v31, v32, @",%s=%@", "LANGUAGE", v17);
            v33 = OUTLINED_FUNCTION_383();
            CFStringAppendFormat(v33, v34, @",%s=%@", "NAME", v16);
            if (v18)
            {
              v35 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v35, v36, v37, "INSTREAM-ID", v18);
            }

            if (FigCFDictionaryGetBooleanIfPresent())
            {
              if (v91)
              {
                v38 = "YES";
              }

              else
              {
                v38 = "NO";
              }

              v76 = v38;
              v39 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v39, v40, v41, "AUTOSELECT", v76);
            }

            if (FigCFDictionaryGetBooleanIfPresent())
            {
              if (HIBYTE(v91))
              {
                v42 = "YES";
              }

              else
              {
                v42 = "NO";
              }

              v77 = v42;
              v43 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v43, v44, v45, "FORCED", v77);
            }

            if (FigCFDictionaryGetBooleanIfPresent())
            {
              if (v90)
              {
                v46 = "YES";
              }

              else
              {
                v46 = "NO";
              }

              v78 = v46;
              v47 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v47, v48, v49, "DEFAULT", v78);
            }

            if (v83)
            {
              v50 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v50, v51, v52, "CHANNELS", v83);
            }

            if (v19)
            {
              v53 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v53, v54, v55, "STABLE-RENDITION-ID", v19);
            }

            if (v22)
            {
              v56 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v56, v57, v58, "CHARACTERISTICS");
              if (CFArrayGetCount(v22) >= 1)
              {
                v59 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v22, v59);
                  if (v59)
                  {
                    v61 = OUTLINED_FUNCTION_383();
                    CFStringAppendFormat(v61, v62, @",");
                  }

                  v63 = OUTLINED_FUNCTION_383();
                  CFStringAppendFormat(v63, v64, @"%@", ValueAtIndex);
                  ++v59;
                }

                while (v59 < CFArrayGetCount(v22));
              }

              v65 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v65, v66, v67);
              v23 = v85;
            }

            if (*(&v87 + 1) && v88)
            {
              v79 = *(&v87 + 1);
              v81 = v88;
              v68 = OUTLINED_FUNCTION_383();
              CFStringAppendFormat(v68, v69, v70, "URI", v79, v81);
            }

            v71 = OUTLINED_FUNCTION_383();
            CFStringAppendFormat(v71, v72, v73);
            CFSetSetValue(theSet, v23);
            v21 = 0;
            goto LABEL_57;
          }

          v24 = "AUDIO";
        }
      }

      v80 = v24;
      v25 = OUTLINED_FUNCTION_383();
      CFStringAppendFormat(v25, v26, v27, "#EXT-X-MEDIA", "TYPE", v80);
      goto LABEL_23;
    }

    v75 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v75, 4294948155, "<<<< DownloadTranslator >>>>", 836, v82);
    goto LABEL_62;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_59:
  fsadct_DestroyMediaPlaylistWriterHelper(&v87);
  *(a3 + 64) = v21;
}

double fsadct_MakeMediaPlaylistWriterHelper(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, CFStringRef *a5)
{
  v71 = *MEMORY[0x1E695E4C0];
  if (cf && a1 && a3 && a5)
  {
    a5[1] = CFRetain(cf);
    URLString = 0;
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = MEMORY[0x1E695E4D0];
    if (Mutable)
    {
      v12 = Mutable;
      CFDictionarySetValue(Mutable, @"StreamInfoDemandWriteAccess", *MEMORY[0x1E695E4D0]);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v13)
      {
        v14 = v13(a3, cf, v12, &URLString);
        if (v14)
        {
          if (URLString)
          {
            CFRelease(URLString);
          }
        }

        else
        {
          *a5 = URLString;
          URLString = 0;
        }
      }

      else
      {
        v14 = -12782;
      }

      CFRelease(v12);
      if (v14)
      {
        return result;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v66, v67);
      if (v61)
      {
        return result;
      }
    }

    FigHLSPersistentStreamInfoGetFigBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18 && !v18(v17, @"StreamInfoCompleteState", a1, &v71) && v71 == *v11)
    {
      v19 = *a5;
      URLString = 0;
      if (v19)
      {
        FigHLSPersistentStreamInfoGetFigBaseObject();
        v21 = v20;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v22)
        {
          v24 = 0;
          v25 = -12782;
          goto LABEL_21;
        }

        v23 = v22(v21, @"StreamInfoMediaPlaylistNetworkURL", v9, &URLString);
        if (!v23)
        {
          v24 = CFURLCreateWithString(v9, URLString, 0);
          if (v24)
          {
            v25 = 0;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v66, v67);
            v25 = v63;
          }

LABEL_21:
          if (URLString)
          {
            CFRelease(URLString);
          }

          if (v25)
          {
            goto LABEL_60;
          }

          v26 = *a5;
          URLString = 0;
          v75 = 0;
          cfa = 0;
          HIDWORD(v72) = 0;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (v24 && v26)
          {
            v28 = DerivedStorage;
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v29)
            {
              v36 = -12782;
              goto LABEL_31;
            }

            v30 = v29(v26, @"NetworkPlaylist", &URLString, &cfa);
            if (!v30)
            {
              v36 = OUTLINED_FUNCTION_11_45(cfa, v31, v32, &v72 + 1, v33, v34, v35, *(v28 + 16), 0, 0, 0, 0, 0, &v75);
              if (!v36)
              {
                a5[3] = v75;
                v75 = 0;
              }

LABEL_31:
              if (URLString)
              {
                CFRelease(URLString);
              }

              if (cfa)
              {
                CFRelease(cfa);
              }

              if (v75)
              {
                CFRelease(v75);
              }

              if (v36)
              {
                goto LABEL_60;
              }

              if (a5[1] && (v65 = a5[1], v37 = OUTLINED_FUNCTION_383(), (v40 = CFStringCreateWithFormat(v37, v38, v39, v65, "LocallyHostedPlaylist.m3u8")) != 0))
              {
                a5[2] = v40;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                if (v62)
                {
LABEL_60:
                  if (v24)
                  {
                    CFRelease(v24);
                  }

                  return result;
                }
              }

              v41 = *a5;
              v75 = 0;
              cfa = 0;
              URLString = 0;
              v74 = 0;
              if (v41)
              {
                FigHLSPersistentStreamInfoGetFigBaseObject();
                v43 = v42;
                v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v44)
                {
                  goto LABEL_53;
                }

                if (!v44(v43, @"StreamInfoMediaSegmentList", a1, &cfa))
                {
                  FigHLSPersistentStreamInfoGetFigBaseObject();
                  v46 = v45;
                  v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v47)
                  {
                    if (!v47(v46, @"StreamInfoMediaInitializationSegmentList", a1, &v75))
                    {
                      v48 = OUTLINED_FUNCTION_383();
                      v52 = CFDictionaryCreateMutable(v48, v49, v50, v51);
                      v60 = v52;
                      if (!v52)
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_4();
                        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v66, v67);
                        goto LABEL_54;
                      }

                      URLString = v52;
                      if (v75)
                      {
                        OUTLINED_FUNCTION_7_60(v75, v53, v54, v55, v56, v57, v58, v59, v64, v66, v67, v68, v69, v70, v71, v72);
                        if (v74)
                        {
                          goto LABEL_54;
                        }
                      }

                      if (cfa)
                      {
                        OUTLINED_FUNCTION_7_60(cfa, v53, v54, v55, v56, v57, v58, v59, v64, v66, v67, v68, v69, v70, v71, v72);
                        if (v74)
                        {
                          goto LABEL_54;
                        }
                      }

                      a5[4] = v60;
                    }

                    goto LABEL_52;
                  }

LABEL_53:
                  v60 = 0;
                  goto LABEL_54;
                }
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v66, v67);
              }

LABEL_52:
              v60 = 0;
LABEL_54:
              if (cfa)
              {
                CFRelease(cfa);
              }

              if (v75)
              {
                CFRelease(v75);
              }

              if (v60)
              {
                CFRelease(v60);
              }

              goto LABEL_60;
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          v36 = v30;
          goto LABEL_31;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v66, v67);
      }

      v25 = v23;
      v24 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t fsadct_AppendCryptKeyToPlaylistString(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v41;
  }

  if (!FigContentKeySpecifierGetIdentifier(a2))
  {
    return 0;
  }

  Identifier = FigContentKeySpecifierGetIdentifier(a2);
  KeySystem = FigContentKeySpecifierGetKeySystem(a2);
  v7 = &stru_1F0B1AFB8;
  v8 = @"identity";
  if (KeySystem != 2)
  {
    v8 = &stru_1F0B1AFB8;
  }

  if (KeySystem == 1)
  {
    v9 = @"com.apple.streamingkeydelivery";
  }

  else
  {
    v9 = v8;
  }

  v10 = FigContentKeySpecifierGetEncryptionMethod(a2) - 1;
  if (v10 <= 4)
  {
    v7 = off_1E748EE98[v10];
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (CFDataGetLength(a3) == 16)
  {
    HexStringFromCFData = FigCreateHexStringFromCFData();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
  }

  v12 = HexStringFromCFData;
  if (!HexStringFromCFData)
  {
LABEL_15:
    v13 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v13, v14, v15, "#EXT-X-KEY", "URI", Identifier);
    if (CFStringGetLength(v9) >= 1)
    {
      v16 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v16, v17, v18, "KEYFORMAT", v9);
    }

    if (CFStringGetLength(v7) >= 1)
    {
      v19 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v19, v20, v21, "METHOD", v7);
    }

    if (FigContentKeySpecifierGetSupportedProtocolVersions(a2))
    {
      v22 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v22, v23, v24, "KEYFORMATVERSIONS");
      v25 = 0;
      for (i = 1; ; i = 0)
      {
        SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(a2);
        if (SupportedProtocolVersions)
        {
          SupportedProtocolVersions = CFArrayGetCount(SupportedProtocolVersions);
        }

        if (v25 >= SupportedProtocolVersions)
        {
          break;
        }

        v28 = FigContentKeySpecifierGetSupportedProtocolVersions(a2);
        CFArrayGetValueAtIndex(v28, v25);
        SInt64 = FigCFNumberGetSInt64();
        if ((i & 1) == 0)
        {
          v30 = OUTLINED_FUNCTION_312();
          CFStringAppendFormat(v30, v31, @"/");
        }

        v32 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v32, v33, @"%lld", SInt64);
        ++v25;
      }

      v34 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v34, v35, v36);
    }

    v37 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v37, v38, v39);
    return 0;
  }

  return v12;
}

double fsadct_CopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void fsadct_CopyPersistentStreamIDFromNetworkURL_cold_1(const __CFDictionary *a1, const void *a2, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    *a3 = CFRetain(Value);
  }

  CFRelease(a2);
}

void fsadct_CopyPersistentStreamIDFromNetworkURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CopyPersistentStreamIDFromNetworkURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CopyPersistentStreamIDFromNetworkURL_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CopyPersistentStreamIDFromNetworkURL_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

double fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, vars0);
  if (v2 || (fig_log_get_emitter(), result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, vars0a), v2))
  {
    *a1 = v2;
  }

  return result;
}

void fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_6(__CFString *a1, uint64_t *a2)
{
  CFStringAppendFormat(a1, 0, @"%s\n", "#EXTM3U");
  TargetDuration = FigMediaPlaylistGetTargetDuration(*a2);
  v3 = OUTLINED_FUNCTION_312();
  CFStringAppendFormat(v3, v4, v5, "#EXT-X-TARGETDURATION", TargetDuration);
  if (FigMediaPlaylistGetVersion(*a2))
  {
    Version = FigMediaPlaylistGetVersion(*a2);
    v6 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v6, v7, v8, "#EXT-X-VERSION", Version);
  }

  v9 = OUTLINED_FUNCTION_312();
  CFStringAppendFormat(v9, v10, v11, "#EXT-X-MEDIA-SEQUENCE", 0);
  v12 = OUTLINED_FUNCTION_312();
  CFStringAppendFormat(v12, v13, v14, "#EXT-X-PLAYLIST-TYPE", "VOD");
  if (FigMediaPlaylistHasIndependentSegments(*a2))
  {
    v15 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v15, v16, v17, "#EXT-X-INDEPENDENT-SEGMENTS");
  }
}

void fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_AppendSegmentToPlaylistString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_AppendSegmentToPlaylistString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_AppendSegmentToPlaylistString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_AppendSegmentToPlaylistString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fsadct_AppendSegmentToPlaylistString_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCaptionRendererMACacheLoad(void *a1, int a2)
{
  if (!a1[42])
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_1_117();
  if (!v4)
  {
    return 4294950095;
  }

  *v4 = CFRetain(a1);
  OUTLINED_FUNCTION_0_130();
  if (a2)
  {
    dispatch_sync_f(v5, v6, v7);
  }

  else
  {
    dispatch_async_f(v5, v6, v7);
  }

  return 0;
}

void mediaAccessibilityDidChange_0(uint64_t a1, void *a2)
{
  if (a2[42])
  {
    v3 = OUTLINED_FUNCTION_1_117();
    if (v3)
    {
      *v3 = CFRetain(a2);
      OUTLINED_FUNCTION_0_130();

      dispatch_async_f(v4, v5, v6);
    }
  }
}

void FigCaptionRendererMACacheCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

const AudioStreamBasicDescription *faf_canProcessTrim(const AudioStreamBasicDescription *result)
{
  if (result)
  {
    v1 = result;
    if (CMFormatDescriptionGetMediaSubType(result) == 1819304813)
    {
      result = CMAudioFormatDescriptionGetStreamBasicDescription(v1);
      if (result)
      {
        return ((result->mFormatFlags & 0x20) == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void figAudioFileWriter_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void figAudioFileWriter_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_CopyTrackProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void figAudioFileWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_SetTrackProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void figAudioFileWriter_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_SetTrackProperty_cold_4(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void figAudioFileWriter_SetTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_SetTrackProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_SetTrackProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figAudioFileWriter_SetTrackProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void figAudioFileWriter_AddSampleBufferToTrack_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void figAudioFileWriter_AddSampleBufferToTrack_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void figAudioFileWriter_AddSampleBufferToTrack_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double figAudioFileWriter_AddSampleBufferToTrack_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void figAudioFileWriter_AddSampleBufferToTrack_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void faf_getTrimsOfSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void faf_getTrimsOfSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigFileStarByteStreamCreateForFileURL(const __CFURL *a1, uint64_t a2, CFTypeRef *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (FigIsPersistentURL())
  {
    PathForPersistentURL = FigCreatePathForPersistentURL();
    if (!PathForPersistentURL)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294955087, "<<< FileStarByteStream >>>", 391);
      return v15;
    }

    v6 = PathForPersistentURL;
    CFStringGetFileSystemRepresentation(PathForPersistentURL, buffer, 1023);
    CFRelease(v6);
  }

  else if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, 0);
    return v7;
  }

  CMByteStreamGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294967188, "<<< FileStarByteStream >>>", 406);
    return v15;
  }

  *DerivedStorage = CFRetain(a1);
  v10 = fopen(buffer, "rb");
  *(DerivedStorage + 8) = v10;
  if (!v10)
  {
    emitter = fig_log_get_emitter();
    __error();
    OUTLINED_FUNCTION_1_118();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<< FileStarByteStream >>>", 411);
    return v15;
  }

  v11 = fileno(v10);
  *(DerivedStorage + 16) = v11;
  if (v11 == -1)
  {
    v18 = fig_log_get_emitter();
    __error();
    OUTLINED_FUNCTION_1_118();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, "<<< FileStarByteStream >>>", 414);
    return v15;
  }

  fcntl(v11, 48, 1);
  FigByteStreamStatsSetupWorker();
  v12 = 0;
  *a3 = 0;
  return v12;
}

uint64_t FigFileStarByteStreamCreateForFile(uint64_t a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  DarwinPath = FigFileGetDarwinPath();
  v6 = strlen(DarwinPath);
  v7 = CFURLCreateFromFileSystemRepresentation(a2, DarwinPath, v6, 0);
  v8 = FigFileStarByteStreamCreateForFileURL(v7, a2, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void FigFileStarByteStreamRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  __error();
  OUTLINED_FUNCTION_1_118();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *a1 = v2;
}

void FigFileStarByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t EstimateByteTimingForTrack(uint64_t a1, unint64_t a2, int a3, CMTime *a4)
{
  v40[0] = 0;
  v39 = **&MEMORY[0x1E6960CC0];
  v38 = **&MEMORY[0x1E6960C88];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  *cf = 0u;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    goto LABEL_11;
  }

  updated = v8(a1, v40);
  if (!updated)
  {
    v10 = v40[0];
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v11)
    {
      goto LABEL_11;
    }

    updated = v11(v10, cf);
    if (!updated)
    {
      v12 = cf[0];
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v13)
      {
        updated = v13(v12, v30);
        if (!updated)
        {
          updated = UpdateCursorState(cf);
          if (!updated)
          {
            updated = UpdateCursorState(v30);
            if (!updated)
            {
              v14 = v32;
              v39 = *(&v30[1] + 4);
              if (MoveCursorByOne(v30))
              {
LABEL_10:
                v15 = 0;
                *a4 = v38;
                goto LABEL_12;
              }

              v17 = a3;
              while (1)
              {
                OUTLINED_FUNCTION_0_131();
                Seconds = CMTimeGetSeconds(&time);
                v19 = v32 + v14;
                if (v32 + v14 + (Seconds * v17) > a2)
                {
                  break;
                }

                time2 = v39;
                *&v27.value = *(v30 | 0xC);
                v27.epoch = *((v30 | 0xC) + 0x10);
                CMTimeAdd(&time, &time2, &v27);
                v39 = time;
                v14 = v19;
LABEL_37:
                if (MoveCursorByOne(v30))
                {
                  goto LABEL_10;
                }
              }

              while (1)
              {
                OUTLINED_FUNCTION_0_131();
                time2 = v38;
                if (CMTimeCompare(&time, &time2) < 0)
                {
                  v38 = v39;
                }

                v20 = v37;
                OUTLINED_FUNCTION_0_131();
                *&time2.value = *(cf | 0xC);
                time2.epoch = *((cf | 0xC) + 0x10);
                CMTimeSubtract(&v39, &time, &time2);
                v15 = MoveCursorByOne(cf);
                v21 = cf[0];
                v22 = v30[0];
                v23 = *(CMBaseObjectGetVTable() + 16);
                if (v23)
                {
                  v24 = v23;
                  if (!v22)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v24 = 0;
                  if (!v22)
                  {
                    goto LABEL_29;
                  }
                }

                v25 = *(CMBaseObjectGetVTable() + 16);
                if (!v25)
                {
LABEL_29:
                  v26 = 0;
                  goto LABEL_30;
                }

                v26 = v25;
LABEL_30:
                if (v24 != v26 || !*(v24 + 32) || (*(v26 + 32))(v21, v22) != -1 || v15)
                {
                  goto LABEL_12;
                }

                v14 -= v20;
                if (BYTE8(v37))
                {
                  goto LABEL_37;
                }
              }
            }
          }
        }

        goto LABEL_39;
      }

LABEL_11:
      v15 = 4294954514;
      goto LABEL_12;
    }
  }

LABEL_39:
  v15 = updated;
LABEL_12:
  if (v40[0])
  {
    CFRelease(v40[0]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v30[0])
  {
    CFRelease(v30[0]);
  }

  return v15;
}

uint64_t UpdateCursorState(void *a1)
{
  v2 = a1 + 12;
  v3 = *a1;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v3, v2);
  if (result)
  {
    return result;
  }

  v6 = *a1;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v6, 0, a1 + 8, 0, 0);
  if (result)
  {
    return result;
  }

  v8 = *a1;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(v8, a1 + 36);
  if (!result)
  {
    *(a1 + 72) = 1;
    v10 = a1 + 9;
    v11 = *a1;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v12)
    {
      v12(v11, v10, 0, 0, 0);
    }

    return 0;
  }

  return result;
}

uint64_t MoveCursorByOne(void *a1)
{
  v6 = 0;
  v2 = *a1;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v3)
  {
    LODWORD(result) = v3(v2, 1, &v6);
    v5 = v6 != 1;
  }

  else
  {
    LODWORD(result) = -12782;
    v5 = 1;
  }

  if (result == 0 && v5)
  {
    result = 4294954456;
  }

  else
  {
    result = result;
  }

  if (!result)
  {
    ++*(a1 + 2);
    return UpdateCursorState(a1);
  }

  return result;
}

uint64_t FigGetDecoderMaxPixelsPerSecondFromPlist(uint64_t a1, int *a2)
{
  v3 = a1;
  cf = 0;
  HIDWORD(v12) = 0;
  MediaValidatorPropertyList = FigMediaValidatorCreateMediaValidatorPropertyList(@"MediaValidator.plist", &cf);
  if (MediaValidatorPropertyList)
  {
    goto LABEL_52;
  }

  if (!cf)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0, v14);
    goto LABEL_52;
  }

  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  if (v3 == 1752589105)
  {
    vdmst_getCodecMaxVideoLevelFromValidationDictionary(cf, CFStringForOSTypeValue, &v12 + 1);
    if (!MediaValidatorPropertyList)
    {
      if (HIDWORD(v12) == 30)
      {
        v10 = 1225195520;
      }

      else if (HIDWORD(v12) == 186)
      {
LABEL_33:
        v10 = 1333723136;
      }

      else
      {
        if (HIDWORD(v12) != 63)
        {
          if (HIDWORD(v12) == 90)
          {
            v11 = 1266491392;
          }

          else
          {
            if (HIDWORD(v12) != 93)
            {
              switch(HIDWORD(v12))
              {
                case 0x78:
                  v10 = 1283391488;
                  break;
                case 0x7B:
                  v10 = 1291780096;
                  break;
                case 0x96:
                  v10 = 1300168704;
                  break;
                case 0x99:
                  v10 = 1308557312;
                  break;
                case 0x9C:
                case 0xB4:
LABEL_31:
                  v10 = 1316945920;
                  break;
                case 0xB7:
LABEL_34:
                  v10 = 1325334528;
                  break;
                case 0x3C:
                  v10 = 1247870976;
                  break;
                default:
                  v6 = 4294948175;
                  goto LABEL_6;
              }

              goto LABEL_48;
            }

            v11 = 1274880000;
          }

LABEL_49:
          v6 = 0;
          *a2 = v11;
          goto LABEL_6;
        }

        v10 = 1256259584;
      }

LABEL_48:
      v11 = v10;
      goto LABEL_49;
    }

LABEL_52:
    v6 = MediaValidatorPropertyList;
    goto LABEL_6;
  }

  if (v3 != 1635148593)
  {
    v6 = 4294948174;
    goto LABEL_6;
  }

  vdmst_getCodecMaxVideoLevelFromValidationDictionary(cf, CFStringForOSTypeValue, &v12 + 1);
  if (MediaValidatorPropertyList)
  {
    goto LABEL_52;
  }

  v6 = 4294948175;
  if (!(!v9 & v8))
  {
    v11 = 1192562688;
    switch(HIDWORD(v12))
    {
      case 0xA:
        goto LABEL_49;
      case 0xB:
        v11 = 1228636160;
        goto LABEL_49;
      case 0xC:
        v11 = 1237024768;
        goto LABEL_49;
      case 0xD:
      case 0x14:
        v11 = 1245290496;
        goto LABEL_49;
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
        goto LABEL_6;
      case 0x15:
        v11 = 1251651584;
        goto LABEL_49;
      case 0x16:
        v11 = 1251881984;
        goto LABEL_49;
      default:
        JUMPOUT(0);
    }
  }

  switch(HIDWORD(v12))
  {
    case '2':
      v10 = 1292894208;
      goto LABEL_48;
    case '3':
      v10 = 1299185664;
      goto LABEL_48;
    case '4':
      v11 = 1308434432;
      goto LABEL_49;
    case '<':
      goto LABEL_31;
    case '=':
      goto LABEL_34;
    case '>':
      goto LABEL_33;
    default:
      break;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

double vdmst_getCodecMaxVideoLevelFromValidationDictionary(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  cf = 0;
  v26 = 0;
  TypeID = CFNumberGetTypeID();
  OUTLINED_FUNCTION_3_92(TypeID, v5, v6, v7, TypeID, &cf);
  if (v8 || !cf || (v9 = CFGetTypeID(cf), v9 != CFNumberGetTypeID()) || !CFNumberGetValue(cf, kCFNumberSInt32Type, a3))
  {
    v11 = CFArrayGetTypeID();
    result = OUTLINED_FUNCTION_3_92(v11, v12, v13, v14, v11, &v26);
    if (!v15)
    {
      if (v26)
      {
        v16 = CFGetTypeID(v26);
        if (v16 == CFArrayGetTypeID() && CFArrayGetCount(v26) >= 1)
        {
          Count = CFArrayGetCount(v26);
          if (Count < 1)
          {
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, cf);
          }

          v18 = Count;
          v19 = 0;
          for (i = 0; i != v18; ++i)
          {
            valuePtr = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            if (v19 <= valuePtr)
            {
              v19 = valuePtr;
            }
          }

          if (v19)
          {
            *a3 = v19;
          }

          else
          {
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, cf);
          }
        }
      }
    }
  }

  return result;
}

double FigGetEstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate(CMFormatDescriptionRef desc, float *a2, float a3)
{
  v86 = *MEMORY[0x1E69E9840];
  if (sVDMSTCheckLogOnce != -1)
  {
    OUTLINED_FUNCTION_1_119();
    dispatch_once_f(v66, v67, v68);
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (MediaSubType == 1635135537 || MediaSubType == 1635148593 || MediaSubType == 1987063865 || MediaSubType == 1752589105)
  {
    v11 = MediaSubType;
    Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
    v13 = Dimensions;
    if (!Dimensions || (v14 = HIDWORD(Dimensions)) == 0)
    {
      OUTLINED_FUNCTION_0_132();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    LODWORD(v71) = 0;
    valuePtr = 0;
    v15 = MGCopyAnswer();
    if (!v15)
    {
      goto LABEL_70;
    }

    v16 = v15;
    CFNumberGetValue(v15, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v16);
    v17 = valuePtr;
    if (valuePtr < 1)
    {
      goto LABEL_70;
    }

    v72 = 0;
    *v73 = 0;
    HIBYTE(v71) = 0;
    Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
    if (!Extension)
    {
      goto LABEL_68;
    }

    v19 = Extension;
    v20 = CFGetTypeID(Extension);
    if (v20 != CFDictionaryGetTypeID())
    {
      goto LABEL_68;
    }

    switch(v11)
    {
      case 0x61763031:
        Value = CFDictionaryGetValue(v19, @"av1C");
        if (!Value)
        {
          break;
        }

        v28 = Value;
        v29 = CFGetTypeID(Value);
        if (v29 == CFArrayGetTypeID())
        {
          v28 = OUTLINED_FUNCTION_4_95();
          if (!v28)
          {
            break;
          }
        }

        else
        {
          v46 = CFGetTypeID(v28);
          if (v46 != CFDataGetTypeID())
          {
            break;
          }
        }

        v47 = CFGetTypeID(v28);
        if (v47 == CFDataGetTypeID())
        {
          CFDataGetBytePtr(v28);
          CFDataGetLength(v28);
          if (FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord())
          {
            goto LABEL_70;
          }

          LODWORD(result) = 3.0;
          goto LABEL_69;
        }

        break;
      case 0x61766331:
        v30 = CFDictionaryGetValue(v19, @"avcC");
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFArrayGetTypeID())
        {
          v31 = OUTLINED_FUNCTION_4_95();
          if (!v31)
          {
            break;
          }
        }

        else
        {
          v48 = CFGetTypeID(v31);
          if (v48 != CFDataGetTypeID())
          {
            break;
          }
        }

        v49 = CFGetTypeID(v31);
        if (v49 == CFDataGetTypeID())
        {
          CFDataGetBytePtr(v31);
          CFDataGetLength(v31);
          SPSFromAVCC = FigH264Bridge_GetSPSFromAVCC();
          if (SPSFromAVCC)
          {
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_2_116(SPSFromAVCC, v51, v52, v53, v54, v55, v56, v57, v69, v70, *&v71, v72, *v73);
          if (FigH264Bridge_GetSPSChromaFormatAndBitDepths())
          {
            goto LABEL_70;
          }

LABEL_60:
          v45 = HIBYTE(v71);
          goto LABEL_61;
        }

        break;
      case 0x76703039:
        v24 = CFDictionaryGetValue(v19, @"vpcC");
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFArrayGetTypeID())
        {
          v25 = OUTLINED_FUNCTION_4_95();
          if (!v25)
          {
            break;
          }
        }

        else
        {
          v43 = CFGetTypeID(v25);
          if (v43 != CFDataGetTypeID())
          {
            break;
          }
        }

        v44 = CFGetTypeID(v25);
        if (v44 == CFDataGetTypeID())
        {
          v85 = 0;
          valuePtr = 0;
          if (FigVP9Bridge_ParseVPCC())
          {
            goto LABEL_70;
          }

          v45 = BYTE4(valuePtr);
          HIBYTE(v71) = BYTE4(valuePtr);
LABEL_61:
          if (v45 <= 3)
          {
            if (v11 == 1987063865)
            {
              v58 = &vdmst_getCoefficientsPerPixelFromFormatDesc_sVP9ChromaFormatCoefficientsPerPixel;
            }

            else
            {
              v58 = &vdmst_getCoefficientsPerPixelFromFormatDesc_sH264AndHEVCChromaFormatCoefficientsPerPixel;
            }

            LODWORD(result) = v58[v45];
LABEL_69:
            v60 = (v17 & ~(v17 >> 63)) / *&result;
            *&v71 = v60;
            if (v60 != 0.0)
            {
LABEL_72:
              *&result = v60 / ((v13 * a3) * v14);
              *a2 = *&result;
              if (dword_1EAF174F0)
              {
                LODWORD(v72) = 0;
                HIBYTE(v71) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v62 = v72;
                v63 = HIBYTE(v71);
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v71)))
                {
                  v64 = v62;
                }

                else
                {
                  v64 = v62 & 0xFFFFFFFE;
                }

                if (v64)
                {
                  v65 = *a2;
                  *v73 = 136316418;
                  *&v73[4] = "FigGetEstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate";
                  v74 = 2048;
                  v75 = v60;
                  v76 = 2048;
                  v77 = a3;
                  v78 = 1024;
                  v79 = v13;
                  v80 = 1024;
                  v81 = v14;
                  v82 = 2048;
                  v83 = v65;
                  LODWORD(v70) = 54;
                  _os_log_send_and_compose_impl(v64, 0, &valuePtr, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v63, "<<<< VDMST >>>> %s:  decoderMaxPixelsPerSec( %f) /(nominalFrameRate( %f) * encodedDimensions.width(%d) * encodedDimensions.height( %d)) = rate %1.2f", v73, *&v70, v71, v72);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return result;
            }

LABEL_70:
            if (FigGetDecoderMaxPixelsPerSecondFromPlist(v11, &v71))
            {
              return result;
            }

            v60 = *&v71;
            goto LABEL_72;
          }
        }

        break;
      case 0x68766331:
        v21 = CFDictionaryGetValue(v19, @"hvcC");
        if (!v21)
        {
          break;
        }

        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFArrayGetTypeID())
        {
          v22 = OUTLINED_FUNCTION_4_95();
          if (!v22)
          {
            break;
          }
        }

        else
        {
          v33 = CFGetTypeID(v22);
          if (v33 != CFDataGetTypeID())
          {
            break;
          }
        }

        v34 = CFGetTypeID(v22);
        if (v34 == CFDataGetTypeID())
        {
          HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
          if (HEVCParameterSetAtIndex)
          {
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_2_116(HEVCParameterSetAtIndex, v36, v37, v38, v39, v40, v41, v42, v69, v70, *&v71, v72, *v73);
          if (FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
          {
            goto LABEL_70;
          }

          goto LABEL_60;
        }

        break;
      default:
        goto LABEL_70;
    }

LABEL_68:
    OUTLINED_FUNCTION_0_132();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    result = 0.0;
    if (v59)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  return result;
}

uint64_t FigMovieUsesFragments(uint64_t a1, _BYTE *a2)
{
  result = CMByteStreamCreateForFileURL();
  if (!result)
  {
    return MovieUsesFragments(0, a2, 0);
  }

  return result;
}

uint64_t FigConsolidateMovieFragments(uint64_t a1)
{
  result = CMByteStreamCreateForFileURL();
  if (!result)
  {
    return DeMoofMovieFile(0);
  }

  return result;
}

uint64_t insertBeforeIfNotExist(uint64_t a1, uint64_t *a2)
{
  value = 0;
  v2 = *a2;
  v3 = a2[2];
  if (*(a1 + 16) == *(*a2 + 4 * v3))
  {
    v5 = v3 + 1;
    a2[2] = v5;
    if (v5 == a2[1])
    {
      a2[3] = a1;
      return 2;
    }

    v7 = *(v2 + 4 * v5);
    Count = CFArrayGetCount(*(a1 + 32));
    if (Count < 1)
    {
LABEL_10:
      v13 = FigTTMLDocumentWriterElementCreate(Count, v7, a1, &value);
      v14 = value;
      if (!v13)
      {
        CFArrayInsertValueAtIndex(*(a1 + 32), 0, value);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        Count = CFArrayGetValueAtIndex(*(a1 + 32), v10);
        if (Count)
        {
          v11 = Count;
          v12 = CFGetTypeID(Count);
          OUTLINED_FUNCTION_0_133();
          Count = MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce);
          if (v12 == sElementTypeID && *(v11 + 16) == v7)
          {
            break;
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return 0;
}

void FigTTMLDocumentWriterElementRemoveChildNode(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0)
  {
    v6 = FirstIndexOfValue;
    if (a2)
    {
      v7 = CFGetTypeID(a2);
      OUTLINED_FUNCTION_0_133();
      MEMORY[0x19A8D3660]();
      if (v7 == sElementTypeID)
      {
        a2[3] = 0;
      }
    }

    v8 = *(a1 + 32);

    CFArrayRemoveValueAtIndex(v8, v6);
  }
}

uint64_t writeStartElement(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  if (v4 == 5)
  {
    if (!CFDictionaryGetCount(*(a1 + 40)))
    {
LABEL_9:
      v9 = 0;
      goto LABEL_17;
    }

    v4 = *(a1 + 16);
  }

  started = FigTTMLDocumentWriterStartElement(*a2, v4);
  *(a2 + 8) = started;
  if (started)
  {
    goto LABEL_9;
  }

  Count = FigCFDictionaryGetCount();
  if (!Count)
  {
    goto LABEL_9;
  }

  v7 = Count;
  if ((Count - 0x2000000000000000) >= 0xE000000000000001 && (v11 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL)) != 0)
  {
    v9 = v11;
    CFDictionaryGetKeysAndValues(*(a1 + 40), v11, 0);
    qsort(v9, v7, 8uLL, compareCFString);
    v12 = 0;
    v13 = v7 - 1;
    do
    {
      v14 = v9[v12];
      Value = CFDictionaryGetValue(*(a1 + 40), v14);
      v16 = FigTTMLDocumentWriterSetAttribute(*a2, v14, Value);
      *(a2 + 8) = v16;
      if (v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13 == v12;
      }

      ++v12;
    }

    while (!v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_27();
    FigSignalErrorAtGM(v8);
    v9 = 0;
    *(a2 + 8) = v10;
  }

LABEL_17:
  free(v9);
  return 2 * (*(a2 + 8) != 0);
}

uint64_t writeEndElement(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    if (*(a1 + 16) == 5 && !CFDictionaryGetCount(*(a1 + 40)))
    {
      v3 = *(a2 + 8);
    }

    else
    {
      v3 = FigTTMLDocumentWriterEndElement(*a2);
      *(a2 + 8) = v3;
    }
  }

  return 2 * (v3 != 0);
}

uint64_t writeCaptionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 2;
  }

  v3 = FigTTMLDocumentWriterAddCaptionData(*a2, a1);
  *(a2 + 8) = v3;
  return 2 * (v3 != 0);
}

void FigTTMLDocumentWriterElementCreate_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  *a2 = v5;

  CFRelease(a1);
}

void FigTTMLDocumentWriterElementCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLDocumentWriterElementCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figHTTPCustomURLLoaderCredentialCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_autoreleasePoolPush();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigCustomURLResponseInfoCopyNSURLCredential();
    FigCustomURLResponseInfoGetNSURLSessionAuthChallengeDisposition();
    v5 = *(DerivedStorage + 472);
    if (v5)
    {
      (*(v5 + 16))();
      _Block_release(*(DerivedStorage + 472));
      *(DerivedStorage + 472) = 0;
    }
  }

  FigRetainProxyUnlockMutex();

  objc_autoreleasePoolPop(v3);
}

void figHttpRequestCloseNSURLSessionTask(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 544))
  {
    nw_activity_complete_with_reason();
    v2 = *(DerivedStorage + 544);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 544) = 0;
    }
  }

  v3 = *(DerivedStorage + 504);
  if (v3)
  {
    [v3 cancel];
    [*(DerivedStorage + 56) _deregisterFigHTTPRequestForDataTask:*(DerivedStorage + 504)];

    *(DerivedStorage + 504) = 0;
  }
}

uint64_t _FigHTTPRequestSessionCreateNSURLSessionDataDelegate(int a1, void *a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  v4 = objc_autoreleasePoolPush();
  *a2 = [[FigHTTPRequestSessionDataDelegate alloc] initWithResponseDispositionOption:a1 != 0];
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t figHttpRequestSendOutputBlockBuffer(uint64_t a1, unsigned int a2)
{
  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 392);
  v6 = *(DerivedStorage + 384);
  v7 = *(DerivedStorage + 400) - v5;
  *(DerivedStorage + 424) += v7;
  *(DerivedStorage + 432) = 1;
  figHTTPRequestPerformReadCallback(Owner, v6, v5, v7, a2, 0);
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954511;
  }

  *(DerivedStorage + 432) = 0;
  if ((a2 & 2) != 0 || !*(DerivedStorage + 408))
  {
    v9 = *(DerivedStorage + 384);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 384) = 0;
    }

    result = 0;
    *(DerivedStorage + 392) = 0;
    *(DerivedStorage + 400) = 0;
    *(DerivedStorage + 408) = 0;
  }

  else
  {
    result = 0;
    *(DerivedStorage + 392) = *(DerivedStorage + 400);
  }

  return result;
}

uint64_t figHTTPRequestGetOutputBuffer(uint64_t a1, char **a2, size_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  *a2 = 0;
  *a3 = 0;
  if (!DerivedStorage[2])
  {
    return 0;
  }

  v8 = DerivedStorage;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v9 = DerivedStorage[48];
  if (v9)
  {
    goto LABEL_28;
  }

  v27 = v7;
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *v10;
  v30 = 0;
  theBuffer = 0;
  if (v11)
  {
    CFRetain(v11);
  }

  v26 = *(v10 + 16);
  v12 = *(v10 + 32);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v10 + 136);
  v15 = *(v10 + 416);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = v15 - *(v10 + 424);
    if (*(v10 + 169))
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v16;
    }
  }

  FigRetainProxyUnlockAll();
  v18 = v26(v13, a1, v14, v17, &theBuffer, &v30);
  FigRetainProxyRelock();
  if (v13)
  {
    CFRelease(v13);
  }

  if (v18)
  {
LABEL_21:
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (FigRetainProxyIsInvalidated())
  {
    v18 = 4294954511;
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v11);
    goto LABEL_23;
  }

  v19 = theBuffer;
  if (theBuffer)
  {
    v20 = v30;
    *(v10 + 392) = v30;
    *(v10 + 400) = v20;
    *(v10 + 384) = v19;
    v18 = 0;
    *(v10 + 408) = CMBlockBufferGetDataLength(v19) - *(v10 + 400);
    theBuffer = 0;
    goto LABEL_21;
  }

  v18 = 0;
  if (v11)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (!FigRetainProxyIsInvalidated() && !v18)
  {
    v9 = v8[48];
    if (v9)
    {
LABEL_28:
      v21 = v8[51];
      DataPointer = CMBlockBufferGetDataPointer(v9, v8[50], &lengthAtOffsetOut, 0, &dataPointerOut);
      if (!DataPointer)
      {
        v23 = lengthAtOffsetOut;
        if (v21 < lengthAtOffsetOut)
        {
          v23 = v21;
        }

        if (v23)
        {
          v18 = 0;
          *a2 = dataPointerOut;
          *a3 = v23;
          return v18;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
      }

      return DataPointer;
    }

    return 0;
  }

  return v18;
}

void figHTTPSetActivelyUsingNetwork(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 456) != a2)
  {
    *(DerivedStorage + 456) = a2;
    if (!a2)
    {
      v7 = UpTimeNanoseconds;
      if (*(DerivedStorage + 457) == 1)
      {
        FigBytePumpGetFigBaseObject();
      }

      if (figHTTPShouldReportNetworkHistory(DerivedStorage) && *(DerivedStorage + 496))
      {
        figHTTPCapUptimeToResponseEndTime(DerivedStorage, v7);
        FigNetworkHistoryRequestBecameInactive();
        *(DerivedStorage + 496) = 0;
        *(DerivedStorage + 177) = 0;
      }
    }

    v5 = *(DerivedStorage + 448);
    if (v5)
    {
      v6 = CFRetain(v5);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __figHTTPSetActivelyUsingNetwork_block_invoke;
      v8[3] = &__block_descriptor_41_e5_v8__0l;
      v9 = a2;
      v8[4] = v6;
      dispatch_async(gApplicationNetworkActivityQueue, v8);
    }
  }
}

uint64_t figHTTPRequestNSURLSessionInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!OUTLINED_FUNCTION_172(DerivedStorage))
  {
    return 0;
  }

  FigRetainProxyLockMutex();
  if (*(v1 + 8))
  {
    v9 = 4294954511;
  }

  else
  {
    FigRetainProxyInvalidate();
    *(v1 + 8) = 1;
    if (*(v1 + 363))
    {
      FigHTTPRequestCommonMandatoryRequestFinish();
      *(v1 + 363) = 0;
    }

    v4 = objc_autoreleasePoolPush();
    figHTTPSetActivelyUsingNetwork(a1, 0);
    figHttpRequestCloseNSURLSessionTask(a1);
    if (*(v1 + 472))
    {
      v5 = *(v1 + 464);
      v6 = *(v1 + 480);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v5, v6);
      }

      OUTLINED_FUNCTION_3_93();
      v8();
      _Block_release(*(v1 + 472));
      *(v1 + 472) = 0;
    }

    objc_autoreleasePoolPop(v4);
    v9 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v9;
}

void figHTTPRequestNSURLSessionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_autoreleasePoolPush();
  figHTTPRequestNSURLSessionInvalidate(a1);
  v4 = *(DerivedStorage + 560);
  if (v4)
  {

    *(DerivedStorage + 560) = 0;
  }

  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 88) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 104) = 0;
  }

  v8 = *(DerivedStorage + 544);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 544) = 0;
  }

  v9 = *(DerivedStorage + 352);
  if (v9)
  {
    nw_release(v9);
  }

  *(DerivedStorage + 352) = 0;
  v10 = *(DerivedStorage + 344);
  if (v10)
  {
    nw_release(v10);
  }

  *(DerivedStorage + 344) = 0;
  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    dispatch_release(v11);
  }

  *(DerivedStorage + 64) = 0;
  v12 = *(DerivedStorage + 152);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 152) = 0;
  }

  *(DerivedStorage + 144) = 0;
  v13 = *(DerivedStorage + 160);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 160) = 0;
  }

  v14 = *(DerivedStorage + 464);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 464) = 0;
  }

  v15 = *(DerivedStorage + 472);
  if (v15)
  {
    _Block_release(v15);
  }

  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 72);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 72) = 0;
  }

  v18 = *(DerivedStorage + 384);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 384) = 0;
  }

  v19 = *(DerivedStorage + 112);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 112) = 0;
  }

  v20 = *(DerivedStorage + 448);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 448) = 0;
  }

  v21 = *(DerivedStorage + 368);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 368) = 0;
  }

  v22 = *(DerivedStorage + 512);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 512) = 0;
  }

  v23 = *(DerivedStorage + 520);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 520) = 0;
  }

  v24 = *(DerivedStorage + 440);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 440) = 0;
  }

  v25 = *(DerivedStorage + 488);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 488) = 0;
  }

  v26 = *(DerivedStorage + 32);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 32) = 0;
  }

  v27 = *(DerivedStorage + 40);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  objc_autoreleasePoolPop(v3);
}