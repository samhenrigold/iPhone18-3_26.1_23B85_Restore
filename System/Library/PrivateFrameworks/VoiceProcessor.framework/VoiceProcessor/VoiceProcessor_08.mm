void VoiceProcessorV3::ApplyMediaChatGains(VoiceProcessorV3 *this, AudioBufferList *a2, AudioBufferList *a3)
{
  v6 = COERCE_FLOAT(atomic_load(this + 567));
  if (*(this + 568) == v6)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a2);
    v20 = v31 + 2;
    for (i = 16 * *v31; i; i -= 16)
    {
      v22 = *(v20 + 1);
      v24 = *v20;
      v23 = v20[1];
      v20 += 4;
      MEMORY[0x2743CCE20](v22, 1, this + 2276, v22, 1, (v23 >> 2) / v24);
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a3);
    v25 = v31 + 2;
    for (j = 16 * *v31; j; j -= 16)
    {
      v27 = *(v25 + 1);
      v29 = *v25;
      v28 = v25[1];
      v25 += 4;
      MEMORY[0x2743CCE20](v27, 1, this + 2280, v27, 1, (v28 >> 2) / v29);
    }
  }

  else
  {
    v7 = 0.0;
    if (v6 <= 0.25)
    {
      v7 = ((((fmaxf(roundf(v6 * 16.0) * 0.0625, 0.0625) * 16.0) + -1.0) * -0.25) + 1.0) * *(this + 1130);
    }

    v8 = __exp10f(((*(this + 1124) + (v6 * (*(this + 1125) - *(this + 1124)))) + v7) * 0.05);
    __Step = (v8 - *(this + 569)) / *(this + 131);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a2);
    v9 = v31 + 2;
    for (k = 16 * *v31; k; k -= 16)
    {
      v11 = *(v9 + 1);
      v13 = *v9;
      v12 = v9[1];
      v9 += 4;
      vDSP_vrampmul(v11, 1, this + 569, &__Step, v11, 1, (v12 >> 2) / v13);
    }

    v14 = __exp10f((*(this + 1122) + (v6 * (*(this + 1123) - *(this + 1122)))) * 0.05);
    v30 = (v14 - *(this + 570)) / *(this + 131);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v31, a3);
    v15 = v31 + 2;
    for (m = 16 * *v31; m; m -= 16)
    {
      v17 = *(v15 + 1);
      v19 = *v15;
      v18 = v15[1];
      v15 += 4;
      vDSP_vrampmul(v17, 1, this + 570, &v30, v17, 1, (v18 >> 2) / v19);
    }

    *(this + 568) = v6;
    *(this + 569) = v8;
    *(this + 570) = v14;
  }
}

uint64_t VoiceProcessorV4::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v565 = *MEMORY[0x277D85DE8];
  v9 = this + 3158;
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
LABEL_3:
    ++v8[3150];
    CADeprecated::CAMutex::Unlock(v10);
    v11 = 0;
    v12 = 0.0;
    goto LABEL_931;
  }

  v540 = a3;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
    goto LABEL_3;
  }

  v13 = a7;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  v538 = a2;
  v532 = a4;
  (*(*v8 + 696))(&v553, v8, v13);
  v552 = v553;
  if (*(v9 + 3249) == 1)
  {
    if (*v9)
    {
      v17 = *(v8 + 1578);
      HIDWORD(v18) = HIDWORD(v552.mSampleTime);
      if (v17 == v552.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v17, v552.mSampleTime, 2);
      v18 = *(v8 + 1578);
      if (v552.mSampleTime >= v18)
      {
        goto LABEL_48;
      }

      v19 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v20 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v8 + 1578);
          LODWORD(v553.mSampleTime) = 136316674;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 92;
          WORD1(v553.mRateScalar) = 2048;
          *(&v553.mRateScalar + 4) = v22;
          WORD2(v553.mWordClockTime) = 2048;
          *(&v553.mWordClockTime + 6) = *&v552.mSampleTime;
          HIWORD(v553.mSMPTETime.mCounter) = 2048;
          *&v553.mSMPTETime.mType = v552.mHostTime;
          v553.mSMPTETime.mHours = 2048;
          *&v553.mSMPTETime.mMinutes = v552.mRateScalar;
          HIWORD(v553.mFlags) = 1024;
          v553.mReserved = v552.mFlags;
          _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v553, 0x40u);
        }
      }

      v23 = *(v8 + 1588);
      if (v23 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v23, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 92, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v552.mSampleTime, v552.mHostTime, v552.mRateScalar, v552.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, v8[3150], 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v552.mSampleTime, 2);
      v18 = *(v8 + 216);
      v24 = v552.mSampleTime - v18;
      v25 = (((roundf(*(v8 + 291) * v8[126]) + v8[126]) + v8[295]) + v8[296]);
      if (v552.mSampleTime - v18 == v25)
      {
LABEL_48:
        LODWORD(v18) = v8[123];
        *(v8 + 1578) = v552.mSampleTime + *&v18;
        goto LABEL_49;
      }

      v19 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v26 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315906;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 79;
          WORD1(v553.mRateScalar) = 2048;
          *(&v553.mRateScalar + 4) = v25;
          WORD2(v553.mWordClockTime) = 2048;
          *(&v553.mWordClockTime + 6) = v24;
          _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v553, 0x26u);
        }
      }

      v28 = *(v8 + 1588);
      if (v28 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v28, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 79, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v25, v24);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, v8[3150], 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v19;
    goto LABEL_48;
  }

LABEL_49:
  v550 = v8 + 626;
  v551 = (*(*(v8 + 313) + 16))();
  CADeprecated::CAMutex::Lock((v8 + 648));
  ++v8[3150];
  CADeprecated::CAMutex::Unlock((v8 + 648));
  v29 = v8[123];
  v549 = v29;
  v548 = v29;
  v30 = *(v9 + 3249);
  v537 = v8;
  if (v30)
  {
    *(v9 + 385) = 1;
    if (v7->mNumberBuffers == v8[91])
    {
      v521 = (v8 + 84);
      if (v538)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_928:
    if (v551 == 1)
    {
      (*(*v550 + 24))(v550);
    }

    v11 = 1;
LABEL_931:
    if (*(v9 + 3249) == 1 && *(v8 + 1589))
    {
      v282 = mach_absolute_time();
      v475 = *(v8 + 1589);
      v218 = 0x280898000;
      if (VPTimestampLogScope(void)::once != -1)
      {
        goto LABEL_962;
      }

      goto LABEL_934;
    }

    goto LABEL_943;
  }

  if (v7->mNumberBuffers != v8[91])
  {
    goto LABEL_928;
  }

  v521 = (v8 + 84);
  if ((*(v9 + 3250) & 1) == 0)
  {
    goto LABEL_83;
  }

  if (v538)
  {
LABEL_62:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  v31 = *(v8 + 200);
  mNumberBuffers = v31->mNumberBuffers;
  v538 = v31;
  if (mNumberBuffers)
  {
    v33 = 0;
    p_mData = &v31->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v33;
      p_mData += 2;
    }

    while (v33 < v31->mNumberBuffers);
    v30 = *(v9 + 3249);
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, a6, v538);
  if ((*(v9 + 3249) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, a6, v538, &v552);
LABEL_64:
  v35 = v540;
  if (!v540)
  {
    v35 = *(v8 + 201);
    if (v35->mNumberBuffers)
    {
      v36 = 0;
      v37 = &v35->mBuffers[0].mData;
      do
      {
        v38 = v35;
        bzero(*v37, *(v37 - 1));
        v35 = v38;
        ++v36;
        v37 += 2;
      }

      while (v36 < v38->mNumberBuffers);
      v8 = v537;
    }
  }

  v540 = v35;
  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, a6, v540), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, a6, v540, &v552);
  }

  if (!v532)
  {
    v39 = *(v8 + 202);
    v40 = v39->mNumberBuffers;
    v532 = v39;
    if (v40)
    {
      v41 = 0;
      v42 = &v39->mBuffers[0].mData;
      do
      {
        bzero(*v42, *(v42 - 1));
        ++v41;
        v42 += 2;
      }

      while (v41 < v39->mNumberBuffers);
      v8 = v537;
    }
  }

  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, a6, v532), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, a6, v532, &v552);
  }

  v29 = v8[123];
LABEL_83:
  if (v29 != a6)
  {
    if (*(v9 + 3171))
    {
      v53 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
      v54 = *(v8 + 1981);
      if (v53 > v54)
      {
        *(v8 + 1981) = v54 + 10.0;
        VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], a6, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v55 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v55)
        {
          v56 = v55;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v553.mSampleTime) = 136315650;
            *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v553.mHostTime) = 1024;
            *(&v553.mHostTime + 6) = 190;
            WORD1(v553.mRateScalar) = 2048;
            *(&v553.mRateScalar + 4) = v53;
            _os_log_impl(&dword_2724B4000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v553, 0x1Cu);
          }
        }

        v57 = *(v8 + 1588);
        if (v57 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v57, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 190, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v53);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v58 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v58)
        {
          v59 = v58;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v7->mBuffers[0].mDataByteSize;
            v61 = v8[123];
            CAFormatter::CAFormatter(&inInputBufferLists, v521);
            v62 = v8[3150];
            LODWORD(v553.mSampleTime) = 136316674;
            *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v553.mHostTime) = 1024;
            *(&v553.mHostTime + 6) = 196;
            WORD1(v553.mRateScalar) = 1024;
            HIDWORD(v553.mRateScalar) = a6;
            LOWORD(v553.mWordClockTime) = 1024;
            *(&v553.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v553.mWordClockTime) = 1024;
            *&v553.mSMPTETime.mSubframes = v61;
            LOWORD(v553.mSMPTETime.mCounter) = 2080;
            *(&v553.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
            HIWORD(v553.mSMPTETime.mFlags) = 1024;
            *&v553.mSMPTETime.mHours = v62;
            _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v553, 0x34u);
            if (*&inInputBufferLists.mSampleTime)
            {
              free(*&inInputBufferLists.mSampleTime);
            }
          }
        }

        v63 = *(v8 + 1588);
        if (v63)
        {
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v64 = VPLogScope(void)::scope;
            v65 = v7->mBuffers[0].mDataByteSize;
            v66 = v8[123];
            CAFormatter::CAFormatter(&v553, v521);
            CALegacyLog::log(v63, 1, v64, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 196, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", a6, v65, v66, *&v553.mSampleTime, v8[3150]);
LABEL_188:
            if (*&v553.mSampleTime)
            {
              free(*&v553.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      *(v9 + 3171) = 1;
      *(v8 + 1978) = mach_absolute_time();
      *(v8 + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], a6, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v74 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v75 = (*v74 ? *v74 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 167;
          _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v553, 0x12u);
        }
      }

      v76 = *(v8 + 1588);
      if (v76 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v76, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 167, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v77 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v78 = (*v77 ? *v77 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = v7->mBuffers[0].mDataByteSize;
          v80 = v8[123];
          CAFormatter::CAFormatter(&inInputBufferLists, v521);
          v81 = v8[3150];
          LODWORD(v553.mSampleTime) = 136316674;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 173;
          WORD1(v553.mRateScalar) = 1024;
          HIDWORD(v553.mRateScalar) = a6;
          LOWORD(v553.mWordClockTime) = 1024;
          *(&v553.mWordClockTime + 2) = v79;
          HIWORD(v553.mWordClockTime) = 1024;
          *&v553.mSMPTETime.mSubframes = v80;
          LOWORD(v553.mSMPTETime.mCounter) = 2080;
          *(&v553.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
          HIWORD(v553.mSMPTETime.mFlags) = 1024;
          *&v553.mSMPTETime.mHours = v81;
          _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v553, 0x34u);
          if (*&inInputBufferLists.mSampleTime)
          {
            free(*&inInputBufferLists.mSampleTime);
          }
        }
      }

      v82 = *(v8 + 1588);
      if (v82 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v83 = VPLogScope(void)::scope;
        v84 = v7->mBuffers[0].mDataByteSize;
        v85 = v8[123];
        CAFormatter::CAFormatter(&v553, v521);
        CALegacyLog::log(v82, 2, v83, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 173, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", a6, v84, v85, *&v553.mSampleTime, v8[3150]);
        goto LABEL_188;
      }
    }

    if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, a6, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, a6, v7, &v552);
    }

    v73 = *(v8 + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_928;
    }

LABEL_197:
    AudioIssueDetectorLibraryLoader(void)::libSym(v73, 70, 0, v7, a6, &v552);
    goto LABEL_928;
  }

  if (v7->mBuffers[0].mDataByteSize != v8[90] * a6)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v67 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v68 = (*v67 ? *v67 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = v7->mBuffers[0].mDataByteSize;
        v70 = v8[90] * a6;
        LODWORD(v553.mSampleTime) = 136315906;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 217;
        WORD1(v553.mRateScalar) = 1024;
        HIDWORD(v553.mRateScalar) = v69;
        LOWORD(v553.mWordClockTime) = 1024;
        *(&v553.mWordClockTime + 2) = v70;
        _os_log_impl(&dword_2724B4000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v553, 0x1Eu);
      }
    }

    v71 = *(v8 + 1588);
    v72 = *(v9 + 3249);
    if (v71)
    {
      if ((*(v9 + 3249) & 1) == 0 && *(v9 + 3250) != 1)
      {
        goto LABEL_151;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v71, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 217, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, v8[90] * a6);
      v72 = *(v9 + 3249);
    }

    if (v72)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, a6, v7);
      if (*(v9 + 3249))
      {
LABEL_152:
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, a6, v7, &v552);
LABEL_153:
        v73 = *(v8 + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_928;
        }

        goto LABEL_197;
      }
    }

LABEL_151:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  p_mSampleTime = &v13->mSampleTime;
  if (*(v9 + 3171) != 1)
  {
    goto LABEL_221;
  }

  *(v9 + 3171) = 0;
  v43 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], a6, "processdownlinkaudio: <block size no longer mismatched>");
  if (v43 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v86 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v86)
    {
      v87 = v86;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v553.mSampleTime) = 136315650;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 246;
        WORD1(v553.mRateScalar) = 2048;
        *(&v553.mRateScalar + 4) = v43;
        _os_log_impl(&dword_2724B4000, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v553, 0x1Cu);
      }
    }

    v88 = *(v8 + 1588);
    if (v88 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v88, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 246, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v43);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v89 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v89)
    {
      v90 = v89;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v91 = v8[123];
        LODWORD(v553.mSampleTime) = 136315906;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 250;
        WORD1(v553.mRateScalar) = 1024;
        HIDWORD(v553.mRateScalar) = a6;
        LOWORD(v553.mWordClockTime) = 1024;
        *(&v553.mWordClockTime + 2) = v91;
        _os_log_impl(&dword_2724B4000, v90, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v553, 0x1Eu);
      }
    }

    v50 = *(v8 + 1588);
    if (v50 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = 250;
      v52 = 2;
      goto LABEL_220;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v44 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v44)
    {
      v45 = v44;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315650;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 238;
        WORD1(v553.mRateScalar) = 2048;
        *(&v553.mRateScalar + 4) = v43;
        _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v553, 0x1Cu);
      }
    }

    v46 = *(v8 + 1588);
    if (v46 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v46, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 238, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v43);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v47 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v47)
    {
      v48 = v47;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v49 = v8[123];
        LODWORD(v553.mSampleTime) = 136315906;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 242;
        WORD1(v553.mRateScalar) = 1024;
        HIDWORD(v553.mRateScalar) = a6;
        LOWORD(v553.mWordClockTime) = 1024;
        *(&v553.mWordClockTime + 2) = v49;
        _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v553, 0x1Eu);
      }
    }

    v50 = *(v8 + 1588);
    if (v50 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v51 = 242;
      v52 = 1;
LABEL_220:
      CALegacyLog::log(v50, v52, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", v51, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", a6, v8[123]);
    }
  }

LABEL_221:
  v92 = *(v8 + 49);
  NumberOfSourceFrames = v8[123];
  if (*(v8 + 48))
  {
    if (v92)
    {
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v92, v8[123]);
      v548 = NumberOfSourceFrames;
      v92 = *(v8 + 48);
LABEL_228:
      LODWORD(NumberOfSourceFrames) = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v92, NumberOfSourceFrames);
      goto LABEL_229;
    }

    v92 = *(v8 + 48);
LABEL_227:
    v548 = v8[123];
    goto LABEL_228;
  }

  if (v92)
  {
    goto LABEL_227;
  }

LABEL_229:
  v94 = *(v8 + 14);
  v95 = *v94;
  if (v95 >= 1)
  {
    v96 = NumberOfSourceFrames * v8[60];
    v97 = (v95 + 3) & 0xFFFFFFFC;
    v98 = vdupq_n_s64(v95 - 1);
    v99 = xmmword_2727564D0;
    v100 = xmmword_2727564E0;
    v101 = v94 + 11;
    v102 = vdupq_n_s64(4uLL);
    do
    {
      v103 = vmovn_s64(vcgeq_u64(v98, v100));
      if (vuzp1_s16(v103, *v98.i8).u8[0])
      {
        *(v101 - 8) = v96;
      }

      if (vuzp1_s16(v103, *&v98).i8[2])
      {
        *(v101 - 4) = v96;
      }

      if (vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, *&v99))).i32[1])
      {
        *v101 = v96;
        v101[4] = v96;
      }

      v99 = vaddq_s64(v99, v102);
      v100 = vaddq_s64(v100, v102);
      v101 += 16;
      v97 -= 4;
    }

    while (v97);
  }

  v547 = NumberOfSourceFrames;
  Signal = (*(*(v8 + 13) + 16))();
  *&v105 = v547;
  v549 = v547;
  v106 = *(v8 + 14);
  if (*(v9 + 3249) == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v547, *(v8 + 14)), v106 = *(v8 + 14), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v547, v106, &v552);
    v106 = *(v8 + 14);
  }

  v107 = *(v8 + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v107, 51, 0, v106, v547, &v552);
  }

  if ((*(v8 + 2090) & 1) != 0 || v8[20] == 7 && *(v8 + 3152) == 0.0)
  {
    Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v553, *(v8 + 14));
    v108 = (*&v553.mSampleTime + 8);
    v109 = 16 * **&v553.mSampleTime;
    for (i = (*&v553.mSampleTime + 8); v109; v109 -= 16)
    {
      v112 = *i;
      v111 = i[1];
      i += 4;
      Signal = vp::fill(v108, (v111 >> 2) / v112, 0.0);
      v108 += 2;
    }
  }

  v527 = a6;
  v113 = v8[57];
  if ((v113 & 0x20) != 0)
  {
    v116 = v8[61];
    if (v116 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 322;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Signal);
    v115 = (&p_mSampleTime - v117);
    bzero(&p_mSampleTime - v117, v118 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](Signal);
    v115 = &v514;
    v514 = 0;
    v515 = 0uLL;
    v116 = 1;
  }

  v119 = 0;
  mBuffers = v7->mBuffers;
  *v115 = v116;
  v120 = 2;
  if ((v113 & 0x20) != 0)
  {
    goto LABEL_257;
  }

LABEL_256:
  for (j = 1; v119 < j; j = v8[61])
  {
    *&v115[v120] = *(*(v8 + 14) + v120 * 4);
    ++v119;
    v120 += 4;
    if ((v113 & 0x20) == 0)
    {
      goto LABEL_256;
    }

LABEL_257:
    ;
  }

  v536 = v9;
  v528 = v7;
  v122 = v8[67];
  if ((v122 & 0x20) != 0)
  {
    v124 = v8[71];
    if (v124 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 327;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      v504 = __cxa_allocate_exception(0x10uLL);
      *v504 = &unk_2881B25F8;
      v504[2] = -50;
    }

    MEMORY[0x28223BE20](v114);
    v123 = (&p_mSampleTime - v125);
    bzero(&p_mSampleTime - v125, v126 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v114);
    v123 = &v514;
    v514 = 0;
    v515 = 0uLL;
    v124 = 1;
  }

  v127 = 0;
  v128 = 0;
  v123->mNumberBuffers = v124;
  v129 = v123->mBuffers;
  if ((v122 & 0x20) != 0)
  {
    goto LABEL_267;
  }

LABEL_266:
  for (k = 1; v128 < k; k = v8[71])
  {
    v131 = v123 + v127;
    *(v131 + 2) = *(*(v8 + 23) + v127 + 16);
    *(v131 + 2) = 1;
    *(v131 + 3) = 4 * LODWORD(v105);
    ++v128;
    v127 += 16;
    if ((v122 & 0x20) == 0)
    {
      goto LABEL_266;
    }

LABEL_267:
    ;
  }

  if ((v8[2216] & 1) != 0 && (v8[2218] & 1) != 0 && *(v8 + 439))
  {
    v105 = *&v8;
    v132 = atomic_load(v8 + 2047);
    if (v132)
    {
      v563.mSampleTime = v105;
      *&v553.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV4::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
      v553.mHostTime = &v563;
      *&inInputBufferLists.mSampleTime = &v553;
      caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((*&v105 + 16296), &inInputBufferLists);
      atomic_fetch_add((*&v105 + 16376), -v132);
    }

    v133 = *(*&v105 + 2320);
    v8 = *&v105;
    if (v133 != *(*&v105 + 2328))
    {
      AudioUnitSetParameter(*(*&v105 + 3512), 0x75696F72u, 0, 0, v133, 0);
    }

    v553 = v552;
    LODWORD(v560.mSampleTime) = 512;
    *&inInputBufferLists.mSampleTime = v115;
    *&v563.mSampleTime = v123;
    v134 = *(*&v105 + 3512);
    LODWORD(v105) = v549;
    AudioUnitProcessMultiple(v134, &v560, &v553, v549, 1u, &inInputBufferLists, 1u, &v563);
  }

  else if (v8[20] || v8[61] != 2)
  {
    v162 = &v129[v124];
    while (v129 != v162)
    {
      vp::fill(v129, *&v105, 0.0);
      v163 = 16 * *v115;
      for (m = v115 + 2; v163; v163 -= 16)
      {
        MEMORY[0x2743CCD80](v129->mData, 1, *(m + 1), 1, v129->mData, 1, *&v105);
        m += 4;
      }

      ++v129;
    }
  }

  else
  {
    if (v116 >= v124)
    {
      v135 = v124;
    }

    else
    {
      v135 = v116;
    }

    if (v135)
    {
      v136 = (v115 + 4);
      v137 = &v123->mBuffers[0].mData;
      do
      {
        v138 = *(v136 - 1);
        v139 = *(v137 - 1);
        if (v138 >= v139)
        {
          v140 = v139;
        }

        else
        {
          v140 = v138;
        }

        memcpy(*v137, *v136, v140);
        v136 += 2;
        v137 += 2;
        --v135;
      }

      while (v135);
    }
  }

  if ((v8[2216] & 2) != 0 && (v8[2218] & 2) != 0)
  {
    v141 = *(v8 + 440);
    if (v141)
    {
      v553 = v552;
      LODWORD(v563.mSampleTime) = 512;
      MEMORY[0x28223BE20](v141);
      v515 = 0uLL;
      v514 = 0;
      v515 = *(*(v8 + 23) + 8);
      LODWORD(v514) = 1;
      *&inInputBufferLists.mSampleTime = &v514;
      AudioUnitProcessMultiple(v142, &v563, &v553, LODWORD(v105), 1u, &inInputBufferLists, 0, &v560);
    }
  }

  v143 = *(v8 + 48);
  if (v143)
  {
    VoiceProcessor::SampleRateConverter::Convert(v143, &v549, &v548, v123, *(v8 + 24));
    LODWORD(v105) = v548;
    v549 = v548;
    v123 = *(v8 + 24);
  }

  v145 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
  v146 = 0;
  v147 = 0;
  v148 = (LODWORD(v105) / v8[132]);
  inInputBufferLists = v552;
  v149 = v123->mBuffers;
  v542 = &v123->mBuffers[0].mData;
  do
  {
    if (v123->mNumberBuffers - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 435;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      v491 = __cxa_allocate_exception(0x10uLL);
      *v491 = &unk_2881B25F8;
      v491[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v151 = (&p_mSampleTime - v150);
    bzero(&p_mSampleTime - v150, v152 + 24);
    v153 = v123->mNumberBuffers;
    v151->mNumberBuffers = v153;
    if (v153)
    {
      v154 = &v151->mBuffers[0].mData;
      v155 = v542;
      do
      {
        *(v154 - 2) = 1;
        *(v154 - 1) = 4 * v148;
        v156 = *v155;
        v155 += 2;
        *v154 = &v156[4 * v146];
        v154 += 2;
        --v153;
      }

      while (v153);
    }

    v157 = *(v8 + 1108);
    if ((v157 & 4) != 0 && (v8[2218] & 4) != 0)
    {
      Parameter = *(v8 + 441);
      if (Parameter)
      {
        v553 = inInputBufferLists;
        LODWORD(v563.mSampleTime) = 512;
        Parameter = AudioUnitProcess(Parameter, &v563, &v553, v148, v151);
        if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v148, v151, &v553);
        }

        v157 = *(v8 + 1108);
      }
    }

    if ((v157 & 0x40) != 0 && (v8[2218] & 0x40) != 0)
    {
      Parameter = *(v8 + 445);
      if (Parameter)
      {
        v553 = inInputBufferLists;
        *&v563.mSampleTime = v151;
        v563.mHostTime = 0;
        *&v560.mSampleTime = v151;
        v560.mHostTime = 0;
        v562.mNumberBuffers = 512;
        AudioUnitProcessMultiple(Parameter, &v562.mNumberBuffers, &v553, v148, 2u, &v563, 2u, &v560);
        Parameter = AudioUnitGetParameter(*(v8 + 445), 1u, 0, 0, v8 + 4189);
        v157 = *(v8 + 1108);
      }
    }

    if (v157 & 0x100) != 0 && (*(v8 + 8873))
    {
      Parameter = *(v8 + 447);
      if (Parameter)
      {
        v553 = inInputBufferLists;
        AudioUnitSetParameter(Parameter, 5u, 0, 0, v145, 0);
        LODWORD(v563.mSampleTime) = 512;
        Parameter = AudioUnitProcess(*(v8 + 447), &v563, &v553, v148, v151);
        if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v148, v151, &v553);
        }

        v157 = *(v8 + 1108);
      }
    }

    if ((v157 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
    {
      if (*(v8 + 453))
      {
        Parameter = (*(*v8 + 680))(v8, v151, v148, &inInputBufferLists);
        if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1)
        {
          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v148, v151, &inInputBufferLists);
        }
      }
    }

    v146 += v148;
    inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v148;
    ++v147;
  }

  while (v147 < v8[132]);
  v158 = v8[77];
  if ((v158 & 0x20) != 0)
  {
    v160 = v8[81];
    v161 = v527;
    v7 = v528;
    v9 = v536;
    if ((v160 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 490;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      v505 = __cxa_allocate_exception(0x10uLL);
      *v505 = &unk_2881B25F8;
      v505[2] = -50;
    }

    MEMORY[0x28223BE20](Parameter);
    v159 = (&p_mSampleTime - v165);
    bzero(&p_mSampleTime - v165, v166 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](Parameter);
    v159 = &v514;
    v514 = 0;
    v515 = 0uLL;
    v160 = 1;
    v161 = v527;
    v7 = v528;
    v9 = v536;
  }

  *v159 = v160;
  v168 = *(v8 + 48);
  v167 = *(v8 + 49);
  if (v167)
  {
    if (v168)
    {
      v548 = v8[123];
      v167 = VoiceProcessor::SampleRateConverter::Convert(v167, &v549, &v548, v123, *(v8 + 25));
      v169 = 0;
      v170 = v8[77];
      v171 = 2;
      v172 = v540;
      if ((v170 & 0x20) != 0)
      {
        goto LABEL_339;
      }

LABEL_338:
      for (n = 1; v169 < n; n = v8[81])
      {
        *&v159[v171] = *(*(v8 + 25) + v171 * 4);
        ++v169;
        v171 += 4;
        if ((v170 & 0x20) == 0)
        {
          goto LABEL_338;
        }

LABEL_339:
        ;
      }
    }

    else
    {
      v167 = VoiceProcessor::SampleRateConverter::Convert(v167, &v549, &v548, v123, *(v8 + 25));
      v178 = 0;
      v179 = v8[77];
      v180 = 2;
      v172 = v540;
      if ((v179 & 0x20) != 0)
      {
        goto LABEL_352;
      }

LABEL_351:
      for (ii = 1; v178 < ii; ii = v8[81])
      {
        *&v159[v180] = *(*(v8 + 25) + v180 * 4);
        ++v178;
        v180 += 4;
        if ((v179 & 0x20) == 0)
        {
          goto LABEL_351;
        }

LABEL_352:
        ;
      }
    }

    v549 = v548;
  }

  else
  {
    v174 = v159 + 2;
    if (v168)
    {
      v175 = 0;
      v172 = v540;
      if ((v158 & 0x20) != 0)
      {
        goto LABEL_346;
      }

LABEL_345:
      for (jj = 1; v175 < jj; jj = v8[81])
      {
        v177 = *v149++;
        *v174++ = v177;
        ++v175;
        if ((v158 & 0x20) == 0)
        {
          goto LABEL_345;
        }

LABEL_346:
        ;
      }
    }

    else
    {
      v172 = v540;
      if ((v158 & 0x20) != 0)
      {
        goto LABEL_691;
      }

LABEL_690:
      for (kk = 1; v168 < kk; kk = v8[81])
      {
        v390 = *v149++;
        *v174++ = v390;
        ++v168;
        if ((v158 & 0x20) == 0)
        {
          goto LABEL_690;
        }

LABEL_691:
        ;
      }
    }
  }

  v563 = v552;
  if (!v8[132])
  {
LABEL_644:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    v358 = DynamicsDSPChannelCount;
    v359 = *(v8 + 1108);
    if ((v359 & 0x200000000) != 0 && (v8[2219] & 2) != 0)
    {
      v360 = *(v8 + 472);
      if (v360)
      {
        if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1001;
          }

          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 988;
          v506 = MEMORY[0x277D86220];
          goto LABEL_1000;
        }

        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v362 = (&p_mSampleTime - v361);
        bzero(&p_mSampleTime - v361, v363 + 24);
        v362->mNumberBuffers = v358;
        memcpy(v362->mBuffers, mBuffers, 16 * v358);
        LODWORD(v553.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v360, &v553, &v552, v8[123], v362);
        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v161, v362, &v552);
        }

        v359 = *(v8 + 1108);
      }
    }

    if ((v359 & 0x1000000000) == 0)
    {
      goto LABEL_660;
    }

    if ((v8[2219] & 0x10) == 0)
    {
      goto LABEL_660;
    }

    v364 = *(v8 + 475);
    if (!v364)
    {
      goto LABEL_660;
    }

    if (v358 - 65 > 0xFFFFFFBF)
    {
      MEMORY[0x28223BE20](DynamicsDSPChannelCount);
      v366 = (&p_mSampleTime - v365);
      bzero(&p_mSampleTime - v365, v367 + 24);
      v366->mNumberBuffers = v358;
      memcpy(v366->mBuffers, mBuffers, 16 * v358);
      LODWORD(v553.mSampleTime) = 512;
      DynamicsDSPChannelCount = AudioUnitProcess(v364, &v553, &v552, v8[123], v366);
      if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
      {
        DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x38u, v161, v366, &v552);
      }

      v359 = *(v8 + 1108);
