uint64_t VisitableVector<HALS_IOStreamGroup>::apply<>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    v10[0] = v4;
    v10[1] = v6;
    result = (v8)(&v8 + 8, v10);
    if (result)
    {
      break;
    }

    v4 += 24;
    v5 = 1;
    if (v4 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorI18HALS_IOStreamGroupE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESN_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a1;
  *&v5 = _ZN5caulk12function_refIFiRN15VisitableVectorI17HALS_IOStreamInfoE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjRS2_EEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESM_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v5 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v5);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl::ActiveTap &)::$_0>(uint64_t **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if (*(a6 + 108))
  {
    HALS_IODSPInfo::GetClientFormat(&v45, (a6 + 112));
  }

  else
  {
    v9 = *(a6 + 432);
    *&v45.__first_ = *(a6 + 416);
    *&v45.__end_ = v9;
    v45.__end_cap_.__value_ = *(a6 + 448);
  }

  if (LODWORD(v45.__begin_) != 1819304813 || (BYTE4(v45.__begin_) & 0x40) != 0)
  {
    *v8[2] = 1;
  }

  if (!*(a6 + 108) || (v11 = *(a6 + 112), *(a6 + 120) == v11) || !v11)
  {
    v11 = (a6 + 456);
  }

  v12 = *v11;
  v13 = *(*v11 + 88);
  if (v13)
  {
    DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v13 + 16), a2);
  }

  else
  {
    DeviceIDFromEngineID = 0;
  }

  if (*(v8 + 28) == 1)
  {
    if (*(v8 + 36) == 1)
    {
      v15 = *(v8 + 8) == a2;
      goto LABEL_21;
    }

    if (*(v8 + 6) == DeviceIDFromEngineID)
    {
      v15 = *(v8 + 8) == *(a6 + 12);
LABEL_21:
      v16 = v15;
      goto LABEL_25;
    }
  }

  v16 = 0;
LABEL_25:
  if (*(a6 + 108))
  {
    HALS_IODSPInfo::GetClientFormat(&v45, (a6 + 112));
  }

  else
  {
    v17 = *(a6 + 432);
    *&v45.__first_ = *(a6 + 416);
    *&v45.__end_ = v17;
    v45.__end_cap_.__value_ = *(a6 + 448);
  }

  first = v45.__first_;
  v43 = *&v45.__begin_;
  end_cap = v45.__end_cap_;
  if (*&v45.__first_ != 0.0)
  {
    v19 = *v8;
    v20 = *(*v8 + 8);
    v21 = *(*v8 + 16);
    if (v20 >= v21)
    {
      v23 = *v19;
      v24 = v20 - *v19;
      v25 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3) + 1;
      if (v25 > 0x492492492492492)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v23) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x249249249249249)
      {
        v27 = 0x492492492492492;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 8 * (v24 >> 3);
      *v28 = DeviceIDFromEngineID;
      *(v28 + 8) = first;
      *(v28 + 16) = v43;
      *(v28 + 32) = end_cap;
      *(v28 + 48) = v16;
      v22 = v28 + 56;
      v29 = v28 - v24;
      memcpy((v28 - v24), v23, v24);
      *v19 = v29;
      *(v19 + 8) = v22;
      *(v19 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v20 = DeviceIDFromEngineID;
      *(v20 + 8) = first;
      *(v20 + 16) = v43;
      *(v20 + 32) = end_cap;
      *(v20 + 48) = v16;
      v22 = v20 + 56;
    }

    *(v19 + 8) = v22;
    v30 = v8[1];
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
    if (v32 >= v31)
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *v30) >> 3);
      if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v30) >> 3);
      v36 = 2 * v35;
      if (2 * v35 <= v34 + 1)
      {
        v36 = v34 + 1;
      }

      if (v35 >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v36;
      }

      v45.__end_cap_.__value_ = v8[1];
      if (v37)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v37);
      }

      v45.__first_ = 0;
      v45.__begin_ = (24 * v34);
      v45.__end_ = (24 * v34);
      v45.__end_cap_.__value_ = 0;
      std::string::basic_string[abi:ne200100]<0>((24 * v34), (v12 + 112));
      v33 = v45.__end_ + 1;
      v38 = *(v30 + 8) - *v30;
      v39 = v45.__begin_ - v38;
      memcpy(v45.__begin_ - v38, *v30, v38);
      v40 = *v30;
      *v30 = v39;
      v45.__first_ = v40;
      v45.__begin_ = v40;
      *(v30 + 8) = v33;
      v45.__end_ = v40;
      v41 = *(v30 + 16);
      *(v30 + 16) = v45.__end_cap_.__value_;
      v45.__end_cap_.__value_ = v41;
      std::__split_buffer<std::string>::~__split_buffer(&v45);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(*(v30 + 8), (v12 + 112));
      v33 = v32 + 1;
      *(v30 + 8) = v32 + 1;
    }

    *(v30 + 8) = v33;
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::GetHostedDSPInstanceProperties@<X0>(uint64_t result@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v5 = *(result + 2184);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (*(v6 + 96))
      {
        v9 = *(v6 + 92) == a3;
        if (v9)
        {
          return (*(**(v5 + 8) + 32))(*(v5 + 8));
        }
      }

      else
      {
        v9 = 0;
      }

      v10[0] = &unk_1F5978C10;
      v10[1] = a3;
      v10[2] = &v9;
      v11 = v10;
      v7 = *(v6 + 176);
      v8 = *(v6 + 184);
      while (v7 != v8)
      {
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11, v7);
        v7 += 24;
      }

      result = std::__function::__value_func<void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::~__value_func[abi:ne200100](v10);
      if (v9)
      {
        return (*(**(v5 + 8) + 32))(*(v5 + 8));
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void HALS_IOContext_Legacy_Impl::GetHostedDSPProcessorPropertySetInterface(HALS_IOContext_Legacy_Impl *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (*(this + 272))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3802000000;
    v11 = __Block_byref_object_copy__58_13560;
    v13 = 0;
    v14 = 0;
    v12 = __Block_byref_object_dispose__59_13561;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN26HALS_IOContext_Legacy_Impl41GetHostedDSPProcessorPropertySetInterfaceEj_block_invoke;
    v6[3] = &unk_1E8678170;
    v6[4] = &v8;
    v6[5] = this;
    v7 = a2;
    v4 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v4, v6);
    v5 = v9[6];
    *a3 = v9[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    _Block_object_dispose(&v8, 8);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1DE5F697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__58_13560(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__59_13561(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN26HALS_IOContext_Legacy_Impl41GetHostedDSPProcessorPropertySetInterfaceEj_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 2176);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
LABEL_9:
    v7 = 0uLL;
    v10 = 0u;
    goto LABEL_11;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v3 + 16);
    if (*(v6 + 4) == v5 || *(v6 + 8) == v5)
    {
      break;
    }

LABEL_8:
    v3 += 24;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  (*(**(v6 + 136) + 40))(&v10);
  if (!v10)
  {
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }

    goto LABEL_8;
  }

  v7 = v10;
LABEL_11:
  v8 = *(*(a1 + 32) + 8);
  v10 = 0uLL;
  v9 = *(v8 + 48);
  *(v8 + 40) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetSafetyOffset(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v2 = *(this + 195);
  if (v2 && *(v2 + 88))
  {
    return (*(v2 + 4 * a2 + 400) + *(v2 + 4 * a2 + 392) + *(v2 + 4 * a2 + 416) + *(v2 + 4 * a2 + 424));
  }

  else
  {
    return 0;
  }
}

double HALS_IOContext_Legacy_Impl::GetActualSampleRate(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(this + 195);
  result = 0.0;
  if (v1)
  {
    if (*(this + 1340) == 1 && (v3 = *(v1 + 368)) != 0)
    {
      v4 = *(v3 + 40 * *(v3 + 192) + 200);
      v5 = 24000000.0 / v4;
      v6 = v4 == 0.0;
      result = 0.0;
      if (!v6)
      {
        return v5;
      }
    }

    else if (*(v1 + 88))
    {
      return *(v1 + 848);
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::GetStreamInfo(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, int a5)
{
  v9 = a3 / 0x38;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, a5);
  if (NumberStreams >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = NumberStreams;
  }

  *a4 = v11;
  if (v11)
  {
    v12 = 0;
    do
    {
      HALS_IOContextDescription::GetStreamInfoAtIndex((a1 + 1536), a5, v12++, a2);
      a2 += 56;
    }

    while (v12 < *a4);
  }
}

void HALS_IOContext_Legacy_Impl::SetIdentifySpeechDeviceToAllowDeviceRestart(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 1340) != 1)
  {
    *(this + 1376) = a2;

    HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "HALS_IOContext_Legacy_Impl.cpp";
    v5 = 1024;
    v6 = 5272;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::_SetPropertyData: can't set kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart while playing", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v11 = *MEMORY[0x1E69E9840];
  OS::CF::MutableArray::MutableArray(v8);
  if ((*(this + 1764) & 1) == 0)
  {
    if (std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 208), 0, *(this + 209)))
    {
      v6 = &unk_1F5991188;
      v7 = @"audio-in";
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, @"audio-in");
      OS::CF::UntypedObject::~UntypedObject(&v6);
    }

    if (std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 205), 0, *(this + 206)))
    {
      v6 = &unk_1F5991188;
      v7 = @"audio-out";
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, @"audio-out");
      OS::CF::UntypedObject::~UntypedObject(&v6);
    }

    v2 = *(this + 195);
    if (v2)
    {
      OS::CF::String::String(&v6, (v2 + 112));
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, v7);
      OS::CF::UntypedObject::~UntypedObject(&v6);
    }
  }

  v3 = *(this + 1376) ^ 1;
  OS::CF::UntypedObject::UntypedObject(&v4, cf);
  v4 = &unk_1F5987290;
  v5 = v3;
  v10 = 0;
  operator new();
}

void sub_1DE5F6F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v18 - 72);
  OS::CF::UntypedObject::~UntypedObject(v17);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(void *a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = a1[175];
  v3 = a1[176];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = a1[173];
    v8 = v2;
    v9 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = a1[173];
    v8 = a1[175];
    v9 = 0;
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v10, a2);
  v5 = atomic_load((v4 + 32));
  if (v5)
  {
    atomic_store(1u, (v4 + 33));
  }

  if (*(v4 + 328) != 1)
  {
    operator new();
  }

  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v16, v10);
  v6 = *(v4 + 320);
  v7 = *v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS4_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_162_13568;
  block[4] = v14;
  v12 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v13, v16);
  dispatch_group_async(v6, v7, block);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v16);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DE5F71B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a2)
  {
    v23 = *(v21 + 8);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C407A7143E5);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0 &>(dispatch_queue_s *,HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::operator()(a1);
  return std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE5F741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::operator()(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  v2 = a1[1];
  if (v2)
  {
    v5 = std::__shared_weak_count::lock(v2);
    if (v5)
    {
      v4 = *a1;
      if (v4)
      {
        v3 = a1[5];
        if (!v3)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v3 + 48))(v3, &v4);
      }
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE5F74C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F749CLL);
}

void sub_1DE5F74CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c137_ZTSZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS0_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_e8_32c137_ZTSZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS0_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_1DE5F7574(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl21UpdatePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 8);
  v4[2] = &unk_1F5991188;
  v4[3] = @"PreventUserIdleSystemSleep";
  OS::CF::String::String<int>(v4, @"com.apple.audio.context%d.preventuseridlesleep", v3);
  operator new();
}

void sub_1DE5F7858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(va);
  MEMORY[0x1E12C1730](v15, 0x10C0C40D06D8F89);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void *OS::CF::String::String<int>(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &unk_1F5991188;
  a1[1] = v4;
  return a1;
}

IOPMAssertionID **std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](IOPMAssertionID **result, IOPMAssertionID *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      IOPMAssertionRelease(*v2);
    }

    OS::CF::UntypedObject::~UntypedObject((v2 + 8));
    OS::CF::UntypedObject::~UntypedObject((v2 + 4));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::destroy_deallocate(uint64_t a1)
{
  OS::CF::UntypedObject::~UntypedObject((a1 + 32));

  operator delete(a1);
}

OS::CF::UntypedObject *std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59827D8;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = OS::CF::UntypedObject::UntypedObject((a2 + 32), *(a1 + 40));
  *(a2 + 32) = &unk_1F5987290;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59827D8;
  OS::CF::UntypedObject::~UntypedObject((a1 + 4));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59827D8;
  OS::CF::UntypedObject::~UntypedObject((a1 + 4));
  return a1;
}

uint64_t HALS_IOContext_Legacy_Impl::CopyIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  HALS_IOThread::GetIOThreadOSWorkgroup(v4, this + 312);
  v2 = caulk::mach::details::retain_os_object(v5, v1);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v4);
  return v2;
}

uint64_t HALS_IOContext_Legacy_Impl::GetIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this)
{
  v5 = *MEMORY[0x1E69E9840];
  HALS_IOThread::GetIOThreadOSWorkgroup(v3, this + 312);
  v1 = v4;
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v3);
  return v1;
}

void HALS_IOContext_Legacy_Impl::SetIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this, os_workgroup_s *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  caulk::mach::os_workgroup_interval_managed::from_get(v7, a2);
  v5 = this + 328;
  v6 = HALB_Mutex::Lock((this + 328));
  v12 = MEMORY[0x1E69E3C18] + 16;
  v4 = caulk::mach::details::retain_os_object(v8, v3);
  v14 = v9;
  *v15 = *v10;
  *&v15[9] = *&v10[9];
  v12 = MEMORY[0x1E69E3C20] + 16;
  v13 = v4;
  v16 = v11;
  operator new();
}

void HALS_IOContext_Legacy_Impl::GetIOProcStreamUsage(HALS_IOContext_Legacy_Impl *this, AudioHardwareIOProcStreamUsage *a2, unsigned int *a3, char a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK26HALS_IOContext_Legacy_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke;
  v8[3] = &unk_1E8678148;
  v9 = a4;
  v8[6] = this;
  v8[7] = a3;
  v8[8] = a2;
  v8[4] = &v14;
  v8[5] = &v10;
  v5 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v5, v8);
  if (*(v11 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = *(v11 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  *a3 = *(v15 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void sub_1DE5F8010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK26HALS_IOContext_Legacy_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  result = HALS_IOContextDescription::GetNumberStreams(v2 + 1536, *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = 4 * result + 12;
  if (**(a1 + 56) < *(*(*(a1 + 32) + 8) + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_IOContext_Legacy_Impl.cpp";
      v12 = 1024;
      v13 = 5230;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetIOProcStreamUsage: bad property data size for kAudioDevicePropertyIOProcStreamUsage", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = *(a1 + 64);
  *(v4 + 8) = result;
  if (result)
  {
    v5 = 0;
    v6 = *(a1 + 72);
    v7 = v4 + 12;
    v8 = result;
    do
    {
      result = HALS_IOContextDescription::IsStreamEnabledAtIndex((v2 + 1536), v6, v5);
      *(v7 + 4 * v5++) = result;
    }

    while (v8 != v5);
  }

  return result;
}

void sub_1DE5F81C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 2003329396;
    }

    *(*(*(v2 + 40) + 8) + 24) = v5;
    __cxa_end_catch();
    JUMPOUT(0x1DE5F80E0);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Legacy_Impl::SetIOProcStreamUsage(HALS_IOContext_Legacy_Impl *this, const AudioHardwareIOProcStreamUsage *a2, unsigned int a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "HALS_IOContext_Legacy_Impl.cpp";
      v17 = 1024;
      v18 = 5177;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::SetIOProcStreamUsage: bad property data size for kAudioDevicePropertyIOProcStreamUsage", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = a4;
  mNumberStreams = a2->mNumberStreams;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, a4);
  v10 = (a3 + 0x3FFFFFFF4) >> 2;
  if (mNumberStreams < v10)
  {
    LODWORD(v10) = mNumberStreams;
  }

  if (NumberStreams >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = NumberStreams;
  }

  *v16 = this + 312;
  *&v16[8] = HALB_Mutex::Lock((this + 328));
  HALS_IOContextDescription::UnregisterBuffers((this + 1536));
  if (v11)
  {
    v12 = 0;
    mStreamIsOn = a2->mStreamIsOn;
    do
    {
      HALS_IOContextDescription::SetStreamIsEnabledAtIndex(this + 192, v4, v12, mStreamIsOn[v12] != 0);
      ++v12;
    }

    while (v11 != v12);
  }

  if ((v4 & 1) == 0)
  {
    HALS_IOContextDescription::PushStreamUsageToEngines(this + 1536, 1, 0);
  }

  HALS_IOContextDescription::PushStreamUsageToEngines(this + 1536, v4, 0);
  HALS_IOContextDescription::RegisterBuffers((this + 1536));
  HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(this, v4);
  HALS_IOContextDescription::ClearInactiveInputSharedBuffers(this + 1536, *(this + 340));
  HALB_IOThread::Locker::~Locker(v16);
  return 0;
}

void sub_1DE5F8404(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5F8318);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(_DWORD *this, int a2)
{
  if (this[120] != 1735552612)
  {
    v2 = this;
    if (this[120] != 1718185577)
    {
      v3 = 494;
      if (a2)
      {
        v3 = 484;
      }

      if (*&this[v3])
      {
        this = HALS_IOContextDescription::GetNumberActiveStreams((this + 384), a2);
        if (this)
        {
          HALS_IOContext_Legacy_Impl::PauseIO(v2, *(*(v2 + 3) + 16));
          v4 = *(*(v2 + 3) + 16);

          return HALS_IOContext_Legacy_Impl::ResumeIO(v2, v4);
        }
      }
    }
  }

  return this;
}

uint64_t HALS_IOContext_Legacy_Impl::PauseIO(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = (this + 312);
  __p[0] = this + 312;
  LODWORD(__p[1]) = HALB_Mutex::Lock((this + 328));
  *(this + 304) = 1;
  HALB_IOThread::Locker::~Locker(__p);
  os_unfair_recursive_lock_lock_with_options();
  atomic_load(this + 334);
  kdebug_trace();
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v11 = v3;
  v12 = HALB_Mutex::Lock((this + 328));
  v4 = (this + 1336);
  v5 = atomic_load(this + 334);
  if (v5 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 803;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::PauseIO: pause count at maximum", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  atomic_fetch_add(v4, 1u);
  v6 = atomic_load(v4);
  if (v6 == 1 && ((v7 = (this + 1512), *(this + 190)) || *v7))
  {
    HALS_IOPrewarmManager::GetState(buf, v7);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v14 = *&buf[16];
    HALB_IOThread::Locker::~Locker(&v11);
    HALS_IOContext_Legacy_Impl::ResetEngineState_Off(this, __p);
    v8 = 1;
  }

  else
  {
    HALB_IOThread::Locker::~Locker(&v11);
    v8 = 0;
  }

  HALB_IOThread::WaitForState(v3, 1735552612);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  atomic_load(this + 334);
  kdebug_trace();
  os_unfair_recursive_lock_unlock();
  return v8;
}

void sub_1DE5F8784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5F866CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::ResumeIO(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  atomic_load(this + 334);
  kdebug_trace();
  v19 = this + 312;
  v20 = HALB_Mutex::Lock((this + 328));
  v3 = (this + 1336);
  v4 = atomic_load(this + 334);
  if (v4 && (atomic_fetch_add(v3, 0xFFFFFFFF), (v5 = atomic_load(v3)) == 0) && ((v7 = (this + 1512), *(this + 190)) || *v7))
  {
    HALS_IOPrewarmManager::GetState(buf, v7);
    v18 = *buf;
    HALB_IOThread::Locker::~Locker(&v19);
    v9 = v18;
    if (v18 == *(&v18 + 1))
    {
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 995;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ResetEngineState_On: Unexpected state for prewarming", buf, 0x12u);
      }
    }

    else
    {
      v10 = *(*(&v18 + 1) - 4);
      while (v9 != (*(&v18 + 1) - 4))
      {
        HALS_IOContext_Legacy_Impl::ChangeEngineState_On(this, *v9++);
      }

      *(this + 275) = v10;
    }

    HALS_IOContext_Legacy_Impl::StartIOThread(&v19, this);
    *buf = v20;
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    *&buf[16] = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v16 = atomic_load(this + 334);
        *v21 = 136315650;
        v22 = "HALS_IOContext_Legacy_Impl.cpp";
        v23 = 1024;
        v24 = 1012;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ResetEngineState_On: IO is disabled (%d)", v21, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    v6 = v18;
  }

  else
  {
    HALB_IOThread::Locker::~Locker(&v19);
    v6 = 0;
  }

  if (v6)
  {
    operator delete(v6);
  }

  atomic_load(this + 334);
  kdebug_trace();
  return os_unfair_recursive_lock_unlock();
}

void sub_1DE5F8B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a2)
  {
    AMCP::Utility::Mach_Port::~Mach_Port(va);
    if (a9)
    {
      operator delete(a9);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5F89B8);
  }

  _Unwind_Resume(exception_object);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_Legacy_Impl::ChangeEngineState_On(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(a1 + 1100) = a2;
  v10[0] = HALS_IOContext_Legacy_Impl::StartHardware_Helper;
  v10[1] = a1;
  v9 = &unk_1F5983F68;
  v12[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&>>;
  v12[1] = v10;
  v11 = &off_1F5983F18;
  v13 = v12;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v13;
  v2 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, &v11, &v9);
  v3 = v2;
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1076;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ChangeEngineState_On: Unexpected error when changing engine prewarming state", buf, 0x12u);
    }
  }

  return v3;
}

void HALS_IOContext_Legacy_Impl::StartIOThread(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v80 = HALS_ObjectMap::CopyObjectByObjectID(**(*(a2 + 24) + 72));
  v4 = (a2 + 312);
  v78 = a2 + 312;
  v79 = HALB_Mutex::Lock((a2 + 328));
  HasBeenDeactivated = HALS_IOThread::HasBeenDeactivated((a2 + 312));
  if (HasBeenDeactivated)
  {
    v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v38 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(HasBeenDeactivated);
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

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 635;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "mIOThread.HasBeenDeactivated() == true";
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO Thread since it has been deactivated", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
    __cxa_allocate_exception(0x40uLL);
    v70[4] = off_1F5991DD8;
    v71 = 1852797029;
    *&v72[8] = 1852797029;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    *v72 = &unk_1F598E5D8;
    *&v72[16] = &unk_1F598E600;
    v73 = 0;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, v72);
    *&buf[2] = "StartIOResult HALS_IOContext_Legacy_Impl::StartIOThread(mach_port_t, mach_port_t, mach_port_t)";
    *(&buf[2] + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
    LODWORD(buf[3]) = 635;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v69);
  }

  *(a2 + 304) = 0;
  if (atomic_load((a2 + 1336)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 728;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: mIODisableCount != 0. IO thread need not be started.", buf, 0x12u);
    }

    *this = 0;
LABEL_6:
    *(this + 12) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    goto LABEL_65;
  }

  if (!*(a2 + 1520) && !*(a2 + 1512))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 653;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: Stop interrupted resume - IO thread need not be started.", buf, 0x12u);
    }

    *this = 1;
    goto LABEL_6;
  }

  HALS_IOContextDescription::PushStreamUsageToEngines(a2 + 1536, 1, 1);
  HALS_IOContextDescription::PushStreamUsageToEngines(a2 + 1536, 0, 1);
  v7 = *(a2 + 1560);
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 670;
    v42 = MEMORY[0x1E69E9C10];
    v43 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: no master engine info";
    goto LABEL_81;
  }

  if (!*(v7 + 88))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 671;
    v42 = MEMORY[0x1E69E9C10];
    v43 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: no master engine";
