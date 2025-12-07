uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set the RT safe syscall masks: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  if (*(a2 + 11))
  {
    v4[0] = &unk_1F5982158;
    v4[1] = this;
    HALS_IOPerformer::update_io_parameters(v4, a2, a3, 0, 1);
  }

  return 0;
}

Float64 HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(HALS_IOContext_Legacy_Impl *this)
{
  v6[1] = this;
  v7 = 0;
  v6[0] = &v7;
  v10[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(void)::$_0>;
  v10[1] = v6;
  v8[1] = this + 1536;
  v9 = v10;
  v8[0] = &unk_1F5987768;
  *&v4.mSampleTime = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v4.mHostTime = &v9;
  *&v5.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  v5.mHostTime = &v4;
  VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(this + 202), *(this + 203), &v5, v8);
  if (!v7)
  {
    return 0.0;
  }

  v5.mSampleTime = 0.0;
  memset(&v5.mRateScalar, 0, 48);
  memset(&v4, 0, sizeof(v4));
  v5.mFlags = 2;
  v5.mHostTime = v7;
  v4.mFlags = 1;
  result = 0.0;
  v3 = *(this + 195);
  if (v3)
  {
    if (*(v3 + 88))
    {
      HALS_IOClock::TranslateTime(*(v3 + 368), &v5, &v4);
      return v4.mSampleTime;
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::AnchorTime_Helper(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3 && (v4 = *(*(a1 + 16) + 88)) != 0 && *(v4 + 16) != *(v3 + 16))
  {
    v10 = *(a1 + 8);
    v11 = v10[1];
    *&v16.mSampleTime = *v10;
    *&v16.mRateScalar = v11;
    v12 = v10[3];
    *&v16.mSMPTETime.mSubframes = v10[2];
    *&v16.mSMPTETime.mHours = v12;
    v16.mFlags = 2;
    v13 = (a2 + 440);
    *(a2 + 496) = 7;
    if (*(a2 + 829) != 1 || (*(a2 + 828) & 1) != 0 || ((*(*a2 + 344))(a2) & 1) != 0)
    {
      HALS_IOClock::TranslateTime(*(a2 + 368), &v16, (a2 + 440));
    }

    else
    {
      v14 = *&v16.mRateScalar;
      *v13 = *&v16.mSampleTime;
      *(a2 + 456) = v14;
      v15 = *&v16.mSMPTETime.mHours;
      *(a2 + 472) = *&v16.mSMPTETime.mSubframes;
      *(a2 + 488) = v15;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(a2 + 472) = v5[2];
    *(a2 + 488) = v8;
    *(a2 + 440) = v6;
    *(a2 + 456) = v7;
  }

  *(a2 + 505) = 1;
  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(void)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v8 = *(a6 + 112), *(a6 + 120) != v8) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v8 = (a6 + 456);
  }

  v23 = v6;
  v24 = v7;
  v10 = *v8;
  v11 = *(*v8 + 88);
  if (v11)
  {
    v12 = *a1;
    v13 = (*(*v11 + 872))(v11, *(*(*(*a1 + 8) + 24) + 16), *(a6 + 12), a4, a5);
    if (v13 > 0.0)
    {
      LODWORD(v14) = *(v10 + 392);
      v15 = v13 - v14;
      *&v16 = *(v10 + 400);
      v17 = v15 - *&v16;
      LODWORD(v16) = *(v10 + 416);
      v18 = v17 - v16 - roundf(*(*(v12 + 8) + 1368) * *(*(v12 + 8) + 1360));
      *&v22.mFlags = 0;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      memset(&v22.mHostTime, 0, 48);
      memset(&v21, 0, sizeof(v21));
      v22.mSampleTime = v18;
      v22.mFlags = 1;
      v21.mFlags = 2;
      HALS_IOClock::TranslateTime(*(v10 + 368), &v22, &v21);
      mHostTime = **v12;
      if (mHostTime <= v21.mHostTime)
      {
        mHostTime = v21.mHostTime;
      }

      **v12 = mHostTime;
    }
  }

  return 0;
}

void sub_1DE6083C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6083B4);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_1,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Pinning anchor time to Sample: %0.f", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_1,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_0>(unint64_t ***a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 504) = 1;
  v3 = *(a2 + 88);
  if (v3)
  {
    v5 = (*(*v3 + 336))(v3);
    v6 = (*(*(a2 + 368) + 112) * GetAvailableCatchupSamplesForDevice(v5));
    if (**v2 > v6)
    {
      v6 = **v2;
    }

    **v2 = v6;
  }

  return 0;
}

uint64_t GetAvailableCatchupSamplesForDevice(HALS_IODevice *a1)
{
  v1 = a1;
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = (*(*a1 + 416))(a1);
    v3 = *v1;
    if (v2)
    {
      v1 = (*(v3 + 424))(v1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "HALS_IOContext_Legacy_Impl.cpp";
        v9 = 1024;
        v10 = 5540;
        v11 = 2048;
        v12 = v1;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  \tUsing past data: %lld";
LABEL_7:
        _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 0x1Cu);
      }
    }

    else
    {
      v1 = vcvts_n_f32_u32((*(v3 + 304))(v1), 1uLL);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "HALS_IOContext_Legacy_Impl.cpp";
        v9 = 1024;
        v10 = 5548;
        v11 = 2048;
        v12 = v1;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  Using ring buffer: %lld";
        goto LABEL_7;
      }
    }
  }

  return v1;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateTime_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  result = *(a2 + 88);
  if (result)
  {
    v20 = 0uLL;
    v21 = 0.0;
    (*(*result + 632))(result, this, &v20, &v20.n128_i8[8], &v21);
    v6 = *(a2 + 368);
    *&v23.mSampleTime = v20;
    v23.mRateScalar = v21;
    v7 = HALS_IOClock::Update(v6, &v23, v20);
    if (v7)
    {
      v8 = v7;
      (*(**(a2 + 88) + 648))(*(a2 + 88), this, v7);
      if ((v8 & 6) == 0)
      {
        return 1;
      }

      v10 = HALS_ObjectMap::CopyObjectByObjectID(this);
      if (!v10)
      {
LABEL_7:
        HALS_ObjectMap::ReleaseObject(v10, v9);
        return 1;
      }

      result = *MEMORY[0x1E69E3C08];
      if (*MEMORY[0x1E69E3C08])
      {
        v11 = **(v10 + 26);
        v12 = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v12 + 16) = 0;
        *(v12 + 24) = v8 | (this << 32);
        *v12 = &unk_1F597F6E0;
        *(v12 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v11, v12);
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      v13 = (a2 + 872);
      v14 = *(a2 + 888);
      *&v23.mSampleTime = *(a2 + 872);
      *&v23.mRateScalar = v14;
      v15 = *(a2 + 920);
      *&v23.mSMPTETime.mSubframes = *(a2 + 904);
      *&v23.mSMPTETime.mHours = v15;
      v16 = *(a2 + 368);
      if (*(v16 + 96) && v23.mHostTime)
      {
        v17 = *(v16 + 112) - *(v16 + 40 * *(v16 + 192) + 200);
        if (v17 > 0.0)
        {
          v23.mHostTime = (v17 + v23.mHostTime);
          v22.mHostTime = v23.mHostTime;
          v23.mFlags = 2;
          v22.mFlags = 1;
          HALS_IOClock::TranslateTime(v16, &v23, &v22);
          v18 = *&v22.mRateScalar;
          *v13 = *&v22.mSampleTime;
          *(a2 + 888) = v18;
          v19 = *&v22.mSMPTETime.mHours;
          *(a2 + 904) = *&v22.mSMPTETime.mSubframes;
          *(a2 + 920) = v19;
        }
      }

      else
      {
        *(a2 + 920) = 0;
        *(a2 + 888) = 0u;
        *(a2 + 904) = 0u;
        *v13 = 0u;
        *(a2 + 928) = 3;
      }

      return 0;
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTimeForOverload_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 88);
  if (v4)
  {
    v10 = 0.0;
    v11 = 0;
    v12 = 0;
    (*(*v4 + 632))(v4, this, &v10, &v11, &v12);
    v9 = 0.0;
    HALS_IOClock::GetRaw0Time(*(a2 + 368), &v9, &v8);
    LODWORD(v6) = *(a2 + 856);
    if (v10 > v9 + v6)
    {
      (*(**(a2 + 88) + 648))(*(a2 + 88), this, 4, v10);
    }
  }

  return 0;
}

void ___ZNK26HALS_IOContext_Legacy_Impl28CanHandleOverloadWithCatchupER16CAAudioTimeStamp_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = (*(**(*(v2 + 1560) + 88) + 336))(*(*(v2 + 1560) + 88));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "HALS_IOContext_Legacy_Impl.cpp";
    v8 = 1024;
    v9 = 4238;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Handling overload with catchup mode: ", &v6, 0x12u);
  }

  v4 = **(a1 + 48) - GetAvailableCatchupSamplesForDevice(v3);
  v5 = *(v2 + 1208);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "HALS_IOContext_Legacy_Impl.cpp";
    v8 = 1024;
    v9 = 4245;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \tFound oldest valid sample: %.0f, nextReadSample: %.0f", &v6, 0x26u);
  }

  if (v5 > v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to clear the syscall masks: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,CAAudioTimeStamp const&,CAAudioTimeStamp const&,unsigned int,double,HALS_IOContext_Legacy_Impl::PerformIOReturn)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(uint64_t a1, unsigned int *a2, uint64_t a3, char a4)
{
  v8 = *(*(a1 + 24) + 232);
  v9 = *(v8 + 32);
  v10 = *(v8 + 96);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 2);
  v13 = __udivti3();
  if (v12 >= v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  if (a4)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(a1 + 576);
  v48 = *(a1 + 600);
  v49 = *(a1 + 584);
  if (a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = 1;
  }

  if (a4)
  {
    v18 = (v17 * *a2);
  }

  else
  {
    v18 = 1.0;
  }

  v84[0] = 0;
  pthread_threadid_np(0, v84);
  LOBYTE(v71) = v15;
  v19 = *(a1 + 24);
  DWORD1(v71) = *(v19 + 16);
  DWORD2(v71) = *(a1 + 1344);
  if (*(a1 + 1520))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a1 + 1512) != 0;
  }

  BYTE12(v71) = v20;
  *(&v71 + 13) = 0;
  HIBYTE(v71) = 0;
  *&v72 = v18;
  v21 = *(v19 + 88);
  if (v21)
  {
    v22 = *(a2 + 17);
    v23 = (*(*v21 + 136))(v21, *(a2 + 9) - v22);
    v24 = *(*(a1 + 24) + 88);
    *(&v72 + 1) = v22 + (v23 * 24000000.0);
    v25 = a2 + 36;
    v26 = a2 + 20;
    if (v24)
    {
      v27 = *v25;
      v28 = (v27 + ((*(*v24 + 136))(v24, (*v26 - *v25)) * 24000000.0));
      goto LABEL_24;
    }
  }

  else
  {
    *(&v72 + 1) = 0;
    v25 = a2 + 36;
    v26 = a2 + 20;
  }

  v28 = 0.0;
LABEL_24:
  *&v73 = v28;
  DWORD2(v73) = *a2;
  v29 = *(a2 + 18);
  *&v74 = v84[0];
  *(&v74 + 1) = v29;
  v30 = *(a2 + 10);
  v75 = v30;
  if (*(a1 + 2175) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a1 + 2152), *(a1 + 2160));
    v29 = *v25;
    v30 = *v26;
  }

  else
  {
    v76 = *(a1 + 2152);
  }

  v31 = __udivti3();
  v32 = *(a1 + 1560);
  *&v77 = *(v32 + 848);
  v33 = *(a1 + 24);
  DWORD2(v77) = *(*(v33 + 72) + 4);
  if (v30 >= v29)
  {
    v34 = v31;
  }

  else
  {
    v34 = -v31;
  }

  v35 = *(a2 + 30);
  *&v78 = *(a2 + 29);
  *(&v78 + 1) = v34;
  *&v79 = v35;
  *(&v79 + 1) = v14;
  v36 = *(v32 + 440);
  *&v80 = *(a1 + 1368);
  *(&v80 + 1) = v36;
  v81 = *(a1 + 1352);
  v82 = *(v33 + 216);
  *v83 = v16;
  *&v83[8] = v49;
  *&v83[24] = v48;
  memset(&v83[40], 0, 40);
  v37 = *(v33 + 232);
  v56 = v73;
  v57 = v74;
  v58 = v75;
  v54 = v71;
  v55 = v72;
  v38 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v76;
  }

  v68 = *&v83[32];
  v69 = *&v83[48];
  v70 = *&v83[64];
  v64 = v81;
  v65 = v82;
  v66 = *v83;
  v67 = *&v83[16];
  v60 = v77;
  v61 = v78;
  v62 = v79;
  v63 = v80;
  v50 = *(a2 + 2);
  v51 = *(a2 + 6);
  v52 = *(a2 + 10);
  v53 = *(a2 + 14);
  *(v37 + 1) = 1;
  if (a4)
  {
    *(v37 + 88) = v50;
    *(v37 + 104) = v51;
    *(v37 + 120) = v52;
    *(v37 + 136) = v53;
  }

  v39 = *(v37 + 8);
  *v39 = v54;
  *(v39 + 64) = v58;
  *(v39 + 32) = v56;
  *(v39 + 48) = v57;
  *(v39 + 16) = v55;
  std::string::operator=((v39 + 72), &__p);
  v40 = v60;
  v41 = v62;
  *(v39 + 112) = v61;
  *(v39 + 128) = v41;
  *(v39 + 96) = v40;
  v42 = v63;
  v43 = v64;
  v44 = v66;
  *(v39 + 176) = v65;
  *(v39 + 192) = v44;
  *(v39 + 144) = v42;
  *(v39 + 160) = v43;
  v45 = v67;
  v46 = v68;
  v47 = v70;
  *(v39 + 240) = v69;
  *(v39 + 256) = v47;
  *(v39 + 208) = v45;
  *(v39 + 224) = v46;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      return;
    }

LABEL_39:
    operator delete(v76.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v38 < 0)
  {
    goto LABEL_39;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  v4 = 0;
  v3 = &unk_1F5983F68;
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(void)::$_0>;
  v6[1] = &v4;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(this, a2, v8, &v5, &v3);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    (*(*v2 + 896))(v2);
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IsTimeRunning(uint64_t this, uint64_t a2, int a3)
{
  v7 = HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper;
  v8 = a3;
  v6 = &unk_1F5983F68;
  v10[0] = caulk::function_ref<int ()(HALS_IOEngineInfo const&)>::functor_invoker<std::__bind<int (&)(HALS_IOEngineInfo const&,unsigned int),std::placeholders::__ph<1> const&,unsigned int &>>;
  v10[1] = &v7;
  v9 = &off_1F5983F18;
  v11 = v10;
  v12 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo const&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)#1}>;
  v13 = &v11;
  if (this == a2)
  {
    return 1;
  }

  v4 = this;
  LOBYTE(this) = 0;
  v5 = 0;
  while (1)
  {
    if (this)
    {
      ++v5;
    }

    else
    {
      v5 = 0;
    }

    v15[0] = v4;
    v15[1] = v5;
    if (((v9[2])(&v9, v15) & 1) == 0 && (v6[2](&v6, v15) & 1) == 0)
    {
      v14[0] = v4;
      v14[1] = v5;
      if (v12(&v13, v14))
      {
        break;
      }
    }

    v4 += 8;
    this = 1;
    if (v4 == a2)
    {
      return this;
    }
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateEngineMixing(HALS_IOContext_Legacy_Impl *this)
{
  v2 = 0;
  v5[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateEngineMixing(void)::$_0>;
  v5[1] = &v2;
  v3[1] = this + 1536;
  v4 = v5;
  v3[0] = &unk_1F5987768;
  v6[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v6[1] = &v4;
  v7[0] = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  v7[1] = v6;
  return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(this + 202), *(this + 203), v7, v3);
}

void HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 262))
  {
    for (i = *(this + 261); i; i = *i)
    {
      v4 = atomic_load(i + 42);
      if ((v4 & 1) == 0)
      {
        HALS_IOContext_Legacy_Impl::StartTapOutput(this, i + 1);
      }
    }

    if ((*(this + 1765) & 1) == 0)
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 1065353216;
      v5 = (this + 2088);
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        v6 = *(v5[3] + 512);
        if (v6)
        {
          v7 = *(*(this + 3) + 16);
          do
          {
            v8 = *(v6 + 4);
            v27 = v8;
            if (v8 != v7)
            {
              v9 = HALS_ObjectMap::CopyObjectByObjectID(v8);
              v11 = v9;
              if (v9)
              {
                if ((*(**(v9 + 104) + 464))(*(v9 + 104)))
                {
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v24, v8, &v27);
                }
              }

              HALS_ObjectMap::ReleaseObject(v11, v10);
            }

            v6 = *v6;
          }

          while (v6);
        }
      }

      if (*(this + 262))
      {
        v12 = *(&v25 + 1) == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = 0;
        while ((HALB_IOThread::HasBeenStopped((this + 312)) & 1) == 0)
        {
          kdebug_trace();
          v14 = (this + 2088);
          while (1)
          {
            v14 = *v14;
            if (!v14)
            {
              break;
            }

            v15 = v14[3];
            v28 = 0u;
            v29 = 0u;
            v30 = 1065353216;
            v16 = *(v15 + 512);
            if (v16)
            {
              do
              {
                v27 = *(v16 + 4);
                v17 = v27;
                if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v24, v27))
                {
                  v18 = HALS_ObjectMap::CopyObjectByObjectID(v17);
                  v19 = v18;
                  if (!v18 || ((*(**(v18 + 104) + 160))(*(v18 + 104)) & 1) != 0 || ((*(**(v19 + 13) + 184))(*(v19 + 13)) & 1) != 0)
                  {
                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v28, v17, &v27);
                  }

                  HALS_ObjectMap::ReleaseObject(v19, v20);
                }

                v16 = *v16;
              }

              while (v16);
              for (j = v29; j; j = *j)
              {
                v22 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v24, *(j + 4));
                if (v22)
                {
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&v24, v22);
                }
              }
            }

            std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v28);
          }

          v23 = mach_absolute_time();
          HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(this, v23 + 2400000);
          if (*(this + 262))
          {
            v13 = 1;
            if (*(&v25 + 1))
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_43:
        kdebug_trace();
      }

LABEL_44:
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v24);
    }
  }
}

