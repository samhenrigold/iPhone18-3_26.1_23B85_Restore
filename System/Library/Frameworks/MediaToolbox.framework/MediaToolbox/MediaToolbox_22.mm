double FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  for (i = 0.0; FigMediaPlaylistUtilityIterateMedia(a6, &v16, &v15, &v17); i = i + FigMediaSegmentSpecifierGetTimeInSeconds(v12))
  {
    v12 = v17;
    if (FigMediaSegmentSpecifierGetDiscontinuityDomain(v17) + a5 > a7)
    {
      break;
    }

    if (i + FigMediaSegmentSpecifierGetTimeInSeconds(v12) > a1 && FigMediaSegmentSpecifierGetDiscontinuityDomain(v12) + a5 == a7)
    {
      if (i < a1)
      {
        i = a1;
      }

      break;
    }
  }

  if (i != a1 && v17 != 0)
  {
    return i + FigMediaSegmentSpecifierGetTimeInSeconds(v17) * 0.125;
  }

  return i;
}

uint64_t FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(uint64_t a1, const __CFData *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, char a20, void (*a21)(const void *, uint64_t), uint64_t *a22, void *a23)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  TargetDuration = FigMediaPlaylistGetTargetDuration(a1);
  valuePtr[0] = 0.0;
  v132 = a6;
  if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(a2);
    if (Length < 8)
    {
      v38 = 0;
LABEL_7:
      a6 = v132;
      goto LABEL_8;
    }

    v35 = BytePtr;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v38 = Mutable;
      v39 = Length >> 3;
      while (1)
      {
        v40 = FigGetAllocatorForMedia();
        v41 = CFNumberCreate(v40, kCFNumberDoubleType, valuePtr);
        valuePtr[0] = valuePtr[0] + *v35;
        if (!v41)
        {
          break;
        }

        v42 = v41;
        CFArrayAppendValue(v38, v41);
        CFRelease(v42);
        v35 += 2;
        if (!--v39)
        {
          goto LABEL_7;
        }
      }

      FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_1(v38, &v136);
    }

    else
    {
      FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_2(&v136);
    }

    v71 = v136;
    a6 = v132;
    if (v136)
    {
      return v71;
    }
  }

  v38 = 0;
LABEL_8:
  *a22 = 0;
  HasEndTag = FigMediaPlaylistHasEndTag(a1);
  v123 = a3;
  if (a13 <= a9 && !(HasEndTag | a3))
  {
    a9 = FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(a9 - a13, HasEndTag, 0, v44, a5, a1, a4);
    if (dword_1EAF16A30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  theData = a2;
  v128 = v38;
  v46 = a21;
  if (a8)
  {
    v47 = FigMediaPlaylistHasEndTag(a1) != 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0.0;
  v52 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v48 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v54 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v54, v48);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    if (!PartialSegments || !CFArrayGetCount(PartialSegments))
    {
      if (!v47 && FigMediaSegmentSpecifierIsMarkedAsGap(ValueAtIndex))
      {
        v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        goto LABEL_58;
      }

      FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
      if (FigCFArrayGetLastValue() == ValueAtIndex)
      {
LABEL_52:
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + a5 == a4)
        {
          goto LABEL_64;
        }

        if (dword_1EAF16A30)
        {
          v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT);
          v46 = a21;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a6 = v132;
        }
      }

      else
      {
        if (v47)
        {
          if (v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) >= a9 && (a17 || vabdd_f64(v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex), a9) >= 0.001))
          {
            goto LABEL_52;
          }
        }

        else if (v52 >= a9)
        {
          goto LABEL_52;
        }

        if (FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex))
        {
          NextSegment = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
          if (FigMediaSegmentSpecifierGetDiscontinuityDomain(NextSegment) + a5 > a4)
          {
            goto LABEL_64;
          }
        }
      }

LABEL_58:
      v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (!a6)
      {
        goto LABEL_62;
      }

LABEL_59:
      IsFragment = FigMediaSegmentSpecifierIsFragment(ValueAtIndex);
      if (v46)
      {
        if (!IsFragment)
        {
          v46(ValueAtIndex, 1);
        }
      }

      goto LABEL_62;
    }

    v57 = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v58 = 0;
    if (!v57)
    {
LABEL_40:
      Count = 0;
      goto LABEL_41;
    }

    while (1)
    {
      Count = CFArrayGetCount(v57);
LABEL_41:
      if (v58 >= Count)
      {
        break;
      }

      v59 = CFArrayGetValueAtIndex(v57, v58);
      if (FigMediaSegmentSpecifierIsFragment(v59))
      {
        if (FigMediaSegmentSpecifierIsMarkedIndependent(v59))
        {
          HasIndependentSegments = 1;
        }

        else
        {
          HasIndependentSegments = FigMediaPlaylistHasIndependentParts(a1) == 0;
        }
      }

      else
      {
        HasIndependentSegments = FigMediaPlaylistHasIndependentSegments(a1);
      }

      v61 = v52 >= a9 && v47;
      if (HasIndependentSegments && !v61 && FigMediaSegmentSpecifierGetDiscontinuityDomain(v59) + a5 == a4)
      {
        v51 = v52;
        v49 = ValueAtIndex;
        v50 = v59;
      }

      if (!v47 && FigMediaSegmentSpecifierIsMarkedAsGap(v59))
      {
        v50 = 0;
      }

      v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(v59);
      ++v58;
      if (!v57)
      {
        goto LABEL_40;
      }
    }

    v46 = a21;
    if (a6)
    {
      goto LABEL_59;
    }

LABEL_62:
    ++v48;
  }

  ValueAtIndex = 0;
LABEL_64:
  if (!v47 && (v51 < a9 - a15 || v50 == 0))
  {
    v50 = 0;
    ValueAtIndex = 0;
  }

  if (v46 && a6 && v50)
  {
    if (v49)
    {
      v66 = v49;
      do
      {
        v46(v66, 0);
        v66 = FigMediaSegmentSpecifierGetNextSegment(v66);
      }

      while (v66);
    }

    v67 = FigMediaSegmentSpecifierGetPartialSegments(v49);
    v68 = 0;
    if (!v67)
    {
      goto LABEL_78;
    }

LABEL_77:
    for (i = CFArrayGetCount(v67); v68 < i; i = 0)
    {
      v70 = CFArrayGetValueAtIndex(v67, v68);
      if (v70 == v50)
      {
        break;
      }

      v46(v70, 1);
      ++v68;
      if (v67)
      {
        goto LABEL_77;
      }

LABEL_78:
      ;
    }

    v52 = v51;
    ValueAtIndex = v49;
  }

  *a22 = v50;
  if (ValueAtIndex)
  {
    v71 = 0;
  }

  else
  {
    v71 = 4294954652;
  }

  if (ValueAtIndex == 0 && v47)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, v122, v123);
    v71 = v72;
  }

  v73 = v128;
  if (v71)
  {
    if (ValueAtIndex)
    {
      goto LABEL_201;
    }

    goto LABEL_204;
  }

  if (FigMediaSegmentSpecifierIsDiscontinuity(ValueAtIndex))
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    v75 = v132;
    goto LABEL_92;
  }

  if (!a7 && *a22)
  {
    goto LABEL_197;
  }

  v82 = a10;
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
  v83 = a9 - v52;
  if (v123 || *a22 || FigMediaPlaylistHasIndependentSegments(a1) && FigMediaPlaylistGetPlaylistType(a1) == 2)
  {
    if (a17)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = 0.0;
    }
  }

  else
  {
    v84 = TargetDuration;
  }

  if (v83 < v84)
  {
    if (v132)
    {
      v85 = v46 == 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = !v85;
    while (vabdd_f64(v83, v84) >= 0.001)
    {
      PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
      if (!PreviousSegment)
      {
        break;
      }

      v88 = PreviousSegment;
      if (FigMediaSegmentSpecifierGetDiscontinuityDomain(PreviousSegment) + a5 != a4)
      {
        break;
      }

      if (v86)
      {
        v46(v88, 0);
      }

      TimeInSeconds = TimeInSeconds + FigMediaSegmentSpecifierGetTimeInSeconds(v88);
      v83 = v83 + FigMediaSegmentSpecifierGetTimeInSeconds(v88);
      v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(v88);
      ValueAtIndex = v88;
      if (v83 >= v84)
      {
        goto LABEL_118;
      }
    }
  }

  v88 = ValueAtIndex;
LABEL_118:
  if (FigMediaPlaylistHasIndependentSegments(a1))
  {
    ValueAtIndex = v88;
    v75 = v132;
    a10 = v82;
  }

  else
  {
    v75 = v132;
    a10 = v82;
    if (v83 < TargetDuration && (v89 = FigMediaSegmentSpecifierGetPreviousSegment(v88)) != 0 && (ValueAtIndex = v89, FigMediaSegmentSpecifierGetDiscontinuityDomain(v89) + a5 == a4))
    {
      if (v132 && v46)
      {
        v46(ValueAtIndex, 0);
      }

      TimeInSeconds = TimeInSeconds + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    }

    else
    {
      ValueAtIndex = v88;
    }
  }

LABEL_92:
  if (a12 <= 0.0 || !a7)
  {
    goto LABEL_197;
  }

  v76 = TimeInSeconds * a11;
  AvgSegmentDuration = FigMediaPlaylistGetAvgSegmentDuration(a1);
  v78 = v76 / a12 + a14;
  v79 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) - a9 + a10;
  v135 = a16;
  v80 = a10 / a16;
  if (dword_1EAF16A30)
  {
    v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (AvgSegmentDuration == 0.0)
  {
    v90 = 0;
    if (!v128)
    {
LABEL_140:
      v92 = 1;
      goto LABEL_141;
    }
  }

  else
  {
    TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(ValueAtIndex);
    if (!v128)
    {
      v90 = 0;
      goto LABEL_140;
    }

    v90 = (TimeOffsetInSeconds / AvgSegmentDuration);
  }

  if (v90 < CFArrayGetCount(v128) - 1)
  {
    if (v90 >= 1)
    {
      goto LABEL_134;
    }

LABEL_137:
    v92 = 0;
    v90 = 0;
    goto LABEL_141;
  }

  if (CFArrayGetCount(v128) <= 1)
  {
    goto LABEL_137;
  }

LABEL_134:
  v92 = 0;
  if (v90 >= CFArrayGetCount(v128) - 1)
  {
    v90 = CFArrayGetCount(v128) - 1;
  }

LABEL_141:
  v93 = !v75 || a21 == 0;
  v94 = !v93;
  v95 = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
  if (!v95)
  {
LABEL_197:
    v98 = ValueAtIndex;
    if (ValueAtIndex)
    {
      goto LABEL_194;
    }

    v71 = 0;
    goto LABEL_204;
  }

  v96 = v80 - v78;
  v97 = 0.0;
  while (2)
  {
    v98 = v95;
    v99 = FigMediaSegmentSpecifierGetTimeInSeconds(v95);
    v100 = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(v98);
    if (!theData || (v101 = v100, v102 = CFDataGetLength(theData), v103 = CFDataGetBytePtr(theData), v102 < 8))
    {
      BitRate = FigMediaSegmentSpecifierGetBitRate(v98);
      goto LABEL_176;
    }

    v106 = v103;
    v107 = v102 >> 3;
    v108 = v90 >= 0;
    v109 = v90 < v107;
    if (v90 < 0 || v90 >= v107)
    {
      goto LABEL_173;
    }

    v110 = 0;
    while (2)
    {
      v111 = 0;
      valuePtr[0] = 0.0;
      if ((v92 & 1) == 0)
      {
        v111 = CFArrayGetCount(v73);
      }

      if (v111 > v90)
      {
        v112 = CFArrayGetValueAtIndex(v73, v90);
        CFNumberGetValue(v112, kCFNumberDoubleType, valuePtr);
        v104 = valuePtr[0];
        if (!v110)
        {
          goto LABEL_159;
        }

LABEL_163:
        if (v110 == -1)
        {
          if (v104 < v99 + v101)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v104 = v99 + v104;
          if (v104 > v101)
          {
            goto LABEL_172;
          }
        }

        v90 += v110;
        v108 = v90 >= 0;
        v109 = v90 < v107;
        if (v90 < 0 || v90 >= v107)
        {
          goto LABEL_173;
        }

        continue;
      }

      break;
    }

    FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_3();
    v104 = 0.0;
    if (v110)
    {
      goto LABEL_163;
    }

LABEL_159:
    if (v104 < v101)
    {
      v110 = 1;
    }

    else
    {
      v110 = -1;
    }

    if (vabdd_f64(v104, v101) > 2.22044605e-16)
    {
      goto LABEL_163;
    }

LABEL_172:
    v108 = 1;
    v109 = 1;
LABEL_173:
    BitRate = 0.0;
    if (v108 && v109)
    {
      LODWORD(v104) = *&v106[8 * v90 + 4];
      BitRate = *&v104;
    }

LABEL_176:
    if (FigMediaSegmentSpecifierIsDiscontinuity(ValueAtIndex))
    {
      goto LABEL_197;
    }

    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v98);
    if (DiscontinuityDomain != FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex))
    {
      goto LABEL_197;
    }

    v114 = FigMediaSegmentSpecifierGetTimeInSeconds(v98);
    v115 = a11;
    if (BitRate > 0.0)
    {
      v115 = BitRate;
    }

    v116 = v115 * v114;
    if (v97 < (4 * TargetDuration))
    {
      v116 = v116 + v116;
      v97 = v97 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    }

    v117 = v116 / a12 + a14;
    v79 = v79 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    if (dword_1EAF16A30)
    {
      v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v73 = v128;
    }

    if (v117 >= v96 || v79 <= 0.0 || v79 < 30.0 && BitRate > 0.0 && BitRate > a12)
    {
      goto LABEL_197;
    }

    if (v79 <= FigMediaSegmentSpecifierGetTimeInSeconds(v98))
    {
      v117 = v117 * 1.1;
      if (v79 / v135 < v117)
      {
        goto LABEL_197;
      }
    }

    if (v94)
    {
      a21(v98, 0);
    }

    v96 = v96 - v117;
    FigMediaSegmentSpecifierGetTimeInSeconds(v98);
    v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(v98);
    v95 = FigMediaSegmentSpecifierGetPreviousSegment(v98);
    ValueAtIndex = v98;
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_194:
  if (FigMediaSegmentSpecifierIsFragment(v98) && !*a22)
  {
    FigMediaSegmentSpecifierGetPartialSegments(v98);
    v71 = 0;
    *a22 = FigCFArrayGetFirstValue();
  }

  else
  {
    v71 = 0;
  }

  ValueAtIndex = v98;
LABEL_201:
  if (dword_1EAF16A30)
  {
    v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a23 = ValueAtIndex;
LABEL_204:
  if (v73)
  {
    CFRelease(v73);
  }

  return v71;
}

uint64_t fmpu_bitsRequiredToSwitch(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6)
{
  TargetDuration = FigMediaPlaylistGetTargetDuration(a2);
  if (a4 || (PlaylistType = FigMediaPlaylistGetPlaylistType(a2), v14 = TargetDuration, PlaylistType == 2))
  {
    v14 = 1.0;
    if (*(a1 + 64))
    {
      v14 = TargetDuration;
    }
  }

  v15 = v14 + TargetDuration;
  if (a5 + a6 < v15)
  {
    v15 = a5 + a6;
  }

  return ((v15 + (*(a1 + 68) + 1.0) * TargetDuration) * a3);
}

uint64_t FigMediaPlaylistUtilitySetFigAlternateBitrateCurve(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = FigAlternateCopyStreamBitrateCurve(a1, a3);
  if (!v6)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
    if (MediaSegmentSpecifiers)
    {
      Count = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    else
    {
      Count = 0;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8 * Count);
    if (!Mutable)
    {
      FigMediaPlaylistUtilitySetFigAlternateBitrateCurve_cold_1(&v18);
      return v18;
    }

    v10 = Mutable;
    CFDataSetLength(Mutable, 8 * Count);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    if (Count >= 1)
    {
      v12 = 0;
      v13 = (MutableBytePtr + 4);
      do
      {
        v14 = FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v12);
        TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        *(v13 - 1) = TimeInSeconds;
        *v13 = FigMediaSegmentSpecifierGetBitRate(ValueAtIndex);
        v13 += 2;
        ++v12;
      }

      while (Count != v12);
    }

    FigAlternateSetStreamBitrateCurve(a1, v10, a3);
    v6 = v10;
  }

  CFRelease(v6);
  return 0;
}

uint64_t playerasync_createCommon(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  FigKTraceInit();
  FigPlayerGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  playerasync_createCommon_cold_10(&v6);
  return v6;
}

uint64_t fpa_checkSubPlayerHealth()
{
  number = 0;
  FigPlayerGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = v2(v1, @"Status", *MEMORY[0x1E695E480], &number);
    if ((v3 + 12782) > 0xFFFFFFFD)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
      if (!v3)
      {
        if (!number)
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        v4 = valuePtr;
      }
    }
  }

  else
  {
    v4 = 4294954514;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v4;
}

uint64_t FigPlayerAsyncCreateWithEngineTopologyAndOptions(const __CFAllocator *a1, int a2, uint64_t a3, void *a4)
{
  v18 = 0;
  v19 = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  value = 0;
  if (a4)
  {
    *a4 = 0;
    v9 = playerasync_createCommon(a1, a3, &v19);
    v10 = v19;
    if (v9 || (CMBaseObjectGetDerivedStorage(), v9 = FigDispatchQueueHolderCreateWithDispatchQueue(), v9))
    {
      v15 = v9;
      v12 = 0;
    }

    else
    {
      CFDictionarySetValue(MutableCopy, @"AsynchronousControlQueueHolder", 0);
      v11 = playerasync_createCommand(v10, 1, 0, &v18);
      v12 = v18;
      if (!v11)
      {
        *(v18 + 32) = a2 & 0xFFFFFFBF;
        if (MutableCopy)
        {
          v13 = CFRetain(MutableCopy);
        }

        else
        {
          v13 = 0;
        }

        *(v12 + 40) = v13;
        if ((a2 & 0x200) != 0)
        {
          playerasync_runSynchronousCommand(v10, v12);
          if (*(v12 + 28))
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v18, v19);
            v15 = v14;
LABEL_13:
            *a4 = v10;
            fpa_releaseCommand(v12);
            goto LABEL_14;
          }
        }

        else
        {
          playerasync_runAsynchronousCommand(v10, v12);
          v12 = 0;
        }

        v15 = 0;
        goto LABEL_13;
      }

      v15 = v11;
    }

    fpa_releaseCommand(v12);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    FigPlayerAsyncCreateWithEngineTopologyAndOptions_cold_1();
    v15 = v20;
  }

LABEL_14:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v15;
}

void playerasync_runSynchronousCommand(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_runSynchronousCommand_cold_1(a2);
  }

  else
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 72);
    if (v5 == MEMORY[0x19A8D35D0]())
    {

      playerasync_runSynchronousCommandOnQueue(a2);
    }

    else
    {
      v6 = *(v4 + 56);

      dispatch_sync_f(v6, a2, playerasync_runSynchronousCommandOnQueue);
    }
  }
}

void playerasync_runAsynchronousCommand(void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D35D0]();
  FigSimpleMutexLock();
  *a2 = 0;
  **(DerivedStorage + 120) = a2;
  *(DerivedStorage + 120) = a2;
  FigSimpleMutexUnlock();
  CFRetain(a1);
  v5 = *(DerivedStorage + 56);

  dispatch_async_f(v5, a1, playerasync_runAsynchronousCommandOnQueue);
}

uint64_t FigPlayerAsyncDispatchToPlayerQueue(uint64_t a1, void *a2)
{
  if (a1 && (FigPlayerGetClassID(), CMBaseObjectIsMemberOfClass()) && CMBaseObjectGetVTable() == &kFigPlayerAsyncVTable)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    dispatch_async(*(DerivedStorage + 56), a2);
    return 0;
  }

  else
  {
    FigPlayerAsyncDispatchToPlayerQueue_cold_1(&v5);
    return v5;
  }
}

