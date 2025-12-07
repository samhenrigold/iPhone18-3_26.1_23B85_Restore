uint64_t fpfs_canCrossfade(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = gFSPIsCrossfadeOn == 1 && *(a1 + 504) == 0;
  if (!v3 || *(a2 + 48) != 1936684398 || *(a3 + 48) != 1936684398)
  {
    return 0;
  }

  fpfs_canCrossfade_cold_1();
  return v5;
}

CMTime *fpfs_GetEndOutputPresentationTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  result = CMSampleBufferGetOutputDuration(&v7, a1);
  if (v7.flags)
  {
    lhs = v8;
    v5 = v7;
    return CMTimeAdd(a2, &lhs, &v5);
  }

  else
  {
    *a2 = v8;
  }

  return result;
}

opaqueCMSampleBuffer *fpfs_TrimAudioTrack(uint64_t a1, CMTime *a2)
{
  v2 = a2;
  v50 = *MEMORY[0x1E69E9840];
  v31 = *a2;
  if (*(a1 + 436))
  {
    lhs = *a2;
    fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(a1, &lhs, &v31);
  }

  else
  {
    lhs = *a2;
    rhs = *(a1 + 412);
    CMTimeSubtract(&v31, &lhs, &rhs);
  }

  result = CMBufferQueueGetHead(*(a1 + 88));
  if (result)
  {
    v5 = result;
    v6 = (a1 + 412);
    v7 = &unk_1EAF16000;
    v25 = v2;
    do
    {
      memset(&v30, 0, sizeof(v30));
      memset(&v29, 0, sizeof(v29));
      CMSampleBufferGetPresentationTimeStamp(&v28, v5);
      rhs = v28;
      v32 = *v6;
      CMTimeSubtract(&lhs, &rhs, &v32);
      rhs = *(a1 + 144);
      CMTimeAdd(&v29, &lhs, &rhs);
      lhs = v29;
      rhs = *v2;
      result = CMTimeCompare(&lhs, &rhs);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      CMSampleBufferGetDuration(&lhs, v5);
      rhs = v29;
      CMTimeAdd(&v30, &rhs, &lhs);
      lhs = v30;
      rhs = v31;
      result = CMTimeCompare(&lhs, &rhs);
      if (result > 0)
      {
        break;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (v7[636] >= 2u)
      {
        v9 = DerivedStorage;
        LODWORD(v32.value) = 0;
        LOBYTE(v28.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v32.value;
        value_low = LOBYTE(v28.value);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v28.value))
        {
          v13 = value;
        }

        else
        {
          v13 = value & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = *v9;
          if (*v9)
          {
            v15 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v15 = "";
          }

          v27 = v15;
          v16 = *(a1 + 16);
          if (v16)
          {
            v17 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v17 = "";
          }

          v26 = v17;
          v18 = *(a1 + 32);
          v19 = v29.value;
          timescale = v29.timescale;
          lhs = v29;
          Seconds = CMTimeGetSeconds(&lhs);
          lhs = v30;
          v22 = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136317442;
          *(&rhs.value + 4) = "fpfs_TrimAudioTrack";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v14;
          HIWORD(rhs.epoch) = 2082;
          v34 = v27;
          v35 = 2048;
          v36 = v16;
          v37 = 2082;
          v38 = v26;
          v39 = 2048;
          v40 = v18;
          v41 = 2048;
          v42 = v19;
          v43 = 1024;
          v44 = timescale;
          v45 = 2048;
          v46 = Seconds;
          v47 = 2048;
          v48 = v22;
          LODWORD(v24) = 98;
          _os_log_send_and_compose_impl(v13, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld - releasing %lld %u (%1.5g-%1.5g)", &rhs, v24);
          v6 = (a1 + 412);
          v2 = v25;
          v7 = &unk_1EAF16000;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v23 = CMBufferQueueDequeueAndRetain(*(a1 + 88));
      if (v23)
      {
        CFRelease(v23);
      }

      result = CMBufferQueueGetHead(*(a1 + 88));
      v5 = result;
    }

    while (result);
  }

  return result;
}

BOOL fpfs_isDecryptorReady(uint64_t a1)
{
  cf = 0;
  v1 = *(a1 + 400);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(v1, *MEMORY[0x1E6961118], AllocatorForMedia, &cf))
  {
    return 1;
  }

  v4 = *MEMORY[0x1E695E4D0] == cf;
  CFRelease(cf);
  return v4;
}

uint64_t fpfs_CanRenderAudio(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 523))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(CMBaseObjectGetDerivedStorage() + 504))
  {
    return 1;
  }

  result = *(v3 + 536);
  if (result)
  {
    return FPSupport_IsAnAudioDeviceAvailable(result) != 0;
  }

  return result;
}

double fpfs_GetTrackStartupQueueDuration@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v10, 0, sizeof(v10));
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  CMBufferQueueGetDuration(a3, *(a1 + 88));
  time1 = *a3;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    refcon = 0;
    CMBufferQueueCallForEachBuffer(*(a1 + 88), fpfs_GetMinSampleInStartupQueue, &refcon);
    if (refcon)
    {
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&v7, refcon);
      time2 = v7;
      rhs = *(a1 + 412);
      CMTimeSubtract(&time1, &time2, &rhs);
      time2 = *(a1 + 144);
      CMTimeAdd(&v8, &time1, &time2);
      time1 = *a2;
      time2 = v8;
      CMTimeSubtract(&v10, &time1, &time2);
      time2 = *a3;
      rhs = v10;
      CMTimeSubtract(&time1, &time2, &rhs);
      result = *&time1.value;
      *a3 = time1;
    }
  }

  return result;
}

uint64_t fpfs_CheckCanKeepUp(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v22, 0, sizeof(v22));
  lhs = *a3;
  rhs = *(DerivedStorage + 1160);
  CMTimeAdd(&v22, &lhs, &rhs);
  v21 = 0;
  v16 = *(DerivedStorage + 912);
  if (v16)
  {
    *&v20.value = *a2;
    v20.epoch = *(a2 + 16);
    v19 = v22;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v17)
    {
      lhs = v20;
      rhs = v19;
      v17(v16, &lhs, &rhs, a4, a5, a6, a7, a8, &v21);
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  return result;
}

uint64_t fpfs_GetMinSampleInStartupQueue(opaqueCMSampleBuffer *a1, CMSampleBufferRef *a2)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetDecodeTimeStamp(&v7, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  if (v7.flags)
  {
    if (!*a2 || (CMSampleBufferGetPresentationTimeStamp(&time2, *a2), v5 = v8, CMTimeCompare(&v5, &time2) < 0))
    {
      *a2 = a1;
    }

    if (fpfs_IsVideoSync(a1))
    {
      return 4294954433;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = a1;
    return 4294954433;
  }
}

BOOL fpfs_IsMarkerOnly(opaqueCMSampleBuffer *a1)
{
  if (CMSampleBufferGetNumSamples(a1))
  {
    return 0;
  }

  CMSampleBufferGetOutputPresentationTimeStamp(&v3, a1);
  return (v3.flags & 1) == 0;
}

CMItemCount fpfs_IsVideoSync(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = *MEMORY[0x1E6960458];
      if (CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x1E6960458]))
      {
        return CFDictionaryGetValue(v4, v5) == *MEMORY[0x1E695E4C0];
      }
    }
  }

  else
  {
    result = CMSampleBufferGetNumSamples(a1);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t fpfs_CanRenderVideo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(a1 + 525))
    {
      if (*(DerivedStorage + 912))
      {
        if (*(DerivedStorage + 400))
        {
          FigCFDictionaryGetBooleanIfPresent();
        }

        cf = 0;
        if (!*(CMBaseObjectGetDerivedStorage() + 912))
        {
          return 0;
        }

        AllocatorForMedia = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject();
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          return 0;
        }

        if (v8(v7, @"FBP_HasKeyContent", AllocatorForMedia, &cf))
        {
          v9 = 1;
        }

        else
        {
          v9 = cf == *MEMORY[0x1E695E4D0];
        }

        v10 = v9;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v10)
        {
          return 0;
        }
      }
    }
  }

  if (a2 && (v11 = CMBaseObjectGetDerivedStorage(), v12 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(v11 + 656)), TrackWithFormatDescriptionOfType = fpfs_FirstTrackWithFormatDescriptionOfType(a2, 1986618469), v12))
  {
    v14 = TrackWithFormatDescriptionOfType;
    if (CFArrayGetCount(v12) >= 1)
    {
      v15 = fpfsi_VideoOutputAllowedWithPermissivePolicy(v14);
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 384);
  if (v16 && CFArrayGetCount(v16) > 0 || *(a1 + 408) >= 1)
  {
    v15 = 1;
  }

  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(a1 + 376)) > 0)
  {
    result = 1;
  }

  else
  {
    result = v15;
  }

  if (*(a1 + 462))
  {
    if (a2)
    {
      if (*(a1 + 496))
      {
        return *(a1 + 80) == a2;
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(uint64_t a1, uint64_t a2)
{
  for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i && i != a2; i = *(i + 24))
  {
    if (*(i + 168) == 6 && *(i + 48) == *(a2 + 48) && *(i + 80) == *(a2 + 80))
    {
      time1 = *(a2 + 288);
      v6 = *(i + 232);
      if (CMTimeCompare(&time1, &v6) < 1)
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t fpfsi_TrialSwitchDownInProgress(uint64_t a1)
{
  if (!*(a1 + 1680))
  {
    return 0;
  }

  result = *(a1 + 1744);
  if (result)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    return PeakBitRate < FigAlternateGetPeakBitRate(*(a1 + 1680));
  }

  return result;
}

BOOL fpfs_TimeIsAfter(uint64_t a1, CMTime *a2, CMTime *a3)
{
  if (*(a1 + 108) >= 0.0)
  {
    time1 = *a2;
    v4 = *a3;
    return CMTimeCompare(&time1, &v4) > 0;
  }

  else
  {
    time1 = *a2;
    v4 = *a3;
    return CMTimeCompare(&time1, &v4) >> 31;
  }
}

uint64_t fpfs_GetFirstNonMarkerSBuf(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer **a2)
{
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  *a2 = a1;
  return 0xFFFFFFFFLL;
}

void fpfs_DoNotDisplay(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v3 = *MEMORY[0x1E6960410];
      v4 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(ValueAtIndex, v3, v4);
    }
  }
}

uint64_t fpfs_RenderBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = a1 + 112;
  if (!*(a1 + 112))
  {
    return 0;
  }

  v7 = v5;
  v48 = 0uLL;
  v49 = 0;
  time1 = *(DerivedStorage + 1352);
  FPSTimelineConverterL3TimeToL2(&time1, &v48);
  if (*(a1 + 48) == 1986618469)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (*(a1 + 48) == 1986618469)
    {
      fpfs_RenderBuffer_cold_1(a2, v8);
    }
  }

  if (*(v7 + 49))
  {
    if (v48.n128_u8[12])
    {
      memset(&v47, 0, sizeof(v47));
      fpfs_GetEndOutputPresentationTimeStamp(a2, &v47);
      if (v47.flags)
      {
        time1 = v47;
        *&time2.value = v48;
        time2.epoch = v49;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&v46, 0, sizeof(v46));
          CMSampleBufferGetOutputPresentationTimeStamp(&v46, a2);
          memset(&v45, 0, sizeof(v45));
          CMSampleBufferGetOutputDecodeTimeStamp(&v45, a2);
          time1 = v46;
          *&time2.value = v48;
          time2.epoch = v49;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time1 = v45;
            *&time2.value = v48;
            time2.epoch = v49;
            if (CMTimeCompare(&time1, &time2) > 0)
            {
              return 0;
            }
          }

          time1 = v46;
          *&time2.value = v48;
          time2.epoch = v49;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            *v44 = v48;
            *&v44[16] = v49;
            memset(&time1, 0, sizeof(time1));
            CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
            memset(&time2, 0, sizeof(time2));
            memset(&v52, 0, sizeof(v52));
            type = *v44;
            rhs = time1;
            if (CMTimeCompare(&type, &rhs) >= 1)
            {
              v36 = *MEMORY[0x1E6960558];
              CMRemoveAttachment(a2, *MEMORY[0x1E6960558]);
              fpfs_GetEndOutputPresentationTimeStamp(a2, &time2);
              type = time2;
              rhs = *v44;
              if ((CMTimeCompare(&type, &rhs) & 0x80000000) == 0)
              {
                type = time2;
                rhs = *v44;
                CMTimeSubtract(&v52, &type, &rhs);
                type = v52;
                rhs = **&MEMORY[0x1E6960CC0];
                if (CMTimeCompare(&type, &rhs) >= 1)
                {
                  AllocatorForMedia = FigGetAllocatorForMedia();
                  type = v52;
                  v38 = CMTimeCopyAsDictionary(&type, AllocatorForMedia);
                  if (v38)
                  {
                    v39 = v38;
                    CMSetAttachment(a2, v36, v38, 1u);
                    CFRelease(v39);
                  }
                }
              }
            }
          }

          else
          {
            fpfs_DoNotDisplay(a2);
          }
        }
      }
    }
  }

  v9 = *(*v6 + 56);
  if (!v9)
  {
    goto LABEL_34;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v52.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v52.value;
    value_low = LOBYTE(type.value);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
    {
      v13 = value;
    }

    else
    {
      v13 = value & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v15 = "";
      }

      v41 = v15;
      v42 = v7;
      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v17 = "";
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
      Seconds = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fpfs_RenderBuffer";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v14;
      HIWORD(time2.epoch) = 2082;
      v54 = v41;
      v55 = 2048;
      v56 = v16;
      v57 = 2082;
      v58 = v17;
      v59 = 2048;
      v60 = *&a2;
      v61 = 2048;
      v62 = Seconds;
      _os_log_send_and_compose_impl(v13, 0, &time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Setting kFigSampleBufferAttachmentKey_ResumeOutput on %p, pts %1.5g", &time2, 72);
      v7 = v42;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *(*v6 + 56);
  }

  CMSetAttachment(a2, *MEMORY[0x1E6960518], v9, 1u);
  CFRelease(*(*(a1 + 112) + 56));
  *(*(a1 + 112) + 56) = 0;
  if (*(a1 + 48) == 1986618469)
  {
    v19 = 1.0;
    if (*(v7 + 108) < 0.0 && !*(DerivedStorage + 2992))
    {
      v19 = -1.0;
    }

    *&time1.value = v19;
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &time1))
    {
      fpfs_RenderBuffer_cold_2(a1 + 112);
    }

LABEL_34:
    if (*(a1 + 48) == 1986618469)
    {
      if (*(a1 + 200) && (*(DerivedStorage + 332) & 1) != 0 && !*(a1 + 120))
      {
        for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
        {
          if (*(i + 48) == 1986618469 && *(i + 112))
          {
            break;
          }
        }

        if (i == a1)
        {
          fpfs_UnsuspendVideoRenderingForTrack();
          fpfs_PrerollTrack(a1);
        }
      }

      if (*(a1 + 48) == 1986618469)
      {
        if (*(a1 + 120))
        {
          if (!*(a1 + 200))
          {
            fpfs_GetEndOutputPresentationTimeStamp(a2, &time1);
            time2 = *(a1 + 208);
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              fpfs_DoNotDisplay(a2);
            }
          }
        }
      }
    }
  }

  if ((*(DerivedStorage + 1460) & 1) != 0 && *(a1 + 48) == 1986618469 && !*(a1 + 200))
  {
    v28 = *(a1 + 16);
    time1 = *(DerivedStorage + 1448);
    if (fpfsi_ProcessVideoSampleForClamping(v28, a1, a2, &time1))
    {
      return 0;
    }
  }

  v21 = MEMORY[0x1E695E4D0];
  if (*(a1 + 201))
  {
    if (dword_1EAF169F0)
    {
      LODWORD(v52.value) = 0;
      LOBYTE(type.value) = 0;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v52.value;
      v24 = LOBYTE(type.value);
      if (os_log_type_enabled(v22, type.value))
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v43 = v7;
        v26 = *DerivedStorage;
        if (v26)
        {
          v27 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v27 = "";
        }

        v30 = *(a1 + 16);
        if (v30)
        {
          v31 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v31 = "";
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
        v32 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316418;
        *(&time2.value + 4) = "fpfs_RenderBuffer";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v26;
        HIWORD(time2.epoch) = 2082;
        v54 = v27;
        v55 = 2048;
        v56 = v30;
        v57 = 2082;
        v58 = v31;
        v59 = 2048;
        v60 = v32;
        LODWORD(v40) = 62;
        _os_log_send_and_compose_impl(v25, 0, &time1, 128, &dword_1962D5000, v22, v24, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Signalling RenderPipeline to ResetDecoder at %1.5g", &time2, v40);
        v7 = v43;
        v21 = MEMORY[0x1E695E4D0];
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSetAttachment(a2, *MEMORY[0x1E6960510], *v21, 1u);
    *(a1 + 201) = 0;
  }

  if (*(v7 + 108) < 0.0)
  {
    CMSetAttachment(a2, *MEMORY[0x1E6960520], *v21, 1u);
  }

  if (*(a1 + 48) == 1835365473)
  {
    LODWORD(time1.value) = *(a1 + 32);
    v33 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time1);
    CMSetAttachment(a2, *MEMORY[0x1E6962E30], v33, 0);
    if (v33)
    {
      CFRelease(v33);
    }
  }

  v29 = CMBufferQueueEnqueue(*(*v6 + 40), a2);
  for (j = *(*v6 + 88); j; j = *(j + 88))
  {
    CMBufferQueueEnqueue(*(j + 40), a2);
  }

  return v29;
}

BOOL fpfs_IsVideoDependedOnByOthers(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0 && (v3 = ValueAtIndex, v4 = *MEMORY[0x1E6960450], CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x1E6960450])))
  {
    return CFDictionaryGetValue(v3, v4) == *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 1;
  }
}

double fpfs_GetFirstPTSInRange(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v7;
    v5 = *(a2 + 24);
    if (CMTimeCompare(&time1, &v5) < 1 || (CMSampleBufferGetOutputDecodeTimeStamp(&time1, a1), v5 = *(a2 + 24), CMTimeCompare(&time1, &v5) <= 0))
    {
      time1 = v7;
      v5 = *a2;
      if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
      {
        time1 = v7;
        v5 = *(a2 + 24);
        if (CMTimeCompare(&time1, &v5) <= 0)
        {
          time1 = v7;
          v5 = *(a2 + 48);
          if (CMTimeCompare(&time1, &v5) < 0)
          {
            result = *&v7.value;
            *(a2 + 48) = v7;
          }
        }
      }
    }
  }

  return result;
}

CMTime *fpfs_GetStartupDurationOfType@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v2 = result;
  *a2 = **&MEMORY[0x1E6960CC0];
  value = result[2].value;
  do
  {
    if (LODWORD(v2[2].value) == value)
    {
      v5 = *(v2 + 208);
      fpfs_GetTrackStartupQueueDuration(v2, &v5, &rhs);
      v5 = *a2;
      result = CMTimeAdd(a2, &v5, &rhs);
    }

    v2 = v2[1].value;
  }

  while (v2);
  return result;
}

CMTime *fpfs_TimeAfterPlayback@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X2>, CMTime *a4@<X8>)
{
  if (*(a1 + 108) >= 0.0)
  {
    lhs = *a2;
    v5 = *a3;
    return CMTimeAdd(a4, &lhs, &v5);
  }

  else
  {
    lhs = *a2;
    v5 = *a3;
    return CMTimeSubtract(a4, &lhs, &v5);
  }
}

uint64_t fpfs_CountNonDroppableUntil(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputDecodeTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputDuration(&v8, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v9;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (fpfs_IsVideoDependedOnByOthers(a1))
      {
        ++*(a2 + 48);
      }

      if (v8.flags)
      {
        ++*(a2 + 56);
        time2 = *(a2 + 24);
        v5 = v8;
        CMTimeAdd(&time1, &time2, &v5);
        *(a2 + 24) = time1;
      }
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0;
}

BOOL fpfs_TimeIsAtOrAfter(uint64_t a1, CMTime *a2, CMTime *a3)
{
  time1 = *a2;
  v7 = *a3;
  if (!CMTimeCompare(&time1, &v7))
  {
    return 1;
  }

  time1 = *a2;
  v7 = *a3;
  return fpfs_TimeIsAfter(a1, &time1, &v7);
}

double fpfs_VideoSyncSearch(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  memset(&v8, 0, sizeof(v8));
  if (fpfs_IsVideoSync(a1))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
    lhs = v9;
    v6 = *(a2 + 24);
    CMTimeAdd(&v8, &lhs, &v6);
    lhs = v9;
    v6 = *(a2 + 120);
    if (CMTimeCompare(&lhs, &v6) < 0)
    {
      lhs = *a2;
      v6 = v8;
      if (CMTimeCompare(&lhs, &v6) <= 0)
      {
        lhs = v9;
        v6 = *(a2 + 48);
        if (CMTimeCompare(&lhs, &v6) >= 1)
        {
          v5 = (a2 + 72);
LABEL_10:
          result = *&v9.value;
          *v5 = v9;
          return result;
        }
      }

      v5 = (a2 + 96);
      if ((*(a2 + 108) & 0x1D) != 1)
      {
        goto LABEL_10;
      }

      lhs = v9;
      v6 = *a2;
      if (CMTimeCompare(&lhs, &v6) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t fpfs_PrerollTrack(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48) == 1986618469 && *(result + 112) && !*(result + 120))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(v1 + 48) == 1986618469)
      {
        v3 = DerivedStorage;
        if (CMVideoFormatDescriptionGetVideoDynamicRange() >= 2 && !*(v1 + 200))
        {
          v4 = *(v3 + 1024);
          if (v4)
          {
            while (v4 != v1)
            {
              if (*(v4 + 48) != 1986618469 || CMVideoFormatDescriptionGetVideoDynamicRange() <= 1)
              {
                v4 = *(v4 + 24);
                if (v4)
                {
                  continue;
                }
              }

              goto LABEL_16;
            }

            CelestialPreallocateSurfaceMemoryForHDRVideo();
          }
        }
      }

LABEL_16:
      result = fpfs_PrerollRenderPipeline();
      *(v1 + 120) = result == 0;
    }
  }

  return result;
}

BOOL fpfsi_ProcessVideoSampleForClamping(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  memset(&v20, 0, sizeof(v20));
  CMSampleBufferGetOutputDecodeTimeStamp(&v20, a3);
  memset(&v19, 0, sizeof(v19));
  CMSampleBufferGetOutputPresentationTimeStamp(&v19, a3);
  if (fpfs_IsMarkerOnly(a3))
  {
    v7 = CMGetAttachment(a3, *MEMORY[0x1E6960500], 0);
    v8 = (a4 + 12);
    if (*(a4 + 12))
    {
      if (v7)
      {
        v20 = *(a2 + 232);
        v19 = v20;
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  else
  {
    v8 = (a4 + 12);
  }

  if ((*v8 & 1) == 0 || (v20.flags & 1) == 0)
  {
    v10 = 0;
LABEL_10:
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (SampleAttachmentsArray)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    v13 = *MEMORY[0x1E6960488];
    if (FigCFDictionaryGetValue())
    {
      fpfs_RemoveDoNotDisplay(a3);
      CFDictionaryRemoveValue(ValueAtIndex, v13);
    }

    return v10;
  }

  time = v19;
  time2 = *a4;
  v14 = CMTimeCompare(&time, &time2);
  time = v20;
  time2 = *a4;
  v15 = CMTimeCompare(&time, &time2);
  if (v14 < 0 || (v15 & 0x80000000) == 0)
  {
    v10 = (v14 | v15) >= 0;
    if ((v14 & 0x80000000) == 0)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v16 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (v16)
  {
    CFArrayGetValueAtIndex(v16, 0);
  }

  if (FigCFDictionaryGetValue() != *MEMORY[0x1E695E4D0])
  {
    v17 = CMSampleBufferGetSampleAttachmentsArray(a3, 1u);
    if (v17)
    {
      CFArrayGetValueAtIndex(v17, 0);
    }

    FigCFDictionarySetValue();
    fpfs_DoNotDisplay(a3);
  }

  return 0;
}

uint64_t fpfsi_setCAImageQueueFlagsForTrack(uint64_t a1)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 664);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  FigStreamTrackGetCAImageQueueFlagsForTrack(a1, &v11 + 1, &v11);
  if (Count >= 1 && v11)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 664), i);
      CAImageQueueSetFlags();
    }
  }

  v6 = *(a1 + 104);
  if (!v6)
  {
    return 0;
  }

  v8 = v11;
  v7 = HIDWORD(v11);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v9)
  {
    return v9(v6, v7, v8);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t fpfs_RenderWithEndSignal(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  if (*(v3 + 64))
  {
    fpfs_RenderWithEndSignal_cold_1(&v13);
    return v13;
  }

  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    cf = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (cf)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_RenderPipelineToStart, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v8)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    *(v3 + 64) = 0;
    return 4294954434;
  }

  v11 = FigGetAllocatorForMedia();
  v8 = CFDictionaryCreate(v11, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = *MEMORY[0x1E695E4D0];
  CMSetAttachment(a2, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
  CMSetAttachment(a2, *MEMORY[0x1E6960500], v8, 1u);
  *(v3 + 64) = v8;
  CMSetAttachment(a2, *MEMORY[0x1E6962E00], v9, 1u);
  if (CMBufferQueueIsEmpty(*(a1 + 88)))
  {
    return fpfs_RenderBuffer(a1, a2);
  }

  else
  {
    return CMBufferQueueEnqueue(*(a1 + 88), a2);
  }
}

void fpfs_RemoveDoNotDisplay(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v3 = *MEMORY[0x1E6960410];

      CFDictionaryRemoveValue(ValueAtIndex, v3);
    }
  }
}