void sub_1DE60987C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, __int16 a16, __int16 a17, int a18)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  v20 = __cxa_begin_catch(a1);
  v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v21 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v20);
  }

  v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = *v23;
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  else
  {
    v24 = *v23;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = *(*(v18 + 24) + 16);
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 5629;
    a17 = 1024;
    a18 = v25;
    _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception during MaybeWaitForTapReadersToStart() for context: %d:", &buf, 0x18u);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE609844);
}

void HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(HALS_Object **this)
{
  v10 = *MEMORY[0x1E69E9840];
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 16))(platform_behaviors))
  {
    v8 = *"niogbolg";
    v9 = 1735159650;
    HALB_Mutex::Unlock((this + 41));
    v3 = this[3];
    v4 = *(v3 + 20);
    if (!v4)
    {
      v4 = *(v3 + 4);
    }

    HALS_Object::PropertiesChanged_Sync(v3, v4, **(v3 + 9), 2, &v8);
    HALB_Mutex::Lock((this + 41));
  }

  else
  {
    DWORD2(v8) = 0;
    *&v8 = *"enogbolg";
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
    v7 = v5;
    if (v5 && *(v5 + 20) == 1633773415)
    {
      HALS_Object::PropertiesChanged(this[3], *(this + 388), **(this[3] + 9), 1, &v8);
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982B20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982AC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982BA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982B48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned int _CalculateOverloadThresholdSampleAdjustment(double a1, unsigned int result, unsigned int a3)
{
  if (a3 == result)
  {
    v3 = 0.25;
    v4 = 0.125;
    v5 = 0.0625;
    if (a3 >= 0x201)
    {
      v5 = 0.0;
    }

    if (a3 >= 0x101)
    {
      v4 = v5;
    }

    if (a3 >= 0x81)
    {
      v3 = v4;
    }

    v6 = 2.0;
    if (a1 >= 32000.0)
    {
      v6 = 1.0;
      if (a1 >= 64000.0)
      {
        v6 = 0.25;
        if (a1 < 128000.0)
        {
          v6 = 0.5;
        }
      }
    }

    return vcvtmd_u64_f64(v3 * a3 * v6);
  }

  else if (a3 > result)
  {
    return a3;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982C20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5982BC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(HALS_IOContext_Legacy_Impl*,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl*,std::placeholders::__ph<1> const&,unsigned int &>,FilterIfEngineOnlyNeedsReferenceStream>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,unsigned int &>>;
  v6[1] = a3;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a1, a2, v8, &v5, a4);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  v209 = *MEMORY[0x1E69E9840];
  if (HALB_IOThread::HasBeenStopped((a1 + 312)))
  {
    *(v2 + 249) = 1;
    return;
  }

  v4 = *(a1 + 1128);
  if (v4)
  {
    std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(v4, a1);
    std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](a1 + 1104);
  }

  if (*(a1 + 1352) <= (2 * *(a1 + 1360)))
  {
    v5 = v2;
  }

  else
  {
    v5 = (a1 + 1360);
  }

  v6 = *v5;
  v2[54] = *v5;
  v7 = *(a1 + 1560);
  if (v7)
  {
    if (*(v7 + 88))
    {
      v8 = *(v7 + 368);
      if (v8)
      {
        HALS_IOClock::GetCurrentTime(v8, (v2 + 2));
        v6 = v2[54];
      }
    }
  }

  v9 = *v2;
  if (*v2 != v6)
  {
    v10 = *(*(a1 + 24) + 16);
    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_222;
    }

    v14 = *(v11 + 8);
    v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v15 + 16) = 0;
    *(v15 + 20) = 0;
    *(v15 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v15 + 32) = 2123;
    *(v15 + 36) = v10;
    *(v15 + 40) = v9;
    *(v15 + 44) = v6;
    *v15 = &unk_1F5982E78;
    *(v15 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v14, v15);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v16 = v2[54];
    v17 = *v2;
    (*(**(*(a1 + 24) + 104) + 752))(*(*(a1 + 24) + 104));
    kdebug_trace();
    ++*(a1 + 1344);
    kdebug_trace();
    v18 = v17 + v17 - v16;
    *(a1 + 1352) += v18;
    HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(a1, v18);
    v19 = bswap32(v16);
    if (*(*(*(a1 + 24) + 72) + 40))
    {
      v20 = v19;
    }

    else
    {
      v20 = v16;
    }

    *(*(a1 + 1136) + 24) = v20;
    __dmb(0xBu);
    memset(&buf, 0, sizeof(buf));
    buf.mFlags = 3;
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v16, &buf, -1.0);
    HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, &buf);
    v21 = *(*(a1 + 24) + 88);
    if (v21)
    {
      (*(*v21 + 72))(v21);
    }

    v22 = HALS_IOContext_Legacy_Impl::PerformIO(a1, (v2 + 2), v16, v17 - v16, *(a1 + 1424), v2 + 29, 0);
    v23 = *(a1 + 1560);
    if (v23)
    {
      if (*(v23 + 88))
      {
        v24 = *(v23 + 368);
        if (v24)
        {
          HALS_IOClock::GetCurrentTime(v24, (v2 + 2));
        }
      }
    }

    v25 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v16);
    if (v25)
    {
      v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(v26 + 8);
      v29 = __error();
      v30 = strerror(*v29);
      if (!*v13)
      {
        goto LABEL_222;
      }

      v31 = caulk::rt_safe_memory_resource::rt_allocate(*v13);
      *(v31 + 16) = 0;
      *(v31 + 20) = 16;
      *(v31 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v31 + 32) = 1338;
      *(v31 + 36) = v25;
      *(v31 + 40) = v30;
      *v31 = &unk_1F5982968;
      *(v31 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v28, v31);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    v2[55] = v22;
    v32 = *(a1 + 1560);
    v33 = *v2;
    v6 = v2[54];
    if (v6 == *v2)
    {
      v34 = *(v32 + 848);
      v35 = 0.25;
      if (v33 >= 0x81)
      {
        v35 = 0.125;
        if (v33 >= 0x101)
        {
          v35 = 0.0625;
          if (v33 >= 0x201)
          {
            v35 = 0.0;
          }
        }
      }

      v36 = 2.0;
      if (v34 >= 32000.0)
      {
        v36 = 1.0;
        if (v34 >= 64000.0)
        {
          v36 = 0.25;
          if (v34 < 128000.0)
          {
            v36 = 0.5;
          }
        }
      }

      v33 = vcvtmd_u64_f64(v35 * v33 * v36);
    }

    else if (v6 > v33)
    {
      v33 = v2[54];
    }

    v2[50] = v33;
    *v2 = v6;
    if (*(v32 + 88))
    {
      v37 = *(*(v32 + 368) + 112);
    }

    else
    {
      v37 = 544.217687;
    }

    *(v2 + 26) = v37 * v6;
  }

  v38 = *(a1 + 1424);
  v2[56] = v38;
  if ((v38 & 0xFFFFFFFE) == 2)
  {
    v39 = *(a1 + 1560);
    if (!v39)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleTime) = 136315394;
        *(&buf.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 2168;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: no master engine info for catch up mode", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v40 = *(a1 + 1208);
    v41 = *(v2 + 1);
    v42 = *(v39 + 848);
    v175.__r_.__value_.__r.__words[0] = 0;
    *&v176.mSampleTime = &v175;
    v176.mHostTime = v42;
    *&v174.mSampleTime = &unk_1F5987718;
    v174.mHostTime = a1 + 1536;
    v180[0] = &unk_1F5982640;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::GetLargestInputSafetyOffsetInHostSamples(void)::$_0>;
    buf.mHostTime = &v176;
    v43 = *(a1 + 1592);
    v44 = *(a1 + 1600);
    if (*&v43 != v44)
    {
      v45 = 0;
      v46 = 0;
      do
      {
        if (v45)
        {
          ++v46;
        }

        else
        {
          v46 = 0;
        }

        v185.mSampleTime = v43;
        v185.mHostTime = v46;
        if (((*(*&v174.mSampleTime + 16))(&v174, &v185) & 1) == 0 && ((*(v180[0] + 16))(v180, &v185) & 1) == 0)
        {
          *&v181 = v43;
          *(&v181 + 1) = v46;
          if ((*&buf.mSampleTime)(&buf.mHostTime, &v181))
          {
            break;
          }
        }

        *&v43 += 472;
        v45 = 1;
      }

      while (*&v43 != v44);
    }

    v47 = v40 + v6 + v6;
    v48 = v41 - *&v175.__r_.__value_.__l.__data_;
    if (v47 <= v48)
    {
      goto LABEL_85;
    }

    *(a1 + 1424) = 4;
    v49 = *(a1 + 1456);
    if (v49)
    {
      std::function<void ()(IORunningState)>::operator()(v49, 4);
    }

    kdebug_trace();
    v50 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v2[54]);
    if (v50)
    {
      v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = *(v51 + 8);
      v54 = __error();
      v55 = strerror(*v54);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_222;
      }

      v56 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v56 + 16) = 0;
      *(v56 + 20) = 16;
      *(v56 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v56 + 32) = 2188;
      *(v56 + 36) = v50;
      *(v56 + 40) = v55;
      *v56 = &unk_1F5982ED0;
      *(v56 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v53, v56);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }
    }

    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(a1, *v2, (v2 + 18));
    v57 = *(a1 + 1360);
    LODWORD(v174.mSampleTime) = *(*(a1 + 24) + 16);
    HIDWORD(v174.mSampleTime) = v57;
    v179[0] = &off_1F5983F18;
    *&v185.mSampleTime = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
    v185.mHostTime = &v174;
    v180[0] = &off_1F5983F18;
    v175.__r_.__value_.__r.__words[0] = &v185;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    buf.mHostTime = &v175;
    v58 = *(a1 + 1568);
    v59 = *(a1 + 1576);
    if (*&v58 != v59)
    {
      v60 = 0;
      v61 = 0;
      do
      {
        if (v60)
        {
          ++v61;
        }

        else
        {
          v61 = 0;
        }

        *&v181 = v58;
        *(&v181 + 1) = v61;
        if (((*(v180[0] + 16))(v180, &v181) & 1) == 0 && ((*(v179[0] + 16))(v179, &v181) & 1) == 0)
        {
          v176.mSampleTime = v58;
          v176.mHostTime = v61;
          if ((*&buf.mSampleTime)(&buf.mHostTime, &v176))
          {
            break;
          }
        }

        *&v58 += 8;
        v60 = 1;
      }

      while (*&v58 != v59);
    }

    v62 = *(v2 + 9);
    v63 = *(v2 + 10);
    v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v66 = *(v64 + 8);
      v67 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v67 + 16) = 0;
      *(v67 + 20) = 0;
      *(v67 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v67 + 32) = 2203;
      *(v67 + 40) = v47;
      *(v67 + 48) = v48;
      *(v67 + 56) = v62;
      *(v67 + 64) = 0;
      *(v67 + 72) = v63;
      *v67 = &unk_1F5982F28;
      *(v67 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v66, v67);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      v68 = *(*(*(a1 + 24) + 232) + 8);
      if (*(v68 + 13) == 1)
      {
        *(v68 + 13) = 257;
      }

LABEL_85:
      v69 = 0;
      goto LABEL_197;
    }

LABEL_222:
    __break(1u);
    return;
  }

  if (*(a1 + 2128) == 1)
  {
    if (*(a1 + 2136) == *(a1 + 1344))
    {
      HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(a1, v2, 0, 0);
    }
  }

  else
  {
    v70 = *(a1 + 1344);
    v71 = *(a1 + 2144);
    if (v71 && v71 == v70)
    {
      HALS_IOContext_Legacy_Impl::IOWorkLoop_ReportClientTimeout(a1, v2, v70 - *(a1 + 2136), 1);
      *(a1 + 2128) = 0;
      *(a1 + 2136) = 0;
      *(a1 + 2144) = 0;
    }
  }

  v69 = 0;
  v72 = 0;
  memset(&v174, 0, sizeof(v174));
  v174.mFlags = 3;
  v73 = v2[55];
  v74 = v2[50];
  v75 = v74;
  v76 = *v2;
  v77 = (v74 + *v2);
  v171 = *(v2 + 29);
  v163 = *(v2 + 30);
  while (1)
  {
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(a1, v76, (v2 + 18));
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v76, &v174, v75);
    memset(&v176, 0, sizeof(v176));
    v176.mFlags = 3;
    HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, v76, &v176, v77);
    HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, &v176);
    if (v73 != 1)
    {
      break;
    }

    if ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0)
    {
      goto LABEL_100;
    }

    v72 = 1;
    v73 = 1;
LABEL_168:
    v144 = (HALB_IOThread::HasBeenStopped((a1 + 312)) ^ 1) & v72;
    v72 = 1;
    if ((v144 & 1) == 0)
    {
      goto LABEL_195;
    }
  }

  if (v73 == 2)
  {
    goto LABEL_168;
  }

  v78 = *(v2 + 1);
  mSampleTime = v174.mSampleTime;
  v72 = v78 >= v174.mSampleTime;
  if (HALB_IOThread::HasBeenStopped((a1 + 312)))
  {
    goto LABEL_168;
  }

  if (v78 < mSampleTime)
  {
    goto LABEL_194;
  }

LABEL_100:
  v80 = *(a1 + 1560);
  if (v80)
  {
    v81 = *(v80 + 440);
  }

  else
  {
    v81 = 0.0;
  }

  if (*(a1 + 1508) == 1)
  {
    if ((HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(a1, (v2 + 2), &v174.mSampleTime, (v2 + 18), v76, v73, v81) & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_165;
  }

  if (*(a1 + 1520))
  {
    v169 = 0;
  }

  else
  {
    v169 = *(a1 + 1512) != 0;
  }

  v82 = *(a1 + 24);
  v166 = *(v82 + 216);
  v167 = *(v82 + 16);
  v83 = *(v2 + 1);
  v84 = v174.mSampleTime;
  v85 = *(v2 + 18);
  mHostTime = v174.mHostTime;
  v87 = __udivti3();
  v168 = mHostTime;
  if (mHostTime >= v85)
  {
    v88 = v87;
  }

  else
  {
    v88 = -v87;
  }

  v89 = *(a1 + 576);
  v164 = *(a1 + 600);
  v165 = *(a1 + 584);
  v90 = *(a1 + 2176);
  v170 = v88;
  if (!v90)
  {
    v108 = 0;
    v93 = a2;
    goto LABEL_146;
  }

  v92 = *(v90 + 24);
  v91 = *(v90 + 32);
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v93 = a2;
  if (!v92)
  {
    v103 = 0;
    v96 = 0;
    if (!v91)
    {
      goto LABEL_140;
    }

LABEL_139:
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    goto LABEL_140;
  }

  v95 = *v92;
  v94 = v92[1];
  if (*v92 == v94)
  {
    v103 = 0;
    v96 = 0;
    goto LABEL_138;
  }

  v162 = v91;
  v96 = 0;
  do
  {
    v97 = *v95;
    v98 = v95[1];
    if (v98)
    {
      atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v99 = *(v97 + 24);
    v100 = *(v97 + 32);
    v101 = __udivti3();
    if (v100 >= v99)
    {
      v102 = v101;
    }

    else
    {
      v102 = -v101;
    }

    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    v96 += v102;
    v95 += 2;
  }

  while (v95 != v94);
  v103 = 0;
  if (v170 < 1)
  {
    v93 = a2;
    goto LABEL_191;
  }

  v93 = a2;
  v91 = v162;
  if (v96 < 1)
  {
LABEL_138:
    if (!v91)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v185.mSampleTime = 0.0;
  v185.mHostTime = 0;
  *&v181 = 0;
  v103 = v96 >= v170;
  if (v96 < v170)
  {
    if (v96 / v170 <= 0.9)
    {
      goto LABEL_188;
    }

    *&buf.mSampleTime = &unk_1F5985708;
    buf.mHostTime = &v185;
    *&buf.mRateScalar = &v181;
    buf.mWordClockTime = &buf;
    HALB_RealtimeDuration_Collection::enumSubDurations(v92, &buf);
    std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](&buf);
    v145 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v105)
    {
      atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v146 = *(v145 + 8);
    if (*&v185.mSampleTime)
    {
      v147 = (*(**&v185.mSampleTime + 16))(*&v185.mSampleTime);
    }

    else
    {
      v147 = 0;
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_222;
    }

    v149 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v149 + 16) = 0;
    *(v149 + 20) = 2;
    *(v149 + 24) = "HALS_IOContextHostedDSP.cpp";
    *(v149 + 32) = 1582;
    *(v149 + 36) = v147;
    *(v149 + 40) = 90;
    *(v149 + 48) = v170;
    *(v149 + 56) = v96;
    *v149 = &unk_1F59857F0;
    *(v149 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v146, v149);
    if (!v105)
    {
LABEL_188:
      v103 = 0;
      goto LABEL_189;
    }

    goto LABEL_187;
  }

  *&buf.mSampleTime = &unk_1F5985708;
  buf.mHostTime = &v185;
  *&buf.mRateScalar = &v181;
  buf.mWordClockTime = &buf;
  HALB_RealtimeDuration_Collection::enumSubDurations(v92, &buf);
  std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](&buf);
  v104 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v105)
  {
    atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v161 = *(v104 + 8);
  if (*&v185.mSampleTime)
  {
    v106 = (*(**&v185.mSampleTime + 16))(*&v185.mSampleTime);
    if (*&v185.mSampleTime)
    {
      v107 = (*(**&v185.mSampleTime + 24))(*&v185.mSampleTime);
      goto LABEL_181;
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = 0;
LABEL_181:
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_222;
  }

  v148 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v148 + 16) = 0;
  *(v148 + 20) = 16;
  *(v148 + 24) = "HALS_IOContextHostedDSP.cpp";
  *(v148 + 32) = 1569;
  *(v148 + 36) = v106;
  *(v148 + 40) = v107;
  *(v148 + 48) = v170;
  *(v148 + 56) = v96;
  *v148 = &unk_1F5985798;
  *(v148 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v161, v148);
  if (v105)
  {
LABEL_187:
    std::__shared_weak_count::__release_shared[abi:ne200100](v105);
    goto LABEL_189;
  }

  v103 = 1;
LABEL_189:
  if (v185.mHostTime)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v185.mHostTime);
  }

LABEL_191:
  v91 = v162;
  if (v162)
  {
    goto LABEL_139;
  }

LABEL_140:
  if (v171 >= v96)
  {
    v109 = v96;
  }

  else
  {
    v109 = 0;
  }

  v171 -= v109;
  if (v103)
  {
    kdebug_trace();
    v108 = 1;
  }

  else
  {
    v108 = 0;
  }

