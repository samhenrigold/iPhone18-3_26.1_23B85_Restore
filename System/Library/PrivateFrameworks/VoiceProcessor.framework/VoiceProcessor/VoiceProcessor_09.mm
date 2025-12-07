void sub_27255D4A8(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 256));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV9::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
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

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3240()
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

uint64_t VoiceProcessorV2::ReadBuffer(uint64_t a1, int a2, _DWORD *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16161) != 1)
  {
    return 1937006964;
  }

  result = 1651532146;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v21 = *(a1 + 1432);
      if (*v21 && *a3)
      {
        v22 = 0;
        v23 = (a3 + 4);
        do
        {
          v24 = *v21;
          if (v22 >= v24)
          {
            v25 = v24 - 1;
          }

          else
          {
            v25 = v22;
          }

          memcpy(*v23, *&v21[4 * v25 + 4], *(v23 - 1));
          ++v22;
          v23 += 2;
        }

        while (v22 < *a3);
        return 0;
      }

LABEL_53:
      v34 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v35 = 134217984;
      v36 = 0;
      _os_log_send_and_compose_impl(v33, &v34, &v37, 80, &dword_2724B4000, v32, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v35);
      _os_crash_msg();
      __break(1u);
    }

    if (a2 != 6)
    {
      return result;
    }

    v11 = *(a1 + 1096);
    if (*v11 && *a3)
    {
      v12 = 0;
      v13 = (a3 + 4);
      do
      {
        v14 = *v11;
        if (v12 >= v14)
        {
          v15 = v14 - 1;
        }

        else
        {
          v15 = v12;
        }

        memcpy(*v13, *&v11[4 * v15 + 4], *(v13 - 1));
        ++v12;
        v13 += 2;
      }

      while (v12 < *a3);
      return 0;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    v16 = *(a1 + 1056);
    if (*v16 && *a3)
    {
      v17 = 0;
      v18 = (a3 + 4);
      do
      {
        v19 = *v16;
        if (v17 >= v19)
        {
          v20 = v19 - 1;
        }

        else
        {
          v20 = v17;
        }

        memcpy(*v18, *&v16[4 * v20 + 4], *(v18 - 1));
        ++v17;
        v18 += 2;
      }

      while (v17 < *a3);
      return 0;
    }

    goto LABEL_49;
  }

  if (a2 != 1)
  {
    return result;
  }

  v6 = *(a1 + 1048);
  if (!*v6 || !*a3)
  {
    v34 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v35 = 134217984;
    v36 = 0;
    _os_log_send_and_compose_impl(v27, &v34, &v37, 80, &dword_2724B4000, v26, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v35);
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v34 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v35 = 134217984;
    v36 = 0;
    _os_log_send_and_compose_impl(v29, &v34, &v37, 80, &dword_2724B4000, v28, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v35);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v34 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v30 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v35 = 134217984;
    v36 = 0;
    _os_log_send_and_compose_impl(v31, &v34, &v37, 80, &dword_2724B4000, v30, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  v7 = 0;
  v8 = (a3 + 4);
  do
  {
    v9 = *v6;
    if (v7 >= v9)
    {
      v10 = v9 - 1;
    }

    else
    {
      v10 = v7;
    }

    memcpy(*v8, *&v6[4 * v10 + 4], *(v8 - 1));
    ++v7;
    v8 += 2;
  }

  while (v7 < *a3);
  return 0;
}

uint64_t VoiceProcessorV2::WriteBuffer(uint64_t a1, int a2, _DWORD *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16161) != 1)
  {
    return 1937006964;
  }

  switch(a2)
  {
    case 5:
      v16 = *(a1 + 1452);
      if ((v16 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpProcessUplink_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 82;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &unk_2881B25F8;
        exception[2] = -50;
      }

      MEMORY[0x28223BE20](a1);
      v18 = &v50 - v17;
      bzero(&v50 - v17, v19 + 24);
      v20 = *a3;
      if (!v20)
      {
LABEL_58:
        v51 = 0;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        memset(buf, 0, sizeof(buf));
        v47 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v52 = 134217984;
        v53 = 0;
        _os_log_send_and_compose_impl(v48, &v51, buf, 80, &dword_2724B4000, v47, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v52);
        _os_crash_msg();
        __break(1u);
      }

      v21 = 0;
      v22 = v18 + 8;
      do
      {
        if (v21 >= v20)
        {
          v23 = v20 - 1;
        }

        else
        {
          v23 = v21;
        }

        *v22++ = *&a3[4 * v23 + 2];
        ++v21;
      }

      while (v16 != v21);
      v24 = *(a1 + 516);
      v25 = *(a1 + 1448);
      v26 = *(a1 + 1456);
      if (v24)
      {
        v27 = v25 == v26;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }

      v28 = 0;
      v29 = v25 - v26;
      if (v29 >= v24)
      {
        v30 = *(a1 + 516);
      }

      else
      {
        v30 = v29;
      }

      v31 = v25 - *(a1 + 1464);
      if (v31 >= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      v33 = (v18 + 16);
      do
      {
        v34 = *v33;
        v33 += 2;
        memcpy((*(a1 + 1472) + 4 * (*(a1 + 1464) + *(a1 + 1448) * v28++)), v34, 4 * v32);
        v35 = *(a1 + 1452);
      }

      while (v28 < v35);
      if (v31 < v30 && v35)
      {
        v36 = 0;
        v37 = (v18 + 16);
        do
        {
          v38 = *v37;
          v37 += 2;
          memcpy((*(a1 + 1472) + 4 * (*(a1 + 1448) * v36++)), (v38 + 4 * v32), 4 * (v30 - v32));
        }

        while (v36 < *(a1 + 1452));
      }

      *(a1 + 1456) += v30;
      v39 = *(a1 + 1464) + v30;
      *(a1 + 1464) = v39;
      v40 = *(a1 + 1448);
      v41 = v39 >= v40;
      v42 = v39 - v40;
      if (!v41)
      {
        return 0;
      }

      result = 0;
      *(a1 + 1464) = v42;
      break;
    case 4:
      if (*a3)
      {
        v11 = *(a1 + 1080);
        if (*v11)
        {
          v12 = 0;
          v13 = (v11 + 4);
          do
          {
            v14 = *a3;
            if (v12 >= v14)
            {
              v15 = v14 - 1;
            }

            else
            {
              v15 = v12;
            }

            memcpy(*v13, *&a3[4 * v15 + 4], *(v13 - 1));
            ++v12;
            v13 += 2;
          }

          while (v12 < *v11);
          return 0;
        }
      }

      v51 = 0;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(buf, 0, sizeof(buf));
      v43 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v52 = 134217984;
      v53 = 0;
      _os_log_send_and_compose_impl(v44, &v51, buf, 80, &dword_2724B4000, v43, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v52);
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    case 3:
      if (*a3)
      {
        v5 = *(a1 + 1088);
        if (*v5)
        {
          v6 = 0;
          v7 = (v5 + 4);
          do
          {
            v8 = *a3;
            if (v6 >= v8)
            {
              v9 = v8 - 1;
            }

            else
            {
              v9 = v6;
            }

            memcpy(*v7, *&a3[4 * v9 + 4], *(v7 - 1));
            ++v6;
            v7 += 2;
          }

          while (v6 < *v5);
          return 0;
        }
      }

LABEL_54:
      v51 = 0;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(buf, 0, sizeof(buf));
      v45 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v52 = 134217984;
      v53 = 0;
      _os_log_send_and_compose_impl(v46, &v51, buf, 80, &dword_2724B4000, v45, 16, "assertion failure: (sourceABL->mNumberBuffers > 0) && (targetABL->mNumberBuffers > 0) -> %llu", &v52);
      _os_crash_msg();
      __break(1u);
      goto LABEL_58;
    default:
      return 1651532146;
  }

  return result;
}

uint64_t VoiceProcessorV2::RunUplinkHardwareDSP(VoiceProcessorV2 *this, AudioBufferList *a2, AudioTimeStamp *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 625, 1u);
  if (*(this + 624))
  {
    if (*(this + 484))
    {
      VoiceProcessorV2::LogIOError(this, 21.006, *(this + 3148), *(this + 3149), 0.0, "process: tryer acquire failed", a3);
      goto LABEL_5;
    }

LABEL_4:
    VoiceProcessorV2::LogIOError(this, 21.005, *(this + 3148), *(this + 3149), 0.0, "process: not ok to process?!", a3);
LABEL_5:
    CADeprecated::CAMutex::Lock((this + 2592));
    ++*(this + 3148);
    CADeprecated::CAMutex::Unlock((this + 2592));
    v4 = 1937006964;
    if (*(this + 3148) == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 1);
    }

    goto LABEL_94;
  }

  if (!*(this + 484))
  {
    goto LABEL_4;
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v7 = mach_absolute_time() * 0.0000000416666667;
      *(this + 1982) = v7;
      if (*(this + 1983) == 0.0)
      {
        *(this + 1983) = v7;
      }
    }
  }

  *(this + 582) = *(this + 580);
  v8 = atomic_load(this + 581);
  *(this + 580) = v8;
  *(this + 585) = *(this + 583);
  v9 = atomic_load(this + 584);
  *(this + 583) = v9;
  if (*(this + 15881) == 1)
  {
    if (v9 != *(this + 585))
    {
      VoiceProcessorV2::PListWriteSetDeviceOrientationParameters(this, v9);
    }

    v10 = *(this + 580);
    if (v10 != *(this + 582) && *(this + 15881) == 1)
    {
      VoiceProcessorV2::PListWriteSetUIOrientationParameters(this, v10);
    }
  }

  CADeprecated::CAMutex::Lock((this + 2592));
  ++*(this + 3148);
  CADeprecated::CAMutex::Unlock((this + 2592));
  if (*(this + 3148) == 1)
  {
    VoiceProcessorV2::LogNonTransientErrors(this, 1);
  }

  if ((*(this + 15881) & 1) == 0)
  {
    v13 = (this + 656);
    v14 = a2;
    goto LABEL_25;
  }

  *(this + 13016) = 1;
  v12 = *(this + 1915);
  if (v12)
  {
    v13 = (this + 656);
    VoiceProcessorV2::InjectionOrAdditionFilesCopyPreInjectionABL(v12, a2, v11);
    v14 = *(this + 1915);
LABEL_25:
    mDataByteSize = v14->mBuffers[0].mDataByteSize;
    v16 = *v13;
    goto LABEL_26;
  }

  mDataByteSize = a2->mBuffers[0].mDataByteSize;
  v16 = *(this + 164);
LABEL_26:
  v17 = mDataByteSize / v16;
  v53 = 0;
  v4 = VoiceProcessorV2::FrontEndBlockSizeCheck(this, 0, mDataByteSize / v16, *(this + 126), a2, &v53);
  if (v4)
  {
    goto LABEL_94;
  }

  if (*(this + 15881) == 1)
  {
    v19 = *(this + 1915);
    v20 = v53;
    if (v19)
    {
      v21 = v53;
      if (!v53)
      {
        v21 = *(this + 126);
      }

      VoiceProcessorV2::InjectionFilesReadSignal(this, 4, v21, v19);
      v22 = v20;
      if (!v20)
      {
        v22 = *(this + 126);
      }

      v23 = *(this + 1915);
      if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v22, v23, a3);
        v23 = *(this + 1915);
      }

      v24 = v20;
      if (!v20)
      {
        v24 = *(this + 126);
      }

      v25 = *(this + 1992);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        v52 = *(this + 1992);
        v50 = v24;
        v48 = v23;
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
        v25 = v52;
        v23 = v48;
        v24 = v50;
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v20 = v53;
    v26 = v53;
    if (!v53)
    {
      v26 = *(this + 126);
    }

    if (*(this + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v26, a2, a3);
    }

    v24 = v20;
    if (!v20)
    {
      v24 = *(this + 126);
    }

    v25 = *(this + 1992);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      v51 = *(this + 1992);
      v49 = v24;
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
      v25 = v51;
      v24 = v49;
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v23 = a2;
LABEL_53:
      AudioIssueDetectorLibraryLoader(void)::libSym(v25, 1, 0, v23, v24, a3);
      LODWORD(v20) = v53;
    }
  }

  if (v20)
  {
    v27 = *(this + 130);
    if (*v27)
    {
      v28 = 0;
      v29 = 4;
      do
      {
        bzero(*&v27[v29], 4 * v20);
        ++v28;
        v27 = *(this + 130);
        v29 += 4;
      }

      while (v28 < *v27);
    }

    goto LABEL_64;
  }

  v30 = (this + 632);
  if (*(this + 15881) != 1)
  {
    v34 = *(this + 648);
    *buf = *v30;
    *&buf[16] = v34;
    *&buf[32] = *(this + 83);
    v33 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), a2, v17, *(this + 130), 1);
LABEL_63:
    v4 = v33;
    if (v33)
    {
      goto LABEL_94;
    }

    goto LABEL_64;
  }

  v31 = *(this + 1915);
  if (v31)
  {
    v32 = *(this + 648);
    *buf = *v30;
    *&buf[16] = v32;
    *&buf[32] = *(this + 83);
    v33 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), v31, v17, *(this + 130), 1);
    goto LABEL_63;
  }

LABEL_64:
  if ((*(this + 1697) & 1) == 0)
  {
    *(this + 1697) = 1;
    mSampleTime = a3->mSampleTime;
    *(this + 216) = *&a3->mSampleTime;
    *(this + 214) = mSampleTime;
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, 0.0, mSampleTime, 1);
    }

    *(this + 1768) = 0u;
    *(this + 1784) = 0u;
    *(this + 1736) = 0u;
    *(this + 1752) = 0u;
    *(this + 480) = 0;
  }

  v36 = *(this + 214);
  v37 = a3->mSampleTime;
  if (v36 == a3->mSampleTime)
  {
    *(this + 215) = 0;
  }

  else
  {
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, v36, v37, 1);
      v37 = a3->mSampleTime;
      v36 = *(this + 214);
    }

    *(this + 215) = v37 - v36;
    if (v37 < v36)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(this + 214);
          v41 = a3->mSampleTime;
          mHostTime = a3->mHostTime;
          mRateScalar = a3->mRateScalar;
          mFlags = a3->mFlags;
          *buf = 136316674;
          *&buf[4] = "vpProcessUplink_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 255;
          *&buf[18] = 2048;
          *&buf[20] = v40;
          *&buf[28] = 2048;
          *&buf[30] = v41;
          *&buf[38] = 2048;
          v55 = mHostTime;
          v56 = 2048;
          v57 = mRateScalar;
          v58 = 1024;
          v59 = mFlags;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", buf, 0x40u);
        }
      }

      v45 = *(this + 1588);
      if (v45 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v45, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 255, "RunUplinkHardwareDSP", "mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(this + 214), a3->mSampleTime, a3->mHostTime, a3->mRateScalar, a3->mFlags);
      }

      VoiceProcessorV2::LogIOError(this, 21.008, *(this + 3148), 0.0, 0.0, "mic sample time jumped backwards");
      v37 = a3->mSampleTime;
    }
  }

  LODWORD(v36) = *(this + 126);
  *(this + 214) = v37 + *&v36;
  VoiceProcessorV2::LoadMatchingReferenceForMicSignalAndFillTsMic(this, v18, a3->mSampleTime);
  v46 = *(this + 352);
  *(this + 1412) = v46 != 0.0;
  if (v46 != 0.0)
  {
    VoiceProcessorV2::PreSRCMicClipDetection(this);
  }

  v4 = 0;
LABEL_94:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v4;
}

void VoiceProcessorV2::LoadMatchingReferenceForMicSignalAndFillTsMic(VoiceProcessorV2 *this, const AudioTimeStamp *a2, double a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = this + 12288;
  if ((*(this + 12604) & 1) == 0)
  {
    v6 = a3 - *(this + 298);
    v7 = *(this + 131);
    mNumberBuffers = v7->mNumberBuffers;
    if (mNumberBuffers)
    {
      v9 = *(this + 125);
      v10 = v9 * *(this + 184);
      p_mDataByteSize = &v7->mBuffers[0].mDataByteSize;
      do
      {
        if (*p_mDataByteSize != v10)
        {
          *p_mDataByteSize = v10;
        }

        p_mDataByteSize += 4;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    else
    {
      v9 = *(this + 125);
    }

    v12 = CADeprecated::AudioRingBuffer::Fetch(*(this + 151), v7, v9, v6);
    if (!v12)
    {
      goto LABEL_112;
    }

    v13 = v12;
    v14 = *(this + 131);
    if (*v14)
    {
      v15 = 0;
      v16 = (v14 + 4);
      do
      {
        bzero(*v16, *(v16 - 1));
        ++v15;
        v16 += 2;
      }

      while (v15 < *v14);
    }

    v17 = *(this + 151);
    v18 = *(v17 + 904);
    v19 = v17 + 24 * (v18 & 0x1F);
    v20 = 7;
    do
    {
      v21 = *(v19 + 136);
      v22 = *(v19 + 144);
    }

    while (*(v19 + 152) != v18 && v20-- != 0);
    v24 = *(this + 125);
    v25 = v6 + v24 + -1.0;
    if (v13 == -1)
    {
      v32 = v25 - v21 + 1.0;
      v33 = v32;
      if (v32 >= 1 && v24 > v33)
      {
        v47 = *(this + 152);
        v48 = v47->mNumberBuffers;
        if (v48)
        {
          v49 = *(this + 184) * v24;
          v50 = &v47->mBuffers[0].mDataByteSize;
          do
          {
            if (*v50 != v49)
            {
              *v50 = v49;
            }

            v50 += 4;
            --v48;
          }

          while (v48);
        }

        v51 = CADeprecated::AudioRingBuffer::Fetch(v17, v47, v32, v21);
        if (v51)
        {
          v52 = v51;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v53 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v54 = (*v53 ? *v53 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              v71 = "vpProcessUplink_v2.cpp";
              v72 = 1024;
              v73 = 614;
              v74 = 1024;
              v75 = v33;
              v76 = 1024;
              *v77 = v52;
              *&v77[4] = 2048;
              *&v77[6] = v21;
              *&v77[14] = 2048;
              *&v77[16] = v22;
              *&v77[24] = 2048;
              *&v77[26] = v6;
              *&v77[34] = 2048;
              *&v77[36] = v25;
              _os_log_impl(&dword_2724B4000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: tsref ring buffer: <slightly behind> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x46u);
            }
          }

          v55 = *(this + 1588);
          if (v55 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v55, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 614, "LoadMatchingReferenceForMicSignalAndFillTsMic", "warning: tsref ring buffer: <slightly behind> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v33, v52, v21, v22, v6, v25);
          }

          VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v52, v33, "warning: tsref ring buffer: <slightly behind> couldn't read required");
        }

        v56 = *(this + 131);
        if (*v56)
        {
          v57 = 0;
          v58 = 4;
          do
          {
            memcpy((*&v56[v58] + 4 * (*(this + 125) - v33)), *(*(this + 152) + v58 * 4), 4 * v33);
            ++v57;
            v56 = *(this + 131);
            v58 += 4;
          }

          while (v57 < *v56);
        }

        goto LABEL_112;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v35 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v71 = "vpProcessUplink_v2.cpp";
          v72 = 1024;
          v73 = 631;
          v74 = 1024;
          v75 = v33;
          v76 = 2048;
          *v77 = v21;
          *&v77[8] = 2048;
          *&v77[10] = v22;
          *&v77[18] = 2048;
          *&v77[20] = v6;
          *&v77[28] = 2048;
          *&v77[30] = v25;
          _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> tsref ring buffer: <slightly behind> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x40u);
        }
      }

      v37 = *(this + 1588);
      if (v37 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v37, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 631, "LoadMatchingReferenceForMicSignalAndFillTsMic", "tsref ring buffer: <slightly behind> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v33, v21, v22, v6, v25);
      }

      VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v33, v21, "tsref ring buffer: <slightly behind> the calculated samples in range issue");
    }

    else if (v13 == 1)
    {
      v26 = (v22 - 1) - v6 + 1.0;
      v27 = v26;
      if (v26 >= 1 && v24 > v27)
      {
        v38 = *(this + 131);
        v39 = v38->mNumberBuffers;
        if (v39)
        {
          v40 = *(this + 184) * v24;
          v41 = &v38->mBuffers[0].mDataByteSize;
          do
          {
            if (*v41 != v40)
            {
              *v41 = v40;
            }

            v41 += 4;
            --v39;
          }

          while (v39);
        }

        v42 = CADeprecated::AudioRingBuffer::Fetch(v17, v38, v26, v6);
        if (v42)
        {
          v43 = v42;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v44 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              v71 = "vpProcessUplink_v2.cpp";
              v72 = 1024;
              v73 = 575;
              v74 = 1024;
              v75 = v27;
              v76 = 1024;
              *v77 = v43;
              *&v77[4] = 2048;
              *&v77[6] = v21;
              *&v77[14] = 2048;
              *&v77[16] = v22;
              *&v77[24] = 2048;
              *&v77[26] = v6;
              *&v77[34] = 2048;
              *&v77[36] = v25;
              _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: tsref ring buffer: <slightly ahead> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x46u);
            }
          }

          v46 = *(this + 1588);
          if (v46 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v46, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 575, "LoadMatchingReferenceForMicSignalAndFillTsMic", "warning: tsref ring buffer: <slightly ahead> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v27, v43, v21, v22, v6, v25);
          }

          VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v43, v27, "warning: tsref ring buffer: <slightly ahead> couldn't read required samples");
        }

LABEL_112:
        v5 = 0;
        v4[3021] = 0;
        goto LABEL_113;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v29 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v71 = "vpProcessUplink_v2.cpp";
          v72 = 1024;
          v73 = 589;
          v74 = 1024;
          v75 = v27;
          v76 = 2048;
          *v77 = v21;
          *&v77[8] = 2048;
          *&v77[10] = v22;
          *&v77[18] = 2048;
          *&v77[20] = v6;
          *&v77[28] = 2048;
          *&v77[30] = v25;
          _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> tsref ring buffer: <slightly ahead> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x40u);
        }
      }

      v31 = *(this + 1588);
      if (v31 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v31, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 589, "LoadMatchingReferenceForMicSignalAndFillTsMic", "tsref ring buffer: <slightly ahead> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v27, v21, v22, v6, v25);
      }

      VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v27, v21, "warning: tsref ring buffer: <slightly ahead> the calculated samples range issue");
    }

    v5 = 1;
    goto LABEL_113;
  }

  v5 = 0;
LABEL_113:
  if ((v4[316] & 1) != 0 || v5 && (v4[3021] & 1) == 0)
  {
    v59 = *(this + 132);
    if (*v59)
    {
      v60 = 0;
      v61 = (v59 + 4);
      do
      {
        bzero(*v61, *(v61 - 1));
        ++v60;
        v61 += 2;
      }

      while (v60 < *v59);
    }
  }

  else
  {
    v62 = *(this + 132);
    v63 = *(this + 130);
    if (*v63 >= *v62)
    {
      v64 = *v62;
    }

    else
    {
      v64 = *v63;
    }

    if (v64)
    {
      v65 = (v63 + 4);
      v66 = (v62 + 4);
      do
      {
        v67 = *(v65 - 1);
        v68 = *(v66 - 1);
        if (v67 >= v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = v67;
        }

        memcpy(*v66, *v65, v69);
        v65 += 2;
        v66 += 2;
        --v64;
      }

      while (v64);
    }
  }
}

void VoiceProcessorV2::PreSRCMicClipDetection(VoiceProcessorV2 *this)
{
  v1 = *(this + 132);
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      __C = 0.0;
      vDSP_maxmgv(*&v1[v3 + 4], 1, &__C, *(this + 126));
      v5 = __C <= 0.999;
      *(*(this + 177) + v4) = __C > 0.999;
      v6 = *(*(this + 179) + v3 * 4 + 16);
      v7 = *(this + 132) + v3 * 4;
      if (v5)
      {
        bzero(v6, *(v7 + 12));
      }

      else
      {
        memcpy(v6, *(v7 + 16), *(v7 + 12));
        ++*(this + 372);
      }

      ++v4;
      v1 = *(this + 132);
      v3 += 4;
    }

    while (v4 < *v1);
  }
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3294()
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

uint64_t VoiceProcessorV2::RunUplinkDynamicsDSP(VoiceProcessorV2 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if ((*(this + 4696) & 0x10) != 0 && (*(this + 4712) & 0x10) != 0)
  {
    v7 = *(this + 417);
    if (v7)
    {
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcess(v7, &ioActionFlags.mNumberBuffers, a3, a4, ioData);
      if ((v6[3593] & 1) != 0 || v6[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x30u, a4, ioData, a3);
      }
    }
  }

  if (v6[3593] == 1)
  {
    *&ioActionFlags.mNumberBuffers = 1;
    *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
    ioActionFlags.mBuffers[0].mData = v12;
    v12[0] = 0;
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
  }

  return 0;
}