LABEL_660:
      if ((v359 & 0x2000000000) != 0 && (v8[2219] & 0x20) != 0 && (DynamicsDSPChannelCount = *(v8 + 476)) != 0)
      {
        if (v358 == v7->mNumberBuffers)
        {
          v553 = v552;
          LODWORD(v560.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v560, &v553, v8[123], v7);
        }

        else
        {
          v396 = *(v8 + 26);
          if (v396->mNumberBuffers)
          {
            v397 = 0;
            v398 = 16;
            do
            {
              memcpy(*(&v396->mNumberBuffers + v398), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
              ++v397;
              v396 = *(v8 + 26);
              v398 += 16;
            }

            while (v397 < v396->mNumberBuffers);
            DynamicsDSPChannelCount = *(v8 + 476);
          }

          v553 = v552;
          v546.mNumberBuffers = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v546.mNumberBuffers, &v553, v8[123], v396);
          if ((v8[2217] & 0x40) != 0 && (v8[2219] & 0x40) != 0 && (DynamicsDSPChannelCount = *(v8 + 477)) != 0)
          {
            v399 = v8[580];
            if (v399 != v8[582])
            {
              AudioUnitSetParameter(DynamicsDSPChannelCount, 0, 0, 0, v399, 0);
              DynamicsDSPChannelCount = *(v8 + 477);
            }

            *&v562.mNumberBuffers = *(v8 + 26);
            *&v561.mNumberBuffers = v7;
            v560 = v552;
            LODWORD(v556) = 512;
            DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v556, &v560, v8[123], 1u, &v562, 1u, &v561);
            if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
            {
              DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v161, v7, &v560);
            }
          }

          else if (v7->mNumberBuffers)
          {
            v400 = 0;
            v401 = &v7->mBuffers[0].mData;
            do
            {
              v402 = *(v8 + 26);
              if (v400 >= *v402)
              {
                v403 = 0;
              }

              else
              {
                v403 = v400;
              }

              DynamicsDSPChannelCount = memcpy(*v401, *&v402[4 * v403 + 4], *(v401 - 1));
              ++v400;
              v401 += 2;
            }

            while (v400 < v7->mNumberBuffers);
          }
        }
      }

      else if ((v359 & 0x20000000000) != 0 && (v368 = *(v8 + 1109), (v368 & 0x20000000000) != 0) && *(v8 + 480))
      {
        if ((v359 & v368 & 0x40000000000) != 0 && *(v8 + 481))
        {
          if (v358 - 65 <= 0xFFFFFFBF)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v553.mSampleTime) = 136315394;
              *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
              WORD2(v553.mHostTime) = 1024;
              *(&v553.mHostTime + 6) = 1061;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
            }

            v512 = __cxa_allocate_exception(0x10uLL);
            *v512 = &unk_2881B25F8;
            v512[2] = -50;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v370 = (&p_mSampleTime - v369);
          bzero(&p_mSampleTime - v369, v371 + 24);
          v372 = 0;
          *v370 = v358;
          v373 = *(v8 + 26);
          v374 = 16 * v358;
          do
          {
            v375 = memcpy(*(v373 + v372 + 16), v7->mBuffers[v372 / 0x10].mData, *(v373 + v372 + 12));
            v373 = *(v8 + 26);
            *&v370[v372 / 4 + 2] = *(v373 + v372 + 8);
            v372 += 16;
          }

          while (v374 != v372);
          *&v560.mSampleTime = v370;
          v376 = v8[1081];
          if ((v376 - 65) < 0xFFFFFFC0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v553.mSampleTime) = 136315394;
              *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
              WORD2(v553.mHostTime) = 1024;
              *(&v553.mHostTime + 6) = 1073;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
            }

            v513 = __cxa_allocate_exception(0x10uLL);
            *v513 = &unk_2881B25F8;
            v513[2] = -50;
          }

          MEMORY[0x28223BE20](v375);
          v378 = (&p_mSampleTime - v377);
          bzero(&p_mSampleTime - v377, v379 + 24);
          v378->mNumberBuffers = v376;
          v380 = v7 + 1;
          v381 = 8;
          v382 = v376;
          do
          {
            v383 = *&v380->mNumberBuffers;
            v380 = (v380 + 32);
            *(&v378->mNumberBuffers + v381) = v383;
            v381 += 16;
            --v382;
          }

          while (v382);
          *&v562.mNumberBuffers = v378;
          if ((*(v8 + 2261) & 1) != 0 || !v8[20] && v8[61] == 2)
          {
            v384 = v8[580];
            if (v384 != v8[582])
            {
              AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v384, 0);
            }
          }

          v553 = v552;
          v561.mNumberBuffers = 512;
          AudioUnitProcessMultiple(*(v8 + 481), &v561.mNumberBuffers, &v553, v8[123], 1u, &v560, 1u, &v562);
          if (*(v9 + 3249) & 1) != 0 || (*(v9 + 3250))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v161, v378, &v553);
          }

          v404 = &v7->mBuffers[0].mData;
          do
          {
            memcpy(*v404, v404[2], *(v404 - 1));
            v404 += 4;
            --v376;
          }

          while (v376);
          v8 = v537;
        }

        else if ((v8[565] & 1) == 0 && v7->mNumberBuffers >= 2)
        {
          v394 = v7[1].mBuffers;
          v395 = 1;
          do
          {
            memcpy(*v394, v7->mBuffers[0].mData, *(v394 - 1));
            ++v395;
            v394 += 2;
          }

          while (v395 < v7->mNumberBuffers);
        }

        v553 = v552;
        LODWORD(v560.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*(v8 + 480), &v560, &v553, v8[123], v7);
      }

      else if (v359 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
      {
        v391 = v7->mNumberBuffers;
        if (v7->mNumberBuffers >= 2)
        {
          if (v537[81] == 1)
          {
            DynamicsDSPChannelCount = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
            v391 = v7->mNumberBuffers;
          }

          if (v391 >= 3)
          {
            v392 = &v7[2];
            v393 = 2;
            do
            {
              bzero(*v392, *(v392 - 1));
              ++v393;
              v392 += 2;
            }

            while (v393 < v7->mNumberBuffers);
          }
        }
      }

      else if ((v8[565] & 1) == 0)
      {
        v385 = v537[81];
        v386 = v385 <= 1 ? 1 : v385;
        if (v386 < v7->mNumberBuffers)
        {
          v387 = &mBuffers[(v386 - 1)];
          v388 = 16 * v386 + 16;
          do
          {
            DynamicsDSPChannelCount = memcpy(*(&v7->mNumberBuffers + v388), v387[1], *(v387 + 1));
            ++v386;
            v388 += 16;
          }

          while (v386 < v7->mNumberBuffers);
        }
      }

      v8 = v537;
      v405 = *(v537 + 1108);
      if ((v405 & 0x100000000000000) == 0 || (v406 = *(v537 + 1109), (v406 & 0x100000000000000) == 0) || !*(v537 + 495))
      {
        if ((v405 & 0x200000000000000) == 0 || (v406 = *(v537 + 1109), (v406 & 0x200000000000000) == 0) || !*(v537 + 496))
        {
          if ((v405 & 0x400000000000000) == 0 || (v406 = *(v537 + 1109), (v406 & 0x400000000000000) == 0) || !*(v537 + 497))
          {
            v423 = 0;
LABEL_772:
            if ((v405 & 0x10000000000000) != 0 && (*(v8 + 8878) & 0x10) != 0)
            {
              DynamicsDSPChannelCount = *(v8 + 491);
              if (DynamicsDSPChannelCount)
              {
                *&v562.mNumberBuffers = v7;
                *&v561.mNumberBuffers = v7;
                v553 = v552;
                v546.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v546.mNumberBuffers, &v553, v8[123], 1u, &v562, 1u, &v561);
                if ((*(v8 + 8870) & 0x20) != 0 && (*(v8 + 8878) & 0x20) != 0)
                {
                  DynamicsDSPChannelCount = *(v8 + 492);
                  if (DynamicsDSPChannelCount)
                  {
                    v560 = v552;
                    LODWORD(v556) = 512;
                    DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v556, &v560, v8[123], v7);
                  }
                }

                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Cu, v8[123], v7, &v553);
                }

                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
            {
              DynamicsDSPChannelCount = *(v8 + 493);
              if (DynamicsDSPChannelCount)
              {
                v553 = v552;
                LODWORD(v560.mSampleTime) = 512;
                DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v560, &v553, v8[123], v7);
                v405 = *(v8 + 1108);
              }
            }

            if (v405 & 0x100000000000000) != 0 && (*(v8 + 8879))
            {
              DynamicsDSPChannelCount = *(v8 + 495);
              if (DynamicsDSPChannelCount)
              {
                if (v8[1136] == 1 && (v424 = *(v8 + 198)) != 0)
                {
                  ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v424);
                  DynamicsDSPChannelCount = *(v8 + 495);
                  v425 = 2;
                }

                else
                {
                  v425 = 1;
                }

                v426 = *(v8 + 198);
                *&v560.mSampleTime = v7;
                v560.mHostTime = v426;
                *&v562.mNumberBuffers = v7;
                v553 = v552;
                v561.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v561.mNumberBuffers, &v553, v8[123], v425, &v560, 1u, &v562);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v161, v7, &v553);
                }

                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
            {
              v427 = *(v8 + 496);
              if (v427)
              {
                v428 = v8[1081];
                if ((v428 - 65) <= 0xFFFFFFBF)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v553.mSampleTime) = 136315394;
                    *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
                    WORD2(v553.mHostTime) = 1024;
                    *(&v553.mHostTime + 6) = 1258;
                    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
                  }

                  v508 = __cxa_allocate_exception(0x10uLL);
                  *v508 = &unk_2881B25F8;
                  v508[2] = -50;
                }

                MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                v430 = (&p_mSampleTime - v429);
                bzero(&p_mSampleTime - v429, v431 + 24);
                v430->mNumberBuffers = v428;
                v432 = 8;
                v433 = mBuffers;
                do
                {
                  v434 = *v433;
                  v433 += 2;
                  *(&v430->mNumberBuffers + v432) = v434;
                  v432 += 16;
                  --v428;
                }

                while (v428);
                v435 = *(v8 + 198);
                *&v560.mSampleTime = v430;
                v560.mHostTime = v435;
                *&v562.mNumberBuffers = v430;
                v553 = v552;
                v561.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(v427, &v561.mNumberBuffers, &v553, v8[123], 1u, &v560, 1u, &v562);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v161, v430, &v553);
                }

                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
            {
              if (v8[1136] == 1 && (v436 = *(v8 + 198)) != 0)
              {
                DynamicsDSPChannelCount = ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v436);
                v437 = 2;
              }

              else
              {
                v437 = 1;
              }

              v438 = v8[1081];
              if ((v438 - 65) <= 0xFFFFFFBF)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v553.mSampleTime) = 136315394;
                  *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
                  WORD2(v553.mHostTime) = 1024;
                  *(&v553.mHostTime + 6) = 1285;
                  _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
                }

                v509 = __cxa_allocate_exception(0x10uLL);
                *v509 = &unk_2881B25F8;
                v509[2] = -50;
              }

              MEMORY[0x28223BE20](DynamicsDSPChannelCount);
              v440 = (&p_mSampleTime - v439);
              bzero(&p_mSampleTime - v439, v441 + 24);
              v440->mNumberBuffers = v438;
              v442 = v7 + 1;
              v443 = 8;
              do
              {
                v444 = *&v442->mNumberBuffers;
                v442 = (v442 + 32);
                *(&v440->mNumberBuffers + v443) = v444;
                v443 += 16;
                --v438;
              }

              while (v438);
              v445 = *(v8 + 198);
              *&v560.mSampleTime = v440;
              v560.mHostTime = v445;
              *&v562.mNumberBuffers = v440;
              v553 = v552;
              v561.mNumberBuffers = 512;
              AudioUnitProcessMultiple(*(v8 + 497), &v561.mNumberBuffers, &v553, v8[123], v437, &v560, 1u, &v562);
              if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v161, v440, &v553);
              }

              v405 = *(v8 + 1108);
            }

            if ((v405 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
            {
              LODWORD(v553.mSampleTime) = 1065353216;
              LODWORD(v560.mSampleTime) = 1065353216;
              if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v446 = *(v8 + 1139), v446 != 0.0))
              {
                v447 = __exp10f(v446 / 20.0);
                *&v560.mSampleTime = v447;
                *&v553.mSampleTime = v447;
              }

              else
              {
                v448 = *(v8 + 1137);
                if (v448 >= -300.0)
                {
                  if (v448 == 0.0)
                  {
                    v447 = 1.0;
                  }

                  else
                  {
                    if (v448 > 60.0)
                    {
                      v448 = 60.0;
                    }

                    v447 = __exp10f(v448 / 20.0);
                    *&v553.mSampleTime = v447;
                  }
                }

                else
                {
                  LODWORD(v553.mSampleTime) = 0;
                  v447 = 0.0;
                }

                v449 = *(v8 + 1138);
                if (v449 >= -300.0)
                {
                  if (v449 != 0.0)
                  {
                    if (v449 > 60.0)
                    {
                      v449 = 60.0;
                    }

                    LODWORD(v560.mSampleTime) = __exp10f(v449 / 20.0);
                  }
                }

                else
                {
                  LODWORD(v560.mSampleTime) = 0;
                }
              }

              if (v447 == 0.0)
              {
                bzero(v7->mBuffers[0].mData, 4 * v8[123]);
              }

              else if (v447 != 1.0)
              {
                MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v553, v7->mBuffers[0].mData, 1, v8[123]);
              }

              if (v7->mNumberBuffers >= 2)
              {
                v450 = 1;
                v451 = 32;
                do
                {
                  if (*&v560.mSampleTime == 0.0)
                  {
                    bzero(*(&v7->mNumberBuffers + v451), 4 * v8[123]);
                  }

                  else if (*&v560.mSampleTime != 1.0)
                  {
                    MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v451), 1, &v560, *(&v7->mNumberBuffers + v451), 1, v8[123], *&v560.mSampleTime);
                  }

                  ++v450;
                  v451 += 16;
                }

                while (v450 < v7->mNumberBuffers);
              }

              v405 = *(v8 + 1108);
            }

            if ((v405 & 0x80000000000) != 0 && (*(v8 + 8877) & 8) != 0 && *(v8 + 482))
            {
              v452 = *(*(v8 + 2140) + 16);
              v453 = v8[123];
              if (*(v8 + 17128) == 1)
              {
                v454 = v8[129];
                v455 = 0.0;
                if (v453 > v454)
                {
                  vDSP_vclr(&v452[v454], 1, (v453 - v454));
                }
              }

              else
              {
                v455 = 1.0;
                vDSP_vclr(v452, 1, v453);
              }

              AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v455, 0);
              if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
              {
                v456 = *(v8 + 404);
                if (v456)
                {
                  LODWORD(v553.mSampleTime) = 0;
                  AudioUnitGetParameter(v456, 9u, 0, 0, &v553);
                  AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v553.mSampleTime, 0);
                }
              }

              v457 = *(v8 + 482);
              v458 = atomic_load(VoiceProcessorV4::mIsOnEar);
              AudioUnitSetParameter(v457, 0x16u, 0, 0, v458, 0);
              v459 = *(v8 + 2140);
              *&v560.mSampleTime = v7;
              v560.mHostTime = v459;
              v553 = v552;
              v561.mNumberBuffers = 512;
              *&v562.mNumberBuffers = v7;
              v460 = v8[131];
              if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v460, v7, &v553), v460 = v8[131], v459 = *(v8 + 2140), (*(v9 + 3249)) || *(v9 + 3250) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v460, v459, &v553);
              }

              AudioUnitProcessMultiple(*(v8 + 482), &v561.mNumberBuffers, &v553, v8[123], 2u, &v560, 1u, &v562);
              if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, v8[131], v7, &v553);
              }

              AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
              v405 = *(v8 + 1108);
            }

            if ((v405 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
            {
              v461 = *(v8 + 483);
              if (v461)
              {
                v462 = p_mSampleTime[1];
                *&v553.mSampleTime = *p_mSampleTime;
                *&v553.mRateScalar = v462;
                v463 = p_mSampleTime[3];
                *&v553.mSMPTETime.mSubframes = p_mSampleTime[2];
                *&v553.mSMPTETime.mHours = v463;
                LODWORD(v560.mSampleTime) = 512;
                AudioUnitProcess(v461, &v560, &v553, v8[123], v7);
                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
            {
              v464 = *(v8 + 484);
              if (v464)
              {
                *&v560.mSampleTime = v7;
                *&v562.mNumberBuffers = v7;
                v465 = p_mSampleTime[1];
                *&v553.mSampleTime = *p_mSampleTime;
                *&v553.mRateScalar = v465;
                v466 = p_mSampleTime[3];
                *&v553.mSMPTETime.mSubframes = p_mSampleTime[2];
                *&v553.mSMPTETime.mHours = v466;
                v561.mNumberBuffers = 512;
                AudioUnitProcessMultiple(v464, &v561.mNumberBuffers, &v553, v8[123], 1u, &v560, 1u, &v562);
                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x4000000000000000) != 0 && (*(v8 + 8879) & 0x40) != 0)
            {
              v467 = *(v8 + 501);
              if (v467)
              {
                v553 = v552;
                LODWORD(v560.mSampleTime) = 512;
                AudioUnitProcess(v467, &v560, &v553, v8[123], v7);
                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
            {
              v468 = *(v8 + 485);
              if (v468)
              {
                v553 = v552;
                LODWORD(v560.mSampleTime) = 512;
                AudioUnitProcess(v468, &v560, &v553, v8[123], v7);
                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x800000000000) != 0)
            {
              v469 = v423;
            }

            else
            {
              v469 = 1;
            }

            if ((v469 & 1) == 0 && (*(v8 + 8877) & 0x80) != 0)
            {
              v470 = *(v8 + 486);
              if (v470)
              {
                v553 = v552;
                LODWORD(v560.mSampleTime) = 512;
                AudioUnitProcess(v470, &v560, &v553, v8[123], v7);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v553);
                }

                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
            {
              v471 = *(v8 + 489);
              if (v471)
              {
                v553 = v552;
                LODWORD(v560.mSampleTime) = 512;
                AudioUnitProcess(v471, &v560, &v553, v8[123], v7);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, v8[123], v7, &v553);
                }

                v405 = *(v8 + 1108);
              }
            }

            if ((v405 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
            {
              v472 = *(v8 + 490);
              if (v472)
              {
                v473 = v8[19];
                if (v473 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v473) & 1) != 0)
                {
                  v553 = v552;
                  LODWORD(v560.mSampleTime) = 512;
                  AudioUnitProcess(v472, &v560, &v553, v8[123], v7);
                  if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, v8[123], v7, &v553);
                  }
                }
              }
            }

            if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v161, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v161, v7, &v552);
            }

            v474 = *(v8 + 1993);
            if (AudioIssueDetectorLibraryLoader(void)::once != -1)
            {
              dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2944);
            }

            if (AudioIssueDetectorLibraryLoader(void)::libSym)
            {
              AudioIssueDetectorLibraryLoader(void)::libSym(v474, 70, 0, v7, v161, &v552);
            }

            if (v8[1135] == 1 && (v9[882] & 1) == 0)
            {
              VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v552, 0);
            }

            if (*(v9 + 3249) == 1)
            {
              VoiceProcessorV2::LoopBackRead(v8, v161, v7);
            }

            goto LABEL_928;
          }
        }
      }

      if ((v405 & v406 & 0x800000000000) != 0)
      {
        DynamicsDSPChannelCount = *(v537 + 486);
        if (DynamicsDSPChannelCount)
        {
          v553 = v552;
          LODWORD(v560.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v560, &v553, v537[123], v7);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v553);
          }

          v405 = *(v8 + 1108);
        }
      }

      if (v405 & 0x1000000000000) != 0 && (*(v8 + 8878))
      {
        v407 = *(v8 + 487);
        if (v407)
        {
          v408 = v8[1081];
          if ((v408 - 65) <= 0xFFFFFFBF)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1013;
            }

            LODWORD(v553.mSampleTime) = 136315394;
            *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
            WORD2(v553.mHostTime) = 1024;
            *(&v553.mHostTime + 6) = 1168;
            v510 = MEMORY[0x277D86220];
            goto LABEL_1012;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v410 = (&p_mSampleTime - v409);
          bzero(&p_mSampleTime - v409, v411 + 24);
          v410->mNumberBuffers = v408;
          v412 = 8;
          v413 = mBuffers;
          do
          {
            v414 = *v413;
            v413 += 2;
            *(&v410->mNumberBuffers + v412) = v414;
            v412 += 16;
            --v408;
          }

          while (v408);
          v553 = v552;
          LODWORD(v560.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v407, &v560, &v553, v8[123], v410);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, v8[123], v410, &v553);
          }

          v405 = *(v8 + 1108);
        }
      }

      if ((v405 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v415 = *(v8 + 488)) == 0)
      {
LABEL_770:
        v423 = 1;
        goto LABEL_772;
      }

      v416 = v8[1081];
      if ((v416 - 65) > 0xFFFFFFBF)
      {
        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v418 = (&p_mSampleTime - v417);
        bzero(&p_mSampleTime - v417, v419 + 24);
        v418->mNumberBuffers = v416;
        v420 = v7 + 1;
        v421 = 8;
        do
        {
          v422 = *&v420->mNumberBuffers;
          v420 = (v420 + 32);
          *(&v418->mNumberBuffers + v421) = v422;
          v421 += 16;
          --v416;
        }

        while (v416);
        v553 = v552;
        LODWORD(v560.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v415, &v560, &v553, v8[123], v418);
        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, v8[123], v418, &v553);
        }

        v405 = *(v8 + 1108);
        goto LABEL_770;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_1013:
        v511 = __cxa_allocate_exception(0x10uLL);
        *v511 = &unk_2881B25F8;
        v511[2] = -50;
      }

      LODWORD(v553.mSampleTime) = 136315394;
      *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
      WORD2(v553.mHostTime) = 1024;
      *(&v553.mHostTime + 6) = 1185;
      v510 = MEMORY[0x277D86220];
LABEL_1012:
      _os_log_impl(&dword_2724B4000, v510, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      goto LABEL_1013;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_1001:
      v507 = __cxa_allocate_exception(0x10uLL);
      *v507 = &unk_2881B25F8;
      v507[2] = -50;
    }

    LODWORD(v553.mSampleTime) = 136315394;
    *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
    WORD2(v553.mHostTime) = 1024;
    *(&v553.mHostTime + 6) = 1001;
    v506 = MEMORY[0x277D86220];
LABEL_1000:
    _os_log_impl(&dword_2724B4000, v506, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
    goto LABEL_1001;
  }

  v541 = 0;
  v182 = 0;
  v542 = (v8 + 878);
  v520 = (v8 + 690);
  v183 = v161;
  v524 = &v172->mBuffers[0].mData;
  v525 = (v159 + 4);
  v526 = &v538->mBuffers[0].mData;
  v522 = &v7->mBuffers[0].mData;
  v523 = &v532->mBuffers[0].mData;
  v11 = 1;
  v519 = -5000.0;
  while (1)
  {
    v184 = *(v8 + 308);
    v529 = v182;
    if ((v184 & 0x20) != 0)
    {
      v188 = v8[81];
      if ((v188 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 526;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
        }

        v502 = __cxa_allocate_exception(0x10uLL);
        *v502 = &unk_2881B25F8;
        v502[2] = -50;
      }

      MEMORY[0x28223BE20](v167);
      v187 = (&p_mSampleTime - v189);
      bzero(&p_mSampleTime - v189, v190 + 24);
      v186 = v540;
    }

    else
    {
      MEMORY[0x28223BE20](v167);
      v187 = &v514;
      v514 = 0;
      v515 = 0uLL;
      v188 = 1;
    }

    *v187 = v188;
    v191 = v532;
    if (v186)
    {
      v192 = v186->mNumberBuffers;
      if (v186->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 528;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
        }

        v495 = __cxa_allocate_exception(0x10uLL);
        *v495 = &unk_2881B25F8;
        v495[2] = -50;
      }
    }

    else
    {
      v192 = 1;
    }

    MEMORY[0x28223BE20](v185);
    v194 = (&p_mSampleTime - v193);
    bzero(&p_mSampleTime - v193, v195 + 24);
    v535 = v194;
    *v194 = v192;
    if (v191)
    {
      v197 = v191->mNumberBuffers;
      if (v191->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 531;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
        }

        v497 = __cxa_allocate_exception(0x10uLL);
        *v497 = &unk_2881B25F8;
        v497[2] = -50;
      }
    }

    else
    {
      v197 = 1;
    }

    MEMORY[0x28223BE20](v196);
    v199 = (&p_mSampleTime - v198);
    bzero(&p_mSampleTime - v198, v200 + 24);
    v534 = v199;
    *v199 = v197;
    if (v538)
    {
      v202 = v538->mNumberBuffers;
      if (v538->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 534;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
        }

        v499 = __cxa_allocate_exception(0x10uLL);
        *v499 = &unk_2881B25F8;
        v499[2] = -50;
      }
    }

    else
    {
      v202 = 1;
    }

    MEMORY[0x28223BE20](v201);
    v204 = (&p_mSampleTime - v203);
    bzero(&p_mSampleTime - v203, v205 + 24);
    *v204 = v202;
    v207 = *(v8 + 2260);
    v208 = *(v8 + 204);
    v539 = v187;
    if (v207 == 1)
    {
      if (!v208)
      {
        goto LABEL_384;
      }

      if (!*v208)
      {
        goto LABEL_382;
      }

      v209 = 0;
      v210 = (v208 + 4);
      do
      {
        bzero(*v210, *(v210 - 1));
        ++v209;
        v210 += 2;
      }

      while (v209 < *v208);
      v208 = *(v8 + 204);
      v191 = v532;
    }

    if (v208)
    {
LABEL_382:
      v211 = *v208;
      if ((*v208 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v553.mSampleTime) = 136315394;
          *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
          WORD2(v553.mHostTime) = 1024;
          *(&v553.mHostTime + 6) = 539;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
        }

        v501 = __cxa_allocate_exception(0x10uLL);
        *v501 = &unk_2881B25F8;
        v501[2] = -50;
      }

      goto LABEL_385;
    }

LABEL_384:
    v211 = 1;
LABEL_385:
    MEMORY[0x28223BE20](v206);
    v213 = (&p_mSampleTime - v212);
    bzero(&p_mSampleTime - v212, v214 + 24);
    v533 = v213;
    *v213 = v211;
    v216 = v7->mNumberBuffers;
    if ((v216 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 541;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      v492 = __cxa_allocate_exception(0x10uLL);
      *v492 = &unk_2881B25F8;
      v492[2] = -50;
    }

    MEMORY[0x28223BE20](v215);
    v218 = &p_mSampleTime - v217;
    bzero(&p_mSampleTime - v217, v219 + 24);
    *v218 = v216;
    v220 = *v539;
    if (v220)
    {
      v221 = 4 * v8[131];
      v222 = v541;
      v223 = v539 + 4;
      v224 = v525;
      do
      {
        *(v223 - 2) = 1;
        *(v223 - 1) = v221;
        v225 = *v224;
        v224 += 2;
        *v223 = v225 + 4 * v222;
        v223 += 2;
        --v220;
      }

      while (v220);
    }

    v226 = *v535;
    v227 = v540;
    if (v226)
    {
      v228 = 4 * v8[131];
      v229 = v541;
      v230 = (v535 + 4);
      v231 = v524;
      do
      {
        *(v230 - 2) = 1;
        *(v230 - 1) = v228;
        if (v227)
        {
          v232 = *v231 + 4 * v229;
        }

        else
        {
          v232 = 0;
        }

        *v230 = v232;
        v230 += 2;
        v231 += 2;
        --v226;
      }

      while (v226);
    }

    v233 = *v534;
    if (v233)
    {
      v234 = 4 * v8[131];
      v235 = v541;
      v236 = (v534 + 4);
      v237 = v523;
      do
      {
        *(v236 - 2) = 1;
        *(v236 - 1) = v234;
        if (v191)
        {
          v238 = *v237 + 4 * v235;
        }

        else
        {
          v238 = 0;
        }

        *v236 = v238;
        v236 += 2;
        v237 += 2;
        --v233;
      }

      while (v233);
    }

    v239 = *v204;
    v240 = v538;
    if (v239)
    {
      v241 = 4 * v8[131];
      v242 = v541;
      v243 = (v204 + 4);
      v244 = v526;
      do
      {
        *(v243 - 2) = 1;
        *(v243 - 1) = v241;
        if (v240)
        {
          v245 = *v244 + 4 * v242;
        }

        else
        {
          v245 = 0;
        }

        *v243 = v245;
        v243 += 2;
        v244 += 2;
        --v239;
      }

      while (v239);
    }

    if (v216)
    {
      v246 = 4 * v8[131];
      v247 = v541;
      v248 = (v218 + 16);
      v249 = v522;
      do
      {
        *(v248 - 2) = 1;
        *(v248 - 1) = v246;
        if (v7)
        {
          v250 = *v249 + 4 * v247;
        }

        else
        {
          v250 = 0;
        }

        *v248 = v250;
        v248 += 2;
        v249 += 2;
        --v216;
      }

      while (v216);
    }

    if (v211)
    {
      v251 = 4 * v8[131];
      v252 = v541;
      v253 = v211;
      v254 = v208 + 4;
      v255 = v533 + 2;
      do
      {
        *(v255 - 2) = 1;
        *(v255 - 1) = v251;
        if (v208)
        {
          v256 = *v254 + 4 * v252;
        }

        else
        {
          v256 = 0;
        }

        *v255 = v256;
        v255 += 2;
        v254 += 2;
        --v253;
      }

      while (v253);
    }

    if (v240 && (v8[565] & 1) != 0)
    {
      v257 = v538->mNumberBuffers >= v211 ? v211 : v538->mNumberBuffers;
      if (v257)
      {
        v258 = (v533 + 2);
        v259 = v526;
        do
        {
          v260 = *(v259 - 1);
          v261 = *(v258 - 1);
          if (v260 >= v261)
          {
            v262 = v261;
          }

          else
          {
            v262 = v260;
          }

          memcpy(*v258, *v259, v262);
          v259 += 2;
          v258 += 2;
          --v257;
        }

        while (v257);
      }
    }

    if (v540)
    {
      v263 = v535;
    }

    else
    {
      v263 = 0;
    }

    MonoABL = GetMonoABL(v263, &v562, v8[131]);
    if (v532)
    {
      v265 = v534;
    }

    else
    {
      v265 = 0;
    }

    v266 = GetMonoABL(v265, &v561, v8[131]);
    if (v538)
    {
      v267 = v204;
    }

    else
    {
      v267 = 0;
    }

    v531 = GetMonoABL(v267, &v546, v8[131]);
    if ((*(*v8 + 112))(v8) >= 7)
    {
      if (*(v536 + 3928) == 1)
      {
        v268 = *(v8 + 1108);
        if ((v268 & 0x400) != 0)
        {
          v269 = *(v8 + 1109);
          if ((v269 & 0x400) != 0)
          {
            if (*(v8 + 449))
            {
              if ((v268 & v269 & 2) != 0)
              {
                v270 = *(v8 + 440);
                if (v270)
                {
                  LODWORD(v553.mSampleTime) = 0;
                  AudioUnitGetParameter(v270, 0x73707062u, 0, 0, &v553);
                  AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v553.mSampleTime, 0);
                }
              }
            }
          }
        }
      }

      v271 = 0;
      *&v553.mSampleTime = 10;
      v553.mHostTime = v539;
      *&v553.mRateScalar = 11;
      v553.mWordClockTime = v531;
      *&v553.mSMPTETime.mSubframes = 12;
      *&v553.mSMPTETime.mType = MonoABL;
      *&v553.mSMPTETime.mHours = 13;
      *&v553.mFlags = v266;
      do
      {
        v272 = *(&v553.mSampleTime + v271);
        v273 = *(&v553.mHostTime + v271);
        if (!v273)
        {
          v273 = *(v8 + 203);
          if (v273->mNumberBuffers)
          {
            v274 = 0;
            v275 = &v273->mBuffers[0].mData;
            do
            {
              bzero(*v275, *(v275 - 1));
              ++v274;
              v275 += 2;
            }

            while (v274 < v273->mNumberBuffers);
            v8 = v537;
            v273 = *(v537 + 203);
          }
        }

        v276 = VoiceProcessorV2::VPUseAUInProcess(v8, v272, 0);
        if (v273)
        {
          v277 = v276;
        }

        else
        {
          v277 = 0;
        }

        if (v277)
        {
          v560 = v563;
          LODWORD(v556) = 512;
          AudioUnitProcess(v542[v272], &v556, &v560, v8[131], v273);
        }

        v271 += 16;
      }

      while (v271 != 64);
    }

    v278 = *(v8 + 1108);
    if ((v278 & 0x40000000) == 0)
    {
      goto LABEL_461;
    }

    v279 = *(v8 + 1109);
    if ((v279 & 0x40000000) == 0)
    {
      goto LABEL_461;
    }

    v280 = 0;
    if (!*(v8 + 469) || (v278 & v279 & 0x80000000) == 0)
    {
      goto LABEL_462;
    }

    if (*(v8 + 470) && *v520 && *(*v520 + 80))
    {
      vp::Audio_Buffer::prepare(v520, v8[131]);
      v298 = *(v8 + 345);
      if (v298)
      {
        v299 = *(v298 + 80);
      }

      else
      {
        v299 = 0;
      }

      if (*v299)
      {
        v353 = 0;
        v354 = (v299 + 4);
        do
        {
          bzero(*v354, *(v354 - 1));
          ++v353;
          v354 += 2;
        }

        while (v353 < *v299);
        v298 = *v520;
        v8 = v537;
      }

      if (v298)
      {
        v280 = *(v298 + 80);
      }

      else
      {
        v280 = 0;
      }

      LODWORD(v560.mSampleTime) = 512;
      v553 = v563;
      AudioUnitSetParameter(*(v8 + 469), 1u, 0, 0, (*(v8 + 3152) + -1.0) * 24.0, 0);
      AudioUnitProcess(*(v8 + 469), &v560, &v553, v8[131], v280);
      v355 = v8[131];
      if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, v8[131], v280, &v563);
        v355 = v8[131];
      }

      v553 = v563;
      LODWORD(v560.mSampleTime) = 512;
      AudioUnitProcess(*(v8 + 470), &v560, &v553, v355, v280);
      v356 = v8[131];
      if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v356, v280, &v553), v356 = v8[131], (*(v536 + 3249)) || *(v536 + 3250) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v356, v280, &v553);
      }

      v278 = *(v8 + 1108);
    }

    else
    {
LABEL_461:
      v280 = 0;
    }