void playerasync_InvalidateOnQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 5))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 5) = 0;
  }

  FigSimpleMutexLock();
  *v10 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = DerivedStorage + 112;
  FigSimpleMutexUnlock();
  for (i = v10[0]; v10[0]; i = v10[0])
  {
    v10[0] = *i;
    if (!v10[0])
    {
      v10[1] = v10;
    }

    fpa_releaseCommand(i);
  }

  if (*(DerivedStorage + 24))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 32);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    Copy = 0;
    goto LABEL_13;
  }

  Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], v4);
  FigSimpleMutexUnlock();
  if (!Copy)
  {
LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

  CFSetApplyFunction(Copy, playerasync_InvalidateItem, 0);
  v6 = 0;
LABEL_14:
  if (*(DerivedStorage + 16))
  {
    FigPlayerGetFigBaseObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }
  }

  if ((v6 & 1) == 0)
  {
    CFRelease(Copy);
  }

  CFRelease(a1);
}

void itemasync_InvalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v4 = 0;
  }

  if (*(DerivedStorage + 4))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 4) = 0;
  }

  if (v3)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 8) = -12785;
    MEMORY[0x19A8D12E0](*(v4 + 128));
    FigSimpleMutexUnlock();
    if (*(DerivedStorage + 16))
    {
      FigCFWeakReferenceTableRemoveValue();
    }

    else
    {
      FigSimpleMutexLock();
      CFSetRemoveValue(*(v4 + 32), a1);
      FigSimpleMutexUnlock();
    }

    v8 = CMBaseObjectGetDerivedStorage();
    if (!*v8)
    {
      v9 = v8;
      FigSimpleMutexLock();
      for (i = *(v9 + 14); i; i = *i)
      {
        if (i[2] == a1)
        {
          *(i + 6) |= 0x10000u;
        }
      }

      v8 = FigSimpleMutexUnlock();
    }

    if (*(DerivedStorage + 16))
    {
      v11 = *(v4 + 72);
      if (v11 == MEMORY[0x19A8D35D0](v8))
      {
        FigPlaybackItemGetFigBaseObject();
        if (v16)
        {
          v17 = v16;
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v18)
          {
            v18(v17);
          }
        }
      }

      else
      {
        v12 = FigSimpleMutexLock();
        *(v4 + 72) = MEMORY[0x19A8D35D0](v12);
        FigPlaybackItemGetFigBaseObject();
        if (v13)
        {
          v14 = v13;
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v15)
          {
            v15(v14);
          }
        }

        *(v4 + 72) = 0;
        FigSimpleMutexUnlock();
      }
    }

    playerasync_removeItemFromPlayQueueWithoutInformingSubPlayer(v3, a1);

    CFRelease(v3);
  }

  else if (*(DerivedStorage + 16))
  {
    FigPlaybackItemGetFigBaseObject();
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
}

void playerasync_runImmediateCommand(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_runImmediateCommand_cold_1(a2);
    return;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 72);
  if (v8 != MEMORY[0x19A8D35D0]())
  {
    if (a3)
    {
      if (FigSimpleMutexTryLock())
      {
LABEL_5:
        *(v7 + 72) = MEMORY[0x19A8D35D0]();
        playerasync_runOneCommand(a1, a2);
        *(v7 + 72) = 0;

        FigSimpleMutexUnlock();
        return;
      }
    }

    else if (!FigSimpleMutexLock())
    {
      goto LABEL_5;
    }

    *(a2 + 28) = -12783;
    return;
  }

  playerasync_runOneCommand(a1, a2);
}

void playerasync_runOneCommand(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  *(a2 + 28) = 0;
  v5 = (a2 + 28);
  v6 = *(a2 + 24);
  if ((v6 & 0x10000) == 0)
  {
    v7 = DerivedStorage;
    if (*DerivedStorage)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, DWORD2(v53), v54);
      *v5 = v8;
      return;
    }

    if (*(a2 + 16))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      v6 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
    }

    if (v6 == 1)
    {
      v10 = *(a2 + 16);
      if (!v10)
      {
LABEL_9:
        v11 = CFGetAllocator(a1);
        v12 = FigSharedPlayerCreateWithOptions(v11, *(a2 + 32) & 0xFFFFFFBF, *(a2 + 40), &v59);
        *(a2 + 28) = v12;
        if (v12 || (CMNotificationCenterGetDefaultLocalCenter(), v12 = FigNotificationCenterAddWeakListener(), (*v5 = v12) != 0))
        {
          v13 = v12;
          FigSimpleMutexLock();
        }

        else
        {
          *(v7 + 5) = 1;
          v13 = fpa_checkSubPlayerHealth();
          *v5 = v13;
          FigSimpleMutexLock();
          if (!v13)
          {
            v16 = v59;
            if (v59)
            {
              v16 = CFRetain(v59);
            }

            v13 = 0;
            *(v7 + 2) = v16;
            v14 = 1;
            goto LABEL_13;
          }
        }

        v14 = 0;
LABEL_13:
        v7[2] = v13;
        MEMORY[0x19A8D12E0](*(v7 + 16));
        FigSimpleMutexUnlock();
        if ((v14 & 1) == 0)
        {
          playerasync_postPlayerStatusChanged(a1, v13);
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (!*(v7 + 2))
      {
        playerasync_runOneCommand_cold_1();
        goto LABEL_81;
      }

      v10 = *(a2 + 16);
      if (!v10)
      {
        goto LABEL_21;
      }

      if (v6 == 16)
      {
LABEL_18:
        SubItem = playerasync_createSubItem(a1, v10, *(a2 + 32), *(a2 + 40), *(a2 + 48));
        *(a2 + 28) = SubItem;
        if (SubItem)
        {
          itemasync_postItemStatusChanged(*(a2 + 16), SubItem);
        }

        goto LABEL_81;
      }
    }

    if (*(v9 + 16))
    {
LABEL_21:
      switch(v6)
      {
        case 1:
          goto LABEL_9;
        case 2:
          playerasync_runCopyPropertyCommand(a2);
          goto LABEL_81;
        case 3:
          if (FigCFEqual())
          {
            v30 = *(a2 + 40);
            if (v30 && (Count = CFArrayGetCount(*(a2 + 40)), Count >= 1))
            {
              v32 = Count;
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
              for (i = 0; i != v32; ++i)
              {
                CFArrayGetValueAtIndex(v30, i);
                CMBaseObjectGetDerivedStorage();
                FigCFArrayAppendValue();
              }
            }

            else
            {
              Mutable = 0;
            }

            FigPlayerGetFigBaseObject();
            *v5 = CMBaseObjectSetProperty(v48, @"ItemsToPrebuffer", Mutable);
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          else
          {
            v21 = *(a2 + 32);
            v22 = *(a2 + 40);
            FigPlayerGetFigBaseObject();
LABEL_79:
            Rate = CMBaseObjectSetProperty(v23, v21, v22);
LABEL_80:
            *(a2 + 28) = Rate;
          }

          break;
        case 4:
          Rate = FigPlayerSetProperties(*(v7 + 2), *(a2 + 32), a2 + 40);
          goto LABEL_80;
        case 6:
          if (*(a2 + 32))
          {
            v38 = CMBaseObjectGetDerivedStorage();
            v39 = *(v7 + 2);
            v40 = *(v9 + 16);
            if (v38)
            {
              v41 = *(v38 + 16);
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
            v39 = *(v7 + 2);
            v40 = *(v9 + 16);
          }

          v52 = FigPlayerAddToPlayQueue(v39, v40, v41);
          *v5 = v52;
          if (!v52 && !*v7)
          {
            CFSetAddValue(*(v7 + 6), *(a2 + 16));
          }

          goto LABEL_81;
        case 7:
          if (v9)
          {
            v35 = *(v9 + 16);
          }

          else
          {
            v35 = 0;
          }

          v49 = FigPlayerRemoveFromPlayQueue(*(v7 + 2), v35);
          *v5 = v49;
          if (!v49 && !*v7)
          {
            v50 = *(a2 + 16);
            v51 = *(v7 + 6);
            if (v50)
            {
              CFSetRemoveValue(v51, v50);
            }

            else
            {
              CFSetRemoveAllValues(v51);
            }
          }

          goto LABEL_81;
        case 8:
          playerasync_runCopyPlayQueueItemCommand(a2);
          goto LABEL_81;
        case 9:
          Rate = FigPlayerSetRate(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 10:
          Rate = FigPlayerGetRate(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 11:
          v42 = *(v7 + 2);
          v43 = *(a2 + 32);
          v57 = *(a2 + 36);
          v58 = *(a2 + 52);
          Rate = FigPlayerSetRateWithFade(v42, &v57, v43);
          goto LABEL_80;
        case 12:
          Rate = FigPlayerStartPreroll(*(v7 + 2), *(a2 + 36), *(a2 + 32));
          goto LABEL_80;
        case 13:
          Rate = FigPlayerStepByCount(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 15:
          v27 = *(v7 + 2);
          v28 = *(a2 + 32);
          v29 = *(a2 + 84);
          v57 = *(a2 + 36);
          v58 = *(a2 + 52);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          Rate = FigPlayerSetRateAndAnchorTime(v27, &v57, &v55, v29, v28);
          goto LABEL_80;
        case 16:
          goto LABEL_18;
        case 17:
          Rate = FigPlayerSetRateWithOptions(*(v7 + 2), *(a2 + 64), *(a2 + 32));
          goto LABEL_80;
        case 18:
          Rate = FigPlayerAddExternalStartupTask(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 19:
          Rate = FigPlayerRemoveExternalStartupTask(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 20:
          *v5 = FigPlayerBeginInterruption(*(v7 + 2));
          goto LABEL_81;
        case 21:
          Rate = FigPlayerEndInterruption(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 22:
          Rate = FigPlayerSetConnectionActive(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 23:
          Rate = FigPlayerDuckVolume(*(v7 + 2), *(a2 + 32), *(a2 + 36), *(a2 + 40));
          goto LABEL_80;
        case 24:
          Rate = FigPlayerSilentMute(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 25:
          Rate = FigPlaybackItemCopyProperty(*(v9 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 26:
          v21 = *(a2 + 32);
          v22 = *(a2 + 40);
          FigPlaybackItemGetFigBaseObject();
          goto LABEL_79;
        case 27:
          Rate = FigPlaybackItemSetProperties(*(v9 + 16), *(a2 + 32), a2 + 40);
          goto LABEL_80;
        case 28:
          Rate = FigPlaybackItemGetDimensions(*(v9 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 29:
          Rate = FigPlaybackItemGetDuration(*(v9 + 16), *(a2 + 32));
          goto LABEL_80;
        case 30:
          v46 = *(v9 + 16);
          v47 = *(a2 + 56);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemSetCurrentTime(v46, &v57, v47);
          goto LABEL_80;
        case 31:
          Rate = FigPlaybackItemGetCurrentTime_0(*(v9 + 16), *(a2 + 32));
          goto LABEL_80;
        case 32:
          Rate = FigPlaybackItemCopyTrackProperty(*(v9 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56));
          goto LABEL_80;
        case 33:
          Rate = FigPlaybackItemMakeReadyForInspection(*(v9 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 35:
          Rate = FigPlaybackItemCopyCommonMetadata(*(v9 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 36:
          Rate = FigPlaybackItemCopyChapterImageData(*(v9 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 37:
          v24 = *(v9 + 16);
          v25 = *(a2 + 56);
          v26 = *(a2 + 64);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemGetNextThumbnailTime(v24, &v57, v25, v26);
          goto LABEL_80;
        case 40:
          v44 = *(v9 + 16);
          v45 = *(a2 + 56);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          v53 = *(a2 + 84);
          v54 = *(a2 + 100);
          Rate = FigPlaybackItemSetCurrentTimeWithRange(v44, &v57, v45, &v55, &v53);
          goto LABEL_80;
        case 41:
          Rate = FigPlaybackItemSetTrackProperty(*(v9 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 42:
          Rate = FigPlaybackItemCopyFormatReader(*(v9 + 16), *(a2 + 32));
          goto LABEL_80;
        case 43:
          Rate = FigPlaybackItemSeekToDateWithID(*(v9 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 44:
          v18 = *(v9 + 16);
          v19 = *(a2 + 56);
          v20 = *(a2 + 108);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          v53 = *(a2 + 84);
          v54 = *(a2 + 100);
          Rate = FigPlaybackItemSetCurrentTimeWithRangeAndID(v18, &v57, v19, &v55, &v53, v20);
          goto LABEL_80;
        case 45:
          Rate = FigPlaybackItemCopyAsset(*(v9 + 16), *(a2 + 32));
          goto LABEL_80;
        case 46:
          Rate = FigPlaybackItemExtractAndRetainNextSampleBuffer(*(v9 + 16), *(a2 + 32), *(a2 + 36), *(a2 + 40));
          goto LABEL_80;
        case 47:
          v36 = *(v9 + 16);
          v57 = *(a2 + 32);
          v37 = *(a2 + 56);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemSetCurrentTimeWithOptions(v36, &v57, v37);
          goto LABEL_80;
        case 48:
          Rate = FigPlayerCopyDisplayedCVPixelBuffer(*(v7 + 2), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        default:
          goto LABEL_81;
      }

      goto LABEL_81;
    }

    playerasync_runOneCommand_cold_2();
LABEL_81:
    if (v59)
    {
      CFRelease(v59);
    }
  }
}

double playerasync_postPlayerStatusChanged(uint64_t a1, uint64_t a2)
{
  if (!CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    return playerasync_postPlayerStatusChanged_cold_2();
  }

  playerasync_postPlayerStatusChanged_cold_1();
  return result;
}

uint64_t playerasync_runCopyPropertyCommand(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    playerasync_runCopyPropertyCommand_cold_1();
    result = v14;
    goto LABEL_18;
  }

  if (!CFEqual(v3, @"SynchronizedNULL"))
  {
    if (CFEqual(v3, @"UserVolume"))
    {
      FigSimpleMutexLock();
      v7 = *(DerivedStorage + 88);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *v4 = v7;
      FigSimpleMutexUnlock();
      if (*v4)
      {
LABEL_8:
        result = 0;
        goto LABEL_18;
      }

      FigPlayerGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        result = v10(v9, v3, v2, v4);
        if (result)
        {
          goto LABEL_18;
        }

        if (*v4)
        {
          FigSimpleMutexLock();
          *(DerivedStorage + 88) = CFRetain(*v4);
          FigSimpleMutexUnlock();
        }

        goto LABEL_8;
      }
    }

    else
    {
      if (CFEqual(v3, @"Topology"))
      {
        result = FPSupport_CreatePlayerTopology(*MEMORY[0x1E695E480], @"Async", *(DerivedStorage + 16), v4);
        goto LABEL_18;
      }

      FigPlayerGetFigBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        result = v13(v12, v3, v2, v4);
        goto LABEL_18;
      }
    }

    result = 4294954514;
    goto LABEL_18;
  }

  result = 0;
  *v4 = 0;
LABEL_18:
  *(a1 + 28) = result;
  return result;
}

uint64_t FigPlayerSetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlayerAddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlayerRemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void playerasync_runCopyPlayQueueItemCommand(uint64_t a1)
{
  v2 = *(a1 + 16);
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2 && (v2 = *(CMBaseObjectGetDerivedStorage() + 16)) == 0)
  {
    playerasync_runCopyPlayQueueItemCommand_cold_1();
    v8 = 0;
    v6 = v10;
  }

  else
  {
    v4 = *(DerivedStorage + 16);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v6 = v5(v4, v2, &cf);
      v7 = cf;
      if (cf)
      {
        if (*DerivedStorage)
        {
          v8 = 0;
          v6 = -12785;
        }

        else
        {
          v8 = FigCFWeakReferenceTableCopyValue();
          if (!v8)
          {
            v6 = -12785;
          }

          v7 = cf;
        }

        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v6 = -12782;
    }
  }

  *(a1 + 28) = v6;
  **(a1 + 32) = v8;
}

uint64_t FigPlayerSetRate(uint64_t a1, float a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  v5.n128_f32[0] = a2;

  return v4(a1, v5);
}

uint64_t FigPlayerSetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlayerStartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a3;

  return v6(a1, a2, v7);
}

uint64_t FigPlayerStepByCount(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = *a2;
  v15 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  return v10(a1, &v14, &v12, a4, a5);
}

uint64_t playerasync_createSubItem(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    if (a3)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v12)
      {
        v13 = v12(v11, a3, a4, a5, &cf);
        if (!v13)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v13 = FigNotificationCenterAddWeakListener();
          if (!v13)
          {
            *(v10 + 4) = 1;
            FigSimpleMutexLock();
            CFSetRemoveValue(*(DerivedStorage + 32), a2);
            FigSimpleMutexUnlock();
            FigCFWeakReferenceTableAddValueAssociatedWithKey();
            FigSimpleMutexLock();
            v16 = cf;
            if (cf)
            {
              v16 = CFRetain(cf);
            }

            goto LABEL_14;
          }
        }

        v14 = v13;
      }

      else
      {
        v14 = 4294954514;
      }

      FigSimpleMutexLock();
      goto LABEL_8;
    }

    playerasync_createSubItem_cold_1(&v18);
  }

  else
  {
    playerasync_createSubItem_cold_2();
  }

  v14 = v18;
  FigSimpleMutexLock();
  if (!v14)
  {
    v16 = 0;
LABEL_14:
    v14 = 0;
    *(v10 + 16) = v16;
  }

LABEL_8:
  *(v10 + 8) = v14;
  MEMORY[0x19A8D12E0](*(DerivedStorage + 128));
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

double itemasync_postItemStatusChanged(uint64_t a1, uint64_t a2)
{
  if (!CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    return itemasync_postItemStatusChanged_cold_2();
  }

  itemasync_postItemStatusChanged_cold_1();
  return result;
}

uint64_t FigPlayerSetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a3;

  return v6(a1, a2, v7);
}

uint64_t FigPlayerAddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerRemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerBeginInterruption(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 24);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t FigPlayerEndInterruption(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t FigPlayerDuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v11(a1, a2, v9, v10);
}

uint64_t FigPlayerSilentMute(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t FigPlaybackItemCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackItemGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t FigPlaybackItemSetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemGetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemSetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlaybackItemSetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlaybackItemGetCurrentTime_0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigPlaybackItemCopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemCopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemGetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  return v8(a1, &v10, a3, a4);
}

uint64_t FigPlaybackItemSetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v10)
  {
    return 4294954514;
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  v14 = *a4;
  v15 = *(a4 + 2);
  v12 = *a5;
  v13 = *(a5 + 2);
  return v10(a1, &v16, a3, &v14, &v12);
}

uint64_t FigPlaybackItemSetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemCopyFormatReader(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemSeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemSetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v12)
  {
    return 4294954514;
  }

  v18 = *a2;
  v19 = *(a2 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  return v12(a1, &v18, a3, &v16, &v14, a6);
}

uint64_t FigPlaybackItemCopyAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlayerCopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t playerasync_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_handleSetProperty_cold_1(&v34);
    return v34;
  }

  if (!a3)
  {
    playerasync_handleSetProperty_cold_5(&v34);
    return v34;
  }

  v15 = DerivedStorage;
  if (CFEqual(@"WantsVolumeChangesWhenPausedOrInactive", a3))
  {
    FigSimpleMutexLock();
    v16 = *(v15 + 11);
    if (v16)
    {
      CFRelease(v16);
      *(v15 + 11) = 0;
    }

    FigSimpleMutexUnlock();
    goto LABEL_9;
  }

  if (CFEqual(@"OnMediaServer", a3))
  {
    *(v15 + 4) = *MEMORY[0x1E695E4D0] == a4;
LABEL_9:
    *a5 = 0;
    *a6 = CFRetain(a3);
    if (a4)
    {
      v17 = CFRetain(a4);
    }

    else
    {
      v17 = 0;
    }

    *a7 = v17;
    if (CFEqual(a3, @"UserVolume") || CFEqual(a3, @"UserMuted") || CFEqual(a3, @"EQPreset"))
    {
      playerasync_cancelQueuedCommandsMatching(a1, 3u, 0, a3);
    }

    return 0;
  }

  if (CFEqual(@"AudioDeviceUID", a3))
  {
    v34 = 0;
    v20 = playerasync_createCommand(a1, 3, 0, &v34);
    if (v20)
    {
      return v20;
    }

    v21 = CFRetain(a3);
    v22 = v34;
    *(v34 + 32) = v21;
    if (a4)
    {
      v23 = CFRetain(a4);
    }

    else
    {
      v23 = 0;
    }

    *(v22 + 40) = v23;
    playerasync_runSynchronousCommand(a1, v22);
    v18 = *(v22 + 28);
    fpa_releaseCommand(v22);
    *a5 = 1;
    return v18;
  }

  if (!CFEqual(@"ItemsToPrebuffer", a3))
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    v30 = *(v15 + 20);
    *(v15 + 20) = 0;
LABEL_38:
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_9;
  }

  v24 = CFGetTypeID(a4);
  if (v24 != CFArrayGetTypeID())
  {
    playerasync_handleSetProperty_cold_2(&v34);
    return v34;
  }

  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
LABEL_34:
    v30 = *(v15 + 20);
    *(v15 + 20) = a4;
    CFRetain(a4);
    goto LABEL_38;
  }

  v25 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v25);
    if (!ValueAtIndex || (v27 = CFGetTypeID(ValueAtIndex), v27 != FigPlaybackItemGetTypeID()))
    {
      playerasync_handleSetProperty_cold_4(&v34);
      return v34;
    }

    if (CMBaseObjectGetVTable() != &kFigPlaybackItemAsyncVTable)
    {
      playerasync_handleSetProperty_cold_3(&v34);
      return v34;
    }

    CMBaseObjectGetDerivedStorage();
    v28 = FigCFWeakReferenceHolderCopyReferencedObject();
    v29 = v28;
    if (v28 != a1)
    {
      break;
    }

    if (a1)
    {
      CFRelease(v28);
    }

    if (Count == ++v25)
    {
      goto LABEL_34;
    }
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v7, Count);
  v18 = v31;
  if (v29)
  {
    CFRelease(v29);
  }

  return v18;
}

void playerasync_cancelQueuedCommandsMatching(const void *a1, unsigned int a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = 0;
  v16 = &v15;
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    while (1)
    {
      if (*(v8 + 6) != a2 || v8[2] != a3)
      {
        goto LABEL_21;
      }

      if (a2 != 26)
      {
        v9 = a2;
        if (a2 != 3)
        {
          goto LABEL_8;
        }
      }

      if (FigCFEqual())
      {
        break;
      }

LABEL_21:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v9 = *(v8 + 6);
LABEL_8:
    if (v9 > 0x2F || ((1 << v9) & 0x980000000000) == 0)
    {
LABEL_20:
      *(v8 + 6) = v9 | 0x10000;
      goto LABEL_21;
    }

    v13 = 0;
    if (v9 != 43)
    {
      if (v9 == 47)
      {
        FigCFDictionaryGetInt32IfPresent();
      }

      else if (v9 == 44)
      {
        v10 = *(v8 + 27);
LABEL_16:
        v13 = v10;
      }

      playerasync_createCommand(a1, 44, a3, &v14);
      v11 = v14;
      if (v14)
      {
        *(v14 + 108) = v13;
        *v11 = 0;
        *v16 = v11;
        v16 = v11;
      }

      v9 = *(v8 + 6);
      goto LABEL_20;
    }

    v10 = *(v8 + 10);
    goto LABEL_16;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  for (i = v15; v15; i = v15)
  {
    v15 = *i;
    if (!v15)
    {
      v16 = &v15;
    }

    itemasync_postSeekWasCanceled(a3, *(i + 27));
    fpa_releaseCommand(i);
  }
}

void itemasync_InvalidateOnQueue(const void *a1)
{
  itemasync_InvalidateInternal(a1);

  CFRelease(a1);
}

uint64_t itemasync_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemasync_handleSetProperty_cold_1(&v17);
    return v17;
  }

  if (!a3)
  {
    itemasync_handleSetProperty_cold_4(&v17);
    return v17;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    itemasync_handleSetProperty_cold_3(&v17);
    return v17;
  }

  v13 = v12;
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemasync_handleSetProperty_cold_2(&v17);
    v15 = v17;
  }

  else
  {
    *a5 = 0;
    *a6 = CFRetain(a3);
    if (a4)
    {
      v14 = CFRetain(a4);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    *a7 = v14;
  }

  CFRelease(v13);
  return v15;
}

void itemasync_CopyTrackProperty(const void *a1, int a2, const void *a3, const void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954516;
    v15 = 3535;
    goto LABEL_5;
  }

  *a5 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954511;
    v15 = 3539;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v14, "<<<< Async >>>>", v15, v13);
    return;
  }

  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v13 = v5;
    v14 = 4294954516;
    v15 = 3542;
    goto LABEL_5;
  }

  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v16)
  {
    v17 = v16;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_CopyTrackProperty_cold_1(&v22);
      v19 = 0;
    }

    else
    {
      v18 = playerasync_createCommand(v17, 32, a1, &v21);
      v19 = v21;
      if (!v18)
      {
        *(v21 + 32) = a2;
        v19[5] = CFRetain(a3);
        if (a4)
        {
          v20 = CFRetain(a4);
        }

        else
        {
          v20 = 0;
        }

        v19[6] = v20;
        v19[7] = a5;
        playerasync_runSynchronousCommand(v17, v19);
      }
    }

    fpa_releaseCommand(v19);
    CFRelease(v17);
  }

  else
  {
    itemasync_CopyTrackProperty_cold_2();
  }
}

void itemasync_CopyCommonMetadata(const void *a1, const void *a2, const void *a3, void *a4)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954516;
    v13 = 4941;
    goto LABEL_5;
  }

  *a4 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954511;
    v13 = 4945;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< Async >>>>", v13, v11);
    return;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v14)
  {
    v15 = v14;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_CopyCommonMetadata_cold_1(&v20);
      v17 = 0;
    }

    else if (playerasync_createCommand(v15, 35, a1, &v19))
    {
      v17 = v19;
    }

    else
    {
      if (a2)
      {
        v16 = CFRetain(a2);
      }

      else
      {
        v16 = 0;
      }

      v17 = v19;
      *(v19 + 32) = v16;
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        v18 = 0;
      }

      v17[5] = v18;
      v17[6] = a4;
      playerasync_runSynchronousCommand(v15, v17);
    }

    fpa_releaseCommand(v17);
    CFRelease(v15);
  }

  else
  {
    itemasync_CopyCommonMetadata_cold_2();
  }
}