uint64_t VoiceProcessorV2::Process(VoiceProcessorV2 *this, const AudioBufferList *a2, AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v10 = a3;
  v210 = *MEMORY[0x277D85DE8];
  v12 = this + 12288;
  atomic_fetch_add(this + 625, 1u);
  if (*(this + 624))
  {
    if (*(this + 484))
    {
      v13 = a5;
      VoiceProcessorV2::LogIOError(this, 21.006, *(this + 3148), *(this + 3149), 0.0, "process: tryer acquire failed", a3, a4, a5, a6, a7, a8);
LABEL_109:
      CADeprecated::CAMutex::Lock((this + 2592));
      ++*(this + 3148);
      CADeprecated::CAMutex::Unlock((this + 2592));
      if (*(this + 3148) == 1)
      {
        VoiceProcessorV2::LogNonTransientErrors(this, 1);
      }

      LODWORD(v9) = *(this + 130);
      v79 = *(this + 84);
      if (*(this + 109) <= 0.0)
      {
        v80 = 24000.0;
      }

      else
      {
        v80 = *(this + 109);
      }

      *a6 = a4->mBuffers[0].mDataByteSize >> 2;
      *(this + 321) = 0;
      *(this + 1280) = 0;
      FadeOutOverOneFrame(*(this + 159), a4);
      v81 = v79 * v9 / v80;
      if (*(this + 1864) == 1)
      {
        *(this + 225) = v81 + *(this + 225);
      }

      v82 = *&v10->mSampleTime;
      v83 = *&v10->mRateScalar;
      v84 = *&v10->mSMPTETime.mHours;
      *&v13->mSMPTETime.mSubframes = *&v10->mSMPTETime.mSubframes;
      *&v13->mSMPTETime.mHours = v84;
      *&v13->mSampleTime = v82;
      *&v13->mRateScalar = v83;
      *&v82 = *(this + 217);
      v85 = v81 + *&v82;
      *(this + 217) = v85;
      v13->mSampleTime = v85;
      v13->mFlags |= 1u;
      LODWORD(v82) = *(this + 126);
      *(this + 214) = v10->mSampleTime + v82;
      if (v12[3593] == 1 && *(this + 1589))
      {
        v86 = mach_absolute_time();
        v87 = *(this + 1589);
        if (VPTimestampLogScope(void)::once != -1)
        {
          dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
        }

        CALegacyLog::log(v87, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 486, "Process", "Bailed UL %f %f %f", v10->mSampleTime, *(this + 1982), v86 * 0.0000000416666667 - *(this + 1982));
      }

      goto LABEL_304;
    }

LABEL_108:
    v13 = a5;
    VoiceProcessorV2::LogIOError(this, 21.005, *(this + 3148), *(this + 3149), 0.0, "process: not ok to process?!", a3, a4, a5, a6, a7, a8);
    goto LABEL_109;
  }

  if (!*(this + 484))
  {
    goto LABEL_108;
  }

  (*(*this + 192))(this, a2, a3, a4, a5, a6, a7);
  VoiceProcessorV2::SrcAndAppendToRingBuffer(this, 1, *(this + 125), *(this + 131), *(this + 131), 0, v10, v14);
  VoiceProcessorV2::SrcAndAppendToRingBuffer(this, 0, *(this + 126), *(this + 132), *(this + 179), *(this + 1412), v10, v15);
  if ((*(this + 1864) & 1) == 0)
  {
    *(this + 1832) = 0u;
    *(this + 1848) = 0u;
    *(this + 1800) = 0u;
    *(this + 1816) = 0u;
    *(this + 1864) = 1;
    *(this + 225) = v10->mSampleTime * *(this + 104) / *(this + 79);
    *(this + 481) = 0;
  }

  *(this + 226) = v10->mHostTime;
  v16 = *(this + 215);
  if (v16 > 0.0)
  {
    v17 = v16 * *(this + 104) / *(this + 79);
    v18 = vcvtmd_u64_f64(v17);
    v19 = v17 - v18 + *(this + 481);
    if (v19 > 1.0)
    {
      v19 = v19 + -1.0;
      ++v18;
    }

    *(this + 481) = v19;
    *(this + 225) = *(this + 225) + v18;
  }

  v20 = *(this + 129);
  p_mSampleTime = &v10->mSampleTime;
  v202 = v12;
  if (*(this + 336) >= v20)
  {
    do
    {
      if (!*(this + 1135) && *(this + 326) < v20)
      {
        break;
      }

      if (v20)
      {
        v21 = *(this + 135);
        if (*v21 == *(this + 325))
        {
          v22 = *(this + 326);
          if (v22)
          {
            if (v22 >= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 = *(this + 326);
            }

            v24 = *(this + 324) - *(this + 327);
            if (v24 >= v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = v24;
            }

            if (*v21)
            {
              v26 = 0;
              v27 = (v21 + 4);
              v28 = (v21 + 4);
              do
              {
                v29 = *v28;
                v28 += 2;
                memcpy(v29, (*(this + 165) + 4 * (*(this + 327) + *(this + 324) * v26++)), 4 * v25);
                v30 = *(this + 325);
              }

              while (v26 < v30);
              v10 = p_mSampleTime;
              if (v24 < v23)
              {
                if (v30)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *v27;
                    v27 += 2;
                    memcpy((v32 + 4 * v25), (*(this + 165) + 4 * (*(this + 324) * v31++)), 4 * (v23 - v25));
                  }

                  while (v31 < *(this + 325));
                }
              }
            }

            *(this + 326) -= v23;
            v33 = *(this + 327) + v23;
            *(this + 327) = v33;
            v34 = *(this + 324);
            v35 = v33 >= v34;
            v36 = v33 - v34;
            v12 = v202;
            if (v35)
            {
              *(this + 327) = v36;
            }
          }
        }
      }

      v37 = *(this + 129);
      v38 = *(this + 136);
      v39 = *v38;
      if (v37)
      {
        v40 = v39 == *(this + 335);
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v41 = *(this + 336);
        if (v41)
        {
          if (v41 >= v37)
          {
            v42 = *(this + 129);
          }

          else
          {
            v42 = *(this + 336);
          }

          v43 = *(this + 334) - *(this + 337);
          if (v43 >= v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = v43;
          }

          if (v39)
          {
            v45 = 0;
            v46 = (v38 + 4);
            v47 = (v38 + 4);
            do
            {
              v48 = *v47;
              v47 += 2;
              memcpy(v48, (*(this + 170) + 4 * (*(this + 337) + *(this + 334) * v45++)), 4 * v44);
              v49 = *(this + 335);
            }

            while (v45 < v49);
            v10 = p_mSampleTime;
            if (v43 < v42)
            {
              if (v49)
              {
                v50 = 0;
                do
                {
                  v51 = *v46;
                  v46 += 2;
                  memcpy((v51 + 4 * v44), (*(this + 170) + 4 * (*(this + 334) * v50++)), 4 * (v42 - v44));
                }

                while (v50 < *(this + 335));
              }
            }
          }

          *(this + 336) -= v42;
          v52 = *(this + 337) + v42;
          *(this + 337) = v52;
          v53 = *(this + 334);
          v35 = v52 >= v53;
          v54 = v52 - v53;
          v12 = v202;
          if (v35)
          {
            *(this + 337) = v54;
          }
        }
      }

      if ((*(this + 1864) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      (*(*this + 200))(this, this + 1800);
      if ((v12[3873] & 1) == 0)
      {
        if ((*(this + 1864) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v55 = *(this + 1994);
        v56 = *(this + 137);
        v57 = *(this + 129);
        if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_51);
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
        {
          AudioDataAnalysisManagerLibraryLoader(void)::libSym(v55, 42, v56, v57, this + 1800);
        }
      }

      if ((*(this + 1864) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v58 = *(this + 250);
      v59 = *(this + 129);
      if (v58)
      {
        v60 = *(this + 138);
        NumberOfOutputFrames = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v58, *(this + 129));
        VoiceProcessor::SampleRateConverter::Convert(*(this + 250), this + 129, &NumberOfOutputFrames, *(this + 137), *(this + 138));
        v59 = NumberOfOutputFrames;
      }

      else
      {
        v60 = *(this + 137);
        NumberOfOutputFrames = *(this + 129);
      }

      if ((v12[3593] & 1) != 0 || v12[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x2Fu, v59, v60, v10);
      }

      (*(*this + 208))(this, v60, this + 1800, v59);
      if (v60->mNumberBuffers == *(this + 307))
      {
        v61 = 0;
        if (v59)
        {
          v62 = *(this + 306);
          v63 = v62 - *(this + 308);
          if (v63)
          {
            if (v63 >= v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v62 - *(this + 308);
            }

            v64 = v62 - *(this + 310);
            if (v64 >= v61)
            {
              v65 = v61;
            }

            else
            {
              v65 = v64;
            }

            if (v60->mNumberBuffers)
            {
              v66 = 0;
              p_mData = &v60->mBuffers[0].mData;
              v68 = &v60->mBuffers[0].mData;
              do
              {
                v69 = *v68;
                v68 += 2;
                memcpy((*(this + 156) + 4 * (*(this + 310) + *(this + 306) * v66++)), v69, 4 * v65);
                v70 = *(this + 307);
              }

              while (v66 < v70);
              v10 = p_mSampleTime;
              if (v64 < v61)
              {
                if (v70)
                {
                  v71 = 0;
                  do
                  {
                    v72 = *p_mData;
                    p_mData += 2;
                    memcpy((*(this + 156) + 4 * (*(this + 306) * v71++)), &v72[4 * v65], 4 * (v61 - v65));
                  }

                  while (v71 < *(this + 307));
                }
              }
            }

            *(this + 308) += v61;
            v73 = *(this + 310) + v61;
            *(this + 310) = v73;
            v74 = *(this + 306);
            v35 = v73 >= v74;
            v75 = v73 - v74;
            if (v35)
            {
              *(this + 310) = v75;
            }

            v12 = v202;
          }
        }
      }

      else
      {
        v61 = 0;
      }

      if (v61 != v59)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v76 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v77 = (*v76 ? *v76 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            buf.mNumberBuffers = 136315906;
            *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 411;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v59;
            v206 = 1024;
            LODWORD(v207) = v61;
            _os_log_impl(&dword_2724B4000, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> mNewOutRingBuff has encountered an overrun: tried to write %u but only had space for %u samples", &buf, 0x1Eu);
          }
        }

        v78 = *(this + 1588);
        if (v78 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v78, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 411, "Process", "mNewOutRingBuff has encountered an overrun: tried to write %u but only had space for %u samples", v59, v61);
        }
      }

      v20 = *(this + 129);
      *(this + 225) = *(this + 225) + v20;
      *(this + 2089) = *(this + 2088);
    }

    while (*(this + 336) >= v20);
    v16 = *(this + 215);
  }

  v88 = *(this + 236);
  v89 = *(this + 235);
  v90 = *(this + 234) * *(this + 126) * v88 / v89;
  v91 = *(this + 237);
  *(this + 237) = v90;
  *(this + 236) = ++v88;
  v92 = v88 > v89;
  v93 = v88 - v89;
  if (v92)
  {
    *(this + 236) = v93;
    *(this + 237) = 0;
  }

  v94 = (v90 - v91);
  *(this + 476) = v94;
  v95 = *(this + 158);
  v96 = *v95;
  if (v94)
  {
    v97 = v96 == *(this + 307);
  }

  else
  {
    v97 = 0;
  }

  if (v97 && (v98 = *(this + 308)) != 0)
  {
    if (v98 >= v94)
    {
      v99 = v94;
    }

    else
    {
      v99 = *(this + 308);
    }

    v100 = *(this + 306) - *(this + 309);
    if (v100 >= v99)
    {
      v101 = v99;
    }

    else
    {
      v101 = v100;
    }

    if (v96)
    {
      v102 = 0;
      v103 = (v95 + 4);
      do
      {
        v104 = *v103;
        v103 += 2;
        memcpy(v104, (*(this + 156) + 4 * (*(this + 309) + *(this + 306) * v102++)), 4 * v101);
        v105 = *(this + 307);
      }

      while (v102 < v105);
      v10 = p_mSampleTime;
      if (v100 < v99)
      {
        if (v105)
        {
          v106 = 0;
          v107 = (v95 + 4);
          do
          {
            v108 = *v107;
            v107 += 2;
            memcpy((v108 + 4 * v101), (*(this + 156) + 4 * (*(this + 306) * v106++)), 4 * (v99 - v101));
          }

          while (v106 < *(this + 307));
        }
      }
    }

    *(this + 308) -= v99;
    v109 = *(this + 309) + v99;
    *(this + 309) = v109;
    v110 = *(this + 306);
    v35 = v109 >= v110;
    v111 = v109 - v110;
    v12 = v202;
    if (v35)
    {
      *(this + 309) = v111;
    }
  }

  else
  {
    v99 = 0;
  }

  if (v99 != v94)
  {
    VoiceProcessorV2::LogIOError(this, 21.0, *(this + 3148), v94, v99, "process: ERROR output buffer has encountered an underrun");
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v112 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v113 = (*v112 ? *v112 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315906;
        *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 666;
        WORD1(buf.mBuffers[0].mData) = 1024;
        HIDWORD(buf.mBuffers[0].mData) = v94;
        v206 = 1024;
        LODWORD(v207) = v99;
        _os_log_impl(&dword_2724B4000, v113, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> process: ERROR output buffer has encountered an underrun, need %d, have %d samples", &buf, 0x1Eu);
      }
    }

    v114 = *(this + 1588);
    if (v114 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v114, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 666, "HandleUplinkOutputTimeStamps", "process: ERROR output buffer has encountered an underrun, need %d, have %d samples", v94, v99);
    }
  }

  if (v12[3593] == 1)
  {
    v115 = *(this + 158);
    NumberOfOutputFrames = v94;
    if (v12[3440] == 1)
    {
      v116 = *(this + 1967);
      if (v116)
      {
        v117 = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v116, v94);
      }

      else
      {
        v117 = v94;
        if (*(this + 91) == *(this + 245))
        {
          v203 = v94;
          if (*v115 == *(this + 3941))
          {
            v118 = 0;
            if (v94)
            {
              v119 = *(this + 3940);
              v117 = v94;
              v120 = v119 - *(this + 3942);
              if (v120)
              {
                if (v120 >= v94)
                {
                  v118 = v94;
                }

                else
                {
                  v118 = v119 - *(this + 3942);
                }

                v121 = v119 - *(this + 3944);
                if (v121 >= v118)
                {
                  v122 = v118;
                }

                else
                {
                  v122 = v121;
                }

                if (*v115)
                {
                  v123 = 0;
                  v124 = (v115 + 16);
                  do
                  {
                    v125 = *v124;
                    v124 += 2;
                    memcpy((*(this + 1973) + 4 * (*(this + 3944) + *(this + 3940) * v123++)), v125, 4 * v122);
                    v126 = *(this + 3941);
                  }

                  while (v123 < v126);
                  if (v121 < v118 && v126)
                  {
                    v127 = 0;
                    v128 = (v115 + 16);
                    do
                    {
                      v129 = *v128;
                      v128 += 2;
                      memcpy((*(this + 1973) + 4 * (*(this + 3940) * v127++)), (v129 + 4 * v122), 4 * (v118 - v122));
                    }

                    while (v127 < *(this + 3941));
                  }
                }

                *(this + 3942) += v118;
                v130 = *(this + 3944) + v118;
                *(this + 3944) = v130;
                v131 = *(this + 3940);
                v35 = v130 >= v131;
                v132 = v130 - v131;
                if (v35)
                {
                  *(this + 3944) = v132;
                }

                v117 = v94;
                v12 = v202;
              }

              goto LABEL_233;
            }
          }

          else
          {
            v118 = 0;
          }

          v117 = v94;
          goto LABEL_233;
        }
      }

      v203 = v117;
      if (v117 <= *(this + 3936) && (v133 = *(this + 1969)) != 0)
      {
        v134 = *(this + 1967);
        if (v134)
        {
          *&buf.mNumberBuffers = 1;
          buf.mBuffers[0] = *(v115 + 8);
          VoiceProcessor::SampleRateConverter::Convert(v134, &NumberOfOutputFrames, &v203, &buf, v133);
          v117 = v203;
        }

        else
        {
          memcpy(*(v133 + 16), *(v115 + 16), 4 * v117);
        }

        v140 = *(this + 1969);
        LODWORD(v141) = *v140;
        if (*v140 >= 2u)
        {
          v142 = 1;
          v143 = 4;
          do
          {
            memcpy(v140[v143], v140[2], 4 * v117);
            ++v142;
            v140 = *(this + 1969);
            v141 = *v140;
            v143 += 2;
          }

          while (v142 < v141);
          v12 = v202;
        }

        if (v141 == *(this + 3941))
        {
          v118 = 0;
          if (v117)
          {
            v144 = *(this + 3940);
            v145 = v144 - *(this + 3942);
            if (v145)
            {
              if (v145 >= v117)
              {
                v118 = v117;
              }

              else
              {
                v118 = v144 - *(this + 3942);
              }

              v146 = v144 - *(this + 3944);
              if (v146 >= v118)
              {
                v147 = v118;
              }

              else
              {
                v147 = v146;
              }

              if (v141)
              {
                v148 = 0;
                v196 = v147;
                v149 = 4 * v147;
                v150 = v140 + 2;
                do
                {
                  v151 = *v150;
                  v150 += 2;
                  memcpy((*(this + 1973) + 4 * (*(this + 3944) + *(this + 3940) * v148++)), v151, v149);
                  v152 = *(this + 3941);
                }

                while (v148 < v152);
                if (v146 < v118 && v152)
                {
                  v153 = 0;
                  v154 = (v140 + 2);
                  do
                  {
                    v155 = *v154;
                    v154 += 2;
                    memcpy((*(this + 1973) + 4 * (*(this + 3940) * v153++)), (v155 + 4 * v196), 4 * (v118 - v196));
                  }

                  while (v153 < *(this + 3941));
                }
              }

              *(this + 3942) += v118;
              v156 = *(this + 3944) + v118;
              *(this + 3944) = v156;
              v157 = *(this + 3940);
              v35 = v156 >= v157;
              v158 = v156 - v157;
              v12 = v202;
              if (v35)
              {
                *(this + 3944) = v158;
              }
            }
          }

          goto LABEL_233;
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v135 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v136 = (*v135 ? *v135 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            v137 = *(this + 1969);
            v138 = *(this + 3936);
            buf.mNumberBuffers = 136316162;
            *(&buf.mNumberBuffers + 1) = "vpDebug_Loopback.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 75;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v117;
            v206 = 2048;
            v207 = v137;
            v208 = 1024;
            v209 = v138;
            _os_log_impl(&dword_2724B4000, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> loopbackwrite: ERROR can't write %d frames to loopbackABL ABL=%p, capacity=%d", &buf, 0x28u);
          }
        }

        v139 = *(this + 1588);
        if (v139 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v139, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 75, "LoopBackWrite", "loopbackwrite: ERROR can't write %d frames to loopbackABL ABL=%p, capacity=%d", v117, *(this + 1969), *(this + 3936));
        }
      }

      v118 = 0;
LABEL_233:
      if (v118 != v117)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v159 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v160 = (*v159 ? *v159 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
          {
            buf.mNumberBuffers = 136315906;
            *(&buf.mNumberBuffers + 1) = "vpDebug_Loopback.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 84;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v118;
            v206 = 1024;
            LODWORD(v207) = v117;
            _os_log_impl(&dword_2724B4000, v160, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> loopbackwrite ERROR wrote %d (requested %d) frames", &buf, 0x1Eu);
          }
        }

        v161 = *(this + 1588);
        if (v161 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v161, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 84, "LoopBackWrite", "loopbackwrite ERROR wrote %d (requested %d) frames", v118, v117);
        }
      }
    }
  }

  v162 = a4;
  if ((*(this + 254) * v94) > a4->mBuffers[0].mDataByteSize)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v163 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v164 = (*v163 ? *v163 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        mDataByteSize = a4->mBuffers[0].mDataByteSize;
        v166 = *(this + 254) * v94;
        buf.mNumberBuffers = 136315906;
        *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 675;
        WORD1(buf.mBuffers[0].mData) = 1024;
        HIDWORD(buf.mBuffers[0].mData) = mDataByteSize;
        v206 = 1024;
        LODWORD(v207) = v166;
        _os_log_impl(&dword_2724B4000, v164, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESS - ioOutData buffer (%d bytes) smaller than what VP is configured to output (%d bytes)!\n", &buf, 0x1Eu);
      }
    }

    v167 = *(this + 1588);
    if (v167 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v167, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 675, "HandleUplinkOutputTimeStamps", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESS - ioOutData buffer (%d bytes) smaller than what VP is configured to output (%d bytes)!\n", a4->mBuffers[0].mDataByteSize, *(this + 254) * v94);
    }

    v162 = a4;
    LODWORD(v94) = a4->mBuffers[0].mDataByteSize / *(this + 254);
  }

  memcpy(v162->mBuffers[0].mData, *(*(this + 158) + 16), 4 * v94);
  *a6 = v94;
  v162->mBuffers[0].mDataByteSize = *(this + 252) * v94;
  v168 = *a6;
  if (v12[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 9, v168, v162), v168 = *a6, (v12[3593] & 1) != 0) || v12[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x31u, v168, a4, v10);
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (v16 > 0.0)
  {
    v169 = *(this + 124) * v16 / *(this + 79);
    v170 = vcvtmd_u64_f64(v169);
    v171 = v169 - v170 + *(this + 480);
    if (v171 > 1.0)
    {
      v171 = v171 + -1.0;
      ++v170;
    }

    *(this + 480) = v171;
    *(this + 217) = *(this + 217) + v170;
  }

  v172 = *&v10->mSampleTime;
  v173 = *&v10->mRateScalar;
  v174 = *&v10->mSMPTETime.mHours;
  *&a5->mSMPTETime.mSubframes = *&v10->mSMPTETime.mSubframes;
  *&a5->mSMPTETime.mHours = v174;
  *&a5->mSampleTime = v172;
  *&a5->mRateScalar = v173;
  *&v172 = *(this + 217);
  *&a5->mSampleTime = v172;
  a5->mFlags |= 1u;
  *(this + 217) = *&v172 + v94;
  v175 = *(this + 1992);
  v176 = *(this + 2088);
  v177 = *a6;
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v175, 49, v176, a4, v177, this + 1736);
  }

  *(this + 130) = *(this + 129);
  *(this + 88) = *(this + 83);
  v178 = *(this + 648);
  *(this + 42) = *(this + 632);
  *(this + 43) = v178;
  v179 = *(this + 53);
  *(this + 872) = *(this + 52);
  *(this + 888) = v179;
  *(this + 113) = *(this + 108);
  *(this + 21) = *(this + 20);
  if (*(this + 1280) & 1) != 0 || (v180 = FadeInOverFewFrames(*(this + 159), a4, *(this + 321), *(this + 322)), *(this + 1280) = v180, *(this + 321) = HIDWORD(v180), (v180))
  {
    v181 = *(this + 159);
    v182 = a4->mNumberBuffers >= *v181 ? *v181 : a4->mNumberBuffers;
    if (v182)
    {
      v183 = &a4->mBuffers[0].mData;
      v184 = (v181 + 4);
      do
      {
        v185 = *(v183 - 1);
        v186 = *(v184 - 1);
        if (v185 >= v186)
        {
          v187 = v186;
        }

        else
        {
          v187 = v185;
        }

        memcpy(*v184, *v183, v187);
        v183 += 2;
        v184 += 2;
        --v182;
      }

      while (v182);
    }
  }

  if (v202[3593] == 1 && *(this + 1589))
  {
    v188 = mach_absolute_time() * 0.0000000416666667;
    v189 = *(this + 1589);
    if (VPTimestampLogScope(void)::once != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v189, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 448, "Process", "UL %f %f %f", *p_mSampleTime, *(this + 1982), v188 - *(this + 1982));
    v190 = *(this + 1982);
    v191 = *(this + 129);
    v192 = *(this + 104);
    if (v188 - v190 >= v191 / v192)
    {
      v193 = *(this + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v193, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 451, "Process", "UL ERROR, processing slower than RT - %f", v188 - *(this + 1982));
      v190 = *(this + 1982);
      v191 = *(this + 129);
      v192 = *(this + 104);
    }

    if (v190 - *(this + 1983) > (*(this + 295) + v191) / v192)
    {
      v194 = *(this + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v194, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 454, "Process", "UL ERROR, not being called in a timely manner - %f", *(this + 1982) - *(this + 1983));
      v190 = *(this + 1982);
    }

    *(this + 1983) = v190;
  }

LABEL_304:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return 0;
}

void sub_272560E60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke_3333()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    v1 = v0;
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }
}

void VoiceProcessorV2::PostSRCMicClipDetection(VoiceProcessorV2 *this)
{
  v2 = *(this + 129);
  v3 = *(this + 178);
  v4 = *v3;
  if (v2)
  {
    v5 = v4 == *(this + 363);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(this + 364);
    if (v6)
    {
      if (v6 >= v2)
      {
        v7 = *(this + 129);
      }

      else
      {
        v7 = *(this + 364);
      }

      v8 = *(this + 362) - *(this + 365);
      if (v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      if (v4)
      {
        v10 = 0;
        v11 = (v3 + 4);
        do
        {
          v12 = *v11;
          v11 += 2;
          memcpy(v12, (*(this + 184) + 4 * (*(this + 365) + *(this + 362) * v10++)), 4 * v9);
          v13 = *(this + 363);
        }

        while (v10 < v13);
        if (v8 < v7 && v13)
        {
          v14 = 0;
          v15 = (v3 + 4);
          do
          {
            v16 = *v15;
            v15 += 2;
            memcpy((v16 + 4 * v9), (*(this + 184) + 4 * (*(this + 362) * v14++)), 4 * (v7 - v9));
          }

          while (v14 < *(this + 363));
        }
      }

      *(this + 364) -= v7;
      v17 = *(this + 365) + v7;
      *(this + 365) = v17;
      v18 = *(this + 362);
      v19 = v17 >= v18;
      v20 = v17 - v18;
      if (v19)
      {
        *(this + 365) = v20;
      }
    }
  }

  if (**(this + 136))
  {
    v21 = 0;
    v22 = 16;
    do
    {
      __C = 0.0;
      vDSP_maxmgv(*(*(this + 178) + v22), 1, &__C, *(this + 129));
      v23 = __C <= 0.00000001;
      *(*(this + 177) + v21) = __C > 0.00000001;
      if (!v23)
      {
        ++*(this + 373);
      }

      ++v21;
      v22 += 16;
    }

    while (v21 < **(this + 136));
  }
}

uint64_t VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(uint64_t this)
{
  v1 = *(this + 1088);
  v2 = *v1;
  if (v2)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = 0;
      v6 = v4++;
      if (v4 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4;
      }

      v8 = 1;
      do
      {
        if ((*(v3 + 456) >> v5))
        {
          if (v8 == v7)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        ++v5;
      }

      while (v5 != 32);
      v5 = 33;
LABEL_12:
      v9 = *(v3 + 4392);
      v10 = *(v3 + 2104);
      if (v5 < (*(v3 + 2112) - v10) >> 2)
      {
        v9 = v9 + *(v10 + 4 * v5);
      }

      if (v9 != 0.0)
      {
        v11 = __exp10f(v9 / 20.0);
        this = MEMORY[0x2743CCE20](*&v1[4 * v6 + 4], 1, &v11, *&v1[4 * v6 + 4], 1, *(v3 + 516));
        v1 = *(v3 + 1088);
        v2 = *v1;
      }
    }

    while (v4 < v2);
  }

  return this;
}

uint64_t VoiceProcessorV2::PreflightUplink(atomic_uint *this, unsigned int a2, unsigned int *a3)
{
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    if (this[121])
    {
      VoiceProcessorV2::LogIOError(this, 31.006, this[3148], this[3149], 0.0, "preflight uplink: tryer acquire failed", a3);
      goto LABEL_16;
    }

LABEL_15:
    VoiceProcessorV2::LogIOError(this, 31.005, this[3148], this[3149], 0.0, "preflight uplink: not ok to process?!", a3);
LABEL_16:
    CADeprecated::CAMutex::Lock((this + 648));
    ++this[3148];
    CADeprecated::CAMutex::Unlock((this + 648));
    v14 = 1937006964;
    if (this[3148] == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 1);
    }

    goto LABEL_20;
  }

  if ((this[121] & 1) == 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 235);
    v7 = *(this + 237);
    v8 = *(this + 236);
    v9 = this[126];
    do
    {
      v10 = v8 * *(this + 234) * v9 / v6;
      v11 = v8 + 1;
      if (v11 <= v6)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(this + 235);
      }

      v13 = v10 - v7;
      if (v11 > v6)
      {
        LODWORD(v10) = 0;
      }

      v8 = v11 - v12;
      ++v5;
      v4 += v13;
      LODWORD(v7) = v10;
    }

    while (v4 < a2);
  }

  else
  {
    v5 = 0;
    LODWORD(v9) = this[126];
  }

  v14 = 0;
  *a3 = v9 * v5;
LABEL_20:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v14;
}

uint64_t VoiceProcessorV2::DetectVoiceActivity(uint64_t this, const AudioTimeStamp *a2)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  if ((*(this + 4695) & 0x20) != 0)
  {
    v2 = this;
    if ((*(this + 4711) & 0x20) != 0)
    {
      this = *(this + 3280);
      if (this)
      {
        if ((*(v2 + 2089) & 1) == 0 && *(v2 + 2088) == 1)
        {
          AudioUnitReset(this, 0, 0);
          this = *(v2 + 3280);
        }

        v4 = *&a2->mRateScalar;
        *&inTimeStamp.mSampleTime = *&a2->mSampleTime;
        *&inTimeStamp.mRateScalar = v4;
        v5 = *&a2->mSMPTETime.mHours;
        *&inTimeStamp.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inTimeStamp.mSMPTETime.mHours = v5;
        ioActionFlags = 512;
        v6 = *(v2 + 1096);
        ioOutputBufferLists = *(v2 + 16440);
        inInputBufferLists[0] = v6;
        this = AudioUnitProcessMultiple(this, &ioActionFlags, &inTimeStamp, *(v2 + 516), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
        outValue = 0.0;
        v7 = 0.0;
        if (!this)
        {
          this = AudioUnitGetParameter(*(v2 + 3280), 0x73707062u, 0, 0, &outValue);
          v7 = outValue;
        }

        if (v7 != *(v2 + 16432) && *(v2 + 2088) == 1)
        {
          if (*(v2 + 16424))
          {
            this = kdebug_trace();
            v8 = *(v2 + 16200);
            if (v8)
            {
              if (!*MEMORY[0x277D7F098])
              {
                __break(1u);
              }

              v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
              *(v9 + 16) = 0;
              *(v9 + 24) = v2;
              *(v9 + 32) = v7 != 1.0;
              *v9 = &unk_2881B2208;
              *(v9 + 8) = 0;
              this = caulk::concurrent::messenger::enqueue(v8, v9);
            }
          }
        }

        *(v2 + 16432) = outValue;
      }
    }
  }

  return this;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<VoiceProcessorV2::DetectVoiceActivity(AudioTimeStamp const&)::$_0>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v2 = *(a1 + 24);
  (*(*(v2 + 16424) + 16))();
  kdebug_trace();
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v3 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "ended";
      v6 = *(a1 + 32);
      v12 = "vpProcessUplink_v2.cpp";
      *buf = 136315650;
      if (!v6)
      {
        v5 = "started";
      }

      v13 = 1024;
      v14 = 852;
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> speech activity event %s", buf, 0x1Cu);
    }
  }

  v7 = *(v2 + 12704);
  if (v7 && ((*(v2 + 15881) & 1) != 0 || *(v2 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (*(a1 + 32))
    {
      v8 = "ended";
    }

    else
    {
      v8 = "started";
    }

    CALegacyLog::log(v7, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 852, "operator()", "speech activity event %s", v8);
  }

  return _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&v10);
}

void sub_2725619EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::rt_message_call<VoiceProcessorV2::DetectVoiceActivity(AudioTimeStamp const&)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV3::RunUplinkEchoDSP(void **this, AudioTimeStamp *a2)
{
  v3 = this;
  v153 = *MEMORY[0x277D85DE8];
  v4 = *this[136];
  if (v4)
  {
    bzero(this[177], v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1)
  {
    this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), v3[135]);
    LOBYTE(v5) = *(v3 + 15881);
    if (v5)
    {
      this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), v3[136]);
      LOBYTE(v5) = *(v3 + 15881);
      if (v5)
      {
        if (v3[1985])
        {
LABEL_13:
          bzero(*(v3[135] + 2), *(v3[135] + 3));
          LOBYTE(v5) = *(v3 + 15881);
          goto LABEL_14;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  if (*(v3 + 15883) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v6 = v3 + 129;
  v7 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v7, v3[135], a2);
    v7 = *(v3 + 129);
    v8 = v3[136];
    if (*(v3 + 15881))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = v3[136];
  }

  if ((*(v3 + 15882) & 1) == 0)
  {
    v9 = v3[178];
    goto LABEL_23;
  }

LABEL_20:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v7, v8, a2);
  v7 = *(v3 + 129);
  v9 = v3[178];
  if (*(v3 + 15881))
  {
    goto LABEL_24;
  }

LABEL_23:
  if (*(v3 + 15882) == 1)
  {
LABEL_24:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v7, v9, a2);
  }

  outValue = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (v3[60] & 1) == 0 && (v3[586] || (v3[587] & 0x7F) != 0))
  {
    v143 = 0;
    ioOutputBufferLists = 1;
    v152 = 0uLL;
    v152 = *(v3[135] + 8);
    MEMORY[0x28223BE20](this);
    v24 = (&v136 - ((v23 + 15) & 0x3FFFFFFFF0));
    v25 = v3[136];
    if (*v25)
    {
      v26 = 0;
      v27 = 2;
      v28 = v24;
      do
      {
        *&v28->mNumberBuffers = 0;
        *&v28->mBuffers[0].mNumberChannels = 0;
        v28->mBuffers[0].mData = 0;
        v28->mNumberBuffers = v22;
        v28->mBuffers[0] = *&v25[v27];
        ++v26;
        v27 += 4;
        ++v28;
      }

      while (v26 < *v25);
    }

    v29 = v3[586];
    if ((v29 & 2) != 0 && (v3[588] & 2) != 0)
    {
      v21 = v3[350];
      if (v21)
      {
        v143 = 512;
        AudioUnitProcess(v21, &v143, a2, *v6, v24);
        v35 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v35, v24, a2);
        }

        v21 = CADeprecated::CABufferList::CopyDataFrom(v3[139], v24, v35, v30, v31, v32, v33, v34, v136);
        v29 = v3[586];
      }
    }

    if ((v29 & 4) != 0 && (v3[588] & 4) != 0)
    {
      v21 = v3[351];
      if (v21)
      {
        v143 = 512;
        AudioUnitProcess(v21, &v143, a2, *v6, v24 + 1);
        v41 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v41, v24 + 1, a2);
        }

        v21 = CADeprecated::CABufferList::CopyDataFrom(v3[140], v24 + 1, v41, v36, v37, v38, v39, v40, v136);
        v29 = v3[586];
      }
    }

    if ((v29 & 8) != 0 && (v3[588] & 8) != 0)
    {
      v21 = v3[352];
      if (v21)
      {
        v143 = 512;
        AudioUnitProcess(v21, &v143, a2, *v6, v24 + 2);
        v47 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v47, v24 + 2, a2);
        }

        v21 = CADeprecated::CABufferList::CopyDataFrom(v3[141], v24 + 2, v47, v42, v43, v44, v45, v46, v136);
      }
    }

    *&ioActionFlags.mBuffers[0].mNumberChannels = 0;
    ioActionFlags.mBuffers[0].mData = 0;
    ioData.mBuffers[0].mData = 0;
    *&ioActionFlags.mNumberBuffers = 1;
    *&ioData.mNumberBuffers = 1;
    *&ioData.mBuffers[0].mNumberChannels = 0;
    v48 = v3[136];
    if (*v48 < 3u)
    {
      v49 = 0;
      ioActionFlags.mBuffers[0] = *(v48 + 8);
      if (*v48 < 2u)
      {
        v52 = 0;
        goto LABEL_93;
      }

      v50 = 1;
      v51 = 24;
    }

    else
    {
      ioActionFlags.mBuffers[0] = *(v48 + 24);
      v49 = 1;
      v50 = 2;
      v51 = 40;
    }

    v52 = v49;
    ioData.mBuffers[0] = *&v48[v51];
    v49 = v50;
LABEL_93:
    v53 = v3[586];
    if ((v53 & 0x20) != 0 && (v3[588] & 0x20) != 0)
    {
      v21 = v3[354];
      if (v21)
      {
        v143 = 512;
        *buf = &ioActionFlags;
        v150.realp = &ioActionFlags;
        v21 = AudioUnitProcessMultiple(v21, &v143, a2, *v6, 1u, buf, 1u, &v150);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v21 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *v6, &ioActionFlags, a2);
        }

        v53 = v3[586];
      }
    }

    if ((v53 & 0x80) != 0 && (v3[588] & 0x80) != 0)
    {
      v21 = v3[356];
      if (v21)
      {
        v143 = 512;
        v21 = AudioUnitProcess(v21, &v143, a2, *v6, &ioActionFlags);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v21 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *v6, &ioActionFlags, a2);
        }
      }
    }

    if (*(v3 + 4689) & 1) != 0 && (*(v3 + 4705))
    {
      v21 = v3[357];
      if (v21)
      {
        v143 = 512;
        v21 = AudioUnitProcess(v21, &v143, a2, *v6, &ioData);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v21 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *v6, &ioData, a2);
        }
      }
    }

    if ((*(v3 + 4689) & 0x20) == 0 || (*(v3 + 4705) & 0x20) == 0 || !v3[362])
    {
      v58 = 0;
      while (((*(v3 + 118) >> v58) & 1) == 0)
      {
        if (++v58 == 32)
        {
          v58 = 33;
          break;
        }
      }

      v59 = v3[136];
      if (v58 >= *v59)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v62 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v63 = (*v62 ? *v62 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = *v3[136];
            *buf = 136315906;
            *&buf[4] = "vpProcessUplink_v3.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            *&buf[18] = 1024;
            *&buf[20] = v58;
            LOWORD(v148) = 1024;
            *(&v148 + 2) = v64;
            _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", buf, 0x1Eu);
          }
        }

        v65 = v3[1588];
        if (v65 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v65, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v3.cpp", 255, "RunUplinkEchoDSP", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v58, *v3[136]);
        }

        v60 = *(v3[137] + 2);
        v61 = v3[136];
      }

      else
      {
        v60 = *(v3[137] + 2);
        v61 = &v59[4 * v58];
      }

      Parameter = memcpy(v60, v61[2], *(v61 + 3));
      v67 = 0;