LABEL_462:
    if (*(v8 + 2260))
    {
      v281 = v218;
    }

    else
    {
      v281 = v539;
    }

    if (*(v8 + 2260))
    {
      v282 = v533;
    }

    else
    {
      v282 = v531;
    }

    if (v282)
    {
      v283 = v282;
    }

    else
    {
      v283 = v280;
    }

    v530 = v283;
    if ((v278 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && v282)
    {
      v284 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
      *(v8 + 1121) = v284;
      LODWORD(v553.mSampleTime) = __exp10f(v284 / 20.0);
      v285 = *v282++;
      for (mm = 16 * v285; mm; mm -= 16)
      {
        MEMORY[0x2743CCE20](v282[1], 1, &v553, v282[1], 1, v8[131]);
        v282 += 2;
      }

      v278 = *(v8 + 1108);
    }

    if ((v278 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
    {
      (*(*v8 + 688))(v8, v539, v533);
      v278 = *(v8 + 1108);
    }

    if ((v278 & 0x8000) != 0 && (v287 = *(v8 + 1109), (v287 & 0x8000) != 0) && (v288 = *(v8 + 454)) != 0)
    {
      v289 = *(v8 + 2260);
      v553 = v563;
      LODWORD(v558) = 512;
      v290 = v535;
      if (((v540 != 0) & v289) == 0)
      {
        v290 = MonoABL;
      }

      *&v560.mSampleTime = v539;
      v560.mHostTime = v290;
      v291 = *&v534;
      if (((v532 != 0) & v289) == 0)
      {
        v291 = *&v266;
      }

      v292 = v533;
      if (((v538 != 0) & v289) == 0)
      {
        v292 = v531;
      }

      v560.mRateScalar = v291;
      v560.mWordClockTime = v292;
      *&v560.mSMPTETime.mSubframes = v280;
      if ((v278 & v287 & 2) != 0)
      {
        v300 = *(v8 + 440);
        v293 = v536;
        v294 = v530;
        if (v300 && ((v289 & 1) != 0 || *(v536 + 3929) == 1))
        {
          LODWORD(v556) = 0;
          v301 = AudioUnitGetParameter(v300, 0x73707062u, 0, 0, &v556);
          v303 = *&v556 == 1.0 && v301 == 0;
          LODWORD(v544) = v303;
          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v544, 4u);
          v288 = *(v8 + 454);
        }
      }

      else
      {
        v293 = v536;
        v294 = v530;
      }

      v556 = v281;
      *&v557 = v294;
      AudioUnitProcessMultiple(v288, &v558, &v553, v8[131], 5u, &v560, 2u, &v556);
      v304 = v8[131];
      if ((*(v293 + 3249) & 1) != 0 || *(v293 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v304, v281, &v553), v304 = v8[131], (*(v293 + 3249)) || *(v293 + 3250) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v304, v294, &v553);
      }
    }

    else
    {
      if (MonoABL)
      {
        LODWORD(v553.mSampleTime) = 1055175620;
        v282 = (v281 + 2);
        for (nn = 16 * *v281; nn; nn -= 16)
        {
          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v553, v282[1], 1, v282[1], 1, v8[131]);
          v282 += 2;
        }
      }

      v293 = v536;
      if (v266)
      {
        v282 = (v281 + 2);
        for (i1 = 16 * *v281; i1; i1 -= 16)
        {
          MEMORY[0x2743CCD80](v266->mBuffers[0].mData, 1, v282[1], 1, v282[1], 1, v8[131]);
          v282 += 2;
        }
      }

      v294 = v530;
      if (v280)
      {
        if (v280 != v530)
        {
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v553, v530);
          v282 = (*&v553.mSampleTime + 8);
          for (i2 = 16 * **&v553.mSampleTime; i2; i2 -= 16)
          {
            MEMORY[0x2743CCD80](*(v280 + 16), 1, v282[1], 1, v282[1], 1, v8[131]);
            v282 += 2;
          }
        }
      }
    }

    v305 = *(v8 + 1108);
    if ((v305 & 0x8000) == 0)
    {
      v7 = v528;
LABEL_533:
      if ((v305 & 0x800000) == 0)
      {
        goto LABEL_540;
      }

LABEL_534:
      if ((*(v8 + 8874) & 0x80) != 0)
      {
        v306 = *(v8 + 462);
        if (v306)
        {
          v553 = v563;
          LODWORD(v560.mSampleTime) = 512;
          AudioUnitProcess(v306, &v560, &v553, v8[131], v281);
          if ((*(v293 + 3249) & 1) != 0 || *(v293 + 3250) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v281, &v553);
          }

          v305 = *(v8 + 1108);
        }
      }

      goto LABEL_540;
    }

    v7 = v528;
    if ((*(v8 + 8873) & 0x80) == 0 || !*(v8 + 454))
    {
      goto LABEL_533;
    }

    if (*(v8 + 2260) == 1)
    {
      (*(*v8 + 664))(v8, v281, &v563);
      v305 = *(v8 + 1108);
      v7 = v528;
      v293 = v536;
      v294 = v530;
    }

    if ((v305 & 0x800000) != 0)
    {
      goto LABEL_534;
    }

LABEL_540:
    if (v305 & 0x1000000) != 0 && (*(v8 + 8875))
    {
      v307 = *(v8 + 463);
      if (v307)
      {
        v308 = v8[580];
        if (v308 != v8[582])
        {
          AudioUnitSetParameter(v307, 1u, 0, 0, v308, 0);
          v307 = *(v8 + 463);
        }

        v553 = v563;
        LODWORD(v560.mSampleTime) = 512;
        AudioUnitProcess(v307, &v560, &v553, v8[131], v281);
        v305 = *(v8 + 1108);
      }
    }

    if ((v305 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0)
    {
      v309 = *(v8 + 464);
      if (v309)
      {
        v553 = v563;
        LODWORD(v560.mSampleTime) = 512;
        AudioUnitProcess(v309, &v560, &v553, v8[131], v281);
        goto LABEL_582;
      }
    }

    if ((v305 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0)
    {
      v310 = *(v8 + 465);
      if (v310)
      {
        v311 = *(v8 + 199);
        if (v311->mNumberBuffers)
        {
          v282 = 0;
          v312 = v8[81] - 1;
          v313 = v281 + 2;
          v314 = 16;
          do
          {
            if (v312 >= v282)
            {
              v315 = v282;
            }

            else
            {
              v315 = v312;
            }

            memcpy(*(&v311->mNumberBuffers + v314), *&v313[4 * v315 + 2], 4 * v8[131]);
            v282 = (v282 + 1);
            v311 = *(v8 + 199);
            v314 += 16;
          }

          while (v282 < v311->mNumberBuffers);
          v310 = *(v8 + 465);
          v294 = v530;
        }

        v553 = v563;
        LODWORD(v560.mSampleTime) = 512;
        AudioUnitProcess(v310, &v560, &v553, v8[131], v311);
        v281 = *(v8 + 199);
        goto LABEL_581;
      }
    }

    if ((v305 & 0x200000) != 0 && (*(v8 + 8874) & 0x20) != 0 && *(v8 + 460))
    {
      break;
    }

    v325 = 1.0;
    if ((v8[565] & 1) == 0)
    {
      v325 = *(v8 + 3155);
    }

    LODWORD(v553.mSampleTime) = __exp10f(((v325 * 32.0) + -32.0) / 20.0);
    v326 = v281 + 2;
    for (i3 = 16 * *v281; i3; i3 -= 16)
    {
      MEMORY[0x2743CCE20](*(v326 + 1), 1, &v553, *(v326 + 1), 1, v8[131]);
      v326 += 4;
    }

    if ((*(v293 + 3249) & 1) != 0 || *(v293 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v281, &v563);
    }

LABEL_582:
    if (!v294 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
    {
      if (*(v293 + 3249) == 1)
      {
        v328 = *(v8 + 1589);
        if (v328)
        {
          if (*v281 != *v218)
          {
            if (VPTimestampLogScope(void)::once != -1)
            {
              dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
            }

            CALegacyLog::log(v328, 3, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 930, "ProcessDownlinkAudio", "**** compressedVoiceABL->mNumberBuffers != theOutputData.mNumberBuffers in process %u != %u ****", *v281, *v218);
          }
        }
      }

      v329 = *v218;
      if (*v218 >= *v281)
      {
        v329 = *v281;
      }

      if (v329)
      {
        v330 = 0;
        v331 = 0;
        do
        {
          v332 = v281[v330 + 3];
          v333 = *&v218[v330 * 4 + 12];
          if (v332 >= v333)
          {
            v334 = v333;
          }

          else
          {
            v334 = v332;
          }

          memcpy(*&v218[v330 * 4 + 16], *&v281[v330 + 4], v334);
          ++v331;
          LODWORD(v335) = *v218;
          if (*v218 >= *v281)
          {
            v335 = *v281;
          }

          else
          {
            v335 = v335;
          }

          v330 += 4;
        }

        while (v331 < v335);
      }

      goto LABEL_601;
    }

    v344 = *(v8 + 2260);
    if (v344 == 1)
    {
      v345 = v8[91];
      v346 = *v281;
LABEL_615:
      if (v346)
      {
        v347 = 0;
        v348 = v345 - 1;
        v349 = v294->mBuffers;
        v350 = 4;
        do
        {
          if (v348 >= v347)
          {
            v351 = v347;
          }

          else
          {
            v351 = v348;
          }

          MEMORY[0x2743CCD80](*&v281[v350], 1, v349[v351].mData, 1, *&v218[v350 * 4], 1, v8[131]);
          ++v347;
          v350 += 4;
        }

        while (v347 < *v281);
      }

      goto LABEL_601;
    }

    v346 = *v281;
    v345 = 1;
    if ((v344 & 1) != 0 || v346 == 1)
    {
      goto LABEL_615;
    }

      ;
    }

LABEL_601:
    v336 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    if ((v336 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v553.mSampleTime) = 136315394;
        *(&v553.mSampleTime + 4) = "vpProcessDownlink_v4.cpp";
        WORD2(v553.mHostTime) = 1024;
        *(&v553.mHostTime + 6) = 959;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v553, 0x12u);
      }

      v493 = __cxa_allocate_exception(0x10uLL);
      *v493 = &unk_2881B25F8;
      v493[2] = -50;
    }

    v337 = v336;
    MEMORY[0x28223BE20](v336);
    v339 = (&p_mSampleTime - v338);
    bzero(&p_mSampleTime - v338, v340 + 24);
    v339->mNumberBuffers = v337;
    v167 = memcpy(v339->mBuffers, v218 + 8, 16 * v337);
    v9 = v536;
    v161 = v527;
    if ((*(v536 + 3249) & 1) != 0 || *(v536 + 3250) == 1)
    {
      v167 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, v8[131], v339, &v563);
    }

    v341 = v529;
    if (v8[2217] & 1) != 0 && (v8[2219])
    {
      v167 = *(v8 + 471);
      if (v167)
      {
        v342 = v529;
        v553 = v563;
        LODWORD(v560.mSampleTime) = 512;
        v167 = AudioUnitProcess(v167, &v560, &v553, v8[131], v339);
        v341 = v342;
      }
    }

    v343 = v8[131];
    v563.mSampleTime = v563.mSampleTime + v343;
    v541 += v343;
    v182 = v341 + 1;
    if (v341 + 1 >= v8[132])
    {
      goto LABEL_644;
    }
  }

  v545 = 0;
  v544 = 0;
  v316 = *(v8 + 3153);
  v317 = *(v8 + 3154);
  if (*(v293 + 3249) == 1)
  {
    v318 = v8[3155];
    LODWORD(v544) = v8[3153];
    *(&v544 + 1) = v317;
    v545 = v318;
    VoiceProcessorV2::WriteControlDataToFile(v8, &v544, 0xCu, 0x34u);
  }

  v319 = *v521;
  v320 = (v317 - v316) / (v183 / *v521);
  v321 = 2000.0;
  if (v320 <= 2000.0)
  {
    v321 = v320;
    if (v320 < v519)
    {
      v321 = v519;
    }
  }

  v282 = v8;
  v322 = v8[131];
  AudioUnitSetParameter(v282[460], 5u, 0, 0, 0.0, 0);
  v323 = v322 / v319 * v321;
  *(v282 + 3153) = v316 + (v322 * (v323 / v322));
  v8 = v282;
  if ((*(v282 + 8866) & 0x40) != 0 && (*(v282 + 8874) & 0x40) != 0 && v282[461])
  {
    v553 = v563;
    v543 = 512;
    v559 = v294;
    *&v560.mSampleTime = 1;
    *&v560.mHostTime = *(v281 + 2);
    v558 = &v560;
    v557 = 0uLL;
    v556 = 1;
    v324 = v282[199];
    v282 = &v556;
    v557 = *(v324 + 8);
    v555 = &v556;
    AudioUnitProcessMultiple(*(v8 + 460), &v543, &v553, v8[131], 2u, &v558, 1u, &v555);
    v553 = v563;
    v543 = 512;
    v559 = v294;
    *&v560.mSampleTime = 1;
    *&v560.mHostTime = *&v281[4 * (v8[81] - 1) + 2];
    v558 = &v560;
    v557 = *(*(v8 + 199) + 24);
    v555 = &v556;
    v556 = 1;
    AudioUnitProcessMultiple(*(v8 + 461), &v543, &v553, v8[131], 2u, &v558, 1u, &v555);
    v281 = *(v8 + 199);
    v294 = v530;
  }

  else
  {
    v553 = v563;
    LODWORD(v558) = 512;
    *&v560.mSampleTime = v281;
    v560.mHostTime = v294;
    v556 = v281;
    AudioUnitProcessMultiple(v282[460], &v558, &v553, *(v282 + 131), 2u, &v560, 1u, &v556);
  }

LABEL_581:
  if (v281)
  {
    goto LABEL_582;
  }

  v556 = 0;
  v554 = 0u;
  memset(&v553, 0, sizeof(v553));
  v475 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v490 = 3;
  }

  else
  {
    v490 = 2;
  }

  LODWORD(v560.mSampleTime) = 134217984;
  *(&v560.mSampleTime + 4) = 0.0;
  LODWORD(v516) = 12;
  _os_log_send_and_compose_impl(v490, &v556, &v553, 80, &dword_2724B4000, v475, 16, "assertion failure: compressedVoiceABL != nullptr -> %llu", &v560);
  _os_crash_msg();
  __break(1u);
LABEL_962:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_934:
  v476 = v282 * 0.0000000416666667 - v12;
  CALegacyLog::log(v475, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1499, "ProcessDownlinkAudio", "DL %f %f %f", v552.mSampleTime, v12, v476);
  v477 = v8[123];
  v478 = *(v8 + 42);
  if (v476 >= v477 / v478)
  {
    v479 = *(v8 + 1589);
    if (*(v218 + 423) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v479, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1502, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v476);
    v477 = v8[123];
    v478 = *(v8 + 42);
  }

  if (v12 - *(v8 + 1984) > (v8[296] + v477) / v478)
  {
    v480 = *(v8 + 1589);
    if (*(v218 + 423) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v480, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v4.cpp", 1505, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
  }

  *(v8 + 1984) = v12;
LABEL_943:
  if (v11)
  {
    if (v8[414] & 1) != 0 || (v481 = FadeInOverFewFrames(*(v8 + 205), v7, v8[412], v8[413]), *(v8 + 1656) = v481, v8[412] = HIDWORD(v481), (v481))
    {
      v482 = *(v8 + 205);
      v483 = v7->mNumberBuffers >= *v482 ? *v482 : v7->mNumberBuffers;
      if (v483)
      {
        v484 = &v7->mBuffers[0].mData;
        v485 = (v482 + 4);
        do
        {
          v486 = *(v484 - 1);
          v487 = *(v485 - 1);
          if (v486 >= v487)
          {
            v488 = v487;
          }

          else
          {
            v488 = v486;
          }

          memcpy(*v485, *v484, v488);
          v484 += 2;
          v485 += 2;
          --v483;
        }

        while (v483);
      }
    }
  }

  else
  {
    v8[412] = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  return 0;
}

void sub_272551548(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 272));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>(caulk::concurrent::details::lf_read_sync_write_impl *a1, void (***a2)(uint64_t, void, void))
{
  v4 = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + v4 + 8))
  {
    v5 = a1 + 32 * v4;
    if (v5[40] == 1)
    {
      (**a2)((*a2 + 1), *(v5 + 2), *(v5 + 3) - *(v5 + 2));
    }

    v4 = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821E8620](v4);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV4::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
{
  v4 = **a1;
  if (*(v4 + 16752))
  {
    v5 = 1733326433;
  }

  else
  {
    v5 = 1936747876;
  }

  if (*(v4 + 16752))
  {
    v6 = 1936747876;
  }

  else
  {
    v6 = 0;
  }

  return AudioUnitSetProperty(*(v4 + 3512), v5, 0, v6, inData, inDataSize);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3011()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t VoiceProcessorV8::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v566 = *MEMORY[0x277D85DE8];
  v9 = this + 3158;
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
LABEL_3:
    ++v8[3150];
    CADeprecated::CAMutex::Unlock(v10);
    LOBYTE(nn) = 0;
    v12 = 0.0;
    goto LABEL_928;
  }

  v543 = a2;
  v544 = a3;
  v542 = a4;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
    goto LABEL_3;
  }

  v13 = a7;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  (*(*v8 + 696))(&v558, v8, v13);
  v557 = v558;
  if (*(v9 + 3249) == 1)
  {
    if (*v9)
    {
      v15 = *(v8 + 1578);
      HIDWORD(v16) = HIDWORD(v557.mSampleTime);
      if (v15 == v557.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v15, v557.mSampleTime, 2);
      v16 = *(v8 + 1578);
      if (v557.mSampleTime >= v16)
      {
        goto LABEL_48;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v18 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v8 + 1578);
          LODWORD(v558.mSampleTime) = 136316674;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 89;
          WORD1(v558.mRateScalar) = 2048;
          *(&v558.mRateScalar + 4) = v20;
          WORD2(v558.mWordClockTime) = 2048;
          *(&v558.mWordClockTime + 6) = *&v557.mSampleTime;
          HIWORD(v558.mSMPTETime.mCounter) = 2048;
          *&v558.mSMPTETime.mType = v557.mHostTime;
          v558.mSMPTETime.mHours = 2048;
          *&v558.mSMPTETime.mMinutes = v557.mRateScalar;
          HIWORD(v558.mFlags) = 1024;
          v558.mReserved = v557.mFlags;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v558, 0x40u);
        }
      }

      v21 = *(v8 + 1588);
      if (v21 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v21, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 89, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v557.mSampleTime, v557.mHostTime, v557.mRateScalar, v557.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, v8[3150], 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v557.mSampleTime, 2);
      v16 = *(v8 + 216);
      v22 = v557.mSampleTime - v16;
      v23 = (((roundf(*(v8 + 291) * v8[126]) + v8[126]) + v8[295]) + v8[296]);
      if (v557.mSampleTime - v16 == v23)
      {
LABEL_48:
        LODWORD(v16) = v8[123];
        *(v8 + 1578) = v557.mSampleTime + *&v16;
        goto LABEL_49;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v558.mSampleTime) = 136315906;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 76;
          WORD1(v558.mRateScalar) = 2048;
          *(&v558.mRateScalar + 4) = v23;
          WORD2(v558.mWordClockTime) = 2048;
          *(&v558.mWordClockTime + 6) = v22;
          _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v558, 0x26u);
        }
      }

      v26 = *(v8 + 1588);
      if (v26 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v26, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 76, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v23, v22);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, v8[3150], 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v17;
    goto LABEL_48;
  }

LABEL_49:
  v555 = v8 + 626;
  v27 = (*(*(v8 + 313) + 16))();
  v534 = a6;
  v556 = v27;
  CADeprecated::CAMutex::Lock((v8 + 648));
  ++v8[3150];
  CADeprecated::CAMutex::Unlock((v8 + 648));
  v28 = v8[123];
  v553 = v28;
  v554 = v28;
  v29 = *(v9 + 3249);
  if (v29)
  {
    *(v9 + 385) = 1;
    if (v7->mNumberBuffers == v8[91])
    {
      v30 = (v8 + 84);
      if (v543)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_925:
    if (v556 == 1)
    {
      (*(*v555 + 24))(v555);
    }

    LOBYTE(nn) = 1;
LABEL_928:
    if (*(v9 + 3249) == 1 && *(v8 + 1589))
    {
      v483 = mach_absolute_time();
      v484 = *(v8 + 1589);
      v197 = 0x280898000uLL;
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      v297 = 0x280898000;
      v198 = v483 * 0.0000000416666667 - v12;
      CALegacyLog::log(v484, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1377, "ProcessDownlinkAudio", "DL %f %f %f", v557.mSampleTime, v12, v198);
      v485 = v8[123];
      v486 = *(v8 + 42);
      if (v198 >= v485 / v486)
      {
        v497 = *(v8 + 1589);
        if (VPTimestampLogScope(void)::once != -1)
        {
          goto LABEL_959;
        }

        goto LABEL_934;
      }

      goto LABEL_935;
    }

    goto LABEL_940;
  }

  if (v7->mNumberBuffers != v8[91])
  {
    goto LABEL_925;
  }

  v30 = (v8 + 84);
  if ((*(v9 + 3250) & 1) == 0)
  {
    goto LABEL_83;
  }

  if (v543)
  {
LABEL_62:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  v31 = *(v8 + 200);
  mNumberBuffers = v31->mNumberBuffers;
  v543 = v31;
  if (mNumberBuffers)
  {
    v33 = v13;
    v34 = 0;
    p_mData = &v31->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v34;
      p_mData += 2;
    }

    while (v34 < v31->mNumberBuffers);
    v29 = *(v9 + 3249);
    v13 = v33;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, v534, v543);
  if ((*(v9 + 3249) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, v534, v543, &v557);
LABEL_64:
  v36 = v544;
  if (!v544)
  {
    v36 = *(v8 + 201);
    if (v36->mNumberBuffers)
    {
      v37 = v13;
      v38 = 0;
      v39 = &v36->mBuffers[0].mData;
      do
      {
        v40 = v36;
        bzero(*v39, *(v39 - 1));
        v36 = v40;
        ++v38;
        v39 += 2;
      }

      while (v38 < v40->mNumberBuffers);
      v13 = v37;
    }
  }

  v544 = v36;
  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, v534, v544), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, v534, v544, &v557);
  }

  v41 = v542;
  if (!v542)
  {
    v41 = *(v8 + 202);
    if (v41->mNumberBuffers)
    {
      v42 = v13;
      v43 = 0;
      v44 = &v41->mBuffers[0].mData;
      do
      {
        v45 = v41;
        bzero(*v44, *(v44 - 1));
        v41 = v45;
        ++v43;
        v44 += 2;
      }

      while (v43 < v45->mNumberBuffers);
      v13 = v42;
    }
  }

  v542 = v41;
  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, v534, v542), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, v534, v542, &v557);
  }

  v28 = v8[123];
LABEL_83:
  v46 = v534;
  v546 = v9;
  v547 = v8;
  if (v28 != v534)
  {
    if (*(v9 + 3171))
    {
      v57 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
      v58 = *(v8 + 1981);
      if (v57 > v58)
      {
        *(v8 + 1981) = v58 + 10.0;
        VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v534, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v59 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v59)
        {
          v60 = v59;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v558.mSampleTime) = 136315650;
            *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
            WORD2(v558.mHostTime) = 1024;
            *(&v558.mHostTime + 6) = 187;
            WORD1(v558.mRateScalar) = 2048;
            *(&v558.mRateScalar + 4) = v57;
            _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v558, 0x1Cu);
          }
        }

        v61 = *(v8 + 1588);
        if (v61 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v61, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 187, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v57);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v62 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v62)
        {
          v63 = v62;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v7->mBuffers[0].mDataByteSize;
            v65 = v8[123];
            CAFormatter::CAFormatter(&inInputBufferLists, v30);
            v66 = v8[3150];
            LODWORD(v558.mSampleTime) = 136316674;
            *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
            WORD2(v558.mHostTime) = 1024;
            *(&v558.mHostTime + 6) = 193;
            WORD1(v558.mRateScalar) = 1024;
            HIDWORD(v558.mRateScalar) = v534;
            LOWORD(v558.mWordClockTime) = 1024;
            *(&v558.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v558.mWordClockTime) = 1024;
            *&v558.mSMPTETime.mSubframes = v65;
            LOWORD(v558.mSMPTETime.mCounter) = 2080;
            *(&v558.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
            HIWORD(v558.mSMPTETime.mFlags) = 1024;
            *&v558.mSMPTETime.mHours = v66;
            _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v558, 0x34u);
            if (*&inInputBufferLists.mSampleTime)
            {
              free(*&inInputBufferLists.mSampleTime);
            }

            v9 = v546;
          }
        }

        v67 = *(v8 + 1588);
        if (v67)
        {
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v68 = VPLogScope(void)::scope;
            v69 = v7->mBuffers[0].mDataByteSize;
            v70 = v8[123];
            CAFormatter::CAFormatter(&v558, v30);
            CALegacyLog::log(v67, 1, v68, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 193, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", v534, v69, v70, *&v558.mSampleTime, v8[3150]);
LABEL_190:
            if (*&v558.mSampleTime)
            {
              free(*&v558.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      *(v9 + 3171) = 1;
      *(v8 + 1978) = mach_absolute_time();
      *(v8 + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v46, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v78 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v79 = (*v78 ? *v78 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v558.mSampleTime) = 136315394;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 164;
          _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v558, 0x12u);
        }
      }

      v80 = *(v8 + 1588);
      if (v80 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v80, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 164, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v81 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v82 = (*v81 ? *v81 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = v7->mBuffers[0].mDataByteSize;
          v84 = v8[123];
          CAFormatter::CAFormatter(&inInputBufferLists, v30);
          v85 = v8[3150];
          LODWORD(v558.mSampleTime) = 136316674;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 170;
          WORD1(v558.mRateScalar) = 1024;
          HIDWORD(v558.mRateScalar) = v534;
          LOWORD(v558.mWordClockTime) = 1024;
          *(&v558.mWordClockTime + 2) = v83;
          HIWORD(v558.mWordClockTime) = 1024;
          *&v558.mSMPTETime.mSubframes = v84;
          LOWORD(v558.mSMPTETime.mCounter) = 2080;
          *(&v558.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
          HIWORD(v558.mSMPTETime.mFlags) = 1024;
          *&v558.mSMPTETime.mHours = v85;
          _os_log_impl(&dword_2724B4000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v558, 0x34u);
          if (*&inInputBufferLists.mSampleTime)
          {
            free(*&inInputBufferLists.mSampleTime);
          }

          v9 = v546;
        }
      }

      v86 = *(v8 + 1588);
      if (v86 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v87 = VPLogScope(void)::scope;
        v88 = v7->mBuffers[0].mDataByteSize;
        v89 = v8[123];
        CAFormatter::CAFormatter(&v558, v30);
        CALegacyLog::log(v86, 2, v87, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 170, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", v534, v88, v89, *&v558.mSampleTime, v8[3150]);
        goto LABEL_190;
      }
    }

    if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v534, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v534, v7, &v557);
    }

    v77 = *(v8 + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_925;
    }

LABEL_199:
    AudioIssueDetectorLibraryLoader(void)::libSym(v77, 70, 0, v7, v534, &v557);
    goto LABEL_925;
  }

  if (v7->mBuffers[0].mDataByteSize != v8[90] * v534)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v71 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v72 = (*v71 ? *v71 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = v7->mBuffers[0].mDataByteSize;
        v74 = v8[90] * v534;
        LODWORD(v558.mSampleTime) = 136315906;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 211;
        WORD1(v558.mRateScalar) = 1024;
        HIDWORD(v558.mRateScalar) = v73;
        LOWORD(v558.mWordClockTime) = 1024;
        *(&v558.mWordClockTime + 2) = v74;
        _os_log_impl(&dword_2724B4000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v558, 0x1Eu);
      }
    }

    v75 = *(v8 + 1588);
    v76 = *(v9 + 3249);
    if (v75)
    {
      if ((*(v9 + 3249) & 1) == 0 && *(v9 + 3250) != 1)
      {
        goto LABEL_152;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 211, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, v8[90] * v534);
      v76 = *(v9 + 3249);
    }

    if (v76)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v534, v7);
      if (*(v9 + 3249))
      {
LABEL_153:
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v534, v7, &v557);
LABEL_154:
        v77 = *(v8 + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_925;
        }

        goto LABEL_199;
      }
    }