LABEL_146:
  v110 = *(a1 + 24);
  v111 = *(v110 + 232);
  v112 = *(a1 + 1344);
  if (*(a1 + 2175) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, *(a1 + 2152), *(a1 + 2160));
    v110 = *(a1 + 24);
  }

  else
  {
    v175 = *(a1 + 2152);
  }

  v113 = v93;
  v114 = *(v93 + 18);
  v115 = *(v113 + 10);
  v116 = *(*(a1 + 1560) + 848);
  v117 = *(*(v110 + 72) + 4);
  v118 = *(a1 + 1368);
  v119 = *(a1 + 1352);
  v180[0] = 0;
  pthread_threadid_np(0, v180);
  LOBYTE(buf.mSampleTime) = 0;
  HIDWORD(buf.mSampleTime) = v167;
  LODWORD(buf.mHostTime) = v112;
  BYTE4(buf.mHostTime) = v169;
  *(&buf.mHostTime + 5) = 0;
  HIBYTE(buf.mHostTime) = v108;
  buf.mRateScalar = v83 - v84;
  *&buf.mWordClockTime = v84;
  *&buf.mSMPTETime.mSubframes = v168;
  buf.mSMPTETime.mType = v76;
  *&buf.mSMPTETime.mHours = v180[0];
  *&buf.mFlags = v114;
  mRateScalar = v115;
  v120 = SHIBYTE(v175.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v175.__r_.__value_.__l.__data_, v175.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v175;
  }

  v121 = v118;
  v122 = *(v111 + 32);
  v123 = *(a2 + 2);
  v124 = __udivti3();
  *&v202 = v116;
  DWORD2(v202) = v117;
  *&v203 = v171;
  *(&v203 + 1) = v170;
  if (v123 >= v122)
  {
    v125 = v124;
  }

  else
  {
    v125 = -v124;
  }

  *&v204 = v163;
  *(&v204 + 1) = v125;
  *&v205 = v121;
  *(&v205 + 1) = v81;
  v206 = v119;
  v207 = v166;
  *&v208[0] = v89;
  *(v208 + 8) = v165;
  *(&v208[1] + 8) = v164;
  *(&v208[2] + 8) = 0u;
  *(&v208[3] + 8) = 0u;
  *(&v208[4] + 1) = 0;
  v185 = buf;
  v186 = mRateScalar;
  v126 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __s;
  }

  v196 = v208[2];
  v197 = v208[3];
  v198 = v208[4];
  v192 = v206;
  v193 = v207;
  v194 = v208[0];
  v195 = v208[1];
  v188 = v202;
  v189 = v203;
  v190 = v204;
  v191 = v205;
  v2 = a2;
  v128 = *(a2 + 6);
  v181 = *(a2 + 2);
  v127 = v181;
  v182 = v128;
  v130 = *(a2 + 14);
  v183 = *(a2 + 10);
  v129 = v183;
  v184 = v130;
  *v111 = 1;
  *(v111 + 24) = v127;
  *(v111 + 40) = v128;
  *(v111 + 56) = v129;
  *(v111 + 72) = v130;
  v131 = *(v111 + 8);
  v132 = *&v185.mRateScalar;
  v133 = *&v185.mSMPTETime.mSubframes;
  v134 = *&v185.mSMPTETime.mHours;
  *(v131 + 64) = v186;
  *(v131 + 32) = v133;
  *(v131 + 48) = v134;
  *(v131 + 16) = v132;
  *v131 = *&v185.mSampleTime;
  std::string::operator=((v131 + 72), &__p);
  v135 = v188;
  v136 = v190;
  *(v131 + 112) = v189;
  *(v131 + 128) = v136;
  *(v131 + 96) = v135;
  v137 = v191;
  v138 = v192;
  v139 = v194;
  *(v131 + 176) = v193;
  *(v131 + 192) = v139;
  *(v131 + 144) = v137;
  *(v131 + 160) = v138;
  v140 = v195;
  v141 = v196;
  v142 = v198;
  *(v131 + 240) = v197;
  *(v131 + 256) = v142;
  *(v131 + 208) = v140;
  *(v131 + 224) = v141;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v126 < 0)
    {
      goto LABEL_171;
    }