LABEL_81:
    _os_log_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x12u);
LABEL_82:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = *(*(a2 + 24) + 88);
  if (v8)
  {
    (*(*v8 + 24))(v8, 0);
  }

  v9 = *(a2 + 1360);
  memset(buf + 4, 0, 56);
  v10 = buf[1];
  *(a2 + 44) = buf[0];
  memset(&v72[4], 0, 18);
  *(a2 + 40) = v9;
  *(a2 + 60) = v10;
  *(a2 + 76) = buf[2];
  *(a2 + 88) = *(&buf[2] + 12);
  *(a2 + 104) = 7;
  *(a2 + 152) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 168) = 3;
  *(a2 + 216) = 0u;
  *(a2 + 204) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 232) = 3;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = v9;
  *(a2 + 260) = 0;
  v11 = *v72;
  *(a2 + 282) = *&v72[14];
  *(a2 + 268) = v11;
  LOBYTE(v69) = 0;
  v70[0] = 0;
  RealtimePriorityThreadParameters = HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(a2, v9, v70, &v69);
  if (RealtimePriorityThreadParameters)
  {
    v45 = RealtimePriorityThreadParameters;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 690;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v45;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters: got an error from calculating the thread parameters, Error: 0x%X", buf, 0x18u);
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    *v46 = off_1F5991DD8;
    v46[2] = v45;
  }

  *(a2 + 1096) = 0;
  v13 = v69;
  *(a2 + 656) = v70[0];
  *(a2 + 664) = v13;
  std::string::operator=((a2 + 720), (a2 + 2032));
  if (g_static_start_options == 1 && *(a2 + 1420))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 700;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Throwing exception in response to test configuration", buf, 0x12u);
    }

    v57 = __cxa_allocate_exception(0x10uLL);
    *v57 = off_1F5991DD8;
    v57[2] = 1852797029;
  }

  *v72 = a2 + 328;
  *&v72[8] = HALB_Mutex::Lock((a2 + 328));
  v14 = *(a2 + 400);
  v15 = pthread_self();
  if (v14 != v15)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALB_IOThread.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 247;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::_Start: this thread ought to lock the lock", buf, 0x12u);
    }
  }

  if (*(a2 + 493))
  {
    v25 = 58;
LABEL_87:
    HALB_Guard::Locker::~Locker(v72);
    goto LABEL_88;
  }

  if (*(a2 + 320) && *(a2 + 492) == 1)
  {
    HALB_IOThread::_WaitForState((a2 + 312), 1735552612);
  }

  *(a2 + 492) = 0;
  if (*(a2 + 496))
  {
    v20 = 0;
    *(a2 + 480) = 2002872692;
    while ((*(a2 + 492) & 1) == 0)
    {
      if (!*(a2 + 496) || v20 > 0x13)
      {
        break;
      }

      v22 = HALB_Guard::WaitFor((a2 + 328), 0x5F5E100uLL);
      ++v20;
      if (*(a2 + 496) && v22 && v22 != 60)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "HALB_IOThread.cpp";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 286;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOThread::_Start: wait failed while waiting for IO to become enabled", buf, 0x12u);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        *v23 = off_1F5991DD8;
        v23[2] = 1852797029;
      }
    }

    if ((*(a2 + 492) & 1) == 0 && *(a2 + 496))
    {
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v59)
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "HALB_IOThread.cpp";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 290;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_IOThread::_Start: IO is still disabled after waiting", buf, 0x12u);
      }

      v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v60 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v59);
      }

      v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        v63 = *v62;
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      else
      {
        v63 = *v62;
      }

      v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v65 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v61);
      }

      v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v67 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        v68 = os_signpost_id_make_with_pointer(*v66, (a2 + 312));
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      else
      {
        v68 = os_signpost_id_make_with_pointer(*v66, (a2 + 312));
      }

      if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v63, OS_SIGNPOST_EVENT, v68, "Error", "HALB_IOThread::_Start: IO is still disabled after waiting", buf, 2u);
      }

      *(a2 + 480) = 1735552612;
      HALB_Guard::NotifyAll((a2 + 328));
      v25 = 35;
      goto LABEL_87;
    }
  }

  if ((*(a2 + 492) & 1) != 0 || ((v24 = (*(*v4 + 24))(a2 + 312), v25 = v24, v24 != 37) ? (v26 = v24 == 0) : (v26 = 1), v26))
  {
    v25 = HALB_IOThread::_WaitForState((a2 + 312), 1735354734);
  }

  HALB_Guard::Locker::~Locker(v72);
  if (v25 && v25 != 89)
  {
LABEL_88:
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v27);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v53 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v48);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v56 = os_signpost_id_make_with_pointer(*v54, a2);
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v56 = os_signpost_id_make_with_pointer(*v54, a2);
    }

    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      LODWORD(buf[0]) = 67109120;
      DWORD1(buf[0]) = v25;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v50, OS_SIGNPOST_EVENT, v56, "Error", "HALS_IOContext_Legacy_Impl::StartIOThread: got an error from starting the IO thread, Error: 0x%X", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 710;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v25;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: got an error from starting the IO thread, Error: 0x%X", buf, 0x18u);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = off_1F5991DD8;
    v58[2] = v25;
  }

  v28 = *(a2 + 1096);
  if (v28)
  {
    v72[0] = HIBYTE(*(a2 + 1096));
    v72[1] = BYTE2(v28);
    v72[2] = BYTE1(v28);
    v72[3] = v28;
    v72[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315906;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 712;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v28;
      WORD4(buf[1]) = 2080;
      *(&buf[1] + 10) = v72;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: the IO thread failed to start, Error: %d (%s)", buf, 0x22u);
    }

    v51 = __cxa_allocate_exception(0x10uLL);
    v52 = *(a2 + 1096);
    *v51 = off_1F5991DD8;
    v51[2] = v52;
  }

  HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(a2, &v80);
  TapInfo = HALS_IOContext_Legacy_Impl::CreateTapInfo(a2);
  HALS_IOContext::UpdateInputStreamUsageStatus(TapInfo);
  v30 = *(a2 + 1744);
  if (!v30 || !*(v30 + 8))
  {
LABEL_59:
    v31 = 0;
    goto LABEL_60;
  }

  v31 = *(v30 + 60);
  if (v31)
  {
    if (*(v30 + 16))
    {
      v32 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(v30 + 60), 0, 1);
      if (v32)
      {
        v64 = __cxa_allocate_exception(0x20uLL);
        *&buf[0] = &unk_1F5985298;
        MEMORY[0x1E12C10C0](v64, v32, buf, "failed to add the send right");
        __cxa_throw(v64, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v33 = *(v30 + 16);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

LABEL_60:
  v33 = 0;
LABEL_61:
  v34 = *(*(a2 + 24) + 88);
  if (v34)
  {
    v35 = (*(*v34 + 96))(v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = HALS_IOThread::CopyWorkgroupIntervalPort(v4);
  *this = 1;
  *(this + 1) = v35;
  *(this + 2) = v36;
  *(this + 3) = v31;
  *(this + 2) = v33;
LABEL_65:
  HALB_IOThread::Locker::~Locker(&v78);
  HALS_ObjectMap::ReleaseObject(v80, v37);
}

void sub_1DE5F9C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, std::exception a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    std::error_category::~error_category((v31 - 144));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(HALS_IOContext_Legacy_Impl *this, unsigned int a2, unint64_t *a3, BOOL *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(this + 195);
  if (!v4 || !*(v4 + 88))
  {
    return 4;
  }

  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "HALS_IOContext_Legacy_Impl.cpp";
      v10 = 1024;
      v11 = 2767;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ConfigureThreadForRealtimePriority - inIOBufferFrameSize must be nonzero", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  result = 0;
  *a3 = (*(*(v4 + 368) + 40 * *(*(v4 + 368) + 192) + 200) * a2);
  *a4 = *(this + 356) == 1;
  return result;
}

unint64_t HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(uint64_t a1, uint64_t *a2)
{
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1);
  v5 = *(*(a1 + 24) + 16);
  v6 = *(a1 + 1768);
  active = HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(a1, 0);
  v8 = *a2;
  if (*a2)
  {
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(active);
    v10 = (*(*platform_behaviors + 64))(platform_behaviors);
    if (((*(*v10 + 40))(v10) & 0x100) == 0)
    {
      HALS_ClientEntitlements::HasEntitlementWithBooleanValue((v8 + 296), @"com.apple.private.audio.suppress-mic-indicator");
    }
  }

  return (NumberStreams - v6) | (v5 << 32);
}

uint64_t HALS_IOContext_Legacy_Impl::CreateTapInfo(uint64_t a1)
{
  v1 = *(a1 + 1768);
  v2 = *(*(a1 + 24) + 16);
  HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(a1, 1);
  return v1 | (v2 << 32);
}

uint64_t HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 1417);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *(a1 + 1416);
  }

  v5 = 1;
  if (HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1) && ((std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1664), 0, *(a1 + 1672)) != 0) & v4) == 1)
  {
    return (a2 == 0) & *(a1 + 32);
  }

  return v5;
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
    return 0;
  }

  v16[8] = v5;
  v16[9] = v6;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v12)
    {
      ++v13;
    }

    else
    {
      v13 = 0;
    }

    v16[0] = v11;
    v16[1] = v13;
    if (((*(*a4 + 16))(a4, v16) & 1) == 0 && ((*(*a5 + 16))(a5, v16) & 1) == 0)
    {
      v15[0] = v11;
      v15[1] = v13;
      result = (*a3)((a3 + 1), v15);
      if (result)
      {
        break;
      }
    }

    v11 += 8;
    v12 = 1;
    if (v11 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
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

uint64_t HALS_IOContext_Legacy_Impl::StartHardware_Helper(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  result = *(a2 + 11);
  if (result)
  {
    return (*(*result + 704))(result, *(this + 3), a3);
  }

  return result;
}

void sub_1DE5FA380(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 3532;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartHardware_Helper: Caught exception trying to start hardware", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5FA358);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::ResetEngineState_Off(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2 == a2[1])
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v13 = 136315394;
      v14 = "HALS_IOContext_Legacy_Impl.cpp";
      v15 = 1024;
      v16 = 1024;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ResetEngineState_Off: Unexpected state for prewarming", &v13, 0x12u);
    }
  }

  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v12 = *(v9 - 1);
    v10 = v9 - 1;
    v11 = v12;
    a2[1] = v10;
    while (v8 != v10)
    {
      HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(a1, *v8++, 0);
    }

    *(a1 + 275) = v11;
  }

  HALS_IOContext_Legacy_Impl::StopIOThread(a1, a2);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *(a1 + 1100) = a2;
  v11[0] = HALS_IOContext_Legacy_Impl::StopHardware_Helper;
  v11[1] = a1;
  v12 = a3;
  v10 = &unk_1F5983F68;
  v14[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,HALS_IOPrewarmManager::EngineState),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,HALS_IOPrewarmManager::EngineState&>>;
  v14[1] = v11;
  v13 = &off_1F5983F18;
  v15 = v14;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v15;
  v3 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, &v13, &v10);
  v4 = v3;
  if (v3)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1086;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ChangeEngineState_Off: Unexpected error when changing engine prewarming state", buf, 0x12u);
    }
  }

  return v4;
}

void HALS_IOContext_Legacy_Impl::StopIOThread(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(**(*(this + 3) + 72));
  v15 = v3;
  v13 = this + 312;
  v14 = HALB_Mutex::Lock((this + 328));
  v4 = *(*(this + 3) + 88);
  if (v4)
  {
    (*(*v4 + 120))(v4);
  }

  v16 = (this + 328);
  v17 = HALB_Mutex::Lock((this + 328));
  v5 = *(this + 50);
  v6 = pthread_self();
  if (v5 != v6)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315394;
      v19 = "HALB_IOThread.cpp";
      v20 = 1024;
      v21 = 313;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::_Stop: this thread ought to lock the lock", buf, 0x12u);
    }
  }

  HALB_Guard::NotifyAll((this + 328));
  *(this + 492) = 1;
  if (!HALB_IOThread::IsCurrentThread((this + 312), 1))
  {
    HALB_IOThread::_WaitForState((this + 312), 1735552612);
  }

  HALB_Guard::Locker::~Locker(&v16);
  HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(this, &v15);
  TapInfo = HALS_IOContext_Legacy_Impl::CreateTapInfo(this);
  HALS_IOContext::UpdateInputStreamUsageStatus(TapInfo);
  HALB_IOThread::Locker::~Locker(&v13);
  HALS_ObjectMap::ReleaseObject(v3, v12);
}

void sub_1DE5FA8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::StopHardware_Helper(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    (*(*v3 + 712))(v3, *(a1 + 24));
  }

  return 0;
}

void sub_1DE5FA9D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 3550;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StopHardware_Helper: Caught exception trying to stop hardware", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5FA9ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Legacy_Impl::GetStreamUsage(uint64_t a1, unsigned int *a2, unsigned int a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, a4);
  v9 = 4 * NumberStreams + 4;
  if (v9 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_IOContext_Legacy_Impl.cpp";
      v17 = 1024;
      v18 = 5133;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *a2 = NumberStreams;
  if (NumberStreams)
  {
    v10 = 0;
    v11 = a2 + 1;
    v12 = NumberStreams;
    do
    {
      v11[v10] = HALS_IOContextDescription::IsStreamEnabledAtIndex((a1 + 1536), a4, v10);
      ++v10;
    }

    while (v12 != v10);
  }

  return v9;
}

uint64_t HALS_IOContext_Legacy_Impl::SetStreamUsage(_DWORD *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315394;
      *&v18[4] = "HALS_IOContext_Legacy_Impl.cpp";
      v19 = 1024;
      v20 = 5050;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::SetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = a4;
  v8 = *a2;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams((a1 + 384), a4);
  v10 = (a3 + 0x3FFFFFFFCLL) >> 2;
  if (v8 < v10)
  {
    LODWORD(v10) = v8;
  }

  if (NumberStreams >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = NumberStreams;
  }

  *v18 = a1 + 78;
  *&v18[8] = HALB_Mutex::Lock((a1 + 82));
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      while (1)
      {
        IsStreamEnabledAtIndex = HALS_IOContextDescription::IsStreamEnabledAtIndex((a1 + 384), v4, v12);
        v15 = a2[v12 + 1];
        if (v15 == IsStreamEnabledAtIndex)
        {
          break;
        }

        HALS_IOContextDescription::SetStreamIsEnabledAtIndex(a1 + 192, v4, v12, v15 != 0);
        kdebug_trace();
        ++v12;
        v13 = 1;
        if (v12 == v11)
        {
          goto LABEL_15;
        }
      }

      ++v12;
    }

    while (v11 != v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    HALS_IOContextDescription::UnregisterBuffers((a1 + 384));
    if ((v4 & 1) == 0)
    {
      HALS_IOContextDescription::PushStreamUsageToEngines((a1 + 384), 1, 0);
    }

    HALS_IOContextDescription::PushStreamUsageToEngines((a1 + 384), v4, 0);
    HALS_IOContextDescription::RegisterBuffers((a1 + 384));
    HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(a1, v4);
    HALS_IOContextDescription::ClearInactiveInputSharedBuffers((a1 + 384), a1[340]);
  }

LABEL_18:
  HALB_IOThread::Locker::~Locker(v18);
  return 0;
}

void sub_1DE5FAE24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5FAE3C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5FAD34);
  }

  JUMPOUT(0x1DE5FAE2CLL);
}

uint64_t HALS_IOContext_Legacy_Impl::GetMasterDevice(HALS_IOContext_Legacy_Impl *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK26HALS_IOContext_Legacy_Impl15GetMasterDeviceEv_block_invoke;
  v4[3] = &unk_1E8678120;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5FAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK26HALS_IOContext_Legacy_Impl15GetMasterDeviceEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 1560);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 88);
    if (result)
    {
      result = (*(*result + 336))(result);
      if (result)
      {
        *(*(*(v2 + 32) + 8) + 24) = *(result + 16);
      }
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::SetIOCycleUsage(HALS_IOContext_Legacy_Impl *this, float a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN26HALS_IOContext_Legacy_Impl15SetIOCycleUsageEf_block_invoke;
  v9[3] = &unk_1E86780F8;
  v9[5] = &v11;
  v9[6] = this;
  v10 = a2;
  v9[4] = &v15;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v9);
  if (*(v12 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = *(v12 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v8;
  }

  if (*(v16 + 24) == 1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 80);
    if (!v5)
    {
      v5 = *(v4 + 16);
    }

    v6 = **(v4 + 72);
    *&v19.mSelector = 0x676C6F626E637963;
    v19.mElement = 0;
    HALS_Object::PropertiesChanged(v4, v5, v6, 1, &v19);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_1DE5FB19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl15SetIOCycleUsageEf_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5 = v2 + 312;
  v6 = HALB_Mutex::Lock((v2 + 328));
  v3 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = *(v2 + 1368) != v3;
  *(v2 + 1368) = v3;
  v4 = *(*(v2 + 24) + 88);
  if (v4)
  {
    (*(*v4 + 48))(v4, v3);
  }

  HALB_IOThread::Locker::~Locker(&v5);
}

void sub_1DE5FB268(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v9 + 40) + 8) + 24) = v12[2];
  }

  else
  {
    *(*(*(v9 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE5FB254);
}

void HALS_IOContext_Legacy_Impl::SetBufferFrameSize(HALS_IOContext_Legacy_Impl *this, int a2, char a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN26HALS_IOContext_Legacy_Impl18SetBufferFrameSizeEjb_block_invoke;
  v11[3] = &unk_1E86780D0;
  v11[5] = &v13;
  v11[6] = this;
  v12 = a2;
  v11[4] = &v17;
  v5 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v5, v11);
  if (*(v14 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v10 = *(v14 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v10;
  }

  if (*(v18 + 24) == 1 && (a3 & 1) == 0)
  {
    v6 = *(this + 3);
    v7 = *(v6 + 80);
    if (!v7)
    {
      v7 = *(v6 + 16);
    }

    v8 = **(v6 + 72);
    *&v21.mSelector = 0x676C6F626673697ALL;
    v21.mElement = 0;
    HALS_Object::PropertiesChanged(v6, v7, v8, 1, &v21);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_1DE5FB454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18SetBufferFrameSizeEjb_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 1365) = 1;
  if ((*(v1 + 1364) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 1560);
    v4 = 13.23;
    if (v3 && *(v3 + 88))
    {
      v4 = *(v3 + 848) * 0.0003;
    }

    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((v1 + 1536));
    v6 = v5;
    result = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(v1, *(v2 + 56), v7, v8);
    v9 = vcvtpd_u64_f64(v4);
    if (result > v9)
    {
      v9 = result;
    }

    if (v9 >= v6)
    {
      v9 = v6;
    }

    *(*(*(v2 + 32) + 8) + 24) = *(v1 + 1360) != v9;
    *(v1 + 1360) = v9;
  }

  return result;
}

void sub_1DE5FB52C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(HALS_IOContext_Legacy_Impl *this, HALS_IOEngineInfo *a2, uint64_t a3, unsigned int a4)
{
  v10 = a2;
  v6 = *(this + 195);
  if (!v6 || !HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper(&v10, v6, a2))
  {
    v8[0] = HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper;
    v8[1] = &v10;
    v9 = a2;
    v12[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int &,HALS_IOEngineInfo &,unsigned int),std::reference_wrapper<unsigned int>,std::placeholders::__ph<1> const&,unsigned int &>>;
    v12[1] = v8;
    v11 = &off_1F5983F18;
    v13 = v12;
    v14[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v14[1] = &v13;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), v14, &v11);
  }

  return v10;
}

unsigned int *HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper(HALS_IOContext_Legacy_Impl *this, unsigned int *a2, HALS_IOEngineInfo *a3)
{
  v9 = a3;
  v7 = *"zsfcbolg";
  v8 = 0;
  result = *(a2 + 11);
  if (result)
  {
    result = (*(*result + 336))(result);
    if (result)
    {
      v5 = result;
      result = (*(*result + 96))(result, result[4], &v7, 0);
      if (result)
      {
        v6 = 0;
        (*(*v5 + 120))(v5, v5[4], &v7, 4, &v6, this, 4, &v9, 0);
        return *this;
      }
    }
  }

  return result;
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 8;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
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

void HALS_IOContext_Legacy_Impl::GetBufferFrameSizeRange(uint64_t this, AudioValueRange *a2, double a3)
{
  if (*(this + 1364))
  {
    LODWORD(a3) = *(this + 1360);
    v4 = *&a3;
    a2->mMinimum = v4;
    LODWORD(v4) = *(this + 1360);
    v5 = *&v4;
  }

  else
  {
    v6 = *(this + 1560);
    v7 = 13.23;
    if (v6 && *(v6 + 88))
    {
      v7 = *(v6 + 848) * 0.0003;
    }

    a2->mMinimum = ceil(v7);
    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
  }

  a2->mMaximum = v5;
}

const void *HALS_IOContext_Legacy_Impl::GetComposition(HALS_IOContext_Legacy_Impl *this)
{
  result = *(this + 193);
  if (result)
  {
    CFRetain(result);
    return *(this + 193);
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::SetComposition(HALS_IOContext_Legacy_Impl *this, CFDictionaryRef theDict)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFRetain(theDict);
  }

  v42 = &unk_1F5991008;
  v43 = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v40, theDict, @"device id");
  v4 = OS::CF::Number::GetValue<unsigned int>(v41, 0);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
  if (v5)
  {
    v6 = *(v5 + 152);
  }

  else
  {
    v6 = 0x200000001;
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v39 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x4802000000;
  v35[3] = __Block_byref_object_copy__13617;
  v35[4] = __Block_byref_object_dispose__13618;
  __p = 0u;
  v37 = 0u;
  v19 = 0;
  v20 = &v19;
  v21 = 0x9802000000;
  v22 = __Block_byref_object_copy__51;
  v7 = *(this + 3);
  v8 = *(v7 + 72);
  v23 = __Block_byref_object_dispose__52;
  LODWORD(v8) = *v8;
  v9 = *(v7 + 16);
  v29[0] = 0;
  v29[1] = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v28 = v29;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = v8;
  v34 = v9;
  HALS_IOContext_Legacy_Impl::PauseIO(this, *(v7 + 16));
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1174405120;
  v17[2] = ___ZN26HALS_IOContext_Legacy_Impl14SetCompositionEPK14__CFDictionary_block_invoke;
  v17[3] = &unk_1F5982590;
  v17[7] = this;
  OS::CF::UntypedObject::UntypedObject(v18, v43);
  v18[2] = v6;
  v17[4] = &v19;
  v17[5] = v35;
  v18[0] = &unk_1F5991008;
  v17[6] = v38;
  v10 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v10, v17);
  HALS_MutationChangeSynchronizer::Wait(v20[5], v20[6]);
  v11 = HALS_ObjectMap::CopyObjectByObjectID(**(*(this + 3) + 72));
  if (v11)
  {
    v12 = *(*(this + 3) + 16);
    v14 = HALS_ObjectMap::CopyObjectByObjectID(v12);
    if (v14)
    {
      v15 = 0;
      v44[0] = 1;
      do
      {
        v16 = *(v44 + v15);
        if (HALS_Client::ShouldMuteContext(v11, *(v44 + v15), v12))
        {
          (*(**(v14 + 13) + 592))(*(v14 + 13), v16, 1);
        }

        v15 += 4;
      }

      while (v15 != 8);
    }

    HALS_ObjectMap::ReleaseObject(v14, v13);
  }

  HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(this);
}

void sub_1DE5FBD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *__Block_byref_object_copy__13617(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(a1 + 5, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  v3[3] = *(a2 + 64);
  return result;
}

void __Block_byref_object_dispose__13618(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *__Block_byref_object_copy__51(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v4 = (a1 + 40);
  *(a1 + 64) = 0;
  v5 = (a1 + 64);
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  v6 = (a1 + 72);
  *(a1 + 88) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 144) = *(a2 + 144);
  *v5 = *(a2 + 64);
  if (a1 != a2)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(v6, *(a2 + 72), (a2 + 80));
    std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>((a1 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
    std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a1 + 120), *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  }

  if (*(a2 + 40) != *(a2 + 48))
  {
    __assert_rtn("HALS_MutationChangeSynchronizer", "HALS_MutationChangeSynchronizer.cpp", 28, "that.mChangeList.empty()");
  }

  return std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::clear[abi:ne200100](v4);
}

void sub_1DE5FBF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  MutationItinerary::~MutationItinerary(v10);
  std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl14SetCompositionEPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v88 = v2 + 312;
  v89 = HALB_Mutex::Lock((v2 + 328));
  if (*(v2 + 1765) == 1)
  {
    v4 = *(*(v2 + 24) + 16);
    v5 = *(v2 + 1544);
    *buf = &unk_1F5987CD0;
    *&buf[8] = v4;
    *&buf[24] = buf;
    for_all_taps(v5, buf);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](buf);
  }

  v6 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(*(a1 + 72), v3);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "true";
    *buf = 136316930;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4829;
    if (!v7)
    {
      v12 = "false";
    }

    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "false";
    *&buf[34] = 2080;
    *&buf[36] = v12;
    *&buf[44] = 2080;
    *&buf[46] = "false";
    *&buf[54] = 2080;
    *&buf[56] = "false";
    *&buf[64] = 2080;
    *&buf[66] = v12;
    _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEFAULT, "%32s:%-5d AllowNegotiateAdaptInSetComposition: useCaseID = %d, isServerBuild = %s, isIsolatedUseCase = %s, isSharedDsp = %s, istvos = %s, adaptNow = %s", buf, 0x4Au);
  }

  v13 = *(a1 + 72);
  v86 = *(*(a1 + 32) + 8);
  if (v13)
  {
    CFRetain(v13);
  }

  v87.__r_.__value_.__r.__words[0] = &unk_1F5991008;
  v87.__r_.__value_.__l.__size_ = v13;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1928));
  *(v2 + 1920) = v2 + 1928;
  *(v2 + 1928) = 0u;
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v2 + 1944), 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v2 + 1952), 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1968));
  *(v2 + 1960) = v2 + 1968;
  *(v2 + 1968) = 0u;
  v14 = (v2 + 1984);
  if (*(v2 + 2008) == 1)
  {
    v15 = *v14;
    if (*v14)
    {
      *(v2 + 1992) = v15;
      operator delete(v15);
    }

    *(v2 + 2008) = 0;
  }

  {
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::isAppleInternal = os_variant_has_internal_diagnostics();
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v101, v87.__r_.__value_.__l.__size_, @"vocal isolation type");
  if (v102)
  {
    v16 = OS::CF::Number::GetValue<unsigned int>(v102, 0);
    v99 = v16;
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      if (v16 == 1)
      {
        v17 = 2;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_33;
        }

        v17 = 3;
      }

      v99 = v17;
    }

    else if (!v16)
    {
      goto LABEL_33;
    }

    v18 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v99);
    *buf = v18;
    buf[4] = BYTE4(v18);
    if (HIDWORD(v18))
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v18, buf);
    }
  }

