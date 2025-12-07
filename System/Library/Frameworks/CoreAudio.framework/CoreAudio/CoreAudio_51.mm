caulk::rt_safe_memory_resource *HALS_IOEngine2::_WriteToStream_Mixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a5 + 504))
  {
    return 0;
  }

  v12 = *(a3 + 12);
  v83 = 1;
  v13 = a1[102];
  if (v13)
  {
    v82[0] = *v13;
    LODWORD(v82[1]) = 0;
    *(&v82[1] + 4) = vmovn_s64(*(v13 + 8));
  }

  else
  {
    memset(v82, 0, 20);
  }

  (*(*a1 + 1232))(a1, a2, a3, a5, a4, a6, v82, &v83);
  v14 = v83 ? a6 : v82;
  for (i = a1[97]; i != a1[98]; ++i)
  {
    v16 = *i;
    if (*(*(*i + 32) + 16) == a2)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  (*(*a1 + 1240))(a1, v16, v12, *(a3 + 64), a4, v14, *(a5 + 656));
  v17 = a1[97];
  v18 = *v17;
  if (*(*(*v17 + 4) + 16) != a2)
  {
    v19 = (v17 + 1);
    do
    {
      v20 = *v19++;
      v18 = v20;
    }

    while (*(*(v20 + 4) + 16) != a2);
  }

  v21 = *(a3 + 12);
  v23 = v18 + 112;
  v22 = *(v18 + 14);
  v24 = 0xCCCCCCCCCCCCCCCDLL * ((*(v23 + 8) - v22) >> 3) <= v21 ? 0 : *(v22 + 40 * v21 + 32);
  v25 = a1[98];
  v26.f64[0] = NAN;
  v26.f64[1] = NAN;
  v80 = vnegq_f64(v26);
  do
  {
    v27 = atomic_load(*v17 + 48);
    if (v27)
    {
      v28 = *(*(*v17 + 4) + 104);
      if ((*(*v28 + 168))(v28))
      {
        v29 = *v17;
        if (*(*(*v17 + 4) + 16) != a2)
        {
          HALS_IOEngine2_IOContextInfo::AdjustOutputCountersForOverload(v29, v21, a4, v24);
          v29 = *v17;
        }

        v30 = *(v29 + 14);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v29 + 15) - v30) >> 3) > v21)
        {
          v31 = *(v30 + 40 * v21 + 24);
          v80 = vbslq_s8(vcgtzq_s64(v31), vbslq_s8(vcgtq_s64(v80, v31), v31, v80), v80);
        }
      }
    }

    ++v17;
  }

  while (v17 != v25);
  v32 = *(a3 + 456);
  if (v80.i64[0] > v32)
  {
    v32 = v80.i64[0];
  }

  v33 = a4 * 1.5;
  if (v33 < (v80.i64[1] - v32))
  {
    kdebug_trace();
    v32 = (v80.i64[1] - v33);
  }

  v34 = v80.i64[1] - v32;
  if (v80.i64[1] <= v32)
  {
    return 0;
  }

  v35 = v32;
  (*(*a1 + 1248))(a1, a2, a3, v34, v32);
  v36 = *(a5 + 368);
  v37 = *(a5 + 392);
  v38 = *(a5 + 688);
  *&v95.mRateScalar = *(a5 + 672);
  *&v95.mSMPTETime.mSubframes = v38;
  v39 = *(a5 + 720);
  *&v95.mSMPTETime.mHours = *(a5 + 704);
  v96 = v39;
  v40 = *(a5 + 624);
  v92 = *(a5 + 608);
  v93 = v40;
  v41 = *(a5 + 656);
  v94 = *(a5 + 640);
  *&v95.mSampleTime = v41;
  v42 = *(a5 + 560);
  v90[1] = *(a5 + 544);
  v90[2] = v42;
  v43 = *(a5 + 592);
  v90[3] = *(a5 + 576);
  v91 = v43;
  v44 = *(a5 + 528);
  v89 = *(a5 + 512);
  v90[0] = v44;
  DWORD2(v94) = 0;
  v91 = 0uLL;
  v95.mSampleTime = v35;
  v95.mHostTime = 0;
  v95.mFlags = 1;
  *&v97.mSampleTime = *&v35;
  *&v97.mRateScalar = *&v95.mRateScalar;
  *&v97.mSMPTETime.mSubframes = *&v95.mSMPTETime.mSubframes;
  *&v97.mSMPTETime.mHours = *&v95.mSMPTETime.mHours;
  v97.mFlags = 2;
  HALS_IOClock::TranslateTime(v36, &v95, &v97);
  v95.mHostTime = v97.mHostTime;
  v95.mFlags = 3;
  v97 = v95;
  (*(*a1 + 1256))(a1, a2, a3, &v89, v34);
  v45 = v95.mSampleTime - (*(a5 + 656) - *(a5 + 592));
  if (a1[138])
  {
    v88 = v95;
    (*(*a1 + 1312))(a1, a3, &v88, v34);
  }

  (*(*a1 + 1264))(a1, a2, a3, &v89, v34, v45);
  v46 = a1[102];
  if (v46)
  {
    v47 = *v46;
    v87[0] = *v46;
    LODWORD(v87[1]) = 0;
    *(&v87[1] + 4) = vmovn_s64(*(v46 + 8));
  }

  else
  {
    v47 = 0;
    memset(v87, 0, 20);
  }

  v50 = a1[103];
  if (v50)
  {
    v86[0] = *v50;
    LODWORD(v86[1]) = 0;
    *(&v86[1] + 4) = vmovn_s64(*(v50 + 8));
  }

  else
  {
    memset(v86, 0, 20);
  }

  v51 = **(a3 + 184);
  if (v51 && (*(*v51 + 16))(v51) && (v52 = *(a3 + 184), v53 = *(v52 + 8), v53 != *(v52 + 16)) && *(v52 + 56) != *(v53 + 28))
  {
    memset(&v88, 0, 24);
    (*(*a1 + 1280))(a1, a2, a3, &v89, v86, &v88, v34, v87);
  }

  else
  {
    (*(*a1 + 1272))(a1, a2, a3, &v89, v34, v87);
  }

  v54 = *(a3 + 200);
  if (v54 && (*(*a1 + 976))(a1))
  {
    v88 = v95;
    v88.mFlags = v95.mFlags | 6;
    HALS_IOClock::TranslateTime(v36, &v95, &v88);
    v84 = 0.0;
    v85[0] = 0;
    v85[1] = 0;
    HALS_IOClock::GetRaw0Time(v36, &v84, v85);
    HALB_CaptureFile::Write(v54, v90, &v88.mSampleTime, &v84, v34, v47);
  }

  v79 = v36;
  v81 = v37;
  CalculateSafetyViolation_Write(v36, v37, &v97);
  v56 = v55;
  v57 = v55;
  v58.n128_f32[0] = v55;
  if (v58.n128_f32[0] < 0.0)
  {
    kdebug_trace();
  }

  if (v57 >= 0.0)
  {
    goto LABEL_65;
  }

  v58.n128_u64[0] = *&v97.mSampleTime;
  if (v97.mSampleTime >= v95.mSampleTime)
  {
    goto LABEL_65;
  }

  v59 = a1[97];
  v60 = a1[98];
  if (v59 == v60)
  {
    goto LABEL_65;
  }

  v61 = 0;
  do
  {
    v62 = atomic_load((*v59 + 48));
    if (v62)
    {
      v63 = *(*(*v59 + 32) + 104);
      v61 += (*(*v63 + 160))(v63, v58);
    }

    v59 += 8;
  }

  while (v59 != v60);
  if (v61 <= 1)
  {
LABEL_65:
    kdebug_trace();
    v48 = (*(*a1 + 1288))(a1, a2, a3, &v89, v34, v87);
    kdebug_trace();
    CalculateSafetyViolation_Write(v79, v81, &v97);
    v72 = v71;
    v73 = v71;
    v74 = v71;
    if (v74 < 0)
    {
      kdebug_trace();
    }

    if (v73 < 0.0)
    {
      for (j = a1[97]; ; ++j)
      {
        v76 = *j;
        if (*(*(*j + 32) + 16) == a2)
        {
          break;
        }
      }

      v77 = v89;
      *v76 = v72;
      *(v76 + 8) = v77;
      ++*(v76 + 20);
    }

    return v48;
  }

  v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v78 = *(v64 + 8);
  v66 = (*(*a1 + 336))(a1, v58);
  v67 = (*(*v66 + 224))(v66);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    mSampleTime = v97.mSampleTime;
    v69 = v95.mSampleTime;
    v70 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v70 + 20) = 16;
    *(v70 + 16) = 0;
    *(v70 + 24) = "HALS_IOEngine2.cpp";
    *(v70 + 32) = 4373;
    *(v70 + 40) = v67;
    *(v70 + 48) = v69;
    *(v70 + 56) = mSampleTime;
    *(v70 + 64) = v56;
    *(v70 + 72) = v61;
    *v70 = &unk_1F5981F20;
    *(v70 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v78, v70);
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    goto LABEL_65;
  }

  __break(1u);
  return result;
}

void sub_1DE5E1A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::_WriteToStream_NonMixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 + 200);
  if ((*(*a1 + 976))(a1))
  {
    v13 = *(a5 + 368);
    v14 = *(a5 + 672);
    *&v33.mSampleTime = *(a5 + 656);
    *&v33.mRateScalar = v14;
    v15 = *(a5 + 704);
    *&v33.mSMPTETime.mSubframes = *(a5 + 688);
    *&v33.mSMPTETime.mHours = v15;
    v16 = *(a5 + 544);
    *&v32.mSampleTime = *(a5 + 528);
    *&v32.mRateScalar = v16;
    v17 = *(a5 + 576);
    if (*a6)
    {
      v18 = *a6 + *(a6 + 8);
    }

    else
    {
      v18 = 0;
    }

    *&v32.mSMPTETime.mSubframes = *(a5 + 560);
    *&v32.mSMPTETime.mHours = v17;
    WriteToCaptureFile(v12, v13, &v33, &v32, a4, v18);
  }

  CalculateSafetyViolation_Write(*(a5 + 368), *(a5 + 392), (a5 + 656));
  v20 = v19;
  if (v20 < 0.0)
  {
    kdebug_trace();
  }

  kdebug_trace();
  v21 = a3;
  v22 = (a5 + 512);
  v23 = (*(*a1 + 1288))(a1, a2, v21, a5 + 512, a4, a6);
  kdebug_trace();
  CalculateSafetyViolation_Write(*(a5 + 368), *(a5 + 392), (a5 + 656));
  v25 = v24;
  v26 = v24;
  v27 = v24;
  if (v27 < 0)
  {
    kdebug_trace();
  }

  if (v26 < 0.0)
  {
    for (i = a1[97]; ; ++i)
    {
      v29 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        break;
      }
    }

    v30 = *v22;
    *v29 = v25;
    *(v29 + 8) = v30;
    ++*(v29 + 20);
  }

  return v23;
}

atomic_uint *WriteToCaptureFile(atomic_uint *result, HALS_IOClock *this, AudioTimeStamp *a3, AudioTimeStamp *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v10 = result;
    v11 = *&a3->mRateScalar;
    *&v15.mSampleTime = *&a3->mSampleTime;
    *&v15.mRateScalar = v11;
    v12 = *&a3->mSMPTETime.mHours;
    *&v15.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
    *&v15.mSMPTETime.mHours = v12;
    v15.mFlags = DWORD2(v12) | 6;
    HALS_IOClock::TranslateTime(this, a3, &v15);
    v13 = 0.0;
    v14[0] = 0;
    v14[1] = 0;
    HALS_IOClock::GetRaw0Time(this, &v13, v14);
    return HALB_CaptureFile::Write(v10, a4, &v15.mSampleTime, &v13, a5, a6);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::CheckForColoringMixerGlitches(AudioTimeStamp const&,AudioTimeStamp const&,double)::$_0,std::tuple<char const*,int,char const*,double,double,double,unsigned int>>::perform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v14 = 136316674;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2082;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Detected possible coloring mixer glitch on %{public}s: buffer time: %.0f  actual time: %.0f  safety violation: %.0lf  with %u running contexts", &v14, 0x40u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::CheckForColoringMixerGlitches(AudioTimeStamp const&,AudioTimeStamp const&,double)::$_0,std::tuple<char const*,int,char const*,double,double,double,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void *HALS_IOEngine2::_ReadFromStream_Fetch(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  result = HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v15, a3, a1, a4);
  v8 = v15;
  if (v18)
  {
    v9 = (v18 + v19);
  }

  else
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = v16;
    v11 = v17;
    v12 = v20;
    if (*a5)
    {
      v13 = (*a5 + *(a5 + 8));
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "HALS_IOEngine2.cpp";
        v23 = 1024;
        v24 = 3337;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::_ReadFromStream_Fetch: ERROR: theOutputBuffer is null", buf, 0x12u);
      }

      v13 = 0;
    }

    v14 = (*(a3 + 64) * v11);
    result = memcpy(v13, (v8 + v10), v14);
    if (v9)
    {
      return memcpy(&v13[v14], v9, (*(a3 + 64) * v12));
    }
  }

  return result;
}

void HALS_IOEngine2::_ReadFromStream_ApplyStreamDSP(HALS_IOEngine2 *this, uint64_t a2, HALS_IOEngine2_StreamInfo *a3, const AudioServerPlugInIOCycleInfo *a4, unsigned int a5)
{
  v6 = **(a3 + 23);
  if (v6 && (*(*v6 + 16))(v6, a2))
  {
    p_mInputTime = &a4->mInputTime;
    kdebug_trace();
    HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v25, a3, p_mInputTime->mSampleTime, a5);
    v11 = v25;
    v12 = v26;
    v13 = v30;
    if (v28)
    {
      v14 = v28 + v29;
    }

    else
    {
      v14 = 0;
    }

    v23 = v30;
    v24 = v27;
    if (v25)
    {
      HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v27 << 32), v25 + v26, 0);
      v15 = *&p_mInputTime->mRateScalar;
      *v22 = *&p_mInputTime->mSampleTime;
      *&v22[16] = v15;
      v16 = *&p_mInputTime->mSMPTETime.mHours;
      *&v22[32] = *&p_mInputTime->mSMPTETime.mSubframes;
      *&v22[48] = v16;
      v17 = (*(*this + 344))(this);
      HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v22, 0, (*(a3 + 23) + 128), v11 + v12, &v24, v17);
      if (v14)
      {
        v18 = *&p_mInputTime->mWordClockTime;
        *&v22[8] = *&p_mInputTime->mHostTime;
        mSampleTime = p_mInputTime->mSampleTime;
        *&v22[24] = v18;
        *&v22[40] = *&p_mInputTime->mSMPTETime.mType;
        *&v22[56] = *&p_mInputTime->mFlags;
        v20 = mSampleTime + __PAIR64__(*&v22[44], v24);
        HALS_IOStreamDSP::AddInputStreamAtIndex(*(*(a3 + 23) + 128), *(*(a3 + 23) + 136), *(a3 + 17) | (v13 << 32), v14, 0);
        *v22 = v20;
        v21 = (*(*this + 344))(this);
        HALS_IOEngine2_StreamInfo::ApplyDSP(a3, v22, 1, (*(a3 + 23) + 128), v14, &v23, v21);
      }
    }

    kdebug_trace();
  }
}

uint64_t HALS_IOEngine2::_ReadFromStream_ConvertToTempBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 160);
  if (*a8)
  {
    v10 = (*a8 + *(a8 + 8));
  }

  else
  {
    v10 = 0;
  }

  v11 = *a5;
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a6 + 16);
  if (v11)
  {
    v14 = *(a5 + 2);
    v15 = *(a5 + 4);
    v16 = (*(a3 + 144) * v15);
    ioOutputDataSize = *(a3 + 64) * v15;
    result = AudioConverterConvertBuffer(*v9, v16, v10, &ioOutputDataSize, (v11 + v14));
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    v16 = 0;
    if (!v12)
    {
      return result;
    }
  }

  v18 = *(a3 + 144) * v13;
  ioOutputDataSize = *(a3 + 64) * v13;
  return AudioConverterConvertBuffer(*v9, v18, &v10[v16], &ioOutputDataSize, v12);
}

