@interface EnsurePrimaryWillResumeBuffering
@end

@implementation EnsurePrimaryWillResumeBuffering

void __fpic_EnsurePrimaryWillResumeBuffering_block_invoke(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if ((*(a1[5] + 1052) & 1) == 0)
  {
    return;
  }

  v2 = a1 + 6;
  v3 = a1[6];
  v4 = a1 + 7;
  v5 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1 || (__fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_1(DerivedStorage, v3, v5, Count) & 1) != 0)
  {
    v8 = a1[5];
    if (*(v8 + 256) || *(v8 + 257))
    {
      return;
    }
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 1144);
  memset(&v45, 0, sizeof(v45));
  v10 = 1;
  fpic_CurrentResumptionOffset(*v2, 1, *v4, 1, 1, 0, &v45);
  *time1 = v45;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(time1, &time2))
  {
    v10 = (*(a1[5] + 1076) & 1) == 0;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  if (!*(v11 + 1142) || !*(v11 + 1141))
  {
    if (v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = v10;
    }

    if (v17 != 1)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = v12 + 264;
  if (!*(v12 + 296) && !*(v12 + 297))
  {
    v13 = v12 + 224;
  }

  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  v16 = *(v13 + 33);
  memset(&v44, 0, sizeof(v44));
  if (v15)
  {
    goto LABEL_14;
  }

  if (!v16)
  {
    v13 = MEMORY[0x1E6960C70];
LABEL_14:
    v44 = *v13;
    goto LABEL_27;
  }

  v22 = a1[5];
  v23 = *(v22 + 320);
  *time1 = *(v22 + 304);
  *&time1[16] = v23;
  v59 = *(v22 + 336);
  FigCreateTimeWithDateAndMoment(time1, &v44, v14);
  if ((v44.flags & 1) == 0 || (v45.flags & 1) == 0 || !*(a1[5] + 160))
  {
    goto LABEL_47;
  }

LABEL_27:
  memset(&v43, 0, sizeof(v43));
  *time1 = v44;
  time2 = v45;
  CMTimeAdd(&v43, time1, &time2);
  v24 = *(a1[5] + 160);
  v42 = v43;
  memset(&v49, 0, sizeof(v49));
  memset(&type, 0, sizeof(type));
  fpic_GetSeekableRange(v24, 1, &v49, &type);
  if ((v49.flags & 0x1D) == 1 && (type.flags & 0x1D) == 1 && (*time1 = v49, time2 = v42, CMTimeCompare(time1, &time2) <= 0))
  {
    *time1 = type;
    time2 = v42;
    v25 = CMTimeCompare(time1, &time2) >= 0;
  }

  else
  {
    v25 = 0;
  }

  if (dword_1EAF178D0 >= 7)
  {
    v41 = v24;
    v47 = 0;
    v46 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v47;
    v28 = v46;
    v40 = os_log_and_send_and_compose_flags_and_os_log_type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v46))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 0xFFFFFFFE;
    }

    if (v29)
    {
      *time1 = v42;
      Seconds = CMTimeGetSeconds(time1);
      if (v25)
      {
        v31 = "";
      }

      else
      {
        v31 = " not";
      }

      *time1 = v49;
      v32 = CMTimeGetSeconds(time1);
      *time1 = type;
      v33 = CMTimeGetSeconds(time1);
      LODWORD(time2.value) = 136316418;
      *(&time2.value + 4) = "fpic_SeekableRangeIncludesTime";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = Seconds;
      HIWORD(time2.epoch) = 2048;
      v51 = v41;
      v52 = 2080;
      v53 = v31;
      v54 = 2048;
      v55 = v32;
      v56 = 2048;
      v57 = v33;
      LODWORD(v39) = 62;
      _os_log_send_and_compose_impl(v29, 0, time1, 128, &dword_1962D5000, v40, v28, "<<<< FigPlayerInterstitial >>>> %s: %f in %p is%s between %f and %f", &time2, *&v39, v40, v41, *&v42.value, *&v42.timescale);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v25)
  {
    v34 = 1;
  }

  else
  {
LABEL_47:
    v35 = *v2;
    if ((*(CMBaseObjectGetDerivedStorage() + 568) & 1) == 0 || *(CMBaseObjectGetDerivedStorage() + 888))
    {
      return;
    }

    v34 = fpic_GetCurrentlyPlayingEvent(v35) != 0;
  }

  if (v9)
  {
    v36 = 1;
  }

  else
  {
    v36 = v10;
  }

  if (v34 && (v36 & 1) != 0)
  {
LABEL_19:
    if (dword_1EAF178D0)
    {
      LODWORD(v49.value) = 0;
      LOBYTE(type.value) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v49.value;
      value_low = LOBYTE(type.value);
      if (os_log_type_enabled(v18, type.value))
      {
        v21 = value;
      }

      else
      {
        v21 = value & 0xFFFFFFFE;
      }

      if (v21)
      {
        v37 = a1[6];
        v38 = *(a1[5] + 160);
        LODWORD(time2.value) = 136315650;
        *(&time2.value + 4) = "fpic_EnsurePrimaryWillResumeBuffering_block_invoke";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v37;
        HIWORD(time2.epoch) = 2048;
        v51 = v38;
        LODWORD(v39) = 32;
        _os_log_send_and_compose_impl(v21, 0, time1, 128, &dword_1962D5000, v18, value_low, "<<<< FigPlayerInterstitial >>>> %s: %p: ungate buffering on primary item %p", &time2, v39, v40);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1[5] + 160))
    {
      __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_2(v2, v9);
    }

    else
    {
      __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_3();
    }
  }
}

uint64_t __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_433();
  v6 = 0;
  IsItemBufferedToEnd = 1;
  do
  {
    v8 = OUTLINED_FUNCTION_284();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v8, v9);
    if (PerEventTrackingCount < 1)
    {
      v18 = 1;
      return v18 & 1;
    }

    v11 = PerEventTrackingCount;
    v12 = 1;
    do
    {
      v13 = OUTLINED_FUNCTION_284();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v13, v14, v15, @"PlaybackItem");
      v17 = fpic_UnwrapPlaybackItem(v4, PerAssetPerEventTrackedObject, a3);
      if (PerAssetPerEventTrackedObject != @"DummyItem")
      {
        if (v17)
        {
          IsItemBufferedToEnd = fpic_IsItemBufferedToEnd(v4, v17);
        }

        else
        {
          IsItemBufferedToEnd = 0;
        }
      }

      if (v12 >= v11)
      {
        break;
      }

      ++v12;
    }

    while (IsItemBufferedToEnd);
    ++v6;
  }

  while (v6 < a4 && IsItemBufferedToEnd);
  if (IsItemBufferedToEnd)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  return v18 & 1;
}

void __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_2(uint64_t *a1, unsigned __int8 a2)
{
  v2 = a2;
  fpic_UngatePrimaryBuffering(*a1);
  if (v2)
  {
    OUTLINED_FUNCTION_245_2();
    fpic_ApplyResumptionOffset();
    OUTLINED_FUNCTION_12_7(v3);
  }
}

@end