LABEL_152:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v526 = v13;
  if (*(v9 + 3171) != 1)
  {
    goto LABEL_223;
  }

  *(v9 + 3171) = 0;
  v47 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v46, "processdownlinkaudio: <block size no longer mismatched>");
  if (v47 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v90 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v90)
    {
      v91 = v90;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v558.mSampleTime) = 136315650;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 240;
        WORD1(v558.mRateScalar) = 2048;
        *(&v558.mRateScalar + 4) = v47;
        _os_log_impl(&dword_2724B4000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v558, 0x1Cu);
      }
    }

    v92 = *(v8 + 1588);
    if (v92 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v92, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 240, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v47);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v93 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v93)
    {
      v94 = v93;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v8[123];
        LODWORD(v558.mSampleTime) = 136315906;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 244;
        WORD1(v558.mRateScalar) = 1024;
        HIDWORD(v558.mRateScalar) = v46;
        LOWORD(v558.mWordClockTime) = 1024;
        *(&v558.mWordClockTime + 2) = v95;
        _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v558, 0x1Eu);
      }
    }

    v54 = *(v8 + 1588);
    if (v54 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v55 = 244;
      v56 = 2;
      goto LABEL_222;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v48 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v48)
    {
      v49 = v48;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315650;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 232;
        WORD1(v558.mRateScalar) = 2048;
        *(&v558.mRateScalar + 4) = v47;
        _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v558, 0x1Cu);
      }
    }

    v50 = *(v8 + 1588);
    if (v50 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v50, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 232, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v47);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v51 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v51)
    {
      v52 = v51;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v53 = v8[123];
        LODWORD(v558.mSampleTime) = 136315906;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 236;
        WORD1(v558.mRateScalar) = 1024;
        HIDWORD(v558.mRateScalar) = v46;
        LOWORD(v558.mWordClockTime) = 1024;
        *(&v558.mWordClockTime + 2) = v53;
        _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v558, 0x1Eu);
      }
    }

    v54 = *(v8 + 1588);
    if (v54 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v55 = 236;
      v56 = 1;
LABEL_222:
      CALegacyLog::log(v54, v56, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", v55, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v46, v8[123]);
    }
  }

LABEL_223:
  v96 = *(v8 + 49);
  NumberOfSourceFrames = v8[123];
  if (*(v8 + 48))
  {
    if (v96)
    {
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96, v8[123]);
      v553 = NumberOfSourceFrames;
      v96 = *(v8 + 48);
LABEL_230:
      LODWORD(NumberOfSourceFrames) = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96, NumberOfSourceFrames);
      goto LABEL_231;
    }

    v96 = *(v8 + 48);
LABEL_229:
    v553 = v8[123];
    goto LABEL_230;
  }

  if (v96)
  {
    goto LABEL_229;
  }

LABEL_231:
  v98 = *(v8 + 14);
  v99 = *v98;
  if (v99 >= 1)
  {
    v100 = NumberOfSourceFrames * v8[60];
    v101 = (v99 + 3) & 0xFFFFFFFC;
    v102 = vdupq_n_s64(v99 - 1);
    v103 = xmmword_2727564D0;
    v104 = xmmword_2727564E0;
    v105 = v98 + 11;
    v106 = vdupq_n_s64(4uLL);
    do
    {
      v107 = vmovn_s64(vcgeq_u64(v102, v104));
      if (vuzp1_s16(v107, *v102.i8).u8[0])
      {
        *(v105 - 8) = v100;
      }

      if (vuzp1_s16(v107, *&v102).i8[2])
      {
        *(v105 - 4) = v100;
      }

      if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, *&v103))).i32[1])
      {
        *v105 = v100;
        v105[4] = v100;
      }

      v103 = vaddq_s64(v103, v106);
      v104 = vaddq_s64(v104, v106);
      v105 += 16;
      v101 -= 4;
    }

    while (v101);
  }

  v552 = NumberOfSourceFrames;
  Signal = (*(*(v8 + 13) + 16))();
  v109 = v552;
  v554 = v552;
  v110 = *(v8 + 14);
  if (*(v9 + 3249) == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v552, *(v8 + 14)), v110 = *(v8 + 14), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v552, v110, &v557);
    v110 = *(v8 + 14);
  }

  v111 = *(v8 + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v111, 51, 0, v110, v552, &v557);
  }

  if ((*(v8 + 2090) & 1) != 0 || v8[20] == 7 && *(v8 + 3152) == 0.0)
  {
    Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v558, *(v8 + 14));
    v112 = (*&v558.mSampleTime + 8);
    v113 = 16 * **&v558.mSampleTime;
    for (i = (*&v558.mSampleTime + 8); v113; v113 -= 16)
    {
      v116 = *i;
      v115 = i[1];
      i += 4;
      Signal = vp::fill(v112, (v115 >> 2) / v116, 0.0);
      v112 += 2;
    }
  }

  v117 = v8[57];
  if ((v117 & 0x20) != 0)
  {
    v120 = v8[61];
    if (v120 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 309;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Signal);
    v119 = (&mBuffers - v121);
    bzero(&mBuffers - v121, v122 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](Signal);
    v119 = &v522;
    v522 = 0;
    v523 = 0uLL;
    v120 = 1;
  }

  v123 = 0;
  mBuffers = v7->mBuffers;
  *v119 = v120;
  v124 = 2;
  if ((v117 & 0x20) != 0)
  {
    goto LABEL_260;
  }

LABEL_261:
  for (j = 1; v123 < j; j = v8[61])
  {
    *&v119[v124] = *(*(v8 + 14) + v124 * 4);
    ++v123;
    v124 += 4;
    if ((v117 & 0x20) == 0)
    {
      goto LABEL_261;
    }

LABEL_260:
    ;
  }

  v533 = v7;
  v126 = v8[67];
  if ((v126 & 0x20) != 0)
  {
    v128 = v8[71];
    if (v128 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 314;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v513 = __cxa_allocate_exception(0x10uLL);
      *v513 = &unk_2881B25F8;
      v513[2] = -50;
    }

    MEMORY[0x28223BE20](v118);
    v127 = (&mBuffers - v129);
    bzero(&mBuffers - v129, v130 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v118);
    *&v127 = COERCE_DOUBLE(&v522);
    v522 = 0;
    v523 = 0uLL;
    v128 = 1;
  }

  v131 = 0;
  v132 = 0;
  v133 = *&v127;
  *v127 = v128;
  v134 = (v127 + 2);
  if ((v126 & 0x20) != 0)
  {
    goto LABEL_270;
  }

LABEL_271:
  for (k = 1; v132 < k; k = v8[71])
  {
    v135 = *&v133 + v131;
    *(v135 + 16) = *(*(v8 + 23) + v131 + 16);
    *(v135 + 8) = 1;
    *(v135 + 12) = 4 * v109;
    ++v132;
    v131 += 16;
    if ((v126 & 0x20) == 0)
    {
      goto LABEL_271;
    }

LABEL_270:
    ;
  }

  if ((v8[2216] & 1) != 0 && (v8[2218] & 1) != 0 && *(v8 + 439))
  {
    v137 = atomic_load(v8 + 2047);
    v138 = v133;
    if (v137)
    {
      *&v564.mSampleTime = v8;
      *&v558.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV8::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
      v558.mHostTime = &v564;
      *&inInputBufferLists.mSampleTime = &v558;
      caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((v8 + 4074), &inInputBufferLists);
      atomic_fetch_add(v8 + 2047, -v137);
    }

    v139 = v8[580];
    if (v139 != v8[582])
    {
      AudioUnitSetParameter(*(v8 + 439), 0x75696F72u, 0, 0, v139, 0);
    }

    v558 = v557;
    LODWORD(v561.mSampleTime) = 512;
    *&inInputBufferLists.mSampleTime = v119;
    v564.mSampleTime = v133;
    LODWORD(v109) = v554;
    AudioUnitProcessMultiple(*(v8 + 439), &v561, &v558, v554, 1u, &inInputBufferLists, 1u, &v564);
  }

  else
  {
    if (v8[20] || v8[61] != 2)
    {
      v171 = &v134[2 * v128];
      while (v134 != v171)
      {
        vp::fill(v134, v109, 0.0);
        v172 = 16 * *v119;
        for (m = v119 + 2; v172; v172 -= 16)
        {
          MEMORY[0x2743CCD80](v134[1], 1, *(m + 1), 1, v134[1], 1, v109);
          m += 4;
        }

        v134 += 2;
      }
    }

    else
    {
      if (v120 >= v128)
      {
        v140 = v128;
      }

      else
      {
        v140 = v120;
      }

      if (v140)
      {
        v141 = (v119 + 4);
        v142 = (*&v133 + 16);
        do
        {
          v143 = *(v141 - 1);
          v144 = *(v142 - 1);
          if (v143 >= v144)
          {
            v145 = v144;
          }

          else
          {
            v145 = v143;
          }

          memcpy(*v142, *v141, v145);
          v141 += 2;
          v142 += 2;
          --v140;
        }

        while (v140);
      }
    }

    v138 = v133;
  }

  if ((v8[2216] & 2) != 0 && (v8[2218] & 2) != 0)
  {
    v146 = *(v8 + 440);
    if (v146)
    {
      v558 = v557;
      LODWORD(v564.mSampleTime) = 512;
      MEMORY[0x28223BE20](v146);
      v523 = 0uLL;
      v522 = 0;
      v523 = *(*(v8 + 23) + 8);
      LODWORD(v522) = 1;
      *&inInputBufferLists.mSampleTime = &v522;
      AudioUnitProcessMultiple(v147, &v564, &v558, v109, 1u, &inInputBufferLists, 0, &v561);
    }
  }

  v148 = *(v8 + 48);
  if (v148)
  {
    VoiceProcessor::SampleRateConverter::Convert(v148, &v554, &v553, *&v138, *(v8 + 24));
    LODWORD(v109) = v553;
    v554 = v553;
    v138 = *(v8 + 24);
  }

  v150 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
  v151 = 0;
  v152 = 0;
  v153 = (v109 / v8[132]);
  inInputBufferLists = v557;
  v541 = (*&v138 + 8);
  v545 = (*&v138 + 16);
  v548 = v138;
  do
  {
    if ((**&v138 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 424;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v500 = __cxa_allocate_exception(0x10uLL);
      *v500 = &unk_2881B25F8;
      v500[2] = -50;
    }

    MEMORY[0x28223BE20](v149);
    v155 = (&mBuffers - v154);
    bzero(&mBuffers - v154, v156 + 24);
    v157 = **&v138;
    v155->mNumberBuffers = v157;
    if (v157)
    {
      v158 = &v155->mBuffers[0].mData;
      v159 = v545;
      do
      {
        *(v158 - 2) = 1;
        *(v158 - 1) = 4 * v153;
        v160 = *v159;
        v159 += 4;
        *v158 = (v160 + 4 * v151);
        v158 += 2;
        --v157;
      }

      while (v157);
    }

    v161 = *(v8 + 1108);
    if ((v161 & 8) != 0 && (v8[2218] & 8) != 0)
    {
      v162 = *(v8 + 442);
      if (v162)
      {
        v558 = inInputBufferLists;
        LODWORD(v564.mSampleTime) = 512;
        AudioUnitProcess(v162, &v564, &v558, v153, v155);
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v153, v155, &v558);
        }

        v161 = *(v8 + 1108);
      }
    }

    if ((v161 & 0x20) != 0 && (v8[2218] & 0x20) != 0)
    {
      v163 = *(v8 + 444);
      if (v163)
      {
        v558 = inInputBufferLists;
        LODWORD(v564.mSampleTime) = 512;
        AudioUnitProcess(v163, &v564, &v558, v153, v155);
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x58u, v153, v155, &v558);
        }

        v161 = *(v8 + 1108);
      }
    }

    v164 = *&inInputBufferLists.mRateScalar;
    *(v8 + 1103) = *&inInputBufferLists.mSampleTime;
    *(v8 + 1104) = v164;
    v165 = *&inInputBufferLists.mSMPTETime.mHours;
    *(v8 + 1105) = *&inInputBufferLists.mSMPTETime.mSubframes;
    *(v8 + 1106) = v165;
    if ((~v161 & 0xC0) != 0 || ((v8[2218] & 0x40) == 0 || !*(v8 + 445) ? ((v8[2218] & 0x80) != 0 ? (v166 = *(v8 + 446) != 0) : (v166 = 0)) : (v166 = 1), *(v8 + 488) != 1 ? (v149 = (*(*v8 + 784))(v8, v155, v155, v166, v153)) : (*&v558.mSampleTime = v155, *&v564.mSampleTime = v155, v149 = BlockProcessor::Process(*(v8 + 2205), v153, &v558, &v564)), !v166))
    {
      v149 = (*(*v8 + 784))(v8, v155, v155, 0, v153);
    }

    v167 = *(v8 + 1108);
    if (v167 & 0x100) != 0 && (*(v8 + 8873))
    {
      v149 = *(v8 + 447);
      if (v149)
      {
        v558 = inInputBufferLists;
        AudioUnitSetParameter(v149, 5u, 0, 0, v150, 0);
        LODWORD(v564.mSampleTime) = 512;
        v149 = AudioUnitProcess(*(v8 + 447), &v564, &v558, v153, v155);
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          v149 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v153, v155, &v558);
        }

        v167 = *(v8 + 1108);
      }
    }

    if ((v167 & 0x200) != 0 && (*(v8 + 8873) & 2) != 0)
    {
      v149 = *(v8 + 448);
      if (v149)
      {
        v558 = inInputBufferLists;
        LODWORD(v564.mSampleTime) = 512;
        v149 = AudioUnitProcess(v149, &v564, &v558, v153, v155);
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          v149 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x59u, v153, v155, &v558);
        }

        v167 = *(v8 + 1108);
      }
    }

    if ((v167 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
    {
      if (*(v8 + 453))
      {
        v149 = (*(*v8 + 680))(v8, v155, v153, &inInputBufferLists);
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          v149 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v153, v155, &inInputBufferLists);
        }
      }
    }

    v151 += v153;
    inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v153;
    ++v152;
    v138 = v548;
  }

  while (v152 < v8[132]);
  v168 = v8[77];
  if ((v168 & 0x20) != 0)
  {
    v170 = v8[81];
    v7 = v533;
    v9 = v546;
    if ((v170 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 510;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v514 = __cxa_allocate_exception(0x10uLL);
      *v514 = &unk_2881B25F8;
      v514[2] = -50;
    }

    MEMORY[0x28223BE20](v149);
    v169 = (&mBuffers - v174);
    bzero(&mBuffers - v174, v175 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v149);
    v169 = &v522;
    v522 = 0;
    v523 = 0uLL;
    v170 = 1;
    v7 = v533;
    v9 = v546;
  }

  *v169 = v170;
  v177 = *(v8 + 48);
  v176 = *(v8 + 49);
  if (v176)
  {
    if (v177)
    {
      v553 = v8[123];
      v176 = VoiceProcessor::SampleRateConverter::Convert(v176, &v554, &v553, *&v138, *(v8 + 25));
      v178 = 0;
      v179 = v8[77];
      v180 = 2;
      v181 = v542;
      v182 = v543;
      v183 = v544;
      if ((v179 & 0x20) != 0)
      {
        goto LABEL_365;
      }

LABEL_366:
      for (n = 1; v178 < n; n = v8[81])
      {
        *&v169[v180] = *(*(v8 + 25) + v180 * 4);
        ++v178;
        v180 += 4;
        if ((v179 & 0x20) == 0)
        {
          goto LABEL_366;
        }

LABEL_365:
        ;
      }
    }

    else
    {
      v176 = VoiceProcessor::SampleRateConverter::Convert(v176, &v554, &v553, *&v138, *(v8 + 25));
      v190 = 0;
      v191 = v8[77];
      v192 = 2;
      v181 = v542;
      v182 = v543;
      v183 = v544;
      if ((v191 & 0x20) != 0)
      {
        goto LABEL_380;
      }

LABEL_381:
      for (ii = 1; v190 < ii; ii = v8[81])
      {
        *&v169[v192] = *(*(v8 + 25) + v192 * 4);
        ++v190;
        v192 += 4;
        if ((v191 & 0x20) == 0)
        {
          goto LABEL_381;
        }

LABEL_380:
        ;
      }
    }

    v554 = v553;
  }

  else
  {
    v185 = v169 + 2;
    if (v177)
    {
      v186 = 0;
      v181 = v542;
      v182 = v543;
      v183 = v544;
      v187 = v541;
      if ((v168 & 0x20) != 0)
      {
        goto LABEL_373;
      }

LABEL_374:
      for (jj = 1; v186 < jj; jj = v8[81])
      {
        v188 = *&v187->mNumberBuffers;
        v187 = (v187 + 16);
        *v185++ = v188;
        ++v186;
        if ((v168 & 0x20) == 0)
        {
          goto LABEL_374;
        }

LABEL_373:
        ;
      }
    }

    else
    {
      v181 = v542;
      v182 = v543;
      v183 = v544;
      v394 = v541;
      if ((v168 & 0x20) != 0)
      {
        goto LABEL_699;
      }

LABEL_700:
      for (kk = 1; v177 < kk; kk = v8[81])
      {
        v395 = *&v394->mNumberBuffers;
        v394 = (v394 + 16);
        *v185++ = v395;
        ++v177;
        if ((v168 & 0x20) == 0)
        {
          goto LABEL_700;
        }

LABEL_699:
        ;
      }
    }
  }

  v564 = v557;
  if (!v8[132])
  {
LABEL_641:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    v360 = DynamicsDSPChannelCount;
    v361 = *(v8 + 1108);
    if ((v361 & 0x400000000) != 0)
    {
      v362 = v534;
      if ((v8[2219] & 4) != 0)
      {
        v363 = *(v8 + 473);
        if (v363)
        {
          if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v558.mSampleTime) = 136315394;
              *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
              WORD2(v558.mHostTime) = 1024;
              *(&v558.mHostTime + 6) = 885;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
            }

            v515 = __cxa_allocate_exception(0x10uLL);
            *v515 = &unk_2881B25F8;
            v515[2] = -50;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v365 = (&mBuffers - v364);
          bzero(&mBuffers - v364, v366 + 24);
          v365->mNumberBuffers = v360;
          memcpy(v365->mBuffers, mBuffers, 16 * v360);
          LODWORD(v558.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v363, &v558, &v557, v8[123], v365);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v362, v365, &v557);
          }

          v361 = *(v8 + 1108);
        }
      }
    }

    else
    {
      v362 = v534;
    }

    if ((v361 & 0x2000000000) != 0 && (v8[2219] & 0x20) != 0 && *(v8 + 476) || (v361 & 0x800000000) != 0 && (v8[2219] & 8) != 0 && *(v8 + 474))
    {
      if ((v361 & 0x2000000000) != 0)
      {
        v367 = 37;
      }

      else
      {
        v367 = 35;
      }

      v368 = &v8[2 * v367];
      if (v360 == v7->mNumberBuffers)
      {
        v558 = v557;
        LODWORD(v561.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*(v368 + 439), &v561, &v558, v8[123], v7);
      }

      else
      {
        v390 = *(v8 + 26);
        if (v390->mNumberBuffers)
        {
          v391 = 0;
          v392 = 16;
          do
          {
            memcpy(*(&v390->mNumberBuffers + v392), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
            ++v391;
            v390 = *(v8 + 26);
            v392 += 16;
          }

          while (v391 < v390->mNumberBuffers);
        }

        v558 = v557;
        v551.mNumberBuffers = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*(v368 + 439), &v551.mNumberBuffers, &v558, v8[123], v390);
        if ((v8[2217] & 0x40) != 0 && (v8[2219] & 0x40) != 0 && (DynamicsDSPChannelCount = *(v8 + 477)) != 0)
        {
          v393 = v8[580];
          if (v393 != v8[582])
          {
            AudioUnitSetParameter(DynamicsDSPChannelCount, 0, 0, 0, v393, 0);
            DynamicsDSPChannelCount = *(v8 + 477);
          }

          *&v563.mNumberBuffers = *(v8 + 26);
          *&v562.mNumberBuffers = v7;
          v561 = v557;
          LODWORD(v560[0]) = 512;
          DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, v560, &v561, v8[123], 1u, &v563, 1u, &v562);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v362, v7, &v561);
          }
        }

        else if (v7->mNumberBuffers)
        {
          v397 = 0;
          v398 = &v7->mBuffers[0].mData;
          do
          {
            v399 = *(v8 + 26);
            if (v397 >= *v399)
            {
              v400 = 0;
            }

            else
            {
              v400 = v397;
            }

            DynamicsDSPChannelCount = memcpy(*v398, *&v399[4 * v400 + 4], *(v398 - 1));
            ++v397;
            v398 += 2;
          }

          while (v397 < v7->mNumberBuffers);
        }
      }
    }

    else if ((v361 & 0x20000000000) != 0 && (v369 = *(v8 + 1109), (v369 & 0x20000000000) != 0) && *(v8 + 480))
    {
      if ((v361 & v369 & 0x40000000000) != 0 && *(v8 + 481))
      {
        if (v360 - 65 <= 0xFFFFFFBF)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v558.mSampleTime) = 136315394;
            *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
            WORD2(v558.mHostTime) = 1024;
            *(&v558.mHostTime + 6) = 947;
            _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
          }

          v520 = __cxa_allocate_exception(0x10uLL);
          *v520 = &unk_2881B25F8;
          v520[2] = -50;
        }

        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v371 = (&mBuffers - v370);
        bzero(&mBuffers - v370, v372 + 24);
        v373 = 0;
        *v371 = v360;
        v374 = *(v8 + 26);
        v375 = 16 * v360;
        do
        {
          v376 = memcpy(*(v374 + v373 + 16), v7->mBuffers[v373 / 0x10].mData, *(v374 + v373 + 12));
          v374 = *(v8 + 26);
          *&v371[v373 / 4 + 2] = *(v374 + v373 + 8);
          v373 += 16;
        }

        while (v375 != v373);
        *&v561.mSampleTime = v371;
        v377 = v8[1081];
        if ((v377 - 65) < 0xFFFFFFC0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v558.mSampleTime) = 136315394;
            *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
            WORD2(v558.mHostTime) = 1024;
            *(&v558.mHostTime + 6) = 959;
            _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
          }

          v521 = __cxa_allocate_exception(0x10uLL);
          *v521 = &unk_2881B25F8;
          v521[2] = -50;
        }

        MEMORY[0x28223BE20](v376);
        v379 = (&mBuffers - v378);
        bzero(&mBuffers - v378, v380 + 24);
        v379->mNumberBuffers = v377;
        v381 = v7 + 1;
        v382 = 8;
        v383 = v377;
        v362 = v534;
        do
        {
          v384 = *&v381->mNumberBuffers;
          v381 = (v381 + 32);
          *(&v379->mNumberBuffers + v382) = v384;
          v382 += 16;
          --v383;
        }

        while (v383);
        *&v563.mNumberBuffers = v379;
        if ((*(v8 + 2261) & 1) != 0 || !v8[20] && v8[61] == 2)
        {
          v385 = v8[580];
          if (v385 != v8[582])
          {
            AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v385, 0);
          }
        }

        v558 = v557;
        v562.mNumberBuffers = 512;
        AudioUnitProcessMultiple(*(v8 + 481), &v562.mNumberBuffers, &v558, v8[123], 1u, &v561, 1u, &v563);
        if (*(v9 + 3249) & 1) != 0 || (*(v9 + 3250))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v362, v379, &v558);
        }

        v406 = &v7->mBuffers[0].mData;
        do
        {
          memcpy(*v406, v406[2], *(v406 - 1));
          v406 += 4;
          --v377;
        }

        while (v377);
      }

      else if ((v8[565] & 1) == 0 && v7->mNumberBuffers >= 2)
      {
        v404 = v7[1].mBuffers;
        v405 = 1;
        do
        {
          memcpy(*v404, v7->mBuffers[0].mData, *(v404 - 1));
          ++v405;
          v404 += 2;
        }

        while (v405 < v7->mNumberBuffers);
      }

      v558 = v557;
      LODWORD(v561.mSampleTime) = 512;
      DynamicsDSPChannelCount = AudioUnitProcess(*(v8 + 480), &v561, &v558, v8[123], v7);
    }

    else if (v361 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
    {
      v401 = v7->mNumberBuffers;
      if (v7->mNumberBuffers >= 2)
      {
        if (v8[81] == 1)
        {
          DynamicsDSPChannelCount = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
          v401 = v7->mNumberBuffers;
        }

        if (v401 >= 3)
        {
          v402 = &v7[2];
          v403 = 2;
          do
          {
            bzero(*v402, *(v402 - 1));
            ++v403;
            v402 += 2;
          }

          while (v403 < v7->mNumberBuffers);
        }
      }
    }

    else if ((v8[565] & 1) == 0)
    {
      v386 = v8[81];
      v387 = v386 <= 1 ? 1 : v386;
      if (v387 < v7->mNumberBuffers)
      {
        v388 = &mBuffers[(v387 - 1)];
        v389 = 16 * v387 + 16;
        do
        {
          DynamicsDSPChannelCount = memcpy(*(&v7->mNumberBuffers + v389), v388[1], *(v388 + 1));
          ++v387;
          v389 += 16;
        }

        while (v387 < v7->mNumberBuffers);
      }
    }

    v407 = *(v8 + 1108);
    if ((v407 & 0x80000000000) == 0)
    {
      p_mSampleTime = &v526->mSampleTime;
      goto LABEL_766;
    }

    p_mSampleTime = &v526->mSampleTime;
    if ((*(v8 + 8877) & 8) == 0 || !*(v8 + 482))
    {
LABEL_766:
      if ((v407 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
      {
        DynamicsDSPChannelCount = *(v8 + 483);
        if (DynamicsDSPChannelCount)
        {
          v425 = p_mSampleTime[1];
          *&v558.mSampleTime = *p_mSampleTime;
          *&v558.mRateScalar = v425;
          v426 = p_mSampleTime[3];
          *&v558.mSMPTETime.mSubframes = p_mSampleTime[2];
          *&v558.mSMPTETime.mHours = v426;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v558, v8[123], v7);
          v407 = *(v8 + 1108);
        }
      }

      if ((v407 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
      {
        DynamicsDSPChannelCount = *(v8 + 484);
        if (DynamicsDSPChannelCount)
        {
          *&v561.mSampleTime = v7;
          *&v563.mNumberBuffers = v7;
          v427 = p_mSampleTime[1];
          *&v558.mSampleTime = *p_mSampleTime;
          *&v558.mRateScalar = v427;
          v428 = p_mSampleTime[3];
          *&v558.mSMPTETime.mSubframes = p_mSampleTime[2];
          *&v558.mSMPTETime.mHours = v428;
          v562.mNumberBuffers = 512;
          DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v562.mNumberBuffers, &v558, v8[123], 1u, &v561, 1u, &v563);
          v407 = *(v8 + 1108);
        }
      }

      if ((v407 & 0x100000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x100000000000000) == 0) || !*(v8 + 495))
      {
        if ((v407 & 0x200000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x200000000000000) == 0) || !*(v8 + 496))
        {
          if ((v407 & 0x400000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x400000000000000) == 0) || !*(v8 + 497))
          {
            v446 = 0;
LABEL_811:
            if ((v407 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
            {
              DynamicsDSPChannelCount = *(v8 + 493);
              if (DynamicsDSPChannelCount)
              {
                v558 = v557;
                LODWORD(v561.mSampleTime) = 512;
                DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v558, v8[123], v7);
                v407 = *(v8 + 1108);
              }
            }

            if ((v407 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
            {
              LODWORD(v558.mSampleTime) = 1065353216;
              LODWORD(v561.mSampleTime) = 1065353216;
              if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v447 = *(v8 + 1139), v447 != 0.0))
              {
                v448 = __exp10f(v447 / 20.0);
                *&v561.mSampleTime = v448;
                *&v558.mSampleTime = v448;
              }

              else
              {
                v449 = *(v8 + 1137);
                if (v449 >= -300.0)
                {
                  if (v449 == 0.0)
                  {
                    v448 = 1.0;
                  }

                  else
                  {
                    if (v449 > 60.0)
                    {
                      v449 = 60.0;
                    }

                    v448 = __exp10f(v449 / 20.0);
                    *&v558.mSampleTime = v448;
                  }
                }

                else
                {
                  LODWORD(v558.mSampleTime) = 0;
                  v448 = 0.0;
                }

                v450 = *(v8 + 1138);
                if (v450 >= -300.0)
                {
                  if (v450 != 0.0)
                  {
                    if (v450 > 60.0)
                    {
                      v450 = 60.0;
                    }

                    LODWORD(v561.mSampleTime) = __exp10f(v450 / 20.0);
                  }
                }

                else
                {
                  LODWORD(v561.mSampleTime) = 0;
                }
              }

              if (v448 == 0.0)
              {
                bzero(v7->mBuffers[0].mData, 4 * v8[123]);
              }

              else if (v448 != 1.0)
              {
                DynamicsDSPChannelCount = MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v558, v7->mBuffers[0].mData, 1, v8[123]);
              }

              if (v7->mNumberBuffers >= 2)
              {
                v451 = 1;
                v452 = 32;
                do
                {
                  if (*&v561.mSampleTime == 0.0)
                  {
                    bzero(*(&v7->mNumberBuffers + v452), 4 * v8[123]);
                  }

                  else if (*&v561.mSampleTime != 1.0)
                  {
                    DynamicsDSPChannelCount = MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v452), 1, &v561, *(&v7->mNumberBuffers + v452), 1, v8[123], *&v561.mSampleTime);
                  }

                  ++v451;
                  v452 += 16;
                }

                while (v451 < v7->mNumberBuffers);
              }

              v407 = *(v8 + 1108);
            }

            if (v407 & 0x100000000000000) != 0 && (*(v8 + 8879))
            {
              DynamicsDSPChannelCount = *(v8 + 495);
              if (DynamicsDSPChannelCount)
              {
                if (v8[1136] == 1 && (v453 = *(v8 + 198)) != 0)
                {
                  ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v453);
                  DynamicsDSPChannelCount = *(v8 + 495);
                  v454 = 2;
                }

                else
                {
                  v454 = 1;
                }

                v455 = *(v8 + 198);
                *&v561.mSampleTime = v7;
                v561.mHostTime = v455;
                *&v563.mNumberBuffers = v7;
                v558 = v557;
                v562.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v562.mNumberBuffers, &v558, v8[123], v454, &v561, 1u, &v563);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v362, v7, &v558);
                }

                v407 = *(v8 + 1108);
              }
            }

            if ((v407 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
            {
              v456 = *(v8 + 496);
              if (v456)
              {
                v457 = v8[1081];
                if ((v457 - 65) <= 0xFFFFFFBF)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v558.mSampleTime) = 136315394;
                    *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                    WORD2(v558.mHostTime) = 1024;
                    *(&v558.mHostTime + 6) = 1269;
                    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
                  }

                  v516 = __cxa_allocate_exception(0x10uLL);
                  *v516 = &unk_2881B25F8;
                  v516[2] = -50;
                }

                MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                v459 = (&mBuffers - v458);
                bzero(&mBuffers - v458, v460 + 24);
                v459->mNumberBuffers = v457;
                v461 = 8;
                v462 = mBuffers;
                do
                {
                  v463 = *v462;
                  v462 += 2;
                  *(&v459->mNumberBuffers + v461) = v463;
                  v461 += 16;
                  --v457;
                }

                while (v457);
                v464 = *(v8 + 198);
                *&v561.mSampleTime = v459;
                v561.mHostTime = v464;
                *&v563.mNumberBuffers = v459;
                v558 = v557;
                v562.mNumberBuffers = 512;
                DynamicsDSPChannelCount = AudioUnitProcessMultiple(v456, &v562.mNumberBuffers, &v558, v8[123], 1u, &v561, 1u, &v563);
                v362 = v534;
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v534, v459, &v558);
                }

                v407 = *(v8 + 1108);
              }
            }

            if ((v407 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
            {
              if (v8[1136] == 1 && (v465 = *(v8 + 198)) != 0)
              {
                DynamicsDSPChannelCount = ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v465);
                v466 = 2;
              }

              else
              {
                v466 = 1;
              }

              v467 = v8[1081];
              if ((v467 - 65) <= 0xFFFFFFBF)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v558.mSampleTime) = 136315394;
                  *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                  WORD2(v558.mHostTime) = 1024;
                  *(&v558.mHostTime + 6) = 1296;
                  _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
                }

                v517 = __cxa_allocate_exception(0x10uLL);
                *v517 = &unk_2881B25F8;
                v517[2] = -50;
              }

              MEMORY[0x28223BE20](DynamicsDSPChannelCount);
              v469 = (&mBuffers - v468);
              bzero(&mBuffers - v468, v470 + 24);
              v469->mNumberBuffers = v467;
              v471 = v7 + 1;
              v472 = 8;
              do
              {
                v473 = *&v471->mNumberBuffers;
                v471 = (v471 + 32);
                *(&v469->mNumberBuffers + v472) = v473;
                v472 += 16;
                --v467;
              }

              while (v467);
              v474 = *(v8 + 198);
              *&v561.mSampleTime = v469;
              v561.mHostTime = v474;
              *&v563.mNumberBuffers = v469;
              v558 = v557;
              v562.mNumberBuffers = 512;
              AudioUnitProcessMultiple(*(v8 + 497), &v562.mNumberBuffers, &v558, v8[123], v466, &v561, 1u, &v563);
              v362 = v534;
              if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v534, v469, &v558);
              }

              v407 = *(v8 + 1108);
            }

            if ((v407 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
            {
              v475 = *(v8 + 485);
              if (v475)
              {
                v558 = v557;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v475, &v561, &v558, v8[123], v7);
                v407 = *(v8 + 1108);
              }
            }

            if ((v407 & 0x800000000000) != 0)
            {
              v476 = v446;
            }

            else
            {
              v476 = 1;
            }

            if (v476)
            {
              v477 = &unk_28133C000;
            }

            else
            {
              v477 = &unk_28133C000;
              if ((*(v8 + 8877) & 0x80) != 0)
              {
                v478 = *(v8 + 486);
                if (v478)
                {
                  v558 = v557;
                  LODWORD(v561.mSampleTime) = 512;
                  AudioUnitProcess(v478, &v561, &v558, v8[123], v7);
                  if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v558);
                  }

                  v407 = *(v8 + 1108);
                }
              }
            }

            if ((v407 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
            {
              v479 = *(v8 + 489);
              if (v479)
              {
                v558 = v557;
                LODWORD(v561.mSampleTime) = 512;
                AudioUnitProcess(v479, &v561, &v558, v8[123], v7);
                if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, v8[123], v7, &v558);
                }

                v407 = *(v8 + 1108);
              }
            }

            if ((v407 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
            {
              v480 = *(v8 + 490);
              if (v480)
              {
                v481 = v8[19];
                if (v481 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v481) & 1) != 0)
                {
                  v558 = v557;
                  LODWORD(v561.mSampleTime) = 512;
                  AudioUnitProcess(v480, &v561, &v558, v8[123], v7);
                  if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, v8[123], v7, &v558);
                  }
                }
              }
            }

            if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v362, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v362, v7, &v557);
            }

            v482 = *(v8 + 1993);
            if (AudioIssueDetectorLibraryLoader(void)::once != -1)
            {
              dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
            }

            if (v477[85])
            {
              v477[85](v482, 70, 0, v7, v362, &v557);
            }

            if (v8[1135] == 1 && (v9[882] & 1) == 0)
            {
              VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v557, 0);
            }

            if (*(v9 + 3249) == 1)
            {
              VoiceProcessorV2::LoopBackRead(v8, v362, v7);
            }

            goto LABEL_925;
          }
        }
      }

      if ((v407 & v429 & 0x800000000000) != 0)
      {
        DynamicsDSPChannelCount = *(v8 + 486);
        if (DynamicsDSPChannelCount)
        {
          v558 = v557;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v561, &v558, v8[123], v7);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v558);
          }

          v407 = *(v8 + 1108);
        }
      }

      if (v407 & 0x1000000000000) != 0 && (*(v8 + 8878))
      {
        v430 = *(v8 + 487);
        if (v430)
        {
          v431 = v8[1081];
          if ((v431 - 65) <= 0xFFFFFFBF)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1007;
            }

            LODWORD(v558.mSampleTime) = 136315394;
            *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
            WORD2(v558.mHostTime) = 1024;
            *(&v558.mHostTime + 6) = 1156;
            v518 = MEMORY[0x277D86220];
            goto LABEL_1006;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v433 = (&mBuffers - v432);
          bzero(&mBuffers - v432, v434 + 24);
          v433->mNumberBuffers = v431;
          v435 = 8;
          v436 = mBuffers;
          do
          {
            v437 = *v436;
            v436 += 2;
            *(&v433->mNumberBuffers + v435) = v437;
            v435 += 16;
            --v431;
          }

          while (v431);
          v558 = v557;
          LODWORD(v561.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v430, &v561, &v558, v8[123], v433);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, v8[123], v433, &v558);
          }

          v407 = *(v8 + 1108);
        }
      }

      if ((v407 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v438 = *(v8 + 488)) == 0)
      {
LABEL_809:
        v446 = 1;
        goto LABEL_811;
      }

      v439 = v8[1081];
      if ((v439 - 65) > 0xFFFFFFBF)
      {
        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v441 = (&mBuffers - v440);
        bzero(&mBuffers - v440, v442 + 24);
        v441->mNumberBuffers = v439;
        v443 = v7 + 1;
        v444 = 8;
        do
        {
          v445 = *&v443->mNumberBuffers;
          v443 = (v443 + 32);
          *(&v441->mNumberBuffers + v444) = v445;
          v444 += 16;
          --v439;
        }

        while (v439);
        v558 = v557;
        LODWORD(v561.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v438, &v561, &v558, v8[123], v441);
        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, v8[123], v441, &v558);
        }

        v407 = *(v8 + 1108);
        goto LABEL_809;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_1007:
        v519 = __cxa_allocate_exception(0x10uLL);
        *v519 = &unk_2881B25F8;
        v519[2] = -50;
      }

      LODWORD(v558.mSampleTime) = 136315394;
      *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
      WORD2(v558.mHostTime) = 1024;
      *(&v558.mHostTime + 6) = 1173;
      v518 = MEMORY[0x277D86220];