LABEL_160:
    if (v120 < 0)
    {
LABEL_172:
      operator delete(v175.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v126 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_171:
    operator delete(__s.__r_.__value_.__l.__data_);
    if (v120 < 0)
    {
      goto LABEL_172;
    }
  }

  v143 = HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(a1, (a2 + 2), &v174.mSampleTime, (a2 + 18), v76, v73, v81);
  if (*(a1 + 1424) == 3)
  {
    *(*(*(*(a1 + 24) + 232) + 8) + 13) = 1;
    if ((v143 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_165;
  }

  if (v143)
  {
LABEL_165:
    memset(&v185, 0, 24);
    DWORD2(v181) = v76;
    *&v182 = &v185;
    v179[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTimeAndCheckOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,HALS_IOContext_Legacy_Impl::PerformIOReturn,unsigned int,unsigned int,long long,long long,CAAudioTimeStamp &,CAAudioTimeStamp &)::$_0>;
    v179[1] = &v181;
    v178 = v179;
    v177[0] = &unk_1F5987768;
    v177[1] = a1 + 1536;
    v180[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
    v180[1] = &v178;
    *&v181 = a1;
    *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    buf.mHostTime = v180;
    VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a1 + 1616), *(a1 + 1624), &buf, v177);
    if (v185.mHostTime == *(a1 + 1344))
    {
      *(*(*(*(a1 + 24) + 232) + 8) + 168) = v185.mSampleTime;
    }

    v73 = 0;
    v69 = 1;
    v72 = 1;
    goto LABEL_168;
  }

LABEL_193:
  v69 = 0;
LABEL_194:
  HALB_IOThread::HasBeenStopped((a1 + 312));
LABEL_195:
  v150 = *(v2 + 2);
  if (v150 + 24000000.0 < *(v2 + 10))
  {
    *(v2 + 10) = (*(v2 + 26) + v150);
  }

LABEL_197:
  (*(**(*(a1 + 24) + 104) + 752))(*(*(a1 + 24) + 104));
  kdebug_trace();
  if (v69)
  {
    *(a1 + 1344) = 0;
    v173[0] = 0;
    v173[1] = 0;
    HALS_System::GetInstance(&v181, 0, v173);
    v151 = v181;
    if (v181)
    {
      if (*(v181 + 1880) == 1 && *(*(a1 + 24) + 241) == 1)
      {
        v152 = mach_absolute_time();
        if (*(v151 + 1880) == 1)
        {
          v153 = *(v151 + 1864);
          if (v153)
          {
            v154 = v152;
            std::string::basic_string[abi:ne200100]<0>(&v185, "HAL-Generated Dump");
            v155 = *v153;
            *&buf.mSampleTime = MEMORY[0x1E69E9820];
            buf.mHostTime = 3321888768;
            *&buf.mRateScalar = ___ZN13HALB_Tailspin17DumpTailspinAsyncEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            buf.mWordClockTime = &__block_descriptor_72_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
            *&buf.mSMPTETime.mSubframes = v153;
            *&buf.mSMPTETime.mType = v154;
            if (SHIBYTE(v185.mRateScalar) < 0)
            {
              std::string::__init_copy_ctor_external(&buf.mSMPTETime.mHours, *&v185.mSampleTime, v185.mHostTime);
            }

            else
            {
              *&buf.mSMPTETime.mHours = *&v185.mSampleTime;
              mRateScalar = v185.mRateScalar;
            }

            AMCP::Utility::Dispatch_Queue::async(v155, &buf);
            if (SHIBYTE(mRateScalar) < 0)
            {
              operator delete(*&buf.mSMPTETime.mHours);
            }

            if (SHIBYTE(v185.mRateScalar) < 0)
            {
              operator delete(*&v185.mSampleTime);
            }
          }
        }
      }
    }

    v159 = *(&v181 + 1);
    if (*(&v181 + 1))
    {
LABEL_217:
      std::__shared_weak_count::__release_shared[abi:ne200100](v159);
    }
  }

  else
  {
    v156 = *(a1 + 24);
    v157 = *(v156 + 88);
    v158 = *(v156 + 96);
    if (v158)
    {
      atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v157)
    {
      (*(*v157 + 64))(v157, *(a1 + 1496));
    }

    if (v158)
    {
      v159 = v158;
      goto LABEL_217;
    }
  }
}

void sub_1DE60B480(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1B8)
{
  if (a2)
  {
    if (a66 < 0)
    {
      operator delete(__p);
    }

    if (a60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a60);
    }

    __cxa_begin_catch(a1);
    v68 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v70 = *(v68 + 8);
    LOBYTE(a52) = 16;
    HasBeenStopped = HALB_IOThread::HasBeenStopped((v66 + 312));
    v72 = 2233;
    if (HasBeenStopped)
    {
      v72 = 0x1000008B9;
    }

    v73 = v72 | (*(a28 + 249) << 40);
    *&a31 = "HALS_IOContext_Legacy_Impl.cpp";
    *(&a31 + 1) = v73;
    caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>(v70, &a52, &a31);
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    *(a28 + 249) = 1;
    __cxa_end_catch();
    JUMPOUT(0x1DE60B37CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE60B680()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE60B538);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982CA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5982C48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982D20;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982CC8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982DA0;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982D48;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
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
    v9 = 136315650;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Completed HALS_IOContext_Legacy_Impl::IOWorkLoopInit - %d", &v9, 0x18u);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An Exception was thrown during Init - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_5,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set the RT safe syscall masks: %d - %s", &v10, 0x22u);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5982FD8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5982F80;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An Exception was thrown during SyncTimeline - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,double,double,double,long long,unsigned long long>>::perform(uint64_t a1)
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
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Switching to realtime - end of next buffer: %0.f  last valid: %0.f  wakeTime: %0.f  next buffer host: %lld  wake host: %llu", &v14, 0x44u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,double,double,double,long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 504) = 0;
  (*(**(a2 + 88) + 408))(*(a2 + 88), *v2, a2);
  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to update realtime priority parameters with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::GetLargestInputSafetyOffsetInHostSamples(void)::$_0>(double ***a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  if (*(*v3 + 88))
  {
    v6 = *(*a1 + 1);
    v7 = *(v5 + 848) / v6;
    LODWORD(v6) = *(v5 + 396);
    v8 = v7 * *&v6;
    v9 = **a1;
    if (*v9 >= v8)
    {
      v8 = *v9;
    }

    *v9 = v8;
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,unsigned int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
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
    v10 = *(a1 + 44);
    v12 = 136316162;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d ioc (%u) - handle buffer frame size change, old %u new %u", &v12, 0x24u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,unsigned int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_BeginIO(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  if (!*(a2 + 11))
  {
    return 0;
  }

  v10[0] = &unk_1F5982158;
  v10[1] = this;
  HALS_IOPerformer::update_io_parameters(v10, a2, a3, 0, 1);
  v5 = *(a2 + 11);
  v6 = *(*(this + 3) + 16);
  HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(&cf, this + 1536, 0);
  v7 = (*(*v5 + 728))(v5, v6, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_1DE60C80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to change thread to realtime priority with code: %d - %s", &v10, 0x22u);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WaitForClientToBeginTransport failed - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d During init we were told to stop - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateEngineMixing(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v6 = *(a6 + 112), *(a6 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v6 = (a6 + 456);
  }

  v8 = *v6;
  v9 = *(v8 + 88);
  if (v9 && *(v8 + 832) == 1)
  {
    (*(*v9 + 720))(v9, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d During init we were told to exit - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo const&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ConstItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

BOOL HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper(HALS_IOContext_Legacy_Impl *this, const HALS_IOEngineInfo *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(this + 11))
  {
    return 0;
  }

  v3 = *(*(this + 46) + 96);
  result = v3 == 0;
  if (a2 == 1 && !v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "HALS_IOContext_Legacy_Impl.cpp";
      v7 = 1024;
      v8 = 3603;
      v9 = 2082;
      v10 = this + 112;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IsTimeRunning_Helper: Device %{public}s is not running.", &v5, 0x1Cu);
    }

    return 1;
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTime_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = *(a2 + 368);
    v5 = *(a2 + 848);
    v6 = *(a2 + 856);
    v7 = *(a2 + 860);
    v8 = *(a2 + 864);
    v9 = (*(*v3 + 392))(v3);
    HALS_IOClock::Reset(v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_ResetOverloadTimeOnEngines(void)::$_0>(uint64_t a1, uint64_t a2)
{
  *(a2 + 904) = 0u;
  *(a2 + 920) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 888) = 0u;
  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::RegisterIOThread(void)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 0;
  }

  v4 = *a1;
  if ((*(*v2 + 336))(*(a2 + 88)))
  {
    v6 = *((*(*v2 + 336))(v2) + 44);
  }

  else
  {
    v6 = 0;
  }

  v5.n128_u64[0] = *(a2 + 848);
  v9 = *v4;
  v8 = v4[1];
  v10 = **(v4 + 1);
  v11 = *(*v2 + 656);

  return v11(v2, v6, v8, v9, v10, v5);
}

float HALS_IOContext_Legacy_Impl::GetScalarVolume(HALS_IOContext_Legacy_Impl *this)
{
  if (!this)
  {
    return 1.0;
  }

  v1 = *(this + 11);
  if (!v1)
  {
    return 1.0;
  }

  v2 = (*(*v1 + 336))(v1);
  if (!v2)
  {
    return 1.0;
  }

  v3 = *(*v2 + 256);

  v3();
  return result;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartHardware(void)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  std::chrono::steady_clock::now();
  started = HALS_IOContext_Legacy_Impl::StartHardware_Helper(v4, a2, v5);
  std::chrono::steady_clock::now();
  if (*(a2 + 944))
  {
    v7 = v3[2];
    (*(**(a2 + 88) + 336))(*(a2 + 88));
    v8 = *(a2 + 944);
    v9 = v7[1];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = *(a2 + 944);
        if (*&v9 <= v8)
        {
          v11 = v8 % v9.i32[0];
        }
      }

      else
      {
        v11 = (v9.i32[0] - 1) & v8;
      }

      v12 = *(*v7 + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            if (*(i + 4) == v8)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v9)
              {
                v14 %= *&v9;
              }
            }

            else
            {
              v14 &= *&v9 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_20:
  v15 = *(a2 + 88);
  if (v15 && (*(*v15 + 336))(v15))
  {
    v16 = (*(**(a2 + 88) + 336))(*(a2 + 88));
    v17 = *(v16 + 16);
    v26 = *(v16 + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](*v3, &v26);
    v18 = v3[1];
    v19 = v18[1];
    if (v19)
    {
      v20 = vcnt_s8(v19);
      v20.i16[0] = vaddlv_u8(v20);
      if (v20.u32[0] > 1uLL)
      {
        v21 = v17;
        if (*&v19 <= v17)
        {
          v21 = v17 % v19.i32[0];
        }
      }

      else
      {
        v21 = (v19.i32[0] - 1) & v17;
      }

      v22 = *(*v18 + 8 * v21);
      if (v22)
      {
        for (j = *v22; j; j = *j)
        {
          v24 = j[1];
          if (v24 == v17)
          {
            if (*(j + 4) == v17)
            {
              return started;
            }
          }

          else
          {
            if (v20.u32[0] > 1uLL)
            {
              if (v24 >= *&v19)
              {
                v24 %= *&v19;
              }
            }

            else
            {
              v24 &= *&v19 - 1;
            }

            if (v24 != v21)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return started;
}

uint64_t HALS_IOContext_Legacy_Impl::get_devices_that_are_not_reference_stream_only(HALS_IOContext_Legacy_Impl *this, uint64_t a2, uint64_t a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5[0] = HALS_IOContext_Legacy_Impl::CountActiveHardware_Helper;
  v5[1] = this;
  v4 = &unk_1F5983F68;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOEngineInfo &,std::vector<unsigned int> &,std::vector<unsigned int> &),std::placeholders::__ph<1> const&,std::reference_wrapper<std::vector<unsigned int>>,std::reference_wrapper<std::vector<unsigned int>>>>;
  v7[1] = v5;
  v5[2] = this + 24;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a2, a3, v9, &v6, &v4);
}

uint64_t HALS_IOContext_Legacy_Impl::CountActiveHardware_Helper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = *(a1 + 88);
  if (result)
  {
    v7 = (*(*result + 336))(result);
    if (v7)
    {
      v9[0] = *(v7 + 16);
      if (v9[0])
      {
        v8 = (*(**(a1 + 88) + 416))(*(a1 + 88), 1);
        if ((*(**(a1 + 88) + 416))(*(a1 + 88), 0))
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a3, v9);
        }

        if (v8)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, v9);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1DE60DAD0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 3587;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::CountActiveHardware_Helper: Caught exception trying to collect engine info.", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE60DAA0);
  }

  _Unwind_Resume(a1);
}

uint64_t VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (result != a2)
  {
    v13[8] = v4;
    v13[9] = v5;
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      result = (*(*a4 + 16))(a4, v13);
      if ((result & 1) == 0)
      {
        v12[0] = v9;
        v12[1] = v11;
        result = (*a3)((a3 + 1), v12);
        if (result)
        {
          break;
        }
      }

      v9 += 472;
      v10 = 1;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::SetupForIsolatedIO(void)::$_0>(unsigned int **a1, unsigned int *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  v6 = *(*v3 + 88);
  if (v6 && *(v5 + 831) == 1 && *(v2 + 380) == 1)
  {
    (*(*v6 + 784))(v6, a2[2], **a1, *(v2 + 376));
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Completed HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::TeardownForIsolatedIO(void)::$_0>(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (!*(*a2 + 108) || ((v3 = *(v2 + 112), *(v2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (v2 + 456);
  }

  v5 = *v3;
  v6 = *(v5 + 88);
  if (v6 && *(v5 + 831) == 1 && *(v2 + 380) == 1)
  {
    (*(*v6 + 792))(v6, a2[2], *(v2 + 376));
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(a2 + 88);
  if (v5 && (*(*v5 + 336))(v5))
  {
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = (*(**(a2 + 88) + 336))(*(a2 + 88));
    if (v6 != v7)
    {
      while (*v6 != *(v8 + 16))
      {
        if (++v6 == v7)
        {
          v6 = v7;
          break;
        }
      }
    }

    if (v6 == *(v3 + 8))
    {
      return 0;
    }
  }

  if ((v4 - 1) < 3)
  {
    if (*(a2 + 832) != 1)
    {
      return 0;
    }

    if (*(a2 + 844) == 1)
    {
      if (*(a2 + 845) == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 != 3)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((v4 - 4) >= 2)
  {
    if (v4 != 6 || (*(a2 + 831) & 1) != 0 || (*(a2 + 832) & 1) != 0)
    {
      return 0;
    }

LABEL_23:
    HALS_IOContext_Legacy_Impl::StopHardware_Helper(*(v3 + 24), a2);
    return 0;
  }

  if (*(a2 + 831) == 1 && (*(a2 + 832) & 1) == 0)
  {
    if (*(a2 + 844) == 1)
    {
      if (v4 != 4)
      {
        return 0;
      }
    }

    else if (v4 != 5)
    {
      return 0;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UnregisterIOThread(void)::$_0>(unsigned int **a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  if ((*(*v2 + 336))(*(a2 + 88)))
  {
    v4 = *((*(*v2 + 336))(v2) + 44);
  }

  else
  {
    v4 = 0;
  }

  v6 = *v3;
  v7 = *(*v2 + 664);

  return v7(v2, v4, v6);
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_EndIO(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 11);
  if (v4)
  {
    v5 = *(*(this + 3) + 16);
    HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(&cf, this + 1536, 1);
    v4 = (*(*v4 + 736))(v4, v5, a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  *(a2 + 505) = 0;
  return v4;
}

void sub_1DE60E1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v9 = *(a6 + 112), *(a6 + 120) != v9) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v9 = (a6 + 456);
  }

  v11 = *v9;
  if (!*(*v9 + 88) || *(v11 + 832) != 1)
  {
    return 0;
  }

  v20 = v6;
  v21 = v7;
  v12 = *(*(**a1 + 24) + 16);
  v13 = *(a6 + 24);
  v14 = *(v11 + 752);
  v16 = *(a6 + 16);
  v17 = 0;
  v18 = v13;
  v19 = v14;
  return (*(*v11 + 96))(v11, v12, *(a6 + 12));
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to clear the syscall masks: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5983058;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5983000;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d An exception was thrown while trying to sleep - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to update realtime priority parameters with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO: Re-anchoring IO timeline. Forced re-anchor", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::ResetTimeline_Helper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOEngineInfo *a3)
{
  v4 = *(a2 + 88);
  if (v4)
  {
    (*(*v4 + 648))(v4, this, 8);
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Exitted PerformIO early - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopPerformIO(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v186 = *MEMORY[0x1E69E9840];
  if ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0 && *(a2 + 249) != 1)
  {
    if (a2[62])
    {
      goto LABEL_95;
    }

    v18 = *(a1 + 24);
    v161 = *(v18 + 160);
    v19 = *(v18 + 16);
    v20 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 1552));
    v21 = *(a1 + 1560);
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v20 && v21)
    {
      if (!v22)
      {
        goto LABEL_20;
      }

      v23 = (*(*v20 + 224))(v20);
      *buf = 136316162;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1720;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      *&buf[24] = 2082;
      *&buf[26] = v21 + 112;
      *&buf[34] = 2082;
      *&buf[36] = v23;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopInit: %u %{public}s (%{public}s): starting";
      v26 = 44;
    }

    else
    {
      if (!v22)
      {
        goto LABEL_20;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1724;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopInit: %u: starting";
      v26 = 24;
    }

    _os_log_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
LABEL_20:
    (*(**(a1 + 24) + 208))(*(a1 + 24));
    kdebug_trace();
    v27 = *(a1 + 16);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*(*(a1 + 24) + 72) + 44) & 1) == 0)
    {
      HALS_IOContext_Legacy_Impl::TakePowerAssertions(a1);
    }

    v163[0] = 0;
    v163[1] = 0;
    HALS_System::GetInstance(buf, 0, v163);
    HALS_System::SetIOContextIsRunning(*buf, v19, 1);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v162 = a4;
    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    HALS_ObjectMap::ReleaseObject(v20, v28);
    *(a1 + 1341) = 0;
    LODWORD(v164) = *(a1 + 40);
    *&v172 = &unk_1F5987718;
    *(&v172 + 1) = a1 + 1536;
    *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::SetupForIsolatedIO(void)::$_0>;
    *&buf[8] = &v164;
    VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(*(a1 + 1592), *(a1 + 1600), buf, &v172);
    if (!*(a1 + 1136))
    {
      kdebug_trace();
      v31 = *(*(a1 + 24) + 200);
      *v31 = mach_absolute_time();
      *(v31 + 8) = 1;
      std::chrono::steady_clock::now();
      memset(v169, 0, 32);
      HALS_IOContext_Legacy_Impl::AssessIOBufferSize(a1, v169);
      HALS_IOContextDescription::CalculateEngineSynchOffsets((a1 + 1536));
      v32 = *(a1 + 1560);
      *buf = &unk_1F5973788;
      *&buf[8] = v32;
      *&buf[16] = vrev64_s32(*(a1 + 2024));
      v170[0] = buf;
      *&v172 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_0>;
      *(&v172 + 1) = v170;
      v33 = VisitableVector<HALS_IOStreamInfo>::apply<>(*(a1 + 1592), *(a1 + 1600), &v172);
      if (!v33)
      {
        v168[0] = buf;
        *&v164 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_1>;
        *(&v164 + 1) = v168;
        *&v172 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
        *(&v172 + 1) = &v164;
        v33 = VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), &v172);
        if (!v33)
        {
          HALS_IOContext_Legacy_Impl::StartTapOutput(a1, v34);
          v160 = *(*(*(a1 + 24) + 72) + 48);
          HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((a1 + 1536));
          v36 = v35;
          v37 = *(a1 + 1560);
          v38 = *(a1 + 1792);
          v38[2] = v38[1];
          v38[5] = v38[4];
          LODWORD(v164) = v35;
          *(&v164 + 1) = v37;
          v39 = *(a1 + 1776);
          *&v172 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_input_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>;
          *(&v172 + 1) = &v164;
          v33 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v39, v39[1], &v172);
          if (!v33)
          {
            v40 = *(a1 + 1784);
            *&v172 = &unk_1F596E6B8;
            *(&v172 + 1) = v36;
            v173 = v37;
            v174 = &v172;
            v170[0] = &v172;
            *&v164 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
            *(&v164 + 1) = v170;
            v33 = VisitableVector<HALS_IOStackDescription>::apply<>(*v40, v40[1], &v164);
            std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v172);
            if (!v33)
            {
              *&v164 = *(a1 + 1792);
              v41 = *(a1 + 1776);
              *&v172 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_shared_input_buffer_size(void)::$_0>;
              *(&v172 + 1) = &v164;
              v33 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v41, v41[1], &v172);
              if (!v33)
              {
                v42 = *(a1 + 1792);
                v43 = *(a1 + 1784);
                *&v172 = &unk_1F596E748;
                *(&v172 + 1) = v42;
                v174 = &v172;
                v170[0] = &v172;
                *&v164 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
                *(&v164 + 1) = v170;
                v33 = VisitableVector<HALS_IOStackDescription>::apply<>(*v43, v43[1], &v164);
                std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v172);
                if (!v33)
                {
                  HALS_BufferFactory::allocate_shared_buffer(*(a1 + 1792), v160);
                }
              }
            }
          }
        }
      }

      if (v169[0])
      {
        operator delete(v169[0]);
      }

      kdebug_trace();
      Interval::PostEnd(*(*(a1 + 24) + 200));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1765;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: failed to start the hardware", buf, 0x12u);
      }

      *(a1 + 1096) = v33;
      *(a2 + 249) = 1;
      *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
      HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
      goto LABEL_86;
    }

    v29 = *(*(a1 + 24) + 16);
    *buf = HALS_IOThread::CopyWorkgroupIntervalPort((a1 + 312));
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    memset(&buf[16], 0, 64);
    LODWORD(v169[0]) = *(a1 + 1360);
    HIDWORD(v169[0]) = v29;
    v169[1] = buf;
    v166 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::RegisterIOThread(void)::$_0>;
    v167 = v169;
    v171 = &off_1F5983F18;
    v165[0] = &v166;
    v168[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v168[1] = v165;
    v30 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), v168, &v171);
    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    if (v30)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1776;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: failed to register io thread", buf, 0x12u);
      }

      *(a1 + 1096) = v30;
      *(a2 + 249) = 1;
      *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
      HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
      goto LABEL_86;
    }

    v44 = *(a1 + 1568);
    v45 = *(a1 + 1576);
    while (v44 != v45)
    {
      v46 = *(*v44 + 88);
      if (v46)
      {
        *(*v44 + 831) = (*(*v46 + 424))(v46, 1, *(a1 + 2028)) != 0;
      }

      v44 += 8;
    }

    kdebug_trace();
    LOBYTE(v171) = 0;
    v165[0] = &unk_1F5983F68;
    v168[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_ResetOverloadTimeOnEngines(void)::$_0>;
    v168[1] = &v171;
    v169[0] = &off_1F5983F18;
    v166 = v168;
    *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&buf[8] = &v166;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, v169, v165);
    v47 = *(*(a1 + 24) + 16);
    v166 = HALS_IOContext_Legacy_Impl::ResetTime_Helper;
    LODWORD(v167) = v47;
    v171 = &unk_1F5983FE8;
    v168[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    v168[1] = &v166;
    v165[0] = &off_1F5983F18;
    v169[0] = v168;
    *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&buf[8] = v169;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, v165, &v171);
    HALS_IOContext_Legacy_Impl::UpdateTime(a1);
    v48 = 0;
    v49 = v161 / 0x9C4;
    while ((HALB_IOThread::HasBeenStopped((a1 + 312)) & 1) == 0)
    {
      IsTimeRunning = HALS_IOContext_Legacy_Impl::IsTimeRunning(*(a1 + 1568), *(a1 + 1576), 0);
      v51 = v48 >= v49 ? 1 : IsTimeRunning;
      if (v51)
      {
        break;
      }

      HALB_Mutex::Unlock((a1 + 328));
      usleep(0x9C4u);
      HALB_Mutex::Lock((a1 + 328));
      if (*(a1 + 304) == 1)
      {
        *(a2 + 249) = 1;
        goto LABEL_86;
      }

      HALS_IOContext_Legacy_Impl::UpdateTime(a1);
      ++v48;
    }

    kdebug_trace();
    if (HALB_IOThread::HasBeenStopped((a1 + 312)))
    {
      v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = *(v52 + 8);
      HasBeenStopped = HALB_IOThread::HasBeenStopped((a1 + 312));
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_186;
      }

      v13 = HasBeenStopped == 0;
      v56 = 1821;
      if (!v13)
      {
        v56 = 0x10000071DLL;
      }

      v57 = v56 | (*(a2 + 249) << 40);
      v58 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v58 + 16) = 0;
      *(v58 + 20) = 0;
      *(v58 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v58 + 32) = v57;
      *v58 = &unk_1F5982A70;
      *(v58 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v54, v58);
      if (v53)
      {
LABEL_65:
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if (*(a1 + 1560))
    {
      if (v48 >= v49)
      {
        HALS_IOContext_Legacy_Impl::IsTimeRunning(*(a1 + 1568), *(a1 + 1576), 1);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v72 = *(*(a1 + 24) + 16);
          *buf = 136316162;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1840;
          *&buf[18] = 2048;
          *&buf[20] = v161;
          *&buf[28] = 1024;
          *&buf[30] = v72;
          *&buf[34] = 2080;
          *&buf[36] = a1 + 500;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: could not establish a timeline after waiting %lu microseconds for context %d %s\n", buf, 0x2Cu);
        }

        *(a1 + 1096) = 1937010544;
        *(a2 + 249) = 1;
        *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
        HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
        goto LABEL_86;
      }

      v59 = *(a1 + 1136);
      if (v59)
      {
        v59[17] = 0u;
        v59[18] = 0u;
        v59[15] = 0u;
        v59[16] = 0u;
        v59[13] = 0u;
        v59[14] = 0u;
        v59[11] = 0u;
        v59[12] = 0u;
        v59[9] = 0u;
        v59[10] = 0u;
        v59[7] = 0u;
        v59[8] = 0u;
        v59[5] = 0u;
        v59[6] = 0u;
        v59[3] = 0u;
        v59[4] = 0u;
        v59[1] = 0u;
        v59[2] = 0u;
        *v59 = 0u;
        v60 = *(*(*(a1 + 24) + 72) + 40);
        v61 = *(*(a1 + 1560) + 368);
        v62 = v61 + 200;
        v63 = *(v61 + 200 + 40 * *(v61 + 192)) * 24000000.0 / 24000000.0;
        v64 = COERCE_DOUBLE(bswap64(*&v63));
        if (*(*(*(a1 + 24) + 72) + 40))
        {
          v63 = v64;
        }

        v65 = *(a1 + 1136);
        *v65 = v63;
        v66 = *(v62 + 40 * *(v61 + 192) + 8) * 24000000.0 / 24000000.0;
        v67 = COERCE_DOUBLE(bswap64(*&v66));
        if (v60)
        {
          v66 = v67;
        }

        *(v65 + 8) = v66;
        v68 = v62 + 40 * *(v61 + 192);
        if (v60)
        {
          v69 = bswap64(*(v68 + 16));
          v70 = bswap32(*a2);
          v71 = 50331648;
        }

        else
        {
          v69 = *(v68 + 16);
          v70 = *a2;
          v71 = 3;
        }

        *(v65 + 16) = v69;
        *(v65 + 24) = v70;
        *(v65 + 152) = v71;
        *(v65 + 216) = v71;
        *(v65 + 280) = v71;
        __dmb(0xBu);
        *(a1 + 1340) = 1;
        HALS_IOContext_Legacy_Impl::UpdateEngineMixing(a1);
        HALS_IOContext_Legacy_Impl::StartTapOutput(a1, v110);
        HALB_IOThread::PostStateChange((a1 + 312), 1735354734);
        HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(a1);
        if (HALB_IOThread::HasBeenStopped((a1 + 312)))
        {
          v111 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v112 = *(v111 + 8);
          LOBYTE(v168[0]) = 0;
          v113 = HALB_IOThread::HasBeenStopped((a1 + 312));
          v114 = 0x10000075ELL;
          if (!v113)
          {
            v114 = 1886;
          }

          v115 = v114 | (*(a2 + 249) << 40);
          *buf = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[8] = v115;
          caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>(v112, v168, buf);
          if (!v53)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (*(a1 + 1560))
        {
          if ((HALS_IOContext::WaitForClientToBeginTransport(*(a1 + 24)) & 1) == 0)
          {
            v120 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v121 = *(v120 + 8);
            LOBYTE(v168[0]) = 16;
            v122 = HALB_IOThread::HasBeenStopped((a1 + 312));
            v123 = 0x10000076ELL;
            if (!v122)
            {
              v123 = 1902;
            }

            v124 = v123 | (*(a2 + 249) << 40);
            *buf = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[8] = v124;
            caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>(v121, v168, buf);
            if (!v53)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          if (*(a1 + 1560))
          {
            HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
            v116 = *(a1 + 1560);
            v117 = *a2;
            a2[50] = _CalculateOverloadThresholdSampleAdjustment(*(v116 + 848), *a2, a2[54]);
            if (*(v116 + 88))
            {
              v118 = *(*(v116 + 368) + 112);
            }

            else
            {
              v118 = 544.217687;
            }

            *(a2 + 26) = v118 * v117;
            v125 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(a1, v117);
            if (v125)
            {
              v154 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v155 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v155)
              {
                atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v156 = *(v154 + 8);
              LOBYTE(v168[0]) = 16;
              v157 = __error();
              v158 = strerror(*v157);
              *buf = "HALS_IOContext_Legacy_Impl.cpp";
              *&buf[8] = 1929;
              *&buf[12] = v125;
              *&buf[16] = v158;
              caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_3,std::tuple<char const*,int,int,char *>>(v156, v168, buf);
              if (v155)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v155);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = off_1F5991DD8;
              exception[2] = 1852797029;
            }

            __dmb(0xBu);
            *(a1 + 1344) = 0;
            *(a1 + 1352) = 0;
            HALS_IOContext_Legacy_Impl::AnchorTime(a1);
            v126 = *(a1 + 24);
            v127 = *(*(v126 + 72) + 40);
            v128 = *(*(a1 + 1560) + 368);
            v129 = v128 + 200;
            v130 = *(v128 + 200 + 40 * *(v128 + 192)) * 24000000.0 / 24000000.0;
            v131 = COERCE_DOUBLE(bswap64(*&v130));
            if (*(*(v126 + 72) + 40))
            {
              v130 = v131;
            }

            v132 = *(a1 + 1136);
            *v132 = v130;
            v133 = *(v129 + 40 * *(v128 + 192) + 8) * 24000000.0 / 24000000.0;
            v134 = COERCE_DOUBLE(bswap64(*&v133));
            if (v127)
            {
              v133 = v134;
            }

            *(v132 + 8) = v133;
            v135 = v129 + 40 * *(v128 + 192);
            if (v127)
            {
              v136 = bswap64(*(v135 + 16));
              v137 = bswap64(*(v129 + 40 * *(v128 + 192) + 24));
              v138 = bswap64(*(v129 + 40 * *(v128 + 192) + 32));
              v139 = 50331648;
            }

            else
            {
              v136 = *(v135 + 16);
              v137 = *(v129 + 40 * *(v128 + 192) + 24);
              v138 = *(v129 + 40 * *(v128 + 192) + 32);
              v139 = 3;
            }

            *(v132 + 16) = v136;
            *(v132 + 32) = v137;
            *(v132 + 40) = v138;
            *(v132 + 88) = v139;
            v140 = bswap32(*a2);
            if (v127)
            {
              v141 = v140;
            }

            else
            {
              v141 = *a2;
            }

            *(v132 + 24) = v141;
            v142 = *(v126 + 88);
            if (v142)
            {
              (*(*v142 + 48))(v142, *(a1 + 1368));
            }

            HALS_IOContext_Legacy_Impl::GetCurrentTime(a1, (a2 + 34));
            *buf = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_BeginIO;
            *&buf[8] = a1;
            *&buf[16] = *a2;
            v168[0] = &unk_1F5983F68;
            HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(HALS_IOContext_Legacy_Impl*,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl*,std::placeholders::__ph<1> const&,unsigned int &>,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, v168);
            kdebug_trace();
            HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(a1, a2);
            if (!HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)))
            {
              v147 = HALS_IOThread::EnableRTSafeSyscallMasks((a1 + 312));
              if (v147)
              {
                v148 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v149 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v149)
                {
                  atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v150 = *(v148 + 8);
                LOBYTE(v168[0]) = 16;
                v151 = __error();
                v152 = strerror(*v151);
                *buf = "HALS_IOContext_Legacy_Impl.cpp";
                *&buf[8] = 1974;
                *&buf[12] = v147;
                *&buf[16] = v152;
                caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_4,std::tuple<char const*,int,int,char *>>(v150, v168, buf);
                if (v149)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v149);
                }
              }
            }

            v143 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v144 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v144)
            {
              atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v145 = *(v143 + 8);
            LOBYTE(v168[0]) = 2;
            v146 = (*(a2 + 249) << 32) | 0x7BF;
            *buf = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[8] = v146;
            caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopInit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_6,std::tuple<char const*,int,BOOL>>(v145, v168, buf);
            if (v144)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v144);
            }

            goto LABEL_87;
          }

          *(a1 + 1096) = 1852797029;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_66:
            *(a2 + 249) = 1;
            goto LABEL_87;
          }

          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1911;
          v119 = MEMORY[0x1E69E9C10];
        }

        else
        {
          *(a1 + 1096) = 1852797029;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1895;
          v119 = MEMORY[0x1E69E9C10];
        }

        _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_ERROR, "%25s:%-5d  After we unlock the lock, we need to check that we still have a master device", buf, 0x12u);
        goto LABEL_66;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1854;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoop: Failure to allocate status block\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1829;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  After we unlock the lock, we need to check that we still have a master device", buf, 0x12u);
    }

    *(a1 + 1096) = 1852797029;
    *(a2 + 249) = 1;
    *(a1 + 1528) = HALS_IOPrewarmManager::Stop((a1 + 1512), *(a1 + 1100));
    HALS_IOContext_Legacy_Impl::NotifyWaitingTapsThatThisReaderHasFullyStarted(*(a1 + 1568), *(a1 + 1576));
