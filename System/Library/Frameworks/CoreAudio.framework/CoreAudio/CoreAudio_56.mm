void sub_1DE643000(_Unwind_Exception *exception_object, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v55, a2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6427F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE6431CC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE6431D4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE6431F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(v2 - 200);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1DE6431B4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE64320C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE64307CLL);
  }

  JUMPOUT(0x1DE6431B4);
}

void sub_1DE643218(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE64307CLL);
  }

  JUMPOUT(0x1DE643264);
}

void sub_1DE643230(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v38 - 192), 0);
    if (a32 < 0)
    {
      operator delete(a27);
    }

    if (a38 < 0)
    {
      operator delete(a33);
    }

    v40 = __cxa_begin_catch(a1);
    v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v41 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v40);
    }

    v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v44 = *v43;
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    else
    {
      v44 = *v43;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *(v38 - 208) = 136315394;
      *(v38 - 196) = 1024;
      _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Initialize/create encountered an unknown error.", (v38 - 208), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE642FA4);
  }

  JUMPOUT(0x1DE64307CLL);
}

void sub_1DE64324C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE643254);
  }

  JUMPOUT(0x1DE64307CLL);
}

void HALS_IOContextHostedDSP::Remove(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, uint64_t a3, int a4, int a5, HALS_MutationChangeSynchronizer *a6, HALS_MutationChangeSynchronizer *a7)
{
  v11[0] = 0;
  v11[1] = 0;
  v7 = v8;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = v11;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (a6)
  {
    v7 = a6;
  }

  v15 = a4;
  v16 = a5;
  HALS_IOContextHostedDSP::Remove_Internal(this, a2, a3, v7);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(v8);
}

uint64_t HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, uint64_t a3, HALS_MutationChangeSynchronizer *a4)
{
  result = HALS_IOContextHostedDSP::Negotiate_Internal(this, a2, a3, a4, 0);
  if (result != 1685286515)
  {
    HALS_IOContextDescription::HostedDSPDescription::ResetRequests((a2 + 296));
    v9 = this;
    *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_0>;
    *(&v11 + 1) = &v9;
    VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), &v11);
    v7[1] = a2;
    v8 = this;
    v7[0] = &unk_1F5987768;
    v10[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_1>;
    v10[1] = &v8;
    *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    *(&v11 + 1) = v10;
    return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), &v11, v7);
  }

  return result;
}

uint64_t HALS_IOContextHostedDSP::Negotiate_Internal(_BYTE *a1, uint64_t *a2, int a3, uint64_t a4, char a5)
{
  v24[0] = a5 & 1;
  v25 = xmmword_1DE758180;
  v22[0] = a5 & 1;
  v10 = 1685286515;
  v23 = xmmword_1DE758190;
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;
  v18 = 0;
  v17 = 0;
  v19 = v24;
  LODWORD(v20) = a3;
  v21 = a1;
  v26 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>;
  v27 = &v13;
  *&v28 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v28 + 1) = &v26;
  VisitableVector<HALS_IOStreamInfo>::apply<>(a2[7], a2[8], &v28);
  if (!(DWORD1(v25) | HIDWORD(v25)))
  {
    HIDWORD(v25) = 1685286515;
  }

  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;
  v18 = 0;
  v17 = 0;
  v19 = v22;
  v20 = a1;
  LODWORD(v21) = a3;
  v26 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>;
  v27 = &v13;
  *&v28 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v28 + 1) = &v26;
  VisitableVector<HALS_IOStackDescription>::apply<>(a2[10], a2[11], &v28);
  if (!(DWORD1(v23) | HIDWORD(v23)))
  {
    HIDWORD(v23) = 1685286515;
  }

  v11 = 0;
  v13 = v24;
  v14 = v22;
  do
  {
    if (*((&v13)[v11] + 4) != 1685286515 && (v10 == 1685286515 || !v10))
    {
      v10 = *((&v13)[v11] + 4);
    }

    ++v11;
  }

  while (v11 != 2);
  return v10;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_1>(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  *(a6 + 464) = 0;
  if (*(a6 + 108))
  {
    v7 = *(a6 + 112);
    if (*(a6 + 120) != v7 && v7 != 0)
    {
      v9 = *(v7 + 96);
      if (v9 != *(a6 + 12))
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
          v15 = 136315650;
          v16 = "HALS_IOContextHostedDSP.cpp";
          v17 = 1024;
          v18 = 1428;
          v19 = 2080;
          v20 = "kDeviceStreamIndex == ioStreamInfo.mStreamIndex";
          _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Primary DSP engine and stream device indicies do not match!", &v15, 0x1Cu);
        }

        abort();
      }

      HALS_IOContextHostedDSP::HostedDSPList::remove_at(*v6, (*(v7 + 8) << 32) | 0x6F757470, v9);
    }
  }

  return 0;
}

void sub_1DE6437B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6436D0);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Remove_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &)::$_0>(uint64_t ***a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  *(v3 + 464) = 0;
  if (*(v3 + 108))
  {
    v4 = *(v3 + 112);
    if (*(v3 + 120) != v4 && v4 != 0)
    {
      v6 = *(v4 + 96);
      if (v6 != *(v3 + 12))
      {
        v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v8 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315650;
          v13 = "HALS_IOContextHostedDSP.cpp";
          v14 = 1024;
          v15 = 1412;
          v16 = 2080;
          v17 = "kDeviceStreamIndex == item.m_item.mStreamIndex";
          _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Primary DSP engine and stream device indicies do not match!", &v12, 0x1Cu);
        }

        abort();
      }

      HALS_IOContextHostedDSP::HostedDSPList::remove_at(*v2, (*(v4 + 8) << 32) | 0x696E7074, v6);
    }
  }

  return 0;
}

void sub_1DE643924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE64383CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  result = HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(*a1, *(*a1 + 32), *(*a1 + 40), a6, *(*a1 + 48));
  *(*(v6 + 32) + 16) = result;
  return result;
}

uint64_t HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = 1685286515;
  v11 = *(a2 + 4);
  NumberActiveStreams = HALS_IOContextDescription::GetNumberActiveStreams(*(a1 + 8), v11 == 1768845428);
  if (*a2 == 1 && NumberActiveStreams == 0)
  {
    return 1685286515;
  }

  v14 = *(a4 + 112);
  if (*(a4 + 120) == v14 || v14 == 0)
  {
    return 1685286515;
  }

  v17 = *(a4 + 108);
  v18 = *(a2 + 12);
  if (v17)
  {
    ++v18;
  }

  *(a2 + 12) = v18;
  if (!v17)
  {
    return v10;
  }

  v19 = *a3;
  v20 = a3[1];
  if (*a3 == v20)
  {
    return v10;
  }

  v21 = *(v14 + 8);
  v22 = *(v14 + 96);
  v23 = *a3;
  while (*v23 != v11 || v23[1] != v21 || v23[2] != v22)
  {
    v23 += 6;
    if (v23 == v20)
    {
      return v10;
    }
  }

  if (v20 == v23)
  {
    return v10;
  }

  LOWORD(v29[0]) = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29[1] = v30;
  v31 = 0u;
  *__p = 0u;
  v33 = 0u;
  ++*(a2 + 8);
  while (*v19 != v11 || v19[1] != v21 || v19[2] != v22)
  {
    v19 += 6;
    if (v19 == v20)
    {
      goto LABEL_28;
    }
  }

  if (v20 == v19 || (v26 = *(v19 + 2)) == 0)
  {
LABEL_28:
    HALS_MutationChangeSynchronizer::SetItinerary(*(a1 + 16), v29);
    v25 = 0;
    v16 = 1685286515;
    goto LABEL_29;
  }

  v16 = HALS_IOContextHostedDSP::DSPStreamInstance::Negotiate_NP(*(v19 + 2), (a4 + 112), a5, *(a1 + 24), v29);
  v10 = 1685283698;
  if (v16 == 1685283698)
  {
    v25 = 0;
    v16 = 0;
  }

  else
  {
    if ((*(a1 + 24) & 4) == 0 && *(a2 + 4) == 1768845428)
    {
      HALS_IOContextHostedDSP::UpdateDSPReferenceRequestInDescription((v26 + 544), v29, *(a1 + 8), v27);
    }

    if (v16)
    {
      v25 = 1;
      v10 = v16;
    }

    else
    {
      HALS_MutationChangeSynchronizer::SetItinerary(*(a1 + 16), v29);
      v10 = 0;
      v25 = 1;
    }
  }

LABEL_29:
  if (__p[1])
  {
    *&v33 = __p[1];
    operator delete(__p[1]);
  }

  v28 = &v31;
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v28);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v30[0]);
  if (v25)
  {
    return v10;
  }

  return v16;
}

void sub_1DE643BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf, __int128 a12, __int128 a13, __int128 a14, __int128 a15)
{
  if (a2)
  {
    MutationItinerary::~MutationItinerary(&buf);
    v17 = __cxa_begin_catch(exception_object);
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
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

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315651;
      *(&buf + 4) = "HALS_IOContextHostedDSP.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 1178;
      WORD1(a12) = 2081;
      *(&a12 + 4) = "[hal_dsp] Negotiate_Internal encountered an unknown error.";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d %{private}s", &buf, 0x1Cu);
    }

    v22 = *(v15 + 16);
    *&buf = 0;
    a12 = 0u;
    *(&buf + 1) = &a12;
    a13 = 0u;
    a14 = 0u;
    a15 = 0u;
    HALS_MutationChangeSynchronizer::SetItinerary(v22, &buf);
    MutationItinerary::~MutationItinerary(&buf);
    __cxa_end_catch();
    JUMPOUT(0x1DE643A70);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContextHostedDSP::UpdateDSPReferenceRequestInDescription(CFTypeRef *this, const __CFString ***a2, const MutationItinerary *a3, HALS_IOContextDescription *a4)
{
  v30 = 0;
  MutationItinerary::AreChangesReconciled(a2, this, &v30);
  v6 = v30;
  std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](&v28, a2 + 1);
  v8 = *(a3 + 37);
  v7 = *(a3 + 38);
  if (v7 != v8)
  {
    do
    {
      v9 = v7 - 16;
      std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v7 - 8));
      v7 = v9;
    }

    while (v9 != v8);
  }

  *(a3 + 38) = v8;
  if (v29[1])
  {
    v10 = v28;
    if (v28 != v29)
    {
      v11 = ((v6 >> 2) & 1) == 0;
      do
      {
        LOBYTE(v31) = *(v10 + 40);
        HIDWORD(v31) = v11;
        v12 = v10[4];
        if (v12)
        {
          CFRetain(v10[4]);
        }

        cf = v12;
        v14 = *(a3 + 38);
        v13 = *(a3 + 39);
        if (v14 >= v13)
        {
          v15 = *(a3 + 37);
          v16 = (v14 - v15) >> 4;
          v17 = v16 + 1;
          if ((v16 + 1) >> 60)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = v13 - v15;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = (16 * v16);
          *v20 = v31;
          v20[1] = v12;
          cf = 0;
          v21 = &v20[-2 * ((v14 - v15) >> 4)];
          if (v15 != v14)
          {
            v22 = v15;
            v23 = &v20[-2 * ((v14 - v15) >> 4)];
            do
            {
              *v23 = *v22;
              v23[1] = v22[1];
              v22[1] = 0;
              v22 += 2;
              v23 += 2;
            }

            while (v22 != v14);
            do
            {
              std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(v15[1]);
              v15 += 2;
            }

            while (v15 != v14);
            v15 = *(a3 + 37);
          }

          *(a3 + 37) = v21;
          *(a3 + 38) = v20 + 2;
          *(a3 + 39) = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v24 = cf;
          *(a3 + 38) = v20 + 2;
          if (v24)
          {
            CFRelease(v24);
          }
        }

        else
        {
          *v14 = v31;
          *(v14 + 1) = v12;
          *(a3 + 38) = v14 + 16;
        }

        v25 = v10[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v10[2];
            v27 = *v26 == v10;
            v10 = v26;
          }

          while (!v27);
        }

        v10 = v26;
      }

      while (v26 != v29);
    }
  }

  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v29[0]);
}

void sub_1DE643F8C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest::~ReferenceStreamRequest(va);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(a7);
  _Unwind_Resume(a1);
}

void *std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](void *a1, const __CFString ***a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = a1[1];
      if (*a1 == v3)
      {
        v8 = v3;
        if (!v6)
        {
LABEL_9:
          v14 = v3;
LABEL_14:
          operator new();
        }
      }

      else
      {
        v7 = v3;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = *(v6 + 8);
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v8[4], v5 + 4) < 2)
        {
          v10 = std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>(a1, &v14, v5 + 4);
          goto LABEL_13;
        }

        if (!*v3)
        {
          goto LABEL_9;
        }
      }

      v14 = v8;
      v10 = v8 + 1;
LABEL_13:
      if (!*v10)
      {
        goto LABEL_14;
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }

  return a1;
}

const __CFString **std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>(uint64_t a1, const __CFString ***a2, const __CFString **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a3, &v4[1]) < 2)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7[4], a3) < 2)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  result = HALS_IOContextHostedDSP::Negotiate_Internal(HALS_IOContextDescription &,unsigned int,HALS_MutationChangeSynchronizer &,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(*a1, *(*a1 + 32), *(*a1 + 48), a3, *(*a1 + 40));
  *(*(v3 + 32) + 16) = result;
  return result;
}

uint64_t HALS_IOContextHostedDSP::util_Negotiate_WithFlags(_BYTE *a1, uint64_t *a2, int a3, char a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = v19;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v8 = HALS_IOContextHostedDSP::Negotiate_Internal(a1, a2, a3, v16, a4);
  v9 = v8;
  if (v8 == 1685287013)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextHostedDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1033;
      _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Attempting to negotiate 'bypass' with hosted DSP.", buf, 0x12u);
    }

    v14 = HALS_IOContextHostedDSP::Negotiate_Internal(a1, a2, a3, v16, a4 | 4u);
    *buf = 0;
    *&buf[16] = 0u;
    v26 = 0u;
    *&buf[8] = &buf[16];
    v27 = 0u;
    v28 = 0u;
    HALS_MutationChangeSynchronizer::SetItinerary(v16, buf);
    if (v14)
    {
      v9 = v14;
    }

    else
    {
      v9 = 1685283449;
    }

    if (*(&v27 + 1))
    {
      *&v28 = *(&v27 + 1);
      operator delete(*(&v27 + 1));
    }

    v24 = &v26;
    std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v24);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  }

  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(v16);
  return v9;
}

void sub_1DE64440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextHostedDSP::Adapt(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, uint64_t a3, HALS_MutationChangeSynchronizer *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v26 = 0;
  v22[0] = &v27;
  v22[1] = &v26;
  v23 = 1;
  v24 = a3;
  v25 = this;
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_0>;
  *&buf[8] = v22;
  active = VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), buf);
  if (!v27 || (v9 = active, !active))
  {
    *buf = &v27;
    *&buf[8] = &v26;
    *&buf[16] = 1;
    v32 = this;
    v33 = a3;
    v21[0] = &unk_1F5987768;
    v21[1] = a2;
    v28[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_1>;
    v28[1] = buf;
    v29[0] = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
    v29[1] = v28;
    active = VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), v29, v21);
    v9 = active;
  }

  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(active);
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
    *buf = 136315650;
    *&buf[4] = "HALS_IOContextHostedDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1368;
    *&buf[18] = 1024;
    v31 = v27;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] %u streams with DSP adapted.", buf, 0x18u);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
LABEL_11:
    if (a4 && v9 == 1685287013)
    {
      HALS_IOContextHostedDSP::Remove_Internal(this, a2, a3, a4);
      return 1685287013;
    }

    return v9;
  }

  if (v26 != 1)
  {
    return 0;
  }

  v14 = *this;
  v15 = *(this + 1);
  if (*this == v15)
  {
LABEL_24:
    v19 = 0;
  }

  else
  {
    v16 = *this;
    do
    {
      if (*v16 == 1768845428)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v19 = *(v17 + 312);
          goto LABEL_28;
        }
      }

      v16 += 24;
    }

    while (v16 != v15);
    while (1)
    {
      if (*v14 == 1869968496)
      {
        v18 = *(v14 + 16);
        if (v18)
        {
          break;
        }
      }

      v14 += 24;
      if (v14 == v15)
      {
        goto LABEL_24;
      }
    }

    v19 = *(v18 + 312);
  }

LABEL_28:
  *(a2 + 120) = v19;
  *(a2 + 484) = 1;
  *buf = &unk_1F5987AB0;
  *&buf[8] = v19;
  v32 = buf;
  HALS_IOContextDescription::DiscoverDSPStreams(a2, buf);
  std::__function::__value_func<void ()(HALS_DSPStream *)>::~__value_func[abi:ne200100](buf);
  return 1685285985;
}