uint64_t HALS_IOEngine2::_IsolatedReadFromStream(HALS_IOEngine2 *this, unsigned int a2, uint64_t a3, const HALS_IOEngineInfo *a4, uint64_t a5)
{
  v5 = *(this + 101);
  if (v5)
  {
    v11 = v5 + 72;
    v10 = *(v5 + 72);
    v12 = (*(v11 + 8) - v10) >> 3;
    if (v12 <= a2)
    {
      v13 = 0;
    }

    else
    {
      if (v12 <= a2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(v10 + 8 * a2);
    }

    CalculateSafetyViolation_Read(a4, a3);
    v15 = v14;
    if (v15 <= -5.0)
    {
      kdebug_trace();
    }

    kdebug_trace();
    (*(*this + 1128))(this, v13, a4 + 512, a3, a5);
    kdebug_trace();
    CalculateSafetyViolation_Read(a4, a3);
    v17 = v16;
    if (v17 <= -5)
    {
      kdebug_trace();
    }
  }

  return 0;
}

uint64_t HALS_IOEngine2::_ReadFromStream(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, HALS_IOClock **a5, uint64_t a6)
{
  v6 = a1[101];
  if (!v6)
  {
    return 0;
  }

  result = 1852797029;
  if (a2)
  {
    for (i = a1[97]; i != a1[98]; i += 8)
    {
      if (*(*(*i + 32) + 16) == a2)
      {
        v11 = v6 + 72;
        v10 = *(v6 + 72);
        v12 = (*(v11 + 8) - v10) >> 3;
        if (v12 > a3)
        {
          if (v12 <= a3)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(v10 + 8 * a3);
          if (v13)
          {
            if (*(v13 + 48) == 1819304813 && (*(v13 + 52) & 0x40) == 0)
            {
              HALS_IOEngine2::_ReadFromStream_Mixable(a1, a2, v13, a4, a5, a6);
            }

            else
            {
              HALS_IOEngine2::_ReadFromStream_NonMixable(a1, a2, v13, a4, a5, a6);
            }

            return 0;
          }
        }

        return result;
      }
    }
  }

  return result;
}

void HALS_IOEngine2::_ReadFromStream_Mixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a6)
  {
    v12 = (*a6 + *(a6 + 8));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + 456);
  v14 = *(a5 + 592);
  v15 = fmax(v14, 0.0);
  if (!v13)
  {
    v13 = v15;
  }

  v16 = a4;
  v17 = v14 + a4;
  if (v17 > v13)
  {
    v45 = v12;
    v18 = *(a5 + 592);
    *&v49.mSMPTETime.mHours = *(a5 + 576);
    *&v50.mSampleTime = v18;
    v19 = *(a5 + 560);
    *&v49.mRateScalar = *(a5 + 544);
    *&v49.mSMPTETime.mSubframes = v19;
    v20 = *(a5 + 656);
    *&v50.mSMPTETime.mHours = *(a5 + 640);
    v51 = v20;
    v21 = *(a5 + 624);
    *&v50.mRateScalar = *(a5 + 608);
    *&v50.mSMPTETime.mSubframes = v21;
    v22 = *(a5 + 720);
    v54 = *(a5 + 704);
    v55 = v22;
    v23 = *(a5 + 688);
    v52 = *(a5 + 672);
    v53 = v23;
    v24 = *(a5 + 528);
    v48 = *(a5 + 512);
    *&v49.mSampleTime = v24;
    v25 = (v17 - v13);
    v26 = *(a1[101] + 16);
    if (v26 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if (v26 < v25)
    {
      v13 = (v17 - v26);
    }

    v28 = *(a5 + 368);
    DWORD2(v54) = 0;
    v51 = 0uLL;
    v50.mSampleTime = v13;
    v50.mHostTime = 0;
    v50.mFlags = 1;
    *&v56.mSampleTime = COERCE_UNSIGNED_INT64(v13);
    *&v56.mRateScalar = *&v50.mRateScalar;
    *&v56.mSMPTETime.mSubframes = *&v50.mSMPTETime.mSubframes;
    *&v56.mSMPTETime.mHours = *&v50.mSMPTETime.mHours;
    v56.mFlags = 2;
    HALS_IOClock::TranslateTime(v28, &v50, &v56);
    v50.mHostTime = v56.mHostTime;
    v50.mFlags = 3;
    CalculateSafetyViolation_Read(a5, a4);
    if (v29 <= -5)
    {
      kdebug_trace();
    }

    kdebug_trace();
    v30 = a1[102];
    if (v30)
    {
      v44 = *v30;
      v47[0] = *v30;
      LODWORD(v47[1]) = 0;
      *(&v47[1] + 4) = vmovn_s64(*(v30 + 8));
    }

    else
    {
      v44 = 0;
      memset(v47, 0, 20);
    }

    (*(*a1 + 1120))(a1, a2, a3, &v48, v27, v47);
    kdebug_trace();
    CalculateSafetyViolation_Read(a5, a4);
    v32 = v31;
    v33 = v31;
    if (v31 <= -5)
    {
      kdebug_trace();
    }

    if (v33 <= -5.0)
    {
      for (i = a1[97]; ; ++i)
      {
        v35 = *i;
        if (*(*(*i + 32) + 16) == a2)
        {
          break;
        }
      }

      v36 = *(a5 + 512);
      *v35 = v32;
      *(v35 + 8) = v36;
      ++*(v35 + 16);
    }

    v37 = *(a3 + 200);
    if ((*(*a1 + 976))(a1))
    {
      v38 = *(a5 + 368);
      v56 = v50;
      v46 = v49;
      WriteToCaptureFile(v37, v38, &v56, &v46, v27, v44);
    }

    v39 = **(a3 + 184);
    if (v39 && (*(*v39 + 16))(v39) && (v40 = *(a3 + 184), v41 = *(v40 + 8), v41 != *(v40 + 16)) && *(v40 + 56) != *(v41 + 28))
    {
      v43 = a1[103];
      if (v43)
      {
        v56.mSampleTime = *v43;
        LODWORD(v56.mHostTime) = 0;
        *(&v56.mHostTime + 4) = vmovn_s64(*(v43 + 8));
      }

      else
      {
        memset(&v56, 0, 20);
      }

      memset(&v46, 0, 24);
      (*(*a1 + 1160))(a1, a2, a3, &v48, &v56, &v46, v27, v47);
      (*(*a1 + 1176))(a1, a2, a3, &v48, v27);
    }

    else if (v50.mSampleTime >= 0.0)
    {
      (*(*a1 + 1152))(a1, a2, a3, &v48, v27, v47, v50.mSampleTime);
    }

    else
    {
      bzero(v44, (*(a3 + 64) * v27));
    }

    if (a1[138])
    {
      v56 = v50;
      (*(*a1 + 1312))(a1, a3, &v56, v27);
    }

    (*(*a1 + 1168))(a1, a2, a3, &v48, v27);
    v14 = *(a5 + 592);
    v42 = (v14 + v16);
    if (*(a3 + 456) <= v42)
    {
      *(a3 + 456) = v42;
    }

    v12 = v45;
  }

  if (v14 >= 0.0)
  {
    (*(*a1 + 1184))(a1, a3, a4, a6);
    (*(*a1 + 1192))(a1, a2, a3, a5, a4, a6);
  }

  else
  {
    bzero(v12, (*(a3 + 64) * a4));
  }
}

atomic_uint *HALS_IOEngine2::_ReadFromStream_NonMixable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, HALS_IOClock **a5, uint64_t a6)
{
  CalculateSafetyViolation_Read(a5, a4);
  v13 = v12;
  if (v13 <= -5.0)
  {
    kdebug_trace();
  }

  kdebug_trace();
  (*(*a1 + 1120))(a1, a2, a3, a5 + 64, a4, a6);
  kdebug_trace();
  CalculateSafetyViolation_Read(a5, a4);
  v15 = v14;
  v16 = v14;
  v17 = v14;
  if (v17 <= -5)
  {
    kdebug_trace();
  }

  if (v16 < -5.0)
  {
    for (i = a1[97]; ; ++i)
    {
      v19 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        break;
      }
    }

    v20 = a5[64];
    *v19 = v15;
    *(v19 + 8) = v20;
    ++*(v19 + 16);
  }

  v21 = *(a3 + 200);
  result = (*(*a1 + 976))(a1);
  if (result)
  {
    v23 = a5[46];
    v24 = *(a5 + 38);
    *&v30.mSampleTime = *(a5 + 37);
    *&v30.mRateScalar = v24;
    v25 = *(a5 + 40);
    *&v30.mSMPTETime.mSubframes = *(a5 + 39);
    *&v30.mSMPTETime.mHours = v25;
    v26 = *(a5 + 34);
    *&v29.mSampleTime = *(a5 + 33);
    *&v29.mRateScalar = v26;
    v27 = *(a5 + 36);
    if (*a6)
    {
      v28 = *a6 + *(a6 + 8);
    }

    else
    {
      v28 = 0;
    }

    *&v29.mSMPTETime.mSubframes = *(a5 + 35);
    *&v29.mSMPTETime.mHours = v27;
    return WriteToCaptureFile(v21, v23, &v30, &v29, a4, v28);
  }

  return result;
}

uint64_t HALS_IOEngine2::_BeginIOCycle(HALS_IOEngine2 *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v3 = *(this + 101);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    do
    {
      if (v6 < (v5 >> 3))
      {
        v7 = *(v4 + 8 * v6);
        if (v7)
        {
          v8 = *(a3 + 98);
          v9 = *(a3 + 43);
          v11 = *(a3 + 44);
          v10 = *(a3 + 45);
          *(v7 + 384) = *(a3 + 42);
          *(v7 + 400) = v9;
          *(v7 + 416) = v11;
          *(v7 + 432) = v10;
          v12 = *(a3 + 34);
          v13 = *(a3 + 35);
          v14 = *(a3 + 37);
          *(v7 + 288) = *(a3 + 36);
          *(v7 + 304) = v14;
          *(v7 + 256) = v12;
          *(v7 + 272) = v13;
          v15 = *(a3 + 38);
          v16 = *(a3 + 39);
          v17 = *(a3 + 41);
          *(v7 + 352) = *(a3 + 40);
          *(v7 + 368) = v17;
          *(v7 + 320) = v15;
          *(v7 + 336) = v16;
          v18 = *(a3 + 33);
          *(v7 + 224) = *(a3 + 32);
          *(v7 + 240) = v18;
          *(v7 + 448) = v8;
          v3 = *(this + 101);
        }
      }

      ++v6;
      v4 = *(v3 + 48);
      v5 = *(v3 + 56) - v4;
    }

    while (v6 < (v5 >> 3));
  }

  return 0;
}

uint64_t HALS_IOEngine2::_EndIOThread(HALS_IOEngine2 *this, uint64_t a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v4 = *(this + 208);
  if (v4)
  {
    v5 = v4 - 1;
    *(this + 208) = v5;
    if (!v5)
    {
      (*(*this + 1064))(this, a2, a3, a4);
    }
  }

  return 0;
}

uint64_t HALS_IOEngine2::_BeginIOThread(HALS_IOEngine2 *this, uint64_t a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v5 = *this;
  if (!*(this + 208))
  {
    result = (*(v5 + 1056))(this, a2, a3, a4);
    if (result)
    {
      return result;
    }

    v7 = 1;
    goto LABEL_6;
  }

  (*(v5 + 1304))(this, a2, a3, a4);
  v6 = *(this + 208);
  if (v6 != -1)
  {
    v7 = v6 + 1;
LABEL_6:
    result = 0;
    *(this + 208) = v7;
    return result;
  }

  return 1852797029;
}

uint64_t HALS_IOEngine2::_StopIO(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    for (i = *(a1 + 776); i != *(a1 + 784); ++i)
    {
      v9 = *i;
      if (*(*(*i + 32) + 16) == v7)
      {
        if (!a3)
        {
          v10 = atomic_load((v9 + 48));
          if (v10)
          {
            atomic_store(0, (v9 + 48));
            *(v9 + 104) = 0;
            v12 = *(v9 + 112);
              ;
            }

            *(v9 + 120) = v12;
            (*(*a1 + 720))(a1);
          }
        }

        break;
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v15 = *(a1 + 1104);
  v16 = "Prewarmed";
  v17 = *(a1 + 1096);
  if (!v17)
  {
    v16 = "Stopped";
  }

  if (v15)
  {
    v18 = "Running";
  }

  else
  {
    v18 = v16;
  }

  v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
    goto LABEL_67;
  }

  v55 = a4;
  v21 = (a1 + 1096);
  v22 = *(v19 + 8);
  v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v23 + 16) = 0;
  *(v23 + 20) = 0;
  *(v23 + 24) = "HALS_IOEngine2.cpp";
  *(v23 + 32) = 2687;
  *(v23 + 36) = v13;
  *(v23 + 40) = v14;
  *(v23 + 48) = v17;
  *(v23 + 56) = v15;
  *(v23 + 64) = v18;
  *v23 = &unk_1F5981D70;
  *(v23 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v22, v23);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  result = HALS_IOPrewarmManager::Stop((a1 + 1096), *(*(a2 + 104) + 1100));
  v25 = result;
  v26 = atomic_load((a1 + 1112));
  if (result != v26)
  {
    atomic_store(result != 0, (a1 + 1116));
    v37 = atomic_load((a1 + 1112));
    if (*(a1 + 1104))
    {
      v38 = 0;
    }

    else
    {
      v38 = *v21 == 0;
    }

    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    result = (*(*a1 + 1032))(a1, a2, result, v39);
    v40 = atomic_load((a1 + 1112));
    if (*(a1 + 1104) || !v40 || *v21)
    {
      goto LABEL_65;
    }

    result = (*(*a1 + 1376))(a1);
    v41 = *(a1 + 808);
    if (!v41)
    {
LABEL_64:
      *v55 = 1;
      goto LABEL_65;
    }

    v42 = 0;
    v43 = v41 + 48;
    v44 = 1;
    while (1)
    {
      v45 = v44;
      v46 = (v43 + 24 * v42);
      v47 = v46[1] - *v46;
      if ((v47 & 0x7FFFFFFF8) != 0)
      {
        break;
      }

LABEL_63:
      v44 = 0;
      v42 = 1;
      if ((v45 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v48 = 0;
    v49 = (v47 >> 3);
    while (v48 < (v46[1] - *v46) >> 3)
    {
      v50 = *(*v46 + 8 * v48);
      v51 = *(v50 + 464);
      if (*(v50 + 472) != v51)
      {
        *(v50 + 472) = v51;
      }

      std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit(v50 + 464);
      std::unique_ptr<FormatConverter>::reset[abi:ne200100]((v50 + 160), 0);
      std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v50 + 200), 0);
      v52 = *(v50 + 184);
      result = *v52;
      if (*v52)
      {
        result = (*(*result + 88))(result);
        v53 = v52[1];
        v54 = v52[2];
        while (v53 != v54)
        {
          result = std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v53 + 80), 0);
          v53 += 88;
        }
      }

      if (++v48 == v49)
      {
        goto LABEL_63;
      }
    }

LABEL_67:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = *(a1 + 808);
  v29 = *(v27 + 72);
  v28 = *(v27 + 80);
  v30 = v28 - v29;
  if (((v28 - v29) & 0x7FFFFFFF8) != 0)
  {
    v31 = 0;
    do
    {
      if ((v30 & 0x7FFFFFFF8) == 0)
      {
        goto LABEL_35;
      }

      if (v28 == v29)
      {
        goto LABEL_67;
      }

      if (*v29)
      {
        v32 = *(*v29 + 12);
        v33 = *(a1 + 776);
        v34 = *(a1 + 784);
        if (v33 == v34)
        {
          goto LABEL_36;
        }

        while (1)
        {
          if (*(*v33 + 88))
          {
            v35 = atomic_load((*v33 + 48));
            if (*(*v33 + 88) <= v32)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            if ((v35 & 1) != 0 && (*(*(*v33 + 80) + 8 * (v32 >> 6)) & (1 << v32)) != 0)
            {
              break;
            }
          }

          v33 += 8;
          if (v33 == v34)
          {
            v27 = *(a1 + 808);
            goto LABEL_36;
          }
        }

        v27 = *(a1 + 808);
        v29 = *(v27 + 72);
        v28 = *(v27 + 80);
        v30 = v28 - v29;
      }

      else
      {
LABEL_35:
        v32 = 0;
LABEL_36:
        v29 = *(v27 + 72);
        v28 = *(v27 + 80);
        v30 = v28 - v29;
        v36 = (v28 - v29) >> 3;
        if (v32 < v36)
        {
          if (v36 <= v32)
          {
            goto LABEL_67;
          }

          *(*(v29 + 8 * v32) + 456) = 0;
        }
      }

      ++v31;
    }

    while (v31 < (v30 >> 3));
  }

LABEL_65:
  atomic_store(v25, (a1 + 1112));
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StopIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v14 = 136316674;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StopIO(%u) called on Context %u  current state: Prewarm: %llu Play: %llu State: %s", &v14, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StopIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::_StartIO(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v97[10] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v92 = *(a2 + 16);
  v7 = *(a1 + 1104);
  v8 = "Prewarmed";
  v9 = *(a1 + 1096);
  if (!v9)
  {
    v8 = "Stopped";
  }

  if (v7)
  {
    v10 = "Running";
  }

  else
  {
    v10 = v8;
  }

  v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_98;
  }

  v13 = (a1 + 1096);
  v14 = *(v11 + 8);
  v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v15 + 16) = 0;
  *(v15 + 20) = 2;
  *(v15 + 24) = "HALS_IOEngine2.cpp";
  *(v15 + 32) = 2593;
  *(v15 + 36) = v6;
  *(v15 + 40) = v92;
  *(v15 + 48) = v9;
  *(v15 + 56) = v7;
  *(v15 + 64) = v10;
  *v15 = &unk_1F5981B38;
  *(v15 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v14, v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v16 = HALS_IOPrewarmManager::Start(v13, *(*(a2 + 104) + 1100));
  v17 = atomic_load((a1 + 1112));
  if (v16 == v17)
  {
    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v20 = *(v18 + 8);
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 20) = 0;
      *(v21 + 24) = "HALS_IOEngine2.cpp";
      *(v21 + 32) = 2601;
      *(v21 + 36) = v6;
      *(v21 + 40) = v92;
      *v21 = &unk_1F5981B90;
      *(v21 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v20, v21);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      goto LABEL_91;
    }

    goto LABEL_98;
  }

  v22 = v16;
  v23 = atomic_load((a1 + 1112));
  if (*(a1 + 1104))
  {
    v24 = 1;
  }

  else
  {
    v24 = *v13 != 0;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v26 = (*(*a1 + 1024))(a1, a2, v16, v25);
  if (v26)
  {
    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a1;
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_98;
    }

    v30 = *(v27 + 8);
    v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    v32 = v31;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *(v31 + 20) = 16;
    *(v31 + 24) = "HALS_IOEngine2.cpp";
    *(v31 + 32) = 2616;
    *(v31 + 36) = v92;
    *(v31 + 40) = v26;
    v33 = &unk_1F5981BE8;
    goto LABEL_28;
  }

  v34 = *(a1 + 1104);
  v35 = *(a1 + 1096);
  v36 = "Prewarmed";
  if (!v35)
  {
    v36 = "Stopped";
  }

  if (v34)
  {
    v37 = "Running";
  }

  else
  {
    v37 = v36;
  }

  v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_98;
  }

  v40 = *(v38 + 8);
  v41 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = "HALS_IOEngine2.cpp";
  *(v41 + 32) = 2625;
  *(v41 + 36) = v6;
  *(v41 + 40) = v92;
  *(v41 + 48) = v35;
  *(v41 + 56) = v34;
  *(v41 + 64) = v37;
  *v41 = &unk_1F5981C40;
  *(v41 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v40, v41);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  atomic_store(v22, (a1 + 1112));
  if (!v25)
  {
    goto LABEL_91;
  }

  v42 = *(a1 + 808);
  if (v42)
  {
    AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(a2);
    v43 = 0;
    v44 = 1;
    while (1)
    {
      v93 = v44;
      v45 = (v42 + 48 + 24 * v43);
      v46 = v45[1] - *v45;
      if ((v46 & 0x7FFFFFFF8) != 0)
      {
        break;
      }

LABEL_85:
      v44 = 0;
      v43 = 1;
      if ((v93 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v47 = 0;
    v95 = (v46 >> 3);
    while (1)
    {
      if (v47 >= (v45[1] - *v45) >> 3)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v48 = *(*v45 + 8 * v47);
      v49 = (*(**v48 + 352))(*v48);
      *(v48 + 9) = v49;
      v48[57] = 0;
      if (*(v48 + 12) == 1819304813)
      {
        v50 = *(v48 + 13);
        if ((v50 & 0x40) == 0)
        {
          break;
        }
      }

      if ((*(**v48 + 592))(*v48))
      {
        HALS_IOEngine2_StreamInfo::CreateCaptureFile(v48, AudioCaptureMode);
      }

      if (++v47 == v95)
      {
        goto LABEL_85;
      }
    }

    if ((v50 & 0x20) != 0)
    {
      v51 = 1;
    }

    else
    {
      v51 = *(v48 + 17);
    }

    v52 = (v51 * v49);
    v54 = v48[58];
    v53 = v48[59];
    v55 = v53 - v54;
    v56 = (v53 - v54) >> 2;
    if (v52 <= v56)
    {
      if (v52 >= v56)
      {
        goto LABEL_79;
      }

      v78 = v54 + 4 * v52;
    }

    else
    {
      v57 = v52 - v56;
      v58 = v48[60];
      if (v57 > (v58 - v53) >> 2)
      {
        v59 = v58 - v54;
        v60 = (v58 - v54) >> 1;
        if (v60 <= v52)
        {
          v60 = v52;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v61 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v60;
        }

        v97[4] = v48 + 58;
        Buffer = HALB_IOBufferManager_Server::AllocateBuffer((4 * v61));
        v63 = 0;
        v64 = Buffer + v55;
        v65 = Buffer + 4 * v61;
        v66 = (v57 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
        v67 = v66 - ((v57 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
        v68 = vdupq_n_s64(v66);
        v69 = (v64 + 8);
        do
        {
          v70 = vdupq_n_s64(v63);
          v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_1DE757E30)));
          if (vuzp1_s16(v71, *v68.i8).u8[0])
          {
            *(v69 - 2) = 0;
          }

          if (vuzp1_s16(v71, *&v68).i8[2])
          {
            *(v69 - 1) = 0;
          }

          if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_1DE757E20)))).i32[1])
          {
            *v69 = 0;
            v69[1] = 0;
          }

          v63 += 4;
          v69 += 4;
        }

        while (v67 != v63);
        v72 = Buffer + 4 * v52;
        v73 = v48[58];
        v74 = v48[59] - v73;
        v75 = v64 - v74;
        memcpy((v64 - v74), v73, v74);
        v76 = v48[58];
        v48[58] = v75;
        v48[59] = v72;
        v77 = v48[60];
        v48[60] = v65;
        v97[2] = v76;
        v97[3] = v77;
        v97[0] = v76;
        v97[1] = v76;
        std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(v97);
LABEL_79:
        std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit((v48 + 58));
        if (*(v48 + 20) == 1)
        {
          operator new();
        }

        operator new();
      }

      v79 = (v57 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v80 = vdupq_n_s64(v79);
      v81 = v79 - ((v57 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v82 = (v53 + 8);
      v83 = -4;
      do
      {
        v84 = vdupq_n_s64(v83 + 4);
        v85 = vmovn_s64(vcgeq_u64(v80, vorrq_s8(v84, xmmword_1DE757E30)));
        if (vuzp1_s16(v85, *v80.i8).u8[0])
        {
          *(v82 - 2) = 0;
        }

        if (vuzp1_s16(v85, *&v80).i8[2])
        {
          *(v82 - 1) = 0;
        }

        if (vuzp1_s16(*&v80, vmovn_s64(vcgeq_u64(v80, vorrq_s8(v84, xmmword_1DE757E20)))).i32[1])
        {
          *v82 = 0;
          v82[1] = 0;
        }

        v83 += 4;
        v82 += 4;
      }

      while (v81 != v83);
      v78 = v53 + 4 * v57;
    }

    v48[59] = v78;
    goto LABEL_79;
  }

LABEL_86:
  v26 = (*(*a1 + 1368))(a1);
  if (!v26)
  {
LABEL_91:
    v26 = 0;
    if (a5)
    {
      v29 = a1;
      v87 = atomic_load((a5 + 48));
      if (v87)
      {
        v26 = 0;
      }

      else
      {
        (*(*a1 + 720))(a1);
        v26 = 0;
        *a4 = 1;
      }
    }

    else
    {
      v29 = a1;
    }

    goto LABEL_96;
  }

  v86 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = a1;
  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_98:
    __break(1u);
  }

  v30 = *(v86 + 8);
  v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v32 = v31;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 20) = 16;
  *(v31 + 24) = "HALS_IOEngine2.cpp";
  *(v31 + 32) = 2641;
  *(v31 + 36) = v92;
  *(v31 + 40) = v26;
  v33 = &unk_1F5981C98;