const void *fpfs_StealBuffer(const void *buf, CMBufferQueueRef queue)
{
  if (queue)
  {
    return CMBufferQueueEnqueue(queue, buf);
  }

  return buf;
}

void fpfs_UpdateDimensions(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  v28 = *MEMORY[0x1E695F060];
  if (!a2 && *(DerivedStorage + 840) == 0.0)
  {
    return;
  }

  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1986618469);
  if (!RenderingNonGapTrackofType)
  {
    for (RenderingNonGapTrackofType = *(DerivedStorage + 1024); RenderingNonGapTrackofType; RenderingNonGapTrackofType = *(RenderingNonGapTrackofType + 24))
    {
      if (*(RenderingNonGapTrackofType + 48) == 1986618469 && !*(RenderingNonGapTrackofType + 472) && *(RenderingNonGapTrackofType + 56))
      {
        break;
      }
    }
  }

  v8 = *(DerivedStorage + 1680);
  if (v8 && FigAlternateIsAudioOnly(v8))
  {
LABEL_28:
    if (!RenderingNonGapTrackofType)
    {
      goto LABEL_29;
    }

LABEL_30:
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(*(RenderingNonGapTrackofType + 56), *(DerivedStorage + 844), *(DerivedStorage + 845));
    width = PresentationDimensions.width;
    height = PresentationDimensions.height;
    v28 = PresentationDimensions;
    v14 = *(DerivedStorage + 3368);
    v15 = *(RenderingNonGapTrackofType + 72);
    *(DerivedStorage + 3368) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_34;
  }

  if (RenderingNonGapTrackofType)
  {
    goto LABEL_30;
  }

  v9 = *(DerivedStorage + 1040);
  if (v9)
  {
    RenderingNonGapTrackofType = 0;
    do
    {
      if (*(v9 + 48) == 1986618469 && !*(v9 + 472) && *(v9 + 56))
      {
        RenderingNonGapTrackofType = v9;
      }

      v9 = *(v9 + 24);
    }

    while (v9);
    if (RenderingNonGapTrackofType)
    {
      goto LABEL_30;
    }
  }

  v10 = *(DerivedStorage + 1056);
  if (v10)
  {
    RenderingNonGapTrackofType = 0;
    do
    {
      if (*(v10 + 48) == 1986618469 && !*(v10 + 472) && *(v10 + 56))
      {
        RenderingNonGapTrackofType = v10;
      }

      v10 = *(v10 + 24);
    }

    while (v10);
    goto LABEL_28;
  }

LABEL_29:
  height = v28.height;
  width = v28.width;
LABEL_34:
  v16 = height;
  *(DerivedStorage + 800) = v16;
  v17 = width;
  *(DerivedStorage + 796) = v17;
  fpfs_ReadjustDimensions();
  v24 = *(DerivedStorage + 1872);
  if (v24)
  {
    FigLegibleOutputManagerSetVideoDisplaySize(v24, v28.width, v28.height);
  }

  if (*(v6 + 462))
  {
    v25 = *(DerivedStorage + 816);
    v26 = *(DerivedStorage + 808);
    if (v25 && *(v25 + 32))
    {
      fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v25, *(v6 + 480), a1, *(v6 + 464), *(v6 + 472));
    }

    if (v26 && *(v26 + 32))
    {
      fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v26, *(v6 + 480), a1, *(v6 + 464), *(v6 + 472));
    }
  }

  if (!*(DerivedStorage + 530))
  {
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v5, a1, v18, v19, v20, v21, v22, v23, @"CurrentDimensions", @"VideoSlotArray");
    fpfs_EnqueueNotification(v5, @"DimensionsChanged", a1, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }
}

uint64_t fpfs_SetAlternateWithContext(uint64_t a1, const void *a2, const void *a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, unsigned int a9)
{
  v176 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = DerivedStorage;
  v153 = *(DerivedStorage + 1072);
  cf = 0;
  v159 = 0;
  v148 = *MEMORY[0x1E6960C70];
  *&v157.value = *MEMORY[0x1E6960C70];
  v147 = *(MEMORY[0x1E6960C70] + 16);
  v157.epoch = v147;
  v17 = MEMORY[0x1E695FF58];
  if (!*(DerivedStorage + 912))
  {
    value_low = 0;
    v28 = 0;
    goto LABEL_81;
  }

  if (*(DerivedStorage + 1680))
  {
    if (*(DerivedStorage + 1576) && (*(DerivedStorage + 332) & 1) != 0)
    {
      v175 = *(DerivedStorage + 320);
      lhs = *(DerivedStorage + 1160);
      CMTimeAdd(&v157, &v175, &lhs);
    }

    else
    {
      fpfs_GetNextTimeToPlayIfEstablished(a2, &lhs);
      rhs = *(v16 + 1160);
      CMTimeAdd(&v175, &lhs, &rhs);
      v157 = v175;
    }
  }

  v150 = a8;
  fpfsi_SetSwitchReasonCode(v16, a9);
  if (*(v16 + 2820) != *(v16 + 2816))
  {
    *(v16 + 2312) = 1;
    fpfsi_RTCReportingReportVariantSwitchComplete(a2, 1u);
  }

  v151 = a4;
  v18 = (a4 >> 2) & 1;
  v19 = *(v16 + 1736);
  if (v19)
  {
    if (!CFEqual(a3, v19))
    {
      v20 = *(v16 + 1736);
      if (v20)
      {
        CFRelease(v20);
        *(v16 + 1736) = 0;
      }
    }
  }

  v21 = *(v16 + 1744);
  if (v21 && v21 != a3)
  {
    fpfsi_RTCReportingReportTrialSwitchData(a2, 1);
    v22 = *(v16 + 1744);
    if (v22)
    {
      CFRelease(v22);
      *(v16 + 1744) = 0;
    }

    v23 = *(v16 + 96);
    if (v23)
    {
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, @"AfmfpbProperty_TrialAlternate", 0);
      }
    }
  }

  if ((v18 & 1) == 0)
  {
    v25 = *(v16 + 1680);
    if (v25)
    {
      if (v25 != a3)
      {
        fpfs_CreateAccessLogEntryWithUnlock(a2, &cf);
      }
    }
  }

  IsIFrameOnly = FigAlternateIsIFrameOnly(a3);
  v152 = v18;
  if (fpfs_IsClosedCaptioningSelected())
  {
    fpfs_SetAlternateWithContext_cold_1();
    v28 = v175.value;
    if (IsIFrameOnly)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = *(v16 + 1768);
    if (v27)
    {
      v28 = CFRetain(v27);
      if (!IsIFrameOnly)
      {
        goto LABEL_31;
      }

LABEL_29:
      IsAudioOnly = 0;
      goto LABEL_32;
    }

    v28 = 0;
    if (IsIFrameOnly)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  IsAudioOnly = FigAlternateIsAudioOnly(a3);
LABEL_32:
  v155 = v28;
  if (*v17 == 1)
  {
    FigAlternateGetPeakBitRate(a3);
    if (!FigAlternateGetAverageBitRate(a3))
    {
      FigAlternateGetPeakBitRate(a3);
    }

    kdebug_trace();
  }

  v156 = a1;
  if (*(a5 + 12))
  {
    v175 = *a5;
    v29 = v17;
    v30 = CMBaseObjectGetDerivedStorage();
    matched = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(v30 + 1680), a3, *(v30 + 1768), 1);
    v32 = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(v30 + 1680), a3, *(v30 + 1768), 2);
    if (matched)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    if (v32)
    {
      v34 = matched == 0;
    }

    else
    {
      v34 = v33;
    }

    v35 = *(v30 + 1680);
    v36 = *(v30 + 1768);
    v17 = v29;
    if (FigStreamAlternateSubstreamURLsMatchBetweenVariants(v35, a3, v36, 4))
    {
      v37 = v34;
    }

    else
    {
      v37 = v34 | 4u;
    }

    fpfs_GetItemBufferedDuration(a2, a5, a6, v37);
    lhs = v175;
    v160 = *a5;
    CMTimeSubtract(&rhs, &lhs, &v160);
    CMTimeAbsoluteValue(&lhs, &rhs);
    CMTimeMake(&rhs, 50, 1000);
    CMTimeCompare(&lhs, &rhs);
  }

  v38 = *(v16 + 504);
  if (v38)
  {
    CFRelease(v38);
    *(v16 + 504) = 0;
  }

  v39 = *(v16 + 912);
  rhs = v157;
  v160 = *a5;
  v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v40)
  {
    goto LABEL_79;
  }

  v175 = rhs;
  lhs = v160;
  v41 = v40(v39, a3, v28, v150, IsAudioOnly, v151, &v175, &lhs, a6, &v159 + 4, &v159, v16 + 12 * v152 + 928);
  if (v41)
  {
    goto LABEL_225;
  }

  v42 = *(v16 + 120);
  if (v42)
  {
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v43)
    {
      goto LABEL_79;
    }

    v41 = v43(v42, @"AlternateFilterMonitorProperty_SelectedAlternate", a3);
    if (v41)
    {
      goto LABEL_225;
    }

    v44 = *(v16 + 120);
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v45)
    {
      goto LABEL_79;
    }

    v41 = v45(v44, @"AlternateFilterMonitorProperty_SelectedMediaArray", v28);
    if (v41)
    {
      goto LABEL_225;
    }
  }

  if (a3 && FigAlternateGetLastKnownValueForIsFullyCached(a3))
  {
    FigBytePumpGetFigBaseObject();
    v47 = v46;
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v48)
    {
      v41 = v48(v47, 0x1F0B1F8B8, *MEMORY[0x1E695E4C0]);
      if (!v41)
      {
        goto LABEL_60;
      }

LABEL_225:
      value_low = v41;
      goto LABEL_80;
    }

LABEL_79:
    value_low = 4294954514;
    goto LABEL_80;
  }

LABEL_60:
  if ((v151 >> 3))
  {
    v49 = *(v16 + 1744);
    if (v49)
    {
      CFRelease(v49);
      *(v16 + 1744) = 0;
    }

    HIDWORD(v159) = *(v16 + 1752) | *(v16 + 1072);
  }

  if ((v152 & 1) == 0 && cf)
  {
    fpfs_CommitAccessLogEntry(a2, cf);
  }

  if (a7)
  {
    *a7 = v159;
  }

  if (!*(v16 + 1680))
  {
    v50 = *(v16 + 96);
    if (v50)
    {
      *&v175.value = *MEMORY[0x1E695F060];
      FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(v50, &v175.value, (v16 + 2900), 0, *&v175.value, *&v175.timescale);
    }

    fpfs_DetermineRanksOfVariant(v16, a3, (v16 + 1728), (v16 + 1732));
    *(v16 + 2824) = *(v16 + 1728);
    *(v16 + 2852) = *(v16 + 1732);
    *(v16 + 2860) = FigAlternateGetVideoQualityIndex(a3, v51);
    *(v16 + 2828) = *(v16 + 1728);
    *(v16 + 2856) = *(v16 + 1732);
    *(v16 + 2864) = FigAlternateGetVideoQualityIndex(a3, v52);
    *(v16 + 2884) = *(v16 + 1728);
    *(v16 + 2888) = FigAlternateGetAverageBitRate(a3);
    fpfsi_RTCReportingUpdateInitialVariantRank();
  }

  if (!v152)
  {
    if (!FigCFEqual())
    {
      fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(a2, a3, *(v16 + 1680), 0, 0);
    }

    fpfs_ReportVariantSwitchStart(a2, a3, a9, 0, (v151 >> 3) & 1);
    v53 = HIDWORD(v159);
    v54 = CMBaseObjectGetDerivedStorage();
    v55 = v54;
    if ((v53 & 3) > 1)
    {
      if ((v53 & 3) == 3)
      {
        v56 = 0;
        v57 = 2;
      }

      else
      {
        v57 = 1;
        v56 = 1;
      }
    }

    else
    {
      if ((v53 & 3) == 0)
      {
LABEL_102:
        if ((v53 & 4) != 0)
        {
          if (!fpfs_IsClosedCaptioningSelected())
          {
            v65 = v17;
            v66 = *(v55 + 1768);
            CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
            MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v66, CFStringForOSTypeValue, 0);
            if (MediaTypeInMediaArray)
            {
              CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
            }

            v17 = v65;
          }

          ++*(v55 + 1080);
        }

        v69 = v17;
        fpfsi_setNonForcedSubtitlesEnabled(a2);
        v70 = *(v55 + 96);
        if (v70)
        {
          v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v71)
          {
            v71(v70, @"AfmfpbProperty_CurrentAlternate", a3);
          }
        }

        v72 = *(v55 + 2872);
        v73 = *(v55 + 1680);
        *(v55 + 2872) = v73;
        if (v73)
        {
          CFRetain(v73);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        v74 = *(v55 + 1680);
        *(v55 + 1680) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v74)
        {
          CFRelease(v74);
        }

        fpfsi_CheckInterstitialVideoLayoutCompatibility(a2);
        v81 = *(v55 + 1704);
        if (*(v55 + 1680) == v81 && v81)
        {
          CFRelease(v81);
          *(v55 + 1704) = 0;
        }

        v144 = @"CanPlayReverse";
        v145 = 0;
        v143 = @"CanPlayFastReverse";
        NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(*v55, a2, v75, v76, v77, v78, v79, v80, @"SupportsFrameStepping", @"CanPlayFastForward");
        fpfs_EnqueueNotification(*v55, @"AlternateStreamChanged", a2, NotificationPayloadForProperties);
        if (NotificationPayloadForProperties)
        {
          CFRelease(NotificationPayloadForProperties);
        }

        *(v55 + 1072) = v53;
        v83 = *(v55 + 553);
        v84 = (v55 + 475);
        v85 = 472;
        v17 = v69;
        while (1)
        {
          v86 = *(v84 - 3);
          if (v83)
          {
            if (!*(v84 - 3))
            {
              goto LABEL_134;
            }

            if (!*(v55 + 1744))
            {
              goto LABEL_132;
            }

            v86 = *v84;
          }

          if (v86)
          {
LABEL_132:
            if (((v53 >> (v85 + 40)) & 1) == 0)
            {
              ++*(v55 + 1080);
            }
          }

LABEL_134:
          ++v85;
          ++v84;
          if (v85 == 475)
          {
            goto LABEL_135;
          }
        }
      }

      v56 = 0;
      v57 = 1;
    }

    *(v54 + 1080) = v57;
    *(v54 + 1088) = v56;
    goto LABEL_102;
  }

  v62 = *(v16 + 1744);
  *(v16 + 1744) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  *(v16 + 1752) = v159;
  fpfs_ReportVariantSwitchStart(a2, a3, a9, 1u, 0);
  v63 = *(v16 + 96);
  if (v63)
  {
    v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v64)
    {
      v64(v63, @"AfmfpbProperty_TrialAlternate", a3);
    }
  }

LABEL_135:
  v87 = CMBaseObjectGetDerivedStorage();
  rhs.value = 0;
  v88 = *(v87 + 1680);
  if (v88 && !FigAlternateIsIFrameOnly(v88) && !FigAlternateSelectionBossHasFilter(*(v87 + 40), @"VideoLayoutPinning"))
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(*(v87 + 1680));
    VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(VideoLayoutTags);
    if (VideoLayoutLoggingStringFromCollectionArray)
    {
      CFRelease(VideoLayoutLoggingStringFromCollectionArray);
    }

    updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(a2);
    if (updated)
    {
      value_low = updated;
    }

    else
    {
      if (fpfs_SetAlternateWithContext_cold_2(VideoLayoutTags, &rhs, (v87 + 40), &v175))
      {
        goto LABEL_138;
      }

      value_low = LODWORD(v175.value);
    }

    a1 = v156;
LABEL_80:
    *(v16 + 2308) = 0;
    goto LABEL_81;
  }

LABEL_138:
  value_low = 0;
  v89 = v159;
  *(v16 + 2844) = v159;
  a1 = v156;
  if ((v152 & 1) == 0 && (v89 & 7) != 0)
  {
    v90 = 0;
    while (1)
    {
      v91 = 1 << v90;
      if ((v159 & (1 << v90)) != 0)
      {
        break;
      }

LABEL_215:
      if (++v90 == 3)
      {
        value_low = 0;
        v28 = v155;
        v17 = MEMORY[0x1E695FF58];
        goto LABEL_81;
      }
    }

    v92 = v91 & v153;
    if ((v91 & v153) != 0)
    {
      if ((HIDWORD(v159) & v91) != 0)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_174;
        }

        LODWORD(v160.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v94 = v160.value;
        v95 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v96 = v94;
        }

        else
        {
          v96 = v94 & 0xFFFFFFFE;
        }

        if (!v96)
        {
LABEL_173:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v156;
LABEL_174:
          *(v16 + 472 + v90) = 0;
          v111 = CMBaseObjectGetDerivedStorage();
          if (*(v111 + 471))
          {
            *(v111 + 471) = 0;
          }

          goto LABEL_188;
        }

        if (v156)
        {
          v97 = (CMBaseObjectGetDerivedStorage() + 888);
          if (a2)
          {
LABEL_151:
            v98 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_172:
            LODWORD(lhs.value) = 136316418;
            *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v156;
            HIWORD(lhs.epoch) = 2082;
            v164 = v97;
            v165 = 2048;
            v166 = a2;
            v167 = 2082;
            v168 = v98;
            v169 = 1024;
            v170 = v90;
            LODWORD(v142) = 58;
            _os_log_send_and_compose_impl(v96, 0, &v175, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v95, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d will change gear", &lhs, v142);
            goto LABEL_173;
          }
        }

        else
        {
          v97 = "";
          if (a2)
          {
            goto LABEL_151;
          }
        }

        v98 = "";
        goto LABEL_172;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_188;
      }

      LODWORD(v160.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v106 = v160.value;
      v107 = type;
      if (os_log_type_enabled(v105, type))
      {
        v108 = v106;
      }

      else
      {
        v108 = v106 & 0xFFFFFFFE;
      }

      if (!v108)
      {
LABEL_187:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a1 = v156;
        goto LABEL_188;
      }

      if (v156)
      {
        v109 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a2)
        {
LABEL_167:
          v110 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_186:
          LODWORD(lhs.value) = 136316418;
          *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v156;
          HIWORD(lhs.epoch) = 2082;
          v164 = v109;
          v165 = 2048;
          v166 = a2;
          v167 = 2082;
          v168 = v110;
          v169 = 1024;
          v170 = v90;
          LODWORD(v142) = 58;
          _os_log_send_and_compose_impl(v108, 0, &v175, 128, &dword_1962D5000, v105, v107, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d is now off", &lhs, v142);
          goto LABEL_187;
        }
      }

      else
      {
        v109 = "";
        if (a2)
        {
          goto LABEL_167;
        }
      }

      v110 = "";
      goto LABEL_186;
    }

    if (!dword_1EAF169F0)
    {
LABEL_180:
      v112 = v16 + 248 + 24 * v90;
      *v112 = v148;
      *(v112 + 16) = v147;
      v113 = CMBaseObjectGetDerivedStorage();
      if (*(v113 + 471))
      {
        *(v113 + 471) = 0;
      }

      *(v16 + 1104 + 8 * v90) = *(v16 + 1104 + 8 * *(v16 + 1088));
LABEL_188:
      if (*(v16 + 976 + 16 * v90))
      {
        fpfs_WeakStreamEnd(v16, v90, 0);
        StoreCurrentManifold(v16, v90, 0, 0, v114, v115, v116, v117);
      }

      if (!v92)
      {
        goto LABEL_215;
      }

      fpfs_DeleteStrandedTracksUponSwitch(a2, v90, 0);
      v118 = CMBaseObjectGetDerivedStorage();
      v119 = *(v118 + 1024);
      if (!v119)
      {
        goto LABEL_215;
      }

      v120 = v118;
      v121 = v118 + 8 * v90;
      v122 = (v121 + 1104);
      v123 = *(v121 + 1104);
      v124 = (v121 + 1128);
      v125 = (v118 + 16 * v90 + 984);
      v126 = v123;
      do
      {
        if (*(v119 + 196) == v90)
        {
          v127 = *(v119 + 64);
          v128 = v127 == *v125;
          if (v127 == *v125)
          {
            v129 = v124;
          }

          else
          {
            v129 = v122;
          }

          if (!v128)
          {
            v126 = *(v119 + 80);
          }

          *v129 = *(v119 + 80);
        }

        v119 = *(v119 + 24);
      }

      while (v119);
      if (v126 == v123 || !dword_1EAF169F0)
      {
        goto LABEL_215;
      }

      LODWORD(v160.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v130 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v131 = v160.value;
      v132 = type;
      if (os_log_type_enabled(v130, type))
      {
        v133 = v131;
      }

      else
      {
        v133 = v131 & 0xFFFFFFFE;
      }

      if (!v133)
      {
        goto LABEL_214;
      }

      v134 = *v120;
      if (v134)
      {
        v135 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a2)
        {
LABEL_209:
          v136 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_213:
          v137 = *v122;
          LODWORD(lhs.value) = 136316930;
          *(&lhs.value + 4) = "fpfsi_UpdateCurrentDiscontinuityDomainBasedOnTracklist";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v134;
          HIWORD(lhs.epoch) = 2082;
          v164 = v135;
          v165 = 2048;
          v166 = a2;
          v167 = 2082;
          v168 = v136;
          v169 = 1024;
          v170 = v90;
          v171 = 2048;
          v172 = v123;
          v173 = 2048;
          v174 = v137;
          LODWORD(v142) = 78;
          _os_log_send_and_compose_impl(v133, 0, &v175, 128, &dword_1962D5000, v130, v132, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Change (%d) - %ld to %ld", &lhs, v142);
LABEL_214:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v156;
          goto LABEL_215;
        }
      }

      else
      {
        v135 = "";
        if (a2)
        {
          goto LABEL_209;
        }
      }

      v136 = "";
      goto LABEL_213;
    }

    LODWORD(v160.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v100 = v160.value;
    v101 = type;
    if (os_log_type_enabled(v99, type))
    {
      v102 = v100;
    }

    else
    {
      v102 = v100 & 0xFFFFFFFE;
    }

    if (!v102)
    {
LABEL_179:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v156;
      goto LABEL_180;
    }

    if (v156)
    {
      v103 = (CMBaseObjectGetDerivedStorage() + 888);
      if (a2)
      {
LABEL_159:
        v104 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_178:
        LODWORD(lhs.value) = 136316418;
        *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v156;
        HIWORD(lhs.epoch) = 2082;
        v164 = v103;
        v165 = 2048;
        v166 = a2;
        v167 = 2082;
        v168 = v104;
        v169 = 1024;
        v170 = v90;
        LODWORD(v142) = 58;
        _os_log_send_and_compose_impl(v102, 0, &v175, 128, &dword_1962D5000, v99, v101, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: substream %d is now on", &lhs, v142, v143, v144, v145);
        goto LABEL_179;
      }
    }

    else
    {
      v103 = "";
      if (a2)
      {
        goto LABEL_159;
      }
    }

    v104 = "";
    goto LABEL_178;
  }

LABEL_81:
  isExternalVideoOutput = fpfs_isExternalVideoOutput(a1);
  if (value_low == -16835 && isExternalVideoOutput)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v142, v143);
    value_low = v60;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*v17 == 1)
  {
    kdebug_trace();
  }

  return value_low;
}