uint64_t HALS_IOContextHostedDSP::Adapt_Internal(HALS_IOContextDescription &,unsigned int,HALS_IOContextHostedDSP::DSPStreamInstance::RequestFlags)::$_2::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2, int a3, uint64_t a4, int a5)
{
  v113[3] = *MEMORY[0x1E69E9840];
  if (!*(a4 + 108))
  {
    return 0;
  }

  v6 = *(a4 + 112);
  v7 = (a4 + 112);
  v8 = *(a4 + 120) == v6 || v6 == 0;
  if (v8)
  {
    v9 = 1685287013;
LABEL_28:
    *(a4 + 464) = 0;
    return v9;
  }

  v11 = a1;
  v9 = 1685287013;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = *(v6 + 8);
    v15 = *(v6 + 96);
    while (*v12 != a3 || *(v12 + 4) != v14 || *(v12 + 8) != v15)
    {
      v12 += 24;
      if (v12 == v13)
      {
        goto LABEL_28;
      }
    }
  }

  if (v13 == v12)
  {
    goto LABEL_28;
  }

  v16 = *(v12 + 16);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(a1 + 4);
  v99 = v17;
  v18 = 1685287013;
  if (v17)
  {
    v19 = *(a4 + 176);
    if (v19)
    {
      v20 = a4 + 176;
      do
      {
        v21 = *(v19 + 28);
        v22 = v21 >= 9;
        v23 = v21 < 9;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v23);
      }

      while (v19);
      if (v20 != a4 + 176 && *(v20 + 28) <= 9u)
      {
        DSP_Host_Types::AdaptRequest::AdaptRequest(v108, (v16 + 544));
        HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass(v16, v108);
      }
    }

    if ((*(v16 + 1240) & 1) == 0)
    {
      v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v37 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v40 = *v39;
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        v40 = *v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *v108 = 136315394;
        *&v108[4] = "HALS_IOContextHostedDSP.cpp";
        *&v108[12] = 1024;
        *&v108[14] = 335;
        _os_log_debug_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, previous negotiate failed or was never performed.", v108, 0x12u);
      }

      DSP_Host_Types::AdaptRequest::AdaptRequest(v108, (v16 + 544));
      HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass(v16, v108);
    }

    v25 = v16 + 648;
    v26 = *(v16 + 648);
    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = v16 + 648;
    do
    {
      if (*(v26 + 28))
      {
        v27 = v26;
      }

      v26 = *(v26 + 8 * (*(v26 + 28) == 0));
    }

    while (v26);
    if (v27 == v25 || *(v27 + 28) >= 2u)
    {
LABEL_38:
      v27 = v16 + 648;
    }

    v8 = v25 == v27;
    v28 = (v17 >> 2) & 1;
    if (!v8)
    {
      v28 = 1;
    }

    if (v28)
    {
      v29 = 4;
    }

    else
    {
      v29 = 0;
    }

    LOBYTE(v99) = v29 | v17 & 0xFB;
    HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(buf, *(v16 + 12), 0, (a4 + 112), a5, &v99);
    DSP_Host_Types::AdaptRequest::AdaptRequest(v108, buf);
    *buf = &unk_1F598DC40;
    v91.__r_.__value_.__r.__words[0] = v107;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v91);
    DSP_Host_Types::IOContextDescription::~IOContextDescription(v106);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v105);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&p_data + 4));
    *buf = &unk_1F598DC90;
    if (buf[16] == 1 && *&buf[8])
    {
      CFRelease(*&buf[8]);
    }

    v30 = DSP_Host_Types::ConfigurationChangeRequest::util_compare_request((v16 + 544), v108, 0);
    v31 = MutationItinerary::AreChangesReconciled((v16 + 1240), v108, (v16 + 1320));
    if (!v31)
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v31);
      }

      v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *v43;
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      else
      {
        v44 = *v43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        MutationItinerary::util_ChangeBitmaskToString(&v91, *(v16 + 1320));
        v80 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
        v88 = v91.__r_.__value_.__r.__words[0];
        DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(v97, v30);
        v81 = &v91;
        if (v80 < 0)
        {
          v81 = v88;
        }

        if (v98 >= 0)
        {
          v82 = v97;
        }

        else
        {
          v82 = v97[0];
        }

        *buf = 136315906;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 359;
        v101 = 2080;
        p_data = &v81->__r_.__value_.__l.__data_;
        v103 = 2080;
        v104 = v82;
        _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, changes are incomplete (%s) or incompatible (%s).", buf, 0x26u);
        if (v98 < 0)
        {
          operator delete(v97[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }
      }

      HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass(v16, v108);
    }

    v32 = DSP_Host_Types::ConfigurationChangeRequest::hash_equal((v16 + 1328), v108);
    if (v32)
    {
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v32);
      }

      v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *v35;
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v36 = *v35;
      }

      v18 = 1685287789;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 369;
        _os_log_debug_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing adapt, request is identical.", buf, 0x12u);
      }
    }

    else
    {
      v45 = (*(**(v16 + 136) + 32))(&v91);
      v46 = v96;
      if (v96)
      {
        DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(buf);
        *buf = &unk_1F598AC58;
        DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v16 + 1328, buf);
        *buf = &unk_1F598DC40;
        v97[0] = v107;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](v97);
        DSP_Host_Types::IOContextDescription::~IOContextDescription(v106);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v105);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&p_data + 4));
        *buf = &unk_1F598DC90;
        if (buf[16] == 1)
        {
          v47 = *&buf[8];
          if (*&buf[8])
          {
            CFRelease(*&buf[8]);
          }
        }

        *(v16 + 312) = 0;
        v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v48 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v47);
        }

        v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          v51 = *v50;
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        else
        {
          v51 = *v50;
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v56.i32[0] = bswap32(v46);
          v83 = vzip1_s8(v56, v56);
          v84.i64[0] = 0x1F0000001FLL;
          v84.i64[1] = 0x1F0000001FLL;
          v85.i64[0] = 0x5F0000005FLL;
          v85.i64[1] = 0x5F0000005FLL;
          v86 = vbsl_s8(vmovn_s32(vcgtq_u32(v85, vsraq_n_s32(v84, vshlq_n_s32(vmovl_u16(v83), 0x18uLL), 0x18uLL))), v83, 0x2E002E002E002ELL);
          v98 = 4;
          LODWORD(v97[0]) = vuzp1_s8(v86, v86).u32[0];
          BYTE4(v97[0]) = 0;
          DSP_Host_Types::ConfigurationChangeRequest::debug_device_list(v89, v108);
          if (v90 >= 0)
          {
            v87 = v89;
          }

          else
          {
            v87 = v89[0];
          }

          *buf = 136315906;
          *&buf[4] = "HALS_IOContextHostedDSP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 409;
          v101 = 2080;
          p_data = v97;
          v103 = 2080;
          v104 = v87;
          _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Adapt_NP : DSP was unable to Adapt to IO configuration (%s) using %s.", buf, 0x26u);
          if (v90 < 0)
          {
            operator delete(v89[0]);
          }

          if (v98 < 0)
          {
            operator delete(v97[0]);
          }
        }

        HALS_IOContextHostedDSP::DSPStreamInstance::MaybeConfigureHALBypass(v16, v108);
      }

      v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v52 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v45);
      }

      v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        v55 = *v54;
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      else
      {
        v55 = *v54;
      }

      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 381;
        _os_log_debug_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Adapt allowed, and succeeded.", buf, 0x12u);
      }

      v57 = *(v16 + 376);
      *(v16 + 368) = 0;
      *(v16 + 376) = 0;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(v16 + 1328, v108);
      v58 = *(v16 + 312);
      if (v93)
      {
        v59 = v92[4];
      }

      else
      {
        v59 = 0;
      }

      *(v16 + 312) = v59;
      if ((*(v16 + 1772) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v60 = HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(v16, *(v16 + 1768), 1);
      if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(v60))
      {
        HALS_IOContextHostedDSP::DSPStreamInstance::ConfigureCaptureFiles(v16, v7, v99);
      }

      v61 = *(v16 + 176);
      if (v61)
      {
        std::function<void ()>::operator()(v61, *(v16 + 316));
      }

      if (v58 == v59)
      {
        v18 = 0;
      }

      else
      {
        v18 = 1685285985;
      }

      v91.__r_.__value_.__r.__words[0] = &unk_1F598EAC8;
      if (__p)
      {
        v95 = __p;
        operator delete(__p);
      }

      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v92);
      v91.__r_.__value_.__r.__words[0] = &unk_1F598EB08;
      if (v91.__r_.__value_.__s.__data_[16] == 1 && v91.__r_.__value_.__l.__size_)
      {
        CFRelease(v91.__r_.__value_.__l.__size_);
      }
    }

    *v108 = &unk_1F598DC40;
    *buf = v113;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
    DSP_Host_Types::IOContextDescription::~IOContextDescription(&v112);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v111);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((&v110 + 4));
    *v108 = &unk_1F598DC90;
    if (v108[16] == 1)
    {
      a1 = *&v108[8];
      if (*&v108[8])
      {
        CFRelease(*&v108[8]);
      }
    }
  }

  v62 = v16 + 648;
  v63 = *(v16 + 648);
  if (!v63)
  {
    goto LABEL_125;
  }

  v64 = v16 + 648;
  v65 = *(v16 + 648);
  do
  {
    if (*(v65 + 28))
    {
      v64 = v65;
    }

    v65 = *(v65 + 8 * (*(v65 + 28) == 0));
  }

  while (v65);
  if (v64 != v62 && *(v64 + 28) < 2u)
  {
    v66 = 1;
    goto LABEL_127;
  }

  v67 = v16 + 648;
  do
  {
    v68 = *(v63 + 28);
    v22 = v68 >= 9;
    v69 = v68 < 9;
    if (v22)
    {
      v67 = v63;
    }

    v63 = *(v63 + 8 * v69);
  }

  while (v63);
  if (v67 == v62 || *(v67 + 28) >= 0xAu)
  {
LABEL_125:
    v67 = v16 + 648;
  }

  v66 = v62 != v67;
LABEL_127:
  if (!v18 || v18 == 1685285985 || v18 == 1685287789)
  {
    **(v11 + 1) |= v18 == 1685285985;
    ++**v11;
    v70 = 1;
    *(a4 + 464) = 1;
    v9 = 0;
    *(a4 + 160) = *(v16 + 312);
    *(a4 + 164) = 1;
  }

  else
  {
    v71 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v71 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v73 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v72 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v74 = *v73;
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    else
    {
      v74 = *v73;
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v75.i32[0] = bswap32(v18);
      v76 = vzip1_s8(v75, v75);
      v77.i64[0] = 0x1F0000001FLL;
      v77.i64[1] = 0x1F0000001FLL;
      v78.i64[0] = 0x5F0000005FLL;
      v78.i64[1] = 0x5F0000005FLL;
      v79 = vbsl_s8(vmovn_s32(vcgtq_u32(v78, vsraq_n_s32(v77, vshlq_n_s32(vmovl_u16(v76), 0x18uLL), 0x18uLL))), v76, 0x2E002E002E002ELL);
      BYTE3(p_data) = 4;
      *buf = vuzp1_s8(v79, v79).u32[0];
      buf[4] = 0;
      *v108 = 136315650;
      *&v108[4] = "HALS_IOContextHostedDSP.cpp";
      *&v108[12] = 1024;
      *&v108[14] = 1308;
      v109 = 2080;
      v110 = buf;
      _os_log_debug_impl(&dword_1DE1F9000, v74, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Hosted DSP Adapt is unfinished, with status '%s'.", v108, 0x1Cu);
      if (SBYTE3(p_data) < 0)
      {
        operator delete(*buf);
      }
    }

    v70 = 0;
    v9 = v18;
  }

  *(a4 + 272) = v70;
  *(a4 + 273) = v66;
  *(a4 + 276) = a5;
  return v9;
}

void sub_1DE645544(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(__p, a10);
  if (a2)
  {
    DSP_Host_Types::AdaptResponse::~AdaptResponse(__p);
    DSP_Host_Types::AdaptRequest::~AdaptRequest(&STACK[0x350]);
    __cxa_begin_catch(a1);
    *(v10 + 464) = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE644974);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextHostedDSP::ProcessStream(uint64_t a1, HALS_DSPCaptureFiles *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6, unsigned int *a7, _OWORD *a8, _OWORD *a9)
{
  v14 = HALS_IOContextHostedDSP::HostedDSPList::find(a1, a2, a3, a4);
  if (v14 != a2)
  {
    v15 = *(v14 + 2);
    if (v15)
    {
      isDSPCaptureEnabled = HALS_DSPCaptureFiles::isDSPCaptureEnabled(v14);
      if (isDSPCaptureEnabled)
      {
        v17 = *(v15 + 328);
        if (v17)
        {
          if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(isDSPCaptureEnabled))
          {
            HALS_DSPCaptureFiles::WriteBufferToCaptureFile(v17, a5, a6, a8, a9, v17);
          }
        }
      }

      for (i = 0; i != 240; i += 80)
      {
        v19 = &v39[i];
        *(v19 + 18) = 0;
        *(v19 + 72) = 0uLL;
        *(v19 + 88) = 0uLL;
        *(v19 + 104) = 0uLL;
        *(v19 + 120) = 0uLL;
        *(v19 + 133) = 0;
      }

      v47 = vdupq_n_s64(1uLL);
      v45 = 0;
      v20 = a8[1];
      v43[0] = *a8;
      v43[1] = v20;
      v21 = a8[3];
      v43[2] = a8[2];
      v43[3] = v21;
      v44 = a5;
      v46 = a7;
      if (*a6 - 1 > 2)
      {
        v31 = a8[1];
        v40[0] = *a8;
        v40[1] = v31;
        v32 = a8[3];
        v40[2] = a8[2];
        v40[3] = v32;
        v41 = a5;
        v42 = a6;
        v29 = 1;
      }

      else
      {
        v22 = 0;
        v47.i64[0] = *a6;
        v23 = 1;
        do
        {
          v24 = &v39[24 * v22];
          v25 = *&a6[4 * v22 + 2];
          *v24 = 1;
          *(v24 + 8) = v25;
          v26 = &v40[5 * v22];
          v27 = a8[3];
          v26[2] = a8[2];
          v26[3] = v27;
          v28 = a8[1];
          *v26 = *a8;
          v26[1] = v28;
          *(v26 + 16) = a5;
          *(v26 + 9) = v24;
          v22 = v23;
          v29 = v47.i64[0];
        }

        while (v47.i64[0] > v23++);
      }

      v38 = 0;
      memset(v37, 0, sizeof(v37));
      if (*(v15 + 368))
      {
        v33 = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v15 + 440), *(v15 + 316), v37, v29, v40, v47.i64[1], v43);
      }

      else
      {
        v33 = HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(v15, a5, 0);
        if ((v33 & 1) == 0)
        {
          HALB_InstrumentedEvent_RealtimeDuration::markBeginTime(*(v15 + 352));
          std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v15 + 208), *(v15 + 316), v37, v47.i64[0], v40, v47.i64[1], v43);
          v34 = *(v15 + 352);
          v33 = mach_absolute_time();
          *(v34 + 32) = v33;
        }
      }

      v35 = HALS_DSPCaptureFiles::isDSPCaptureEnabled(v33);
      if (v35)
      {
        v36 = *(v15 + 328);
        if (v36)
        {
          if (HALS_DSPCaptureFiles::isDSPCaptureEnabled(v35))
          {

            HALS_DSPCaptureFiles::WriteBufferToCaptureFile(v36, a5, a7, a8, a9, (v36 + 24));
          }
        }
      }
    }
  }
}