LABEL_33:
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v99, v87.__r_.__value_.__l.__size_, @"voice activity detection enable");
  if (v100)
  {
    if (OS::CF::Number::GetValue<unsigned int>(v100, 0))
    {
      v97 = 6;
      v19 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v97);
      *buf = v19;
      buf[4] = BYTE4(v19);
      if (HIDWORD(v19))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v19, buf);
      }
    }
  }

  v20 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v87.__r_.__value_.__l.__size_, v19);
  v21 = v20;
  if (*(v2 + 1916) == 1)
  {
    *(v2 + 1916) = 0;
  }

  if ((v20 & 0x100000000) != 0)
  {
    if (v20)
    {
      v97 = 7;
      v22 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v97);
      *buf = v22;
      buf[4] = BYTE4(v22);
      if (HIDWORD(v22))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v22, buf);
        *(v2 + 1912) = v21;
        *(v2 + 1916) = BYTE4(v21);
      }
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v97, v87.__r_.__value_.__l.__size_, @"device dsp offloads input");
  if (v98)
  {
    operator new();
  }

  if ((AMCP::Feature_Flags::force_mock_dsp_type(0, v23) & 1) != 0 || (v25 = AMCP::Feature_Flags::allow_adm_dsp_spatial(0, v24), v25))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v95, v87.__r_.__value_.__l.__size_, @"spatialization type");
    if (v96)
    {
      v93 = OS::CF::Number::GetValue<unsigned int>(v96, 0);
      v26 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v93);
      *buf = v26;
      buf[4] = BYTE4(v26);
      if (HIDWORD(v26))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1960, v26, buf);
      }
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v93, v87.__r_.__value_.__l.__size_, @"spatialization virtual channel layout");
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v91 = Mutable;
      v92 = 257;
      v28 = cf;
      if (cf)
      {
        CFRetain(cf);
        Mutable = v91;
      }

      if (Mutable == v28)
      {
        v28 = Mutable;
      }

      else
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v91 = v28;
        HIBYTE(v92) = 0;
      }

      LOBYTE(v92) = 1;
      v90 = 0;
      CACFDictionary::GetUInt32(v28, @"number channels", &v90);
      __x = 0;
      std::vector<char>::vector[abi:ne200100](buf, 32, &__x);
      v30 = *buf;
      **buf = 0;
      v30[2] = 0;
      v31 = v90;
      if (v90 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v90;
      }

      v33 = 20 * v32 + 12;
      __x = 0;
      if (v33 <= *&buf[8] - v30)
      {
        if (v33 < *&buf[8] - v30)
        {
          *&buf[8] = v30 + v33;
        }
      }

      else
      {
        std::vector<char>::__append(buf, v33 - (*&buf[8] - v30), &__x);
        v30 = *buf;
        v31 = v90;
      }

      *v30 = 0;
      v30[2] = v31;
      if (v31)
      {
        v34 = v31;
        v35 = v30 + 4;
        do
        {
          *(v35 - 1) = -1;
          *v35 = 0;
          v35[1] = 0;
          v35 = (v35 + 20);
          --v34;
        }

        while (v34);
        v30 = *buf;
      }

      HALS_Device::ConstructLayoutFromDictionary(&v91, v30, v29);
      if (*(v2 + 2008) == 1)
      {
        if (v14 != buf)
        {
          std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((v2 + 1984), *buf, *&buf[8], *&buf[8] - *buf);
        }
      }

      else
      {
        *v14 = 0;
        *(v2 + 1992) = 0;
        *(v2 + 2000) = 0;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>((v2 + 1984), *buf, *&buf[8], *&buf[8] - *buf);
        *(v2 + 2008) = 1;
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      CACFDictionary::~CACFDictionary(&v91);
    }

    OS::CF::UntypedObject::~UntypedObject(&v93);
    OS::CF::UntypedObject::~UntypedObject(v95);
  }

  only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(v25);
  if ((only_ios_high_quality_recording & 1) != 0 || AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(v95, v87.__r_.__value_.__l.__size_, @"dsp input settings");
    if (v96)
    {
      operator new();
    }

    OS::CF::UntypedObject::~UntypedObject(v95);
  }

  OS::CF::UntypedObject::~UntypedObject(&v97);
  OS::CF::UntypedObject::~UntypedObject(&v99);
  OS::CF::UntypedObject::~UntypedObject(v101);
  OS::CF::UntypedObject::~UntypedObject(&v87);
  if (!(*(v2 + 1976) | *(v2 + 1936)))
  {
    HALS_IOContextHostedDSP::Remove(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16), (v86 + 40), v38);
    goto LABEL_132;
  }

  if (v13)
  {
    HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState((v2 + 1536), v37);
    HALS_IOContextDescription::SetFromCFRepresentation_FindMaster((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines((v2 + 1536), v39);
    v40 = *(v2 + 1624);
    v41 = *(v2 + 1616);
    std::vector<BOOL>::resize((v2 + 1664), 0xCBEEA4E1A08AD8F3 * ((*(v2 + 1600) - *(v2 + 1592)) >> 3), 1);
    std::vector<BOOL>::resize((v2 + 1640), (v40 - v41) >> 5, 1);
  }

  HALS_IOContextHostedDSP::Initialize(*(v2 + 2176), (v2 + 1536), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16));
  v42 = HALS_IOContextHostedDSP::util_Negotiate_WithFlags(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 3);
  v43 = v42;
  v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v44 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v42);
  }

  v46 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v43 <= 1685286514)
  {
    if (!v43)
    {
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        v50 = *v46;
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      else
      {
        v50 = *v46;
      }

      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);
      if (v51)
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4771;
        _os_log_debug_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Negotiate simulate ok, retaining DSP types in description.", buf, 0x12u);
      }

      goto LABEL_120;
    }

    if (v43 == 1685283449)
    {
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        v47 = *v46;
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      else
      {
        v47 = *v46;
      }

      v51 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
      if (v51)
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4765;
        _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Negotiate simulate failed, DSP will process in bypass, retaining DSP types in description.", buf, 0x12u);
      }

      goto LABEL_120;
    }

LABEL_97:
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v49 = *v46;
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    else
    {
      v49 = *v46;
    }

    v51 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4774;
      v52 = "%32s:%-5d [hal_dsp] Negotiate simulate has other result, retaining DSP types in description.";
LABEL_119:
      _os_log_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_DEFAULT, v52, buf, 0x12u);
      goto LABEL_120;
    }

    goto LABEL_120;
  }

  if (v43 != 1685286515)
  {
    if (v43 == 1685287013)
    {
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = *v46;
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      else
      {
        v48 = *v46;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4760;
        _os_log_error_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Negotiate simulate failed, dropping DSP types from description.", buf, 0x12u);
      }

      HALS_IOContextDescription::HostedDSPDescription::ResetRequests((v2 + 1832));
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1928));
      *(v2 + 1920) = v2 + 1928;
      *(v2 + 1928) = 0u;
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1968));
      *(v2 + 1960) = v2 + 1968;
      *(v2 + 1968) = 0u;
      HALS_IOContextHostedDSP::Remove(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16), (v86 + 40), v53);
      goto LABEL_120;
    }

    goto LABEL_97;
  }

  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    v49 = *v46;
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  else
  {
    v49 = *v46;
  }

  v51 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (v51)
  {
    *buf = 136315394;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4768;
    v52 = "%32s:%-5d [hal_dsp] Negotiate simulate, no streams to negotiate, retaining DSP types in description.";
    goto LABEL_119;
  }

LABEL_120:
  if (v7)
  {
    v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v54 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v51);
    }

    v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = *v56;
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v57 = *v56;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = "NOT ";
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *buf = 136315650;
      if (!v43)
      {
        v58 = "";
      }

      *&buf[12] = 1024;
      *&buf[14] = 4781;
      *&buf[18] = 2080;
      *&buf[20] = v58;
      _os_log_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] Negotiate/Adapt during context configuration is %sALLOWED.", buf, 0x1Cu);
    }

    if (!v43)
    {
      memset(buf, 0, 26);
      *&buf[32] = &buf[40];
      memset(&buf[40], 0, 48);
      v105 = 0u;
      v106 = 0;
      HALS_IOContextHostedDSP::util_Negotiate_WithFlags(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 1);
      HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(buf);
    }
  }

LABEL_132:
  HALS_IOContextDescription::SetFromCFRepresentation((v2 + 1536), *(a1 + 72));
  *(v2 + 2064) = *(a1 + 80);
  *(v2 + 2068) = *(a1 + 84);
  HALS_IOContext_Legacy_Impl::AssessIOBufferSize(v2, (*(*(a1 + 40) + 8) + 40));
  v59 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 1552));
  v60 = v59;
  if (v59)
  {
    v61 = (*(*v59 + 224))(v59);
    snprintf(buf, 0x12CuLL, "audio IO: %s", v61);
    strlcpy((v2 + 500), buf, 0x40uLL);
  }

  else
  {
    strlcpy((v2 + 500), "audio IO thread", 0x40uLL);
  }

  HALS_ObjectMap::ReleaseObject(v60, v62);
  *(v2 + 1417) = 0;
  v63 = *(v2 + 24);
  v64 = *(v63 + 128);
  if (v64)
  {
    free(v64);
    v65 = (*(**(v63 + 104) + 32))(*(v63 + 104), 1);
    v66 = malloc_type_calloc(1uLL, (16 * v65) | 8u, 0x10800404ACF7207uLL);
    if (v66)
    {
      *v66 = v65;
    }

    *(v63 + 128) = v66;
  }

  v67 = *(v63 + 136);
  if (v67)
  {
    free(v67);
    v68 = (*(**(v63 + 104) + 32))(*(v63 + 104), 0);
    v69 = malloc_type_calloc(1uLL, (16 * v68) | 8u, 0x10800404ACF7207uLL);
    if (v69)
    {
      *v69 = v68;
    }

    *(v63 + 136) = v69;
  }

  if (v7 && *(v2 + 1976) | *(v2 + 1936))
  {
    v70 = HALS_IOContextHostedDSP::Adapt(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 0);
    v71 = v70;
    v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v72 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v70);
    }

    v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      v75 = *v74;
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    else
    {
      v75 = *v74;
    }

    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = bswap32(v71);
      *&buf[1] = v76;
      if ((v76 - 32) > 0x5E || ((v76 >> 8) - 32) > 0x5E || ((v76 << 8 >> 24) - 32) > 0x5E || ((v76 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v87, v71);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v87, buf);
      }

      v77 = &v87;
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v77 = v87.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4884;
      *&buf[18] = 2080;
      *&buf[20] = v77;
      _os_log_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Context ADM Adapt results in %s", buf, 0x1Cu);
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }
    }

    if (v71 == 1685285985)
    {
      HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(v2, 1);
    }
  }

  v78 = *(v2 + 24);
  if (*(v2 + 1765) == 1)
  {
    v79 = *(v78 + 16);
    v80 = *(v2 + 1544);
    *buf = &unk_1F5987C50;
    *&buf[8] = v79;
    *&buf[24] = buf;
    for_all_taps(v80, buf);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](buf);
    v78 = *(v2 + 24);
  }

  v81 = (*(**(v78 + 104) + 768))(*(v78 + 104));
  v82 = HALS_ObjectMap::CopyObjectByObjectID(v81);
  v84 = HALS_ObjectMap::CopyObjectByObjectID(**(*(v2 + 24) + 72));
  if (v82)
  {
    *(v2 + 32) = (*(*v82 + 712))(v82, v84);
  }

  HALS_ObjectMap::ReleaseObject(v84, v83);
  HALS_ObjectMap::ReleaseObject(v82, v85);
  HALB_IOThread::Locker::~Locker(&v88);
}

void sub_1DE5FD0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    OS::CF::UntypedObject::~UntypedObject(&a12);
    HALB_IOThread::Locker::~Locker(&a15);
    v39 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v36 + 48) + 8) + 24) = v39[2];
    }

    else
    {
      *(*(*(v36 + 48) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5FD028);
  }

  _Unwind_Resume(exception_object);
}

OS::CF::UntypedObject *__copy_helper_block_e8_64c24_ZTSN2OS2CF10DictionaryE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 64), *(a2 + 72));
  *(a1 + 64) = &unk_1F5991008;
  return result;
}

void HALS_IOContext_Legacy_Impl::AssessIOBufferSize(HALS_IOContext_Legacy_Impl *this, CAPropertyAddressList *a2)
{
  v4 = *(this + 3);
  v5 = *(v4 + 80);
  if (!v5)
  {
    v5 = *(v4 + 16);
  }

  *(a2 + 3) = v5;
  v19 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::function_invoker;
  v20 = HALS_IOContext_Legacy_Impl::AssessIOBufferSize_InputHelper;
  *&v21 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v21 + 1) = &v19;
  v6 = VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 199), *(this + 200), &v21);
  if (v6 || (v19 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::function_invoker, v20 = HALS_IOContext_Legacy_Impl::AssessIOBufferSize_OutputHelper, *&v21 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_, *(&v21 + 1) = &v19, (v6 = VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 202), *(this + 203), &v21)) != 0))
  {
    if (*(this + 1364) != 1 || *(this + 340) != v6)
    {
      *(this + 1364) = 1;
      *(this + 340) = v6;
      *&v21 = 0x676C6F6266737A23;
      DWORD2(v21) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v21, v7);
      v8 = 0x676C6F626673697ALL;
LABEL_8:
      *&v21 = v8;
      DWORD2(v21) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v21, v7);
    }
  }

  else if (*(this + 1364) == 1)
  {
    *(this + 1364) = 0;
    v8 = 0x676C6F6266737A23;
    goto LABEL_8;
  }

  if ((*(this + 1364) & 1) == 0)
  {
    v9 = *(this + 195);
    v10 = 13.23;
    if (v9 && *(v9 + 88))
    {
      v10 = *(v9 + 848) * 0.0003;
    }

    v11 = vcvtpd_u64_f64(v10);
    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
    v13 = v12;
    DevicesDesiredIOBufferFrameSize = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(this, *(this + 340), v14, v15);
    if (DevicesDesiredIOBufferFrameSize <= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = DevicesDesiredIOBufferFrameSize;
    }

    if (v18 >= v13)
    {
      v18 = v13;
    }

    if (*(this + 340) != v18)
    {
      *(this + 340) = v18;
      *&v21 = 0x676C6F626673697ALL;
      DWORD2(v21) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v21, v17);
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::AssessIOBufferSize_OutputHelper(HALS_IOContext_Legacy_Impl *this, unsigned int a2, HALS_IOStackDescription *a3, uint64_t a4, uint64_t a5, HALS_IOStreamInfo *a6)
{
  if (!*(a5 + 108) || ((v7 = *(a5 + 112), *(a5 + 120) != v7) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v7 = a5 + 456;
  }

  result = *(*v7 + 88);
  if (result)
  {
    v10 = *(a5 + 12);
    if (v10 >= (*(*result + 416))(result, *(a5 + 8), a3, a4))
    {
      return 0;
    }

    if (*(a5 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v13, (a5 + 112));
    }

    else
    {
      v11 = *(a5 + 432);
      v13 = *(a5 + 416);
      v14 = v11;
      v15 = *(a5 + 448);
    }

    if (DWORD2(v13) == 1819304813)
    {
      return 0;
    }

    else
    {
      if (*(a5 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v13, (a5 + 112));
      }

      else
      {
        v12 = *(a5 + 432);
        v13 = *(a5 + 416);
        v14 = v12;
        v15 = *(a5 + 448);
      }

      return DWORD1(v14);
    }
  }

  return result;
}

void sub_1DE5FD6BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FD678);
}

uint64_t HALS_IOContext_Legacy_Impl::AssessIOBufferSize_InputHelper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOStreamInfo *a3)
{
  if (!*(a2 + 108) || ((v4 = *(a2 + 112), *(a2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = a2 + 456;
  }

  result = *(*v4 + 88);
  if (result)
  {
    v7 = *(a2 + 12);
    if (v7 >= (*(*result + 416))(result, *(a2 + 8), a3))
    {
      return 0;
    }

    if (*(a2 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v10, (a2 + 112));
    }

    else
    {
      v8 = *(a2 + 432);
      v10 = *(a2 + 416);
      v11 = v8;
      v12 = *(a2 + 448);
    }

    if (DWORD2(v10) == 1819304813)
    {
      return 0;
    }

    else
    {
      if (*(a2 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v10, (a2 + 112));
      }

      else
      {
        v9 = *(a2 + 432);
        v10 = *(a2 + 416);
        v11 = v9;
        v12 = *(a2 + 448);
      }

      return DWORD1(v11);
    }
  }

  return result;
}

void sub_1DE5FD7E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FD79CLL);
}

void HALS_IOContext_Legacy_Impl::SetMuteState(uint64_t a1, unsigned int a2, char a3)
{
  v6 = a1 + 312;
  v7 = HALB_Mutex::Lock((a1 + 328));
  *(a1 + a2 + 1418) = a3;
  HALB_IOThread::Locker::~Locker(&v6);
}

uint64_t HALS_IOContext_Legacy_Impl::GetTransportState(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(this + 382);
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

uint64_t HALS_IOContext_Legacy_Impl::EnableCaptureFiles(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN26HALS_IOContext_Legacy_Impl18EnableCaptureFilesE17AudioCapturerMode_block_invoke;
  v3[3] = &__block_descriptor_tmp_29_13636;
  v4 = a2;
  v5 = v3;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v7[1] = &v5;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), v9, &v6);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18EnableCaptureFilesE17AudioCapturerMode_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    (*(*v3 + 600))(v3, *(a1 + 32));
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::SleepingIsAllowedChanged(uint64_t this, int a2)
{
  v2 = *(*(this + 24) + 72);
  if (*(v2 + 44) != a2)
  {
    *(v2 + 44) = a2;
    if (a2)
    {
      return HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(this);
    }

    else if (*(this + 1340) == 1)
    {
      return HALS_IOContext_Legacy_Impl::TakePowerAssertions(this);
    }
  }

  return this;
}

void sub_1DE5FDA04(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1752);
  v3 = &unk_1F59828E8;
  v4 = v1;
  v5 = &v3;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(this, &v3);
  return std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](&v3);
}