LABEL_28:
  *v31 = v33;
  caulk::concurrent::messenger::enqueue(v30, v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_96:
  v88 = atomic_load((v29 + 1112));
  atomic_store(v88 != 0, (v29 + 1116));
  return v26;
}

void sub_1DE5E45F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = *(v40 + 8);
    LOBYTE(a38) = 16;
    *(v39 - 128) = "HALS_IOEngine2.cpp";
    *(v39 - 120) = 2653;
    *(v39 - 116) = a12;
    *(v39 - 112) = 2003329396;
    caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>(v42, &a38, (v39 - 128));
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5E4580);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5981D48;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5981CF0;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::perform(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: Caught exception while starting IO on Context %u  result: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_5,std::tuple<char const*,int,unsigned int,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_4,std::tuple<char const*,int,unsigned int,int>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: _AllocateTempBuffers on Context %u  returned error: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_4,std::tuple<char const*,int,unsigned int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_3,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v14 = 136316674;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d \t\tHALS_IOEngine2::_StartIO(%u) succeeded on Context %u  new state: Prewarm: %llu Play: %llu State: %s", &v14, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_3,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_2,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO: _TellHardwareToStart on Context %u  returned error: 0x%X", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_2,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOEngine2::_StartIO(%u): play state has not changed on Context %u", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::perform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v14 = 136316674;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d >>> HALS_IOEngine2::_StartIO(%u) called on Context %u  current state: Prewarm: %llu Play: %llu State: %s", &v14, 0x3Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_StartIO(HALS_IOContext *,HALS_IOPrewarmManager::EngineState,BOOL &,HALS_IOEngine2_IOContextInfo *)::$_0,std::tuple<char const*,int,unsigned int,unsigned int,unsigned long long,unsigned long long,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

_DWORD *HALS_IOEngine2::_SetAudioCaptureMode(_DWORD *result, int a2)
{
  v2 = result[201];
  if (a2)
  {
    result[201] = v2 + 1;
    if (!v2)
    {
      return (*(*result + 608))();
    }
  }

  else if (v2)
  {
    v3 = v2 - 1;
    result[201] = v3;
    if (!v3)
    {
      return (*(*result + 616))();
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::CalculateBufferByteSizeForStreamDomainObjectID(HALS_IOEngine2 *this, char a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine246CalculateBufferByteSizeForStreamDomainObjectIDEbjj_block_invoke;
  v7[3] = &unk_1E8677948;
  v7[4] = &v11;
  v7[5] = this;
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK14HALS_IOEngine246CalculateBufferByteSizeForStreamDomainObjectIDEbjj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = v1 + 24 * *(result + 56);
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *v3;
        if (*(*v3 + 16) == *(result + 48))
        {
          v7 = v6[12];
          v8 = v6[14];
          v9 = v6[16] * *(result + 52);
          if (v7 == 1819304813)
          {
            v5 = v9;
          }

          else
          {
            v5 = v8;
          }
        }

        v3 += 8;
      }

      while (v3 != v4);
    }

    *(*(*(result + 32) + 8) + 24) = v5;
  }

  return result;
}

void HALS_IOEngine2::GatherDeviceInfo(HALS_IOEngine2 *this)
{
  v2 = (*(*this + 336))(this);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_41_13209;
  v4[4] = this;
  v4[5] = v2;
  v3 = (*(*v2 + 64))(v2);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke(__n128 *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN14HALS_IOEngine216GatherDeviceInfoEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_40_13210;
  v3 = a1[2];
  v1 = (*(*v3.n128_u64[0] + 64))(v3.n128_u64[0], v3);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

void std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](uint64_t a1)
{
  for (i = 72; i != 24; i -= 24)
  {
    v3 = (a1 + i);
    std::vector<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  JUMPOUT(0x1E12C1730);
}

void std::vector<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::__destroy_vector::operator()[abi:ne200100]((v2 + 58));
    v3 = v2[27];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[25];
    v2[25] = 0;
    if (v4)
    {
      HALB_CaptureFile::~HALB_CaptureFile(v4);
      MEMORY[0x1E12C1730]();
    }

    v5 = v2[24];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = v2[20];
    v2[20] = 0;
    if (v6)
    {
      AudioConverterDispose(*v6);
      MEMORY[0x1E12C1730](v6, 0x20C4093837F09);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::__destroy_vector::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    HALB_IOBufferManager_Server::FreeBuffer(v2, (*(a1 + 16) - v2) & 0xFFFFFFFC);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<HALS_IOEngine2_StreamInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<HALS_IOEngine2_StreamInfo>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double HALS_IOEngine2::_UnregisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2, double result)
{
  if (a2)
  {
    kdebug_trace();
    v5 = *(this + 97);
    v6 = *(this + 98);
    while (v5 != v6)
    {
      v7 = *v5++;
      v8 = *(v7 + 32);
      if (v8 == a2)
      {
        v9 = &v5[v8 != a2];
        v10 = v9 - 1;
        v11 = v9;
        if (v9 != v6)
        {
          do
          {
            v10 = v11;
            v12 = v11 - 1;
            v13 = *v11;
            *v11++ = 0;
            std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](v12, v13);
          }

          while (v11 != v6);
          v6 = *(this + 98);
        }

        while (v6 != v10)
        {
          std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](--v6, 0);
        }

        *(this + 98) = v10;
        if (*(this + 200))
        {
          v14 = *(this + 200);
          v15 = *(a2 + 4);
          v16 = *(this + 4);
          v17 = atomic_load(this + 432);
          if (v17)
          {
            atomic_store(1u, this + 433);
          }

          if (*(this + 728) != 1)
          {
            operator new();
          }

          v22 = v14;
          v23 = v15;
          v24 = v16;
          v18 = *(this + 90);
          v19 = *(this + 50);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 0x40000000;
          v21[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine220_UnregisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke;
          v21[3] = &__block_descriptor_tmp_173;
          dispatch_group_async(v18, v19, v21);
        }

        HALS_IOEngine2::_UpdateTotalStreamUsage(this, 0, 0);
        HALS_IOEngine2::_UpdateTotalStreamUsage(this, 1u, 0);
        break;
      }
    }

    kdebug_trace();
  }

  return v20;
}

uint64_t *std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 159) < 0)
    {
      operator delete(*(v2 + 136));
    }

    v6 = (v2 + 112);
    std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = 80;
    while (1)
    {
      v5 = *(v2 + v4);
      if (v5)
      {
        operator delete(v5);
      }

      v4 -= 24;
      if (v4 == 32)
      {
        HALS_ObjectMap::ReleaseObject_LongTerm(*(v2 + 32), v3);

        JUMPOUT(0x1E12C1730);
      }
    }
  }

  return result;
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine220_UnregisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke(_DWORD *a1, unsigned int a2)
{
  v4 = HALS_ObjectMap::CopyObjectByObjectID(a1[9]);
  if (v4 && a1[8])
  {
    v5 = 0;
    do
    {
      (*(**(v4 + 13) + 216))(*(v4 + 13), a1[10]);
      ++v5;
    }

    while (v5 < a1[8]);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

void HALS_IOEngine2::_UpdateTotalStreamUsage(void *a1, unsigned int a2, int a3)
{
  v3 = a1[101];
  if (v3)
  {
    v4 = *(v3 + 24 * a2 + 56) - *(v3 + 24 * a2 + 48);
    if ((v4 & 0x7FFFFFFF8) != 0)
    {
      v7 = 0;
      v9 = (v4 >> 3);
      while (1)
      {
        v10 = *(a1[101] + 24 * a2 + 48);
        v11 = v7 >= ((*(a1[101] + 24 * a2 + 56) - v10) >> 3) ? 0 : *(v10 + 8 * v7);
        v12 = a1[97];
        v13 = a1[98];
        if (v12 != v13)
        {
          break;
        }

LABEL_11:
        v15 = 0;
        if (v11)
        {
          goto LABEL_14;
        }

LABEL_21:
        if (++v7 == v9)
        {
          return;
        }
      }

      while (1)
      {
        v14 = *v12 + 56;
        if (v7 < *(v14 + 24 * a2 + 8) && (*(*(v14 + 24 * a2) + 8 * (v7 >> 6)) & (1 << v7)) != 0)
        {
          break;
        }

        if (++v12 == v13)
        {
          goto LABEL_11;
        }
      }

      v15 = 1;
      if (!v11)
      {
        goto LABEL_21;
      }

LABEL_14:
      if (v15 != *(v11 + 32))
      {
        *(v11 + 32) = v15;
        v16 = *(v11 + 8);
        if (a3 == 1)
        {
          v18 = a1[96];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 0x40000000;
          v20[2] = ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke_2;
          v20[3] = &__block_descriptor_tmp_37_13214;
          v21 = v16;
          v22 = v15;
          v19 = atomic_load((v18 + 32));
          if (v19)
          {
            atomic_store(1u, (v18 + 33));
          }

          dispatch_sync(*v18, v20);
        }

        else if (!a3)
        {
          v17 = a1[96];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke;
          block[3] = &__block_descriptor_tmp_36_13213;
          v24 = v16;
          v25 = v15;
          AMCP::Utility::Dispatch_Queue::async(v17, block);
        }
      }

      goto LABEL_21;
    }
  }
}

void ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  v2 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
    v5 = v3;
    if (v3)
    {
      v7 = v3[5];
      v6 = v3[6];
      if (v7 == v6 || v7 == 1634956402)
      {
        if (v7 == 1634956402 || v7 != v6)
        {
          goto LABEL_17;
        }
      }

      else if (v6 == 1634956402)
      {
LABEL_17:
        v10 = *(a1 + 36);
        v11 = v3[4];
        v13 = 0x676C6F6273616374;
        LODWORD(v14) = 0;
        v15 = v10;
        (*(*v3 + 128))(v3, v11, &v13, 4, &v15, 0, 0, 0);
        goto LABEL_18;
      }

      HALS_ObjectMap::ReleaseObject(v3, v4);
      v5 = 0;
    }

LABEL_18:
    HALS_ObjectMap::ReleaseObject(v5, v4);
  }
}

void sub_1DE5E6828(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5E6818);
}

void ___ZN14HALS_IOEngine223_UpdateTotalStreamUsageEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke_2(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  v2 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
    v5 = v3;
    if (v3)
    {
      v7 = v3[5];
      v6 = v3[6];
      if (v7 == v6 || v7 == 1634956402)
      {
        if (v7 == 1634956402 || v7 != v6)
        {
          goto LABEL_17;
        }
      }

      else if (v6 == 1634956402)
      {
LABEL_17:
        v10 = *(a1 + 36);
        v11 = v3[4];
        v13 = 0x676C6F6273616374;
        LODWORD(v14) = 0;
        v15 = v10;
        (*(*v3 + 128))(v3, v11, &v13, 4, &v15, 0, 0, 0);
        goto LABEL_18;
      }

      HALS_ObjectMap::ReleaseObject(v3, v4);
      v5 = 0;
    }

LABEL_18:
    HALS_ObjectMap::ReleaseObject(v5, v4);
  }
}

void sub_1DE5E6954(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5E6944);
}

void applesauce::dispatch::v1::async<HALS_IOEngine2::_UnregisterIOContext(HALS_IOContext *)::$_0 &>(dispatch_queue_s *,HALS_IOEngine2::_UnregisterIOContext(HALS_IOContext *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1, unsigned int a2)
{
  v4 = HALS_ObjectMap::CopyObjectByObjectID(a1[1]);
  if (v4 && *a1)
  {
    v5 = 0;
    do
    {
      (*(**(v4 + 13) + 216))(*(v4 + 13), a1[2]);
      ++v5;
    }

    while (v5 < *a1);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);

  JUMPOUT(0x1E12C1730);
}

void std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double HALS_IOEngine2::_RegisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  if (a2)
  {
    kdebug_trace();
    v4 = *(this + 97);
    do
    {
      if (v4 == *(this + 98))
      {
        operator new();
      }

      v5 = *v4++;
    }

    while (*(v5 + 32) != a2);
    kdebug_trace();
  }

  return result;
}

void sub_1DE5E73D4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  HALS_ObjectMap::ReleaseObject(v36, a2);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  HALS_ObjectMap::ReleaseObject(v35, v39);
  if (*(v37 + 159) < 0)
  {
    operator delete(*(v37 + 136));
  }

  std::vector<HALS_IOEngine2_IOContextInfo::BufferInfo>::__destroy_vector::operator()[abi:ne200100](&a18);
  v42 = 80;
  while (1)
  {
    v43 = *(v37 + v42);
    if (v43)
    {
      operator delete(v43);
    }

    v42 -= 24;
    if (v42 == 32)
    {
      HALS_Releaser_LongTerm<HALS_IOContext>::~HALS_Releaser_LongTerm((v37 + 32), v40, v41);
      MEMORY[0x1E12C1730](v37, v34);
      _Unwind_Resume(a1);
    }
  }
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN14HALS_IOEngine218_RegisterIOContextEP14HALS_IOContextE3__0EEvOT__block_invoke(_DWORD *a1, unsigned int a2)
{
  v4 = HALS_ObjectMap::CopyObjectByObjectID(a1[9]);
  if (v4)
  {
    if (a1[8])
    {
      v5 = 0;
      do
      {
        (*(**(v4 + 13) + 200))(*(v4 + 13), a1[10]);
        ++v5;
      }

      while (v5 < a1[8]);
    }

    (*(**(v4 + 13) + 224))(*(v4 + 13), a1[10]);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

void applesauce::dispatch::v1::async<HALS_IOEngine2::_RegisterIOContext(HALS_IOContext *)::$_0 &>(dispatch_queue_s *,HALS_IOEngine2::_RegisterIOContext(HALS_IOContext *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1, unsigned int a2)
{
  v4 = HALS_ObjectMap::CopyObjectByObjectID(a1[1]);
  if (v4)
  {
    if (*a1)
    {
      v5 = 0;
      do
      {
        (*(**(v4 + 13) + 200))(*(v4 + 13), a1[2]);
        ++v5;
      }

      while (v5 < *a1);
    }

    (*(**(v4 + 13) + 224))(*(v4 + 13), a1[2]);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE5E770C(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  MEMORY[0x1E12C1730](v2, 0x1000C403E1C8BA9);
  _Unwind_Resume(a1);
}

void HALS_IOEngine2::_GetAllRunningContextClientInfos(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    if (v5)
    {
      v6 = (*(*v5 + 240))(*(*v2 + 32));
      v7 = v6;
      v8 = *(v5 + 16);
      v9 = **(v5 + 72);
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      if (v10 >= v11)
      {
        v13 = *a2;
        v14 = v10 - *a2;
        v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2) + 1;
        if (v15 > 0x1555555555555555)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v13) >> 2);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0xAAAAAAAAAAAAAAALL)
        {
          v17 = 0x1555555555555555;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::allocator<RunningIOContextClientInfo>::allocate_at_least[abi:ne200100](v17);
        }

        v18 = 4 * (v14 >> 2);
        *v18 = v7;
        *(v18 + 4) = v8;
        *(v18 + 8) = v9;
        v12 = v18 + 12;
        v19 = v18 - v14;
        memcpy((v18 - v14), v13, v14);
        v20 = *a2;
        *a2 = v19;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v10 = v6;
        v12 = v10 + 12;
        *(v10 + 4) = v8;
        *(v10 + 8) = v9;
      }

      *(a2 + 8) = v12;
    }
  }
}

void HALS_IOEngine2::_GetAllContextIDs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 776);
  v3 = *(a1 + 784);
  while (v2 != v3)
  {
    v5 = *v2++;
    v6 = *(*(v5 + 32) + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](a2, &v6);
  }
}