void sub_1DE6458E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34)
{
  __cxa_begin_catch(a1);
  v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = *(v34 + 8);
  LOBYTE(a9) = 2;
  *&a34 = "HALS_IOContextHostedDSP.cpp";
  *(&a34 + 1) = 713;
  caulk::concurrent::messenger::enqueue_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>(v36, &a9, &a34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE645868);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_2,std::tuple<char const*,int,int,int,long long,long long>>::perform(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v13 = 136316418;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp][overload] (Context ID: %d) Input Hosted DSP Processing used more than %d%% of the IO cycle (Budgeted Time: %lld) (Processing Time: %lld).", &v13, 0x32u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_2,std::tuple<char const*,int,int,int,long long,long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_1,std::tuple<char const*,int,int,unsigned long long,long long,long long>>::perform(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v13 = 136316418;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp][overload] (Context ID: %d) (%llu) Hosted DSP processing overloaded the IO cycle (Budgeted Time: %lld) (Processing Time: %lld).", &v13, 0x36u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_1,std::tuple<char const*,int,int,unsigned long long,long long,long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK23HALS_IOContextHostedDSP29CheckForDSPProcessingOverloadExE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = __udivti3();
  if (v6 >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = *(a1 + 16);
  if (v8 > *v9)
  {
    *v9 = v8;
    v10 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[1];
    *v10 = v4;
    v10[1] = v3;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 std::__function::__func<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0,std::allocator<HALS_IOContextHostedDSP::CheckForDSPProcessingOverload(long long)::$_0>,void ()(std::shared_ptr<HALB_InstrumentedEvent_RealtimeDuration const>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985708;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::StringRef::from_get(a1, v4);
}

CFTypeID applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  CFRetain(v4);
  *a1 = v5;
  v6 = CFGetTypeID(v5);
  result = CFNumberGetTypeID();
  if (v6 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE645FC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void Aggregate_Device_Description::fill_out_optional_strings(void *a1, CFDictionaryRef *a2)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"name");
  if (v11)
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"master");
  if (v11)
  {
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  a1[5] = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*&>(&v10, *a2, @"clock");
  if (v11)
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[6];
  a1[6] = v8;
  if (v9)
  {
    CFRelease(v9);
  }
}

void Aggregate_Device_Description::fill_out_optional_BOOLeans(Aggregate_Device_Description *this, const __CFString *a2)
{
  if (applesauce::CF::details::has_key<__CFString const*&>(a2->isa, @"private"))
  {
    Aggregate_Description_Dictionary::get_BOOLean(&v7, a2, @"private");
    v4 = *(this + 7);
    *(this + 7) = v7;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v5 = *(this + 7);
    *(this + 7) = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (applesauce::CF::details::has_key<__CFString const*&>(a2->isa, @"stacked"))
  {
    Aggregate_Description_Dictionary::get_BOOLean(&v7, a2, @"stacked");
    v6 = *(this + 8);
    *(this + 8) = v7;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(this + 8);
    *(this + 8) = *MEMORY[0x1E695E4B8];
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void Aggregate_Device_Description::fill_out_subdevice_list(void *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&v60, a2, @"subdevices");
  if (v61 == 1)
  {
    v4 = v60;
    if (v60)
    {
      CFRetain(v60);
      v59[1] = v4;
      Count = CFArrayGetCount(v4);
      v5 = CFArrayGetCount(v4);
      if (Count)
      {
        v6 = v5;
        v7 = 0;
        v45 = a1 + 2;
        do
        {
          if (v7 == v6)
          {
            break;
          }

          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v59, v4, v7);
          v8 = v59[0];
          if (v59[0])
          {
            CFRetain(v59[0]);
            v58[1] = v8;
            if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"uid"))
            {
              v9 = v6;
              applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(v58, v8, @"uid");
              LOBYTE(cf) = 0;
              v57 = 0;
              v11 = *a3;
              v10 = a3[1];
              while (v11 != v10)
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v11, v58) == kCFCompareEqualTo)
                {
                  if (v57 == 1)
                  {
                    v12 = cf;
                    v13 = *v11;
                    cf = v13;
                    if (v13)
                    {
                      CFRetain(v13);
                    }

                    if (v12)
                    {
                      CFRelease(v12);
                    }

                    v14 = v52;
                    v15 = *(v11 + 8);
                    v52 = v15;
                    if (v15)
                    {
                      CFRetain(v15);
                    }

                    if (v14)
                    {
                      CFRelease(v14);
                    }

                    v16 = v53;
                    v17 = *(v11 + 16);
                    v53 = v17;
                    if (v17)
                    {
                      CFRetain(v17);
                    }

                    if (v16)
                    {
                      CFRelease(v16);
                    }

                    v18 = v54;
                    v19 = *(v11 + 24);
                    v54 = v19;
                    if (v19)
                    {
                      CFRetain(v19);
                    }

                    if (v18)
                    {
                      CFRelease(v18);
                    }

                    v20 = *(v11 + 32);
                    v56 = *(v11 + 48);
                    v55 = v20;
                  }

                  else
                  {
                    Audio_Sub_Device_Description::Audio_Sub_Device_Description(&cf, v11);
                    v57 = 1;
                  }
                }

                v11 += 56;
              }

              memset(v49, 0, 41);
              *&v49[44] = 127;
              v50 = 1;
              v21 = applesauce::CF::details::has_key<__CFString const*&>(v8, @"uid");
              if (!v21)
              {
                v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v36 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v21);
                }

                v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v37)
                {
                  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
                  v39 = *v38;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }

                else
                {
                  v39 = *v38;
                }

                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Aggregate_Device_Description.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 14;
                  *&buf[18] = 2080;
                  *&buf[20] = "subdevice_dictionary.has_key(AMCP_@kAudioSubDeviceUIDKey)";
                  _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Subdevices must have UIDs", buf, 0x1Cu);
                }

                abort();
              }

              applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*&>(buf, v8, @"uid");
              v22 = *v49;
              *v49 = *buf;
              *buf = v22;
              v6 = v9;
              if (v22)
              {
                CFRelease(v22);
              }

              if (v57 == 1)
              {
                *&v49[8] = v52;
                if (v52)
                {
                  CFRetain(v52);
                }

                if (v57 != 1)
                {
                  goto LABEL_116;
                }

                v23 = *&v49[16];
                *&v49[16] = v53;
                if (v53)
                {
                  CFRetain(v53);
                }

                if (v23)
                {
                  CFRelease(v23);
                }

                if ((v57 & 1) == 0)
                {
LABEL_116:
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                *&v49[24] = v54;
                if (v54)
                {
                  CFRetain(v54);
                }
              }

              if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"latency-in"))
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(buf, v8, @"latency-in");
                if (!*buf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                *&v49[32] = applesauce::CF::convert_to<unsigned int,0>(*buf);
                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              else if (v57 == 1)
              {
                *&v49[32] = v55;
              }

              if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"latency-out"))
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(buf, v8, @"latency-out");
                if (!*buf)
                {
                  v43 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v43, "Could not construct");
                  __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                *&v49[36] = applesauce::CF::convert_to<unsigned int,0>(*buf);
                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              else if (v57 == 1)
              {
                *&v49[36] = DWORD1(v55);
              }

              if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"drift"))
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(buf, v8, @"drift");
                if (!*buf)
                {
                  v42 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v42, "Could not construct");
                  __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v49[40] = applesauce::CF::convert_to<unsigned int,0>(*buf) != 0;
                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              else if (v57 == 1)
              {
                v49[40] = BYTE8(v55);
              }

              if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"drift quality"))
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(buf, v8, @"drift quality");
                if (!*buf)
                {
                  v41 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v41, "Could not construct");
                  __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                *&v49[44] = applesauce::CF::convert_to<unsigned int,0>(*buf);
                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              else if (v57 == 1)
              {
                *&v49[44] = HIDWORD(v55);
              }

              if (applesauce::CF::details::has_key<__CFString const*&>(v8, @"don't pad"))
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*&>(buf, v8, @"don't pad");
                if (!*buf)
                {
                  v40 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v40, "Could not construct");
                  __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v50 = applesauce::CF::convert_to<unsigned int,0>(*buf) == 0;
                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              else if (v57 == 1)
              {
                v50 = v56;
              }

              v24 = a1[3];
              v25 = a1[4];
              if (v24 >= v25)
              {
                v26 = 0x6DB6DB6DB6DB6DB7 * ((v24 - *v45) >> 3);
                v27 = v26 + 1;
                if ((v26 + 1) > 0x492492492492492)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                v28 = 0x6DB6DB6DB6DB6DB7 * ((v25 - *v45) >> 3);
                if (2 * v28 > v27)
                {
                  v27 = 2 * v28;
                }

                if (v28 >= 0x249249249249249)
                {
                  v29 = 0x492492492492492;
                }

                else
                {
                  v29 = v27;
                }

                v63 = a1 + 2;
                if (v29)
                {
                  std::allocator<Audio_Sub_Device_Description>::allocate_at_least[abi:ne200100](v29);
                }

                v30 = 56 * v26;
                *buf = 0;
                *&buf[8] = v30;
                *&buf[24] = 0;
                *v30 = *v49;
                *v49 = 0;
                *(v30 + 8) = *&v49[8];
                *&v49[8] = 0;
                *(v30 + 24) = *&v49[24];
                *(v30 + 48) = v50;
                *(v30 + 32) = *&v49[32];
                *&buf[16] = 56 * v26 + 56;
                v31 = a1[2];
                v32 = a1[3];
                v33 = 56 * v26 + v31 - v32;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Audio_Sub_Device_Description>,Audio_Sub_Device_Description*>(v31, v32, v33);
                v34 = a1[2];
                a1[2] = v33;
                v35 = a1[4];
                v46 = *&buf[16];
                *(a1 + 3) = *&buf[16];
                *&buf[16] = v34;
                *&buf[24] = v35;
                *buf = v34;
                *&buf[8] = v34;
                std::__split_buffer<Audio_Sub_Device_Description>::~__split_buffer(buf);
                a1[3] = v46;
                v6 = v9;
              }

              else
              {
                *v24 = *v49;
                *(v24 + 8) = *&v49[8];
                *(v24 + 24) = *&v49[24];
                *v49 = 0u;
                *(v24 + 32) = *&v49[32];
                *(v24 + 48) = v50;
                a1[3] = v24 + 56;
              }

              if (*&v49[8])
              {
                CFRelease(*&v49[8]);
              }

              if (*v49)
              {
                CFRelease(*v49);
              }

              if (v57 == 1)
              {
                if (v54)
                {
                  CFRelease(v54);
                }

                if (v53)
                {
                  CFRelease(v53);
                }

                if (v52)
                {
                  CFRelease(v52);
                }

                if (cf)
                {
                  CFRelease(cf);
                }
              }

              if (v58[0])
              {
                CFRelease(v58[0]);
              }
            }

            CFRelease(v8);
            if (v59[0])
            {
              CFRelease(v59[0]);
            }
          }

          ++v7;
        }

        while (v7 != Count);
      }

      CFRelease(v4);
      if ((v61 & 1) != 0 && v60)
      {
        CFRelease(v60);
      }
    }
  }
}

void sub_1DE646AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Aggregate_Description_Dictionary::~Aggregate_Description_Dictionary(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

Audio_Sub_Device_Description *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Audio_Sub_Device_Description>,Audio_Sub_Device_Description*>(Audio_Sub_Device_Description *result, Audio_Sub_Device_Description *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *v4 = 0;
      *(a3 + 8) = *(v4 + 8);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *(a3 + 24) = *(v4 + 3);
      *(v4 + 3) = 0;
      v5 = *(v4 + 2);
      *(a3 + 48) = *(v4 + 48);
      *(a3 + 32) = v5;
      v4 = (v4 + 56);
      a3 += 56;
    }

    while (v4 != a2);
    do
    {
      Audio_Sub_Device_Description::~Audio_Sub_Device_Description(result);
      result = (v6 + 56);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<Audio_Sub_Device_Description>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    Audio_Sub_Device_Description::~Audio_Sub_Device_Description((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Aggregate_Description_Dictionary::get_BOOLean(Aggregate_Description_Dictionary *this, const __CFString *a2, const void *a3)
{
  if (!a2->isa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::details::at_key<__CFString const*&>(a2->isa, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      cf = v7;
      v18 = 1;
      v9 = applesauce::CF::convert_to<BOOL,0>(v7);
      CFRelease(v7);
      goto LABEL_12;
    }

    CFRelease(v7);
  }

  LOBYTE(cf) = 0;
  v18 = 0;
  if (!a2->isa)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&v15, a2->isa, a3);
  if (v16 == 1)
  {
    v10 = v15;
    if (!v15)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v9 = applesauce::CF::convert_to<BOOL,0>(v15);
    CFRelease(v10);
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  v11 = MEMORY[0x1E695E4C8];
  if (!v9)
  {
    v11 = MEMORY[0x1E695E4B8];
  }

  *this = *v11;
}

void sub_1DE646FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __cxa_free_exception(v10);
  std::optional<applesauce::CF::NumberRef>::~optional(&a9);
  std::optional<applesauce::CF::BooleanRef>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Audio_Sub_Device_Description>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::allocator<Audio_Sub_Device_Description>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 56 * v7;
    Audio_Sub_Device_Description::Audio_Sub_Device_Description(v11, a2);
    v18 = (v11 + 56);
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Audio_Sub_Device_Description>,Audio_Sub_Device_Description*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    v16 = v18;
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = std::__split_buffer<Audio_Sub_Device_Description>::~__split_buffer(v17);
    v6 = v16;
  }

  else
  {
    result = Audio_Sub_Device_Description::Audio_Sub_Device_Description(v3, a2);
    v6 = result + 56;
  }

  *(a1 + 8) = v6;
  return result;
}

void Aggregate_Device_Description::get_composition_dictionary(Aggregate_Device_Description *this, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v5 = Mutable;
  v38 = Mutable;
  if (!*a2)
  {
    *this = 0;
    if (!Mutable)
    {
      return;
    }

    goto LABEL_45;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(Mutable, @"uid", *a2);
  v6 = *(a2 + 8);
  if (v6)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"name", v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"master", v7);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::StringRef>(v5, @"clock", v8);
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(v5, @"private", v9);
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(v5, @"stacked", v10);
  }

  v26 = this;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v37 = v11;
  v12 = *(a2 + 16);
  for (i = *(a2 + 24); v12 != i; v12 += 56)
  {
    Audio_Sub_Device_Description::Audio_Sub_Device_Description(&v28, v12);
    v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v15 = v14;
    v40 = v14;
    if (!v28)
    {
      __assert_rtn("get_composition_dictionary", "Aggregate_Device_Description.cpp", 74, "m_real_device_uid.is_valid()");
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(v14, @"uid", v28);
    if (v29)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::StringRef>(v15, @"name", v29);
    }

    if (v30)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"channels-in", v30);
    }

    if (v31)
    {
      mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"channels-out", v31);
    }

    valuePtr = v32;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v16;
    if (!v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"latency-in", v16);
    CFRelease(v16);
    valuePtr = v33;
    v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v17;
    if (!v17)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"latency-out", v17);
    CFRelease(v17);
    valuePtr = v34;
    v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v18;
    if (!v18)
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v23, "Could not construct");
      __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"drift", v18);
    CFRelease(v18);
    valuePtr = v35;
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v19;
    if (!v19)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v24, "Could not construct");
      __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"drift quality", v19);
    CFRelease(v19);
    valuePtr = v36 ^ 1;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = v20;
    if (!v20)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(v15, @"don't pad", v20);
    CFRelease(v20);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v15);
    if (v15)
    {
      CFRelease(v15);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(v11, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v28, v11);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(v5, @"subdevices", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v26, v5);
  if (v5)
  {
LABEL_45:
    CFRelease(v5);
  }
}

void sub_1DE647744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void DSP_Host_Types::StreamConfiguration::add_to(DSP_Host_Types::StreamConfiguration *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE647904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::StreamConfiguration::load_from(DSP_Host_Types::StreamConfiguration *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::load_from(this + 24, a2);
  DSP_Host_Types::FormatDescription::init_set(this + 14);
  v5 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 30, a2, this + 120);
  v6 = *(this + 30);
  v7 = *(this + 31);
  if (v6 != v7)
  {
    while (!*v6 || ((*(**v6 + 32))(*v6) & 1) == 0)
    {
      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(this + 31);
  }

  if (v6 == v7)
  {
    DSP_Host_Types::FormatDescription::FormatDescription(&v31, "current format");
    DSP_Host_Types::FormatDescription::operator=(this + 112, &v31);
    v31 = &unk_1F598DDD8;
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v37);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v36);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v35);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v34);
    v31 = &unk_1F598DE18;
    if (v33 == 1 && cf)
    {
      CFRelease(cf);
    }
  }

  v26 = v4 & v5;
  v9 = *(this + 42);
  v8 = *(this + 43);
  if (v8 != v9)
  {
    v10 = v8 - 19;
    v11 = v8 - 19;
    v12 = v8 - 19;
    do
    {
      v13 = *v12;
      v12 -= 19;
      (*v13)(v11);
      v10 -= 19;
      v14 = v11 == v9;
      v11 = v12;
    }

    while (!v14);
  }

  *(this + 43) = v9;
  v29[0] = &unk_1F598EC08;
  v29[1] = 0;
  v29[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"supported formats");
  v15 = v28;
  if (v28 == 1)
  {
    v16 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v18 = CFArrayGetCount(v16);
      for (i = 0; Count != i && v18 != i; ++i)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v30, v16, i);
        DSP_Host_Types::FormatDescription::FormatDescription(&v31, "");
        DSP_Host_Types::FormatDescription::init_set(&v31);
        DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(&__p, &v30, &cf);
        v20 = *(this + 43);
        if (v20 >= *(this + 44))
        {
          v21 = std::vector<DSP_Host_Types::FormatDescription>::__emplace_back_slow_path<DSP_Host_Types::FormatDescription const&>(this + 336, &v31);
        }

        else
        {
          DSP_Host_Types::FormatDescription::FormatDescription(*(this + 43), &v31);
          v21 = v20 + 152;
          *(this + 43) = v20 + 152;
        }

        *(this + 43) = v21;
        v31 = &unk_1F598DDD8;
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }

        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v37);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v36);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v35);
        DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v34);
        v31 = &unk_1F598DE18;
        if (v33 == 1 && cf)
        {
          CFRelease(cf);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }

      v22 = *(this + 42) != *(this + 43);
    }

    else
    {
      v22 = 0;
    }

    v26 &= v22;
  }

  v23 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 312, a2);
  v24 = DSP_Dictionariable::SingleKvp<std::string>::load_from(this + 264, a2);
  if (v15 && theArray)
  {
    CFRelease(theArray);
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v29);
  return v26 & v23 & v24;
}