LABEL_1006:
      _os_log_impl(&dword_2724B4000, v518, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      goto LABEL_1007;
    }

    v409 = *(v8 + 2140);
    v410 = *(v409 + 16);
    v411 = v8[129];
    v562.mNumberBuffers = v8[129];
    v412 = *(v8 + 50);
    if (v412)
    {
      v562.mNumberBuffers = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v412, v411);
      v409 = *(v8 + 1986);
      if (v562.mNumberBuffers <= *(v409 + 12) >> 2)
      {
        VoiceProcessor::SampleRateConverter::Convert(*(v8 + 50), v8 + 129, &v562.mNumberBuffers, *(v8 + 2140), v409);
        v409 = *(v8 + 1986);
      }

      else
      {
        *(v8 + 17128) = 0;
      }

      v410 = *(v409 + 16);
    }

    v413 = *(v409 + 12) >> 2;
    if (*(v8 + 17128) == 1)
    {
      v414 = 0.0;
      if (v413 > v562.mNumberBuffers)
      {
        vDSP_vclr(&v410[v562.mNumberBuffers], 1, (v413 - v562.mNumberBuffers));
      }
    }

    else
    {
      v414 = 1.0;
      vDSP_vclr(v410, 1, v413);
    }

    AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v414, 0);
    if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
    {
      v415 = *(v8 + 404);
      if (v415)
      {
        LODWORD(v558.mSampleTime) = 0;
        AudioUnitGetParameter(v415, 9u, 0, 0, &v558);
        AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v558.mSampleTime, 0);
      }
    }

    v416 = *(v8 + 482);
    v417 = atomic_load(VoiceProcessorV4::mIsOnEar);
    AudioUnitSetParameter(v416, 0x16u, 0, 0, v417, 0);
    v418 = *(v8 + 50);
    v419 = 4280;
    if (v418)
    {
      v419 = 3972;
    }

    v420 = *&v8[v419];
    *&v561.mSampleTime = v7;
    v561.mHostTime = v420;
    v558 = v557;
    v551.mNumberBuffers = 512;
    *&v563.mNumberBuffers = v7;
    v421 = v8[131];
    if (*(v9 + 3249) & 1) != 0 || (*(v9 + 3250))
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v421, v7, &v558);
      v421 = v8[131];
      v422 = 3972;
      if (!*(v8 + 50))
      {
        v422 = 4280;
      }

      v423 = *&v8[v422];
      if (*(v9 + 3249))
      {
LABEL_761:
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v421, v423, &v558);
LABEL_762:
        AudioUnitProcessMultiple(*(v8 + 482), &v551.mNumberBuffers, &v558, v8[123], 2u, &v561, 1u, &v563);
        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, v8[131], v7, &v558);
        }

        DynamicsDSPChannelCount = AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
        v407 = *(v8 + 1108);
        goto LABEL_766;
      }
    }

    else
    {
      if (v418)
      {
        v424 = (v8 + 3972);
      }

      else
      {
        v424 = (v8 + 4280);
      }

      v423 = *v424;
    }

    if (*(v9 + 3250) != 1)
    {
      goto LABEL_762;
    }

    goto LABEL_761;
  }

  v194 = 0;
  v195 = 0;
  v196 = v8 + 878;
  v530 = &v183->mBuffers[0].mData;
  v531 = (v169 + 4);
  v529 = &v181->mBuffers[0].mData;
  v532 = &v182->mBuffers[0].mData;
  v527 = (v8 + 690);
  v528 = &v7->mBuffers[0].mData;
  v197 = 1;
  v198 = -8589940800.0;
  while (1)
  {
    v539 = v194;
    if ((v8[77] & 0x20) != 0)
    {
      v202 = v8[81];
      if ((v202 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v558.mSampleTime) = 136315394;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 547;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
        }

        v511 = __cxa_allocate_exception(0x10uLL);
        *v511 = &unk_2881B25F8;
        v511[2] = -50;
      }

      MEMORY[0x28223BE20](v176);
      v201 = (&mBuffers - v203);
      bzero(&mBuffers - v203, v204 + 24);
      v200 = v544;
    }

    else
    {
      MEMORY[0x28223BE20](v176);
      v201 = &v522;
      v522 = 0;
      v523 = 0uLL;
      v202 = 1;
    }

    *v201 = v202;
    if (v200)
    {
      v205 = v200->mNumberBuffers;
      if (v200->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v558.mSampleTime) = 136315394;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 549;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
        }

        v504 = __cxa_allocate_exception(0x10uLL);
        *v504 = &unk_2881B25F8;
        v504[2] = -50;
      }
    }

    else
    {
      v205 = 1;
    }

    MEMORY[0x28223BE20](v199);
    v207 = (&mBuffers - v206);
    bzero(&mBuffers - v206, v208 + 24);
    v538 = v207;
    *v207 = v205;
    if (v542)
    {
      v210 = v542->mNumberBuffers;
      if (v542->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v558.mSampleTime) = 136315394;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 552;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
        }

        v506 = __cxa_allocate_exception(0x10uLL);
        *v506 = &unk_2881B25F8;
        v506[2] = -50;
      }
    }

    else
    {
      v210 = 1;
    }

    MEMORY[0x28223BE20](v209);
    v212 = (&mBuffers - v211);
    bzero(&mBuffers - v211, v213 + 24);
    v537 = v212;
    *v212 = v210;
    v535 = v195;
    if (v543)
    {
      v215 = v543->mNumberBuffers;
      if (v543->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v558.mSampleTime) = 136315394;
          *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v558.mHostTime) = 1024;
          *(&v558.mHostTime + 6) = 555;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
        }

        v508 = __cxa_allocate_exception(0x10uLL);
        *v508 = &unk_2881B25F8;
        v508[2] = -50;
      }
    }

    else
    {
      v215 = 1;
    }

    MEMORY[0x28223BE20](v214);
    v217 = (&mBuffers - v216);
    bzero(&mBuffers - v216, v218 + 24);
    v541 = v217;
    v217->mNumberBuffers = v215;
    v220 = *(v8 + 2260);
    v221 = *(v8 + 204);
    v545 = v201;
    if (v220 != 1)
    {
      goto LABEL_408;
    }

    v222 = v539;
    if (!v221)
    {
      goto LABEL_411;
    }

    if (*v221)
    {
      v223 = 0;
      v224 = (v221 + 4);
      do
      {
        bzero(*v224, *(v224 - 1));
        ++v223;
        v224 += 2;
      }

      while (v223 < *v221);
      v221 = *(v8 + 204);
LABEL_408:
      v222 = v539;
      if (!v221)
      {
LABEL_411:
        v225 = 1;
        goto LABEL_412;
      }
    }

    v225 = *v221;
    if ((*v221 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 560;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v510 = __cxa_allocate_exception(0x10uLL);
      *v510 = &unk_2881B25F8;
      v510[2] = -50;
    }

LABEL_412:
    MEMORY[0x28223BE20](v219);
    v227 = (&mBuffers - v226);
    bzero(&mBuffers - v226, v228 + 24);
    v540 = v227;
    *v227 = v225;
    v230 = v7->mNumberBuffers;
    if ((v230 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 562;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v501 = __cxa_allocate_exception(0x10uLL);
      *v501 = &unk_2881B25F8;
      v501[2] = -50;
    }

    v231 = v7;
    MEMORY[0x28223BE20](v229);
    v233 = (&mBuffers - v232);
    bzero(&mBuffers - v232, v234 + 24);
    v548 = *&v233;
    *v233 = v230;
    v235 = *v545;
    if (v235)
    {
      v236 = 4 * v8[131];
      v237 = v545 + 4;
      v238 = v531;
      do
      {
        *(v237 - 2) = 1;
        *(v237 - 1) = v236;
        v239 = *v238;
        v238 += 2;
        *v237 = v239 + 4 * v222;
        v237 += 2;
        --v235;
      }

      while (v235);
    }

    v240 = v538;
    v241 = *v538;
    v242 = v542;
    v243 = v543;
    v244 = v544;
    v245 = v231;
    v246 = v537;
    if (v241)
    {
      v247 = 4 * v8[131];
      v248 = (v538 + 4);
      v249 = v530;
      do
      {
        *(v248 - 2) = 1;
        *(v248 - 1) = v247;
        if (v244)
        {
          v250 = *v249 + 4 * v222;
        }

        else
        {
          v250 = 0;
        }

        *v248 = v250;
        v248 += 2;
        v249 += 2;
        --v241;
      }

      while (v241);
    }

    v251 = *v246;
    if (v251)
    {
      v252 = 4 * v8[131];
      v253 = (v246 + 4);
      v254 = v529;
      do
      {
        *(v253 - 2) = 1;
        *(v253 - 1) = v252;
        if (v242)
        {
          v255 = *v254 + 4 * v222;
        }

        else
        {
          v255 = 0;
        }

        *v253 = v255;
        v253 += 2;
        v254 += 2;
        --v251;
      }

      while (v251);
    }

    v256 = v541->mNumberBuffers;
    if (v256)
    {
      v257 = 4 * v8[131];
      v258 = &v541->mBuffers[0].mData;
      v259 = v532;
      do
      {
        *(v258 - 2) = 1;
        *(v258 - 1) = v257;
        if (v243)
        {
          v260 = *v259 + 4 * v222;
        }

        else
        {
          v260 = 0;
        }

        *v258 = v260;
        v258 += 2;
        v259 += 2;
        --v256;
      }

      while (v256);
    }

    if (v230)
    {
      v261 = 4 * v8[131];
      v262 = (*&v548 + 16);
      v263 = v528;
      do
      {
        *(v262 - 2) = 1;
        *(v262 - 1) = v261;
        if (v245)
        {
          v264 = *v263 + 4 * v222;
        }

        else
        {
          v264 = 0;
        }

        *v262 = v264;
        v262 += 2;
        v263 += 2;
        --v230;
      }

      while (v230);
    }

    if (v225)
    {
      v265 = 4 * v8[131];
      v266 = v225;
      v267 = v221 + 4;
      v268 = (v540 + 4);
      do
      {
        *(v268 - 2) = 1;
        *(v268 - 1) = v265;
        if (v221)
        {
          v269 = *v267 + 4 * v222;
        }

        else
        {
          v269 = 0;
        }

        *v268 = v269;
        v268 += 2;
        v267 += 2;
        --v266;
      }

      while (v266);
    }

    if (v243 && (v8[565] & 1) != 0)
    {
      v270 = v543->mNumberBuffers >= v225 ? v225 : v543->mNumberBuffers;
      if (v270)
      {
        v271 = (v540 + 4);
        v272 = v532;
        do
        {
          v273 = *(v272 - 1);
          v274 = *(v271 - 1);
          if (v273 >= v274)
          {
            v275 = v274;
          }

          else
          {
            v275 = v273;
          }

          memcpy(*v271, *v272, v275);
          v272 += 2;
          v271 += 2;
          --v270;
        }

        while (v270);
      }
    }

    if (v544)
    {
      v276 = v240;
    }

    else
    {
      v276 = 0;
    }

    MonoABL = GetMonoABL(v276, &v563, v8[131]);
    if (v542)
    {
      v278 = v246;
    }

    else
    {
      v278 = 0;
    }

    *&v279 = COERCE_DOUBLE(GetMonoABL(v278, &v562, v8[131]));
    if (v543)
    {
      v280 = v541;
    }

    else
    {
      v280 = 0;
    }

    v281 = GetMonoABL(v280, &v551, v8[131]);
    if (*(v546 + 3928) == 1)
    {
      v282 = *(v8 + 1108);
      if ((v282 & 0x400) != 0)
      {
        v283 = *(v8 + 1109);
        if ((v283 & 0x400) != 0)
        {
          if (*(v8 + 449))
          {
            if ((v282 & v283 & 2) != 0)
            {
              v284 = *(v8 + 440);
              if (v284)
              {
                LODWORD(v558.mSampleTime) = 0;
                AudioUnitGetParameter(v284, 0x73707062u, 0, 0, &v558);
                AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v558.mSampleTime, 0);
              }
            }
          }
        }
      }
    }

    v285 = 0;
    *&v558.mSampleTime = 10;
    v558.mHostTime = v545;
    *&v558.mRateScalar = 11;
    v536 = v281;
    v558.mWordClockTime = v281;
    *&v558.mSMPTETime.mSubframes = 12;
    *&v558.mSMPTETime.mType = MonoABL;
    *&v558.mSMPTETime.mHours = 13;
    *&v558.mFlags = v279;
    do
    {
      v286 = *(&v558.mSampleTime + v285);
      v287 = *(&v558.mHostTime + v285);
      if (!v287)
      {
        v287 = *(v8 + 203);
        if (v287->mNumberBuffers)
        {
          v288 = v196;
          v289 = 0;
          v290 = &v287->mBuffers[0].mData;
          do
          {
            bzero(*v290, *(v290 - 1));
            ++v289;
            v290 += 2;
          }

          while (v289 < v287->mNumberBuffers);
          v287 = *(v547 + 203);
          v196 = v288;
          v8 = v547;
        }
      }

      v291 = VoiceProcessorV2::VPUseAUInProcess(v8, v286, 0);
      if (v287)
      {
        v292 = v291;
      }

      else
      {
        v292 = 0;
      }

      if (v292)
      {
        v561 = v564;
        LODWORD(v560[0]) = 512;
        AudioUnitProcess(*&v196[2 * v286], v560, &v561, v8[131], v287);
      }

      v285 += 16;
    }

    while (v285 != 64);
    v293 = *(v8 + 1108);
    if ((v293 & 0x40000000) != 0)
    {
      v296 = *(v8 + 1109);
      v295 = *&v548;
      if ((v296 & 0x40000000) == 0)
      {
        goto LABEL_488;
      }

      v294 = 0;
      if (!*(v8 + 469) || (v293 & v296 & 0x80000000) == 0)
      {
        goto LABEL_489;
      }

      if (*(v8 + 470) && *v527 && *(*v527 + 80))
      {
        vp::Audio_Buffer::prepare(v527, v8[131]);
        v312 = *(v8 + 345);
        if (v312)
        {
          v313 = *(v312 + 80);
        }

        else
        {
          v313 = 0;
        }

        if (*v313)
        {
          v355 = 0;
          v356 = (v313 + 4);
          do
          {
            bzero(*v356, *(v356 - 1));
            ++v355;
            v356 += 2;
          }

          while (v355 < *v313);
          v312 = *v527;
          v295 = *&v548;
        }

        if (v312)
        {
          v294 = *(v312 + 80);
        }

        else
        {
          v294 = 0;
        }

        LODWORD(v561.mSampleTime) = 512;
        v558 = v564;
        AudioUnitSetParameter(*(v8 + 469), 1u, 0, 0, (*(v8 + 3152) + -1.0) * 24.0, 0);
        AudioUnitProcess(*(v8 + 469), &v561, &v558, v8[131], v294);
        v357 = v8[131];
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, v8[131], v294, &v564);
          v357 = v8[131];
        }

        v558 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(*(v8 + 470), &v561, &v558, v357, v294);
        v358 = v8[131];
        if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v358, v294, &v558), v358 = v8[131], (*(v546 + 3249)) || *(v546 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v358, v294, &v558);
        }

        v293 = *(v8 + 1108);
      }

      else
      {
LABEL_488:
        v294 = 0;
      }
    }

    else
    {
      v294 = 0;
      v295 = *&v548;
    }

LABEL_489:
    if (*(v8 + 2260))
    {
      v297 = v295;
    }

    else
    {
      v297 = v545;
    }

    if (*(v8 + 2260))
    {
      nn = v540;
    }

    else
    {
      nn = v536;
    }

    if (nn)
    {
      v298 = nn;
    }

    else
    {
      v298 = v294;
    }

    v541 = v298;
    if ((v293 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && nn)
    {
      v299 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
      *(v8 + 1121) = v299;
      LODWORD(v558.mSampleTime) = __exp10f(v299 / 20.0);
      v300 = *nn;
      nn += 8;
      for (mm = 16 * v300; mm; mm -= 16)
      {
        MEMORY[0x2743CCE20](*(nn + 8), 1, &v558, *(nn + 8), 1, v8[131]);
        nn += 16;
      }

      v293 = *(v8 + 1108);
    }

    if ((v293 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
    {
      (*(*v8 + 688))(v8, v545, v540);
      v293 = *(v8 + 1108);
    }

    if ((v293 & 0x8000) != 0 && (v302 = *(v8 + 1109), (v302 & 0x8000) != 0) && (v303 = *(v8 + 454)) != 0)
    {
      v304 = *(v8 + 2260);
      v558 = v564;
      v550 = 512;
      v305 = v538;
      if (((v544 != 0) & v304) == 0)
      {
        v305 = MonoABL;
      }

      *&v561.mSampleTime = v545;
      v561.mHostTime = v305;
      v306 = *&v537;
      if (((v542 != 0) & v304) == 0)
      {
        v306 = *&v279;
      }

      v307 = v540;
      if (((v543 != 0) & v304) == 0)
      {
        v307 = v536;
      }

      v561.mRateScalar = v306;
      v561.mWordClockTime = v307;
      *&v561.mSMPTETime.mSubframes = v294;
      if ((v293 & v302 & 2) != 0)
      {
        v314 = *(v8 + 440);
        v7 = v533;
        v308 = v546;
        if (v314 && ((v304 & 1) != 0 || *(v546 + 3929) == 1))
        {
          LODWORD(v560[0]) = 0;
          Parameter = AudioUnitGetParameter(v314, 0x73707062u, 0, 0, v560);
          v317 = *v560 == 1.0 && Parameter == 0;
          v549 = v317;
          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v549, 4u);
          v303 = *(v8 + 454);
        }
      }

      else
      {
        v7 = v533;
        v308 = v546;
      }

      v560[0] = v297;
      v560[1] = v541;
      AudioUnitProcessMultiple(v303, &v550, &v558, v8[131], 5u, &v561, 2u, v560);
      v318 = v8[131];
      if ((*(v308 + 3249) & 1) != 0 || *(v308 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v318, v297, &v558), v318 = v8[131], (*(v308 + 3249)) || *(v308 + 3250) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v318, v541, &v558);
      }
    }

    else
    {
      if (MonoABL)
      {
        LODWORD(v558.mSampleTime) = 1055175620;
        v309 = v297 + 2;
        for (nn = 16 * *v297; nn; nn -= 16)
        {
          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v558, *(v309 + 1), 1, *(v309 + 1), 1, v8[131]);
          v309 += 4;
        }
      }

      v7 = v533;
      if (*&v279 != 0.0)
      {
        v310 = v297 + 2;
        for (nn = 16 * *v297; nn; nn -= 16)
        {
          MEMORY[0x2743CCD80](v279->mBuffers[0].mData, 1, *(v310 + 1), 1, *(v310 + 1), 1, v8[131]);
          v310 += 4;
        }
      }

      v308 = v546;
      if (v294)
      {
        if (v294 != v541)
        {
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v558, v541);
          v311 = *&v558.mSampleTime + 8;
          for (nn = 16 * **&v558.mSampleTime; nn; nn -= 16)
          {
            MEMORY[0x2743CCD80](*(v294 + 16), 1, *(v311 + 8), 1, *(v311 + 8), 1, v8[131]);
            v311 += 16;
          }
        }
      }
    }

    v319 = *(v8 + 1108);
    if ((v319 & 0x8000) != 0 && (*(v8 + 8873) & 0x80) != 0 && *(v8 + 454) && *(v8 + 2260) == 1)
    {
      (*(*v8 + 664))(v8, v297, &v564);
      v319 = *(v8 + 1108);
      v7 = v533;
      v308 = v546;
    }

    if ((v319 & 0x800000) != 0 && (*(v8 + 8874) & 0x80) != 0)
    {
      v320 = *(v8 + 462);
      if (v320)
      {
        v558 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v320, &v561, &v558, v8[131], v297);
        if ((*(v308 + 3249) & 1) != 0 || *(v308 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v297, &v558);
        }

        v319 = *(v8 + 1108);
      }
    }

    if (v319 & 0x1000000) != 0 && (*(v8 + 8875))
    {
      v321 = *(v8 + 463);
      if (v321)
      {
        v322 = v8[580];
        if (v322 != v8[582])
        {
          AudioUnitSetParameter(v321, 1u, 0, 0, v322, 0);
          v321 = *(v8 + 463);
        }

        v558 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v321, &v561, &v558, v8[131], v297);
        v319 = *(v8 + 1108);
      }
    }

    if ((v319 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0)
    {
      v323 = *(v8 + 464);
      if (v323)
      {
        v558 = v564;
        LODWORD(v561.mSampleTime) = 512;
        AudioUnitProcess(v323, &v561, &v558, v8[131], v297);
        goto LABEL_593;
      }
    }

    if ((v319 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0)
    {
      v324 = *(v8 + 465);
      if (v324)
      {
        break;
      }
    }

    v330 = 1.0;
    if ((v8[565] & 1) == 0)
    {
      v330 = *(v8 + 3155);
    }

    LODWORD(v558.mSampleTime) = __exp10f(((v330 * 32.0) + -32.0) / 20.0);
    v331 = v297 + 2;
    for (i1 = 16 * *v297; i1; i1 -= 16)
    {
      MEMORY[0x2743CCE20](*(v331 + 1), 1, &v558, *(v331 + 1), 1, v8[131]);
      v331 += 4;
    }

    if ((*(v308 + 3249) & 1) != 0 || *(v308 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v297, &v557);
    }

LABEL_593:
    if (!v541 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
    {
      v333 = v548;
      if (*v297)
      {
        v334 = 0;
        v335 = 4;
        do
        {
          memcpy(*(*&v333 + v335 * 4), *&v297[v335], 4 * v8[131]);
          ++v334;
          v335 += 4;
        }

        while (v334 < *v297);
      }

      goto LABEL_598;
    }

    v343 = *(v8 + 2260);
    if (v343 == 1)
    {
      v344 = v8[91];
      v345 = *v297;
LABEL_612:
      v346 = v548;
      if (v345)
      {
        v347 = 0;
        v348 = v344 - 1;
        v349 = v541->mBuffers;
        v350 = 4;
        do
        {
          if (v348 >= v347)
          {
            v351 = v347;
          }

          else
          {
            v351 = v348;
          }

          MEMORY[0x2743CCD80](*&v297[v350], 1, v349[v351].mData, 1, *(*&v346 + v350 * 4), 1, v8[131]);
          ++v347;
          v350 += 4;
          v346 = v548;
        }

        while (v347 < *v297);
      }

      goto LABEL_598;
    }

    v345 = *v297;
    v344 = 1;
    if ((v343 & 1) != 0 || v345 == 1)
    {
      goto LABEL_612;
    }

    v352 = v297 + 2;
    v353 = v541->mBuffers;
      ;
    }

LABEL_598:
    v336 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    if ((v336 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v558.mSampleTime) = 136315394;
        *(&v558.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
        WORD2(v558.mHostTime) = 1024;
        *(&v558.mHostTime + 6) = 860;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v558, 0x12u);
      }

      v502 = __cxa_allocate_exception(0x10uLL);
      *v502 = &unk_2881B25F8;
      v502[2] = -50;
    }

    v337 = v336;
    MEMORY[0x28223BE20](v336);
    v339 = (&mBuffers - v338);
    bzero(&mBuffers - v338, v340 + 24);
    v339->mNumberBuffers = v337;
    v176 = memcpy(v339->mBuffers, (*&v548 + 8), 16 * v337);
    v9 = v546;
    v341 = v535;
    if ((*(v546 + 3249) & 1) != 0 || *(v546 + 3250) == 1)
    {
      v176 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, v8[131], v339, &v557);
    }

    if (v8[2217] & 1) != 0 && (v8[2219])
    {
      v176 = *(v8 + 471);
      if (v176)
      {
        v558 = v564;
        LODWORD(v561.mSampleTime) = 512;
        v176 = AudioUnitProcess(v176, &v561, &v558, v8[131], v339);
      }
    }

    v342 = v8[131];
    v564.mSampleTime = v564.mSampleTime + v342;
    v194 = v342 + v539;
    v195 = v341 + 1;
    if (v195 >= v8[132])
    {
      goto LABEL_641;
    }
  }

  v325 = *(v8 + 199);
  if (v325->mNumberBuffers)
  {
    v326 = 0;
    v327 = v8[81] - 1;
    nn = (v297 + 2);
    v328 = 16;
    do
    {
      if (v327 >= v326)
      {
        v329 = v326;
      }

      else
      {
        v329 = v327;
      }

      memcpy(*(&v325->mNumberBuffers + v328), *(nn + 16 * v329 + 8), 4 * v8[131]);
      ++v326;
      v325 = *(v8 + 199);
      v328 += 16;
    }

    while (v326 < v325->mNumberBuffers);
    v324 = *(v8 + 465);
  }

  v558 = v564;
  LODWORD(v561.mSampleTime) = 512;
  AudioUnitProcess(v324, &v561, &v558, v8[131], v325);
  v297 = *(v8 + 199);
  if (v297)
  {
    goto LABEL_593;
  }

  v560[0] = 0;
  v559 = 0u;
  memset(&v558, 0, sizeof(v558));
  v497 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v499 = 3;
  }

  else
  {
    v499 = 2;
  }

  LODWORD(v561.mSampleTime) = 134217984;
  *(&v561.mSampleTime + 4) = 0.0;
  LODWORD(v524) = 12;
  _os_log_send_and_compose_impl(v499, v560, &v558, 80, &dword_2724B4000, v497, 16, "assertion failure: compressedVoiceABL != nullptr -> %llu", &v561);
  _os_crash_msg();
  __break(1u);