LABEL_144:
      if ((*(v3 + 4689) & 0x40) == 0 || (*(v3 + 4705) & 0x40) == 0 || !v3[363])
      {
        v72 = 0;
LABEL_154:
        v73 = (*(v3[514] + 2) + 4 * *(v3 + 129));
        v150.realp = *(v3[514] + 2);
        v150.imagp = v73;
        VPTimeFreqConverter_Analyze(v3[522], *(&v152 + 1), &v150);
        v75 = v3[586];
        if ((v75 & 0x2000) != 0 && (*(v3 + 4705) & 0x20) != 0 && v3[362])
        {
          v76 = (*(v3[430] + 2) + 4 * *(v3 + 129));
          v150.realp = *(v3[430] + 2);
          v150.imagp = v76;
          VPTimeFreqConverter_Analyze(v3[516], ioActionFlags.mBuffers[0].mData, &v150);
          v77 = (*(v3[508] + 2) + 4 * *(v3 + 129));
          v150.realp = *(v3[508] + 2);
          v150.imagp = v77;
          VPTimeFreqConverter_Analyze(v3[520], *(v3[420] + 2), &v150);
          v75 = v3[586];
        }

        if ((v75 & 0x4000) != 0 && (*(v3 + 4705) & 0x40) != 0 && v3[363])
        {
          v78 = (*(v3[509] + 2) + 4 * *(v3 + 129));
          v150.realp = *(v3[509] + 2);
          v150.imagp = v78;
          VPTimeFreqConverter_Analyze(v3[517], ioData.mBuffers[0].mData, &v150);
          v79 = (*(v3[508] + 4) + 4 * *(v3 + 129));
          v150.realp = *(v3[508] + 4);
          v150.imagp = v79;
          VPTimeFreqConverter_Analyze(v3[521], *(v3[421] + 2), &v150);
          v75 = v3[586];
        }

        if ((v75 & 0x40000000) == 0 || (*(v3 + 4707) & 0x40) == 0 || (v80 = v3[379]) == 0)
        {
          v87 = 0;
          if ((v75 & 0x80000000) == 0)
          {
            goto LABEL_189;
          }

          goto LABEL_176;
        }

        AudioUnitSetProperty(v80, 0x457u, 0, 0, v3 + 2332, 4u);
        if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
        {
          v81 = v3[379];
          if (v3[380])
          {
            v82 = *(v3 + 688);
            goto LABEL_169;
          }
        }

        else
        {
          v81 = v3[379];
        }

        v82 = 2.0;
LABEL_169:
        AudioUnitSetParameter(v81, 0x1Bu, 0, 0, v82, 0);
        if ((*(v3 + 4689) & 0x20) != 0 && (*(v3 + 4705) & 0x20) != 0 && v3[362])
        {
          AudioUnitSetParameter(v3[379], 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
        }

        v83 = v3[139] + 24;
        v84 = v3[140] + 24;
        v85 = *v3[136];
        if (v85 < 3)
        {
          v86 = 0;
        }

        else
        {
          v86 = v3[141] + 24;
        }

        *buf = v3[139] + 24;
        *&buf[8] = v84;
        v90 = v3[135];
        *&buf[16] = v86;
        v148 = v90;
        v149 = *(v3 + 210);
        if (v85 >= 3)
        {
          *buf = v84;
          *&buf[8] = v86;
          *&buf[16] = v83;
        }

        v145 = 0;
        v143 = 512;
        AudioUnitSetParameter(v3[379], 0x2Cu, 0, 0, *(v3 + 1098), 0);
        v87 = 1;
        AudioUnitProcessMultiple(v3[379], &v143, a2, *(v3 + 129), 6u, buf, 1u, &v145);
        if ((v3[586] & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

LABEL_176:
        if ((*(v3 + 4707) & 0x80) != 0 && v3[380])
        {
          memcpy(*(v3[436] + 2 * *(v3 + 1048) + 2), *(v3[430] + 2), 4 * (2 * *(v3 + 129)));
          memcpy(*(v3[436] + 2 * *(v3 + 1049) + 2), *(v3[509] + 2), 4 * (2 * *(v3 + 129)));
          if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
          {
            v88 = 0.0;
          }

          else
          {
            v88 = 1.0;
          }

          AudioUnitSetParameter(v3[380], 0x20u, 0, 0, v88, 0);
          *buf = v3[436];
          v145 = v3[431];
          v143 = 512;
          AudioUnitProcessMultiple(v3[380], &v143, a2, *(v3 + 129), 1u, buf, 1u, &v145);
          ioDataSize = 8 * *(v3 + 129);
          AudioUnitGetProperty(v3[380], 0xE7Au, 0, 0, *(v3[541] + 2), &ioDataSize);
          ioDataSize = 8 * *(v3 + 129);
          AudioUnitGetProperty(v3[380], 0xE79u, 0, 0, *(v3[541] + 4), &ioDataSize);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xAu, *(v3 + 129), v3[431], a2);
          }

          v89 = 1;
LABEL_190:
          v139 = 0;
          VoiceProcessorV2::SignalParamSwitchMix(v3, v89, v87, &v139, v74);
          VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v67, v72, v89, v139);
          memcpy(*(v3[434] + 2), *(v3[508] + 2), *(v3 + 1079));
          v91 = (*(v3 + 4694) & 0x20) != 0 && (*(v3 + 4710) & 0x20) != 0 && v3[402] != 0;
          *&ioDataSize = 0.0;
          v138 = 0.0;
          AudioUnitGetParameter(v3[388], 0x1Du, 0, 0, &ioDataSize);
          v92 = *&ioDataSize < 1.0 && v91;
          if (v91)
          {
            *buf = 1065353216;
            if (*&ioDataSize < 1.0)
            {
              vDSP_vfill(buf, *(v3[505] + 2), 1, *(v3 + 129));
            }

            vDSP_vfill(buf, *(v3[503] + 2), 1, *(v3 + 129));
          }

          else if ((*(v3 + 4692) & 0x80) == 0 || (*(v3 + 4708) & 0x80) == 0 || !v3[388])
          {
            v93 = 0;
            goto LABEL_209;
          }

          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), v3[430], a2);
          }

          v93 = 1;
LABEL_209:
          v94 = v3[586];
          if ((v94 & 0x10000000000) == 0 || (*(v3 + 4709) & 1) == 0 || (v95 = v3[389]) == 0)
          {
LABEL_230:
            if ((v94 & 0x10000000000000) != 0 && (*(v3 + 4710) & 0x10) != 0)
            {
              v100 = v3[401];
              if (v100)
              {
                v101 = v3[503];
                *buf = v3[430];
                *&buf[8] = v101;
                v145 = v3[433];
                v146 = v101;
                v143 = 512;
                AudioUnitProcessMultiple(v100, &v143, a2, *(v3 + 129), 2u, buf, 2u, &v145);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x64u, *(v3 + 129), v3[430], a2);
                }

                v94 = v3[586];
              }
            }

            if ((v94 & 0x20000000000000) != 0 && (*(v3 + 4710) & 0x20) != 0 && (v102 = v3[402]) != 0)
            {
              v103 = v3[503];
              *buf = v3[430];
              *&buf[8] = v103;
              v104 = v3[505];
              v145 = v3[431];
              v146 = v104;
              v143 = 512;
              AudioUnitProcessMultiple(v102, &v143, a2, *(v3 + 129), 2u, buf, 2u, &v145);
              if ((*(v3 + 4694) & 0x10) != 0 && (*(v3 + 4710) & 0x10) != 0 && v3[401])
              {
                vDSP_vmin(*(v3[505] + 2), 1, *(v3[504] + 2), 1, *(v3[505] + 2), 1, *(v3 + 129));
              }

              AudioUnitGetParameter(v3[402], 1u, 0, 0, &outValue);
              if ((v3[587] & 2) != 0 && (v3[589] & 2) != 0 && v3[414])
              {
                AudioUnitGetParameter(v3[402], 2u, 0, 0, &v138);
                AudioUnitSetParameter(v3[414], 0x12u, 0, 0, v138, 0);
              }

              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), v3[431], a2);
              }

              v94 = v3[586];
              v105 = 1;
            }

            else
            {
              v105 = 0;
            }

            if ((v94 & 0x8000000000) == 0)
            {
              goto LABEL_277;
            }

            if ((*(v3 + 4708) & 0x80) == 0 || (v106 = v3[388]) == 0)
            {
LABEL_274:
              if ((*(v3 + 4708) & 0x80) != 0 && v3[388] != 0 && v92)
              {
                v114 = *(v3[505] + 2);
                vDSP_vmin(*(v3[503] + 2), 1, v114, 1, v114, 1, *(v3 + 129));
                v115 = *(v3[430] + 2);
                v116 = *(v3[431] + 2);
                MEMORY[0x2743CCDD0](v115, 1, v114, 1, v116, 1, *(v3 + 129));
                MEMORY[0x2743CCDD0](v115 + 4 * *(v3 + 129) + 4, 1, v114 + 1, 1, v116 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                *(v115 + 4 * *(v3 + 129)) = *(v115 + 4 * *(v3 + 129)) * v114[*(v3 + 129) - 1];
LABEL_281:
                if (((v93 & 1) != 0 || (*(v3 + 4692) & 0x80) != 0 && (*(v3 + 4708) & 0x80) != 0 && v3[388]) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), v3[431], a2);
                }

                if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                {
                  v118 = v3[409];
                  if (v118)
                  {
                    AudioUnitSetParameter(v118, 0, 0, 0, *(v3 + 3153), 0);
                    AudioUnitSetParameter(v3[409], 4u, 0, 0, *(v3 + 1054), 0);
                    AudioUnitSetParameter(v3[409], 0x13u, 0, 0, *(v3 + 1058), 0);
                    AudioUnitSetParameter(v3[409], 3u, 0, 0, outValue, 0);
                    v119 = v3[514];
                    *buf = v3[420];
                    *&buf[8] = v119;
                    v120 = v3[434];
                    *&buf[16] = v3[431];
                    v148 = v120;
                    v121 = v3[505];
                    *&v149 = v3[503];
                    *(&v149 + 1) = v121;
                    v145 = v3[137];
                    v143 = 512;
                    AudioUnitProcessMultiple(v3[409], &v143, a2, *(v3 + 129), 6u, buf, 1u, &v145);
                    v137 = 0.0;
                    AudioUnitGetParameter(v3[409], 1u, 0, 0, &v137);
                    *(v3 + 3154) = v137;
                    if ((v3[587] & 2) != 0 && (v3[589] & 2) != 0 && v3[414])
                    {
                      AudioUnitGetParameter(v3[409], 2u, 0, 0, &outValue);
                      AudioUnitSetParameter(v3[414], 0x23u, 0, 0, outValue, 0);
                    }
                  }
                }

                goto LABEL_295;
              }

LABEL_277:
              if ((*(v3 + 8868) & 0x80) != 0 && (*(v3 + 8876) & 0x80) != 0 && v3[478] != 0 && !v91)
              {
                *buf = 1065353216;
                v117 = *(v3 + 129);
                vDSP_vfill(buf, *(v3[505] + 2), 1, v117);
                memcpy(*(v3[431] + 2), *(v3[430] + 2), 8 * v117);
              }

              goto LABEL_281;
            }

            AudioUnitSetParameter(v106, 6u, 0, 0, *(v3 + 1062), 0);
            AudioUnitSetParameter(v3[388], 7u, 0, 0, *(v3 + 1066), 0);
            AudioUnitSetParameter(v3[388], 0xDu, 0, 0, *(v3 + 1070), 0);
            v107 = v3[434];
            *buf = v3[430];
            *&buf[8] = v107;
            v108 = v3[505];
            if (v92)
            {
              v109 = v3[505];
            }

            else
            {
              v109 = 0;
            }

            *&buf[16] = v3[515];
            v148 = v109;
            if (v92)
            {
              v110 = (v3 + 433);
              v108 = v3[503];
            }

            else
            {
              v110 = (v3 + 431);
            }

            v145 = *v110;
            v146 = v108;
            v143 = 512;
            AudioUnitProcessMultiple(v3[388], &v143, a2, *(v3 + 129), 4u, buf, 2u, &v145);
            if ((v105 & v92 & 1) == 0)
            {
              AudioUnitGetParameter(v3[388], 0x20u, 0, 0, &outValue);
            }

            v111 = *(v3 + 129);
            v112 = 431;
            if (v92)
            {
              v112 = 433;
            }

            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v111, v3[v112], a2);
              v111 = *(v3 + 129);
              v113 = v3[503];
              if (*(v3 + 15881))
              {
LABEL_272:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v111, v113, a2);
LABEL_273:
                if ((*(v3 + 4692) & 0x80) == 0)
                {
                  goto LABEL_277;
                }

                goto LABEL_274;
              }
            }

            else
            {
              v113 = v3[503];
            }

            if (*(v3 + 15882) != 1)
            {
              goto LABEL_273;
            }

            goto LABEL_272;
          }

          AudioUnitSetParameter(v95, 6u, 0, 0, *(v3 + 1063), 0);
          AudioUnitSetParameter(v3[389], 7u, 0, 0, *(v3 + 1067), 0);
          AudioUnitSetParameter(v3[389], 0xDu, 0, 0, *(v3 + 1071), 0);
          memcpy(*(v3[435] + 2), *(v3[508] + 4), *(v3 + 1079));
          v96 = v3[435];
          *buf = v3[509];
          *&buf[8] = v96;
          *&buf[16] = v3[515];
          v148 = 0;
          v97 = v3[504];
          v145 = v3[433];
          v146 = v97;
          v143 = 512;
          AudioUnitProcessMultiple(v3[389], &v143, a2, *(v3 + 129), 4u, buf, 2u, &v145);
          v98 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v98, v3[433], a2);
            v98 = *(v3 + 129);
            v99 = v3[504];
            if (*(v3 + 15881))
            {
              goto LABEL_228;
            }
          }

          else
          {
            v99 = v3[504];
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_229:
            v94 = v3[586];
            goto LABEL_230;
          }

LABEL_228:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v98, v99, a2);
          goto LABEL_229;
        }

LABEL_189:
        v89 = 0;
        goto LABEL_190;
      }

      *buf = &ioData;
      *&buf[8] = &ioOutputBufferLists;
      MEMORY[0x28223BE20](Parameter);
      v68 = v3[421];
      *(&v136 - 4) = v3[137];
      *(&v136 - 3) = v68;
      v135 = v3[426];
      v143 = 512;
      v69 = 0.0;
      if (*(v3[177] + v49))
      {
        v69 = 1.0;
      }

      AudioUnitSetParameter(v3[363], 4u, 0, 0, v69, 0);
      AudioUnitSetParameter(v3[363], 5u, 0, 0, *(v3 + 1100), 0);
      AudioUnitProcessMultiple(v3[363], &v143, a2, *(v3 + 129), 2u, buf, 3u, &v136 - 4);
      v70 = *(v3 + 129);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v70, v3[421], a2);
        v70 = *(v3 + 129);
        v71 = v3[137];
        if (*(v3 + 15881))
        {
          goto LABEL_222;
        }
      }

      else
      {
        v71 = v3[137];
      }

      if (*(v3 + 15882) != 1)
      {
LABEL_223:
        memcpy(ioData.mBuffers[0].mData, v71[2], 4 * v70);
        AudioUnitGetParameter(v3[363], 3u, 0, 0, v3 + 1055);
        AudioUnitGetParameter(v3[363], 8u, 0, 0, v3 + 1059);
        AudioUnitGetParameter(v3[363], 0x21u, 0, 0, v3 + 1063);
        AudioUnitGetParameter(v3[363], 0x22u, 0, 0, v3 + 1067);
        AudioUnitGetParameter(v3[363], 0x25u, 0, 0, v3 + 1071);
        AudioUnitGetParameter(v3[363], 0x24u, 0, 0, v3 + 1075);
        v72 = 1;
        goto LABEL_154;
      }

LABEL_222:
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v70, v71, a2);
      v71 = v3[137];
      LODWORD(v70) = *(v3 + 129);
      goto LABEL_223;
    }

    *buf = &ioActionFlags;
    *&buf[8] = &ioOutputBufferLists;
    MEMORY[0x28223BE20](v21);
    v54 = v3[420];
    *(&v136 - 4) = v3[137];
    *(&v136 - 3) = v54;
    v135 = v3[425];
    v143 = 512;
    v55 = 0.0;
    if (*(v3[177] + v52))
    {
      v55 = 1.0;
    }

    AudioUnitSetParameter(v3[362], 4u, 0, 0, v55, 0);
    AudioUnitSetParameter(v3[362], 5u, 0, 0, *(v3 + 1100), 0);
    AudioUnitProcessMultiple(v3[362], &v143, a2, *(v3 + 129), 2u, buf, 3u, &v136 - 4);
    v56 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v56, v3[420], a2);
      v56 = *(v3 + 129);
      v57 = v3[137];
      if (*(v3 + 15881))
      {
        goto LABEL_218;
      }
    }

    else
    {
      v57 = v3[137];
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_219:
      memcpy(ioActionFlags.mBuffers[0].mData, v57[2], 4 * v56);
      AudioUnitGetParameter(v3[362], 3u, 0, 0, v3 + 1054);
      AudioUnitGetParameter(v3[362], 8u, 0, 0, v3 + 1058);
      AudioUnitGetParameter(v3[362], 0x21u, 0, 0, v3 + 1062);
      AudioUnitGetParameter(v3[362], 0x22u, 0, 0, v3 + 1066);
      AudioUnitGetParameter(v3[362], 0x25u, 0, 0, v3 + 1070);
      Parameter = AudioUnitGetParameter(v3[362], 0x24u, 0, 0, v3 + 1074);
      v67 = 1;
      goto LABEL_144;
    }

LABEL_218:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v56, v57, a2);
    v57 = v3[137];
    LODWORD(v56) = *(v3 + 129);
    goto LABEL_219;
  }

  v10 = 0;
  while (((*(v3 + 118) >> v10) & 1) == 0)
  {
    if (++v10 == 32)
    {
      v10 = 33;
      break;
    }
  }

  v11 = v3[136];
  if (v10 >= *v11)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v3[136];
        *buf = 136315906;
        *&buf[4] = "vpProcessUplink_v3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 49;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        LOWORD(v148) = 1024;
        *(&v148 + 2) = v16;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", buf, 0x1Eu);
      }
    }

    v17 = v3[1588];
    if (v17 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v3.cpp", 49, "RunUplinkEchoDSP", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v10, *v3[136]);
    }

    v12 = *(v3[137] + 2);
    v13 = v3[136];
  }

  else
  {
    v12 = *(v3[137] + 2);
    v13 = &v11[4 * v10];
  }

  memcpy(v12, v13[2], *(v13 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x20) != 0 && (*(v3 + 4710) & 0x20) != 0)
  {
    v18 = v3[402];
    if (v18)
    {
      v19 = v3[503];
      *buf = v3[137];
      *&buf[8] = v19;
      v20 = v3[505];
      ioOutputBufferLists = *buf;
      *&v152 = v20;
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v18, &ioActionFlags.mNumberBuffers, a2, *(v3 + 129), 2u, buf, 2u, &ioOutputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), v3[137], a2);
      }

      if ((v3[587] & 2) != 0 && (v3[589] & 2) != 0 && v3[414])
      {
        AudioUnitGetParameter(v3[402], 1u, 0, 0, &outValue);
        AudioUnitSetParameter(v3[414], 0x23u, 0, 0, outValue, 0);
      }
    }
  }

LABEL_295:
  *buf = 0;
  v122 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v123 = v122;
  if (*(v3 + 2088) == 1)
  {
    if (!((v3[2053] != 0) | v122 & 1))
    {
      goto LABEL_311;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v123 & 1) == 0)
    {
      goto LABEL_311;
    }
  }

  else
  {
    if ((v122 & 1) == 0)
    {
      goto LABEL_311;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v124 = v3[586];
  if ((v124 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v125 = v3[410];
    if (v125)
    {
      v126 = 1936748646;
LABEL_309:
      AudioUnitGetParameter(v125, v126, 0, 0, buf);
      goto LABEL_311;
    }
  }

  if ((v124 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v125 = v3[409];
    if (v125)
    {
      v126 = 2;
      goto LABEL_309;
    }
  }

  *buf = outValue;
LABEL_311:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(v3[137] + 2), 4 * *(v3 + 129));
    *buf = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), v3[137], a2);
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v127 = v3[454];
    if (((v127 != 0) & v123) == 1)
    {
      AudioUnitSetParameter(v127, 0x12u, 0, 0, *buf, 0);
    }
  }

  if ((v3[586] & 0x8000000000000000) != 0 && (v3[588] & 0x8000000000000000) != 0)
  {
    v128 = v3[412];
    if (v128)
    {
      LODWORD(ioOutputBufferLists) = 512;
      AudioUnitProcess(v128, &ioOutputBufferLists, a2, *(v3 + 129), v3[137]);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), v3[137], a2);
      }
    }
  }

  v129 = v3[587];
  if (v129 & 1) != 0 && (v3[589])
  {
    v130 = v3[413];
    if (v130)
    {
      LODWORD(ioOutputBufferLists) = 512;
      AudioUnitProcess(v130, &ioOutputBufferLists, a2, *(v3 + 129), v3[137]);
      v129 = v3[587];
    }
  }

  if ((v129 & 2) != 0 && (v3[589] & 2) != 0 && (v131 = v3[414]) != 0)
  {
    LODWORD(ioOutputBufferLists) = 512;
    AudioUnitProcess(v131, &ioOutputBufferLists, a2, *(v3 + 129), v3[137]);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), v3[137], a2);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && v3[409])
    {
      ioActionFlags.mNumberBuffers = 0;
      AudioUnitGetParameter(v3[414], 1u, 0, 0, &ioActionFlags.mNumberBuffers);
      AudioUnitSetParameter(v3[409], 0x11u, 0, 0, *&ioActionFlags.mNumberBuffers, 0);
    }

    ioActionFlags.mNumberBuffers = 0;
    AudioUnitGetParameter(v3[414], 0x1Bu, 0, 0, &ioActionFlags.mNumberBuffers);
    mNumberBuffers = ioActionFlags.mNumberBuffers;
    if (*(v3 + 577) != *&ioActionFlags.mNumberBuffers)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v133 = v3[409];
        if (v133)
        {
          AudioUnitSetParameter(v133, 0x12u, 0, 0, *&ioActionFlags.mNumberBuffers, 0);
          mNumberBuffers = ioActionFlags.mNumberBuffers;
        }
      }

      *(v3 + 577) = mNumberBuffers;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(ioOutputBufferLists) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(v3[137] + 2), 1, &ioOutputBufferLists, *(v3[137] + 2), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), v3[137], a2);
    }
  }

  return 0;
}

char *CADeprecated::CABufferList::CopyDataFrom(char *this, const AudioBufferList *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, AudioStreamPacketDescription *a9)
{
  if (a2->mNumberBuffers)
  {
    v10 = this;
    v11 = 0;
    p_mData = &a2->mBuffers[0].mData;
    for (i = (this + 40); ; i += 2)
    {
      v14 = *(v10 + 4);
      v15 = *(p_mData - 1);
      if (v14 && v15 > v14)
      {
        break;
      }

      v17 = *i;
      v18 = *p_mData;
      p_mData += 2;
      *(i - 1) = v15;
      this = memcpy(v17, v18, v15);
      if (++v11 >= a2->mNumberBuffers)
      {
        return this;
      }
    }

    v19 = CAAssertRtn();
    return VoiceProcessorV3::Process(v19, v20, v21, v22, v23, v24, v25, v26, a9);
  }

  return this;
}

uint64_t VoiceProcessorV4::RunUplinkHardwareDSP(VoiceProcessorV4 *this, AudioBufferList *a2, AudioTimeStamp *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 625, 1u);
  if (*(this + 624))
  {
    if (*(this + 484))
    {
      VoiceProcessorV2::LogIOError(this, 21.006, *(this + 3148), *(this + 3149), 0.0, "process: tryer acquire failed", a3);
      goto LABEL_5;
    }

LABEL_4:
    VoiceProcessorV2::LogIOError(this, 21.005, *(this + 3148), *(this + 3149), 0.0, "process: not ok to process?!", a3);
LABEL_5:
    CADeprecated::CAMutex::Lock((this + 2592));
    ++*(this + 3148);
    CADeprecated::CAMutex::Unlock((this + 2592));
    v4 = 1937006964;
    if (*(this + 3148) == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 1);
    }

    goto LABEL_94;
  }

  if (!*(this + 484))
  {
    goto LABEL_4;
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v7 = mach_absolute_time() * 0.0000000416666667;
      *(this + 1982) = v7;
      if (*(this + 1983) == 0.0)
      {
        *(this + 1983) = v7;
      }
    }
  }

  *(this + 582) = *(this + 580);
  v8 = atomic_load(this + 581);
  *(this + 580) = v8;
  *(this + 585) = *(this + 583);
  v9 = atomic_load(this + 584);
  *(this + 583) = v9;
  if (*(this + 15881) == 1)
  {
    if (v9 != *(this + 585))
    {
      VoiceProcessorV2::PListWriteSetDeviceOrientationParameters(this, v9);
    }

    v10 = *(this + 580);
    if (v10 != *(this + 582) && *(this + 15881) == 1)
    {
      VoiceProcessorV2::PListWriteSetUIOrientationParameters(this, v10);
    }
  }

  CADeprecated::CAMutex::Lock((this + 2592));
  ++*(this + 3148);
  CADeprecated::CAMutex::Unlock((this + 2592));
  if (*(this + 3148) == 1)
  {
    VoiceProcessorV2::LogNonTransientErrors(this, 1);
  }

  if ((*(this + 15881) & 1) == 0)
  {
    v13 = (this + 656);
    v14 = a2;
    goto LABEL_25;
  }

  *(this + 13016) = 1;
  v12 = *(this + 1915);
  if (v12)
  {
    v13 = (this + 656);
    VoiceProcessorV2::InjectionOrAdditionFilesCopyPreInjectionABL(v12, a2, v11);
    v14 = *(this + 1915);
LABEL_25:
    mDataByteSize = v14->mBuffers[0].mDataByteSize;
    v16 = *v13;
    goto LABEL_26;
  }

  mDataByteSize = a2->mBuffers[0].mDataByteSize;
  v16 = *(this + 164);
LABEL_26:
  v17 = mDataByteSize / v16;
  v53 = 0;
  v4 = VoiceProcessorV2::FrontEndBlockSizeCheck(this, 0, mDataByteSize / v16, *(this + 126), a2, &v53);
  if (v4)
  {
    goto LABEL_94;
  }

  if (*(this + 15881) == 1)
  {
    v19 = *(this + 1915);
    v20 = v53;
    if (v19)
    {
      v21 = v53;
      if (!v53)
      {
        v21 = *(this + 126);
      }

      VoiceProcessorV2::InjectionFilesReadSignal(this, 4, v21, v19);
      v22 = v20;
      if (!v20)
      {
        v22 = *(this + 126);
      }

      v23 = *(this + 1915);
      if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v22, v23, a3);
        v23 = *(this + 1915);
      }

      v24 = v20;
      if (!v20)
      {
        v24 = *(this + 126);
      }

      v25 = *(this + 1992);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        v52 = *(this + 1992);
        v50 = v24;
        v48 = v23;
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3410);
        v25 = v52;
        v23 = v48;
        v24 = v50;
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v20 = v53;
    v26 = v53;
    if (!v53)
    {
      v26 = *(this + 126);
    }

    if (*(this + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v26, a2, a3);
    }

    v24 = v20;
    if (!v20)
    {
      v24 = *(this + 126);
    }

    v25 = *(this + 1992);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      v51 = *(this + 1992);
      v49 = v24;
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3410);
      v25 = v51;
      v24 = v49;
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v23 = a2;
LABEL_53:
      AudioIssueDetectorLibraryLoader(void)::libSym(v25, 1, 0, v23, v24, a3);
      LODWORD(v20) = v53;
    }
  }

  if (v20)
  {
    v27 = *(this + 130);
    if (*v27)
    {
      v28 = 0;
      v29 = 4;
      do
      {
        bzero(*&v27[v29], 4 * v20);
        ++v28;
        v27 = *(this + 130);
        v29 += 4;
      }

      while (v28 < *v27);
    }

    goto LABEL_64;
  }

  v30 = (this + 632);
  if (*(this + 15881) != 1)
  {
    v34 = *(this + 648);
    *buf = *v30;
    *&buf[16] = v34;
    *&buf[32] = *(this + 83);
    v33 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), a2, v17, *(this + 130), 1);
LABEL_63:
    v4 = v33;
    if (v33)
    {
      goto LABEL_94;
    }

    goto LABEL_64;
  }

  v31 = *(this + 1915);
  if (v31)
  {
    v32 = *(this + 648);
    *buf = *v30;
    *&buf[16] = v32;
    *&buf[32] = *(this + 83);
    v33 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), v31, v17, *(this + 130), 1);
    goto LABEL_63;
  }

LABEL_64:
  if ((*(this + 1697) & 1) == 0)
  {
    *(this + 1697) = 1;
    mSampleTime = a3->mSampleTime;
    *(this + 216) = *&a3->mSampleTime;
    *(this + 214) = mSampleTime;
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, 0.0, mSampleTime, 1);
    }

    *(this + 1768) = 0u;
    *(this + 1784) = 0u;
    *(this + 1736) = 0u;
    *(this + 1752) = 0u;
    *(this + 480) = 0;
  }

  v36 = *(this + 214);
  v37 = a3->mSampleTime;
  if (v36 == a3->mSampleTime)
  {
    *(this + 215) = 0;
  }

  else
  {
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, v36, v37, 1);
      v37 = a3->mSampleTime;
      v36 = *(this + 214);
    }

    *(this + 215) = v37 - v36;
    if (v37 < v36)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v38 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(this + 214);
          v41 = a3->mSampleTime;
          mHostTime = a3->mHostTime;
          mRateScalar = a3->mRateScalar;
          mFlags = a3->mFlags;
          *buf = 136316674;
          *&buf[4] = "vpProcessUplink_v4.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 160;
          *&buf[18] = 2048;
          *&buf[20] = v40;
          *&buf[28] = 2048;
          *&buf[30] = v41;
          *&buf[38] = 2048;
          v55 = mHostTime;
          v56 = 2048;
          v57 = mRateScalar;
          v58 = 1024;
          v59 = mFlags;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", buf, 0x40u);
        }
      }

      v45 = *(this + 1588);
      if (v45 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v45, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 160, "RunUplinkHardwareDSP", "mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(this + 214), a3->mSampleTime, a3->mHostTime, a3->mRateScalar, a3->mFlags);
      }

      VoiceProcessorV2::LogIOError(this, 21.008, *(this + 3148), 0.0, 0.0, "mic sample time jumped backwards");
      v37 = a3->mSampleTime;
    }
  }

  LODWORD(v36) = *(this + 126);
  *(this + 214) = v37 + *&v36;
  VoiceProcessorV2::LoadMatchingReferenceForMicSignalAndFillTsMic(this, v18, a3->mSampleTime);
  v46 = *(this + 352);
  *(this + 1412) = v46 != 0.0;
  if (v46 != 0.0)
  {
    VoiceProcessorV2::PreSRCMicClipDetection(this);
  }

  v4 = 0;
LABEL_94:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v4;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3419()
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

uint64_t VoiceProcessorV4::RunUplinkDynamicsDSP(VoiceProcessorV4 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if ((*(this + 4696) & 0x10) != 0 && (*(this + 4712) & 0x10) != 0)
  {
    v7 = *(this + 417);
    if (v7)
    {
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcess(v7, &ioActionFlags.mNumberBuffers, a3, a4, ioData);
      if ((v6[3593] & 1) != 0 || v6[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x30u, a4, ioData, a3);
      }
    }
  }

  if (v6[3593] == 1)
  {
    *outValue = 0;
    v10 = *(this + 586);
    if ((v10 & 0x1000000000000000) != 0 && (*(this + 4711) & 0x10) != 0)
    {
      v11 = *(this + 409);
      if (v11)
      {
        AudioUnitGetParameter(v11, 2u, 0, 0, outValue);
        v10 = *(this + 586);
      }
    }

    if ((v10 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0 && (v12 = *(this + 404)) != 0)
    {
      v13 = 9;
    }

    else
    {
      if ((v10 & 0x40000000000000) == 0 || (*(this + 4710) & 0x40) == 0 || (v12 = *(this + 403)) == 0)
      {
LABEL_21:
        *&ioActionFlags.mNumberBuffers = 1;
        *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
        ioActionFlags.mBuffers[0].mData = outValue;
        if ((v6[3593] & 1) != 0 || v6[3594] == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
        }

        return 0;
      }

      v13 = 2;
    }

    AudioUnitGetParameter(v12, v13, 0, 0, &outValue[1]);
    goto LABEL_21;
  }

  return 0;
}

uint64_t VoiceProcessorV4::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v247 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1)
  {
    this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080));
    LOBYTE(v5) = *(v3 + 15881);
    if (v5)
    {
      this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088));
      LOBYTE(v5) = *(v3 + 15881);
      if (v5)
      {
        if (*(v3 + 15880))
        {
LABEL_13:
          bzero(*(*(v3 + 1080) + 16), *(*(v3 + 1080) + 12));
          LOBYTE(v5) = *(v3 + 15881);
          goto LABEL_14;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  if (*(v3 + 15883) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v6 = (v3 + 516);
  v7 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v7, *(v3 + 1080), a2);
    v7 = *(v3 + 516);
    v8 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *(v3 + 1088);
  }

  if ((*(v3 + 15882) & 1) == 0)
  {
    v9 = *(v3 + 1424);
    goto LABEL_23;
  }

LABEL_20:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v7, v8, a2);
  v7 = *(v3 + 516);
  v9 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_24;
  }