void itemasync_CopyChapterImageData(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954516;
    v13 = 4893;
    goto LABEL_7;
  }

  *a3 = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954516;
    v13 = 4897;
    goto LABEL_7;
  }

  *a4 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954511;
    v13 = 4901;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< Async >>>>", v13, v11);
    return;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v14)
  {
    v15 = v14;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_CopyChapterImageData_cold_1(&v19);
      v17 = 0;
    }

    else
    {
      v16 = playerasync_createCommand(v15, 36, a1, &v18);
      v17 = v18;
      if (!v16)
      {
        *(v18 + 32) = a2;
        v17[5] = a3;
        v17[6] = a4;
        playerasync_runSynchronousCommand(v15, v17);
      }
    }

    fpa_releaseCommand(v17);
    CFRelease(v15);
  }

  else
  {
    itemasync_CopyChapterImageData_cold_2();
  }
}

void itemasync_GetNextThumbnailTime(const void *a1, __int128 *a2, int a3, uint64_t a4)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 4294954516;
    v14 = 4849;
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E6960C70];
  *a4 = *MEMORY[0x1E6960C70];
  *(a4 + 16) = *(v10 + 16);
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 4294954511;
    v14 = 4853;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v13, "<<<< Async >>>>", v14, v12);
    return;
  }

  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v15)
  {
    v16 = v15;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_GetNextThumbnailTime_cold_1(&v21);
      v18 = 0;
    }

    else
    {
      v17 = playerasync_createCommand(v16, 37, a1, &v20);
      v18 = v20;
      if (!v17)
      {
        v19 = *a2;
        *(v20 + 48) = *(a2 + 2);
        *(v18 + 32) = v19;
        *(v18 + 56) = a3;
        *(v18 + 64) = a4;
        playerasync_runSynchronousCommand(v16, v18);
      }
    }

    fpa_releaseCommand(v18);
    CFRelease(v16);
  }

  else
  {
    itemasync_GetNextThumbnailTime_cold_2();
  }
}

void itemasync_SetCurrentTimeWithRange(const void *a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  v19 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4500, v5);
  }

  else
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithRange_cold_1(&v20);
        v15 = 0;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v13, a1);
        v14 = playerasync_createCommand(v13, 40, a1, &v19);
        v15 = v19;
        if (!v14)
        {
          v16 = *a2;
          *(v19 + 6) = *(a2 + 2);
          *(v15 + 2) = v16;
          *(v15 + 14) = a3;
          v17 = *a4;
          *(v15 + 76) = *(a4 + 2);
          *(v15 + 60) = v17;
          v18 = *a5;
          *(v15 + 100) = *(a5 + 2);
          *(v15 + 84) = v18;
          playerasync_runAsynchronousCommand(v13, v15);
          v15 = 0;
        }
      }

      fpa_releaseCommand(v15);
      CFRelease(v13);
    }

    else
    {
      itemasync_SetCurrentTimeWithRange_cold_2();
    }
  }
}

void itemasync_SetTrackProperty(const void *a1, int a2, const void *a3, const void *a4)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954516;
    v13 = 4985;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954511;
    v13 = 4988;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< Async >>>>", v13, v11);
    return;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v14)
  {
    v15 = v14;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_SetTrackProperty_cold_1(&v20);
      v17 = 0;
    }

    else
    {
      v16 = playerasync_createCommand(v15, 41, a1, &v19);
      v17 = v19;
      if (!v16)
      {
        *(v19 + 32) = a2;
        v17[5] = CFRetain(a3);
        if (a4)
        {
          v18 = CFRetain(a4);
        }

        else
        {
          v18 = 0;
        }

        v17[6] = v18;
        playerasync_runAsynchronousCommand(v15, v17);
        v17 = 0;
      }
    }

    fpa_releaseCommand(v17);
    CFRelease(v15);
  }

  else
  {
    itemasync_SetTrackProperty_cold_2();
  }
}

void itemasync_CopyFormatReader(const void *a1, uint64_t a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954516;
    v9 = 5027;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954511;
    v9 = 5030;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< Async >>>>", v9, v7);
    return;
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    v11 = v10;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_CopyFormatReader_cold_1(&v15);
      v13 = 0;
    }

    else
    {
      v12 = playerasync_createCommand(v11, 42, a1, &v14);
      v13 = v14;
      if (!v12)
      {
        *(v14 + 32) = a2;
        playerasync_runSynchronousCommand(v11, v13);
      }
    }

    fpa_releaseCommand(v13);
    CFRelease(v11);
  }

  else
  {
    itemasync_CopyFormatReader_cold_2();
  }
}

void itemasync_SeekToDateWithID(const void *a1, const void *a2, int a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954516;
    v11 = 4681;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954511;
    v11 = 4684;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< Async >>>>", v11, v9);
    return;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v12)
  {
    v13 = v12;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_SeekToDateWithID_cold_1(&v18);
      v16 = 0;
    }

    else
    {
      playerasync_removeQueuedSeekCommands(v13, a1);
      if (playerasync_createCommand(v13, 43, a1, &v17))
      {
        v16 = v17;
      }

      else
      {
        v14 = CFRetain(a2);
        v15 = v17;
        v17[4] = v14;
        *(v15 + 10) = a3;
        playerasync_runAsynchronousCommand(v13, v15);
        v16 = 0;
      }
    }

    fpa_releaseCommand(v16);
    CFRelease(v13);
  }

  else
  {
    itemasync_SeekToDateWithID_cold_2();
  }
}

void itemasync_SetCurrentTimeWithRangeAndID(const void *a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5, int a6)
{
  v21 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4456, v6);
  }

  else
  {
    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v14)
    {
      v15 = v14;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithRangeAndID_cold_1(&v22);
        v17 = 0;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v15, a1);
        v16 = playerasync_createCommand(v15, 44, a1, &v21);
        v17 = v21;
        if (!v16)
        {
          v18 = *a2;
          *(v21 + 6) = *(a2 + 2);
          *(v17 + 2) = v18;
          *(v17 + 14) = a3;
          v19 = *a4;
          *(v17 + 76) = *(a4 + 2);
          *(v17 + 60) = v19;
          v20 = *a5;
          *(v17 + 100) = *(a5 + 2);
          *(v17 + 84) = v20;
          *(v17 + 27) = a6;
          playerasync_runAsynchronousCommand(v15, v17);
          v17 = 0;
        }
      }

      fpa_releaseCommand(v17);
      CFRelease(v15);
    }

    else
    {
      itemasync_SetCurrentTimeWithRangeAndID_cold_2();
    }
  }
}

void itemasync_CopyAsset(const void *a1, uint64_t a2)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954516;
    v9 = 5071;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v7 = v2;
    v8 = 4294954511;
    v9 = 5074;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< Async >>>>", v9, v7);
    return;
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    v11 = v10;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_CopyAsset_cold_1(&v15);
      v13 = 0;
    }

    else
    {
      v12 = playerasync_createCommand(v11, 45, a1, &v14);
      v13 = v14;
      if (!v12)
      {
        *(v14 + 32) = a2;
        playerasync_runSynchronousCommand(v11, v13);
      }
    }

    fpa_releaseCommand(v13);
    CFRelease(v11);
  }

  else
  {
    itemasync_CopyAsset_cold_2();
  }
}

void itemasync_ExtractAndRetainNextSampleBuffer(const void *a1, int a2, int a3, uint64_t a4)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954516;
    v13 = 4022;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 4294954511;
    v13 = 4025;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< Async >>>>", v13, v11);
    return;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v14)
  {
    v15 = v14;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_ExtractAndRetainNextSampleBuffer_cold_1(&v19);
      v17 = 0;
    }

    else
    {
      v16 = playerasync_createCommand(v15, 46, a1, &v18);
      v17 = v18;
      if (!v16)
      {
        *(v18 + 32) = a2;
        *(v17 + 36) = a3;
        *(v17 + 40) = a4;
        playerasync_runSynchronousCommand(v15, v17);
      }
    }

    fpa_releaseCommand(v17);
    CFRelease(v15);
  }

  else
  {
    itemasync_ExtractAndRetainNextSampleBuffer_cold_2();
  }
}

void itemasync_SetCurrentTimeWithOptions(const void *a1, __int128 *a2, const void *a3)
{
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4579, v3);
  }

  else
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithOptions_cold_1(&v15);
        v11 = 0;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v9, a1);
        v10 = playerasync_createCommand(v9, 47, a1, &v14);
        v11 = v14;
        if (!v10)
        {
          v12 = *a2;
          *(v14 + 48) = *(a2 + 2);
          *(v11 + 32) = v12;
          if (a3)
          {
            v13 = CFRetain(a3);
          }

          else
          {
            v13 = 0;
          }

          *(v11 + 56) = v13;
          playerasync_runAsynchronousCommand(v9, v11);
          v11 = 0;
        }
      }

      fpa_releaseCommand(v11);
      CFRelease(v9);
    }

    else
    {
      itemasync_SetCurrentTimeWithOptions_cold_2();
    }
  }
}

void playerasync_removeQueuedSeekCommands(const void *a1, const void *a2)
{
  playerasync_cancelQueuedCommandsMatching(a1, 0x1Eu, a2, 0);
  playerasync_cancelQueuedCommandsMatching(a1, 0x28u, a2, 0);
  playerasync_cancelQueuedCommandsMatching(a1, 0x2Cu, a2, 0);
  playerasync_cancelQueuedCommandsMatching(a1, 0x2Bu, a2, 0);

  playerasync_cancelQueuedCommandsMatching(a1, 0x2Fu, a2, 0);
}

double itemasync_postSeekWasCanceled(uint64_t a1, uint64_t a2)
{
  if (!CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    return itemasync_postSeekWasCanceled_cold_2();
  }

  itemasync_postSeekWasCanceled_cold_1();
  return result;
}

void playerasync_CopyPlayQueueItem(const void *a1, const void *a2, void *a3)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954516;
    v12 = 4193;
    goto LABEL_7;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  *a3 = 0;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954511;
    v12 = 4197;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<<<< Async >>>>", v12, v10);
    return;
  }

  if (!v8)
  {
    v13 = 0;
LABEL_15:
    v14 = playerasync_createCommand(a1, 8, a2, &v16);
    v15 = v16;
    if (!v14)
    {
      *(v16 + 32) = a3;
      playerasync_runSynchronousCommand(a1, v15);
    }

    goto LABEL_17;
  }

  if (*v8)
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954511;
    v12 = 4200;
    goto LABEL_7;
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13 == a1)
  {
    goto LABEL_15;
  }

  playerasync_CopyPlayQueueItem_cold_1(&v17);
  v15 = 0;
LABEL_17:
  fpa_releaseCommand(v15);
  if (v13)
  {
    CFRelease(v13);
  }
}

void playerasync_SetRateWithFade(void *a1, __int128 *a2, float a3)
{
  v11 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4313, v3);
  }

  else
  {
    v8 = playerasync_createCommand(a1, 11, 0, &v11);
    v9 = v11;
    if (!v8)
    {
      *(v11 + 8) = a3;
      v10 = *a2;
      *(v9 + 52) = *(a2 + 2);
      *(v9 + 36) = v10;
      playerasync_runAsynchronousCommand(a1, v9);
      v9 = 0;
    }

    fpa_releaseCommand(v9);
  }
}

void playerasync_StartPreroll(void *a1, int a2, float a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4399, v3);
  }

  else
  {
    v8 = playerasync_createCommand(a1, 12, 0, &v10);
    v9 = v10;
    if (!v8)
    {
      *(v10 + 8) = a3;
      *(v9 + 9) = a2;
      playerasync_runAsynchronousCommand(a1, v9);
      v9 = 0;
    }

    fpa_releaseCommand(v9);
  }
}

void playerasync_StepByCount(void *a1, int a2)
{
  v8 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4424, v2);
  }

  else
  {
    v6 = playerasync_createCommand(a1, 13, 0, &v8);
    v7 = v8;
    if (!v6)
    {
      *(v8 + 8) = a2;
      playerasync_runAsynchronousCommand(a1, v7);
      v7 = 0;
    }

    fpa_releaseCommand(v7);
  }
}

void playerasync_SetRateAndAnchorTime(void *a1, __int128 *a2, __int128 *a3, int a4, float a5)
{
  v16 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4372, v5);
  }

  else
  {
    v12 = playerasync_createCommand(a1, 15, 0, &v16);
    v13 = v16;
    if (!v12)
    {
      *(v16 + 8) = a5;
      v14 = *a2;
      *(v13 + 52) = *(a2 + 2);
      *(v13 + 36) = v14;
      v15 = *a3;
      *(v13 + 76) = *(a3 + 2);
      *(v13 + 60) = v15;
      *(v13 + 21) = a4;
      playerasync_runAsynchronousCommand(a1, v13);
      v13 = 0;
    }

    fpa_releaseCommand(v13);
  }
}

void playerasync_CreatePlaybackItemFromAsset(void *a1, const void *a2, int a3, const void *a4, void **a5)
{
  v8 = 0;
  if (a5)
  {
    *a5 = 0;
    CFGetAllocator(a1);
    FigPlaybackItemGetClassID();
    v6 = CMDerivedObjectCreate();
    playerasync_CreatePlaybackItemFromAsset_cold_2(v6, &v9);
    fpa_releaseCommand(v8);
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< Async >>>>", 3002, v5);
  }
}