void HALS_IOEngine2::_CopyIOContextList(uint64_t result, HALS_ObjectMap ***a2)
{
  v2 = *(result + 776);
  for (i = *(result + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    HALS_ObjectMap::RetainObject(v5, a2);
    v10 = v5;
    v7 = a2[1];
    if (v7 >= a2[2])
    {
      v9 = std::vector<HALS_Releaser<HALS_IOContext>>::__emplace_back_slow_path<HALS_Releaser<HALS_IOContext>>(a2, &v10);
      v8 = v10;
    }

    else
    {
      v8 = 0;
      *v7 = v5;
      v9 = (v7 + 1);
    }

    a2[1] = v9;
    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

void HALS_IOEngine2::_CopyAllContexts(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; v2 += 8)
  {
    v5 = *(*v2 + 32);
    HALS_ObjectMap::RetainObject(v5, a2);
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

uint64_t HALS_IOEngine2::HandleOverload(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine214HandleOverloadEjjjRN22HALS_IOContextReporter13EngineMetricsE_block_invoke;
  v8[3] = &unk_1E8677CE8;
  v8[4] = &v12;
  v8[5] = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v8[6] = a5;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t ___ZN14HALS_IOEngine214HandleOverloadEjjjRN22HALS_IOContextReporter13EngineMetricsE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1224))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndWriting(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine210EndWritingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677D38;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine210EndWritingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1216))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::WriteToStream_CommitTrailingSilence(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine235WriteToStream_CommitTrailingSilenceEjjjR17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677D10;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine235WriteToStream_CommitTrailingSilenceEjjjR17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1296))(*(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::WriteToStream(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine213WriteToStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677CC0;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine213WriteToStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1208))(*(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 48), *(a1 + 56), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginWriting(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine212BeginWritingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677C98;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine212BeginWritingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1200))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndReading(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine210EndReadingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677C70;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine210EndReadingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1112))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::TeardownForIsolatedIO(HALS_IOEngine2 *this, int a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine221TeardownForIsolatedIOEjj_block_invoke;
  v6[3] = &unk_1E8677BF8;
  v6[4] = &v9;
  v6[5] = this;
  v7 = a2;
  v8 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void *___ZN14HALS_IOEngine221TeardownForIsolatedIOEjj_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = result[101];
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = v3 + 72;
    v5 = *(v3 + 72);
    v7 = (*(v6 + 8) - v5) >> 3;
    if (v4 >= v7)
    {
      v8 = 0;
    }

    else
    {
      if (v7 <= v4)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v5 + 8 * v4);
    }

    result = (*(*result + 1144))(result, v8, *(a1 + 52));
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t HALS_IOEngine2::SetupForIsolatedIO(HALS_IOEngine2 *this, int a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine218SetupForIsolatedIOEjjj_block_invoke;
  v7[3] = &unk_1E8677BD0;
  v7[4] = &v11;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

void *___ZN14HALS_IOEngine218SetupForIsolatedIOEjjj_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = result[101];
  if (v3)
  {
    v4 = *(a1 + 48);
    v6 = v3 + 72;
    v5 = *(v3 + 72);
    v7 = (*(v6 + 8) - v5) >> 3;
    if (v4 >= v7)
    {
      v8 = 0;
    }

    else
    {
      if (v7 <= v4)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *(v5 + 8 * v4);
    }

    result = (*(*result + 1136))(result, v8, *(a1 + 52), *(a1 + 56));
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t HALS_IOEngine2::IsolatedReadFromStream(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4, int a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine222IsolatedReadFromStreamEjjRK17HALS_IOEngineInfoj_block_invoke;
  v8[3] = &unk_1E8677C20;
  v8[4] = &v12;
  v8[5] = this;
  v9 = a2;
  v10 = a3;
  v8[6] = a4;
  v11 = a5;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void ___ZN14HALS_IOEngine222IsolatedReadFromStreamEjjRK17HALS_IOEngineInfoj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = (*(*v2 + 1104))(v2, *(a1 + 56), *(a1 + 60), *(a1 + 48), *(a1 + 64));
  v3 = *(a1 + 56);
  v4 = *(v2[101] + 72);
  v5 = (*(v2[101] + 80) - v4) >> 3;
  if (v3 < v5)
  {
    if (v5 <= v3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v6 = *(v4 + 8 * v3);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 60);
      v9 = *(v6 + 200);
      v15 = 0;
      v14 = 0uLL;
      if ((*(*v7 + 328))(v7))
      {
        v10 = *(v7 + 640);
        *&v13.mSMPTETime.mSubframes = *(v7 + 624);
        *&v13.mSMPTETime.mHours = v10;
        v11 = *(v7 + 608);
        *&v13.mSampleTime = *(v7 + 592);
        *&v13.mRateScalar = v11;
        v13.mFlags = DWORD2(v10) | 6;
        HALS_IOClock::TranslateTime(*(v7 + 368), (v7 + 592), &v13);
        v12 = *(v7 + 368);
        v17 = 0;
        v16 = 0uLL;
        HALS_IOClock::GetRaw0Time(v12, &v16, &v16 + 1);
        v14 = v16;
        v15 = v17;
        if (v9)
        {
          HALB_CaptureFile::WriteTimestamps(v9, v7 + 528, &v13, &v14, v8);
        }
      }
    }
  }
}

uint64_t HALS_IOEngine2::ReadFromStream(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine214ReadFromStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke;
  v9[3] = &unk_1E8677C48;
  v9[4] = &v13;
  v9[5] = a1;
  v10 = a3;
  v11 = a2;
  v12 = a4;
  v9[6] = a5;
  v9[7] = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v7;
}

atomic_uint *___ZN14HALS_IOEngine214ReadFromStreamEjjjRK17HALS_IOEngineInfoRK15HALS_BufferInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[101];
  v4 = *(a1 + 64);
  v5 = v3[9];
  v6 = (v3[10] - v5) >> 3;
  if (v4 >= v6)
  {
    goto LABEL_48;
  }

  if (v6 <= v4)
  {
    goto LABEL_78;
  }

  v7 = *(v5 + 8 * v4);
  if (!v7 || *(v7 + 24) != 1)
  {
LABEL_48:
    result = (*(*v2 + 1096))(*(a1 + 40), *(a1 + 68));
    *(*(*(a1 + 32) + 8) + 24) = result;
    return result;
  }

  v8 = *(a1 + 48);
  v10 = v3[6];
  v9 = v3[7];
  if (v10 == v9)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v11 = *v10;
      if (*(*v10 + 16) == *(v7 + 16))
      {
        break;
      }

      if (++v10 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 56);
  if ((*(v8 + 505) & 1) == 0)
  {
    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v16 = *(v14 + 8);
      v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v17 + 16) = 0;
      *(v17 + 20) = 16;
      *(v17 + 24) = "HALS_IOEngine2.cpp";
      *(v17 + 32) = 2853;
      *v17 = &unk_1F5981DC8;
      *(v17 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v16, v17);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_78:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_15:
  kdebug_trace();
  if ((*(*v2 + 688))(v2))
  {
    v19 = *(v8 + 592);
    v20 = v2[97];
    v21 = v2[98];
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v20 != v21)
    {
      v25 = *(v11 + 12);
      do
      {
        v26 = atomic_load((*v20 + 48));
        if (v26)
        {
          v27 = *(*(*v20 + 32) + 104);
          if ((*(*v27 + 160))(v27))
          {
            v28 = *(*v20 + 112);
            if (0xCCCCCCCCCCCCCCCDLL * ((*(*v20 + 120) - v28) >> 3) <= v25)
            {
              if (v23 <= v24)
              {
                v23 = 0.0;
                v24 = 0.0;
              }
            }

            else
            {
              v29 = v28 + 40 * v25;
              v18 = *(v29 + 24);
              v30 = *(v29 + 32);
              if (v23 <= v24)
              {
                v23 = *(v29 + 32);
                v24 = *(v29 + 24);
              }

              else if (v30 > v18)
              {
                if (v24 > v18)
                {
                  v24 = *(v29 + 24);
                }

                if (v23 < v30)
                {
                  v23 = *(v29 + 32);
                }
              }
            }
          }
        }

        v20 += 8;
      }

      while (v20 != v21);
    }

    v31 = v12;
    LODWORD(v18) = *(v2[101] + 16);
    v32 = v23 - *&v18;
    if (v24 >= v32)
    {
      v32 = v24;
    }

    if (v23 <= v32)
    {
      goto LABEL_52;
    }

    v33 = v19 + v31;
    if (v32 < v19)
    {
      v32 = v19;
    }

    if (v33 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v19 + v31;
    }

    if (v33 <= v19)
    {
      v35 = v19 + v31;
    }

    else
    {
      v35 = v34;
    }

    if (v33 <= v19)
    {
      v32 = v19;
    }

    if (v35 <= v32)
    {
LABEL_52:
      v36 = 0;
      v35 = 0.0;
    }

    else
    {
      v36 = v19 != 0.0;
      v22 = v32;
    }

    if (*v13)
    {
      v38 = (*v13 + *(v13 + 8));
    }

    else
    {
      v38 = 0;
    }

    if (v36)
    {
      v39 = v35 - v22;
      v40 = 0.0;
      if (v35 - v22 < v31)
      {
        bzero(v38, *(v13 + 12));
        v40 = v22 - v19;
      }

      HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v56, v11, v22, v39);
      mCounter = v56.mSMPTETime.mCounter;
      if (v56.mWordClockTime)
      {
        v43 = (v56.mWordClockTime + *&v56.mSMPTETime.mSubframes);
      }

      else
      {
        v43 = 0;
      }

      if (*&v56.mSampleTime)
      {
        mHostTime_high = HIDWORD(v56.mHostTime);
        LODWORD(v41) = *(v11 + 64);
        v38 += (v40 * v41);
        memcpy(v38, (*&v56.mSampleTime + LODWORD(v56.mHostTime)), HIDWORD(v56.mHostTime));
      }

      else
      {
        mHostTime_high = 0;
      }

      if (v43)
      {
        memcpy(&v38[mHostTime_high], v43, mCounter);
      }

      if (v39 >= v31)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if (*v13)
  {
    v38 = (*v13 + *(v13 + 8));
  }

  else
  {
    v38 = 0;
  }

  bzero(v38, *(v13 + 12));
LABEL_66:
  kdebug_trace();
LABEL_67:
  mach_absolute_time();
  kdebug_trace();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v46 = *(a1 + 48);
  v45 = *(a1 + 56);
  if (*v45)
  {
    v47 = *v45 + *(v45 + 8);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(a1 + 72);
  v49 = *(v7 + 200);
  result = (*(*v46 + 328))(v46);
  if (result)
  {
    v50 = *(v46 + 368);
    v51 = *(v46 + 608);
    *&v56.mSampleTime = *(v46 + 592);
    *&v56.mRateScalar = v51;
    v52 = *(v46 + 640);
    *&v56.mSMPTETime.mSubframes = *(v46 + 624);
    *&v56.mSMPTETime.mHours = v52;
    v53 = *(v46 + 544);
    *&v55.mSampleTime = *(v46 + 528);
    *&v55.mRateScalar = v53;
    v54 = *(v46 + 576);
    *&v55.mSMPTETime.mSubframes = *(v46 + 560);
    *&v55.mSMPTETime.mHours = v54;
    return WriteToCaptureFile(v49, v50, &v56, &v55, v48, v47);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_ReadFromSoftwareReferenceStream(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo const&,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Reading from ref stream when it isnt anchored yet!", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOEngine2::_ReadFromSoftwareReferenceStream(unsigned int,unsigned int,unsigned int,HALS_IOEngineInfo const&,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOEngine2::BeginReading(HALS_IOEngine2 *this, int a2, int a3, const HALS_IOEngineInfo *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine212BeginReadingEjjRK17HALS_IOEngineInfo_block_invoke;
  v7[3] = &unk_1E8677BA8;
  v7[4] = &v10;
  v7[5] = this;
  v8 = a2;
  v9 = a3;
  v7[6] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine212BeginReadingEjjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1088))(*(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndIOCycle(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine210EndIOCycleEjRK17HALS_IOEngineInfo_block_invoke;
  v6[3] = &unk_1E8677B80;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN14HALS_IOEngine210EndIOCycleEjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1080))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginIOCycle(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine212BeginIOCycleEjRK17HALS_IOEngineInfo_block_invoke;
  v6[3] = &unk_1E8677B58;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN14HALS_IOEngine212BeginIOCycleEjRK17HALS_IOEngineInfo_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1072))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::EndIOThread(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine211EndIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke;
  v7[3] = &unk_1E8677B30;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[6] = a3;
  v7[7] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine211EndIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1048))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::BeginIOThread(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3, const applesauce::CF::DictionaryRef *a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine213BeginIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke;
  v7[3] = &unk_1E8677B08;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[6] = a3;
  v7[7] = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN14HALS_IOEngine213BeginIOThreadEjRK17HALS_IOEngineInfoRKN10applesauce2CF13DictionaryRefE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1040))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::UpdateEngineIsMixing(HALS_IOEngine2 *this)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN14HALS_IOEngine220UpdateEngineIsMixingEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_94_13284;
  v2[4] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

uint64_t ___ZN14HALS_IOEngine220UpdateEngineIsMixingEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 776);
  v3 = *(v1 + 784);
  if (v2 == v3)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = atomic_load((*v2 + 48));
      if (v5)
      {
        v6 = *v2;
        result = HALS_IOEngine2_IOContextInfo::HasAnActiveOutputStream(*(*v2 + 56), *(*v2 + 64));
        if (result)
        {
          result = (*(**(*(v6 + 32) + 104) + 168))(*(*(v6 + 32) + 104));
          v4 += result;
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v7 = v4 > 1;
  }

  atomic_store(v7, (v1 + 1117));
  return result;
}

void HALS_IOEngine2::StopIO(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOEngine2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2293;
    *&buf[18] = 2080;
    *&buf[20] = a1 + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::StopIO: stopping IO on device %s", buf, 0x1Cu);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  *&buf[24] = __Block_byref_object_copy__73;
  v14 = __Block_byref_object_dispose__74;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine26StopIOEP14HALS_IOContextN21HALS_IOPrewarmManager11EngineStateE_block_invoke;
  v7[3] = &unk_1E8677AC0;
  v7[6] = a1;
  v7[7] = a2;
  v8 = a3;
  v7[4] = &v9;
  v7[5] = buf;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v7);
  HALS_IOEngine::SendIsRunningNotifications(a1, *(v10 + 24), *(*&buf[8] + 40), *(*&buf[8] + 48));
  _Block_object_dispose(buf, 8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v9, 8);
}

void sub_1DE5E9968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__73(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN14HALS_IOEngine26StopIOEP14HALS_IOContextN21HALS_IOPrewarmManager11EngineStateE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  (*(*v2 + 1016))(v2, *(a1 + 56), *(a1 + 64), *(*(a1 + 32) + 8) + 24);
  v3 = *(*v2 + 936);
  v4 = *(*(a1 + 40) + 8) + 40;

  return v3(v2, v4);
}

uint64_t HALS_IOEngine2::StartIO(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOEngine2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2259;
    *&buf[18] = 2080;
    *&buf[20] = this + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::StartIO: starting IO on device %s", buf, 0x1Cu);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  *&buf[24] = __Block_byref_object_copy__73;
  v22 = __Block_byref_object_dispose__74;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine27StartIOEP14HALS_IOContext_block_invoke;
  v8[3] = &unk_1E8677A98;
  v8[8] = this;
  v8[9] = a2;
  v8[4] = &v9;
  v8[5] = &v17;
  v8[6] = &v13;
  v8[7] = buf;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v8);
  v5 = v10[3];
  if (v5 && !*(v18 + 6) && *(v14 + 24) == 1)
  {
    HALS_IOEngine2_IOContextInfo::StartIO(v5);
  }

  HALS_IOEngine::SendIsRunningNotifications(this, *(v14 + 24), *(*&buf[8] + 40), *(*&buf[8] + 48));
  v6 = *(v18 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(buf, 8);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  _Block_object_dispose(&v17, 8);
  return v6;
}

void sub_1DE5E9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v26 - 112), 8);
  v28 = *(v26 - 72);
  if (v28)
  {
    *(v26 - 64) = v28;
    operator delete(v28);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14HALS_IOEngine27StartIOEP14HALS_IOContext_block_invoke(void *a1)
{
  v2 = a1[8];
  v3 = *(a1[9] + 16);
  if (v3)
  {
    for (i = v2[97]; i != v2[98]; ++i)
    {
      v5 = *i;
      if (*(*(*i + 32) + 16) == v3)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  *(*(a1[4] + 8) + 24) = v5;
  *(*(a1[5] + 8) + 24) = (*(*v2 + 1008))(v2, a1[9], 2, *(a1[6] + 8) + 24, *(*(a1[4] + 8) + 24));
  v6 = *(*v2 + 936);
  v7 = *(a1[7] + 8) + 40;

  return v6(v2, v7);
}

void HALS_IOEngine2_IOContextInfo::StartIO(HALS_IOEngine2_IOContextInfo *this)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 48);
  if (v1)
  {
    v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v42 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v45 = *v44;
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    else
    {
      v45 = *v44;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOEngine2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 249;
      *&buf[18] = 2080;
      *&buf[20] = "mIsRunning == false";
      _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Trying to start context info when it was already started", buf, 0x1Cu);
    }

    abort();
  }

  v3 = (*(**(this + 3) + 352))(*(this + 3));
  v5 = (this + 112);
  v4 = *(this + 14);
  *(this + 26) = v3;
    ;
  }

  *(this + 15) = v4;
  v7 = (*(**(this + 3) + 416))(*(this + 3), 0);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      (*(**(this + 3) + 448))(*(this + 3), 0, v9, &v48);
      if (DWORD2(v48) == 1819304813)
      {
        v10 = HIDWORD(v49);
        v11 = (4 * *(this + 26) * HIDWORD(v49));
        v12 = 4 * HIDWORD(v49);
        v14 = *(this + 15);
        v13 = *(this + 16);
        if (v14 >= v13)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v5) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v5) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x333333333333333)
          {
            v23 = 0x666666666666666;
          }

          else
          {
            v23 = v21;
          }

          v52 = this + 112;
          if (v23)
          {
            std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](v23);
          }

          v28 = 40 * v20;
          *buf = 0;
          *&buf[8] = v28;
          *&buf[16] = v28;
          Buffer = HALB_IOBufferManager_Server::AllocateBuffer(v11);
          *v28 = Buffer;
          *(v28 + 8) = v11;
          *(v28 + 12) = v10;
          *(v28 + 16) = v12;
          *(v28 + 24) = 0;
          *(v28 + 32) = 0;
          bzero(Buffer, v11);
          *&buf[16] = v28 + 40;
          v30 = *(this + 14);
          v31 = *(this + 15);
          v32 = v28 + v30 - v31;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(v30, v31, v32);
          v33 = *(this + 14);
          *(this + 14) = v32;
          v34 = *(this + 16);
          v46 = *&buf[16];
          *(this + 120) = *&buf[16];
          *&buf[16] = v33;
          *&buf[24] = v34;
          *buf = v33;
          *&buf[8] = v33;
          std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(buf);
          v16 = v46;
        }

        else
        {
          v15 = HALB_IOBufferManager_Server::AllocateBuffer((4 * *(this + 26) * HIDWORD(v49)));
          *v14 = v15;
          *(v14 + 8) = v11;
          *(v14 + 12) = v10;
          *(v14 + 16) = v12;
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          bzero(v15, v11);
          v16 = v14 + 40;
          *(this + 15) = v14 + 40;
        }
      }

      else
      {
        v17 = *(this + 15);
        v18 = *(this + 16);
        if (v17 >= v18)
        {
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *v5) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *v5) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x333333333333333)
          {
            v27 = 0x666666666666666;
          }

          else
          {
            v27 = v25;
          }

          v52 = this + 112;
          if (v27)
          {
            std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](v27);
          }

          v35 = 40 * v24;
          *buf = 0;
          *&buf[8] = v35;
          *&buf[24] = 0;
          v36 = HIDWORD(v49);
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 12) = v36;
          *(v35 + 16) = 0;
          *(v35 + 24) = 0;
          *(v35 + 32) = 0;
          *&buf[16] = 40 * v24 + 40;
          v37 = *(this + 14);
          v38 = *(this + 15);
          v39 = 40 * v24 + v37 - v38;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(v37, v38, v35 + v37 - v38);
          v40 = *(this + 14);
          *(this + 14) = v39;
          v41 = *(this + 16);
          v47 = *&buf[16];
          *(this + 120) = *&buf[16];
          *&buf[16] = v40;
          *&buf[24] = v41;
          *buf = v40;
          *&buf[8] = v40;
          std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(buf);
          v16 = v47;
        }

        else
        {
          v19 = HIDWORD(v49);
          *v17 = 0;
          *(v17 + 8) = 0;
          *(v17 + 12) = v19;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          v16 = v17 + 40;
        }
      }

      *(this + 15) = v16;
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  atomic_store(1u, this + 48);
}