void sub_1DE5FDAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Legacy_Impl::TakePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = 0x100000000;
  if (!*(this + 1752))
  {
    v1 = 0;
  }

  v2 = v1 | *(this + 388);
  v4 = &unk_1F5982868;
  v5 = v2;
  *(&v5 + 5) = 0;
  HIBYTE(v5) = 0;
  v6 = &v4;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(this, &v4);
  return std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](&v4);
}

void sub_1DE5FDB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl19TakePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v6 = v5;
  if (v5)
  {
    v7 = (*(*v5 + 224))(v5);
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    v8 = *v4;
    v9 = v15 >= 0 ? __p : __p[0];
    OS::CF::String::String<char const*>(v17, @"com.apple.audio.%s.context.preventuseridlesleep", v9);
    HALB_PowerAssertion::Rename(v8, v17);
    OS::CF::UntypedObject::~UntypedObject(v17);
    v10 = v4[1];
    v11 = v15 >= 0 ? __p : __p[0];
    OS::CF::String::String<char const*>(v16, @"com.apple.audio.%s.context.preventuseridledisplaysleep", v11);
    HALB_PowerAssertion::Rename(v10, v16);
    OS::CF::UntypedObject::~UntypedObject(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a1 + 12);
  HALB_PowerAssertion::Take(*v4);
  if (v12)
  {
    HALB_PowerAssertion::Take(v4[1]);
  }

  HALS_ObjectMap::ReleaseObject(v6, v13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE5FDD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  OS::CF::UntypedObject::~UntypedObject(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v19, v21);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void *OS::CF::String::String<char const*>(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &unk_1F5991188;
  a1[1] = v4;
  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5982868;
  *(a2 + 8) = *(result + 8);
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  return result;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl22ReleasePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 8);
  HALB_PowerAssertion::Release(*v3);
  if (v4)
  {
    HALB_PowerAssertion::Release(v3[1]);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE5FDF38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59828E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL HALS_IOContext_Legacy_Impl::PowerHintChanged(HALS_IOContext_Legacy_Impl *this, int a2)
{
  if (*(this + 1365))
  {
    return 0;
  }

  if (a2 == 1)
  {
    v4 = 4096;
  }

  else
  {
    v4 = 512;
  }

  if (*(this + 1364))
  {
    result = 0;
  }

  else
  {
    v5 = *(this + 195);
    v6 = 13.23;
    if (v5 && *(v5 + 88))
    {
      v6 = *(v5 + 848) * 0.0003;
    }

    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
    v8 = v7;
    DevicesDesiredIOBufferFrameSize = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(this, v4, v9, v10);
    v12 = vcvtpd_u64_f64(v6);
    if (DevicesDesiredIOBufferFrameSize > v12)
    {
      v12 = DevicesDesiredIOBufferFrameSize;
    }

    if (v12 >= v8)
    {
      v12 = v8;
    }

    result = *(this + 340) != v12;
    *(this + 340) = v12;
  }

  *(this + 1365) = 0;
  return result;
}

void sub_1DE5FE0BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FE0A8);
}

void HALS_IOContext_Legacy_Impl::PowerChanged(HALS_IOContext_Legacy_Impl *this, int a2)
{
  v3 = *(this + 343);
  *(this + 343) = a2;
  if (v3 == a2)
  {
    return;
  }

  v5 = *(this + 3);
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    if (a2 == 1)
    {
      v6 = *(*(v5 + 72) + 43);
    }

    else
    {
      if (a2 != 3)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v6 = *(*(v5 + 72) + 42);
    }

    v7 = v6 ^ 1;
LABEL_11:
    *(this + 1377) = v7 & 1;
    goto LABEL_12;
  }

  *(this + 1377) = 1;
  if (a2)
  {
LABEL_12:
    if (!v3)
    {
      HALS_IOContext_Legacy_Impl::ResumeIO(this, *(v5 + 16));
    }

    if (*(this + 1340) == 1 && (*(*(*(this + 3) + 72) + 44) & 1) == 0)
    {
      HALS_IOContext_Legacy_Impl::TakePowerAssertions(this);
    }

    goto LABEL_17;
  }

  HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(this);
  HALS_IOContext_Legacy_Impl::PauseIO(this, *(*(this + 3) + 16));
LABEL_17:

  HALB_Guard::NotifyAll((this + 328));
}

void HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(HALS_IOContext_Legacy_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = this + 312;
  v5 = *(this + 40);
  v6 = pthread_self();
  v7 = pthread_equal(v5, v6);
  if (!v7)
  {
    os_unfair_recursive_lock_lock_with_options();
  }

  v32 = v4;
  v33 = HALB_Mutex::Lock((this + 328));
  v8 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
  v9 = *(this + 195);
  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v8 && v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = *(*(this + 3) + 16);
    v12 = (*(*v8 + 224))(v8);
    *buf = 136316162;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 489;
    v35 = 1024;
    *v36 = v11;
    *&v36[4] = 2082;
    *&v36[6] = v9 + 112;
    *&v36[14] = 2082;
    *&v36[16] = v12;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: %d %{public}s (%{public}s):";
    v15 = 44;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v16 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 493;
    v35 = 1024;
    *v36 = v16;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: %d:";
    v15 = 24;
  }

  _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *(this + 189), *(this + 190));
    if (v40 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v18 = *(this + 3);
    v19 = *(v18 + 144);
    v20 = *(v18 + 120);
    v21 = "no";
    if (v20 && *(v20 + 32))
    {
      v21 = "yes";
    }

    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 495;
    v35 = 2048;
    *v36 = a2;
    *&v36[8] = 2082;
    *&v36[10] = v17;
    *&v36[18] = 2048;
    *&v36[20] = v19;
    v37 = 2082;
    v38 = v21;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: stopping %p state: %{public}s IOProc %p: %{public}s", buf, 0x3Au);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = *(this + 3);
  if (a2 && *(v22 + 120) && *(v22 + 144) != a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 500;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: failed to stop because the IOProcID wasn't nullptr or wasn't registered", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  kdebug_trace();
  v23 = HALS_IOPrewarmManager::Stop(this + 189, a2 == 0);
  v25 = v23;
  if (v23 != 2)
  {
    v26 = *(*(this + 3) + 120);
    if (v26)
    {
      if (*(v26 + 32) == 1)
      {
        *(v26 + 32) = 0;
      }
    }
  }

  if (*(this + 190) || !*(this + 382) || *(this + 189))
  {
    v27 = atomic_load(this + 334);
    if (!v27 && (v23 || *(this + 382)))
    {
      if (v7)
      {
        v28 = a2 == 0;
        v29 = this + 1104;
        *buf = &unk_1F5982668;
        *&buf[8] = v28 | (v23 << 32);
        *&v36[4] = buf;
        if (this + 1104 != buf)
        {
          if (*(this + 141) == v29)
          {
            std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(buf, __p);
            (*(**&v36[4] + 32))(*&v36[4]);
            *&v36[4] = 0;
            (*(**(this + 141) + 24))(*(this + 141), buf);
            (*(**(this + 141) + 32))(*(this + 141));
            *(this + 141) = 0;
            *&v36[4] = buf;
            (*(__p[0] + 3))(__p, this + 1104);
            (*(__p[0] + 4))(__p);
          }

          else
          {
            std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(buf, this + 138);
            (*(**&v36[4] + 32))(*&v36[4]);
            *&v36[4] = *(this + 141);
          }

          *(this + 141) = v29;
        }

        std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](buf);
      }

      else
      {
        HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(this, a2 == 0, v23);
      }
    }

    v30 = 0;
  }

  else
  {
    *(this + 275) = a2 == 0;
    HALS_IOContext_Legacy_Impl::StopIOThread(this, v24);
    v30 = 1;
  }

  *(this + 382) = v25;
  HALS_ObjectMap::ReleaseObject(v8, v24);
  HALB_IOThread::Locker::~Locker(&v32);
  if (v30)
  {
    HALS_IOContext_Legacy_Impl::Stop_DeactivateDSP(this);
  }

  if (!v7)
  {
    os_unfair_recursive_lock_unlock();
  }
}

void sub_1DE5FE7C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(uint64_t a1, int a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = HALB_IOThread::WaitForState((a1 + 312), 1735354734);
  if (HALB_IOThread::IsCurrentThread((a1 + 312), 1))
  {
    v7 = HALS_IOThread::ClearAllSyscallMasks((a1 + 312));
    if (v7)
    {
      v8 = v7;
      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(v9 + 8);
      v12 = __error();
      v13 = strerror(*v12);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_32;
      }

      v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v14 + 16) = 0;
      *(v14 + 20) = 16;
      *(v14 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v14 + 32) = 583;
      *(v14 + 36) = v8;
      *(v14 + 40) = v13;
      *v14 = &unk_1F59826F8;
      *(v14 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v11, v14);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  v15 = HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(a1, a2, a3);
  v16 = v15;
  if (v6 && v6 != 89)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "HALS_IOContext_Legacy_Impl.cpp";
      v35 = 1024;
      v36 = 594;
      v37 = 1024;
      v38 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming: got a kernel error while waiting for the thread to be running, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v17 = *(a1 + 1096);
  if (v17)
  {
    v28 = HIBYTE(*(a1 + 1096));
    v29 = BYTE2(v17);
    v30 = BYTE1(v17);
    v31 = v17;
    v32 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "HALS_IOContext_Legacy_Impl.cpp";
      v35 = 1024;
      v36 = 596;
      v37 = 1024;
      v38 = v17;
      v39 = 2080;
      v40 = &v28;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming returned a thread error waiting for IO thread to run, Error: %d (%s)", buf, 0x22u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    v25 = *(a1 + 1096);
    *v24 = off_1F5991DD8;
    v24[2] = v25;
  }

  if (v15)
  {
    v28 = HIBYTE(v15);
    v29 = BYTE2(v15);
    v30 = BYTE1(v15);
    v31 = v15;
    v32 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "HALS_IOContext_Legacy_Impl.cpp";
      v35 = 1024;
      v36 = 598;
      v37 = 1024;
      v38 = v16;
      v39 = 2080;
      v40 = &v28;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming: got an error from ChangeEngineState_Off, possibly indicating a driver failure, Error: %d (%s)", buf, 0x22u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = off_1F5991DD8;
    v26[2] = v16;
  }

  if (!HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)) && HALB_IOThread::IsCurrentThread((a1 + 312), 1) && HALS_IOThread::EnableRTSafeSyscallMasks((a1 + 312)))
  {
    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *(v18 + 8);
    v21 = __error();
    v22 = strerror(*v21);
    if (*MEMORY[0x1E69E3C08])
    {
      v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v23 + 16) = 0;
      *(v23 + 20) = 16;
      *(v23 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v23 + 32) = 610;
      *(v23 + 36) = v6;
      *(v23 + 40) = v22;
      *v23 = &unk_1F5982750;
      *(v23 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v20, v23);
      if (v19)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      return;
    }

LABEL_32:
    __break(1u);
  }
}

void sub_1DE5FEDB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl28Server_Internal_StopIOProcIDEPFijPK14AudioTimeStampPK15AudioBufferListS2_PS3_S2_PvEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(*a2, *(a1 + 8), *(a1 + 12));
  *(v2 + 1508) = 1;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5982668;
  a2[1] = *(result + 8);
  return result;
}

caulk::rt_safe_memory_resource *HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(HALS_IOContext_Legacy_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, unsigned int a4)
{
  v81 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v76 = this + 312;
  v77 = HALB_Mutex::Lock((this + 328));
  HasBeenDeactivated = HALS_IOThread::HasBeenDeactivated((this + 312));
  if (HasBeenDeactivated)
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(HasBeenDeactivated);
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

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 353;
      *&buf[18] = 2080;
      *&buf[20] = "mIOThread.HasBeenDeactivated() == true";
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO Thread since it has been deactivated", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v75);
    __cxa_allocate_exception(0x40uLL);
    v66.__vftable = off_1F5991DD8;
    v67 = 1852797029;
    LODWORD(v69) = 1852797029;
    v72 = 0;
    v73 = 0;
    v74 = -1;
    __p = &unk_1F598E5D8;
    v70 = &unk_1F598E600;
    v71 = 0;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &__p);
    *&buf[32] = "virtual void HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(AudioDeviceIOProcID, AudioTimeStamp *, UInt32)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
    LODWORD(v79) = 353;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v64);
  }

  if (a3)
  {
    v9 = (a4 >> 3) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, 1);
    if (!NumberStreams)
    {
      goto LABEL_72;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      if (*(this + 209) == v11)
      {
        break;
      }

      if ((*(*(this + 208) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        break;
      }

      v12 = ++v11 < NumberStreams;
    }

    while (NumberStreams != v11);
    if (!v12)
    {
LABEL_72:
      v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v56 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreams);
      }

      v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        v59 = *v58;
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      else
      {
        v59 = *v58;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 361;
        *&buf[18] = 2080;
        *&buf[20] = "IsAnyInputStreamEnabled() == false";
        _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO for catch up if input streams are disabled", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v75);
      __cxa_allocate_exception(0x40uLL);
      v66.__vftable = off_1F5991DD8;
      v67 = 1852797029;
      LODWORD(v69) = 1852797029;
      v72 = 0;
      v73 = 0;
      v74 = -1;
      __p = &unk_1F598E5D8;
      v70 = &unk_1F598E600;
      v71 = 0;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &__p);
      *&buf[32] = "virtual void HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(AudioDeviceIOProcID, AudioTimeStamp *, UInt32)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
      LODWORD(v79) = 361;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v64);
    }
  }

  v13 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
  v14 = *(this + 195);
  v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v13 && v14)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *(*(this + 3) + 16);
    v17 = (*(*v13 + 224))(v13);
    *buf = 136316162;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 369;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    *&buf[24] = 2082;
    *&buf[26] = v14 + 112;
    *&buf[34] = 2082;
    *&buf[36] = v17;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: %d %{public}s (%{public}s):";
    v20 = 44;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v21 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 373;
    *&buf[18] = 1024;
    *&buf[20] = v21;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: %d:";
    v20 = 24;
  }

  _os_log_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
LABEL_19:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    AMCP::IO_Core::Play_State_Manager::get_debug_string(&__p, *(this + 189), *(this + 190));
    if (SHIBYTE(v70) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v23 = *(this + 3);
    v24 = *(v23 + 144);
    v25 = *(v23 + 120);
    v26 = "no";
    if (v25 && *(v25 + 32))
    {
      v26 = "yes";
    }

    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 375;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    *&buf[28] = 2082;
    *&buf[30] = p_p;
    *&buf[38] = 2048;
    *&buf[40] = v24;
    LOWORD(v79) = 2082;
    *(&v79 + 2) = v26;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \t\t\t\tstarting ProcID %p state: %{public}s IOProc %p: %{public}s", buf, 0x3Au);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p);
    }
  }

  HALS_IOContext_Legacy_Impl::Start_ActivateDSP(this);
  kdebug_trace();
  v27 = a2 == 0;
  v28 = HALS_IOPrewarmManager::Start(this + 189, v27);
  v30 = v28;
  if ((v28 - 1) >= 2)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
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
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 384;
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: Start failed to change the prewarming state in a reasonable way", buf, 0x12u);
    }
  }

  else if (v28 == 2)
  {
    v31 = *(*(this + 3) + 120);
    if (v31)
    {
      if ((*(v31 + 32) & 1) == 0)
      {
        *(v31 + 32) = 1;
      }
    }
  }

  v36 = *(this + 382);
  if (*(this + 190))
  {
    v37 = 1;
    if (v36)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v37 = *(this + 189) != 0;
    if (v36)
    {
LABEL_53:
      if (!atomic_load(this + 334))
      {
        v46 = HALB_IOThread::WaitForState((this + 312), 1735354734);
        v47 = HALS_IOContext_Legacy_Impl::ChangeEngineState_On(this, v27);
        v48 = v47;
        if (v46 && v46 != 89)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 426;
            *&buf[18] = 1024;
            *&buf[20] = v46;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: got a kernel error waiting for IO thread to run, Error: 0x%X", buf, 0x18u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v46;
        }

        v49 = *(this + 274);
        if (v49)
        {
          LOBYTE(__p) = HIBYTE(*(this + 274));
          BYTE1(__p) = BYTE2(v49);
          BYTE2(__p) = BYTE1(v49);
          *(&__p + 3) = v49;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 428;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            *&buf[24] = 2080;
            *&buf[26] = &__p;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID returned a thread error waiting for IO thread to run, Error: %d (%s)", buf, 0x22u);
          }

          v60 = __cxa_allocate_exception(0x10uLL);
          v61 = *(this + 274);
          *v60 = off_1F5991DD8;
          v60[2] = v61;
        }

        if (v47)
        {
          LOBYTE(__p) = HIBYTE(v47);
          BYTE1(__p) = BYTE2(v47);
          BYTE2(__p) = BYTE1(v47);
          *(&__p + 3) = v47;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 430;
            *&buf[18] = 1024;
            *&buf[20] = v48;
            *&buf[24] = 2080;
            *&buf[26] = &__p;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: got an error from ChangeEngineState_On, possibly indicating a driver failure, Error: %d (%s)", buf, 0x22u);
          }

          v62 = __cxa_allocate_exception(0x10uLL);
          *v62 = off_1F5991DD8;
          v62[2] = v48;
        }

        if (v30 != *(this + 382))
        {
          v75 = 0;
          v65[0] = HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper;
          v65[1] = &v75;
          __p = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(BOOL &,HALS_IOEngineInfo &),std::reference_wrapper<BOOL>,std::placeholders::__ph<1> const&>>;
          v69 = v65;
          v66.__vftable = &off_1F5983F18;
          v64[0] = &__p;
          *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
          *&buf[8] = v64;
          VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), buf, &v66);
          if ((v75 & 1) == 0)
          {
            *(this + 1341) = 1;
            *(this + 382) = v30;
            HALS_ObjectMap::ReleaseObject(v13, v50);
            HALB_IOThread::Locker::~Locker(&v76);
            HALB_Guard::Notify((this + 328));
            return os_unfair_recursive_lock_unlock();
          }

          *(this + 382) = v30;
          HALS_ObjectMap::ReleaseObject(v13, v50);
LABEL_65:
          HALB_IOThread::Locker::~Locker(&v76);
          return os_unfair_recursive_lock_unlock();
        }
      }

LABEL_64:
      *(this + 382) = v30;
      HALS_ObjectMap::ReleaseObject(v13, v29);
      goto LABEL_65;
    }
  }

  if (!v37)
  {
    goto LABEL_53;
  }

  if (!v9)
  {
    *(this + 356) = 0;
    v51 = *(this + 182);
    if (v51)
    {
      std::function<void ()(IORunningState)>::operator()(v51, 0);
    }

    goto LABEL_63;
  }

  mHostTime = a3->mHostTime;
  *(this + 183) = mHostTime;
  *(this + 356) = 1;
  v39 = *(this + 182);
  if (v39)
  {
    std::function<void ()(IORunningState)>::operator()(v39, 1);
  }

  v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v43 = *(v40 + 8);
    v44 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v44 + 16) = 0;
    *(v44 + 20) = 0;
    *(v44 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v44 + 32) = 3924;
    *(v44 + 40) = mHostTime;
    *v44 = &unk_1F5983310;
    *(v44 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v43, v44);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

LABEL_63:
    *(this + 275) = v27;
    HALS_IOContext_Legacy_Impl::StartIOThread(&__p, this);
    *buf = v69;
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    memset(&buf[16], 0, 32);
    v79 = 0u;
    v80 = 0u;
    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

void sub_1DE600034(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::exception a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(&a32);
  boost::exception_detail::error_info_injector<CAException>::~error_info_injector(&a19);
  std::exception::~exception(&a17);
  if (v33)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a29);
  JUMPOUT(0x1DE6000BCLL);
}

void sub_1DE6000B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  HALB_IOThread::Locker::~Locker(va);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(IORunningState)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper(HALS_IOContext_Legacy_Impl *this, BOOL *a2, HALS_IOEngineInfo *a3)
{
  if (*this)
  {
    return 1;
  }

  if ((*(*a2 + 16))(a2))
  {
    *this = (*(*a2 + 320))(a2);
  }

  return *this;
}

void sub_1DE6001FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 6217;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper: Caught exception trying to stop hardware", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6001CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::SaveAnchorTime(unsigned long long,unsigned int)::$_0,std::tuple<char const*,int,unsigned long long>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext_Legacy_Impl::SaveAnchorTime:  %llu", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::SaveAnchorTime(unsigned long long,unsigned int)::$_0,std::tuple<char const*,int,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::TranslateTime(uint64_t this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v3 = *(this + 1560);
  if (v3)
  {
    if (*(v3 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v3 + 368), a2, a3);
    }
  }

  return this;
}

HALS_IOClock *HALS_IOContext_Legacy_Impl::GetCurrentTime(HALS_IOClock *this, AudioTimeStamp *a2)
{
  v2 = *(this + 195);
  if (v2 && *(v2 + 88))
  {
    this = *(v2 + 368);
    if (this)
    {
      return HALS_IOClock::GetCurrentTime(this, a2);
    }
  }

  return this;
}