LABEL_23:
  if (*(v3 + 15882) == 1)
  {
LABEL_24:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v7, v9, a2);
  }

  v233 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v23 = *(v3 + 4688);
    if (v23 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v232 = 0;
      *(v3 + 17096) = 0;
      *(v3 + 17112) = 0;
      *(v3 + 17104) = 0;
      *(v3 + 17096) = 1;
      *(v3 + 17104) = *(*(v3 + 1080) + 8);
      if (v23 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 2792);
        if (this)
        {
          v24 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v24;
          v25 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v25;
          v232 = 512;
          this = AudioUnitProcess(this, &v232, &buf, *(v3 + 516), *(v3 + 1088));
        }
      }

      MEMORY[0x28223BE20](this);
      v27 = (&v222 - ((v26 + 15) & 0x3FFFFFFFF0));
      v28 = *(v3 + 1088);
      if (*v28)
      {
        v29 = 0;
        v30 = 2;
        v31 = v27;
        do
        {
          *&v31->mNumberBuffers = 0;
          *&v31->mBuffers[0].mNumberChannels = 0;
          v31->mBuffers[0].mData = 0;
          v31->mNumberBuffers = 1;
          v31->mBuffers[0] = *&v28[v30];
          ++v29;
          v30 += 4;
          ++v31;
        }

        while (v29 < *v28);
      }

      v32 = *(v3 + 4688);
      if ((v32 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v33 = *(v3 + 2800);
        if (v33)
        {
          v34 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v34;
          v35 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v35;
          v232 = 512;
          AudioUnitProcess(v33, &v232, &buf, *v6, v27);
          v41 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v41, v27, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v27, v41, v36, v37, v38, v39, v40, v222);
          v32 = *(v3 + 4688);
        }
      }

      if ((v32 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v42 = *(v3 + 2808);
        if (v42)
        {
          v43 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v43;
          v44 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v44;
          v232 = 512;
          AudioUnitProcess(v42, &v232, &buf, *v6, v27 + 1);
          v50 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v50, v27 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v27 + 1, v50, v45, v46, v47, v48, v49, v222);
          v32 = *(v3 + 4688);
        }
      }

      if ((v32 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v51 = *(v3 + 2816);
        if (v51)
        {
          v52 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v52;
          v53 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v53;
          v232 = 512;
          AudioUnitProcess(v51, &v232, &buf, *v6, v27 + 2);
          v59 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v59, v27 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v27 + 2, v59, v54, v55, v56, v57, v58, v222);
          v32 = *(v3 + 4688);
        }
      }

      if ((v32 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v60 = *(v3 + 2824);
        if (v60)
        {
          v61 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v61;
          v62 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v62;
          v232 = 512;
          AudioUnitProcess(v60, &v232, &buf, *v6, v27 + 3);
          v68 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v68, v27 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v27 + 3, v68, v63, v64, v65, v66, v67, v222);
        }
      }

      v69 = *(v3 + 1088);
      v70 = *v69;
      v224 = &v222;
      if (v70 < 3)
      {
        *(v3 + 16912) = *(v69 + 8);
        v74 = 0;
        v73 = 0;
        if (*v69 < 2u)
        {
          v72 = 0;
          v71 = 0;
        }

        else
        {
          v71 = 0;
          *(v3 + 16936) = *(v69 + 24);
          v72 = 1;
        }
      }

      else
      {
        if (v70 == 3 || *(v3 + 12536) != 2)
        {
          v74 = 0;
          v73 = 0;
          v71 = 1;
          v72 = 2;
        }

        else
        {
          v71 = 0;
          *(v3 + 16960) = *(v69 + 40);
          *(v3 + 16984) = *(v69 + 56);
          v72 = 1;
          v73 = 3;
          v74 = 2;
        }

        v75 = v69 + 8;
        *(v3 + 16912) = *(v75 + 16 * v71);
        *(v3 + 16936) = *(v75 + 16 * v72);
      }

      v223 = v72;
      v76 = *(v3 + 4688);
      if ((v76 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
      {
        v77 = *(v3 + 2848);
        if (v77)
        {
          v78 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v78;
          v79 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v79;
          v232 = 512;
          AudioUnitProcess(v77, &v232, &buf, *(v3 + 516), (v3 + 16904));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
          }

          v76 = *(v3 + 4688);
        }
      }

      if (v76 & 0x100) != 0 && (*(v3 + 4705))
      {
        v80 = *(v3 + 2856);
        if (v80)
        {
          v81 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v81;
          v82 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v82;
          v232 = 512;
          AudioUnitProcess(v80, &v232, &buf, *(v3 + 516), (v3 + 16928));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
          }

          v76 = *(v3 + 4688);
        }
      }

      if ((v76 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
      {
        v83 = *(v3 + 2872);
        if (v83)
        {
          v84 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v84;
          v85 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v85;
          v232 = 512;
          AudioUnitProcess(v83, &v232, &buf, *(v3 + 516), (v3 + 16976));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
          }

          v76 = *(v3 + 4688);
        }
      }

      v231 = 0;
      v86 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v86;
      v87 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v87;
      if ((v76 & 0x2000) != 0 && (*(v3 + 4705) & 0x20) != 0 && *(v3 + 2896))
      {
        v88 = *(v3 + 16880);
        if (*(v3 + 16888) == v88)
        {
          goto LABEL_454;
        }

        ECApplicator::apply(*v88, &buf, v71, &v231, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
        v89 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v89, (v3 + 16904), &buf);
          v89 = *(v3 + 516);
          v90 = *(v3 + 3360);
          if (*(v3 + 15881))
          {
            goto LABEL_168;
          }
        }

        else
        {
          v90 = *(v3 + 3360);
        }

        if (*(v3 + 15882) == 1)
        {
LABEL_168:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v89, v90, &buf);
        }
      }

      else
      {
        v91 = 0;
        while (((*(v3 + 472) >> v91) & 1) == 0)
        {
          if (++v91 == 32)
          {
            v91 = 33;
            break;
          }
        }

        if (v91 >= **(v3 + 1088))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v92 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v93 = (*v92 ? *v92 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              v94 = **(v3 + 1088);
              LODWORD(v245.mSampleTime) = 136315906;
              *(&v245.mSampleTime + 4) = "vpProcessUplink_v4.cpp";
              WORD2(v245.mHostTime) = 1024;
              *(&v245.mHostTime + 6) = 477;
              WORD1(v245.mRateScalar) = 1024;
              HIDWORD(v245.mRateScalar) = v91;
              LOWORD(v245.mWordClockTime) = 1024;
              *(&v245.mWordClockTime + 2) = v94;
              _os_log_impl(&dword_2724B4000, v93, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &v245, 0x1Eu);
            }
          }

          v95 = *(v3 + 12704);
          if (v95 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v95, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 477, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v91, **(v3 + 1088));
          }

          v91 = 0;
        }

        v96 = *(v3 + 1088) + 16 * v91;
        memcpy(*(*(v3 + 1096) + 16), *(v96 + 16), *(v96 + 12));
      }

      v230 = 0;
      if ((*(v3 + 4689) & 0x40) != 0 && (*(v3 + 4705) & 0x40) != 0 && *(v3 + 2904))
      {
        v97 = *(v3 + 16880);
        if ((*(v3 + 16888) - v97) <= 8)
        {
          goto LABEL_454;
        }

        ECApplicator::apply(*(v97 + 8), &buf, v223, &v230, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
        v98 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v98, (v3 + 16928), &buf);
          v98 = *(v3 + 516);
          v99 = *(v3 + 3368);
          if (*(v3 + 15881))
          {
            goto LABEL_171;
          }
        }

        else
        {
          v99 = *(v3 + 3368);
        }

        if (*(v3 + 15882) == 1)
        {
LABEL_171:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v98, v99, &buf);
        }
      }

      v229 = 0;
      if ((*(v3 + 4689) & 0x80) == 0 || (*(v3 + 4705) & 0x80) == 0 || !*(v3 + 2912))
      {
        goto LABEL_183;
      }

      v100 = *(v3 + 16880);
      if ((*(v3 + 16888) - v100) <= 0x10)
      {
        goto LABEL_454;
      }

      ECApplicator::apply(*(v100 + 16), &buf, v74, &v229, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
      v101 = *(v3 + 516);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v101, (v3 + 16952), &buf);
        v101 = *(v3 + 516);
        v102 = *(v3 + 3384);
        if (*(v3 + 15881))
        {
LABEL_182:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v101, v102, &buf);
LABEL_183:
          v228 = 0;
          if ((*(v3 + 4690) & 1) == 0 || (*(v3 + 4706) & 1) == 0 || !*(v3 + 2920))
          {
            goto LABEL_194;
          }

          v103 = *(v3 + 16880);
          if ((*(v3 + 16888) - v103) > 0x18)
          {
            ECApplicator::apply(*(v103 + 24), &buf, v73, &v228, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
            v104 = *(v3 + 516);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v104, (v3 + 16976), &buf);
              v104 = *(v3 + 516);
              v105 = *(v3 + 3376);
              if (*(v3 + 15881))
              {
                goto LABEL_193;
              }
            }

            else
            {
              v105 = *(v3 + 3376);
            }

            if (*(v3 + 15882) == 1)
            {
LABEL_193:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v104, v105, &buf);
            }

LABEL_194:
            v106 = (*(*(v3 + 4112) + 16) + 4 * *(v3 + 516));
            v227.realp = *(*(v3 + 4112) + 16);
            v227.imagp = v106;
            VPTimeFreqConverter_Analyze(*(v3 + 4176), *(v3 + 17112), &v227);
            if ((*(v3 + 4689) & 0x20) != 0 && (*(v3 + 4705) & 0x20) != 0)
            {
              if (*(v3 + 2896))
              {
                v108 = (*(*(v3 + 3440) + 16) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 3440) + 16);
                v227.imagp = v108;
                VPTimeFreqConverter_Analyze(*(v3 + 4128), *(v3 + 16920), &v227);
                v109 = (*(*(v3 + 4064) + 16) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 4064) + 16);
                v227.imagp = v109;
                VPTimeFreqConverter_Analyze(*(v3 + 4160), *(*(v3 + 3360) + 16), &v227);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
                }
              }
            }

            if ((*(v3 + 4689) & 0x40) != 0 && (*(v3 + 4705) & 0x40) != 0)
            {
              if (*(v3 + 2904))
              {
                v110 = (*(*(v3 + 4072) + 16) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 4072) + 16);
                v227.imagp = v110;
                VPTimeFreqConverter_Analyze(*(v3 + 4136), *(v3 + 16944), &v227);
                v111 = (*(*(v3 + 4064) + 32) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 4064) + 32);
                v227.imagp = v111;
                VPTimeFreqConverter_Analyze(*(v3 + 4168), *(*(v3 + 3368) + 16), &v227);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
                }
              }
            }

            if (*(v3 + 4690) & 1) != 0 && (*(v3 + 4706))
            {
              if (*(v3 + 2920))
              {
                v112 = (*(*(v3 + 4080) + 16) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 4080) + 16);
                v227.imagp = v112;
                VPTimeFreqConverter_Analyze(*(v3 + 4152), *(v3 + 16992), &v227);
                v113 = (*(*(v3 + 4064) + 64) + 4 * *(v3 + 516));
                v227.realp = *(*(v3 + 4064) + 64);
                v227.imagp = v113;
                VPTimeFreqConverter_Analyze(*(v3 + 16864), *(*(v3 + 3376) + 16), &v227);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
                }
              }
            }

            v114 = *(v3 + 4688);
            if ((v114 & 0x40000000000) == 0 || (*(v3 + 4709) & 4) == 0 || (v115 = *(v3 + 3128)) == 0)
            {
LABEL_225:
              v226 = 0;
              if ((v114 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
              {
                v125 = 1;
                v126 = 1;
              }

              else if ((v114 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
              {
                v125 = 0;
                v126 = *(v3 + 3056) != 0;
              }

              else
              {
                v125 = 0;
                v126 = 0;
              }

              v127 = v114 & 0x80000000;
              if ((v114 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
              {
                v128 = 1;
                v125 = 1;
                v129 = 1;
                if ((v114 & 0x100000000) == 0)
                {
                  goto LABEL_250;
                }
              }

              else
              {
                if ((v114 & 0x100000000) == 0)
                {
                  v128 = 0;
                  v129 = 1;
                  goto LABEL_250;
                }

                v129 = 1;
                if (*(v3 + 4708))
                {
                  v130 = *(v3 + 3048);
                  v128 = v130 != 0;
                  if (v130)
                  {
                    v129 = 2;
                  }

                  else
                  {
                    v129 = 1;
                  }
                }

                else
                {
                  v128 = 0;
                }
              }

              v131 = *(v3 + 4704);
              if ((v131 & 0x100000000) != 0 && *(v3 + 3048) && (v114 & v131 & 0x200000000) != 0 && *(v3 + 3056))
              {
                v129 = 2;
                v125 = 2;
              }

LABEL_250:
              if ((v114 & 0x40000000) == 0)
              {
                goto LABEL_269;
              }

              if ((*(v3 + 4707) & 0x40) == 0)
              {
                goto LABEL_269;
              }

              v132 = *(v3 + 3032);
              if (!v132)
              {
                goto LABEL_269;
              }

              AudioUnitSetProperty(v132, 0x457u, 0, 0, (v3 + 2332), 4u);
              if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
              {
                v133 = *(v3 + 3032);
                if (*(v3 + 3040))
                {
                  v134 = *(v3 + 2752);
LABEL_257:
                  AudioUnitSetParameter(v133, 0x1Bu, 0, 0, v134, 0);
                  v135 = *(v3 + 4688);
                  if ((v135 & 0x2000) != 0)
                  {
                    v136 = *(v3 + 4704);
                    if ((v136 & 0x2000) != 0 && *(v3 + 2896) && (v135 & v136 & 0x4000) != 0 && *(v3 + 2904))
                    {
                      AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
                    }
                  }

                  *&v137 = *(v3 + 1112) + 24;
                  *&v138 = *(v3 + 1120) + 24;
                  v139 = **(v3 + 1088);
                  if (v139 < 3)
                  {
                    v140 = 0.0;
                  }

                  else
                  {
                    *&v140 = *(v3 + 1128) + 24;
                  }

                  *&v234.mSampleTime = *(v3 + 1112) + 24;
                  *&v234.mHostTime = v138;
                  v141 = *(v3 + 1080);
                  v234.mRateScalar = v140;
                  v234.mWordClockTime = v141;
                  *&v234.mSMPTETime.mSubframes = *(v3 + 3360);
                  if (v139 >= 3)
                  {
                    v234.mSampleTime = v138;
                    *&v234.mHostTime = v140;
                    v234.mRateScalar = v137;
                  }

                  v237 = 0;
                  v232 = 512;
                  AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
                  v142 = *&a2->mRateScalar;
                  *&v245.mSampleTime = *&a2->mSampleTime;
                  *&v245.mRateScalar = v142;
                  v143 = *&a2->mSMPTETime.mHours;
                  *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v245.mSMPTETime.mHours = v143;
                  AudioUnitProcessMultiple(*(v3 + 3032), &v232, &v245, *(v3 + 516), 6u, &v234, 1u, &v237);
                  v114 = *(v3 + 4688);
                  v127 = v114 & 0x80000000;
LABEL_269:
                  if (v127 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                  {
                    memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                    memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
                    if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
                    {
                      v144 = 0.0;
                    }

                    else
                    {
                      v144 = 1.0;
                    }

                    AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v144, 0);
                    v234.mSampleTime = *(v3 + 3488);
                    v237 = *(v3 + 3448);
                    v145 = *&a2->mRateScalar;
                    *&v245.mSampleTime = *&a2->mSampleTime;
                    *&v245.mRateScalar = v145;
                    v146 = *&a2->mSMPTETime.mHours;
                    *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&v245.mSMPTETime.mHours = v146;
                    v232 = 512;
                    AudioUnitProcessMultiple(*(v3 + 3040), &v232, &v245, *(v3 + 516), 1u, &v234, 1u, &v237);
                    LODWORD(v242) = 8 * *(v3 + 516);
                    AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), &v242);
                    LODWORD(v242) = 8 * *(v3 + 516);
                    AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), &v242);
                    v147 = *(v3 + 516);
                    v148 = *(v3 + 3448);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      v149 = &v245;
                      v150 = v3;
                      v151 = 10;
LABEL_278:
                      VoiceProcessorV2::SaveFilesWriteSignal(v150, v151, v147, v148, v149);
                    }

LABEL_306:
                    if (v125 == 2)
                    {
                      VoiceProcessorV4::SignalParamSwitchMixNF(v3, v128, v126, &v226);
                    }

                    else if (v125 == 1)
                    {
                      VoiceProcessorV2::SignalParamSwitchMix(v3, v128, v126, &v226, v107);
                    }

                    if (v129 == 1)
                    {
                      VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v231, v230, v128, v226);
                    }

                    else
                    {
                      VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, v231, v228, v128, v226);
                    }

                    memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
                    v165 = *(v3 + 4688);
                    if ((v165 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
                    {
                      v166 = 1;
                    }

                    else
                    {
                      v166 = (v165 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
                    }

                    LODWORD(v242) = 0;
                    LODWORD(v235) = 0;
                    AudioUnitGetParameter(*(v3 + 3120), 0x1Du, 0, 0, &v242);
                    v167 = *&v242 < 1.0 && v166;
                    if (v166)
                    {
                      LODWORD(v245.mSampleTime) = 1065353216;
                      if (*&v242 < 1.0)
                      {
                        vDSP_vfill(&v245, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
                      }

                      vDSP_vfill(&v245, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                    }

                    else if ((*(v3 + 4693) & 2) == 0 || (*(v3 + 4709) & 2) == 0 || !*(v3 + 3120))
                    {
                      v168 = 0;
                      goto LABEL_336;
                    }

                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
                    }

                    v168 = 1;
LABEL_336:
                    v169 = *(v3 + 4032);
                    v170 = *(v3 + 4688);
                    if ((v170 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v171 = *(v3 + 3224)) != 0)
                    {
                      v172 = *(v3 + 4024);
                      v234.mSampleTime = *(v3 + 3440);
                      v234.mHostTime = v172;
                      *&v234.mRateScalar = v3 + 16904;
                      v173 = *(v3 + 4040);
                      v237 = *(v3 + 3448);
                      v238 = v173;
                      v239 = v169;
                      v232 = 512;
                      v174 = *&a2->mRateScalar;
                      *&v245.mSampleTime = *&a2->mSampleTime;
                      *&v245.mRateScalar = v174;
                      v175 = *&a2->mSMPTETime.mHours;
                      *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v245.mSMPTETime.mHours = v175;
                      AudioUnitProcessMultiple(v171, &v232, &v245, *(v3 + 516), 3u, &v234, 3u, &v237);
                      AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v233);
                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                      {
                        goto LABEL_351;
                      }

                      v176 = *(v3 + 3224);
                      v177 = 2;
                    }

                    else
                    {
                      if ((v170 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v178 = *(v3 + 3232)) == 0)
                      {
                        v183 = 0;
                        goto LABEL_356;
                      }

                      AudioUnitSetParameter(v178, 0x14u, 0, 0, *(v3 + 16756), 0);
                      v179 = *(v3 + 3464);
                      v234.mSampleTime = *(v3 + 3440);
                      v234.mHostTime = v179;
                      v234.mRateScalar = *(v3 + 4024);
                      v234.mWordClockTime = v3 + 16904;
                      v180 = *(v3 + 3504);
                      v237 = *(v3 + 3448);
                      v238 = v180;
                      v239 = *(v3 + 4040);
                      v240 = v169;
                      v181 = *&a2->mRateScalar;
                      *&v245.mSampleTime = *&a2->mSampleTime;
                      *&v245.mRateScalar = v181;
                      v182 = *&a2->mSMPTETime.mHours;
                      *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v245.mSMPTETime.mHours = v182;
                      v232 = 512;
                      AudioUnitProcessMultiple(*(v3 + 3232), &v232, &v245, *(v3 + 516), 4u, &v234, 4u, &v237);
                      AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v233);
                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                      {
LABEL_351:
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &v245);
                        }

                        v183 = 1;
LABEL_356:
                        if ((*(v3 + 4693) & 2) == 0)
                        {
                          goto LABEL_377;
                        }

                        if ((*(v3 + 4709) & 2) == 0 || (v184 = *(v3 + 3120)) == 0)
                        {
LABEL_374:
                          if ((*(v3 + 4709) & 2) != 0 && *(v3 + 3120) != 0 && v167)
                          {
                            v193 = *(*(v3 + 4040) + 16);
                            vDSP_vmin(*(*(v3 + 4024) + 16), 1, v193, 1, v193, 1, *(v3 + 516));
                            v194 = *(*(v3 + 3440) + 16);
                            v195 = *(*(v3 + 3448) + 16);
                            MEMORY[0x2743CCDD0](v194, 1, v193, 1, v195, 1, *(v3 + 516));
                            MEMORY[0x2743CCDD0](v194 + 4 * *(v3 + 516) + 4, 1, v193 + 1, 1, v195 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
                            *(v194 + 4 * *(v3 + 516)) = *(v194 + 4 * *(v3 + 516)) * v193[*(v3 + 516) - 1];
LABEL_381:
                            if (((v168 & 1) != 0 || (*(v3 + 4693) & 2) != 0 && (*(v3 + 4709) & 2) != 0 && *(v3 + 3120)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), &buf);
                            }

                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                            {
                              v197 = *(v3 + 3272);
                              if (v197)
                              {
                                AudioUnitSetParameter(v197, 0, 0, 0, *(v3 + 12612), 0);
                                AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
                                AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
                                AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, v233, 0);
                                AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
                                v198 = *(v3 + 4112);
                                v234.mSampleTime = *(v3 + 3360);
                                v234.mHostTime = v198;
                                v199 = *(v3 + 3472);
                                v234.mRateScalar = *(v3 + 3448);
                                v234.mWordClockTime = v199;
                                v200 = *(v3 + 4040);
                                *&v234.mSMPTETime.mSubframes = *(v3 + 4024);
                                *&v234.mSMPTETime.mType = v200;
                                v237 = *(v3 + 1096);
                                v232 = 512;
                                v201 = *&a2->mRateScalar;
                                *&v245.mSampleTime = *&a2->mSampleTime;
                                *&v245.mRateScalar = v201;
                                v202 = *&a2->mSMPTETime.mHours;
                                *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&v245.mSMPTETime.mHours = v202;
                                AudioUnitProcessMultiple(*(v3 + 3272), &v232, &v245, *(v3 + 516), 6u, &v234, 1u, &v237);
                                LODWORD(v244) = 0;
                                AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, &v244);
                                *(v3 + 12616) = v244;
                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
                                {
                                  AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v233);
                                  AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v233, 0);
                                }
                              }
                            }

                            goto LABEL_395;
                          }

LABEL_377:
                          if ((*(v3 + 8869) & 2) != 0 && (*(v3 + 8877) & 2) != 0 && *(v3 + 3840) != 0 && !v166)
                          {
                            LODWORD(v245.mSampleTime) = 1065353216;
                            v196 = *(v3 + 516);
                            vDSP_vfill(&v245, *(*(v3 + 4040) + 16), 1, v196);
                            memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v196);
                          }

                          goto LABEL_381;
                        }

                        AudioUnitSetParameter(v184, 6u, 0, 0, *(v3 + 4248), 0);
                        AudioUnitSetParameter(*(v3 + 3120), 7u, 0, 0, *(v3 + 4264), 0);
                        AudioUnitSetParameter(*(v3 + 3120), 0xDu, 0, 0, *(v3 + 4280), 0);
                        v185 = *(v3 + 3472);
                        v234.mSampleTime = *(v3 + 3440);
                        v234.mHostTime = v185;
                        v186 = *(v3 + 4040);
                        v234.mRateScalar = *(v3 + 4120);
                        v234.mWordClockTime = v186;
                        *&v234.mSMPTETime.mSubframes = v169;
                        if (v167)
                        {
                          v187 = (v3 + 3464);
                          v186 = *(v3 + 4024);
                        }

                        else
                        {
                          v234.mWordClockTime = 0;
                          v187 = (v3 + 3448);
                        }

                        v237 = *v187;
                        v238 = v186;
                        v188 = *&a2->mRateScalar;
                        *&v245.mSampleTime = *&a2->mSampleTime;
                        *&v245.mRateScalar = v188;
                        v189 = *&a2->mSMPTETime.mHours;
                        *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v245.mSMPTETime.mHours = v189;
                        v232 = 512;
                        AudioUnitProcessMultiple(*(v3 + 3120), &v232, &v245, *(v3 + 516), 5u, &v234, 2u, &v237);
                        if ((v183 & v167 & 1) == 0)
                        {
                          AudioUnitGetParameter(*(v3 + 3120), 0x20u, 0, 0, &v233);
                        }

                        v190 = *(v3 + 516);
                        v191 = 3448;
                        if (v167)
                        {
                          v191 = 3464;
                        }

                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v190, *(v3 + v191), &v245);
                          v190 = *(v3 + 516);
                          v192 = *(v3 + 4024);
                          if (*(v3 + 15881))
                          {
LABEL_372:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v190, v192, &v245);
LABEL_373:
                            if ((*(v3 + 4693) & 2) == 0)
                            {
                              goto LABEL_377;
                            }

                            goto LABEL_374;
                          }
                        }

                        else
                        {
                          v192 = *(v3 + 4024);
                        }

                        if (*(v3 + 15882) != 1)
                        {
                          goto LABEL_373;
                        }

                        goto LABEL_372;
                      }

                      v176 = *(v3 + 3232);
                      v177 = 9;
                    }

                    AudioUnitGetParameter(v176, v177, 0, 0, &v235);
                    AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v235, 0);
                    goto LABEL_351;
                  }

                  if ((v114 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
                  {
                    goto LABEL_306;
                  }

                  memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
                  memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
                  v152 = *(v3 + 3488);
                  v153 = *(v3 + 3480);
                  v242 = *(v3 + 3448);
                  v243 = v153;
                  v244 = v152;
                  v154 = *&a2->mRateScalar;
                  *&v245.mSampleTime = *&a2->mSampleTime;
                  *&v245.mRateScalar = v154;
                  v155 = *&a2->mSMPTETime.mHours;
                  *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v245.mSMPTETime.mHours = v155;
                  AudioUnitProcessMultiple(*(v3 + 3048), &v232, &v245, *(v3 + 516), 1u, &v244, 2u, &v242);
                  v156 = *(v3 + 516);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v156, v242, &v245);
                    v156 = *(v3 + 516);
                    v157 = v243;
                    if (*(v3 + 15881))
                    {
                      goto LABEL_290;
                    }
                  }

                  else
                  {
                    v157 = v243;
                  }

                  if (*(v3 + 15882) != 1)
                  {
LABEL_291:
                    if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
                    {
                      goto LABEL_306;
                    }

                    memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                    memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
                    v225 = 10.0;
                    v158 = *(v3 + 3480);
                    v237 = *(v3 + 3448);
                    v238 = v158;
                    v159 = *(v3 + 4080);
                    v239 = *(v3 + 3496);
                    v240 = v159;
                    v241 = *(v3 + 3456);
                    v160 = *(v3 + 3464);
                    v161 = 10.0;
                    v235 = *(v3 + 3440);
                    v236 = v160;
                    if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                    {
                      v162 = *(v3 + 3232);
                      if (v162)
                      {
                        AudioUnitGetParameter(v162, 9u, 0, 0, &v225);
                        v161 = v225;
                      }
                    }

                    AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, v161, 0);
                    AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
                    v163 = *&a2->mRateScalar;
                    *&v234.mSampleTime = *&a2->mSampleTime;
                    *&v234.mRateScalar = v163;
                    v164 = *&a2->mSMPTETime.mHours;
                    *&v234.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&v234.mSMPTETime.mHours = v164;
                    AudioUnitProcessMultiple(*(v3 + 3056), &v232, &v234, *(v3 + 516), 5u, &v237, 2u, &v235);
                    v147 = *(v3 + 516);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v147, v235, &v234);
                      v147 = *(v3 + 516);
                      v148 = v236;
                      if (*(v3 + 15881))
                      {
                        goto LABEL_305;
                      }
                    }

                    else
                    {
                      v148 = v236;
                    }

                    if (*(v3 + 15882) != 1)
                    {
                      goto LABEL_306;
                    }

LABEL_305:
                    v149 = &v234;
                    v150 = v3;
                    v151 = 27;
                    goto LABEL_278;
                  }

LABEL_290:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v156, v157, &v245);
                  goto LABEL_291;
                }
              }

              else
              {
                v133 = *(v3 + 3032);
              }

              v134 = 2.0;
              goto LABEL_257;
            }

            v116 = *(v3 + 4252);
            if (v116 == 0.0)
            {
              v117 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
              v245.mSampleTime = *(*(v3 + 3496) + 16);
              v245.mHostTime = v117;
              VPTimeFreqConverter_Analyze(*(v3 + 16872), *(*(v3 + 3408) + 16), &v245);
              v116 = *(v3 + 4252);
              v115 = *(v3 + 3128);
            }

            AudioUnitSetParameter(v115, 6u, 0, 0, v116, 0);
            AudioUnitSetParameter(*(v3 + 3128), 7u, 0, 0, *(v3 + 4268), 0);
            AudioUnitSetParameter(*(v3 + 3128), 0xDu, 0, 0, *(v3 + 4284), 0);
            memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
            v118 = *(v3 + 3480);
            v234.mSampleTime = *(v3 + 4072);
            v234.mHostTime = v118;
            v119 = *(v3 + 4120);
            v234.mWordClockTime = 0;
            *&v234.mSMPTETime.mSubframes = 0;
            v234.mRateScalar = v119;
            v120 = *(v3 + 4032);
            v237 = *(v3 + 3464);
            v238 = v120;
            v121 = *&a2->mRateScalar;
            *&v245.mSampleTime = *&a2->mSampleTime;
            *&v245.mRateScalar = v121;
            v122 = *&a2->mSMPTETime.mHours;
            *&v245.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&v245.mSMPTETime.mHours = v122;
            v232 = 512;
            AudioUnitProcessMultiple(*(v3 + 3128), &v232, &v245, *(v3 + 516), 5u, &v234, 2u, &v237);
            v123 = *(v3 + 516);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v123, *(v3 + 3464), &v245);
              v123 = *(v3 + 516);
              v124 = *(v3 + 4032);
              if (*(v3 + 15881))
              {
                goto LABEL_223;
              }
            }

            else
            {
              v124 = *(v3 + 4032);
            }

            if (*(v3 + 15882) != 1)
            {
LABEL_224:
              v114 = *(v3 + 4688);
              goto LABEL_225;
            }

LABEL_223:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v123, v124, &v245);
            goto LABEL_224;
          }

LABEL_454:
          std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        v102 = *(v3 + 3384);
      }

      if (*(v3 + 15882) != 1)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }
  }

  v10 = 0;
  while (((*(v3 + 472) >> v10) & 1) == 0)
  {
    if (++v10 == 32)
    {
      v10 = 33;
      break;
    }
  }

  v11 = *(v3 + 1088);
  if (v10 >= *v11)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = **(v3 + 1088);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v4.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 281;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v10;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v16;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v17 = *(v3 + 12704);
    if (v17 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 281, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v10, **(v3 + 1088));
    }

    v12 = *(*(v3 + 1096) + 16);
    v13 = *(v3 + 1088);
  }

  else
  {
    v12 = *(*(v3 + 1096) + 16);
    v13 = &v11[4 * v10];
  }

  memcpy(v12, v13[2], *(v13 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v18 = *(v3 + 3224);
    if (v18)
    {
      v19 = *(v3 + 4024);
      v245.mSampleTime = *(v3 + 1096);
      v245.mHostTime = v19;
      v20 = *(v3 + 4040);
      v234.mSampleTime = v245.mSampleTime;
      v234.mHostTime = v20;
      v21 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v21;
      v22 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v22;
      LODWORD(v237) = 512;
      AudioUnitProcessMultiple(v18, &v237, &buf, *(v3 + 516), 2u, &v245, 2u, &v234);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), a2);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v233);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v233, 0);
      }
    }
  }