void StoreCurrentManifold(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (a2 >= 3)
  {
    StoreCurrentManifold_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v15, cf, SHIDWORD(cf), v17);
    return;
  }

  v9 = a3;
  v10 = a2;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(*(a1 + 16), 0, &cf))
  {
    v14 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_13;
  }

  v12 = (a1 + 16 * v10 + 8 * v9 + 976);
  if (*v12)
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  *v12 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = cf;
  if (a4)
  {
    FigStartForwardingMediaServicesProcessDeathNotification();
  }

  if (v14)
  {
LABEL_13:

    CFRelease(v14);
  }
}

void fpfs_DeleteStrandedTracksUponSwitch(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 1024);
  if (v6)
  {
    v7 = DerivedStorage;
    do
    {
      if (!*(v7 + 1024))
      {
        break;
      }

      v8 = *(v6 + 24);
      if (v8)
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = -1;
      }

      if (fpfs_LooksLikeStrandedTrack(a1, v3, 0, v6))
      {
        if (v6 == a3)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        fpfs_DeleteTrack(a1, v6);
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        if (!*(v7 + 1024))
        {
          return;
        }

        v8 = *(v7 + 1024);
        while (*(v8 + 32) != v9)
        {
          v8 = *(v8 + 24);
          if (!v8)
          {
            v8 = *(v7 + 1024);
            break;
          }
        }
      }

      v6 = v8;
    }

    while (v8);
  }
}

void fpfs_CompleteTrialSync(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 48);
  if (v4 == 1936684398)
  {
    v6 = DerivedStorage;
    memset(&v9, 0, sizeof(v9));
    fpfs_GetTime(DerivedStorage, &v8);
    v7 = **&MEMORY[0x1E6960C70];
    if (fpfs_CheckAudioSync(v6, a2, 0, &v8, &v7, 1, &v9))
    {
      v8 = v9;
      fpfs_FinishAudioSyncAndStart();
    }
  }

  else if (v4 == 1986618469)
  {
    fpfs_CheckVideoSyncQueue();
    if (v5)
    {

      fpfs_FinishVideoSync();
    }
  }
}

void fpfs_ResolveAllWaitingTracks(const __CFArray *a1)
{
  v310 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1024);
  if (!v3)
  {
    return;
  }

  v4 = DerivedStorage;
  v5 = 0x7FFFFFFFLL;
  v232 = *MEMORY[0x1E6960C80];
  v231 = *(MEMORY[0x1E6960C80] + 8);
  v237 = *(MEMORY[0x1E6960C80] + 12);
  v6 = *(MEMORY[0x1E6960C80] + 16);
  v239 = *MEMORY[0x1E6960C70];
  v238 = *(MEMORY[0x1E6960C70] + 8);
  v249 = *(MEMORY[0x1E6960C70] + 12);
  v276 = *(MEMORY[0x1E6960C70] + 16);
  v219 = 136316162;
  v281 = v6;
  while (1)
  {
    if (*(v3 + 168) != 3 || v5 <= *(v3 + 80))
    {
      v3 = *(v3 + 24);
      goto LABEL_6;
    }

    v226 = v4;
    fpfs_AreTracksReadyToPlay();
    v5 = *(v3 + 80);
    v7 = v5;
    if (v8)
    {
      goto LABEL_9;
    }

    v4 = v226;
    if (*(v226 + 471))
    {
      break;
    }

LABEL_6:
    if (!v3)
    {
      return;
    }
  }

  v95 = *(v3 + 80);
  v96 = CMBaseObjectGetDerivedStorage();
  if (fpfs_getNext(v96, 0) != a1)
  {
    v5 = v95;
    goto LABEL_6;
  }

  v7 = *(v3 + 80);
  v5 = v95;