uint64_t HALS_IOContext_Legacy_Impl::StopWaitingForTapStart(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v2 = this;
  HALS_IOContext_Legacy_Impl::StopIOThread(this, a2);
  v4 = v2 + 312;
  v5 = HALB_Mutex::Lock((v2 + 328));
  LODWORD(v2) = HALB_IOThread::HasBeenStopped((v2 + 312));
  HALB_IOThread::Locker::~Locker(&v4);
  return v2 ^ 1;
}

uint64_t HALS_IOContext_Legacy_Impl::BlockStartOnTapStart(HALS_IOContext_Legacy_Impl *this)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = (this + 312);
  HALB_IOThread::WaitForState((this + 312), 1735552612);
  v8 = v2;
  v9 = HALB_Mutex::Lock((this + 328));
  *(this + 492) = 0;
  while (1)
  {
    v10 = 0;
    v3 = *(this + 193);
    v11[0] = &unk_1F5987BC0;
    v11[1] = &v10 + 1;
    v11[2] = &v10;
    v11[3] = v11;
    v4 = for_all_taps(v3, v11);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](v11);
    if (HIBYTE(v10) == 1 || (v4 & ~v10 & 1) == 0 || (HALB_IOThread::HasBeenStopped(v2) & 1) != 0)
    {
      break;
    }

    v5 = mach_absolute_time();
    HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(this, v5 + 2400000);
  }

  HasBeenStopped = HALB_IOThread::HasBeenStopped(v2);
  HALB_IOThread::Locker::~Locker(&v8);
  return HasBeenStopped ^ 1u;
}

void sub_1DE6005C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    HALB_IOThread::Locker::~Locker(&a9);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE600590);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(HALS_IOContext_Legacy_Impl *this, unint64_t a2)
{
  v11 = 0;
  v4 = __udivti3();
  HALB_Guard::WaitUntil((this + 328), v4, &v11);
  v5 = mach_absolute_time();
  if (v11)
  {
    v7 = v5;
    if ((HALB_IOThread::HasBeenStopped((this + 312)) & 1) == 0 && v7 < a2)
    {
      HALB_Guard::WaitUntil((this + 328), v4, &v11);
    }
  }

  else
  {
    v8 = *(this + 195);
    v9 = 44100.0;
    if (v8 && *(v8 + 88) && (v9 = *(v8 + 848), v9 <= 0.0))
    {
      LODWORD(v10) = 100;
    }

    else
    {
      LODWORD(v6) = *(this + 340);
      v10 = (v6 / v9 * 0.05 * 1000.0 * 1000.0);
    }

    HALB_Mutex::Unlock((this + 328));
    usleep(v10);

    HALB_Mutex::Lock((this + 328));
  }
}

void HALS_IOContext_Legacy_Impl::WaitForTapStart(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v3 = (this + 2112);
  if (*(this + 264))
  {
    HALS_IOContext_Legacy_Impl::StopWaitingForTapStart(this, a2);
    std::thread::join(v3);
  }

  atomic_store(1u, this + 2120);
  operator new();
}

void sub_1DE600890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C403A5D3213);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>(const void **a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v1 = std::__thread_local_data();
  v2 = *v11;
  *v11 = 0;
  pthread_setspecific(v1->__key_, v2);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(v11 + 2));
  if (v4)
  {
    kdebug_trace();
    v5 = (*(**(v4 + 13) + 768))(*(v4 + 13));
    snprintf(__str, 0x12CuLL, "Tap wait thread: %u", v5);
    pthread_setname_np(__str);
    v6 = (*(**(v4 + 13) + 472))(*(v4 + 13));
    kdebug_trace();
    if (v6)
    {
      (*(**(v4 + 13) + 488))(*(v4 + 13));
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(*(v11 + 2));
  v9 = v7;
  if (v7)
  {
    (*(**(v7 + 104) + 496))(*(v7 + 104));
  }

  HALS_ObjectMap::ReleaseObject(v9, v8);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  return 0;
}

void sub_1DE600AE4(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_ObjectMap::ReleaseObject(v4, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::LogState(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "    ", 4);
      --v6;
    }

    while (v6);
  }

  v7 = (a2 + 16);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "IO Context ", 11);
  v9 = MEMORY[0x1E12C1210](v8, *(*(a1 + 24) + 16));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v31, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v29[3] = &v31;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZNK26HALS_IOContext_Legacy_Impl8LogStateERNSt3__118basic_stringstreamIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke;
  v22[3] = &unk_1E8677E30;
  v22[4] = v29;
  v22[5] = v27;
  v22[6] = &v23;
  v22[7] = a1;
  v11 = (*(**(a1 + 24) + 64))(*(a1 + 24));
  HALB_CommandGate::ExecuteCommand(v11, v22);
  if (a3 != -1)
  {
    v12 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v12;
    }

    while (v12);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Client ID:      ", 16);
  v13 = MEMORY[0x1E12C1210](v7, *(v24 + 6));
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v30, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v30);
  std::ostream::put();
  std::ostream::flush();
  if (a3 != -1)
  {
    v15 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v15;
    }

    while (v15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "IO Thread Name: ", 16);
  v16 = strlen(&v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v31, v16);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v17 = std::locale::use_facet(&v30, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v30);
  std::ostream::put();
  std::ostream::flush();
  if (a3 != -1)
  {
    v18 = a3 + 1;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "    ", 4);
      --v18;
    }

    while (v18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Is Running:     ", 16);
  if (*(a1 + 1340))
  {
    v19 = "yes";
  }

  else
  {
    v19 = "no";
  }

  if (*(a1 + 1340))
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v19, v20);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v21 = std::locale::use_facet(&v30, MEMORY[0x1E69E5318]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v30);
  std::ostream::put();
  std::ostream::flush();
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

void sub_1DE6010BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::locale a29, std::locale a30)
{
  std::locale::~locale(&a29);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

size_t ___ZNK26HALS_IOContext_Legacy_Impl8LogStateERNSt3__118basic_stringstreamIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke(void *a1)
{
  v2 = a1[7];
  result = strlcpy(*(*(a1[4] + 8) + 24), (v2 + 500), 0x80uLL);
  *(*(a1[5] + 8) + 24) = *(v2 + 1340);
  *(*(a1[6] + 8) + 24) = **(*(v2 + 24) + 72);
  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateIssueReportersOnEngines(HALS_IOContext_Legacy_Impl *this)
{
  v4[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v4[1] = &v2;
  v2 = &__block_literal_global_13673;
  v3 = &off_1F5983F18;
  v5 = v4;
  v6[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v6[1] = &v5;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), v6, &v3);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl29UpdateIssueReportersOnEnginesEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    (*(*v2 + 624))(v2);
  }

  return 0;
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithControlAndIOThreadLocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v11 = a2;
  v12 = a3;
  v5 = a1 + 312;
  v6 = *(a1 + 320);
  v7 = pthread_self();
  v8 = pthread_equal(v6, v7);
  if (!v8)
  {
    os_unfair_recursive_lock_lock_with_options();
  }

  v9 = v5;
  v10 = HALB_Mutex::Lock((a1 + 328));
  a2(&v12);
  HALB_IOThread::Locker::~Locker(&v9);
  if (!v8)
  {
    os_unfair_recursive_lock_unlock();
  }
}

void sub_1DE601328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  if (!v9)
  {
    os_unfair_recursive_lock_unlock();
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithIOThreadUnlocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = a1 + 312;
  v5 = HALB_Mutex::Unlock((a1 + 328));
  a2(&v7);
  HALB_IOThread::Unlocker::~Unlocker(&v4);
}

void HALS_IOContext_Legacy_Impl::ExecuteWorkWithIOThreadLocker(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = a1 + 312;
  v5 = HALB_Mutex::Lock((a1 + 328));
  a2(&v7);
  HALB_IOThread::Locker::~Locker(&v4);
}

uint64_t HALS_IOContext_Legacy_Impl::SetIORunningStateObserver(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  v4 = a1 + 1432;
  if ((a1 + 1432) != v8)
  {
    v5 = v9;
    v6 = *(a1 + 1456);
    if (v9 == v8)
    {
      if (v6 == v4)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 1456) + 24))(*(a1 + 1456), v8);
        (*(**(a1 + 1456) + 32))(*(a1 + 1456));
        *(a1 + 1456) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1 + 1432);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 1456);
      }

      *(a1 + 1456) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 1456), v8);
      (*(**(a1 + 1456) + 32))(*(a1 + 1456));
      *(a1 + 1456) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 1456);
      *(a1 + 1456) = v5;
    }
  }

  return std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](v8);
}

void sub_1DE601738(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL HALS_IOContext_Legacy_Impl::AreClientBuffersEmpty(HALS_IOContext_Legacy_Impl *this)
{
  v1 = 0;
  v2 = *(this + 340);
  v3 = *(this + 202);
  v4 = (*(this + 203) - v3) >> 5;
  while (1)
  {
    v5 = v1;
    if (v4 <= v1)
    {
      break;
    }

    v6 = *(v3 + 32 * v1 + 8);
    if (*(v3 + 32 * v5 + 16) != v6)
    {
      v7 = *v6;
      if (-1601513229 * ((*(*(v3 + 32 * v5 + 8) + 8) - v7) >> 3) && v7 != 0)
      {
        if (!*(v7 + 108) || ((v9 = *(v7 + 112), *(v7 + 120) != v9) ? (v10 = v9 == 0) : (v10 = 1), v10))
        {
          v9 = (v7 + 456);
        }

        v11 = *v9;
        v12 = *(v11 + 88) ? *(v11 + 388) : 0;
        v13 = *(v7 + 56);
        if (v13 && v2 != 0)
        {
          v15 = (v13 + v12);
          v16 = 1;
          do
          {
            v17 = *v15++;
            v18 = v17;
          }

          while (v17 == 0.0 && v16++ < v2);
          if (v18 != 0.0)
          {
            break;
          }
        }
      }
    }

    v1 = v5 + 1;
  }

  return v4 <= v5;
}

uint64_t HALS_IOContext_Legacy_Impl::ClearInputBuffers(HALS_IOContext_Legacy_Impl *this)
{
  v2 = *(this + 340);
  v3[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_0>;
  v3[1] = &v2;
  *&v4 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v4 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 199), *(this + 200), &v4);
}

uint64_t HALS_IOContext_Legacy_Impl::ClearOutputBuffers(HALS_IOContext_Legacy_Impl *this)
{
  v2 = *(this + 340);
  *&v3 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>;
  *(&v3 + 1) = &v2;
  return VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 202), *(this + 203), &v3);
}

void HALS_IOContext_Legacy_Impl::RefreshComposition(HALS_IOContext_Legacy_Impl *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3002000000;
  v8 = __Block_byref_object_copy__13_13676;
  v9 = __Block_byref_object_dispose__14_13677;
  cf = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN26HALS_IOContext_Legacy_Impl18RefreshCompositionEv_block_invoke;
  v4[3] = &unk_1E8677E80;
  v4[4] = &v5;
  v4[5] = this;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v4);
  v3 = v6[5];
  if (v3)
  {
    HALS_IOContext_Legacy_Impl::SetComposition(this, v3);
  }

  _Block_object_dispose(&v5, 8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE601B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  applesauce::CF::DictionaryRef::~DictionaryRef((v13 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13_13676(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14_13677(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN26HALS_IOContext_Legacy_Impl18RefreshCompositionEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1544);
  if (v3)
  {
    CFRetain(v3);
    v4 = *(v2 + 1544);
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1DE601C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::AssessIOBufferSize(HALS_IOContext_Legacy_Impl *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4802000000;
  v9 = __Block_byref_object_copy__13617;
  v10 = __Block_byref_object_dispose__13618;
  *__p = 0u;
  v12 = 0u;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN26HALS_IOContext_Legacy_Impl18AssessIOBufferSizeEv_block_invoke;
  v5[3] = &unk_1E8677E58;
  v5[4] = &v6;
  v5[5] = this;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[5];
  v4 = (v7[6] - v3) >> 2;
  if (-1431655765 * v4)
  {
    HALS_Object::PropertiesChanged(*(this + 3), *(v7 + 16), **(*(this + 3) + 72), 0xAAAAAAAAAAAAAAABLL * v4, v3);
  }

  _Block_object_dispose(&v6, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DE601DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DE601E2C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_Legacy_Impl::ResumeAllIO(atomic_uint *this)
{
  v4 = this + 78;
  v5 = HALB_Mutex::Lock((this + 82));
  while (atomic_load(this + 334))
  {
    atomic_fetch_add(this + 334, 0xFFFFFFFF);
  }

  HALB_IOThread::Locker::~Locker(&v4);
}

double HALS_IOContext_Legacy_Impl::ResumeIOForRegistration(atomic_uint *this, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add(this + 334, 0xFFFFFFFF))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v7 = 136315394;
      v8 = "HALS_IOContext_Legacy_Impl.cpp";
      v9 = 1024;
      v10 = 926;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The IOContext is not already disabled during the resume call for registration!", &v7, 0x12u);
    }
  }

  kdebug_trace();
  kdebug_trace();
  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::PauseIOForRegistration(atomic_uint *this, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add(this + 334, 1u))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v7 = 136315394;
      v8 = "HALS_IOContext_Legacy_Impl.cpp";
      v9 = 1024;
      v10 = 844;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The IOContext is not already disabled during the pause call for registration!", &v7, 0x12u);
    }
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IsIORunningNotInCatchupMode(HALS_IOContext_Legacy_Impl *this)
{
  if ((*(this + 356) - 5) < 0xFFFFFFFD)
  {
    return *(this + 1340);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetDeviceSet@<X0>(HALS_IOContext_Legacy_Impl *this@<X0>, uint64_t a2@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v12 = this + 312;
  v4 = HALB_Mutex::Lock((this + 328));
  v5 = 0;
  v13 = v4;
  v6 = 1;
  do
  {
    v7 = v5;
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, v6 & 1);
    if (NumberStreams)
    {
      for (i = 0; i != NumberStreams; ++i)
      {
        HALS_IOContextDescription::GetStreamInfoAtIndex(this + 192, v6 & 1, i, v11);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v14, v11[0], v11);
      }
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) == 0);
  std::unordered_set<unsigned int>::unordered_set(a2, v14);
  HALB_IOThread::Locker::~Locker(&v12);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v14);
}

void sub_1DE6022AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  HALB_IOThread::Locker::~Locker(va);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DeviceDied(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke;
  v7[3] = &unk_1E8678088;
  v7[4] = &v8;
  v7[5] = this;
  v7[6] = a2;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v7);
  if (*(v9 + 24) == 1)
  {
    HALS_IOContext_Legacy_Impl::PauseIO(this, *(*(this + 3) + 16));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_45_13686;
    v6[4] = this;
    v6[5] = a2;
    v5 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v5, v6);
    (*(**(*(this + 3) + 104) + 240))(*(*(this + 3) + 104));
    HALS_IOContext_Legacy_Impl::ResumeIO(this, *(*(this + 3) + 16));
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::GetEngineInfoForDeviceUID((*(a1 + 40) + 1536), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl10DeviceDiedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  if (HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), *(a1 + 40)))
  {
    HALS_IOContextDescription::DeviceDied((v2 + 1536), *(a1 + 40));
  }

  HALB_IOThread::Locker::~Locker(&v3);
}

void HALS_IOContext_Legacy_Impl::DeviceArrived(HALS_IOContext_Legacy_Impl *this, HALS_Device *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke;
  v7[3] = &unk_1E8678040;
  v7[5] = this;
  v7[6] = a2;
  v7[4] = &v8;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v7);
  if (*(v9 + 24) == 1)
  {
    HALS_IOContext_Legacy_Impl::PauseIO(this, *(*(this + 3) + 16));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_43_13688;
    v6[4] = this;
    v6[5] = a2;
    v5 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v5, v6);
    (*(**(*(this + 3) + 104) + 240))(*(*(this + 3) + 104));
    HALS_IOContext_Legacy_Impl::ResumeIO(this, *(*(this + 3) + 16));
  }

  _Block_object_dispose(&v8, 8);
}

void ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(**(a1 + 48) + 216))(*(a1 + 48));
  v4 = 1;
  *(*(*(a1 + 32) + 8) + 24) = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v3) != 0;
  CACFString::~CACFString(&v3);
}

void ___ZN26HALS_IOContext_Legacy_Impl13DeviceArrivedEP11HALS_Device_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = (*(**(a1 + 40) + 216))(*(a1 + 40));
  v14 = 1;
  v11 = v2 + 312;
  v12 = HALB_Mutex::Lock((v2 + 328));
  if (HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v13))
  {
    v3 = *(a1 + 40);
    v15 = (*(*v3 + 216))(v3);
    v16 = 1;
    EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v2 + 1536), v15);
    if (EngineInfoForDeviceUID)
    {
      v5 = HALS_IODevice::CopyIOEngine(v3);
      v6 = v5;
      if (v5)
      {
        v7 = *(EngineInfoForDeviceUID + 88);
        *(EngineInfoForDeviceUID + 88) = v5;
        *(EngineInfoForDeviceUID + 940) = 0;
        *(EngineInfoForDeviceUID + 830) = (*(*v5 + 880))(v5);
        HALS_ObjectMap::RetainObject(*(EngineInfoForDeviceUID + 88), v8);
        HALS_ObjectMap::ReleaseObject(v7, v9);
        HALS_ObjectMap::ReleaseObject(v6, v10);
        operator new();
      }
    }

    CACFString::~CACFString(&v15);
  }

  HALB_IOThread::Locker::~Locker(&v11);
  CACFString::~CACFString(&v13);
}

void sub_1DE6029E0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  CACFString::~CACFString(&a14);
  HALB_IOThread::Locker::~Locker(&a10);
  CACFString::~CACFString(&a12);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::ClockDeviceDied(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke;
  v7[3] = &unk_1E8677FF8;
  v7[4] = &v8;
  v7[5] = this;
  v7[6] = a2;
  v4 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v4, v7);
  if (*(v9 + 24) == 1)
  {
    HALS_IOContext_Legacy_Impl::PauseIO(this, *(*(this + 3) + 16));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_41_13690;
    v6[4] = this;
    v6[5] = a2;
    v5 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v5, v6);
    HALS_IOContext_Legacy_Impl::ResumeIO(this, *(*(this + 3) + 16));
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::HasClockDevice(*(*(a1 + 40) + 1544), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl15ClockDeviceDiedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  HALS_IOContextDescription::DeviceDied((v2 + 1536), *(a1 + 40));
  HALB_IOThread::Locker::~Locker(&v3);
}

void HALS_IOContext_Legacy_Impl::ClockDeviceArrived(HALS_IOContext_Legacy_Impl *this, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke;
  v6[3] = &unk_1E8677FB0;
  v6[4] = &v7;
  v6[5] = this;
  v6[6] = a2;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v6);
  if (*(v8 + 24) == 1)
  {
    HALS_IOContext_Legacy_Impl::PauseIO(this, *(*(this + 3) + 16));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_39_13692;
    v5[4] = this;
    v4 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v4, v5);
    HALS_IOContext_Legacy_Impl::ResumeIO(this, *(*(this + 3) + 16));
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke(uint64_t a1)
{
  result = HALS_IOContextDescription::HasClockDevice(*(*(a1 + 40) + 1544), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN26HALS_IOContext_Legacy_Impl18ClockDeviceArrivedEPK10__CFString_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 312;
  v3 = HALB_Mutex::Lock((v1 + 328));
  HALS_IOContextDescription::PickMasterEngine((v1 + 1536));
  HALB_IOThread::Locker::~Locker(&v2);
}

void HALS_IOContext_Legacy_Impl::SetProcessInputMuteState(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN26HALS_IOContext_Legacy_Impl24SetProcessInputMuteStateEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_37_13693;
  v3[4] = this;
  v4 = a2;
  v2 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOContext_Legacy_Impl::GetSimpleStreamUsage(HALS_IOContext_Legacy_Impl *this)
{
  v2 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 208), 0, *(this + 209));
  v3 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 205), 0, *(this + 206));
  v4 = *(this + 442);
  v5 = v2 == v4;
  if ((v2 - v4) | v3)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == v4;
    }

    if (!v6 && !v4)
    {
      return 2;
    }

    if (!v3)
    {
      v5 = 0;
    }

    if (v5 && !v4)
    {
      return 1;
    }

    if (!v6 && v4 != 0)
    {
      return 4;
    }

    if (v2 != v4 && v3)
    {
      if (v4)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }

    v8 = !v5 || v4 == 0;
    v9 = 5;
  }

  else
  {
    v8 = v4 == 0;
    v9 = 3;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetStreamLatencyAtIndex(HALS_IOContext_Legacy_Impl *this, int a2, unsigned int a3)
{
  if (a2 && (v3 = *(this + 199), 0xCBEEA4E1A08AD8F3 * ((*(this + 200) - v3) >> 3) > a3) && (v4 = v3 + 472 * a3, *(v4 + 108) == 1) && *(v4 + 164) == 1)
  {
    return *(v4 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetNumberInputStreamsOfType(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 1768);
  }

  if (a2)
  {
    return 0;
  }

  return HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1) - *(a1 + 1768);
}

void HALS_IOContext_Legacy_Impl::Deactivate(HALS_IOContext_Legacy_Impl *this)
{
  v2 = (this + 312);
  v23 = (this + 312);
  v3 = this + 328;
  v24 = HALB_Mutex::Lock((this + 328));
  if (*(this + 1512) != 0)
  {
    HALS_IOPrewarmManager::GetState(&__p, this + 189);
    HALS_IOContext_Legacy_Impl::ResetEngineState_Off(this, &__p);
    if (__p)
    {
      operator delete(__p);
    }
  }

  __p = v3;
  LODWORD(v13) = HALB_Mutex::Lock(v3);
  HALB_IOThread::_WaitForState(v2, 1735552612);
  *(this + 493) = 1;
  HALB_Guard::Locker::~Locker(&__p);
  v4 = *(this + 3);
  v5 = **(v4 + 72);
  v6 = *(v4 + 16);
  v17[0] = 0;
  v17[1] = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  LOWORD(v15) = 0;
  v16 = v17;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = v5;
  v22 = v6;
  HALS_IOContextHostedDSP::Remove(*(this + 272), (this + 1536), *(this + 340), v5, v6, &__p, v7);
  HALS_MutationChangeSynchronizer::Wait(__p, v13);
  HALS_IOContextDescription::SetToEmpty((this + 1536), v8);
  *(this + 382) = 0;
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(&__p);
  HALB_IOThread::Locker::~Locker(&v23);
  v9 = *(this + 173);
  v23 = this;
  v10 = atomic_load((v9 + 32));
  if (v10)
  {
    atomic_store(1u, (v9 + 33));
  }

  v11 = *v9;
  __p = MEMORY[0x1E69E9820];
  v13 = 0x40000000;
  v14 = ___ZN10applesauce8dispatch2v19sync_implIRZN26HALS_IOContext_Legacy_Impl10DeactivateEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v15 = &__block_descriptor_tmp_136_13694;
  v16 = &v23;
  dispatch_sync(v11, &__p);
}

void sub_1DE6032BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE60317CLL);
}