void sub_1DE647CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::FormatDescription::init_set(void *this)
{
  v1 = (this + 16);
  if (this[16] == this[17])
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 16), (this + 3));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 7));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 10));

    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 13));
  }
}

void DSP_Host_Types::FormatDescription::add_to(DSP_Host_Types::FormatDescription *this, __CFArray **a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  DSP_Dictionariable::DictionarySet::add_to((this + 128), a2);
}

uint64_t DSP_Host_Types::FormatDescription::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 16, a2, (this + 1));
}

void DSP_Host_Types::FormatDescription::add_to(uint64_t **this, __CFDictionary **a2)
{
  DSP_Host_Types::FormatDescription::init_set(this);

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 16, a2, (this + 1));
}

void DSP_Dictionariable::DictionarySet::add_kvp(DSP_Dictionariable::DictionarySet *this, DSP_Dictionariable::DictionariableKvp *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = *this;
    v7 = v4 - *this;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *this = 0;
    *(this + 1) = v5;
    *(this + 2) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 1) = v5;
}

void DSP_Host_Types::StreamConfiguration::add_to(DSP_Host_Types::StreamConfiguration *this, __CFDictionary **a2)
{
  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::StreamSemanticType,DSP_Host_Types::StringLookup_StreamSemantic,unsigned int>::add_to(this + 24, a2);
  v4 = CFStringCreateWithBytes(0, "current format", 14, 0x8000100u, 0);
  v14 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  if (*(this + 128) == 1)
  {
    v6 = *(this + 15);
    *(this + 15) = v4;
    CFRetain(v4);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(this + 15, v4);
    *(this + 128) = 1;
  }

  CFRelease(v5);
  DSP_Host_Types::FormatDescription::init_set(this + 14);
  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 30, a2, this + 120);
  if (*(this + 42) != *(this + 43))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v14 = Mutable;
    v8 = *(this + 42);
    v9 = *(this + 43);
    if (v8 == v9)
    {
      v11 = Mutable;
    }

    else
    {
      v10 = *(this + 42);
      do
      {
        (*(*v10 + 40))(v10, &v14);
        v10 += 152;
        v8 += 152;
      }

      while (v10 != v9);
      v11 = v14;
    }

    mcp_applesauce::CF::Array_Builder::get_array(&cf, v11);
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"supported formats", cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 312, a2);
  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 264, a2);
}

void sub_1DE64820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::StreamConfiguration::~StreamConfiguration(DSP_Host_Types::StreamConfiguration *this)
{
  DSP_Host_Types::StreamConfiguration::~StreamConfiguration(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985848;
  v5 = (this + 336);
  std::vector<DSP_Host_Types::FormatDescription>::__destroy_vector::operator()[abi:ne200100](&v5);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 312));
  *(this + 33) = &unk_1F5985C78;
  if (*(this + 304) == 1 && *(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 264));
  *(this + 14) = &unk_1F598DDD8;
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 216));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 192));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 168));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 136));
  *(this + 14) = &unk_1F598DE18;
  if (*(this + 128) == 1)
  {
    v3 = *(this + 15);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  *(this + 3) = &unk_1F5985CD0;
  std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::~__value_func[abi:ne200100](this + 48);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985C38;
  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void std::vector<DSP_Host_Types::FormatDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 19;
      v7 = v4 - 19;
      v8 = v4 - 19;
      do
      {
        v9 = *v8;
        v8 -= 19;
        (*v9)(v7);
        v6 -= 19;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::load_from(DSP_Host_Types::AudioChannelConfiguration *this, CFDictionaryRef *a2)
{
  if (*(this + 16) == 1 && (v3 = *(this + 1)) != 0)
  {
    v10[0] = &unk_1F598EC08;
    v10[1] = 0;
    v10[2] = a2;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, v3);
    if (v9 == 1)
    {
      v4 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v7 = v4;
      v5 = DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, &v7);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(v10);
    return v5;
  }

  else
  {

    return DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, a2);
  }
}

void sub_1DE6485D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(uint64_t a1, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 24, a2);
  v5 = v4 & DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 48, a2);
  v6 = v5 & DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 72, a2);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 96));
  v13[0] = &unk_1F598EC08;
  v13[1] = 0;
  v13[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"channel descriptions");
  if (v12 == 1)
  {
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFArrayGetCount(v7);
      if (Count && v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v7, 0);
        operator new();
      }

      if (*(a1 + 96) == *(a1 + 104))
      {
        v6 = 0;
      }

      else
      {
        v6 = v6;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v13);
  return v6;
}

void sub_1DE648934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v25);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985D78;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::add_to(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE648B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::load_from(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 24, a2);
  v5 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(this + 48, a2);
  *(this + 10) = *(this + 9);
  v30[0] = &unk_1F598EC08;
  v30[1] = 0;
  v30[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"coordinates");
  if (v29 == 1)
  {
    v6 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    v9 = 0;
    if (v6)
    {
      while (1)
      {
        v10 = CFArrayGetCount(v6);
        if (Count == v9 || v9 == v10)
        {
          break;
        }

        if (CFArrayGetCount(v6) <= v9 || (ValueAtIndex = CFArrayGetValueAtIndex(v6, v9)) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not find item");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v12 = applesauce::CF::convert_to<float,0>(ValueAtIndex);
        v14 = *(this + 10);
        v13 = *(this + 11);
        if (v14 >= v13)
        {
          v16 = *(this + 9);
          v17 = v14 - v16;
          v18 = (v14 - v16) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v21);
          }

          v22 = (v14 - v16) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = v12;
          v15 = v23 + 1;
          memcpy(v24, v16, v17);
          v25 = *(this + 9);
          *(this + 9) = v24;
          *(this + 10) = v15;
          *(this + 11) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v12;
          v15 = v14 + 1;
        }

        *(this + 10) = v15;
        ++v9;
      }

      v8 = v9 == 3;
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v30);
  return v4 & v5 & v8;
}

void sub_1DE648D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::add_to(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 24, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(this + 48, a2);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf[1] = Mutable;
  v5 = *(this + 9);
  v6 = *(this + 10);
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    cf[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::get_array(cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"coordinates", cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE648EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DSP_Host_Types::AudioChannelConfiguration::ChannelDescription::~ChannelDescription(DSP_Host_Types::AudioChannelConfiguration::ChannelDescription *this)
{
  *this = &unk_1F5985888;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985D78;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985888;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985D78;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE6492A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void DSP_Host_Types::AudioChannelConfiguration::add_to(const void **this, __CFDictionary **a2)
{
  if (*(this + 16) == 1 && this[1])
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v6 = Mutable;
    DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, &v6);
    if ((this[2] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(*a2, this[1], cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {

    DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, a2);
  }
}

void sub_1DE64944C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::AudioChannelConfiguration::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(uint64_t a1, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 24, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 48, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 72, a2);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9 = Mutable;
  v6 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v6 == v5)
  {
    v7 = Mutable;
  }

  else
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v9);
      }

      v6 += 2;
    }

    while (v6 != v5);
    v7 = v9;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v7);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"channel descriptions", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1DE64955C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::CreateProcessorConfiguration::add_to(DSP_Host_Types::CreateProcessorConfiguration *this, __CFDictionary **a2)
{
  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 24, a2);

  DSP_Dictionariable::SingleKvp<std::string>::add_to(this + 72, a2);
}

void DSP_Host_Types::DeviceDescription::add_to(DSP_Host_Types::DeviceDescription *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*this + 24))(this, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE649B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::DeviceDescription::load_from(DSP_Host_Types::DeviceDescription *this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DeviceDescription::init_set(this);
  v4 = *(this + 92);
  v5 = *(this + 93);
  v6 = 1;
  while (v4 != v5)
  {
    v7 = *v4++;
    v6 &= (*(*v7 + 24))(v7, a2);
  }

  v8 = DSP_Host_Types::AudioChannelConfiguration::load_from((this + 424), a2);
  v9 = DSP_Host_Types::AudioChannelConfiguration::load_from((this + 544), a2);
  v10 = *a2;
  if (v10)
  {
    CFRetain(v10);
  }

  v23 = v10;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 83);
  v26 = &unk_1F598EC08;
  v27 = 0;
  v28 = &v23;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v10, @"hw streams input");
  if (v25 == 1)
  {
    v11 = DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(this + 83, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v11 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v26);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 89);
  v12 = *(this + 83);
  v13 = *(this + 84);
  while (v12 != v13)
  {
    v14 = *v12;
    if (*v12 && *(v14 + 44) == 1 && *(v14 + 40) == 2)
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](this + 712, v12);
      v15 = *(this + 84);
      if (v12 + 1 == v15)
      {
        v13 = v12;
      }

      else
      {
        v16 = v12;
        do
        {
          v17 = v16[1];
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          v18 = *(v16 + 1);
          *v16 = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          v13 = v16 + 1;
          v19 = v16 + 2;
          ++v16;
        }

        while (v19 != v15);
        v15 = *(this + 84);
      }

      while (v15 != v13)
      {
        v20 = *(v15 - 1);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        --v15;
      }

      *(this + 84) = v13;
    }

    else
    {
      ++v12;
    }
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 86);
  v26 = &unk_1F598EC08;
  v27 = 0;
  v28 = &v23;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v23, @"hw streams output");
  if (v25 == 1)
  {
    v21 = DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(this + 86, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v21 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v26);
  if (v23)
  {
    CFRelease(v23);
  }

  return v6 & v8 & v9 & v11 & v21;
}

void sub_1DE649DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va);
  DSP_Host_Types::DeviceDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::~$_0(&a9);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceDescription::init_set(DSP_Host_Types::DeviceDescription *this)
{
  if (*(this + 92) == *(this + 93))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 120));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 144));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 168));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 192));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 216));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 248));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 280));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 304));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 328));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 352));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 376));

    DSP_Dictionariable::DictionarySet::add_kvp((this + 736), (this + 400));
  }
}

BOOL DSP_Host_Types::load_list_from<DSP_Host_Types::StreamConfiguration>(void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a2);
  v6 = *a2;
  if (*a2)
  {
    v7 = CFArrayGetCount(*a2);
  }

  else
  {
    v7 = 0;
  }

  v10 = v2 == v6 && v7 == 0;
  if (Count)
  {
    if (!v10)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v2, 0);
      operator new();
    }
  }

  return *a1 != a1[1];
}

void sub_1DE64A210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

const void **DSP_Host_Types::DeviceDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::~$_0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void DSP_Host_Types::DeviceDescription::add_to(const void **this, __CFDictionary **a2)
{
  DSP_Host_Types::DeviceDescription::init_set(this);
  v4 = this[92];
  v5 = this[93];
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 16))(v6, a2);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v7 = this[83];
  v8 = this[84];
  while (v7 != v8)
  {
    if (*v7)
    {
      (*(**v7 + 40))(*v7, &Mutable);
    }

    v7 += 2;
  }

  v9 = this[89];
  v10 = this[90];
  while (v9 != v10)
  {
    if (*v9)
    {
      (*(**v9 + 40))(*v9, &Mutable);
    }

    v9 += 2;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"hw streams input", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf = v11;
  v12 = this[86];
  v13 = this[87];
  if (v12 != v13)
  {
    do
    {
      if (*v12)
      {
        (*(**v12 + 40))(*v12, &cf);
      }

      v12 += 2;
    }

    while (v12 != v13);
    v11 = cf;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&v14, v11);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"hw streams output", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (this[86] != this[87])
  {
    DSP_Host_Types::AudioChannelConfiguration::add_to(this + 53, a2);
    DSP_Host_Types::AudioChannelConfiguration::add_to(this + 68, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE64A55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceDescription::~DeviceDescription(DSP_Host_Types::DeviceDescription *this)
{
  DSP_Host_Types::DeviceDescription::~DeviceDescription(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985A20;
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  v6 = (this + 712);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 688);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 664);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  *(this + 68) = &unk_1F598DEC8;
  v6 = (this + 640);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 616));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 592));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 568));
  *(this + 68) = &unk_1F598DF08;
  if (*(this + 560) == 1)
  {
    v3 = *(this + 69);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  *(this + 53) = &unk_1F598DEC8;
  v6 = (this + 520);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 496));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 472));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 448));
  *(this + 53) = &unk_1F598DF08;
  if (*(this + 440) == 1)
  {
    v4 = *(this + 54);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 400));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 376));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 352));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 328));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 304));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 280));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 248));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 216));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 192));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 168));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 144));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 120));
  *(this + 9) = &unk_1F5985C78;
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985ED8;
  if (*(this + 16) == 1)
  {
    v5 = *(this + 1);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t DSP_Host_Types::IOContextDescription::load_from(DSP_Host_Types::IOContextDescription *this, CFDictionaryRef *a2)
{
  if (*(this + 16) == 1 && (v3 = *(this + 1)) != 0)
  {
    v10[0] = &unk_1F598EC08;
    v10[1] = 0;
    v10[2] = a2;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, v3);
    if (v9 == 1)
    {
      v4 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v7 = v4;
      v5 = DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, &v7);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(v10);
    return v5;
  }

  else
  {

    return DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(this, a2);
  }
}

void sub_1DE64A968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a10);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::IOContextDescription::load_from(applesauce::CF::DictionaryRef const&)::$_0::operator()(uint64_t a1, CFDictionaryRef *a2)
{
  v51[4] = *MEMORY[0x1E69E9840];
  v4 = a1 + 568;
  DSP_Host_Types::FormatDescription::init_set((a1 + 48));
  v5 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key((a1 + 176), a2, a1 + 56);
  DSP_Host_Types::FormatDescription::init_set((a1 + 200));
  v6 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key((a1 + 328), a2, a1 + 208);
  v7 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 352, a2);
  v8 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 376, a2);
  v9 = DSP_Host_Types::AudioChannelConfiguration::load_from((a1 + 400), a2);
  v10 = DSP_Dictionariable::SingleKvp<unsigned int>::load_from(a1 + 544, a2);
  v11 = *(a1 + 576);
  *v4 = 0u;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&v46, *a2, @"dsp offload description");
  if (v47 == 1)
  {
    _ZNSt3__115allocate_sharedB8ne200100I26DSP_Host_OffloadDictionaryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v48);
  }

  v12 = *(a1 + 592);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!*a2)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&cf, *a2, @"dsp generic settings");
  if (v45 == 1)
  {
    _ZNSt3__115allocate_sharedB8ne200100I26DSP_Host_OffloadDictionaryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v48);
  }

  v13 = v5 & v6 & v7 & v8 & v9 & v10;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(a1 + 32));
  *(a1 + 24) = a1 + 32;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v43[0] = &unk_1F598EC08;
  v43[1] = 0;
  v43[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"io context semantic list");
  if (v42 == 1)
  {
    if (!theArray)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
      __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFArrayGetCount(theArray);
    v33 = v13;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(&v48);
    v15 = 0;
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        if ((v42 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (!theArray)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
          __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::details::at_as<std::string>(v36, theArray, i);
        v17 = v38;
        if (v38 == 1)
        {
          *__p = *v36;
          v40 = v37;
          v36[1] = 0;
          v37 = 0;
          v36[0] = 0;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
        }

        if (SHIBYTE(v40) >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        v19 = std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(v50, v18);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }

        if (v17 && SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        LODWORD(v34) = v19;
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a1 + 24, v19, &v34);
        ++v15;
      }
    }

    if (Count == v15)
    {
      v13 = v33;
    }

    else
    {
      v13 = 0;
    }

    std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v51);
    std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](&v48);
  }

  std::vector<std::string>::clear[abi:ne200100]((a1 + 520));
  v36[0] = &unk_1F598EC08;
  v36[1] = 0;
  v37 = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&v34, *a2, @"io context stream id list");
  if (v35 == 1)
  {
    if (!v34)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v32, "Could not construct");
      __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v21 = CFArrayGetCount(v34);
    if (!v21)
    {
      goto LABEL_59;
    }

    v22 = 0;
    v23 = 0;
    v24 = MEMORY[0x1E69E5408];
    do
    {
      if ((v35 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (!v34)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
        __cxa_throw(v27, v24, MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::at_as<std::string>(&v48, v34, v22);
      if (v50 == 1)
      {
        *__p = v48;
        v40 = v49;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "");
      }

      v25 = HIBYTE(v40);
      v26 = HIBYTE(v40);
      if (SHIBYTE(v40) < 0)
      {
        v25 = __p[1];
      }

      if (v25)
      {
        std::vector<std::string>::push_back[abi:ne200100](a1 + 520, __p);
        v26 = HIBYTE(v40);
      }

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      ++v23;
      ++v22;
    }

    while (v21 != v22);
    v13 = v21 == v23 ? v13 : 0;
    if (v35)
    {
LABEL_59:
      if (v34)
      {
        CFRelease(v34);
      }
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v36);
  if (v42 == 1 && theArray)
  {
    CFRelease(theArray);
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v43);
  if (v45 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v47 == 1 && v46)
  {
    CFRelease(v46);
  }

  return v13;
}

void sub_1DE64B0A8()
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&v0);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v1);
  JUMPOUT(0x1DE64B0E4);
}