LABEL_86:
    a4 = v162;
LABEL_87:
    if (*(a2 + 249) == 1)
    {
      v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v75 = *(v73 + 8);
      v76 = HALB_IOThread::HasBeenStopped((a1 + 312));
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_186;
      }

      v13 = v76 == 0;
      v77 = 2415;
      if (!v13)
      {
        v77 = 0x10000096FLL;
      }

      v78 = v77 | (*(a2 + 249) << 40);
      v79 = caulk::rt_safe_memory_resource::rt_allocate(result);
      v80 = v79;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      *(v79 + 20) = 16;
      *(v79 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v79 + 32) = v78;
      v81 = &unk_1F59831E0;
      goto LABEL_124;
    }

    *(a2 + 248) = 1;
LABEL_95:
    if ((*(a1 + 1424) & 0xFFFFFFFE) != 2)
    {
      *(a2 + 34) = *(a2 + 18);
      *(a2 + 38) = *(a2 + 22);
      *(a2 + 42) = *(a2 + 26);
      *(a2 + 46) = *(a2 + 30);
      if (*(a1 + 1344))
      {
        HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(a1, *(a2 + 10));
      }

      else
      {
        v82 = *(a1 + 1560);
        v83 = 44100.0;
        if (!v82 || !*(v82 + 88) || (v83 = *(v82 + 848), v83 > 0.0))
        {
          v84 = mach_absolute_time();
          LODWORD(v85) = *a2;
          v86 = v85 / v83 * 24000000.0;
          v87 = *(a2 + 10);
          v88 = v87 >= v86 ? v87 - v86 : 0;
          if (v88 > v84)
          {
            HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(a1, v88);
          }
        }

        if (HALB_IOThread::HasBeenStopped((a1 + 312)))
        {
          *(a2 + 249) = 1;
        }

        else
        {
          v89 = *(a2 + 13);
          v183 = *(a2 + 12);
          v184 = v89;
          v185[0] = *(a2 + 14);
          *(v185 + 10) = *(a2 + 234);
          v90 = *(a2 + 9);
          v179 = *(a2 + 8);
          v180 = v90;
          v91 = *(a2 + 11);
          v181 = *(a2 + 10);
          v182 = v91;
          v92 = *(a2 + 5);
          *&buf[72] = *(a2 + 4);
          v176 = v92;
          v93 = *(a2 + 7);
          v177 = *(a2 + 6);
          v178 = v93;
          v94 = *(a2 + 1);
          *&buf[8] = *a2;
          *&buf[24] = v94;
          v95 = *(a2 + 3);
          *&buf[40] = *(a2 + 2);
          *buf = a1;
          *&buf[56] = v95;
          v96 = *(a2 + 10);
          v166 = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
          v167 = buf;
          v97 = mach_absolute_time();
          HALS_IOThread::WorkgroupStart((a1 + 312), v97, v96);
          caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopSleep(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>(&v167);
          HALS_IOThread::WorkgroupFinish((a1 + 312));
        }
      }

      v98 = *(a2 + 10);
      v99 = mach_absolute_time();
      v100 = __udivti3();
      if (v99 >= v98)
      {
        v101 = v100;
      }

      else
      {
        v101 = -v100;
      }

      *(a2 + 30) = v101;
      v168[0] = 0;
      v168[1] = 0;
      HALS_System::GetInstance(buf, 0, v168);
      v102 = *(*buf + 1856);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      if (v102)
      {
        kdebug_trace();
      }
    }

    if (!*(a1 + 1560))
    {
      *(a1 + 1096) = 1852797029;
      v153 = __cxa_allocate_exception(0x10uLL);
      *v153 = off_1F5991DD8;
      v153[2] = 1852797029;
    }

    if (*(a2 + 249) != 1)
    {
      v107 = *(a1 + 1560);
      if (v107)
      {
        if (*(v107 + 88))
        {
          v108 = *(v107 + 368);
          if (v108)
          {
            HALS_IOClock::GetCurrentTime(v108, (a2 + 2));
          }
        }
      }

      v171 = a1;
      v168[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateSoftwareReferenceStreamOnlyEngineState::$_0>;
      v168[1] = &v171;
      v163[0] = &off_1F5983F18;
      v165[0] = v168;
      *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      *&buf[8] = v165;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), buf, v163);
      ++*(a1 + 1344);
      v109 = *a2;
      *(a1 + 1352) += v109;
      HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(a1, v109);
      memset(buf, 0, 64);
      *&buf[56] = 3;
      HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(a1, *a2, buf, -1.0);
      HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(a1, buf);
      *a3 = mach_absolute_time();
      *a4 = *&buf[8];
      v17 = *(a2 + 249) ^ 1;
      return (v17 & 1);
    }

    v103 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = *(v103 + 8);
    v104 = HALB_IOThread::HasBeenStopped((a1 + 312));
    result = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_186;
    }

    v13 = v104 == 0;
    v105 = 2426;
    if (!v13)
    {
      v105 = 0x10000097ALL;
    }

    v106 = v105 | (*(a2 + 249) << 40);
    v79 = caulk::rt_safe_memory_resource::rt_allocate(result);
    v80 = v79;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 20) = 16;
    *(v79 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v79 + 32) = v106;
    v81 = &unk_1F5983238;
LABEL_124:
    *v79 = v81;
    caulk::concurrent::messenger::enqueue(v75, v80);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    v17 = 0;
    return (v17 & 1);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 8);
  v11 = HALB_IOThread::HasBeenStopped((a1 + 312));
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v13 = v11 == 0;
    v14 = 2404;
    if (!v13)
    {
      v14 = 0x100000964;
    }

    v15 = v14 | (*(a2 + 249) << 40);
    v16 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v16 + 16) = 0;
    *(v16 + 20) = 0;
    *(v16 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v16 + 32) = v15;
    *v16 = &unk_1F5983188;
    *(v16 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v10, v16);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v17 = 0;
    *(a2 + 249) = 1;
    return (v17 & 1);
  }

LABEL_186:
  __break(1u);
  return result;
}

void sub_1DE610918(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v2 + 56);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F59832E8;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5983290;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(a1);
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

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d And error was thrown when getting timestamp - thread hasBeenStopped: %d and shouldExit: %d", &v10, 0x1Eu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_3,std::tuple<char const*,int,BOOL,BOOL>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UpdateSoftwareReferenceStreamOnlyEngineState(unsigned int)::$_0>(uint64_t **a1, uint64_t a2)
{
  if (*(a2 + 829) == 1)
  {
    v35 = v5;
    v36 = v4;
    v37 = v2;
    v38 = v3;
    if ((*(a2 + 828) & 1) == 0)
    {
      v7 = **a1;
      if (((*(*a2 + 344))(a2) & 1) == 0)
      {
        v8 = atomic_load((v7 + 1504));
        if (v8 == 2)
        {
          atomic_store(0, (v7 + 1504));
          *(a2 + 505) = 0;
        }
      }

      v9 = atomic_load((v7 + 1504));
      if (!v9 && (*(*a2 + 344))(a2))
      {
        v10 = *(a2 + 368);
        v11 = *(a2 + 848);
        v12 = *(a2 + 856);
        v13 = *(a2 + 860);
        v14 = *(a2 + 864);
        v15 = (*(**(a2 + 88) + 392))(*(a2 + 88));
        HALS_IOClock::Reset(v10, v11, v12, v13, v14, v15);
        memset(&v34, 0, 24);
        (*(**(a2 + 88) + 632))();
        v16 = *(a2 + 368);
        *&v33.mSampleTime = *&v34.mSampleTime;
        v33.mRateScalar = v34.mRateScalar;
        HALS_IOClock::Update(v16, &v33, *&v34.mSampleTime);
        *(a2 + 704) = 0u;
        *(a2 + 720) = 0u;
        *(a2 + 672) = 0u;
        *(a2 + 688) = 0u;
        *(a2 + 640) = 0u;
        *(a2 + 656) = 0u;
        *(a2 + 608) = 0u;
        *(a2 + 624) = 0u;
        *(a2 + 576) = 0u;
        *(a2 + 592) = 0u;
        *(a2 + 544) = 0u;
        *(a2 + 560) = 0u;
        *(a2 + 512) = 0u;
        *(a2 + 528) = 0u;
        atomic_store(1u, (v7 + 1504));
      }

      v17 = atomic_load((v7 + 1504));
      if (v17 == 1 && (*(*a2 + 328))(a2))
      {
        v18 = *(v7 + 1560);
        v19 = *(v18 + 456);
        *&v34.mSampleTime = *(v18 + 440);
        *&v34.mRateScalar = v19;
        v20 = *(v18 + 488);
        *&v34.mSMPTETime.mSubframes = *(v18 + 472);
        *&v34.mSMPTETime.mHours = v20;
        v34.mSampleTime = v34.mSampleTime + *(v18 + 744);
        v34.mFlags = 1;
        memset(&v33, 0, sizeof(v33));
        v33.mFlags = 2;
        HALS_IOClock::TranslateTime(*(v18 + 368), &v34, &v33);
        v32.mSampleTime = 0.0;
        memset(&v32.mRateScalar, 0, 48);
        v32.mHostTime = v33.mHostTime;
        v32.mFlags = 1;
        v33.mFlags = 2;
        HALS_IOClock::TranslateTime(*(a2 + 368), &v33, &v32);
        v21 = *&v32.mRateScalar;
        *(a2 + 440) = *&v32.mSampleTime;
        *(a2 + 456) = v21;
        v22 = *&v32.mSMPTETime.mHours;
        *(a2 + 472) = *&v32.mSMPTETime.mSubframes;
        *(a2 + 488) = v22;
        *(a2 + 505) = 1;
        HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo(v7, a2, *(v7 + 1360));
        atomic_store(2u, (v7 + 1504));
      }

      if (((*(*a2 + 344))(a2) & 1) == 0)
      {
        v23 = (v7 + 1504);
        if (atomic_load((v7 + 1504)))
        {
          v25 = *(a2 + 368);
          v26 = *(a2 + 848);
          v27 = *(a2 + 856);
          v28 = *(a2 + 860);
          v29 = *(a2 + 864);
          v30 = (*(**(a2 + 88) + 392))(*(a2 + 88));
          HALS_IOClock::Reset(v25, v26, v27, v28, v29, v30);
          atomic_store(0, v23);
          *(a2 + 505) = 0;
        }
      }
    }
  }

  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Sleep failed - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_2,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Initialize failed - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::perform(uint64_t a1)
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
    v9 = *(a1 + 37);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Exitted GetInterval early - thread hasBeenStopped: %d and shouldExit: %d", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &,unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,BOOL,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ___ZN26HALS_IOContext_Legacy_ImplC2EP14HALS_IOContextN4AMCP11Power_StateENSt3__110shared_ptrINS2_7Utility14Dispatch_QueueEEE_block_invoke(_BOOL8 a1, uint64_t *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1560);
  if (!v6)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      v16 = 136315394;
      v17 = "HALS_IOContext_Legacy_Impl.cpp";
      v18 = 1024;
      v19 = 2484;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryTop: there is no master engine info", &v16, 0x12u);
    }

    v6 = *(v5 + 1560);
    if (!v6)
    {
      return 0;
    }
  }

  if (!*(v6 + 88))
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALS_IOContext_Legacy_Impl.cpp";
      v18 = 1024;
      v19 = 2487;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryTop: there is no master engine", &v16, 0x12u);
    }
  }

  if (!*(*(v5 + 1560) + 88))
  {
    return 0;
  }

  if (HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(v5, (v5 + 40), a2, a3))
  {
    if ((*(v5 + 1424) & 0xFFFFFFFE) == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    result = 0;
    *(v5 + 289) = 1;
  }

  return result;
}

uint64_t ___ZN26HALS_IOContext_Legacy_ImplC2EP14HALS_IOContextN4AMCP11Power_StateENSt3__110shared_ptrINS2_7Utility14Dispatch_QueueEEE_block_invoke_2(_BOOL8 a1)
{
  v124 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 1560);
  if (v2)
  {
    goto LABEL_143;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  a1 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a1)
  {
    LODWORD(__p.mSampleTime) = 136315394;
    *(&__p.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD2(__p.mHostTime) = 1024;
    *(&__p.mHostTime + 6) = 2522;
    _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryBottom: there is no master engine info", &__p, 0x12u);
  }

  v2 = *(v1 + 1560);
  if (v2)
  {
LABEL_143:
    if (!*(v2 + 88))
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.mSampleTime) = 136315394;
        *(&__p.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
        WORD2(__p.mHostTime) = 1024;
        *(&__p.mHostTime + 6) = 2525;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryBottom: there is no master engine", &__p, 0x12u);
      }
    }

    if (*(*(v1 + 1560) + 88))
    {
      v11 = *(v1 + 1424);
      if (v11 == 3)
      {
        v12 = (v1 + 40);
      }

      else
      {
        v13 = *(*(v1 + 24) + 232);
        if ((*v13 & 1) != 0 || *(v13 + 1) == 1)
        {
          v14 = *(v1 + 624);
          v15 = *(v1 + 640);
          v16 = *(v13 + 8);
          *(v16 + 232) = *(v1 + 616);
          *(v16 + 240) = v14;
          *(v16 + 256) = v15;
          HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(v13);
          v11 = *(v1 + 1424);
        }

        v12 = (v1 + 40);
        if (v11 == 4)
        {
          *(v1 + 1424) = 0;
          *(v1 + 264) = 0;
          v17 = *(v1 + 1456);
          if (v17)
          {
            std::function<void ()(IORunningState)>::operator()(v17, 0);
          }

          HALS_IOContext_Legacy_Impl::UpdateEngineMixing(v1);
        }
      }

      if ((HALB_IOThread::HasBeenStopped((v1 + 312)) & 1) != 0 || *(v1 + 289) == 1)
      {
        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v18 + 8);
        HasBeenStopped = HALB_IOThread::HasBeenStopped((v1 + 312));
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_140;
        }

        v22 = HasBeenStopped == 0;
        v23 = 2309;
        if (!v22)
        {
          v23 = 0x100000905;
        }

        v24 = v23 | (*(v1 + 289) << 40);
        v25 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v25 + 16) = 0;
        *(v25 + 20) = 0;
        *(v25 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v25 + 32) = v24;
        *v25 = &unk_1F5983080;
        *(v25 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v20, v25);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        *(v1 + 289) = 1;
      }

      else
      {
        kdebug_trace();
        if ((HALS_IOContext_Legacy_Impl::UpdateTime(v1) || *(v1 + 1341) == 1) && *(v1 + 1424) != 3)
        {
          v67 = *(v1 + 1341);
          v68 = MEMORY[0x1E69E3C08];
          if (v67 == 1)
          {
            v69 = *(*(v1 + 24) + 16);
            v104 = HALS_IOContext_Legacy_Impl::ResetTimeline_Helper;
            v105 = v69;
            v103 = &unk_1F5983FE8;
            v107[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
            v107[1] = &v104;
            v106 = &off_1F5983F18;
            v108 = v107;
            *&v102.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
            v102.mHostTime = &v108;
            VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), &v102, &v106, &v103);
            *(v1 + 1341) = 0;
            v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!*v68)
            {
              goto LABEL_140;
            }

            v72 = *(v70 + 8);
            v73 = caulk::rt_safe_memory_resource::rt_allocate(*v68);
            *(v73 + 16) = 0;
            *(v73 + 20) = 0;
            *(v73 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
            *(v73 + 32) = 2329;
            *v73 = &unk_1F59830D8;
            *(v73 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v72, v73);
            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            }
          }

          kdebug_trace();
          *(v1 + 1352) = 0;
          HALS_IOContext_Legacy_Impl::AnchorTime(v1);
          v74 = *(v1 + 1560);
          if (v74)
          {
            if (*(v74 + 88))
            {
              v75 = *(v74 + 368);
              if (v75)
              {
                HALS_IOClock::GetCurrentTime(v75, (v1 + 48));
              }
            }
          }

          if ((v67 & 1) == 0)
          {
            *(v1 + 1424) = 4;
            v76 = *(v1 + 1456);
            if (v76)
            {
              std::function<void ()(IORunningState)>::operator()(v76, 4);
            }
          }

          v77 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(v1, *(v1 + 256));
          if (v77)
          {
            v78 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v80 = *(v78 + 8);
            v81 = __error();
            v82 = strerror(*v81);
            if (!*v68)
            {
              goto LABEL_140;
            }

            v83 = caulk::rt_safe_memory_resource::rt_allocate(*v68);
            *(v83 + 16) = 0;
            *(v83 + 20) = 16;
            *(v83 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
            *(v83 + 32) = 2363;
            *(v83 + 36) = v77;
            *(v83 + 40) = v82;
            *v83 = &unk_1F5983130;
            *(v83 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v80, v83);
            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }
          }

          atomic_store(0, (v1 + 1504));
          v66 = 1;
        }

        else
        {
          v66 = 0;
        }

        v84 = *(*(*(v1 + 24) + 72) + 40);
        v85 = *(*(v1 + 1560) + 368);
        v86 = v85 + 200;
        v87 = *(v85 + 200 + 40 * *(v85 + 192)) * 24000000.0 / 24000000.0;
        v88 = COERCE_DOUBLE(bswap64(*&v87));
        if (*(*(*(v1 + 24) + 72) + 40))
        {
          v87 = v88;
        }

        v89 = *(v1 + 1136);
        *v89 = v87;
        v90 = *(v86 + 40 * *(v85 + 192) + 8) * 24000000.0 / 24000000.0;
        v91 = COERCE_DOUBLE(bswap64(*&v90));
        if (v84)
        {
          v90 = v91;
        }

        *(v89 + 8) = v90;
        v92 = v86 + 40 * *(v85 + 192);
        if (v84)
        {
          v93 = bswap64(*(v92 + 16));
          v94 = bswap64(*(v86 + 40 * *(v85 + 192) + 24));
          v95 = bswap64(*(v86 + 40 * *(v85 + 192) + 32));
          v96 = 50331648;
        }

        else
        {
          v93 = *(v92 + 16);
          v94 = *(v86 + 40 * *(v85 + 192) + 24);
          v95 = *(v86 + 40 * *(v85 + 192) + 32);
          v96 = 3;
        }

        *(v89 + 16) = v93;
        *(v89 + 32) = v94;
        *(v89 + 40) = v95;
        *(v89 + 88) = v96;
        v97 = bswap32(*(v1 + 40));
        if (v84)
        {
          v98 = v97;
        }

        else
        {
          v98 = *(v1 + 40);
        }

        *(v89 + 24) = v98;
        __dmb(0xBu);
        v99 = *(v1 + 24);
        v101 = *(v99 + 88);
        v100 = *(v99 + 96);
        if (v100)
        {
          atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v101)
        {
          memset(&__p, 0, sizeof(__p));
          __p.mFlags = 3;
          HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(v1, *(v1 + 40), &__p, -1.0);
          v102 = __p;
          (*(*v101 + 56))(v101, &v102);
          HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(v1, &__p);
        }

        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
        }

        *(v1 + 260) = HALS_IOContext_Legacy_Impl::PerformIO(v1, v1 + 48, *(v1 + 40), 0, *(v1 + 264), (v1 + 272), v66);
        if ((*(v1 + 289) & 1) == 0)
        {
          HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(v1, v12);
        }
      }
    }
  }

  if ((*(v1 + 289) & 1) == 0 && !HALB_IOThread::HasBeenStopped((v1 + 312)))
  {
    return *(v1 + 289);
  }

  v26 = HALS_IOThread::ClearAllSyscallMasks((v1 + 312));
  if (v26)
  {
    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v27 + 8);
    v30 = __error();
    v31 = strerror(*v30);
    if (*MEMORY[0x1E69E3C08])
    {
      v32 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v32 + 16) = 0;
      *(v32 + 20) = 16;
      *(v32 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v32 + 32) = 1992;
      *(v32 + 36) = v26;
      *(v32 + 40) = v31;
      *v32 = &unk_1F5982DC8;
      *(v32 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v29, v32);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      goto LABEL_46;
    }