void playerasync_SetRateWithOptions(void *a1, const void *a2, float a3)
{
  v11 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 4342, v3);
  }

  else
  {
    v8 = playerasync_createCommand(a1, 17, 0, &v11);
    v9 = v11;
    if (!v8)
    {
      *(v11 + 8) = a3;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v9[8] = v10;
      playerasync_runAsynchronousCommand(a1, v9);
      v9 = 0;
    }

    fpa_releaseCommand(v9);
  }
}

uint64_t playerasync_SetProperties(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  if (!a2)
  {
    playerasync_SetProperties_cold_2(&v16);
LABEL_19:
    v10 = v16;
    goto LABEL_11;
  }

  if (*DerivedStorage)
  {
    playerasync_SetProperties_cold_1(&v16);
    goto LABEL_19;
  }

  v7 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, playerasync_handleSetProperty, &v13, &cf, &v12);
  if (!v7)
  {
    if (v13)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v7 = playerasync_createCommand(a1, 4, 0, &v15);
    if (!v7)
    {
      v8 = cf;
      if (cf)
      {
        v8 = CFRetain(cf);
      }

      v9 = v15;
      *(v15 + 4) = v8;
      v9[5] = 0;
      playerasync_runAsynchronousCommand(a1, v9);
      v15 = 0;
      if (a3)
      {
        v10 = 0;
        *a3 = v12;
        v12 = 0;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v10 = v7;
LABEL_11:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  fpa_releaseCommand(v15);
  return v10;
}

uint64_t playerasync_AddExternalStartupTask(void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerasync_AddExternalStartupTask_cold_2(&v11);
LABEL_8:
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    playerasync_AddExternalStartupTask_cold_1(&v11);
    goto LABEL_8;
  }

  v5 = playerasync_createCommand(a1, 18, 0, &v10);
  if (v5)
  {
    v8 = v10;
  }

  else
  {
    v6 = CFRetain(a2);
    v7 = v10;
    v10[4] = v6;
    playerasync_runAsynchronousCommand(a1, v7);
    v8 = 0;
  }

LABEL_5:
  fpa_releaseCommand(v8);
  return v5;
}

uint64_t playerasync_RemoveExternalStartupTask(void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerasync_RemoveExternalStartupTask_cold_2(&v11);
LABEL_8:
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    playerasync_RemoveExternalStartupTask_cold_1(&v11);
    goto LABEL_8;
  }

  v5 = playerasync_createCommand(a1, 19, 0, &v10);
  if (v5)
  {
    v8 = v10;
  }

  else
  {
    v6 = CFRetain(a2);
    v7 = v10;
    v10[4] = v6;
    playerasync_runAsynchronousCommand(a1, v7);
    v8 = 0;
  }

LABEL_5:
  fpa_releaseCommand(v8);
  return v5;
}

uint64_t playerasync_CopyDisplayedCVPixelBuffer(const void *a1, const void *a2, uint64_t a3)
{
  v11 = 0;
  v6 = playerasync_createCommand(a1, 48, 0, &v11);
  if (v6)
  {
    v9 = v6;
    v8 = v11;
  }

  else
  {
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    v8 = v11;
    *(v11 + 32) = v7;
    *(v8 + 40) = a3;
    playerasync_runSynchronousCommand(a1, v8);
    v9 = *(v8 + 28);
  }

  fpa_releaseCommand(v8);
  return v9;
}

uint64_t playerasync_EndInterruption(const void *a1, const void *a2)
{
  v9 = 0;
  v4 = playerasync_createCommand(a1, 21, 0, &v9);
  if (v4)
  {
    v7 = v4;
    v6 = v9;
  }

  else
  {
    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v9;
    *(v9 + 32) = v5;
    playerasync_runSynchronousCommand(a1, v6);
    v7 = v6[7];
  }

  fpa_releaseCommand(v6);
  return v7;
}

void playerasync_DuckVolume(const void *a1, char a2, float a3, float a4)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 5183, v4);
  }

  else
  {
    v10 = playerasync_createCommand(a1, 23, 0, &v12);
    v11 = v12;
    if (!v10)
    {
      *(v12 + 32) = a2;
      *(v11 + 36) = a3;
      *(v11 + 40) = a4;
      playerasync_runImmediateCommand(a1, v11, 0);
    }

    fpa_releaseCommand(v11);
  }
}

void playerasync_SilentMute(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v6 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< Async >>>>", 5212, v2);
  }

  else
  {
    playerasync_SilentMute_cold_1(a1, &v6, v3, &v7);
  }
}

void playerasync_runSynchronousCommandOnQueue(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_runSynchronousCommandOnQueue_cold_1(a1);
  }

  else
  {
    v4 = DerivedStorage;
    v5 = FigSimpleMutexLock();
    *(v4 + 9) = MEMORY[0x19A8D35D0](v5);
    playerasync_runOneCommand(v2, a1);
    *(v4 + 9) = 0;

    FigSimpleMutexUnlock();
  }
}

void playerasync_runAsynchronousCommandOnQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = (DerivedStorage + 112);
  v4 = *(DerivedStorage + 112);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    goto LABEL_23;
  }

  v5 = *v4;
  *v3 = *v4;
  if (!v5)
  {
    *(DerivedStorage + 120) = v3;
  }

  v6 = *(v4 + 24);
  v7 = 1;
  v8 = v6 > 0x11;
  v9 = (1 << v6) & 0x28A00;
  if (!v8 && v9 != 0)
  {
    *(DerivedStorage + 6) = 1;
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    *(v4 + 28) = -12785;
  }

  else
  {
    v11 = FigSimpleMutexLock();
    *(DerivedStorage + 72) = MEMORY[0x19A8D35D0](v11);
    playerasync_runOneCommand(a1, v4);
    if ((v7 & 1) == 0)
    {
      *(DerivedStorage + 6) = 0;
    }

    *(DerivedStorage + 72) = 0;
    FigSimpleMutexUnlock();
    if (!*(v4 + 28))
    {
      goto LABEL_23;
    }
  }

  v12 = *(v4 + 24);
  if (v12 > 43)
  {
    if (v12 == 44)
    {
      v13 = *(v4 + 16);
      v14 = *(v4 + 108);
    }

    else
    {
      if (v12 != 47)
      {
        goto LABEL_23;
      }

      FigCFDictionaryGetInt32IfPresent();
      v13 = *(v4 + 16);
      v14 = 0;
    }

    goto LABEL_22;
  }

  if (v12 == 43)
  {
    v13 = *(v4 + 16);
    v14 = *(v4 + 40);
LABEL_22:
    itemasync_postSeekWasCanceled(v13, v14);
    goto LABEL_23;
  }

  if (v12 == 12)
  {
    if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
    {
      playerasync_runAsynchronousCommandOnQueue_cold_1();
    }

    else
    {
      playerasync_runAsynchronousCommandOnQueue_cold_2();
    }
  }

LABEL_23:
  fpa_releaseCommand(v4);
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1, uint64_t a2)
{

  return CMNotificationCenterPostNotification();
}

uint64_t FigCPECryptorCreateAirPlay(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v23 = 0;
  if (a4)
  {
    if (a2)
    {
      *a4 = 0;
      if (FigCPECryptorCreateAirPlay_initFigAirPlayTracOnceCheck != -1)
      {
        FigCPECryptorCreateAirPlay_cold_1();
      }

      FigCPECryptorGetClassID();
      v5 = CMDerivedObjectCreate();
      if (v5)
      {
        v20 = v5;
        goto LABEL_34;
      }

      if (v23)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v7 = FigSimpleMutexCreate();
        DerivedStorage[1] = v7;
        if (v7)
        {
          v8 = FigSimpleMutexCreate();
          DerivedStorage[15] = v8;
          if (v8)
          {
            FigCFDictionaryGetBooleanIfPresent();
            StringValue = FigCFDictionaryGetStringValue();
            if (StringValue)
            {
              v10 = StringValue;
              v11 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v11 + 24) = 0;
              v12 = *(v11 + 16);
              *(v11 + 16) = v10;
              CFRetain(v10);
              if (v12)
              {
                CFRelease(v12);
              }

              FigSimpleMutexUnlock();
            }

            FigAssetGetCMBaseObject();
            v14 = v13;
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15)
            {
              v15(v14, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf);
              if (cf)
              {
                DataValue = FigCFDictionaryGetDataValue();
                DerivedStorage[9] = DataValue;
                if (DataValue)
                {
                  CFRetain(DataValue);
                }
              }
            }

            NumberValue = FigCFDictionaryGetNumberValue();
            if (NumberValue)
            {
              NumberValue = CFRetain(NumberValue);
            }

            DerivedStorage[16] = NumberValue;
            v18 = FigCFDictionaryGetNumberValue();
            if (v18)
            {
              v18 = CFRetain(v18);
            }

            DerivedStorage[17] = v18;
            v19 = FigDispatchQueueCreateWithPriority();
            DerivedStorage[18] = v19;
            if (v19)
            {
              v20 = 0;
              *a4 = v23;
              v23 = 0;
              goto LABEL_23;
            }

            FigCPECryptorCreateAirPlay_cold_2(&v24);
          }

          else
          {
            FigCPECryptorCreateAirPlay_cold_3(&v24);
          }
        }

        else
        {
          FigCPECryptorCreateAirPlay_cold_4(&v24);
        }
      }

      else
      {
        FigCPECryptorCreateAirPlay_cold_5(&v24);
      }
    }

    else
    {
      FigCPECryptorCreateAirPlay_cold_6(&v24);
    }
  }

  else
  {
    FigCPECryptorCreateAirPlay_cold_7(&v24);
  }

  v20 = v24;
LABEL_34:
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t __FigCPECryptorCreateAirPlay_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t airplayCryptor_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  airplayCryptor_invalidate_guts(a1);
  FigSimpleMutexDestroy();

  return FigSimpleMutexDestroy();
}

__CFString *airplayCryptor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAirPlayCryptor %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t airplayCryptor_invalidate_guts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 112);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
    v3 = *(DerivedStorage + 112);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  *(DerivedStorage + 112) = 0;
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 72);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 72) = 0;
  }

  v9 = *(DerivedStorage + 80);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 80) = 0;
  }

  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 96) = 0;
  }

  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 104) = 0;
  }

  v13 = *(DerivedStorage + 128);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 128) = 0;
  }

  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 136) = 0;
  }

  v15 = *(DerivedStorage + 144);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 144) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t airplayCryptor_CreateKeyRequest(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    airplayCryptor_CreateKeyRequest_cold_10(&bytes);
    return bytes;
  }

  if (!a4)
  {
    airplayCryptor_CreateKeyRequest_cold_9(&bytes);
    return bytes;
  }

  v10 = DerivedStorage;
  *a4 = 0;
  FigSimpleMutexLock();
  if (*v10)
  {
    airplayCryptor_CreateKeyRequest_cold_1(&bytes);
LABEL_79:
    updated = bytes;
    FigSimpleMutexUnlock();
    return updated;
  }

  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    airplayCryptor_CreateKeyRequest_cold_8(&bytes);
    goto LABEL_79;
  }

  v12 = Mutable;
  value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC0]);
  if (!value)
  {
    v20 = 0;
LABEL_95:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v61, v63);
    updated = v57;
    goto LABEL_96;
  }

  v68 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC8]);
  if (!v68)
  {
    v20 = 0;
    goto LABEL_95;
  }

  v13 = *MEMORY[0x1E6962AD0];
  v14 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AD0]);
  if (!v14)
  {
    v14 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960D38]);
  }

  v15 = *MEMORY[0x1E6962AB8];
  v16 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AB8]);
  if (v16)
  {
    v17 = v16;
    if (v14)
    {
      CFDictionarySetValue(v12, v13, v14);
    }

    goto LABEL_16;
  }

  v18 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AE8]);
  if (v14 | v18)
  {
    v17 = v18;
    if (v14)
    {
      CFDictionarySetValue(v12, v13, v14);
    }

    if (!v17)
    {
LABEL_17:
      v19 = *(v10 + 16);
      if (v19)
      {
        v20 = CFRetain(v19);
        if (v20)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E6962AB0], v20);
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B10]);
      v22 = v21;
      if (!v21 || (v23 = CFGetTypeID(v21), v23 == CFDataGetTypeID()))
      {
        v60 = v4;
        v67 = a4;
        v69 = v12;
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962AF8]);
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962B18]);
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962AE0]);
        v62 = *(v10 + 24);
        FigSimpleMutexUnlock();
        v24 = CMBaseObjectGetDerivedStorage();
        *&length[1] = 0;
        v25 = *MEMORY[0x1E695E480];
        v26 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v27 = v26;
        if (*v24)
        {
          UInt32 = 0;
          v73 = -12785;
          v12 = v69;
          v53 = v67;
          if (!v26)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        v64 = v22;
        v28 = CMBaseObjectGetDerivedStorage();
        v29 = *(v28 + 128);
        if (v29)
        {
          v30 = CFRetain(v29);
        }

        else
        {
          v30 = 0;
        }

        v31 = *(v28 + 136);
        if (v31)
        {
          v32 = CFRetain(v31);
        }

        else
        {
          v32 = 0;
        }

        bytes = 0;
        v66 = v20;
        if (a1)
        {
          v33 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v33)
          {
            v34 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v34)
            {
              v35 = v34;
              FigCFDictionarySetInt32();
              if (v30)
              {
                CFDictionarySetValue(v33, @"lK1", v30);
              }

              if (v32)
              {
                CFDictionarySetValue(v33, @"DhpWkh3rnR", v32);
              }

              CFDictionarySetValue(v33, @"Y7bdIsnh7", value);
              if (nS1Q9ljw9esy9(v33, v35))
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v61, v64);
                v39 = v56;
                v38 = 0;
                v65 = 0;
              }

              else
              {
                FigCFDictionaryGetInt64IfPresent();
                v65 = bytes;
                v36 = CFDictionaryGetValue(v35, @"xNJu5eepP");
                if (v36 && (v37 = CFRetain(v36)) != 0)
                {
                  v38 = v37;
                  v39 = 0;
                }

                else
                {
                  airplayCryptor_CreateKeyRequest_cold_2(&v73);
                  v38 = 0;
                  v39 = v73;
                }
              }

              CFRelease(v33);
              CFRelease(v35);
            }

            else
            {
              airplayCryptor_CreateKeyRequest_cold_3(v33, &v73);
              v38 = 0;
              v65 = 0;
              v39 = v73;
            }

            if (v30)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          airplayCryptor_CreateKeyRequest_cold_4(&v73);
        }

        else
        {
          airplayCryptor_CreateKeyRequest_cold_5(&v73);
        }

        v38 = 0;
        v65 = 0;
        v39 = v73;
        if (v30)
        {
LABEL_43:
          CFRelease(v30);
        }

LABEL_44:
        if (v32)
        {
          CFRelease(v32);
        }

        v73 = v39;
        if (v39)
        {
          UInt32 = 0;
        }

        else
        {
          UInt32 = FigCFNumberCreateUInt32();
          v41 = dispatch_semaphore_create(0);
          if (v41)
          {
            v42 = v41;
            FigSimpleMutexLock();
            *(v24 + 14) = v42;
            FigSimpleMutexUnlock();
            dispatch_retain(v42);
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            v43 = CMBaseObjectGetDerivedStorage();
            v20 = v66;
            if (a1 && !*v43)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
            }

            v44 = dispatch_time(0, 8000000000);
            v45 = dispatch_semaphore_wait(v42, v44);
            v46 = *v24;
            if (v45)
            {
              v12 = v69;
              v47 = v65;
              if (v46)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v64);
                v73 = v58;
                goto LABEL_100;
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v64);
              v73 = v48;
            }

            else
            {
              v47 = v65;
              if (*v24)
              {
                airplayCryptor_CreateKeyRequest_cold_6(&v73);
                v12 = v69;
                goto LABEL_100;
              }

              FigSimpleMutexLock();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetValueIfPresent();
              FigSimpleMutexUnlock();
              v48 = v73;
              v12 = v69;
            }

            v49 = 0;
            if (v48 || !*&length[1])
            {
              goto LABEL_60;
            }

            bytes = 0;
            length[0] = 0;
            BytePtr = CFDataGetBytePtr(*&length[1]);
            v51 = CFDataGetLength(*&length[1]);
            v52 = f5zGmdURga6BZ(v47, BytePtr, v51, &bytes, length);
            v73 = v52;
            if (!v52)
            {
              v49 = CFDataCreate(v25, bytes, length[0]);
              Ud5PNQt99i(bytes);
LABEL_60:
              v53 = v67;
              *v67 = v49;
              goto LABEL_61;
            }

            airplayCryptor_CreateKeyRequest_cold_7(v52, length, &bytes);
LABEL_100:
            v53 = v67;
LABEL_61:
            dispatch_release(v42);
            if (!v38)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          v73 = -12786;
        }

        v12 = v69;
        v53 = v67;
        v20 = v66;
        if (!v38)
        {
LABEL_63:
          if (!v27)
          {
LABEL_65:
            if (UInt32)
            {
              CFRelease(UInt32);
            }

            updated = v73;
            if (!v73 && v62)
            {
              updated = FigAirPlaySecureStopRouterUpdateRecord(v20, value, v68, *v53);
            }

            goto LABEL_70;
          }

LABEL_64:
          CFRelease(v27);
          goto LABEL_65;
        }

LABEL_62:
        CFRelease(v38);
        goto LABEL_63;
      }

      goto LABEL_95;
    }

LABEL_16:
    CFDictionarySetValue(v12, v15, v17);
    goto LABEL_17;
  }

  v20 = 0;
  updated = 4294954516;
LABEL_96:
  FigSimpleMutexUnlock();
LABEL_70:
  CFRelease(v12);
  if (v20)
  {
    CFRelease(v20);
  }

  return updated;
}

uint64_t airplayCryptor_SetKeyRequestResponse(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
      v8 = *(v6 + 64);
      *(v6 + 64) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = *(v6 + 48);
    *(v6 + 48) = a2;
    CFRetain(a2);
    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    airplayCryptor_SetKeyRequestResponse_cold_1(&v11);
    return v11;
  }
}