LABEL_9:
  v220 = v5;
  v9 = CMBaseObjectGetDerivedStorage();
  v286 = *v9;
  v250 = CMBaseObjectGetDerivedStorage();
  memset(&v293, 0, sizeof(v293));
  v283 = *MEMORY[0x1E6960C80];
  *&v292.value = *MEMORY[0x1E6960C80];
  v292.epoch = v6;
  v290 = 0uLL;
  v291 = 0;
  fpfs_GetTime(v9, &v290);
  v278 = v290.n128_u32[3];
  v279 = v290.n128_u32[2];
  v277 = v291;
  v280 = v290.n128_u64[0];
  if (*(v9 + 332))
  {
    v10 = *(CMBaseObjectGetDerivedStorage() + 1024);
    for (i = 0x7FFFFFFFFFFFFFFFLL; v10; v10 = *(v10 + 24))
    {
      if (*(v10 + 168) == 6)
      {
        v12 = *(v10 + 48);
        v13 = v12 == 1986618469 || v12 == 1936684398;
        if (v13 && *(v10 + 80) < i)
        {
          i = *(v10 + 80);
        }
      }
    }

    v227 = i >= v7;
  }

  else
  {
    v227 = 0;
  }

  v289 = 0;
  v288 = 0;
  v294 = 0;
  v287 = (v9 + 1024);
  v282 = v9;
  if (fpfsi_IterateMutableTrackList((v9 + 1024), &v294, &v288))
  {
    while (2)
    {
      v14 = v294;
      if (*(v294 + 80) == v7 && (~*(v294 + 156) & 0x11) == 0)
      {
        fpfs_FindTrackStartTime(v9, v7, &time);
        *(v14 + 208) = time;
        v15 = *(v9 + 1024);
        if (v15)
        {
          while (*(v15 + 80) != v7 || *(v15 + 472) || (*(v15 + 156) & 0x1D) != 1)
          {
            v15 = *(v15 + 24);
            if (!v15)
            {
              goto LABEL_31;
            }
          }

          *&time.value = *(v15 + 144);
          v16 = *(v15 + 160);
        }

        else
        {
LABEL_31:
          *&time.value = *MEMORY[0x1E6960C70];
          v16 = v276;
        }

        time.epoch = v16;
        *(v14 + 144) = *&time.value;
        *(v14 + 160) = v16;
        v17 = MEMORY[0x1E6960CC0];
        *(v14 + 232) = *MEMORY[0x1E6960CC0];
        *(v14 + 248) = *(v17 + 16);
        if (*(v14 + 196) == 2 && ((*(v14 + 220) & 1) == 0 || (*(v14 + 156) & 1) == 0))
        {
          Head = CMBufferQueueGetHead(*(v14 + 88));
          fpfs_SetTrackStartTimeAndTimeOffset(v14, Head, 0);
        }

        CMBufferQueueCallForEachBuffer(*(v14 + 88), fpfs_AdjustTime, v14);
        if (dword_1EAF169F0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v308) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          v21 = v308;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v308))
          {
            v22 = value;
          }

          else
          {
            v22 = value & 0xFFFFFFFE;
          }

          if (v22)
          {
            if (v286)
            {
              v23 = (CMBaseObjectGetDerivedStorage() + 888);
              if (a1)
              {
                goto LABEL_43;
              }

LABEL_46:
              v24 = "";
            }

            else
            {
              v23 = "";
              if (!a1)
              {
                goto LABEL_46;
              }

LABEL_43:
              v24 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            v25 = *(v14 + 32);
            time = *(v14 + 144);
            Seconds = CMTimeGetSeconds(&time);
            time = *(v14 + 208);
            v27 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136316930;
            *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v286;
            HIWORD(time2.epoch) = 2082;
            v298 = v23;
            v299 = 2048;
            v300 = a1;
            v301 = 2082;
            v302 = v24;
            v303 = 1024;
            LODWORD(v304[0]) = v25;
            WORD2(v304[0]) = 2048;
            *(v304 + 6) = Seconds;
            HIWORD(v304[1]) = 2048;
            *&v304[2] = v27;
            LODWORD(v218) = 78;
            _os_log_send_and_compose_impl(v22, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v21, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d requires discontinuityOffset fix-up to %g; start at %g", &time2, v218);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v9 = v282;
        }

        if (*(v14 + 198))
        {
          fpfs_StopFeedingTrack(v14, 0, 1);
        }
      }

      if (!fpfsi_IterateMutableTrackList(v287, &v294, &v288))
      {
        break;
      }

      continue;
    }
  }

  if (*(v9 + 2472) && (*(v9 + 2436) & 1) != 0)
  {
    *(v9 + 1488) = *(v9 + 2440);
    *(v9 + 1472) = *(v9 + 2424);
    v227 = 1;
  }

  v261 = a1;
  v28 = CMBaseObjectGetDerivedStorage();
  v308 = v232;
  v309 = v231;
  v306 = v239;
  v29 = v237;
  timescale = v238;
  epoch = v276;
  flags = v249;
  v32 = v281;
  v269 = v28;
  v33 = *(v28 + 1024);
  if (v33)
  {
    v29 = v237;
    v32 = v281;
    flags = v249;
    epoch = v276;
    do
    {
      if (*(v33 + 80) == v7 - 1 && (*(v33 + 244) & 1) != 0 && (time.value = v308, time.timescale = v309, time.flags = v29, time.epoch = v32, time2 = *(v33 + 232), CMTimeCompare(&time, &time2) < 0))
      {
        v308 = *(v33 + 232);
        v29 = *(v33 + 244);
        v309 = *(v33 + 240);
        v32 = *(v33 + 248);
        if ((flags & 1) == 0)
        {
LABEL_63:
          if (*(v33 + 80) == v7 && *(v33 + 48) == 1986618469)
          {
            v34 = CMBufferQueueGetHead(*(v33 + 88));
            if (v34)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&time, v34);
              v306 = time.value;
              flags = time.flags;
              timescale = time.timescale;
              epoch = time.epoch;
            }

            else
            {
              v306 = v239;
              timescale = v238;
              epoch = v276;
              flags = v249;
            }
          }
        }
      }

      else if ((flags & 1) == 0)
      {
        goto LABEL_63;
      }

      v33 = *(v33 + 24);
    }

    while (v33);
  }

  v35 = v281;
  if ((v29 & 0x1D) == 1)
  {
    v36 = v269[128];
    if (v36)
    {
      v262 = epoch;
      do
      {
        if (*(v36 + 80) == v7 && (*(v36 + 220) & 1) != 0)
        {
          time.value = v308;
          time.timescale = v309;
          time.flags = v29;
          time.epoch = v32;
          time2 = *(v36 + 208);
          if (CMTimeCompare(&time, &time2) >= 1)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v38 = rhs.value;
              v265 = type;
              if (os_log_type_enabled(v37, type))
              {
                v39 = v38;
              }

              else
              {
                v39 = v38 & 0xFFFFFFFE;
              }

              if (v39)
              {
                v40 = *v269;
                if (*v269)
                {
                  v41 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v41 = "";
                }

                v254 = v41;
                v257 = v37;
                if (v261)
                {
                  v42 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v42 = "";
                }

                v251 = v42;
                v43 = *(v36 + 32);
                time = *(v36 + 208);
                v44 = CMTimeGetSeconds(&time);
                time.value = v308;
                time.timescale = v309;
                time.flags = v29;
                time.epoch = v32;
                v45 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136316930;
                *(&time2.value + 4) = "fpfs_RealignTrackStartTime";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v40;
                HIWORD(time2.epoch) = 2082;
                v298 = v254;
                v299 = 2048;
                v300 = v261;
                v301 = 2082;
                v302 = v251;
                v303 = 1024;
                LODWORD(v304[0]) = v43;
                WORD2(v304[0]) = 2048;
                *(v304 + 6) = v44;
                HIWORD(v304[1]) = 2048;
                *&v304[2] = v45;
                LODWORD(v218) = 78;
                _os_log_send_and_compose_impl(v39, 0, &time, 128, &dword_1962D5000, v257, v265, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: update startTime of track %d from %f to %f", &time2, v218);
                v35 = v281;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              epoch = v262;
            }

            *(v36 + 208) = v308;
            *(v36 + 216) = v309;
            *(v36 + 220) = v29;
            *(v36 + 224) = v32;
          }
        }

        v36 = *(v36 + 24);
      }

      while (v36);
    }

    if ((flags & 0x1D) == 1)
    {
      time.value = v306;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      time2.value = v308;
      time2.timescale = v309;
      time2.flags = v29;
      time2.epoch = v32;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        time2.value = v308;
        time2.timescale = v309;
        time2.flags = v29;
        time2.epoch = v32;
        rhs.value = v306;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        CMTimeSubtract(&time, &time2, &rhs);
        fpfs_TimeShiftDiscontinuityDomain(v269, v7, &time);
      }
    }
  }

  v46 = *v287;
  v294 = v46;
  if (v46)
  {
    v258 = 1;
    v252 = v237;
    v255 = v35;
    v266 = v237;
    v47 = v35;
    v247 = v232;
    v48 = v231;
    v49 = v231;
    v263 = v232;
    v50 = v283;
    do
    {
      if (*(v46 + 80) == v7 && *(v46 + 56))
      {
        v51 = *(v46 + 48);
        if (v51 == 1986618469 || v51 == 1936684398)
        {
          if (dword_1EAF169F0)
          {
            v270 = v49;
            v53 = v48;
            v54 = v47;
            LODWORD(rhs.value) = 0;
            LOBYTE(v308) = 0;
            v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v56 = rhs.value;
            v57 = v308;
            if (os_log_type_enabled(v55, v308))
            {
              v58 = v56;
            }

            else
            {
              v58 = v56 & 0xFFFFFFFE;
            }

            if (v58)
            {
              if (v286)
              {
                v59 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v59 = "";
              }

              if (v261)
              {
                v60 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v60 = "";
              }

              v61 = "audio";
              if (*(v46 + 48) == 1986618469)
              {
                v61 = "video";
              }

              v62 = *(v46 + 32);
              LODWORD(time2.value) = 136316674;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v286;
              HIWORD(time2.epoch) = 2082;
              v298 = v59;
              v299 = 2048;
              v300 = v261;
              v301 = 2082;
              v302 = v60;
              v303 = 2082;
              v304[0] = v61;
              LOWORD(v304[1]) = 2048;
              *(&v304[1] + 2) = v62;
              LODWORD(v218) = 72;
              _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v55, v57, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: found %{public}s track %ld", &time2, v218);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v35 = v281;
            v47 = v54;
            v48 = v53;
            v49 = v270;
          }

          v63 = CMBufferQueueGetHead(*(v46 + 88));
          if (v63)
          {
            CMSampleBufferGetOutputPresentationTimeStamp(&time, v63);
            v245 = time.value;
            v64 = time.timescale;
            v242 = time.flags;
            v240 = time.epoch;
            v65 = *(v46 + 48);
            if (v65 == 1986618469)
            {
              time.value = v247;
              time.timescale = v49;
              time.flags = v266;
              time.epoch = v47;
              *&time2.value = v283;
              time2.epoch = v35;
              if (!CMTimeCompare(&time, &time2))
              {
                v49 = v64;
                v247 = v245;
                v47 = v240;
                v266 = v242;
              }

              v65 = *(v46 + 48);
            }

            if (v65 == 1936684398)
            {
              time.value = v263;
              time.timescale = v48;
              time.flags = v252;
              time.epoch = v255;
              *&time2.value = v283;
              time2.epoch = v35;
              if (!CMTimeCompare(&time, &time2))
              {
                v48 = v64;
                v263 = v245;
                v255 = v240;
                v252 = v242;
              }
            }

            if (dword_1EAF169F0)
            {
              v271 = v49;
              v228 = v48;
              v233 = v47;
              LODWORD(rhs.value) = 0;
              LOBYTE(v308) = 0;
              v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v67 = rhs.value;
              v68 = v308;
              if (os_log_type_enabled(v66, v308))
              {
                v69 = v67;
              }

              else
              {
                v69 = v67 & 0xFFFFFFFE;
              }

              if (v69)
              {
                v70 = *v282;
                if (*v282)
                {
                  v71 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v71 = "";
                }

                v223 = v71;
                if (v261)
                {
                  v221 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v221 = "";
                }

                v72 = *(v46 + 32);
                time.value = v245;
                time.timescale = v64;
                time.flags = v242;
                time.epoch = v240;
                v73 = CMTimeGetSeconds(&time);
                time = *(v46 + 232);
                v74 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136317442;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v70;
                HIWORD(time2.epoch) = 2082;
                v298 = v223;
                v299 = 2048;
                v300 = v261;
                v301 = 2082;
                v302 = v221;
                v303 = 2048;
                v304[0] = v72;
                LOWORD(v304[1]) = 2048;
                *(&v304[1] + 2) = v245;
                WORD1(v304[2]) = 1024;
                HIDWORD(v304[2]) = v64;
                LOWORD(v304[3]) = 2048;
                *(&v304[3] + 2) = v73;
                WORD1(v304[4]) = 2048;
                *(&v304[4] + 4) = v74;
                LODWORD(v218) = 98;
                _os_log_send_and_compose_impl(v69, 0, &time, 128, &dword_1962D5000, v66, v68, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %ld has min ts %lld %u (%1.5g), lastSampleEnd %1.5g", &time2, v218);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v35 = v281;
              v47 = v233;
              v48 = v228;
              v49 = v271;
            }

            time = v292;
            time2 = *(v46 + 232);
            if (CMTimeCompare(&time, &time2) < 0)
            {
              v292 = *(v46 + 232);
            }

            v75 = v258;
            if (!*(v46 + 198))
            {
              v75 = 0;
            }

            v258 = v75;
          }

          v50 = v283;
        }
      }

      if ((*(v46 + 220) & 0x1D) == 1 && *(v46 + 80) == v7)
      {
        v280 = *(v46 + 208);
        v279 = *(v46 + 216);
        v278 = *(v46 + 220);
        v277 = *(v46 + 224);
      }

      v46 = *(v46 + 24);
    }

    while (v46);
    v294 = 0;
    v243 = v258 == 0;
    v76 = v255;
    v77 = v252;
    v78 = v247;
    v79 = v263;
  }

  else
  {
    v243 = 0;
    LODWORD(v48) = v231;
    v79 = v232;
    v49 = v231;
    v78 = v232;
    v47 = v35;
    v77 = v237;
    v266 = v237;
    v76 = v35;
    v50 = v283;
  }

  v264 = v79;
  time.value = v79;
  time.timescale = v48;
  time.flags = v77;
  v253 = v77;
  v256 = v76;
  time.epoch = v76;
  *&time2.value = v50;
  time2.epoch = v35;
  if (CMTimeCompare(&time, &time2))
  {
    time.value = v78;
    time.timescale = v49;
    time.flags = v266;
    time.epoch = v47;
    *&time2.value = v283;
    time2.epoch = v35;
    if (CMTimeCompare(&time, &time2))
    {
      time.value = v78;
      time.timescale = v49;
      time.flags = v266;
      time.epoch = v47;
      v80 = v47;
      v81 = v264;
      time2.value = v264;
      v82 = v253;
      time2.timescale = v48;
      time2.flags = v253;
      v272 = v49;
      v83 = v256;
      time2.epoch = v256;
      v84 = CMTimeCompare(&time, &time2);
      if (v84 <= 0)
      {
        v85 = v272;
      }

      else
      {
        v85 = v48;
      }

      if (v84 <= 0)
      {
        v86 = v78;
      }

      else
      {
        v86 = v264;
      }

      if (v84 <= 0)
      {
        v87 = v256;
      }

      else
      {
        v87 = v80;
      }

      if (v84 <= 0)
      {
        v88 = v253;
      }

      else
      {
        v88 = v266;
      }

      if (v84 <= 0)
      {
        v83 = v80;
      }

      v256 = v83;
      if (v84 <= 0)
      {
        v82 = v266;
      }

      v253 = v82;
      if (v84 > 0)
      {
        LODWORD(v48) = v272;
        v81 = v78;
      }

      v264 = v81;
      v49 = v85;
      v78 = v86;
      v47 = v87;
      v266 = v88;
    }

    else
    {
      v49 = v48;
      v78 = v264;
      v47 = v256;
      v266 = v253;
    }
  }

  else
  {
    v256 = v47;
    v253 = v266;
    LODWORD(v48) = v49;
    v264 = v78;
  }

  time.value = v280;
  time.timescale = v279;
  time.flags = v278;
  time.epoch = v277;
  *&time2.value = v290;
  time2.epoch = v291;
  v248 = v78;
  if (CMTimeCompare(&time, &time2) >= 0 || v227)
  {
    v246 = 1;
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v273 = v49;
      v89 = v48;
      v234 = v47;
      LODWORD(rhs.value) = 0;
      LOBYTE(v308) = 0;
      v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v91 = rhs.value;
      v92 = v308;
      if (os_log_type_enabled(v90, v308))
      {
        v93 = v91;
      }

      else
      {
        v93 = v91 & 0xFFFFFFFE;
      }

      if (v93)
      {
        if (v286)
        {
          v94 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v94 = "";
        }

        if (v261)
        {
          v97 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v97 = "";
        }

        *&time.value = v290;
        time.epoch = v291;
        v98 = CMTimeGetSeconds(&time);
        time.value = v280;
        time.timescale = v279;
        time.flags = v278;
        time.epoch = v277;
        v99 = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v286;
        HIWORD(time2.epoch) = 2082;
        v298 = v94;
        v299 = 2048;
        v300 = v261;
        v301 = 2082;
        v302 = v97;
        v303 = 2048;
        *v304 = v98;
        LOWORD(v304[1]) = 2048;
        *(&v304[1] + 2) = v99;
        LODWORD(v218) = 72;
        _os_log_send_and_compose_impl(v93, 0, &time, 128, &dword_1962D5000, v90, v92, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: WARNING: timebase %1.5g has advanced ahead of startTime %1.5g", &time2, v218);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v47 = v234;
      LODWORD(v48) = v89;
      v49 = v273;
    }

    v100 = v282;
    v101 = *(v282 + 840);
    v246 = v101 == 0.0;
    if (v101 != 0.0)
    {
      fpfs_setUnlikelyToKeepUpAndRanDry(v261);
      fpfs_SetRateWithFadeInternal(*v282, MEMORY[0x1E6960C70], 0.0);
      v100 = v282;
    }

    fpfs_GetTime(v100, &time);
    v280 = time.value;
    v279 = time.timescale;
    v278 = time.flags;
    v277 = time.epoch;
  }

  v102 = v283;
  v259 = v266 & 0x1D;
  if (v259 == 1)
  {
    v274 = v49;
    time.value = v264;
    time.timescale = v48;
    time.flags = v266;
    time.epoch = v47;
    v103 = v280;
    time2.value = v280;
    v104 = v48;
    LODWORD(v48) = v279;
    time2.timescale = v279;
    time2.flags = v278;
    v105 = v277;
    time2.epoch = v277;
    v106 = CMTimeCompare(&time, &time2);
    if (v106 < 0)
    {
      v107 = v278;
    }

    else
    {
      v105 = v47;
      v107 = v266;
    }

    if (v106 >= 0)
    {
      LODWORD(v48) = v104;
      v103 = v264;
    }

    v6 = v281;
    v108 = v282;
    v277 = v105;
    v47 = v105;
    v278 = v107;
    v109 = v107;
    v279 = v48;
    v280 = v103;
    v264 = v103;
    if (*(v282 + 1484))
    {
      v110 = (v282 + 1472);
      time.value = v280;
      v109 = v107;
      time.timescale = v48;
      time.flags = v107;
      time.epoch = v277;
      time2 = *(v282 + 1472);
      if (CMTimeCompare(&time, &time2) < 1)
      {
        time.value = v280;
        time.timescale = v48;
        time.flags = v107;
        time.epoch = v277;
        *&time2.value = *v110;
        time2.epoch = *(v282 + 1488);
        v116 = CMTimeCompare(&time, &time2);
        v47 = v277;
        v264 = v280;
        v108 = v282;
        if (v116 <= 0)
        {
          *&time.value = *v110;
          time.epoch = *(v282 + 1488);
          time2 = v292;
          v117 = CMTimeCompare(&time, &time2);
          v47 = v281;
          v109 = v237;
          LODWORD(v48) = v231;
          v264 = v232;
          v108 = v282;
          if (v117 >= 1)
          {
            v47 = v277;
            v109 = v107;
            LODWORD(v48) = v279;
            v264 = v280;
            if (*(v282 + 471))
            {
              return;
            }
          }
        }
      }

      else
      {
        v108 = v282;
        if (dword_1EAF169F0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v308) = 0;
          v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v112 = rhs.value;
          v113 = v308;
          if (os_log_type_enabled(v111, v308))
          {
            v114 = v112;
          }

          else
          {
            v114 = v112 & 0xFFFFFFFE;
          }

          if (v114)
          {
            if (v286)
            {
              v115 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v115 = "";
            }

            v267 = v115;
            if (v261)
            {
              v118 = v261;
              v119 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v118 = 0;
              v119 = "";
            }

            time.value = v280;
            time.timescale = v279;
            time.flags = v107;
            time.epoch = v277;
            v120 = CMTimeGetSeconds(&time);
            *&time.value = *v110;
            time.epoch = *(v282 + 1488);
            v121 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v286;
            HIWORD(time2.epoch) = 2082;
            v298 = v267;
            v299 = 2048;
            v300 = v118;
            v301 = 2082;
            v302 = v119;
            v303 = 2048;
            *v304 = v120;
            LOWORD(v304[1]) = 2048;
            *(&v304[1] + 2) = v121;
            LODWORD(v218) = 72;
            _os_log_send_and_compose_impl(v114, 0, &time, 128, &dword_1962D5000, v111, v113, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Warning! Earliest startTime %1.5g later than requested preciseSeekTime %1.5g; abandoning preciseSeek.", &time2, v218);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = v281;
          v108 = v282;
          v78 = v248;
        }

        *v110 = *MEMORY[0x1E6960C70];
        *(v282 + 1488) = v276;
        v47 = v277;
        v109 = v107;
        LODWORD(v48) = v279;
        v264 = v280;
      }
    }

    v266 = v109;
    v102 = v283;
    if (*(v108 + 1484))
    {
      v49 = v274;
    }

    else
    {
      v122 = *v287;
      v294 = v122;
      v49 = v274;
      if (v122)
      {
        do
        {
          if (*(v122 + 80) == v7 && *(v122 + 56) && *(v122 + 48) == 1986618469)
          {
            CMBufferQueueCallForEachBuffer(*(v122 + 88), fpfs_RemoveDoNotDisplayFromBuffer, 0);
            v102 = v283;
          }

          v122 = *(v122 + 24);
        }

        while (v122);
        v294 = 0;
      }
    }
  }

  else
  {
    v6 = v281;
  }

  if ((v266 & 0x1D) == 1)
  {
    *&v293.value = v102;
    v123 = *v287;
    v293.epoch = v6;
    v294 = v123;
    v124 = 0;
    if (v123)
    {
      do
      {
        v125 = *(v123 + 80);
        if (v125 < v7 || v125 == v7 && *(v123 + 472)) && (*(v123 + 244))
        {
          time = v293;
          time2 = *(v123 + 232);
          if (CMTimeCompare(&time, &time2) < 0)
          {
            v293 = *(v123 + 232);
            v124 = v123;
          }
        }

        v123 = *(v123 + 24);
      }

      while (v123);
      v294 = 0;
    }

    time.value = v264;
    time.timescale = v48;
    time.flags = v266;
    time.epoch = v47;
    time2.value = v78;
    time2.timescale = v49;
    time2.flags = v253;
    time2.epoch = v256;
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      if (v124)
      {
        goto LABEL_286;
      }

      time.value = v264;
      time.timescale = v48;
      time.flags = v266;
      time.epoch = v47;
      *&time2.value = v290;
      time2.epoch = v291;
      if (CMTimeCompare(&time, &time2) < 1 || v227)
      {
        goto LABEL_286;
      }
    }

    else
    {
      if (v124)
      {
        time = v293;
        time2.value = v264;
        time2.timescale = v48;
        time2.flags = v266;
        time2.epoch = v47;
        if (CMTimeCompare(&time, &time2) < 0)
        {
          if (dword_1EAF169F0)
          {
            v229 = v48;
            v235 = v47;
            LODWORD(v308) = 0;
            LOBYTE(v306) = 0;
            v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v127 = v308;
            v284 = v306;
            if (os_log_type_enabled(v126, v306))
            {
              v128 = v127;
            }

            else
            {
              v128 = v127 & 0xFFFFFFFE;
            }

            if (v128)
            {
              v241 = v126;
              if (v286)
              {
                v129 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v129 = "";
              }

              v224 = v129;
              v137 = v264;
              if (v261)
              {
                v222 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v222 = "";
                v137 = v264;
              }

              v225 = *(v124 + 32);
              time.value = v137;
              time.timescale = v229;
              time.flags = v266;
              time.epoch = v235;
              v138 = CMTimeGetSeconds(&time);
              time2.value = v137;
              time2.timescale = v229;
              time2.flags = v266;
              time2.epoch = v235;
              rhs.value = v248;
              rhs.timescale = v49;
              rhs.flags = v253;
              rhs.epoch = v256;
              CMTimeSubtract(&time, &time2, &rhs);
              v139 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316930;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v286;
              HIWORD(time2.epoch) = 2082;
              v298 = v224;
              v299 = 2048;
              v300 = v261;
              v301 = 2082;
              v302 = v222;
              v303 = 2048;
              v304[0] = v225;
              LOWORD(v304[1]) = 2048;
              *(&v304[1] + 2) = v138;
              WORD1(v304[2]) = 2048;
              *(&v304[2] + 4) = v139;
              LODWORD(v218) = 82;
              _os_log_send_and_compose_impl(v128, 0, &time, 128, &dword_1962D5000, v241, v284, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Track %ld will jump to %1.5gs when it ends to skip %1.5g of ragged starts", &time2, v218);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v281;
            v47 = v235;
            LODWORD(v48) = v229;
          }

          *(v124 + 256) = v264;
          *(v124 + 264) = v48;
          *(v124 + 268) = v266;
          *(v124 + 272) = v47;
        }

        goto LABEL_286;
      }

      if (v227)
      {
        goto LABEL_286;
      }
    }

    if (dword_1EAF169F0)
    {
      v230 = v48;
      v236 = v47;
      LODWORD(v308) = 0;
      LOBYTE(v306) = 0;
      v130 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v131 = v308;
      v132 = v306;
      if (os_log_type_enabled(v130, v306))
      {
        v133 = v131;
      }

      else
      {
        v133 = v131 & 0xFFFFFFFE;
      }

      if (v133)
      {
        if (v286)
        {
          v260 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v260 = "";
        }

        if (v261)
        {
          v244 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v244 = "";
        }

        *&time.value = v290;
        time.epoch = v291;
        v134 = CMTimeGetSeconds(&time);
        time.value = v264;
        time.timescale = v230;
        time.flags = v266;
        time.epoch = v236;
        v135 = CMTimeGetSeconds(&time);
        time2.value = v264;
        time2.timescale = v230;
        time2.flags = v266;
        time2.epoch = v236;
        rhs.value = v78;
        rhs.timescale = v49;
        rhs.flags = v253;
        rhs.epoch = v256;
        CMTimeSubtract(&time, &time2, &rhs);
        v136 = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v286;
        HIWORD(time2.epoch) = 2082;
        v298 = v260;
        v299 = 2048;
        v300 = v261;
        v301 = 2082;
        v302 = v244;
        v303 = 2048;
        *v304 = v134;
        LOWORD(v304[1]) = 2048;
        *(&v304[1] + 2) = v135;
        WORD1(v304[2]) = 2048;
        *(&v304[2] + 4) = v136;
        LODWORD(v218) = 82;
        _os_log_send_and_compose_impl(v133, 0, &time, 128, &dword_1962D5000, v130, v132, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Jumping now from %1.5g to %1.5gs to skip %1.5g of ragged starts", &time2, v218);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v47 = v236;
      LODWORD(v48) = v230;
    }

    time.value = v264;
    time.timescale = v48;
    time.flags = v266;
    time.epoch = v47;
    fpfs_JumpToTime(v261, &time, 1);
    goto LABEL_291;
  }

LABEL_286:
  v140 = v227;
  if (v259 != 1)
  {
    v140 = 0;
  }

  if (!v140)
  {
LABEL_291:
    v141 = 0;
    goto LABEL_292;
  }

  if (*(v282 + 1576))
  {
LABEL_290:
    v141 = 1;
LABEL_292:
    v142 = v276;
    goto LABEL_293;
  }

  v161 = (v282 + 1472);
  if (*(v282 + 1484))
  {
    v170 = *(v282 + 1472);
    v171 = *(v282 + 1480);
    v172 = *(v282 + 1484);
    v277 = *(v282 + 1488);
    v163 = v243;
  }

  else
  {
    v162 = *(v282 + 1680);
    if (v162 && FigAlternateIsIFrameOnly(v162))
    {
      v163 = v243;
      v164 = v282;
    }

    else
    {
      v164 = v282;
      if (*(v282 + 356))
      {
        v173 = (v282 + 344);
        time.value = v280;
        time.timescale = v279;
        time.flags = v278;
        time.epoch = v277;
        time2 = *(v282 + 344);
        if (CMTimeCompare(&time, &time2) < 0)
        {
          if ((v266 & 0x1D) != 1 || (time = *(v282 + 320), time2.value = v264, time2.timescale = v48, time2.flags = v266, time2.epoch = v47, (CMTimeCompare(&time, &time2) & 0x80000000) == 0))
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              LOBYTE(v308) = 0;
              v199 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v200 = rhs.value;
              v201 = v308;
              if (os_log_type_enabled(v199, v308))
              {
                v202 = v200;
              }

              else
              {
                v202 = v200 & 0xFFFFFFFE;
              }

              if (v202)
              {
                v203 = "";
                if (v286)
                {
                  v203 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                v204 = "";
                if (v261)
                {
                  v204 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                *&time.value = *v173;
                time.epoch = *(v282 + 360);
                v205 = CMTimeGetSeconds(&time);
                time = *(v282 + 368);
                v206 = CMTimeGetSeconds(&time);
                time.value = v280;
                time.timescale = v279;
                time.flags = v278;
                time.epoch = v277;
                v207 = CMTimeGetSeconds(&time);
                *&time.value = *v173;
                time.epoch = *(v282 + 360);
                v208 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136317186;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v286;
                HIWORD(time2.epoch) = 2082;
                v298 = v203;
                v299 = 2048;
                v300 = v261;
                v301 = 2082;
                v302 = v204;
                v303 = 2048;
                *v304 = v205;
                LOWORD(v304[1]) = 2048;
                *(&v304[1] + 2) = v206;
                WORD1(v304[2]) = 2048;
                *(&v304[2] + 4) = v207;
                WORD2(v304[3]) = 2048;
                *(&v304[3] + 6) = v208;
                LODWORD(v218) = 92;
                _os_log_send_and_compose_impl(v202, 0, &time, 128, &dword_1962D5000, v199, v201, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Out of tolerance seeking range[%f, %f], do preciseSeeking instead, startTime %f will change as lastMinSnapSeekTime:%f", &time2, v218);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v6 = v281;
            }

            v280 = *(v282 + 344);
            v279 = *(v282 + 352);
            v278 = *(v282 + 356);
            v277 = *(v282 + 360);
            *v161 = *v173;
            *(v282 + 1488) = *(v282 + 360);
            fpfs_AreTracksReadyToPlay();
            if (!v209)
            {
              a1 = v261;
              v4 = v226;
              if (!dword_1EAF169F0)
              {
                goto LABEL_415;
              }

              LODWORD(rhs.value) = 0;
              LOBYTE(v308) = 0;
              v210 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v211 = rhs.value;
              v212 = v308;
              if (os_log_type_enabled(v210, v308))
              {
                v213 = v211;
              }

              else
              {
                v213 = v211 & 0xFFFFFFFE;
              }

              if (v213)
              {
                if (v286)
                {
                  v214 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v214 = "";
                }

                if (v261)
                {
                  v216 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v216 = "";
                }

                LODWORD(time2.value) = v219;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v286;
                HIWORD(time2.epoch) = 2082;
                v298 = v214;
                v299 = 2048;
                v300 = v261;
                v301 = 2082;
                v302 = v216;
                LODWORD(v218) = 52;
                _os_log_send_and_compose_impl(v213, 0, &time, 128, &dword_1962D5000, v210, v212, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: not all the tracks ready to play after switched to preciseSeeking!", &time2, v218);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_461:
              a1 = v261;
              v4 = v226;
              v6 = v281;
              goto LABEL_415;
            }
          }
        }

        v164 = v282;
      }

      v163 = v243;
    }

    v170 = v280;
    *(v164 + 1472) = v280;
    v171 = v279;
    *(v164 + 1480) = v279;
    v172 = v278;
    *(v164 + 1484) = v278;
    *(v164 + 1488) = v277;
  }

  v280 = v170;
  v279 = v171;
  v278 = v172;
  if (!v163)
  {
    time.value = v170;
    time.timescale = v171;
    time.flags = v172;
    time.epoch = v277;
    time2 = v292;
    if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v308) = 0;
        v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v175 = rhs.value;
        v176 = v308;
        if (os_log_type_enabled(v174, v308))
        {
          v177 = v175;
        }

        else
        {
          v177 = v175 & 0xFFFFFFFE;
        }

        if (v177)
        {
          if (v286)
          {
            v178 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v178 = "";
          }

          if (v261)
          {
            v194 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v194 = "";
          }

          time = v292;
          v195 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v286;
          HIWORD(time2.epoch) = 2082;
          v298 = v178;
          v299 = 2048;
          v300 = v261;
          v301 = 2082;
          v302 = v194;
          v303 = 2048;
          *v304 = v195;
          LODWORD(v218) = 62;
          _os_log_send_and_compose_impl(v177, 0, &time, 128, &dword_1962D5000, v174, v176, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Jumping timebase to end of previous discontinuity (%1.5g) prior to preciseSeek", &time2, v218);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = v292;
      fpfs_SetTime(v261, &time);
      goto LABEL_290;
    }
  }

  time.value = v170;
  time.timescale = v171;
  time.flags = v172;
  time.epoch = v277;
  *&time2.value = v290;
  time2.epoch = v291;
  if (CMTimeCompare(&time, &time2) > 0)
  {
    v141 = 1;
    v285 = v277;
    v143 = v172;
    v275 = v171;
    v268 = v170;
    goto LABEL_294;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(v308) = 0;
    v179 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v180 = rhs.value;
    v181 = v308;
    if (os_log_type_enabled(v179, v308))
    {
      v182 = v180;
    }

    else
    {
      v182 = v180 & 0xFFFFFFFE;
    }

    if (v182)
    {
      if (v286)
      {
        v183 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v183 = "";
      }

      if (v261)
      {
        v196 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v196 = "";
      }

      if (*(v282 + 1484))
      {
        v197 = "preciseSeekTime";
      }

      else
      {
        v197 = "seek time";
      }

      time.value = v280;
      time.timescale = v279;
      time.flags = v278;
      time.epoch = v277;
      v198 = CMTimeGetSeconds(&time);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v286;
      HIWORD(time2.epoch) = 2082;
      v298 = v183;
      v299 = 2048;
      v300 = v261;
      v301 = 2082;
      v302 = v196;
      v303 = 2082;
      v304[0] = v197;
      LOWORD(v304[1]) = 2048;
      *(&v304[1] + 2) = v198;
      LODWORD(v218) = 72;
      _os_log_send_and_compose_impl(v182, 0, &time, 128, &dword_1962D5000, v179, v181, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Jumping timebase and startTime to %{public}s %f", &time2, v218);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v170 = v280;
    v171 = v279;
    v172 = v278;
  }

  time.value = v170;
  time.timescale = v171;
  time.flags = v172;
  time.epoch = v277;
  fpfs_SetTime(v261, &time);
  v141 = 1;
  *v161 = *MEMORY[0x1E6960C70];
  v142 = v276;
  *(v282 + 1488) = v276;
LABEL_293:
  v285 = v142;
  v143 = v249;
  v275 = v238;
  v268 = v239;
LABEL_294:
  v294 = 0;
  if (!fpfsi_IterateMutableTrackList(v287, &v294, &v288))
  {
    goto LABEL_461;
  }

  v144 = 0;
  v145 = 0;
  v146 = 0;
  do
  {
    v147 = v294;
    if (*(v294 + 80) != v7)
    {
      continue;
    }

    if (!*(v294 + 56))
    {
LABEL_310:
      if ((*(v147 + 168) & 0xFFFFFFFE) == 2)
      {
        if (*(v147 + 48) == 1986618469 && !*(v147 + 200))
        {
          v151 = v147;
          v152 = 5;
        }

        else
        {
          v151 = v147;
          v152 = 4;
        }

        fpfs_ChangeTrackState(v151, v152);
      }

      continue;
    }

    v148 = *(v294 + 48);
    if (v148 == 1936684398)
    {
      if (!fpfs_CanRenderAudio(v286))
      {
        goto LABEL_310;
      }
    }

    else if (v148 == 1986618469)
    {
      if (!fpfs_CanRenderVideo(v250, *(v294 + 16)))
      {
        goto LABEL_310;
      }

      v149 = *v287;
      if (*v287 != v147)
      {
        v150 = 0;
        do
        {
          while (*(v149 + 48) == 1986618469 && (*(v149 + 168) | 4) == 5)
          {
            v149 = *(v149 + 24);
            v150 = 1;
            if (v149 == v147)
            {
              goto LABEL_310;
            }
          }

          v149 = *(v149 + 24);
        }

        while (v149 != v147);
        if (v150)
        {
          goto LABEL_310;
        }
      }
    }

    if (*(CMBaseObjectGetDerivedStorage() + 504) && (_os_feature_enabled_impl() & 1) != 0 || *(v147 + 112))
    {
      goto LABEL_323;
    }

    if (*(v147 + 48) == 1936684398)
    {
      fpfsi_ClearCachedAudioRenderChains(v261);
LABEL_323:
      v153 = v277;
      v154 = v278;
      v155 = v279;
      v156 = v280;
      if (*(v147 + 48) == 1936684398)
      {
        goto LABEL_326;
      }
    }

    v153 = v277;
    v154 = v278;
    v155 = v279;
    v156 = v280;
    if (*(v282 + 2460))
    {
      time2.value = v280;
      time2.timescale = v279;
      time2.flags = v278;
      time2.epoch = v277;
      rhs = *(v282 + 2448);
      CMTimeSubtract(&time, &time2, &rhs);
      v156 = time.value;
      v155 = time.timescale;
      v154 = time.flags;
      v153 = time.epoch;
    }

LABEL_326:
    time.value = v156;
    time.timescale = v155;
    time.flags = v154;
    time.epoch = v153;
    *&time2.value = *MEMORY[0x1E6960C70];
    time2.epoch = v276;
    fpfs_StartTrackPlaying();
    if (v157 != -16042)
    {
      if (v157)
      {
        return;
      }

      v158 = *(v147 + 48);
      if (v158 != 1986618469 || v144)
      {
        if (v145)
        {
          v159 = 0;
        }

        else
        {
          v159 = v158 == 1936684398;
        }

        if (v159)
        {
          v145 = v147;
        }

        v146 = 1;
      }

      else
      {
        v146 = 1;
        v144 = v147;
      }
    }
  }

  while (fpfsi_IterateMutableTrackList(v287, &v294, &v288));
  if (!v146)
  {
    goto LABEL_461;
  }

  a1 = v261;
  v6 = v281;
  if (!fpfs_setTimebaseStarter(v261, v145, v144))
  {
    v4 = v226;
    if (*(v282 + 1576))
    {
      goto LABEL_415;
    }

    if (!v141)
    {
      goto LABEL_410;
    }

    if (v143)
    {
      v160 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v160)
      {
        while (*(v160 + 48) != 1986618469 || !*(v160 + 112))
        {
          v160 = *(v160 + 24);
          if (!v160)
          {
            goto LABEL_386;
          }
        }

        if (*(v160 + 120))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v308) = 0;
            v165 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v166 = rhs.value;
            v167 = v308;
            if (os_log_type_enabled(v165, v308))
            {
              v168 = v166;
            }

            else
            {
              v168 = v166 & 0xFFFFFFFE;
            }

            if (v168)
            {
              if (v286)
              {
                v169 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v169 = "";
              }

              if (v261)
              {
                v188 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v188 = "";
              }

              time.value = v280;
              time.timescale = v279;
              time.flags = v278;
              time.epoch = v277;
              v189 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v286;
              HIWORD(time2.epoch) = 2082;
              v298 = v169;
              v299 = 2048;
              v300 = v261;
              v301 = 2082;
              v302 = v188;
              v303 = 2048;
              *v304 = v189;
              LODWORD(v218) = 62;
              _os_log_send_and_compose_impl(v168, 0, &time, 128, &dword_1962D5000, v165, v167, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Deferring timebase jump and seek completion to preroll handler for %f", &time2, v218);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v281;
          }

LABEL_410:
          fpfs_UpdateDimensions(v261, 1);
          if ((*(v282 + 620) & 1) == 0)
          {
            fpfs_GetTime(v282, &time);
            *(v282 + 608) = time;
          }

          if (!v246)
          {
            fpfs_CheckPrebufferedLevels();
          }

          *(v282 + 2424) = *MEMORY[0x1E6960C70];
          *(v282 + 2440) = v276;
          goto LABEL_415;
        }
      }

LABEL_386:
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v308) = 0;
        v184 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v185 = rhs.value;
        v186 = v308;
        if (os_log_type_enabled(v184, v308))
        {
          v187 = v185;
        }

        else
        {
          v187 = v185 & 0xFFFFFFFE;
        }

        if (v187)
        {
          v190 = "";
          if (v286)
          {
            v190 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          v191 = "";
          if (v261)
          {
            v191 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          time.value = v268;
          time.timescale = v275;
          time.flags = v143;
          time.epoch = v285;
          v192 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v286;
          HIWORD(time2.epoch) = 2082;
          v298 = v190;
          v299 = 2048;
          v300 = v261;
          v301 = 2082;
          v302 = v191;
          v303 = 2048;
          *v304 = v192;
          LODWORD(v218) = 62;
          _os_log_send_and_compose_impl(v187, 0, &time, 128, &dword_1962D5000, v184, v186, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Executing deferred timebase jump to %1.5g", &time2, v218);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = v281;
      }

      time.value = v268;
      time.timescale = v275;
      time.flags = v143;
      time.epoch = v285;
      fpfs_SetTime(v261, &time);
    }

    time.value = v280;
    time.timescale = v279;
    time.flags = v278;
    time.epoch = v277;
    fpfs_SeekDidComplete();
    *(v282 + 2216) = 0;
    if (!v193)
    {
      if (!v289)
      {
        goto LABEL_410;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v217, v218, v219);
      if (!v215)
      {
LABEL_415:
        v3 = *(v4 + 1024);
        v5 = v220;
        goto LABEL_6;
      }
    }
  }
}

double fpfs_GetNextTimeToPlayIfEstablished@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0uLL;
  v10 = 0;
  fpfsi_GetDuration(a1, &v9);
  if (v5 || (BYTE12(v9) & 0x11) != 0x11 || *(DerivedStorage + 592) || (*(DerivedStorage + 332) & 1) != 0)
  {
    return fpfs_GetNextTimeToPlay(DerivedStorage, 0, a2);
  }

  v6 = MEMORY[0x1E6960C70];
  v7 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v6 + 16);
  return *&v7;
}

void fpfsi_SetSwitchReasonCode(uint64_t a1, unsigned int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(a1 + 2308))
  {
    *(a1 + 2308) = a2;
  }

  if (a2 <= 0x10 && ((1 << a2) & 0x1800C) != 0)
  {
    *(a1 + 2016) = CFAbsoluteTimeGetCurrent();
  }
}

void fpfsi_RTCReportingReportVariantSwitchComplete(uint64_t a1, unsigned int a2)
{
  v82 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfsi_RTCReportingUpdateCurrentAlternateInfo(a1);
  if (a2 || *(DerivedStorage + 2816) >= 1)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 2688) = UpTimeNanoseconds;
    v6 = *(DerivedStorage + 2656);
    time = *(DerivedStorage + 2728);
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 2704);
    v8 = CMTimeGetSeconds(&time);
    v9 = DerivedStorage + 2776;
    time = *(DerivedStorage + 2776);
    v10 = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 2752);
    v11 = CMTimeGetSeconds(&time);
    v12 = *(DerivedStorage + 2680);
    fpfs_GetTime(DerivedStorage, &time);
    v14 = CMTimeGetSeconds(&time);
    v15 = *(DerivedStorage + 2868);
    v16 = @"Up";
    if (v15 == 2)
    {
      v79 = @"Up";
    }

    else
    {
      v17 = @"Down";
      if (v15 != 3 && v15 != 15 && *(DerivedStorage + 2824) <= *(DerivedStorage + 2828))
      {
        v17 = @"Up";
      }

      v79 = v17;
      v16 = @"None";
      switch(v15)
      {
        case 0:
          break;
        case 1:
          v16 = @"Seek";
          break;
        case 3:
          v16 = @"DownBW";
          break;
        case 4:
          v16 = @"DownStall";
          break;
        case 5:
          v16 = @"Deactivate";
          break;
        case 6:
          v16 = @"Stop";
          break;
        case 7:
          v16 = @"AltChanged";
          break;
        case 8:
          v16 = @"IFrameOnly";
          break;
        case 9:
          v16 = @"MediaSel";
          break;
        case 10:
          v16 = @"StopWhileStall";
          break;
        case 11:
          v16 = @"StopBeforeStart";
          break;
        case 12:
          v16 = @"SeekInCache";
          break;
        case 13:
          v16 = @"AltHadGapErr";
          break;
        case 14:
          v16 = @"Relabel";
          break;
        case 15:
          v16 = @"LLDown";
          break;
        case 16:
          v16 = @"VideoFrmtChg";
          break;
        default:
          v16 = @"Unknown";
          break;
      }
    }

    v80 = UpTimeNanoseconds - v6;
    v18 = v10 - v11;
    v19 = v12 - v14;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = DerivedStorage + 2776;
    }

    if (*(DerivedStorage + 2848))
    {
      v21 = @"Aud";
    }

    else
    {
      v21 = 0;
    }

    v22 = @"AuVd";
    if (!*(DerivedStorage + 2848))
    {
      v22 = @"Vid";
    }

    if (*(DerivedStorage + 2849))
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = *(DerivedStorage + 2568);
    if (v24)
    {
      v25 = *(DerivedStorage + 2828);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v26)
      {
        v26(v24, @"playerStats", 0x1F0B424D8, v25, 0);
      }
    }

    v27 = *(DerivedStorage + 2568);
    if (v27)
    {
      v28 = *(DerivedStorage + 2824);
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v29)
      {
        v29(v27, @"playerStats", 0x1F0B424B8, v28, 0);
      }
    }

    v30 = *(DerivedStorage + 2568);
    if (v30)
    {
      v31 = *(DerivedStorage + 2852);
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v32)
      {
        v32(v30, @"playerStats", 0x1F0B42B38, v31, 0);
      }
    }

    v33 = *(DerivedStorage + 2568);
    if (v33)
    {
      v34 = *(DerivedStorage + 2856);
      v35 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v35)
      {
        v35(v33, @"playerStats", 0x1F0B42B58, v34, 0);
      }
    }

    v36 = *(DerivedStorage + 2568);
    if (v36)
    {
      v37 = *(DerivedStorage + 2860);
      v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v38)
      {
        v38(v36, @"playerStats", 0x1F0B424F8, v37, 0);
      }
    }

    v39 = *(DerivedStorage + 2568);
    if (v39)
    {
      v40 = *(DerivedStorage + 2864);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v41)
      {
        v41(v39, @"playerStats", 0x1F0B42518, v40, 0);
      }
    }

    v42 = *(DerivedStorage + 2568);
    if (v42)
    {
      v43 = *(DerivedStorage + 2664);
      v44 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v44)
      {
        v44(v42, @"playerStats", 0x1F0B425D8, (v43 * 1000.0), 0);
      }
    }

    v45 = *(DerivedStorage + 2568);
    if (v45)
    {
      v46 = *(DerivedStorage + 2672);
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v47)
      {
        v47(v45, @"playerStats", 0x1F0B425F8, (v46 * 1000.0), 0);
      }
    }

    v48 = *(DerivedStorage + 2568);
    if (v48)
    {
      v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v49)
      {
        v49(v48, @"playerStats", 0x1F0B42618, (v19 * 1000.0), 0);
      }

      v50 = *(DerivedStorage + 2568);
      if (v50)
      {
        v51 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v51)
        {
          v51(v50, @"playerStats", 0x1F0B42538, v80 / 0xF4240, 0);
        }

        v52 = *(DerivedStorage + 2568);
        if (v52)
        {
          v53 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v53)
          {
            v53(v52, @"playerStats", 0x1F0B42478, v79, 0);
          }

          v54 = *(DerivedStorage + 2568);
          if (v54)
          {
            v55 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v55)
            {
              v55(v54, @"playerStats", 0x1F0B425B8, v16, 0);
            }

            v56 = *(DerivedStorage + 2568);
            if (v56)
            {
              v57 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v57)
              {
                v57(v56, @"playerStats", 0x1F0B42498, a2, 0);
              }

              v58 = *(DerivedStorage + 2568);
              if (v58)
              {
                v59 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v59)
                {
                  v59(v58, @"playerStats", 0x1F0B28B58, v23, 0);
                }

                v60 = *(DerivedStorage + 2568);
                if (v60)
                {
                  v61 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v61)
                  {
                    v61(v60, @"playerStats", 0x1F0B42698, ((Seconds - v8) * 1000.0), 0);
                  }

                  v62 = *(DerivedStorage + 2568);
                  if (v62)
                  {
                    v63 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                    if (v63)
                    {
                      v63(v62, @"playerStats", 0x1F0B426B8, (v18 * 1000.0), 0);
                    }

                    v64 = *(DerivedStorage + 2568);
                    if (v64)
                    {
                      v65 = *(DerivedStorage + 2800);
                      v66 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                      if (v66)
                      {
                        v66(v64, @"playerStats", 0x1F0B426D8, (v65 * 1000.0), 0);
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

    v67 = *(DerivedStorage + 2568);
    if (v67)
    {
      v68 = *(DerivedStorage + 2840);
      v69 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v69)
      {
        v69(v67, @"playerStats", 0x1F0B42458, v68, 0);
      }
    }

    v70 = *(DerivedStorage + 2568);
    if (v70)
    {
      v71 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v71)
      {
        v71(v70, @"playerStats", 109, 0, 0);
      }
    }

    if (a2)
    {
      v72 = *(DerivedStorage + 2824);
      if (v72 >= 1)
      {
        *(DerivedStorage + 1728) = v72;
        *(DerivedStorage + 1732) = *(DerivedStorage + 2852);
      }
    }

    *(DerivedStorage + 2800) = 0;
    *(DerivedStorage + 2656) = 0u;
    *(DerivedStorage + 2672) = 0u;
    *(DerivedStorage + 2688) = 0;
    v73 = MEMORY[0x1E6960C70];
    v74 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 2704) = *MEMORY[0x1E6960C70];
    v75 = *(v73 + 16);
    *(DerivedStorage + 2720) = v75;
    v76 = MEMORY[0x1E6960C80];
    v77 = *MEMORY[0x1E6960C80];
    *(DerivedStorage + 2728) = *MEMORY[0x1E6960C80];
    v78 = *(v76 + 16);
    *(DerivedStorage + 2744) = v78;
    *(DerivedStorage + 2768) = v75;
    *(DerivedStorage + 2752) = v74;
    *v9 = v77;
    *(v9 + 16) = v78;
    *(DerivedStorage + 2828) = -1;
    *(DerivedStorage + 2856) = -1;
    *(DerivedStorage + 2832) = 0;
    *(DerivedStorage + 2840) = 0;
    *(DerivedStorage + 2844) = 0;
    *(DerivedStorage + 2848) = 0;
    *(DerivedStorage + 2808) = 0;
    *(DerivedStorage + 2824) = *(DerivedStorage + 1728);
    *(DerivedStorage + 2820) = *(DerivedStorage + 2816);
    *(DerivedStorage + 2852) = *(DerivedStorage + 1732);
    if (!a2)
    {
      *(DerivedStorage + 2860) = FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680), v13);
    }
  }
}