void sub_1DE64B0D0()
{
  std::optional<applesauce::CF::ArrayRef>::~optional(&v0);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v1);
  JUMPOUT(0x1DE64B120);
}

void sub_1DE64B108(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE64B150);
}

uint64_t std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void applesauce::CF::details::at_as<std::string>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) > a3 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) != 0)
  {

    applesauce::CF::convert_as<std::string,0>(a1, ValueAtIndex);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

uint64_t std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void DSP_Host_Types::IOContextDescription::add_to(const void **this, __CFDictionary **a2)
{
  if (*(this + 16) == 1 && this[1])
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, &Mutable);
    if ((this[2] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(*a2, this[1], cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {

    DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(this, a2);
  }
}

void sub_1DE64B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::IOContextDescription::add_to(mcp_applesauce::CF::Dictionary_Builder &)const::$_0::operator()(uint64_t a1, __CFDictionary **a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  DSP_Host_Types::FormatDescription::init_set((a1 + 48));
  DSP_Dictionariable::DictionarySet::maybe_add_under_key((a1 + 176), a2, a1 + 56);
  DSP_Host_Types::FormatDescription::init_set((a1 + 200));
  DSP_Dictionariable::DictionarySet::maybe_add_under_key((a1 + 328), a2, a1 + 208);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 352, a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 376, a2);
  DSP_Host_Types::AudioChannelConfiguration::add_to((a1 + 400), a2);
  DSP_Dictionariable::SingleKvp<unsigned int>::add_to(a1 + 544, a2);
  v4 = *(a1 + 568);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      if (CFDictionaryGetCount(v5))
      {
        cf[0] = 0;
        DSP_Host_OffloadDictionary::create_into(*(a1 + 568), cf);
      }
    }
  }

  v6 = *(a1 + 584);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      if (CFDictionaryGetCount(v7))
      {
        cf[0] = 0;
        DSP_Host_OffloadDictionary::create_into(*(a1 + 584), cf);
      }
    }
  }

  if (*(a1 + 40))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v25 = Mutable;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    DSP_Dictionariable::DictionariableKvp::DictionariableKvp(cf, __p);
    LOBYTE(v27) = 0;
    v28 = 0;
    cf[0] = &unk_1F5987978;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v29);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(a1 + 24);
    if (v9 != (a1 + 32))
    {
      do
      {
        v27 = *(v9 + 7);
        v28 = 1;
        DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(__p, cf);
        if ((v24 & 0x80u) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if (v10)
        {
          if ((v24 & 0x80u) == 0)
          {
            v11 = v24;
          }

          else
          {
            v11 = __p[1];
          }

          v12 = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
          if (!v12)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if ((v24 & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v12 = 0;
          if ((v24 & 0x80) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(__p[0]);
LABEL_23:
        mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v9[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v9[2];
            v15 = *v14 == v9;
            v9 = v14;
          }

          while (!v15);
        }

        v9 = v14;
      }

      while (v14 != (a1 + 32));
    }

    mcp_applesauce::CF::Array_Builder::get_array(__p, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"io context semantic list", __p[0]);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    cf[0] = &unk_1F5987978;
    std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v30);
    std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v29);
    DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(cf);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (*(a1 + 520) == *(a1 + 528))
  {
    return;
  }

  v16 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf[0] = v16;
  v17 = *(a1 + 520);
  v18 = *(a1 + 528);
  if (v17 == v18)
  {
    goto LABEL_52;
  }

  do
  {
    v19 = *(v17 + 23);
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (!*(v17 + 23))
      {
        goto LABEL_49;
      }

      v20 = v17;
LABEL_45:
      v20 = CFStringCreateWithBytes(0, v20, v19, 0x8000100u, 0);
      __p[0] = v20;
      if (!v20)
      {
        v22 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v22, "Could not construct");
        __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v16 = cf[0];
      goto LABEL_47;
    }

    v19 = *(v17 + 8);
    if (!v19)
    {
      goto LABEL_49;
    }

    v20 = *v17;
    if (*v17)
    {
      goto LABEL_45;
    }

    __p[0] = 0;
LABEL_47:
    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v16, v20);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }

LABEL_49:
    v17 += 24;
  }

  while (v17 != v18);
  v16 = cf[0];
LABEL_52:
  mcp_applesauce::CF::Array_Builder::get_array(__p, v16);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"io context stream id list", __p[0]);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

void sub_1DE64B9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&__p);
  _Unwind_Resume(a1);
}

void *DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(void *a1, uint64_t a2)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v3 = std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(*(a2 + 80), *(a2 + 16));

  return std::string::basic_string[abi:ne200100]<0>(a1, v3);
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

uint64_t std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  v8[0] = &unk_1F598EC08;
  v8[1] = 0;
  v9 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const*&>(__p, *v9, *(a1 + 8));
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *(a1 + 16) = std::function<DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(*(a1 + 48), v3);
    *(a1 + 20) = 1;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v8);
  return v4;
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 20) != 1)
  {
    return;
  }

  v4 = std::function<char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(*(a1 + 80), *(a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(&bytes, v4);
  v5 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v5 = numBytes;
    if (!numBytes)
    {
LABEL_11:
      operator delete(bytes);
      return;
    }

    p_bytes = bytes;
    v6 = (a1 + 8);
    if (!bytes)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v12)
    {
      return;
    }

    v6 = (a1 + 8);
    p_bytes = &bytes;
  }

  v8 = CFStringCreateWithBytes(0, p_bytes, v5, 0x8000100u, 0);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_8:
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(*a2, *v6, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v12 < 0)
  {
    goto LABEL_11;
  }
}

void sub_1DE64BDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(DSP_Host_Types::ConfigurationChangeRequest *this, const char *a2)
{
  v166[19] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v148);
  if (a2 && *a2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n[hal_dsp] ", 11);
    v4 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, a2, v4);
    v5 = " - debug_log_device_summary\n";
    v6 = 28;
  }

  else
  {
    v5 = "\n[hal_dsp] ConfigurationChangeRequest::debug_log_device_summary\n";
    v6 = 64;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t", 11);
  v7 = "DEACTIVATION\n";
  if (*(this + 41) == 1 && *(this + 40))
  {
    v7 = "ACTIVATION\n";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIO Context Frame Size: ", 34);
  if (*(this + 444) == 1)
  {
    v9 = *(this + 110);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E12C1210](&v149, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIO Context Channel Count (in/out): ", 46);
  if (*(this + 196) == 1)
  {
    v11 = *(this + 48);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E12C1210](&v149, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " / ", 3);
  if (*(this + 348) == 1)
  {
    v14 = *(this + 86);
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E12C1210](v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIO Context Sample Rate (in/out): ", 44);
  v16.n128_u64[0] = 0;
  if (*(this + 168) == 1)
  {
    v16.n128_u64[0] = *(this + 20);
  }

  v17 = MEMORY[0x1E12C11E0](&v149, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " / ", 3);
  v19.n128_u64[0] = 0;
  if (*(this + 320) == 1)
  {
    v19.n128_u64[0] = *(this + 39);
  }

  v20 = MEMORY[0x1E12C11E0](v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIO Context Processing Type(s): ", 42);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(v157, __p);
  LOBYTE(v158) = 0;
  v159 = 0;
  v157[0] = &unk_1F5987978;
  DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v160);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v21 = *(this + 12);
  v22 = this + 104;
  if (v21 == this + 104)
  {
    if ((*(this + 636) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v23 = 0;
    do
    {
      v158 = *(v21 + 7);
      v159 = 1;
      v24 = v158 == 7;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " [ ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(__p, v157);
      if (__p[23] >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = *__p;
      }

      if (__p[23] >= 0)
      {
        v26 = __p[23];
      }

      else
      {
        v26 = *&__p[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v25, v26);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v27 = *(v21 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v21 + 2);
          v29 = *v28 == v21;
          v21 = v28;
        }

        while (!v29);
      }

      v23 |= v24;
      v21 = v28;
    }

    while (v28 != v22);
    if ((*(this + 636) & 1) == 0)
    {
      if (v23)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | use case id: n/a", 19);
      }

      goto LABEL_46;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | use case id: ", 16);
  if ((*(this + 636) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v30.i32[0] = bswap32(*(this + 158));
  v31 = vzip1_s8(v30, v30);
  v32.i64[0] = 0x1F0000001FLL;
  v32.i64[1] = 0x1F0000001FLL;
  v33.i64[0] = 0x5F0000005FLL;
  v33.i64[1] = 0x5F0000005FLL;
  v34 = vbsl_s8(vmovn_s32(vcgtq_u32(v33, vsraq_n_s32(v32, vshlq_n_s32(vmovl_u16(v31), 0x18uLL), 0x18uLL))), v31, 0x2E002E002E002ELL);
  __p[23] = 4;
  *__p = vuzp1_s8(v34, v34).u32[0];
  __p[4] = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, __p, 4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_46:
  if (*(this + 80))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | offload ids: ", 16);
    DSP_Host_OffloadDictionary::get_debug_string(__p, *(this + 80));
    if (__p[23] >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = *__p;
    }

    if (__p[23] >= 0)
    {
      v36 = __p[23];
    }

    else
    {
      v36 = *&__p[8];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v35, v36);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v37 = *v22;
    if (*v22)
    {
      v38 = this + 104;
      do
      {
        v39 = *(v37 + 7);
        v40 = v39 >= 8;
        v41 = v39 < 8;
        if (v40)
        {
          v38 = v37;
        }

        v37 = *&v37[8 * v41];
      }

      while (v37);
      if (v38 != v22 && *(v38 + 7) <= 8u)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | offload ids: <null>", 22);
      }
    }
  }

  if (*(this + 82))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | generic settings: ", 21);
    DSP_Host_OffloadDictionary::get_debug_string(__p, *(this + 82));
    if (__p[23] >= 0)
    {
      v42 = __p;
    }

    else
    {
      v42 = *__p;
    }

    if (__p[23] >= 0)
    {
      v43 = __p[23];
    }

    else
    {
      v43 = *&__p[8];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v42, v43);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v44 = *v22;
    if (*v22)
    {
      v45 = this + 104;
      do
      {
        v46 = *(v44 + 7);
        v40 = v46 >= 0xA;
        v47 = v46 < 0xA;
        if (v40)
        {
          v45 = v44;
        }

        v44 = *&v44[8 * v47];
      }

      while (v44);
      if (v45 != v22 && *(v45 + 7) <= 0xAu)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " | content creation recording: <null>", 37);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIO Context Client-Supplied Virtual Layout: ", 54);
  DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(__p, this + 472, "");
  if (__p[23] >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = *__p;
  }

  if (__p[23] >= 0)
  {
    v49 = __p[23];
  }

  else
  {
    v49 = *&__p[8];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v48, v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v50 = *(this + 75);
  v51 = *(this + 74);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp} \tIO Context Stream Order (", 36);
  v52 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v51) >> 3);
  v53 = MEMORY[0x1E12C1220](&v149, v52);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "): ", 3);
  v54 = 0;
  for (i = 1; i - v52 != 1; ++i)
  {
    v56 = *(this + 74) + v54;
    v57 = *(v56 + 23);
    if (v57 >= 0)
    {
      v58 = *(this + 74) + v54;
    }

    else
    {
      v58 = *v56;
    }

    if (v57 >= 0)
    {
      v59 = *(v56 + 23);
    }

    else
    {
      v59 = *(v56 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v58, v59);
    if (i >= v52)
    {
      v60 = "\n";
    }

    else
    {
      v60 = ", ";
    }

    if (i >= v52)
    {
      v61 = 1;
    }

    else
    {
      v61 = 2;
    }

    v54 += 24;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v60, v61);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t", 11);
  v62 = MEMORY[0x1E12C1220](&v149, (*(this + 85) - *(this + 84)) >> 4);
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " devices described...\n", 22);
  v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v64 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v63);
  }

  v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    v67 = *v66;
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  else
  {
    v67 = *v66;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v156, v148);
    v68 = (v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v156 : v156.__r_.__value_.__r.__words[0];
    *__p = 136315651;
    *&__p[4] = "DSP_Host_API_MethodTypes.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 1084;
    *&__p[18] = 2081;
    *&__p[20] = v68;
    _os_log_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", __p, 0x1Cu);
    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v156.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
  *__p = *MEMORY[0x1E69E54D8];
  v143 = *__p;
  v69 = *(MEMORY[0x1E69E54D8] + 72);
  v70 = *(MEMORY[0x1E69E54D8] + 64);
  *&__p[*(*__p - 24)] = v70;
  v141 = v69;
  v142 = v70;
  *&__p[16] = v69;
  *&__p[24] = MEMORY[0x1E69E5548] + 16;
  if (v165 < 0)
  {
    operator delete(v164);
  }

  *&__p[24] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v163);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](v166);
  v140 = this;
  if (*(this + 85) != *(this + 84))
  {
    v71 = 0;
    v72 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \tIndex ", 17);
      v73 = MEMORY[0x1E12C1220](&v149, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ":\n", 2);
      v74 = *(v140 + 84);
      v75 = *(v74 + v71);
      v76 = "";
      if (*(v75 + 137) == 1)
      {
        if (*(v75 + 136))
        {
          v76 = "[hal_dsp] \t\tIs Default: YES\n";
        }

        else
        {
          v76 = "";
        }
      }

      v77 = v74 + v71;
      v78 = *(v74 + v71 + 8);
      v139 = v78;
      if (!v78)
      {
        break;
      }

      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      v79 = *(v77 + 8);
      v80 = *(v74 + v71);
      v136 = v80;
      if (!v79)
      {
        v137 = 1;
        v134 = 0;
        v135 = 0;
        goto LABEL_130;
      }

      v135 = *(v77 + 8);
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
      v81 = *(v77 + 8);
      v80 = *(v74 + v71);
      if (v81)
      {
        v137 = 0;
        v138 = 0;
        v134 = v81;
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v138 = 0;
        v134 = 0;
        v137 = 1;
      }

LABEL_131:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\t", 12);
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(__p, *(v74 + v71) + 40);
      if (__p[23] >= 0)
      {
        v82 = __p;
      }

      else
      {
        v82 = *__p;
      }

      if (__p[23] >= 0)
      {
        v83 = __p[23];
      }

      else
      {
        v83 = *&__p[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v82, v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, " [", 2);
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v156, *(v74 + v71) + 88);
      if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v156;
      }

      else
      {
        v84 = v156.__r_.__value_.__r.__words[0];
      }

      if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v156.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v156.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v84, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "]\n", 2);
      v86 = strlen(v76);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v76, v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tSample Rate: ", 25);
      v87 = *(v74 + v71);
      v88.n128_u64[0] = -1.0;
      if (*(v87 + 240) == 1)
      {
        v88.n128_u64[0] = *(v87 + 232);
      }

      v89 = MEMORY[0x1E12C11E0](&v149, v88);
      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, " (", 2);
      v91 = *(v74 + v71);
      v92.n128_u64[0] = -1.0;
      if (*(v91 + 272) == 1)
      {
        v92.n128_u64[0] = *(v91 + 264);
      }

      v93 = MEMORY[0x1E12C11E0](v90, v92);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ")\n", 2);
      if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v156.__r_.__value_.__l.__data_);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
      if (*(v75 + 188) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], " IN: ", 5);
        v95 = 774778414;
        if (*(v75 + 188) == 1)
        {
          v95 = *(v75 + 184);
        }

        v94.i32[0] = bswap32(v95);
        v96 = vzip1_s8(v94, v94);
        v97.i64[0] = 0x1F0000001FLL;
        v97.i64[1] = 0x1F0000001FLL;
        v98.i64[0] = 0x5F0000005FLL;
        v98.i64[1] = 0x5F0000005FLL;
        v99 = vbsl_s8(vmovn_s32(vcgtq_u32(v98, vsraq_n_s32(v97, vshlq_n_s32(vmovl_u16(v96), 0x18uLL), 0x18uLL))), v96, 0x2E002E002E002ELL);
        *(&v156.__r_.__value_.__s + 23) = 4;
        LODWORD(v156.__r_.__value_.__l.__data_) = vuzp1_s8(v99, v99).u32[0];
        v156.__r_.__value_.__s.__data_[4] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], &v156, 4);
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v156.__r_.__value_.__l.__data_);
        }
      }

      if (*(v75 + 212) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], " OUT: ", 6);
        v101 = 774778414;
        if (*(v75 + 212) == 1)
        {
          v101 = *(v75 + 208);
        }

        v100.i32[0] = bswap32(v101);
        v102 = vzip1_s8(v100, v100);
        v103.i64[0] = 0x1F0000001FLL;
        v103.i64[1] = 0x1F0000001FLL;
        v104.i64[0] = 0x5F0000005FLL;
        v104.i64[1] = 0x5F0000005FLL;
        v105 = vbsl_s8(vmovn_s32(vcgtq_u32(v104, vsraq_n_s32(v103, vshlq_n_s32(vmovl_u16(v102), 0x18uLL), 0x18uLL))), v102, 0x2E002E002E002ELL);
        *(&v156.__r_.__value_.__s + 23) = 4;
        LODWORD(v156.__r_.__value_.__l.__data_) = vuzp1_s8(v105, v105).u32[0];
        v156.__r_.__value_.__s.__data_[4] = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], &v156, 4);
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v156.__r_.__value_.__l.__data_);
        }
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v146, __p);
      *__p = v143;
      *&__p[*(v143 - 24)] = v142;
      *&__p[16] = v141;
      *&__p[24] = MEMORY[0x1E69E5548] + 16;
      if (v165 < 0)
      {
        operator delete(v164);
      }

      *&__p[24] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v163);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](v166);
      v106 = HIBYTE(v147);
      if (v147 < 0)
      {
        v106 = v146[1];
      }

      if (v106)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tData Source Type: ", 30);
        if (v147 >= 0)
        {
          v107 = v146;
        }

        else
        {
          v107 = v146[0];
        }

        if (v147 >= 0)
        {
          v108 = HIBYTE(v147);
        }

        else
        {
          v108 = v146[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v107, v108);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
      }

      v109 = "";
      if (*(v80 + 417) == 1)
      {
        if (*(v80 + 416))
        {
          v109 = "encr on";
        }

        else
        {
          v109 = "encr off";
        }
      }

      v110 = std::string::basic_string[abi:ne200100]<0>(__p, v109);
      if (SHIBYTE(v147) < 0)
      {
        operator delete(v146[0]);
      }

      v147 = *&__p[16];
      *v146 = *__p;
      v111 = __p[23];
      if (__p[23] < 0)
      {
        v111 = *&__p[8];
      }

      if (v111)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tBT ECNR: ", 21);
        if (v147 >= 0)
        {
          v112 = v146;
        }

        else
        {
          v112 = v146[0];
        }

        if (v147 >= 0)
        {
          v113 = HIBYTE(v147);
        }

        else
        {
          v113 = v146[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v112, v113);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
      }

      v114 = *(v74 + v71);
      if (v114[83] != v114[84])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tInput Streams: ", 27);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 664));
        if (__p[23] >= 0)
        {
          v115 = __p;
        }

        else
        {
          v115 = *__p;
        }

        if (__p[23] >= 0)
        {
          v116 = __p[23];
        }

        else
        {
          v116 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v115, v116);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v114 = *(v74 + v71);
      }

      if (v114[89] != v114[90])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tReference Streams: ", 31);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 712));
        if (__p[23] >= 0)
        {
          v117 = __p;
        }

        else
        {
          v117 = *__p;
        }

        if (__p[23] >= 0)
        {
          v118 = __p[23];
        }

        else
        {
          v118 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v117, v118);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v114 = *(v74 + v71);
      }

      if (v114[86] != v114[87])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tOutput Streams: ", 28);
        DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(__p, (*(v74 + v71) + 688));
        if (__p[23] >= 0)
        {
          v119 = __p;
        }

        else
        {
          v119 = *__p;
        }

        if (__p[23] >= 0)
        {
          v120 = __p[23];
        }

        else
        {
          v120 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v119, v120);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "[hal_dsp] \t\tDevice AC Layouts: ", 31);
        if (*(v136 + 688) == *(v136 + 696))
        {
          std::string::basic_string[abi:ne200100]<0>(v144, "N/A");
        }

        else
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
          DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(&v156, (v136 + 424), "pref - ");
          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v121 = &v156;
          }

          else
          {
            v121 = v156.__r_.__value_.__r.__words[0];
          }

          if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v122 = v156.__r_.__value_.__l.__size_;
          }

          v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], v121, v122);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, " | ", 3);
          DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(v154, (v136 + 544), "dflt - ");
          if ((v155 & 0x80u) == 0)
          {
            v124 = v154;
          }

          else
          {
            v124 = v154[0];
          }

          if ((v155 & 0x80u) == 0)
          {
            v125 = v155;
          }

          else
          {
            v125 = v154[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], v124, v125);
          if (v155 < 0)
          {
            operator delete(v154[0]);
          }

          if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v156.__r_.__value_.__l.__data_);
          }

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v144, __p);
          *__p = v143;
          *&__p[*(v143 - 24)] = v142;
          *&__p[16] = v141;
          *&__p[24] = MEMORY[0x1E69E5548] + 16;
          if (v165 < 0)
          {
            operator delete(v164);
          }

          *&__p[24] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v163);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v166);
        }

        if ((v145 & 0x80u) == 0)
        {
          v126 = v144;
        }

        else
        {
          v126 = v144[0];
        }

        if ((v145 & 0x80u) == 0)
        {
          v127 = v145;
        }

        else
        {
          v127 = v144[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, v126, v127);
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v149, "\n", 1);
        if (v145 < 0)
        {
          operator delete(v144[0]);
        }
      }

      v128 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v128 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v110);
      }

      v130 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v129 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
        v131 = *v130;
        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }

      else
      {
        v131 = *v130;
      }

      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v156, v148);
        v132 = &v156;
        if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v132 = v156.__r_.__value_.__r.__words[0];
        }

        *__p = 136315651;
        *&__p[4] = "DSP_Host_API_MethodTypes.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1171;
        *&__p[18] = 2081;
        *&__p[20] = v132;
        _os_log_impl(&dword_1DE1F9000, v131, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", __p, 0x1Cu);
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v156.__r_.__value_.__l.__data_);
        }
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
      *__p = v143;
      *&__p[*(v143 - 24)] = v142;
      *&__p[16] = v141;
      *&__p[24] = MEMORY[0x1E69E5548] + 16;
      if (v165 < 0)
      {
        operator delete(v164);
      }

      *&__p[24] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v163);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](v166);
      if (SHIBYTE(v147) < 0)
      {
        operator delete(v146[0]);
      }

      if ((v137 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v134);
      }

      if ((v138 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      ++v72;
      v71 += 16;
      if (v72 >= (*(v140 + 85) - *(v140 + 84)) >> 4)
      {
        goto LABEL_270;
      }
    }

    v134 = 0;
    v135 = 0;
    v136 = *(v74 + v71);
    v137 = 1;
    v80 = v136;
LABEL_130:
    v138 = 1;
    goto LABEL_131;
  }