void sub_1DE6032C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  HALB_IOThread::Locker::~Locker((v9 - 48));
  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIRZN26HALS_IOContext_Legacy_Impl10DeactivateEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = *(v1 + 1408);
  *(v1 + 1400) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

double HALS_IOContext_Legacy_Impl::Initialize(HALS_IOContext_Legacy_Impl *this, int a2)
{
  *(this + 340) = a2;
  *&result = 0x200000001;
  *(this + 258) = 0x200000001;
  return result;
}

void HALS_IOContext_Legacy_Impl::~HALS_IOContext_Legacy_Impl(HALS_IOContext_Legacy_Impl *this)
{
  HALS_IOContext_Legacy_Impl::~HALS_IOContext_Legacy_Impl(this);

  JUMPOUT(0x1E12C1730);
}

{
  if (*(this + 264))
  {
    std::thread::join(this + 264);
  }

  AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(*(this + 3));
  HALS_IOContext_Legacy_Impl::EnableCaptureFiles(this, AudioCaptureMode);
  v3 = *(this + 274);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100](this + 272);
  if (*(this + 2175) < 0)
  {
    operator delete(*(this + 269));
  }

  std::thread::~thread(this + 264);
  std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(this + 2072);
  HALS_IOContextDescription::~HALS_IOContextDescription((this + 1536));
  v4 = *(this + 184);
  if (v4)
  {
    *(this + 185) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](this + 1432);
  v5 = *(this + 176);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 174);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](this + 1104);
  HALS_IOThread::~HALS_IOThread((this + 312));
  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t *std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v5 = v2;
    std::vector<HALS_IOContextHostedDSP::HostedDSPList::ExtendedInstanceInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1E12C1730](v2, 0x20C40769AC3DALL);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<HALS_IOContextHostedDSP::HostedDSPList::ExtendedInstanceInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(v6);
          MEMORY[0x1E12C1730]();
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint *___ZN26HALS_IOContext_Legacy_Impl18SetVolumeForEngineEP13HALS_IOEnginebf_block_invoke(atomic_uint *result)
{
  v1 = *(result + 4);
  v2 = *(result + 52);
  v3 = result[12];
  v4 = *(v1 + 1568);
  v5 = *(v1 + 1576);
  if (v4 != v5)
  {
    while (*(*v4 + 11) != *(result + 5))
    {
      if (++v4 == v5)
      {
        return result;
      }
    }
  }

  if (v4 != v5)
  {
    result = *v4;
    if (*v4)
    {
      if (*(result + 11))
      {
        v6 = round(*(result + 106) * 0.05);
        LODWORD(v7) = v3;
        *(&v7 + 1) = 0;
        v8 = v6;
        return HALS_IOEngineInfo::write_volume_target_info_potentially_blocking(result, v2, &v7);
      }
    }
  }

  return result;
}

void sub_1DE603670(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

atomic_uint *___ZN26HALS_IOContext_Legacy_Impl19RampVolumeForEngineEP13HALS_IOEnginebfdd_block_invoke(atomic_uint *result)
{
  v1 = *(result + 4);
  v2 = *(result + 68);
  v3 = result[16];
  v4 = *(result + 3);
  v5 = *(v1 + 1568);
  v6 = *(v1 + 1576);
  if (v5 != v6)
  {
    while (*(*v5 + 11) != *(result + 5))
    {
      if (++v5 == v6)
      {
        return result;
      }
    }
  }

  if (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      v7 = v3;
      v8 = v4;
      return HALS_IOEngineInfo::write_volume_target_info_potentially_blocking(result, v2, &v7);
    }
  }

  return result;
}

void sub_1DE603710(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_Legacy_Impl::IncrementOutputFrameCounterForTaps(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  for (i = *(this + 261); i; i = *i)
  {
    if (*(i + 40) == 1)
    {
      v5 = i[3];
      v6 = *(*(this + 3) + 16);
      if (std::__shared_mutex_base::try_lock_shared((v5 + 176)))
      {
        HALS_MultiTap::fetch_writer_state(&v7, v5, v6);
        if (v7)
        {
          *(v7 + 280) += a2;
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        std::__shared_mutex_base::unlock_shared((v5 + 176));
      }
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(uint64_t result, unsigned int a2, AudioTimeStamp *a3, double a4)
{
  memset(&v5.mHostTime, 0, 48);
  *&v5.mFlags = 1;
  v4 = *(result + 1560);
  if (v4)
  {
    v5.mSampleTime = *(v4 + 440) + *(result + 1352) + (*(result + 1368) * a2) + a4;
    if (*(v4 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v4 + 368), &v5, a3);
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(HALS_IOContext_Legacy_Impl *this, AudioTimeStamp *a2)
{
  v5 = *(*(this + 3) + 16);
  v3 = &unk_1F5983F68;
  v4 = a2;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(AudioTimeStamp &)::$_0>;
  v7[1] = &v4;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), v9, &v6, &v3);
}

BOOL HALS_IOContext_Legacy_Impl::PerformIO(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, char a7)
{
  v11 = a1 + 1536;
  v91 = *(a1 + 1560);
  *a6 = 0;
  v102 = 0;
  v109 = HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper;
  v110 = &v102;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(BOOL &,HALS_IOEngineInfo &),std::reference_wrapper<BOOL>,std::placeholders::__ph<1> const&>>;
  *&v104.mFormatID = &v109;
  v98 = &off_1F5983F18;
  v105 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v105;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), v92, &v98);
  v12 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1664), 0, *(a1 + 1672));
  v13 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1640), 0, *(a1 + 1648));
  v89 = v11;
  v14 = HALS_IOContextDescription::GetNumberStreams(v11, 0) != 0;
  v15 = v13;
  v85 = v13 == 0;
  v16 = a3;
  v17 = v85 && v14;
  v98 = a1;
  v99 = a4;
  v100 = v16;
  v101 = a7;
  *v96 = &off_1F5983FA8;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_0>;
  *&v104.mFormatID = &v98;
  v105 = &off_1F5983F18;
  v109 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v109;
  v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, &v105, v96);
  if (v18)
  {
    goto LABEL_93;
  }

  v19 = v91;
  if (!v91)
  {
    return v18 || v19 == 0;
  }

  if (*(*(*(a1 + 24) + 72) + 40))
  {
    *(a1 + 1144) = bswap64(*a2);
    *(a1 + 1152) = bswap64(*(a2 + 8));
    *(a1 + 1160) = bswap64(*(a2 + 16));
    *(a1 + 1200) = bswap32(*(a2 + 56));
    v20 = (a1 + 1208);
    *(a1 + 1208) = bswap64(v91[74]);
    *(a1 + 1216) = bswap64(v91[75]);
    *(a1 + 1224) = bswap64(*(a2 + 16));
    *(a1 + 1264) = bswap32(*(a2 + 56));
    v21 = (a1 + 1272);
    *(a1 + 1272) = bswap64(v91[82]);
    *(a1 + 1280) = bswap64(v91[83]);
    v22 = bswap64(*(a2 + 16));
    v23 = bswap32(*(a2 + 56));
  }

  else
  {
    *(a1 + 1144) = *a2;
    *(a1 + 1152) = *(a2 + 8);
    *(a1 + 1160) = *(a2 + 16);
    *(a1 + 1200) = *(a2 + 56);
    v20 = (a1 + 1208);
    *(a1 + 1208) = v91[74];
    *(a1 + 1216) = v91[75];
    *(a1 + 1224) = *(a2 + 16);
    *(a1 + 1264) = *(a2 + 56);
    v21 = (a1 + 1272);
    *(a1 + 1272) = v91[82];
    *(a1 + 1280) = v91[83];
    v22 = *(a2 + 16);
    v23 = *(a2 + 56);
  }

  *(a1 + 1288) = v22;
  *(a1 + 1328) = v23;
  v24 = *(a1 + 1136);
  v25 = *(a1 + 1144);
  v26 = *(a1 + 1160);
  v27 = *(a1 + 1192);
  v24[8] = *(a1 + 1176);
  v24[9] = v27;
  v24[6] = v25;
  v24[7] = v26;
  v28 = *(a1 + 1136);
  v29 = *v20;
  v30 = v20[1];
  v31 = v20[3];
  v28[12] = v20[2];
  v28[13] = v31;
  v28[10] = v29;
  v28[11] = v30;
  v32 = *(a1 + 1136);
  v33 = *v21;
  v34 = v21[1];
  v35 = v21[3];
  v32[16] = v21[2];
  v32[17] = v35;
  v32[14] = v33;
  v32[15] = v34;
  __dmb(0xBu);
  if (v12 && ((*(a1 + 1416) & 1) != 0 || *(a1 + 1417) == 1))
  {
    v36 = (*(*(a1 + 24) + 16) | (v16 << 32));
    v109 = HALS_IOPerformer::begin_reading;
    v110 = v36;
    *v103 = &off_1F5983FA8;
    *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &,unsigned int),unsigned int,std::placeholders::__ph<1> const&,unsigned int &>>;
    *&v104.mFormatID = &v109;
    *v96 = &off_1F5983F18;
    v105 = &v104;
    *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&v92[8] = &v105;
    v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v96, v103);
    if (v18)
    {
      return v18 || v19 == 0;
    }

    v37 = v15;
    v38 = v17;
    v105 = a1;
    v39 = v16;
    LODWORD(v106) = v16;
    *v96 = &unk_1F5987718;
    v97 = v89;
    *v103 = &unk_1F5982640;
    *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_1>;
    *&v92[8] = &v105;
    v40 = *(a1 + 1592);
    v41 = *(a1 + 1600);
    if (*&v40 != v41)
    {
      v42 = 0;
      v43 = 0;
      do
      {
        if (v42)
        {
          v43 = (v43 + 1);
        }

        else
        {
          v43 = 0;
        }

        v104.mSampleRate = v40;
        *&v104.mFormatID = v43;
        if (((*(*v96 + 16))(v96, &v104) & 1) == 0 && ((*(*v103 + 16))(v103, &v104) & 1) == 0)
        {
          v109 = *&v40;
          v110 = v43;
          if ((*v92)(&v92[8], &v109))
          {
            goto LABEL_96;
          }
        }

        *&v40 += 472;
        v42 = 1;
      }

      while (*&v40 != v41);
    }

    v44 = *(*(a1 + 24) + 16);
    v109 = HALS_IOPerformer::end_reading;
    LODWORD(v110) = v44;
    v95 = &off_1F5983FA8;
    *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    *&v104.mFormatID = &v109;
    *v103 = &off_1F5983F18;
    *v96 = &v104;
    *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    *&v92[8] = v96;
    if (VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v103, &v95))
    {
      goto LABEL_96;
    }

    LODWORD(v16) = v39;
    v15 = v37;
    *&v104.mSampleRate = a1;
    v104.mFormatID = v39;
    v109 = &unk_1F5982640;
    *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_2>;
    *&v92[8] = &v104;
    if (VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOStreamGroup::FilterClocklessReferenceStreamOnlyEngines>(*(a1 + 1592), *(a1 + 1600), v92, &v109))
    {
      goto LABEL_96;
    }

    v17 = v38;
    if (*(*(*(a1 + 24) + 72) + 40) == 1)
    {
      HALS_IOContextDescription::EndianSwapSharedBuffers(v89, 1, v16);
    }
  }

  v45 = mach_absolute_time();
  if (HALS_IOContext::CallClientIOProc(*(a1 + 24), *(a1 + 1344), v16, *(a1 + 1377), v102) == 1)
  {
    *(a1 + 289) = 1;
  }

  v46 = mach_absolute_time();
  v47 = __udivti3();
  if (v46 >= v45)
  {
    v48 = v47;
  }

  else
  {
    v48 = -v47;
  }

  *a6 = v48;
  if (v15)
  {
    if (a5)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (a5)
    {
      v49 = 0;
    }

    else
    {
      v49 = v17;
    }

    if (!v49)
    {
      goto LABEL_100;
    }
  }

  if ((HALB_IOThread::HasBeenStopped((a1 + 312)) | v17))
  {
    LODWORD(v104.mSampleRate) = *(a1 + 1360);
    v50 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>;
LABEL_42:
    *v92 = v50;
    *&v92[8] = &v104;
    VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), v92);
    goto LABEL_43;
  }

  if (*(*(*(a1 + 24) + 72) + 40) == 1)
  {
    LODWORD(v104.mSampleRate) = v16;
    v50 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>;
    goto LABEL_42;
  }

LABEL_43:
  v94[0] = 0;
  v94[1] = 0;
  HALS_System::GetInstance(v92, 0, v94);
  v51 = v16;
  v52 = *(*v92 + 1560);
  if (*&v92[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v92[8]);
  }

  if (v52)
  {
    v53 = *(a1 + 2064) - 1;
    v54 = *(a1 + 2068);
    LODWORD(v109) = 0;
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v96[0] = 0;
    memset(v92, 0, 40);
    OutputStackDescriptionForChannel = HALS_IOContextDescription::GetOutputStackDescriptionForChannel(v89, v53, &v109, v96);
    if (OutputStackDescriptionForChannel)
    {
      HALS_IOStackDescription::GetFormat(&v109, v92);
    }

    if (v111 == v110)
    {
      v56 = 0;
    }

    else if (-1601513229 * ((v110[1] - *v110) >> 3))
    {
      v56 = *v110;
    }

    else
    {
      v56 = 0;
    }

    LODWORD(v105) = 0;
    v107 = 0;
    v108 = 0;
    v106 = 0;
    v103[0] = 0;
    memset(&v104, 0, sizeof(v104));
    v57 = HALS_IOContextDescription::GetOutputStackDescriptionForChannel(v89, v54 - 1, &v105, v103);
    if (v57)
    {
      HALS_IOStackDescription::GetFormat(&v105, &v104);
    }

    if (v107 == v106)
    {
      v58 = 0;
    }

    else
    {
      v58 = *v106;
      if (!(-1601513229 * ((*(v106 + 1) - *v106) >> 3)))
      {
        v58 = 0;
      }
    }

    if (*&v92[8] == 1819304813)
    {
      v59 = OutputStackDescriptionForChannel;
    }

    else
    {
      v59 = 0;
    }

    if (v59 == 1)
    {
      v60 = *(v56 + 56);
      if (v60)
      {
        v61 = v104.mFormatID == 1819304813 ? v57 : 0;
        if (v61 == 1)
        {
          v62 = *(v58 + 56);
          if (v62)
          {
            if (!*(v56 + 108) || (v63 = *(v56 + 112), *(v56 + 120) == v63) || !v63)
            {
              v63 = (v56 + 456);
            }

            v64 = *v63;
            if (!*(v58 + 108) || (v65 = *(v58 + 112), *(v58 + 120) == v65) || !v65)
            {
              v65 = v58 + 456;
            }

            v66 = (v60 + *(v64 + 388));
            v67 = (v62 + *(*v65 + 388));
            if (v66 == v67 && *&v92[28] == 2)
            {
              if (v51)
              {
                v68 = v51;
                do
                {
                  v69 = (*v66 + v66[1]) * 0.5;
                  *v66 = v69;
                  v66[1] = v69;
                  v66 += 2;
                  --v68;
                }

                while (v68);
              }
            }

            else if (v51)
            {
              v70 = &v67[v103[0]];
              v71 = &v66[v96[0]];
              v72 = 4 * v104.mChannelsPerFrame;
              v73 = 4 * *&v92[28];
              v74 = v51;
              do
              {
                v75 = (*v71 + *v70) * 0.5;
                *v71 = v75;
                *v70 = v75;
                v70 = (v70 + v72);
                v71 = (v71 + v73);
                --v74;
              }

              while (v74);
            }
          }
        }
      }
    }

    *&v104.mSampleRate = &v106;
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v104);
    *v92 = &v110;
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v92);
  }

  v76 = mach_absolute_time();
  v77 = *(a1 + 1418);
  if (v77 == 1)
  {
    v78 = *(a2 + 16);
    *v92 = *a2;
    *&v92[16] = v78;
    v79 = *(a2 + 48);
    *&v92[32] = *(a2 + 32);
    v93 = v79;
    HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(a1, v51, v92, *&v92[32]);
  }

  *v96 = a1;
  LODWORD(v97) = v51;
  v109 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_3>;
  v110 = v96;
  v105 = &unk_1F5987768;
  v106 = v89;
  *v103 = &v109;
  *&v104.mSampleRate = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  *&v104.mFormatID = v103;
  *v92 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  *&v92[8] = &v104;
  if (VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a1 + 1616), *(a1 + 1624), v92, &v105) || (v80 = *(*(a1 + 24) + 16), v109 = HALS_IOPerformer::begin_writing, LODWORD(v110) = v80, v95 = &off_1F5983FA8, *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>, *&v104.mFormatID = &v109, *v103 = &off_1F5983F18, v105 = &v104, *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>, *&v92[8] = &v105, VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v103, &v95)))
  {
    v18 = 1;
LABEL_93:
    v19 = v91;
    return v18 || v19 == 0;
  }

  *&v104.mSampleRate = a1;
  v104.mFormatID = v51;
  v19 = v91;
  if (HALS_IOContextDescription::ApplyToOutput_ButSkipReferenceStreamOnlyEngines(*(a1 + 1616), *(a1 + 1624), caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_4>, &v104) || (v81 = *(*(a1 + 24) + 16), *v92 = HALS_IOPerformer::end_writing, *&v92[8] = v81, v109 = &off_1F5983FA8, HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>,FilterClocklessReferenceStreamOnlyEngines>(*(a1 + 1568), *(a1 + 1576), v92, &v109)))
  {
LABEL_96:
    v18 = 1;
    return v18 || v19 == 0;
  }

  if ((v77 & 1) == 0)
  {
    v82 = *(a2 + 16);
    *v92 = *a2;
    *&v92[16] = v82;
    v83 = *(a2 + 48);
    *&v92[32] = *(a2 + 32);
    v93 = v83;
    HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(a1, v51, v92, *&v92[32]);
  }

  *(a1 + 1496) = (mach_absolute_time() - v76) * 0.0000000416666667;
LABEL_100:
  v84 = *(*(a1 + 24) + 16);
  v109 = HALS_IOPerformer::end_io_cycle;
  LODWORD(v110) = v84;
  *v103 = &unk_1F5983F68;
  *&v104.mSampleRate = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
  *&v104.mFormatID = &v109;
  *v96 = &off_1F5983F18;
  v105 = &v104;
  *v92 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&v92[8] = &v105;
  v18 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), v92, v96, v103);
  return v18 || v19 == 0;
}