uint64_t FigSampleBufferAudioRendererCentralCreateWithOptions(const __CFData *Value, const void *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    v7 = CFDictionaryGetValue(theDict, @"ClientAuditToken");
    if (v7)
    {
      v8 = v7;
      memset(buffer, 0, 32);
      v9 = CFGetTypeID(v7);
      if (v9 != CFDataGetTypeID() || CFDataGetLength(v8) != 32)
      {
        return 4294950915;
      }

      v30.location = 0;
      v30.length = 32;
      CFDataGetBytes(v8, v30, buffer);
      v26 = *buffer;
      v27 = *&buffer[16];
      cf = 0;
      *type = 0;
      FigNote_AllowInternalDefaultLogs();
      fig_note_initialize_category_with_default_work_cf();
      fig_note_initialize_category_with_default_work_cf();
      Internal = 4294950916;
      if (!a2 || !a4)
      {
LABEL_19:
        if (cf)
        {
          CFRelease(cf);
        }

        if (!Internal)
        {
          goto LABEL_22;
        }

        return Internal;
      }

      if (FigPreferAudioSessionOverCMSession())
      {
        *v24 = v26;
        v25 = v27;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(Value, v24, @"SBAR", &cf);
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          v12 = cf;
          if (!cf)
          {
            FigSampleBufferAudioRendererCentralCreateWithOptions_cold_1(v24);
LABEL_44:
            Internal = LODWORD(v24[0]);
            goto LABEL_19;
          }

LABEL_17:
          *v24 = v26;
          v25 = v27;
          Internal = audioRendererCentral_createInternal(Value, a2, v12, v24, type);
          if (Internal)
          {
            if (*type)
            {
              CFRelease(*type);
            }
          }

          else
          {
            *a4 = *type;
          }

          goto LABEL_19;
        }
      }

      else
      {
        *v24 = v26;
        v25 = v27;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(Value, v24, &cf);
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          v12 = cf;
          if (!cf)
          {
            FigSampleBufferAudioRendererCentralCreateWithOptions_cold_2(v24);
            goto LABEL_44;
          }

          goto LABEL_17;
        }
      }

      Internal = UsingPrimaryAVAudioSessionSiblingForAuditToken;
      goto LABEL_19;
    }
  }

  v24[0] = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  Internal = 4294950916;
  if (!a2 || !a4)
  {
    return Internal;
  }

  Internal = audioRendererCentral_createInternal(Value, a2, 0, xmmword_196E73288, v24);
  if (!Internal)
  {
    *a4 = v24[0];
LABEL_22:
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 96) = 0;
    v14 = (DerivedStorage + 96);
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(0, v14, 10, 0x600u);
    }

    if (dword_1EAF16C90)
    {
      LODWORD(v26) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v26;
      v17 = type[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = *a4;
        if (v19)
        {
          v20 = (CMBaseObjectGetDerivedStorage() + 96);
        }

        else
        {
          v20 = "";
        }

        *buffer = 136315650;
        *&buffer[4] = "FigSampleBufferAudioRendererCentralCreateWithOptions";
        *&buffer[12] = 2048;
        *&buffer[14] = v19;
        *&buffer[22] = 2082;
        *&buffer[24] = v20;
        _os_log_send_and_compose_impl(v18, 0, v24, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v17, "<< FigSBARCentral >> %s: [%p] %{public}s Created", buffer, 32);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (v24[0])
  {
    CFRelease(v24[0]);
  }

  return Internal;
}

uint64_t audioRendererCentral_createInternal(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4, CFTypeRef *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  cf = 0;
  FigSampleBufferAudioRendererGetClassID();
  v9 = CMDerivedObjectCreate();
  v10 = v21;
  *(v21 + 6) = v9;
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a2;
    CFRetain(a2);
    v12 = a4[1];
    *(DerivedStorage + 16) = *a4;
    *(DerivedStorage + 32) = v12;
    __snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "com.apple.coremedia.samplebufferaudiorenderercentral.state[%p]", cf);
    v13 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 56) = v13;
    if (v13 && (__snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "com.apple.coremedia.samplebufferaudiorenderercentral.notificationQueue[%p]", cf), v14 = dispatch_queue_create(label, 0), (*(DerivedStorage + 8) = v14) != 0))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      if (a3)
      {
        v15 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __audioRendererCentral_createInternal_block_invoke;
        block[3] = &unk_1E747EC60;
        block[4] = &v20;
        block[5] = cf;
        block[6] = a3;
        dispatch_sync(v15, block);
      }

      v10 = v21;
      if (!*(v21 + 6))
      {
        *a5 = cf;
        goto LABEL_8;
      }
    }

    else
    {
      v10 = v21;
      *(v21 + 6) = -16382;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    v10 = v21;
  }

LABEL_8:
  v16 = *(v10 + 6);
  _Block_object_dispose(&v20, 8);
  return v16;
}

void sub_1964BB034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t audioRendererCentral_subRendererNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void audioRendererCentral_subRendererBufferedAirPlayInUseNotificationHandler(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer(a2);
}

uint64_t __audioRendererCentral_createInternal_block_invoke(void *a1)
{
  result = audioRendererCentral_setFigAudioSession(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

__CFString *audioRendererCentral_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererCentral=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" subRenderer=%p", *DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @" audioSession=%@", *(DerivedStorage + 64));
  if (*(DerivedStorage + 80))
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @" didSetAudioSessionStateToPlaying=%s", v7);
  if (*(DerivedStorage + 81))
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @" didCallActivateOnAudioSession=%s", v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRendererCentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual())
  {
    if (*(DerivedStorage + 48))
    {
      cf = FigCFNumberCreateUInt32();
      if (cf)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294950914;
      }
    }

    else
    {
      v8 = 4294954513;
    }
  }

  else
  {
    v9 = *DerivedStorage;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v8 = v10(v9, a2, a3, &cf);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t audioRendererCentral_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  if (FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFNumberGetTypeID())
      {
        SInt32 = FigCFNumberGetSInt32();
        v9 = *(DerivedStorage + 32);
        v45 = *(DerivedStorage + 16);
        v46 = v9;
        if (FigPreferAudioSessionOverCMSession())
        {
          v10 = *MEMORY[0x1E695E480];
          cf[0] = v45;
          cf[1] = v46;
          v11 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(v10, SInt32, cf, @"SBAR", &v39);
        }

        else
        {
          v15 = AudioSessionCopyCMSessionForSessionID();
          v10 = *MEMORY[0x1E695E480];
          v11 = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], v15, &v39);
          if (v15)
          {
            CFRelease(v15);
          }
        }

        *(v41 + 6) = v11;
        if (v11)
        {
          goto LABEL_40;
        }

        v16 = v39;
        v17 = *(DerivedStorage + 72);
        *&cf[0] = 0;
        *&v45 = 0;
        if (!v17)
        {
          if (v39)
          {
            goto LABEL_28;
          }

          v13 = 0;
          v20 = 0;
          goto LABEL_34;
        }

        v18 = *(CMBaseObjectGetVTable() + 16);
        if (v18)
        {
          v19 = *(v18 + 8);
          if (!v19)
          {
            goto LABEL_32;
          }

          v20 = v19(v17, @"FAS_CoreSessionID", v10, cf);
          if (v20)
          {
            v13 = 0;
            goto LABEL_34;
          }

          if (v16)
          {
            v21 = *(CMBaseObjectGetVTable() + 16);
            if (v21)
            {
              v22 = *(v21 + 8);
              if (v22)
              {
                v20 = v22(v16, @"FAS_CoreSessionID", v10, &v45);
                v23 = v45;
                if (!v20)
                {
                  if (FigCFEqual())
                  {
                    v16 = v17;
                  }

LABEL_28:
                  v13 = CFRetain(v16);
                  v20 = 0;
                  v23 = v45;
                  if (!v45)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_29;
                }

                v13 = 0;
                if (v45)
                {
LABEL_29:
                  CFRelease(v23);
                }

LABEL_34:
                if (*&cf[0])
                {
                  CFRelease(*&cf[0]);
                }

                *(v41 + 6) = v20;
                if (!v20)
                {
                  if (v13)
                  {
                    v27 = *(DerivedStorage + 56);
                    v38[0] = MEMORY[0x1E69E9820];
                    v38[1] = 3221225472;
                    v38[2] = __audioRendererCentral_SetProperty_block_invoke;
                    v38[3] = &unk_1E747EC60;
                    v38[4] = &v40;
                    v38[5] = a1;
                    v38[6] = v13;
                    dispatch_sync(v27, v38);
                    goto LABEL_39;
                  }

                  goto LABEL_45;
                }

                goto LABEL_10;
              }

LABEL_32:
              v13 = 0;
              v20 = -19225;
              goto LABEL_34;
            }
          }
        }

        v13 = 0;
        v20 = -19221;
        goto LABEL_34;
      }
    }

LABEL_45:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, block, v32);
LABEL_44:
    *(v41 + 6) = v26;
    goto LABEL_40;
  }

  if (!FigCFEqual())
  {
    v24 = *DerivedStorage;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v26 = v25(v24, a2, a3);
    }

    else
    {
      v26 = -12782;
    }

    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v12 = CFGetTypeID(a3);
  if (v12 != FigAudioSessionGetTypeID())
  {
    goto LABEL_45;
  }

  v13 = CFRetain(a3);
  v14 = *(DerivedStorage + 56);
  block = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __audioRendererCentral_SetProperty_block_invoke_2;
  v34 = &unk_1E747EC60;
  v35 = &v40;
  v36 = a1;
  v37 = v13;
  dispatch_sync(v14, &block);
LABEL_10:
  if (v13)
  {
LABEL_39:
    CFRelease(v13);
  }

LABEL_40:
  if (v39)
  {
    CFRelease(v39);
  }

  v28 = *(v41 + 6);
  _Block_object_dispose(&v40, 8);
  return v28;
}

void sub_1964BB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void audioRendererCentral_postNotification(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __audioRendererCentral_postNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_async(v5, block);
}

void __audioRendererCentral_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *audioRendererCentral_synchronizerCentralClientAccessProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer_Central <FigSampleBufferRenderSynchronizerCentralClientAccessProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRendererCentral_ProcessRateChange(uint64_t a1, char a2, float a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __audioRendererCentral_ProcessRateChange_block_invoke;
  block[3] = &unk_1E747ECA8;
  block[4] = &v12;
  block[5] = a1;
  v11 = a2;
  v10 = a3;
  dispatch_sync(v6, block);
  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1964BBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t audioRendererCentral_QueueIsAboveHighWaterLevel(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 1;
  }

  return v2(v1);
}

uint64_t audioRendererCentral_Flush(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t audioRendererCentral_CopyClock(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererCentral_SetRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = v8;
  v11 = v9;
  return v6(v5, &v10, a3);
}

uint64_t audioRendererCentral_FlushFromMediaTime(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    return v8(v7, &v13, a3, a4);
  }

  else
  {
    v9 = 4294954514;
    if (a3)
    {
      a3(4294954514, a4);
    }
  }

  return v9;
}

uint64_t audioRendererCentral_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  v13 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v16 = v12;
  v17 = v13;
  v14 = v10;
  v15 = v11;
  return v8(v7, &v16, &v14, a4);
}

void audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (DerivedStorage[8])
  {
    v2 = *DerivedStorage;
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(v2, @"BufferedAirPlayInUse", *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return _os_log_send_and_compose_impl(v21, 0, va, 128, a5, v19, v20, a8);
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_9_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

BOOL OUTLINED_FUNCTION_14_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_15_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

void sbcins_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }
}

__CFString *sbcins_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerSbufInspector %p>", a1);
  return Mutable;
}

uint64_t sbcins_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t sbcins_IsQueueAtOrAboveHighWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcins_IsQueueBelowLowWater(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcins_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcins_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t sbcins_GetPendingSampleBufferCount(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t sbcins_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcins_Flush(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t ckbremote_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ckbremote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E747ECF0;
  block[4] = &v3;
  if (ckbremote_ensureClientEstablished_sFigContentKeyBossRemoteClientSetupOnce != -1)
  {
    dispatch_once(&ckbremote_ensureClientEstablished_sFigContentKeyBossRemoteClientSetupOnce, block);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __ckbremote_ensureClientEstablished_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ckbremote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

void __ckbremote_requestStatusCallback_keyRequestDidSucceed_block_invoke(void *a1)
{
  (*(a1[4] + 112))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestStatusCallback_keyRequestDidFail_block_invoke(void *a1)
{
  (*(a1[4] + 120))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestStatusCallback_keyRequestDidUpdateContentKeyBossToNewBoss_block_invoke(void *a1)
{
  (*(a1[4] + 128))(a1[5], a1[6]);
  v2 = a1[5];
  if (v2)
  {

    CFRelease(v2);
  }
}

void __ckbremote_requestHandlingCallback_keyRequestDidSucceed_block_invoke(void *a1)
{
  (*(a1[4] + 56))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_keyRequestDidFail_block_invoke(void *a1)
{
  (*(a1[4] + 64))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didProvideRequest_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 72));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didProvideRenewingRequest_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 40))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 72));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didUpdatePersistableKey_block_invoke(void *a1)
{
  (*(a1[4] + 48))(a1[5], a1[6], a1[7], a1[8]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didExternalProtectionStatusChange_block_invoke(void *a1)
{
  (*(a1[4] + 72))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef ckbremote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigContentKeyBossRemote %p %lld]", a1, *DerivedStorage);
}

uint64_t ckbremote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {

      return FigXPCSendStdCopyPropertyMessage();
    }

    else
    {
      ckbremote_copyProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ckbremote_copyProperty_cold_2(&v8);
    return v8;
  }
}

uint64_t ckbremote_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {

      return FigXPCSendStdSetPropertyMessage();
    }

    else
    {
      ckbremote_setProperty_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    ckbremote_setProperty_cold_2(&v7);
    return v7;
  }
}

void *__copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *(v1 - 80) = 0;
  *(v1 - 72) = 0;

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(v0, (v1 - 72));
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return FigXPCRelease();
}

uint64_t FigGaplessAudioEditCursorCreate(const void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, CFTypeRef *a5)
{
  cf = 0;
  v5 = *(MEMORY[0x1E6960C78] + 48);
  *&v27.source.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v27.target.start.value = v5;
  v6 = *(MEMORY[0x1E6960C78] + 80);
  *&v27.target.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v27.target.duration.timescale = v6;
  v7 = *(MEMORY[0x1E6960C78] + 16);
  *&v27.source.start.value = *MEMORY[0x1E6960C78];
  *&v27.source.start.epoch = v7;
  if (!a1)
  {
    FigGaplessAudioEditCursorCreate_cold_6(&v31);
    goto LABEL_22;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    FigGaplessAudioEditCursorCreate_cold_5(&v31);
LABEL_22:
    value_low = LODWORD(v31.source.start.value);
    goto LABEL_23;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    FigGaplessAudioEditCursorCreate_cold_4(&v31);
    goto LABEL_22;
  }

  if (!a5)
  {
    FigGaplessAudioEditCursorCreate_cold_3(&v31);
    goto LABEL_22;
  }

  FigEditCursorGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    value_low = v13;
    FigGaplessAudioEditCursorCreate_cold_1();
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a1);
  v16 = *(a2 + 16);
  v15 = *(a2 + 32);
  *(DerivedStorage + 8) = *a2;
  *(DerivedStorage + 24) = v16;
  *(DerivedStorage + 40) = v15;
  Mutable = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = Mutable;
  if (!Mutable)
  {
    FigGaplessAudioEditCursorCreate_cold_2(&v31);
    goto LABEL_22;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v18)
  {
    v19 = v18(a1, &v27);
    if (!v19)
    {
      v31 = v27;
      gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(DerivedStorage, &v31);
      *&v26.value = *a3;
      v26.epoch = *(a3 + 16);
      v20 = *(DerivedStorage + 56);
      if (v20)
      {
        Count = CFArrayGetCount(v20);
        if (Count >= 1)
        {
          v22 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v22);
            memset(&v31, 0, sizeof(v31));
            CMTimeMappingMakeFromDictionary(&v31, ValueAtIndex);
            if (!v22)
            {
              *&time1.start.value = *&v26.value;
              time1.start.epoch = v26.epoch;
              time2 = v31.target.start;
              if (CMTimeCompare(&time1.start, &time2) < 0)
              {
                break;
              }
            }

            time1 = v31.target;
            time2 = v26;
            if (CMTimeRangeContainsTime(&time1, &time2))
            {
              goto LABEL_27;
            }

            if (Count == ++v22)
            {
              goto LABEL_26;
            }
          }

          v22 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        Count = 0;
      }

LABEL_26:
      v22 = Count - 1;
LABEL_27:
      value_low = 0;
      *(DerivedStorage + 64) = v22;
      *a5 = cf;
      return value_low;
    }

    value_low = v19;
  }

  else
  {
    value_low = 4294954514;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = *MEMORY[0x1E6960C78];
  v54 = *(MEMORY[0x1E6960C78] + 8);
  v3 = *(MEMORY[0x1E6960C78] + 40);
  v50 = *(MEMORY[0x1E6960C78] + 24);
  v51 = v3;
  flags = *(MEMORY[0x1E6960C78] + 60);
  v52 = *(MEMORY[0x1E6960C78] + 56);
  v32 = *MEMORY[0x1E6960C78];
  v47 = v50;
  v48 = v3;
  v49 = v52;
  v45 = *a2;
  v5 = *(a2 + 12);
  v46 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  v42 = *(a2 + 24);
  v43 = v7;
  v8 = *(a2 + 60);
  v44 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v41 = v32;
  v13 = *(MEMORY[0x1E6960C78] + 16);
  v57 = v50;
  v58 = v3;
  timescale = v52;
  v28 = v13;
  value = *(MEMORY[0x1E6960C78] + 72);
  v30 = *(MEMORY[0x1E6960C78] + 84);
  v26 = *(MEMORY[0x1E6960C78] + 88);
  epoch = *(MEMORY[0x1E6960C78] + 64);
  v25 = *(MEMORY[0x1E6960C78] + 80);
  v31 = v11;
  if ((v5 & 0x1D) == 1 || (v8 & 1) == 0 || (v11 & 0x100000000) == 0 || v12 || v10 < 0)
  {
    memset(&v40, 0, sizeof(v40));
    v17 = *(a1 + 24);
    *&range.source.start.value = *(a1 + 8);
    *&range.source.start.epoch = v17;
    *&range.source.duration.timescale = *(a1 + 40);
    CMTimeRangeGetEnd(&v40, &range.source);
    v39 = **&MEMORY[0x1E6960C70];
    range.source.start.value = v45;
    range.source.start.timescale = v46;
    range.source.start.flags = v5;
    range.source.start.epoch = 0;
    *&rhs.start.value = *(a1 + 8);
    rhs.start.epoch = *(a1 + 24);
    CMTimeAdd(&v39, &range.source.start, &rhs.start);
    range.source.start = v40;
    rhs.start = v39;
    if (CMTimeCompare(&range.source.start, &rhs.start) <= 0)
    {
      rhs.start.value = *(&v43 + 1);
      rhs.start.timescale = v44;
      rhs.start.flags = v8;
      rhs.start.epoch = 0;
      rhs.duration.value = v10;
      *&rhs.duration.timescale = v31;
      rhs.duration.epoch = v12;
      CMTimeMappingMakeEmpty(&range, &rhs);
    }

    else
    {
      rhs.start.value = *(&v43 + 1);
      range.source.start = v39;
      rhs.start.timescale = v44;
      rhs.start.flags = v8;
      rhs.start.epoch = 0;
      rhs.duration.value = v10;
      *&rhs.duration.timescale = v31;
      rhs.duration.epoch = v12;
      memset(&v36, 0, sizeof(v36));
      *&duration.start.value = v42;
      duration.start.epoch = v43;
      CMTimeRangeMake(&v36, &range.source.start, &duration.start);
      memset(&v35, 0, sizeof(v35));
      range.source = v36;
      CMTimeRangeGetEnd(&v35, &range.source);
      range.source.start = v40;
      duration.start = v35;
      if (CMTimeCompare(&range.source.start, &duration.start) < 0)
      {
        *&range.source.start.value = v42;
        range.source.start.epoch = v43;
        duration.start.value = v10;
        *&duration.start.timescale = v31;
        duration.start.epoch = v12;
        v18 = CMTimeCompare(&range.source.start, &duration.start);
        v19 = *(MEMORY[0x1E6960C98] + 16);
        *&duration.start.value = *MEMORY[0x1E6960C98];
        *&duration.start.epoch = v19;
        *&duration.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
        lhs.start = v40;
        v34 = v39;
        CMTimeSubtract(&range.source.start, &lhs.start, &v34);
        v36.duration = range.source.start;
        if (v18)
        {
          range.source.start = v36.duration;
          lhs.start.value = v10;
          *&lhs.start.timescale = v31;
          lhs.start.epoch = v12;
          *&v34.value = v42;
          v34.epoch = v43;
          CMTimeMultiplyTimeByTimeRatio();
        }

        else
        {
          rhs.duration = v36.duration;
        }

        range.source.start.value = *(&v43 + 1);
        range.source.start.timescale = v44;
        range.source.start.flags = v8;
        range.source.start.epoch = 0;
        lhs.start = rhs.duration;
        CMTimeAdd(&duration.start, &range.source.start, &lhs.start);
        lhs.start.value = v10;
        *&lhs.start.timescale = v31;
        lhs.start.epoch = v12;
        v34 = rhs.duration;
        CMTimeSubtract(&range.source.start, &lhs.start, &v34);
        duration.duration = range.source.start;
        lhs = duration;
        CMTimeMappingMakeEmpty(&range, &lhs);
        v41 = *&range.source.start.value;
        v57 = *&range.source.duration.value;
        v58 = *&range.source.duration.epoch;
        flags = range.target.start.flags;
        timescale = range.target.start.timescale;
        epoch = range.target.start.epoch;
        v28 = range.source.start.epoch;
        value = range.target.duration.value;
        v30 = range.target.duration.flags;
        v25 = range.target.duration.timescale;
        v26 = range.target.duration.epoch;
      }

      duration = v36;
      lhs = rhs;
      CMTimeMappingMake(&range, &duration, &lhs);
    }

    lhs.start.value = range.source.start.value;
    v5 = range.source.start.flags;
    lhs.start.timescale = range.source.start.timescale;
    *&duration.start.value = *&range.source.duration.value;
    *&duration.start.epoch = *&range.source.duration.epoch;
    v8 = range.target.start.flags;
    duration.duration.timescale = range.target.start.timescale;
    v10 = range.target.duration.value;
    v14 = range.target.duration.epoch;
    v16 = flags & 1;
    if (flags)
    {
      if ((v30 & (v26 == 0) & (value >= 0)) != 0)
      {
        v20 = v6;
      }

      else
      {
        v20 = v28;
      }

      v21 = epoch;
      if ((v30 & (v26 == 0) & (value >= 0)) != 0)
      {
        v21 = v6;
      }

      epoch = v21;
      v28 = v20;
    }

    v31 = *&range.target.duration.timescale;
    v9 = v6;
  }

  else
  {
    v14 = 0;
    lhs.start.value = *a2;
    lhs.start.timescale = *(a2 + 8);
    v15 = *(a2 + 40);
    *&duration.start.value = *(a2 + 24);
    *&duration.start.epoch = v15;
    duration.duration.timescale = *(a2 + 56);
    v16 = flags & 1;
  }

  v53 = lhs.start.value;
  v54 = lhs.start.timescale;
  v50 = *&duration.start.value;
  v51 = *&duration.start.epoch;
  v52 = duration.duration.timescale;
  v33 = v41;
  v49 = timescale;
  v47 = v57;
  v48 = v58;
  CFArrayRemoveAllValues(*(a1 + 56));
  *&range.source.duration.value = v50;
  v22 = *MEMORY[0x1E695E480];
  range.source.start.value = v53;
  range.source.start.timescale = v54;
  range.source.start.flags = v5;
  range.source.start.epoch = v6;
  *&range.source.duration.epoch = v51;
  range.target.start.timescale = v52;
  range.target.start.flags = v8;
  range.target.start.epoch = v9;
  range.target.duration.value = v10;
  *&range.target.duration.timescale = v31;
  range.target.duration.epoch = v14;
  v23 = CMTimeMappingCopyAsDictionary(&range, v22);
  CFArrayAppendValue(*(a1 + 56), v23);
  if (v16)
  {
    if ((v30 & 1) != 0 && !v26 && (value & 0x8000000000000000) == 0)
    {
      *&range.source.start.value = v33;
      *&range.source.duration.value = v47;
      range.source.start.epoch = v28;
      *&range.source.duration.epoch = v48;
      range.target.start.timescale = v49;
      range.target.start.flags = flags;
      range.target.start.epoch = epoch;
      range.target.duration.value = value;
      range.target.duration.timescale = v25;
      range.target.duration.flags = v30;
      range.target.duration.epoch = 0;
      v24 = CMTimeMappingCopyAsDictionary(&range, v22);
      CFArrayAppendValue(*(a1 + 56), v24);
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void gaec_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *gaec_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(DerivedStorage + 8);
  v5 = *(DerivedStorage + 40);
  *&range.start.epoch = *(DerivedStorage + 24);
  *&range.duration.timescale = v5;
  *&range.start.value = v4;
  v6 = CMTimeRangeCopyDescription(v3, &range);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigGaplessAudioEditCursor %p GaplessTimeRange %@>", a1, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t gaec_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  FigEditCursorGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t gaec_Copy(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &v15);
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      v8 = CMDerivedObjectCreate();
      if (v8)
      {
        v13 = v8;
        gaec_Copy_cold_1();
      }

      else
      {
        v9 = CMBaseObjectGetDerivedStorage();
        *v9 = v15;
        v15 = 0;
        v10 = *(DerivedStorage + 40);
        v11 = *(DerivedStorage + 24);
        *(v9 + 8) = *(DerivedStorage + 8);
        *(v9 + 24) = v11;
        *(v9 + 40) = v10;
        CFGetAllocator(a1);
        MutableCopy = FigCFArrayCreateMutableCopy();
        *(v9 + 56) = MutableCopy;
        if (MutableCopy)
        {
          v13 = 0;
          *(v9 + 64) = *(DerivedStorage + 64);
          *a2 = 0;
        }

        else
        {
          gaec_Copy_cold_2(&v16);
          v13 = v16;
        }
      }
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

uint64_t gaec_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2 >= 1)
  {
    v5 = a2 + 1;
    v6 = MEMORY[0x1E6960C78];
    while (1)
    {
      Count = v4[7];
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      v8 = v4[8] + 1;
      if (Count <= v8)
      {
        v9 = v6[3];
        v36 = v6[2];
        v37 = v9;
        v10 = v6[5];
        v38 = v6[4];
        v39 = v10;
        v11 = v6[1];
        v34 = *v6;
        v35 = v11;
        v12 = *v4;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v13)
        {
          return 4294954514;
        }

        result = v13(v12, 1);
        if (result)
        {
          return result;
        }

        v15 = *v4;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v16)
        {
          return 4294954514;
        }

        result = v16(v15, &v34);
        if (result)
        {
          return result;
        }

        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(v4, &v28);
        v4[8] = 0;
      }

      else
      {
        v4[8] = v8;
      }

      if (--v5 <= 1)
      {
        return 0;
      }
    }
  }

  if ((a2 & 0x80000000) == 0)
  {
    return 0;
  }

  v17 = *(DerivedStorage + 64);
  v18 = MEMORY[0x1E6960C78];
  while (v17 > 0)
  {
    --v17;
LABEL_26:
    v4[8] = v17;
    if (__CFADD__(a2++, 1))
    {
      return 0;
    }
  }

  v19 = v18[3];
  v36 = v18[2];
  v37 = v19;
  v20 = v18[5];
  v38 = v18[4];
  v39 = v20;
  v21 = v18[1];
  v34 = *v18;
  v35 = v21;
  v22 = *v4;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v23)
  {
    result = v23(v22, 0xFFFFFFFFLL);
    if (result)
    {
      return result;
    }

    v24 = *v4;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v25)
    {
      result = v25(v24, &v34);
      if (result)
      {
        return result;
      }

      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(v4, &v28);
      v26 = v4[7];
      if (v26)
      {
        v17 = CFArrayGetCount(v26) - 1;
      }

      else
      {
        v17 = -1;
      }

      goto LABEL_26;
    }
  }

  return 4294954514;
}