LABEL_395:
  LODWORD(v245.mSampleTime) = 0;
  v203 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v204 = v203;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v203 & 1))
    {
      goto LABEL_411;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v204 & 1) == 0)
    {
      goto LABEL_411;
    }
  }

  else
  {
    if ((v203 & 1) == 0)
    {
      goto LABEL_411;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v205 = *(v3 + 4688);
  if ((v205 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v206 = *(v3 + 3280);
    if (v206)
    {
      v207 = 1936748646;
LABEL_409:
      AudioUnitGetParameter(v206, v207, 0, 0, &v245);
      goto LABEL_411;
    }
  }

  if ((v205 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v206 = *(v3 + 3272);
    if (v206)
    {
      v207 = 2;
      goto LABEL_409;
    }
  }

  *&v245.mSampleTime = v233;
LABEL_411:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    LODWORD(v245.mSampleTime) = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v208 = *(v3 + 3632);
    if (((v208 != 0) & v204) == 1)
    {
      AudioUnitSetParameter(v208, 0x12u, 0, 0, *&v245.mSampleTime, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v209 = *(v3 + 3296);
    if (v209)
    {
      v210 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v210;
      v211 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v211;
      LODWORD(v234.mSampleTime) = 512;
      AudioUnitProcess(v209, &v234, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v212 = *(v3 + 4696);
  if (v212 & 1) != 0 && (*(v3 + 4712))
  {
    v213 = *(v3 + 3304);
    if (v213)
    {
      v214 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v214;
      v215 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v215;
      LODWORD(v234.mSampleTime) = 512;
      AudioUnitProcess(v213, &v234, &buf, *(v3 + 516), *(v3 + 1096));
      v212 = *(v3 + 4696);
    }
  }

  if ((v212 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v216 = *(v3 + 3312)) != 0)
  {
    v217 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v217;
    v218 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v218;
    LODWORD(v234.mSampleTime) = 512;
    AudioUnitProcess(v216, &v234, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v237) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v237);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v237, 0);
    }

    LODWORD(v237) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v237);
    v219 = v237;
    if (*(v3 + 2308) != *&v237)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v220 = *(v3 + 3272);
        if (v220)
        {
          AudioUnitSetParameter(v220, 0x12u, 0, 0, *&v237, 0);
          v219 = v237;
        }
      }

      *(v3 + 2308) = v219;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  return 0;
}

uint64_t VoiceProcessorV4::SignalParamSwitchMixNF(uint64_t this, int a2, int a3, BOOL *a4)
{
  if (a2 && a3)
  {
    v5 = this;
    outValue = 0.0;
    this = AudioUnitGetParameter(*(this + 3056), 2u, 0, 0, &outValue);
    v6 = outValue;
    v7 = *(v5 + 516);
    v8 = *(*(v5 + 3496) + 16);
    v36 = 0.5;
    if (outValue > 2)
    {
      if (v6 == 3)
      {
        ioDataSize = 8 * v7;
        AudioUnitGetProperty(*(v5 + 3048), 0xE79u, 0, 0, *(*(v5 + 4328) + 16), &ioDataSize);
        ioDataSize = 8 * v7;
        v14 = *(*(v5 + 4328) + 32);
        v15 = *(v5 + 3048);
        v16 = 3706;
      }

      else
      {
        if (v6 != 4)
        {
          return this;
        }

        ioDataSize = 8 * v7;
        AudioUnitGetProperty(*(v5 + 3048), 0xE7Bu, 0, 0, *(*(v5 + 4328) + 16), &ioDataSize);
        ioDataSize = 8 * v7;
        v14 = *(*(v5 + 4328) + 32);
        v15 = *(v5 + 3048);
        v16 = 3708;
      }

      AudioUnitGetProperty(v15, v16, 0, 0, v14, &ioDataSize);
      v17 = v8 + 4 * v7;
      v18 = *(v5 + 4328);
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v5 + 4232);
      v22 = *(v5 + 4244);
      v23 = *(v5 + 4320);
      v24 = v23 + v7;
      v25 = (*(v19 + 4 * v23) * *(v19 + 4 * v23)) + (*(v19 + 4 * v24) * *(v19 + 4 * v24));
      v26 = (*(v20 + 4 * v23) * *(v20 + 4 * v23)) + (*(v20 + 4 * v24) * *(v20 + 4 * v24));
      if ((v25 + v26) <= 0.0)
      {
        v28 = 0.0;
        v29 = 1.0;
      }

      else
      {
        v27 = 1.0 / (v25 + v26);
        v28 = v26 * v27;
        v29 = v25 * v27;
      }

      *(v5 + 4216) = (*(v5 + 4228) * v28) + (v29 * *(v5 + 4216));
      *(v5 + 4232) = (v22 * v28) + (v29 * v21);
      *(v5 + 4248) = *(v5 + 4248) * *(v5 + 4252);
      *(v5 + 4264) = (v28 * *(v5 + 4268)) + (v29 * *(v5 + 4264));
      *(v5 + 4280) = (v28 * *(v5 + 4284)) + (v29 * *(v5 + 4280));
      v30 = *(v5 + 516);
      memcpy(*(*(v5 + 3488) + 16), *(*(v5 + 4064) + 16), 4 * (2 * v30));
      memcpy(*(*(v5 + 3488) + 32), *(*(v5 + 4064) + 64), 4 * (2 * *(v5 + 516)));
      v31 = *(v5 + 3488);
      v32 = *(v31 + 16);
      v33 = *(v31 + 32);
      v34 = *(*(v5 + 4064) + 16);
      MEMORY[0x2743CCDD0](v32, 1, v19, 1, v34, 1, (2 * v30));
      MEMORY[0x2743CCDD0](v33, 1, v20, 1, v8, 1, (2 * v30));
      MEMORY[0x2743CCD80](v8, 1, v34, 1, v34, 1, (2 * v30));
      MEMORY[0x2743CCE30](v34 + 4 * v30, 1, v34, 1, v34, 1, v30);
      MEMORY[0x2743CCDD0](v32, 1, v19 + 4 * v30, 1, v8, 1, v30);
      MEMORY[0x2743CCDD0](v32 + 4 * v30, 1, v19, 1, v17, 1, v30);
      MEMORY[0x2743CCD80](v8, 1, v17, 1, v34 + 4 * v30, 1, v30);
      MEMORY[0x2743CCDD0](v33, 1, v20 + 4 * v30, 1, v8, 1, v30);
      MEMORY[0x2743CCDD0](v33 + 4 * v30, 1, v20, 1, v17, 1, v30);
      MEMORY[0x2743CCD80](v8, 1, v17, 1, v8, 1, v30);
      return MEMORY[0x2743CCD80](v8, 1, v34 + 4 * v30, 1, v34 + 4 * v30, 1, v30);
    }

    else if (v6 == 1)
    {
      this = memcpy(*(*(v5 + 4064) + 16), *(*(v5 + 4064) + 64), *(v5 + 4316));
      *(v5 + 4216) = *(v5 + 4228);
      *(v5 + 4232) = *(v5 + 4244);
      *(v5 + 4248) = *(v5 + 4260);
      *(v5 + 4264) = *(v5 + 4276);
      *(v5 + 4280) = *(v5 + 4292);
      *a4 = 1;
    }

    else if (v6 == 2)
    {
      v9 = (*(*v5 + 112))(v5);
      v10 = *(v5 + 4064);
      v11 = *(v10 + 16);
      if (v9 >= 8)
      {
        v11 = *(v10 + 64);
      }

      MEMORY[0x2743CCD80](*(v10 + 16), 1, v11, 1, v8, 1, (2 * v7));
      this = MEMORY[0x2743CCE20](v8, 1, &v36, *(*(v5 + 4064) + 16), 1, (2 * v7));
      v12 = v36;
      *(v5 + 4216) = v36 * (*(v5 + 4228) + *(v5 + 4216));
      *(v5 + 4232) = v12 * (*(v5 + 4244) + *(v5 + 4232));
      v13 = 0.0;
      if (*(v5 + 4260) != 0.0)
      {
        v13 = 1.0;
      }

      *(v5 + 4248) = v13;
      *(v5 + 4264) = v12 * (*(v5 + 4276) + *(v5 + 4264));
      *(v5 + 4280) = v12 * (*(v5 + 4292) + *(v5 + 4292));
    }
  }

  return this;
}

float VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(VoiceProcessorV4 *this, int a2, int a3, int a4, char a5)
{
  v6 = a2;
  result = *(this + 1062);
  if (result == 0.0)
  {
    if (a3 && a4 && a2)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!a3)
    {
LABEL_9:
      v9 = (*(*(this + 515) + 16) + 4 * *(this + 129));
      v10.realp = *(*(this + 515) + 16);
      v10.imagp = v9;
      VPTimeFreqConverter_Analyze(*(this + 523), *(*(this + 425) + 16), &v10);
      goto LABEL_10;
    }

    memcpy(*(*(this + 425) + 16), *(*(this + 428) + 16), 4 * *(this + 129));
    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    if ((v6 & 1) == 0)
    {
      result = *(this + 1065);
      *(this + 1062) = result;
    }
  }

  return result;
}

uint64_t VoiceProcessorV5::RunUplinkDynamicsDSP(VoiceProcessorV5 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if ((*(this + 4696) & 0x10) != 0 && (*(this + 4712) & 0x10) != 0)
  {
    v7 = *(this + 417);
    if (v7)
    {
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcess(v7, &ioActionFlags.mNumberBuffers, a3, a4, ioData);
      if ((v6[3593] & 1) != 0 || v6[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x30u, a4, ioData, a3);
      }
    }
  }

  if (v6[3593] == 1)
  {
    *outValue = 0;
    v10 = *(this + 586);
    if ((v10 & 0x1000000000000000) != 0 && (*(this + 4711) & 0x10) != 0)
    {
      v11 = *(this + 409);
      if (v11)
      {
        AudioUnitGetParameter(v11, 2u, 0, 0, outValue);
        v10 = *(this + 586);
      }
    }

    if ((v10 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0 && (v12 = *(this + 404)) != 0)
    {
      v13 = 9;
    }

    else
    {
      if ((v10 & 0x40000000000000) == 0 || (*(this + 4710) & 0x40) == 0 || (v12 = *(this + 403)) == 0)
      {
LABEL_21:
        *&ioActionFlags.mNumberBuffers = 1;
        *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
        ioActionFlags.mBuffers[0].mData = outValue;
        if ((v6[3593] & 1) != 0 || v6[3594] == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
        }

        return 0;
      }

      v13 = 2;
    }

    AudioUnitGetParameter(v12, v13, 0, 0, &outValue[1]);
    goto LABEL_21;
  }

  return 0;
}

uint64_t VoiceProcessorV5::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v332 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 1080);
      v9 = (v3 + 516);
      v10 = *(v3 + 516);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 1080);
    goto LABEL_19;
  }

  v6 = *(v3 + 1080);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 1080);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 516);
    v11 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 1088);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 1424);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 516);
  v12 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v313 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 4688);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v312 = 0;
      *(v3 + 17096) = 0;
      *(v3 + 17112) = 0;
      *(v3 + 17104) = 0;
      *(v3 + 17096) = 1;
      *(v3 + 17104) = *(*(v3 + 1080) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 2792);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v312 = 512;
          this = AudioUnitProcess(this, &v312, &buf, *(v3 + 516), *(v3 + 1088));
        }
      }

      MEMORY[0x28223BE20](this);
      v30 = (&v295 - ((v29 + 15) & 0x3FFFFFFFF0));
      v31 = *(v3 + 1088);
      if (*v31)
      {
        v32 = 0;
        v33 = 2;
        v34 = v30;
        do
        {
          *&v34->mNumberBuffers = 0;
          *&v34->mBuffers[0].mNumberChannels = 0;
          v34->mBuffers[0].mData = 0;
          v34->mNumberBuffers = 1;
          v34->mBuffers[0] = *&v31[v33];
          ++v32;
          v33 += 4;
          ++v34;
        }

        while (v32 < *v31);
      }

      v35 = *(v3 + 4688);
      if ((v35 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v36 = *(v3 + 2800);
        if (v36)
        {
          v37 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v37;
          v38 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v38;
          v312 = 512;
          AudioUnitProcess(v36, &v312, &buf, *v9, v30);
          v44 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v44, v30, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v30, v44, v39, v40, v41, v42, v43, v295);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v45 = *(v3 + 2808);
        if (v45)
        {
          v46 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v46;
          v47 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v47;
          v312 = 512;
          AudioUnitProcess(v45, &v312, &buf, *v9, v30 + 1);
          v53 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v53, v30 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v30 + 1, v53, v48, v49, v50, v51, v52, v295);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v54 = *(v3 + 2816);
        if (v54)
        {
          v55 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v55;
          v56 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v56;
          v312 = 512;
          AudioUnitProcess(v54, &v312, &buf, *v9, v30 + 2);
          v62 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v62, v30 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v30 + 2, v62, v57, v58, v59, v60, v61, v295);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v63 = *(v3 + 2824);
        if (v63)
        {
          v64 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v64;
          v65 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v65;
          v312 = 512;
          AudioUnitProcess(v63, &v312, &buf, *v9, v30 + 3);
          v71 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v71, v30 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v30 + 3, v71, v66, v67, v68, v69, v70, v295);
        }
      }

      v72 = *(v3 + 1088);
      v73 = *v72;
      v301 = &v295;
      if (v73 < 3)
      {
        *(v3 + 16912) = *(v72 + 8);
        if (*v72 < 2u)
        {
          v77 = 0;
          v80 = 0;
          v76 = 0;
          v75 = 0;
        }

        else
        {
          v77 = 0;
          v80 = 0;
          if (*(v3 + 17160) == 1)
          {
            v76 = 0;
            *(v3 + 16912) = *(v72 + 24);
            *(v3 + 16936) = *(v72 + 8);
            v75 = 1;
          }

          else
          {
            v75 = 0;
            *(v3 + 16936) = *(v72 + 24);
            v76 = 1;
          }
        }

LABEL_120:
        v82 = *(v3 + 4688);
        LODWORD(v302) = v76;
        if ((v82 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v83 = *(v3 + 2848);
          if (v83)
          {
            v84 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v84;
            v85 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v85;
            v312 = 512;
            AudioUnitProcess(v83, &v312, &buf, *(v3 + 516), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if (v82 & 0x100) != 0 && (*(v3 + 4705))
        {
          v86 = *(v3 + 2856);
          if (v86)
          {
            v87 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v87;
            v88 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v88;
            v312 = 512;
            AudioUnitProcess(v86, &v312, &buf, *(v3 + 516), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if ((v82 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v89 = *(v3 + 2872);
          if (v89)
          {
            v90 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v90;
            v91 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v91;
            v312 = 512;
            AudioUnitProcess(v89, &v312, &buf, *(v3 + 516), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        if ((v82 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v92 = *(v3 + 2880);
          if (v92)
          {
            MEMORY[0x28223BE20](v92);
            *(&v295 - 6) = 2;
            *(&v295 - 5) = *(v3 + 16912);
            *(&v295 - 3) = *(v3 + 16936);
            *&v322.mSampleTime = &v295 - 6;
            v322.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16928;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v312 = 512;
            v93 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v93;
            v94 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v94;
            AudioUnitProcessMultiple(v95, &v312, &buf, *(v3 + 516), 2u, &v322, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 516), (v3 + 16928), &buf);
            }

            v82 = *(v3 + 4688);
          }
        }

        v311 = 0;
        v96 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v96;
        v97 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v97;
        if ((v82 & 0x20000) != 0 && (*(v3 + 4706) & 2) != 0 && *(v3 + 2928))
        {
          v98 = *(v3 + 16880);
          if (*(v3 + 16888) == v98)
          {
            goto LABEL_619;
          }

          ECApplicator::apply(*v98, &buf, v75, &v311, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
          v99 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v99, (v3 + 16904), &buf);
            v99 = *(v3 + 516);
            v100 = *(v3 + 3360);
            if (*(v3 + 15881))
            {
              goto LABEL_193;
            }
          }

          else
          {
            v100 = *(v3 + 3360);
          }

          if (*(v3 + 15882) == 1)
          {
LABEL_193:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v99, v100, &buf);
          }
        }

        else
        {
          v101 = 0;
          while (((*(v3 + 472) >> v101) & 1) == 0)
          {
            if (++v101 == 32)
            {
              v101 = 33;
              break;
            }
          }

          if (v101 >= **(v3 + 1088))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v102 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v103 = (*v102 ? *v102 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v104 = **(v3 + 1088);
                LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v5.cpp";
                WORD2(inInputBufferLists.mHostTime) = 1024;
                *(&inInputBufferLists.mHostTime + 6) = 340;
                WORD1(inInputBufferLists.mRateScalar) = 1024;
                HIDWORD(inInputBufferLists.mRateScalar) = v101;
                LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                *(&inInputBufferLists.mWordClockTime + 2) = v104;
                _os_log_impl(&dword_2724B4000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
              }
            }

            v105 = *(v3 + 12704);
            if (v105 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v105, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v5.cpp", 340, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v101, **(v3 + 1088));
            }

            v101 = 0;
          }

          v106 = *(v3 + 1088) + 16 * v101;
          memcpy(*(*(v3 + 1096) + 16), *(v106 + 16), *(v106 + 12));
        }

        if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
        {
          v107 = *(v3 + 3344);
          if (v107)
          {
            inInputBufferLists.mSampleTime = *(v3 + 1088);
            inInputBufferLists.mHostTime = v3 + 17096;
            v322.mSampleTime = *(v3 + 1096);
            v312 = 512;
            AudioUnitProcessMultiple(v107, &v312, &buf, *(v3 + 516), 2u, &inInputBufferLists, 1u, &v322);
          }
        }

        v310 = 0;
        v108 = *(v3 + 4688);
        if ((v108 & 0x200000) == 0 || (*(v3 + 4706) & 0x20) == 0 || !*(v3 + 2960))
        {
LABEL_201:
          v309 = 0;
          if ((v108 & 0x40000) != 0 && (*(v3 + 4706) & 4) != 0 && *(v3 + 2936))
          {
            v112 = *(v3 + 16880);
            if ((*(v3 + 16888) - v112) <= 8)
            {
              goto LABEL_619;
            }

            ECApplicator::apply(*(v112 + 8), &buf, v302, &v309, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
            v113 = *(v3 + 516);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v113, (v3 + 16928), &buf);
              v113 = *(v3 + 516);
              v114 = *(v3 + 3368);
              if (*(v3 + 15881))
              {
                goto LABEL_211;
              }
            }

            else
            {
              v114 = *(v3 + 3368);
            }

            if (*(v3 + 15882) == 1)
            {
LABEL_211:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v113, v114, &buf);
            }
          }

          v308 = 0;
          if ((*(v3 + 4690) & 8) == 0 || (*(v3 + 4706) & 8) == 0 || !*(v3 + 2944))
          {
            goto LABEL_223;
          }

          v115 = *(v3 + 16880);
          if ((*(v3 + 16888) - v115) <= 0x10)
          {
            goto LABEL_619;
          }

          ECApplicator::apply(*(v115 + 16), &buf, v77, &v308, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
          v116 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v116, (v3 + 16952), &buf);
            v116 = *(v3 + 516);
            v117 = *(v3 + 3384);
            if (*(v3 + 15881))
            {
LABEL_222:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v116, v117, &buf);
LABEL_223:
              v307 = 0;
              if ((*(v3 + 4690) & 0x10) == 0 || (*(v3 + 4706) & 0x10) == 0 || !*(v3 + 2952))
              {
                goto LABEL_234;
              }

              v118 = *(v3 + 16880);
              if ((*(v3 + 16888) - v118) > 0x18)
              {
                ECApplicator::apply(*(v118 + 24), &buf, v80, &v307, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
                v119 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v119, (v3 + 16976), &buf);
                  v119 = *(v3 + 516);
                  v120 = *(v3 + 3376);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_233;
                  }
                }

                else
                {
                  v120 = *(v3 + 3376);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_233:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v119, v120, &buf);
                }

LABEL_234:
                if ((*(v3 + 4692) & 0x40) != 0 && (*(v3 + 4708) & 0x40) != 0)
                {
                  v121 = *(v3 + 3096);
                  if (v121)
                  {
                    MEMORY[0x28223BE20](v121);
                    v294 = 0;
                    *(&v295 - 3) = 0u;
                    *(&v295 - 2) = 0u;
                    *(&v295 - 12) = 2;
                    *(&v295 - 5) = *(v122 + 32);
                    *(&v295 - 3) = *(v123 + 32);
                    MEMORY[0x28223BE20](v124);
                    *(&v295 - 6) = v125;
                    *(&v295 - 5) = *(v3 + 16912);
                    *(&v295 - 3) = *(v3 + 16936);
                    *&v127 = MEMORY[0x28223BE20](v126);
                    v294 = 0;
                    *(&v295 - 3) = v127;
                    *(&v295 - 2) = v127;
                    *(&v295 - 12) = v128;
                    *(&v295 - 5) = *(*(v3 + 3360) + 8);
                    *(&v295 - 3) = *(*(v3 + 3368) + 8);
                    AudioUnitSetParameter(v129, 0x14u, 0, 0, *(v3 + 4216), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x15u, 0, 0, *(v3 + 4232), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x16u, 0, 0, *(v3 + 4248), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x17u, 0, 0, *(v3 + 4264), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x18u, 0, 0, *(v3 + 4280), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x19u, 0, 0, *(v3 + 4220), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x1Au, 0, 0, *(v3 + 4236), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x1Bu, 0, 0, *(v3 + 4252), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x1Cu, 0, 0, *(v3 + 4268), 0);
                    AudioUnitSetParameter(*(v3 + 3096), 0x1Du, 0, 0, *(v3 + 4284), 0);
                    *&v322.mSampleTime = &v295 - 6;
                    v322.mHostTime = (&v295 - 6);
                    *&v322.mRateScalar = &v295 - 6;
                    v130 = *(v3 + 3360);
                    *&v325.mNumberBuffers = v3 + 16904;
                    *&v325.mBuffers[0].mNumberChannels = v130;
                    v312 = 512;
                    v131 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v131;
                    v132 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v132;
                    AudioUnitProcessMultiple(*(v3 + 3096), &v312, &inInputBufferLists, *(v3 + 516), 3u, &v322, 2u, &v325);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x23u, *(v3 + 516), (v3 + 16904), &inInputBufferLists);
                    }

                    if ((*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136))
                    {
                      LODWORD(v306.realp) = 0;
                      AudioUnitGetParameter(*(v3 + 3096), 0x13u, 0, 0, &v306);
                      AudioUnitSetParameter(*(v3 + 3136), 0x27u, 0, 0, *&v306.realp, 0);
                      AudioUnitGetParameter(*(v3 + 3096), 0x14u, 0, 0, (v3 + 4216));
                      AudioUnitGetParameter(*(v3 + 3096), 0x15u, 0, 0, (v3 + 4232));
                      AudioUnitGetParameter(*(v3 + 3096), 0x16u, 0, 0, (v3 + 4248));
                      AudioUnitGetParameter(*(v3 + 3096), 0x17u, 0, 0, (v3 + 4264));
                      AudioUnitGetParameter(*(v3 + 3096), 0x18u, 0, 0, (v3 + 4280));
                    }
                  }
                }

                v133 = (*(*(v3 + 4112) + 16) + 4 * *(v3 + 516));
                v306.realp = *(*(v3 + 4112) + 16);
                v306.imagp = v133;
                VPTimeFreqConverter_Analyze(*(v3 + 4176), *(v3 + 17112), &v306);
                if ((*(v3 + 4690) & 2) != 0 && (*(v3 + 4706) & 2) != 0)
                {
                  if (*(v3 + 2928))
                  {
                    v135 = (*(*(v3 + 3440) + 16) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 3440) + 16);
                    v306.imagp = v135;
                    VPTimeFreqConverter_Analyze(*(v3 + 4128), *(v3 + 16920), &v306);
                    v136 = (*(*(v3 + 4064) + 16) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 4064) + 16);
                    v306.imagp = v136;
                    VPTimeFreqConverter_Analyze(*(v3 + 4160), *(*(v3 + 3360) + 16), &v306);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
                    }
                  }
                }

                if ((*(v3 + 4690) & 4) != 0 && (*(v3 + 4706) & 4) != 0)
                {
                  if (*(v3 + 2936))
                  {
                    v137 = (*(*(v3 + 4072) + 16) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 4072) + 16);
                    v306.imagp = v137;
                    VPTimeFreqConverter_Analyze(*(v3 + 4136), *(v3 + 16944), &v306);
                    v138 = (*(*(v3 + 4064) + 32) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 4064) + 32);
                    v306.imagp = v138;
                    VPTimeFreqConverter_Analyze(*(v3 + 4168), *(*(v3 + 3368) + 16), &v306);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
                    }
                  }
                }

                if ((*(v3 + 4690) & 0x10) != 0 && (*(v3 + 4706) & 0x10) != 0)
                {
                  if (*(v3 + 2952))
                  {
                    v139 = (*(*(v3 + 4080) + 16) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 4080) + 16);
                    v306.imagp = v139;
                    VPTimeFreqConverter_Analyze(*(v3 + 4152), *(v3 + 16992), &v306);
                    v140 = (*(*(v3 + 4064) + 64) + 4 * *(v3 + 516));
                    v306.realp = *(*(v3 + 4064) + 64);
                    v306.imagp = v140;
                    VPTimeFreqConverter_Analyze(*(v3 + 16864), *(*(v3 + 3376) + 16), &v306);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
                    }
                  }
                }

                v305 = 0.0;
                v141 = *(v3 + 4688);
                if ((v141 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                {
                  Parameter = *(v3 + 3136);
                  if (Parameter)
                  {
                    Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v305);
                    v141 = *(v3 + 4688);
                  }
                }

                if ((v141 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 2944) && v305 == 1.0)
                {
                  v142 = (*(*(v3 + 4064) + 48) + 4 * *(v3 + 516));
                  v306.realp = *(*(v3 + 4064) + 48);
                  v306.imagp = v142;
                  VPTimeFreqConverter_Analyze(*(v3 + 17152), *(*(v3 + 3384) + 16), &v306);
                  v141 = *(v3 + 4688);
                }

                if ((v141 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 3144)) == 0)
                {
LABEL_284:
                  v304 = 0;
                  if ((v141 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
                  {
                    v150 = 1;
                    v151 = 1;
                  }

                  else if ((v141 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                  {
                    v150 = 0;
                    v151 = *(v3 + 3056) != 0;
                  }

                  else
                  {
                    v150 = 0;
                    v151 = 0;
                  }

                  v152 = v141 & 0x80000000;
                  if ((v141 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                  {
                    v153 = 1;
                    v150 = 1;
                    v154 = 1;
                    if ((v141 & 0x100000000) == 0)
                    {
                      goto LABEL_309;
                    }
                  }

                  else
                  {
                    if ((v141 & 0x100000000) == 0)
                    {
                      v153 = 0;
                      v154 = 1;
                      goto LABEL_309;
                    }

                    v154 = 1;
                    if (*(v3 + 4708))
                    {
                      v155 = *(v3 + 3048);
                      v153 = v155 != 0;
                      if (v155)
                      {
                        v154 = 2;
                      }

                      else
                      {
                        v154 = 1;
                      }
                    }

                    else
                    {
                      v153 = 0;
                    }
                  }

                  v156 = *(v3 + 4704);
                  if ((v156 & 0x100000000) != 0 && *(v3 + 3048) && (v141 & v156 & 0x200000000) != 0 && *(v3 + 3056))
                  {
                    v154 = 2;
                    v150 = 2;
                  }

LABEL_309:
                  if ((v141 & 0x40000000) == 0)
                  {
                    goto LABEL_326;
                  }

                  if ((*(v3 + 4707) & 0x40) == 0)
                  {
                    goto LABEL_326;
                  }

                  Parameter = *(v3 + 3032);
                  if (!Parameter)
                  {
                    goto LABEL_326;
                  }

                  AudioUnitSetProperty(Parameter, 0x457u, 0, 0, (v3 + 2332), 4u);
                  if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                  {
                    v157 = *(v3 + 3032);
                    if (*(v3 + 3040))
                    {
                      v158 = *(v3 + 2752);
LABEL_316:
                      AudioUnitSetParameter(v157, 0x1Bu, 0, 0, v158, 0);
                      v159 = *(v3 + 4688);
                      if ((v159 & 0x20000) != 0)
                      {
                        v160 = *(v3 + 4704);
                        if ((v160 & 0x20000) != 0 && *(v3 + 2928) && (v159 & v160 & 0x40000) != 0 && *(v3 + 2936))
                        {
                          AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
                        }
                      }

                      *&v161 = *(v3 + 1112) + 24;
                      *&v162 = *(v3 + 1120) + 24;
                      if (**(v3 + 1088) <= 2u)
                      {
                        *&v322.mSampleTime = *(v3 + 1112) + 24;
                        *&v322.mHostTime = v162;
                        v322.mRateScalar = 0.0;
                        v322.mWordClockTime = v3 + 17096;
                        *&v322.mSMPTETime.mSubframes = *(v3 + 3360);
                      }

                      else
                      {
                        v163 = *(v3 + 1128) + 24;
                        v322.mWordClockTime = v3 + 17096;
                        *&v322.mSMPTETime.mSubframes = *(v3 + 3360);
                        v322.mSampleTime = v162;
                        v322.mHostTime = v163;
                        v322.mRateScalar = v161;
                      }

                      *&v325.mNumberBuffers = 0;
                      v312 = 512;
                      AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
                      v164 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v164;
                      v165 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v165;
                      Parameter = AudioUnitProcessMultiple(*(v3 + 3032), &v312, &inInputBufferLists, *(v3 + 516), 6u, &v322, 1u, &v325);
                      v141 = *(v3 + 4688);
                      v152 = v141 & 0x80000000;
LABEL_326:
                      if (v152 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                      {
                        memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                        memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
                        if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
                        {
                          v166 = 0.0;
                        }

                        else
                        {
                          v166 = 1.0;
                        }

                        AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v166, 0);
                        v322.mSampleTime = *(v3 + 3488);
                        *&v325.mNumberBuffers = *(v3 + 3448);
                        v167 = *&a2->mRateScalar;
                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                        *&inInputBufferLists.mRateScalar = v167;
                        v168 = *&a2->mSMPTETime.mHours;
                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&inInputBufferLists.mSMPTETime.mHours = v168;
                        v312 = 512;
                        AudioUnitProcessMultiple(*(v3 + 3040), &v312, &inInputBufferLists, *(v3 + 516), 1u, &v322, 1u, &v325);
                        ioDataSize[0] = 8 * *(v3 + 516);
                        AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), ioDataSize);
                        ioDataSize[0] = 8 * *(v3 + 516);
                        Parameter = AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), ioDataSize);
                        v169 = *(v3 + 516);
                        v170 = *(v3 + 3448);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          p_inInputBufferLists = &inInputBufferLists;
                          v172 = v3;
                          v173 = 10;
LABEL_335:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v172, v173, v169, v170, p_inInputBufferLists);
                        }

LABEL_363:
                        MEMORY[0x28223BE20](Parameter);
                        v186 = (&v295 - 8);
                        *(&v295 - 3) = 0u;
                        *(&v295 - 2) = 0u;
                        *(&v295 - 4) = 0u;
                        *(&v295 - 16) = 3;
                        *&v189 = MEMORY[0x28223BE20](v187);
                        v302 = (&v295 - 8);
                        v294 = 0;
                        *(&v295 - 3) = v189;
                        *(&v295 - 2) = v189;
                        *(&v295 - 4) = v189;
                        *(&v295 - 16) = v190;
                        v191 = *(v3 + 4688);
                        if ((v191 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064) || (v191 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072) || (v191 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
                        {
                          *(&v295 - 7) = *(*(v3 + 3440) + 8);
                          *(&v295 - 5) = *(*(v3 + 4072) + 8);
                          *(&v295 - 3) = *(*(v3 + 4080) + 8);
                          v192 = *(v3 + 4064);
                          v193 = v302;
                          v302->mBuffers[0] = *(v192 + 8);
                          *&v193[1].mNumberBuffers = *(v192 + 24);
                          *&v193[1].mBuffers[0].mData = *(v192 + 56);
                        }

                        if ((v191 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 3064))
                        {
LABEL_386:
                          if ((v191 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 3072))
                          {
LABEL_399:
                            if ((v191 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 3088))
                            {
LABEL_412:
                              if (v150 == 2)
                              {
                                VoiceProcessorV4::SignalParamSwitchMixNF(v3, v153, v151, &v304);
                              }

                              else if (v150 == 1)
                              {
                                VoiceProcessorV2::SignalParamSwitchMix(v3, v153, v151, &v304, v188);
                              }

                              if (v154 == 1)
                              {
                                VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v311, v309, v153, v304);
                              }

                              else
                              {
                                VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, v311, v307, v153, v304);
                              }

                              v206 = memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
                              v207 = *(v3 + 4688);
                              if ((v207 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 2944) && v305 == 1.0)
                              {
                                v206 = memcpy(*(*(v3 + 17144) + 16), *(*(v3 + 4064) + 48), *(v3 + 4316));
                                v207 = *(v3 + 4688);
                              }

                              if ((v207 & 0x400000000000) == 0 || (v208 = *(v3 + 4704), (v208 & 0x400000000000) == 0) || !*(v3 + 3160))
                              {
LABEL_442:
                                if ((v207 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
                                {
                                  v224 = 1;
                                }

                                else
                                {
                                  v224 = (v207 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
                                }

                                ioDataSize[0] = 0;
                                LODWORD(v323) = 0;
                                AudioUnitGetParameter(*(v3 + 3136), 0x1Du, 0, 0, ioDataSize);
                                LODWORD(v225) = *ioDataSize < 1.0 && v224;
                                if (v224)
                                {
                                  LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                  if (*ioDataSize < 1.0)
                                  {
                                    vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
                                  }

                                  vDSP_vfill(&inInputBufferLists, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                }

                                else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 3136))
                                {
                                  v226 = 0;
                                  goto LABEL_465;
                                }

                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
                                }

                                v226 = 1;
LABEL_465:
                                v227 = *(v3 + 4032);
                                v228 = *(v3 + 4688);
                                if ((v228 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v229 = *(v3 + 3224)) != 0)
                                {
                                  v230 = *(v3 + 4024);
                                  v322.mSampleTime = *(v3 + 3440);
                                  v322.mHostTime = v230;
                                  *&v322.mRateScalar = v3 + 16904;
                                  v231 = *(v3 + 4040);
                                  *&v325.mNumberBuffers = *(v3 + 3448);
                                  *&v325.mBuffers[0].mNumberChannels = v231;
                                  v325.mBuffers[0].mData = v227;
                                  v312 = 512;
                                  v232 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v232;
                                  v233 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v233;
                                  AudioUnitProcessMultiple(v229, &v312, &inInputBufferLists, *(v3 + 516), 3u, &v322, 3u, &v325);
                                  AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v313);
                                  if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                  {
                                    goto LABEL_480;
                                  }

                                  v234 = *(v3 + 3224);
                                  v235 = 2;
                                }

                                else
                                {
                                  if ((v228 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v236 = *(v3 + 3232)) == 0)
                                  {
                                    v241 = 0;
                                    goto LABEL_485;
                                  }

                                  AudioUnitSetParameter(v236, 0x14u, 0, 0, *(v3 + 16756), 0);
                                  v237 = *(v3 + 3464);
                                  v322.mSampleTime = *(v3 + 3440);
                                  v322.mHostTime = v237;
                                  v322.mRateScalar = *(v3 + 4024);
                                  v322.mWordClockTime = v3 + 16904;
                                  v238 = *(v3 + 3504);
                                  *&v325.mNumberBuffers = *(v3 + 3448);
                                  *&v325.mBuffers[0].mNumberChannels = v238;
                                  v325.mBuffers[0].mData = *(v3 + 4040);
                                  v326 = v227;
                                  v239 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v239;
                                  v240 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v240;
                                  v312 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 3232), &v312, &inInputBufferLists, *(v3 + 516), 4u, &v322, 4u, &v325);
                                  AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v313);
                                  if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                  {
LABEL_480:
                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &inInputBufferLists);
                                    }

                                    v241 = 1;
LABEL_485:
                                    v242 = *(v3 + 4688);
                                    if ((v242 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                    {
                                      v243 = *(v3 + 3248);
                                      if (v243)
                                      {
                                        LODWORD(v302) = v226;
                                        v244 = v225;
                                        v322.mSampleTime = *(v3 + 3440);
                                        *&v325.mNumberBuffers = 0;
                                        v245 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v245;
                                        v246 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v246;
                                        v312 = 512;
                                        v247 = *(v3 + 4048);
                                        v248 = *(v247 + 16);
                                        v249 = *(v247 + 12);
                                        if ((AudioUnitProcessMultiple(v243, &v312, &inInputBufferLists, *(v3 + 516), 1u, &v322, 1u, &v325) || AudioUnitGetProperty(*(v3 + 3248), 0x13EDu, 0, 0, *(*(v3 + 4048) + 16), (*(v3 + 4048) + 12))) && v249 >= 4)
                                        {
                                          memset_pattern16(v248, &unk_2727568B0, v249 & 0xFFFFFFFC);
                                        }

                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 516), *(v3 + 4048), &inInputBufferLists);
                                        }

                                        v242 = *(v3 + 4688);
                                        LODWORD(v225) = v244;
                                        v226 = v302;
                                      }
                                    }

                                    if ((v242 & 0x80000000000) == 0)
                                    {
                                      goto LABEL_535;
                                    }

                                    if ((*(v3 + 4709) & 8) == 0 || (v250 = *(v3 + 3136)) == 0)
                                    {
LABEL_527:
                                      if ((*(v3 + 4709) & 8) != 0 && ((*(v3 + 3136) != 0) & v225) == 1)
                                      {
                                        v263 = *(*(v3 + 4040) + 16);
                                        vDSP_vmin(*(*(v3 + 4024) + 16), 1, v263, 1, v263, 1, *(v3 + 516));
                                        if ((*(v3 + 4695) & 2) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 3248))
                                        {
                                          vDSP_vmin(*(*(v3 + 4048) + 16), 1, v263, 1, v263, 1, *(v3 + 516));
                                        }

                                        v264 = *(*(v3 + 3440) + 16);
                                        v265 = *(*(v3 + 3448) + 16);
                                        MEMORY[0x2743CCDD0](v264, 1, v263, 1, v265, 1, *(v3 + 516));
                                        MEMORY[0x2743CCDD0](v264 + 4 * *(v3 + 516) + 4, 1, v263 + 1, 1, v265 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
                                        *(v264 + 4 * *(v3 + 516)) = *(v264 + 4 * *(v3 + 516)) * v263[*(v3 + 516) - 1];
                                        goto LABEL_537;
                                      }

                                      if ((*(v3 + 4709) & 8) != 0)
                                      {
                                        if (*(v3 + 3136) != 0 || v224)
                                        {
                                          goto LABEL_537;
                                        }

                                        goto LABEL_536;
                                      }

LABEL_535:
                                      if (v224)
                                      {
LABEL_537:
                                        if (((v226 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), &buf);
                                        }

                                        if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                        {
                                          v267 = *(v3 + 3272);
                                          if (v267)
                                          {
                                            AudioUnitSetParameter(v267, 0, 0, 0, *(v3 + 12612), 0);
                                            AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
                                            AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
                                            AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, v313, 0);
                                            AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
                                            v268 = *(v3 + 4112);
                                            v322.mSampleTime = *(v3 + 3360);
                                            v322.mHostTime = v268;
                                            v322.mRateScalar = *(v3 + 3448);
                                            v269 = *(v3 + 4024);
                                            v322.mWordClockTime = *(v3 + 4104);
                                            *&v322.mSMPTETime.mSubframes = v269;
                                            *&v322.mSMPTETime.mType = *(v3 + 4040);
                                            *&v325.mNumberBuffers = *(v3 + 1096);
                                            v312 = 512;
                                            v270 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v270;
                                            v271 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v271;
                                            AudioUnitProcessMultiple(*(v3 + 3272), &v312, &inInputBufferLists, *(v3 + 516), 6u, &v322, 1u, &v325);
                                            LODWORD(v320) = 0;
                                            AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, &v320);
                                            *(v3 + 12616) = v320;
                                            if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
                                            {
                                              AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v313);
                                              AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v313, 0);
                                            }
                                          }
                                        }

                                        goto LABEL_551;
                                      }

LABEL_536:
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      v266 = *(v3 + 516);
                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, v266);
                                      memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v266);
                                      goto LABEL_537;
                                    }

                                    AudioUnitSetParameter(v250, 6u, 0, 0, *(v3 + 4248), 0);
                                    AudioUnitSetParameter(*(v3 + 3136), 7u, 0, 0, *(v3 + 4264), 0);
                                    AudioUnitSetParameter(*(v3 + 3136), 0xDu, 0, 0, *(v3 + 4280), 0);
                                    v251 = *(v3 + 3472);
                                    v322.mSampleTime = *(v3 + 3440);
                                    v322.mHostTime = v251;
                                    v322.mRateScalar = *(v3 + 4120);
                                    v322.mWordClockTime = *(v3 + 4040);
                                    *&v322.mSMPTETime.mSubframes = v227;
                                    *&v322.mSMPTETime.mType = 0;
                                    if ((v225 & 1) == 0)
                                    {
                                      v322.mWordClockTime = 0;
                                    }

                                    v252 = *(v3 + 4104);
                                    *&v325.mNumberBuffers = 0;
                                    *&v325.mBuffers[0].mNumberChannels = v252;
                                    v325.mBuffers[0].mData = 0;
                                    v253 = *(v3 + 4688);
                                    LODWORD(v302) = v226;
                                    if ((v253 & 0x200000) != 0 && (v254 = *(v3 + 4704), (v254 & 0x200000) != 0) && (v255 = *(v3 + 2960)) != 0 && (v253 & v254 & 0x40000) != 0 && *(v3 + 2936))
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 0;
                                      *&v322.mSMPTETime.mType = *(v3 + 4088);
                                      AudioUnitGetParameter(v255, 0x2Du, 0, 0, &inInputBufferLists);
                                      AudioUnitSetParameter(*(v3 + 3136), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                      AudioUnitGetParameter(*(v3 + 2936), 0x2Du, 0, 0, &inInputBufferLists);
                                      AudioUnitSetParameter(*(v3 + 3136), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    }

                                    else if ((v253 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 2944) && v305 == 1.0)
                                    {
                                      *&v322.mSMPTETime.mType = *(v3 + 17144);
                                    }

                                    v256 = v225 == 0;
                                    v257 = v225;
                                    if (v225)
                                    {
                                      v225 = 3464;
                                    }

                                    else
                                    {
                                      v225 = 3448;
                                    }

                                    v258 = 4040;
                                    *&v325.mNumberBuffers = *(v3 + v225);
                                    if (!v256)
                                    {
                                      v258 = 4024;
                                    }

                                    v325.mBuffers[0].mData = *(v3 + v258);
                                    v259 = *&a2->mRateScalar;
                                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                    *&inInputBufferLists.mRateScalar = v259;
                                    v260 = *&a2->mSMPTETime.mHours;
                                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                    *&inInputBufferLists.mSMPTETime.mHours = v260;
                                    v312 = 512;
                                    AudioUnitProcessMultiple(*(v3 + 3136), &v312, &inInputBufferLists, *(v3 + 516), 6u, &v322, 3u, &v325);
                                    if ((v241 & v257 & 1) == 0)
                                    {
                                      AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, &v313);
                                    }

                                    v261 = *(v3 + 516);
                                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v261, *(v3 + v225), &inInputBufferLists);
                                      v261 = *(v3 + 516);
                                      v262 = *(v3 + 4024);
                                      LOBYTE(v225) = v257;
                                      if (*(v3 + 15881))
                                      {
LABEL_525:
                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v261, v262, &inInputBufferLists);