void sub_1DE5EA2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

HALS_IOEngine2_IOContextInfo::BufferInfo *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOEngine2_IOContextInfo::BufferInfo>,HALS_IOEngine2_IOContextInfo::BufferInfo*>(HALS_IOEngine2_IOContextInfo::BufferInfo *result, HALS_IOEngine2_IOContextInfo::BufferInfo *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = *(v4 + 1);
      *(a3 + 16) = *(v4 + 4);
      *(a3 + 24) = *(v4 + 24);
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 4) = 0;
      *(v4 + 3) = 0;
      *(v4 + 4) = 0;
      v4 = (v4 + 40);
      a3 += 40;
    }

    while (v4 != a2);
    do
    {
      HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo(result);
      result = (v5 + 40);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALS_IOEngine2_IOContextInfo::BufferInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    HALS_IOEngine2_IOContextInfo::BufferInfo::~BufferInfo((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOEngine2::UnregisterIOBuffer(HALS_IOEngine2 *this, char a2, int a3, int a4, int a5, void *a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine218UnregisterIOBufferEbjjjPv_block_invoke;
  v7[3] = &__block_descriptor_tmp_70_13301;
  v11 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v7[4] = this;
  v7[5] = a6;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v7);
}

uint64_t HALS_IOEngine2::RegisterIOBuffer(HALS_IOEngine2 *this, char a2, int a3, int a4, int a5, void *a6)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN14HALS_IOEngine216RegisterIOBufferEbjjjPv_block_invoke;
  v9[3] = &unk_1E8677A08;
  v9[4] = &v14;
  v9[5] = this;
  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9[6] = a6;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t ___ZN14HALS_IOEngine216RegisterIOBufferEbjjjPv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 992))(*(a1 + 40), *(a1 + 68), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::TimelineWasReset(HALS_IOEngine2 *this, int a2, int a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine216TimelineWasResetEjj_block_invoke;
  v4[3] = &__block_descriptor_tmp_77_13307;
  v4[4] = this;
  v5 = a3;
  v6 = a2;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t ___ZN14HALS_IOEngine216TimelineWasResetEjj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = atomic_load((v1 + 1117));
  v3 = *(v1 + 808);
  if (v3 && ((*(result + 40) & 1) != 0 || (v2 & 1) == 0))
  {
    v4 = 0;
    v5 = v3 + 48;
    v6 = 1;
    do
    {
      v7 = v6;
      v9 = v5 + 24 * v4;
      v8 = *v9;
      v10 = *(v9 + 8) - *v9;
      if ((v10 & 0x7FFFFFFF8) != 0)
      {
        v11 = (v10 >> 3);
        v12 = v10 >> 3;
        do
        {
          if (!v12)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *v8++;
          *(v13 + 456) = 0;
          --v12;
          --v11;
        }

        while (v11);
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
  }

  v14 = *(v1 + 776);
  v15 = *(v1 + 784);
  if (v14 != v15)
  {
    v16 = *(result + 44);
    do
    {
      v17 = *v14;
      if (*(*(*v14 + 32) + 16) == v16)
      {
        v19 = *(v17 + 112);
        v18 = *(v17 + 120);
        if (v19 != v18)
        {
          v20 = 0;
          v21 = (v18 - v19 - 40) / 0x28uLL;
          v22 = (v21 + 2) & 0xFFFFFFFFFFFFFFELL;
          v23 = vdupq_n_s64(v21);
          v24 = (v19 + 64);
          do
          {
            v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v20), xmmword_1DE757E30)));
            if (v25.i8[0])
            {
              *(v24 - 5) = 0;
            }

            if (v25.i8[4])
            {
              *v24 = 0;
            }

            v20 += 2;
            v24 += 10;
          }

          while (v22 != v20);
          v26 = 0;
          v27 = (v19 + 72);
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v26), xmmword_1DE757E30)));
            if (v28.i8[0])
            {
              *(v27 - 5) = 0;
            }

            if (v28.i8[4])
            {
              *v27 = 0;
            }

            v26 += 2;
            v27 += 10;
          }

          while (v22 != v26);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  return result;
}

void HALS_IOEngine2::UpdateIssueReporters(HALS_IOEngine2 *this)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__66;
  v20 = __Block_byref_object_dispose__67;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN14HALS_IOEngine220UpdateIssueReportersEv_block_invoke;
  v15[3] = &unk_1E86779E0;
  v15[4] = &v16;
  v15[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v15);
  v3 = v17;
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v3[5];
    v7 = v3[6];
    if (v6 == v7 || !v5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = v17[5];
    v7 = v17[6];
    if (v6 == v7 || !v5)
    {
      goto LABEL_28;
    }
  }

  v24 = v5;
  v25 = v4;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v26, v6, v7, (v7 - v6) >> 2);
  v8 = atomic_load(this + 96);
  if (v8)
  {
    atomic_store(1u, this + 97);
  }

  if (*(this + 392) != 1)
  {
    operator new();
  }

  v9 = v25;
  v34 = v24;
  v35 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v10 = v26;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v36, v26, v27, (v27 - v26) >> 2);
  v11 = *(this + 48);
  v12 = *(this + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN13HALS_IOEngine21_UpdateIssueReportersERKNSt3__16vectorIjNS4_9allocatorIjEEEEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_178;
  v13 = v35;
  block[4] = v34;
  v30 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v14 = v36;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v36, v37, (v37 - v36) >> 2);
  dispatch_group_async(v11, v12, block);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v9)
  {
    v4 = v9;
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_28:
  _Block_object_dispose(&v16, 8);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1DE5EABD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  __clang_call_terminate(a1);
}

void sub_1DE5EAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  v24 = *(v23 - 96);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  HALS_IOEngine::_UpdateIssueReporters(std::vector<unsigned int> const&)::$_0::~$_0(va);
  JUMPOUT(0x1DE5EAC48);
}

void sub_1DE5EAC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Block_object_dispose(&a16, 8);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__66(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__67(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void HALS_IOEngine2::DestroyCaptureFiles(HALS_IOEngine2 *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "HALS_IOEngine2.cpp";
    v13 = 1024;
    v14 = 2193;
    v15 = 2080;
    v16 = this + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::DestroyCaptureFiles() device %s", &v11, 0x1Cu);
  }

  v2 = *(this + 101);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "HALS_IOEngine2.cpp";
    v13 = 1024;
    v14 = 930;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2_DeviceInfo::DestroyCaptureFiles()", &v11, 0x12u);
  }

  v3 = 0;
  v4 = v2 + 48;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (v4 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v10 + 200), 0);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
}

void HALS_IOEngine2::CreateCaptureFiles(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "HALS_IOEngine2.cpp";
    v15 = 1024;
    v16 = 2187;
    v17 = 2080;
    v18 = a1 + 836;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::CreateCaptureFiles() device %s", &v13, 0x1Cu);
  }

  v4 = *(a1 + 808);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "HALS_IOEngine2.cpp";
    v15 = 1024;
    v16 = 918;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2_DeviceInfo::CreateCaptureFiles()", &v13, 0x12u);
  }

  v5 = 0;
  v6 = v4 + 48;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v6 + 24 * v5);
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      v12 = *v10++;
      HALS_IOEngine2_StreamInfo::CreateCaptureFile(v12, a2);
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

void HALS_IOEngine2::SetAudioCaptureMode(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine219SetAudioCaptureModeE17AudioCapturerMode_block_invoke;
  v3[3] = &__block_descriptor_tmp_65_13323;
  v3[4] = a1;
  v4 = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOEngine2::IsCaptureFileEnabled(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine220IsCaptureFileEnabledEv_block_invoke;
  v4[3] = &unk_1E8677998;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine220IsCaptureFileEnabledEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 976))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_IOEngine2::HasDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v8, this, a2, a3);
  v5 = v8;
  if (v8 && *v8 && (*(**v8 + 16))(*v8) && *v5)
  {
    v6 = (*(**v5 + 72))(*v5, a4);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void HALS_IOEngine2::GetDSPForStreamAtIndex(HALS_IOEngine2 *this, uint64_t a2, char a3, int a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3802000000;
  v13 = __Block_byref_object_copy__58;
  v15 = 0;
  v16 = 0;
  v14 = __Block_byref_object_dispose__59;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine222GetDSPForStreamAtIndexEbj_block_invoke;
  v7[3] = &unk_1E86778F8;
  v9 = a3;
  v8 = a4;
  v7[4] = &v10;
  v7[5] = a2;
  v5 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v5, v7);
  v6 = v11[6];
  *this = v11[5];
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v10, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE5EB3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__58(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__59(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZNK14HALS_IOEngine222GetDSPForStreamAtIndexEbj_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 808);
  if (v2)
  {
    v3 = *(a1 + 48);
    v5 = (v2 + 24 * *(a1 + 52) + 48);
    v4 = *v5;
    v6 = (v5[1] - *v5) >> 3;
    if (v3 < v6)
    {
      if (v6 <= v3)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = *(v4 + 8 * v3);
      if (v7)
      {
        v9 = *(v7 + 184);
        v8 = *(v7 + 192);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 48);
        *(v10 + 40) = v9;
        *(v10 + 48) = v8;
        if (v11)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }
  }
}

uint64_t HALS_IOEngine2::GetDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, float *a5)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v10, this, a2, a3);
  v7 = v10;
  if (v10 && *v10 && (*(**v10 + 16))(*v10) && *v7)
  {
    v8 = (*(**v7 + 64))(*v7, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

uint64_t HALS_IOEngine2::SetDSPParameterForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, float a5)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v10, this, a2, a3);
  v7 = v10;
  if (v10 && *v10 && (*(**v10 + 16))(*v10) && *v7)
  {
    v8 = (*(**v7 + 56))(*v7, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

uint64_t HALS_IOEngine2::HasDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v8, this, a2, a3);
  v5 = v8;
  if (v8 && *v8 && (*(**v8 + 16))(*v8) && *v5)
  {
    v6 = (*(**v5 + 48))(*v5, a4);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

uint64_t HALS_IOEngine2::GetDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, unsigned int *a5, void *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 40))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::GetDSPPropertyInfoForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 32))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::SetDSPPropertyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, uint64_t a4, uint64_t a5, const void *a6)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v12, this, a2, a3);
  v9 = v12;
  if (v12 && *v12 && (*(**v12 + 16))(*v12) && *v9)
  {
    v10 = (*(**v9 + 24))(*v9, a4, a5, a6);
  }

  else
  {
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

uint64_t HALS_IOEngine2::GetDSPLatencyForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3)
{
  HALS_IOEngine2::GetDSPForStreamAtIndex(&v9, this, a2, a3);
  v4 = v9;
  if (v9 && *v9 && (*(**v9 + 16))(*v9) && ((*(*this + 344))(this), *v4))
  {
    v6 = v5;
    v7 = ((*(**v4 + 80))(*v4) * v6);
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1DE5EBA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOEngine2::HasReferenceStreamInScope(HALS_IOEngine2 *this, uint64_t a2)
{
  result = (*(*this + 416))(this);
  if (result)
  {
    v5 = result;
    if ((*(*this + 504))(this, a2, 0))
    {
      return 1;
    }

    else
    {
      v6 = 1;
      while (v5 != v6)
      {
        v7 = (*(*this + 504))(this, a2, v6);
        v6 = (v6 + 1);
        if (v7)
        {
          v8 = v6 - 1;
          return v8 < v5;
        }
      }

      v8 = v5;
      return v8 < v5;
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::HasReferenceStreamAtIndex(HALS_IODevice **this, char a2, int a3)
{
  v3 = HALS_IODevice::CopyStreamByIndex(this[92], a2, a3);
  v5 = v3;
  if (v3)
  {
    if (*(v3 + 14) == 1)
    {
      IsHardwareReferenceStream = 1;
    }

    else
    {
      IsHardwareReferenceStream = HALS_Stream::IsHardwareReferenceStream(v3);
    }
  }

  else
  {
    IsHardwareReferenceStream = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return IsHardwareReferenceStream;
}

void HALS_IOEngine2::SetDSPForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, const HALS_DSPSettings *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if ((*(*this + 416))(this, 0))
  {
    (*(*this + 448))(this, 0, 0, v6);
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](1uLL);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v9 = "HALS_IOEngine2.cpp";
    v10 = 1024;
    v11 = 1881;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetInputStreamChannelCountsForOutputDSP: bad stream index", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void sub_1DE5EC18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  if (v22)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void ___ZN14HALS_IOEngine222SetDSPForStreamAtIndexEbjRK16HALS_DSPSettings_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[101];
  if (v3)
  {
    v4 = *(a1 + 84);
    v5 = *(a1 + 80);
    v7 = a1;
    (*(*v2 + 352))(v2);
    v6 = (*(v3 + 24 * v4 + 56) - *(v3 + 24 * v4 + 48)) >> 3;
    if (v5 < v6)
    {
      if (v6 > v5)
      {
        operator new();
      }

      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    *(*(*(v7 + 32) + 8) + 24) = v5 < v6;
  }
}

void sub_1DE5ED65C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

void sub_1DE5ED870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  HALS_IOStreamDSP::InputChannelData::~InputChannelData(va);
  JUMPOUT(0x1DE5ED880);
}

void __destroy_helper_block_e8_56c64_ZTSNSt3__16vectorIN2CA17StreamDescriptionENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t *__copy_helper_block_e8_56c64_ZTSNSt3__16vectorIN2CA17StreamDescriptionENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v2, *(a2 + 56), *(a2 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
}

uint64_t HALS_IOEngine2::GetStartSample(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine214GetStartSampleEv_block_invoke;
  v4[3] = &unk_1E8677A50;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ED990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine214GetStartSampleEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 1336))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_IOEngine2::SetStartSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN14HALS_IOEngine214SetStartSampleEjN4AMCP11Index_GroupIxNS0_9DirectionEEEjb_block_invoke;
  v7[3] = &__block_descriptor_tmp_72_13358;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = a4;
  v8 = a2;
  v9 = a5;
  v10 = a6;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v7);
}

uint64_t HALS_IOEngine2::HasAnyNonMixableFormats(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine223HasAnyNonMixableFormatsEv_block_invoke;
  v4[3] = &unk_1E8677970;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EDBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine223HasAnyNonMixableFormatsEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = v1 + 48;
    do
    {
      v5 = v2;
      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      for (i = v7; i != v8; i += 8)
      {
        v10 = v7;
        do
        {
          if (*(*v10 + 128) != 1819304813 || (*(*v10 + 132) & 0x40) != 0)
          {
            v12 = 1;
            goto LABEL_14;
          }

          v10 += 8;
        }

        while (v10 != v8);
      }

      v2 = 1;
      v3 = 1;
    }

    while ((v5 & 1) == 0);
    v12 = 0;
LABEL_14:
    *(*(*(result + 32) + 8) + 24) = v12;
  }

  return result;
}

uint64_t HALS_IOEngine2::CalculateBufferByteSizeForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, int a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK14HALS_IOEngine239CalculateBufferByteSizeForStreamAtIndexEbjj_block_invoke;
  v7[3] = &unk_1E8677920;
  v7[4] = &v11;
  v7[5] = this;
  v10 = a2;
  v8 = a3;
  v9 = a4;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v7);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t ___ZNK14HALS_IOEngine239CalculateBufferByteSizeForStreamAtIndexEbjj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = *(result + 48);
    v4 = (v1 + 24 * *(result + 56) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 >= v5)
    {
      v9 = 0;
    }

    else
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(v3 + 8 * v2);
      v7 = v6[12];
      v8 = v6[14];
      v9 = v6[16] * *(result + 52);
      if (v7 != 1819304813)
      {
        v9 = v8;
      }
    }

    *(*(*(result + 32) + 8) + 24) = v9;
  }

  return result;
}

__n128 HALS_IOEngine2::GetPhysicalFormatForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, CA::StreamDescription *a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5002000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__54;
  v18 = 0u;
  v19 = 0;
  v17 = 0u;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK14HALS_IOEngine233GetPhysicalFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke;
  v9[3] = &unk_1E86778D0;
  v11 = a2;
  v10 = a3;
  v9[4] = &v12;
  v9[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v9);
  v6 = v13[9];
  v7 = *(v13 + 7);
  *a4 = *(v13 + 5);
  *(a4 + 1) = v7;
  *(a4 + 4) = v6;
  _Block_object_dispose(&v12, 8);
  return result;
}

void sub_1DE5EDEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__53(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 ___ZNK14HALS_IOEngine233GetPhysicalFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    v2 = *(a1 + 48);
    v4 = (v1 + 24 * *(a1 + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 < v5)
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(a1 + 32) + 8);
      v7 = *(v3 + 8 * v2);
      result = *(v7 + 120);
      v9 = *(v7 + 136);
      *(v6 + 72) = *(v7 + 152);
      *(v6 + 56) = v9;
      *(v6 + 40) = result;
    }
  }

  return result;
}

__n128 HALS_IOEngine2::GetVirtualFormatForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, CA::StreamDescription *a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5002000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__54;
  v18 = 0u;
  v19 = 0;
  v17 = 0u;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK14HALS_IOEngine232GetVirtualFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke;
  v9[3] = &unk_1E86778A8;
  v11 = a2;
  v10 = a3;
  v9[4] = &v12;
  v9[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v9);
  v6 = v13[9];
  v7 = *(v13 + 7);
  *a4 = *(v13 + 5);
  *(a4 + 1) = v7;
  *(a4 + 4) = v6;
  _Block_object_dispose(&v12, 8);
  return result;
}

void sub_1DE5EE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 ___ZNK14HALS_IOEngine232GetVirtualFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    v2 = *(a1 + 48);
    v4 = (v1 + 24 * *(a1 + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 < v5)
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(a1 + 32) + 8);
      v7 = *(v3 + 8 * v2);
      result = *(v7 + 40);
      v9 = *(v7 + 56);
      *(v6 + 72) = *(v7 + 72);
      *(v6 + 56) = v9;
      *(v6 + 40) = result;
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::IsStreamAtIndexActive(HALS_IOEngine2 *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK14HALS_IOEngine221IsStreamAtIndexActiveEbj_block_invoke;
  v6[3] = &unk_1E8677858;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK14HALS_IOEngine221IsStreamAtIndexActiveEbj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = *(result + 48);
    v4 = (v1 + 24 * *(result + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 >= v5)
    {
      v6 = 0;
    }

    else
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(v3 + 8 * v2) + 32);
    }

    *(*(*(result + 32) + 8) + 24) = v6 & 1;
  }

  return result;
}

uint64_t HALS_IOEngine2::GetNumberStreamsVisibleToClient(HALS_IOEngine2 *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK14HALS_IOEngine231GetNumberStreamsVisibleToClientEbj_block_invoke;
  v6[3] = &unk_1E8677830;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void ___ZNK14HALS_IOEngine231GetNumberStreamsVisibleToClientEbj_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 40) + 808);
  if (v2)
  {
    if (*(result + 52))
    {
      v4 = *(result + 48);
      v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
      v7 = v5;
      if (v5 && ((v8 = *(v5 + 20), v8 <= 1701078389) ? (v9 = v8 == 1633773415, v10 = 1633969526) : (v8 != 1701078390 ? (v9 = v8 == 1701733488) : (v9 = 1), v10 = 1919182198), (!v9 ? (v12 = v8 == v10) : (v12 = 1), v12) || (v16 = *(v5 + 24), v8 != v16) && (v16 <= 1701078389 ? (v17 = v16 == 1633773415, v18 = 1633969526) : (v16 != 1701078390 ? (v17 = v16 == 1701733488) : (v17 = 1), v18 = 1919182198), !v17 ? (v19 = v16 == v18) : (v19 = 1), v19)) && !HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v5 + 448), v4))
      {
        v13 = v2[9];
        v14 = v2[10];
        if (v13 == v14)
        {
          LODWORD(v11) = 0;
        }

        else
        {
          LODWORD(v11) = 0;
          do
          {
            v15 = *v13++;
            LODWORD(v11) = v11 + (*(v15 + 21) ^ 1);
          }

          while (v13 != v14);
        }
      }

      else
      {
        v11 = (v2[10] - v2[9]) >> 3;
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
    }

    else
    {
      v11 = (v2[7] - v2[6]) >> 3;
    }

    *(*(*(result + 32) + 8) + 24) = v11;
  }
}