LABEL_140:
    __break(1u);
  }

LABEL_46:
  if (*(v1 + 288) == 1)
  {
    v110 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
    v111 = &v116;
    *&v115 = &v110;
    *buf = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
    *&buf[8] = &v115;
    v116 = v1;
    *&__p.mSampleTime = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
    __p.mHostTime = buf;
    VisitableVector<HALS_IOStackDescription>::apply<>(*(v1 + 1616), *(v1 + 1624), &__p);
    *(v1 + 1340) = 0;
    HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(*(*(v1 + 24) + 232));
    (*(**(*(v1 + 24) + 104) + 752))(*(*(v1 + 24) + 104));
    kdebug_trace();
  }

  HALB_IOThread::ConfigureThreadForNormalPriority((v1 + 312));
  v33 = *(v1 + 1128);
  if (v33)
  {
    std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(v33, v1);
    std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](v1 + 1104);
  }

  *(v1 + 1340) = 0;
  atomic_store(0, (v1 + 1504));
  v110 = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_EndIO;
  v111 = v1;
  *buf = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&>>;
  *&buf[8] = &v110;
  v116 = &off_1F5983F18;
  *&v115 = buf;
  *&__p.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  __p.mHostTime = &v115;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(v1 + 1568), *(v1 + 1576), &__p, &v116);
  HALB_IOThread::PostStateChange((v1 + 312), 1718185577);
  LODWORD(v116) = *(*(v1 + 24) + 16);
  *buf = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UnregisterIOThread(void)::$_0>;
  *&buf[8] = &v116;
  *&v115 = &off_1F5983F18;
  v110 = buf;
  *&__p.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  __p.mHostTime = &v110;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(v1 + 1568), *(v1 + 1576), &__p, &v115);
  kdebug_trace();
  v110 = 0;
  v111 = 0;
  v112 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v110, *(v1 + 1472), *(v1 + 1480), (*(v1 + 1480) - *(v1 + 1472)) >> 2);
  v113 = v1;
  v109 = &unk_1F5983F68;
  memset(&__p, 0, 24);
  v34 = v110;
  v35 = v111;
  v36 = (v111 - v110) >> 2;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v110, v111, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 1;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 2;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 3;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 4;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 5;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 6;
  *&v115 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v115 + 1) = &__p;
  v114 = &off_1F5983F18;
  v116 = &v115;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v116;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v114, &v109);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  HALS_IOContext_Legacy_Impl::get_devices_that_are_not_reference_stream_only(buf, *(v1 + 1568), *(v1 + 1576));
  v37 = HALS_ObjectMap::CopyObjectByObjectID(**(*(v1 + 24) + 72));
  v39 = v37;
  if (v37)
  {
    *&__p.mSampleTime = MEMORY[0x1E69E9820];
    __p.mHostTime = 0x40000000;
    *&__p.mRateScalar = ___ZN11HALS_Client23DevicesStoppedByContextERKNSt3__16vectorIjNS0_9allocatorIjEEEES6__block_invoke;
    __p.mWordClockTime = &__block_descriptor_tmp_22_3147;
    *&__p.mSMPTETime.mSubframes = v37;
    *&__p.mSMPTETime.mType = buf;
    *&__p.mSMPTETime.mHours = v121;
    v40 = (*(*v37 + 64))(v37);
    HALB_CommandGate::ExecuteCommand(v40, &__p);
  }

  HALS_ObjectMap::ReleaseObject(v39, v38);
  if (*v121)
  {
    *&v121[8] = *v121;
    operator delete(*v121);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v41 = *(*(v1 + 24) + 88);
  if (v41)
  {
    (*(*v41 + 128))(v41);
  }

  for (i = *(v1 + 2088); i; i = *i)
  {
    if (i[40] == 1)
    {
      v43 = atomic_load(i + 42);
      if (v43)
      {
        HALS_MultiTap::writer_stop(*(i + 3), *(*(v1 + 24) + 16));
        atomic_store(0, i + 42);
        atomic_store(0, i + 41);
      }
    }
  }

  LOBYTE(v116) = 0;
  *&v115 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_0>;
  *(&v115 + 1) = &v116;
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *&buf[8] = &v115;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(v1 + 1592), *(v1 + 1600), buf);
  LOBYTE(v114) = 0;
  *&v115 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_1>;
  *(&v115 + 1) = &v114;
  *buf = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *&buf[8] = &v115;
  VisitableVector<HALS_IOStackDescription>::apply<>(*(v1 + 1616), *(v1 + 1624), buf);
  HALS_IOContextDescription::UnregisterBuffers((v1 + 1536));
  LOBYTE(v114) = 0;
  v44 = *(v1 + 1776);
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::free_buffers(void)::$_0>;
  *&buf[8] = &v114;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v44, v44[1], buf);
  v45 = *(v1 + 1784);
  *buf = &unk_1F596E948;
  *v121 = buf;
  v116 = buf;
  *&v115 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v115 + 1) = &v116;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v45, v45[1], &v115);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](buf);
  v46 = *(v1 + 1744);
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  *(v1 + 1744) = 0;
  *(v1 + 1136) = 0;
  if (v110)
  {
    operator delete(v110);
  }

  LOBYTE(v115) = 0;
  v110 = &unk_1F5987718;
  v111 = (v1 + 1536);
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::TeardownForIsolatedIO(void)::$_0>;
  *&buf[8] = &v115;
  VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(*(v1 + 1592), *(v1 + 1600), buf, &v110);
  *(v1 + 1480) = *(v1 + 1472);
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(v1 + 24) + 16);
    v48 = *(v1 + 1352);
    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2056;
    v119 = 1024;
    v120 = v47;
    *v121 = 2048;
    *&v121[2] = v48;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  IO Stopped Context %u after %lld frames.", buf, 0x22u);
  }

  HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(v1);
  v49 = *(v1 + 24);
  v50 = *(v49 + 16);
  if ((*(*(v49 + 72) + 44) & 1) == 0)
  {
    HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(v1);
  }

  v110 = 0;
  v111 = 0;
  HALS_System::GetInstance(buf, 0, &v110);
  HALS_System::SetIOContextIsRunning(*buf, v50, 0);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  kdebug_trace();
  v51 = HALS_ObjectMap::CopyObjectByObjectID(*(v1 + 1552));
  v52 = *(v1 + 1560);
  v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v51 && v52)
  {
    if (!v53)
    {
      goto LABEL_92;
    }

    v55 = (*(*v51 + 224))(v51);
    v56 = *(v1 + 1096);
    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2081;
    v119 = 1024;
    v120 = v50;
    *v121 = 2082;
    *&v121[2] = v52 + 112;
    *&v121[10] = 2082;
    *&v121[12] = v55;
    v122 = 1024;
    v123 = v56;
    v57 = MEMORY[0x1E69E9C10];
    v58 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit: %u %{public}s (%{public}s): stopping with error %d";
    v59 = 50;
  }

  else
  {
    if (!v53)
    {
      goto LABEL_92;
    }

    v60 = *(v1 + 1096);
    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2085;
    v119 = 1024;
    v120 = v50;
    *v121 = 1024;
    *&v121[2] = v60;
    v57 = MEMORY[0x1E69E9C10];
    v58 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit: %u: stopping with error %d";
    v59 = 30;
  }

  _os_log_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, v59);
LABEL_92:
  HALS_ObjectMap::ReleaseObject(v51, v54);
  v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v62 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_140;
  }

  v63 = *(v61 + 8);
  v64 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v64 + 16) = 0;
  *(v64 + 20) = 2;
  *(v64 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
  *(v64 + 32) = 2090;
  *v64 = &unk_1F5982E20;
  *(v64 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v63, v64);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  return *(v1 + 289);
}

void sub_1DE612F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint8_t buf, int a36, int a37, __int16 a38)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *(v38 + 289) = 1;
    __cxa_end_catch();
    JUMPOUT(0x1DE612E40);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE612FF0(void *a1, int a2)
{
  if (a2)
  {
    std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(v2 - 160);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6124B4);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE612FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE612FE0);
  }

  JUMPOUT(0x1DE6130F0);
}

void sub_1DE613008(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a26)
    {
      operator delete(a26);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE61299CLL);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE6130D8(uint64_t a1, HALS_Object *a2)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v2, a2);
    JUMPOUT(0x1DE6130E8);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE613104(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1DE613114);
    }

    JUMPOUT(0x1DE61313CLL);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE61311C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE613124);
  }

  JUMPOUT(0x1DE612FE0);
}

IOPMAssertionID **std::default_delete<HALS_IOContext_PowerAssertions>::operator()[abi:ne200100](IOPMAssertionID **result)
{
  if (result)
  {
    v1 = result;
    std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](result + 1, 0);
    std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](v1, 0);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<HALS_IOContext_PowerAssertions  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI30HALS_IOContext_PowerAssertionsEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<HALS_IOContext_PowerAssertions  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

__CFString *AMCP::HAL::pack_property_data(int a1, unsigned int a2, CFStringRef *a3)
{
  switch(a1)
  {
    case 1:
    case 5:
    case 18:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2;
      goto LABEL_24;
    case 2:
    case 3:
    case 7:
    case 10:
      if (a2 < 4)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 4;
      goto LABEL_24;
    case 4:
    case 11:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2 & 0xFFFFFFFC;
      goto LABEL_24;
    case 6:
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      Length = CFStringGetLength(*a3);
      v13 = 0;
      std::vector<unsigned short>::vector[abi:ne200100](&__p, Length, &v13);
      v18.length = (v15 - __p) >> 1;
      v18.location = 0;
      CFStringGetCharacters(v10, v18, __p);
      v7 = [MEMORY[0x1E695DEF8] dataWithBytes:__p length:v15 - __p];
      goto LABEL_21;
    case 8:
      if (a2 < 8)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 8;
      goto LABEL_24;
    case 9:
    case 17:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2 & 0xFFFFFFF8;
      goto LABEL_24;
    case 12:
      if (a2 < 0x28)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 40;
LABEL_24:
      v9 = [v3 dataWithBytes:a3 length:v4];
      goto LABEL_25;
    case 13:
      v3 = MEMORY[0x1E695DEF8];
      v4 = 40 * (a2 / 0x28uLL);
      goto LABEL_24;
    case 14:
      v3 = MEMORY[0x1E695DEF8];
      v4 = 56 * (a2 / 0x38uLL);
      goto LABEL_24;
    case 15:
      if (a2 < 8)
      {
        goto LABEL_18;
      }

      v8 = *a3;
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:0];
LABEL_25:
      v10 = v9;
      break;
    case 16:
      if (a2 < 8 || !*a3)
      {
        goto LABEL_18;
      }

      v5 = CFURLGetString(*a3);
      v6 = CFStringGetLength(v5);
      v13 = 0;
      std::vector<unsigned short>::vector[abi:ne200100](&__p, v6, &v13);
      v17.length = (v15 - __p) >> 1;
      v17.location = 0;
      CFStringGetCharacters(v5, v17, __p);
      v7 = [MEMORY[0x1E695DEF8] dataWithBytes:__p length:v15 - __p];
LABEL_21:
      v10 = v7;
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      break;
    default:
LABEL_18:
      v10 = 0;
      break;
  }

  return v10;
}

uint64_t AMCP::HAL::unpack_property_data(void *a1, int a2, unsigned int *a3, CFURLRef *a4)
{
  v7 = 2003329396;
  v8 = a1;
  v9 = v8;
  v10 = *a3;
  switch(a2)
  {
    case 1:
    case 5:
    case 18:
      v11 = v8;
      if (!v11)
      {
        goto LABEL_64;
      }

      v12 = v11;
      if (a4)
      {
        v13 = *a3;
        if ([v11 length] > v13)
        {
          goto LABEL_63;
        }

        v14 = [v12 length];
        *a3 = v14;
        [v12 getBytes:a4 length:v14];
      }

      else
      {
        *a3 = [v11 length];
      }

      goto LABEL_75;
    case 2:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_67;
      }

      if (*a3 >= 4)
      {
        goto LABEL_44;
      }

      goto LABEL_63;
    case 3:
    case 10:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_67;
      }

      if (*a3 >= 4)
      {
        goto LABEL_44;
      }

      goto LABEL_63;
    case 4:
    case 11:
      v16 = v8;
      v17 = v16;
      if (!a4)
      {
        v42 = [v16 length] & 0xFFFFFFFC;
        goto LABEL_74;
      }

      if (*a3 - 1 < 3)
      {
        goto LABEL_63;
      }

      v18 = [v16 length];
      v19 = *a3;
      if (*a3 >= v18)
      {
        v19 = v18;
      }

      *a3 = v19 & 0xFFFFFFFC;
      [v17 getBytes:a4 length:?];
      goto LABEL_75;
    case 6:
      v41 = v8;
      if (!v41)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      v34 = CFStringCreateWithCharacters(0, [v41 bytes], objc_msgSend(v41, "length") >> 1);
      goto LABEL_62;
    case 7:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
LABEL_67:
        v42 = 4;
        goto LABEL_74;
      }

      if (*a3 < 4)
      {
        goto LABEL_63;
      }

LABEL_44:
      *a3 = 4;
      [v15 getBytes:a4 length:4];
      goto LABEL_75;
    case 8:
      v40 = v8;
      if (!v40)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
LABEL_66:
        v42 = 8;
        goto LABEL_74;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      [v40 getBytes:a4 length:8];
      goto LABEL_75;
    case 9:
      v28 = v8;
      v29 = v28;
      if (!a4)
      {
        goto LABEL_71;
      }

      if (*a3 - 1 < 7)
      {
        goto LABEL_63;
      }

      v30 = [v28 length];
      v31 = *a3;
      if (*a3 >= v30)
      {
        v31 = v30;
      }

      goto LABEL_29;
    case 12:
      v32 = v8;
      if (!v32)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        v42 = 40;
        goto LABEL_74;
      }

      if (*a3 < 0x28)
      {
        goto LABEL_63;
      }

      *a3 = 40;
      [v32 getBytes:a4 length:40];
      goto LABEL_75;
    case 13:
      v36 = v8;
      v37 = v36;
      if (!a4)
      {
        v42 = 40 * (([v36 length] & 0xFFFFFFF8) / 0x28);
        goto LABEL_74;
      }

      if (*a3 - 1 < 0x27)
      {
        goto LABEL_63;
      }

      v38 = [v36 length];
      v39 = *a3;
      if (*a3 >= v38)
      {
        v39 = v38;
      }

      *a3 = 40 * (v39 / 0x28);
      [v37 getBytes:a4 length:?];
      goto LABEL_75;
    case 14:
      v24 = v8;
      v25 = v24;
      if (!a4)
      {
        v42 = 56 * ([v24 length] / 0x38);
        goto LABEL_74;
      }

      if (*a3 - 1 < 0x37)
      {
        goto LABEL_63;
      }

      v26 = [v24 length];
      v27 = *a3;
      if (*a3 >= v26)
      {
        v27 = v26;
      }

      *a3 = 56 * (v27 / 0x38);
      [v25 getBytes:a4 length:?];
      goto LABEL_75;
    case 15:
      v33 = v8;
      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      v34 = [MEMORY[0x1E696AE40] propertyListWithData:v33 options:0 format:0 error:0];