uint64_t HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(_opaque_pthread_t **this, unsigned int a2)
{
  v5 = 0;
  v4 = 0;
  result = HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(this, a2, &v5, &v4);
  if (!result)
  {
    HALB_IOThread::ConfigureThreadForRealtimePriority(this + 39, v5, v4);
    return 0;
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleBufferSizeChanged(CAAudioTimeStamp &,unsigned int,unsigned int,long long &)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
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

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleBufferSizeChanged(CAAudioTimeStamp &,unsigned int,unsigned int,long long &)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOStreamGroup::FilterClocklessReferenceStreamOnlyEngines>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 472;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::ProcessOutputForTaps(uint64_t a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  v193 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2088);
  if (v4)
  {
    v5 = a2;
    v6 = a1;
    v137 = a2;
    while (1)
    {
      if (v4[40] == 1)
      {
        v7 = atomic_load(v4 + 41);
        if ((v7 & 1) == 0 && v4[40] == 1)
        {
          v8 = *(v4 + 3);
          if (v8)
          {
            v9 = *a3;
            v10 = *(a3 + 8);
            v11 = *(a3 + 32);
            v173 = *(a3 + 16);
            v174 = v11;
            v175 = *(a3 + 48);
            v12 = *(v6 + 1352);
            v13 = *(v8 + 72);
            if ((v13 & 0x100000000) != 0)
            {
              v14 = HALS_ObjectMap::CopyObjectByObjectID(v13);
              v16 = v14;
              if (v14)
              {
                v17 = (*(*v14 + 208))(v14);
                EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID((v6 + 1536), v17);
                if (EngineInfoForDeviceUID)
                {
                  v9 = *(EngineInfoForDeviceUID + 440);
                  v10 = *(EngineInfoForDeviceUID + 448);
                  v19 = *(EngineInfoForDeviceUID + 472);
                  v173 = *(EngineInfoForDeviceUID + 456);
                  v174 = v19;
                  v175 = *(EngineInfoForDeviceUID + 488);
                  v12 = (*(*EngineInfoForDeviceUID + 192))(EngineInfoForDeviceUID, 0);
                }
              }

              HALS_ObjectMap::ReleaseObject(v16, v15);
              v8 = *(v4 + 3);
            }

            v20 = *(*(v6 + 24) + 16);
            v21 = *(v6 + 1360);
            v22 = *(v6 + 1368);
            if (std::__shared_mutex_base::try_lock_shared((v8 + 176)))
            {
              HALS_MultiTap::fetch_writer_state(&v158, v8, v20);
              v23 = v158;
              if (v158)
              {
                if (*(v8 + 76) == 1)
                {
                  *(v158 + 27) = v9;
                  *(v23 + 28) = v10;
                  v24 = v174;
                  *(v23 + 232) = v173;
                  *(v23 + 248) = v24;
                  *(v23 + 264) = v175;
                }

                else
                {
                  buf.mSampleTime = 0.0;
                  buf.mHostTime = v10;
                  memset(&buf.mRateScalar, 0, 40);
                  *&buf.mFlags = 2;
                  *(v158 + 68) = 3;
                  HALS_MultiTap::translate_time(v8, &buf, (v23 + 216));
                  v12 = 0;
                  v9 = floor(*(v23 + 27) * (**(v23 + 1) / *(v8 + 24)));
                }

                *(v23 + 35) = v12;
                *(v23 + 27) = v9 + (v22 * v21);
              }

              if (v159)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v159);
              }

              std::__shared_mutex_base::unlock_shared((v8 + 176));
            }

            atomic_store(1u, v4 + 41);
          }
        }

        v25 = *(v4 + 6);
        v26 = *v25;
        if (v26 != (*(v4 + 7) - v25 - 8) >> 4)
        {
          goto LABEL_199;
        }

        if (v26)
        {
          v27 = 0;
          v28 = 0;
          while (1)
          {
            HALS_IOContextDescription::GetStreamInfoAtIndex((v6 + 1536), 0, v28, &buf);
            v25 = *(v4 + 6);
            v29 = &v25[v27];
            v25[v27 + 2] = buf.mSMPTETime.mFlags;
            v30 = buf.mSMPTETime.mType * v5;
            if (LODWORD(buf.mWordClockTime) != 1819304813)
            {
              v30 = *&buf.mSMPTETime.mSubframes;
            }

            v29[3] = v30;
            *(v29 + 2) = HALS_IOContextDescription::GetIOBufferForStreamAtIndex((v6 + 1536), 0, v28);
            v31 = *v25;
            if (v31 != (*(v4 + 7) - v25 - 8) >> 4)
            {
              break;
            }

            ++v28;
            v27 += 4;
            if (v28 >= v31)
            {
              goto LABEL_29;
            }
          }

LABEL_199:
          CAAssertRtn();
LABEL_200:
          CAAssertRtn();
LABEL_201:
          __assert_rtn("GetNumberBuffers", "HALS_MultiChannelMixer.cpp", 41, "GetAudioBufferList().mNumberBuffers == (mStorage.size() - kHeaderSize) / sizeof(AudioBuffer)");
        }

LABEL_29:
        v32 = *(v4 + 3);
        v33 = *(*(v6 + 24) + 16);
        if (std::__shared_mutex_base::try_lock_shared((v32 + 176)))
        {
          break;
        }
      }

LABEL_194:
      v4 = *v4;
      if (!v4)
      {
        return;
      }
    }

    HALS_MultiTap::fetch_writer_state(&v153, v32, v33);
    if (!v153 || (__C = *(v153 + 18)) == 0 || !*(v153 + 19))
    {
LABEL_191:
      if (v154)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v154);
      }

      std::__shared_mutex_base::unlock_shared((v32 + 176));
      goto LABEL_194;
    }

    if (v137 >= *(v153 + 17))
    {
      v34 = *(v153 + 17);
    }

    else
    {
      v34 = v137;
    }

    v35 = v153;
    bzero(__C, v34 * *(v32 + 48));
    v138 = v4;
    v150 = v35;
    if (*(v35 + 10) == 2 && *(v35 + 15) == 1)
    {
      memcpy(__C, *&v25[4 * *(v35 + 14) + 4], v25[4 * *(v35 + 14) + 3]);
    }

    else
    {
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_223;
      }

      v134 = v32;
      v38 = v32 + 48;
      v36 = *(v32 + 48);
      v37 = *(v38 + 4);
      v39 = *v25;
      v40 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      v173.__vftable = v40;
      *&v174 = v40 + ((16 * v39) | 8);
      bzero(v40, (16 * v39) | 8);
      v173.__imp_.__imp_ = v40 + ((16 * v39) | 8);
      v147 = v40;
      LODWORD(v40->~logic_error) = v39;
      v158 = 0;
      v159 = 0uLL;
      v41 = *v25;
      if (v41)
      {
        *&buf.mSMPTETime.mSubframes = &v158;
        v42 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v41);
        *&buf.mSampleTime = v42;
        buf.mHostTime = v42;
        v44 = v42 + 24 * v43;
        *&buf.mRateScalar = v42;
        buf.mWordClockTime = v44;
        v45 = (v158 + v42 - v159);
        std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(&v158, v158, v159, v45);
        v46 = v158;
        v47 = *(&v159 + 1);
        v158 = v45;
        *&v159 = v42;
        *(&v159 + 1) = v44;
        *&buf.mRateScalar = v46;
        buf.mWordClockTime = v47;
        *&buf.mSampleTime = v46;
        buf.mHostTime = v46;
        std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(&buf);
        v48 = v34 * v37;
        if (*v25)
        {
          v49 = 0;
          v146 = v36 * v34;
          do
          {
            memset(&__A, 0, sizeof(__A));
            if (v48)
            {
              if (v48 >> 62)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              if (!*MEMORY[0x1E69E3C08])
              {
                goto LABEL_223;
              }

              v50 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
              v51 = v50 + 4 * v48;
              __A.__r_.__value_.__r.__words[0] = v50;
              __A.__r_.__value_.__r.__words[2] = v51;
              bzero(v50, 4 * v48);
              __A.__r_.__value_.__l.__size_ = v51;
            }

            else
            {
              v51 = 0;
            }

            v52 = v159;
            if (v159 >= *(&v159 + 1))
            {
              v54 = 0xAAAAAAAAAAAAAAABLL * ((v159 - v158) >> 3);
              v55 = v54 + 1;
              if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*(&v159 + 1) - v158) >> 3) > v55)
              {
                v55 = 0x5555555555555556 * ((*(&v159 + 1) - v158) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v159 + 1) - v158) >> 3) >= 0x555555555555555)
              {
                v56 = 2.77499655e-257;
              }

              else
              {
                v56 = *&v55;
              }

              *&buf.mSMPTETime.mSubframes = &v158;
              if (v56 == 0.0)
              {
                v57 = 0;
              }

              else
              {
                v56 = COERCE_DOUBLE(std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(*&v56));
              }

              v58 = *&v56 + 24 * v54;
              buf.mSampleTime = v56;
              buf.mHostTime = v58;
              buf.mWordClockTime = *&v56 + 24 * v57;
              *v58 = *&__A.__r_.__value_.__l.__data_;
              *(v58 + 16) = v51;
              memset(&__A, 0, sizeof(__A));
              *&buf.mRateScalar = v58 + 24;
              v59 = (v158 + v58 - v159);
              std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(&v158, v158, v159, v59);
              v60 = v158;
              v61 = *(&v159 + 1);
              v158 = v59;
              mRateScalar = buf.mRateScalar;
              v159 = *&buf.mRateScalar;
              *&buf.mRateScalar = v60;
              buf.mWordClockTime = v61;
              *&buf.mSampleTime = v60;
              buf.mHostTime = v60;
              std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(&buf);
              v53 = mRateScalar;
            }

            else
            {
              *v159 = *&__A.__r_.__value_.__l.__data_;
              *(v52 + 16) = v51;
              memset(&__A, 0, sizeof(__A));
              *&v53 = v52 + 24;
            }

            *&v159 = v53;
            std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](&__A);
            ++v49;
            v62 = *v25;
          }

          while (v49 < v62);
          v147 = v173.__vftable;
          if (v62)
          {
            v63 = 0;
            v140 = v25 + 2;
            v142 = &v173.~logic_error_0;
            v143 = v34 * v37;
            v144 = v25;
            v145 = (v173.__imp_.__imp_ - v173.__vftable - 8) >> 4;
            while (0xAAAAAAAAAAAAAAABLL * ((v159 - v158) >> 3) > v63)
            {
              v149 = *(v158 + 3 * v63);
              if (v37)
              {
                v64 = 0;
                v65 = &v140[4 * v63];
                do
                {
                  v66 = *v65;
                  if (!v66)
                  {
                    goto LABEL_79;
                  }

                  v67 = v34;
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  do
                  {
                    v72 = *(v150 + 6);
                    if (0xCCCCCCCCCCCCCCCDLL * ((*(v150 + 7) - v72) >> 4) <= v63)
                    {
                      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
                    }

                    v74 = (v72 + 80 * v63 + 56);
                    v73 = *v74;
                    if (0xAAAAAAAAAAAAAAABLL * ((v74[1] - *v74) >> 3) > v70)
                    {
                      v75 = (v73 + v69);
                      v76 = *v75;
                      if (v64 < (v75[1] - *v75) >> 2)
                      {
                        v77 = *(v65 + 1);
                        LODWORD(__A.__r_.__value_.__l.__data_) = *(v76 + 4 * v64);
                        if (*&__A.__r_.__value_.__l.__data_ != 0.0)
                        {
                          if (v71)
                          {
                            MEMORY[0x1E12C2960](v77 + v68);
                          }

                          else
                          {
                            MEMORY[0x1E12C2970](v77 + v68);
                          }

                          v71 = 1;
                        }

                        v66 = *v65;
                      }
                    }

                    ++v70;
                    v69 += 24;
                    v68 += 4;
                  }

                  while (v70 < v66);
                  v34 = v67;
                  if ((v71 & 1) == 0)
                  {
LABEL_79:
                    LODWORD(__A.__r_.__value_.__l.__data_) = 0;
                    vDSP_vfill(&__A, v149 + v64, v37, v34);
                  }

                  ++v64;
                }

                while (v64 != v37);
              }

              if (v145 != LODWORD(v147->~logic_error))
              {
                goto LABEL_201;
              }

              if (v63 == v145)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "accessing a RealTimeSafeBufferList with an out-of-range index");
                exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
                __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
              }

              v48 = v143;
              v78 = &v142[2 * v63];
              *v78 = v37;
              *(v78 + 1) = v146;
              v78[1] = v149;
              if (++v63 >= *v144)
              {
                goto LABEL_86;
              }
            }

            goto LABEL_200;
          }
        }
      }

      else
      {
        v48 = v34 * v37;
      }

LABEL_86:
      if (LODWORD(v147->~logic_error))
      {
        v79 = 0;
        v80 = 0;
        v81 = 16;
        do
        {
          v82 = *(&v147->~logic_error + v81);
          LODWORD(__A.__r_.__value_.__l.__data_) = 1065353216;
          if (v80)
          {
            MEMORY[0x1E12C2960](v82, 1, &__A, __C, 1, __C, 1, v48);
          }

          else
          {
            MEMORY[0x1E12C2970](v82, 1, &__A, __C, 1, v48);
          }

          ++v79;
          v81 += 16;
          v80 = 1;
        }

        while (v79 < LODWORD(v147->~logic_error));
      }

      else
      {
        LODWORD(__A.__r_.__value_.__l.__data_) = 0;
        vDSP_vfill(&__A, __C, 1, v34);
      }

      *&buf.mSampleTime = &v158;
      std::vector<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
      std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](&v173);
      v32 = v134;
    }

    v83 = (v150[27] + *(v150 + 35));
    if ((*(v32 + 76) & 1) == 0)
    {
      v83 += *(v32 + 68);
    }

    if (*(v150 + 20) != v83)
    {
      v84 = *(v150 + 16);
      v85 = v84[25];
      if (v85)
      {
        HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Reset(void)::$_0 &>(v85);
      }

      else
      {
        v86 = v84[14];
        if (v86)
        {
          (*(*v86 + 32))(v86);
        }

        v87 = v84[16];
        if (v87)
        {
          (*(*v87 + 16))(v87);
        }

        v88 = v84[18];
        if (v88)
        {
          (*(*v88 + 72))(v88);
        }
      }

      v150[21] = 0.0;
    }

    *(v150 + 20) = v83 + v34;
    v152 = v34;
    v89 = (*(**(v150 + 16) + 16))(*(v150 + 16), 0, v34);
    if (!(*(**(v150 + 16) + 16))(*(v150 + 16), 1, v89))
    {
      v152 = 0;
      v91 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
LABEL_223:
        __break(1u);
      }

      v93 = *(v91 + 8);
      v94 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v94 + 16) = 0;
      *(v94 + 20) = 16;
      *(v94 + 24) = "HALS_MultiTap.cpp";
      *(v94 + 32) = 804;
      *v94 = &unk_1F598BF18;
      *(v94 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v93, v94);
      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }
    }

    v95 = v32;
    if (v89 >= 0x2000)
    {
      v96 = 0x2000;
    }

    else
    {
      v96 = v89;
    }

    v151 = v96;
    if (v89 > 0x2000)
    {
      v97 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v98 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_223;
      }

      v99 = *(v97 + 8);
      v100 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v100 + 16) = 0;
      *(v100 + 20) = 16;
      *(v100 + 24) = "HALS_MultiTap.cpp";
      *(v100 + 32) = 810;
      *(v100 + 36) = v89;
      *(v100 + 40) = v96;
      *v100 = &unk_1F598BF70;
      *(v100 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v99, v100);
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }
    }

    v101 = v150;
    v90.n128_f64[0] = v83;
    HALS_IOProcessor::Process(*(v150 + 16), v90, *(v150 + 18), &v152, *(v150 + 19), &v151, 0, 0);
    v32 = v95;
    v102 = *(v150 + 21);
    v103 = *(v150 + 16);
    if (!v102)
    {
      v104 = v103[8];
      if (v104 == 0.0)
      {
        v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v123 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v103);
        }

        v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          v126 = *v125;
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        else
        {
          v126 = *v125;
        }

        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleTime) = 136315650;
          *(&buf.mSampleTime + 4) = "HALS_MultiTap.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 819;
          WORD1(buf.mRateScalar) = 2080;
          *(&buf.mRateScalar + 4) = "not (writer_state_ptr->m_processor_ptr->GetLocalFormat().mSampleRate != 0)";
          _os_log_error_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid sample rate", &buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v164);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__A, "Invalid sample rate", v131);
        std::logic_error::logic_error(v155, &__A);
        *v155 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v173, v155);
        *(&v174 + 1) = 0;
        v175 = 0uLL;
        v176 = -1;
        v173.__vftable = &unk_1F5991430;
        *&v174 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v173);
        *&buf.mSMPTETime.mSubframes = "void HALS_MultiTap::write(AudioObjectID, int64_t, const AudioBufferList *, const AudioTimeStamp *)";
        *&buf.mSMPTETime.mType = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
        *&buf.mSMPTETime.mHours = 819;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v166);
      }

      v105 = v103[3];
      if (v105 == 0.0)
      {
        v127 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v127 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v103);
        }

        v129 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v128 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v128)
        {
          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          v130 = *v129;
          std::__shared_weak_count::__release_shared[abi:ne200100](v128);
        }

        else
        {
          v130 = *v129;
        }

        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleTime) = 136315650;
          *(&buf.mSampleTime + 4) = "HALS_MultiTap.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 820;
          WORD1(buf.mRateScalar) = 2080;
          *(&buf.mRateScalar + 4) = "not (writer_state_ptr->m_processor_ptr->GetSharedFormat().mSampleRate != 0)";
          _os_log_error_impl(&dword_1DE1F9000, v130, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid sample rate", &buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v164);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__A, "Invalid sample rate", v132);
        std::logic_error::logic_error(v155, &__A);
        *v155 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v173, v155);
        *(&v174 + 1) = 0;
        v175 = 0uLL;
        v176 = -1;
        v173.__vftable = &unk_1F5991430;
        *&v174 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v173);
        *&buf.mSMPTETime.mSubframes = "void HALS_MultiTap::write(AudioObjectID, int64_t, const AudioBufferList *, const AudioTimeStamp *)";
        *&buf.mSMPTETime.mType = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
        *&buf.mSMPTETime.mHours = 820;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v166);
      }

      v102 = vcvtmd_s64_f64(v104 / v105 * v83);
      v101 = v150;
      *(v150 + 21) = v102;
    }

    v106 = v152;
    v107 = *(v101 + 18);
    if (HALS_IOProcessor::NeedsLocalBuffer(v103))
    {
      v106 = v151;
      v107 = *(v101 + 19);
    }

    os_unfair_lock_lock((v32 + 432));
    v108 = *(v32 + 544);
    *v155 = 0;
    *&v155[8] = 0u;
    v156 = 0u;
    v157 = 0;
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&buf, v108);
    if ((LOBYTE(buf.mSampleTime) & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&buf);
    }

    v109 = *&buf.mHostTime;
    if (*&buf.mSMPTETime.mSubframes)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
    }

    if (vcvtmd_s64_f64(v109) >= v106)
    {
      v112 = v106;
    }

    else
    {
      AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&buf, v108);
      if ((LOBYTE(buf.mSampleTime) & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&buf);
      }

      v110 = *&buf.mHostTime;
      if (*&buf.mSMPTETime.mSubframes)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
      }

      v111 = vcvtmd_s64_f64(v110);
      v102 += v106 - v111;
      v112 = v111 - (v106 - v111);
      v107 += 4 * (v106 - v111) * *(v32 + 48);
    }

    if (v112 < 1)
    {
LABEL_183:
      if (SBYTE7(v156) < 0)
      {
        operator delete(*&v155[8]);
      }

      os_unfair_lock_unlock((v32 + 432));
      kdebug_trace();
      v5 = a2;
      v6 = a1;
      v4 = v138;
      *(v150 + 21) += v106;
      (*(**(v32 + 544) + 72))(&buf);
      v122 = vcvtmd_s64_f64(AMCP::DAL::DAL_Time::get_sample_time(&buf.mSMPTETime.mType));
      if (*(v32 + 448) < v122)
      {
        *(v32 + 448) = v122;
      }

      if (v189)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v189);
      }

      if (*&buf.mSMPTETime.mSubframes)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mSubframes);
      }

      goto LABEL_191;
    }

    v113 = *(v32 + 568);
    v178 = *(v32 + 560);
    v179 = v113;
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&__A, &v178, v102, (v102 + v112));
    if (v179)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v179);
    }

    v166 = __A;
    v167 = v181;
    v168 = v182;
    if (v182)
    {
      atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v169 = v183;
    v170 = v184;
    v171 = v185;
    v172 = v186;
    if (v186)
    {
      atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(v108, &v166, &v173);
    if (v172)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v172);
    }

    if (v168)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v168);
    }

    v114 = *(v32 + 48);
    v165[0] = v112 * v114;
    v165[1] = v107;
    if (!v107 && v114)
    {
      std::terminate();
    }

    (*(***(v32 + 552) + 24))(**(v32 + 552), v165);
    v115 = *(v32 + 552);
    v117 = *v115;
    v116 = v115[1];
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v164 = __A;
    v118 = v181;
    v119 = v182;
    if (v182)
    {
      atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v162 = v183;
    v163 = v184;
    v120 = v185;
    v121 = v186;
    if (v186)
    {
      atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf.mHostTime = v164;
    *&buf.mSampleTime = &unk_1F598F618;
    *&buf.mSMPTETime.mSubframes = v118;
    *&buf.mSMPTETime.mType = v119;
    if (v119)
    {
      atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf.mSMPTETime.mHours = v162;
    v188 = v163;
    v189 = v120;
    v190 = v121;
    if (v121)
    {
      atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
      v191 = v117;
      v192 = v116;
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      if (!v119)
      {
LABEL_165:
        AMCP::DAL::Fixed_Buffer::create_readable_range(&v158, &buf);
        AMCP::DAL::Writable_Range::receive_data(&v173, v155, &v158);
        if (v161)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        if (v160)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        *&buf.mSampleTime = &unk_1F598F618;
        if (v192)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v192);
        }

        if (v190)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v190);
        }

        if (*&buf.mSMPTETime.mType)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf.mSMPTETime.mType);
        }

        if (v177)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v177);
        }

        if (v175)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v175);
        }

        if (v186)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v186);
        }

        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v182);
        }

        goto LABEL_183;
      }
    }

    else
    {
      v191 = v117;
      v192 = v116;
      if (!v119)
      {
        goto LABEL_165;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    goto LABEL_165;
  }
}

void sub_1DE605D34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = *(v2 - 208);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 32;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t HALS_IOContextDescription::ApplyToOutput_ButSkipReferenceStreamOnlyEngines(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5 = v6;
  v8[0] = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
  v8[1] = &v5;
  *&v7 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v7 + 1) = v8;
  return VisitableVector<HALS_IOStackDescription>::apply<>(a1, a2, &v7);
}

uint64_t HALS_IOContext_Legacy_Impl::engine_apply<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>,FilterClocklessReferenceStreamOnlyEngines>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
  v6[1] = a3;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(a1, a2, v8, &v5, a4);
}

uint64_t _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_(uint64_t (****a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v11 = *(a6 + 112), *(a6 + 120) != v11) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v11 = (a6 + 456);
  }

  v13 = *v11;
  if (!v13)
  {
    return 0;
  }

  v14 = *a1;
  if ((*(*v13 + 136))(v13))
  {
    return 0;
  }

  v16 = (*v14 + 1);
  v17 = **v14;

  return v17(v16, a2, a3, a4, a5, a6);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_4>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *a1;
  v8 = **a1;
  v11[0] = &unk_1F5982158;
  v11[1] = v8;
  if (a6[464] == 1)
  {
    return (*(*a6 + 16))(a6, v11, *(v7 + 2), a4, a5);
  }

  v10 = IOContextViewForIOPerformer::owner_object_id(v11);
  return (*(*a6 + 24))(a6, v10);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>(uint64_t *a1, uint64_t a2)
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
  *&v14 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)#1}>;
  *(&v14 + 1) = &v15;
  return VisitableVector<HALS_IOStreamGroup>::apply<>(v6, v7, &v14);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)#1}>(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a1;
  *&v5 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo&)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}::operator() const({lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1})::{lambda(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)#1}>;
  *(&v5 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v5);
}