LABEL_959:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_934:
  CALegacyLog::log(v497, 5, *(v297 + 424), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1380, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v198);
  v485 = v8[123];
  v486 = *(v8 + 42);
LABEL_935:
  if (v12 - *(v8 + 1984) > (v8[296] + v485) / v486)
  {
    v487 = *(v8 + 1589);
    if (*(v197 + 3384) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v487, 5, *(v297 + 424), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1383, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
  }

  *(v8 + 1984) = v12;
LABEL_940:
  if (nn)
  {
    if (v8[414] & 1) != 0 || (v488 = FadeInOverFewFrames(*(v8 + 205), v7, v8[412], v8[413]), *(v8 + 1656) = v488, v8[412] = HIDWORD(v488), (v488))
    {
      v489 = *(v8 + 205);
      v490 = v7->mNumberBuffers >= *v489 ? *v489 : v7->mNumberBuffers;
      if (v490)
      {
        v491 = &v7->mBuffers[0].mData;
        v492 = (v489 + 4);
        do
        {
          v493 = *(v491 - 1);
          v494 = *(v492 - 1);
          if (v493 >= v494)
          {
            v495 = v494;
          }

          else
          {
            v495 = v493;
          }

          memcpy(*v492, *v491, v495);
          v491 += 2;
          v492 += 2;
          --v490;
        }

        while (v490);
      }
    }
  }

  else
  {
    v8[412] = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  return 0;
}

void sub_2725570FC(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 240));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV8::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
{
  v4 = **a1;
  if (*(v4 + 16752))
  {
    v5 = 1733326433;
  }

  else
  {
    v5 = 1936747876;
  }

  if (*(v4 + 16752))
  {
    v6 = 1936747876;
  }

  else
  {
    v6 = 0;
  }

  return AudioUnitSetProperty(*(v4 + 3512), v5, 0, v6, inData, inDataSize);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3121()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void VoiceProcessorV8::OCNSAndSpeechEnhanceDLProcess(uint64_t this, AudioBufferList *a2, AudioBufferList *a3, int a4, const AudioTimeStamp *inNumberFrames)
{
  v8 = a2;
  v33 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v10 = *(this + 17520);
    mData = a2->mBuffers[0].mData;
    inTimeStamp.mSampleTime = *(*(this + 17512) + 16);
    inTimeStamp.mHostTime = *&inTimeStamp.mSampleTime + 4 * inNumberFrames;
    VPTimeFreqConverter_Analyze(v10, mData, &inTimeStamp);
  }

  v12 = *(this + 8864);
  if ((v12 & 0x40) != 0 && (*(this + 8872) & 0x40) != 0)
  {
    v13 = *(this + 3560);
    if (v13)
    {
      inInputBufferLists.imagp = 0;
      ioOutputBufferLists[1] = 0;
      p_mNumberBuffers = &v8->mNumberBuffers;
      v15 = a3;
      if (a4)
      {
        p_mNumberBuffers = *(this + 17512);
        v15 = p_mNumberBuffers;
      }

      inInputBufferLists.realp = p_mNumberBuffers;
      ioOutputBufferLists[0] = v15;
      v16 = *(this + 17664);
      *&inTimeStamp.mSampleTime = *(this + 17648);
      *&inTimeStamp.mRateScalar = v16;
      v17 = *(this + 17696);
      *&inTimeStamp.mSMPTETime.mSubframes = *(this + 17680);
      *&inTimeStamp.mSMPTETime.mHours = v17;
      ioActionFlags[0] = 512;
      AudioUnitProcessMultiple(v13, ioActionFlags, &inTimeStamp, inNumberFrames, 2u, &inInputBufferLists, 2u, ioOutputBufferLists);
      AudioUnitGetParameter(*(this + 3560), 1u, 0, 0, (this + 16756));
      v12 = *(this + 8864);
    }
  }

  if ((v12 & 0x80) != 0 && (*(this + 8872) & 0x80) != 0 && (v18 = *(this + 3568)) != 0)
  {
    v19 = a3;
    if (a4)
    {
      v8 = *(this + 17512);
      v19 = v8;
    }

    *ioActionFlags = v19;
    ioOutputBufferLists[0] = v8;
    v20 = *(this + 17664);
    *&inTimeStamp.mSampleTime = *(this + 17648);
    *&inTimeStamp.mRateScalar = v20;
    v21 = *(this + 17696);
    *&inTimeStamp.mSMPTETime.mSubframes = *(this + 17680);
    *&inTimeStamp.mSMPTETime.mHours = v21;
    v28 = 512;
    AudioUnitSetProperty(v18, 0x3E9u, 0, 0, *(*(this + 17464) + 16), *(*(this + 17464) + 12));
    AudioUnitSetProperty(*(this + 3568), 0x3EAu, 0, 0, (this + 17504), 4u);
    v22 = *(this + 2352);
    if (v22 != *(this + 2360) && *v22 == 1886613611)
    {
      AudioUnitSetParameter(*(this + 3568), 0x34u, 0, 0, *(this + 17508), 0);
    }

    AudioUnitProcessMultiple(*(this + 3568), &v28, &inTimeStamp, inNumberFrames, 1u, ioOutputBufferLists, 1u, ioActionFlags);
    if (a4)
    {
      v23 = *(this + 17520);
      v24 = a3->mBuffers[0].mData;
      inInputBufferLists.realp = *(*(this + 17512) + 16);
      inInputBufferLists.imagp = &inInputBufferLists.realp[inNumberFrames];
      if (v23)
      {
        VPTimeFreqConverter::Synthesize(v23, &inInputBufferLists, v24);
      }
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Au, inNumberFrames, a3, &inTimeStamp);
    }
  }

  else if (a4)
  {
    v25 = *(this + 17520);
    v26 = a3->mBuffers[0].mData;
    v27 = *(*(this + 17512) + 16) + 4 * inNumberFrames;
    inTimeStamp.mSampleTime = *(*(this + 17512) + 16);
    inTimeStamp.mHostTime = v27;
    if (v25)
    {
      VPTimeFreqConverter::Synthesize(v25, &inTimeStamp, v26);
    }
  }
}

uint64_t VoiceProcessorV9::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v589 = *MEMORY[0x277D85DE8];
  v9 = this + 3158;
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
LABEL_3:
    ++v8[3150];
    CADeprecated::CAMutex::Unlock(v10);
    v11 = 0;
    v12 = 0.0;
    goto LABEL_987;
  }

  v565 = a2;
  v566 = a3;
  v564 = a4;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 648);
    CADeprecated::CAMutex::Lock((v8 + 648));
    goto LABEL_3;
  }

  v13 = a7;
  v14 = a6;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  (*(*v8 + 696))(&v581, v8, v13);
  v580 = v581;
  if (*(v9 + 3249) == 1)
  {
    if (*v9)
    {
      v15 = *(v8 + 1578);
      HIDWORD(v16) = HIDWORD(v580.mSampleTime);
      if (v15 == v580.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v15, v580.mSampleTime, 2);
      v16 = *(v8 + 1578);
      if (v580.mSampleTime >= v16)
      {
        goto LABEL_48;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v18 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v8 + 1578);
          LODWORD(v581.mSampleTime) = 136316674;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 88;
          WORD1(v581.mRateScalar) = 2048;
          *(&v581.mRateScalar + 4) = v20;
          WORD2(v581.mWordClockTime) = 2048;
          *(&v581.mWordClockTime + 6) = *&v580.mSampleTime;
          HIWORD(v581.mSMPTETime.mCounter) = 2048;
          *&v581.mSMPTETime.mType = v580.mHostTime;
          v581.mSMPTETime.mHours = 2048;
          *&v581.mSMPTETime.mMinutes = v580.mRateScalar;
          HIWORD(v581.mFlags) = 1024;
          v581.mReserved = v580.mFlags;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v581, 0x40u);
        }
      }

      v21 = *(v8 + 1588);
      if (v21 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v21, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 88, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v580.mSampleTime, v580.mHostTime, v580.mRateScalar, v580.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, v8[3150], 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v580.mSampleTime, 2);
      v16 = *(v8 + 216);
      v22 = v580.mSampleTime - v16;
      v23 = (((roundf(*(v8 + 291) * v8[126]) + v8[126]) + v8[295]) + v8[296]);
      if (v580.mSampleTime - v16 == v23)
      {
LABEL_48:
        LODWORD(v16) = v8[123];
        *(v8 + 1578) = v580.mSampleTime + *&v16;
        goto LABEL_49;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315906;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 75;
          WORD1(v581.mRateScalar) = 2048;
          *(&v581.mRateScalar + 4) = v23;
          WORD2(v581.mWordClockTime) = 2048;
          *(&v581.mWordClockTime + 6) = v22;
          _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v581, 0x26u);
        }
      }

      v26 = *(v8 + 1588);
      if (v26 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v26, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 75, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v23, v22);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, v8[3150], 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v17;
    goto LABEL_48;
  }

LABEL_49:
  v578 = v8 + 626;
  v579 = (*(*(v8 + 313) + 16))();
  CADeprecated::CAMutex::Lock((v8 + 648));
  ++v8[3150];
  CADeprecated::CAMutex::Unlock((v8 + 648));
  v27 = v8[123];
  v576 = v27;
  v577 = v27;
  v28 = *(v9 + 3249);
  if (v28)
  {
    *(v9 + 385) = 1;
    if (v7->mNumberBuffers == v8[91])
    {
      v29 = (v8 + 84);
      if (v565)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

LABEL_984:
    if (v579 == 1)
    {
      (*(*v578 + 24))(v578);
    }

    v11 = 1;
LABEL_987:
    if (*(v9 + 3249) == 1 && *(v8 + 1589))
    {
      v502 = mach_absolute_time();
      v503 = *(v8 + 1589);
      v303 = 0x280898000uLL;
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      nn = 0x280898000uLL;
      v199 = v502 * 0.0000000416666667 - v12;
      CALegacyLog::log(v503, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1466, "ProcessDownlinkAudio", "DL %f %f %f", v580.mSampleTime, v12, v199);
      v504 = v8[123];
      v505 = *(v8 + 42);
      if (v199 >= v504 / v505)
      {
        v516 = *(v8 + 1589);
        if (VPTimestampLogScope(void)::once != -1)
        {
          goto LABEL_1018;
        }

        goto LABEL_993;
      }

      goto LABEL_994;
    }

    goto LABEL_999;
  }

  if (v7->mNumberBuffers != v8[91])
  {
    goto LABEL_984;
  }

  v29 = (v8 + 84);
  if ((*(v9 + 3250) & 1) == 0)
  {
    goto LABEL_83;
  }

  if (v565)
  {
LABEL_62:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_56:
  v30 = *(v8 + 200);
  mNumberBuffers = v30->mNumberBuffers;
  v565 = v30;
  if (mNumberBuffers)
  {
    v32 = v13;
    v33 = 0;
    p_mData = &v30->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v33;
      p_mData += 2;
    }

    while (v33 < v30->mNumberBuffers);
    v28 = *(v9 + 3249);
    v13 = v32;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, v14, v565);
  if ((*(v9 + 3249) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, v14, v565, &v580);
LABEL_64:
  v35 = v566;
  if (!v566)
  {
    v35 = *(v8 + 201);
    if (v35->mNumberBuffers)
    {
      v36 = v13;
      v37 = 0;
      v38 = &v35->mBuffers[0].mData;
      do
      {
        v39 = v35;
        bzero(*v38, *(v38 - 1));
        v35 = v39;
        ++v37;
        v38 += 2;
      }

      while (v37 < v39->mNumberBuffers);
      v13 = v36;
    }
  }

  v566 = v35;
  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, v14, v566), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, v14, v566, &v580);
  }

  v40 = v564;
  if (!v564)
  {
    v40 = *(v8 + 202);
    if (v40->mNumberBuffers)
    {
      v41 = v13;
      v42 = 0;
      v43 = &v40->mBuffers[0].mData;
      do
      {
        v44 = v40;
        bzero(*v43, *(v43 - 1));
        v40 = v44;
        ++v42;
        v43 += 2;
      }

      while (v42 < v44->mNumberBuffers);
      v13 = v41;
    }
  }

  v564 = v40;
  if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, v14, v564), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, v14, v564, &v580);
  }

  v27 = v8[123];
LABEL_83:
  v569 = v9;
  v570 = v8;
  v557 = v14;
  if (v27 != v14)
  {
    if (*(v9 + 3171))
    {
      v55 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
      v56 = *(v8 + 1981);
      if (v55 > v56)
      {
        *(v8 + 1981) = v56 + 10.0;
        VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v14, "processdownlinkaudio: <block size mismatch>");
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v57 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v57)
        {
          v58 = v57;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v581.mSampleTime) = 136315650;
            *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
            WORD2(v581.mHostTime) = 1024;
            *(&v581.mHostTime + 6) = 186;
            WORD1(v581.mRateScalar) = 2048;
            *(&v581.mRateScalar + 4) = v55;
            _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v581, 0x1Cu);
          }
        }

        v59 = *(v8 + 1588);
        if (v59 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v59, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 186, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v55);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v60 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
        if (v60)
        {
          v61 = v60;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v7->mBuffers[0].mDataByteSize;
            v63 = v8[123];
            CAFormatter::CAFormatter(&inInputBufferLists, v29);
            v64 = v8[3150];
            LODWORD(v581.mSampleTime) = 136316674;
            *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
            WORD2(v581.mHostTime) = 1024;
            *(&v581.mHostTime + 6) = 192;
            WORD1(v581.mRateScalar) = 1024;
            HIDWORD(v581.mRateScalar) = v557;
            LOWORD(v581.mWordClockTime) = 1024;
            *(&v581.mWordClockTime + 2) = mDataByteSize;
            HIWORD(v581.mWordClockTime) = 1024;
            *&v581.mSMPTETime.mSubframes = v63;
            LOWORD(v581.mSMPTETime.mCounter) = 2080;
            *(&v581.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
            HIWORD(v581.mSMPTETime.mFlags) = 1024;
            *&v581.mSMPTETime.mHours = v64;
            _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v581, 0x34u);
            if (*&inInputBufferLists.mSampleTime)
            {
              free(*&inInputBufferLists.mSampleTime);
            }

            v9 = v569;
            v14 = v557;
          }
        }

        v65 = *(v8 + 1588);
        if (v65)
        {
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v66 = VPLogScope(void)::scope;
            v67 = v7->mBuffers[0].mDataByteSize;
            v68 = v8[123];
            CAFormatter::CAFormatter(&v581, v29);
            v69 = v8[3150];
            LODWORD(v543) = v68;
            v14 = v557;
            CALegacyLog::log(v65, 1, v66, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 192, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", v557, v67, v543, *&v581.mSampleTime, v69);
LABEL_190:
            if (*&v581.mSampleTime)
            {
              free(*&v581.mSampleTime);
            }
          }
        }
      }
    }

    else
    {
      *(v9 + 3171) = 1;
      *(v8 + 1978) = mach_absolute_time();
      *(v8 + 1981) = 0x3FF0000000000000;
      VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v14, "processdl: <block size mismatch>");
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v77 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v78 = (*v77 ? *v77 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 163;
          _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v581, 0x12u);
        }
      }

      v79 = *(v8 + 1588);
      if (v79 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v79, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 163, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v80 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v81 = (*v80 ? *v80 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = v7->mBuffers[0].mDataByteSize;
          v83 = v8[123];
          CAFormatter::CAFormatter(&inInputBufferLists, v29);
          v84 = v8[3150];
          LODWORD(v581.mSampleTime) = 136316674;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 169;
          WORD1(v581.mRateScalar) = 1024;
          HIDWORD(v581.mRateScalar) = v557;
          LOWORD(v581.mWordClockTime) = 1024;
          *(&v581.mWordClockTime + 2) = v82;
          HIWORD(v581.mWordClockTime) = 1024;
          *&v581.mSMPTETime.mSubframes = v83;
          LOWORD(v581.mSMPTETime.mCounter) = 2080;
          *(&v581.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
          HIWORD(v581.mSMPTETime.mFlags) = 1024;
          *&v581.mSMPTETime.mHours = v84;
          _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v581, 0x34u);
          if (*&inInputBufferLists.mSampleTime)
          {
            free(*&inInputBufferLists.mSampleTime);
          }

          v9 = v569;
          v14 = v557;
        }
      }

      v85 = *(v8 + 1588);
      if (v85 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v86 = VPLogScope(void)::scope;
        v87 = v7->mBuffers[0].mDataByteSize;
        v88 = v8[123];
        CAFormatter::CAFormatter(&v581, v29);
        v89 = v8[3150];
        LODWORD(v543) = v88;
        v14 = v557;
        CALegacyLog::log(v85, 2, v86, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 169, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", v557, v87, v543, *&v581.mSampleTime, v89);
        goto LABEL_190;
      }
    }

    if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v14, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v14, v7, &v580);
    }

    v76 = *(v8 + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
    }

    if (!AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      goto LABEL_984;
    }

LABEL_199:
    AudioIssueDetectorLibraryLoader(void)::libSym(v76, 70, 0, v7, v14, &v580);
    goto LABEL_984;
  }

  if (v7->mBuffers[0].mDataByteSize != v8[90] * v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v70 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v71 = (*v70 ? *v70 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = v7->mBuffers[0].mDataByteSize;
        v73 = v8[90] * v14;
        LODWORD(v581.mSampleTime) = 136315906;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 210;
        WORD1(v581.mRateScalar) = 1024;
        HIDWORD(v581.mRateScalar) = v72;
        LOWORD(v581.mWordClockTime) = 1024;
        *(&v581.mWordClockTime + 2) = v73;
        _os_log_impl(&dword_2724B4000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v581, 0x1Eu);
      }
    }

    v74 = *(v8 + 1588);
    v75 = *(v9 + 3249);
    if (v74)
    {
      if ((*(v9 + 3249) & 1) == 0 && *(v9 + 3250) != 1)
      {
        goto LABEL_152;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v74, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 210, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, v8[90] * v14);
      v75 = *(v9 + 3249);
    }

    if (v75)
    {
      VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v14, v7);
      if (*(v9 + 3249))
      {
LABEL_153:
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v14, v7, &v580);
LABEL_154:
        v76 = *(v8 + 1993);
        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
        }

        if (!AudioIssueDetectorLibraryLoader(void)::libSym)
        {
          goto LABEL_984;
        }

        goto LABEL_199;
      }
    }

LABEL_152:
    if (*(v9 + 3250) != 1)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v549 = v13;
  if (*(v9 + 3171) != 1)
  {
    goto LABEL_223;
  }

  *(v9 + 3171) = 0;
  v45 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
  VoiceProcessorV2::LogIOError(v8, 23.002, v8[3150], v8[123], v14, "processdownlinkaudio: <block size no longer mismatched>");
  if (v45 <= 1.0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v90 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v90)
    {
      v91 = v90;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v581.mSampleTime) = 136315650;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 239;
        WORD1(v581.mRateScalar) = 2048;
        *(&v581.mRateScalar + 4) = v45;
        _os_log_impl(&dword_2724B4000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v581, 0x1Cu);
      }
    }

    v92 = *(v8 + 1588);
    if (v92 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v92, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 239, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v45);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v93 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
    if (v93)
    {
      v94 = v93;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v8[123];
        LODWORD(v581.mSampleTime) = 136315906;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 243;
        WORD1(v581.mRateScalar) = 1024;
        HIDWORD(v581.mRateScalar) = v14;
        LOWORD(v581.mWordClockTime) = 1024;
        *(&v581.mWordClockTime + 2) = v95;
        _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v581, 0x1Eu);
      }
    }

    v52 = *(v8 + 1588);
    if (v52 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v53 = 243;
      v54 = 2;
      goto LABEL_222;
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v46 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v46)
    {
      v47 = v46;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315650;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 231;
        WORD1(v581.mRateScalar) = 2048;
        *(&v581.mRateScalar + 4) = v45;
        _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v581, 0x1Cu);
      }
    }

    v48 = *(v8 + 1588);
    if (v48 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v48, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 231, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v45);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v49 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
    if (v49)
    {
      v50 = v49;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v51 = v8[123];
        LODWORD(v581.mSampleTime) = 136315906;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 235;
        WORD1(v581.mRateScalar) = 1024;
        HIDWORD(v581.mRateScalar) = v14;
        LOWORD(v581.mWordClockTime) = 1024;
        *(&v581.mWordClockTime + 2) = v51;
        _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v581, 0x1Eu);
      }
    }

    v52 = *(v8 + 1588);
    if (v52 && ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v53 = 235;
      v54 = 1;
LABEL_222:
      CALegacyLog::log(v52, v54, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", v53, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v14, v8[123]);
    }
  }

LABEL_223:
  v96 = *(v8 + 49);
  NumberOfSourceFrames = v8[123];
  if (*(v8 + 48))
  {
    if (v96)
    {
      NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96, v8[123]);
      v576 = NumberOfSourceFrames;
      v96 = *(v8 + 48);
LABEL_230:
      LODWORD(NumberOfSourceFrames) = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96, NumberOfSourceFrames);
      goto LABEL_231;
    }

    v96 = *(v8 + 48);
LABEL_229:
    v576 = v8[123];
    goto LABEL_230;
  }

  if (v96)
  {
    goto LABEL_229;
  }

LABEL_231:
  v98 = *(v8 + 14);
  v99 = *v98;
  if (v99 >= 1)
  {
    v100 = NumberOfSourceFrames * v8[60];
    v101 = (v99 + 3) & 0xFFFFFFFC;
    v102 = vdupq_n_s64(v99 - 1);
    v103 = xmmword_2727564D0;
    v104 = xmmword_2727564E0;
    v105 = v98 + 11;
    v106 = vdupq_n_s64(4uLL);
    do
    {
      v107 = vmovn_s64(vcgeq_u64(v102, v104));
      if (vuzp1_s16(v107, *v102.i8).u8[0])
      {
        *(v105 - 8) = v100;
      }

      if (vuzp1_s16(v107, *&v102).i8[2])
      {
        *(v105 - 4) = v100;
      }

      if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, *&v103))).i32[1])
      {
        *v105 = v100;
        v105[4] = v100;
      }

      v103 = vaddq_s64(v103, v106);
      v104 = vaddq_s64(v104, v106);
      v105 += 16;
      v101 -= 4;
    }

    while (v101);
  }

  v575 = NumberOfSourceFrames;
  Signal = (*(*(v8 + 13) + 16))();
  v109 = v575;
  v577 = v575;
  v110 = *(v8 + 14);
  if (*(v9 + 3249) == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v575, *(v8 + 14)), v110 = *(v8 + 14), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
  {
    Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v575, v110, &v580);
    v110 = *(v8 + 14);
  }

  v111 = *(v8 + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v111, 51, 0, v110, v575, &v580);
  }

  if ((*(v8 + 2090) & 1) != 0 || v8[20] == 7 && *(v8 + 3152) == 0.0)
  {
    Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v581, *(v8 + 14));
    v112 = (*&v581.mSampleTime + 8);
    v113 = 16 * **&v581.mSampleTime;
    for (i = (*&v581.mSampleTime + 8); v113; v113 -= 16)
    {
      v116 = *i;
      v115 = i[1];
      i += 4;
      Signal = vp::fill(v112, (v115 >> 2) / v116, 0.0);
      v112 += 2;
    }
  }

  v117 = v8[57];
  if ((v117 & 0x20) != 0)
  {
    v120 = v8[61];
    if (v120 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 308;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = -50;
    }

    MEMORY[0x28223BE20](Signal);
    v119 = (&v546 - v121);
    bzero(&v546 - v121, v122 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](Signal);
    v119 = &v543;
    v543 = 0;
    v544 = 0uLL;
    v120 = 1;
  }

  v123 = 0;
  v547 = v8 + 4282;
  mBuffers = v7->mBuffers;
  *v119 = v120;
  v124 = 2;
  if ((v117 & 0x20) != 0)
  {
    goto LABEL_260;
  }

LABEL_261:
  for (j = 1; v123 < j; j = v8[61])
  {
    *&v119[v124] = *(*(v8 + 14) + v124 * 4);
    ++v123;
    v124 += 4;
    if ((v117 & 0x20) == 0)
    {
      goto LABEL_261;
    }

LABEL_260:
    ;
  }

  v556 = v7;
  v126 = v8[67];
  if ((v126 & 0x20) != 0)
  {
    v128 = v8[71];
    if (v128 - 65 <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 313;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      v532 = __cxa_allocate_exception(0x10uLL);
      *v532 = &unk_2881B25F8;
      v532[2] = -50;
    }

    MEMORY[0x28223BE20](v118);
    v127 = (&v546 - v129);
    bzero(&v546 - v129, v130 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v118);
    v127 = &v543;
    v543 = 0;
    v544 = 0uLL;
    v128 = 1;
  }

  v131 = 0;
  v132 = 0;
  v127->mNumberBuffers = v128;
  v133 = v127->mBuffers;
  if ((v126 & 0x20) != 0)
  {
    goto LABEL_270;
  }