void fpfs_CommitAccessLogEntry(const void *a1, __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v5 = DerivedStorage;
  if (fpfs_PlayingVideoOnly(a1))
  {
    return;
  }

  v6 = *(v5 + 1680);
  if (v6)
  {
    Resolution = FigAlternateGetResolution(v6);
    if (v8 > 0.0 && Resolution > 0.0)
    {
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
    }

    CodecString = FigAlternateGetCodecString(*(v5 + 1680));
    if (CodecString)
    {
      CFDictionarySetValue(a2, @"c-codec-names", CodecString);
    }

    VideoRangeString = FigAlternateGetVideoRangeString(*(v5 + 1680));
    if (VideoRangeString)
    {
      CFDictionarySetValue(a2, @"c-video-range", VideoRangeString);
    }
  }

  Count = CFArrayGetCount(*(v5 + 1920));
  CFArrayAppendValue(*(v5 + 1920), a2);
  if (!Count)
  {
    fpfsi_UpdateAccessLogStartupPerformanceMetrics(a1);
  }

  if (!*(v5 + 2144))
  {
    fpfs_EnqueueNotification(*v5, @"NewAccessLogEntry", a1, 0);
  }

  if (*(v5 + 840) == 0.0)
  {
    Seconds = 0.0;
    v13 = 1952;
  }

  else
  {
    *(v5 + 1952) = CFAbsoluteTimeGetCurrent();
    fpfs_GetTime(v5, &lhs);
    v18 = *(v5 + 1160);
    CMTimeAdd(&time, &lhs, &v18);
    Seconds = CMTimeGetSeconds(&time);
    v13 = 1944;
  }

  *(v5 + v13) = Seconds;
  v14 = *(v5 + 1024);
  if (!v14)
  {
    *(v5 + 1936) = *(v5 + 1952);
    *(v5 + 2112) = 0;
    *(v5 + 2144) = 0;
    *(v5 + 1960) = 0u;
LABEL_38:
    fpfs_MarkAccessLogEntryComplete();
    return;
  }

  mChannelsPerFrame = 0;
  v16 = 0;
  do
  {
    if ((*(v14 + 440) & 0x8000000000000000) != 0 && *(v5 + 1088) == *(v14 + 196))
    {
      *(v14 + 440) = Count;
      if (*(v14 + 168) == 6)
      {
        if ((*(v5 + 2648) & 0x8000000000000000) != 0)
        {
          *(v5 + 2648) = Count;
        }

        v16 = 1;
      }
    }

    if (*(v14 + 48) == 1936684398)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v14 + 56));
      if (StreamBasicDescription)
      {
        if ((*(v14 + 168) == 6 || *(v14 + 440) == Count) && StreamBasicDescription->mChannelsPerFrame > mChannelsPerFrame)
        {
          mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
        }
      }
    }

    v14 = *(v14 + 24);
  }

  while (v14);
  if (mChannelsPerFrame)
  {
    FigCFDictionarySetInt32();
  }

  *(v5 + 1936) = *(v5 + 1952);
  *(v5 + 2112) = 0;
  *(v5 + 2144) = 0;
  *(v5 + 1960) = 0u;
  if (!v16)
  {
    goto LABEL_38;
  }
}

uint64_t fpfs_DetermineRanksOfVariant(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  if (!a2)
  {
    result = 0;
LABEL_6:
    AlternateRank = -1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = *(a1 + 96);
  if (!result)
  {
    goto LABEL_6;
  }

  AlternateRank = FigAlternatePlaybackBitrateMonitorGetAlternateRank(result, a2);
  result = FigAlternateGetVariantBitrateRank(a2, *(a1 + 2900));
  if (a3)
  {
LABEL_7:
    *a3 = AlternateRank;
  }

LABEL_8:
  if (a4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t fpfs_WeakStreamEnd(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  if (a2 < 3)
  {
    v4 = *(result + 16 * a2 + 8 * a3 + 976);
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    v4 = -1;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v4);
  }

  result = *(v3 + 1024);
  if (result)
  {
    do
    {
      v6 = *(result + 24);
      if (*(result + 64) == v4)
      {
        result = fpfs_StopFeedingTrack(result, 0, 1);
      }

      if (!v6)
      {
        break;
      }

      result = v6;
    }

    while (*(v3 + 1024));
  }

  return result;
}

uint64_t fpfs_isExternalVideoOutput(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 728);
  if (!v2)
  {
    IsExternalDisplay = 0;
    goto LABEL_12;
  }

  if (CFArrayGetCount(v2) < 1)
  {
    IsExternalDisplay = 0;
LABEL_12:
    v7 = FPSupport_CopyMainDisplayCAName();
    if (v7)
    {
      v8 = v7;
      IsExternalDisplay = FPSupport_IsExternalDisplay(v7);
      CFRelease(v8);
    }

    goto LABEL_14;
  }

  v3 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 728), v3);
    if (FPSupport_IsExternalDisplay(ValueAtIndex))
    {
      break;
    }

    v5 = *(DerivedStorage + 728);
    if (v5)
    {
      if (CFArrayGetCount(v5) > ++v3)
      {
        continue;
      }
    }

    IsExternalDisplay = 0;
    goto LABEL_11;
  }

  IsExternalDisplay = 1;
LABEL_11:
  if (!ValueAtIndex)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (!IsExternalDisplay)
  {
    return *(CMBaseObjectGetDerivedStorage() + 462);
  }

  return IsExternalDisplay;
}

BOOL fpfsi_isLiveStreaming(uint64_t a1)
{
  v3 = 0uLL;
  v4 = 0;
  fpfsi_GetDuration(a1, &v3);
  return (v1 | ~HIDWORD(v3) & 0x11) == 0;
}

void fpfsi_GetDuration(uint64_t a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *DerivedStorage;
    dictionaryRepresentation = 0;
    v7 = MEMORY[0x1E6960C68];
    *a2 = *MEMORY[0x1E6960C68];
    *(a2 + 2) = *(v7 + 16);
    v8 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v8 + 8);
    if (FigRetainProxyIsInvalidated())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23.value, v23.timescale, LODWORD(v23.epoch));
      if (v9)
      {
        goto LABEL_28;
      }
    }

    if (!v5[114])
    {
      goto LABEL_28;
    }

    v10 = v5 + 163;
    if (*(v5 + 1316))
    {
      v17 = *v10;
      *(a2 + 2) = v5[165];
      *a2 = v17;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v15 = v14(v13, @"FBP_Duration", AllocatorForMedia, &dictionaryRepresentation);
        if (v15)
        {
          if ((v15 & 0xFFFFFFFD) != 0xFFFFCE10)
          {
LABEL_28:
            fpfs_UnlockAndPostNotificationsWithCaller(v6);
            return;
          }
        }

        else
        {
          CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
          *a2 = *&time1.value;
          v18 = dictionaryRepresentation;
          *(a2 + 2) = time1.epoch;
          CFRelease(v18);
        }
      }

      v19 = *a2;
      v5[165] = *(a2 + 2);
      *v10 = v19;
    }

    if ((*(a2 + 3) & 0x1D) == 1)
    {
      v26 = *MEMORY[0x1E6960CC0];
      v20 = *(MEMORY[0x1E6960CC0] + 12);
      v27 = *(MEMORY[0x1E6960CC0] + 8);
      v21 = *(MEMORY[0x1E6960CC0] + 16);
      for (i = v5[128]; i; i = *(i + 24))
      {
        if (!*(i + 200) && *(i + 168) == 6 && (*(i + 244) & 1) != 0)
        {
          time1.timescale = v27;
          time1.flags = v20;
          time1.epoch = v21;
          v23 = *(i + 232);
          time1.value = v26;
          if (CMTimeCompare(&time1, &v23) < 0)
          {
            v26 = *(i + 232);
            v20 = *(i + 244);
            v27 = *(i + 240);
            v21 = *(i + 248);
          }
        }
      }

      if ((v20 & 0x1D) == 1)
      {
        time1.timescale = v27;
        time1.flags = v20;
        time1.epoch = v21;
        v23 = *a2;
        time1.value = v26;
        if (CMTimeCompare(&time1, &v23) >= 1)
        {
          *a2 = v26;
          *(a2 + 2) = v27;
          *(a2 + 3) = v20;
          *(a2 + 2) = v21;
          *v10 = *a2;
          v10[2] = v21;
        }
      }
    }

    goto LABEL_28;
  }

  v16 = qword_1EAF169E8;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954516, "<<<< FigStreamPlayer >>>>", 67950, v2);
}