void HALS_IOEngine2::TransitionContextFromCatchupToRealtime(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine238TransitionContextFromCatchupToRealtimeEjRK17HALS_IOEngineInfo_block_invoke;
  v4[3] = &__block_descriptor_tmp_48_13385;
  v5 = a2;
  v4[4] = this;
  v4[5] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t HALS_IOEngine2::IsClockStable(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine213IsClockStableEv_block_invoke;
  v4[3] = &unk_1E86777C0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine213IsClockStableEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 40);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetClockAlgorithm(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1768518246;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine217GetClockAlgorithmEv_block_invoke;
  v4[3] = &unk_1E8677798;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine217GetClockAlgorithmEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 36);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetLatency(HALS_IOEngine2 *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOEngine210GetLatencyEb_block_invoke;
  v5[3] = &unk_1E8677770;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOEngine210GetLatencyEb_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 4 * *(result + 48) + 28);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetRingBufferFrameSize(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine222GetRingBufferFrameSizeEv_block_invoke;
  v4[3] = &unk_1E8677720;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine222GetRingBufferFrameSizeEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 16);
  }

  return result;
}

double HALS_IOEngine2::GetNominalSampleRate(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine220GetNominalSampleRateEv_block_invoke;
  v4[3] = &unk_1E86776F8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EEAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double ___ZNK14HALS_IOEngine220GetNominalSampleRateEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    result = *(v1 + 8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t HALS_IOEngine2::DoAnyQueuesHaveWorkAfterFlush(HALS_IOEngine2 *this)
{
  v1 = atomic_load(this + 97);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 433), (v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load((*(this + 96) + 33));
  }

  return v3 & 1;
}

void HALS_IOEngine2::FlushAllQueues(HALS_IOEngine2 *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 64));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 400));
  v2 = *(this + 96);

  AMCP::Utility::Dispatch_Queue::flush_all_work(v2);
}

void HALS_IOEngine2::HogModeOwnerChanged(HALS_IOEngine2 *this, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4002000000;
  v12 = __Block_byref_object_copy__13413;
  v13 = __Block_byref_object_dispose__13414;
  memset(v14, 0, sizeof(v14));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine219HogModeOwnerChangedEi_block_invoke;
  v8[3] = &unk_1E8677650;
  v8[4] = &v9;
  v8[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v8);
  v4 = v10;
  for (i = v10[5]; i != v4[6]; i += 8)
  {
    v6 = *(*(*i + 72) + 4);
    if (v6)
    {
      v7 = **(*i + 104);
      if (a2 == -1 || v6 == a2)
      {
        (*(v7 + 216))();
      }

      else
      {
        (*(v7 + 200))();
      }
    }

    v4 = v10;
  }

  _Block_object_dispose(&v9, 8);
  v15 = v14;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_1DE5EECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  *(v16 - 40) = v15;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13413(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void HALS_IOEngine2::DuckIOContextVolumeScalarForClient(HALS_IOEngine2 *this, double a2, double a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 256))(this, &v13);
  v6 = v13;
  v7 = v14;
  if (v13 != v14)
  {
    do
    {
      v8 = *v6;
      v9 = (*(**(this + 92) + 256))(*(this + 92), **(*v6 + 72), 0);
      v10 = *(v8 + 13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN26HALS_IOContext_Legacy_Impl19RampVolumeForEngineEP13HALS_IOEnginebfdd_block_invoke;
      v16[3] = &__block_descriptor_tmp_17_13703;
      v16[4] = v10;
      v16[5] = this;
      v18 = 0;
      v17 = v9;
      *&v16[6] = a2;
      *&v16[7] = a3;
      v11 = (*(**(v10 + 24) + 64))(*(v10 + 24));
      HALB_CommandGate::ExecuteCommand(v11, v16);
      HALS_ObjectMap::ReleaseObject(v8, v12);
      v6 += 8;
    }

    while (v6 != v7);
    v6 = v13;
  }

  if (v6)
  {
    v14 = v6;
    operator delete(v6);
  }
}

void sub_1DE5EEF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOEngine2::SetIOContextVolumeScalarForClient(HALS_IOEngine2 *this, int a2, char a3)
{
  v6 = (*(**(this + 92) + 256))(*(this + 92));
  v13 = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 256))(this, &v13);
  v8 = v13;
  v9 = v14;
  if (v13 != v14)
  {
    do
    {
      v10 = *v8;
      if (**(*v8 + 72) == a2)
      {
        v11 = *(v10 + 13);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___ZN26HALS_IOContext_Legacy_Impl18SetVolumeForEngineEP13HALS_IOEnginebf_block_invoke;
        v16[3] = &__block_descriptor_tmp_16_13700;
        v16[4] = v11;
        v16[5] = this;
        v18 = a3;
        v17 = v6;
        v12 = (*(**(v11 + 24) + 64))(*(v11 + 24));
        HALB_CommandGate::ExecuteCommand(v12, v16);
      }

      HALS_ObjectMap::ReleaseObject(v10, v7);
      v8 += 8;
    }

    while (v8 != v9);
    v8 = v13;
  }

  if (v8)
  {
    v14 = v8;
    operator delete(v8);
  }
}

void sub_1DE5EF0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_IOEngine2::_GetIOContextStreamUsage(void *this, int a2, unsigned int a3, unsigned int *a4, BOOL *a5)
{
  if (a2)
  {
    for (i = this[97]; i != this[98]; ++i)
    {
      v6 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        v7 = (*(this[101] + 24 * a3 + 56) - *(this[101] + 24 * a3 + 48)) >> 3;
        if (*a4 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = *a4;
        }

        if (v7)
        {
          v8 = 0;
          v9 = v6 + 24 * a3;
          v10 = *(v9 + 64);
          do
          {
            if (v10 == v8)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            a5[v8] = (*(*(v9 + 56) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1;
            ++v8;
          }

          while (v7 != v8);
        }

        goto LABEL_7;
      }
    }
  }

  LODWORD(v7) = 0;
LABEL_7:
  *a4 = v7;
  return this;
}

void *HALS_IOEngine2::_SetIOContextStreamUsage(void *result, int a2, unsigned int a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v5 = result;
    v6 = result[97];
    v7 = result[98];
    if (v6 != v7)
    {
      while (1)
      {
        v10 = *v6;
        if (*(*(*v6 + 32) + 16) == a2)
        {
          break;
        }

        if (++v6 == v7)
        {
          return result;
        }
      }

      v11 = v10 + 24 * a3;
      *(v11 + 64) = 0;
      if (*(a4 + 8))
      {
        std::vector<BOOL>::operator=((v11 + 56), a4);
      }

      HALS_IOEngine2::_UpdateTotalStreamUsage(v5, a3, a5);
      v12 = atomic_load((v10 + 48));
      if (v12)
      {
        atomic_store(0, (v10 + 48));
        *(v10 + 104) = 0;
        v14 = *(v10 + 112);
          ;
        }

        *(v10 + 120) = v14;
        HALS_IOEngine2_IOContextInfo::StartIO(v10);
      }

      v15 = *(*v5 + 720);

      return v15(v5);
    }
  }

  return result;
}

uint64_t *std::vector<BOOL>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > a1[2] << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    a1[1] = v6;
  }

  return a1;
}

void HALS_IOEngine2::CopyAllContexts(uint64_t a1, void **a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4002000000;
  v21 = __Block_byref_object_copy__20;
  v22 = __Block_byref_object_dispose__21;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZNK14HALS_IOEngine215CopyAllContextsERNSt3__16vectorIP14HALS_IOContextNS0_9allocatorIS3_EEEE_block_invoke;
  v17[3] = &unk_1E8677608;
  v17[4] = &v18;
  v17[5] = a1;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v17);
  if (v19 + 5 != a2)
  {
    v4 = v19[5];
    v5 = v19[6];
    v6 = v5 - v4;
    v7 = a2[2];
    v8 = *a2;
    if (v7 - *a2 < (v5 - v4))
    {
      v9 = v6 >> 3;
      if (v8)
      {
        a2[1] = v8;
        operator delete(v8);
        v7 = 0;
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      if (!(v9 >> 61))
      {
        v10 = v7 >> 2;
        if (v7 >> 2 <= v9)
        {
          v10 = v6 >> 3;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v11);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2[1];
    v13 = v12 - v8;
    if (v12 - v8 >= v6)
    {
      if (v5 != v4)
      {
        memmove(v8, v4, v5 - v4);
      }

      v16 = &v8[v6];
    }

    else
    {
      if (v12 != v8)
      {
        memmove(*a2, v4, v12 - v8);
        v12 = a2[1];
      }

      v14 = &v4[v13];
      v15 = v5 - &v4[v13];
      if (v15)
      {
        memmove(v12, v14, v15);
      }

      v16 = &v12[v15];
    }

    a2[1] = v16;
  }

  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_1DE5EF5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__20(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__21(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1DE5EF680(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(HALS_IOEngine2 *this, const AudioObjectPropertyAddress **a2, const AudioObjectPropertyAddress *a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v15 = 0x676C6F6261657245;
  LODWORD(v16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (!CAPropertyAddress::IsCongruentAddress(&v15, v4, a3))
    {
      if (++v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v6 = *(this + 92);
  v7 = atomic_load((v6 + 776));
  if (v4 != v5 || (v7 & 1) != 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x4002000000;
    v18 = __Block_byref_object_copy__13413;
    v19 = __Block_byref_object_dispose__13414;
    memset(v20, 0, sizeof(v20));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN14HALS_IOEngine236MaybeRefreshCompositionOnAllContextsERK21CAPropertyAddressList_block_invoke;
    v14[3] = &unk_1E86775E0;
    v14[4] = &v15;
    v14[5] = this;
    v8 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v8, v14);
    v9 = v16;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN11HALS_Device27UpdateAndCopyEngineReplacerEv_block_invoke;
    v21[3] = &unk_1E8679400;
    v21[4] = &v22;
    v21[5] = v6;
    v10 = (*(*v6 + 64))(v6);
    HALB_CommandGate::ExecuteCommand(v10, v21);
    v11 = v23[3];
    _Block_object_dispose(&v22, 8);
    if (v11)
    {
      v26[0] = &unk_1F5981AB8;
      v26[1] = v9 + 5;
      v26[3] = v26;
      (*(*v11 + 1000))(v11, v26);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
    }

    else
    {
      for (i = v9[5]; i != v9[6]; i += 8)
      {
        (*(**(*i + 104) + 248))(*(*i + 104));
      }
    }

    HALS_ObjectMap::ReleaseObject(v11, v12);
    _Block_object_dispose(&v15, 8);
    v21[0] = v20;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v21);
  }
}

void sub_1DE5EF984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17 - 104);
  HALS_ObjectMap::ReleaseObject(v15, v19);
  _Block_object_dispose(va, 8);
  *(v17 - 136) = v16;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v17 - 136));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14HALS_IOEngine236MaybeRefreshCompositionOnAllContextsERK21CAPropertyAddressListE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (*v1 != *(v1 + 8))
  {
    v3 = result;
    do
    {
      v4 = *v2++;
      result = (*(**(v4 + 104) + 248))(*(v4 + 104));
    }

    while (v2 != *(*(v3 + 8) + 8));
  }

  return result;
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5981AB8;
  a2[1] = v2;
  return result;
}

void HALS_IOEngine2::AssessAllContexts(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x4002000000;
  v8 = __Block_byref_object_copy__13413;
  v9 = __Block_byref_object_dispose__13414;
  memset(v10, 0, sizeof(v10));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine217AssessAllContextsEv_block_invoke;
  v4[3] = &unk_1E86775B8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6;
  for (i = v6[5]; i != v2[6]; i += 8)
  {
    (*(**(*i + 104) + 240))(*(*i + 104));
    v2 = v6;
  }

  _Block_object_dispose(&v5, 8);
  v11 = v10;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1DE5EFCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  *(v16 - 24) = v15;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  _Unwind_Resume(a1);
}

void HALS_IOEngine2::ResumeAllContexts(unsigned int *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4002000000;
  v15[3] = __Block_byref_object_copy__13413;
  v15[4] = __Block_byref_object_dispose__13414;
  memset(v16, 0, sizeof(v16));
  v9 = 0;
  v10 = &v9;
  v11 = 0x3002000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
  v8[3] = &unk_1E8677590;
  v8[5] = &v9;
  v8[6] = a1;
  v8[4] = v15;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v8);
  v3 = 1;
  v4 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v5 = v10[5];
    v6 = dispatch_time(0, 2000000000);
    if (!dispatch_block_wait(v5, v6))
    {
      break;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "HALS_IOEngine2.cpp";
      v19 = 1024;
      v20 = 1140;
      v21 = 1024;
      v22 = 2 * v3;
      _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::ResumeAllContexts: still waiting after %u seconds", buf, 0x18u);
      ++v3;
    }
  }

  v7 = v10[5];
  if (v7)
  {
    _Block_release(v7);
  }

  kdebug_trace();
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v15, 8);
  v9 = v16;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1DE5EFFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, HALS_Object **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, HALS_Object **);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v19 = a11;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  (*(*v2 + 920))(v2, *(a1[4] + 8) + 40);
  if (v2[200])
  {
    --v2[200];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "HALS_IOEngine2.cpp";
    v6 = 1024;
    v7 = 1117;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::ResumeAllContexts: extra resume", &v4, 0x12u);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_15;
  v3[3] = &unk_1E8677568;
  v3[4] = a1[4];
  v3[5] = v2;
  *(*(a1[5] + 8) + 40) = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v3);
  AMCP::Utility::Dispatch_Queue::async((v2 + 100), *(*(a1[5] + 8) + 40));
}

uint64_t ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_15(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 40);
  if (v2 != *(v1 + 48))
  {
    v3 = result;
    v4 = *(result + 40);
    do
    {
      v5 = *v2++;
      result = (*(**(v5 + 104) + 216))(*(v5 + 104), *(v4 + 16));
    }

    while (v2 != *(*(*(v3 + 32) + 8) + 48));
  }

  return result;
}

void HALS_IOEngine2::PauseAllContexts(unsigned int *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x4002000000;
  v17[3] = __Block_byref_object_copy__13413;
  v17[4] = __Block_byref_object_dispose__13414;
  memset(v18, 0, sizeof(v18));
  v11 = 0;
  v12 = &v11;
  v13 = 0x3002000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
  v10[3] = &unk_1E8677540;
  v10[4] = v17;
  v10[5] = &v11;
  v10[6] = a1;
  v10[7] = a2;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v10);
  v5 = 1;
  v6 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v7 = v12[5];
    v8 = dispatch_time(0, 2000000000);
    if (!dispatch_block_wait(v7, v8))
    {
      break;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "HALS_IOEngine2.cpp";
      v21 = 1024;
      v22 = 1092;
      v23 = 1024;
      v24 = 2 * v5;
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::PauseAllContexts: still waiting after %u seconds", buf, 0x18u);
      ++v5;
    }
  }

  v9 = v12[5];
  if (v9)
  {
    _Block_release(v9);
  }

  kdebug_trace();
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);
  v11 = v18;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1DE5F050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  a21 = a12;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  (*(*v2 + 920))(v2, *(a1[4] + 8) + 40);
  ++v2[200];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_2;
  block[3] = &unk_1E8677518;
  block[4] = a1[4];
  block[5] = v2;
  block[6] = a1[7];
  *(*(a1[5] + 8) + 40) = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  AMCP::Utility::Dispatch_Queue::async((v2 + 100), *(*(a1[5] + 8) + 40));
}

void sub_1DE5F0638(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_2(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  if (v2 != *(v1 + 48))
  {
    v4 = a1[5];
    do
    {
      v5 = *v2;
      if ((*(**(*v2 + 104) + 200))(*(*v2 + 104), *(v4 + 16)))
      {
        v6 = a1[6];
        v7 = *(v5 + 16);
        std::vector<unsigned int>::push_back[abi:ne200100](v6, &v7);
      }

      ++v2;
    }

    while (v2 != *(*(a1[4] + 8) + 48));
  }
}

void HALS_IOEngine2::UnregisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine219UnregisterIOContextEP14HALS_IOContext_block_invoke;
  v3[3] = &__block_descriptor_tmp_10_13449;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_IOEngine2::RegisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine217RegisterIOContextEP14HALS_IOContext_block_invoke;
  v3[3] = &__block_descriptor_tmp_13452;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOEngine2::GetMIGDispatchQueue(HALS_IOEngine2 *this)
{
  return *(this + 95);
}

{
  return *(this + 95);
}

void HALS_IOEngine2::_Deactivate(HALS_IOEngine2 *this)
{
  *(this + 2) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*this + 920))(this, &v5);
  v2 = v5;
  v3 = v6;
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(*this + 216))(this);
    }

    ++v2;
  }

  v4 = *(this + 101);
  *(this + 101) = 0;
  if (v4)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v4);
  }

  *(this + 92) = 0;
  v8 = &v5;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_1DE5F0978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOEngine2::Activate(HALS_IOEngine2 *this, HALS_Object *a2)
{
  HALS_Object::Activate(this, a2);
  v3 = *(*this + 960);

  return v3(this);
}

void HALS_IOEngine2::HALS_IOEngine2(HALS_IOEngine2 *this, HALS_IODevice *a2, uint64_t a3, uint64_t a4, HALS_Object *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  HALS_IOEngine::HALS_IOEngine(this, a2, a3, a4, a5);
  *v7 = &unk_1F5981488;
  *(v7 + 736) = a2;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0u;
  *(v7 + 776) = 0u;
  *(v7 + 792) = 0;
  *(v7 + 800) = 0;
  *(v7 + 1120) = 0;
  *(v7 + 1128) = 0;
  *(v7 + 1096) = 0u;
  *(v7 + 1110) = 0;
  *(v7 + 804) = 0u;
  *(v7 + 820) = 0u;
  *(v7 + 836) = 0u;
  *(v7 + 852) = 0u;
  *(v7 + 868) = 0u;
  *(v7 + 884) = 0u;
  *(v7 + 900) = 0u;
  *(v7 + 916) = 0u;
  *(v7 + 932) = 0u;
  *(v7 + 948) = 0u;
  *(v7 + 964) = 0u;
  *(v7 + 980) = 0u;
  *(v7 + 996) = 0u;
  *(v7 + 1012) = 0u;
  *(v7 + 1028) = 0u;
  *(v7 + 1044) = 0u;
  *(v7 + 1060) = 0u;
  *(v7 + 1076) = 0u;
  if (g_static_start_options != 1)
  {
    operator new();
  }

  v8 = (*(*a2 + 216))(a2);
  v11 = v8;
  v12 = 1;
  if (v8)
  {
    CFStringGetLength(v8);
    v8 = v11;
  }

  *v10 = 256;
  CACFString::GetCString(v8, (this + 836), v10, v9);
  operator new[]();
}