LABEL_526:
                                        LOBYTE(v226) = v302;
                                        if ((*(v3 + 4693) & 8) == 0)
                                        {
                                          goto LABEL_535;
                                        }

                                        goto LABEL_527;
                                      }
                                    }

                                    else
                                    {
                                      v262 = *(v3 + 4024);
                                      LOBYTE(v225) = v257;
                                    }

                                    if (*(v3 + 15882) != 1)
                                    {
                                      goto LABEL_526;
                                    }

                                    goto LABEL_525;
                                  }

                                  v234 = *(v3 + 3232);
                                  v235 = 9;
                                }

                                AudioUnitGetParameter(v234, v235, 0, 0, &v323);
                                AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v323, 0);
                                goto LABEL_480;
                              }

                              ioDataSize[0] = 1092616192;
                              if ((v207 & v208 & 0x80000000000000) != 0)
                              {
                                v206 = *(v3 + 3232);
                                if (v206)
                                {
                                  v206 = AudioUnitGetParameter(v206, 9u, 0, 0, ioDataSize);
                                  v207 = *(v3 + 4688);
                                }
                              }

                              if ((v207 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 3048))
                              {
                                LODWORD(inInputBufferLists.mSampleTime) = 0;
                                LODWORD(v322.mSampleTime) = 0;
                                v325.mNumberBuffers = 0;
                                AudioUnitGetParameter(*(v3 + 3056), 0x18u, 0, 0, &inInputBufferLists);
                                AudioUnitGetParameter(*(v3 + 3056), 0x19u, 0, 0, &v322);
                                AudioUnitGetParameter(*(v3 + 3056), 5u, 0, 0, &v325.mNumberBuffers);
                                AudioUnitSetParameter(*(v3 + 3160), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                AudioUnitSetParameter(*(v3 + 3160), 4u, 0, 0, *&v322.mSampleTime, 0);
                                AudioUnitSetParameter(*(v3 + 3160), 5u, 0, 0, *&v325.mNumberBuffers, 0);
                                v206 = AudioUnitSetParameter(*(v3 + 3160), 6u, 0, 0, *ioDataSize, 0);
                              }

                              MEMORY[0x28223BE20](v206);
                              v294 = 0;
                              *(&v295 - 3) = 0u;
                              *(&v295 - 2) = 0u;
                              *(&v295 - 12) = 2;
                              v209 = *(v3 + 3440);
                              *(&v295 - 4) = *(v209 + 16);
                              *(&v295 - 5) = *(v209 + 8);
                              v210 = *(v3 + 3464);
                              v294 = *(v210 + 16);
                              *(&v295 - 3) = *(v210 + 8);
                              *&v212 = MEMORY[0x28223BE20](v211);
                              *(&v295 - 3) = v212;
                              *(&v295 - 2) = v212;
                              *(&v295 - 12) = v213;
                              MEMORY[0x28223BE20](v214);
                              *(&v295 - 3) = 0;
                              v294 = 0;
                              *(&v295 - 4) = 0;
                              *(&v295 - 8) = 1;
                              v215 = *(v3 + 3472);
                              *(v216 - 32) = *(v215 + 16);
                              *(v216 - 40) = *(v215 + 8);
                              v217 = *(v3 + 4064);
                              *(v216 - 16) = *(v217 + 32);
                              *(v216 - 24) = *(v217 + 24);
                              v294 = *(v215 + 16);
                              *(&v295 - 3) = *(v215 + 8);
                              v322.mSampleTime = v218;
                              v322.mHostTime = v219;
                              *&v325.mNumberBuffers = v218;
                              *&v325.mBuffers[0].mNumberChannels = &v295 - 4;
                              v220 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v220;
                              v221 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v221;
                              v312 = 512;
                              AudioUnitProcessMultiple(*(v3 + 3160), &v312, &inInputBufferLists, *(v3 + 516), 2u, &v322, 2u, &v325);
                              v222 = *(v3 + 516);
                              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v222, *(v3 + 3440), &inInputBufferLists);
                                v222 = *(v3 + 516);
                                v223 = *(v3 + 3464);
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_440;
                                }
                              }

                              else
                              {
                                v223 = *(v3 + 3464);
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_441:
                                v207 = *(v3 + 4688);
                                goto LABEL_442;
                              }

LABEL_440:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v222, v223, &inInputBufferLists);
                              goto LABEL_441;
                            }

                            v296 = v186;
                            v297 = v154;
                            v298 = v153;
                            v299 = v150;
                            v300 = v151;
                            v202 = 0;
                            v323 = *(v3 + 4216);
                            LODWORD(v324) = *(v3 + 4228);
                            v320 = *(v3 + 4232);
                            v321 = *(v3 + 4244);
                            v318 = *(v3 + 4248);
                            v319 = *(v3 + 4260);
                            v316 = *(v3 + 4264);
                            v317 = *(v3 + 4276);
                            v314 = *(v3 + 4280);
                            v315 = *(v3 + 4292);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 3088), 0x64u, 4u, v202, *(&v323 + v202), 0);
                              AudioUnitSetParameter(*(v3 + 3088), 0x65u, 4u, v202, *(&v320 + v202), 0);
                              AudioUnitSetParameter(*(v3 + 3088), 0x66u, 4u, v202, *(&v318 + v202), 0);
                              AudioUnitSetParameter(*(v3 + 3088), 0x67u, 4u, v202, *(&v316 + v202), 0);
                              AudioUnitSetParameter(*(v3 + 3088), 0x68u, 4u, v202, *(&v314 + v202), 0);
                              ++v202;
                            }

                            while (v202 != 3);
                            *&v325.mNumberBuffers = 1;
                            *&v325.mBuffers[0].mNumberChannels = 0;
                            v325.mBuffers[0].mData = 0;
                            v325.mBuffers[0] = *(*(v3 + 4064) + 8);
                            *ioDataSize = v296;
                            v329 = v302;
                            v322.mSampleTime = *(v3 + 3440);
                            v322.mHostTime = &v325;
                            v322.mWordClockTime = 0;
                            v322.mRateScalar = 0.0;
                            v312 = 512;
                            v203 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v203;
                            v204 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v204;
                            AudioUnitProcessMultiple(*(v3 + 3088), &v312, &inInputBufferLists, *(v3 + 516), 2u, ioDataSize, 4u, &v322);
                            v303 = 0.0;
                            AudioUnitGetParameter(*(v3 + 3088), 0xAu, 0, 0, &v303);
                            v205 = *(v3 + 516);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v205, *(v3 + 3440), &inInputBufferLists);
                              v205 = *(v3 + 516);
                              v150 = v299;
                              v151 = v300;
                              v154 = v297;
                              v153 = v298;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_410;
                              }
                            }

                            else
                            {
                              v150 = v299;
                              v151 = v300;
                              v154 = v297;
                              v153 = v298;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_411:
                              AudioUnitGetParameter(*(v3 + 3088), 0x64u, 4u, 0, (v3 + 4216));
                              AudioUnitGetParameter(*(v3 + 3088), 0x65u, 4u, 0, (v3 + 4232));
                              AudioUnitGetParameter(*(v3 + 3088), 0x66u, 4u, 0, (v3 + 4248));
                              AudioUnitGetParameter(*(v3 + 3088), 0x67u, 4u, 0, (v3 + 4264));
                              AudioUnitGetParameter(*(v3 + 3088), 0x68u, 4u, 0, (v3 + 4280));
                              goto LABEL_412;
                            }

LABEL_410:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v205, &v325, &inInputBufferLists);
                            goto LABEL_411;
                          }

                          v296 = v186;
                          v297 = v154;
                          v298 = v153;
                          v299 = v150;
                          v300 = v151;
                          v198 = 0;
                          *ioDataSize = *(v3 + 4216);
                          LODWORD(v329) = *(v3 + 4228);
                          v323 = *(v3 + 4232);
                          LODWORD(v324) = *(v3 + 4244);
                          v320 = *(v3 + 4248);
                          v321 = *(v3 + 4260);
                          v318 = *(v3 + 4264);
                          v319 = *(v3 + 4276);
                          v316 = *(v3 + 4280);
                          v317 = *(v3 + 4292);
                          do
                          {
                            AudioUnitSetParameter(*(v3 + 3072), 0x12u, 4u, v198, *&ioDataSize[v198], 0);
                            AudioUnitSetParameter(*(v3 + 3072), 0x13u, 4u, v198, *(&v323 + v198), 0);
                            AudioUnitSetParameter(*(v3 + 3072), 0x14u, 4u, v198, *(&v320 + v198), 0);
                            AudioUnitSetParameter(*(v3 + 3072), 0x15u, 4u, v198, *(&v318 + v198), 0);
                            AudioUnitSetParameter(*(v3 + 3072), 0x16u, 4u, v198, *(&v316 + v198), 0);
                            ++v198;
                          }

                          while (v198 != 3);
                          v186 = v296;
                          *&v322.mSampleTime = v296;
                          v322.mHostTime = v302;
                          *&v325.mNumberBuffers = v296;
                          *&v325.mBuffers[0].mNumberChannels = v302;
                          v312 = 512;
                          v199 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v199;
                          v200 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v200;
                          AudioUnitProcessMultiple(*(v3 + 3072), &v312, &inInputBufferLists, *(v3 + 516), 2u, &v322, 2u, &v325);
                          v201 = *(v3 + 516);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v201, v186, &inInputBufferLists);
                            v201 = *(v3 + 516);
                            v150 = v299;
                            v151 = v300;
                            v154 = v297;
                            v153 = v298;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_397;
                            }
                          }

                          else
                          {
                            v150 = v299;
                            v151 = v300;
                            v154 = v297;
                            v153 = v298;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_398:
                            v191 = *(v3 + 4688);
                            goto LABEL_399;
                          }

LABEL_397:
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v201, v302, &inInputBufferLists);
                          goto LABEL_398;
                        }

                        v296 = &v295 - 8;
                        v297 = v154;
                        v298 = v153;
                        v299 = v150;
                        v300 = v151;
                        v194 = 0;
                        *ioDataSize = *(v3 + 4216);
                        LODWORD(v329) = *(v3 + 4228);
                        v323 = *(v3 + 4232);
                        LODWORD(v324) = *(v3 + 4244);
                        v320 = *(v3 + 4248);
                        v321 = *(v3 + 4260);
                        v318 = *(v3 + 4264);
                        v319 = *(v3 + 4276);
                        v316 = *(v3 + 4280);
                        v317 = *(v3 + 4292);
                        do
                        {
                          AudioUnitSetParameter(*(v3 + 3064), 9u, 4u, v194, *&ioDataSize[v194], 0);
                          AudioUnitSetParameter(*(v3 + 3064), 0xAu, 4u, v194, *(&v323 + v194), 0);
                          AudioUnitSetParameter(*(v3 + 3064), 0xBu, 4u, v194, *(&v320 + v194), 0);
                          AudioUnitSetParameter(*(v3 + 3064), 0xCu, 4u, v194, *(&v318 + v194), 0);
                          AudioUnitSetParameter(*(v3 + 3064), 0xDu, 4u, v194, *(&v316 + v194), 0);
                          ++v194;
                        }

                        while (v194 != 3);
                        v186 = v296;
                        *&v322.mSampleTime = v296;
                        v322.mHostTime = v302;
                        *&v325.mNumberBuffers = v296;
                        *&v325.mBuffers[0].mNumberChannels = v302;
                        v312 = 512;
                        v195 = *&a2->mRateScalar;
                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                        *&inInputBufferLists.mRateScalar = v195;
                        v196 = *&a2->mSMPTETime.mHours;
                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&inInputBufferLists.mSMPTETime.mHours = v196;
                        AudioUnitProcessMultiple(*(v3 + 3064), &v312, &inInputBufferLists, *(v3 + 516), 2u, &v322, 2u, &v325);
                        v197 = *(v3 + 516);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v197, v186, &inInputBufferLists);
                          v197 = *(v3 + 516);
                          v150 = v299;
                          v151 = v300;
                          v154 = v297;
                          v153 = v298;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_384;
                          }
                        }

                        else
                        {
                          v150 = v299;
                          v151 = v300;
                          v154 = v297;
                          v153 = v298;
                        }

                        if (*(v3 + 15882) != 1)
                        {
LABEL_385:
                          v191 = *(v3 + 4688);
                          goto LABEL_386;
                        }

LABEL_384:
                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v197, v302, &inInputBufferLists);
                        goto LABEL_385;
                      }

                      if ((v141 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
                      {
                        goto LABEL_363;
                      }

                      memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
                      memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
                      v320 = *(v3 + 3488);
                      v174 = *(v3 + 3480);
                      *ioDataSize = *(v3 + 3448);
                      v329 = v174;
                      v175 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v175;
                      v176 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v176;
                      Parameter = AudioUnitProcessMultiple(*(v3 + 3048), &v312, &inInputBufferLists, *(v3 + 516), 1u, &v320, 2u, ioDataSize);
                      v177 = *(v3 + 516);
                      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v177, *ioDataSize, &inInputBufferLists);
                        v177 = *(v3 + 516);
                        v178 = v329;
                        if (*(v3 + 15881))
                        {
                          goto LABEL_347;
                        }
                      }

                      else
                      {
                        v178 = v329;
                      }

                      if (*(v3 + 15882) != 1)
                      {
LABEL_348:
                        if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
                        {
                          goto LABEL_363;
                        }

                        memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                        memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
                        LODWORD(v318) = 1092616192;
                        v179 = *(v3 + 3480);
                        *&v325.mNumberBuffers = *(v3 + 3448);
                        *&v325.mBuffers[0].mNumberChannels = v179;
                        v180 = *(v3 + 4080);
                        v325.mBuffers[0].mData = *(v3 + 3496);
                        v326 = v180;
                        v327 = *(v3 + 3456);
                        v181 = *(v3 + 3464);
                        v182 = 10.0;
                        v323 = *(v3 + 3440);
                        v324 = v181;
                        if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                        {
                          v183 = *(v3 + 3232);
                          if (v183)
                          {
                            AudioUnitGetParameter(v183, 9u, 0, 0, &v318);
                            v182 = *&v318;
                          }
                        }

                        AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, v182, 0);
                        AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
                        v184 = *&a2->mRateScalar;
                        *&v322.mSampleTime = *&a2->mSampleTime;
                        *&v322.mRateScalar = v184;
                        v185 = *&a2->mSMPTETime.mHours;
                        *&v322.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v322.mSMPTETime.mHours = v185;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 3056), &v312, &v322, *(v3 + 516), 5u, &v325, 2u, &v323);
                        v169 = *(v3 + 516);
                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v169, v323, &v322);
                          v169 = *(v3 + 516);
                          v170 = v324;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_362;
                          }
                        }

                        else
                        {
                          v170 = v324;
                        }

                        if (*(v3 + 15882) != 1)
                        {
                          goto LABEL_363;
                        }

LABEL_362:
                        p_inInputBufferLists = &v322;
                        v172 = v3;
                        v173 = 27;
                        goto LABEL_335;
                      }

LABEL_347:
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v177, v178, &inInputBufferLists);
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v157 = *(v3 + 3032);
                  }

                  v158 = 2.0;
                  goto LABEL_316;
                }

                v143 = *(v3 + 4252);
                if (v143 == 0.0)
                {
                  v144 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
                  inInputBufferLists.mSampleTime = *(*(v3 + 3496) + 16);
                  inInputBufferLists.mHostTime = v144;
                  VPTimeFreqConverter_Analyze(*(v3 + 16872), *(*(v3 + 3408) + 16), &inInputBufferLists);
                  v143 = *(v3 + 4252);
                  Parameter = *(v3 + 3144);
                }

                AudioUnitSetParameter(Parameter, 6u, 0, 0, v143, 0);
                AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4268), 0);
                AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4284), 0);
                memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
                v145 = *(v3 + 3480);
                v322.mSampleTime = *(v3 + 4072);
                v322.mHostTime = v145;
                v322.mRateScalar = *(v3 + 4120);
                memset(&v322.mWordClockTime, 0, 24);
                *&v325.mNumberBuffers = *(v3 + 3464);
                *&v325.mBuffers[0].mNumberChannels = 0;
                v325.mBuffers[0].mData = *(v3 + 4032);
                v146 = *&a2->mRateScalar;
                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                *&inInputBufferLists.mRateScalar = v146;
                v147 = *&a2->mSMPTETime.mHours;
                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                *&inInputBufferLists.mSMPTETime.mHours = v147;
                v312 = 512;
                Parameter = AudioUnitProcessMultiple(*(v3 + 3144), &v312, &inInputBufferLists, *(v3 + 516), 6u, &v322, 3u, &v325);
                v148 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v148, *(v3 + 3464), &inInputBufferLists);
                  v148 = *(v3 + 516);
                  v149 = *(v3 + 4032);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
                  v149 = *(v3 + 4032);
                }

                if (*(v3 + 15882) != 1)
                {
LABEL_283:
                  v141 = *(v3 + 4688);
                  goto LABEL_284;
                }

LABEL_282:
                Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v148, v149, &inInputBufferLists);
                goto LABEL_283;
              }

LABEL_619:
              std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            v117 = *(v3 + 3384);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_223;
          }

          goto LABEL_222;
        }

        v109 = *(v3 + 16880);
        if ((*(v3 + 16888) - v109) <= 0x20)
        {
          goto LABEL_619;
        }

        ECApplicator::apply(*(v109 + 32), &buf, v302, &v310, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
        v110 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v110, *(v3 + 1096), &buf);
          v110 = *(v3 + 516);
          v111 = *(v3 + 3392);
          if (*(v3 + 15881))
          {
LABEL_196:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v110, v111, &buf);
            LODWORD(v110) = *(v3 + 516);
            v111 = *(v3 + 3392);
LABEL_197:
            inInputBufferLists.mSampleTime = *(*(v3 + 4088) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v110;
            VPTimeFreqConverter_Analyze(*(v3 + 17136), *(v111 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 516), *(v3 + 4088), &buf);
            }

            v108 = *(v3 + 4688);
            goto LABEL_201;
          }
        }

        else
        {
          v111 = *(v3 + 3392);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_197;
        }

        goto LABEL_196;
      }

      v74 = *(v3 + 12536);
      if (v73 != 3)
      {
        if (v74 == 2)
        {
          v75 = 1;
          v76 = 3;
          v77 = 2;
          v78 = 56;
          v79 = 40;
          goto LABEL_117;
        }

        v74 = *(v3 + 12536);
        if (v74 <= 0xC && ((0x1028u >> v74) & 1) != 0)
        {
          v75 = 3;
          v76 = 2;
          v77 = 1;
          v78 = 40;
          v79 = 24;
          goto LABEL_117;
        }
      }

      v75 = 1;
      v76 = 2;
      if (v74 != 9)
      {
        v77 = 0;
        v80 = 0;
        goto LABEL_119;
      }

      v77 = 3;
      v78 = 40;
      v79 = 56;
LABEL_117:
      *(v3 + 16960) = *(v72 + v79);
      *(v3 + 16984) = *(v72 + v78);
      v80 = v76;
      v76 = v75;
      v75 = 0;
LABEL_119:
      v81 = v72 + 8;
      *(v3 + 16912) = *(v81 + 16 * v75);
      *(v3 + 16936) = *(v81 + 16 * v76);
      goto LABEL_120;
    }
  }

  v13 = 0;
  while (((*(v3 + 472) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 1088);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 1088);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v5.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 101;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 12704);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v5.cpp", 101, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 1088));
    }

    v15 = *(*(v3 + 1096) + 16);
    v16 = *(v3 + 1088);
  }

  else
  {
    v15 = *(*(v3 + 1096) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 3224);
    if (v21)
    {
      v22 = *(v3 + 4024);
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 4040);
      v322.mSampleTime = inInputBufferLists.mSampleTime;
      v322.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v325.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v325.mNumberBuffers, &buf, *(v3 + 516), 2u, &inInputBufferLists, 2u, &v322);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v313);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v313, 0);
      }
    }
  }

LABEL_551:
  v325.mNumberBuffers = 0;
  v272 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v273 = v272;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v272 & 1))
    {
      goto LABEL_567;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v273 & 1) == 0)
    {
      goto LABEL_567;
    }
  }

  else
  {
    if ((v272 & 1) == 0)
    {
      goto LABEL_567;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v274 = *(v3 + 4688);
  if ((v274 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v275 = *(v3 + 3280);
    if (v275)
    {
      v276 = 1936748646;
LABEL_565:
      AudioUnitGetParameter(v275, v276, 0, 0, &v325.mNumberBuffers);
      goto LABEL_567;
    }
  }

  if ((v274 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v275 = *(v3 + 3272);
    if (v275)
    {
      v276 = 2;
      goto LABEL_565;
    }
  }

  *&v325.mNumberBuffers = v313;
LABEL_567:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    v325.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v277 = *(v3 + 3632);
    if (((v277 != 0) & v273) == 1)
    {
      AudioUnitSetParameter(v277, 0x12u, 0, 0, *&v325.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v278 = *(v3 + 3352);
    if (v278)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v322.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v306.realp) = 512;
      v279 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v279;
      v280 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v280;
      AudioUnitProcessMultiple(v278, &v306, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v322);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v281 = *(v3 + 3296);
    if (v281)
    {
      v282 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v282;
      v283 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v283;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v281, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v284 = *(v3 + 4696);
  if (v284 & 1) != 0 && (*(v3 + 4712))
  {
    v285 = *(v3 + 3304);
    if (v285)
    {
      v286 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v286;
      v287 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v287;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v285, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      v284 = *(v3 + 4696);
    }
  }

  if ((v284 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v288 = *(v3 + 3312)) != 0)
  {
    v289 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v289;
    v290 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v290;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v288, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v322.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v322);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v322.mSampleTime, 0);
    }

    LODWORD(v322.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v322);
    mSampleTime_low = LODWORD(v322.mSampleTime);
    if (*(v3 + 2308) != *&v322.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v292 = *(v3 + 3272);
        if (v292)
        {
          AudioUnitSetParameter(v292, 0x12u, 0, 0, *&v322.mSampleTime, 0);
          mSampleTime_low = LODWORD(v322.mSampleTime);
        }
      }

      *(v3 + 2308) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  return 0;
}

uint64_t VoiceProcessorV6::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v384 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 516), *(v3 + 1080)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 516), *(v3 + 1088)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 1080);
      v9 = (v3 + 516);
      v10 = *(v3 + 516);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 1080);
    goto LABEL_19;
  }

  v6 = *(v3 + 1080);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 1080);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 516);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 516);
    v11 = *(v3 + 1088);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 1088);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 1424);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 516);
  v12 = *(v3 + 1424);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v364 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 4688);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v363 = 0;
      *(v3 + 17096) = 0;
      *(v3 + 17112) = 0;
      *(v3 + 17104) = 0;
      *(v3 + 17096) = 1;
      *(v3 + 17104) = *(*(v3 + 1080) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 2792);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v363 = 512;
          this = AudioUnitProcess(this, &v363, &buf, *(v3 + 516), *(v3 + 1088));
        }
      }

      MEMORY[0x28223BE20](this);
      v30 = (&v348 - ((v29 + 15) & 0x3FFFFFFFF0));
      v31 = *(v3 + 1088);
      if (*v31)
      {
        v32 = 0;
        v33 = 2;
        v34 = v30;
        do
        {
          *&v34->mNumberBuffers = 0;
          *&v34->mBuffers[0].mNumberChannels = 0;
          v34->mBuffers[0].mData = 0;
          v34->mNumberBuffers = 1;
          v34->mBuffers[0] = *&v31[v33];
          ++v32;
          v33 += 4;
          ++v34;
        }

        while (v32 < *v31);
      }

      v35 = *(v3 + 4688);
      if ((v35 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v36 = *(v3 + 2800);
        if (v36)
        {
          v37 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v37;
          v38 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v38;
          v363 = 512;
          AudioUnitProcess(v36, &v363, &buf, *v9, v30);
          v44 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v44, v30, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1112), v30, v44, v39, v40, v41, v42, v43, v348);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v45 = *(v3 + 2808);
        if (v45)
        {
          v46 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v46;
          v47 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v47;
          v363 = 512;
          AudioUnitProcess(v45, &v363, &buf, *v9, v30 + 1);
          v53 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v53, v30 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1120), v30 + 1, v53, v48, v49, v50, v51, v52, v348);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v54 = *(v3 + 2816);
        if (v54)
        {
          v55 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v55;
          v56 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v56;
          v363 = 512;
          AudioUnitProcess(v54, &v363, &buf, *v9, v30 + 2);
          v62 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v62, v30 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1128), v30 + 2, v62, v57, v58, v59, v60, v61, v348);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v63 = *(v3 + 2824);
        if (v63)
        {
          v64 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v64;
          v65 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v65;
          v363 = 512;
          AudioUnitProcess(v63, &v363, &buf, *v9, v30 + 3);
          v71 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v71, v30 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 1136), v30 + 3, v71, v66, v67, v68, v69, v70, v348);
          v35 = *(v3 + 4688);
        }
      }

      if ((v35 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 2840))
      {
        v72 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v72;
        v73 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v73;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 1088), *(v3 + 1088), &buf, *(v3 + 516));
      }

      v74 = *(v3 + 1088);
      v75 = *v74;
      v353 = &v348;
      if (v75 < 3)
      {
        *(v3 + 16912) = *(v74 + 8);
        v80 = 0;
        v79 = 0;
        if (*v74 < 2u)
        {
          v78 = 0;
          v77 = 0;
        }

        else
        {
          v77 = 0;
          *(v3 + 16936) = *(v74 + 24);
          v78 = 1;
        }

LABEL_126:
        v85 = *(v3 + 4688);
        LODWORD(v352) = v80;
        LODWORD(v354) = v78;
        if ((v85 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v86 = *(v3 + 2848);
          if (v86)
          {
            v87 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v87;
            v88 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v88;
            v363 = 512;
            AudioUnitProcess(v86, &v363, &buf, *(v3 + 516), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v85 = *(v3 + 4688);
          }
        }

        if (v85 & 0x100) != 0 && (*(v3 + 4705))
        {
          v89 = *(v3 + 2856);
          if (v89)
          {
            v90 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v90;
            v91 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v91;
            v363 = 512;
            AudioUnitProcess(v89, &v363, &buf, *(v3 + 516), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 516), (v3 + 16928), &buf);
            }

            v85 = *(v3 + 4688);
          }
        }

        if ((v85 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v92 = *(v3 + 2872);
          if (v92)
          {
            v93 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v93;
            v94 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v94;
            v363 = 512;
            AudioUnitProcess(v92, &v363, &buf, *(v3 + 516), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 516), (v3 + 16976), &buf);
            }

            v85 = *(v3 + 4688);
          }
        }

        if ((v85 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v95 = *(v3 + 2880);
          if (v95)
          {
            MEMORY[0x28223BE20](v95);
            *(&v348 - 6) = 2;
            *(&v348 - 5) = *(v3 + 16912);
            *(&v348 - 3) = *(v3 + 16936);
            *&v373.mSampleTime = &v348 - 6;
            v373.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16904;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v363 = 512;
            v96 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v96;
            v97 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v97;
            AudioUnitProcessMultiple(v98, &v363, &buf, *(v3 + 516), 2u, &v373, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 516), (v3 + 16904), &buf);
            }

            v85 = *(v3 + 4688);
          }
        }

        v362 = 0;
        v99 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v99;
        v100 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v100;
        if ((v85 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 3000))
        {
LABEL_169:
          v361 = 0;
          if ((v85 & 0x8000000) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 3008))
          {
            goto LABEL_184;
          }

          v104 = *(v3 + 16880);
          if ((*(v3 + 16888) - v104) <= 0x28)
          {
            goto LABEL_712;
          }

          ECApplicator::apply(*(v104 + 40), &buf, v354, &v361, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
          v105 = *(v3 + 516);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v105, *(v3 + 1096), &buf);
            v105 = *(v3 + 516);
            v106 = *(v3 + 17192);
            if (*(v3 + 15881))
            {
LABEL_179:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v105, v106, &buf);
              LODWORD(v105) = *(v3 + 516);
              v106 = *(v3 + 17192);