uint64_t fpfs_PlayingVideoOnly(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 840) == 0.0)
  {
    result = *(DerivedStorage + 1680);
    if (result)
    {
      return FigAlternateIsIFrameOnly(result) != 0;
    }
  }

  else
  {
    v3 = *(v2 + 108);
    return v3 > 2.0 || v3 < 0.0 || *(DerivedStorage + 2992);
  }

  return result;
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t fpfsi_copyPlayableTimeL3(uint64_t a1, CFTypeRef *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v6 = *(MEMORY[0x1E6960C98] + 32);
  v51 = *MEMORY[0x1E6960C98];
  v52 = v5;
  v53 = v6;
  v59 = *MEMORY[0x1E6960C98];
  v60 = *(MEMORY[0x1E6960C98] + 8);
  v44 = DerivedStorage;
  v7 = *(DerivedStorage + 1680);
  if (v7)
  {
    v8 = FigAlternateIsIFrameOnly(v7) == 0;
  }

  else
  {
    v8 = 1;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fpfsi_copyPlayableTimeL3_cold_2(&time1);
    goto LABEL_56;
  }

  fpfsi_TotalTimeRangeInBuffer();
  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  v45 = *&time1.start.epoch;
  v47 = *&time1.duration.timescale;
  epoch = time1.duration.epoch;
  if (*(v44 + 912) != 0 && v8)
  {
    v13 = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, 0x1F0B1F2B8, v13, &theArray);
    }
  }

  fpfsi_getPumpAvailableTimeRange(v44, &v51);
  if ((flags & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = v47;
  if ((v47 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

  v18 = v45;
  if (epoch || (*(&v45 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (BYTE12(v51))
  {
    epoch = 0;
    if ((BYTE4(v53) & 1) == 0 || *(&v53 + 1) || (*(&v52 + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    time1.start.epoch = v45;
    *&lhs.start.value = v51;
    lhs.start.epoch = v52;
    if ((CMTimeCompare(&time1.start, &lhs.start) & 0x80000000) == 0)
    {
      epoch = 0;
LABEL_9:
      v17 = v47;
LABEL_10:
      v18 = v45;
      goto LABEL_11;
    }

    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    *&time1.start.epoch = v45;
    *&time1.duration.timescale = v47;
    time1.duration.epoch = 0;
    CMTimeRangeGetEnd(&lhs.start, &time1);
    *&v50.start.value = v51;
    v50.start.epoch = v52;
    CMTimeRangeFromTimeToTime(&time1, &v50.start, &lhs.start);
    value = time1.start.value;
    flags = time1.start.flags;
    timescale = time1.start.timescale;
    v18 = *&time1.start.epoch;
    v17 = *&time1.duration.timescale;
    epoch = time1.duration.epoch;
  }

  else
  {
    epoch = 0;
  }

LABEL_11:
  lhs.start.value = value;
  lhs.start.timescale = timescale;
  lhs.start.flags = flags;
  *&lhs.start.epoch = v18;
  *&lhs.duration.timescale = v17;
  lhs.duration.epoch = epoch;
  FPSTimelineConverterL2TimeRangeToL3();
  v59 = time1.start.value;
  v19 = time1.start.flags;
  v60 = time1.start.timescale;
  v20 = time1.start.epoch;
  v21 = time1.duration.value;
  v48 = time1.duration.flags;
  v43 = time1.duration.timescale;
  v46 = time1.duration.epoch;
  if (theArray)
  {
    memset(&v50, 0, sizeof(v50));
    if (CFArrayGetCount(theArray) > 0)
    {
      v41 = v20;
      v42 = v21;
      v38 = a2;
      v22 = 0;
      idx = 0;
      v40 = 0;
      do
      {
        v23 = Mutable;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
        CMTimeRangeMakeFromDictionary(&v50, ValueAtIndex);
        *&lhs.start.value = *&v50.start.value;
        lhs.start.epoch = v50.start.epoch;
        *&rhs.start.value = *(v44 + 1160);
        rhs.start.epoch = *(v44 + 1176);
        CMTimeSubtract(&time1.start, &lhs.start, &rhs.start);
        v50.start.epoch = time1.start.epoch;
        *&v50.start.value = *&time1.start.value;
        *&lhs.start.value = *&time1.start.value;
        *&lhs.start.epoch = *&v50.start.epoch;
        *&lhs.duration.timescale = *&v50.duration.timescale;
        FPSTimelineConverterL2TimeRangeToL3();
        v57 = time1.start.value;
        v25 = time1.start.flags;
        v58 = time1.start.timescale;
        v26 = time1.start.epoch;
        v27 = time1.duration.value;
        v29 = time1.duration.timescale;
        v28 = time1.duration.flags;
        v30 = time1.duration.epoch;
        if ((v19 & 1) != 0 && (v48 & 1) != 0 && !v46)
        {
          if (v42 < 0 || (time1.start.value = v57, lhs.start.value = v59, time1.start.timescale = v58, lhs.start.timescale = v60, lhs.start.flags = v19, lhs.start.epoch = v41, lhs.duration.value = v42, lhs.duration.timescale = v43, lhs.duration.flags = v48, lhs.duration.epoch = 0, CMTimeRangeGetIntersection(&rhs, &time1, &lhs), (rhs.start.flags & 1) != 0) && (rhs.duration.flags & 1) != 0 && !rhs.duration.epoch && (rhs.duration.value & 0x8000000000000000) == 0 && (time1.start = rhs.duration, *&lhs.start.value = *MEMORY[0x1E6960CC0], lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&time1.start, &lhs.start)))
          {
            v46 = 0;
          }

          else
          {
            time1.start.value = v57;
            lhs.start.value = v59;
            time1.start.timescale = v58;
            time1.start.flags = v25;
            time1.start.epoch = v26;
            time1.duration.value = v27;
            time1.duration.timescale = v29;
            time1.duration.flags = v28;
            time1.duration.epoch = v30;
            lhs.start.timescale = v60;
            lhs.start.flags = v19;
            lhs.start.epoch = v41;
            lhs.duration.value = v42;
            lhs.duration.timescale = v43;
            lhs.duration.flags = v48;
            lhs.duration.epoch = 0;
            CMTimeRangeGetUnion(&rhs, &time1, &lhs);
            v19 = rhs.start.flags;
            v60 = rhs.start.timescale;
            v59 = rhs.start.value;
            v26 = rhs.start.epoch;
            v27 = rhs.duration.value;
            v43 = rhs.duration.timescale;
            v48 = rhs.duration.flags;
            v30 = rhs.duration.epoch;
            v57 = rhs.start.value;
            v58 = rhs.start.timescale;
            if (v40)
            {
              CFArrayRemoveValueAtIndex(v23, idx);
            }

            idx = CFArrayGetCount(v23);
            v40 = 1;
            v46 = v30;
            v28 = v48;
            v29 = v43;
            v41 = v26;
            v42 = v27;
            v25 = v19;
          }
        }

        time1.start.value = v57;
        time1.start.timescale = v58;
        time1.start.flags = v25;
        time1.start.epoch = v26;
        time1.duration.value = v27;
        time1.duration.timescale = v29;
        time1.duration.flags = v28;
        time1.duration.epoch = v30;
        v31 = fpfsi_CreatePlayableTimeEntryFromTimeRange(&time1);
        if (!v31)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v38, idx);
          value_low = v37;
          Mutable = v23;
          goto LABEL_38;
        }

        v32 = v31;
        Mutable = v23;
        CFArrayAppendValue(v23, v31);
        CFRelease(v32);
        ++v22;
      }

      while (v22 < CFArrayGetCount(theArray));
      a2 = v38;
      v20 = v41;
      v21 = v42;
      if (v40)
      {
        goto LABEL_37;
      }
    }
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((v48 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v46)
  {
    goto LABEL_37;
  }

  if (v21 < 0)
  {
    goto LABEL_37;
  }

  time1.start.value = v21;
  time1.start.timescale = v43;
  time1.start.flags = v48;
  time1.start.epoch = 0;
  *&lhs.start.value = *MEMORY[0x1E6960CC0];
  lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  if (!CMTimeCompare(&time1.start, &lhs.start))
  {
    goto LABEL_37;
  }

  time1.start.value = v59;
  time1.start.timescale = v60;
  time1.start.flags = v19;
  time1.start.epoch = v20;
  time1.duration.value = v21;
  time1.duration.timescale = v43;
  time1.duration.flags = v48;
  time1.duration.epoch = 0;
  v33 = fpfsi_CreatePlayableTimeEntryFromTimeRange(&time1);
  if (v33)
  {
    v34 = v33;
    CFArrayAppendValue(Mutable, v33);
    CFRelease(v34);
LABEL_37:
    value_low = 0;
    *a2 = CFRetain(Mutable);
    goto LABEL_38;
  }

  fpfsi_copyPlayableTimeL3_cold_1(&time1);
LABEL_56:
  value_low = LODWORD(time1.start.value);
LABEL_38:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

CFMutableDictionaryRef fpfsi_CreatePlayableTimeEntryFromTimeRange(_OWORD *a1)
{
  v1 = a1[1];
  v7 = *a1;
  v8 = *(a1 + 2);
  memset(&v6, 0, sizeof(v6));
  v2 = a1[2];
  *&range.start.value = *a1;
  *&range.start.epoch = v1;
  *&range.duration.timescale = v2;
  CMTimeRangeGetEnd(&v6, &range);
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    *&range.start.value = v7;
    range.start.epoch = v8;
    FigCFDictionarySetCMTime();
    range.start = v6;
    FigCFDictionarySetCMTime();
    *&range.start.value = v7;
    range.start.epoch = v8;
    CMTimeGetSeconds(&range.start);
    FigCFDictionarySetDouble();
    range.start = v6;
    CMTimeGetSeconds(&range.start);
    FigCFDictionarySetDouble();
  }

  else
  {
    fpfsi_CreatePlayableTimeEntryFromTimeRange_cold_1();
  }

  return Mutable;
}

BOOL fpfsi_HasRequiredSubstreamsToIndicateBuffering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 1024);
  if (v2)
  {
    v3 = 0;
    do
    {
      if (*(v2 + 244))
      {
        v4 = *(v2 + 48);
        v5 = v4 == 1935832172 || v4 == 1986618469;
        if (v5 || v4 == 1936684398)
        {
          v3 |= 1 << *(v2 + 196);
        }
      }

      v2 = *(v2 + 24);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(DerivedStorage + 472);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 472))
    {
      goto LABEL_22;
    }

    if (!*(DerivedStorage + 1744))
    {
      v3 |= 1u;
      if (!*(DerivedStorage + 473))
      {
        return (*(DerivedStorage + 1072) & ~v3 & 3) == 0;
      }

LABEL_24:
      if (!*(DerivedStorage + 1744))
      {
LABEL_27:
        v3 |= 2u;
        return (*(DerivedStorage + 1072) & ~v3 & 3) == 0;
      }

      v8 = *(DerivedStorage + 476);
      goto LABEL_26;
    }

    v7 = *(DerivedStorage + 475);
  }

  if (v7)
  {
    v3 |= 1u;
  }

LABEL_22:
  v8 = *(DerivedStorage + 473);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 473))
    {
      return (*(DerivedStorage + 1072) & ~v3 & 3) == 0;
    }

    goto LABEL_24;
  }

LABEL_26:
  if (v8)
  {
    goto LABEL_27;
  }

  return (*(DerivedStorage + 1072) & ~v3 & 3) == 0;
}

CMTimeRange *fpfsi_TotalTimeRangeInBufferForTrackList(CMTimeRange *result, uint64_t a2, uint64_t a3)
{
  for (i = result->start.value; i; i = *(i + 24))
  {
    if (!*(i + 200) || *(i + 48) == 1986618469)
    {
      result = *(i + 96);
      if (result)
      {
        memset(&start, 0, sizeof(start));
        CMBufferQueueGetMinPresentationTimeStamp(&start, result);
        memset(&v16, 0, sizeof(v16));
        result = CMBufferQueueGetDuration(&v16, *(i + 96));
        for (j = 0; j != 5; ++j)
        {
          if (*&kCommonTypes[4 * j] == *(i + 48))
          {
            break;
          }
        }

        *(a3 + j) = 1;
        if ((start.flags & 0x1D) == 1 && (v16.flags & 0x1D) == 1)
        {
          memset(&v15, 0, sizeof(v15));
          time1.start = start;
          *&time2.start.value = *(i + 232);
          time2.start.epoch = *(i + 248);
          if (CMTimeCompare(&time1.start, &time2.start) >= 1)
          {
            time2.start = start;
            v12.start = v16;
            CMTimeSubtract(&time1.start, &time2.start, &v12.start);
            start = time1.start;
          }

          if (*(i + 200))
          {
            CMBufferQueueGetEndPresentationTimeStamp(&time2.start, *(i + 96));
            v12.start = start;
            CMTimeRangeFromTimeToTime(&time1, &v12.start, &time2.start);
            v15 = time1;
          }

          else
          {
            time1.start = start;
            time2.start = v16;
            CMTimeRangeMake(&v15, &time1.start, &time2.start);
          }

          result = CMBaseObjectGetDerivedStorage();
          v7 = a2 + 48 * j;
          if ((*(v7 + 12) & 1) == 0 || (*(v7 + 36) & 1) == 0 || *(v7 + 40) || (*(v7 + 24) & 0x8000000000000000) != 0)
          {
            v8 = *&v15.start.epoch;
            *v7 = *&v15.start.value;
            *(v7 + 16) = v8;
            v9 = *&v15.duration.timescale;
          }

          else
          {
            v10 = *(v7 + 16);
            *&time2.start.value = *v7;
            *&time2.start.epoch = v10;
            *&time2.duration.timescale = *(v7 + 32);
            v12 = v15;
            result = CMTimeRangeGetUnion(&time1, &time2, &v12);
            v11 = *&time1.start.epoch;
            *v7 = *&time1.start.value;
            *(v7 + 16) = v11;
            v9 = *&time1.duration.timescale;
          }

          *(v7 + 32) = v9;
        }
      }
    }
  }

  return result;
}

uint64_t FigManifoldFlush(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 40);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t fpfs_LooksLikeStrandedTrack(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(a4 + 196);
  if (v8 == a2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = *(a4 + 48);
  if (v10 <= 1935832171)
  {
    v12 = v10 == 1668047728 || v10 == 1835365473;
    v11 = 1;
    if (!v12)
    {
      return v9;
    }

LABEL_13:
    if (1 << a2 != v11)
    {
      return 0;
    }

LABEL_14:
    v13 = *(a4 + 168);
    if (v13 != 6)
    {
      v14 = *(a4 + 64);
      if (v14 != *(DerivedStorage + 976 + 16 * v8) && v14 != *(DerivedStorage + 976 + 16 * v8 + 8))
      {
        return 1;
      }

      if ((a3 >> v8))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v10 == 1935832172)
  {
    v11 = 4;
    goto LABEL_13;
  }

  v11 = 1;
  if (v10 == 1986618469)
  {
    goto LABEL_13;
  }

  if (v10 == 1936684398)
  {
    v11 = 2;
    goto LABEL_13;
  }

  return v9;
}

uint64_t fpfs_FormatsAreCompatible(uint64_t a1, const opaqueCMFormatDescription *a2, const opaqueCMFormatDescription *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaType = CMFormatDescriptionGetMediaType(a2);
  if (MediaType != CMFormatDescriptionGetMediaType(a3))
  {
    return 0;
  }

  if (MediaType == 1986618469)
  {
    result = FPSupport_CanFormatsShareVideoRenderPipeline(a2, a3);
    if (!result)
    {
      return result;
    }

LABEL_15:
    MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
    return MediaSubType == CMFormatDescriptionGetMediaSubType(a3);
  }

  if (MediaType == 1936684398)
  {
    v8 = fpfs_passthroughFormatForAudioFormat(a2);
    v9 = fpfs_passthroughFormatForAudioFormat(a3);
    if (v8 != v9)
    {
      v14 = v9;
      if (v8)
      {
        v15 = CMBaseObjectGetDerivedStorage();
        if (v8 == 1633889587 && *(v15 + 536) && *(v15 + 569))
        {
          return 0;
        }
      }

      if ((fpfs_FormatsAreCompatible_cold_1(v14, DerivedStorage) & 1) == 0)
      {
        return 0;
      }
    }

    v10 = CMFormatDescriptionGetMediaSubType(a2);
    v11 = 1;
    if (v10 > 1885692722)
    {
      if (v10 <= 1902469938)
      {
        if (v10 != 1885692723)
        {
          v12 = 1902324531;
LABEL_32:
          if (v10 == v12)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_34:
        sizeOut = 0;
        FormatList = CMAudioFormatDescriptionGetFormatList(a2, &sizeOut);
        v11 = 0;
        if (FormatList && sizeOut >= 0x30)
        {
          mFormatID = FormatList->mASBD.mFormatID;
          v11 = 1;
          if (mFormatID <= 1885547314)
          {
            if (mFormatID == 1667574579)
            {
              goto LABEL_44;
            }

            v19 = 1700997939;
LABEL_42:
            if (mFormatID == v19)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (mFormatID != 1885547315 && mFormatID != 1902324531)
          {
            v19 = 2053319475;
            goto LABEL_42;
          }
        }

LABEL_44:
        v20 = CMFormatDescriptionGetMediaSubType(a3);
        v21 = 1;
        if (v20 > 1885692722)
        {
          if (v20 <= 1902469938)
          {
            if (v20 != 1885692723)
            {
              v22 = 1902324531;
LABEL_59:
              if (v20 != v22)
              {
                goto LABEL_70;
              }

              return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            goto LABEL_61;
          }

          if (v20 == 2053464883)
          {
LABEL_61:
            sizeOut = 0;
            v24 = CMAudioFormatDescriptionGetFormatList(a3, &sizeOut);
            v21 = 0;
            if (!v24 || sizeOut < 0x30)
            {
              return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            v25 = v24->mASBD.mFormatID;
            v21 = 1;
            if (v25 <= 1885547314)
            {
              if (v25 == 1667574579)
              {
                return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
              }

              v26 = 1700997939;
            }

            else
            {
              if (v25 == 1885547315 || v25 == 1902324531)
              {
                return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
              }

              v26 = 2053319475;
            }

            if (v25 == v26)
            {
              return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

LABEL_70:
            v21 = 0;
            return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          if (v20 == 2053319475)
          {
            return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          v23 = 1902469939;
        }

        else
        {
          if (v20 > 1700997938)
          {
            if (v20 == 1700997939)
            {
              return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            if (v20 != 1700998451)
            {
              v22 = 1885547315;
              goto LABEL_59;
            }

            goto LABEL_61;
          }

          if (v20 == 1667574579)
          {
            return v11 == v21 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          v23 = 1667575091;
        }

        if (v20 != v23)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      if (v10 == 2053464883)
      {
        goto LABEL_34;
      }

      if (v10 == 2053319475)
      {
        goto LABEL_44;
      }

      v16 = 1902469939;
    }

    else
    {
      if (v10 > 1700997938)
      {
        if (v10 == 1700997939)
        {
          goto LABEL_44;
        }

        if (v10 != 1700998451)
        {
          v12 = 1885547315;
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      if (v10 == 1667574579)
      {
        goto LABEL_44;
      }

      v16 = 1667575091;
    }

    if (v10 != v16)
    {
LABEL_43:
      v11 = 0;
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (MediaType != 1835365473)
  {
    goto LABEL_15;
  }

  return FigStreamTrackCanMetadataFormatsSync(a2, a3);
}

void fpfsi_ClearCachedVideoRenderChains(const __CFArray *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 832);
  if (v3)
  {
    fpfs_releaseRenderChain(a1, v3);
  }

  *(DerivedStorage + 832) = 0;
}

uint64_t fpfsi_PlaybackHasBufferedBeyondForwardEndTime(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v2 = *(result + 1352);
    v3 = *(result + 1368);
    FPSTimelineConverterL3TimeToL2(&v2, v4);
    return fpfsi_PlaybackHasBufferedBeyondTime() != 0;
  }

  return result;
}

uint64_t fpfsi_IterateMutableTrackList(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!*a2)
  {
    v3 = *a1;
LABEL_10:
    *a2 = v3;
    v4 = v3;
    if (v3)
    {
      goto LABEL_14;
    }

    result = 0;
LABEL_12:
    v6 = -1;
    goto LABEL_18;
  }

  if (*a3 < 0 || (v3 = *a1) == 0)
  {
    result = 0;
    *a2 = 0;
    goto LABEL_12;
  }

  v4 = *a1;
  while (*(v4 + 32) != *a3)
  {
    v4 = *(v4 + 24);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  *a2 = v4;
LABEL_14:
  v7 = *(v4 + 24);
  if (v7)
  {
    v6 = *(v7 + 32);
  }

  else
  {
    v6 = -1;
  }

  result = 1;
LABEL_18:
  *a3 = v6;
  return result;
}

uint64_t fpfs_FindTrackStartTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 1024);
  if (v3)
  {
    while (*(v3 + 80) != a2 || (*(v3 + 156) & 0x1D) != 1 || (*(v3 + 220) & 1) == 0)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *a3 = *(v3 + 208);
    v5 = *(v3 + 224);
  }

  else
  {
LABEL_6:
    v4 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v5 = *(v4 + 16);
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t fpfs_SetTrackStartTimeAndTimeOffset(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v124 = CMBaseObjectGetDerivedStorage();
  v136 = **&MEMORY[0x1E6960CC0];
  v126 = *&v136.value;
  v135 = v136;
  epoch = v136.epoch;
  if (!a2)
  {
    fpfs_SetTrackStartTimeAndTimeOffset_cold_1(&time);
    return LODWORD(time.value);
  }

  v127 = a3;
  CMSampleBufferGetPresentationTimeStamp(&v136, a2);
  fpfs_GetTimeOffsetIntoSegment(a2, &v135);
  v8 = *(DerivedStorage + 1024);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v12 = (a1 + 80);
    v11 = *(a1 + 80);
    v13 = *(DerivedStorage + 1024);
    do
    {
      v14 = *(v13 + 80);
      if (v14 <= v11)
      {
        v15 = *(v13 + 168);
        if (v9 <= v14)
        {
          v16 = v13;
        }

        else
        {
          v16 = v10;
        }

        if (v9 > v14)
        {
          v14 = v9;
        }

        v17 = v15 == 6 || v15 == 1;
        if (v17)
        {
          v10 = v16;
        }

        if (v17)
        {
          v9 = v14;
        }
      }

      v13 = *(v13 + 24);
    }

    while (v13);
    v18 = (a1 + 144);
    while (*(v8 + 80) != v11 || *(v8 + 472) || (*(v8 + 156) & 0x1D) != 1)
    {
      v8 = *(v8 + 24);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    *&time.value = *(v8 + 144);
    v19 = *(v8 + 160);
  }

  else
  {
    v10 = 0;
    v18 = (a1 + 144);
    v12 = (a1 + 80);
LABEL_27:
    *&time.value = *MEMORY[0x1E6960C70];
    v19 = *(MEMORY[0x1E6960C70] + 16);
  }

  time.epoch = v19;
  v20 = *&time.value;
  *(v18 + 2) = v19;
  *v18 = v20;
  v21 = &unk_1EAF16000;
  if (dword_1EAF169F0)
  {
    v128 = v18;
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time2.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v24 = value;
    }

    else
    {
      v24 = value & 0xFFFFFFFE;
    }

    if (v24)
    {
      v120 = DerivedStorage;
      v25 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v26 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v26 = "";
      }

      v118 = v26;
      if (v6)
      {
        v27 = v6;
        v28 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v27 = 0;
        v28 = "";
      }

      if (v10)
      {
        v29 = *(v10 + 32);
      }

      else
      {
        v29 = -1;
      }

      v30 = *v128;
      time.epoch = *(v128 + 2);
      *&time.value = v30;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(rhs.value) = 136316674;
      *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v25;
      HIWORD(rhs.epoch) = 2082;
      v139 = v118;
      v140 = 2048;
      v141 = v27;
      v142 = 2082;
      v143 = v28;
      v144 = 1024;
      *v145 = v29;
      *&v145[4] = 2048;
      *&v145[6] = Seconds;
      _os_log_send_and_compose_impl(v24, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: lastplaying is %d updated discontinuityOffset %g", &rhs, 68);
      DerivedStorage = v120;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = v128;
    v21 = &unk_1EAF16000;
  }

  if ((*(a1 + 156) & 0x1D) == 1)
  {
    fpfs_FindTrackStartTime(DerivedStorage, *(a1 + 80), &time);
    *(a1 + 208) = time;
    v32 = *(a1 + 48);
    if (v32 == 1986618469 || v32 == 1936684398)
    {
      v33 = *(a1 + 196);
      if (*(a1 + 64) == *(DerivedStorage + 16 * v33 + 976))
      {
        memset(&type, 0, sizeof(type));
        v34 = DerivedStorage + 24 * v33;
        v35 = *(v34 + 1184);
        time.epoch = *(v34 + 1200);
        *&time.value = v35;
        rhs = *(DerivedStorage + 1160);
        CMTimeSubtract(&type, &time, &rhs);
        rhs = type;
        time2 = v135;
        CMTimeAdd(&time, &rhs, &time2);
        type = time;
        memset(&v133, 0, sizeof(v133));
        rhs = v136;
        time2 = *(a1 + 412);
        CMTimeSubtract(&time, &rhs, &time2);
        v36 = *v18;
        rhs.epoch = *(v18 + 2);
        *&rhs.value = v36;
        CMTimeAdd(&v133, &time, &rhs);
        memset(&time2, 0, sizeof(time2));
        time = type;
        rhs = v133;
        CMTimeSubtract(&time2, &time, &rhs);
        time = time2;
        *&rhs.value = v126;
        rhs.epoch = epoch;
        if (CMTimeCompare(&time, &rhs))
        {
          v37 = *(DerivedStorage + 1024);
          if (v37)
          {
            while (1)
            {
              if (*(v37 + 80) == *v12)
              {
                if ((*(v37 + 168) & 0xFFFFFFFC) == 4)
                {
                  break;
                }

                if (v37 == a1)
                {
                  v38 = *(a1 + 48);
                }

                else
                {
                  v38 = *(a1 + 48);
                  if (*(v37 + 48) == v38)
                  {
                    break;
                  }
                }

                if (v38 == 1936684398 && *(v37 + 48) == 1986618469)
                {
                  break;
                }
              }

              v37 = *(v37 + 24);
              if (!v37)
              {
                goto LABEL_60;
              }
            }
          }

          else
          {
LABEL_60:
            if (dword_1EAF169F0)
            {
              v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = &unk_1EAF16000;
            }

            v39 = *v12;
            time = time2;
            fpfs_TimeShiftDiscontinuityDomain(DerivedStorage, v39, &time);
          }
        }
      }
    }

    if (v10 && *(v10 + 80) == *v12)
    {
      fpfs_ChangeTrackState(a1, 4u);
    }
  }

  if ((*(a1 + 156) & 0x1D) == 1)
  {
    return 0;
  }

  if (*(a1 + 200) && *(a1 + 48) == 1986618469)
  {
    if ((*(DerivedStorage + 1184 + 24 * *(a1 + 196) + 12) & 1) == 0)
    {
      goto LABEL_109;
    }

    v40 = DerivedStorage + 1184 + 24 * *(a1 + 196);
    v41 = *v40;
    rhs.epoch = *(v40 + 16);
    *&rhs.value = v41;
    time2 = *(DerivedStorage + 1160);
    CMTimeSubtract(&time, &rhs, &time2);
    *(a1 + 208) = time;
    if (!v10)
    {
      goto LABEL_109;
    }

    if ((*(v10 + 244) & 1) == 0)
    {
      goto LABEL_78;
    }

    v42 = *(v124 + 108);
    if (v42 >= 0.0)
    {
      time = *(a1 + 208);
      rhs = *(v10 + 232);
      if (CMTimeCompare(&time, &rhs) > 0)
      {
LABEL_78:
        v43 = *(a1 + 208);
        *(v10 + 248) = *(a1 + 224);
        *(v10 + 232) = v43;
        if (*(a1 + 128))
        {
          time2 = **&MEMORY[0x1E6960C70];
          fpfs_scheduleForwardEndTimeForTrack();
          if (dword_1EAF169F0)
          {
            LODWORD(type.value) = 0;
            LOBYTE(v133.value) = 0;
            v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v45 = type.value;
            value_low = LOBYTE(v133.value);
            if (os_log_type_enabled(v44, v133.value))
            {
              v47 = v45;
            }

            else
            {
              v47 = v45 & 0xFFFFFFFE;
            }

            if (v47)
            {
              v121 = DerivedStorage;
              v48 = *DerivedStorage;
              if (*DerivedStorage)
              {
                v49 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v49 = "";
              }

              v131 = v18;
              v98 = *(a1 + 16);
              if (v98)
              {
                v99 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v99 = "";
              }

              v100 = *(a1 + 32);
              time = time2;
              v101 = CMTimeGetSeconds(&time);
              LODWORD(rhs.value) = 136316674;
              *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v48;
              HIWORD(rhs.epoch) = 2082;
              v139 = v49;
              v140 = 2048;
              v141 = v98;
              v142 = 2082;
              v143 = v99;
              v144 = 1024;
              *v145 = v100;
              *&v145[4] = 2048;
              *&v145[6] = v101;
              LODWORD(v117) = 68;
              _os_log_send_and_compose_impl(v47, 0, &time, 128, &dword_1962D5000, v44, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Rescheduled endTime of track %d to %g", &rhs, v117);
              DerivedStorage = v121;
              v18 = v131;
              v21 = &unk_1EAF16000;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_109;
      }

      v42 = *(v124 + 108);
    }

    if (v42 >= 0.0)
    {
      goto LABEL_109;
    }

    time = *(a1 + 208);
    rhs = *(v10 + 232);
    if ((CMTimeCompare(&time, &rhs) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_78;
  }

  v50 = *(DerivedStorage + 1024);
  if (v10)
  {
    goto LABEL_87;
  }

  if (v50)
  {
    v53 = 0;
    v54 = *(DerivedStorage + 1024);
    do
    {
      if (*(v54 + 80) < *v12 && *(v54 + 168) == 3)
      {
        v53 = v54;
      }

      v54 = *(v54 + 24);
    }

    while (v54);
    if (v53)
    {
LABEL_87:
      for (time = **&MEMORY[0x1E6960C80]; v50; v50 = *(v50 + 24))
      {
        v51 = *(v50 + 80);
        if (v51 < *v12 || v51 == *v12 && *(v50 + 472)) && (*(v50 + 244))
        {
          rhs = time;
          time2 = *(v50 + 232);
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            time = *(v50 + 232);
            *(a1 + 201) = 1;
          }
        }
      }

      *(a1 + 208) = time;
    }
  }

  if ((*(a1 + 220) & 0x1D) != 1)
  {
    v52 = *(a1 + 196);
    if (*(DerivedStorage + 1184 + 24 * *(a1 + 196) + 12))
    {
      memset(&time, 0, sizeof(time));
      v55 = DerivedStorage + 1184 + 24 * v52;
      v56 = *v55;
      rhs.epoch = *(v55 + 16);
      *&rhs.value = v56;
      time2 = *(DerivedStorage + 1160);
      CMTimeSubtract(&time, &rhs, &time2);
      time2 = time;
      type = v135;
      CMTimeAdd(&rhs, &time2, &type);
      time = rhs;
      time2 = rhs;
      *&type.value = v126;
      type.epoch = epoch;
      CMTimeMaximum(&rhs, &time2, &type);
      *(a1 + 208) = rhs;
      if (*(a1 + 196) != 2)
      {
        time2 = *(a1 + 208);
        type = v136;
        CMTimeSubtract(&rhs, &time2, &type);
        v57 = *&rhs.value;
        *(v18 + 2) = rhs.epoch;
        *v18 = v57;
      }
    }

    else
    {
      fpfs_GetTime(DerivedStorage, &time);
      *(a1 + 208) = time;
    }
  }

LABEL_109:
  v58 = DerivedStorage + 24 * *(a1 + 196);
  if (*(v58 + 260))
  {
    v59 = *(v58 + 248);
    *(v18 + 2) = *(v58 + 264);
    *v18 = v59;
    if (v21[636])
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = time2.value;
      v62 = LOBYTE(type.value);
      if (os_log_type_enabled(v60, type.value))
      {
        v63 = v61;
      }

      else
      {
        v63 = v61 & 0xFFFFFFFE;
      }

      if (v63)
      {
        v122 = DerivedStorage;
        v64 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v65 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v65 = "";
        }

        v129 = v65;
        v66 = *(a1 + 16);
        if (v66)
        {
          v67 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v67 = "";
        }

        v68 = *(a1 + 32);
        v69 = *v18;
        time.epoch = *(v18 + 2);
        *&time.value = v69;
        v70 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136316674;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v64;
        HIWORD(rhs.epoch) = 2082;
        v139 = v129;
        v140 = 2048;
        v141 = v66;
        v142 = 2082;
        v143 = v67;
        v144 = 1024;
        *v145 = v68;
        *&v145[4] = 2048;
        *&v145[6] = v70;
        LODWORD(v117) = 68;
        _os_log_send_and_compose_impl(v63, 0, &time, 128, &dword_1962D5000, v60, v62, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track %d inheriting cached discontinuityOffset %g", &rhs, v117);
        DerivedStorage = v122;
        v21 = &unk_1EAF16000;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v71 = v18;
  if (v127)
  {
    if ((*(a1 + 156) & 1) != 0 || *(a1 + 196) != 2)
    {
      goto LABEL_143;
    }

    if (v21[636])
    {
      v72 = v21;
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = time2.value;
      v75 = LOBYTE(type.value);
      if (os_log_type_enabled(v73, type.value))
      {
        v76 = v74;
      }

      else
      {
        v76 = v74 & 0xFFFFFFFE;
      }

      if (v76)
      {
        v130 = v18;
        v77 = DerivedStorage;
        v78 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v79 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v79 = "";
        }

        v80 = *(a1 + 16);
        if (v80)
        {
          v81 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v81 = "";
        }

        v82 = *(a1 + 32);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v78;
        HIWORD(rhs.epoch) = 2082;
        v139 = v79;
        v140 = 2048;
        v141 = v80;
        v142 = 2082;
        v143 = v81;
        v144 = 1024;
        *v145 = v82;
        LODWORD(v117) = 58;
        _os_log_send_and_compose_impl(v76, 0, &time, 128, &dword_1962D5000, v73, v75, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: deferring discontinuityOffset determination for sparse track %d", &rhs, v117);
        DerivedStorage = v77;
        v18 = v130;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = v72;
    }

    v83 = MEMORY[0x1E6960C68];
    *v18 = *MEMORY[0x1E6960C68];
    *(v18 + 2) = *(v83 + 16);
    v71 = (a1 + 208);
  }

  v84 = MEMORY[0x1E6960C70];
  *v71 = *MEMORY[0x1E6960C70];
  *(v71 + 2) = *(v84 + 16);
LABEL_143:
  if (*(a1 + 156))
  {
    return 0;
  }

  rhs = *(a1 + 208);
  time2 = v136;
  CMTimeSubtract(&time, &rhs, &time2);
  v85 = *&time.value;
  *(v18 + 2) = time.epoch;
  *v18 = v85;
  v86 = v21[636];
  if (*(a1 + 156))
  {
    if (v86)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v88 = time2.value;
      v89 = LOBYTE(type.value);
      if (os_log_type_enabled(v87, type.value))
      {
        v90 = v88;
      }

      else
      {
        v90 = v88 & 0xFFFFFFFE;
      }

      if (v90)
      {
        v91 = *DerivedStorage;
        if (v91)
        {
          v92 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v92 = "";
        }

        v93 = *(a1 + 16);
        if (v93)
        {
          v94 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v94 = "";
        }

        v95 = *v18;
        time.epoch = *(v18 + 2);
        *&time.value = v95;
        v96 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v91;
        HIWORD(rhs.epoch) = 2082;
        v139 = v92;
        v140 = 2048;
        v141 = v93;
        v142 = 2082;
        v143 = v94;
        v144 = 2048;
        *v145 = v96;
        LODWORD(v117) = 62;
        _os_log_send_and_compose_impl(v90, 0, &time, 128, &dword_1962D5000, v87, v89, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: set discontinuityOffset %g", &rhs, v117);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (v86)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v103 = time2.value;
    v104 = LOBYTE(type.value);
    if (os_log_type_enabled(v102, type.value))
    {
      v105 = v103;
    }

    else
    {
      v105 = v103 & 0xFFFFFFFE;
    }

    if (v105)
    {
      v123 = DerivedStorage;
      v106 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v107 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v107 = "";
      }

      v132 = v107;
      v108 = *(a1 + 16);
      if (v108)
      {
        v109 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v109 = "";
      }

      v110 = *(a1 + 32);
      time = *(a1 + 208);
      v111 = CMTimeGetSeconds(&time);
      time = v136;
      v112 = CMTimeGetSeconds(&time);
      v113 = *(a1 + 80);
      v114 = v123 + 24 * *(a1 + 196);
      v115 = *(v114 + 1184);
      time.epoch = *(v114 + 1200);
      *&time.value = v115;
      v116 = CMTimeGetSeconds(&time);
      LODWORD(rhs.value) = 136317442;
      *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v106;
      HIWORD(rhs.epoch) = 2082;
      v139 = v132;
      v140 = 2048;
      v141 = v108;
      v142 = 2082;
      v143 = v109;
      v144 = 1024;
      *v145 = v110;
      *&v145[4] = 2048;
      *&v145[6] = v111;
      v146 = 2048;
      v147 = v112;
      v148 = 1024;
      v149 = v113;
      v150 = 2048;
      v151 = v116;
      LODWORD(v117) = 94;
      _os_log_send_and_compose_impl(v105, 0, &time, 128, &dword_1962D5000, v102, v104, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Sample buffer ignored for track %d with invalid discontinuityOffset, startTime %f, raw %f, discDomain %d, cachedPumpTime %f", &rhs, v117);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 4294954433;
}

double fpfs_setUnlikelyToKeepUpAndRanDry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_setPlaythroughPredictionAndNotify(a1, 2);
  fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(DerivedStorage, 0);

  return fpfs_setRanDry(a1);
}

uint64_t fpfs_setTimebaseStarter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((!a2 || !*(a2 + 112) || fpfs_LastRenderingTrackofType(a1, *(a2 + 48), a2)) && (!a3 || !*(a3 + 112) || fpfs_LastRenderingTrackofType(a1, *(a3 + 48), a3) || !*(*(CMBaseObjectGetVTable() + 16) + 8)))
  {
    return 0;
  }

  FigRenderPipelineGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = *MEMORY[0x1E695E4D0];

  return v8(v7, @"IsTimebaseStarter", v9);
}

CMTime *fpfs_GetTimeOffsetIntoSegment@<X0>(void *a1@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960CC0];
  result = CMGetAttachment(a1, *MEMORY[0x1E6962E18], 0);
  if (result)
  {
    memset(&v7, 0, sizeof(v7));
    CMTimeMakeFromDictionary(&v7, result);
    CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
    v5 = v7;
    return CMTimeSubtract(a2, &lhs, &v5);
  }

  return result;
}

uint64_t fpfs_TimeShiftDiscontinuityDomain(uint64_t result, uint64_t a2, CMTime *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v46 = result;
  v3 = *(result + 1024);
  if (v3)
  {
    v4 = a3;
    v5 = a2;
    v6 = result + 248;
    v48 = result + 248;
    do
    {
      if (*(v3 + 80) == v5)
      {
        v7 = *(v3 + 168);
        if (v7 > 3 || v7 == 1)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v50.value) = 0;
            LOBYTE(v49.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v50.value;
            value_low = LOBYTE(v49.value);
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v49.value))
            {
              v23 = value;
            }

            else
            {
              v23 = value & 0xFFFFFFFE;
            }

            if (v23)
            {
              v24 = *v46;
              if (*v46)
              {
                v25 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v25 = "";
              }

              v34 = *(v3 + 16);
              if (v34)
              {
                v35 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v35 = "";
              }

              v36 = *(v3 + 32);
              v37 = *(v3 + 168);
              LODWORD(rhs.value) = 136316674;
              *(&rhs.value + 4) = "fpfs_TimeShiftDiscontinuityDomain";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v24;
              HIWORD(rhs.epoch) = 2082;
              v78 = v25;
              v79 = 2048;
              v80 = v34;
              v81 = 2082;
              v82 = v35;
              v83 = 1024;
              v84 = v36;
              v85 = 1024;
              v86 = v37;
              LODWORD(v38) = 64;
              _os_log_send_and_compose_impl(v23, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: WARNING: found track %d already in state %d, not adjusting the discontinuityOffset - it may be out of sync", &rhs, v38);
              v4 = a3;
            }

            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = a2;
            goto LABEL_41;
          }
        }

        else
        {
          Head = CMBufferQueueGetHead(*(v3 + 88));
          v10 = *(v3 + 144);
          v11 = *(v3 + 152);
          v89 = *(v3 + 156);
          v90 = *(v3 + 164);
          memset(&v50, 0, sizeof(v50));
          lhs.value = v10;
          lhs.timescale = v11;
          *&lhs.flags = *(v3 + 156);
          HIDWORD(lhs.epoch) = *(v3 + 164);
          rhs = *v4;
          CMTimeAdd(&v50, &lhs, &rhs);
          lhs = *(v6 + 24 * *(v3 + 196));
          rhs = v50;
          result = CMTimeCompare(&lhs, &rhs);
          if (result)
          {
            *(v6 + 24 * *(v3 + 196)) = v50;
          }

          *(v3 + 144) = v50;
          if (!Head)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(v49.value) = 0;
              LOBYTE(v87) = 0;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v15 = v49.value;
              v16 = v87;
              if (os_log_type_enabled(v14, v87))
              {
                v17 = v15;
              }

              else
              {
                v17 = v15 & 0xFFFFFFFE;
              }

              if (v17)
              {
                v18 = *v46;
                if (*v46)
                {
                  v19 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v19 = "";
                }

                v42 = v19;
                v26 = *(v3 + 16);
                v44 = v14;
                v43 = v16;
                if (v26)
                {
                  v27 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v27 = "";
                }

                v41 = v27;
                v28 = *(v3 + 32);
                timescale = a3->timescale;
                lhs = *a3;
                v39 = lhs.value;
                Seconds = CMTimeGetSeconds(&lhs);
                lhs.value = v10;
                lhs.timescale = v11;
                *&lhs.flags = v89;
                HIDWORD(lhs.epoch) = v90;
                v30 = CMTimeGetSeconds(&lhs);
                v31 = v50.value;
                v32 = v50.timescale;
                lhs = v50;
                v33 = CMTimeGetSeconds(&lhs);
                LODWORD(lhs.value) = 136318722;
                *(&lhs.value + 4) = "fpfs_TimeShiftDiscontinuityDomain";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v18;
                HIWORD(lhs.epoch) = 2082;
                v52 = v42;
                v53 = 2048;
                v54 = v26;
                v55 = 2082;
                v56 = v41;
                v57 = 1024;
                v58 = v28;
                v59 = 2048;
                v60 = v39;
                v61 = 1024;
                v62 = timescale;
                v63 = 2048;
                v64 = Seconds;
                v65 = 2048;
                v66 = v10;
                v67 = 1024;
                v68 = v11;
                v69 = 2048;
                v70 = v30;
                v71 = 2048;
                v72 = v31;
                v73 = 1024;
                v74 = v32;
                v75 = 2048;
                v76 = v33;
                LODWORD(v38) = 136;
                _os_log_send_and_compose_impl(v17, 0, &rhs, 128, &dword_1962D5000, v44, v43, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: shifting track %d by {%lld/%d=%1.3f} - changing its discontinuityOffset from {%lld/%d=%1.3f} to {%lld/%d=%1.3f}", &lhs, v38);
                v5 = a2;
              }

              result = fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = a3;
              v6 = v48;
            }

            goto LABEL_42;
          }

          memset(&v49, 0, sizeof(v49));
          CMSampleBufferGetOutputPresentationTimeStamp(&v49, Head);
          v12 = MEMORY[0x1E6960CC0];
          *(v3 + 232) = *MEMORY[0x1E6960CC0];
          *(v3 + 248) = *(v12 + 16);
          CMBufferQueueCallForEachBuffer(*(v3 + 88), fpfs_AdjustTime, v3);
          result = CMSampleBufferGetOutputPresentationTimeStamp(&lhs, Head);
          v87 = *&lhs.flags;
          epoch_high = HIDWORD(lhs.epoch);
          if (dword_1EAF169F0)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_41:
            v6 = v48;
          }
        }
      }

LABEL_42:
      v3 = *(v3 + 24);
    }

    while (v3);
  }

  return result;
}

uint64_t fpfs_setPlaythroughPredictionAndNotify(const void *a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = *(result + 524);
  if (v5 != a2)
  {
    *(result + 524) = a2;
    if (a2 == 1 || v5 == 1)
    {

      return fpfs_EnqueuePlaythroughPredictionNotification(a1);
    }
  }

  return result;
}

void fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(uint64_t a1, int a2)
{
  v3 = *(a1 + 524);
  v4 = v3 == 1;
  cf = 0;
  v5 = *(a1 + 96);
  if (!v5 || (a2 != 5 ? (v6 = a2 == 2) : (v6 = 1), v6 ? (v7 = v3 == 1) : (v7 = 0), !v7 ? (v8 = MEMORY[0x1E695E4C0]) : (v8 = MEMORY[0x1E695E4D0]), (v9 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0 && !v9(v5, @"AfmfpbProperty_OkayToAttemptSwitchUp", *v8)))
  {
    if (*(a1 + 912))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, 0x1F0B1F818, AllocatorForMedia, &cf);
        if (cf)
        {
          FigCMCDHeaderVendorSetIsLikelyToKeepUp(cf, v4);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

uint64_t fpfs_EnqueuePlaythroughPredictionNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 524) == 1)
  {
    v3 = &kFigPlaybackItemNotification_StreamLikelyToKeepUp;
  }

  else
  {
    v3 = &kFigPlaybackItemNotification_StreamUnlikelyToKeepUp;
  }

  v4 = *v3;
  v5 = *DerivedStorage;

  return fpfs_EnqueueNotification(v5, v4, a1, 0);
}

double fpfsi_PrepareToStartWhenLikelyToKeepUp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(result) = *(CMBaseObjectGetDerivedStorage() + 108);
  if (*&result != 0.0)
  {
    LODWORD(result) = *(DerivedStorage + 840);
    if (*&result == 0.0)
    {
      if (*(DerivedStorage + 465))
      {
        *&v13.value = *MEMORY[0x1E6960C70];
        v6 = *(MEMORY[0x1E6960C70] + 16);
        v13.epoch = v6;
        v8 = *&v13.value;
        *&v14.value = *&v13.value;
        v14.epoch = v6;
        v7 = MEMORY[0x1E6960CC0];
        fpfs_CheckCanKeepUp(a1, MEMORY[0x1E6960CC0], MEMORY[0x1E6960C70], *(DerivedStorage + 1072), 0, 0, &v13, 0);
        if ((v13.flags & 1) != 0 && (v14.flags & 1) != 0 && !v14.epoch && (v14.value & 0x8000000000000000) == 0)
        {
          *&v12.value = v8;
          v12.epoch = v6;
          if ((~a2->flags & 5) != 0)
          {
            lhs = v13;
            rhs = v14;
            CMTimeAdd(&v11, &lhs, &rhs);
            lhs = *a2;
            CMTimeSubtract(&v12, &v11, &lhs);
          }

          else
          {
            v12 = *v7;
          }

          *(DerivedStorage + 424) = v12.epoch;
          result = *&v12.value;
          *(DerivedStorage + 408) = *&v12.value;
        }
      }
    }
  }

  return result;
}

void fpfs_PullNextItem(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 24);

  dispatch_async_f(v3, a1, fpfs_PullNextCallback);
}

void fpfs_PullNextCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v3 + 8);
  if (*(DerivedStorage + 52))
  {
    goto LABEL_4;
  }

  v34 = 0;
  v4 = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v33);
  if (!GlobalSingleton)
  {
    if (*(v4 + 80))
    {
      goto LABEL_4;
    }

    if (!*(v4 + 32) || CFArrayGetCount(*(v4 + 72)) < 1)
    {
      Mutable = 0;
      goto LABEL_8;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 72), 0);
    v11 = CMBaseObjectGetDerivedStorage();
    *(v4 + 80) = CFRetain(ValueAtIndex);
    v12 = *(v11 + 2568);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v13)
      {
        v13(v12, 0);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(v11 + 2568);
    if (v15)
    {
      v16 = Current;
      v17 = *(v11 + 2040);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
        v18(v15, @"playerStats", 0x1F0B66558, ((v16 - v17) * 1000.0), 0);
      }
    }

    v19 = (v11 + 2568);
    if (*(v11 + 2072) && !*(v11 + 2096))
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v21 = *(v11 + 2568);
      if (!v21)
      {
LABEL_31:
        CFArrayRemoveValueAtIndex(*(v4 + 72), 0);
        fpfs_EnqueueNotification(a1, @"ItemBecameCurrent", ValueAtIndex, 0);
        fpfs_updateClosedCaptionsDisplay();
        if (*(v11 + 2472))
        {
          *(v11 + 2472) = 0;
        }

        else if (!fpfsi_MakeReadyForInspection(ValueAtIndex, 0, &v34) && v34)
        {
          fpfsi_NowReadyForInspection();
        }

        if (*(v4 + 108) != 0.0)
        {
          fpfs_notifyExternalStartupTasksOfEvents();
        }

        if (*(v4 + 462))
        {
          fpfsi_ResumeAllWaitingVideoTracks(ValueAtIndex);
        }

        fpfs_ResolveAllWaitingTracks(ValueAtIndex);
        fpfs_CheckPrebufferedLevels();
        fpfs_EnqueueCurrentItemDidChangeNotification();
        if (!*(v11 + 470))
        {
          *(v11 + 470) = 1;
          fpfs_EnqueueNotification(a1, @"TimebaseChanged", ValueAtIndex, 0);
        }

        fpfsi_checkCoordinatedPlaybackCapability(ValueAtIndex);
        v28 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v28)
        {
          while (*(v28 + 48) != 1986618469 || !*(v28 + 112))
          {
            v28 = *(v28 + 24);
            if (!v28)
            {
              goto LABEL_46;
            }
          }

          v29 = ValueAtIndex;
          v30 = 0;
          v31 = 0;
        }

        else
        {
LABEL_46:
          fpfs_disassociatePlayerVideoLayer(a1, 0);
          fpfs_releaseTransitionImageQueuesAndSlots(a1);
          v29 = ValueAtIndex;
          v30 = 2;
          v31 = 1;
        }

        fpfsi_scheduleFVTTransitionsForItem(v29, v30, v31);
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        fpfs_SetRateWithOptionsGuts(a1, Mutable, 0, *(v4 + 108));
        if (v9)
        {
          goto LABEL_15;
        }

        fpfs_PullNextCallback_cold_1();
LABEL_8:
        if (*(v4 + 80))
        {
          v7 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        FigPlayerResourceArbiterAssignReportingAgentForConsumer(v33, *(v4 + 928), 0);
        v9 = FigPlayerResourceArbiterSetSpecifierForConsumer(v33, 0, *(v4 + 928));
LABEL_15:
        v7 = v9;
        if (!Mutable)
        {
LABEL_11:
          if (!v7)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }

LABEL_10:
        CFRelease(Mutable);
        goto LABEL_11;
      }

      v22 = UpTimeNanoseconds;
      v23 = *(v11 + 2072);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v24(v21, 0x1F0B64678, 0x1F0B67618, (v22 - v23) / 0xF4240uLL, 1);
      }
    }

    v25 = *v19;
    if (*v19)
    {
      v26 = *(v4 + 160);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v27)
      {
        v27(v25, @"playerStats", 0x1F0B65898, v26, 0);
      }
    }

    goto LABEL_31;
  }

  v7 = GlobalSingleton;
LABEL_12:
  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v8, v7);
  }

LABEL_4:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  CFRelease(a1);
}

uint64_t fpfsi_MakeReadyForInspection(uint64_t a1, const __CFArray *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_MakeReadyForInspection_cold_1(v22);
    goto LABEL_28;
  }

  v8 = *(DerivedStorage + 460);
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    if (*(DerivedStorage + 2248))
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v24.length = CFArrayGetCount(*(DerivedStorage + 2248));
          v24.location = 0;
          if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 2248), v24, ValueAtIndex) < 0)
          {
            CFArrayAppendValue(*(DerivedStorage + 2248), ValueAtIndex);
          }
        }
      }

      goto LABEL_18;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, a2);
    *(DerivedStorage + 2248) = MutableCopy;
    if (MutableCopy)
    {
      goto LABEL_18;
    }

    fpfsi_MakeReadyForInspection_cold_2(v22);
LABEL_28:
    v10 = v22[0];
    goto LABEL_8;
  }

LABEL_18:
  v18 = *(DerivedStorage + 456);
  if (v18 == 2)
  {
    v10 = 0;
LABEL_24:
    *(DerivedStorage + 456) = 1;
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  FigRetainProxyRetain();
  v19 = *(DerivedStorage + 32);
  v20 = *(DerivedStorage + 16);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v21)
  {
    v10 = v21(v19, fpfs_PumpTransferCallback, v20);
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = 4294954514;
  }

  FigRetainProxyRelease();
LABEL_6:
  if (a3)
  {
    *a3 = v8;
  }

LABEL_8:
  fpfs_UnlockAndPostNotificationsWithCaller(v6);
  return v10;
}

void fpfsi_ResumeAllWaitingVideoTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1024);
  if (v3)
  {
    v4 = DerivedStorage;
    do
    {
      v5 = *(v3 + 24);
      if (*(v3 + 48) == 1986618469 && *(v3 + 168) == 5)
      {
        v6 = CMBaseObjectGetDerivedStorage();
        v7 = CMBaseObjectGetDerivedStorage();
        v11 = 0uLL;
        v12 = 0;
        fpfs_GetTime(v7, &v11);
        refcon = 0;
        if (fpfs_CanRenderVideo(v6, a1))
        {
          if (*(v3 + 48) == 1986618469 && *(v3 + 168) == 5)
          {
            if (*(v6 + 108) >= 0.0 && *(v3 + 198) && (*(v3 + 244) & 1) != 0 && (*&time1.value = v11, time1.epoch = v12, v8 = *(v3 + 232), CMTimeCompare(&time1, &v8) >= 1))
            {
              fpfs_DeleteTrack(a1, v3);
            }

            else
            {
              *&v8.value = v11;
              v8.epoch = v12;
              fpfsi_PrepareTrackForReplay(v3, &v8.value, &time1);
              CMBufferQueueCallForEachBuffer(*(v3 + 88), fpfs_GetFirstNonMarkerSBuf, &refcon);
              if (refcon && fpfs_IsVideoSync(refcon))
              {
                fpfsi_ResumeAllWaitingVideoTracks_cold_1(v3, &refcon);
              }
            }
          }
        }
      }

      if (!v5)
      {
        break;
      }

      v3 = v5;
    }

    while (*(v4 + 1024));
  }
}