LABEL_270:
  v157[0] = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](&v161);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v160);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v157);
  v148[0] = v143;
  *(v148 + *(v143 - 24)) = v142;
  v149 = v141;
  v150 = MEMORY[0x1E69E5548] + 16;
  if (v152 < 0)
  {
    operator delete(v151[7].__locale_);
  }

  v150 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v151);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v153);
}

void sub_1DE64D44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp(&STACK[0x208]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(DSP_Host_Types::AudioChannelConfiguration *this, const char *a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  if (a3 && *a3)
  {
    v6 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, a3, v6);
  }

  if (a2[44] == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " tag: ", 6);
    DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(&__p, *(a2 + 5));
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, p_p, v8);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " bit: ", 6);
    if (a2[68] == 1)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1E12C1210](&v19, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " num: ", 6);
    if (a2[92] == 1)
    {
      v12 = *(a2 + 22);
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1E12C1210](&v19, v12);
  }

  else
  {
    DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(&__p, *(a2 + 5));
    if ((v17 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](this, v18);
  v18[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v13;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v23);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(std::string *a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *a1 = *a2;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "<missing>");
  }
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(char const*)const::$_3::operator()(void *a1, char **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Count ", 6);
  v4 = MEMORY[0x1E12C1220](&v24, (a2[1] - *a2) >> 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  ", 2);
  v20 = a1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = *v5;
      v7 = *(v5 + 1);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "{", 1);
      if (*(v8 + 188) == 1)
      {
        v9 = *(v8 + 184);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      v10 = MEMORY[0x1E12C1210](&v24, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
      v12.n128_u64[0] = -1.0;
      if (*(v8 + 160) == 1)
      {
        v12.n128_u64[0] = *(v8 + 152);
      }

      v13 = MEMORY[0x1E12C11E0](v11, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ",", 1);
      if (*(v8 + 332) == 1)
      {
        std::to_string(&v22, *(v8 + 328));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v22, "<n/a>");
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v22;
      }

      else
      {
        v14 = v22.__r_.__value_.__r.__words[0];
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v22.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ",", 1);
      if (*(v8 + 304) == 1)
      {
        DSP_Dictionariable::SingleKvp<std::string>::value(&__p, v8 + 264);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "<n/a>");
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_31;
      }

LABEL_32:
      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    if (!v7)
    {
      goto LABEL_32;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_32;
  }

LABEL_36:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v20, v23);
  v23[0] = *MEMORY[0x1E69E54D8];
  v18 = *(MEMORY[0x1E69E54D8] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v24 = v18;
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v28);
}

void *DSP_Host_Types::AudioChannelConfiguration::debug_summary_string(char const*)const::$_0::operator()(void *a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = "<none>";
LABEL_7:

    return std::string::basic_string[abi:ne200100]<0>(a1, v3);
  }

  if (a2 == 0x10000)
  {
    v3 = "'bitmap'";
    goto LABEL_7;
  }

  if (!a2)
  {
    v3 = "'ch desc'";
    goto LABEL_7;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "0x", 2);
  v6 = v12;
  v7 = v12;
  *(&v12 + *(v12 - 24) + 8) |= 0x4000u;
  v8 = (&v12 + *(v7 - 24));
  if (v8[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v8);
    v9 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v17);
    v6 = v12;
  }

  v8[1].__fmtflags_ = 48;
  *(&v14[1].__locale_ + *(v6 - 24)) = 8;
  *(&v12 + *(v6 - 24) + 8) = *(&v12 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x1E12C1210](&v12, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v10;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v16);
}

uint64_t *DSP_Host_Types::ConfigurationChangeRequest::debug_device_list@<X0>(uint64_t *__return_ptr a1@<X8>, DSP_Host_Types::ConfigurationChangeRequest *this@<X0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = *(this + 84);
  for (i = *(this + 85); v4 != i; v4 += 2)
  {
    v6 = *v4;
    if (*(*v4 + 64) == 1)
    {
      if (*(v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 40), *(v6 + 48));
      }

      else
      {
        __p = *(v6 + 40);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "<no id>");
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "  ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v12);
  v12[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v9;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v17);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::load_from(DSP_Host_Types::ConfigurationChangeRequest *this, CFDictionaryRef *a2)
{
  v4 = DSP_Dictionariable::SingleKvp<BOOL>::load_from(this + 24, a2);
  v5 = v4 & DSP_Dictionariable::SingleKvp<BOOL>::load_from(this + 48, a2);
  v6 = v5 & DSP_Host_Types::IOContextDescription::load_from((this + 72), a2);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 84);
  v13[0] = &unk_1F598EC08;
  v13[1] = 0;
  v13[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"device descriptions");
  if (v12 == 1)
  {
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFArrayGetCount(v7);
      if (Count && v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v14, v7, 0);
        operator new();
      }

      if (*(this + 84) == *(this + 85))
      {
        v6 = 0;
      }

      else
      {
        v6 = v6;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v13);
  return v6;
}

void sub_1DE64EB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, DSP_Dictionariable::DictionariableKvp *a10, DSP_Dictionariable::DictionariableKvp *a11, DSP_Dictionariable::DictionariableKvp *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, DSP_Dictionariable::DictionariableKvp *a17, DSP_Dictionariable::DictionariableKvp *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v27 - 112));
  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  applesauce::CF::DictionaryRef::~DictionaryRef((v27 - 136));
  std::optional<applesauce::CF::ArrayRef>::~optional(&a25);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va);
  _Unwind_Resume(a1);
}

void sub_1DE64ED7C()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED14);
}

void sub_1DE64EDB0()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED0CLL);
}

void sub_1DE64EDE4()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED24);
}

void sub_1DE64EDFC()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1DE64ED04);
}

void DSP_Host_Types::ConfigurationChangeRequest::add_to(DSP_Host_Types::ConfigurationChangeRequest *this, __CFDictionary **a2)
{
  if (*(this + 41) == 1)
  {
    v4 = (*(this + 40) ? MEMORY[0x1E695E4C8] : MEMORY[0x1E695E4B8]);
    v5 = *v4;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(*a2, *(this + 4), *v4);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(this + 65) == 1)
  {
    v6 = (*(this + 64) ? MEMORY[0x1E695E4C8] : MEMORY[0x1E695E4B8]);
    v7 = *v6;
    mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::BooleanRef>(*a2, *(this + 7), *v6);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  DSP_Host_Types::IOContextDescription::add_to(this + 9, a2);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0uLL;
  v8 = *(this + 84);
  v9 = *(this + 85);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      v11 = *v8;
      v12 = v8[1];
      *&v18 = *v8;
      *(&v18 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        if (*(v11 + 137) == 1 && (*(v11 + 136) & 1) != 0)
        {
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v19 = v11;
          *(&v19 + 1) = v12;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            v13 = *(&v18 + 1);
          }

          else
          {
            v13 = v12;
          }

          v10 = v12;
          if (!v13)
          {
            goto LABEL_27;
          }

LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_27;
        }

        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v20, &v18);
      }

      v13 = v12;
      if (v12)
      {
        goto LABEL_26;
      }

LABEL_27:
      v8 += 2;
    }

    while (v8 != v9);
  }

  std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v20, &v19);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  *&v18 = Mutable;
  v15 = v20;
  v16 = v21;
  if (v20 != v21)
  {
    do
    {
      if (*v15)
      {
        (*(**v15 + 40))(*v15, &v18);
      }

      v15 += 2;
    }

    while (v15 != v16);
    Mutable = v18;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"device descriptions", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  *&v19 = &v20;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1DE64F0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::NegotiateRequest::debug_log_device_summary(DSP_Host_Types::NegotiateRequest *this, const char *a2)
{
  if (!a2)
  {
    a2 = "NegotiateRequest";
  }

  return DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(this, a2);
}

uint64_t DSP_Host_Types::AdaptRequest::debug_log_device_summary(DSP_Host_Types::AdaptRequest *this, const char *a2)
{
  if (!a2)
  {
    a2 = "AdaptRequest";
  }

  return DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary(this, a2);
}

void DSP_Host_Types::DeviceConfiguration::add_to(DSP_Host_Types::DeviceConfiguration *this, __CFArray **a2)
{
  DSP_Host_Types::BluetoothLookup::toString(v4, *(this + 22));
  DSP_Dictionariable::SingleKvp<std::string>::operator=(this + 256, v4);
  v4[0] = &unk_1F5985C78;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(v4[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v4);
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  DSP_Dictionariable::DictionarySet::add_to((this + 232), a2);
}

void DSP_Host_Types::BluetoothLookup::toString(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bluetooth format");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(a1, __p);
  *a1 = &unk_1F5985C78;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if ((a2 & 0x100000000) == 0)
    {
      return;
    }
  }

  else if ((a2 & 0x100000000) == 0)
  {
    return;
  }

  v4 = 0;
  __p[1] = "automatic";
  v7 = 1;
  v9 = "sco";
  v10 = 2;
  v11 = "a2dp";
  v12 = 3;
  v13 = "lea";
  LODWORD(__p[0]) = 0;
  while (LODWORD(__p[v4]) != a2)
  {
    v4 += 2;
    if (v4 == 8)
    {
      return;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, __p[v4 + 1]);
  std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>((a1 + 16), &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1DE64F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::SingleKvp<std::string>::~SingleKvp(v21);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DeviceConfiguration::init_set(DSP_Host_Types::DeviceConfiguration *this)
{
  v1 = (this + 232);
  if (*(this + 29) == *(this + 30))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 232), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 104));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 128));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 152));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 256));
    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 184));

    DSP_Dictionariable::DictionarySet::add_kvp(v1, (this + 208));
  }
}

uint64_t DSP_Host_Types::DeviceConfiguration::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  v4 = DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 29, a2, (this + 1));
  if ((this[32][4])(this + 32))
  {
    v5 = 0;
    v13 = "automatic";
    v14 = 1;
    v15 = "sco";
    v16 = 2;
    v17 = "a2dp";
    v18 = 3;
    v19 = "lea";
    v12[0] = 0;
    do
    {
      v6 = *&v12[v5 + 2];
      DSP_Dictionariable::SingleKvp<std::string>::value(&__s2, (this + 32));
      if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = __s2.__r_.__value_.__r.__words[0];
        v8 = strcmp(v6, __s2.__r_.__value_.__l.__data_);
        operator delete(v7);
        if (!v8)
        {
LABEL_9:
          v9 = v12[v5] | 0x100000000;
          goto LABEL_10;
        }
      }

      else if (!strcmp(v6, &__s2))
      {
        goto LABEL_9;
      }

      v5 += 4;
    }

    while (v5 != 16);
  }

  v9 = 0;