LABEL_180:
              inInputBufferLists.mSampleTime = *(*(v3 + 4096) + 16);
              inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v105;
              VPTimeFreqConverter_Analyze(*(v3 + 17256), *(v106 + 16), &inInputBufferLists);
              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 516), *(v3 + 4096), &buf);
              }

              v85 = *(v3 + 4688);
LABEL_184:
              LODWORD(v351) = v79;
              if ((v85 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 2968))
              {
                v107 = *(v3 + 16880);
                if (*(v3 + 16888) == v107)
                {
                  goto LABEL_712;
                }

                PropertyInfo = ECApplicator::apply(*v107, &buf, v77, &v362 + 1, (v3 + 4216), (v3 + 4232), (v3 + 4248), (v3 + 4264), (v3 + 4280), (v3 + 4296));
                v109 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v109, (v3 + 16904), &buf);
                  v109 = *(v3 + 516);
                  v110 = *(v3 + 3360);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_228;
                  }
                }

                else
                {
                  v110 = *(v3 + 3360);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_228:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v109, v110, &buf);
                }
              }

              else
              {
                v111 = 0;
                while (((*(v3 + 472) >> v111) & 1) == 0)
                {
                  if (++v111 == 32)
                  {
                    v111 = 33;
                    break;
                  }
                }

                if (v111 >= **(v3 + 1088))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v112 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                  {
                    v113 = (*v112 ? *v112 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                    {
                      v114 = **(v3 + 1088);
                      LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                      *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v6.cpp";
                      WORD2(inInputBufferLists.mHostTime) = 1024;
                      *(&inInputBufferLists.mHostTime + 6) = 356;
                      WORD1(inInputBufferLists.mRateScalar) = 1024;
                      HIDWORD(inInputBufferLists.mRateScalar) = v111;
                      LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                      *(&inInputBufferLists.mWordClockTime + 2) = v114;
                      _os_log_impl(&dword_2724B4000, v113, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
                    }
                  }

                  v115 = *(v3 + 12704);
                  if (v115 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v115, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v6.cpp", 356, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v111, **(v3 + 1088));
                  }

                  v111 = 0;
                }

                v116 = *(v3 + 1088) + 16 * v111;
                PropertyInfo = memcpy(*(*(v3 + 1096) + 16), *(v116 + 16), *(v116 + 12));
              }

              v117 = (v3 + 17096);
              if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
              {
                PropertyInfo = *(v3 + 3344);
                if (PropertyInfo)
                {
                  inInputBufferLists.mSampleTime = *(v3 + 1088);
                  inInputBufferLists.mHostTime = v3 + 17096;
                  v373.mSampleTime = *(v3 + 1096);
                  v363 = 512;
                  PropertyInfo = AudioUnitProcessMultiple(PropertyInfo, &v363, &buf, *(v3 + 516), 2u, &inInputBufferLists, 1u, &v373);
                }
              }

              v360 = 0;
              if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 2976))
              {
                v118 = *(v3 + 16880);
                if ((*(v3 + 16888) - v118) <= 8)
                {
                  goto LABEL_712;
                }

                PropertyInfo = ECApplicator::apply(*(v118 + 8), &buf, v354, &v360, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
                v119 = *(v3 + 516);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v119, (v3 + 16928), &buf);
                  v119 = *(v3 + 516);
                  v120 = *(v3 + 3368);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_231;
                  }
                }

                else
                {
                  v120 = *(v3 + 3368);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_231:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v119, v120, &buf);
                }
              }

              v359 = 0;
              if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 2984))
              {
                goto LABEL_243;
              }

              v121 = *(v3 + 16880);
              if ((*(v3 + 16888) - v121) <= 0x10)
              {
                goto LABEL_712;
              }

              PropertyInfo = ECApplicator::apply(*(v121 + 16), &buf, v352, &v359, (v3 + 4224), (v3 + 4240), (v3 + 4256), (v3 + 4272), (v3 + 4288), (v3 + 4304));
              v122 = *(v3 + 516);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v122, (v3 + 16952), &buf);
                v122 = *(v3 + 516);
                v123 = *(v3 + 3384);
                if (*(v3 + 15881))
                {
LABEL_242:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v122, v123, &buf);
LABEL_243:
                  v358 = 0;
                  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 2992))
                  {
                    goto LABEL_254;
                  }

                  v124 = *(v3 + 16880);
                  if ((*(v3 + 16888) - v124) > 0x18)
                  {
                    PropertyInfo = ECApplicator::apply(*(v124 + 24), &buf, v351, &v358, (v3 + 4228), (v3 + 4244), (v3 + 4260), (v3 + 4276), (v3 + 4292), (v3 + 4308));
                    v125 = *(v3 + 516);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v125, (v3 + 16976), &buf);
                      v125 = *(v3 + 516);
                      v126 = *(v3 + 3376);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_253;
                      }
                    }

                    else
                    {
                      v126 = *(v3 + 3376);
                    }

                    if (*(v3 + 15882) == 1)
                    {
LABEL_253:
                      PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v125, v126, &buf);
                    }

LABEL_254:
                    if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                    {
                      if (*(v3 + 3856))
                      {
                        *(v3 + 17128) = 0;
                        if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                        {
                          PropertyInfo = *(v3 + 2984);
                          if (PropertyInfo)
                          {
                            if (*(v3 + 17120))
                            {
                              LODWORD(inInputBufferLists.mSampleTime) = 0;
                              PropertyInfo = AudioUnitGetPropertyInfo(PropertyInfo, 0xF3Cu, 0, 0, &inInputBufferLists, 0);
                              if (!PropertyInfo && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
                              {
                                v127 = *(*(v3 + 17120) + 16);
                                PropertyInfo = AudioUnitGetProperty(*(v3 + 2984), 0xF3Cu, 0, 0, v127, &inInputBufferLists);
                                v128 = PropertyInfo;
                                if (*(v3 + 489) == 1)
                                {
                                  PropertyInfo = AudioUnitSetProperty(*(v3 + 3856), 0xF3Cu, 0, 0, v127, LODWORD(inInputBufferLists.mSampleTime));
                                }

                                *(v3 + 17128) = v128 == 0;
                              }
                            }
                          }
                        }
                      }
                    }

                    if ((*(v3 + 4692) & 0x10) != 0 && (*(v3 + 4708) & 0x10) != 0 && *(v3 + 3080))
                    {
                      v354 = (v3 + 17096);
                      MEMORY[0x28223BE20](PropertyInfo);
                      *(&v348 - 5) = 0u;
                      *(&v348 - 4) = 0u;
                      *(&v348 - 3) = 0u;
                      *(&v348 - 2) = 0u;
                      v347 = 0;
                      *(&v348 - 9) = *(v3 + 16912);
                      v129 = *(v3 + 16936);
                      *(&v348 - 20) = 4;
                      *(&v348 - 7) = v129;
                      *(&v348 - 5) = *(v3 + 16984);
                      v130 = *(*(v3 + 3360) + 16);
                      v131 = *(*(v3 + 3368) + 16);
                      v351 = *(v3 + 17112);
                      v352 = v131;
                      v132 = *(*(v3 + 3376) + 16);
                      v133 = *(*(v3 + 17320) + 16);
                      LODWORD(v379) = 1051372203;
                      MEMORY[0x2743CCD80](v130, 1);
                      MEMORY[0x2743CCD80](v133, 1, v132, 1, v133, 1, *(v3 + 516));
                      MEMORY[0x2743CCE20](v133, 1, &v379, v133, 1, *(v3 + 516));
                      *(&v348 - 3) = *(*(v3 + 17320) + 8);
                      *&v376.mNumberBuffers = &v348 - 10;
                      ioOutputBufferLists.realp = *(v3 + 1096);
                      v363 = 512;
                      v134 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v134;
                      v135 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v135;
                      AudioUnitProcessMultiple(*(v3 + 3080), &v363, &inInputBufferLists, *(v3 + 516), 1u, &v376, 1u, &ioOutputBufferLists);
                      v136 = v351;
                      memcpy((*(*(v3 + 17288) + 16) + 4 * *(v3 + 17280)), v351, 4 * *(v3 + 516));
                      memcpy((*(*(v3 + 17296) + 16) + 4 * *(v3 + 17280)), v130, 4 * *(v3 + 516));
                      v137 = v352;
                      memcpy((*(*(v3 + 17304) + 16) + 4 * *(v3 + 17280)), v352, 4 * *(v3 + 516));
                      memcpy((*(*(v3 + 17312) + 16) + 4 * *(v3 + 17280)), v132, 4 * *(v3 + 516));
                      LODWORD(v374) = 4 * *(v3 + 516);
                      AudioUnitGetProperty(*(v3 + 3080), 0x9087u, 0, 0, *(*(v3 + 17328) + 16), &v374);
                      v138 = *(*(v3 + 17336) + 16) + 4 * *(v3 + 516);
                      v373.mSampleTime = *(*(v3 + 17336) + 16);
                      v373.mHostTime = v138;
                      VPTimeFreqConverter_Analyze(*(v3 + 17344), *(*(v3 + 1096) + 16), &v373);
                      memcpy(v136, *(*(v3 + 17288) + 16), 4 * *(v3 + 516));
                      memcpy(v130, *(*(v3 + 17296) + 16), 4 * *(v3 + 516));
                      memcpy(v137, *(*(v3 + 17304) + 16), 4 * *(v3 + 516));
                      memcpy(v132, *(*(v3 + 17312) + 16), 4 * *(v3 + 516));
                      memmove(*(*(v3 + 17288) + 16), (*(*(v3 + 17288) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
                      memmove(*(*(v3 + 17296) + 16), (*(*(v3 + 17296) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
                      memmove(*(*(v3 + 17304) + 16), (*(*(v3 + 17304) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
                      memmove(*(*(v3 + 17312) + 16), (*(*(v3 + 17312) + 16) + 4 * *(v3 + 516)), 4 * *(v3 + 17280));
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &inInputBufferLists);
                      }

                      v117 = v354;
                    }

                    v139 = (*(*(v3 + 4112) + 16) + 4 * *(v3 + 516));
                    ioOutputBufferLists.realp = *(*(v3 + 4112) + 16);
                    ioOutputBufferLists.imagp = v139;
                    VPTimeFreqConverter_Analyze(*(v3 + 4176), *(v3 + 17112), &ioOutputBufferLists);
                    if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                    {
                      if (*(v3 + 2968))
                      {
                        v141 = (*(*(v3 + 3440) + 16) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 3440) + 16);
                        ioOutputBufferLists.imagp = v141;
                        VPTimeFreqConverter_Analyze(*(v3 + 4128), *(v3 + 16920), &ioOutputBufferLists);
                        v142 = (*(*(v3 + 4064) + 16) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 4064) + 16);
                        ioOutputBufferLists.imagp = v142;
                        VPTimeFreqConverter_Analyze(*(v3 + 4160), *(*(v3 + 3360) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 516), *(v3 + 3440), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                    {
                      if (*(v3 + 2976))
                      {
                        v143 = (*(*(v3 + 4072) + 16) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 4072) + 16);
                        ioOutputBufferLists.imagp = v143;
                        VPTimeFreqConverter_Analyze(*(v3 + 4136), *(v3 + 16944), &ioOutputBufferLists);
                        v144 = (*(*(v3 + 4064) + 32) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 4064) + 32);
                        ioOutputBufferLists.imagp = v144;
                        VPTimeFreqConverter_Analyze(*(v3 + 4168), *(*(v3 + 3368) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 516), *(v3 + 4072), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                    {
                      if (*(v3 + 2992))
                      {
                        v145 = (*(*(v3 + 4080) + 16) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 4080) + 16);
                        ioOutputBufferLists.imagp = v145;
                        VPTimeFreqConverter_Analyze(*(v3 + 4152), *(v3 + 16992), &ioOutputBufferLists);
                        v146 = (*(*(v3 + 4064) + 64) + 4 * *(v3 + 516));
                        ioOutputBufferLists.realp = *(*(v3 + 4064) + 64);
                        ioOutputBufferLists.imagp = v146;
                        VPTimeFreqConverter_Analyze(*(v3 + 16864), *(*(v3 + 3376) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 516), *(v3 + 4080), &buf);
                        }
                      }
                    }

                    v357 = 0.0;
                    v147 = *(v3 + 4688);
                    if ((v147 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                    {
                      Parameter = *(v3 + 3136);
                      if (Parameter)
                      {
                        Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v357);
                        v147 = *(v3 + 4688);
                      }
                    }

                    if ((v147 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v357 == 1.0)
                    {
                      v148 = (*(*(v3 + 4064) + 48) + 4 * *(v3 + 516));
                      ioOutputBufferLists.realp = *(*(v3 + 4064) + 48);
                      ioOutputBufferLists.imagp = v148;
                      VPTimeFreqConverter_Analyze(*(v3 + 17152), *(*(v3 + 3384) + 16), &ioOutputBufferLists);
                      v147 = *(v3 + 4688);
                    }

                    if ((v147 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 3144)) == 0)
                    {
LABEL_313:
                      v356 = 0;
                      if ((v147 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 3032))
                      {
                        v156 = 1;
                        v157 = 1;
                      }

                      else if ((v147 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                      {
                        v156 = 0;
                        v157 = *(v3 + 3056) != 0;
                      }

                      else
                      {
                        v156 = 0;
                        v157 = 0;
                      }

                      v158 = v147 & 0x80000000;
                      if ((v147 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                      {
                        v159 = 1;
                        v156 = 1;
                        v160 = 1;
                        if ((v147 & 0x100000000) == 0)
                        {
                          goto LABEL_338;
                        }
                      }

                      else
                      {
                        if ((v147 & 0x100000000) == 0)
                        {
                          v159 = 0;
                          v160 = 1;
                          goto LABEL_338;
                        }

                        v160 = 1;
                        if (*(v3 + 4708))
                        {
                          v161 = *(v3 + 3048);
                          v159 = v161 != 0;
                          if (v161)
                          {
                            v160 = 2;
                          }

                          else
                          {
                            v160 = 1;
                          }
                        }

                        else
                        {
                          v159 = 0;
                        }
                      }

                      v162 = *(v3 + 4704);
                      if ((v162 & 0x100000000) != 0 && *(v3 + 3048) && (v147 & v162 & 0x200000000) != 0 && *(v3 + 3056))
                      {
                        v160 = 2;
                        v156 = 2;
                      }

LABEL_338:
                      if ((v147 & 0x40000000) == 0)
                      {
                        goto LABEL_355;
                      }

                      if ((*(v3 + 4707) & 0x40) == 0)
                      {
                        goto LABEL_355;
                      }

                      Parameter = *(v3 + 3032);
                      if (!Parameter)
                      {
                        goto LABEL_355;
                      }

                      AudioUnitSetProperty(Parameter, 0x457u, 0, 0, (v3 + 2332), 4u);
                      if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                      {
                        v163 = *(v3 + 3032);
                        if (*(v3 + 3040))
                        {
                          v164 = *(v3 + 2752);
LABEL_345:
                          AudioUnitSetParameter(v163, 0x1Bu, 0, 0, v164, 0);
                          v165 = *(v3 + 4688);
                          if ((v165 & 0x400000) != 0)
                          {
                            v166 = *(v3 + 4704);
                            if ((v166 & 0x400000) != 0 && *(v3 + 2968) && (v165 & v166 & 0x800000) != 0 && *(v3 + 2976))
                            {
                              AudioUnitSetParameter(*(v3 + 3032), 0x3Fu, 0, 0, *(v3 + 4248) * *(v3 + 4252), 0);
                            }
                          }

                          *&v167 = *(v3 + 1112) + 24;
                          *&v168 = *(v3 + 1120) + 24;
                          if (**(v3 + 1088) <= 2u)
                          {
                            *&v373.mSampleTime = *(v3 + 1112) + 24;
                            *&v373.mHostTime = v168;
                            v373.mRateScalar = 0.0;
                            v373.mWordClockTime = v117;
                            *&v373.mSMPTETime.mSubframes = *(v3 + 3360);
                          }

                          else
                          {
                            v169 = *(v3 + 1128) + 24;
                            *&v373.mSMPTETime.mSubframes = *(v3 + 3360);
                            v373.mSampleTime = v168;
                            v373.mHostTime = v169;
                            v373.mRateScalar = v167;
                            v373.mWordClockTime = v117;
                          }

                          *&v376.mNumberBuffers = 0;
                          v363 = 512;
                          AudioUnitSetParameter(*(v3 + 3032), 0x2Cu, 0, 0, *(v3 + 4392), 0);
                          v170 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v170;
                          v171 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v171;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 3032), &v363, &inInputBufferLists, *(v3 + 516), 6u, &v373, 1u, &v376);
                          v147 = *(v3 + 4688);
                          v158 = v147 & 0x80000000;
LABEL_355:
                          if (v158 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 3040))
                          {
                            memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4192) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                            memcpy(*(*(v3 + 3488) + 16 * *(v3 + 4196) + 16), *(*(v3 + 4072) + 16), 4 * (2 * *(v3 + 516)));
                            if (*(v3 + 4296) == 0.0 && *(v3 + 4300) == 0.0)
                            {
                              v172 = 0.0;
                            }

                            else
                            {
                              v172 = 1.0;
                            }

                            AudioUnitSetParameter(*(v3 + 3040), 0x20u, 0, 0, v172, 0);
                            v373.mSampleTime = *(v3 + 3488);
                            *&v376.mNumberBuffers = *(v3 + 3448);
                            v173 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v173;
                            v174 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v174;
                            v363 = 512;
                            AudioUnitProcessMultiple(*(v3 + 3040), &v363, &inInputBufferLists, *(v3 + 516), 1u, &v373, 1u, &v376);
                            LODWORD(v379) = 8 * *(v3 + 516);
                            AudioUnitGetProperty(*(v3 + 3040), 0xE7Au, 0, 0, *(*(v3 + 4328) + 16), &v379);
                            LODWORD(v379) = 8 * *(v3 + 516);
                            Parameter = AudioUnitGetProperty(*(v3 + 3040), 0xE79u, 0, 0, *(*(v3 + 4328) + 32), &v379);
                            v175 = *(v3 + 516);
                            v176 = *(v3 + 3448);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              p_inInputBufferLists = &inInputBufferLists;
                              v178 = v3;
                              v179 = 10;
LABEL_364:
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v178, v179, v175, v176, p_inInputBufferLists);
                            }

LABEL_392:
                            MEMORY[0x28223BE20](Parameter);
                            v191 = (&v348 - 8);
                            *(&v348 - 3) = 0u;
                            *(&v348 - 2) = 0u;
                            *(&v348 - 4) = 0u;
                            *(&v348 - 16) = 3;
                            *&v194 = MEMORY[0x28223BE20](v192);
                            v354 = (&v348 - 8);
                            v347 = 0;
                            *(&v348 - 3) = v194;
                            *(&v348 - 2) = v194;
                            *(&v348 - 4) = v194;
                            *(&v348 - 16) = v195;
                            v196 = *(v3 + 4688);
                            if ((v196 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 3064) || (v196 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 3072) || (v196 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 3088))
                            {
                              *(&v348 - 7) = *(*(v3 + 3440) + 8);
                              *(&v348 - 5) = *(*(v3 + 4072) + 8);
                              *(&v348 - 3) = *(*(v3 + 4080) + 8);
                              v197 = *(v3 + 4064);
                              v198 = v354;
                              v354->mBuffers[0] = *(v197 + 8);
                              *&v198[1].mNumberBuffers = *(v197 + 24);
                              *&v198[1].mBuffers[0].mData = *(v197 + 56);
                            }

                            if ((v196 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 3064))
                            {
LABEL_415:
                              if ((v196 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 3072))
                              {
LABEL_428:
                                if ((v196 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 3088))
                                {
LABEL_441:
                                  if (v156 == 2)
                                  {
                                    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v159, v157, &v356);
                                  }

                                  else if (v156 == 1)
                                  {
                                    VoiceProcessorV2::SignalParamSwitchMix(v3, v159, v157, &v356, v193);
                                  }

                                  if (v160 == 1)
                                  {
                                    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v362), v360, v159, v356);
                                  }

                                  else
                                  {
                                    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v362), v358, v159, v356);
                                  }

                                  v211 = memcpy(*(*(v3 + 3472) + 16), *(*(v3 + 4064) + 16), *(v3 + 4316));
                                  v212 = *(v3 + 4688);
                                  if ((v212 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v357 == 1.0)
                                  {
                                    v211 = memcpy(*(*(v3 + 17144) + 16), *(*(v3 + 4064) + 48), *(v3 + 4316));
                                    v212 = *(v3 + 4688);
                                  }

                                  if ((v212 & 0x400000000000) == 0 || (v213 = *(v3 + 4704), (v213 & 0x400000000000) == 0) || !*(v3 + 3160))
                                  {
LABEL_471:
                                    if ((v212 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 3224))
                                    {
                                      v229 = 1;
                                    }

                                    else
                                    {
                                      v229 = (v212 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 3232) != 0;
                                    }

                                    LODWORD(v374) = 0;
                                    LODWORD(v371) = 0;
                                    AudioUnitGetParameter(*(v3 + 3136), 0x1Du, 0, 0, &v374);
                                    if (*&v374 < 1.0)
                                    {
                                      v230 = v229;
                                    }

                                    else
                                    {
                                      v230 = 0;
                                    }

                                    if (v229)
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      if (*&v374 < 1.0)
                                      {
                                        vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, *(v3 + 516));
                                      }

                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 4024) + 16), 1, *(v3 + 516));
                                    }

                                    else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 3136))
                                    {
                                      LODWORD(v231) = 0;
                                      goto LABEL_494;
                                    }

                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 516), *(v3 + 3440), &buf);
                                    }

                                    LODWORD(v231) = 1;
LABEL_494:
                                    v232 = *(v3 + 4688);
                                    if ((v232 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0)
                                    {
                                      v233 = *(v3 + 3200);
                                      if (v233)
                                      {
                                        v234 = v230;
                                        v235 = v231;
                                        v363 = 512;
                                        inInputBufferLists.mSampleTime = *(v3 + 3440);
                                        v373.mSampleTime = *(v3 + 3448);
                                        v236 = AudioUnitProcessMultiple(v233, &v363, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v373);
                                        v237 = *(v3 + 17248);
                                        v240 = *(v237 + 12);
                                        v238 = v237 + 12;
                                        v239 = v240;
                                        v241 = *(v238 + 4);
                                        if ((v236 || AudioUnitGetProperty(*(v3 + 3200), 0x3ECu, 0, 0, *(v238 + 4), v238)) && v239 >= 4)
                                        {
                                          memset_pattern16(v241, &unk_2727568B0, v239 & 0xFFFFFFFC);
                                        }

                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *(v3 + 516), *(v3 + 3440), &buf);
                                        }

                                        v232 = *(v3 + 4688);
                                        LODWORD(v231) = v235;
                                        v230 = v234;
                                      }
                                    }

                                    v242 = *(v3 + 4032);
                                    if ((v232 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v243 = *(v3 + 3224)) != 0)
                                    {
                                      v244 = *(v3 + 4024);
                                      v373.mSampleTime = *(v3 + 3440);
                                      v373.mHostTime = v244;
                                      *&v373.mRateScalar = v3 + 16904;
                                      v245 = *(v3 + 4040);
                                      *&v376.mNumberBuffers = *(v3 + 3448);
                                      *&v376.mBuffers[0].mNumberChannels = v245;
                                      v376.mBuffers[0].mData = v242;
                                      v363 = 512;
                                      v246 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v246;
                                      v247 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v247;
                                      AudioUnitProcessMultiple(v243, &v363, &inInputBufferLists, *(v3 + 516), 3u, &v373, 3u, &v376);
                                      AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v364);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
                                        goto LABEL_520;
                                      }

                                      v248 = *(v3 + 3224);
                                      v249 = 2;
                                    }

                                    else
                                    {
                                      if ((v232 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v250 = *(v3 + 3232)) == 0)
                                      {
                                        v255 = 0;
                                        goto LABEL_525;
                                      }

                                      AudioUnitSetParameter(v250, 0x14u, 0, 0, *(v3 + 16756), 0);
                                      v251 = *(v3 + 3464);
                                      v373.mSampleTime = *(v3 + 3440);
                                      v373.mHostTime = v251;
                                      v373.mRateScalar = *(v3 + 4024);
                                      v373.mWordClockTime = v3 + 16904;
                                      v252 = *(v3 + 3504);
                                      *&v376.mNumberBuffers = *(v3 + 3448);
                                      *&v376.mBuffers[0].mNumberChannels = v252;
                                      v376.mBuffers[0].mData = *(v3 + 4040);
                                      v377 = v242;
                                      v253 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v253;
                                      v254 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v254;
                                      v363 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 3232), &v363, &inInputBufferLists, *(v3 + 516), 4u, &v373, 4u, &v376);
                                      AudioUnitGetParameter(*(v3 + 3232), 2u, 0, 0, &v364);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 3312))
                                      {
LABEL_520:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 3448), &inInputBufferLists);
                                        }

                                        v255 = 1;
LABEL_525:
                                        v256 = *(v3 + 4688);
                                        if ((v256 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v257 = *(v3 + 3248);
                                          if (v257)
                                          {
                                            LODWORD(v354) = v255;
                                            v352 = v242;
                                            v258 = v230;
                                            v259 = v231;
                                            v373.mSampleTime = *(v3 + 3440);
                                            *&v376.mNumberBuffers = 0;
                                            v260 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v260;
                                            v261 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v261;
                                            v363 = 512;
                                            v262 = *(v3 + 4048);
                                            v263 = *(v262 + 16);
                                            v264 = *(v262 + 12);
                                            if ((AudioUnitProcessMultiple(v257, &v363, &inInputBufferLists, *(v3 + 516), 1u, &v373, 1u, &v376) || AudioUnitGetProperty(*(v3 + 3248), 0x13EDu, 0, 0, *(*(v3 + 4048) + 16), (*(v3 + 4048) + 12))) && v264 >= 4)
                                            {
                                              memset_pattern16(v263, &unk_2727568B0, v264 & 0xFFFFFFFC);
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 516), *(v3 + 4048), &inInputBufferLists);
                                            }

                                            v256 = *(v3 + 4688);
                                            LODWORD(v231) = v259;
                                            v230 = v258;
                                            v242 = v352;
                                            v255 = v354;
                                          }
                                        }

                                        if (v256 & 0x100000000000000) != 0 && (*(v3 + 4711))
                                        {
                                          v265 = *(v3 + 3240);
                                          if (v265)
                                          {
                                            LODWORD(v352) = v229;
                                            v229 = v255;
                                            v266 = v242;
                                            v267 = v230;
                                            v268 = v231;
                                            v373.mSampleTime = *(v3 + 3440);
                                            *&v376.mNumberBuffers = 0;
                                            v363 = 512;
                                            v269 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v269;
                                            v270 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v270;
                                            v271 = *(v3 + 4056);
                                            v351 = *(v271 + 16);
                                            v272 = *(v271 + 12);
                                            if ((AudioUnitProcessMultiple(v265, &v363, &inInputBufferLists, *(v3 + 516), 1u, &v373, 1u, &v376) || AudioUnitGetProperty(*(v3 + 3240), 0x3EAu, 0, 0, *(*(v3 + 4056) + 16), (*(v3 + 4056) + 12))) && v272 >= 4)
                                            {
                                              memset_pattern16(v351, &unk_2727568B0, v272 & 0xFFFFFFFC);
                                            }

                                            v256 = *(v3 + 4688);
                                            LODWORD(v231) = v268;
                                            v230 = v267;
                                            v242 = v266;
                                            v255 = v229;
                                            LOBYTE(v229) = v352;
                                          }
                                        }

                                        if ((v256 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 3256))
                                          {
                                            v273 = *(v3 + 17376);
                                            if (v273)
                                            {
                                              LODWORD(v354) = v255;
                                              if (v273 == 1)
                                              {
                                                v274 = 1136;
                                                v275 = 1112;
                                              }

                                              else
                                              {
                                                v274 = 1128;
                                                v275 = 1120;
                                              }

                                              LODWORD(v352) = v231;
                                              v276 = *(v3 + v274);
                                              v277 = *(v3 + v275);
                                              v278 = *(*(v3 + 17232) + 16) + 4 * *(v3 + 516);
                                              v373.mSampleTime = *(*(v3 + 17232) + 16);
                                              v373.mHostTime = v278;
                                              VPTimeFreqConverter_Analyze(*(v3 + 17264), *(v277 + 40), &v373);
                                              v279 = *(*(v3 + 17232) + 32) + 4 * *(v3 + 516);
                                              v373.mSampleTime = *(*(v3 + 17232) + 32);
                                              v373.mHostTime = v279;
                                              VPTimeFreqConverter_Analyze(*(v3 + 17272), *(v276 + 40), &v373);
                                              *&v376.mNumberBuffers = *(v3 + 17232);
                                              v379 = *&v376.mNumberBuffers;
                                              v363 = 512;
                                              v280 = *&a2->mRateScalar;
                                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                              *&inInputBufferLists.mRateScalar = v280;
                                              v281 = *&a2->mSMPTETime.mHours;
                                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&inInputBufferLists.mSMPTETime.mHours = v281;
                                              v282 = AudioUnitProcessMultiple(*(v3 + 3256), &v363, &inInputBufferLists, *(v3 + 516), 1u, &v376, 1u, &v379);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 516), *(v3 + 17232), &inInputBufferLists);
                                              }

                                              v283 = *(v3 + 17240);
                                              v286 = *(v283 + 12);
                                              v284 = v283 + 12;
                                              v285 = v286;
                                              v287 = *(v284 + 4);
                                              if ((v282 || AudioUnitGetProperty(*(v3 + 3256), 0x15FEu, 0, 0, *(v284 + 4), v284)) && v285 >= 4)
                                              {
                                                memset_pattern16(v287, &unk_2727568B0, v285 & 0xFFFFFFFC);
                                              }

                                              v255 = v354;
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 516), *(v3 + 17240), &inInputBufferLists);
                                              }

                                              v256 = *(v3 + 4688);
                                              LOBYTE(v231) = v352;
                                            }
                                          }
                                        }

                                        if ((v256 & 0x80000000000) == 0)
                                        {
                                          goto LABEL_611;
                                        }

                                        if ((*(v3 + 4709) & 8) == 0 || (v288 = *(v3 + 3136)) == 0)
                                        {
LABEL_593:
                                          if ((*(v3 + 4709) & 8) != 0 && ((*(v3 + 3136) != 0) & v230) == 1)
                                          {
                                            v302 = *(*(v3 + 4040) + 16);
                                            vDSP_vmin(*(*(v3 + 4024) + 16), 1, v302, 1, v302, 1, *(v3 + 516));
                                            v303 = *(v3 + 4688);
                                            if ((v303 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 3248))
                                            {
                                              vDSP_vmin(*(*(v3 + 4048) + 16), 1, v302, 1, v302, 1, *(v3 + 516));
                                              v303 = *(v3 + 4688);
                                            }

                                            if ((v303 & 0x100000000000000) != 0 && (*(v3 + 4711) & 1) != 0 && *(v3 + 3240))
                                            {
                                              vDSP_vmin(*(*(v3 + 4056) + 16), 1, v302, 1, v302, 1, *(v3 + 516));
                                              v303 = *(v3 + 4688);
                                            }

                                            if ((v303 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 3256))
                                            {
                                              vDSP_vmin(*(*(v3 + 17240) + 16), 1, v302, 1, v302, 1, *(v3 + 516));
                                              v303 = *(v3 + 4688);
                                            }

                                            v304 = v231;
                                            if ((v303 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0 && *(v3 + 3200))
                                            {
                                              vDSP_vmin(*(*(v3 + 17248) + 16), 1, v302, 1, v302, 1, *(v3 + 516));
                                            }

                                            v231 = *(*(v3 + 3440) + 16);
                                            v305 = *(*(v3 + 3448) + 16);
                                            MEMORY[0x2743CCDD0](v231, 1, v302, 1, v305, 1, *(v3 + 516));
                                            MEMORY[0x2743CCDD0](v231 + 4 * *(v3 + 516) + 4, 1, v302 + 1, 1, v305 + 4 * *(v3 + 516) + 4, 1, (*(v3 + 516) - 1));
                                            *(v231 + 4 * *(v3 + 516)) = *(v231 + 4 * *(v3 + 516)) * v302[*(v3 + 516) - 1];
                                            LOBYTE(v231) = v304;
                                            goto LABEL_613;
                                          }

                                          if ((*(v3 + 4709) & 8) != 0)
                                          {
                                            if ((*(v3 + 3136) != 0) | v229 & 1)
                                            {
                                              goto LABEL_613;
                                            }

                                            goto LABEL_612;
                                          }

LABEL_611:
                                          if (v229)
                                          {
LABEL_613:
                                            if (((v231 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 3136)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 516), *(v3 + 3448), &buf);
                                            }

                                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                            {
                                              v307 = *(v3 + 3272);
                                              if (v307)
                                              {
                                                if (*(v3 + 12536) == 13)
                                                {
                                                  v308 = *(v3 + 17352);
                                                  *v308 = v364;
                                                  v309 = *(v3 + 17280);
                                                  v310 = *(v3 + 516);
                                                  v311 = v309 % v310;
                                                  v312 = vcvtms_u32_f32(v309 / v310);
                                                  if (v311)
                                                  {
                                                    v313 = ((v311 / v310) * v308[v312 + 1]) + ((1.0 - (v311 / v310)) * v308[v312]);
                                                  }

                                                  else
                                                  {
                                                    v313 = v308[v312];
                                                  }

                                                  v364 = v313;
                                                  memmove(v308 + 1, v308, *(v3 + 17360) - v308 - 4);
                                                  v307 = *(v3 + 3272);
                                                }

                                                AudioUnitSetParameter(v307, 0, 0, 0, *(v3 + 12612), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 4u, 0, 0, *(v3 + 4216), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 0x13u, 0, 0, *(v3 + 4232), 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 3u, 0, 0, v364, 0);
                                                AudioUnitSetParameter(*(v3 + 3272), 0xEu, 0, 0, *(v3 + 2320), 0);
                                                if (*(v3 + 12536) == 13)
                                                {
                                                  v314 = *(v3 + 4112);
                                                  v373.mSampleTime = *(v3 + 3360);
                                                  v373.mHostTime = v314;
                                                  v315 = *(v3 + 3472);
                                                  v373.mRateScalar = *(v3 + 17336);
                                                  v373.mWordClockTime = v315;
                                                  *&v373.mSMPTETime.mSubframes = 0;
                                                  *&v373.mSMPTETime.mType = *(v3 + 17328);
                                                  *&v376.mNumberBuffers = 0;
                                                  v363 = 512;
                                                  v316 = *&a2->mRateScalar;
                                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                  *&inInputBufferLists.mRateScalar = v316;
                                                  v317 = *&a2->mSMPTETime.mHours;
                                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&inInputBufferLists.mSMPTETime.mHours = v317;
                                                  AudioUnitProcessMultiple(*(v3 + 3272), &v363, &inInputBufferLists, *(v3 + 516), 6u, &v373, 1u, &v376);
                                                  LODWORD(v379) = 0;
                                                  LODWORD(v369) = 4;
                                                  AudioUnitGetProperty(*(v3 + 3272), 0x15u, 0, 0, &v379, &v369);
                                                  if (!v379)
                                                  {
                                                    LODWORD(v367) = 0;
                                                    AudioUnitGetParameter(*(v3 + 3272), 0xBu, 0, 0, &v367);
                                                    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &v367, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
                                                  }
                                                }

                                                else
                                                {
                                                  v318 = *(v3 + 4112);
                                                  v373.mSampleTime = *(v3 + 3360);
                                                  v373.mHostTime = v318;
                                                  v319 = *(v3 + 4104);
                                                  v373.mRateScalar = *(v3 + 3448);
                                                  v373.mWordClockTime = v319;
                                                  *&v373.mSMPTETime.mSubframes = *(v3 + 4024);
                                                  *&v373.mSMPTETime.mType = *(v3 + 4040);
                                                  *&v376.mNumberBuffers = *(v3 + 1096);
                                                  v363 = 512;
                                                  v320 = *&a2->mRateScalar;
                                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                  *&inInputBufferLists.mRateScalar = v320;
                                                  v321 = *&a2->mSMPTETime.mHours;
                                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&inInputBufferLists.mSMPTETime.mHours = v321;
                                                  AudioUnitProcessMultiple(*(v3 + 3272), &v363, &inInputBufferLists, *(v3 + 516), 6u, &v373, 1u, &v376);
                                                }

                                                LODWORD(inInputBufferLists.mSampleTime) = 0;
                                                AudioUnitGetParameter(*(v3 + 3272), 1u, 0, 0, &inInputBufferLists);
                                                *(v3 + 12616) = LODWORD(inInputBufferLists.mSampleTime);
                                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
                                                {
                                                  AudioUnitGetParameter(*(v3 + 3272), 2u, 0, 0, &v364);
                                                  AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v364, 0);
                                                }
                                              }
                                            }

                                            goto LABEL_638;
                                          }