void sub_1DE5F1088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v64 = *v61;
  if (*v61)
  {
    v60[3].__vftable = v64;
    operator delete(v64);
  }

  v65 = *v62;
  if (*v62)
  {
    v60[1].__shared_weak_owners_ = v65;
    operator delete(v65);
  }

  std::__shared_weak_count::~__shared_weak_count(v60);
  operator delete(v66);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100]((v58 + 824), 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100]((v58 + 816), 0);
  v67 = *(v58 + 808);
  *(v58 + 808) = 0;
  if (v67)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v67);
  }

  __p = (v58 + 776);
  std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](v59, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100]((v58 + 760), 0);
  v68 = *(v58 + 752);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  HALS_IOEngine::~HALS_IOEngine(v58);
  _Unwind_Resume(a1);
}

void std::stringbuf::str[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

void std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_IOEngine2::~HALS_IOEngine2(HALS_IOEngine2 *this)
{
  *this = &unk_1F5981488;
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 103, 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 102, 0);
  v2 = *(this + 101);
  *(this + 101) = 0;
  if (v2)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v2);
  }

  v4 = (this + 776);
  std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 96, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 95, 0);
  v3 = *(this + 94);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_IOEngine::~HALS_IOEngine(this);
}

void ___ZN14HALS_IOEngine239ClearOutputStreamsUsedOnlyByThisContextEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[101];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 56) - *(v2 + 48);
    v5 = (v4 >> 3);
    std::vector<int>::vector[abi:ne200100](v18, v5);
    std::vector<int>::vector[abi:ne200100](__p, v5);
    if ((v4 & 0x7FFFFFFF8) != 0)
    {
      v6 = 0;
      v7 = v1[97];
      v8 = v1[98];
      do
      {
        if (v7 != v8)
        {
          v9 = v18[0];
          v10 = __p[0];
          v11 = v7;
          do
          {
            v12 = *v11;
            if (v6 < *(*v11 + 64) && (*(*(v12 + 56) + 8 * (v6 >> 6)) & (1 << v6)) != 0)
            {
              if (*(*(v12 + 32) + 16) == v3)
              {
                v13 = v10;
              }

              else
              {
                v13 = v9;
              }

              ++v13[v6];
            }

            ++v11;
          }

          while (v11 != v8);
        }

        ++v6;
      }

      while (v6 != v5);
      v14 = 0;
      do
      {
        if (*(__p[0] + v14) == 1 && !*(v18[0] + v14))
        {
          v15 = *(*(v1[101] + 48) + 8 * v14);
          v16 = *(v15 + 168);
          if (v16)
          {
            bzero(v16, *(v15 + 176));
          }
        }

        ++v14;
      }

      while (v5 != v14);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }
  }
}

void sub_1DE5F14B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    operator delete(v21);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1DE5F1558(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOEngine2::_GetExternalDriverStreamMixBufferInfoList(HALS_IOEngine2 *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = 48;
  do
  {
    v4 = v2;
    for (i = *(a2 + v2); i != *(a2 + v2 + 8); i += 8)
    {
      if (!*(*i + 24))
      {
        if (*(*i + 464))
        {
          operator new();
        }
      }
    }

    v2 += 24;
  }

  while (v4 != 72);
}

void sub_1DE5F1714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    *(a11 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALB_InstrumentedEvent_RealtimeDuration::markBeginTime(HALB_InstrumentedEvent_RealtimeDuration *this)
{
  ++*(this + 2);
  result = mach_absolute_time();
  *(this + 3) = result;
  *(this + 4) = result;
  return result;
}

void HALB_RealtimeDuration_Collection::enumSubDurations(uint64_t **a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *a1;
    v3 = a1[1];
    if (*a1 != v3)
    {
      do
      {
        v5 = *v2;
        v6 = v2[1];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = v6;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v9 = 0;
        }

        v8 = v5;
        v7 = *(a2 + 24);
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v7 + 48))(v7, &v8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v2 += 2;
      }

      while (v2 != v3);
    }
  }
}

void sub_1DE5F1874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_AHPManager::ObjectsPublishedAndDied(HALS_AHPManager *this, HALS_ObjectMap *a2, int a3, const unsigned int *a4, unsigned int a5, const unsigned int *a6, HALS_Client *a7)
{
  v9 = this;
  if (a2 == 1)
  {
    HALS_ObjectMap::RetainObject(this, a2);
    v10 = v9;
  }

  else
  {
    v10 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (a5)
  {
    v45 = v9;
    v46 = v10;
    v11 = 0;
    v12 = a5;
    v50 = a5;
    v51 = a6;
    do
    {
      v13 = &a6[v11];
      v14 = HALS_ObjectMap::CopyObjectByObjectID(*v13);
      v16 = v14;
      if (v14)
      {
        v17 = *(v14 + 20);
        if (v17 <= 1701078389)
        {
          v18 = v17 == 1633773415;
          v19 = 1633969526;
        }

        else
        {
          v18 = v17 == 1701078390 || v17 == 1701733488;
          v19 = 1919182198;
        }

        v20 = v18 || v17 == v19;
        if (v20 || (v35 = *(v14 + 24), v17 != v35) && (v35 <= 1701078389 ? (v36 = v35 == 1633773415, v37 = 1633969526) : (v35 != 1701078390 ? (v36 = v35 == 1919182198) : (v36 = 1), v37 = 1701733488), !v36 ? (v38 = v35 == v37) : (v38 = 1), v38))
        {
          v21 = *v13;
          pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
          if (v21)
          {
            v59 = HALS_ObjectMap::sObjectInfoListMutex;
            LODWORD(v60) = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
            v52 = 0u;
            if (HALS_ObjectMap::sObjectInfoList)
            {
              v22 = *HALS_ObjectMap::sObjectInfoList;
              v23 = *(HALS_ObjectMap::sObjectInfoList + 8);
              if (*HALS_ObjectMap::sObjectInfoList != v23)
              {
                v24 = 0;
                v52 = 0uLL;
                do
                {
                  if (*(*(v22 + 8) + 28) == v21)
                  {
                    v25 = v24 - v52;
                    v26 = (v24 - v52) >> 2;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 62)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v52 >> 1 > v27)
                    {
                      v27 = -v52 >> 1;
                    }

                    if (-v52 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v28 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v28 = v27;
                    }

                    if (v28)
                    {
                      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v28);
                    }

                    v29 = (v24 - v52) >> 2;
                    v30 = (4 * v26);
                    v31 = (4 * v26 - 4 * v29);
                    *v30 = *(v22 + 16);
                    v24 = v30 + 1;
                    memcpy(v31, v52, v25);
                    if (v52)
                    {
                      operator delete(v52);
                    }

                    *&v32 = v31;
                    *(&v32 + 1) = v24;
                    v52 = v32;
                  }

                  v22 += 24;
                }

                while (v22 != v23);
              }
            }

            HALB_Mutex::Locker::~Locker(&v59);
            v12 = v50;
            a6 = v51;
            v33 = v52;
          }

          else
          {
            v33 = 0uLL;
          }

          v34 = v33;
          std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v63, v64, v33, *(&v33 + 1), (*(&v33 + 1) - v33) >> 2);
          if (v34)
          {
            operator delete(v34);
          }
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&v63, v13);
      }

      HALS_ObjectMap::ReleaseObject(v16, v15);
      ++v11;
    }

    while (v11 != v12);
    v40 = v63;
    v39 = v64;
    v9 = v45;
    v10 = v46;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 1174405120;
  v53[2] = ___ZN15HALS_AHPManager23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke;
  v53[3] = &unk_1F5982100;
  v53[5] = v9;
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v40, v39, (v39 - v40) >> 2);
  v58 = a3;
  v53[4] = &v59;
  v57 = a4;
  v41 = (*(*v9 + 64))(v9);
  HALB_CommandGate::ExecuteCommand(v41, v53);
  if (*(v60 + 24) == 1)
  {
    v42 = *(v9 + 4);
    if (a7)
    {
      v43 = *(a7 + 4);
    }

    else
    {
      v43 = 0;
    }

    *&v66.mSelector = 0x676C6F6264657623;
    v66.mElement = 0;
    HALS_Object::PropertiesChanged(v9, v42, v43, 1, &v66);
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v59, 8);
  if (v40)
  {
    operator delete(v40);
  }

  HALS_ObjectMap::ReleaseObject(v10, v44);
}

void sub_1DE5F1CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v32 = v27;
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v28 - 160), 8);
  v31 = *(v28 - 128);
  if (v31)
  {
    operator delete(v31);
  }

  HALS_ObjectMap::ReleaseObject(v32, v30);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_AHPManager23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke(void *result, const void *a2)
{
  v4 = result[5];
  v3 = result[6];
  for (i = result[7]; v3 != i; ++v3)
  {
    v7 = v4[56];
    v6 = v4[57];
    if (v7 != v6)
    {
      while (*v7 != *v3)
      {
        v7 += 4;
        if (v7 == v6)
        {
          v7 = v4[57];
          break;
        }
      }
    }

    if (v6 != v7)
    {
      *(*(result[4] + 8) + 24) = 1;
      v8 = v6 - (v7 + 4);
      if (v6 != v7 + 4)
      {
        memmove(v7, v7 + 4, v6 - (v7 + 4));
      }

      v4[57] = &v7[v8];
    }

    v10 = v4[53];
    v9 = v4[54];
    if (v10 != v9)
    {
      while (*v10 != *v3)
      {
        v10 += 4;
        if (v10 == v9)
        {
          v10 = v4[54];
          break;
        }
      }
    }

    if (v9 != v10)
    {
      v11 = v9 - (v10 + 4);
      if (v9 != v10 + 4)
      {
        memmove(v10, v10 + 4, v9 - (v10 + 4));
      }

      v4[54] = &v10[v11];
    }

    v13 = v4[50];
    v12 = v4[51];
    if (v13 != v12)
    {
      while (*v13 != *v3)
      {
        v13 += 4;
        if (v13 == v12)
        {
          v13 = v4[51];
          break;
        }
      }
    }

    if (v12 != v13)
    {
      v14 = v12 - (v13 + 4);
      if (v12 != v13 + 4)
      {
        memmove(v13, v13 + 4, v12 - (v13 + 4));
      }

      v4[51] = &v13[v14];
    }

    v15 = HALS_ObjectMap::CopyObjectByObjectID(*v3);
    v17 = v15;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      HALS_ObjectMap::ObjectIsDead(v17, v18);
    }

    HALS_ObjectMap::ReleaseObject(v17, v16);
  }

  v19 = *(result + 20);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(result[9] + 4 * v20);
      v36 = *(result[9] + 4 * v20);
      v23 = v4[53];
      v22 = v4[54];
      if (v23 != v22)
      {
        while (*v23 != v21)
        {
          v23 += 4;
          if (v23 == v22)
          {
            v23 = v4[54];
            break;
          }
        }
      }

      if (v22 == v23)
      {
        goto LABEL_56;
      }

      v24 = v22 - (v23 + 4);
      if (v22 != v23 + 4)
      {
        memmove(v23, v23 + 4, v22 - (v23 + 4));
      }

      v4[54] = &v23[v24];
      v25 = HALS_ObjectMap::CopyObjectByObjectID(v21);
      v27 = v25;
      if (v25)
      {
        break;
      }

LABEL_55:
      HALS_ObjectMap::ReleaseObject(v27, v26);
      v19 = *(result + 20);
LABEL_56:
      if (++v20 >= v19)
      {
        return;
      }
    }

    v28 = *(v25 + 20);
    if (v28 <= 1701078389)
    {
      if (v28 == 1633773415 || v28 == 1633969526)
      {
        goto LABEL_53;
      }
    }

    else if (v28 == 1701078390 || v28 == 1701733488 || v28 == 1919182198)
    {
      goto LABEL_53;
    }

    v32 = *(v25 + 24);
    if (v28 == v32)
    {
      goto LABEL_54;
    }

    if (v32 <= 1701078389)
    {
      if (v32 != 1633773415 && v32 != 1633969526)
      {
        goto LABEL_54;
      }
    }

    else if (v32 != 1701078390 && v32 != 1919182198 && v32 != 1701733488)
    {
      goto LABEL_54;
    }

LABEL_53:
    *(*(result[4] + 8) + 24) = 1;
    std::vector<unsigned int>::push_back[abi:ne200100]((v4 + 56), &v36);
LABEL_54:
    (**v27)(v27);
    goto LABEL_55;
  }
}

void HALS_AHPManager::CreateObject(HALS_AHPManager *this, HALS_Object *a2, HALS_ObjectMap *a3, HALS_Client *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    HALS_ObjectMap::RetainObject(this, a2);
    v6 = this;
  }

  else
  {
    v6 = HALS_ObjectMap::CopyObjectByObjectID(a3);
  }

  if (a2 > 1701078389)
  {
    if (a2 != 1701078390 && a2 != 1919182198 && a2 != 1701733488)
    {
      goto LABEL_16;
    }
  }

  else if (a2 != 1633773415 && a2 != 1633969526)
  {
    if (a2 == 1634956402)
    {
      v7 = *(v6 + 5);
      if (v7 <= 1701078389)
      {
        if (v7 == 1633773415)
        {
          goto LABEL_25;
        }

        v8 = 1633969526;
      }

      else
      {
        if (v7 == 1701078390 || v7 == 1701733488)
        {
          goto LABEL_25;
        }

        v8 = 1919182198;
      }

      if (v7 == v8)
      {
        goto LABEL_25;
      }

      v11 = *(v6 + 6);
      if (v7 == v11)
      {
        goto LABEL_43;
      }

      if (v11 <= 1701078389)
      {
        if (v11 == 1633773415)
        {
          goto LABEL_25;
        }

        v12 = 1633969526;
      }

      else
      {
        if (v11 == 1701078390 || v11 == 1701733488)
        {
          goto LABEL_25;
        }

        v12 = 1919182198;
      }

      if (v11 != v12)
      {
LABEL_43:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        *buf = 136315394;
        v19 = "HALS_AHPManager.cpp";
        v20 = 1024;
        v21 = 258;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "%25s:%-5d  HALS_AHPManager::CreateObject: a stream needs to be owned by a device";
        goto LABEL_50;
      }

LABEL_25:
      operator new();
    }

LABEL_16:
    if (!HALB_Info::IsSubClass(a2, 1633907820))
    {
      operator new();
    }

    v9 = *(v6 + 5);
    if (v9 <= 1701078389)
    {
      if (v9 == 1633773415)
      {
        goto LABEL_29;
      }

      v10 = 1633969526;
    }

    else
    {
      if (v9 == 1701078390 || v9 == 1701733488)
      {
        goto LABEL_29;
      }

      v10 = 1919182198;
    }

    if (v9 == v10)
    {
      goto LABEL_29;
    }

    v13 = *(v6 + 6);
    if (v9 == v13)
    {
LABEL_48:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      v19 = "HALS_AHPManager.cpp";
      v20 = 1024;
      v21 = 263;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  HALS_AHPManager::CreateObject: a control needs to be owned by a device";
LABEL_50:
      _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
LABEL_51:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    if (v13 <= 1701078389)
    {
      if (v13 == 1633773415)
      {
        goto LABEL_29;
      }

      v14 = 1633969526;
    }

    else
    {
      if (v13 == 1701078390 || v13 == 1701733488)
      {
        goto LABEL_29;
      }

      v14 = 1919182198;
    }

    if (v13 != v14)
    {
      goto LABEL_48;
    }

LABEL_29:
    operator new();
  }

  operator new();
}

void sub_1DE5F26A0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1730](v2, 0x10E1C40337F670ALL);
  HALS_ObjectMap::ReleaseObject(v1, v4);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_AHPManager12CreateObjectEjjP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 400, (a1 + 40));

  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 424, (a1 + 40));
}

void HALS_AHPManager::_CopyDeviceList(uint64_t this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v2 = *(this + 448);
  for (i = *(this + 456); v2 != i; ++v2)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v7 = v5;
    if (v5)
    {
      HALS_ObjectMap::RetainObject(v5, v6);
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8)
      {
        v11 = (v9 - *a2) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a2;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14);
        }

        *(8 * v11) = v7;
        v10 = 8 * v11 + 8;
        v15 = *(a2 + 1) - *a2;
        v16 = (8 * v11 - v15);
        memcpy(v16, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 1) = v10;
        *(a2 + 2) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      *(a2 + 1) = v10;
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }
}

uint64_t HALS_AHPManager::SetPropertyData(uint64_t (***this)(HALS_AHPPlugIn **, uint64_t, const AudioObjectPropertyAddress *, HALS_Client *), uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*this)[13](this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v15 = this[49];

  return HALS_AHPPlugIn::ObjectSetPropertyData(v15, a2, a3, a6, a7, a4, a5);
}