uint64_t _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription62ApplyToActiveOutput_ButSkipClocklessReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_(uint64_t (****a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (!*(a6 + 108))
  {
    if (!*(a6 + 456))
    {
      return 0;
    }

LABEL_17:
    v14 = (a6 + 456);
    goto LABEL_18;
  }

  v12 = *(a6 + 112);
  if (*(a6 + 120) == v12 || v12 == 0)
  {
    if (!*(a6 + 456))
    {
      return 0;
    }
  }

  else if (!*v12)
  {
    return 0;
  }

  v14 = *(a6 + 112);
  if (*(a6 + 120) == v14 || v14 == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!(*(**v14 + 328))(*v14))
  {
    return 0;
  }

  v16 = (*v11 + 1);
  v17 = **v11;

  return v17(v16, a2, a3, a4, a5, a6);
}

caulk::rt_safe_memory_resource *caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_3>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = **a1;
  v9 = &unk_1F5982158;
  v36[0] = &unk_1F5982158;
  v36[1] = v8;
  v10 = *(v7 + 2);
  if (*(a6 + 464) == 1)
  {
    HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(&v37, 1869968496, v36, a6, v10);
    return HostedDSP_StreamProcessor::PerformIO_ProcessStream(&v37, v11);
  }

  v13 = a4;
  v14 = *(a6 + 108);
  if (!v14 || ((v15 = *(a6 + 112), *(a6 + 120) != v15) ? (v16 = v15 == 0) : (v16 = 1), v16))
  {
    v15 = (a6 + 456);
  }

  v17 = *v15;
  if (!*(*v15 + 88))
  {
    return 0;
  }

  v18 = *(v17 + 388);
  v19 = *(v17 + 4 * *(a6 + 8) + 752);
  v41 = v19;
  if (*(a6 + 96))
  {
    v40 = v10;
    v20 = *(a6 + 32);
    v21 = *(a6 + 40);
    if (v20)
    {
      v22 = (v20 + v18);
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = (v21 + v18);
    }

    else
    {
      v23 = 0;
    }

    v24 = 24;
    if (v22 | v23)
    {
      v24 = 48;
    }

    v25 = *(a6 + v24);
    if (v14)
    {
      ClientFormat = HALS_IODSPInfo::GetClientFormat(&v37, (a6 + 112));
    }

    else
    {
      ClientFormat = *(a6 + 416);
      v27 = *(a6 + 432);
      v37 = ClientFormat;
      v38 = v27;
      v39 = *(a6 + 448);
    }

    if (v19 * DWORD2(v38) > v25)
    {
      if (*(a6 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v37, (a6 + 112));
      }

      else
      {
        v28 = *(a6 + 432);
        v37 = *(a6 + 416);
        v38 = v28;
        v39 = *(a6 + 448);
      }

      v29 = v25 / DWORD2(v38);
      v41 = v29;
      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = v22;
      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return result;
      }

      v32 = *(v30 + 8);
      v33 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v33 + 16) = 0;
      *(v33 + 20) = 16;
      *(v33 + 24) = "HALS_IOPerformer.cpp";
      *(v33 + 32) = 335;
      *(v33 + 36) = v19;
      *(v33 + 40) = v29;
      *v33 = &unk_1F5971CE0;
      *(v33 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v32, v33);
      v22 = v35;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    ClientFormat.n128_u64[0] = *(v17 + 656);
    HALS_IOProcessor::Process(*(a6 + 96), ClientFormat, (*(a6 + 56) + v13), &v40, (*(a6 + 16) + v18), &v41, v22, v23);
    v9 = v36[0];
  }

  if ((*(v9 + 19))(v36, 0, a3, a4, a5))
  {
    if (*(a6 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v37, (a6 + 112));
    }

    else
    {
      v34 = *(a6 + 432);
      v37 = *(a6 + 416);
      v38 = v34;
      v39 = *(a6 + 448);
    }

    bzero((*(a6 + 16) + v18), v41 * DWORD2(v38));
  }

  return (*(*v17 + 112))(v17, v36, *(a6 + 12), *(a6 + 56) + v18, v10);
}

caulk::rt_safe_memory_resource *caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_2>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  v19[0] = &unk_1F5982158;
  v19[1] = v3;
  v4 = *a2;
  v5 = *(v2 + 2);
  if (*(*a2 + 464) == 1)
  {
    HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(v21, 1768845428, v19, v4, v5);
    return HostedDSP_StreamProcessor::PerformIO_ProcessStream(v21, v6);
  }

  else
  {
    if (!*(v4 + 108) || ((v8 = *(v4 + 112), *(v4 + 120) != v8) ? (v9 = v8 == 0) : (v9 = 1), v9))
    {
      v8 = (v4 + 456);
    }

    v10 = *v8;
    if ((*(**v8 + 16))(*v8))
    {
      v11 = *(v10 + 388);
      v21[0] = *(v10 + 4 * *(v4 + 8) + 752);
      v7 = (*(*v10 + 104))(v10, v19, *(v4 + 12), *(v4 + 56) + v11);
      v13 = *(v4 + 96);
      if (v13)
      {
        v20 = v5;
        v14 = *(v4 + 32);
        v15 = *(v4 + 40);
        if (v14)
        {
          v16 = (v14 + v11);
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = (v15 + v11);
        }

        else
        {
          v17 = 0;
        }

        v12.n128_u64[0] = *(v10 + 592);
        HALS_IOProcessor::Process(v13, v12, (*(v4 + 56) + v11), &v20, (*(v4 + 16) + v11), v21, v16, v17);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_1>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  v28[0] = &unk_1F5982158;
  v28[1] = v3;
  v4 = *(v2 + 2);
  v5 = *a2;
  if (*(*a2 + 464) != 1)
  {
    if (*(v5 + 380) == 1 && HALS_IOPerformer::can_read_from_stream(v28, *a2))
    {
      if ((*(v5 + 380) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (!*(v5 + 108) || ((v18 = *(v5 + 112), *(v5 + 120) != v18) ? (v19 = v18 == 0) : (v19 = 1), v19))
      {
        v18 = (v5 + 456);
      }

      return (*(**v18 + 120))(*v18, *(v5 + 12), v4, *(v5 + 376));
    }

    else
    {
      if (!HALS_IOPerformer::can_read_from_stream(v28, v5))
      {
        return 0;
      }

      if (!*(v5 + 108) || ((v21 = *(v5 + 112), *(v5 + 120) != v21) ? (v22 = v21 == 0) : (v22 = 1), v22))
      {
        v21 = v5 + 456;
      }

      v23 = *v21;
      v24 = *(v5 + 24);
      v25 = *(*v21 + 756);
      v29 = *(v5 + 16);
      LODWORD(v30) = 0;
      HIDWORD(v30) = v24;
      LODWORD(v31) = v25;
      v26 = (*(v28[0] + 80))(v28);
      return (*(*v23 + 80))(v23, v26, *(v5 + 12), v25, &v29);
    }
  }

  HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(&v29, 1768845428, v28, v5, v4);
  if (v29 != 1768845428)
  {
    return 0;
  }

  v6 = *(v31 + 112);
  v7 = *(v31 + 120);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(*v6 + 88);
    if (v9)
    {
      if ((*(*v9 + 336))(v9))
      {
        v10 = *v6;
        if (*(*(*v6 + 368) + 96))
        {
          v11 = v6[25];
          if (*(v10 + 505) == 1 && v11 <= 3)
          {
            v13 = v6[6];
            v14 = *(v10 + 756);
            v32 = *(v6 + 2);
            v33 = 0;
            v34 = v13;
            v35 = v14;
            if (v11 - 1 > 1 || ((*(**(v10 + 88) + 696))(*(v10 + 88)) & 1) != 0)
            {
              if (*(v6 + 124) == 1)
              {
                v15 = (*(**(*v6 + 88) + 776))(*(*v6 + 88), v6[24], v35, *v6, v6[30]);
              }

              else
              {
                v16 = *(*v6 + 88);
                v17 = (*(*v30 + 80))(v30);
                v15 = (*(*v16 + 768))(v16, v17, v6[24], v35, *v6, &v32);
              }

              v8 = v15;
            }

            else if (v32 && v34 > v33)
            {
              bzero((v32 + v33), v34 - v33);
            }
          }
        }
      }
    }

    v6 += 32;
  }

  while (v6 != v7);
  return v8;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
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

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::PerformIO(AudioTimeStamp const&,unsigned int,int,unsigned int,IORunningState,long long &,BOOL)::$_0>(uint64_t **a1, unsigned int *a2)
{
  v3 = *a1;
  v4 = **a1;
  v16[0] = &unk_1F5982158;
  v16[1] = v4;
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = *(v3 + 16);
  if (!(*(*a2 + 16))(a2))
  {
    return 0;
  }

  HALS_IOPerformer::update_io_parameters(v16, a2, v5, v6, v7);
  v8 = (v7 & 1) != 0 || (*(*a2 + 192))(a2, 0) == 0;
  v10 = (*(v16[0] + 48))(v16);
  v11 = (*(v16[0] + 16))(v16);
  v12 = (*(v16[0] + 40))(v16).n128_f32[0];
  (*(*a2 + 128))(a2, v10, v11, v12);
  v13 = (*(v16[0] + 80))(v16);
  v9 = (*(*a2 + 32))(a2, v13);
  if (v8)
  {
    v14 = (*(v16[0] + 80))(v16);
    (*(*a2 + 312))(a2, v14, v5);
  }

  return v9;
}

uint64_t caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(AudioTimeStamp &)::$_0>(void **a1, uint64_t a2)
{
  v3 = **a1;
  v4 = v3[1];
  *&v12.mSampleTime = *v3;
  *&v12.mRateScalar = v4;
  v5 = v3[3];
  *&v12.mSMPTETime.mSubframes = v3[2];
  *&v12.mSMPTETime.mHours = v5;
  v6 = *(a2 + 368);
  if (*(v6 + 96))
  {
    v7 = v12.mHostTime == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a2 + 904) = 0u;
    *(a2 + 920) = 0u;
    *(a2 + 872) = 0u;
    *(a2 + 888) = 0u;
  }

  else
  {
    v12.mFlags = 2;
    v11.mFlags = 1;
    HALS_IOClock::TranslateTime(v6, &v12, &v11);
    v12.mSampleTime = v11.mSampleTime;
    v12.mFlags = 2;
    v11.mFlags = 2;
    HALS_IOClock::TranslateTime(*(a2 + 368), &v12, &v11);
    v8 = *&v11.mRateScalar;
    *(a2 + 872) = *&v11.mSampleTime;
    *(a2 + 888) = v8;
    v9 = *&v11.mSMPTETime.mHours;
    *(a2 + 904) = *&v11.mSMPTETime.mSubframes;
    *(a2 + 920) = v9;
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTime(uint64_t result, unsigned int a2, AudioTimeStamp *a3)
{
  memset(&v4.mHostTime, 0, 48);
  *&v4.mFlags = 1;
  v3 = *(result + 1560);
  if (v3)
  {
    v4.mSampleTime = *(v3 + 440) + *(result + 1352) + a2 + -1.0;
    if (*(v3 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v3 + 368), &v4, a3);
    }
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::IOWorkLoop_HandleOverload(uint64_t a1, AudioTimeStamp *a2, double *a3, uint64_t a4, unsigned int a5, int a6, double a7)
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = (a1 + 312);
  v11 = HALS_IOThread::ClearAllSyscallMasks((a1 + 312));
  if (v11)
  {
    v12 = v11;
    v13 = a5;
    v14 = v10;
    v15 = a2;
    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v16 + 8);
    v19 = __error();
    v20 = strerror(*v19);
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_42;
    }

    v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v21 + 16) = 0;
    *(v21 + 20) = 16;
    *(v21 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v21 + 32) = 1580;
    *(v21 + 36) = v12;
    *(v21 + 40) = v20;
    *v21 = &unk_1F59829C0;
    *(v21 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v18, v21);
    a2 = v15;
    v10 = v14;
    a5 = v13;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  v22 = *(a1 + 1508);
  *(a1 + 1508) = 0;
  if ((v22 & 1) == 0)
  {
    kdebug_trace();
    kdebug_trace();
  }

  if (*(a1 + 1509) != 1 || std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1640), 0, *(a1 + 1648)))
  {
    goto LABEL_17;
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  v54 = MEMORY[0x1E69E9820];
  v55 = 0x40000000;
  v56 = ___ZNK26HALS_IOContext_Legacy_Impl28CanHandleOverloadWithCatchupER16CAAudioTimeStamp_block_invoke;
  v57 = &unk_1E8677EE8;
  v59 = a1;
  v60 = a2;
  v58 = &v61;
  v23 = (*(**(a1 + 24) + 64))(*(a1 + 24));
  HALB_CommandGate::ExecuteCommand(v23, &v54);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v62 + 24);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4253;
    *&buf[18] = 1024;
    v69 = v24;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Can handle overload: %d", buf, 0x18u);
  }

  v25 = *(v62 + 24);
  _Block_object_dispose(&v61, 8);
  if (v25 == 1)
  {
    *(a1 + 1424) = 3;
    v26 = *(a1 + 1456);
    if (v26)
    {
      std::function<void ()(IORunningState)>::operator()(v26, 3);
    }

    kdebug_trace();
    v27 = 0;
  }

  else
  {
LABEL_17:
    if ((v22 & 1) == 0)
    {
      v54 = v10;
      LODWORD(v55) = HALB_Mutex::Unlock((a1 + 328));
      HALS_IOContext::SignalOverloadToClient(*(a1 + 24));
      HALB_IOThread::Unlocker::~Unlocker(&v54);
    }

    *(a1 + 1352) = 0;
    v28 = *(*(a1 + 24) + 16);
    *buf = HALS_IOContext_Legacy_Impl::ResetTimeForOverload_Helper;
    *&buf[8] = v28;
    v65 = &off_1F5983FA8;
    v61 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
    v62 = buf;
    v66 = &off_1F5983F18;
    v67 = &v61;
    v54 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v55 = &v67;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), &v54, &v66, &v65);
    HALS_IOContext_Legacy_Impl::UpdateTime(a1);
    HALS_IOContext_Legacy_Impl::AnchorTime(a1);
    *buf = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_ResetEngineInfo;
    *&buf[8] = a1;
    *&buf[16] = a5;
    v65 = &off_1F5983FA8;
    v61 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,unsigned int),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,unsigned int &>>;
    v62 = buf;
    v66 = &off_1F5983F18;
    v67 = &v61;
    v54 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v55 = &v67;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), &v54, &v66, &v65);
    v29 = *(*(*(a1 + 24) + 72) + 40);
    v30 = *(*(a1 + 1560) + 368);
    v31 = v30 + 200;
    v32 = *(v30 + 200 + 40 * *(v30 + 192)) * 24000000.0 / 24000000.0;
    v33 = COERCE_DOUBLE(bswap64(*&v32));
    if (*(*(*(a1 + 24) + 72) + 40))
    {
      v32 = v33;
    }

    v34 = *(a1 + 1136);
    *v34 = v32;
    v35 = *(v31 + 40 * *(v30 + 192) + 8) * 24000000.0 / 24000000.0;
    v36 = COERCE_DOUBLE(bswap64(*&v35));
    if (v29)
    {
      v35 = v36;
    }

    *(v34 + 8) = v35;
    v37 = v31 + 40 * *(v30 + 192);
    if (v29)
    {
      v38 = bswap64(*(v37 + 16));
      v39 = bswap64(*(v31 + 40 * *(v30 + 192) + 24));
      v40 = bswap64(*(v31 + 40 * *(v30 + 192) + 32));
      v41 = 50331648;
    }

    else
    {
      v38 = *(v37 + 16);
      v39 = *(v31 + 40 * *(v30 + 192) + 24);
      v40 = *(v31 + 40 * *(v30 + 192) + 32);
      v41 = 3;
    }

    *(v34 + 16) = v38;
    *(v34 + 32) = v39;
    *(v34 + 40) = v40;
    *(v34 + 88) = v41;
    v42 = bswap32(a5);
    if (v29)
    {
      v43 = v42;
    }

    else
    {
      v43 = a5;
    }

    *(v34 + 24) = v43;
    __dmb(0xBu);
    v44 = *(a1 + 1560);
    if (v44)
    {
      if (*(v44 + 88))
      {
        v45 = *(v44 + 368);
        if (v45)
        {
          HALS_IOClock::GetCurrentTime(v45, a2);
        }
      }
    }

    v27 = 1;
  }

  if (!HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)))
  {
    v47 = HALS_IOThread::EnableRTSafeSyscallMasks(v10);
    if (v47)
    {
      v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = *(v48 + 8);
      v51 = __error();
      v52 = strerror(*v51);
      if (*MEMORY[0x1E69E3C08])
      {
        v53 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v53 + 16) = 0;
        *(v53 + 20) = 16;
        *(v53 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v53 + 32) = 1639;
        *(v53 + 36) = v47;
        *(v53 + 40) = v52;
        *v53 = &unk_1F5982A18;
        *(v53 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v50, v53);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        return v27;
      }

LABEL_42:
      __break(1u);
    }
  }

  return v27;
}

void sub_1DE607728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateWakeTimeAndCheckOverload(CAAudioTimeStamp &,CAAudioTimeStamp const&,HALS_IOContext_Legacy_Impl::PerformIOReturn,unsigned int,unsigned int,long long,long long,CAAudioTimeStamp &,CAAudioTimeStamp &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 108) || ((v6 = *(a6 + 112), *(a6 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v6 = (a6 + 456);
  }

  v8 = *v6;
  v9 = *(*v6 + 88);
  if (v9 && *(v8 + 832) == 1)
  {
    (*(*v9 + 848))(v9, *(*(**a1 + 24) + 16), a5, *(*a1 + 8), *(*a1 + 16));
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::UpdateTime(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(*(this + 3) + 16) | (*(this + 1340) << 32);
  v4[0] = HALS_IOContext_Legacy_Impl::UpdateTime_Helper;
  v4[1] = v1;
  v3 = &unk_1F5983FE8;
  v6[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &,BOOL),unsigned int,std::placeholders::__ph<1> const&,BOOL volatile&>>;
  v6[1] = v4;
  v5 = &off_1F5983F18;
  v7 = v6;
  v8[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v8[1] = &v7;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), v8, &v5, &v3);
}

void HALS_IOContext_Legacy_Impl::AnchorTime(HALS_IOContext_Legacy_Impl *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(this + 195);
  if (v1 && *(v1 + 88))
  {
    if (*(this + 356) == 1)
    {
      v27.mFlags = 2;
      v27.mHostTime = *(this + 183);
      v24.mFlags = 7;
      HALS_IOClock::TranslateTime(*(v1 + 368), &v27, &v24);
      v27 = v24;
      v3 = (*(v1 + 404) + *(v1 + 396) + *(v1 + 420));
      v27.mFlags = 1;
      v27.mSampleTime = v24.mSampleTime + v3;
      HALS_IOClock::TranslateTime(*(v1 + 368), &v27, &v24);
      v25 = 0;
      v28 = &v25;
      *&v21.mSampleTime = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::AnchorTimeForCatchupMode(void)::$_0>;
      v21.mHostTime = &v28;
      v22[0] = &off_1F5983F18;
      v29 = &v21;
      *&buf.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      buf.mHostTime = &v29;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), &buf, v22);
      buf.mFlags = 7;
      HALS_IOClock::GetCurrentTime(*(v1 + 368), &buf);
      v4 = *(v1 + 368);
      v5 = buf.mSampleTime - v25 / *(v4 + 112);
      mSampleTime = v24.mSampleTime;
      if (v24.mSampleTime < v5)
      {
        v21.mHostTime = v24.mHostTime;
        *&v21.mRateScalar = *&v24.mRateScalar;
        *&v21.mSMPTETime.mSubframes = *&v24.mSMPTETime.mSubframes;
        *&v21.mSMPTETime.mHours = *&v24.mSMPTETime.mHours;
        v21.mFlags = 1;
        v21.mSampleTime = v5 + v3;
        v24.mFlags = 7;
        HALS_IOClock::TranslateTime(v4, &v21, &v24);
        v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
        }

        v9 = *(v7 + 8);
        mSampleTime = v24.mSampleTime;
        v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v10 + 16) = 0;
        *(v10 + 20) = 0;
        *(v10 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v10 + 32) = 4003;
        *(v10 + 40) = mSampleTime;
        *v10 = &unk_1F5983368;
        *(v10 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v9, v10);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      v11 = *(this + 151);
      if (mSampleTime < v11)
      {
        v11 = mSampleTime;
      }

      *(this + 151) = v11;
      *(*(this + 142) + 160) = v11;
      *(this + 356) = 2;
      v12 = *(this + 182);
      if (v12)
      {
        std::function<void ()(IORunningState)>::operator()(v12, 2);
      }

      kdebug_trace();
      *&v21.mSampleTime = HALS_IOContext_Legacy_Impl::AnchorTime_Helper;
      v21.mHostTime = this;
      *&v21.mRateScalar = &v24;
      v21.mWordClockTime = v1;
      v23 = &unk_1F5983F68;
      v22[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,std::placeholders::__ph<1> const&>>;
      v22[1] = &v21;
      v26 = COERCE_DOUBLE(&off_1F5983F18);
      v28 = v22;
      v29 = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
      p_buf = &v28;
      VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), &v29, &v26, &v23);
    }

    else
    {
      v27.mFlags = 7;
      HALS_IOClock::GetCurrentTime(*(v1 + 368), &v27);
      v26 = 0.0;
      Raw0Time = HALS_IOClock::GetRaw0Time(*(v1 + 368), &v26, &v25);
      v14 = 0;
      LODWORD(Raw0Time) = *(v1 + 396);
      v15 = *&Raw0Time;
      if (v27.mSampleTime - v26 >= v15)
      {
        v16 = v27.mSampleTime;
      }

      else
      {
        v16 = v26 + v15;
      }

      v17 = MEMORY[0x1E69E9C10];
      do
      {
        v18.n128_f64[0] = HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(this);
        v19 = v18.n128_f64[0];
        if (v16 >= v18.n128_f64[0])
        {
          v18.n128_f64[0] = v16;
        }

        v16 = (*(**(v1 + 88) + 640))(*(v1 + 88), (*(v1 + 420) + *(v1 + 404)), (*(v1 + 416) + *(v1 + 400)), v18);
        v27.mSampleTime = v16;
        v27.mFlags = 1;
        v24.mFlags = 7;
        HALS_IOClock::TranslateTime(*(v1 + 368), &v27, &v24);
        *&buf.mSampleTime = HALS_IOContext_Legacy_Impl::AnchorTime_Helper;
        buf.mHostTime = this;
        *&buf.mRateScalar = &v24;
        buf.mWordClockTime = v1;
        v23 = &off_1F5983FA8;
        v29 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl::AnchorTime_Helper_Context &,std::placeholders::__ph<1> const&>>;
        p_buf = &buf;
        v28 = &off_1F5983F18;
        v22[0] = &v29;
        *&v21.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterClocklessReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
        v21.mHostTime = v22;
        VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(this + 196), *(this + 197), &v21, &v28, &v23);
        v20 = HALS_IOContext_Legacy_Impl::CalculateEarliestAnchorSampleTimeBasedOnCommittedPosition(this);
        if (v20 == v19)
        {
          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleTime) = 136316418;
          *(&buf.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 4092;
          WORD1(buf.mRateScalar) = 2048;
          *(&buf.mRateScalar + 4) = v20;
          WORD2(buf.mWordClockTime) = 2048;
          *(&buf.mWordClockTime + 6) = v19;
          HIWORD(buf.mSMPTETime.mCounter) = 2048;
          *&buf.mSMPTETime.mType = v20 - v19;
          buf.mSMPTETime.mHours = 1024;
          *&buf.mSMPTETime.mMinutes = v14;
          _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Retrying anchor for new context earliestAnchorSampleTimeRetry = %f, earliestAnchorSampleTime= %f, diff = %f retryCount = %d", &buf, 0x36u);
        }

        ++v14;
      }

      while (v14 != 5);
    }
  }
}