uint64_t gaec_GetEditSegment(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), *(DerivedStorage + 64));
  memset(&v9, 0, sizeof(v9));
  CMTimeMappingMakeFromDictionary(&v9, ValueAtIndex);
  v5 = *&v9.target.start.value;
  a2[2] = *&v9.source.duration.timescale;
  a2[3] = v5;
  v6 = *&v9.target.duration.timescale;
  a2[4] = *&v9.target.start.epoch;
  a2[5] = v6;
  v7 = *&v9.source.start.epoch;
  *a2 = *&v9.source.start.value;
  a2[1] = v7;
  return 0;
}

uint64_t FigVirtualDisplaySessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigVirtualDisplaySessionGetClassID_once != -1)
  {
    FigVirtualDisplaySessionGetClassID_cold_1();
  }

  return sVirtualDisplaySessionClassID;
}

uint64_t __FigVirtualDisplaySessionGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigVirtualDisplaySessionGetClassID_once != -1)
  {
    FigVirtualDisplaySessionGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVirtualDisplaySessionIsIdle(uint64_t a1, BOOL *a2)
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(a1, @"IsIdle", *MEMORY[0x1E695E480], &cf);
  v6 = cf;
  if (!v5)
  {
    *a2 = cf == *MEMORY[0x1E695E4D0];
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

void feServer_LoadCelestial()
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (BundleWithIdentifier)
  {
    v1 = CFBundleCopyBundleURL(BundleWithIdentifier);
    if (v1)
    {
      v2 = v1;
      v3 = *MEMORY[0x1E695E480];
      v4 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"../../PrivateFrameworks/Celestial.framework", v1);
      if (v4)
      {
        v5 = v4;
        feServer_LoadCelestial_resultBundle = CFBundleCreate(v3, v4);
        CFRelease(v5);
      }

      CFRelease(v2);
    }
  }
}

uint64_t FigInitializePlayerProcess()
{
  v0 = GSInitialize();
  FigPlaybackMemoryReporterStart(v0);
  FigSandboxRegistrationServerStart();
  feServer_LoadCelestial();
  FigShared_OneTimeInitialization();
  out_token = 0;
  notify_register_dispatch("com.apple.language.changed", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_14);
  v1 = FigOSTransactionCreate();
  FigControlCommandsStartServer();
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPECryptorServer"))
  {
    FigCPECryptorStartServer();
  }

  ShouldStartSubServer = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPEServer");
  if (ShouldStartSubServer)
  {
    FigCPEServerStart(ShouldStartSubServer);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartContentKeySessionServer"))
  {
    FigContentKeyBossStartServer();
    FigContentKeySessionStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCustomURLLoaderServer"))
  {
    FigCustomURLLoaderServerStart();
  }

  v4 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartByteStreamServer");
  if (v4)
  {
    FigByteStreamServerStart(v4, v5);
  }

  v6 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartFormatReaderServer");
  if (v6)
  {
    FigFormatReaderServerStart(v6);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleGeneratorServer"))
  {
    FigSampleGeneratorServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetServer"))
  {
    FigAssetServerStart();
  }

  v7 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableCompositionServer");
  if (v7)
  {
    FigMutableCompositionServerStart(v7);
  }

  v8 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetImageGeneratorServer");
  if (v8)
  {
    FigAssetImageGeneratorServerStart(v8);
  }

  v9 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMTAudioProcessingTapServer");
  if (v9)
  {
    MTAudioProcessingTapServerStart(v9, v10, v11, v12, v13, v14);
  }

  v15 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"VideoCompositorServer");
  if (v15)
  {
    FigVideoCompositorServerStart(v15);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartPlayerServer"))
  {
    FigPlayerServerStart();
  }

  v16 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoQueueServer");
  if (v16)
  {
    FigVideoQueueServerStart(v16);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRemakerServer"))
  {
    FigRemakerServerStart();
  }

  v17 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetDownloaderServer");
  if (v17)
  {
    FigAssetDownloaderStartServer(v17);
  }

  v18 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetCacheInspectorServer");
  if (v18)
  {
    FigAssetCacheInspectorStartServer(v18);
  }

  v19 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferAudioRendererServer");
  if (v19)
  {
    FigSampleBufferAudioRendererServerStart(v19);
  }

  v20 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferRenderSynchronizerServer");
  if (v20)
  {
    FigSampleBufferRenderSynchronizerServerStart(v20);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoTargetServer"))
  {
    FigVideoTargetStartServer();
  }

  v21 = feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisualContextServer");
  if (v21)
  {
    FigVisualContextServerStart(v21);
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartNeroidServer"))
  {
    FigNeroidStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMetricEventTimelineStartServer"))
  {
    FigMetricEventTimelineStartServer();
  }

  if (ModelSpecificPropertyList)
  {
    CFRelease(ModelSpecificPropertyList);
  }

  if (v1)
  {
    os_release(v1);
  }

  FigStartMonitoringNetworkActivity();
  CelestialIsAudioAccessory();
  if (FigGetCFPreferenceNumberWithDefault())
  {
    v23 = 0;
    PKDGetSystemCPC(&v23);
  }

  return FigGetCFPreferenceNumberWithDefault();
}

uint64_t FigInitializeParserProcess()
{
  started = FigMediaparserdUtilities_StartMediaparserdUtilitiesServer();
  v1 = FigFormatReaderServerStart(started);
  FigMutableMovieServerStart(v1);
  FigManifoldStartServer();
  PlaylistFileParserServer();
  FigStreamPlaylistParserStartServer();
  FigJSONParserStartServer();
  FigSessionDataParserStartServer();
  FigFairplayPSSHAtomParserStartServer();
  v2 = FigSteeringParserStartServer();
  FigXMLServiceStartServer(v2, v3);
  FigCaptionGroupConverterFromSampleBufferStartServer();

  return FigGetCFPreferenceNumberWithDefault();
}

BOOL feServer_ShouldStartSubServer(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, a2, &value) && (v2 = CFGetTypeID(value), v2 == CFBooleanGetTypeID()))
  {
    return value == *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 1;
  }
}

uint64_t ckbutil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t FigContentKeyBossGetClassID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigContentKeyBossClassIDOnce != -1)
  {
    FigContentKeyBossGetClassID_cold_1();
  }

  return sFigContentKeyBossClassID;
}

uint64_t RegisterFigContentKeyBossType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigContentKeyBossGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigContentKeyBossClassIDOnce != -1)
  {
    FigContentKeyBossGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigContentKeyBossUsesOptimizedKeyLoading(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CA698 != -1)
  {
    FigContentKeyBossUsesOptimizedKeyLoading_cold_1();
  }

  return _MergedGlobals_27;
}

void ckb_getValueOfOptimizedKeyLoadingFeatureFlag(char *a1)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (CFPreferenceNumberWithDefault >= 1)
  {
    if (dword_1EAF16CD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
LABEL_10:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }

LABEL_7:
    v6 = 1;
    goto LABEL_12;
  }

  if (_os_feature_enabled_impl())
  {
    if (dword_1EAF16CD0)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (dword_1EAF16CD0)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = 0;
LABEL_12:
  *a1 = v6;
}

CFStringRef ckbutil_keyGroupID_copyLoggingDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = "The HTTP Authorization Token Group 🪣";
        goto LABEL_15;
      case 5:
        v3 = "The AirPlay Group 🪣";
        goto LABEL_15;
      case 4:
        v3 = "Lightning-to-HDMI Display Adapter Group 🪣";
        goto LABEL_15;
    }

LABEL_12:
    v4 = CFStringCreateWithFormat(v2, 0, @"Some other 🪣 with identifier %llu", a1);
    goto LABEL_16;
  }

  if (!a1)
  {
    v3 = "The invalid Group 🪣 -- where keys really shouldn't be??";
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v3 = "The On-Device FairPlay Group 🪣";
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v3 = "The On-Device 'Clear Key' Group 🪣";
LABEL_15:
  v4 = CFStringCreateWithCString(v2, v3, 0x8000100u);
LABEL_16:
  v5 = v4;
  if (!v4)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : Failed to allocate a description for a content key group's / key 🪣's description");
  }

  return v5;
}

uint64_t ckbutil_contentKeySpecifier_copyLoggingArguments(uint64_t a1, __CFString **a2, __CFString **a3, uint64_t *a4)
{
  KeySystem = FigContentKeySpecifierGetKeySystem(a1);
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(a1);
  SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(a1);
  *a2 = ckbutil_keySystem_getLoggingDescription(KeySystem);
  *a3 = ckbutil_encryptionMethod_getLoggingDescription(EncryptionMethod);
  result = ckbutil_supportedProtocolVersions_copyLoggingDescription(SupportedProtocolVersions);
  *a4 = result;
  return result;
}

__CFString *ckbutil_keySystem_getLoggingDescription(int a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"The FairPlay key system";
      }
    }

    else
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { false } : Found a key system recognized by the playlist parser as invalid within FigContentKeyBoss");
    }

LABEL_9:
    FigUserCrashWithMessage("[💥 CKB assert]: { false } : Found an illegal key system %d within FigContentKeyBoss", a1);
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : %s was unable to allocate a description for the key system %d", "ckbutil_keySystem_getLoggingDescription", a1);
    return 0;
  }

  if (a1 != 3)
  {
    if (a1 == 2)
    {
      return @"A 'clear key' provided to this client";
    }

    goto LABEL_9;
  }

  return @"An HTTP-based authorization token";
}

__CFString *ckbutil_encryptionMethod_getLoggingDescription(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return @"Full-segment AES-128 encryption";
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 == 5)
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { false } : Encryption Method NONE should not be found within FigContentKeyBoss?");
        }

LABEL_10:
        FigUserCrashWithMessage("[💥 CKB assert]: { false } : Found an illegal encryption method %d within FigContentKeyBoss", a1);
        FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : %s was unable to allocate a description for the encryption method %d", "ckbutil_encryptionMethod_getLoggingDescription", a1);
        return 0;
      }

      return @"Full-segment AES-256 GCM encryption%s";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"CTR-mode per-sample AES encryption%s";
      }

      goto LABEL_10;
    }

    return @"CBCS-mode per-sample AES encryption";
  }

  else
  {
    return @"An invalid encryption method";
  }
}

uint64_t ckbutil_supportedProtocolVersions_copyLoggingDescription(const __CFArray *a1)
{
  if (a1 && CFArrayGetCount(a1))
  {
    v1 = FigCFCopyCompactDescription();
  }

  else
  {
    v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"None / not specified");
  }

  v2 = v1;
  if (!v1)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : Unable to allocate a description for the protocol versions allowed by a content key specifier");
  }

  return v2;
}

uint64_t ckrp_getTypeID()
{
  v1 = xmmword_1E747EEC0;
  if (ckrp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrp_getTypeID_once, &v1, ckbutil_registerClass);
  }

  return ckrp_getTypeID_typeID;
}

uint64_t FigContentKeyRequestParamsCreate(uint64_t a1, const void *a2, char a3, int a4, int a5, uint64_t a6, const void *a7, const void *a8, uint64_t a9, char a10, uint64_t a11, uint64_t *a12)
{
  if (a12)
  {
    ckrp_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      if (a2)
      {
        v20 = CFRetain(a2);
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 16) = v20;
      *(v19 + 24) = a3;
      *(v19 + 28) = a4;
      *(v19 + 32) = a5;
      if (a7)
      {
        v21 = CFRetain(a7);
      }

      else
      {
        v21 = 0;
      }

      *(v19 + 40) = v21;
      if (a8)
      {
        v22 = CFRetain(a8);
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 48) = v22;
      *(v19 + 56) = a9;
      *(v19 + 64) = a10;
      *(v19 + 65) = FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0];
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v24 = CFRetain(Value);
      }

      else
      {
        v24 = 0;
      }

      result = 0;
      *(v19 + 72) = v24;
      *a12 = v19;
    }

    else
    {
      FigContentKeyRequestParamsCreate_cold_1(&v26);
      return v26;
    }
  }

  else
  {
    FigContentKeyRequestParamsCreate_cold_2(&v27);
    return v27;
  }

  return result;
}

uint64_t FigContentKeyRequestDataParamsCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, char a8, char a9, char a10, const void *a11, uint64_t *a12)
{
  if (!a12)
  {
    FigContentKeyRequestDataParamsCreate_cold_2(&v28);
    return v28;
  }

  v28 = xmmword_1E747EED0;
  if (ckrdp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrdp_getTypeID_once, &v28, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeyRequestDataParamsCreate_cold_1(&v28);
    return v28;
  }

  v20 = Instance;
  if (a2)
  {
    v21 = CFRetain(a2);
  }

  else
  {
    v21 = 0;
  }

  *(v20 + 16) = v21;
  if (a3)
  {
    v22 = CFRetain(a3);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 24) = v22;
  if (a4)
  {
    v23 = CFRetain(a4);
  }

  else
  {
    v23 = 0;
  }

  *(v20 + 32) = v23;
  if (a5)
  {
    v24 = CFRetain(a5);
  }

  else
  {
    v24 = 0;
  }

  *(v20 + 40) = v24;
  if (a6)
  {
    v25 = CFRetain(a6);
  }

  else
  {
    v25 = 0;
  }

  *(v20 + 48) = v25;
  *(v20 + 56) = a7;
  *(v20 + 60) = a8;
  *(v20 + 61) = a9;
  *(v20 + 62) = a10;
  if (a11)
  {
    v26 = CFRetain(a11);
  }

  else
  {
    v26 = 0;
  }

  result = 0;
  *(v20 + 64) = v26;
  *a12 = v20;
  return result;
}