LABEL_10:
  *(this + 44) = v9;
  *(this + 180) = BYTE4(v9);
  return v4;
}

void DSP_Host_Types::DeviceConfiguration::add_to(DSP_Host_Types::DeviceConfiguration *this, __CFDictionary **a2)
{
  DSP_Host_Types::BluetoothLookup::toString(v4, *(this + 22));
  DSP_Dictionariable::SingleKvp<std::string>::operator=(this + 256, v4);
  v4[0] = &unk_1F5985C78;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(v4[2]);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v4);
  DSP_Host_Types::DeviceConfiguration::init_set(this);
  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 29, a2, this + 8);
}

void DSP_Host_Types::DeviceConfiguration::~DeviceConfiguration(DSP_Host_Types::DeviceConfiguration *this)
{
  DSP_Host_Types::DeviceConfiguration::~DeviceConfiguration(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985B10;
  v2 = (this + 256);
  *(this + 32) = &unk_1F5985C78;
  if (*(this + 296) == 1 && *(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 208));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 184));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 152));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 128));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985F18;
  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t DSP_Host_Types::NegotiateResponse::load_from(DSP_Host_Types::NegotiateResponse *this, CFDictionaryRef *a2)
{
  v17[0] = &unk_1F598EC08;
  v17[1] = 0;
  v18 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, @"io context configuration"))
  {
    v4 = applesauce::CF::details::at_key<__CFString const*&>(*v18, @"io context configuration");
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not find item");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::DictionaryRef::from_get(v20, v4);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 3);
    v21 = &unk_1F598EC08;
    v22 = 0;
    v23 = v20;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v20[0], @"io context supported input formats");
    if (v15 == 1)
    {
      v11 = DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(this + 3, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v11 = 1;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v21);
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 6);
    v21 = &unk_1F598EC08;
    v22 = 0;
    v23 = v20;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&cf, v20[0], @"io context supported output formats");
    if (v15 == 1)
    {
      v11 &= DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(this + 6, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(&v21);
    if (v20[0])
    {
      CFRelease(v20[0]);
    }
  }

  else
  {
    v11 = 1;
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 9);
  cf = &unk_1F598EC08;
  v15 = 0;
  v16 = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"device configurations");
  if (v13 == 1)
  {
    v5 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v7 = CFArrayGetCount(v5);
      if (Count && v7)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v19, v5, 0);
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DeviceConfiguration,std::allocator<DSP_Host_Types::DeviceConfiguration>,char const(&)[1],0>(v20, "");
      }

      if (*(this + 9) == *(this + 10))
      {
        v8 = 0;
      }

      else
      {
        v8 = v11;
      }

      if (v5 && (v13 & 1) != 0)
      {
        CFRelease(v5);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&cf);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v17);
  return v8;
}

void sub_1DE64FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, const void *);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va1);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_Types::load_list_from<DSP_Host_Types::FormatDescription>(void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a2);
  v6 = *a2;
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = v2 == v6 && v7 == 0;
  if (Count)
  {
    if (!v10)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v2, 0);
      operator new();
    }
  }

  return *a1 != a1[1];
}

void sub_1DE650144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::NegotiateResponse::add_to(DSP_Host_Types::NegotiateResponse *this, __CFDictionary **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v17 = Mutable;
  v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v16 = v5;
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v16);
      }

      v6 += 2;
    }

    while (v6 != v7);
    v5 = v16;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v5);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(Mutable, @"io context supported input formats", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v16 = v8;
  v9 = *(this + 6);
  v10 = *(this + 7);
  if (v9 != v10)
  {
    do
    {
      if (*v9)
      {
        (*(**v9 + 40))(*v9, &v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v8 = v16;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v8);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(Mutable, @"io context supported output formats", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v16, Mutable);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::DictionaryRef>(*a2, @"io context configuration", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v17 = v11;
  v13 = *(this + 9);
  v12 = *(this + 10);
  if (v13 == v12)
  {
    v14 = v11;
  }

  else
  {
    do
    {
      if (*v13)
      {
        (*(**v13 + 40))(*v13, &v17);
      }

      v13 += 2;
    }

    while (v13 != v12);
    v14 = v17;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&v16, v14);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"device configurations", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_1DE650414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AdaptResponse::load_from(DSP_Host_Types::AdaptResponse *this, CFDictionaryRef *a2)
{
  v4 = (this + 48);
  if (*(this + 6) == *(this + 7))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 48), (this + 24));
  }

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(v4, a2, this + 8);
}

void DSP_Host_Types::AdaptResponse::add_to(DSP_Host_Types::AdaptResponse *this, __CFDictionary **a2)
{
  v4 = (this + 48);
  if (*(this + 6) == *(this + 7))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 48), (this + 24));
  }

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(v4, a2, this + 8);
}

void DSP_Host_Types::DSPPropertyInfo::add_to(DSP_Host_Types::DSPPropertyInfo *this, __CFArray **a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  DSP_Dictionariable::DictionarySet::add_to((this + 296), a2);
}

void DSP_Host_Types::DSPPropertyInfo::init_set(DSP_Host_Types::DSPPropertyInfo *this)
{
  if (*(this + 37) == *(this + 38))
  {
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 24));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 48));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 72));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 96));
    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 120));

    DSP_Dictionariable::DictionarySet::add_kvp((this + 296), (this + 208));
  }
}

uint64_t DSP_Host_Types::DSPPropertyInfo::load_from(uint64_t **this, CFDictionaryRef *a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  return DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(this + 37, a2, (this + 1));
}

void DSP_Host_Types::DSPPropertyInfo::add_to(uint64_t **this, __CFDictionary **a2)
{
  DSP_Host_Types::DSPPropertyInfo::init_set(this);

  DSP_Dictionariable::DictionarySet::maybe_add_under_key(this + 37, a2, (this + 1));
}

void DSP_Host_Types::DSPPropertyInfo::~DSPPropertyInfo(DSP_Host_Types::DSPPropertyInfo *this)
{
  DSP_Host_Types::DSPPropertyInfo::~DSPPropertyInfo(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5985BB0;
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  *(this + 26) = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](this + 264);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](this + 232);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 208));
  *(this + 15) = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](this + 176);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](this + 144);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 120));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 96));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F5985FB0;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

BOOL DSP_Host_Types::DSPPropertyInfoArray::load_from(DSP_Host_Types::DSPPropertyInfoArray *this, CFDictionaryRef *a2)
{
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 3);
  v11[0] = &unk_1F598EC08;
  v11[1] = 0;
  v11[2] = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, @"custom property info array");
  if (v10 == 1)
  {
    v4 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v6 = CFArrayGetCount(v4);
      if (Count && v6)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v4, 0);
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>(&v13, "");
      }

      v7 = *(this + 3) != *(this + 4);
      if (v4 && (v10 & 1) != 0)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v11);
  return v7;
}

void sub_1DE650BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a9);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(&a11);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSPPropertyInfoArray::add_to(DSP_Host_Types::DSPPropertyInfoArray *this, __CFDictionary **a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9 = Mutable;
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (v6 == v5)
  {
    v7 = Mutable;
  }

  else
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 40))(*v6, &v9);
      }

      v6 += 2;
    }

    while (v6 != v5);
    v7 = v9;
  }

  mcp_applesauce::CF::Array_Builder::get_array(&cf, v7);
  mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::ArrayRef>(*a2, @"custom property info array", cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1DE650CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va);
  _Unwind_Resume(a1);
}

DSP_Host_Types::FormatDescription *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription*,DSP_Host_Types::FormatDescription*,DSP_Host_Types::FormatDescription*>(DSP_Host_Types::FormatDescription *a1, DSP_Host_Types::FormatDescription *a2, DSP_Host_Types::FormatDescription *this)
{
  if (a1 == a2)
  {
    return this;
  }

  v4 = a1;
  v5 = 0;
  v6 = this - 152;
  v7 = this;
  do
  {
    DSP_Host_Types::FormatDescription::FormatDescription(v7, v4);
    v4 = (v4 + 152);
    v7 = (v7 + 152);
    v5 -= 152;
    v6 += 152;
  }

  while (v4 != a2);
  return v7;
}

void *std::__function::__value_func<char const* ()(DSP_Host_Types::StreamSemanticType)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE65114C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<DSP_Host_Types::StreamSemanticType ()(char const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE6513B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::operator=(uint64_t a1, _DWORD *a2)
{
  *(a1 + 40) = *a2;
  *(a1 + 44) = 1;
  *(a1 + 64) = a2[1];
  *(a1 + 68) = 1;
  *(a1 + 88) = a2[2];
  *(a1 + 92) = 1;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 96));
  if (a2[2])
  {
    operator new();
  }

  return a1;
}

void sub_1DE6515F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration::ChannelDescription>::~DSP_Host_DictionaryData(v18);
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::AudioChannelConfiguration::hash_equal(DSP_Host_Types::AudioChannelConfiguration *this, const DSP_Host_Types::AudioChannelConfiguration *a2)
{
  v4 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(this);
  if (v4 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a2))
  {
    return 0;
  }

  v5 = *(this + 12);
  v6 = *(this + 13);
  if (v6 - v5 != *(a2 + 13) - *(a2 + 12) || v6 == v5)
  {
    return 1;
  }

  v9 = 0;
  do
  {
    v10 = v5 + 16 * v9;
    result = *v10;
    if (!*v10)
    {
      break;
    }

    v11 = (*(a2 + 12) + 16 * v9);
    if (!*v11)
    {
      return 0;
    }

    v12 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(result);
    if (v12 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(*v11))
    {
      return 0;
    }

    v14 = *(*v10 + 72);
    v13 = *(*v10 + 80);
    v15 = *(*v11 + 9);
    if (v13 - v14 != *(*v11 + 10) - v15)
    {
      return 0;
    }

    while (v14 != v13)
    {
      if (*v14 != *v15)
      {
        return 0;
      }

      ++v14;
      ++v15;
    }

    ++v9;
    v5 = *(this + 12);
    result = 1;
  }

  while (v9 < (*(this + 13) - v5) >> 4);
  return result;
}

uint64_t DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 16 * v5);
    if (!v6)
    {
      return 0;
    }

    v7 = *(*a2 + 16 * v5);
    if (!v7)
    {
      return 0;
    }

    v8 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v6);
    if (v8 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v7))
    {
      return 0;
    }

    v9 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v6 + 14));
    if (v9 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v7 + 14)))
    {
      return 0;
    }

    v10 = v6[42];
    v11 = v6[43];
    if (v11 - v10 != v7[43] - v7[42])
    {
      return 0;
    }

    if (v11 != v10)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v7[42];
        v15 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v10 + v12));
        if (v15 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((v14 + v12)))
        {
          return 0;
        }

        ++v13;
        v10 = v6[42];
        v12 += 152;
      }

      while (v13 < 0x86BCA1AF286BCA1BLL * ((v6[43] - v10) >> 3));
    }

    ++v5;
    v2 = *a1;
    if (v5 >= (a1[1] - *a1) >> 4)
    {
      return 1;
    }
  }
}

void *DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(void *a1, int a2)
{
  v2 = a2;
  if ((a2 & 0x20) != 0)
  {
    v6 = "identical";
  }

  else
  {
    if (a2)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "same ", 5);
      if (v2)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "activation ", 11);
      }

      if ((v2 & 2) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "processing ", 11);
      }

      if ((v2 & 4) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "device list ", 12);
      }

      if ((v2 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "device traits ", 14);
      }

      if ((v2 & 0x10) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "streams used ", 13);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v7);
      v7[0] = *MEMORY[0x1E69E54D8];
      v4 = *(MEMORY[0x1E69E54D8] + 72);
      *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v8 = v4;
      v9 = MEMORY[0x1E69E5548] + 16;
      if (v11 < 0)
      {
        operator delete(v10[7].__locale_);
      }

      v9 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v10);
      std::iostream::~basic_iostream();
      return MEMORY[0x1E12C15F0](&v12);
    }

    v6 = "different";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v6);
}

void sub_1DE651B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::util_compare_request(DSP_Host_Types::ConfigurationChangeRequest *this, const DSP_Host_Types::ConfigurationChangeRequest *a2, int a3)
{
  if (a3 && (DSP_Host_Types::ConfigurationChangeRequest::hash_equal(this, a2) & 1) != 0)
  {
    return 63;
  }

  v6 = DSP_Dictionariable::SingleKvp<BOOL>::operator==(this + 24, a2 + 24);
  if (*(this + 14) == *(a2 + 14))
  {
    v7 = *(this + 12);
    if (v7 == (this + 104))
    {
LABEL_19:
      v13 = 2;
      goto LABEL_21;
    }

    v8 = *(a2 + 12);
    while (*(v7 + 7) == *(v8 + 7))
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v28 = *v7 == v10;
          v10 = v7;
        }

        while (!v28);
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v28 = *v12 == v8;
          v8 = v12;
        }

        while (!v28);
      }

      v8 = v12;
      if (v7 == (this + 104))
      {
        goto LABEL_19;
      }
    }
  }

  v13 = 0;
LABEL_21:
  v5 = v13 | v6;
  v14 = *(this + 85);
  v15 = *(this + 84);
  if (v14 - v15 == *(a2 + 85) - *(a2 + 84))
  {
    v5 |= 0xCu;
    if (v14 != v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *(v15 + v16);
        if (!v18)
        {
          break;
        }

        v19 = *(a2 + 84);
        v20 = *(v19 + v16);
        if (!v20)
        {
          break;
        }

        v21 = DSP_Dictionariable::SingleKvp<std::string>::operator==(v18 + 24, v20 + 24);
        v22 = DSP_Dictionariable::SingleKvp<std::string>::operator==(*(v15 + v16) + 72, *(v19 + v16) + 72);
        if (!v21 || !v22)
        {
          break;
        }

        v23 = *(v15 + v16);
        v24 = *(v19 + v16);
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v23 + 256), (v24 + 256)))
        {
          v25 = 0;
        }

        else
        {
          v26 = *(v24 + 272);
          v27 = *(v23 + 272);
          v25 = v27 == v26;
          v28 = v27 != v26 || v27 == 0;
          if (!v28)
          {
            v25 = *(v23 + 264) == *(v24 + 264);
          }
        }

        if ((v25 & DSP_Dictionariable::SingleKvp<BOOL>::operator==(*(v15 + v16) + 400, *(v19 + v16) + 400)) == 0)
        {
          v5 &= ~8u;
        }

        ++v17;
        v15 = *(this + 84);
        v16 += 16;
        if (v17 >= (*(this + 85) - v15) >> 4)
        {
          goto LABEL_40;
        }
      }

      v5 &= 0xF3u;
    }
  }

LABEL_40:
  v29 = *(this + 75);
  v30 = *(this + 74);
  v31 = *(a2 + 75);
  v32 = *(a2 + 74);
  if (v29 - v30 == v31 - v32)
  {
    while (v30 != v29)
    {
      if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v30, v32))
      {
        return v5;
      }

      v30 += 24;
      v32 += 3;
    }

    v5 |= 0x10u;
  }

  return v5;
}

uint64_t DSP_Host_Types::ConfigurationChangeRequest::hash_equal(void *a1, void *a2)
{
  v4 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a1);
  if (v4 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(a2) && a1[14] == a2[14])
  {
    v5 = a1[12];
    if (v5 == a1 + 13)
    {
LABEL_17:
      v12 = a1[75];
      v13 = a1[74];
      v14 = a2[74];
      if (v12 - v13 == a2[75] - v14)
      {
        while (v13 != v12)
        {
          result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13, v14);
          if (!result)
          {
            return result;
          }

          v13 += 24;
          v14 += 3;
        }

        v16 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 9));
        if (v16 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 9)))
        {
          v17 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 15));
          if (v17 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 15)))
          {
            v18 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a1 + 34));
            if (v18 == DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description((a2 + 34)))
            {
              result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((a1 + 59), (a2 + 59));
              if (!result)
              {
                return result;
              }

              v19 = a1[85];
              v20 = a1[84];
              if (v19 - v20 == a2[85] - a2[84])
              {
                if (v19 == v20)
                {
                  return 1;
                }

                v21 = 0;
                v22 = 0;
                while (1)
                {
                  v23 = *(v20 + v21);
                  if (!v23)
                  {
                    break;
                  }

                  v24 = *(a2[84] + v21);
                  if (!v24)
                  {
                    break;
                  }

                  v25 = DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v23);
                  if (v25 != DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(v24))
                  {
                    break;
                  }

                  result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((v23 + 53), (v24 + 53));
                  if (result)
                  {
                    result = DSP_Host_Types::AudioChannelConfiguration::hash_equal((v23 + 68), (v24 + 68));
                    if (result)
                    {
                      if (v23[84] - v23[83] != v24[84] - v24[83] || v23[87] - v23[86] != v24[87] - v24[86] || v23[90] - v23[89] != v24[90] - v24[89])
                      {
                        return 0;
                      }

                      result = DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 83, v24 + 83);
                      if (result)
                      {
                        result = DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 86, v24 + 86);
                        if (result)
                        {
                          if ((DSP_Host_Types::DeviceDescription::hash_equal(DSP_Host_Types::DeviceDescription const&)const::$_0::operator()(v23 + 89, v24 + 89) & 1) == 0)
                          {
                            return 0;
                          }

                          ++v22;
                          v20 = a1[84];
                          v21 += 16;
                          result = 1;
                          if (v22 < (a1[85] - v20) >> 4)
                          {
                            continue;
                          }
                        }
                      }
                    }
                  }

                  return result;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v6 = a2[12];
      while (*(v5 + 7) == *(v6 + 7))
      {
        v7 = v5[1];
        v8 = v5;
        if (v7)
        {
          do
          {
            v5 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v5 = v8[2];
            v9 = *v5 == v8;
            v8 = v5;
          }

          while (!v9);
        }

        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v9 = *v11 == v6;
            v6 = v11;
          }

          while (!v9);
        }

        v6 = v11;
        if (v5 == a1 + 13)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return 0;
}

