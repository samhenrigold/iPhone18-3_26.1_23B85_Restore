@interface EnsureCurrentEventPlayoutLimitApplied
@end

@implementation EnsureCurrentEventPlayoutLimitApplied

void __fpic_EnsureCurrentEventPlayoutLimitApplied_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v129 = *MEMORY[0x1E69E9840];
  v2 = v0[6];
  if ((*(v2 + 1052) & 1) == 0)
  {
    goto LABEL_35;
  }

  v3 = v1;
  v4 = v0;
  Count = CFArrayGetCount(*(v2 + 656));
  if (Count < 1)
  {
    goto LABEL_35;
  }

  v7 = Count;
  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v108 = @"EndTime";
  *&v6 = 136316162;
  v100 = v6;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4[6] + 656), v8);
    v11 = (*(v4[6] + 88))(v4[7], v4[8], ValueAtIndex);
    memset(&v119, 0, sizeof(v119));
    FigPlayerInterstitialEventGetEffectivePlayoutLimit(v11, &v119);
    if ((v119.flags & 1) == 0)
    {
      goto LABEL_5;
    }

    memset(&v118, 0, sizeof(v118));
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = *(DerivedStorage + 432);
    OUTLINED_FUNCTION_177_2(DerivedStorage);
    CMTimeAdd(&v118, &lhs, &rhs);
    v13 = OUTLINED_FUNCTION_195_1();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v13, v14);
    v111 = PerEventTrackingCount - 1;
    if (PerEventTrackingCount < 1)
    {
      goto LABEL_5;
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      v18 = OUTLINED_FUNCTION_195_1();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v18, v19, v17, @"PlaybackItem");
      v21 = fpic_UnwrapPlaybackItem(v4[7], PerAssetPerEventTrackedObject, v4[8]);
      if (PerAssetPerEventTrackedObject != @"DummyItem")
      {
        break;
      }

LABEL_10:
      if (v16 == ++v17)
      {
        goto LABEL_5;
      }
    }

    v22 = v21;
    fpic_GetEventItemDurationOnEventTimeline(v4[7], v4[8], ValueAtIndex, v17, &lhs);
    value = lhs.value;
    flags = lhs.flags;
    timescale = lhs.timescale;
    if (v22)
    {
      v32 = (lhs.flags & 0x1D) == 1;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_5;
    }

    v95 = v3;
    epoch = lhs.epoch;
    lhs = v119;
    OUTLINED_FUNCTION_73_9(v23, v24, v25, v26, v27, v28, v29, v30, v80, v83, v86, v89, v92, v95, v100, *(&v100 + 1), v105, v108, v111, v115.value, *&v115.timescale, v115.epoch, v116, 0, 0, 0, *&v118.value);
    v34 = CMTimeSubtract(&v117, &lhs, &rhs);
    OUTLINED_FUNCTION_142_2(v34, v35, v36, v37, v38, v39, v40, v41, v81, v84, v87, v90, v93, v96, v101, v103, v106, v109, v112, v115.value, *&v115.timescale, v115.epoch, v116, *&v117.value);
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v42 = CMTimeCompare(&lhs, &rhs);
    if (v42 > 0)
    {
      OUTLINED_FUNCTION_73_9(v42, v43, v44, v45, v46, v47, v48, v49, v82, v85, v88, v91, v94, v97, v102, v104, v107, v110, v113, v115.value, *&v115.timescale, v115.epoch, v116, v117.value, *&v117.timescale, v117.epoch, *&v118.value);
      v115.value = value;
      v115.timescale = timescale;
      v115.flags = flags;
      v115.epoch = epoch;
      CMTimeAdd(&lhs, &rhs, &v115);
      v118 = lhs;
      v3 = v98;
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_142_2(v42, v43, v44, v45, v46, v47, v48, v49, v82, v85, v88, v91, epoch, v97, v102, v104, v107, v110, v113, v115.value, *&v115.timescale, v115.epoch, v116, *&v117.value);
    v50 = CMTimeCopyAsDictionary(&lhs, v9);
    v51 = v50;
    if (dword_1EAF178D0)
    {
      v89 = v50;
      LODWORD(v115.value) = 0;
      HIBYTE(v116) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      HIDWORD(v86) = HIBYTE(v116);
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v116));
      OUTLINED_FUNCTION_40();
      if (v16)
      {
        lhs = v117;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = v92;
        CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = v100;
        OUTLINED_FUNCTION_132_1();
        *(&rhs.flags + 2) = v22;
        HIWORD(rhs.epoch) = 1024;
        v121 = v17;
        v122 = v54;
        v123 = Seconds;
        v124 = v54;
        v125 = v55;
        OUTLINED_FUNCTION_87();
        v56 = OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl(v56, v57, v58, v59, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, HIDWORD(v86), "<<<< FigPlayerInterstitial >>>> %s: Setting playoutLimit on %p index %d to %f of %f", v80, v83, v86, *&v89, *&v92);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v60, v61, v62, v63, v64);
      v51 = v89;
    }

    FigPlaybackItemGetFigBaseObject();
    v66 = v65;
    v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v67)
    {
      v67(v66, v108, v51);
    }

    v3 = v99;
    v68 = v114;
    if (v51)
    {
      CFRelease(v51);
    }

    while (v17 < v68)
    {
      v69 = OUTLINED_FUNCTION_195_1();
      v71 = fpic_GetPerAssetPerEventTrackedObject(v69, v70, v68, @"PlaybackItem");
      OUTLINED_FUNCTION_2_4();
      v73 = *(v72 + 24);
      if (!v73)
      {
        CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
        OUTLINED_FUNCTION_2_4();
        *(v75 + 24) = v74;
        OUTLINED_FUNCTION_2_4();
        v73 = *(v76 + 24);
        if (!v73)
        {
          OUTLINED_FUNCTION_374();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v83, v86);
          OUTLINED_FUNCTION_30_8(v79, v4[5]);
          goto LABEL_35;
        }
      }

      if (v71)
      {
        CFArrayAppendValue(v73, v71);
      }

      v77 = OUTLINED_FUNCTION_195_1();
      fpic_RemovePerAssetPerEventTrackedObjects(v77, v78, v68--);
    }

LABEL_5:
    ++v8;
  }

  while (v8 != v7);
LABEL_35:
  OUTLINED_FUNCTION_191();
}

@end