LABEL_612:
                                          LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                          v306 = *(v3 + 516);
                                          vDSP_vfill(&inInputBufferLists, *(*(v3 + 4040) + 16), 1, v306);
                                          memcpy(*(*(v3 + 3448) + 16), *(*(v3 + 3440) + 16), 8 * v306);
                                          goto LABEL_613;
                                        }

                                        AudioUnitSetParameter(v288, 6u, 0, 0, *(v3 + 4248), 0);
                                        AudioUnitSetParameter(*(v3 + 3136), 7u, 0, 0, *(v3 + 4264), 0);
                                        AudioUnitSetParameter(*(v3 + 3136), 0xDu, 0, 0, *(v3 + 4280), 0);
                                        v289 = *(v3 + 3472);
                                        v373.mSampleTime = *(v3 + 3440);
                                        v373.mHostTime = v289;
                                        v290 = *(v3 + 4040);
                                        v373.mRateScalar = *(v3 + 4120);
                                        v373.mWordClockTime = v290;
                                        *&v373.mSMPTETime.mSubframes = v242;
                                        *&v373.mSMPTETime.mType = 0;
                                        if ((v230 & 1) == 0)
                                        {
                                          v373.mWordClockTime = 0;
                                        }

                                        v291 = *(v3 + 4104);
                                        *&v376.mNumberBuffers = 0;
                                        *&v376.mBuffers[0].mNumberChannels = v291;
                                        v376.mBuffers[0].mData = 0;
                                        v292 = *(v3 + 4688);
                                        if ((v292 & 0x4000000) != 0 && (v293 = *(v3 + 4704), (v293 & 0x4000000) != 0) && (v295 = *(v3 + 3000)) != 0 && (v292 & v293 & 0x400000) != 0 && *(v3 + 2968))
                                        {
                                          v294 = v255;
                                          LODWORD(inInputBufferLists.mSampleTime) = 0;
                                          *&v373.mSMPTETime.mType = *(v3 + 4088);
                                          AudioUnitGetParameter(v295, 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 3136), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                          AudioUnitGetParameter(*(v3 + 2968), 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 3136), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                        }

                                        else
                                        {
                                          v294 = v255;
                                          if ((v292 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 2984) && v357 == 1.0)
                                          {
                                            *&v373.mSMPTETime.mType = *(v3 + 17144);
                                          }
                                        }

                                        if (v230)
                                        {
                                          v296 = 3464;
                                        }

                                        else
                                        {
                                          v296 = 3448;
                                        }

                                        v297 = 4040;
                                        *&v376.mNumberBuffers = *(v3 + v296);
                                        if (v230)
                                        {
                                          v297 = 4024;
                                        }

                                        v376.mBuffers[0].mData = *(v3 + v297);
                                        v298 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v298;
                                        v299 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v299;
                                        v363 = 512;
                                        AudioUnitProcessMultiple(*(v3 + 3136), &v363, &inInputBufferLists, *(v3 + 516), 6u, &v373, 3u, &v376);
                                        if ((v294 & v230 & 1) == 0)
                                        {
                                          AudioUnitGetParameter(*(v3 + 3136), 0x20u, 0, 0, &v364);
                                        }

                                        v300 = *(v3 + 516);
                                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v300, *(v3 + v296), &inInputBufferLists);
                                          v300 = *(v3 + 516);
                                          v301 = *(v3 + 4024);
                                          if (*(v3 + 15881))
                                          {
LABEL_591:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v300, v301, &inInputBufferLists);
LABEL_592:
                                            if ((*(v3 + 4693) & 8) == 0)
                                            {
                                              goto LABEL_611;
                                            }

                                            goto LABEL_593;
                                          }
                                        }

                                        else
                                        {
                                          v301 = *(v3 + 4024);
                                        }

                                        if (*(v3 + 15882) != 1)
                                        {
                                          goto LABEL_592;
                                        }

                                        goto LABEL_591;
                                      }

                                      v248 = *(v3 + 3232);
                                      v249 = 9;
                                    }

                                    AudioUnitGetParameter(v248, v249, 0, 0, &v371);
                                    AudioUnitSetParameter(*(v3 + 3312), 0x12u, 0, 0, *&v371, 0);
                                    goto LABEL_520;
                                  }

                                  LODWORD(v379) = 1092616192;
                                  if ((v212 & v213 & 0x80000000000000) != 0)
                                  {
                                    v211 = *(v3 + 3232);
                                    if (v211)
                                    {
                                      v211 = AudioUnitGetParameter(v211, 9u, 0, 0, &v379);
                                      v212 = *(v3 + 4688);
                                    }
                                  }

                                  if ((v212 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 3048))
                                  {
                                    LODWORD(inInputBufferLists.mSampleTime) = 0;
                                    LODWORD(v373.mSampleTime) = 0;
                                    v376.mNumberBuffers = 0;
                                    AudioUnitGetParameter(*(v3 + 3056), 0x18u, 0, 0, &inInputBufferLists);
                                    AudioUnitGetParameter(*(v3 + 3056), 0x19u, 0, 0, &v373);
                                    AudioUnitGetParameter(*(v3 + 3056), 5u, 0, 0, &v376.mNumberBuffers);
                                    AudioUnitSetParameter(*(v3 + 3160), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 3160), 4u, 0, 0, *&v373.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 3160), 5u, 0, 0, *&v376.mNumberBuffers, 0);
                                    v211 = AudioUnitSetParameter(*(v3 + 3160), 6u, 0, 0, *&v379, 0);
                                  }

                                  MEMORY[0x28223BE20](v211);
                                  v347 = 0;
                                  *(&v348 - 3) = 0u;
                                  *(&v348 - 2) = 0u;
                                  *(&v348 - 12) = 2;
                                  v214 = *(v3 + 3440);
                                  *(&v348 - 4) = *(v214 + 16);
                                  *(&v348 - 5) = *(v214 + 8);
                                  v215 = *(v3 + 3464);
                                  v347 = *(v215 + 16);
                                  *(&v348 - 3) = *(v215 + 8);
                                  *&v217 = MEMORY[0x28223BE20](v216);
                                  *(&v348 - 3) = v217;
                                  *(&v348 - 2) = v217;
                                  *(&v348 - 12) = v218;
                                  MEMORY[0x28223BE20](v219);
                                  *(&v348 - 3) = 0;
                                  v347 = 0;
                                  *(&v348 - 4) = 0;
                                  *(&v348 - 8) = 1;
                                  v220 = *(v3 + 3472);
                                  *(v221 - 32) = *(v220 + 16);
                                  *(v221 - 40) = *(v220 + 8);
                                  v222 = *(v3 + 4064);
                                  *(v221 - 16) = *(v222 + 32);
                                  *(v221 - 24) = *(v222 + 24);
                                  v347 = *(v220 + 16);
                                  *(&v348 - 3) = *(v220 + 8);
                                  v373.mSampleTime = v223;
                                  v373.mHostTime = v224;
                                  *&v376.mNumberBuffers = v223;
                                  *&v376.mBuffers[0].mNumberChannels = &v348 - 4;
                                  v225 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v225;
                                  v226 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v226;
                                  v363 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 3160), &v363, &inInputBufferLists, *(v3 + 516), 2u, &v373, 2u, &v376);
                                  v227 = *(v3 + 516);
                                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v227, *(v3 + 3440), &inInputBufferLists);
                                    v227 = *(v3 + 516);
                                    v228 = *(v3 + 3464);
                                    if (*(v3 + 15881))
                                    {
                                      goto LABEL_469;
                                    }
                                  }

                                  else
                                  {
                                    v228 = *(v3 + 3464);
                                  }

                                  if (*(v3 + 15882) != 1)
                                  {
LABEL_470:
                                    v212 = *(v3 + 4688);
                                    goto LABEL_471;
                                  }

LABEL_469:
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v227, v228, &inInputBufferLists);
                                  goto LABEL_470;
                                }

                                v348 = v191;
                                v349 = v160;
                                v350 = v159;
                                LODWORD(v351) = v156;
                                LODWORD(v352) = v157;
                                v207 = 0;
                                v374 = *(v3 + 4216);
                                LODWORD(v375) = *(v3 + 4228);
                                v371 = *(v3 + 4232);
                                v372 = *(v3 + 4244);
                                v369 = *(v3 + 4248);
                                v370 = *(v3 + 4260);
                                v367 = *(v3 + 4264);
                                v368 = *(v3 + 4276);
                                v365 = *(v3 + 4280);
                                v366 = *(v3 + 4292);
                                do
                                {
                                  AudioUnitSetParameter(*(v3 + 3088), 0x64u, 4u, v207, *(&v374 + v207), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x65u, 4u, v207, *(&v371 + v207), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x66u, 4u, v207, *(&v369 + v207), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x67u, 4u, v207, *(&v367 + v207), 0);
                                  AudioUnitSetParameter(*(v3 + 3088), 0x68u, 4u, v207, *(&v365 + v207), 0);
                                  ++v207;
                                }

                                while (v207 != 3);
                                *&v376.mNumberBuffers = 1;
                                *&v376.mBuffers[0].mNumberChannels = 0;
                                v376.mBuffers[0].mData = 0;
                                v376.mBuffers[0] = *(*(v3 + 4064) + 8);
                                v379 = v348;
                                v380 = v354;
                                v373.mSampleTime = *(v3 + 3440);
                                v373.mHostTime = &v376;
                                v373.mRateScalar = 0.0;
                                v373.mWordClockTime = 0;
                                v363 = 512;
                                v208 = *&a2->mRateScalar;
                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                *&inInputBufferLists.mRateScalar = v208;
                                v209 = *&a2->mSMPTETime.mHours;
                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&inInputBufferLists.mSMPTETime.mHours = v209;
                                AudioUnitProcessMultiple(*(v3 + 3088), &v363, &inInputBufferLists, *(v3 + 516), 2u, &v379, 4u, &v373);
                                v355 = 0.0;
                                AudioUnitGetParameter(*(v3 + 3088), 0xAu, 0, 0, &v355);
                                v210 = *(v3 + 516);
                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v210, *(v3 + 3440), &inInputBufferLists);
                                  v210 = *(v3 + 516);
                                  v157 = v352;
                                  v159 = v350;
                                  v156 = v351;
                                  v160 = v349;
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_439;
                                  }
                                }

                                else
                                {
                                  v157 = v352;
                                  v159 = v350;
                                  v156 = v351;
                                  v160 = v349;
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_440:
                                  AudioUnitGetParameter(*(v3 + 3088), 0x64u, 4u, 0, (v3 + 4216));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x65u, 4u, 0, (v3 + 4232));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x66u, 4u, 0, (v3 + 4248));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x67u, 4u, 0, (v3 + 4264));
                                  AudioUnitGetParameter(*(v3 + 3088), 0x68u, 4u, 0, (v3 + 4280));
                                  goto LABEL_441;
                                }

LABEL_439:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v210, &v376, &inInputBufferLists);
                                goto LABEL_440;
                              }

                              v348 = v191;
                              v349 = v160;
                              v350 = v159;
                              LODWORD(v351) = v156;
                              LODWORD(v352) = v157;
                              v203 = 0;
                              v379 = *(v3 + 4216);
                              LODWORD(v380) = *(v3 + 4228);
                              v374 = *(v3 + 4232);
                              LODWORD(v375) = *(v3 + 4244);
                              v371 = *(v3 + 4248);
                              v372 = *(v3 + 4260);
                              v369 = *(v3 + 4264);
                              v370 = *(v3 + 4276);
                              v367 = *(v3 + 4280);
                              v368 = *(v3 + 4292);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 3072), 0x12u, 4u, v203, *(&v379 + v203), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x13u, 4u, v203, *(&v374 + v203), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x14u, 4u, v203, *(&v371 + v203), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x15u, 4u, v203, *(&v369 + v203), 0);
                                AudioUnitSetParameter(*(v3 + 3072), 0x16u, 4u, v203, *(&v367 + v203), 0);
                                ++v203;
                              }

                              while (v203 != 3);
                              v191 = v348;
                              *&v373.mSampleTime = v348;
                              v373.mHostTime = v354;
                              *&v376.mNumberBuffers = v348;
                              *&v376.mBuffers[0].mNumberChannels = v354;
                              v363 = 512;
                              v204 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v204;
                              v205 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v205;
                              AudioUnitProcessMultiple(*(v3 + 3072), &v363, &inInputBufferLists, *(v3 + 516), 2u, &v373, 2u, &v376);
                              v206 = *(v3 + 516);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v206, v191, &inInputBufferLists);
                                v206 = *(v3 + 516);
                                v157 = v352;
                                v159 = v350;
                                v156 = v351;
                                v160 = v349;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_426;
                                }
                              }

                              else
                              {
                                v157 = v352;
                                v159 = v350;
                                v156 = v351;
                                v160 = v349;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_427:
                                v196 = *(v3 + 4688);
                                goto LABEL_428;
                              }

LABEL_426:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v206, v354, &inInputBufferLists);
                              goto LABEL_427;
                            }

                            v348 = (&v348 - 8);
                            v349 = v160;
                            v350 = v159;
                            LODWORD(v351) = v156;
                            LODWORD(v352) = v157;
                            v199 = 0;
                            v379 = *(v3 + 4216);
                            LODWORD(v380) = *(v3 + 4228);
                            v374 = *(v3 + 4232);
                            LODWORD(v375) = *(v3 + 4244);
                            v371 = *(v3 + 4248);
                            v372 = *(v3 + 4260);
                            v369 = *(v3 + 4264);
                            v370 = *(v3 + 4276);
                            v367 = *(v3 + 4280);
                            v368 = *(v3 + 4292);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 3064), 9u, 4u, v199, *(&v379 + v199), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xAu, 4u, v199, *(&v374 + v199), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xBu, 4u, v199, *(&v371 + v199), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xCu, 4u, v199, *(&v369 + v199), 0);
                              AudioUnitSetParameter(*(v3 + 3064), 0xDu, 4u, v199, *(&v367 + v199), 0);
                              ++v199;
                            }

                            while (v199 != 3);
                            v191 = v348;
                            *&v373.mSampleTime = v348;
                            v373.mHostTime = v354;
                            *&v376.mNumberBuffers = v348;
                            *&v376.mBuffers[0].mNumberChannels = v354;
                            v363 = 512;
                            v200 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v200;
                            v201 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v201;
                            AudioUnitProcessMultiple(*(v3 + 3064), &v363, &inInputBufferLists, *(v3 + 516), 2u, &v373, 2u, &v376);
                            v202 = *(v3 + 516);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v202, v191, &inInputBufferLists);
                              v202 = *(v3 + 516);
                              v157 = v352;
                              v159 = v350;
                              v156 = v351;
                              v160 = v349;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_413;
                              }
                            }

                            else
                            {
                              v157 = v352;
                              v159 = v350;
                              v156 = v351;
                              v160 = v349;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_414:
                              v196 = *(v3 + 4688);
                              goto LABEL_415;
                            }

LABEL_413:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v202, v354, &inInputBufferLists);
                            goto LABEL_414;
                          }

                          if ((v147 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 3048))
                          {
                            goto LABEL_392;
                          }

                          memcpy(*(*(v3 + 3488) + 16), *(*(v3 + 3440) + 16), 8 * *(v3 + 516));
                          memcpy(*(*(v3 + 3488) + 32), *(*(v3 + 4080) + 16), 8 * *(v3 + 516));
                          v371 = *(v3 + 3488);
                          v180 = *(v3 + 3480);
                          v379 = *(v3 + 3448);
                          v380 = v180;
                          v181 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v181;
                          v182 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v182;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 3048), &v363, &inInputBufferLists, *(v3 + 516), 1u, &v371, 2u, &v379);
                          v183 = *(v3 + 516);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v183, v379, &inInputBufferLists);
                            v183 = *(v3 + 516);
                            v184 = v380;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_376;
                            }
                          }

                          else
                          {
                            v184 = v380;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_377:
                            if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 3056))
                            {
                              goto LABEL_392;
                            }

                            memcpy(*(*(v3 + 3496) + 16), *(*(v3 + 3440) + 16), 4 * (2 * *(v3 + 516)));
                            memcpy(*(*(v3 + 3456) + 16), *(*(v3 + 3464) + 16), 4 * (2 * *(v3 + 516)));
                            LODWORD(v369) = 1092616192;
                            LODWORD(v367) = 1084227584;
                            v185 = *(v3 + 3480);
                            *&v376.mNumberBuffers = *(v3 + 3448);
                            *&v376.mBuffers[0].mNumberChannels = v185;
                            v186 = *(v3 + 4080);
                            v376.mBuffers[0].mData = *(v3 + 3496);
                            v377 = v186;
                            v378 = *(v3 + 3456);
                            v187 = *(v3 + 3464);
                            v374 = *(v3 + 3440);
                            v375 = v187;
                            if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                            {
                              v188 = *(v3 + 3232);
                              if (v188)
                              {
                                AudioUnitGetParameter(v188, 9u, 0, 0, &v369);
                              }
                            }

                            AudioUnitGetParameter(*(v3 + 3048), 0xEu, 4u, 0, &v367);
                            AudioUnitSetParameter(*(v3 + 3056), 0xAu, 0, 0, *&v369, 0);
                            AudioUnitSetParameter(*(v3 + 3056), 0x17u, 0, 0, *(v3 + 16756), 0);
                            AudioUnitSetParameter(*(v3 + 3056), 0x1Au, 0, 0, *&v367, 0);
                            v189 = *&a2->mRateScalar;
                            *&v373.mSampleTime = *&a2->mSampleTime;
                            *&v373.mRateScalar = v189;
                            v190 = *&a2->mSMPTETime.mHours;
                            *&v373.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v373.mSMPTETime.mHours = v190;
                            Parameter = AudioUnitProcessMultiple(*(v3 + 3056), &v363, &v373, *(v3 + 516), 5u, &v376, 2u, &v374);
                            v175 = *(v3 + 516);
                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                            {
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v175, v374, &v373);
                              v175 = *(v3 + 516);
                              v176 = v375;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_391;
                              }
                            }

                            else
                            {
                              v176 = v375;
                            }

                            if (*(v3 + 15882) != 1)
                            {
                              goto LABEL_392;
                            }

LABEL_391:
                            p_inInputBufferLists = &v373;
                            v178 = v3;
                            v179 = 27;
                            goto LABEL_364;
                          }

LABEL_376:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v183, v184, &inInputBufferLists);
                          goto LABEL_377;
                        }
                      }

                      else
                      {
                        v163 = *(v3 + 3032);
                      }

                      v164 = 2.0;
                      goto LABEL_345;
                    }

                    v149 = *(v3 + 4252);
                    if (v149 == 0.0)
                    {
                      v150 = *(*(v3 + 3496) + 16) + 4 * *(v3 + 516);
                      inInputBufferLists.mSampleTime = *(*(v3 + 3496) + 16);
                      inInputBufferLists.mHostTime = v150;
                      VPTimeFreqConverter_Analyze(*(v3 + 16872), *(*(v3 + 3408) + 16), &inInputBufferLists);
                      v149 = *(v3 + 4252);
                      Parameter = *(v3 + 3144);
                    }

                    AudioUnitSetParameter(Parameter, 6u, 0, 0, v149, 0);
                    AudioUnitSetParameter(*(v3 + 3144), 7u, 0, 0, *(v3 + 4268), 0);
                    AudioUnitSetParameter(*(v3 + 3144), 0xDu, 0, 0, *(v3 + 4284), 0);
                    memcpy(*(*(v3 + 3480) + 16), *(*(v3 + 4064) + 32), *(v3 + 4316));
                    v151 = *(v3 + 3480);
                    v373.mSampleTime = *(v3 + 4072);
                    v373.mHostTime = v151;
                    v373.mRateScalar = *(v3 + 4120);
                    memset(&v373.mWordClockTime, 0, 24);
                    *&v376.mNumberBuffers = *(v3 + 3464);
                    *&v376.mBuffers[0].mNumberChannels = 0;
                    v376.mBuffers[0].mData = *(v3 + 4032);
                    v152 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v152;
                    v153 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v153;
                    v363 = 512;
                    Parameter = AudioUnitProcessMultiple(*(v3 + 3144), &v363, &inInputBufferLists, *(v3 + 516), 6u, &v373, 3u, &v376);
                    v154 = *(v3 + 516);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v154, *(v3 + 3464), &inInputBufferLists);
                      v154 = *(v3 + 516);
                      v155 = *(v3 + 4032);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      v155 = *(v3 + 4032);
                    }

                    if (*(v3 + 15882) != 1)
                    {
LABEL_312:
                      v147 = *(v3 + 4688);
                      goto LABEL_313;
                    }

LABEL_311:
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v154, v155, &inInputBufferLists);
                    goto LABEL_312;
                  }

LABEL_712:
                  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                v123 = *(v3 + 3384);
              }

              if (*(v3 + 15882) != 1)
              {
                goto LABEL_243;
              }

              goto LABEL_242;
            }
          }

          else
          {
            v106 = *(v3 + 17192);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_180;
          }

          goto LABEL_179;
        }

        v101 = *(v3 + 16880);
        if ((*(v3 + 16888) - v101) <= 0x20)
        {
          goto LABEL_712;
        }

        ECApplicator::apply(*(v101 + 32), &buf, v77, &v362, (v3 + 4220), (v3 + 4236), (v3 + 4252), (v3 + 4268), (v3 + 4284), (v3 + 4300));
        v102 = *(v3 + 516);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v102, *(v3 + 1096), &buf);
          v102 = *(v3 + 516);
          v103 = *(v3 + 3392);
          if (*(v3 + 15881))
          {
LABEL_164:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v102, v103, &buf);
            LODWORD(v102) = *(v3 + 516);
            v103 = *(v3 + 3392);
LABEL_165:
            inInputBufferLists.mSampleTime = *(*(v3 + 4088) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v102;
            VPTimeFreqConverter_Analyze(*(v3 + 17136), *(v103 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 516), *(v3 + 4088), &buf);
            }

            v85 = *(v3 + 4688);
            goto LABEL_169;
          }
        }

        else
        {
          v103 = *(v3 + 3392);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_165;
        }

        goto LABEL_164;
      }

      v76 = *(v3 + 12536);
      if (v75 != 3)
      {
        if (v76 == 2)
        {
          v77 = 0;
          v78 = 1;
          v79 = 3;
          v80 = 2;
          v81 = 56;
          v82 = 40;
          goto LABEL_124;
        }

        v76 = *(v3 + 12536);
        if (v76 <= 0xC && ((0x1028u >> v76) & 1) != 0)
        {
          v77 = 0;
          v78 = 3;
          v79 = 2;
          v80 = 1;
          v81 = 40;
          v82 = 24;
          goto LABEL_124;
        }
      }

      if ((v76 | 4) != 0xD)
      {
        v80 = 0;
        v79 = 0;
        v77 = 1;
        v78 = 2;
LABEL_125:
        v84 = v74 + 8;
        *(v3 + 16912) = *(v84 + 16 * v77);
        *(v3 + 16936) = *(v84 + 16 * v78);
        goto LABEL_126;
      }

      v83 = *(v3 + 2400);
      v77 = 1;
      v79 = 3;
      v80 = 2;
      v81 = 56;
      v82 = 40;
      if (v83 == 1781740087)
      {
        v78 = 2;
      }

      else
      {
        v78 = 2;
        if (v83 != 1781805623)
        {
          v77 = 0;
          v78 = 1;
          v79 = 2;
          v80 = 3;
          v81 = 40;
          v82 = 56;
        }
      }

LABEL_124:
      *(v3 + 16960) = *(v74 + v82);
      *(v3 + 16984) = *(v74 + v81);
      goto LABEL_125;
    }
  }

  v13 = 0;
  while (((*(v3 + 472) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 1088);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 1088);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v6.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 51;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 12704);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v6.cpp", 51, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 1088));
    }

    v15 = *(*(v3 + 1096) + 16);
    v16 = *(v3 + 1088);
  }

  else
  {
    v15 = *(*(v3 + 1096) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 3224);
    if (v21)
    {
      v22 = *(v3 + 4024);
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 4040);
      v373.mSampleTime = inInputBufferLists.mSampleTime;
      v373.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v376.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v376.mNumberBuffers, &buf, *(v3 + 516), 2u, &inInputBufferLists, 2u, &v373);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 516), *(v3 + 1096), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 3312))
      {
        AudioUnitGetParameter(*(v3 + 3224), 1u, 0, 0, &v364);
        AudioUnitSetParameter(*(v3 + 3312), 0x23u, 0, 0, v364, 0);
      }
    }
  }

LABEL_638:
  v376.mNumberBuffers = 0;
  v322 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v323 = v322;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 16424) != 0) | v322 & 1))
    {
      goto LABEL_654;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v323 & 1) == 0)
    {
      goto LABEL_654;
    }
  }

  else
  {
    if ((v322 & 1) == 0)
    {
      goto LABEL_654;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v324 = *(v3 + 4688);
  if ((v324 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v325 = *(v3 + 3280);
    if (v325)
    {
      v326 = 1936748646;
LABEL_652:
      AudioUnitGetParameter(v325, v326, 0, 0, &v376.mNumberBuffers);
      goto LABEL_654;
    }
  }

  if ((v324 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v325 = *(v3 + 3272);
    if (v325)
    {
      v326 = 2;
      goto LABEL_652;
    }
  }

  *&v376.mNumberBuffers = v364;
LABEL_654:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 1096) + 16), 4 * *(v3 + 516));
    v376.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 16432) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v327 = *(v3 + 3632);
    if (((v327 != 0) & v323) == 1)
    {
      AudioUnitSetParameter(v327, 0x12u, 0, 0, *&v376.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 516), *(v3 + 1096), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v328 = *(v3 + 3264);
    if (v328)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v373.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(ioOutputBufferLists.realp) = 512;
      v329 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v329;
      v330 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v330;
      AudioUnitProcessMultiple(v328, &ioOutputBufferLists, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v373);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v331 = *(v3 + 3352);
    if (v331)
    {
      inInputBufferLists.mSampleTime = *(v3 + 1096);
      v373.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(ioOutputBufferLists.realp) = 512;
      v332 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v332;
      v333 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v333;
      AudioUnitProcessMultiple(v331, &ioOutputBufferLists, &buf, *(v3 + 516), 1u, &inInputBufferLists, 1u, &v373);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  if ((*(v3 + 4688) & 0x8000000000000000) != 0 && (*(v3 + 4704) & 0x8000000000000000) != 0)
  {
    v334 = *(v3 + 3296);
    if (v334)
    {
      v335 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v335;
      v336 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v336;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v334, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 516), *(v3 + 1096), &buf);
      }
    }
  }

  v337 = *(v3 + 4696);
  if (v337 & 1) != 0 && (*(v3 + 4712))
  {
    v338 = *(v3 + 3304);
    if (v338)
    {
      v339 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v339;
      v340 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v340;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v338, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
      v337 = *(v3 + 4696);
    }
  }

  if ((v337 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v341 = *(v3 + 3312)) != 0)
  {
    v342 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v342;
    v343 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v343;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v341, &inInputBufferLists, &buf, *(v3 + 516), *(v3 + 1096));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 516), *(v3 + 1096), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 3272))
    {
      LODWORD(v373.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 3312), 1u, 0, 0, &v373);
      AudioUnitSetParameter(*(v3 + 3272), 0x11u, 0, 0, *&v373.mSampleTime, 0);
    }

    LODWORD(v373.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 3312), 0x1Bu, 0, 0, &v373);
    mSampleTime_low = LODWORD(v373.mSampleTime);
    if (*(v3 + 2308) != *&v373.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v345 = *(v3 + 3272);
        if (v345)
        {
          AudioUnitSetParameter(v345, 0x12u, 0, 0, *&v373.mSampleTime, 0);
          mSampleTime_low = LODWORD(v373.mSampleTime);
        }
      }

      *(v3 + 2308) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 4396) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 1096) + 16), 1, &buf, *(*(v3 + 1096) + 16), 1, *(v3 + 516));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 516), *(v3 + 1096), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  return 0;
}