LABEL_62:
      *a4 = v34;
      goto LABEL_75;
    case 16:
      v20 = v8;
      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 != 8)
      {
        goto LABEL_63;
      }

      v21 = CFStringCreateWithCharacters(0, [v20 bytes], objc_msgSend(v20, "length") >> 1);
      cf = v21;
      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v23 = cf;
      }

      else
      {
        v23 = 0;
      }

      *a4 = CFURLCreateWithString(0, v23, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_75;
    case 17:
      v28 = v8;
      v29 = v28;
      if (!a4)
      {
LABEL_71:
        v42 = [v28 length] & 0xFFFFFFF8;
LABEL_74:
        *a3 = v42;
        goto LABEL_75;
      }

      if (*a3 - 1 >= 7)
      {
        v35 = [v28 length];
        v31 = *a3;
        if (*a3 >= v35)
        {
          v31 = v35;
        }

LABEL_29:
        *a3 = v31 & 0xFFFFFFF8;
        [v29 getBytes:a4 length:?];
LABEL_75:

        v7 = 0;
        goto LABEL_76;
      }

LABEL_63:
      v7 = 561211770;
LABEL_64:

LABEL_65:
      bzero(a4, v10);
      *a3 = 0;
LABEL_76:

      return v7;
    default:
      goto LABEL_65;
  }
}

void sub_1DE613A94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);

  __clang_call_terminate(a1);
}

CFNumberRef HALS_ClockDevice::GetPropertyData(CFNumberRef this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v21 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1819569762)
  {
    if (mSelector > 1853059699)
    {
      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v17 = 136315394;
          v18 = "HALS_ClockDevice.cpp";
          v19 = 1024;
          v20 = 346;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate";
          goto LABEL_47;
        }

        *a6 = 0;
        goto LABEL_28;
      }

      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v17 = 136315394;
          v18 = "HALS_ClockDevice.cpp";
          v19 = 1024;
          v20 = 283;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyTransportType";
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      if (mSelector != 1969841184)
      {
        goto LABEL_36;
      }

LABEL_12:
      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v17 = 136315394;
        v18 = "HALS_ClockDevice.cpp";
        v19 = 1024;
        v20 = 274;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceUID";
        goto LABEL_47;
      }

      this = PropertyListDeepImmutableCopy(*(this + 13));
      *a6 = this;
LABEL_28:
      v15 = 8;
LABEL_35:
      *a5 = v15;
      return this;
    }

    if (mSelector != 1819569763)
    {
      v12 = 1853059619;
LABEL_18:
      if (mSelector == v12)
      {
        *a5 = 0;
        return this;
      }

      goto LABEL_36;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v17 = 136315394;
      v18 = "HALS_ClockDevice.cpp";
      v19 = 1024;
      v20 = 319;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyLatency";
      goto LABEL_47;
    }

LABEL_33:
    *a6 = 0;
    goto LABEL_34;
  }

  if (mSelector <= 1668639075)
  {
    if (mSelector != 1668049764)
    {
      v12 = 1668575852;
      goto LABEL_18;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v17 = 136315394;
      v18 = "HALS_ClockDevice.cpp";
      v19 = 1024;
      v20 = 292;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyClockDomain";
      goto LABEL_47;
    }

    goto LABEL_33;
  }

  switch(mSelector)
  {
    case 1668639076:
      goto LABEL_12;
    case 1735354734:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        v17 = 136315394;
        v18 = "HALS_ClockDevice.cpp";
        v19 = 1024;
        v20 = 310;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsRunning";
        goto LABEL_47;
      }

      goto LABEL_33;
    case 1818850926:
      if (a4 > 3)
      {
        *a6 = 1;
LABEL_34:
        v15 = 4;
        goto LABEL_35;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v17 = 136315394;
      v18 = "HALS_ClockDevice.cpp";
      v19 = 1024;
      v20 = 301;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsAlive";
LABEL_47:
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, &v17, 0x12u);
      goto LABEL_48;
  }

LABEL_36:

  return HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

uint64_t HALS_ClockDevice::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 8;
  if (*a3 > 1819569762)
  {
    if (v3 > 1853059699)
    {
      if (v3 != 1853059700 && v3 != 1969841184)
      {
        v5 = 1953653102;
LABEL_19:
        if (v3 == v5)
        {
          return 4;
        }

        return HALS_Object::GetPropertyDataSize(8, a2, a3);
      }

      return result;
    }

    if (v3 == 1819569763)
    {
      return 4;
    }

    v7 = 1853059619;
LABEL_17:
    if (v3 == v7)
    {
      return 0;
    }

    return HALS_Object::GetPropertyDataSize(8, a2, a3);
  }

  if (v3 <= 1668639075)
  {
    if (v3 == 1668049764)
    {
      return 4;
    }

    v7 = 1668575852;
    goto LABEL_17;
  }

  if (v3 != 1668639076)
  {
    if (v3 != 1735354734)
    {
      v5 = 1818850926;
      goto LABEL_19;
    }

    return 4;
  }

  return result;
}

uint64_t HALS_ClockDevice::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 <= 1819569762)
  {
    if (v4 > 1735354733)
    {
      v6 = v4 == 1735354734;
      v7 = 1818850926;
    }

    else
    {
      v6 = v4 == 1668049764;
      v7 = 1668639076;
    }
  }

  else
  {
    if (v4 > 1853059699)
    {
      if (v4 != 1969841184 && v4 != 1953653102)
      {
        if (v4 == 1853059700)
        {
          return 1;
        }

        return HALS_Object::IsPropertySettable(0, a2, a3);
      }

      return result;
    }

    v6 = v4 == 1819569763;
    v7 = 1853059619;
  }

  if (!v6 && v4 != v7)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_ClockDevice::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 <= 1819569762)
  {
    if (v3 <= 1668575851)
    {
      if (v3 != 1650682995 && v3 != 1668047219 && v3 != 1668049764)
      {
        return 0;
      }

      return result;
    }

    if (v3 > 1735354733)
    {
      if (v3 == 1735354734)
      {
        return result;
      }

      v5 = 1818850926;
    }

    else
    {
      if (v3 == 1668575852)
      {
        return result;
      }

      v5 = 1668639076;
    }
  }

  else if (v3 > 1870098019)
  {
    if (v3 > 1953653101)
    {
      if (v3 == 1953653102)
      {
        return result;
      }

      v5 = 1969841184;
    }

    else
    {
      if (v3 == 1870098020)
      {
        return result;
      }

      v5 = 1937007734;
    }
  }

  else if (v3 > 1853059699)
  {
    if (v3 == 1853059700)
    {
      return result;
    }

    v5 = 1869638759;
  }

  else
  {
    if (v3 == 1819569763)
    {
      return result;
    }

    v5 = 1853059619;
  }

  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_ClockDevice::GetMIGDispatchQueue(HALS_ClockDevice *this)
{
  return *(this + 12);
}

{
  return *(this + 12);
}

uint64_t HALS_ClockDevice::GetCommandGate(HALS_ClockDevice *this)
{
  return *(this + 10);
}

{
  return *(this + 10);
}

void HALS_ClockDevice::HALS_ClockDevice(HALS_ClockDevice *this, HALS_DeviceManager *a2, const __CFString *a3, uint64_t a4, HALS_Object *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1633905771, 0, a2, a5);
  *(v6 + 64) = 0;
  *(v6 + 56) = 0;
  *(v6 + 48) = v6 + 56;
  *(v6 + 72) = 0;
  *v6 = &unk_1F5983460;
  *(v6 + 104) = a3;
  v8 = (v6 + 104);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 80) = 0;
  *(v6 + 112) = 1;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  if (a3)
  {
    *v16 = 256;
    CACFString::GetCString(a3, (v6 + 120), v16, v7);
    Length = *v8;
    if (*v8)
    {
      Length = CFStringGetLength(Length);
      v10 = Length + 1;
    }

    else
    {
      v10 = 1;
    }

    *v15 = v10;
    MEMORY[0x1EEE9AC00](Length);
    CACFString::GetCString(*v8, (v15 - ((v11 + 15) & 0x1FFFFFFF0) + 8), v15, v12);
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_ClockDevice.cpp";
    v19 = 1024;
    v20 = 38;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ClockDevice::HALS_ClockDevice: all clock devices have to have a UID", &buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE614648(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1700](v3, v4);
  CACFString::~CACFString(v2);
  v6 = *(v1 + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_IODevice::~HALS_IODevice(v1);
  _Unwind_Resume(a1);
}

void HALS_IODevice::~HALS_IODevice(HALS_IODevice *this)
{
  *this = &unk_1F598F798;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 7));

  HALS_Object::~HALS_Object(this);
}

void HALS_ClockDevice::~HALS_ClockDevice(HALS_ClockDevice *this)
{
  *this = &unk_1F5983460;
  v2 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 104));
  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_1F598F798;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 7));

  HALS_Object::~HALS_Object(this);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroupList::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>(uint64_t **a1, uint64_t **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = **a1;
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](v8, (*a1 + 1));
  v7[0] = v8;
  v7[1] = v3;
  *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroup::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo&)>)::$_0>;
  *(&v6 + 1) = v7;
  v4 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v6);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v8);
  return v4;
}

void sub_1DE614860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL HALS_Stream::GetStreamIsActive(unsigned int *a1)
{
  v1 = a1[4];
  v3 = 0x676C6F6273616374;
  v4 = 0;
  v5 = 0;
  (*(*a1 + 120))(a1, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

AudioConverterRef **std::unique_ptr<FormatConverter>::reset[abi:ne200100](AudioConverterRef **result, AudioConverterRef *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AudioConverterDispose(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<HALS_IOStreamDSP>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  if (*(a1 + 128))
  {
    std::vector<std::vector<std::byte>>::clear[abi:ne200100]((a1 + 128));
    operator delete(*(a1 + 128));
  }

  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((a1 + 88), 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](a1 + 96);
  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = *(a1 + 40); i != v4; std::allocator_traits<std::allocator<HALS_IOStreamDSP::InputChannelData>>::destroy[abi:ne200100]<HALS_IOStreamDSP::InputChannelData,void,0>(i))
    {
      i -= 88;
    }

    *(a1 + 40) = v4;
    operator delete(*(a1 + 32));
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void std::__shared_ptr_emplace<HALS_IOStreamDSP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOEngine2_StreamInfo::CreateCaptureFile(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 136);
  v54 = *(a1 + 120);
  v55 = v3;
  v56 = *(a1 + 152);
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 200);
    v5 = *(a1 + 56);
    v54 = *(a1 + 40);
    v55 = v5;
    v56 = *(a1 + 72);
    if (!v4 && DWORD2(v54) == 1819304813)
    {
      v6 = 1;
LABEL_10:
      v52 = 0;
      v53 = 0uLL;
      v7 = (*(**a1 + 336))();
      v8 = (*(*v7 + 224))(v7);
      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      LODWORD(v57) = 0;
      v9 = v53;
      if (v53 >= *(&v53 + 1))
      {
        v10 = std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(&v52, &v57, __p);
      }

      else
      {
        std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(v53, 0, __p);
        v10 = v9 + 40;
      }

      *&v53 = v10;
      v11 = *(a1 + 8);
      if (v10 >= *(&v53 + 1))
      {
        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v52) >> 3);
        if (v13 + 1 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0x999999999999999ALL * ((*(&v53 + 1) - v52) >> 3);
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v53 + 1) - v52) >> 3) >= 0x333333333333333)
        {
          v15 = 0x666666666666666;
        }

        else
        {
          v15 = v14;
        }

        v60 = &v52;
        if (v15)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = 40 * v13;
        v57 = 0;
        v58 = v16;
        *(&v59 + 1) = 0;
        v62 = v11;
        v61 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v16 = 4;
        *(v16 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v16 + 16) = 0;
        *(v16 + 16) = v11;
        std::any::reset[abi:ne200100](&v61);
        *&v59 = v16 + 40;
        v17 = &v52[v16 / 8] - v53;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v52, v53, v17);
        v18 = v52;
        v19 = *(&v53 + 1);
        v52 = v17;
        v46 = v59;
        v53 = v59;
        *&v59 = v18;
        *(&v59 + 1) = v19;
        v57 = v18;
        v58 = v18;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v57);
        v12 = v46;
      }

      else
      {
        v58 = v11;
        v57 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v10 = 4;
        *(v10 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v10 + 16) = 0;
        *(v10 + 16) = v11;
        std::any::reset[abi:ne200100](&v57);
        v12 = v10 + 40;
      }

      *&v53 = v12;
      v20 = *(a1 + 12);
      if (v12 >= *(&v53 + 1))
      {
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v52) >> 3);
        if (v22 + 1 > 0x666666666666666)
        {
          goto LABEL_61;
        }

        v23 = 0x999999999999999ALL * ((*(&v53 + 1) - v52) >> 3);
        if (v23 <= v22 + 1)
        {
          v23 = v22 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v53 + 1) - v52) >> 3) >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v23;
        }

        v60 = &v52;
        if (v24)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v24);
        }

        v25 = 40 * v22;
        v57 = 0;
        v58 = v25;
        *(&v59 + 1) = 0;
        v62 = v20;
        v61 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v25 = 3;
        *(v25 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v25 + 16) = 0;
        *(v25 + 16) = v20;
        std::any::reset[abi:ne200100](&v61);
        *&v59 = v25 + 40;
        v26 = &v52[v25 / 8] - v53;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v52, v53, v26);
        v27 = v52;
        v28 = *(&v53 + 1);
        v52 = v26;
        v47 = v59;
        v53 = v59;
        *&v59 = v27;
        *(&v59 + 1) = v28;
        v57 = v27;
        v58 = v27;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v57);
        v21 = v47;
      }

      else
      {
        v58 = v20;
        v57 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v12 = 3;
        *(v12 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v12 + 16) = 0;
        *(v12 + 16) = v20;
        std::any::reset[abi:ne200100](&v57);
        v21 = v12 + 40;
      }

      *&v53 = v21;
      if (v21 < *(&v53 + 1))
      {
        v58 = v6;
        v57 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *v21 = 5;
        *(v21 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *(v21 + 16) = 0;
        *(v21 + 16) = v6;
        std::any::reset[abi:ne200100](&v57);
        v29 = v21 + 40;
        goto LABEL_46;
      }

      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v52) >> 3);
      if (v30 + 1 <= 0x666666666666666)
      {
        v31 = 0x999999999999999ALL * ((*(&v53 + 1) - v52) >> 3);
        if (v31 <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v53 + 1) - v52) >> 3) >= 0x333333333333333)
        {
          v32 = 0x666666666666666;
        }

        else
        {
          v32 = v31;
        }

        v60 = &v52;
        if (v32)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v32);
        }

        v33 = 40 * v30;
        v57 = 0;
        v58 = v33;
        *(&v59 + 1) = 0;
        v62 = v6;
        v61 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *v33 = 5;
        *(v33 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *(v33 + 16) = 0;
        *(v33 + 16) = v6;
        std::any::reset[abi:ne200100](&v61);
        *&v59 = v33 + 40;
        v34 = &v52[v33 / 8] - v53;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v52, v53, v34);
        v35 = v52;
        v36 = *(&v53 + 1);
        v52 = v34;
        v48 = v59;
        v53 = v59;
        *&v59 = v35;
        *(&v59 + 1) = v36;
        v57 = v35;
        v58 = v35;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v57);
        v29 = v48;
LABEL_46:
        *&v53 = v29;
        v37 = *(a1 + 20);
        if (v29 >= *(&v53 + 1))
        {
          v39 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v52) >> 3);
          if (v39 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v40 = 0x999999999999999ALL * ((*(&v53 + 1) - v52) >> 3);
          if (v40 <= v39 + 1)
          {
            v40 = v39 + 1;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*(&v53 + 1) - v52) >> 3) >= 0x333333333333333)
          {
            v41 = 0x666666666666666;
          }

          else
          {
            v41 = v40;
          }

          v60 = &v52;
          if (v41)
          {
            std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v41);
          }

          v42 = 40 * v39;
          v57 = 0;
          v58 = v42;
          *(&v59 + 1) = 0;
          v62 = v37;
          v61 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *v42 = 2;
          *(v42 + 8) = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *(v42 + 16) = 0;
          *(v42 + 16) = v37;
          std::any::reset[abi:ne200100](&v61);
          *&v59 = v42 + 40;
          v43 = &v52[v42 / 8] - v53;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v52, v53, v43);
          v44 = v52;
          v45 = *(&v53 + 1);
          v52 = v43;
          v49 = v59;
          v53 = v59;
          *&v59 = v44;
          *(&v59 + 1) = v45;
          v57 = v44;
          v58 = v44;
          std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v57);
          v38 = v49;
        }

        else
        {
          v58 = v37;
          v57 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *v29 = 2;
          *(v29 + 8) = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *(v29 + 16) = 0;
          *(v29 + 16) = v37;
          std::any::reset[abi:ne200100](&v57);
          v38 = v29 + 40;
        }

        *&v53 = v38;
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

LABEL_61:
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }
  }

  else if (!*(a1 + 200) && DWORD2(v54) == 1819304813)
  {
    if (*(a1 + 21))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_10;
  }
}

void sub_1DE6151C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 120) = &a17;
  std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100]((v18 - 120));
  _Unwind_Resume(a1);
}

void *std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "N4AMCP9DirectionE");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<AMCP::Direction>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "37HALB_CaptureFile_ReferenceStreamState");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<HALB_CaptureFile_ReferenceStreamState>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  v3 = *(result + 16) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v16 = result;
    if (v1 == v2)
    {
      Buffer = 0;
    }

    else
    {
      Buffer = HALB_IOBufferManager_Server::AllocateBuffer(v4 & 0xFFFFFFFC);
      v2 = *v5;
      v3 = *(v5 + 16) - *v5;
    }

    v7 = Buffer + 4 * (v4 >> 2);
    v12 = Buffer;
    v13 = v7;
    v14 = v7;
    v15 = v7;
    if (v4 < v3)
    {
      v8 = *(v5 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v10 = *v5;
      *v5 = v9;
      *(v5 + 8) = v7;
      v11 = *(v5 + 16);
      *(v5 + 16) = v7;
      v14 = v10;
      v15 = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(&v12);
  }

  return result;
}

void sub_1DE615480(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61546CLL);
}