uint64_t FigContentKeyResponseParamsCreate(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, void *a6)
{
  if (!a6)
  {
    FigContentKeyResponseParamsCreate_cold_2(&v17);
    return v17;
  }

  v17 = xmmword_1E747EEE0;
  if (ckrsp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrsp_getTypeID_once, &v17, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeyResponseParamsCreate_cold_1(&v17);
    return v17;
  }

  v12 = Instance;
  *(Instance + 16) = a2;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v12[3] = v13;
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  v12[4] = v14;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  result = 0;
  v12[5] = v15;
  *a6 = v12;
  return result;
}

uint64_t FigContentKeySecureTokenRequestParamsCreate(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, uint64_t *a8)
{
  if (!a8)
  {
    FigContentKeySecureTokenRequestParamsCreate_cold_2(&v22);
    return v22;
  }

  v22 = xmmword_1E747EEF0;
  if (ckstrp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckstrp_getTypeID_once, &v22, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeySecureTokenRequestParamsCreate_cold_1(&v22);
    return v22;
  }

  v16 = Instance;
  *(Instance + 16) = a2;
  if (a3)
  {
    v17 = CFRetain(a3);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 24) = v17;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  else
  {
    v18 = 0;
  }

  *(v16 + 32) = v18;
  if (a5)
  {
    v19 = CFRetain(a5);
  }

  else
  {
    v19 = 0;
  }

  *(v16 + 40) = v19;
  if (a6)
  {
    v20 = CFRetain(a6);
  }

  else
  {
    v20 = 0;
  }

  result = 0;
  *(v16 + 48) = v20;
  *(v16 + 56) = a7;
  *a8 = v16;
  return result;
}

uint64_t FigContentKeyBossCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v5 = fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    FigContentKeyBossCreate_cold_6(v30);
    goto LABEL_28;
  }

  FigContentKeyBossGetClassID(v5, v6);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"kCKBCO_ClientAuditToken");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 144) = Value;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    *(DerivedStorage + 152) = FigIsItOKToLogURLs();
  }

  *(DerivedStorage + 8) = 1;
  v10 = FigSimpleMutexCreate();
  *DerivedStorage = v10;
  if (!v10)
  {
    FigContentKeyBossCreate_cold_5(v30);
    goto LABEL_28;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    FigContentKeyBossCreate_cold_4(v30);
    goto LABEL_28;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFDictionaryCreateMutable(v13, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 112) = v14;
  if (!v14)
  {
    FigContentKeyBossCreate_cold_3(v30);
    goto LABEL_28;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFDictionaryCreateMutable(v15, 0, 0, 0);
  *(DerivedStorage + 120) = v16;
  if (!v16)
  {
    FigContentKeyBossCreate_cold_2(v30);
    goto LABEL_28;
  }

  v17 = FigGetAllocatorForMedia();
  v18 = CFDictionaryCreateMutable(v17, 0, 0, 0);
  *(DerivedStorage + 128) = v18;
  if (!v18)
  {
    FigContentKeyBossCreate_cold_1(v30);
LABEL_28:
    v24 = v30[0];
    if (!v30[0])
    {
      return v24;
    }

    goto LABEL_18;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = ckb_createLoggingIdentifier_sNextLoggingIdentifier++;
  v21 = CFStringCreateWithFormat(v19, 0, @"%s/%llu", "CKB", v20);
  if (!v21)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifier } : Failed to allocate a logging identifier for a new FigContentKeyBoss");
    *(DerivedStorage + 184) = 0;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    v24 = v23;
    if (!v23)
    {
      return v24;
    }

LABEL_18:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v24;
  }

  *(DerivedStorage + 184) = v21;
  *(DerivedStorage + 96) = 6;
  ckb_setAllowedRequestHandlers(0, -1);
  v7 = FigRetainProxyCreate();
  if (v7)
  {
LABEL_21:
    v24 = v7;
    goto LABEL_18;
  }

  if (dword_1EAF16CF0)
  {
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = 0;
  *a3 = 0;
  return v24;
}

uint64_t ckb_setAllowedRequestHandlers(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_10;
  }

  for (i = 0; i != 3; ++i)
  {
    v7 = qword_196E732B0[i];
    if ((v7 & a2) != 0)
    {
      LoggingDescription = ckbutil_requestHandlerType_getLoggingDescription(v7);
      CFArrayAppendValue(Mutable, LoggingDescription);
    }
  }

  v9 = CFArrayGetCount(Mutable) ? FigCFCopyCompactDescription() : CFStringCreateWithCString(v4, "No supported handler types!", 0x8000100u);
  v10 = v9;
  if (!v9)
  {
LABEL_10:
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : Failed to allocate a list of supported key loading mechanisms in logging-string form");
    v10 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = dword_1EAF16CF0;
    *(DerivedStorage + 16) = a2;
    if (v12)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(DerivedStorage + 16) = a2;
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

void ckrp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t ckrp_equal(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

CFHashCode ckrp_hash(uint64_t a1)
{
  Identifier = FigContentKeySpecifierGetIdentifier(*(a1 + 16));

  return CFHash(Identifier);
}

CFStringRef ckrp_copyDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a1 + 16));
  KeySystem = FigContentKeySpecifierGetKeySystem(*(a1 + 16));
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(*(a1 + 16));
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@_%d_%d_%d_%d", Identifier, KeySystem, EncryptionMethod, *(a1 + 24), *(a1 + 28));
}

void ckrdp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {

    CFRelease(v7);
  }
}

void ckrsp_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

void ckstrp_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

void ckb_finalize(const void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v3) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      ckb_destroyGroupWithMutex(a1, ValueAtIndex[2]);
      ++v4;
    }

    while (v4 < CFArrayGetCount(v3));
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
  }

  FigRetainProxyInvalidate();
  v7 = DerivedStorage[21];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[18];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = v14;
  if (v14 && dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else if (!v14)
  {
    goto LABEL_27;
  }

  CFRelease(v15);
LABEL_27:
  v17 = DerivedStorage[3];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = DerivedStorage[11];
  if (v18)
  {
    dispatch_release(v18);
  }

  FigSimpleMutexDestroy();
  if (dword_1EAF16CF0)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = DerivedStorage[23];
  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t ckb_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v6 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 8))
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    v7 = *v6;
  }

  else
  {
    if (!FigCFEqual())
    {
      v8 = 4294954512;
      goto LABEL_6;
    }

    v7 = *(DerivedStorage + 136);
    if (v7)
    {
      v7 = CFRetain(v7);
    }
  }

  v8 = 0;
  *a4 = v7;
LABEL_6:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t ckb_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v5 = 0;
    *(DerivedStorage + 8) = *MEMORY[0x1E695E4D0] == a3;
  }

  else if (FigCFEqual())
  {
    v5 = *(DerivedStorage + 136);
    *(DerivedStorage + 136) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v5)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    v5 = 4294954512;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 192))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { ckb_isStaleWithBossMutex(previousBoss) } : Attempting to replace a non-stale boss and storage is not allowed");
  }

  if (!*(DerivedStorage + 160))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != storage->clientManagedBossWeak } : BossFromAsset indicates that it has merged into the client-managed boss created by AVCKS but it holds no reference to the client-managed Boss");
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    *a2 = v6;
    CMBaseObjectGetDerivedStorage();
    v7 = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16CF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    result = 0;
    *a3 = v7;
  }

  else
  {
    ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex_cold_1(v10);
    return v10[0];
  }

  return result;
}

uint64_t ckb_createRequestData(uint64_t a1, const char *a2, uint64_t a3, CFTypeRef *a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v109 = 0;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    LODWORD(v118) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v106 = a4;
  if (!a3)
  {
    ckb_createRequestData_cold_7(__buf);
LABEL_206:
    v49 = 0;
    v47 = 0;
    v41 = 0;
    v14 = *__buf;
    goto LABEL_102;
  }

  if (!a4)
  {
    ckb_createRequestData_cold_6(__buf);
    goto LABEL_206;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v110 = 0;
  v111 = 0;
  if (!a1)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: passed a NULL boss to this function");
  }

  v9 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v111, &v110);
  v10 = MEMORY[0x1E695E480];
  if (v9)
  {
    goto LABEL_202;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v110 + 2)) != 1)
  {
    ckb_createRequestData_cold_1(__buf);
LABEL_209:
    v49 = 0;
    v47 = 0;
    v41 = 0;
    v14 = *__buf;
    goto LABEL_210;
  }

  if (*(v110 + 14))
  {
    ckb_createRequestData_cold_2(__buf);
    goto LABEL_209;
  }

  ckg_removeRequest(v111, v110);
  v11 = v110;
  v12 = *(a3 + 56);
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = 0;
  Mutable = 0;
  v114 = 0;
  cf = 0;
  if (v12 && !v11[8])
  {
    v105 = DerivedStorage;
    KeySystem = FigContentKeySpecifierGetKeySystem(v11[2]);
    Identifier = FigContentKeySpecifierGetIdentifier(v11[2]);
    SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(v11[2]);
    v19 = FigContentKeySpecifierCreate(KeySystem, Identifier, v12, SupportedProtocolVersions, &cf);
    if (v19)
    {
      v14 = v19;
      Mutable = 0;
LABEL_36:
      DerivedStorage = v105;
      goto LABEL_37;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    DerivedStorage = v105;
    if (Mutable)
    {
      FigCFDictionaryGetBooleanValue();
      FigCFDictionarySetValue();
      v21 = FigGetAllocatorForMedia();
      v22 = v11[3];
      v24 = FigContentKeyRequestParamsCreate(v21, cf, *(v22 + 24), *(v22 + 28), *(v22 + 32), v23, *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), Mutable, &v114);
      if (!v24)
      {
        v25 = v11[2];
        v26 = cf;
        v11[2] = cf;
        if (v26)
        {
          CFRetain(v26);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v27 = v11[3];
        v28 = v114;
        v11[3] = v114;
        if (v28)
        {
          CFRetain(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        *type = 0;
        v118 = 0;
        v116 = 0;
        ckbutil_contentKeySpecifier_copyLoggingArguments(v11[2], &v118, type, &v116);
        if (dword_1EAF16CF0)
        {
          *v113 = 0;
          v112 = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = *v113;
          v31 = v112;
          if (os_log_type_enabled(v29, v112))
          {
            v32 = v30;
          }

          else
          {
            v32 = v30 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v33 = v11[31];
            v34 = *type;
            v35 = FigContentKeySpecifierGetIdentifier(v11[2]);
            if (*(v11 + 256))
            {
              v36 = v35;
            }

            else
            {
              v36 = @"[]";
            }

            v142 = 136316674;
            v143 = "ckr_logEncryptionMethodOverride";
            v144 = 2114;
            v145 = v33;
            v146 = 2112;
            v147 = v34;
            v148 = 2112;
            *v149 = v36;
            *&v149[8] = 2112;
            *&v149[10] = v118;
            *&v149[18] = 2112;
            *&v149[20] = v34;
            v10 = MEMORY[0x1E695E480];
            *&v149[28] = 2112;
            *&v149[30] = v116;
            LODWORD(v103) = 72;
            _os_log_send_and_compose_impl(v32, 0, __buf, 128, &dword_1962D5000, v29, v31, " %s: ℹ️ [%{public}@ INFO]: Client has overridden the encryption method to something new. We have changed the key specifier we are requesting for: {\n\tNew encryption method: %@\n\tNew key specifier which will match on this request: %@ {\n\t\tKey system: %@\n\t\tEncrypt method: %@\n\t\tSpecified loading protocols: %@\n}", &v142, v103);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v116)
        {
          CFRelease(v116);
        }

        v14 = 0;
        goto LABEL_36;
      }

      v14 = v24;
    }

    else
    {
      ckb_createRequestData_cold_3(__buf);
      v14 = *__buf;
    }
  }

LABEL_37:
  if (v114)
  {
    CFRelease(v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  ckg_setRequest(v111, v110);
  if (v14)
  {
    goto LABEL_203;
  }

  v9 = ckg_ensureContentKeyForRequest(v111, v110, a1, *(DerivedStorage + 152));
  if (v9)
  {
LABEL_202:
    v14 = v9;
LABEL_203:
    v49 = 0;
    v47 = 0;
    v41 = 0;
LABEL_210:
    v50 = 1;
    goto LABEL_73;
  }

  v37 = v110;
  if (!v110)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
  }

  v38 = v37[8];
  if (!v38)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: request formerly had a key set on it, but now does not. Setting a key on a request is specified as a one-way operation");
    FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: NULL key passed to this function");
  }

  v39 = *v10;
  v40 = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v40)
  {
    v41 = v40;
    v42 = *(a3 + 16);
    if (!v42)
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { keyRequestDataParams->applicationCert != NULL } : Bug in CoreMedia: Malformed keyRequestDataParams; application certificate is NULL");
      v42 = *(a3 + 16);
    }

    CFDictionarySetValue(v41, *MEMORY[0x1E6962AC0], v42);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v43 = *(a3 + 32);
    if (v43)
    {
      CFDictionarySetValue(v41, *MEMORY[0x1E6962AF0], v43);
    }

    FigCFDictionarySetInt();
    FigCFDictionarySetInt64();
    if (*(*(v38 + 24) + 28) == 2)
    {
      CFDictionarySetValue(v41, *MEMORY[0x1E6962AE0], *MEMORY[0x1E695E4D0]);
    }

    if (*(a3 + 60))
    {
      FigCFDictionarySetInt();
    }

    if (!*(a3 + 62))
    {
      goto LABEL_66;
    }

    if (*(*(v38 + 24) + 28) == 2)
    {
      v14 = 4294948132;
    }

    else
    {
      v44 = *(a3 + 64);
      if (v44 && (v45 = CFRetain(v44)) != 0 || (*__buf = 0, *&__buf[8] = 0, arc4random_buf(__buf, 0x10uLL), (v45 = CFDataCreate(v39, __buf, 16)) != 0))
      {
        v46 = v45;
        CFDictionarySetValue(v41, *MEMORY[0x1E6962AD8], v45);
        CFRelease(v46);
        goto LABEL_66;
      }

      ckb_createRequestData_cold_4(__buf);
      v14 = *__buf;
    }

    CFRelease(v41);
  }

  else
  {
    ckb_createRequestData_cold_5(__buf);
    v14 = *__buf;
  }

  v49 = 0;
  if (v14)
  {
    v50 = 1;
    v47 = 0;
    v41 = 0;
    goto LABEL_73;
  }

  v41 = 0;
LABEL_66:
  if (*(*(v38 + 24) + 28) > 1u)
  {
    v47 = 0;
  }

  else
  {
    v47 = ck_copySupportedProtocolVersionsForKeyRequestData(v38, a3);
  }

  v48 = *(v38 + 72);
  if (v48)
  {
    v49 = CFRetain(v48);
  }

  else
  {
    v49 = 0;
  }

  v14 = 0;
  v50 = *(a3 + 61) == 0;
LABEL_73:
  if (v110)
  {
    CFRelease(v110);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v14)
  {
    goto LABEL_102;
  }

  FigSimpleMutexUnlock();
  if (v49)
  {
    if (v41)
    {
      goto LABEL_80;
    }
  }

  else
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { cryptor != NULL } : Bug in CKB: NULL cryptor passed to this function");
    if (v41)
    {
LABEL_80:
      if (v50)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }
  }

  FigUserCrashWithMessage("[💥 CKB assert]: { cryptorKeyRequestOptions != NULL } : Bug in CKB: NULL cryptorKeyRequestOptions passed to this function");
  if (v50)
  {
    goto LABEL_86;
  }

LABEL_84:
  v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v51)
  {
    goto LABEL_100;
  }

  v52 = v51(v49, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
  if (v52)
  {
    goto LABEL_224;
  }

LABEL_86:
  if (v47)
  {
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v53)
    {
      v52 = v53(v49, *MEMORY[0x1E6961108], v47);
      if (!v52)
      {
        goto LABEL_89;
      }

LABEL_224:
      v14 = v52;
      goto LABEL_101;
    }

LABEL_100:
    v14 = 4294954514;
LABEL_101:
    FigSimpleMutexLock();
    goto LABEL_102;
  }

LABEL_89:
  v54 = *(CMBaseObjectGetVTable() + 16);
  if (*v54 < 4uLL)
  {
    goto LABEL_100;
  }

  v55 = v54[11];
  if (!v55)
  {
    goto LABEL_100;
  }

  v14 = v55(v49, v41, *MEMORY[0x1E695E480], &v109);
  FigSimpleMutexLock();
  if (v14)
  {
    goto LABEL_102;
  }

  *__buf = 0;
  if (!a1)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Passed a NULL boss to this function");
  }

  v14 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, 0, __buf);
  v56 = *__buf;
  if (!v14)
  {
    if (!*(*__buf + 56))
    {
      v14 = 0;
      *(*__buf + 56) = 1;
LABEL_97:
      CFRelease(v56);
      goto LABEL_98;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v103, v104);
    v14 = v101;
    v56 = *__buf;
  }

  if (v56)
  {
    goto LABEL_97;
  }

LABEL_98:
  if (!v14)
  {
    v57 = v109;
    *v106 = v109;
    v109 = 0;
    goto LABEL_103;
  }

LABEL_102:
  v57 = *v106;
LABEL_103:
  v114 = 0;
  cf = 0;
  v58 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a3)
    {
      goto LABEL_105;
    }
  }

  else
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Passed a NULL boss to this function");
    if (a3)
    {
      goto LABEL_105;
    }
  }

  FigUserCrashWithMessage("[💥 CKB assert]: { keyRequestDataParams != NULL } : Passed NULL keyRequestDataParams to this function");
LABEL_105:
  if (ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &cf, &v114))
  {
    LODWORD(v118) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = v118;
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
      v142 = 136315650;
      v143 = "ckb_logOutcomeOfCreateRequestDataWithBossMutex";
      v144 = 2114;
      v145 = @"[No request]";
      v146 = 2048;
      v147 = a2;
      LODWORD(v103) = 32;
      _os_log_send_and_compose_impl(v62, 0, __buf, 128, &dword_1962D5000, v59, v61, " %s: ❌ [%{public}@ ERROR]: Key request data generation FAILED because the associated request (raw request ID = %llu) was torn down", &v142, v103);
    }