BOOL DSP_Dictionariable::SingleKvp<BOOL>::operator==(uint64_t a1, uint64_t a2)
{
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  v5 = *(a2 + 17);
  v6 = *(a1 + 17);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

BOOL DSP_Dictionariable::SingleKvp<std::string>::operator==(uint64_t a1, uint64_t a2)
{
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  result = v6 == v5;
  if (v6 == v5 && v6 != 0)
  {
    v8 = *(a1 + 39);
    if (v8 >= 0)
    {
      v9 = *(a1 + 39);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v10 = *(a2 + 39);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 24);
    }

    if (v9 != v10)
    {
      return 0;
    }

    if (v8 >= 0)
    {
      v12 = (a1 + 16);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    if (v11 >= 0)
    {
      v13 = (a2 + 16);
    }

    else
    {
      v13 = *(a2 + 16);
    }

    return memcmp(v12, v13, v9) == 0;
  }

  return result;
}

void AMCP::Core::update_time_for_all(void *a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      if ((*(**v4 + 312))(*v4))
      {
        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](a1, v4);
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

uint64_t std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

double AMCP::Core::Engine::calculate_safety_violation_read(AMCP::Core::Engine *this, double a2)
{
  v4 = mach_absolute_time();
  (*(*this + 304))(v8, this);
  v5 = (*(*this + 344))(this);
  v6 = v8[0] + floor((v4 - *&v8[1]) / v5);
  return v6 - (*(*this + 80))(this) - a2;
}

double AMCP::Core::Engine::calculate_safety_violation_write(AMCP::Core::Engine *this, double a2)
{
  v4 = mach_absolute_time();
  (*(*this + 304))(v8, this);
  v5 = (*(*this + 344))(this);
  v6 = v8[0] + floor((v4 - *&v8[1]) / v5);
  return a2 - (v6 + (*(*this + 88))(this));
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1DE652E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::runtime_error a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, const void *a40)
{
  __cxa_free_exception(v41);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a40);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v43 - 200));
  if (*(v40 + 55) < 0)
  {
    operator delete(*v42);
  }

  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v45);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void std::__shared_ptr_emplace<AMCP::Utility::Power_Assertion>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IOPMAssertionRelease(v2);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AMCP::Utility::Power_Assertion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::Simple_Engine_IO_State(AMCP::Core::Implementation::Simple_Engine_IO_State *this, const __CFString **a2, uint64_t a3, uint64_t a4, int a5, dispatch_queue_t *a6, const AMCP::Utility::Dispatch_Queue *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = -1;
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = 0;
  object[0] = 0;
  std::vector<BOOL>::vector(this + 3, a3, object);
  *(this + 12) = 0;
  object[0] = 0;
  std::vector<BOOL>::vector(this + 7, a4, object);
  *(this + 120) = 0u;
  *(this + 20) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  *(this + 22) = 0;
  *(this + 23) = 850045863;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 850045863;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = dispatch_semaphore_create(0);
  *(this + 440) = 0;
  *(this + 448) = 0;
  v11 = dispatch_queue_create("AMCP Scratch Queue", 0);
  v12 = AMCP::Utility::Dispatch_Queue::operator=(this + 15, v11);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (!*(this + 15))
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *object = 136315650;
      *&object[4] = "Engine.cpp";
      v37 = 1024;
      v38 = 224;
      v39 = 2080;
      v40 = "m_power_assertion_queue.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", object, 0x1Cu);
    }

    abort();
  }

  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(object, this + 15);
  dispatch_set_target_queue(*object, *a6);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
  v34 = @"PreventUserIdleSystemSleep";
  v13 = CFGetTypeID(@"PreventUserIdleSystemSleep");
  if (v13 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!*a2)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(cf, *a2);
  if (v31 >= 0)
  {
    v15 = cf;
  }

  else
  {
    v15 = cf[0];
  }

  caulk::make_string(&__p, "com.apple.audio.%s.preventuseridlesleep", v14, v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (p_p)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v33 = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
    if (!v33)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
      __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v33 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_18:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v31 < 0)
  {
    operator delete(cf[0]);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  if (*this)
  {
    __p.__r_.__value_.__r.__words[0] = @"audio-in";
    v19 = CFGetTypeID(@"audio-in");
    if (v19 != CFStringGetTypeID())
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, @"audio-in");
    CFRelease(@"audio-in");
  }

  if (*(this + 1))
  {
    __p.__r_.__value_.__r.__words[0] = @"audio-out";
    v20 = CFGetTypeID(@"audio-out");
    if (v20 != CFStringGetTypeID())
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
      __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, @"audio-out");
    CFRelease(@"audio-out");
  }

  mcp_applesauce::CF::Array_Builder::copy_array(cf, Mutable);
  std::allocate_shared[abi:ne200100]<AMCP::Utility::Power_Assertion,std::allocator<AMCP::Utility::Power_Assertion>,applesauce::CF::StringRef &,applesauce::CF::StringRef &,applesauce::CF::ArrayRef,int &,0>(&__p, &v34, &v33, cf, &v35);
}

void sub_1DE65385C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, const void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, const void *a27)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a11);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  applesauce::CF::StringRef::~StringRef(&a12);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a13);
  applesauce::CF::StringRef::~StringRef(&a26);
  applesauce::CF::StringRef::~StringRef(&a27);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v28);
  v30 = v27[14];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = v27[12];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = v27[7];
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v27[3];
  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::get_input_stream_active_list(AMCP::Core::Implementation::Simple_Engine_IO_State *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 5);
  std::vector<BOOL>::vector(this, &a2[6]);

  os_unfair_lock_unlock(a2 + 5);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::vector<BOOL>::vector(a1, a3);
  std::vector<BOOL>::resize(v5, *a2, 0);
  os_unfair_lock_lock((a2 + 20));
  std::vector<BOOL>::operator=((a2 + 24), a1);

  os_unfair_lock_unlock((a2 + 20));
}

void sub_1DE653B44(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 5);
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::get_output_stream_active_list(AMCP::Core::Implementation::Simple_Engine_IO_State *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 12);
  std::vector<BOOL>::vector(this, &a2[14]);

  os_unfair_lock_unlock(a2 + 12);
}

void AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::vector<BOOL>::vector(a1, a3);
  std::vector<BOOL>::resize(v5, *(a2 + 8), 0);
  os_unfair_lock_lock((a2 + 48));
  std::vector<BOOL>::operator=((a2 + 56), a1);

  os_unfair_lock_unlock((a2 + 48));
}

void sub_1DE653C24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

unsigned int *AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(unsigned int *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 20);
  if ((v1 & 0x80000000) != 0)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      buf[0] = 136315650;
      *&buf[1] = "Engine.cpp";
      v20 = 1024;
      v21 = 292;
      v22 = 2080;
      v23 = "not (m_power_assertion_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v24 = "void AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions()";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v26 = 292;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  if (!atomic_fetch_add(this + 20, 1u))
  {
    v2 = *(this + 12);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(this + 14);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  return this;
}

void sub_1DE653F3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(void)::$_0>(dispatch_queue_s *,AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions(void)::$_0 &&)::{lambda(void *)#1}::__invoke(IOPMAssertionID **a1)
{
  v5 = a1;
  v2 = *a1;
  if (v2)
  {
    AMCP::Utility::Power_Assertion::take(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    AMCP::Utility::Power_Assertion::take(v3);
  }

  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_1DE653F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::Utility::Power_Assertion::take(IOPMAssertionID *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    valuePtr = 255;
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v16 = v2;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v3 = IOPMAssertionSetProperty(*this, @"AssertLevel", v2);
    v4 = v3;
    AMCP::Utility::Kernel_Error_Category::get(v3);
    if (v4)
    {
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = this + 2;
        if (*(this + 31) < 0)
        {
          v10 = *v10;
        }

        valuePtr = 136315906;
        v18 = "Power_Assertion.h";
        v19 = 1024;
        v20 = 125;
        v21 = 2080;
        v22 = "error.operator BOOL()";
        v23 = 2080;
        v24 = v10;
        _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to take %s", &valuePtr, 0x26u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](v13, v4, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(v14, v13);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(&valuePtr, v14);
      v25 = "void AMCP::Utility::Power_Assertion::take()";
      v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Power_Assertion.h";
      v27 = 125;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

unsigned int *AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(unsigned int *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 20);
  if (v1 <= 0)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      buf[0] = 136315650;
      *&buf[1] = "Engine.cpp";
      v20 = 1024;
      v21 = 312;
      v22 = 2080;
      v23 = "not (m_power_assertion_refcount > 0)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v24 = "void AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions()";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v26 = 312;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  if (atomic_fetch_add(this + 20, 0xFFFFFFFF) == 1)
  {
    v2 = *(this + 12);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(this + 14);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  return this;
}

void sub_1DE654604(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(void)::$_0>(dispatch_queue_s *,AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(void)::$_0 &&)::{lambda(void *)#1}::__invoke(IOPMAssertionID **a1)
{
  v5 = a1;
  v2 = *a1;
  if (v2)
  {
    AMCP::Utility::Power_Assertion::release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    AMCP::Utility::Power_Assertion::release(v3);
  }

  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void AMCP::Utility::Power_Assertion::release(IOPMAssertionID *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    valuePtr = 0;
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v15 = v2;
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v3 = IOPMAssertionSetProperty(*this, @"AssertLevel", v2);
    v4 = v3;
    AMCP::Utility::Kernel_Error_Category::get(v3);
    v14.__val_ = v4;
    v14.__cat_ = &AMCP::Utility::Kernel_Error_Category::get(void)::s_category;
    if (v4)
    {
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = this + 2;
        if (*(this + 31) < 0)
        {
          v10 = *v10;
        }

        std::error_code::message(&__p, &v14);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        valuePtr = 136316162;
        v17 = "Power_Assertion.h";
        v18 = 1024;
        v19 = 136;
        v20 = 2080;
        v21 = "error.value() == 0";
        v22 = 2080;
        v23 = v10;
        v24 = 2080;
        v25 = p_p;
        _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s failed to take %s: %s", &valuePtr, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      abort();
    }

    CFRelease(v2);
  }
}

void sub_1DE654860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a14);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_AHPPlugIn::~HALS_AHPPlugIn(HALS_AHPPlugIn *this)
{
  HALS_AHPPlugIn::~HALS_AHPPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5986190;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HALB_CFPlugIn::~HALB_CFPlugIn((this + 8));
}

BOOL HALS_AHPPlugIn::ObjectIsPropertySettable(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = (*(*this + 192))(this, a2, a3, &v18);
  if (v4)
  {
    v5.i32[0] = a3->mSelector;
    v7 = vrev64_s16(*&vmovl_u8(v5));
    v8 = vuzp1_s8(v7, v7);
    v16 = v8.i32[0];
    v17 = 0;
    v8.i32[0] = a3->mScope;
    v9 = vrev64_s16(*&vmovl_u8(v8));
    v14 = vuzp1_s8(v9, v9).u32[0];
    v15 = 0;
    v13[0] = HIBYTE(v4);
    v13[1] = BYTE2(v4);
    v13[2] = BYTE1(v4);
    v12 = v4;
    v13[3] = v4;
    v13[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v20 = "HALS_AHPPlugIn.cpp";
      v21 = 1024;
      v22 = 102;
      v23 = 2080;
      v24 = &v16;
      v25 = 2080;
      v26 = &v14;
      v27 = 2048;
      v28 = mElement;
      v29 = 1024;
      v30 = v12;
      v31 = 2080;
      v32 = v13;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectIsPropertySettable: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v12;
  }

  return v18 != 0;
}

uint64_t HALS_AHPPlugIn::ObjectGetPropertyDataSize(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v6 = (*(*this + 200))(this, a2, a3, a4, a5, &v20);
  if (v6)
  {
    v7.i32[0] = a3->mSelector;
    v9 = vrev64_s16(*&vmovl_u8(v7));
    v10 = vuzp1_s8(v9, v9);
    v18 = v10.i32[0];
    v19 = 0;
    v10.i32[0] = a3->mScope;
    v11 = vrev64_s16(*&vmovl_u8(v10));
    v16 = vuzp1_s8(v11, v11).u32[0];
    v17 = 0;
    v15[0] = HIBYTE(v6);
    v15[1] = BYTE2(v6);
    v15[2] = BYTE1(v6);
    v14 = v6;
    v15[3] = v6;
    v15[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_AHPPlugIn.cpp";
      v23 = 1024;
      v24 = 110;
      v25 = 2080;
      v26 = &v18;
      v27 = 2080;
      v28 = &v16;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v14;
      v33 = 2080;
      v34 = v15;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectGetPropertyDataSize: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v14;
  }

  return v20;
}

uint64_t HALS_AHPPlugIn::ObjectGetPropertyData(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, unsigned int *a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  result = (*(*this + 208))(this, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = BYTE3(result);
    v16[1] = BYTE2(result);
    v16[2] = BYTE1(result);
    v15 = result;
    v16[3] = result;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_AHPPlugIn.cpp";
      v23 = 1024;
      v24 = 119;
      v25 = 2080;
      v26 = &v19;
      v27 = 2080;
      v28 = &v17;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectGetPropertyData: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  return result;
}

uint64_t HALS_AHPPlugIn::ObjectSetPropertyData(HALS_AHPPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  result = (*(*this + 216))(this, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = BYTE3(result);
    v16[1] = BYTE2(result);
    v16[2] = BYTE1(result);
    v15 = result;
    v16[3] = result;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_AHPPlugIn.cpp";
      v23 = 1024;
      v24 = 126;
      v25 = 2080;
      v26 = &v19;
      v27 = 2080;
      v28 = &v17;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_AHPPlugIn::ObjectSetPropertyData: got an error from the plug-in routine [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  return result;
}

void HALS_IOStreamInfo::HALS_IOStreamInfo(HALS_IOStreamInfo *this, const HALS_IOStreamInfo *a2)
{
  *this = &unk_1F59910A0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(this + 53) = *(a2 + 53);
  *(this + 40) = v6;
  *(this + 24) = v5;
  *(this + 8) = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 9, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  v7 = *(a2 + 6);
  *(this + 14) = 0;
  *(this + 6) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v9 = *(a2 + 14);
  v8 = *(a2 + 15);
  if (v8 != v9)
  {
    std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100](this + 14, (v8 - v9) >> 7);
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 17, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  *(this + 20) = *(a2 + 20);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](this + 21, a2 + 21);
  v10 = *(a2 + 25);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 27);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 28);
  *(this + 58) = *(a2 + 58);
  *(this + 28) = v12;
  std::__optional_copy_base<CA::ChannelLayout,false>::__optional_copy_base[abi:ne200100](this + 240, a2 + 240);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(this + 35, *(a2 + 35), *(a2 + 36), *(a2 + 36) - *(a2 + 35));
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(this + 38, *(a2 + 38), *(a2 + 39), *(a2 + 39) - *(a2 + 38));
  v13 = *(a2 + 328);
  v14 = *(a2 + 360);
  *(this + 344) = *(a2 + 344);
  *(this + 360) = v14;
  *(this + 328) = v13;
  *(this + 47) = *(a2 + 47);
  v15 = *(a2 + 49);
  *(this + 48) = *(a2 + 48);
  *(this + 49) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 51);
  *(this + 50) = *(a2 + 50);
  *(this + 51) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 26);
  v18 = *(a2 + 27);
  v19 = *(a2 + 28);
  *(this + 464) = *(a2 + 464);
  *(this + 27) = v18;
  *(this + 28) = v19;
  *(this + 26) = v17;
}