LABEL_271:
  for (k = 1; v132 < k; k = v8[71])
  {
    v134 = v127 + v131;
    *(v134 + 2) = *(*(v8 + 23) + v131 + 16);
    *(v134 + 2) = 1;
    *(v134 + 3) = 4 * v109;
    ++v132;
    v131 += 16;
    if ((v126 & 0x20) == 0)
    {
      goto LABEL_271;
    }

LABEL_270:
    ;
  }

  if ((v8[2216] & 1) != 0 && (v8[2218] & 1) != 0 && *(v8 + 439))
  {
    v136 = atomic_load(v8 + 2047);
    if (v136)
    {
      *&v587.mSampleTime = v8;
      *&v581.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV9::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
      v581.mHostTime = &v587;
      *&inInputBufferLists.mSampleTime = &v581;
      caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((v8 + 4074), &inInputBufferLists);
      atomic_fetch_add(v8 + 2047, -v136);
    }

    v137 = v8[580];
    if (v137 != v8[582])
    {
      AudioUnitSetParameter(*(v8 + 439), 0x75696F72u, 0, 0, v137, 0);
    }

    v581 = v580;
    LODWORD(v584.mSampleTime) = 512;
    *&inInputBufferLists.mSampleTime = v119;
    *&v587.mSampleTime = v127;
    LODWORD(v109) = v577;
    AudioUnitProcessMultiple(*(v8 + 439), &v584, &v581, v577, 1u, &inInputBufferLists, 1u, &v587);
  }

  else if (v8[20] || v8[61] != 2)
  {
    v174 = &v133[v128];
    while (v133 != v174)
    {
      vp::fill(v133, v109, 0.0);
      v175 = 16 * *v119;
      for (m = v119 + 2; v175; v175 -= 16)
      {
        MEMORY[0x2743CCD80](v133->mData, 1, *(m + 1), 1, v133->mData, 1, v109);
        m += 4;
      }

      ++v133;
    }
  }

  else
  {
    if (v120 >= v128)
    {
      v138 = v128;
    }

    else
    {
      v138 = v120;
    }

    if (v138)
    {
      v139 = (v119 + 4);
      v140 = &v127->mBuffers[0].mData;
      do
      {
        v141 = *(v139 - 1);
        v142 = *(v140 - 1);
        if (v141 >= v142)
        {
          v143 = v142;
        }

        else
        {
          v143 = v141;
        }

        memcpy(*v140, *v139, v143);
        v139 += 2;
        v140 += 2;
        --v138;
      }

      while (v138);
    }
  }

  if ((v8[2216] & 2) != 0 && (v8[2218] & 2) != 0)
  {
    v144 = *(v8 + 440);
    if (v144)
    {
      v581 = v580;
      LODWORD(v587.mSampleTime) = 512;
      MEMORY[0x28223BE20](v144);
      v544 = 0uLL;
      v543 = 0;
      v544 = *(*(v8 + 23) + 8);
      LODWORD(v543) = 1;
      *&inInputBufferLists.mSampleTime = &v543;
      AudioUnitProcessMultiple(v145, &v587, &v581, v109, 1u, &inInputBufferLists, 0, &v584);
    }
  }

  v146 = *(v8 + 48);
  if (v146)
  {
    VoiceProcessor::SampleRateConverter::Convert(v146, &v577, &v576, v127, *(v8 + 24));
    LODWORD(v109) = v576;
    v577 = v576;
    v127 = *(v8 + 24);
  }

  v148 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
  v149 = 0;
  v150 = 0;
  v151 = v109 / v8[132];
  inInputBufferLists = v580;
  v152 = 4 * v151;
  v568 = v127->mBuffers;
  LODWORD(v571) = v151;
  v153 = v151;
  do
  {
    if ((v8[77] & 0x20) != 0)
    {
      v155 = v8[81];
      if (v155 - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 417;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v521 = __cxa_allocate_exception(0x10uLL);
        *v521 = &unk_2881B25F8;
        v521[2] = -50;
      }

      MEMORY[0x28223BE20](v147);
      v154 = (&v546 - v156);
      bzero(&v546 - v156, v157 + 24);
    }

    else
    {
      MEMORY[0x28223BE20](v147);
      v154 = &v543;
      v543 = 0;
      v544 = 0uLL;
      v155 = 1;
    }

    v158 = 0;
    v154->mNumberBuffers = v155;
    v159 = v155;
    do
    {
      v160 = v154 + v158 * 16;
      *(v160 + 2) = 1;
      *(v160 + 3) = v152;
      if (v127)
      {
        v161 = v127->mBuffers[v158].mData + 4 * v149;
      }

      else
      {
        v161 = 0;
      }

      *(v160 + 2) = v161;
      ++v158;
      --v159;
    }

    while (v159);
    v162 = *(v8 + 1108);
    if ((v162 & 8) != 0 && (v8[2218] & 8) != 0)
    {
      v163 = *(v8 + 442);
      if (v163)
      {
        v581 = inInputBufferLists;
        LODWORD(v587.mSampleTime) = 512;
        AudioUnitProcess(v163, &v587, &v581, v571, v154);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v571, v154, &inInputBufferLists);
        }

        v162 = *(v8 + 1108);
      }
    }

    if ((v162 & 0x10) != 0 && (v8[2218] & 0x10) != 0)
    {
      v164 = *(v8 + 443);
      if (v164)
      {
        v581 = inInputBufferLists;
        LODWORD(v587.mSampleTime) = 512;
        AudioUnitProcess(v164, &v587, &v581, v571, v154);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x76u, v571, v154, &inInputBufferLists);
        }

        v162 = *(v8 + 1108);
      }
    }

    if ((v162 & 0x20) != 0 && (v8[2218] & 0x20) != 0)
    {
      v165 = *(v8 + 444);
      if (v165)
      {
        v581 = inInputBufferLists;
        LODWORD(v587.mSampleTime) = 512;
        AudioUnitProcess(v165, &v587, &v581, v571, v154);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x58u, v571, v154, &inInputBufferLists);
        }

        v162 = *(v8 + 1108);
      }
    }

    v166 = *&inInputBufferLists.mRateScalar;
    *(v8 + 1103) = *&inInputBufferLists.mSampleTime;
    *(v8 + 1104) = v166;
    v167 = *&inInputBufferLists.mSMPTETime.mHours;
    *(v8 + 1105) = *&inInputBufferLists.mSMPTETime.mSubframes;
    *(v8 + 1106) = v167;
    if ((~v162 & 0xC0) != 0 || ((v8[2218] & 0x40) == 0 || !*(v8 + 445) ? ((v8[2218] & 0x80) != 0 ? (v168 = *(v8 + 446) != 0) : (v168 = 0)) : (v168 = 1), *(v8 + 488) != 1 ? (v147 = (*(*v8 + 784))(v8, v154, v154, v168, v571)) : (*&v581.mSampleTime = v154, *&v587.mSampleTime = v154, v147 = BlockProcessor::Process(*(v8 + 2205), v571, &v581, &v587)), !v168))
    {
      v147 = (*(*v8 + 784))(v8, v154, v154, 0, v571);
    }

    v169 = *(v8 + 1108);
    if (v169 & 0x100) != 0 && (*(v8 + 8873))
    {
      v147 = *(v8 + 447);
      if (v147)
      {
        v581 = inInputBufferLists;
        AudioUnitSetParameter(v147, 5u, 0, 0, v148, 0);
        LODWORD(v587.mSampleTime) = 512;
        v147 = AudioUnitProcess(*(v8 + 447), &v587, &v581, v571, v154);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          v147 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v571, v154, &v581);
        }

        v169 = *(v8 + 1108);
      }
    }

    if ((v169 & 0x200) != 0 && (*(v8 + 8873) & 2) != 0)
    {
      v147 = *(v8 + 448);
      if (v147)
      {
        v581 = inInputBufferLists;
        LODWORD(v587.mSampleTime) = 512;
        v147 = AudioUnitProcess(v147, &v587, &v581, v571, v154);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          v147 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x59u, v571, v154, &v581);
        }

        v169 = *(v8 + 1108);
      }
    }

    if ((v169 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
    {
      if (*(v8 + 453))
      {
        v147 = (*(*v8 + 680))(v8, v154, v571, &inInputBufferLists);
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          v147 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v571, v154, &inInputBufferLists);
        }
      }
    }

    v149 += v571;
    inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v153;
    ++v150;
  }

  while (v150 < v8[132]);
  v170 = v8[77];
  if ((v170 & 0x20) != 0)
  {
    v172 = v8[81];
    v7 = v556;
    v173 = v557;
    v9 = v569;
    if ((v172 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 513;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      v533 = __cxa_allocate_exception(0x10uLL);
      *v533 = &unk_2881B25F8;
      v533[2] = -50;
    }

    MEMORY[0x28223BE20](v147);
    v171 = (&v546 - v177);
    bzero(&v546 - v177, v178 + 24);
  }

  else
  {
    MEMORY[0x28223BE20](v147);
    v171 = &v543;
    v543 = 0;
    v544 = 0uLL;
    v172 = 1;
    v7 = v556;
    v173 = v557;
    v9 = v569;
  }

  *v171 = v172;
  v180 = *(v8 + 48);
  v179 = *(v8 + 49);
  if (v179)
  {
    if (v180)
    {
      v576 = v8[123];
      v179 = VoiceProcessor::SampleRateConverter::Convert(v179, &v577, &v576, v127, *(v8 + 25));
      v181 = 0;
      v182 = v8[77];
      v183 = 2;
      v184 = v564;
      v185 = v565;
      v186 = v566;
      if ((v182 & 0x20) != 0)
      {
        goto LABEL_376;
      }

LABEL_377:
      for (n = 1; v181 < n; n = v8[81])
      {
        *&v171[v183] = *(*(v8 + 25) + v183 * 4);
        ++v181;
        v183 += 4;
        if ((v182 & 0x20) == 0)
        {
          goto LABEL_377;
        }

LABEL_376:
        ;
      }
    }

    else
    {
      v179 = VoiceProcessor::SampleRateConverter::Convert(v179, &v577, &v576, v127, *(v8 + 25));
      v193 = 0;
      v194 = v8[77];
      v195 = 2;
      v184 = v564;
      v185 = v565;
      v186 = v566;
      if ((v194 & 0x20) != 0)
      {
        goto LABEL_391;
      }

LABEL_392:
      for (ii = 1; v193 < ii; ii = v8[81])
      {
        *&v171[v195] = *(*(v8 + 25) + v195 * 4);
        ++v193;
        v195 += 4;
        if ((v194 & 0x20) == 0)
        {
          goto LABEL_392;
        }

LABEL_391:
        ;
      }
    }

    v577 = v576;
  }

  else
  {
    v188 = v171 + 2;
    if (v180)
    {
      v189 = 0;
      v184 = v564;
      v185 = v565;
      v186 = v566;
      v190 = v568;
      if ((v170 & 0x20) != 0)
      {
        goto LABEL_384;
      }

LABEL_385:
      for (jj = 1; v189 < jj; jj = v8[81])
      {
        v191 = *v190++;
        *v188++ = v191;
        ++v189;
        if ((v170 & 0x20) == 0)
        {
          goto LABEL_385;
        }

LABEL_384:
        ;
      }
    }

    else
    {
      v184 = v564;
      v185 = v565;
      v186 = v566;
      v409 = v568;
      if ((v170 & 0x20) != 0)
      {
        goto LABEL_731;
      }

LABEL_732:
      for (kk = 1; v180 < kk; kk = v8[81])
      {
        v410 = *v409++;
        *v188++ = v410;
        ++v180;
        if ((v170 & 0x20) == 0)
        {
          goto LABEL_732;
        }

LABEL_731:
        ;
      }
    }
  }

  v587 = v580;
  if (!v8[132])
  {
LABEL_662:
    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    v364 = DynamicsDSPChannelCount;
    v365 = *(v8 + 1108);
    if ((v365 & 0x400000000) != 0 && (v8[2219] & 4) != 0)
    {
      v366 = *(v8 + 473);
      if (v366)
      {
        if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1063;
          }

          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 903;
          v534 = MEMORY[0x277D86220];
          goto LABEL_1062;
        }

        MEMORY[0x28223BE20](DynamicsDSPChannelCount);
        v368 = (&v546 - v367);
        bzero(&v546 - v367, v369 + 24);
        v368->mNumberBuffers = v364;
        memcpy(v368->mBuffers, mBuffers, 16 * v364);
        LODWORD(v581.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(v366, &v581, &v580, v8[123], v368);
        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
        {
          DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v173, v368, &v580);
        }

        v365 = *(v8 + 1108);
      }
    }

    if ((v365 & 0x2000000000) != 0 && (v8[2219] & 0x20) != 0 && *(v8 + 476) || (v365 & 0x800000000) != 0 && (v8[2219] & 8) != 0 && *(v8 + 474))
    {
      if ((v365 & 0x2000000000) != 0)
      {
        v370 = 37;
      }

      else
      {
        v370 = 35;
      }

      if (v364 == v7->mNumberBuffers)
      {
        v581 = v580;
        LODWORD(v584.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*&v8[2 * v370 + 878], &v584, &v581, v8[123], v7);
      }

      else
      {
        v405 = *(v8 + 26);
        if (v405->mNumberBuffers)
        {
          v406 = 0;
          v407 = 16;
          do
          {
            memcpy(*(&v405->mNumberBuffers + v407), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
            ++v406;
            v405 = *(v8 + 26);
            v407 += 16;
          }

          while (v406 < v405->mNumberBuffers);
        }

        v581 = v580;
        v574.mNumberBuffers = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*&v8[2 * v370 + 878], &v574.mNumberBuffers, &v581, v8[123], v405);
        if ((v8[2217] & 0x40) != 0 && (v8[2219] & 0x40) != 0 && (DynamicsDSPChannelCount = *(v8 + 477)) != 0)
        {
          v408 = v8[580];
          if (v408 != v8[582])
          {
            AudioUnitSetParameter(DynamicsDSPChannelCount, 0, 0, 0, v408, 0);
            DynamicsDSPChannelCount = *(v8 + 477);
          }

          *&v586.mNumberBuffers = *(v8 + 26);
          *&v585.mNumberBuffers = v7;
          v584 = v580;
          LODWORD(v583[0]) = 512;
          DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, v583, &v584, v8[123], 1u, &v586, 1u, &v585);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v173, v7, &v580);
          }
        }

        else if (v7->mNumberBuffers)
        {
          v412 = 0;
          v413 = &v7->mBuffers[0].mData;
          do
          {
            v414 = *(v8 + 26);
            if (v412 >= *v414)
            {
              v415 = 0;
            }

            else
            {
              v415 = v412;
            }

            DynamicsDSPChannelCount = memcpy(*v413, *&v414[4 * v415 + 4], *(v413 - 1));
            ++v412;
            v413 += 2;
          }

          while (v412 < v7->mNumberBuffers);
        }
      }

      goto LABEL_762;
    }

    if ((v365 & 0x8000000000) == 0 || (v8[2219] & 0x80) == 0 || (DynamicsDSPChannelCount = *(v8 + 478)) == 0)
    {
      if ((v365 & 0x20000000000) != 0 && (v384 = *(v8 + 1109), (v384 & 0x20000000000) != 0) && *(v8 + 480))
      {
        if ((v365 & v384 & 0x40000000000) != 0 && *(v8 + 481))
        {
          if (v364 - 65 <= 0xFFFFFFBF)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v581.mSampleTime) = 136315394;
              *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
              WORD2(v581.mHostTime) = 1024;
              *(&v581.mHostTime + 6) = 985;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
            }

            v541 = __cxa_allocate_exception(0x10uLL);
            *v541 = &unk_2881B25F8;
            v541[2] = -50;
          }

          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v386 = (&v546 - v385);
          bzero(&v546 - v385, v387 + 24);
          v388 = 0;
          *v386 = v364;
          v389 = *(v8 + 26);
          v390 = 16 * v364;
          do
          {
            v391 = memcpy(*(v389 + v388 + 16), v7->mBuffers[v388 / 0x10].mData, *(v389 + v388 + 12));
            v389 = *(v8 + 26);
            *&v386[v388 / 4 + 2] = *(v389 + v388 + 8);
            v388 += 16;
          }

          while (v390 != v388);
          *&v584.mSampleTime = v386;
          v392 = v8[1081];
          if ((v392 - 65) < 0xFFFFFFC0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v581.mSampleTime) = 136315394;
              *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
              WORD2(v581.mHostTime) = 1024;
              *(&v581.mHostTime + 6) = 997;
              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
            }

            v542 = __cxa_allocate_exception(0x10uLL);
            *v542 = &unk_2881B25F8;
            v542[2] = -50;
          }

          MEMORY[0x28223BE20](v391);
          v394 = (&v546 - v393);
          bzero(&v546 - v393, v395 + 24);
          v394->mNumberBuffers = v392;
          v396 = v7 + 1;
          v397 = 8;
          v398 = v392;
          do
          {
            v399 = *&v396->mNumberBuffers;
            v396 = (v396 + 32);
            *(&v394->mNumberBuffers + v397) = v399;
            v397 += 16;
            --v398;
          }

          while (v398);
          *&v586.mNumberBuffers = v394;
          if ((*(v8 + 2261) & 1) != 0 || !v8[20] && v8[61] == 2)
          {
            v400 = v8[580];
            if (v400 != v8[582])
            {
              AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v400, 0);
            }
          }

          v581 = v580;
          v585.mNumberBuffers = 512;
          AudioUnitProcessMultiple(*(v8 + 481), &v585.mNumberBuffers, &v581, v8[123], 1u, &v584, 1u, &v586);
          if (*(v9 + 3249) & 1) != 0 || (*(v9 + 3250))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v173, v394, &v581);
          }

          v421 = &v7->mBuffers[0].mData;
          do
          {
            memcpy(*v421, v421[2], *(v421 - 1));
            v421 += 4;
            --v392;
          }

          while (v392);
        }

        else if ((v8[565] & 1) == 0 && v7->mNumberBuffers >= 2)
        {
          v419 = v7[1].mBuffers;
          v420 = 1;
          do
          {
            memcpy(*v419, v7->mBuffers[0].mData, *(v419 - 1));
            ++v420;
            v419 += 2;
          }

          while (v420 < v7->mNumberBuffers);
        }

        v581 = v580;
        LODWORD(v584.mSampleTime) = 512;
        DynamicsDSPChannelCount = AudioUnitProcess(*(v8 + 480), &v584, &v581, v8[123], v7);
      }

      else if (v365 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
      {
        v416 = v7->mNumberBuffers;
        if (v7->mNumberBuffers >= 2)
        {
          if (v8[81] == 1)
          {
            DynamicsDSPChannelCount = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
            v416 = v7->mNumberBuffers;
          }

          if (v416 >= 3)
          {
            v417 = &v7[2];
            v418 = 2;
            do
            {
              bzero(*v417, *(v417 - 1));
              ++v418;
              v417 += 2;
            }

            while (v418 < v7->mNumberBuffers);
          }
        }
      }

      else if ((v8[565] & 1) == 0)
      {
        v401 = v8[81];
        v402 = v401 <= 1 ? 1 : v401;
        if (v402 < v7->mNumberBuffers)
        {
          v403 = &mBuffers[(v402 - 1)];
          v404 = 16 * v402 + 16;
          do
          {
            DynamicsDSPChannelCount = memcpy(*(&v7->mNumberBuffers + v404), v403[1], *(v403 + 1));
            ++v402;
            v404 += 16;
          }

          while (v402 < v7->mNumberBuffers);
        }
      }

LABEL_762:
      v422 = *(v8 + 1108);
      if ((v422 & 0x80000000000) == 0)
      {
        p_mSampleTime = &v549->mSampleTime;
        goto LABEL_797;
      }

      p_mSampleTime = &v549->mSampleTime;
      if ((*(v8 + 8877) & 8) == 0 || !*(v8 + 482))
      {
LABEL_797:
        if ((v422 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
        {
          DynamicsDSPChannelCount = *(v8 + 483);
          if (DynamicsDSPChannelCount)
          {
            v440 = p_mSampleTime[1];
            *&v581.mSampleTime = *p_mSampleTime;
            *&v581.mRateScalar = v440;
            v441 = p_mSampleTime[3];
            *&v581.mSMPTETime.mSubframes = p_mSampleTime[2];
            *&v581.mSMPTETime.mHours = v441;
            LODWORD(v584.mSampleTime) = 512;
            DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v584, &v581, v8[123], v7);
            v422 = *(v8 + 1108);
          }
        }

        if ((v422 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
        {
          DynamicsDSPChannelCount = *(v8 + 484);
          if (DynamicsDSPChannelCount)
          {
            *&v584.mSampleTime = v7;
            *&v586.mNumberBuffers = v7;
            v442 = p_mSampleTime[1];
            *&v581.mSampleTime = *p_mSampleTime;
            *&v581.mRateScalar = v442;
            v443 = p_mSampleTime[3];
            *&v581.mSMPTETime.mSubframes = p_mSampleTime[2];
            *&v581.mSMPTETime.mHours = v443;
            v585.mNumberBuffers = 512;
            DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v585.mNumberBuffers, &v581, v8[123], 1u, &v584, 1u, &v586);
            v422 = *(v8 + 1108);
          }
        }

        if ((v422 & 0x100000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x100000000000000) == 0) || !*(v8 + 495))
        {
          if ((v422 & 0x200000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x200000000000000) == 0) || !*(v8 + 496))
          {
            if ((v422 & 0x400000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x400000000000000) == 0) || !*(v8 + 497))
            {
              if ((v422 & 0x1000000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x1000000000000000) == 0) || !*(v8 + 499))
              {
                v461 = 0;
LABEL_845:
                if ((v422 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
                {
                  DynamicsDSPChannelCount = *(v8 + 493);
                  if (DynamicsDSPChannelCount)
                  {
                    v581 = v580;
                    LODWORD(v584.mSampleTime) = 512;
                    DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v584, &v581, v8[123], v7);
                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
                {
                  LODWORD(v581.mSampleTime) = 1065353216;
                  LODWORD(v584.mSampleTime) = 1065353216;
                  if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v462 = *(v8 + 1139), v462 != 0.0))
                  {
                    v463 = __exp10f(v462 / 20.0);
                    *&v584.mSampleTime = v463;
                    *&v581.mSampleTime = v463;
                  }

                  else
                  {
                    v464 = *(v8 + 1137);
                    if (v464 >= -300.0)
                    {
                      if (v464 == 0.0)
                      {
                        v463 = 1.0;
                      }

                      else
                      {
                        if (v464 > 60.0)
                        {
                          v464 = 60.0;
                        }

                        v463 = __exp10f(v464 / 20.0);
                        *&v581.mSampleTime = v463;
                      }
                    }

                    else
                    {
                      LODWORD(v581.mSampleTime) = 0;
                      v463 = 0.0;
                    }

                    v465 = *(v8 + 1138);
                    if (v465 >= -300.0)
                    {
                      if (v465 != 0.0)
                      {
                        if (v465 > 60.0)
                        {
                          v465 = 60.0;
                        }

                        LODWORD(v584.mSampleTime) = __exp10f(v465 / 20.0);
                      }
                    }

                    else
                    {
                      LODWORD(v584.mSampleTime) = 0;
                    }
                  }

                  if (v463 == 0.0)
                  {
                    bzero(v7->mBuffers[0].mData, 4 * v8[123]);
                  }

                  else if (v463 != 1.0)
                  {
                    DynamicsDSPChannelCount = MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v581, v7->mBuffers[0].mData, 1, v8[123]);
                  }

                  if (v7->mNumberBuffers >= 2)
                  {
                    v466 = 1;
                    v467 = 32;
                    do
                    {
                      if (*&v584.mSampleTime == 0.0)
                      {
                        bzero(*(&v7->mNumberBuffers + v467), 4 * v8[123]);
                      }

                      else if (*&v584.mSampleTime != 1.0)
                      {
                        DynamicsDSPChannelCount = MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v467), 1, &v584, *(&v7->mNumberBuffers + v467), 1, v8[123], *&v584.mSampleTime);
                      }

                      ++v466;
                      v467 += 16;
                    }

                    while (v466 < v7->mNumberBuffers);
                  }

                  v422 = *(v8 + 1108);
                }

                if ((v422 & 0x80000000000000) != 0 && (*(v8 + 8878) & 0x80) != 0)
                {
                  DynamicsDSPChannelCount = *(v8 + 494);
                  if (DynamicsDSPChannelCount)
                  {
                    v581 = v580;
                    LODWORD(v584.mSampleTime) = 512;
                    DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v584, &v581, v8[123], v7);
                    if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                    {
                      DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x79u, v8[123], v7, &v581);
                    }

                    v422 = *(v8 + 1108);
                  }
                }

                if (v422 & 0x100000000000000) != 0 && (*(v8 + 8879))
                {
                  DynamicsDSPChannelCount = *(v8 + 495);
                  if (DynamicsDSPChannelCount)
                  {
                    if (v8[1136] == 1 && (v468 = *(v8 + 198)) != 0)
                    {
                      ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v468);
                      DynamicsDSPChannelCount = *(v8 + 495);
                      v469 = 2;
                    }

                    else
                    {
                      v469 = 1;
                    }

                    v470 = *(v8 + 198);
                    *&v584.mSampleTime = v7;
                    v584.mHostTime = v470;
                    *&v586.mNumberBuffers = v7;
                    v581 = v580;
                    v585.mNumberBuffers = 512;
                    DynamicsDSPChannelCount = AudioUnitProcessMultiple(DynamicsDSPChannelCount, &v585.mNumberBuffers, &v581, v8[123], v469, &v584, 1u, &v586);
                    if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                    {
                      DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v173, v7, &v581);
                    }

                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
                {
                  v471 = *(v8 + 496);
                  if (v471)
                  {
                    v472 = v8[1081];
                    if ((v472 - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v581.mSampleTime) = 136315394;
                        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                        WORD2(v581.mHostTime) = 1024;
                        *(&v581.mHostTime + 6) = 1316;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
                      }

                      v535 = __cxa_allocate_exception(0x10uLL);
                      *v535 = &unk_2881B25F8;
                      v535[2] = -50;
                    }

                    MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                    v474 = (&v546 - v473);
                    bzero(&v546 - v473, v475 + 24);
                    v474->mNumberBuffers = v472;
                    v476 = 8;
                    v477 = mBuffers;
                    do
                    {
                      v478 = *v477;
                      v477 += 2;
                      *(&v474->mNumberBuffers + v476) = v478;
                      v476 += 16;
                      --v472;
                    }

                    while (v472);
                    v479 = *(v8 + 198);
                    *&v584.mSampleTime = v474;
                    v584.mHostTime = v479;
                    *&v586.mNumberBuffers = v474;
                    v581 = v580;
                    v585.mNumberBuffers = 512;
                    DynamicsDSPChannelCount = AudioUnitProcessMultiple(v471, &v585.mNumberBuffers, &v581, v8[123], 1u, &v584, 1u, &v586);
                    if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                    {
                      DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v173, v474, &v581);
                    }

                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
                {
                  if (v8[1136] == 1 && (v480 = *(v8 + 198)) != 0)
                  {
                    DynamicsDSPChannelCount = ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v480);
                    v481 = 2;
                  }

                  else
                  {
                    v481 = 1;
                  }

                  v482 = v8[1081];
                  if ((v482 - 65) <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v581.mSampleTime) = 136315394;
                      *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v581.mHostTime) = 1024;
                      *(&v581.mHostTime + 6) = 1343;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
                    }

                    v536 = __cxa_allocate_exception(0x10uLL);
                    *v536 = &unk_2881B25F8;
                    v536[2] = -50;
                  }

                  MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                  v484 = (&v546 - v483);
                  bzero(&v546 - v483, v485 + 24);
                  v484->mNumberBuffers = v482;
                  v486 = v7 + 1;
                  v487 = 8;
                  do
                  {
                    v488 = *&v486->mNumberBuffers;
                    v486 = (v486 + 32);
                    *(&v484->mNumberBuffers + v487) = v488;
                    v487 += 16;
                    --v482;
                  }

                  while (v482);
                  v489 = *(v8 + 198);
                  *&v584.mSampleTime = v484;
                  v584.mHostTime = v489;
                  *&v586.mNumberBuffers = v484;
                  v581 = v580;
                  v585.mNumberBuffers = 512;
                  AudioUnitProcessMultiple(*(v8 + 497), &v585.mNumberBuffers, &v581, v8[123], v481, &v584, 1u, &v586);
                  if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v173, v484, &v581);
                  }

                  v422 = *(v8 + 1108);
                }

                if ((v422 & 0x800000000000000) != 0 && (*(v8 + 8879) & 8) != 0)
                {
                  if (*(v8 + 498))
                  {
                    if (v8[1136] == 1)
                    {
                      v490 = *(v8 + 198);
                      if (v490)
                      {
                        ABLRingBuffer<float>::ReadFrom(v8 + 386, v8[123], v490);
                        v581 = v580;
                        LODWORD(v584.mSampleTime) = 512;
                        AudioUnitProcess(*(v8 + 498), &v584, &v581, v8[123], *(v8 + 198));
                        v491 = *(v8 + 2219);
                        if (v491)
                        {
                          v492 = (v547 + 154);
                          AudioUnitGetProperty(*(v8 + 498), 0x19E6u, 0, 0, v491, v547 + 154);
                          AudioUnitSetProperty(*(v8 + 499), 0x19E6u, 0, 0, *(v8 + 2219), *v492);
                        }

                        if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x44u, v173, *(v8 + 198), &v581);
                        }

                        v422 = *(v8 + 1108);
                      }
                    }
                  }
                }

                if ((v422 & 0x1000000000000000) != 0 && (*(v8 + 8879) & 0x10) != 0)
                {
                  v493 = *(v8 + 499);
                  if (v493)
                  {
                    *&v584.mSampleTime = v7;
                    *&v586.mNumberBuffers = v7;
                    v581 = v580;
                    v585.mNumberBuffers = 512;
                    AudioUnitProcessMultiple(v493, &v585.mNumberBuffers, &v581, v8[123], 1u, &v584, 1u, &v586);
                    if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x45u, v173, v7, &v581);
                    }

                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
                {
                  v494 = *(v8 + 485);
                  if (v494)
                  {
                    v581 = v580;
                    LODWORD(v584.mSampleTime) = 512;
                    AudioUnitProcess(v494, &v584, &v581, v8[123], v7);
                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x800000000000) != 0)
                {
                  v495 = v461;
                }

                else
                {
                  v495 = 1;
                }

                if (v495)
                {
                  v496 = &unk_28133C000;
                }

                else
                {
                  v496 = &unk_28133C000;
                  if ((*(v8 + 8877) & 0x80) != 0)
                  {
                    v497 = *(v8 + 486);
                    if (v497)
                    {
                      v581 = v580;
                      LODWORD(v584.mSampleTime) = 512;
                      AudioUnitProcess(v497, &v584, &v581, v8[123], v7);
                      if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v581);
                      }

                      v422 = *(v8 + 1108);
                    }
                  }
                }

                if ((v422 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
                {
                  v498 = *(v8 + 489);
                  if (v498)
                  {
                    v581 = v580;
                    LODWORD(v584.mSampleTime) = 512;
                    AudioUnitProcess(v498, &v584, &v581, v8[123], v7);
                    if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, v8[123], v7, &v581);
                    }

                    v422 = *(v8 + 1108);
                  }
                }

                if ((v422 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
                {
                  v499 = *(v8 + 490);
                  if (v499)
                  {
                    v500 = v8[19];
                    if (v500 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v500) & 1) != 0)
                    {
                      v581 = v580;
                      LODWORD(v584.mSampleTime) = 512;
                      AudioUnitProcess(v499, &v584, &v581, v8[123], v7);
                      if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, v8[123], v7, &v581);
                      }
                    }
                  }
                }

                if (*(v9 + 3249) == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v173, v7), (*(v9 + 3249) & 1) != 0) || *(v9 + 3250) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v173, v7, &v580);
                }

                v501 = *(v8 + 1993);
                if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                {
                  dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
                }

                if (v496[85])
                {
                  v496[85](v501, 70, 0, v7, v173, &v580);
                }

                if (v8[1135] == 1 && (v9[882] & 1) == 0)
                {
                  VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v580, 0);
                }

                if (*(v9 + 3249) == 1)
                {
                  VoiceProcessorV2::LoopBackRead(v8, v173, v7);
                }

                goto LABEL_984;
              }
            }
          }
        }

        if ((v422 & v444 & 0x800000000000) != 0)
        {
          DynamicsDSPChannelCount = *(v8 + 486);
          if (DynamicsDSPChannelCount)
          {
            v581 = v580;
            LODWORD(v584.mSampleTime) = 512;
            DynamicsDSPChannelCount = AudioUnitProcess(DynamicsDSPChannelCount, &v584, &v581, v8[123], v7);
            if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
            {
              DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, v8[123], v7, &v581);
            }

            v422 = *(v8 + 1108);
          }
        }

        if (v422 & 0x1000000000000) != 0 && (*(v8 + 8878))
        {
          v445 = *(v8 + 487);
          if (v445)
          {
            v446 = v8[1081];
            if ((v446 - 65) <= 0xFFFFFFBF)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1072;
              }

              LODWORD(v581.mSampleTime) = 136315394;
              *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
              WORD2(v581.mHostTime) = 1024;
              *(&v581.mHostTime + 6) = 1195;
              v539 = MEMORY[0x277D86220];
              goto LABEL_1071;
            }

            MEMORY[0x28223BE20](DynamicsDSPChannelCount);
            v448 = (&v546 - v447);
            bzero(&v546 - v447, v449 + 24);
            v448->mNumberBuffers = v446;
            v450 = 8;
            v451 = mBuffers;
            do
            {
              v452 = *v451;
              v451 += 2;
              *(&v448->mNumberBuffers + v450) = v452;
              v450 += 16;
              --v446;
            }

            while (v446);
            v581 = v580;
            LODWORD(v584.mSampleTime) = 512;
            DynamicsDSPChannelCount = AudioUnitProcess(v445, &v584, &v581, v8[123], v448);
            if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
            {
              DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, v8[123], v448, &v581);
            }

            v422 = *(v8 + 1108);
          }
        }

        if ((v422 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v453 = *(v8 + 488)) == 0)
        {
LABEL_843:
          v461 = 1;
          goto LABEL_845;
        }

        v454 = v8[1081];
        if ((v454 - 65) > 0xFFFFFFBF)
        {
          MEMORY[0x28223BE20](DynamicsDSPChannelCount);
          v456 = (&v546 - v455);
          bzero(&v546 - v455, v457 + 24);
          v456->mNumberBuffers = v454;
          v458 = v7 + 1;
          v459 = 8;
          do
          {
            v460 = *&v458->mNumberBuffers;
            v458 = (v458 + 32);
            *(&v456->mNumberBuffers + v459) = v460;
            v459 += 16;
            --v454;
          }

          while (v454);
          v581 = v580;
          LODWORD(v584.mSampleTime) = 512;
          DynamicsDSPChannelCount = AudioUnitProcess(v453, &v584, &v581, v8[123], v456);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, v8[123], v456, &v581);
          }

          v422 = *(v8 + 1108);
          goto LABEL_843;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_1072:
          v540 = __cxa_allocate_exception(0x10uLL);
          *v540 = &unk_2881B25F8;
          v540[2] = -50;
        }

        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 1212;
        v539 = MEMORY[0x277D86220];