void HALS_AHPManager::GetPropertyData(HALS_AHPPlugIn **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const __CFString **a8, HALS_Client *a9)
{
  if (((*(*this + 12))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v18 = mSelector == 1870098020 || mSelector == 1937007734;
    v19 = 1885956452;
  }

  else
  {
    v18 = mSelector == 1650682995 || mSelector == 1668047219;
    v19 = 1869638759;
  }

  if (v18 || mSelector == v19)
  {

    HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v21 = this[49];

    HALS_AHPPlugIn::ObjectGetPropertyData(v21, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPManager::GetPropertyDataSize(HALS_AHPPlugIn **this, HALS_Client *a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, HALS_Client *a6)
{
  if (((*(*this + 12))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v13 = mSelector == 1870098020 || mSelector == 1937007734;
    v14 = 1885956452;
  }

  else
  {
    v13 = mSelector == 1650682995 || mSelector == 1668047219;
    v14 = 1869638759;
  }

  if (v13 || mSelector == v14)
  {

    return HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  else
  {
    v17 = this[49];

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v17, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPManager::IsPropertySettable(uint64_t (***this)(HALS_AHPPlugIn **), uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*this)[12](this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v8 = mSelector == 1870098020 || mSelector == 1937007734;
    v9 = 1885956452;
  }

  else
  {
    v8 = mSelector == 1650682995 || mSelector == 1668047219;
    v9 = 1869638759;
  }

  if (v8 || mSelector == v9)
  {

    return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v12 = this[49];

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v12, a2, a3);
  }
}

BOOL HALS_AHPManager::HasProperty(HALS_AHPManager *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v6 = mSelector == 1870098020 || mSelector == 1937007734;
    v7 = 1885956452;
  }

  else
  {
    v6 = mSelector == 1650682995 || mSelector == 1668047219;
    v7 = 1869638759;
  }

  if (!v6 && mSelector != v7)
  {
    return (*(**(this + 49) + 184))(*(this + 49), a2) != 0;
  }

  return HALS_DeviceManager::HasProperty(this, a2, a3, a4);
}

uint64_t HALS_AHPManager::GetMIGDispatchQueue(HALS_AHPManager *this)
{
  return *(this + 44);
}

{
  return *(this + 44);
}

uint64_t HALS_AHPManager::_Deactivate(HALS_AHPManager *this)
{
  result = (*(**(this + 49) + 40))(*(this + 49));
  *(this + 2) = 0;
  return result;
}

void HALS_AHPManager::~HALS_AHPManager(HALS_AHPManager *this)
{
  HALS_AHPManager::~HALS_AHPManager(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5981FD0;
  v2 = *(this + 43);
  *(this + 42) = 0;
  *(this + 43) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  v4 = *(this + 56);
  if (v4)
  {
    *(this + 57) = v4;
    operator delete(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    *(this + 54) = v5;
    operator delete(v5);
  }

  v6 = *(this + 50);
  if (v6)
  {
    *(this + 51) = v6;
    operator delete(v6);
  }

  HALS_AHPPlugIn::~HALS_AHPPlugIn((this + 360));
  v7 = *(this + 43);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

uint64_t HALS_AHPManager::Activate(HALS_AHPManager *this, HALS_Object *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  result = (*(**(this + 49) + 168))(*(this + 49), *(this + 4));
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v4 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 80;
      v11 = 1024;
      v12 = v4;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::Initialize: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

void IOContextViewForIOPerformer::update_output_rate_scalar_for_taps(IOContextViewForIOPerformer *this, double a2)
{
  v2 = *(this + 1);
  for (i = *(v2 + 2088); i; i = *i)
  {
    if (*(i + 40) == 1)
    {
      v5 = i[3];
      v6 = *(*(v2 + 24) + 16);
      if (std::__shared_mutex_base::try_lock_shared((v5 + 176)))
      {
        HALS_MultiTap::fetch_writer_state(&v9, v5, v6);
        v7 = v9;
        if (v9)
        {
          os_unfair_lock_lock((v5 + 144));
          v8 = *(v5 + 168);
          os_unfair_lock_unlock((v5 + 144));
          (*(**(v7 + 128) + 32))(*(v7 + 128), a2, v8);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        std::__shared_mutex_base::unlock_shared((v5 + 176));
      }
    }
  }
}

uint64_t IOContextViewForIOPerformer::dsp_is_enabled(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = (a2 & 0x100000000) == 0 || a2 == 1869968496;
  if ((a2 & 0x100000000) == 0 || a2 == 1768845428)
  {
    v5 = *(v2 + 1936) != 0;
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_12:
    v6 = *(v2 + 1976) != 0;
    return v6 | v5;
  }

  v5 = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  v6 = 0;
  return v6 | v5;
}

uint64_t HALS_IOContext_Legacy_Impl::HandleClientTimeout(uint64_t this, int a2)
{
  if (a2)
  {
    if (*(this + 2128))
    {
      return this;
    }

    v2 = 1;
    v3 = 2136;
  }

  else
  {
    if (!*(this + 2128))
    {
      return this;
    }

    v2 = 0;
    v3 = 2144;
  }

  *(this + 2128) = v2;
  *(this + v3) = *(this + 1344);
  return this;
}

void HALS_IOContext_Legacy_Impl::Stop_DeactivateDSP(HALS_IOContext_Legacy_Impl *this)
{
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v2 = *(this + 273);
    if (v2)
    {
      if ((*(**(v2 + 8) + 72))(*(v2 + 8)))
      {
        HALS_DSPHostIntegrationPoint_IOContextPlugin::unlock_processing(*(this + 273));
      }
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN26HALS_IOContext_Legacy_Impl18Stop_DeactivateDSPEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_67_13538;
  v4[4] = this;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void ___ZN26HALS_IOContext_Legacy_Impl18Stop_DeactivateDSPEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = v1 + 312;
  v8 = HALB_Mutex::Lock((v1 + 328));
  v2 = *(v1 + 2176);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 16);
    v6 = *(v5 + 304);
    if (v6)
    {
      std::function<void ()>::operator()(v6, *(v5 + 316));
    }

    v3 += 24;
  }

  HALB_IOThread::Locker::~Locker(&v7);
}

void sub_1DE5F3578(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F3568);
}

BOOL HALS_IOContext_Legacy_Impl::Start_ActivateDSP(HALS_IOContext_Legacy_Impl *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
  if (v2)
  {
    v3 = *(this + 273);
    if (v3)
    {
      v2 = (*(**(v3 + 8) + 72))(*(v3 + 8));
      if ((v2 & 1) == 0)
      {
        HALS_DSPHostIntegrationPoint_IOContextPlugin::lock_processing(*(this + 273));
      }
    }
  }

  v4 = *(this + 247) | *(this + 242);
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(this + 3) + 16);
      HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(&lpsrc, this + 1832);
      if (v37 >= 0)
      {
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = lpsrc;
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6067;
      *&buf[18] = 1024;
      *&buf[20] = v10;
      v40 = 2080;
      *v41 = p_lpsrc;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_IOContext_Legacy_Impl::Start_ActivateDSP [hal_dsp] (Context ID: %d) - HOSTED DSP ENABLED %s", buf, 0x22u);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(lpsrc);
      }
    }

    v12 = *(this + 3);
    v13 = **(v12 + 72);
    v14 = *(v12 + 16);
    v42[0] = 0;
    v42[1] = 0;
    memset(buf, 0, sizeof(buf));
    v40 = 0;
    *&v41[6] = v42;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = v13;
    v47 = v14;
    lpsrc = 0;
    v36 = &lpsrc;
    v37 = 0x2000000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = buf;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke;
    v30[3] = &unk_1E8678198;
    v30[5] = &v31;
    v30[6] = this;
    v30[4] = &lpsrc;
    v15 = (*(*v12 + 64))(v12);
    HALB_CommandGate::ExecuteCommand(v15, v30);
    if (*(v36 + 6))
    {
      v16 = 0;
LABEL_30:
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_2;
      v24[3] = &__block_descriptor_tmp_66_13545;
      v24[4] = this;
      v21 = (*(**(this + 3) + 64))(*(this + 3));
      HALB_CommandGate::ExecuteCommand(v21, v24);
      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&lpsrc, 8);
      HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(buf);
      return v16;
    }

    HALS_MutationChangeSynchronizer::Wait(*buf, *&buf[8]);
    v17 = *(v36 + 6);
    v16 = v17 == 0;
    v18 = (v17 != 0) | *(v32[3] + 25);
    if ((v17 != 0) | *(v32[3] + 25) & 1)
    {
      if ((*(v32[3] + 25) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2000000000;
      v29 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_64;
      v25[3] = &unk_1E86781C0;
      v25[4] = &v26;
      v25[5] = &v31;
      v25[6] = this;
      v19 = (*(**(this + 3) + 64))(*(this + 3));
      HALB_CommandGate::ExecuteCommand(v19, v25);
      v20 = *(v27 + 6);
      _Block_object_dispose(&v26, 8);
      if (v20 != 1685285985)
      {
        goto LABEL_30;
      }
    }

    HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(this, (v18 & 1) == 0);
    goto LABEL_30;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v9 = *v7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6061;
    *&buf[18] = 1024;
    *&buf[20] = v23;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_Legacy_Impl::Start_ActivateDSP [hal_dsp] >>>> (Context ID: %d) - HOSTED DSP IS NOT ENABLED <<<<", buf, 0x18u);
  }

  return 0;
}

void sub_1DE5F3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer((v36 - 192));
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v26 = v2 + 312;
  v27 = HALB_Mutex::Lock((v2 + 328));
  HALS_IOContextHostedDSP::Initialize(*(v2 + 2176), (v2 + 1536), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16));
  v3 = *(v2 + 2176);
  v4 = *(v2 + 1360);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = HALS_IOContextHostedDSP::Negotiate_Internal(v3, (v2 + 1536), v4, v5, 1);
  v7 = v6;
  if (v6 == 1685287013)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextHostedDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1005;
      _os_log_debug_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Attempting to negotiate 'bypass' with hosted DSP.", buf, 0x12u);
    }

    v12 = HALS_IOContextHostedDSP::Negotiate_Internal(v3, (v2 + 1536), v4, v5, 5);
    *buf = 0;
    *&buf[16] = 0u;
    *&buf[8] = &buf[16];
    v30 = 0u;
    *__p = 0u;
    v32 = 0u;
    HALS_MutationChangeSynchronizer::SetItinerary(v5, buf);
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = 1685283449;
    }

    if (__p[1])
    {
      *&v32 = __p[1];
      operator delete(__p[1]);
    }

    v28 = &v30;
    std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v28);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  }

  *(*(a1[4] + 8) + 24) = v7;
  if (!*(*(a1[4] + 8) + 24))
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    v6 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6083;
      _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - Negotiate ok.", buf, 0x12u);
    }
  }

  v17 = *(*(a1[4] + 8) + 24);
  if (v17 == 1685283449)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315651;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6090;
      *&buf[18] = 2081;
      *&buf[20] = "[hal_dsp] Start DSP - Negotiated for BYPASS.";
      _os_log_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", buf, 0x1Cu);
    }

    goto LABEL_39;
  }

  if (v17 == 1685287789)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6086;
      _os_log_debug_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - Negotiate OK, but same as previous request.", buf, 0x12u);
    }

LABEL_39:
    *(*(a1[4] + 8) + 24) = 0;
  }

  HALB_IOThread::Locker::~Locker(&v26);
}

void sub_1DE5F4020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    HALB_IOThread::Locker::~Locker(&a10);
    v16 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v13 + 32) + 8) + 24) = v16[2];
    }

    else
    {
      *(*(*(v13 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5F3F48);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_64(void *a1)
{
  v2 = a1[6];
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  *(*(a1[4] + 8) + 24) = HALS_IOContextHostedDSP::Adapt(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), *(*(a1[5] + 8) + 24));
  HALB_IOThread::Locker::~Locker(&v3);
}

void sub_1DE5F413C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v9 + 32) + 8) + 24) = v12[2];
  }

  else
  {
    *(*(*(v9 + 32) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE5F4128);
}

void HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v3 = *(this + 3);
  v4 = *(this + 272);
  v6 = *v4;
  v5 = v4[1];
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v7 = v6 + 24;
    do
    {
      v8 = *(v7 - 24);
      v9 = v8 == 1768845428;
      v10 = v8 == 1768845428 || v7 == v5;
      v7 += 24;
    }

    while (!v10);
  }

  v11 = **(v3 + 72);
  v12 = *(this + 388);
  v13 = *(v3 + 16);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v14 = HALS_ObjectMap::sNormalPriorityQueue;
  v15 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 32));
  if (v15)
  {
    atomic_store(1u, (HALS_ObjectMap::sNormalPriorityQueue + 33));
  }

  if (*(v14 + 328) != 1)
  {
    operator new();
  }

  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v9;
  v23 = a2;
  v16 = *(v14 + 320);
  v17 = *v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN26HALS_IOContext_Legacy_Impl21NotifyChangesDueToDSPEbE3__0EEvOT__block_invoke;
  v18[3] = &__block_descriptor_tmp_177_13546;
  dispatch_group_async(v16, v17, v18);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = v1 + 312;
  v8 = HALB_Mutex::Lock((v1 + 328));
  v2 = *(v1 + 2176);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 16);
    v6 = *(v5 + 272);
    if (v6)
    {
      std::function<void ()>::operator()(v6, *(v5 + 316));
    }

    v3 += 24;
  }

  HALB_IOThread::Locker::~Locker(&v7);
}

void sub_1DE5F43AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F439CLL);
}

void applesauce::dispatch::v1::async<HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0 &>(dispatch_queue_s *,HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0 &)::{lambda(void *)#1}::__invoke(AMCP::Log::AMCP_Scope_Registry *a1)
{
  HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0::operator()(a1);
  if (a1)
  {

    JUMPOUT(0x1E12C1730);
  }
}

void sub_1DE5F4430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1E12C1730](v1, 0x1000C4099076E91);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0::operator()(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 2);
    if (*(a1 + 13))
    {
      v11 = "config and latency";
    }

    else
    {
      v11 = "config";
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6031;
    v14 = 1024;
    v15 = v10;
    v16 = 2080;
    v17 = v11;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - (%u) Refresh/notify client due to DSP-related %s change.", buf, 0x22u);
  }

  v7 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  if (v7)
  {
    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(buf, 0, v12);
    v9 = HALS_System::CopyDeviceByObjectID(*buf, *(a1 + 1), v7);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
}

void sub_1DE5F45D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::notify_waiting_tap_consumers_that_producer_has_fully_started(uint64_t this)
{
  if ((*(this + 1340) & 1) == 0)
  {
    HALB_Guard::Notify((this + 328));
  }
}

void HALS_IOContext_Legacy_Impl::RemoveTap(int8x8_t *a1, unint64_t *a2)
{
  v16 = a1 + 39;
  v17 = HALB_Mutex::Lock(&a1[41]);
  v4 = a1 + 259;
  v5 = std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::find<HALS_MultiTap *>(&a1[259], *a2);
  if (v5)
  {
    v6 = v5;
    if (a1[167].i8[4] == 1)
    {
      HALS_MultiTap::writer_stop(*(v5 + 3), *(*&a1[3] + 16));
      atomic_store(0, v6 + 42);
      atomic_store(0, v6 + 41);
    }

    v7 = a1[260];
    v8 = *(v6 + 1);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v7)
      {
        v8 %= *&v7;
      }
    }

    else
    {
      v8 &= *&v7 - 1;
    }

    v10 = *(*v4 + 8 * v8);
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != v6);
    if (v11 == &a1[261])
    {
      goto LABEL_21;
    }

    v12 = v11[1];
    if (v9.u32[0] > 1uLL)
    {
      if (*&v12 >= *&v7)
      {
        *&v12 %= *&v7;
      }
    }

    else
    {
      *&v12 &= *&v7 - 1;
    }

    if (*&v12 != v8)
    {
LABEL_21:
      if (!*v6)
      {
        goto LABEL_22;
      }

      v13 = *(*v6 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v8)
      {
LABEL_22:
        *(*v4 + 8 * v8) = 0;
      }
    }

    v14 = *v6;
    if (*v6)
    {
      v15 = *(*&v14 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }
      }

      else
      {
        v15 &= *&v7 - 1;
      }

      if (v15 != v8)
      {
        *(*v4 + 8 * v15) = v11;
        v14 = *v6;
      }
    }

    *v11 = v14;
    *v6 = 0;
    --*&a1[262];
    v18[0] = v6;
    v18[1] = &a1[259];
    v19 = 1;
    memset(v20, 0, sizeof(v20));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>>>>::~unique_ptr[abi:ne200100](v18);
  }

  HALB_IOThread::Locker::~Locker(&v16);
}

void *std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::find<HALS_MultiTap *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void HALS_IOContext_Legacy_Impl::AddTap(uint64_t a1, unint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    HALB_Mutex::Lock((a1 + 328));
    operator new();
  }

  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    buf_4 = "HALS_IOContext_Legacy_Impl.cpp";
    v8 = 1024;
    v9 = 5930;
    v10 = 2080;
    v11 = "tap.get() != nullptr";
    _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Invalid Tap", &buf, 0x1Cu);
  }

  abort();
}

void sub_1DE5F4FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_IOThread::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::StartTapOutput(uint64_t a1, std::vector<char> *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  __p = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v4 = *(a2->__begin_ + 9);
  v5 = *(a2->__begin_ + 20);
  v6 = (v4 & 0x100000000) != 0 && *(a1 + 1552) == v4;
  v29 = 0;
  v39[0] = &__p;
  v39[1] = &v30;
  v39[2] = &v29;
  v41 = BYTE4(v4);
  v40 = v4;
  v42 = v5;
  v43 = v6;
  v38[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl::ActiveTap &)::$_0>;
  v38[1] = v39;
  *__x = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *&__x[8] = v38;
  VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), __x);
  atomic_store(1u, &a2->__end_cap_.__value_ + 2);
  v7 = (__p == v34) | v29;
  LOBYTE(a2->__end_cap_.__value_) = ((__p == v34) | v29 & 1) == 0;
  if ((v7 & 1) == 0)
  {
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 0);
    v9 = (16 * NumberStreams) | 8;
    __x[0] = 0;
    begin = a2[1].__begin_;
    v11 = a2[1].__end_ - begin;
    if (v9 <= v11)
    {
      if (v9 < v11)
      {
        a2[1].__end_ = &begin[v9];
      }
    }

    else
    {
      std::vector<char>::__append(a2 + 1, v9 - v11, __x);
      begin = a2[1].__begin_;
    }

    *begin = NumberStreams;
    v13 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 1552));
    if (v13)
    {
      v14 = (v4 & 0x100000000) == 0 || v6;
      if ((v14 & 1) == 0)
      {
        v15 = HALS_ObjectMap::CopyObjectByObjectID(v4);
        v17 = v15;
        if (v15)
        {
          v18 = *(a1 + 1560);
          if (v18)
          {
            v19 = (*(*v15 + 208))(v15);
            v16 = *(v18 + 96);
            if (v16)
            {
              CFStringCompare(v19, v16, 0);
            }
          }
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
      }

      v20 = a2->__begin_;
      v21 = *(*(a1 + 24) + 16);
      (*(*v13 + 224))(v13);
      memset(v28, 0, sizeof(v28));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v28, v30, v31, 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3));
      std::__shared_mutex_base::lock_shared((v20 + 176));
      HALS_MultiTap::fetch_writer_state(&v36, v20, v21);
      if (!v36)
      {
        operator new();
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      std::__shared_mutex_base::unlock_shared((v20 + 176));
      *buf = v28;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v22);
      }

      v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(*(a1 + 24) + 16);
        *buf = 136315650;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        v45 = 1024;
        v46 = 5716;
        v47 = 1024;
        v48 = v27;
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to start an ActiveTap for context: %u:", buf, 0x18u);
      }
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }

  v39[0] = &v30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v39);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_1DE5F5D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_unfair_lock_s *a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint8_t buf, int a49, int a50, __int16 a51, __int16 a52, __int16 a53, __int16 a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, __int128 a59, uint64_t a60, uint64_t a61)
{
  if (a2)
  {
    std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&a36);
    os_unfair_lock_unlock(a16 + 86);
    if (a33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a33);
    }

    v64 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v73 = *(v64 + 66);
      v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v65 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v64);
      }

      v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        v68 = *v67;
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      else
      {
        v68 = *v67;
      }

      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *(v61 - 224) = 136315906;
        *(&a59 + 4) = "HALS_MultiTap.cpp";
        *(v61 - 212) = 1024;
        *(&a59 + 14) = 604;
        *(v61 - 206) = 1024;
        *(v61 - 204) = a15;
        *(v61 - 200) = 1024;
        *(&a61 + 2) = v73;
        _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to start multi tap for object %u, error %d", (v61 - 224), 0x1Eu);
      }
    }

    else
    {
      v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v69 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v64);
      }

      v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v70)
      {
        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        v72 = *v71;
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }

      else
      {
        v72 = *v71;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *(v61 - 224) = 136315650;
        *(&a59 + 4) = "HALS_MultiTap.cpp";
        *(v61 - 212) = 1024;
        *(&a59 + 14) = 609;
        *(v61 - 206) = 1024;
        *(v61 - 204) = a15;
        _os_log_error_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to start multi tap for object %u", (v61 - 224), 0x18u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5F5B0CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 16);
  if (v7 == v6 || ((v8 = *v6, -1601513229 * ((v6[1] - *v6) >> 3)) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v10 = 0;
  }

  else
  {
    if (!*(v8 + 108) || ((v11 = *(v8 + 112), *(v8 + 120) != v11) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      v11 = v8 + 456;
    }

    v10 = *(*v11 + 388);
  }

  v18 = v2;
  v19 = v3;
  v16[0] = a2;
  v16[1] = v5;
  v17 = v10;
  v15 = v16;
  *&v14 = _ZN5caulk12function_refIFiRN15VisitableVectorI18HALS_IOStreamGroupE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESN_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v14 + 1) = &v15;
  return VisitableVector<HALS_IOStreamGroup>::apply<>(v6, v7, &v14);
}