double fpfs_disassociatePlayerVideoLayer(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 392);
  if (v5)
  {
    v6 = *(DerivedStorage + 880);

    return FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(v6, v5, a2);
  }

  return result;
}

void fpfs_releaseTransitionImageQueuesAndSlots(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 432);
  if (v2)
  {
    FPSupport_DeleteCASlotsInArray(v2);
    v3 = *(DerivedStorage + 432);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 432) = 0;
    }
  }

  v4 = *(DerivedStorage + 424);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 424) = 0;
  }
}

void fpfs_SetRateWithOptionsGuts(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  fpfs_SetRateWithOptionsAndAnchorTime();
}

void fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v3, a1);
  v5 = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  cf = 0;
  if (!Next)
  {
    return;
  }

  v6 = v5;
  if (!fpfsi_PumpHasEndedOrBufferedBeyondEndTime(a1))
  {
    return;
  }

  v34 = 0;
  FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(DerivedStorage + 32), &cf);
  if (v7)
  {
    goto LABEL_118;
  }

  FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(v6 + 32), &v35);
  if (v8)
  {
    goto LABEL_118;
  }

  if (cf && FigCFEqual())
  {
    fpfsi_InvalidatePumpForItem(a1);
  }

  if (!fpfsi_MakeReadyForInspection(Next, 0, &v34) && v34)
  {
    fpfsi_NowReadyForInspection();
    fpfs_PerformInitialResolveOfAllWaitingTracks(Next);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  fpfsi_gatherInterestingGaplessInfoForItem(a1, &v37);
  v11 = v38;
  if (!v38)
  {
    goto LABEL_118;
  }

  if (!CMAudioFormatDescriptionGetRichestDecodableFormat(*(v38 + 56)))
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_6();
    goto LABEL_118;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(v11 + 56));
  if (!RichestDecodableFormat)
  {
    if ((fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_1() & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_97;
  }

  mFormatID = RichestDecodableFormat->mASBD.mFormatID;
  if (mFormatID > 1902207794)
  {
    if (mFormatID > 1902667125)
    {
      if (mFormatID > 2053202738)
      {
        if (mFormatID <= 2053319474)
        {
          if ((mFormatID - 2053202739) > 0x3D || ((1 << (mFormatID - 51)) & 0x2020000000000001) == 0)
          {
            v15 = 30307;
LABEL_90:
            v17 = v15 | 0x7A610000;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        if (mFormatID <= 2053923170)
        {
          if (mFormatID != 2053319475)
          {
            v17 = 2053464883;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        if (mFormatID == 2054517601)
        {
          goto LABEL_96;
        }

        v17 = 2053923171;
LABEL_95:
        if (mFormatID != v17)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      if (mFormatID <= 1902998903)
      {
        if (mFormatID != 1902667126 && mFormatID != 1902671459)
        {
          v17 = 1902928227;
          goto LABEL_95;
        }
      }

      else if (mFormatID > 1903587384)
      {
        if (mFormatID != 1903587385)
        {
          v15 = 24931;
          goto LABEL_90;
        }
      }

      else if (mFormatID != 1902998904)
      {
        v17 = 1903522657;
        goto LABEL_95;
      }

LABEL_96:
      FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(RichestDecodableFormat->mASBD.mFormatID, v13);
      goto LABEL_97;
    }

    if (mFormatID > 1902324530)
    {
      if (mFormatID <= 1902405732)
      {
        if (mFormatID == 1902324531 || mFormatID == 1902403958)
        {
          goto LABEL_96;
        }

        v19 = 26673;
      }

      else
      {
        if (mFormatID > 1902469938)
        {
          if (mFormatID == 1902469939)
          {
            goto LABEL_96;
          }

          v17 = 1902537827;
          goto LABEL_95;
        }

        if (mFormatID == 1902405733)
        {
          goto LABEL_96;
        }

        v19 = 28024;
      }

      v17 = v19 | 0x71640000;
      goto LABEL_95;
    }

    if ((mFormatID - 1902207795) <= 0x3D && ((1 << (mFormatID - 51)) & 0x2020000000000001) != 0 || (mFormatID - 1902212657) <= 0x34 && ((1 << (mFormatID - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_96;
    }

    v18 = 28771;
LABEL_87:
    v17 = v18 | 0x71610000;
    goto LABEL_95;
  }

  if (mFormatID <= 1685220712)
  {
    if (mFormatID <= 1667524656)
    {
      if (mFormatID <= 1667326823)
      {
        if (mFormatID == 1633771875 || mFormatID == 1667312947)
        {
          goto LABEL_96;
        }

        v16 = 24931;
      }

      else if (mFormatID > 1667330146)
      {
        if (mFormatID == 1667330147)
        {
          goto LABEL_96;
        }

        v16 = 30307;
      }

      else
      {
        if (mFormatID == 1667326824)
        {
          goto LABEL_96;
        }

        v16 = 25456;
      }

      v17 = v16 | 0x63610000;
      goto LABEL_95;
    }

    if (mFormatID <= 1667656802)
    {
      if (mFormatID != 1667524657 && mFormatID != 1667574579)
      {
        v17 = 1667575091;
        goto LABEL_95;
      }
    }

    else if (mFormatID > 1668047202)
    {
      if (mFormatID != 1668047203)
      {
        v17 = 1668641633;
        goto LABEL_95;
      }
    }

    else if (mFormatID != 1667656803)
    {
      v17 = 1667790435;
      goto LABEL_95;
    }

    goto LABEL_96;
  }

  if (mFormatID <= 1885430578)
  {
    if (mFormatID <= 1701733237)
    {
      if (mFormatID != 1685220713 && mFormatID != 1700886115)
      {
        v17 = 1701733217;
        goto LABEL_95;
      }
    }

    else if (mFormatID > 1882599479)
    {
      if (mFormatID != 1882599480)
      {
        v17 = 1885430115;
        goto LABEL_95;
      }
    }

    else if (mFormatID != 1701733238)
    {
      v17 = 1869117027;
      goto LABEL_95;
    }

    goto LABEL_96;
  }

  if (mFormatID > 1885547314)
  {
    if (mFormatID <= 1886745440)
    {
      if (mFormatID != 1885547315)
      {
        v17 = 1885692723;
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    if (mFormatID == 1886745441)
    {
      goto LABEL_96;
    }

    v18 = 24931;
    goto LABEL_87;
  }

  if ((mFormatID - 1885430579) <= 0x3D && ((1 << (mFormatID - 51)) & 0x2020000000000001) != 0)
  {
    goto LABEL_96;
  }

LABEL_97:
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(a1);
  AudioBitDepth = FigAlternateGetAudioBitDepth(*(v9 + 1680), CurrentAudioPersistentIDFromMediaOption);
  AudioSampleRate = FigAlternateGetAudioSampleRate(*(v9 + 1680), CurrentAudioPersistentIDFromMediaOption);
  UInt32 = FigCFNumberCreateUInt32();
  if (UInt32)
  {
    v24 = UInt32;
    v25 = FigCFNumberCreateUInt32();
    if (v25)
    {
      v26 = v25;
      if (AudioBitDepth < 1)
      {
        SInt32 = 0;
      }

      else
      {
        SInt32 = FigCFNumberCreateSInt32();
        if (!SInt32)
        {
          fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_4();
          Float64 = 0;
LABEL_114:
          CFRelease(v24);
          CFRelease(v26);
          if (SInt32)
          {
            CFRelease(SInt32);
          }

          if (Float64)
          {
            CFRelease(Float64);
          }

          goto LABEL_118;
        }
      }

      if (AudioSampleRate < 1)
      {
        Float64 = 0;
      }

      else
      {
        Float64 = FigCFNumberCreateFloat64();
        if (!Float64)
        {
          fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_3();
          goto LABEL_114;
        }
      }

      v29 = *(v10 + 2480);
      if (v29)
      {
        CFRelease(v29);
        *(v10 + 2480) = 0;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v10 + 2480) = Mutable;
      if (Mutable)
      {
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        if (SInt32)
        {
          FigCFDictionarySetValue();
        }

        if (Float64)
        {
          FigCFDictionarySetValue();
        }
      }

      else
      {
        fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_2();
      }

      goto LABEL_114;
    }

    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_5(v24);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v35);
  }

LABEL_118:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }
}

void fpfsi_StopGearSwitchReleaseAndCleanPlaybackMonitor(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v1, @"AfmfpbProperty_SwitchesQualityGearAutomatically", *MEMORY[0x1E695E4C0]);
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }
  }
}

void fpfsi_setupCMCDHeaderVendor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 912))
  {
    v2 = DerivedStorage;
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, 0x1F0B1F818, AllocatorForMedia, &cf);
      if (cf)
      {
        FigCMCDHeaderVendorSetIsLikelyToKeepUp(cf, *(v2 + 524) == 1);
        FigCMCDHeaderVendorSetTimelineConverter(cf, *(v2 + 3376));
        FigCMCDHeaderVendorSetTimebase(cf, *(v2 + 576));
        CFRelease(cf);
      }
    }
  }
}

void fpfsi_NotReadyForInspection(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (DerivedStorage[114])
  {
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, 0x1F0B1EFD8, AllocatorForMedia, &cf);
    }

    if (!FigRetainProxyIsInvalidated())
    {
      v8 = DerivedStorage[241];
      v9 = cf;
      DerivedStorage[241] = cf;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  fpfs_StopPlayingItem();
  v10 = DerivedStorage[281];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[281] = 0;
  }

  CFRelease(a1);
}

void *__copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  return result;
}

uint64_t fpfsi_setHasDiscoveredVideoAndNotify(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 795))
  {
    v5 = result;
    result = fpfs_EnqueueNotification(a1, @"HasDiscoveredVideo", a2, 0);
    *(v5 + 795) = 1;
  }

  return result;
}

CFTypeRef fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache(uint64_t a1)
{
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  fpfsi_CopyCacheRefFromPump(a1);
  v3 = *(DerivedStorage + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(DerivedStorage + 3200))
  {
    return v7;
  }

  return FigAlternateSelectionBossRemoveFilter(v3, @"OfflinePlayable");
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForPlayRate(uint64_t a1, float a2)
{
  v7 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v4 = a2 < 0.0 || a2 > 2.0;
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return fpfsi_CreateAndAddScanningModeFilterToBoss(a1, v4);
}

uint64_t fpfsi_ConfigurePlaybackMonitorForBandwidthCap(uint64_t a1, int a2)
{
  v5 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2408) = a2;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  fpfsi_ConfigurePlaybackMonitorForBandwidthCap_cold_1(&v5, DerivedStorage, &v6);
  return v6;
}

CFStringRef fpfs_GrabPlayer4kPlaybackBaton(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 864);
  if (!result)
  {
    result = FPSupport_Acquire4kVideoDisplayAssertion(a1);
    *(DerivedStorage + 864) = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return *(DerivedStorage + 864);
    }
  }

  return result;
}

uint64_t fpfsi_addHDResolutionCap(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCapFor4kBaton", 700, &cf, 1920.0, 1080.0);
  if (!v2)
  {
    v2 = FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForNeroSupportedVideoFormat(uint64_t a1, int a2)
{
  cf = 0;
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v4 = FigAlternateNeroSupportedVideoFormatFilterCreate(AllocatorForMedia, &cf);
    v5 = cf;
    if (v4)
    {
      v6 = v4;
      if (!cf)
      {
        return v6;
      }
    }

    else
    {
      v6 = FigAlternateSelectionBossAddFilter(*(a1 + 40), cf);
      v5 = cf;
      if (!cf)
      {
        return v6;
      }
    }

    CFRelease(v5);
    return v6;
  }

  v8 = *(a1 + 40);

  return FigAlternateSelectionBossRemoveFilter(v8, @"NeroSupportedVideoFormat");
}

uint64_t fpfsi_GetAtmosDecodePolicy(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*a2)
  {
    *a2 = fpfsi_getAudioRouteSpatializationCapabilities(a1) & 1;
  }

  if (!a2[1])
  {
    a2[1] = fpfs_bufferedAirPlayActiveAndSupportsAtmos(*DerivedStorage);
  }

  if (!a2[2])
  {
    a2[2] = *(CMBaseObjectGetDerivedStorage() + 568);
  }

  if (a2[3])
  {
    v5 = 1;
  }

  else
  {
    v10 = 0;
    v6 = *(CMBaseObjectGetDerivedStorage() + 536);
    if (v6)
    {
      if (FPSupport_GetAudioSessionOutputChannelCount(v6, &v10))
      {
        v7 = 0;
      }

      else
      {
        v7 = v10 == 16;
      }

      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    a2[3] = v5;
  }

  if (*a2 || a2[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = (a2[2] != 0) | v5;
  }

  return v8 & 1;
}

BOOL fpfs_bufferedAirPlayActiveAndSupportsAtmos(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 504))
  {
    return 0;
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBufferedAirPlayOutputGetCMBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return *MEMORY[0x1E695E4D0] == 0;
  }

  v4(v3, @"AtmosIsSupported", AllocatorForMedia, &cf);
  v5 = cf == *MEMORY[0x1E695E4D0];
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t fpfsi_setAndPerformResourceConservation(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    SInt32 = FigCFNumberCreateSInt32();
    v6 = *(DerivedStorage + 96);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"AfmfpbProperty_ResourceConservationLevelWhenPaused", SInt32);
    }

    fpfsi_performCurrentResourceConservationAction(a1, v3);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  else
  {
    fpfsi_performCurrentResourceConservationAction(a1, v3);
  }

  return 0;
}

BOOL fpfs_audioOnlyValidAlternateList(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    return 0;
  }

  v4 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"AfmfpbProperty_HasAudioOnlyAlternates", *MEMORY[0x1E695E480], &v4);
    v2 = v4;
  }

  return v2 == *MEMORY[0x1E695E4D0];
}

CFNumberRef fpfsi_GetCurrentDisplayVideoRangeFromMonitor(uint64_t a1)
{
  number = 0;
  valuePtr = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (!v1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v3(v1, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", AllocatorForMedia, &number);
  result = number;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
    return valuePtr;
  }

  return result;
}

__CFString *fpfs_getVideoRangeStringFromFPSupportVideoRange(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = kFigAlternateVideoRangeString_HDR10;
        return *v1;
      case 4:
        v1 = kFigAlternateVideoRangeString_DoVi;
        return *v1;
      case 5:
        return @"Internal (HDR OK)";
    }

    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_14:
    v1 = kFigAlternateVideoRangeString_Unknown;
    return *v1;
  }

  if (a1 == 1)
  {
    v1 = kFigAlternateVideoRangeString_SDR;
    return *v1;
  }

  if (a1 != 2)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  v1 = kFigAlternateVideoRangeString_HLG;
  return *v1;
}

CFStringRef fpfs_GrabPlayerHDRPlaybackBaton(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 856);
  if (!result)
  {
    result = FPSupport_AcquireHDRVideoDisplayAssertion(*(DerivedStorage + 920));
    *(DerivedStorage + 856) = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return *(DerivedStorage + 856);
    }
  }

  return result;
}

uint64_t fpfsi_SwitchBetweenHDRAndSDR(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    if (a2)
    {
      SInt32 = FigCFNumberCreateSInt32();
      v5 = *(DerivedStorage + 64);
    }

    else
    {
      SInt32 = 0;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v5 = v7(v5, @"AlternateFilterMonitorProperty_PreferredVideoRange", SInt32);
      if (!SInt32)
      {
LABEL_14:
        if (!v5)
        {
          FigAlternateSelectionBossApplyFilters(*(DerivedStorage + 40));
        }

        return v5;
      }
    }

    else
    {
      v5 = 4294954514;
      if (!SInt32)
      {
        goto LABEL_14;
      }
    }

    CFRelease(SInt32);
    goto LABEL_14;
  }

  return v5;
}

uint64_t GetSwitchOptions(uint64_t a1, int a2)
{
  v2 = (a2 != 0) | (2 * (*(a1 + 840) == 0.0));
  if (*(a1 + 553))
  {
    v4 = *(a1 + 1680);
    if (v4)
    {
      if ((v5 = *(a1 + 96)) != 0 && FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v5, v4) || FigCFArrayContainsValue())
      {
        v6 = *(a1 + 1024);
        if (v6)
        {
          while (*(v6 + 168) != 6)
          {
            v6 = *(v6 + 24);
            if (!v6)
            {
              return v2;
            }
          }

          return v2 | 4;
        }
      }
    }
  }

  return v2;
}

uint64_t fpfs_ReleasePlayerHDRPlaybackBaton(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  v2 = *(result + 856);
  if (v2)
  {
    v3 = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = *(v3 + 856);
    }

    result = FPSupport_ReleaseHDRVideoDisplayAssertion(*(v3 + 920), v2);
    *(v3 + 856) = 0;
  }

  return result;
}

uint64_t fpfs_ReleasePlayer4kPlaybackBaton(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 864);
  if (v3)
  {
    v4 = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *(v4 + 864);
    }

    result = FPSupport_Release4kVideoDisplayAssertion(a1, v3);
    *(v4 + 864) = 0;
  }

  return result;
}

uint64_t fpfs_isAlternateValid(uint64_t a1, uint64_t a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 96);
  if (result)
  {

    return FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(result, a2);
  }

  return result;
}

uint64_t fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  *(DerivedStorage + 3106) = 0;
  if (*(DerivedStorage + 3112))
  {
    fpfsi_ReleaseAndClearMultichannelTimer(DerivedStorage);
  }

  result = *(v2 + 40);
  if (result)
  {
    FigAlternateSelectionBossRemoveFilter(result, @"MultichannelAudio");
    v4 = *(v2 + 40);

    return FigAlternateSelectionBossApplyFilters(v4);
  }

  return result;
}

void fpfsi_ReleaseAndClearMultichannelTimer(uint64_t a1)
{
  v2 = *(a1 + 3112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 3112));
  }

  *(a1 + 3112) = 0;
}

uint64_t fpfs_ScheduleRecoverySwitch(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  matched = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(DerivedStorage + 1680), a2, *(DerivedStorage + 1768), 1);
  v8 = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(DerivedStorage + 1680), a2, *(DerivedStorage + 1768), 2);
  if (matched)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (v8)
  {
    v10 = matched == 0;
  }

  else
  {
    v10 = v9;
  }

  if (!FigAlternateIsIFrameOnly(a2))
  {
    result = fpfs_isAlternateValid(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  v12 = *(DerivedStorage + 1024);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    *(v12 + 203) = 0;
    if (*(v12 + 168) == 6 && !*(v12 + 200))
    {
      v15 = *(v12 + 48);
      if (v15 == 1936684398)
      {
        v16 = v12;
      }

      else
      {
        v16 = v14;
      }

      if (v15 == 1986618469)
      {
        v13 = v12;
      }

      else
      {
        v14 = v16;
      }
    }

    v12 = *(v12 + 24);
  }

  while (v12);
  if (v13)
  {
    if (FigCFEqual() && ((1 << *(v13 + 196)) & v10) != 0)
    {
      if (*(v13 + 205))
      {
        v17 = 0;
      }

      else
      {
        v17 = 1 << *(v13 + 196);
      }

      if (*(v13 + 205))
      {
        v18 = 0;
      }

      else
      {
        v18 = v13;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v13;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
  }

  v28 = v10;
  if (!v14)
  {
    v22 = 0;
    v21 = 0;
    if (!v13)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (FigCFEqual() && (v20 = 1 << *(v14 + 196), (v20 & v10) != 0))
  {
    if (*(v14 + 205))
    {
      v20 = 0;
    }

    v17 |= v20;
    if (*(v14 + 205))
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v14;
  if (v13)
  {
LABEL_45:
    if (!v18)
    {
      v17 &= ~(1 << *(v19 + 196));
    }
  }

LABEL_47:
  if (v14 && !v21)
  {
    v17 &= ~(1 << *(v22 + 196));
  }

  v23 = &unk_1EAF16000;
  if (v18)
  {
    v24 = v18;
    if ((v17 >> *(v18 + 196)))
    {
      v24 = v18;
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v24 = v18;
        v23 = &unk_1EAF16000;
        if (!v21)
        {
          goto LABEL_60;
        }

LABEL_56:
        v26 = v21;
        if ((v17 >> *(v21 + 196)))
        {
          v26 = v21;
          if (v23[636])
          {
            v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v26 = v21;
          }
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    goto LABEL_56;
  }

LABEL_60:
  v26 = 0;
LABEL_61:
  result = 0;
  if (v17 && v17 == v28)
  {
    if (!a3 && v18)
    {
      *(v24 + 203) = 1;
    }

    result = 1;
    if (!a3)
    {
      if (v21)
      {
        *(v26 + 203) = 1;
      }
    }
  }

  return result;
}

void fpfsi_TearDownIFramePrefetcher(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 2504))
  {
    v2 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(v2 + 2504);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 2504) = 0;
    }
  }
}

void fpfsi_EnqueueReachedTimeToPausePlaybackNotification(const void *a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v13 = Mutable;
    FigCFDictionarySetCMTime();
    fpfs_EnqueueNotification(v3, @"ReachedTimeToPausePlayback", a1, v13);
    CFRelease(v13);
  }

  else
  {
    fpfsi_EnqueueReachedTimeToPausePlaybackNotification_cold_1(0, v6, v7, v8, v9, v10, v11, v12, v14, v15, SHIDWORD(v15), v16);
  }
}

void fpfs_ResetAudioHardwareFormat(const void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (DerivedStorage[67] && !DerivedStorage[63])
  {
    if (!DerivedStorage[68] || (v11 = *MEMORY[0x1E69AF7F8], FigCFEqual()))
    {
      Mutable = 0;
    }

    else
    {
      v12 = v7[67];
      if (v12)
      {
        v13 = *(CMBaseObjectGetVTable() + 16);
        if (v13)
        {
          v14 = *(v13 + 56);
          if (v14)
          {
            v14(v12, *MEMORY[0x1E69B01E8], v11);
          }
        }
      }

      if (dword_1EAF169F0)
      {
        HIDWORD(valuePtr) = 0;
        BYTE3(valuePtr) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      fpfs_PostNotificationWhenUnlocked(a1, @"AudioHardwareFormatChanged", a1, Mutable);
    }

    if (dword_1EAF169F0)
    {
      HIDWORD(valuePtr) = 0;
      BYTE3(valuePtr) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_setPreferredNumberOfAudioOutputChannels(a1, 0, 0, 0, v3, v4, v5, v6, v18, v19, v20, valuePtr, SHIDWORD(valuePtr), v22, v23, v24, v25, v26, v27, v28, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8);
  }

  else
  {
    Mutable = 0;
  }

  v9 = v7[68];
  if (v9)
  {
    CFRelease(v9);
    v7[68] = 0;
  }

  v10 = v7[69];
  if (v10)
  {
    CFRelease(v10);
    v7[69] = 0;
  }

  *(v7 + 560) = 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}