LABEL_1071:
        _os_log_impl(&dword_2724B4000, v539, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        goto LABEL_1072;
      }

      v424 = *(v8 + 2140);
      v425 = *(v424 + 16);
      v426 = v8[129];
      v585.mNumberBuffers = v8[129];
      v427 = *(v8 + 50);
      if (v427)
      {
        v585.mNumberBuffers = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v427, v426);
        v424 = *(v8 + 1986);
        if (v585.mNumberBuffers <= *(v424 + 12) >> 2)
        {
          VoiceProcessor::SampleRateConverter::Convert(*(v8 + 50), v8 + 129, &v585.mNumberBuffers, *(v8 + 2140), v424);
          v424 = *(v8 + 1986);
        }

        else
        {
          *v547 = 0;
        }

        v425 = *(v424 + 16);
      }

      v428 = *(v424 + 12) >> 2;
      if (*v547 == 1)
      {
        v429 = 0.0;
        if (v428 > v585.mNumberBuffers)
        {
          vDSP_vclr(&v425[v585.mNumberBuffers], 1, (v428 - v585.mNumberBuffers));
        }
      }

      else
      {
        v429 = 1.0;
        vDSP_vclr(v425, 1, v428);
      }

      AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v429, 0);
      if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
      {
        v430 = *(v8 + 404);
        if (v430)
        {
          LODWORD(v581.mSampleTime) = 0;
          AudioUnitGetParameter(v430, 9u, 0, 0, &v581);
          AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v581.mSampleTime, 0);
        }
      }

      v431 = *(v8 + 482);
      v432 = atomic_load(VoiceProcessorV4::mIsOnEar);
      AudioUnitSetParameter(v431, 0x16u, 0, 0, v432, 0);
      v433 = *(v8 + 50);
      v434 = 4280;
      if (v433)
      {
        v434 = 3972;
      }

      v435 = *&v8[v434];
      *&v584.mSampleTime = v7;
      v584.mHostTime = v435;
      v581 = v580;
      v574.mNumberBuffers = 512;
      *&v586.mNumberBuffers = v7;
      v436 = v8[131];
      if (*(v9 + 3249) & 1) != 0 || (*(v9 + 3250))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v436, v7, &v581);
        v436 = v8[131];
        v437 = 3972;
        if (!*(v8 + 50))
        {
          v437 = 4280;
        }

        v438 = *&v8[v437];
        if (*(v9 + 3249))
        {
LABEL_792:
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v436, v438, &v581);
LABEL_793:
          AudioUnitProcessMultiple(*(v8 + 482), &v574.mNumberBuffers, &v581, v8[123], 2u, &v584, 1u, &v586);
          if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, v8[131], v7, &v581);
          }

          DynamicsDSPChannelCount = AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
          v422 = *(v8 + 1108);
          goto LABEL_797;
        }
      }

      else
      {
        if (v433)
        {
          v439 = (v8 + 3972);
        }

        else
        {
          v439 = (v8 + 4280);
        }

        v438 = *v439;
      }

      if (*(v9 + 3250) != 1)
      {
        goto LABEL_793;
      }

      goto LABEL_792;
    }

    v371 = v8[580];
    if (v371 != v8[582])
    {
      DynamicsDSPChannelCount = AudioUnitSetParameter(DynamicsDSPChannelCount, 0, 0, 0, v371, 0);
    }

    if (v364 - 65 > 0xFFFFFFBF)
    {
      MEMORY[0x28223BE20](DynamicsDSPChannelCount);
      v373 = (&v546 - v372);
      bzero(&v546 - v372, v374 + 24);
      *v373 = v364;
      v375 = memcpy(v373 + 2, mBuffers, 16 * v364);
      v376 = v7->mNumberBuffers;
      if ((v376 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 969;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v538 = __cxa_allocate_exception(0x10uLL);
        *v538 = &unk_2881B25F8;
        v538[2] = -50;
      }

      v377 = v376 - 1;
      MEMORY[0x28223BE20](v375);
      v379 = (&v546 - v378);
      bzero(&v546 - v378, v380 + 24);
      *v379 = v376;
      v381 = 16 * v376;
      v382 = 2;
      v383 = mBuffers;
      do
      {
        *&v379[v382] = v383[v377];
        v382 += 4;
        --v377;
        v381 -= 16;
      }

      while (v381);
      *&v584.mSampleTime = v373;
      *&v586.mNumberBuffers = v379;
      v581 = v580;
      v585.mNumberBuffers = 512;
      DynamicsDSPChannelCount = AudioUnitProcessMultiple(*(v8 + 478), &v585.mNumberBuffers, &v581, v8[123], 1u, &v584, 1u, &v586);
      if ((*(v9 + 3249) & 1) != 0 || *(v9 + 3250) == 1)
      {
        DynamicsDSPChannelCount = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v173, v7, &v581);
      }

      goto LABEL_762;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_1063:
      v537 = __cxa_allocate_exception(0x10uLL);
      *v537 = &unk_2881B25F8;
      v537[2] = -50;
    }

    LODWORD(v581.mSampleTime) = 136315394;
    *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
    WORD2(v581.mHostTime) = 1024;
    *(&v581.mHostTime + 6) = 966;
    v534 = MEMORY[0x277D86220];
LABEL_1062:
    _os_log_impl(&dword_2724B4000, v534, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
    goto LABEL_1063;
  }

  LODWORD(v568) = 0;
  v197 = 0;
  v198 = v8 + 878;
  v553 = &v186->mBuffers[0].mData;
  v554 = (v171 + 4);
  v552 = &v184->mBuffers[0].mData;
  v555 = &v185->mBuffers[0].mData;
  v550 = (v8 + 690);
  v551 = &v7->mBuffers[0].mData;
  v11 = 1;
  v199 = -8589940800.0;
  while (1)
  {
    if ((v8[77] & 0x20) != 0)
    {
      v203 = v8[81];
      if ((v203 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 549;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v530 = __cxa_allocate_exception(0x10uLL);
        *v530 = &unk_2881B25F8;
        v530[2] = -50;
      }

      MEMORY[0x28223BE20](v179);
      v202 = (&v546 - v204);
      bzero(&v546 - v204, v205 + 24);
      v201 = v566;
    }

    else
    {
      MEMORY[0x28223BE20](v179);
      v202 = &v543;
      v543 = 0;
      v544 = 0uLL;
      v203 = 1;
    }

    *v202 = v203;
    if (v201)
    {
      v206 = v201->mNumberBuffers;
      if (v201->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 551;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v523 = __cxa_allocate_exception(0x10uLL);
        *v523 = &unk_2881B25F8;
        v523[2] = -50;
      }
    }

    else
    {
      v206 = 1;
    }

    MEMORY[0x28223BE20](v200);
    v208 = (&v546 - v207);
    bzero(&v546 - v207, v209 + 24);
    v560 = v208;
    *v208 = v206;
    if (v564)
    {
      v211 = v564->mNumberBuffers;
      if (v564->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 554;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v525 = __cxa_allocate_exception(0x10uLL);
        *v525 = &unk_2881B25F8;
        v525[2] = -50;
      }
    }

    else
    {
      v211 = 1;
    }

    v558 = v197;
    MEMORY[0x28223BE20](v210);
    v213 = (&v546 - v212);
    bzero(&v546 - v212, v214 + 24);
    v563 = v213;
    *v213 = v211;
    if (v565)
    {
      v216 = v565->mNumberBuffers;
      if (v565->mNumberBuffers - 65 <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v581.mSampleTime) = 136315394;
          *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v581.mHostTime) = 1024;
          *(&v581.mHostTime + 6) = 557;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
        }

        v527 = __cxa_allocate_exception(0x10uLL);
        *v527 = &unk_2881B25F8;
        v527[2] = -50;
      }
    }

    else
    {
      v216 = 1;
    }

    MEMORY[0x28223BE20](v215);
    v218 = (&v546 - v217);
    bzero(&v546 - v217, v219 + 24);
    *v218 = v216;
    v221 = *(v8 + 2260);
    v222 = *(v8 + 204);
    v567 = v202;
    if (v221 != 1)
    {
      goto LABEL_419;
    }

    if (!v222)
    {
      goto LABEL_422;
    }

    if (*v222)
    {
      v223 = 0;
      v224 = (v222 + 4);
      do
      {
        bzero(*v224, *(v224 - 1));
        ++v223;
        v224 += 2;
      }

      while (v223 < *v222);
      v222 = *(v8 + 204);
LABEL_419:
      if (!v222)
      {
LABEL_422:
        v225 = 1;
        goto LABEL_423;
      }
    }

    v225 = *v222;
    if ((*v222 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 562;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      v529 = __cxa_allocate_exception(0x10uLL);
      *v529 = &unk_2881B25F8;
      v529[2] = -50;
    }

LABEL_423:
    MEMORY[0x28223BE20](v220);
    v227 = (&v546 - v226);
    bzero(&v546 - v226, v228 + 24);
    v561 = v227;
    *v227 = v225;
    v230 = v7->mNumberBuffers;
    if ((v230 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 564;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      v519 = __cxa_allocate_exception(0x10uLL);
      *v519 = &unk_2881B25F8;
      v519[2] = -50;
    }

    v231 = v7;
    MEMORY[0x28223BE20](v229);
    v233 = (&v546 - v232);
    bzero(&v546 - v232, v234 + 24);
    v571 = v233;
    *v233 = v230;
    v235 = *v567;
    if (v235)
    {
      v236 = 4 * v8[131];
      v237 = v568;
      v238 = v567 + 4;
      v239 = v554;
      do
      {
        *(v238 - 2) = 1;
        *(v238 - 1) = v236;
        v240 = *v239;
        v239 += 2;
        *v238 = v240 + 4 * v237;
        v238 += 2;
        --v235;
      }

      while (v235);
    }

    v241 = v560;
    v242 = *v560;
    v243 = v564;
    v244 = v565;
    v245 = v566;
    if (v242)
    {
      v246 = 4 * v8[131];
      v247 = v568;
      v248 = (v560 + 4);
      v249 = v553;
      do
      {
        *(v248 - 2) = 1;
        *(v248 - 1) = v246;
        if (v245)
        {
          v250 = *v249 + 4 * v247;
        }

        else
        {
          v250 = 0;
        }

        *v248 = v250;
        v248 += 2;
        v249 += 2;
        --v242;
      }

      while (v242);
    }

    v251 = *v563;
    if (v251)
    {
      v252 = 4 * v8[131];
      v253 = v568;
      v254 = (v563 + 4);
      v255 = v552;
      do
      {
        *(v254 - 2) = 1;
        *(v254 - 1) = v252;
        if (v243)
        {
          v256 = *v255 + 4 * v253;
        }

        else
        {
          v256 = 0;
        }

        *v254 = v256;
        v254 += 2;
        v255 += 2;
        --v251;
      }

      while (v251);
    }

    v257 = *v218;
    if (v257)
    {
      v258 = 4 * v8[131];
      v259 = v568;
      v260 = (v218 + 4);
      v261 = v555;
      do
      {
        *(v260 - 2) = 1;
        *(v260 - 1) = v258;
        if (v244)
        {
          v262 = *v261 + 4 * v259;
        }

        else
        {
          v262 = 0;
        }

        *v260 = v262;
        v260 += 2;
        v261 += 2;
        --v257;
      }

      while (v257);
    }

    if (v230)
    {
      v263 = 4 * v8[131];
      v264 = v568;
      v265 = (v571 + 4);
      v266 = v551;
      do
      {
        *(v265 - 2) = 1;
        *(v265 - 1) = v263;
        if (v231)
        {
          v267 = *v266 + 4 * v264;
        }

        else
        {
          v267 = 0;
        }

        *v265 = v267;
        v265 += 2;
        v266 += 2;
        --v230;
      }

      while (v230);
    }

    if (v225)
    {
      v268 = 4 * v8[131];
      v269 = v568;
      v270 = v225;
      v271 = v222 + 4;
      v272 = (v561 + 4);
      do
      {
        *(v272 - 2) = 1;
        *(v272 - 1) = v268;
        if (v222)
        {
          v273 = *v271 + 4 * v269;
        }

        else
        {
          v273 = 0;
        }

        *v272 = v273;
        v272 += 2;
        v271 += 2;
        --v270;
      }

      while (v270);
    }

    if (v244 && (v8[565] & 1) != 0)
    {
      v274 = v565->mNumberBuffers >= v225 ? v225 : v565->mNumberBuffers;
      if (v274)
      {
        v275 = (v561 + 4);
        v276 = v555;
        do
        {
          v277 = *(v276 - 1);
          v278 = *(v275 - 1);
          if (v277 >= v278)
          {
            v279 = v278;
          }

          else
          {
            v279 = v277;
          }

          memcpy(*v275, *v276, v279);
          v276 += 2;
          v275 += 2;
          --v274;
        }

        while (v274);
      }
    }

    if (v566)
    {
      v280 = v241;
    }

    else
    {
      v280 = 0;
    }

    MonoABL = GetMonoABL(v280, &v586, v8[131]);
    if (v564)
    {
      v282 = v563;
    }

    else
    {
      v282 = 0;
    }

    v283 = GetMonoABL(v282, &v585, v8[131]);
    if (v565)
    {
      v284 = v218;
    }

    else
    {
      v284 = 0;
    }

    v285 = GetMonoABL(v284, &v574, v8[131]);
    if (*(v569 + 3928) == 1)
    {
      v286 = *(v8 + 1108);
      if ((v286 & 0x400) != 0)
      {
        v287 = *(v8 + 1109);
        if ((v287 & 0x400) != 0)
        {
          if (*(v8 + 449))
          {
            if ((v286 & v287 & 2) != 0)
            {
              v288 = *(v8 + 440);
              if (v288)
              {
                LODWORD(v581.mSampleTime) = 0;
                AudioUnitGetParameter(v288, 0x73707062u, 0, 0, &v581);
                AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v581.mSampleTime, 0);
              }
            }
          }
        }
      }
    }

    v289 = 0;
    *&v581.mSampleTime = 10;
    v581.mHostTime = v567;
    *&v581.mRateScalar = 11;
    v559 = v285;
    v581.mWordClockTime = v285;
    *&v581.mSMPTETime.mSubframes = 12;
    *&v581.mSMPTETime.mType = MonoABL;
    *&v581.mSMPTETime.mHours = 13;
    *&v581.mFlags = v283;
    do
    {
      v290 = *(&v581.mSampleTime + v289);
      v291 = *(&v581.mHostTime + v289);
      if (!v291)
      {
        v291 = *(v8 + 203);
        if (v291->mNumberBuffers)
        {
          v292 = v198;
          v293 = 0;
          v294 = &v291->mBuffers[0].mData;
          do
          {
            bzero(*v294, *(v294 - 1));
            ++v293;
            v294 += 2;
          }

          while (v293 < v291->mNumberBuffers);
          v291 = *(v570 + 203);
          v198 = v292;
          v8 = v570;
        }
      }

      v295 = VoiceProcessorV2::VPUseAUInProcess(v8, v290, 0);
      if (v291)
      {
        v296 = v295;
      }

      else
      {
        v296 = 0;
      }

      if (v296)
      {
        v584 = v587;
        LODWORD(v583[0]) = 512;
        AudioUnitProcess(*&v198[2 * v290], v583, &v584, v8[131], v291);
      }

      v289 += 16;
    }

    while (v289 != 64);
    v297 = *(v8 + 1108);
    if ((v297 & 0x40000000) != 0)
    {
      v301 = *(v8 + 1109);
      v299 = v571;
      nn = v567;
      if ((v301 & 0x40000000) == 0)
      {
        goto LABEL_499;
      }

      v298 = 0;
      if (!*(v8 + 469) || (v297 & v301 & 0x80000000) == 0)
      {
        goto LABEL_500;
      }

      if (*(v8 + 470) && *v550 && *(*v550 + 80))
      {
        vp::Audio_Buffer::prepare(v550, v8[131]);
        v315 = *(v8 + 345);
        if (v315)
        {
          v316 = *(v315 + 80);
        }

        else
        {
          v316 = 0;
        }

        if (*v316)
        {
          v359 = 0;
          v360 = (v316 + 4);
          do
          {
            bzero(*v360, *(v360 - 1));
            ++v359;
            v360 += 2;
          }

          while (v359 < *v316);
          v315 = *v550;
          v299 = v571;
        }

        if (v315)
        {
          v298 = *(v315 + 80);
        }

        else
        {
          v298 = 0;
        }

        LODWORD(v584.mSampleTime) = 512;
        v581 = v587;
        AudioUnitProcess(*(v8 + 469), &v584, &v581, v8[131], v298);
        v361 = v8[131];
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, v8[131], v298, &v587);
          v361 = v8[131];
        }

        v581 = v587;
        LODWORD(v584.mSampleTime) = 512;
        AudioUnitProcess(*(v8 + 470), &v584, &v581, v361, v298);
        v362 = v8[131];
        if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v362, v298, &v581), v362 = v8[131], (*(v569 + 3249)) || *(v569 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v362, v298, &v581);
        }

        v297 = *(v8 + 1108);
      }

      else
      {
LABEL_499:
        v298 = 0;
      }
    }

    else
    {
      v298 = 0;
      v299 = v571;
      nn = v567;
    }

LABEL_500:
    if (*(v8 + 2260))
    {
      v302 = v299;
    }

    else
    {
      v302 = nn;
    }

    if (*(v8 + 2260))
    {
      v303 = v561;
    }

    else
    {
      v303 = v559;
    }

    if (v303)
    {
      v304 = v303;
    }

    else
    {
      v304 = v298;
    }

    v562 = v304;
    if ((v297 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && v303)
    {
      v305 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
      *(v8 + 1121) = v305;
      LODWORD(v581.mSampleTime) = __exp10f(v305 / 20.0);
      v306 = *v303;
      v303 += 8;
      for (mm = 16 * v306; mm; mm -= 16)
      {
        MEMORY[0x2743CCE20](*(v303 + 8), 1, &v581, *(v303 + 8), 1, v8[131]);
        v303 += 16;
      }

      v297 = *(v8 + 1108);
      nn = v567;
    }

    if ((v297 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
    {
      (*(*v8 + 688))(v8, nn, v561);
      v297 = *(v8 + 1108);
    }

    if ((v297 & 0x8000) != 0 && (v308 = *(v8 + 1109), (v308 & 0x8000) != 0) && (v309 = *(v8 + 454)) != 0)
    {
      v310 = *(v8 + 2260);
      v581 = v587;
      v573 = 512;
      v311 = v560;
      if (((v566 != 0) & v310) == 0)
      {
        v311 = MonoABL;
      }

      *&v584.mSampleTime = nn;
      v584.mHostTime = v311;
      v312 = *&v563;
      if (((v564 != 0) & v310) == 0)
      {
        v312 = *&v283;
      }

      v313 = v561;
      if (((v565 != 0) & v310) == 0)
      {
        v313 = v559;
      }

      v584.mRateScalar = v312;
      v584.mWordClockTime = v313;
      *&v584.mSMPTETime.mSubframes = v298;
      if ((v297 & v308 & 2) != 0)
      {
        v317 = *(v8 + 440);
        v314 = v569;
        if (v317 && ((v310 & 1) != 0 || *(v569 + 3929) == 1))
        {
          LODWORD(v583[0]) = 0;
          Parameter = AudioUnitGetParameter(v317, 0x73707062u, 0, 0, v583);
          v320 = *v583 == 1.0 && Parameter == 0;
          v572 = v320;
          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v572, 4u);
          v309 = *(v8 + 454);
        }
      }

      else
      {
        v314 = v569;
      }

      v583[0] = v302;
      v583[1] = v562;
      AudioUnitProcessMultiple(v309, &v573, &v581, v8[131], 5u, &v584, 2u, v583);
      v321 = v8[131];
      if ((*(v314 + 3249) & 1) != 0 || *(v314 + 3250) == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v321, v302, &v581), v321 = v8[131], (*(v314 + 3249)) || *(v314 + 3250) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v321, v562, &v581);
      }
    }

    else
    {
      if (MonoABL)
      {
        LODWORD(v581.mSampleTime) = 1055175620;
        v303 = v302->mBuffers;
        for (nn = 16 * v302->mNumberBuffers; nn; nn -= 16)
        {
          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v581, *(v303 + 8), 1, *(v303 + 8), 1, v8[131]);
          v303 += 16;
        }
      }

      if (v283)
      {
        v303 = v302->mBuffers;
        for (nn = 16 * v302->mNumberBuffers; nn; nn -= 16)
        {
          MEMORY[0x2743CCD80](v283->mBuffers[0].mData, 1, *(v303 + 8), 1, *(v303 + 8), 1, v8[131]);
          v303 += 16;
        }
      }

      v314 = v569;
      if (v298)
      {
        if (v298 != v562)
        {
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v581, v562);
          v303 = *&v581.mSampleTime + 8;
          for (nn = 16 * **&v581.mSampleTime; nn; nn -= 16)
          {
            MEMORY[0x2743CCD80](*(v298 + 16), 1, *(v303 + 8), 1, *(v303 + 8), 1, v8[131]);
            v303 += 16;
          }
        }
      }
    }

    v322 = *(v8 + 1108);
    if ((v322 & 0x8000) != 0 && (*(v8 + 8873) & 0x80) != 0 && *(v8 + 454) && *(v8 + 2260) == 1)
    {
      (*(*v8 + 664))(v8, v302, &v587);
      v322 = *(v8 + 1108);
      v314 = v569;
    }

    if ((v322 & 0x800000) != 0)
    {
      v7 = v556;
      if ((*(v8 + 8874) & 0x80) != 0)
      {
        v323 = *(v8 + 462);
        if (v323)
        {
          v581 = v587;
          LODWORD(v584.mSampleTime) = 512;
          AudioUnitProcess(v323, &v584, &v581, v8[131], v302);
          if ((*(v314 + 3249) & 1) != 0 || *(v314 + 3250) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v302, &v581);
          }

          v322 = *(v8 + 1108);
        }
      }
    }

    else
    {
      v7 = v556;
    }

    if (v322 & 0x10000000000) != 0 && (*(v8 + 8877))
    {
      v324 = *(v8 + 479);
      if (v324)
      {
        v325 = v8[580];
        if (v325 != v8[582])
        {
          AudioUnitSetParameter(v324, 0, 0, 0, v325, 0);
          v324 = *(v8 + 479);
          v7 = v556;
          v314 = v569;
        }

        *&v584.mSampleTime = v302;
        v583[0] = v302;
        v581 = v587;
        v573 = 512;
        AudioUnitProcessMultiple(v324, &v573, &v581, v8[131], 1u, &v584, 1u, v583);
        if ((*(v314 + 3249) & 1) != 0 || *(v314 + 3250) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v8[131], v302, &v581);
        }

        v322 = *(v8 + 1108);
      }
    }

    if (v322 & 0x1000000) != 0 && (*(v8 + 8875))
    {
      v326 = *(v8 + 463);
      if (v326)
      {
        v327 = v8[580];
        if (v327 != v8[582])
        {
          AudioUnitSetParameter(v326, 1u, 0, 0, v327, 0);
          v326 = *(v8 + 463);
        }

        v581 = v587;
        LODWORD(v584.mSampleTime) = 512;
        AudioUnitProcess(v326, &v584, &v581, v8[131], v302);
        v322 = *(v8 + 1108);
      }
    }

    if ((v322 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0)
    {
      v328 = *(v8 + 464);
      if (v328)
      {
        v581 = v587;
        LODWORD(v584.mSampleTime) = 512;
        AudioUnitProcess(v328, &v584, &v581, v8[131], v302);
        goto LABEL_614;
      }
    }

    if ((v322 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0)
    {
      v329 = *(v8 + 465);
      if (v329)
      {
        break;
      }
    }

    v334 = 1.0;
    if ((v8[565] & 1) == 0)
    {
      v334 = *(v8 + 3155);
    }

    LODWORD(v581.mSampleTime) = __exp10f(((v334 * 32.0) + -32.0) / 20.0);
    v335 = v302->mBuffers;
    for (i1 = 16 * v302->mNumberBuffers; i1; i1 -= 16)
    {
      MEMORY[0x2743CCE20](v335->mData, 1, &v581, v335->mData, 1, v8[131]);
      ++v335;
    }

    if ((*(v314 + 3249) & 1) != 0 || *(v314 + 3250) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, v8[131], v302, &v587);
    }

LABEL_614:
    if (!v562 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
    {
      v337 = v571;
      if (v302->mNumberBuffers)
      {
        v338 = 0;
        v339 = 4;
        do
        {
          memcpy(*&v337[v339], *(&v302->mNumberBuffers + v339 * 4), 4 * v8[131]);
          ++v338;
          v339 += 4;
        }

        while (v338 < v302->mNumberBuffers);
      }

      goto LABEL_619;
    }

    v347 = *(v8 + 2260);
    if (v347 == 1)
    {
      v348 = v8[91];
      v349 = v302->mNumberBuffers;
LABEL_633:
      v350 = v571;
      if (v349)
      {
        v351 = 0;
        v352 = v348 - 1;
        v353 = v562->mBuffers;
        v354 = 4;
        do
        {
          if (v352 >= v351)
          {
            v355 = v351;
          }

          else
          {
            v355 = v352;
          }

          MEMORY[0x2743CCD80](*(&v302->mNumberBuffers + v354 * 4), 1, v353[v355].mData, 1, *&v350[v354], 1, v8[131]);
          ++v351;
          v354 += 4;
          v350 = v571;
        }

        while (v351 < v302->mNumberBuffers);
      }

      goto LABEL_619;
    }

    v349 = v302->mNumberBuffers;
    v348 = 1;
    if ((v347 & 1) != 0 || v349 == 1)
    {
      goto LABEL_633;
    }

    v356 = v302->mBuffers;
    v357 = v562->mBuffers;
      ;
    }

LABEL_619:
    v340 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
    if ((v340 - 65) <= 0xFFFFFFBF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v581.mSampleTime) = 136315394;
        *(&v581.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
        WORD2(v581.mHostTime) = 1024;
        *(&v581.mHostTime + 6) = 879;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v581, 0x12u);
      }

      v520 = __cxa_allocate_exception(0x10uLL);
      *v520 = &unk_2881B25F8;
      v520[2] = -50;
    }

    v341 = v340;
    MEMORY[0x28223BE20](v340);
    v343 = (&v546 - v342);
    bzero(&v546 - v342, v344 + 24);
    v343->mNumberBuffers = v341;
    v179 = memcpy(v343->mBuffers, v571 + 2, 16 * v341);
    v9 = v569;
    v173 = v557;
    if ((*(v569 + 3249) & 1) != 0 || *(v569 + 3250) == 1)
    {
      v179 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, v8[131], v343, &v587);
    }

    v345 = v558;
    if (v8[2217] & 1) != 0 && (v8[2219])
    {
      v179 = *(v8 + 471);
      if (v179)
      {
        v581 = v587;
        LODWORD(v584.mSampleTime) = 512;
        v179 = AudioUnitProcess(v179, &v584, &v581, v8[131], v343);
      }
    }

    v346 = v8[131];
    v587.mSampleTime = v587.mSampleTime + v346;
    LODWORD(v568) = v346 + v568;
    v197 = v345 + 1;
    if (v197 >= v8[132])
    {
      goto LABEL_662;
    }
  }

  v330 = *(v8 + 199);
  if (v330->mNumberBuffers)
  {
    v331 = 0;
    v303 = (v8[81] - 1);
    v332 = v302->mBuffers;
    nn = 16;
    do
    {
      if (v303 >= v331)
      {
        v333 = v331;
      }

      else
      {
        v333 = v303;
      }

      memcpy(*(&v330->mNumberBuffers + nn), v332[v333].mData, 4 * v8[131]);
      ++v331;
      v330 = *(v8 + 199);
      nn += 16;
    }

    while (v331 < v330->mNumberBuffers);
    v329 = *(v8 + 465);
  }

  v581 = v587;
  LODWORD(v584.mSampleTime) = 512;
  AudioUnitProcess(v329, &v584, &v581, v8[131], v330);
  v302 = *(v8 + 199);
  if (v302)
  {
    goto LABEL_614;
  }

  v583[0] = 0;
  v582 = 0u;
  memset(&v581, 0, sizeof(v581));
  v516 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v518 = 3;
  }

  else
  {
    v518 = 2;
  }

  LODWORD(v584.mSampleTime) = 134217984;
  *(&v584.mSampleTime + 4) = 0.0;
  LODWORD(v545) = 12;
  _os_log_send_and_compose_impl(v518, v583, &v581, 80, &dword_2724B4000, v516, 16, "assertion failure: compressedVoiceABL != nullptr -> %llu", &v584);
  _os_crash_msg();
  __break(1u);
LABEL_1018:
  dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
LABEL_993:
  CALegacyLog::log(v516, 5, *(nn + 3392), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1469, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v199);
  v504 = v8[123];
  v505 = *(v8 + 42);
LABEL_994:
  if (v12 - *(v8 + 1984) > (v8[296] + v504) / v505)
  {
    v506 = *(v8 + 1589);
    if (*(v303 + 3384) != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v506, 5, *(nn + 3392), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1472, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
  }

  *(v8 + 1984) = v12;
LABEL_999:
  if (v11)
  {
    if (v8[414] & 1) != 0 || (v507 = FadeInOverFewFrames(*(v8 + 205), v7, v8[412], v8[413]), *(v8 + 1656) = v507, v8[412] = HIDWORD(v507), (v507))
    {
      v508 = *(v8 + 205);
      v509 = v7->mNumberBuffers >= *v508 ? *v508 : v7->mNumberBuffers;
      if (v509)
      {
        v510 = &v7->mBuffers[0].mData;
        v511 = (v508 + 4);
        do
        {
          v512 = *(v510 - 1);
          v513 = *(v511 - 1);
          if (v512 >= v513)
          {
            v514 = v513;
          }

          else
          {
            v514 = v512;
          }

          memcpy(*v511, *v510, v514);
          v510 += 2;
          v511 += 2;
          --v509;
        }

        while (v509);
      }
    }
  }

  else
  {
    v8[412] = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  return 0;
}