AudioConverterRef *FormatConverter::FormatConverter(AudioConverterRef *a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v4 = AudioConverterNew(a2, a3, a1);
  if (v4)
  {
    v8[0] = HIBYTE(v4);
    v8[1] = BYTE2(v4);
    v8[2] = BYTE1(v4);
    v6 = v4;
    v8[3] = v4;
    v8[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "HALS_IOEngine2_StreamInfo.cpp";
      v11 = 1024;
      v12 = 292;
      v13 = 1024;
      v14 = v6;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOEngine2_StreamInfo::StartIO: couldn't create the format converter, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  return a1;
}

uint64_t std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    HALB_IOBufferManager_Server::FreeBuffer(v4, (*(a1 + 24) - v4) & 0xFFFFFFFC);
  }

  return a1;
}

uint64_t HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(uint64_t this, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = v4 >= a4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && ((v6 = *(a2 + 464), (*(a2 + 52) & 0x20) != 0) ? (v7 = 1) : (v7 = *(a2 + 68)), ((*(a2 + 472) - v6) >> 2) / v7 >= a4))
  {
    v14 = a3 % v4;
    v15 = *(a2 + 64);
    v16 = a3 % v4 + a4;
    v10 = v4 - a3 % v4;
    v17 = a3 % v4 - v4 + a4;
    v18 = v16 > v4;
    if (v16 <= v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = a3 % v4 - v4 + a4;
    }

    if (v18)
    {
      v12 = v17 * v15;
    }

    else
    {
      v12 = 0;
    }

    if (v18)
    {
      v13 = *(a2 + 464);
    }

    else
    {
      v13 = 0;
    }

    if (v18)
    {
      v8 = v10 * v15;
    }

    else
    {
      v10 = a4;
      v8 = v15 * a4;
    }

    v9 = v15 * v14;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *this = v6;
  *(this + 8) = v9;
  *(this + 12) = v8;
  *(this + 16) = v10;
  *(this + 24) = v13;
  *(this + 32) = 0;
  *(this + 36) = v12;
  *(this + 40) = v11;
  return this;
}

uint64_t HALS_IOEngine2_StreamInfo::ApplyDSP(uint64_t a1, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7)
{
  v47 = *MEMORY[0x1E69E9840];
  result = **(a1 + 184);
  if (!result)
  {
    return result;
  }

  result = (*(*result + 16))(result);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 184);
  v40 = *a2;
  v41 = a2[1];
  v42 = a2[2];
  v43 = a2[3];
  v17 = *a4;
  v16 = a4[1];
  v18 = (v16 - *a4) >> 4;
  v19 = *(v15 + 8);
  v20 = *(v15 + 16);
  v21 = 0x2E8BA2E8BA2E8BA3 * ((v20 - v19) >> 3);
  if (v18 != v21)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 299;
      *&buf[18] = 2080;
      *&buf[20] = "inputStreams.size() == mInputChannelData.size()";
LABEL_28:
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

LABEL_29:
    abort();
  }

  v39 = *(v17 + 4);
  v22 = *(v15 + 56);
  if (v16 != v17)
  {
    if (!(v18 >> 60))
    {
      std::allocator<HALS_DSPStreamData>::allocate_at_least[abi:ne200100](v18);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (v21)
  {
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v38;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    else
    {
      v35 = *v38;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 269;
      *&buf[18] = 2080;
      *&buf[20] = "inputStreams.size() == mInputChannelData.size()";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 != v19)
  {
    v23 = 1;
    v24 = 8;
    v25 = (v19 + 40);
    do
    {
      v27 = *v25;
      v25 += 11;
      v26 = v27;
      *v27 = 1;
      v28 = *(v24 - 8);
      v29 = 4 * v28 * *(v24 - 4);
      v30 = *v24;
      v24 += 16;
      v26[2] = v28;
      v26[3] = v29;
      *(v26 + 2) = v30;
      --v23;
    }

    while (v23);
  }

  v31 = *(v15 + 64);
  *v31 = 1;
  *(v31 + 8) = v22;
  *(v31 + 12) = 4 * v22 * v39;
  *(v31 + 16) = a5;
  result = *v15;
  if (*v15)
  {
    *buf = v40;
    *&buf[16] = v41;
    v45 = v42;
    v46 = v43;
    return (*(*result + 96))(result, buf, a3 == 0, a4, v15 + 8, *(v15 + 64), a6, a7);
  }

  return result;
}

uint64_t HALS_IOA2Engine2::_WriteToStream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  result = 560947818;
  if (*a6)
  {
    v8 = *(a3 + 168);
    if (v8)
    {
      v11 = *a6 + *(a6 + 8);
      v12 = *(*(a1 + 808) + 16);
      if (*(a3 + 128) == 1667326771)
      {
        v13 = 4;
      }

      else
      {
        v13 = *(a3 + 144);
      }

      v14 = *(a4 + 144) % v12;
      v15 = a5;
      if (v14 + a5 <= v12)
      {
        v16 = a5;
      }

      else
      {
        v16 = v12 - v14;
      }

      memcpy(&v8[v14 * v13], (*a6 + *(a6 + 8)), v16 * v13);
      if (v15 != v16)
      {
        memcpy(v8, (v11 + v16 * v13), (v15 - v16) * v13);
      }

      v17 = *(*(a1 + 1136) + 2024);
      if (v17 && (v18 = *(a4 + 144) + a5, v18 > *(v17 + 32)))
      {
        result = 0;
        *(v17 + 32) = v18;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t HALS_IOA2Engine2::_EndWriting(HALS_IOA2Engine2 *this, unsigned int a2, unsigned int a3, const HALS_IOEngineInfo *a4)
{
  v4 = *(this + 142);
  v5 = *(v4 + 2024);
  if (v5)
  {
    v6 = *(a4 + 82) + a3;
    if (v6 > *(v5 + 32))
    {
      *(v5 + 32) = v6;
    }
  }

  if (*(this + 1145) == 1)
  {
    HALS_IOA2UCDevice::DoIO((v4 + 1976));
  }

  return 0;
}

void HALS_IOA2Engine2::_ReadFromStream_Read(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v6 = *a6;
  if (*a6)
  {
    v10 = (v6 + *(a6 + 2));
    v11 = *(a4 + 80);
    if (v11 >= 0.0)
    {
      v12 = *(a3 + 168);
      v13 = *(*(a1 + 808) + 16);
      if (*(a3 + 128) == 1667326771)
      {
        v14 = 4;
      }

      else
      {
        v14 = *(a3 + 144);
      }

      v15 = v11 % v13;
      if (v15 + a5 <= v13)
      {
        v16 = a5;
      }

      else
      {
        v16 = v13 - v15;
      }

      memcpy(v10, &v12[v15 * v14], v16 * v14);
      if (a5 != v16)
      {
        memcpy(&v10[v16 * v14], v12, (a5 - v16) * v14);
      }
    }

    else
    {
      bzero((v6 + *(a6 + 2)), a5);
    }

    v17 = *(*(a1 + 1136) + 2024);
    if (v17)
    {
      v18 = *(a4 + 80) + a5;
      if (v18 > *(v17 + 24))
      {
        *(v17 + 24) = v18;
      }
    }
  }
}

uint64_t HALS_IOA2Engine2::_BeginReading(HALS_IOA2Engine2 *this, unsigned int a2, unsigned int a3, const HALS_IOEngineInfo *a4)
{
  if (*(this + 1144) == 1)
  {
    HALS_IOA2UCDevice::DoIO((*(this + 142) + 1976));
  }

  return 0;
}

uint64_t HALS_IOA2Engine2::_FirstIOThreadStarted(HALS_IOA2Engine2 *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v4 = *(this + 142);
  v8 = 0;
  HALB_UCObject::CopyProperty_BOOL((v4 + 1976), @"wants input trap", &v8);
  *(this + 1144) = v8;
  v5 = *(this + 142);
  v9 = 0;
  HALB_UCObject::CopyProperty_BOOL((v5 + 1976), @"wants output trap", &v9);
  *(this + 1145) = v9;
  v6 = *(*(this + 142) + 2024);
  if (v6)
  {
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
  }

  return 0;
}

void HALS_IOA2Engine2::_TellHardwareToStop(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*(*(a1 + 1136) + 1976) + 48))(*(a1 + 1136) + 1976);
  if (a3 == 1)
  {
    if (v6)
    {
      v7 = (*(a1 + 1136) + 1976);
      v8 = 1;
LABEL_6:
      HALS_IOA2UCDevice::StopIOWithFlags(v7, v8);
    }
  }

  else
  {
    v9 = *(a1 + 1136);
    if (v6)
    {
      v7 = (v9 + 1976);
      v8 = 0;
      goto LABEL_6;
    }

    v10 = 1937010544;
    v11 = *(v9 + 1988);
    if (!v11 || *(v9 + 2010) != 1 || (v10 = IOConnectCallMethod(v11, 1u, 0, 0, 0, 0, 0, 0, 0, 0), v10))
    {
      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return;
      }

      v14 = *(v12 + 8);
      v15 = (v10 << 32) | 0x501;
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v16 + 16) = 0;
      *(v16 + 20) = 16;
      *(v16 + 24) = "HALS_IOA2UCDevice.cpp";
      *(v16 + 32) = v15;
      *v16 = &unk_1F5963848;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v14, v16);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  v17 = atomic_load((a1 + 1112));
  if (a3 != 2 && v17 == 2)
  {
    if (*(a1 + 808))
    {
      v18 = *(a2 + 16);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZN14HALS_IOEngine239ClearOutputStreamsUsedOnlyByThisContextEj_block_invoke;
      v20[3] = &__block_descriptor_tmp_23_13475;
      v20[4] = a1;
      v21 = v18;
      v19 = (*(*a1 + 64))(a1);
      HALB_CommandGate::ExecuteCommand(v19, v20);
    }
  }
}

caulk::rt_safe_memory_resource *HALS_IOA2Engine2::_TellHardwareToStart(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!(*(*(*(a1 + 1136) + 1976) + 48))(*(a1 + 1136) + 1976, a2))
  {
    if (a4)
    {
      a4 = 1937010544;
      v8 = *(a1 + 1136);
      v9 = *(v8 + 1988);
      if (!v9 || *(v8 + 2010) != 1 || (a4 = IOConnectCallMethod(v9, 0, 0, 0, 0, 0, 0, 0, 0, 0), a4))
      {
        v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        result = *MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 8);
        v14 = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v14 + 16) = 0;
        *(v14 + 20) = 16;
        *(v14 + 24) = "HALS_IOA2UCDevice.cpp";
        *(v14 + 32) = (a4 << 32) | 0x4ED;
        *v14 = &unk_1F5963798;
        *(v14 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v13, v14);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }

    return a4;
  }

  v7 = (*(a1 + 1136) + 1976);

  return HALS_IOA2UCDevice::StartIOWithFlags(v7, a3 == 1);
}

void HALS_IOA2Engine2::TimelineWasReset(HALS_IOA2Engine2 *this, int a2, int a3)
{
  HALS_IOEngine2::TimelineWasReset(this, a2, a3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN16HALS_IOA2Engine216TimelineWasResetEjj_block_invoke;
  v5[3] = &__block_descriptor_tmp_14101;
  v5[4] = this;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v5);
}

uint64_t ___ZN16HALS_IOA2Engine216TimelineWasResetEjj_block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 1136) + 2024);
  if (v1)
  {
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t HALS_IOA2Engine2::GetZeroTimeStamp(HALS_IOA2Engine2 *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(*(this + 142) + 2024);
  if (!v5)
  {
    return 1937010544;
  }

  v6 = v5[2];
  v7 = v5[1];
  result = 0;
  *a3 = *v5;
  *a4 = v7;
  *a5 = v6;
  return result;
}

void HALS_IOA2Engine2::~HALS_IOA2Engine2(HALS_IOA2Engine2 *this)
{
  HALS_IOEngine2::~HALS_IOEngine2(this);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toAMCP::Meta::Driver::~Driver(AMCP::Meta::Driver *this)
{
  AMCP::Meta::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Meta::Driver::~Driver((this - 24));
}

void AMCP::Meta::Driver::~Driver(AMCP::Meta::Driver *this)
{
  *this = &unk_1F5983C38;
  *(this + 3) = &unk_1F5983C60;
  v2 = (this + 56);
  if (*(this + 7))
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 7);
    operator delete(*v2);
  }

  *(this + 3) = &unk_1F59748E8;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  AMCP::Meta::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Meta::Driver::shutdown(AMCP::Meta::Driver *this)
{
  v1 = this;
  v24 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "Meta_Driver_Core.cpp";
        v22 = 1024;
        v23 = 33;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Tearing down Meta Driver", &v20, 0x12u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136315394;
        v21 = "Meta_Driver_Core.cpp";
        v22 = 1024;
        v23 = 33;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Meta Driver", &v20, 0x12u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "Meta_Driver_Core.cpp";
        v22 = 1024;
        v23 = 33;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](v1 + 7);
  AMCP::Core::Broker::destroy_core(*(*(v1 + 4) + 16), *(v1 + 12));
}

void sub_1DE6166E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::dynamic_pointer_cast[abi:ne200100]<AMCP::Meta::Driver,AMCP::Core::Driver>(void **a1, void **a2)
{
  result = *a2;
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[365];
}

uint64_t std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[367];
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(unsigned int)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        AMCP::swap(v10, a3, a3);
        if (v11)
        {
          v11(0, v10, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](a3, a2);
    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Driver10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  operator new();
}

void sub_1DE616C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v14 - 72);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Driver10build_coreEvENK3$_1clEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v53 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
    }

    v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v56 = *v55;
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    else
    {
      v56 = *v55;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v57 = 136315650;
      *&v57[4] = "Meta_Driver_Core.cpp";
      v58 = 1024;
      v59 = 107;
      v60 = 2080;
      v61 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v56, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", v57, 0x1Cu);
    }

    abort();
  }

  v3 = **(a1 + 40);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  if (v5 != v4)
  {
    while (*(*v5 + 40) != **(a1 + 48))
    {
      v5 += 2;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = *(*(*v5 + 8) + 32);
    v7 = *(*v5 + 168);
    std::__shared_mutex_base::lock((v6 + 1400));
    if (*(v6 + 1568) == 1)
    {
      v8 = *(v6 + 1576);
      v9 = *(v6 + 1584);
      if (v8 != v9)
      {
        v10 = -v8;
        while (1)
        {
          v11 = *(v8 + 16);
          if (AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>::find(*(v8 + 8), v11, v7))
          {
            break;
          }

          v8 += 40;
          v10 -= 40;
          if (v8 == v9)
          {
            goto LABEL_26;
          }
        }

        v13 = v12;
        if (v12 + 5 != v11)
        {
          do
          {
            v14 = v13 + 5;
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,0ul,1ul>(v13, v13 + 5);
            v15 = v13 + 10;
            v13 += 5;
          }

          while (v15 != v11);
          v11 = *(v8 + 16);
          v13 = v14;
        }

        for (; v11 != v13; v11 -= 5)
        {
          std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100]((v11 - 4));
        }

        *(v8 + 16) = v13;
        if (*(v8 + 8) == v13)
        {
          v16 = *(v6 + 1584);
          if (v8 + 40 != v16)
          {
            v17 = *(v6 + 1576);
            v18 = -v17;
            v19 = v17 - v10;
            do
            {
              v20 = v19 + v18;
              *v20 = *(v19 + v18 + 40);
              v21 = *(v19 + v18 + 8);
              *(v20 + 8) = *(v19 + v18 + 48);
              *(v20 + 48) = v21;
              v22 = *(v19 + v18 + 24);
              *(v20 + 24) = *(v19 + v18 + 64);
              *(v20 + 64) = v22;
              v19 += 40;
              v8 = v19 + v18;
            }

            while (v19 + v18 + 40 != v16);
            v16 = *(v6 + 1584);
          }

          if (v16 != v8)
          {
            do
            {
              v23 = v16 - 40;
              *v57 = v16 - 32;
              std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](v57);
              v16 = v23;
            }

            while (v23 != v8);
          }

          *(v6 + 1584) = v8;
        }
      }
    }

LABEL_26:
    std::__shared_mutex_base::unlock((v6 + 1400));
    v25 = *v5;
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      v24 = AMCP::Log::AMCP_Scope_Registry::initialize(v24);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v27 + 16);
    switch(v29)
    {
      case 3:
        v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v38 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          v41 = *v40;
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        else
        {
          v41 = *v40;
        }

        if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v43 = *(v25 + 40);
        *v57 = 136315650;
        *&v57[4] = "Meta_Device_Core.cpp";
        v58 = 1024;
        v59 = 56;
        v60 = 1024;
        LODWORD(v61) = v43;
        v44 = v41;
        v45 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v34 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *v36;
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        else
        {
          v37 = *v36;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(v25 + 40);
          *v57 = 136315650;
          *&v57[4] = "Meta_Device_Core.cpp";
          v58 = 1024;
          v59 = 56;
          v60 = 1024;
          LODWORD(v61) = v42;
          _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Device with object id %u", v57, 0x18u);
        }

        goto LABEL_55;
      case 1:
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *v32;
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        else
        {
          v33 = *v32;
        }

        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          AMCP::Core::Broker::destroy_core(*(*(v25 + 8) + 16), *(v25 + 40));
          v47 = *(v3 + 64);
          if (v5 + 2 != v47)
          {
            do
            {
              v48 = *(v5 + 1);
              v5[2] = 0;
              v5[3] = 0;
              v49 = v5[1];
              *v5 = v48;
              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              v50 = v5 + 2;
              v51 = v5 + 4;
              v5 += 2;
            }

            while (v51 != v47);
            v47 = *(v3 + 64);
            v5 = v50;
          }

          while (v47 != v5)
          {
            v52 = *(v47 - 1);
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v47 -= 2;
          }

          *(v3 + 64) = v5;
          return;
        }

        v46 = *(v25 + 40);
        *v57 = 136315650;
        *&v57[4] = "Meta_Device_Core.cpp";
        v58 = 1024;
        v59 = 56;
        v60 = 1024;
        LODWORD(v61) = v46;
        v44 = v33;
        v45 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_55;
    }

    _os_log_impl(&dword_1DE1F9000, v44, v45, "%32s:%-5d Tearing down Device with object id %u", v57, 0x18u);
    goto LABEL_55;
  }
}

void sub_1DE617284(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5983E38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5983DC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983DC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983DC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Driver10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v3 = 0;
  operator new();
}

void sub_1DE617970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 - 88);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Driver10build_coreEvENK3$_0clERK28Aggregate_Device_DescriptioniEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (is_valid)
  {
    v3 = *(**(a1 + 40) + 32);
    if (*(&v3 + 1))
    {
      atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "Meta_Driver_Core.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 91;
    v9 = 2080;
    v10 = "expiration_check.is_valid()";
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
  }

  abort();
}