LABEL_119:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_120;
  }

  v63 = ckg_ensureContentKeyForRequest(cf, v114, a1, *(v58 + 152));
  if (v63)
  {
    v64 = v63;
    LODWORD(v118) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v66 = v118;
    v67 = type[0];
    if (os_log_type_enabled(v65, type[0]))
    {
      v68 = v66;
    }

    else
    {
      v68 = v66 & 0xFFFFFFFE;
    }

    if (v68)
    {
      v69 = *(v114 + 31);
      v142 = 136315650;
      v143 = "ckb_logOutcomeOfCreateRequestDataWithBossMutex";
      v144 = 2114;
      v145 = v69;
      v146 = 1024;
      LODWORD(v147) = v64;
      LODWORD(v103) = 28;
      _os_log_send_and_compose_impl(v68, 0, __buf, 128, &dword_1962D5000, v65, v67, " %s: ❌ [%{public}@ ERROR]: Key request data generation FAILED because we were unable to generate a key (err = %d)", &v142, v103);
    }

    goto LABEL_119;
  }

  v71 = v114;
  if (!v114)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
  }

  v72 = v71[8];
  if (!v72)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: key was used to generate a request, but is now NULL. Setting a key on a request should be a one-way operation");
  }

  if (v14)
  {
    if (v57)
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { keyRequestDataIfSuccessful == NULL } : Key request failed with an error, but we still for some reason have a non-NULL keyRequestData");
    }

    *type = 0;
    v118 = 0;
    LOBYTE(v110) = 0;
    v116 = 0;
    ck_keyRequestDataParams_copyLoggingArguments(v72, a3, &v118, type, &v110, &v116);
    LODWORD(v111) = 0;
    v113[0] = OS_LOG_TYPE_DEFAULT;
    v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v74 = v111;
    v75 = v113[0];
    v108 = v73;
    if (os_log_type_enabled(v73, v113[0]))
    {
      v76 = v74;
    }

    else
    {
      v76 = v74 & 0xFFFFFFFE;
    }

    v77 = v116;
    if (v76)
    {
      v78 = *(v72 + 96);
      v79 = *(v72 + 72);
      v80 = "YES";
      if (*(a3 + 61))
      {
        v81 = "YES";
      }

      else
      {
        v81 = "NO";
      }

      if (*(a3 + 24))
      {
        v82 = "YES";
      }

      else
      {
        v82 = "NO";
      }

      if (*(a3 + 48))
      {
        v83 = "YES";
      }

      else
      {
        v83 = "NO";
      }

      if (*(a3 + 60))
      {
        v84 = "YES";
      }

      else
      {
        v84 = "NO";
      }

      if (*(a3 + 32))
      {
        v85 = "YES";
      }

      else
      {
        v85 = "NO";
      }

      if (v110)
      {
        v86 = "YES";
      }

      else
      {
        v86 = "NO";
      }

      if (!v116)
      {
        v80 = "NO";
      }

      v142 = 136318210;
      v143 = "ck_logRequestDataCreationFailed";
      v144 = 2114;
      v145 = v78;
      v146 = 2048;
      v147 = v79;
      v148 = 1024;
      *v149 = v14;
      *&v149[4] = 2080;
      *&v149[6] = v81;
      *&v149[14] = 2112;
      *&v149[16] = v118;
      *&v149[24] = 2080;
      *&v149[26] = v82;
      *&v149[34] = 2112;
      *&v149[36] = *type;
      v150 = 2080;
      v151 = v83;
      v152 = 2080;
      v153 = v84;
      v154 = 2080;
      v155 = v85;
      v156 = 2080;
      v157 = v86;
      v158 = 2080;
      v159 = v80;
      LODWORD(v103) = 128;
      _os_log_send_and_compose_impl(v76, 0, __buf, 128, &dword_1962D5000, v108, v75, " %s: ❌ [%{public}@ ERROR]: FAILED to create SPC on cryptor %p (error = %d) according to creation options {\n\tKey should have been persistable?: %s\n\tEncryption method: %@\n\tProvided an asset identifier (in addition to an application certificate)?: %s\n\tSupported protocols for key exchange: %@\n\tWould encrypt SPC on behalf of remote AirPlay sender?: %s\n\tReturned key would support buffered AirPlay passthrough?: %s\n\tIncluded a previously acquired key (i.e. synchronous SPC)?: %s\n\tClient requested to randomize the device identifier: %s\n\tClient provided a seed to randomize the device identifier: %s\n}", &v142, v103);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v77)
    {
      goto LABEL_198;
    }

    v100 = v77;
  }

  else
  {
    if (!v57)
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { keyRequestDataIfSuccessful != NULL } : Key request succeeded with no error, but no keyRequestData was provided");
    }

    *type = 0;
    v118 = 0;
    LOBYTE(v110) = 0;
    v116 = 0;
    ck_keyRequestDataParams_copyLoggingArguments(v72, a3, &v118, type, &v110, &v116);
    if (dword_1EAF16CF0)
    {
      LODWORD(v111) = 0;
      v113[0] = OS_LOG_TYPE_DEFAULT;
      v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v88 = v111;
      v89 = v113[0];
      if (os_log_type_enabled(v87, v113[0]))
      {
        v90 = v88;
      }

      else
      {
        v90 = v88 & 0xFFFFFFFE;
      }

      if (v90)
      {
        v91 = *(v72 + 96);
        v92 = *(v72 + 72);
        v93 = "YES";
        if (*(a3 + 61))
        {
          v94 = "YES";
        }

        else
        {
          v94 = "NO";
        }

        if (*(a3 + 24))
        {
          v95 = "YES";
        }

        else
        {
          v95 = "NO";
        }

        if (*(a3 + 48))
        {
          v96 = "YES";
        }

        else
        {
          v96 = "NO";
        }

        if (*(a3 + 60))
        {
          v97 = "YES";
        }

        else
        {
          v97 = "NO";
        }

        if (*(a3 + 32))
        {
          v98 = "YES";
        }

        else
        {
          v98 = "NO";
        }

        if (v110)
        {
          v99 = "YES";
        }

        else
        {
          v99 = "NO";
        }

        if (!v116)
        {
          v93 = "NO";
        }

        *__buf = 136318210;
        *&__buf[4] = "ck_logRequestDataCreation";
        *&__buf[12] = 2114;
        *&__buf[14] = v91;
        v120 = 2048;
        v121 = v92;
        v122 = 2048;
        v123 = v57;
        v124 = 2080;
        v125 = v94;
        v126 = 2112;
        v127 = v118;
        v128 = 2080;
        v129 = v95;
        v130 = 2112;
        v131 = *type;
        v132 = 2080;
        v133 = v96;
        v134 = 2080;
        v135 = v97;
        v136 = 2080;
        v137 = v98;
        v138 = 2080;
        v139 = v99;
        v140 = 2080;
        v141 = v93;
        LODWORD(v103) = 132;
        _os_log_send_and_compose_impl(v90, 0, &v142, 128, &dword_1962D5000, v87, v89, " %s: 📤 [%{public}@ =[REQUESTED]=> cryptor %p]: Created SPC [%p] according to creation options {\n\tKey should be persistable?: %s\n\tEncryption method: %@\n\tProvided an asset identifier (in addition to an application certificate)?: %s\n\tSupported protocols for key exchange: %@\n\tIs encrypting SPC on behalf of remote AirPlay sender?: %s\n\tReturned key should support buffered AirPlay passthrough?: %s\n\tIncludes a previously acquired key (i.e. synchronous SPC)?: %s\n\tClient requested to randomize the device identifier: %s\n\tClient provided a seed to randomize the device identifier: %s\n}", __buf, v103);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v100 = v116;
    if (!v116)
    {
      goto LABEL_198;
    }
  }

  CFRelease(v100);
LABEL_198:
  if (*type)
  {
    CFRelease(*type);
  }

  if (v118)
  {
    CFRelease(v118);
  }

LABEL_120:
  if (v114)
  {
    CFRelease(v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  if (v41)
  {
    CFRelease(v41);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  return v14;
}

uint64_t ckb_setRequestHandlingCallbacks(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2 || !a3 || !a4)
  {
    ckb_setRequestHandlingCallbacks_cold_2(v15);
    v9 = 0;
LABEL_19:
    v12 = v15[0];
    goto LABEL_12;
  }

  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v9)
  {
    ckb_setRequestHandlingCallbacks_cold_1(v15);
    goto LABEL_19;
  }

  __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(DerivedStorage + 4, a2);
  v10 = DerivedStorage[3];
  DerivedStorage[3] = v9;
  CFRetain(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[11];
  if (v11)
  {
    dispatch_release(v11);
  }

  dispatch_retain(a4);
  v12 = 0;
  DerivedStorage[11] = a4;
LABEL_12:
  if (dword_1EAF16CF0)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t ckb_getLoggingIdentifier(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!CMBaseObjectGetDerivedStorage())
  {
    ckb_getLoggingIdentifier_cold_2(v6);
LABEL_9:
    v4 = v6[0];
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckb_getLoggingIdentifier_cold_1(v6);
    goto LABEL_9;
  }

  v4 = 0;
  *a2 = *(CMBaseObjectGetDerivedStorage() + 184);
LABEL_6:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ckb_mergeBossFromAssetIntoClientManagedBoss(uint64_t a1, uint64_t a2)
{
  v107[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  v79 = a1;
  if (*(CMBaseObjectGetDerivedStorage() + 192))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { ckb_isStaleWithBossMutex(bossFromAsset) == false } : bossFromAsset is stale. We should merge a boss from FigAsset into a client-managed boss at most once.");
  }

  v5 = &unk_1EAF16000;
  if (dword_1EAF16CF0)
  {
    LODWORD(v95) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v86 = 0;
  v87 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 104), &v87, &v86);
  v7 = v87;
  if (!v87)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { allGroupIDsToMerge != NULL } : Failed to copy array of list of groupIDs which need merging. Merge cannot proceed; halting");
  }

  v82 = v86;
  if (v86)
  {
    v8 = 0;
    v80 = v4;
    v81 = DerivedStorage;
    do
    {
      v9 = *(v87 + v8);
      Value = CFDictionaryGetValue(*(DerivedStorage + 104), v9);
      v11 = ckbutil_keyGroupID_copyLoggingDescription(*(Value + 2));
      v12 = CFDictionaryContainsKey(*(v4 + 104), v9);
      v13 = *(v4 + 104);
      if (v12)
      {
        v84 = v11;
        v85 = v8;
        v14 = CFDictionaryGetValue(v13, v9);
        *type = 0;
        v95 = 0;
        v93 = 0;
        v15 = ckbutil_keyGroupID_copyLoggingDescription(*(Value + 2));
        v91 = 0;
        v92 = 0;
        v90 = 0;
        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 5), &v95, &v92);
        v16 = v95;
        if (!v95)
        {
        }

        for (i = v92; i; --i)
        {
          v18 = *v16;
          v19 = CFDictionaryGetValue(*(Value + 5), *v16);
          if (!CFDictionaryContainsKey(v14[5], v18))
          {
            CFDictionarySetValue(v14[5], v18, v19);
            if (v5[828])
            {
              v89 = 0;
              v88 = OS_LOG_TYPE_DEFAULT;
              v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v21 = v89;
              v22 = v88;
              if (os_log_type_enabled(v20, v88))
              {
                v23 = v21;
              }

              else
              {
                v23 = v21 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v24 = v14[10];
                v25 = v19[12];
                *v96 = 136316418;
                *&v96[4] = "ckb_mergeGroupsWithBossMutex";
                v97 = 2114;
                v98 = v24;
                v99 = 2082;
                v100 = "PARENTS";
                v101 = 2114;
                v102 = v25;
                v103 = 2112;
                v104 = v15;
                v105 = 2112;
                v106 = v15;
                LODWORD(v78) = 62;
                _os_log_send_and_compose_impl(v23, 0, v107, 128, &dword_1962D5000, v20, v22, " %s: 🔗 [%{public}@ =[%{public}s OBJECT]=> %{public}@]: Migrated this key in %@ owned by the BossFromAsset into %@ owned by the client-managed boss.", v96, v78);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          ++v16;
        }

        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 6), type, &v91);
        v26 = *type;
        if (!*type)
        {
        }

        v27 = v91;
        for (j = v26; v27; --v27)
        {
          v28 = *v26;
          v29 = CFDictionaryGetValue(*(Value + 6), *v26);
          CFDictionarySetValue(v14[6], v28, v29);
          if (v5[828])
          {
            v89 = 0;
            v88 = OS_LOG_TYPE_DEFAULT;
            v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v31 = v89;
            v32 = v88;
            if (os_log_type_enabled(v30, v88))
            {
              v33 = v31;
            }

            else
            {
              v33 = v31 & 0xFFFFFFFE;
            }

            if (v33)
            {
              v34 = v14[10];
              v35 = v29[31];
              *v96 = 136316418;
              *&v96[4] = "ckb_mergeGroupsWithBossMutex";
              v97 = 2114;
              v98 = v34;
              v99 = 2082;
              v100 = "PARENTS";
              v101 = 2114;
              v102 = v35;
              v103 = 2112;
              v104 = v15;
              v105 = 2112;
              v106 = v15;
              LODWORD(v78) = 62;
              _os_log_send_and_compose_impl(v33, 0, v107, 128, &dword_1962D5000, v30, v32, " %s: 🔗 [%{public}@ =[%{public}s OBJECT]=> %{public}@]: Migrated this request in %@ owned by the BossFromAsset into %@ owned by the client-managed boss.", v96, v78);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          ++v26;
        }

        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 7), &v93, &v90);
        v36 = v93;
        if (!v93)
        {
        }

        v37 = v90;
        if (v90)
        {
          for (k = 0; k < v37; ++k)
          {
            v39 = v36[k];
            v40 = CFDictionaryGetValue(*(Value + 7), v39);
            v41 = CFDictionaryGetValue(v14[7], v39);
            v42 = v14[5];
            Identifier = FigContentKeySpecifierGetIdentifier(v39);
            v44 = CFDictionaryGetValue(v42, Identifier);
            if (v41)
            {
              v45 = v40[27];
              if (v45)
              {
                v46 = v41[28];
                do
                {
                  *v45 = 0;
                  v45[1] = v46;
                  *v46 = v45;
                  v41[28] = v45;
                  v46 = v45;
                  v45 = *v45;
                }

                while (v45);
              }
            }

            else
            {
              v47 = v44;
              if (v44)
              {
                if ((*(v44 + 8) - 4) <= 0xFFFFFFFD)
                {
                  FigUserCrashWithMessage("[💥 CKB assert]: { possiblyExistingKeyForThisKeySpecifier->state == kFigContentKeyState_Success || possiblyExistingKeyForThisKeySpecifier->state == kFigContentKeyState_Failed } : This key has already been handled by the client-managed boss which means it should either be in failed or success state, but state indicates that this key is still pending.");
                }

                v50 = v40[8];
                v40[8] = v47;
                CFRetain(v47);
                if (v50)
                {
                  CFRelease(v50);
                }

                *(v40 + 257) = 1;
                if (ckb_sendStatusCallbacksToAllClientsForRequestWithBossMutex(v79, v40))
                {
                  break;
                }
              }

              else
              {
                v48 = v14[7];
                v49 = CFDictionaryGetValue(*(Value + 7), v39);
                CFDictionarySetValue(v48, v39, v49);
              }
            }
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        free(v36);
        free(j);
        free(v95);
        v4 = v80;
        DerivedStorage = v81;
        v5 = &unk_1EAF16000;
        v11 = v84;
        v8 = v85;
      }

      else
      {
        CFDictionarySetValue(v13, v9, Value);
        if (v5[828])
        {
          LODWORD(v95) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v52 = v95;
          v53 = type[0];
          if (os_log_type_enabled(v51, type[0]))
          {
            v54 = v52;
          }

          else
          {
            v54 = v52 & 0xFFFFFFFE;
          }

          if (v54)
          {
            v55 = *(v4 + 184);
            v56 = *(Value + 10);
            *v96 = 136316162;
            *&v96[4] = "ckb_mergeBossFromAssetIntoClientManagedBoss";
            v97 = 2114;
            v98 = v55;
            v99 = 2082;
            v100 = "PARENTS";
            v101 = 2114;
            v102 = v56;
            v103 = 2112;
            v104 = v11;
            LODWORD(v78) = 52;
            _os_log_send_and_compose_impl(v54, 0, v107, 128, &dword_1962D5000, v51, v53, " %s: 🔗 [%{public}@ =[%{public}s OBJECT]=> %{public}@]: client-managed imported this group [%@] from the bossFromAsset.", v96, v78);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }

      ++v8;
    }

    while (v8 < v82);
    v7 = v87;
  }

  free(v7);
  v107[0] = 0;
  *v96 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 112), v107, v96);
  v57 = v107[0];
  if (!v107[0])
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { allRequestIDsToRetarget != NULL } : Failed to copy array of list of requestIDs which need to move to a new FigContentKeyBoss. Merge cannot proceed; halting");
  }

  v58 = *v96;
  if (*v96)
  {
    v59 = v57;
    do
    {
      v60 = *v59++;
      v61 = CFDictionaryGetValue(*(DerivedStorage + 112), v60);
      v62 = CFDictionaryGetValue(*(v4 + 104), v61[2]);
      CFDictionarySetValue(*(v4 + 112), v60, v62);
      --v58;
    }

    while (v58);
  }

  free(v57);
  v107[0] = 0;
  *v96 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 120), v107, v96);
  v63 = v107[0];
  if (!v107[0])
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { bossFromAssetCustomURLRequestIDs != NULL } : Failed to copy array of list of FigCustomURLRequest IDs which need to move to a new FigContentKeyBoss. Merge cannot proceed; halting");
  }

  v64 = *v96;
  if (*v96)
  {
    v65 = v63;
    do
    {
      v66 = *v65++;
      v67 = CFDictionaryGetValue(*(DerivedStorage + 120), v66);
      CFDictionaryAddValue(*(v4 + 120), v66, v67);
      --v64;
    }

    while (v64);
  }

  free(v63);
  v107[0] = 0;
  *v96 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 128), v107, v96);
  v68 = v107[0];
  if (!v107[0])
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { bossFromAssetHTTPRequestIDs != NULL } : Failed to copy array of list of FigHTTPRequest IDs which need to move to a new FigContentKeyBoss. Merge cannot proceed; halting");
  }

  v69 = *v96;
  if (*v96)
  {
    v70 = v68;
    do
    {
      v71 = *v70++;
      v72 = CFDictionaryGetValue(*(DerivedStorage + 128), v71);
      CFDictionaryAddValue(*(v4 + 128), v71, v72);
      --v69;
    }

    while (v69);
  }

  free(v68);
  v73 = *(v4 + 136);
  v74 = *(DerivedStorage + 136);
  *(v4 + 136) = v74;
  if (v74)
  {
    CFRetain(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  v75 = *(v4 + 144);
  v76 = *(DerivedStorage + 144);
  *(v4 + 144) = v76;
  if (v76)
  {
    CFRetain(v76);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  *(v4 + 152) = *(DerivedStorage + 152);
  *(v4 + 176) = *(DerivedStorage + 176);
  *(DerivedStorage + 160) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 192) = 1;
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t ckb_ensureAndGetGroupWithBossMutex(const void *a1, const void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetValue(*(DerivedStorage + 104), a2))
  {
    return 0;
  }

  v5 = CFGetAllocator(a1);
  v6 = *(DerivedStorage + 8);
  v7 = *(DerivedStorage + 144);
  context[0] = xmmword_1E747EF00;
  if (ckg_getTypeID_once != -1)
  {
    dispatch_once_f(&ckg_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    *(Instance + 64) = v6;
    v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v9[3] = v10;
    if (v10)
    {
      v11 = v7 ? CFRetain(v7) : 0;
      v9[9] = v11;
      Mutable = CFDictionaryCreateMutable(v5, 0, 0, MEMORY[0x1E695E9E8]);
      v9[6] = Mutable;
      if (Mutable)
      {
        v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v9[5] = v13;
        if (v13)
        {
          v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v9[7] = v14;
          if (v14)
          {
            v15 = *MEMORY[0x1E695E480];
            v16 = ckg_createLoggingIdentifier_sNextLoggingIdentifier++;
            v17 = CFStringCreateWithFormat(v15, 0, @"%s/%llu", "CKG", v16);
            if (v17)
            {
              v9[10] = v17;
              v18 = ckbutil_keyGroupID_copyLoggingDescription(v9[2]);
              if (dword_1EAF16CF0)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (v18)
              {
                CFRelease(v18);
              }

              goto LABEL_26;
            }

            FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifier } : Failed to allocate a logging identifier for a new FigContentKeyGroup");
            v9[10] = 0;
          }
        }
      }
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
  v21 = v20;
  if (v20)
  {
    v22 = ckbutil_keyGroupID_copyLoggingDescription(a2);
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v21)
  {
    v9 = 0;
LABEL_26:
    CFDictionarySetValue(*(DerivedStorage + 104), a2, v9);
    v24 = ckbutil_keyGroupID_copyLoggingDescription(a2);
    if (dword_1EAF16CF0)
    {
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    return 0;
  }

  return v21;
}