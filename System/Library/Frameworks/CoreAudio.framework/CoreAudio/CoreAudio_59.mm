void HALS_IOContextDescription::~HALS_IOContextDescription(HALS_IOContextDescription *this)
{
  HALS_IOContextDescription::~HALS_IOContextDescription(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59876C0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN25HALS_IOContextDescriptionD2Ev_block_invoke;
  v11[3] = &__block_descriptor_tmp_16866;
  v11[4] = this;
  v12 = v11;
  v13[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v13[1] = &v12;
  v15 = v13;
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = this + 32;
  *&v14 = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *(&v14 + 1) = &v15;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(v3, v4, &v14);
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 472) == 1)
  {
    v7 = *(this + 56);
    if (v7)
    {
      *(this + 57) = v7;
      operator delete(v7);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 54));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 52, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 51, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 49));
  *&v14 = this + 296;
  std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](&v14);
  v8 = *(this + 35);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server((this + 152));
  for (i = 128; i != 80; i -= 24)
  {
    v10 = *(this + i);
    if (v10)
    {
      operator delete(v10);
    }
  }

  *&v14 = this + 80;
  std::vector<HALS_IOStackDescription>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v14 = this + 56;
  std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v14 = v5;
  std::vector<std::unique_ptr<HALS_IOEngineInfo>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

uint64_t ___ZN25HALS_IOContextDescriptionD2Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 88))
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(*(a1 + 32) + 488));
    if (v3 && *(a2 + 940) == 1)
    {
      (*(**(a2 + 88) + 216))(*(a2 + 88), v3);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "HALS_IOContextDescription.cpp";
      v9 = 1024;
      v10 = 236;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::~HALS_IOContextDescription: IOContextDescription has outlived owning IOContext", &v7, 0x12u);
    }

    *(a2 + 940) = 0;
    HALS_ObjectMap::ReleaseObject(*(a2 + 88), v4);
    HALS_ObjectMap::ReleaseObject(v3, v5);
  }

  return 0;
}

void sub_1DE67D2C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(uint64_t result, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
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
      v4 += 8;
      v5 = 1;
      if (result)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4 == a2;
      }
    }

    while (!v7);
  }

  return result;
}

void std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<HALS_IOStackDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 59;
      v7 = v4 - 59;
      do
      {
        (**v7)(v7);
        v6 -= 59;
        v8 = v7 == v2;
        v7 -= 59;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<HALS_IOEngineInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
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

Float64 CalculateSafetyViolation_Write(HALS_IOClock *a1, unsigned int a2, const AudioTimeStamp *a3)
{
  if (a1)
  {
    v7 = 0;
    v8 = 0.0;
    HALS_IOClock::GetRaw0Time(a1, &v8, &v7);
    return CalculateSafetyViolation_Write(v8, v7, *(a1 + 5 * *(a1 + 48) + 26), a2, a3);
  }

  return result;
}

uint64_t HALS_IOContextDescription::GetDeviceIDFromEngineID(HALS_IOContextDescription *this, unsigned int a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v4 = v2;
  if (v2 && (v5 = (*(*v2 + 336))(v2)) != 0)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return v6;
}

void HALS_IOContextDescription::HostedDSPDescription::~HostedDSPDescription(HALS_IOContextDescription::HostedDSPDescription *this)
{
  if (*(this + 176) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      *(this + 20) = v2;
      operator delete(v2);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 15, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 14, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 12));
  v3 = this;
  std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStackDescription>,HALS_IOStackDescription*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v9[3] = v4;
    v9[4] = v5;
    v7 = a2;
    v8 = a2;
    do
    {
      *a4 = *v8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v8 + 8);
      *(a4 + 24) = *(v8 + 24);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v8 += 32;
      a4 += 32;
    }

    while (v8 != a3);
    do
    {
      v9[0] = (v7 + 8);
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v9);
      v7 += 32;
    }

    while (v7 != a3);
  }
}

uint64_t std::__split_buffer<HALS_IOStackDescription>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x8AD8F2FBA93869)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = a3 + v5 * 8;
      *v6 = &unk_1F59910A0;
      v7 = &result[v5];
      v8 = *&result[v5 + 1];
      v9 = *&result[v5 + 3];
      v10 = *&result[v5 + 5];
      *(v6 + 53) = *(&result[v5 + 6] + 5);
      *(v6 + 40) = v10;
      *(v6 + 24) = v9;
      *(v6 + 8) = v8;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = 0;
      *(v6 + 72) = *&result[v5 + 9];
      *(v6 + 88) = result[v5 + 11];
      v7[10] = 0;
      v7[11] = 0;
      v7[9] = 0;
      *(v6 + 96) = *&result[v5 + 12];
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 112) = 0;
      *(v6 + 112) = *&result[v5 + 14];
      *(v6 + 128) = result[v5 + 16];
      v7[14] = 0;
      v7[15] = 0;
      v7[16] = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 136) = *&result[v5 + 17];
      *(v6 + 152) = result[v5 + 19];
      v7[17] = 0;
      v7[18] = 0;
      v7[19] = 0;
      *(v6 + 160) = result[v5 + 20];
      *(v6 + 168) = result[v5 + 21];
      v11 = &result[v5 + 22];
      v12 = *v11;
      *(a3 + v5 * 8 + 176) = *v11;
      v13 = a3 + v5 * 8 + 176;
      v14 = result[v5 + 23];
      *(v6 + 184) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v7[21] = v11;
        *v11 = 0;
        result[v5 + 23] = 0;
      }

      else
      {
        *(v6 + 168) = v13;
      }

      v15 = a3 + v5 * 8;
      v16 = &result[v5];
      *(v15 + 192) = *&result[v5 + 24];
      v16[24] = 0;
      v16[25] = 0;
      *(v15 + 208) = *&result[v5 + 26];
      v16[26] = 0;
      v16[27] = 0;
      v17 = result[v5 + 28];
      *(v15 + 232) = result[v5 + 29];
      *(v15 + 224) = v17;
      *(a3 + v5 * 8 + 240) = 0;
      *(v15 + 264) = 0;
      if (LOBYTE(result[v5 + 33]) == 1)
      {
        *(a3 + v5 * 8 + 240) = 0;
        *(a3 + v5 * 8 + 248) = 0;
        *(a3 + v5 * 8 + 256) = 0;
        *(v15 + 240) = *(v16 + 15);
        *(v15 + 256) = v16[32];
        v16[30] = 0;
        v16[31] = 0;
        v16[32] = 0;
        *(v15 + 264) = 1;
      }

      *(v15 + 272) = v16[34];
      *(v15 + 280) = 0;
      *(v15 + 288) = 0;
      *(v15 + 296) = 0;
      *(v15 + 280) = *(v16 + 35);
      *(v15 + 296) = v16[37];
      v16[35] = 0;
      v16[36] = 0;
      v16[37] = 0;
      *(v15 + 304) = 0;
      *(v15 + 312) = 0;
      *(v15 + 320) = 0;
      *(v15 + 304) = *(v16 + 19);
      *(v15 + 320) = v16[40];
      v16[38] = 0;
      v16[39] = 0;
      v16[40] = 0;
      v18 = *(v16 + 41);
      v19 = *(v16 + 45);
      *(v15 + 344) = *(v16 + 43);
      *(v15 + 360) = v19;
      *(v15 + 328) = v18;
      *(v15 + 376) = v16[47];
      *(v15 + 384) = *(v16 + 24);
      v16[48] = 0;
      v16[49] = 0;
      *(v15 + 400) = *(v16 + 25);
      v16[50] = 0;
      v16[51] = 0;
      v20 = *(v16 + 26);
      v21 = *(v16 + 27);
      v22 = *(v16 + 28);
      *(v15 + 464) = *(v16 + 464);
      *(v15 + 432) = v21;
      *(v15 + 448) = v22;
      *(v15 + 416) = v20;
      v5 += 59;
    }

    while (&result[v5] != a2);
    v23 = result;
    do
    {
      result = (**v4)(v4);
      v4 += 59;
      v23 += 59;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALS_IOStreamInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 472;
    (**(i - 472))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE67DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*,HALS_IOStreamGroup*,HALS_IOStreamGroup*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v4, *v6, *(v6 + 8), 0xCBEEA4E1A08AD8F3 * ((*(v6 + 8) - *v6) >> 3));
      v6 += 24;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t *std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(uint64_t *result, HALS_IOStreamInfo *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE67E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

HALS_IOStreamInfo *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*,HALS_IOStreamInfo*,HALS_IOStreamInfo*>(HALS_IOStreamInfo *a1, HALS_IOStreamInfo *a2, HALS_IOStreamInfo *this)
{
  if (a1 == a2)
  {
    return this;
  }

  v4 = a1;
  v5 = 0;
  v6 = this - 472;
  v7 = this;
  do
  {
    HALS_IOStreamInfo::HALS_IOStreamInfo(v7, v4);
    v4 = (v4 + 472);
    v7 = (v7 + 472);
    v5 -= 472;
    v6 += 472;
  }

  while (v4 != a2);
  return v7;
}

void std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

HALS_IOStreamInfo **std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(HALS_IOStreamInfo **a1, HALS_IOStreamInfo **a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (a3 != v4)
      {
        v7 = *v4;
        v6 = v4[1];
        v8 = v6 - *v4;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            v11 = a3[1];
            v12 = *a3;
            if (v11 != v10)
            {
              v13 = v11 - 472;
              v14 = (v11 - 472);
              do
              {
                (**v14)(v14);
                v13 -= 472;
                v15 = v14 == v10;
                v14 -= 59;
              }

              while (!v15);
              v12 = *a3;
            }

            a3[1] = v10;
            operator delete(v12);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v16 = 0xCBEEA4E1A08AD8F3 * (v8 >> 3);
          if (v16 <= 0x8AD8F2FBA93868)
          {
            v17 = 0xCBEEA4E1A08AD8F3 * (v9 >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x456C797DD49C34)
            {
              v18 = 0x8AD8F2FBA93868;
            }

            else
            {
              v18 = v16;
            }

            std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](a3, v18);
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v19 = a3[1];
        v20 = v19 - v10;
        if (v19 - v10 >= v8)
        {
          if (v7 != v6)
          {
            do
            {
              HALS_IOStreamInfo::operator=(v10, v7);
              v7 = (v7 + 472);
              v10 += 472;
            }

            while (v7 != v6);
            v19 = a3[1];
          }

          if (v19 != v10)
          {
            v22 = v19 - 472;
            v23 = (v19 - 472);
            do
            {
              (**v23)(v23);
              v22 -= 472;
              v15 = v23 == v10;
              v23 -= 59;
            }

            while (!v15);
          }

          a3[1] = v10;
        }

        else
        {
          if (v19 == v10)
          {
            v21 = *v4;
          }

          else
          {
            v21 = &v20[v7];
            do
            {
              HALS_IOStreamInfo::operator=(v10, v7);
              v7 = (v7 + 472);
              v10 += 472;
              v20 -= 472;
            }

            while (v20);
            v19 = a3[1];
          }

          a3[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*,HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v21, v6, v19);
        }
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t HALS_IOStreamInfo::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  if (a1 == a2)
  {
    *(a1 + 96) = *(a2 + 96);
    v15 = *(a2 + 160);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 160) = v15;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    v7 = *(a1 + 112);
    *(a1 + 96) = *(a2 + 96);
    v8 = *(a2 + 112);
    v9 = *(a2 + 120);
    v10 = v9 - v8;
    v11 = *(a1 + 128);
    if (v11 - v7 < (v9 - v8))
    {
      v12 = v10 >> 7;
      if (v7)
      {
        *(a1 + 120) = v7;
        operator delete(v7);
        v11 = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
      }

      if (!(v12 >> 57))
      {
        v13 = v11 >> 6;
        if (v11 >> 6 <= v12)
        {
          v13 = v10 >> 7;
        }

        if (v11 >= 0x7FFFFFFFFFFFFF80)
        {
          v14 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100]((a1 + 112), v14);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = *(a1 + 120);
    v17 = v16 - v7;
    if (v16 - v7 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v7, *(a2 + 112), v9 - v8);
      }

      v20 = &v7[v10];
    }

    else
    {
      if (v16 != v7)
      {
        memmove(v7, *(a2 + 112), v16 - v7);
        v16 = *(a1 + 120);
      }

      v18 = (v8 + v17);
      v19 = v9 - (v8 + v17);
      if (v19)
      {
        memmove(v16, v18, v19);
      }

      v20 = &v16[v19];
    }

    *(a1 + 120) = v20;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
    v21 = *(a2 + 160);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 160) = v21;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(a1 + 168, *(a2 + 168), (a2 + 176));
  }

  v23 = *(a2 + 192);
  v22 = *(a2 + 200);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 200);
  *(a1 + 192) = v23;
  *(a1 + 200) = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v26 = *(a2 + 208);
  v25 = *(a2 + 216);
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(a1 + 216);
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v28;
  std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>((a1 + 240), a2 + 240);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 280), *(a2 + 280), *(a2 + 288), *(a2 + 288) - *(a2 + 280));
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 304), *(a2 + 304), *(a2 + 312), *(a2 + 312) - *(a2 + 304));
  }

  v29 = *(a2 + 328);
  v30 = *(a2 + 344);
  *(a1 + 353) = *(a2 + 353);
  *(a1 + 328) = v29;
  *(a1 + 344) = v30;
  v31 = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 376) = v31;
  v33 = *(a2 + 384);
  v32 = *(a2 + 392);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = *(a1 + 392);
  *(a1 + 384) = v33;
  *(a1 + 392) = v32;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v36 = *(a2 + 400);
  v35 = *(a2 + 408);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  v37 = *(a1 + 408);
  *(a1 + 400) = v36;
  *(a1 + 408) = v35;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(a2 + 416);
  v39 = *(a2 + 432);
  v40 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v39;
  *(a1 + 448) = v40;
  *(a1 + 416) = v38;
  return a1;
}

void std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2];
      v5 = *a2;

      std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      a1[1] = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }
}

uint64_t *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState(HALS_IOContextDescription *this, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 7);
  v3 = *(this + 8);
  if (v3 != v4)
  {
    v5 = v3 - 59;
    v6 = v3 - 59;
    do
    {
      (**v6)(v6, a2);
      v5 -= 59;
      v7 = v6 == v4;
      v6 -= 59;
    }

    while (!v7);
  }

  *(this + 8) = v4;
  v9 = *(this + 10);
  v8 = *(this + 11);
  if (v8 != v9)
  {
    do
    {
      v10 = v8 - 32;
      *v17 = v8 - 24;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v17);
      v8 = v10;
    }

    while (v10 != v9);
  }

  *(this + 11) = v9;
  *(this + 3) = 0;
  v12 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "HALS_IOContextDescription.cpp";
    v18 = 1024;
    v19 = 491;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation: IOContextDescription has outlived owning IOContext", v17, 0x12u);
  }

  v13 = *(this + 4);
  v14 = *(this + 5);
  while (v13 != v14)
  {
    std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((*v13 + 800));
    std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((*v13 + 776));
    v15 = *v13;
    if (v12)
    {
      v16 = *(v15 + 88);
      if (v16)
      {
        if (*(v15 + 940) == 1)
        {
          (*(*v16 + 216))(v16, v12);
          v15 = *v13;
        }
      }
    }

    *(v15 + 940) = 0;
    *(v15 + 824) = 0;
    ++v13;
  }

  *(this + 58) = 0;
  HALS_ObjectMap::ReleaseObject(v12, v11);
}

void sub_1DE67EB58(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContextDescription::SetFromCFRepresentation_FindMaster(HALS_IOContextDescription *this, CFTypeRef cf)
{
  CFRetain(cf);
  v13 = &unk_1F5991008;
  v14 = cf;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v11, cf, @"clock device uid");
  if (v12)
  {
    EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v12);
    *(this + 3) = EngineInfo;
    if (EngineInfo)
    {
      goto LABEL_8;
    }
  }

  else if (*(this + 3))
  {
    goto LABEL_8;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v9, v14, @"master uid");
  if (v10)
  {
    *(this + 3) = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v10);
  }

  OS::CF::UntypedObject::~UntypedObject(v9);
LABEL_8:
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v9, v14, @"taps");
  if (!*(this + 3) && v10 && OS::CF::ArrayBase<__CFArray const*>::GetSize(v10))
  {
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v7, v9, 0);
    if (theDict)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v5, theDict, @"uid");
      *(this + 3) = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
    }

    OS::CF::UntypedObject::~UntypedObject(v7);
  }

  OS::CF::UntypedObject::~UntypedObject(v9);
  OS::CF::UntypedObject::~UntypedObject(v11);
  OS::CF::UntypedObject::~UntypedObject(&v13);
}

void sub_1DE67ECCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject((v14 - 32));
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams(HALS_IOContextDescription *this, const __CFDictionary *cf)
{
  v3 = cf;
  v239 = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  v202 = &unk_1F5991008;
  v203 = v3;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v200, v3, @"grid-in");
  v179 = this;
  if (!v201 || !*(this + 50))
  {
    OS::CF::UntypedObject::~UntypedObject(v200);
    OS::CF::UntypedObject::~UntypedObject(&v202);
LABEL_220:
    CFRetain(v3);
    v188[0] = &unk_1F5991008;
    v188[1] = v3;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v180, v3, @"grid-in");
    v124 = v180[1];
    if (v180[1])
    {
      v125 = 0;
      while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v124) > v125)
      {
        v126 = v125;
        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&__dst, v180, v125);
        if (*(&__dst + 1))
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v198, *(&__dst + 1), @"uid");
          EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v199);
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(&__dst + 1), @"index");
          v128 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
          OS::CF::UntypedObject::~UntypedObject(buf);
          if (EngineInfo)
          {
            HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(1, *(&__dst + 1), EngineInfo, v129);
            v131 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v188[1], v130);
            v132 = v131;
            if ((v131 & 0x100000000) != 0)
            {
              LODWORD(v2) = v131 >> 8;
              v133 = v131;
            }

            else
            {
              v133 = 0;
            }

            v134 = *(v179 + 122);
            v135 = *(EngineInfo + 11);
            if (v135)
            {
              v136 = (*(*v135 + 584))(*(EngineInfo + 11));
              v137 = (*(*v135 + 416))(v135, 1);
              if (v137 <= v128)
              {
                if (!(((v132 & 0x100000000) == 0) | v136 & 1))
                {
                  v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v138 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v137);
                  }

                  v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v139)
                  {
                    atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                    v141 = *v140;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v139);
                  }

                  else
                  {
                    v141 = *v140;
                  }

                  v137 = os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
                  if (v137)
                  {
                    v146 = *(v179 + 4);
                    *buf = 136316163;
                    *&buf[4] = "HALS_IOContextDescription.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 898;
                    v215 = 1024;
                    v216 = v134;
                    v217 = 1024;
                    *v218 = v146;
                    *&v218[4] = 2081;
                    *&v218[6] = "Isolated Audio Use Case specified, but this device does not support it.";
                    _os_log_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_DEFAULT, "%32s:%-5d (Context ID: %u) (Device ID: %u) %{private}s", buf, 0x28u);
                  }
                }

                v147 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v147 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v137);
                }

                v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v148 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v148)
                {
                  atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
                  v150 = *v149;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v148);
                }

                else
                {
                  v150 = *v149;
                }

                if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                {
                  if ((v132 & 0x100000000) != 0)
                  {
                    v152 = v133 | (v2 << 8);
                  }

                  else
                  {
                    v152 = 0;
                  }

                  caulk::string_from_4cc(v206, v152);
                  v153 = v206;
                  if (v206[23] < 0)
                  {
                    v153 = *v206;
                  }

                  v154 = *(v179 + 4);
                  *buf = 136316419;
                  *&buf[4] = "HALS_IOContextDescription.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 904;
                  v215 = 1024;
                  v216 = v134;
                  v217 = 2081;
                  *v218 = v153;
                  *&v218[8] = 1024;
                  *&v218[10] = v128;
                  v219 = 1024;
                  v220 = v154;
                  _os_log_error_impl(&dword_1DE1F9000, v150, OS_LOG_TYPE_ERROR, "%32s:%-5d (Context ID: %u) (%{private}s) Description specifies an out of range stream index (%u) for this device / engine (Device ID: %u)", buf, 0x2Eu);
                  if ((v206[23] & 0x80000000) != 0)
                  {
                    operator delete(*v206);
                  }
                }
              }
            }

            else
            {
              v142 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v142 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v131);
              }

              v144 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v143 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v143)
              {
                atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
                v145 = *v144;
                std::__shared_weak_count::__release_shared[abi:ne200100](v143);
              }

              else
              {
                v145 = *v144;
              }

              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "HALS_IOContextDescription.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 909;
                v215 = 1024;
                v216 = v134;
                _os_log_impl(&dword_1DE1F9000, v145, OS_LOG_TYPE_DEFAULT, "%32s:%-5d (Context ID: %u) Description specifies a stream index for a device / engine that is currently not present.", buf, 0x18u);
              }
            }

            HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
            v238 = EngineInfo;
            if ((v132 & 0x100000000) != 0 && (*(**(EngineInfo + 11) + 584))(*(EngineInfo + 11)))
            {
              v233 = v132;
              v234 = BYTE4(v132);
            }

            buf[8] = 1;
            *&buf[12] = v128;
            v151 = *(EngineInfo + 11);
            this = v179;
            if (v151)
            {
              *&v207 = 0;
              memset(v206, 0, sizeof(v206));
              (*(*v151 + 448))(v151, 1, v128, v206);
              v235 = *v206;
              v236 = *&v206[16];
              v237 = v207;
              if (v222)
              {
                v229 = *v206;
                v230 = *&v206[16];
                v231 = v207;
                if ((v232 & 1) == 0)
                {
                  v232 = 1;
                }
              }

              v221 = (*(**(EngineInfo + 11) + 440))(*(EngineInfo + 11), buf[8], *&buf[12]);
            }

            HALS_IOStreamGroup::push_back((v179 + 56), buf);
            HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
          }

          OS::CF::UntypedObject::~UntypedObject(&v198);
        }

        OS::CF::UntypedObject::~UntypedObject(&__dst);
        v125 = v126 + 1;
        v124 = v180[1];
      }
    }

    OS::CF::UntypedObject::~UntypedObject(v180);
    OS::CF::UntypedObject::~UntypedObject(v188);
    return;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v203, @"device id");
  v173 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
  OS::CF::UntypedObject::~UntypedObject(buf);
  v178 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 123));
  v172 = v3;
  v176 = (this + 384);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v198, this + 48);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  while (1)
  {
    Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v201);
    if (Size <= v7)
    {
      break;
    }

    v2 = v6;
    v10 = v7;
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(buf, v200, v7);
    if (*&buf[8])
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v188, *&buf[8], @"uid");
      v11 = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(v179, v188[1]);
      *v206 = v11;
      if (v11)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v180, *&buf[8], @"index");
        v12 = OS::CF::Number::GetValue<unsigned int>(v180[1], 0);
        *&v206[8] = v12;
        OS::CF::UntypedObject::~UntypedObject(v180);
        if (v12 < (*(**(v11 + 11) + 416))())
        {
          *&v206[12] = 3;
          std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v194, &v198);
          DeviceFromEngine = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
          IsHostingInputDSP = HALS_IOContextDescription_HostedDSP::IsHostingInputDSP(v194, DeviceFromEngine, v178);
          std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v194[1]);
          if (IsHostingInputDSP)
          {
            if ((v8 & 1) == 0)
            {
              *&v206[12] = 0;
            }

            v15 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
            if (v15)
            {
              v16 = *(v15 + 4);
            }

            else
            {
              v16 = 0;
            }

            v17 = v5 - v2;
            v18 = (v5 - v2) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (-v2 >> 1 > v19)
            {
              v19 = -v2 >> 1;
            }

            if (-v2 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v20);
            }

            v21 = (4 * v18);
            *v21 = v16;
            v5 = v21 + 1;
            memcpy(0, v2, v17);
            v8 = 1;
            v2 = 0;
          }

          if (((*(**(v11 + 11) + 584))(*(v11 + 11)) & *(v179 + 380)) == 1)
          {
            if ((v8 & 1) == 0)
            {
              *&v206[12] = 0;
            }

            v22 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
            if (v22)
            {
              v23 = *(v22 + 4);
            }

            else
            {
              v23 = 0;
            }

            v24 = v5 - v2;
            v25 = (v5 - v2) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (-v2 >> 1 > v26)
            {
              v26 = -v2 >> 1;
            }

            if (-v2 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v27 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v27);
            }

            v28 = (4 * v25);
            *v28 = v23;
            v5 = v28 + 1;
            memcpy(0, v2, v24);
            v8 = 1;
            v2 = 0;
          }

          std::vector<HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo>::push_back[abi:ne200100](&v195, v206);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(v188);
    }

    OS::CF::UntypedObject::~UntypedObject(buf);
    v7 = v10 + 1;
    v6 = v2;
  }

  if (v195 == v196)
  {
    v29 = 0;
    this = v179;
    goto LABEL_217;
  }

  if (v8)
  {
    this = v179;
    goto LABEL_94;
  }

  v30 = HALS_ObjectMap::CopyObjectByObjectID(v173);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v193, &v198);
  this = v179;
  v31 = HALS_IOContextDescription_HostedDSP::IsHostingInputDSP(v193, v30, v178);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v193[1]);
  if ((v31 & 1) == 0)
  {
    v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v42 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v32);
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
      v162 = 0;
      v163 = 0;
      v164 = 47;
      do
      {
        v165 = &aLibraryCachesC_234[v162];
        if (v164 == 47)
        {
          v163 = &aLibraryCachesC_234[v162];
        }

        v164 = v165[1];
        if (!v165[1])
        {
          break;
        }

        v36 = v162++ >= 0xFFF;
      }

      while (!v36);
      if (v163)
      {
        v166 = v163 + 1;
      }

      else
      {
        v166 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
      }

      *buf = 136315394;
      *&buf[4] = v166;
      *&buf[12] = 1024;
      *&buf[14] = 212;
      _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] During context configuration, none of the associated devices have this DSP type enabled for the client.", buf, 0x12u);
    }

    goto LABEL_69;
  }

  v33 = *(v179 + 49);
  if (v33)
  {
    v34 = (v179 + 392);
    do
    {
      v35 = v33[7];
      v36 = v35 >= 8;
      v37 = v35 < 8;
      if (v36)
      {
        v34 = v33;
      }

      v33 = *&v33[2 * v37];
    }

    while (v33);
    if (v34 != (v179 + 392) && v34[7] <= 8u)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v32);
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
        v167 = 0;
        v168 = 0;
        v169 = 47;
        do
        {
          v170 = &aLibraryCachesC_234[v167];
          if (v169 == 47)
          {
            v168 = &aLibraryCachesC_234[v167];
          }

          v169 = v170[1];
          if (!v170[1])
          {
            break;
          }

          v36 = v167++ >= 0xFFF;
        }

        while (!v36);
        if (v168)
        {
          v171 = v168 + 1;
        }

        else
        {
          v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
        }

        *buf = 136315394;
        *&buf[4] = v171;
        *&buf[12] = 1024;
        *&buf[14] = 221;
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp][offloads] DSP Offloading must be set/valid in at least one subdevice to be used.", buf, 0x12u);
      }

      std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(v176, 8u);
      v161 = *(v179 + 51);
      *(v179 + 51) = 0;
      if (v161)
      {
        std::default_delete<DSP_Host_OffloadDictionary>::operator()[abi:ne200100](v161);
      }

LABEL_69:
      HALS_ObjectMap::ReleaseObject(v30, v50);
      v29 = 0;
      goto LABEL_217;
    }
  }

  v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v46 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v32);
  }

  v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    v49 = *v48;
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  else
  {
    v49 = *v48;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 0;
    v52 = 0;
    v53 = 47;
    do
    {
      v54 = &aLibraryCachesC_234[v51];
      if (v53 == 47)
      {
        v52 = &aLibraryCachesC_234[v51];
      }

      v53 = v54[1];
      if (!v54[1])
      {
        break;
      }

      v36 = v51++ >= 0xFFF;
    }

    while (!v36);
    if (v52)
    {
      v55 = v52 + 1;
    }

    else
    {
      v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
    }

    *buf = 136315394;
    *&buf[4] = v55;
    *&buf[12] = 1024;
    *&buf[14] = 226;
    _os_log_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] DSP is set on the description device (vs an underlying device) and is applied only to the first input stream.", buf, 0x12u);
  }

  *(v195 + 3) = 0;
  if (v30)
  {
    v56 = *(v30 + 16);
  }

  else
  {
    v56 = 0;
  }

  v57 = v5 - v6;
  v58 = (v5 - v6) >> 2;
  v59 = v58 + 1;
  if ((v58 + 1) >> 62)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (-v6 >> 1 > v59)
  {
    v59 = -v6 >> 1;
  }

  if (-v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v60 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v60 = v59;
  }

  if (v60)
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v60);
  }

  v61 = (4 * v58);
  *v61 = v56;
  v5 = v61 + 1;
  memcpy(0, v6, v57);
  v6 = 0;
  HALS_ObjectMap::ReleaseObject(v30, v62);
LABEL_94:
  if (v5 - v6 >= 5)
  {
    v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v63 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(Size);
    }

    v65 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v64 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      v66 = *v65;
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    else
    {
      v66 = *v65;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v155 = 0;
      v156 = 0;
      v157 = 47;
      do
      {
        v158 = &aLibraryCachesC_234[v155];
        if (v157 == 47)
        {
          v156 = &aLibraryCachesC_234[v155];
        }

        v157 = v158[1];
        if (!v158[1])
        {
          break;
        }

        v36 = v155++ >= 0xFFF;
      }

      while (!v36);
      if (v156)
      {
        v159 = v156 + 1;
      }

      else
      {
        v159 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
      }

      v160 = *v6;
      *buf = 136315650;
      *&buf[4] = v159;
      *&buf[12] = 1024;
      *&buf[14] = 235;
      v215 = 1024;
      v216 = v160;
      _os_log_error_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] UNSUPPORTED: Multiple devices hosting DSP. Only (Device ID: %d) will run DSP.", buf, 0x18u);
    }
  }

  v67 = *(this + 37);
  for (i = *(this + 38); v67 != i; v67 += 16)
  {
    if (*v67)
    {
      *(v67 + 4) = 0;
      v69 = *(v67 + 8);
      if (!v69)
      {
        continue;
      }

      *buf = 0;
      *&buf[8] = 0x300000000;
      v70 = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(v179, v69);
      *buf = v70;
      v71 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v70);
      v72 = v71;
      if (!v71)
      {
        continue;
      }

      v73 = HALS_IODevice::GetNumberStreams(v71, 1) ? v72 : 0;
      ReferenceStreamIndex = HALS_Device::GetReferenceStreamIndex(v73);
      v75 = ReferenceStreamIndex;
      if (!HIDWORD(ReferenceStreamIndex) || (*(**(v70 + 88) + 416))(*(v70 + 88), 1) <= ReferenceStreamIndex)
      {
        continue;
      }

      *&buf[12] = 2;
      *&buf[8] = v75;
      *(v70 + 846) = 1;
      v76 = v195;
      if (v195 != v196)
      {
        while (*v76 != v70 || v76[2] != v75)
        {
          v76 += 4;
          if (v76 == v196)
          {
            goto LABEL_117;
          }
        }
      }

      if (v76 == v196)
      {
LABEL_117:
        *&buf[12] = 1;
        std::vector<HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo>::push_back[abi:ne200100](&v195, buf);
      }

      else
      {
        v76[3] = 2;
      }
    }

    *(v67 + 4) = 1;
  }

  HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
  v238 = 0;
  buf[8] = 1;
  *&buf[12] = 0;
  v222 = 1;
  v233 = *(v179 + 94);
  v234 = *(v179 + 380);
  v2 = v195;
  v77 = v196;
  if (v195 != v196)
  {
    v78 = 0;
    v79 = 0;
    v80 = (v179 + 376);
    do
    {
      if (!*v2)
      {
        goto LABEL_152;
      }

      v81 = *(*v2 + 88);
      if (!v81)
      {
        goto LABEL_152;
      }

      v82 = (*(*v81 + 336))(v81);
      if (!v82)
      {
        goto LABEL_152;
      }

      v83 = *(v82 + 16);
      v84 = *(v2 + 8);
      v188[0] = *v2;
      LODWORD(v188[1]) = v83;
      *&v189 = 0;
      DWORD2(v189) = 0;
      *&v190 = 0;
      DWORD2(v190) = 0;
      *v191 = 0;
      memset(&v191[8], 0, 40);
      *v192 = v84;
      v192[28] = 0;
      memset(&v192[4], 0, 21);
      if ((*(**(*v2 + 88) + 584))())
      {
        if (v192[28] == *(v179 + 380))
        {
          if (v192[28])
          {
            *&v192[24] = *v80;
          }
        }

        else if (v192[28])
        {
          v192[28] = 0;
        }

        else
        {
          *&v192[24] = *v80;
          v192[28] = 1;
        }
      }

      *&v192[4] = *(v2 + 12);
      (*(**(*v2 + 88) + 448))(*(*v2 + 88), 1, *(v2 + 8), &v191[8]);
      v85 = *(v2 + 12);
      if (v85)
      {
        if (v85 >= 3)
        {
          goto LABEL_149;
        }

        if ((v78 & 1) == 0)
        {
          *__src = *&v191[16];
          *__p = *&v191[32];
          v211 = *v192;
          *&v212[0].__begin_ = *&v192[16];
          *v206 = *v188;
          *&v206[16] = v189;
          v207 = v190;
          v208 = *v191;
          HALS_IODSPInfo::AddStream(v223, v206);
          v78 = 0;
          goto LABEL_146;
        }
      }

      else
      {
        if (v226 != v176)
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(v226, *v176, v179 + 49);
        }

        v226[14] = *v80;
        v227 = *(v179 + 380);
        v228 = v173;
        v86 = *(v179 + 51);
        if (v86)
        {
          DSP_Host_OffloadDictionary::deep_copy(v206, v86);
        }

        v87 = *(v179 + 52);
        if (v87)
        {
          DSP_Host_OffloadDictionary::deep_copy(v206, v87);
        }

        if (*(v179 + 368) == 1)
        {
          HALS_IOContextDescription::UpdateDSPStreamFormat(v179, (v179 + 328));
        }

        v224 = *(v179 + 120);
        v225 = *(v179 + 484);
        v89 = *(v179 + 7);
        v88 = *(v179 + 8);
        HALS_IOStreamGroup::push_back((v179 + 56), buf);
        v79 = 0xCBEEA4E1A08AD8F3 * ((v88 - v89) >> 3);
        if (*(v2 + 12) >= 3u)
        {
          v78 = 1;
LABEL_149:
          if (*(v179 + 380) == 1)
          {
            *&v192[4] = 4;
          }

          HALS_IOStreamInfo::HALS_IOStreamInfo(v206);
          v213[36] = v188[0];
          v206[8] = 1;
          *&v206[12] = *v192;
          HIDWORD(v211) = 2;
          LODWORD(v180[0]) = 9;
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(v213, 9u, v180);
          v184 = *&v191[16];
          v185 = *&v191[32];
          v186 = *v192;
          v187 = *&v192[16];
          *v180 = *v188;
          v181 = v189;
          v182 = v190;
          v183 = *v191;
          HALS_IODSPInfo::AddStream(v212, v180);
          HALS_IOStreamGroup::push_back((v179 + 56), v206);
          HALS_IOStreamInfo::~HALS_IOStreamInfo(v206);
          goto LABEL_152;
        }
      }

      v90 = *(v179 + 7) + 472 * v79;
      *__src = *&v191[16];
      *__p = *&v191[32];
      v211 = *v192;
      *&v212[0].__begin_ = *&v192[16];
      *v206 = *v188;
      *&v206[16] = v189;
      v207 = v190;
      v208 = *v191;
      HALS_IODSPInfo::AddStream((v90 + 112), v206);
      v78 = 1;
LABEL_146:
      if (*(v2 + 12) >= 2u)
      {
        goto LABEL_149;
      }

LABEL_152:
      v2 += 16;
    }

    while (v2 != v77);
  }

  this = v179;
  if (*(v179 + 7) != *(v179 + 8))
  {
    v91 = HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(v180, v179 + 296);
    v92 = BYTE7(v181);
    if (SBYTE7(v181) < 0)
    {
      v92 = v180[1];
    }

    if (!v92)
    {
      LOBYTE(v188[0]) = 0;
      BYTE8(v189) = 0;
      if ((BYTE7(v181) & 0x80) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_193;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v206);
    if ((SBYTE7(v181) & 0x80u) == 0)
    {
      v93 = v180;
    }

    else
    {
      v93 = v180[0];
    }

    if ((SBYTE7(v181) & 0x80u) == 0)
    {
      v94 = BYTE7(v181);
    }

    else
    {
      v94 = v180[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], v93, v94);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], " ", 1);
    v95 = *(v179 + 7);
    v174 = *(v179 + 8);
    if (v95 != v174)
    {
      v96 = 0;
      do
      {
        v177 = v96;
        v97 = (*(*v179 + 16))(v179, 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], "[", 1);
        v98 = *(v95 + 112);
        v99 = *(v95 + 120);
        v175 = v95;
        if (v98 != v99)
        {
          if (v97)
          {
            v100 = "";
          }

          else
          {
            v100 = "~";
          }

          v101 = v97 ^ 1u;
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], "(", 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], v100, v101);
            v102 = MEMORY[0x1E12C1210](&v206[16], v98[2]);
            v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, " (#", 3);
            v104 = MEMORY[0x1E12C1210](v103, v98[24]);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, ") ", 2);
            v105 = v98[25] - 1;
            v106 = "PRIM";
            if (v105 <= 4)
            {
              v106 = off_1E8673710[v105];
            }

            v107 = strlen(v106);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], v106, v107);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], ")", 1);
            v98 += 32;
          }

          while (v98 != v99);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v206[16], "]", 1);
        v96 = v177 + 1;
        v95 = v175 + 472;
      }

      while ((v175 + 472) != v174);
    }

    if ((v212[0].__end_ & 0x10) != 0)
    {
      begin = v212[0].__begin_;
      if (v212[0].__begin_ < __src[1])
      {
        v212[0].__begin_ = __src[1];
        begin = __src[1];
      }

      v110 = __src[0];
    }

    else
    {
      if ((v212[0].__end_ & 8) == 0)
      {
        v108 = 0;
        HIBYTE(v205) = 0;
        goto LABEL_190;
      }

      v110 = *(&v207 + 1);
      begin = *(&v208 + 1);
    }

    v108 = begin - v110;
    if ((begin - v110) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v108 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v205) = begin - v110;
    if (v108)
    {
      memmove(&__dst, v110, v108);
    }

LABEL_190:
    *(&__dst + v108) = 0;
    *v188 = __dst;
    *&v189 = v205;
    BYTE8(v189) = 1;
    v2 = v206;
    *v206 = *MEMORY[0x1E69E54D8];
    v111 = *(MEMORY[0x1E69E54D8] + 72);
    *&v206[*(*v206 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    *&v206[16] = v111;
    *&v206[24] = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v211) < 0)
    {
      operator delete(__p[1]);
    }

    *&v206[24] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v207);
    std::iostream::~basic_iostream();
    v91 = MEMORY[0x1E12C15F0](&v212[0].__end_cap_);
    this = v179;
    if ((BYTE7(v181) & 0x80) == 0)
    {
      goto LABEL_194;
    }

LABEL_193:
    operator delete(v180[0]);
LABEL_194:
    if (BYTE8(v189))
    {
      v112 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v112 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v91);
      }

      v114 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v113 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
        v115 = *v114;
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      else
      {
        v115 = *v114;
      }

      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = 0;
        v117 = 0;
        v118 = 47;
        do
        {
          v119 = &aLibraryCachesC_234[v116];
          if (v118 == 47)
          {
            v117 = &aLibraryCachesC_234[v116];
          }

          v118 = v119[1];
          if (!v119[1])
          {
            break;
          }

          v36 = v116++ >= 0xFFF;
        }

        while (!v36);
        if (v117)
        {
          v120 = v117 + 1;
        }

        else
        {
          v120 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
        }

        v121 = *(this + 122);
        v122 = v188;
        if (SBYTE7(v189) < 0)
        {
          v122 = v188[0];
        }

        *v206 = 136316163;
        *&v206[4] = v120;
        *&v206[12] = 1024;
        *&v206[14] = 352;
        *&v206[18] = 1024;
        *&v206[20] = v121;
        *&v206[24] = 1024;
        *&v206[26] = v173;
        *&v206[30] = 2081;
        *&v207 = v122;
        _os_log_impl(&dword_1DE1F9000, v115, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][comp] (Context ID: %d)(Device ID: %d)%{private}s", v206, 0x28u);
      }
    }

    goto LABEL_213;
  }

  LOBYTE(v188[0]) = 0;
  BYTE8(v189) = 0;
LABEL_213:
  *&__dst = *(this + 3);
  v180[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>;
  v180[1] = &__dst;
  *v206 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *&v206[8] = v180;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), v206);
  if (BYTE8(v189) == 1 && SBYTE7(v189) < 0)
  {
    operator delete(v188[0]);
  }

  HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
  v29 = 1;
LABEL_217:
  if (v195)
  {
    operator delete(v195);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v199);
  HALS_ObjectMap::ReleaseObject(v178, v123);
  v3 = v172;
  OS::CF::UntypedObject::~UntypedObject(v200);
  OS::CF::UntypedObject::~UntypedObject(&v202);
  if ((v29 & 1) == 0)
  {
    goto LABEL_220;
  }
}

void sub_1DE68079C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, HALS_ObjectMap *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  HALS_ObjectMap::ReleaseObject(v67, a2);
  if (v68)
  {
    operator delete(v68);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a65);
  HALS_ObjectMap::ReleaseObject(a19, v70);
  OS::CF::UntypedObject::~UntypedObject(&a66);
  OS::CF::UntypedObject::~UntypedObject(&a67);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams(HALS_IOContextDescription *this, CFTypeRef cf)
{
  v156[2] = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  v137[1] = cf;
  v137[0] = &unk_1F5991008;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v135, cf, @"grid-out");
  Size = v136;
  if (v136)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v104 = *(this + 55);
    v101 = this + 424;
    v99 = (this + 328);
    v97 = (this + 80);
    v105 = this;
    while (1)
    {
      Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(Size);
      if (Size <= v7)
      {
        break;
      }

      v132 = 0;
      v134 = 0uLL;
      v133 = 0;
      v98 = v7;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v130, v135, v7);
      if (v131)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v131, @"channels");
        v132 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
        OS::CF::UntypedObject::~UntypedObject(buf);
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v128, v131, @"stream groups");
        for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v129) > i; i = v102 + 1)
        {
          v102 = i;
          OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(v126, v128, i);
          v9 = v127;
          if (v127)
          {
            v10 = 0;
            v123 = 0;
            v124 = 0;
            v125 = 0;
            while (1)
            {
              v11 = v5;
              if (OS::CF::ArrayBase<__CFArray const*>::GetSize(v9) <= v10)
              {
                break;
              }

              v12 = v10;
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(theDict, v126, v10);
              if (theDict[1])
              {
                OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v121, theDict[1], @"uid");
                EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v122);
                if (EngineInfo)
                {
                  HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(0, theDict[1], EngineInfo, v13);
                  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict[1], @"index");
                  v15 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
                  OS::CF::UntypedObject::~UntypedObject(buf);
                  if (v104)
                  {
                    v30 = v6 - v5;
                    v31 = (v6 - v5) >> 4;
                    v32 = v31 + 1;
                    if ((v31 + 1) >> 60)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v5 >> 3 > v32)
                    {
                      v32 = -v5 >> 3;
                    }

                    if (-v5 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v33 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v33 = v32;
                    }

                    if (v33)
                    {
                      if (!(v33 >> 60))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v34 = 16 * v31;
                    *v34 = EngineInfo;
                    *(v34 + 8) = v15;
                    v6 = 16 * v31 + 16;
                    memcpy(0, v5, v30);
                    v5 = 0;
                  }

                  else
                  {
                    HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
                    v156[0] = EngineInfo;
                    buf[8] = 0;
                    *&buf[12] = v15;
                    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v119, theDict[1], @"channel map");
                    v16 = v120;
                    if (v120)
                    {
                      v17 = 0;
                      v140 = 1;
                      while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v16) > v17)
                      {
                        v18 = v17;
                        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v114, v119, v17);
                        v19 = OS::CF::Number::GetValue<int>(*(&v114 + 1), 0xFFFFFFFFLL);
                        OS::CF::UntypedObject::~UntypedObject(&v114);
                        v20 = v142;
                        if (v142 >= v143)
                        {
                          v22 = __src;
                          v23 = v142 - __src;
                          v24 = (v142 - __src) >> 2;
                          v25 = v24 + 1;
                          if ((v24 + 1) >> 62)
                          {
                            std::vector<void *>::__throw_length_error[abi:ne200100]();
                          }

                          v26 = v143 - __src;
                          if ((v143 - __src) >> 1 > v25)
                          {
                            v25 = v26 >> 1;
                          }

                          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v27 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v27 = v25;
                          }

                          if (v27)
                          {
                            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v27);
                          }

                          *(4 * v24) = v19;
                          v21 = 4 * v24 + 4;
                          memcpy(0, v22, v23);
                          v28 = __src;
                          __src = 0;
                          v142 = v21;
                          v143 = 0;
                          if (v28)
                          {
                            operator delete(v28);
                          }

                          v5 = v11;
                        }

                        else
                        {
                          *v142 = v19;
                          v21 = (v20 + 4);
                        }

                        v142 = v21;
                        v17 = v18 + 1;
                        v16 = v120;
                      }
                    }

                    v29 = *(EngineInfo + 11);
                    if (v29)
                    {
                      *&v116 = 0;
                      v114 = 0u;
                      v115 = 0u;
                      (*(*v29 + 448))(v29, buf[8], *&buf[12], &v114);
                      v153 = v114;
                      v154 = v115;
                      v155 = v116;
                      if (v145)
                      {
                        v149 = v114;
                        v150 = v115;
                        v151 = v116;
                        if ((v152 & 1) == 0)
                        {
                          v152 = 1;
                        }
                      }

                      v144 = (*(**(EngineInfo + 11) + 440))(*(EngineInfo + 11), buf[8], *&buf[12]);
                    }

                    HALS_IOStreamGroup::push_back(&v123, buf);
                    OS::CF::UntypedObject::~UntypedObject(v119);
                    HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
                  }
                }

                this = v105;
                OS::CF::UntypedObject::~UntypedObject(v121);
              }

              OS::CF::UntypedObject::~UntypedObject(theDict);
              v10 = v12 + 1;
              v9 = v127;
            }

            if (v104 && v5 != v6)
            {
              HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
              v156[0] = 0;
              buf[8] = 0;
              v36 = v5;
              *&buf[12] = 0;
              v145 = 1;
              do
              {
                v37 = *v36;
                v38 = *(*v36 + 88);
                if (v38)
                {
                  DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v38 + 16), v35);
                  v37 = *v36;
                }

                else
                {
                  DeviceIDFromEngineID = 0;
                }

                v40 = v36[2];
                *&v114 = v37;
                DWORD2(v114) = DeviceIDFromEngineID;
                *&v115 = 0;
                DWORD2(v115) = 0;
                *&v116 = 0;
                DWORD2(v116) = 0;
                *v117 = 0;
                memset(&v117[8], 0, 40);
                *v118 = v40;
                v118[28] = 0;
                memset(&v118[4], 0, 21);
                (*(**(*v36 + 88) + 448))();
                v110 = *&v117[16];
                v111 = *&v117[32];
                v112 = *v118;
                v113 = *&v118[16];
                *theDict = v114;
                v107 = v115;
                v108 = v116;
                v109 = *v117;
                HALS_IODSPInfo::AddStream(&v146, theDict);
                v36 += 4;
              }

              while (v36 != v6);
              if (v147 != v101)
              {
                std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(v147, *v101, this + 54);
              }

              std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>(v148, this + 448);
              if (*(this + 368) == 1)
              {
                HALS_IOContextDescription::UpdateDSPStreamFormat(this, v99);
              }

              HALS_IOStreamGroup::push_back(&v123, buf);
              HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
            }

            if (v123 != v124)
            {
              v41 = v134;
              if (v134 >= *(&v134 + 1))
              {
                v43 = 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3);
                v44 = v43 + 1;
                if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((*(&v134 + 1) - v133) >> 3) > v44)
                {
                  v44 = 0x5555555555555556 * ((*(&v134 + 1) - v133) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v134 + 1) - v133) >> 3) >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v44;
                }

                v139 = &v133;
                if (v45)
                {
                  std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](v45);
                }

                v46 = (8 * ((v134 - v133) >> 3));
                *buf = 0;
                *&buf[8] = v46;
                *&buf[16] = v46;
                *v46 = 0;
                v46[1] = 0;
                v46[2] = 0;
                std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>((24 * v43), v123, v124, 0xCBEEA4E1A08AD8F3 * ((v124 - v123) >> 3));
                *&buf[16] += 24;
                v48 = v133;
                v47 = v134;
                v49 = *&buf[8] + v133 - v134;
                if (v133 != v134)
                {
                  v50 = (*&buf[8] + v133 - v134);
                  v51 = v133;
                  do
                  {
                    *v50 = 0;
                    v50[1] = 0;
                    v50[2] = 0;
                    *v50 = *v51;
                    v50[2] = *(v51 + 16);
                    *v51 = 0;
                    *(v51 + 8) = 0;
                    *(v51 + 16) = 0;
                    v51 += 24;
                    v50 += 3;
                  }

                  while (v51 != v47);
                  do
                  {
                    *&v114 = v48;
                    std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v114);
                    v48 += 24;
                  }

                  while (v48 != v47);
                }

                v52 = v133;
                v53 = *(&v134 + 1);
                v133 = v49;
                v100 = *&buf[16];
                v134 = *&buf[16];
                *&buf[16] = v52;
                *&buf[24] = v53;
                *&buf[8] = v52;
                *buf = v52;
                std::__split_buffer<HALS_IOStreamGroup>::~__split_buffer(buf);
                v42 = v100;
                this = v105;
              }

              else
              {
                *v134 = 0uLL;
                v41[2] = 0;
                std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v41, v123, v124, 0xCBEEA4E1A08AD8F3 * ((v124 - v123) >> 3));
                v42 = v41 + 3;
              }

              *&v134 = v42;
            }

            *buf = &v123;
            std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          OS::CF::UntypedObject::~UntypedObject(v126);
        }

        OS::CF::UntypedObject::~UntypedObject(v128);
      }

      v54 = v133;
      v55 = v134;
      if (v133 != v134)
      {
        v57 = *(this + 11);
        v56 = *(this + 12);
        if (v57 >= v56)
        {
          v59 = (v57 - *v97) >> 5;
          if ((v59 + 1) >> 59)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v60 = v56 - *v97;
          v61 = v60 >> 4;
          if (v60 >> 4 <= (v59 + 1))
          {
            v61 = v59 + 1;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFE0)
          {
            v62 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v61;
          }

          v139 = v97;
          if (v62)
          {
            if (!(v62 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v63 = 32 * v59;
          *buf = 0;
          *&buf[8] = v63;
          *&buf[16] = (32 * v59);
          *v63 = v132;
          *(v63 + 16) = 0;
          *(v63 + 24) = 0;
          *(v63 + 8) = 0;
          std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>((32 * v59 + 8), v54, v55, 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3));
          *&buf[16] += 32;
          v64 = *(this + 10);
          v65 = *(this + 11);
          v66 = *&buf[8] + v64 - v65;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStackDescription>,HALS_IOStackDescription*>(v97, v64, v65, v66);
          v67 = *(this + 10);
          *(this + 10) = v66;
          v68 = *(this + 12);
          v103 = *&buf[16];
          *(this + 88) = *&buf[16];
          *&buf[16] = v67;
          *&buf[24] = v68;
          *&buf[8] = v67;
          *buf = v67;
          std::__split_buffer<HALS_IOStackDescription>::~__split_buffer(buf);
          v58 = v103;
        }

        else
        {
          *v57 = v132;
          *(v57 + 8) = 0;
          *(v57 + 16) = 0;
          *(v57 + 24) = 0;
          std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>((v57 + 8), v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3));
          v58 = v57 + 32;
          *(this + 11) = v57 + 32;
        }

        *(this + 11) = v58;
      }

      OS::CF::UntypedObject::~UntypedObject(v130);
      *buf = &v133;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](buf);
      v7 = v98 + 1;
      Size = v136;
    }
  }

  v69 = *(this + 7);
  v70 = *(this + 8);
  v71 = v69;
  if (v69 < v70)
  {
    v71 = *(this + 7);
    do
    {
      if (*(v71 + 27) == 1)
      {
        break;
      }

      v71 = (v71 + 472);
    }

    while (v71 < v70);
  }

  if (v70 != v71)
  {
    *&v115 = 0;
    v72 = 0uLL;
    v114 = 0u;
    if (v69 != v70)
    {
      do
      {
        HALS_IOStreamInfo::HALS_IOStreamInfo(buf, v69);
        if (!v145 || ((begin = v146.__begin_, v146.__end_ != v146.__begin_) ? (v74 = v146.__begin_ == 0) : (v74 = 1), v74))
        {
          begin = v156;
        }

        v75 = *(*begin + 88);
        if (v75)
        {
          v76 = (*(*v75 + 336))(v75);
          if (v76)
          {
            LODWORD(theDict[0]) = *(v76 + 16);
            std::vector<unsigned int>::push_back[abi:ne200100](&v114, theDict);
          }
        }

        HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
        v69 = (v69 + 472);
      }

      while (v69 != v70);
      v72 = v114;
    }

    v78 = *(&v72 + 1);
    v77 = v72;
    if (v72 != *(&v72 + 1))
    {
      v79 = *(v71 + 18);
      do
      {
        v80 = *v77;
        v81 = v79;
        if (*(v71 + 17) != v79)
        {
          v81 = *(v71 + 17);
          while (*v81 != v80)
          {
            if (++v81 == v79)
            {
              v81 = v79;
              break;
            }
          }
        }

        if (v79 == v81)
        {
          v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v82 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(Size);
          }

          v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            v85 = *v84;
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          else
          {
            v85 = *v84;
          }

          Size = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);
          if (Size)
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IODSPInfo.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 154;
            *&buf[18] = 1024;
            *&buf[20] = v80;
            _os_log_debug_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Adding reference candidate with (Device ID: %u)", buf, 0x18u);
          }

          v87 = *(v71 + 18);
          v86 = *(v71 + 19);
          if (v87 >= v86)
          {
            v88 = *(v71 + 17);
            v89 = v87 - v88;
            v90 = (v87 - v88) >> 2;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v92 = v86 - v88;
            if (v92 >> 1 > v91)
            {
              v91 = v92 >> 1;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v93 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v93);
            }

            v94 = v90;
            v95 = (4 * v90);
            v96 = &v95[-v94];
            *v95 = v80;
            v79 = v95 + 1;
            memcpy(v96, v88, v89);
            Size = *(v71 + 17);
            *(v71 + 17) = v96;
            *(v71 + 18) = v79;
            *(v71 + 19) = 0;
            if (Size)
            {
              operator delete(Size);
            }
          }

          else
          {
            *v87 = v80;
            v79 = v87 + 4;
          }

          *(v71 + 18) = v79;
        }

        ++v77;
      }

      while (v77 != v78);
      v77 = v114;
    }

    if (v77)
    {
      *(&v114 + 1) = v77;
      operator delete(v77);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v135);
  OS::CF::UntypedObject::~UntypedObject(v137);
}

void sub_1DE68172C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(HALS_IOContextDescription *this, unsigned int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  v3 = *(this + 5);
  while (v4 != v3)
  {
    if (!*(v4->i64[0] + 824))
    {
      v5 = (v3 - 8);
      do
      {
        v6 = v5 - v4;
        if (v5 == v4)
        {
          v3 = v4;
          goto LABEL_21;
        }

        v7 = v5;
        v8 = v5->i64[0];
        v5 = (v5 - 8);
      }

      while (!*(v8 + 824));
      v9 = v6 >> 3;
      v10 = v9 + 1;
      if (v9 < 3)
      {
        v16 = 0;
        v11 = 0;
      }

      else
      {
        if (v10 >= 0xFFFFFFFFFFFFFFFLL)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9 + 1;
        }

        v12 = MEMORY[0x1E69E5398];
        while (1)
        {
          v13 = operator new(8 * v11, v12);
          if (v13)
          {
            break;
          }

          v14 = v11 >> 1;
          v15 = v11 > 1;
          v11 >>= 1;
          if (!v15)
          {
            v16 = 0;
            v11 = v14;
            goto LABEL_19;
          }
        }

        v16 = v13;
      }

LABEL_19:
      v3 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(v4, v7, v10, v16, v11);
      if (v16)
      {
        operator delete(v16);
      }

      break;
    }

    v4 = (v4 + 8);
  }

LABEL_21:
  v18 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315394;
    v29 = "HALS_IOContextDescription.cpp";
    v30 = 1024;
    v31 = 1168;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines: IOContextDescription has outlived owning IOContext", &v28, 0x12u);
  }

  for (i = v3; ; i = (i + 8))
  {
    v20 = *(this + 5);
    if (i == v20)
    {
      break;
    }

    v21 = i->i64[0];
    v22 = *(i->i64[0] + 88);
    if (v22)
    {
      if (v18)
      {
        if (*(v21 + 940) == 1)
        {
          (*(*v22 + 216))(v22, v18);
          v21 = i->i64[0];
          v22 = *(i->i64[0] + 88);
        }
      }

      *(v21 + 940) = 0;
      HALS_ObjectMap::ReleaseObject_LongTerm(v22, v17);
      *(i->i64[0] + 88) = 0;
    }
  }

  if (v3 == i)
  {
    v3 = *(this + 5);
    if (!v18)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  while (v20 != v3)
  {
    v24 = v20[-1].i64[1];
    v20 = (v20 - 8);
    v23 = v24;
    v20->i64[0] = 0;
    if (v24)
    {
      (*(*v23 + 8))(v23);
    }
  }

  *(this + 5) = v3;
  if (v18)
  {
LABEL_40:
    for (j = *(this + 4); j != v3; j = (j + 8))
    {
      v26 = j->i64[0];
      if (*(j->i64[0] + 824) == 1)
      {
        v27 = *(v26 + 88);
        if (v27 && (*(v26 + 940) & 1) == 0)
        {
          (*(*v27 + 208))(v27, v18);
          v26 = j->i64[0];
          *(j->i64[0] + 940) = 1;
        }

        *(v26 + 824) = 2;
      }
    }
  }

LABEL_47:
  HALS_ObjectMap::ReleaseObject(v18, v17);
}

void sub_1DE681BD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(int8x16_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v10 = &a1->i64[1];
    v9 = a1->i64[1];
    if (!*(v9 + 824))
    {
      a1->i64[1] = *a2;
      *a2 = v9;
      *a1 = vextq_s8(*a1, *a1, 8uLL);
      return v10;
    }

    v11 = a1->i64[0];
    a1->i64[0] = v9;
    a1->i64[1] = v11;
    a1->i64[1] = *a2;
    *a2 = v11;
    return a2;
  }

  if (a3 == 2)
  {
    v8 = a1->i64[0];
    a1->i64[0] = *a2;
    *a2 = v8;
    return a2;
  }

  if (a5 >= a3)
  {
    v19 = a1->i64[0];
    a1->i64[0] = 0;
    v20 = &a1->i64[1];
    *a4 = v19;
    v21 = a4 + 1;
    v22 = 1;
    while (v20 != a2)
    {
      v23 = *v20;
      v24 = *(*v20 + 824);
      *v20 = 0;
      if (v24)
      {
        v25 = v6->i64[0];
        v6->i64[0] = v23;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }

        v6 = (v6 + 8);
      }

      else
      {
        *v21++ = v23;
        ++v22;
      }

      ++v20;
    }

    v26 = *v20;
    *v20 = 0;
    v27 = v6->i64[0];
    v6->i64[0] = v26;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v10 = &v6->i64[1];
    if (v21 > a4)
    {
      v28 = &v6->i64[1];
      v29 = a4;
      do
      {
        v30 = *v29;
        *v29 = 0;
        v31 = *v28;
        *v28 = v30;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        ++v29;
        ++v28;
      }

      while (v29 < v21);
    }

    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        v33 = a4[i];
        a4[i] = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }
      }
    }
  }

  else
  {
    v15 = a3 / 2;
    v16 = (a1 + 8 * (a3 / 2));
    v17 = &v16[-1].i64[1];
    if (*(v16[-1].i64[1] + 824))
    {
      v18 = a3 / 2;
LABEL_36:
      v36 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(a1, v17, v18, a4, a5);
    }

    else
    {
      v34 = 8 - 8 * v15;
      v18 = a3 / 2;
      while (v34)
      {
        --v18;
        v35 = *--v17;
        v34 += 8;
        if (*(v35 + 824))
        {
          goto LABEL_36;
        }
      }

      v36 = a1;
    }

    v37 = a3 - v15;
    if (*(v6->i64[v15] + 824))
    {
      v10 = a2 + 1;
      v38 = &v16->i64[1];
      while (v38 != a2)
      {
        v39 = v38;
        --v37;
        v40 = *v38++;
        if (!*(v40 + 824))
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v39 = (v6 + 8 * (a3 / 2));
LABEL_43:
      v10 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(v39, a2, v37, a4, a5);
    }

    if (v36 != v16)
    {
      if (v16 != v10)
      {
        v41 = v36->i64[0];
        v36->i64[0] = v16->i64[0];
        v36 = (v36 + 8);
        v42 = v16;
        while (1)
        {
          *v42++ = v41;
          if (v42 == v10)
          {
            break;
          }

          if (v36 == v16)
          {
            v16 = v42;
          }

          v41 = v36->i64[0];
          v36->i64[0] = *v42;
          v36 = (v36 + 8);
        }

        if (v36 != v16)
        {
          v43 = v36;
          v44 = v16;
          do
          {
            while (1)
            {
              v45 = v43->i64[0];
              v43->i64[0] = *v44;
              v43 = (v43 + 8);
              *v44++ = v45;
              if (v44 == v10)
              {
                break;
              }

              if (v43 == v16)
              {
                v16 = v44;
              }
            }

            v44 = v16;
          }

          while (v43 != v16);
        }
      }

      return v36;
    }
  }

  return v10;
}

uint64_t HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(HALS_IOContextDescription *this, const __CFString *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v78[1] = 0;
  v79 = 0;
  v78[0] = 0;
  HALS_System::GetInstance(&v80, 0, v78);
  v4 = *&v80.mSampleRate;
  *__p = 0;
  std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(buf, __p, 1);
  v5 = HALS_System::CopyDeviceByUID(v4, a2, 0, buf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
  v6 = *&v80.mFormatID;
  if (*&v80.mFormatID)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v80.mFormatID);
  }

  if (!v5)
  {
    goto LABEL_51;
  }

  if (AMCP::Feature_Flags::allow_unified_device_engine_replacer(v6))
  {
    v8 = HALS_Device::CopyIOEngineReplacerOwningDevice(v5);
    if (v8)
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(v5, 0);
      v10 = HALS_IODevice::GetNumberStreams(v5, 1);
      v11 = HALS_IODevice::GetNumberStreams(v8, 0);
      v12 = HALS_IODevice::GetNumberStreams(v8, 1);
      if (NumberStreams == v11 && v10 == v12)
      {
        v71 = v5;
        v13 = HALS_IODevice::CopyIOEngine(v8);
        v14 = HALS_IODevice::CopyIOEngine(v8);
        HALS_ObjectMap::RetainObject(v14, v15);
        if (NumberStreams)
        {
          v17 = 0;
          v18 = 0uLL;
          while (1)
          {
            v88 = 0;
            *buf = v18;
            *&buf[16] = v18;
            (*(*v13 + 456))(v13, 0, v17, buf);
            memset(&v80, 0, sizeof(v80));
            (*(*v14 + 456))(v14, 0, v17, &v80);
            if (*buf != v80.mSampleRate || *&buf[8] != v80.mFormatID || *&buf[16] != v80.mBytesPerPacket || *&buf[20] != v80.mFramesPerPacket || *&buf[28] != v80.mChannelsPerFrame || v88 != v80.mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags(buf, &v80, 0))
            {
              break;
            }

            v17 = (v17 + 1);
            v18 = 0uLL;
            if (NumberStreams == v17)
            {
              v20 = 0;
              while (1)
              {
                v88 = 0;
                *buf = v18;
                *&buf[16] = v18;
                (*(*v13 + 456))(v13, 0, v20, buf);
                memset(&v80, 0, sizeof(v80));
                (*(*v14 + 456))(v14, 0, v20, &v80);
                if (*buf != v80.mSampleRate || *&buf[8] != v80.mFormatID || *&buf[16] != v80.mBytesPerPacket || *&buf[20] != v80.mFramesPerPacket || *&buf[28] != v80.mChannelsPerFrame || v88 != v80.mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags(buf, &v80, 0))
                {
                  break;
                }

                v20 = (v20 + 1);
                v21 = 1;
                v18 = 0uLL;
                if (NumberStreams == v20)
                {
                  goto LABEL_41;
                }
              }

              HALS_ObjectMap::ReleaseObject(v13, v16);
              v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              v5 = v71;
              if ((v67 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v66);
              }

              v69 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v68)
              {
                atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
                v30 = *v69;
                std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              }

              else
              {
                v30 = *v69;
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 6346;
                v70 = "%32s:%-5d The engine replacer input format differs from this device";
                goto LABEL_112;
              }

              goto LABEL_44;
            }
          }

          HALS_ObjectMap::ReleaseObject(v13, v19);
          v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          v5 = v71;
          if ((v27 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v26);
          }

          v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            v30 = *v29;
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          else
          {
            v30 = *v29;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6339;
            v70 = "%32s:%-5d The engine replacer output format differs from this device";
LABEL_112:
            _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, v70, buf, 0x12u);
          }

LABEL_44:
          v13 = 0;
          v21 = 0;
        }

        else
        {
          v21 = 1;
LABEL_41:
          v5 = v71;
        }

        HALS_ObjectMap::ReleaseObject(v14, v16);
        HALS_ObjectMap::ReleaseObject(v14, v31);
LABEL_46:
        HALS_ObjectMap::ReleaseObject(v8, v7);
        if (v21)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 6311;
        _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d The engine replacer number of streams differs from this device", buf, 0x12u);
      }
    }

    v13 = 0;
    v21 = 0;
    goto LABEL_46;
  }

LABEL_47:
  v13 = 0;
LABEL_48:
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (!v13)
  {
LABEL_51:
    v13 = 0;
    goto LABEL_52;
  }

  v32 = (*(*v13 + 336))(v13);
  v33 = (*(*v32 + 208))(v32);
  applesauce::CF::StringRef::from_get(__p, v33);
  v34 = *__p;
  v79 = *__p;
  if (*__p)
  {
    applesauce::CF::StringRef::from_get(&cf, *__p);
    v35 = 0;
    goto LABEL_53;
  }

LABEL_52:
  applesauce::CF::StringRef::from_get(&cf, a2);
  v34 = 0;
  v35 = 1;
LABEL_53:
  v36 = cf;
  if (!cf)
  {
    EngineInfoForDeviceUID = 0;
    goto LABEL_104;
  }

  if (v13)
  {
    v37 = *(this + 4);
    v38 = *(this + 5);
    if (v37 != v38)
    {
      while (*(*v37 + 88) != v13)
      {
        if (++v37 == v38)
        {
          goto LABEL_62;
        }
      }
    }

    if (v37 == v38)
    {
      goto LABEL_62;
    }

    EngineInfoForDeviceUID = *v37;
    if (!*v37)
    {
      goto LABEL_62;
    }
  }

  else
  {
    EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, cf);
    if (!EngineInfoForDeviceUID)
    {
LABEL_62:
      v74[0] = 0;
      v74[1] = 0;
      HALS_System::GetInstance(&v75, 0, v74);
      v40 = v75;
      v41 = cf;
      v73 = 0;
      std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(__p, &v73, 1);
      v42 = HALS_System::CopyDeviceByUID(v40, v41, 0, __p);
      v43 = v42;
      if (!v42 || (v45 = HALS_IODevice::CopyIOEngine(v42)) == 0)
      {
        v81[0] = 0;
        v81[1] = 0;
        HALS_System::GetInstance(&v82, 0, v81);
        v47 = HALS_System::CopyTapByUUID(v82, v41);
        v48 = v5;
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (v47)
        {
          v49 = *(v47 + 33);
          v50 = *(v47 + 34);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
            v45 = HALS_MultiTap::copy_engine(v49, v46);
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          else
          {
            v45 = HALS_MultiTap::copy_engine(v49, v46);
          }
        }

        else
        {
          v45 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v47, v46);
        v5 = v48;
      }

      HALS_ObjectMap::ReleaseObject(v43, v44);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(__p);
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (v45)
      {
        goto LABEL_88;
      }

      v72[0] = 0;
      v72[1] = 0;
      HALS_System::GetInstance(&v82, 0, v72);
      v55 = v82;
      v56 = cf;
      LODWORD(v81[0]) = 0;
      std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(__p, v81, 1);
      v57 = HALS_System::CopyClockDeviceByUID(v55, v56, __p);
      v59 = v57;
      if (v57)
      {
        v60 = HALS_IODevice::CopyIOEngine(v57);
      }

      else
      {
        v60 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v59, v58);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(__p);
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v60)
      {
LABEL_88:
        operator new();
      }

      EngineInfoForDeviceUID = 0;
      goto LABEL_102;
    }
  }

  if (!*(EngineInfoForDeviceUID + 824))
  {
    v51 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
    if (v51)
    {
      v52 = *(EngineInfoForDeviceUID + 936);
      v53 = *(this + 123);
      if (v52 == v53)
      {
LABEL_94:
        UpdateEngineInfoCache(EngineInfoForDeviceUID, v52);
        *(EngineInfoForDeviceUID + 824) = 1;
        HALS_ObjectMap::ReleaseObject(v51, v61);
        goto LABEL_95;
      }

      v54 = *(EngineInfoForDeviceUID + 88);
      if (v54 && *(EngineInfoForDeviceUID + 940) == 1)
      {
        (*(*v54 + 216))(v54, v51);
        v53 = *(this + 123);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "HALS_IOContextDescription.cpp";
        v85 = 1024;
        v86 = 546;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo: IOContextDescription has outlived owning IOContext", __p, 0x12u);
      }

      v52 = *(EngineInfoForDeviceUID + 936);
      v53 = *(this + 123);
      if (v52 == v53)
      {
        goto LABEL_94;
      }
    }

    *(EngineInfoForDeviceUID + 940) = 0;
    v52 = v53;
    goto LABEL_94;
  }

LABEL_95:
  if (v5)
  {
    v62 = v35;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(v5 + 4);
  }

  *(EngineInfoForDeviceUID + 944) = v63;
LABEL_102:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_104:
  HALS_ObjectMap::ReleaseObject(v13, v36);
  HALS_ObjectMap::ReleaseObject(v5, v64);
  if ((v35 & 1) == 0)
  {
    CFRelease(v34);
  }

  return EngineInfoForDeviceUID;
}

void sub_1DE682C1C(_Unwind_Exception *exception_object, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, HALS_ObjectMap *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v37, a2);
    HALS_ObjectMap::ReleaseObject(v37, v39);
    HALS_ObjectMap::ReleaseObject(v36, v40);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6823B8);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(HALS_IOContextDescription *this, CFDictionaryRef theDict, const __CFDictionary *a3, HALS_IOEngineInfo *a4)
{
  v6 = this;
  if (theDict)
  {
    CFRetain(theDict);
  }

  v19 = &unk_1F5991008;
  theDicta = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v17, theDict, @"synch padding");
  v7 = OS::CF::Boolean::AsBool(v18, 1);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  *(a3 + 376) = v7;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v17, theDicta, @"drift");
  v8 = OS::CF::Boolean::AsBool(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v9 = *(a3 + 11);
  if (v9)
  {
    if (v8)
    {
      v10 = (*(*v9 + 472))(v9) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 377) = v10;
  }

  else
  {
    *(a3 + 377) = v8;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"drift algorithm");
  v11 = OS::CF::Number::GetValue<unsigned int>(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  *(a3 + 95) = v11;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"drift quality");
  v12 = OS::CF::Number::GetValue<unsigned int>(v18, 64);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v13 = *(a3 + 96);
  if (v13 <= v12)
  {
    v13 = v12;
  }

  *(a3 + 96) = v13;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"extra latency");
  v14 = OS::CF::Number::GetValue<int>(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v15 = a3 + 4 * v6;
  v16 = *(v15 + 102);
  if (v16 <= v14)
  {
    v16 = v14;
  }

  *(v15 + 102) = v16;
  OS::CF::UntypedObject::~UntypedObject(&v19);
}

void sub_1DE683070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void HALS_IOStreamInfo::HALS_IOStreamInfo(HALS_IOStreamInfo *this)
{
  *this = &unk_1F59910A0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0u;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 164) = 0;
  *(this + 23) = 0;
  *(this + 22) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 145) = 0u;
  *(this + 21) = this + 176;
  *(this + 228) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 136) = 0;
  *(this + 69) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 224) = 0;
  v2 = 0;
  std::vector<char>::vector[abi:ne200100](this + 35, 8, &v2);
  **(this + 35) = 0;
  v3 = 0;
  std::vector<char>::vector[abi:ne200100](this + 38, 24, &v3);
  **(this + 38) = 1;
  *(this + 328) = 0;
  *(this + 368) = 0;
  *(this + 376) = 0;
  *(this + 380) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 24) = 0u;
  *(this + 464) = 0;
}

void sub_1DE6831A8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 280);
  if (v4)
  {
    *(v1 + 288) = v4;
    operator delete(v4);
  }

  if (*(v1 + 264) == 1)
  {
    v5 = *(v1 + 240);
    if (v5)
    {
      *(v1 + 248) = v5;
      operator delete(v5);
    }
  }

  v6 = *(v1 + 216);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 200);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v1 + 176));
  v8 = *(v1 + 136);
  if (v8)
  {
    *(v1 + 144) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 112);
  if (v9)
  {
    *(v1 + 120) = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void HALS_IOStreamGroup::push_back(HALS_IOStreamGroup *this, HALS_IOStreamInfo *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xCBEEA4E1A08AD8F3 * ((v4 - *this) >> 3);
    if (v6 + 1 > 0x8AD8F2FBA93868)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCBEEA4E1A08AD8F3 * ((v3 - *this) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x456C797DD49C34)
    {
      v9 = 0x8AD8F2FBA93868;
    }

    else
    {
      v9 = v8;
    }

    v18 = this;
    if (v9)
    {
      std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](v9);
    }

    v15 = 0;
    v16 = 472 * v6;
    HALS_IOStreamInfo::HALS_IOStreamInfo((472 * v6), a2);
    v17 = 472 * v6 + 472;
    v10 = *(this + 1);
    v11 = 472 * v6 + *this - v10;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*>(*this, v10, v11);
    v12 = *this;
    *this = v11;
    v13 = *(this + 2);
    v14 = v17;
    *(this + 8) = v17;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v15 = v12;
    v16 = v12;
    std::__split_buffer<HALS_IOStreamInfo>::~__split_buffer(&v15);
    v5 = v14;
  }

  else
  {
    HALS_IOStreamInfo::HALS_IOStreamInfo(*(this + 1), a2);
    v5 = v4 + 472;
    *(this + 1) = v4 + 472;
  }

  *(this + 1) = v5;
}

void HALS_IOContextDescription::UpdateDSPStreamFormat(HALS_IOContextDescription *this, const AudioStreamBasicDescription *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v2 = *&a2->mBytesPerPacket;
  v4 = *&a2->mSampleRate;
  v5 = v2;
  v6 = *&a2->mBitsPerChannel;
  operator new();
}

uint64_t std::__split_buffer<HALS_IOStreamGroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOContextDescription::DiscoverDSPStreams(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v23, *(a1 + 16), (a1 + 16));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    while (v5 != v6)
    {
      v7 = *(*v5 + 88);
      if (v7)
      {
        DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v7 + 16), DeviceIDFromEngineID);
        LODWORD(v25) = DeviceIDFromEngineID;
        if (DeviceIDFromEngineID)
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v23, DeviceIDFromEngineID, &v25);
        }
      }

      v5 += 8;
    }

    v8 = v23;
    if (v23 != v24)
    {
      do
      {
        v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v8 + 7));
        if (v10)
        {
          v11 = 0;
          v12 = 12;
          do
          {
            v13 = v11;
            v14 = *(a1 + 492);
            std::mutex::lock((v10 + 704));
            v15 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v10 + 664), v14);
            if (v15 && (v17 = v15[v12]) != 0)
            {
              HALS_ObjectMap::RetainObject(v15[v12], v16);
              std::mutex::unlock((v10 + 704));
              v25 = v17;
              v18 = *(a2 + 24);
              if (!v18)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v18 + 48))(v18, &v25);
            }

            else
            {
              std::mutex::unlock((v10 + 704));
              v17 = 0;
            }

            HALS_ObjectMap::ReleaseObject(v17, v19);
            v11 = 1;
            v12 = 6;
          }

          while ((v13 & 1) == 0);
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        v20 = v8[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v8[2];
            v22 = *v21 == v8;
            v8 = v21;
          }

          while (!v22);
        }

        v8 = v21;
      }

      while (v21 != v24);
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v24[0]);
  }
}

void sub_1DE6836F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::mutex::unlock(v10 + 11);
  HALS_ObjectMap::ReleaseObject(v10, v12);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(HALS_DSPStream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0,std::allocator<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0>,void ()(HALS_DSPStream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription21UpdateDSPStreamFormatERK27AudioStreamBasicDescriptionE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0,std::allocator<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0>,void ()(HALS_DSPStream *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5987B40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t OS::CF::Boolean::AsBool(OS::CF::Boolean *this, uint64_t a2)
{
  if (this)
  {
    return CFBooleanGetValue(this) != 0;
  }

  return a2;
}

uint64_t HALS_IOContextDescription::GetEngineInfoForDeviceUID(HALS_IOContextDescription *this, CFStringRef theString1)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    while (1)
    {
      v6 = *(*v2 + 96);
      if (v6)
      {
        if (CFStringCompare(theString1, v6, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v2 += 8;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(this + 5);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void UpdateEngineInfoCache(HALS_IODevice *result, int a2)
{
  if (result)
  {
    v3 = *(result + 11);
    if (v3)
    {
      *(result + 234) = a2;
      *(result + 106) = (*(*v3 + 344))(v3);
      *(result + 214) = (*(**(result + 11) + 352))();
      *(result + 215) = (*(**(result + 11) + 376))();
      *(result + 864) = (*(**(result + 11) + 384))();
      *(result + 97) = (*(**(result + 11) + 400))();
      *(result + 99) = (*(**(result + 11) + 360))();
      *(result + 98) = (*(**(result + 11) + 360))();
      *(result + 831) = (*(**(result + 11) + 424))() != 0;
      *(result + 832) = (*(**(result + 11) + 424))() != 0;
      *(result + 209) = (*(**(result + 11) + 416))();
      *(result + 210) = (*(**(result + 11) + 416))();
      v4 = (*(**(result + 11) + 336))();
      if (v4)
      {
        v5 = v4;
        TransportType = HALS_IODevice::GetTransportType(v4);
        *(result + 844) = TransportType == 1651274862;
        if (TransportType == 1651274862 && ((*(result + 831) & 1) != 0 || *(result + 832) == 1))
        {
          v7 = (*(*v5 + 648))(v5, 1685287523, 1869968496, 0);
          v9 = v7;
          if (v7)
          {
            *(result + 845) = HALS_Control::GetSelectorControlValue(v7) == 1769173099;
          }

          HALS_ObjectMap::ReleaseObject(v9, v8);
        }
      }
    }
  }
}

uint64_t HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(CFDictionaryRef theDict, const OS::CF::Dictionary *a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v11, theDict, @"device id");
  v2 = OS::CF::Number::GetValue<unsigned int>(v11[1], 0);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v5 = v3;
  if (v3)
  {
    v6 = (*(*v3 + 472))(v3);
    v7 = v6 & 0xFF00000000;
    v8 = v6 & 0xFFFFFF00;
    v9 = v6;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  OS::CF::UntypedObject::~UntypedObject(v11);
  return v7 | v9 | v8;
}

void sub_1DE683E90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALS_ObjectMap::ReleaseObject(v9, a2);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation(CFTypeRef *this, CFTypeRef cf)
{
  v95 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    v68 = &unk_1F5991008;
    v69 = cf;
    HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState(this, v4);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, cf, @"device id");
    v5 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
    OS::CF::UntypedObject::~UntypedObject(buf);
    v8 = *(this + 4);
    if (v8 && v5 != v8)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextDescription.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 376;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContextDescription::SetFromCFRepresentation: the owning device is different", buf, 0x12u);
      }
    }

    *(this + 4) = v5;
    v14 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v69, v7);
    *(this + 130) = v14;
    *(this + 524) = BYTE4(v14);
    HALS_IOContextDescription::SetFromCFRepresentation_FindMaster(this, cf);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams(this, cf);
    CFRetain(cf);
    __dst = &unk_1F5991008;
    v77 = cf;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v78, cf, @"taps");
    v15 = v79;
    if (v79)
    {
      for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v15) > i; ++i)
      {
        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v72, &v78, i);
        if (v73)
        {
          OS::CF::UntypedObject::UntypedObject(&cfa, v73);
          cfa = &unk_1F5991008;
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v75, theDict, @"uid");
          EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v75.__r_.__value_.__l.__size_);
          if (EngineInfo)
          {
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, theDict, @"drift");
            *(EngineInfo + 377) = OS::CF::Boolean::AsBool(*&buf[8], 1);
            OS::CF::UntypedObject::~UntypedObject(buf);
            *(EngineInfo + 380) = 0;
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"drift quality");
            *(EngineInfo + 384) = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 64);
            OS::CF::UntypedObject::~UntypedObject(buf);
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"latency-out");
            *(EngineInfo + 408) = OS::CF::Number::GetValue<int>(*&buf[8], 0);
            OS::CF::UntypedObject::~UntypedObject(buf);
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"latency-in");
            *(EngineInfo + 412) = OS::CF::Number::GetValue<int>(*&buf[8], 0);
            OS::CF::UntypedObject::~UntypedObject(buf);
            HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
            v94 = EngineInfo;
            buf[8] = 1;
            *&buf[12] = 0;
            v18 = *(EngineInfo + 88);
            if (v18)
            {
              v82 = 0;
              v80 = 0u;
              v81 = 0u;
              (*(*v18 + 448))(v18, 1, 0, &v80);
              v91 = v80;
              v92 = v81;
              v93 = v82;
              if (v86)
              {
                v87 = v80;
                v88 = v81;
                v89 = v82;
                if ((v90 & 1) == 0)
                {
                  v90 = 1;
                }
              }

              v85 = (*(**(EngineInfo + 88) + 440))(*(EngineInfo + 88), buf[8], *&buf[12]);
            }

            HALS_IOStreamGroup::push_back((this + 7), buf);
            ++*(this + 58);
            HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
          }

          OS::CF::UntypedObject::~UntypedObject(&v75);
          OS::CF::UntypedObject::~UntypedObject(&cfa);
        }

        OS::CF::UntypedObject::~UntypedObject(v72);
        v15 = v79;
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, v77, @"tapautostart");
      *(this + 229) = OS::CF::Boolean::AsBool(*&buf[8]);
      OS::CF::UntypedObject::~UntypedObject(buf);
    }

    OS::CF::UntypedObject::~UntypedObject(&v78);
    OS::CF::UntypedObject::~UntypedObject(&__dst);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams(this, cf);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(this, v19);
    CFRetain(cf);
    v20 = this[4];
    v21 = this[5];
    while (v20 != v21)
    {
      v22 = *(*v20 + 88);
      if (v22 && (*(*v22 + 312))(v22))
      {
        *(this + 216) = 1;
        break;
      }

      v20 += 8;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, v69, @"LDCM");
    *(this + 228) = OS::CF::Boolean::AsBool(*&buf[8]);
    OS::CF::UntypedObject::~UntypedObject(buf);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v72, v69, @"VAD power assertion category");
    if (v73)
    {
      *(this + 55) = OS::CF::Number::GetValue<unsigned int>(v73, 0);
      *(this + 224) = 1;
    }

    v23 = this[1];
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = this[7];
    this[1] = cf;
    v25 = this[10];
    v26 = this[11];
    std::vector<BOOL>::resize(this + 16, 0xCBEEA4E1A08AD8F3 * ((this[8] - v24) >> 3), 1);
    std::vector<BOOL>::resize(this + 13, (v26 - v25) >> 5, 1);
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      v27 = this[34];
      if (v27)
      {
        v28 = *(v27 + 18);
        v29 = *(v27 + 19);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v28 && (v30 = (*(**(v28 + 8) + 72))(*(v28 + 8)), v30))
        {
          v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v31 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            v34 = *v33;
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          else
          {
            v34 = *v33;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v40 = this[34];
            if (v40)
            {
              v41 = this[35];
              if (v41)
              {
                atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v41 = 0;
            }

            v43 = (*(*v40 + 48))(v40);
            if ((v43 & 0x100000000) != 0)
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            *buf = 136315650;
            *&buf[4] = "HALS_IOContextDescription.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 299;
            *&buf[18] = 1024;
            *&buf[20] = v44;
            _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] (Context ID: %d) Input DSP is currently locked and cannot be reconfigured.", buf, 0x18u);
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }
          }
        }

        else
        {
          *&v80 = cf;
          *(&v80 + 1) = this + 7;
          *&v81 = this + 10;
          *(&v81 + 1) = &unk_1F59879D0;
          v82 = this;
          v83 = &v81 + 8;
          v74 = 0;
          if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
          {
            v35 = this[34];
            if (v35)
            {
              v37 = *(v35 + 18);
              v36 = *(v35 + 19);
              if (v36)
              {
                atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v37)
              {
                v74 = 0;
                applesauce::CF::DictionaryRef::from_get(buf, v80);
                if (*buf)
                {
                  v38 = applesauce::CF::details::at_key<__CFString const*>(*buf, @"device id");
                  if (v38)
                  {
                    v39 = applesauce::CF::convert_as<unsigned int,0>(v38);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (*buf)
                  {
                    CFRelease(*buf);
                  }

                  v42 = this[34];
                  v42[23] = v39;
                  *(v42 + 96) = BYTE4(v39);
                  operator new();
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              if (v36)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v36);
              }

              if (v74)
              {
                CFRelease(v74);
              }
            }
          }

          std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](&v81 + 8);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }
      }
    }

    OS::CF::UntypedObject::~UntypedObject(v72);
    OS::CF::UntypedObject::~UntypedObject(&v68);
  }

  else
  {
    HALS_IOContextDescription::SetToEmpty(this, 0);
    v13 = this[1];
    if (v13)
    {
      CFRelease(v13);
    }

    this[1] = 0;
  }

  HALS_IOContextDescription::CalculateEngineSynchOffsets(this);
  if (0xCBEEA4E1A08AD8F3 * ((this[8] - this[7]) >> 3) != *(this + 34))
  {
    v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v46 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v45);
    }

    v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      v49 = *v48;
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    else
    {
      v49 = *v48;
    }

    v45 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 469;
      _os_log_error_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", buf, 0x12u);
    }
  }

  if (*(this + 28) != (this[11] - this[10]) >> 5)
  {
    v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v50 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v45);
    }

    v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      v53 = *v52;
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    else
    {
      v53 = *v52;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 470;
      _os_log_error_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", buf, 0x12u);
    }
  }

  v54 = applesauce::CF::DictionaryRef::from_get(&__dst, this[1]);
  if (__dst)
  {
    v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v55 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v54);
    }

    v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v58 = *v57;
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      v58 = *v57;
    }

    v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v59 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v56);
    }

    v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      v62 = os_signpost_id_generate(*v60);
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    else
    {
      v62 = os_signpost_id_generate(*v60);
    }

    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      v63 = *(this + 4);
      v64 = *(this + 122);
      v65 = CFCopyDescription(__dst);
      v75.__r_.__value_.__r.__words[0] = v65;
      applesauce::CF::details::CFString_get_value<true>(&v80, v65);
      if (v65)
      {
        CFRelease(v65);
      }

      v66 = &v80;
      if (SBYTE7(v81) < 0)
      {
        v66 = v80;
      }

      *buf = 67109634;
      *&buf[4] = v63;
      *&buf[8] = 1024;
      *&buf[10] = v64;
      *&buf[14] = 2080;
      *&buf[16] = v66;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v58, OS_SIGNPOST_EVENT, v62, "Device Description", "Device %u, Context %u\n%s", buf, 0x18u);
      if (SBYTE7(v81) < 0)
      {
        operator delete(v80);
      }
    }

    if (__dst)
    {
      CFRelease(__dst);
    }
  }
}

void sub_1DE685DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, HALS_ObjectMap *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, HALS_ObjectMap *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  HALS_DSPHostIntegrationPoint_IOContextHelper::populate_ec_reference_proxy(void)::ECReferenceLog::~ECReferenceLog(&a31);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
  std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  OS::CF::UntypedObject::~UntypedObject(&a28);
  OS::CF::UntypedObject::~UntypedObject(&a24);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOContextDescription::SetToEmpty(HALS_IOContextDescription *this, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_IOContextDescription.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1215;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetToEmpty: IOContextDescription has outlived owning IOContext", buf, 0x12u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZN25HALS_IOContextDescription10SetToEmptyEv_block_invoke;
  v15[3] = &__block_descriptor_tmp_89_16991;
  v15[4] = this;
  v16 = v4;
  HALS_ObjectMap::RetainObject(v4, v3);
  v17 = v15;
  v18[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v18[1] = &v17;
  v19 = v18;
  *buf = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *&buf[8] = &v19;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(*(this + 4), *(this + 5), buf);
  *(this + 3) = 0;
  std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](this + 4);
  v6 = *(this + 7);
  v5 = *(this + 8);
  if (v5 != v6)
  {
    v7 = v5 - 59;
    v8 = v5 - 59;
    do
    {
      (**v8)(v8);
      v7 -= 59;
      v9 = v8 == v6;
      v8 -= 59;
    }

    while (!v9);
  }

  *(this + 8) = v6;
  v11 = *(this + 10);
  v10 = *(this + 11);
  if (v10 != v11)
  {
    do
    {
      v12 = v10 - 32;
      *buf = v10 - 24;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](buf);
      v10 = v12;
    }

    while (v12 != v11);
  }

  *(this + 11) = v11;
  *(this + 17) = 0;
  *(this + 14) = 0;
  HALS_IOContextDescription::CalculateEngineSynchOffsets(this);
  *(this + 216) = 0;
  *(this + 114) = 0;
  *(this + 58) = 0;
  if (v4)
  {
    (*(**(v4 + 13) + 232))(*(v4 + 13));
  }

  HALS_ObjectMap::ReleaseObject(v16, v13);
  HALS_ObjectMap::ReleaseObject(v4, v14);
}

void sub_1DE686410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HALS_ObjectMap *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContextDescription::CalculateEngineSynchOffsets(HALS_IOContextDescription *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      if (*(this + 4) != *(this + 5))
      {
        v40 = 0;
        v41 = 0;
        v4 = (*(*v3 + 344))(v3);
        v5 = *(this + 4);
        v6 = *(this + 5);
        if (v5 != v6)
        {
          do
          {
            v7 = *(*v5 + 88);
            if (v7 && *(*v5 + 376) == 1)
            {
              v8 = (*(*v7 + 344))(v7);
              v9 = 0;
              v10 = &v41;
              v11 = 1;
              do
              {
                v12 = v11;
                v13 = (*(**(*v5 + 88) + 368))(*(*v5 + 88), v9 & 1);
                v14 = (*(**(*v5 + 88) + 360))();
                v11 = 0;
                v15 = v14 + v13;
                v16 = vcvtad_u64_f64(v4 / v8 * (v14 + v13));
                if (v8 != v4)
                {
                  v15 = v16;
                }

                if (*v10 > v15)
                {
                  v15 = *v10;
                }

                *v10 = v15;
                v10 = &v40;
                v9 = 1;
              }

              while ((v12 & 1) != 0);
            }

            ++v5;
          }

          while (v5 != v6);
          v5 = *(this + 4);
          v6 = *(this + 5);
        }

        while (v5 != v6)
        {
          v17 = *v5;
          v18 = *(*v5 + 88);
          if (v18 && *(v17 + 376) == 1)
          {
            v19 = (*(*v18 + 344))(v18);
            v20 = 0;
            v21 = 0;
            v22 = *v5;
            v23 = &v41;
            v24 = 1;
            do
            {
              v25 = v24;
              v26 = (*(**(v22 + 88) + 368))(*(v22 + 88), v20 & 1);
              v27 = (*(**(*v5 + 88) + 360))();
              v28 = *v5;
              *(*v5 + 4 * v21 + 392) = v27;
              if (v19 == v4)
              {
                v29 = *v23 - v26 - v27;
              }

              else
              {
                v29 = (v19 / v4 * (*v23 - vcvtad_u64_f64(v4 / v19 * (v27 + v26))));
              }

              v30 = (*(**(v28 + 88) + 352))(*(v28 + 88));
              v22 = *v5;
              v31 = (*v5 + 4 * v21);
              v32 = v31[102];
              if (v30 && (v33 = v32 + v29, v32 + v29 >= v30 >> 2))
              {
                v32 = 0;
                v29 = 0;
              }

              else
              {
                v33 = 0;
              }

              v24 = 0;
              v31[100] = v32;
              v31[104] = v29;
              v23 = &v40;
              v20 = 1;
              v21 = 1;
              v31[106] = v33;
            }

            while ((v25 & 1) != 0);
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 1;
            do
            {
              v37 = v36;
              v38 = *(v17 + 88);
              if (v38)
              {
                LODWORD(v38) = (*(*v38 + 360))(v38, v34 & 1);
                v17 = *v5;
              }

              v36 = 0;
              v39 = (v17 + 4 * v35);
              v39[98] = v38;
              v39[100] = v39[102];
              v39[104] = 0;
              v39[106] = 0;
              v34 = 1;
              v35 = 1;
            }

            while ((v37 & 1) != 0);
          }

          ++v5;
        }
      }
    }
  }
}

uint64_t ___ZN25HALS_IOContextDescription10SetToEmptyEv_block_invoke(uint64_t a1, uint64_t a2)
{
  std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((a2 + 800));
  std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((a2 + 776));
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5 && *(a2 + 940) == 1)
    {
      (*(*v4 + 216))(v4);
      v4 = *(a2 + 88);
    }

    *(a2 + 940) = 0;
    HALS_ObjectMap::ReleaseObject_LongTerm(v4, v5);
    *(a2 + 88) = 0;
  }

  return 0;
}

void __copy_helper_block_e8_40c37_ZTS13HALS_ReleaserI14HALS_IOContextE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t std::__function::__func<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0,std::allocator<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0>,BOOL ()(AMCP::Direction,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription35SetFromCFRepresentation_EvaluateDSPEPK14__CFDictionaryE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0,std::allocator<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0>,BOOL ()(AMCP::Direction,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59879D0;
  a2[1] = v2;
  return result;
}

uint64_t HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(unsigned int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *buf = xmmword_1DE79B5A4;
  *&buf[16] = 10;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v15, buf, 5);
  *buf = xmmword_1DE7581B0;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v14, buf, 4);
  *buf = xmmword_1DE79B5B8;
  *&buf[16] = unk_1DE79B5C8;
  v18 = 10;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v13, buf, 9);
  v3 = v16[0];
  if (!v16[0])
  {
    goto LABEL_10;
  }

  v4 = v16;
  do
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v3 + 7);
    if (v7 >= v2)
    {
      v4 = v3;
    }

    v3 = v3[v7 < v2];
  }

  while (v3);
  if (v4 == v16)
  {
    goto LABEL_10;
  }

  if (v7 < v2)
  {
    v5 = v6;
  }

  if (*(v5 + 7) > v2)
  {
LABEL_10:
    v4 = v16;
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v13[1]);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v14[1]);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v16[0]);
  if (v4 == v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 712;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Processing type is not supported on this platform", buf, 0x12u);
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *a1;
    if ((HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::isAppleInternal & 1) != 0 || v8 != 2)
    {
      v9 = v8 & 0xFFFFFF00;
      v11 = *a1;
      v10 = 0x100000000;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextDescription.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 722;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Vocal Isolation Conferencing mode is unsupported", buf, 0x12u);
      }

      v9 = 0;
      v10 = 0x100000000;
      v11 = 3;
    }
  }

  return v10 | v9 | v11;
}

void sub_1DE686C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a14);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a17);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize(HALS_IOContextDescription *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      (*(*v3 + 344))(v3);
      v5 = *(this + 4);
      v6 = *(this + 5);
      if (v5 != v6)
      {
        v7 = v4;
        v8 = -1;
        do
        {
          v9 = *(*v5 + 88);
          if (v9)
          {
            v10 = (*(*v9 + 352))(v9);
            v11 = (*(**(*v5 + 88) + 344))();
            if (v11 != v7)
            {
              v10 = (v7 / v11 * v10);
            }

            if (v10 < v8)
            {
              v8 = v10;
            }
          }

          v5 += 8;
        }

        while (v5 != v6);
      }
    }
  }
}

uint64_t HALS_IOContextDescription::PickMasterEngine(HALS_IOContextDescription *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 3) = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_9;
  }

  CFRetain(*(this + 1));
  v3 = 0;
  *&v10 = &unk_1F5991008;
  *(&v10 + 1) = v2;
  v11 = @"clock device uid";
  v12 = @"master uid";
  do
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v8, *(&v10 + 1), *(&v11 + v3));
    if (theString1)
    {
      EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, theString1);
      if (EngineInfoForDeviceUID)
      {
        if (*(EngineInfoForDeviceUID + 88))
        {
          *(this + 3) = EngineInfoForDeviceUID;
        }
      }
    }

    OS::CF::UntypedObject::~UntypedObject(&v8);
    v3 += 8;
  }

  while (v3 != 16);
  OS::CF::UntypedObject::~UntypedObject(&v10);
  v5 = *(this + 3);
  if (!v5)
  {
LABEL_9:
    for (i = *(this + 4); ; ++i)
    {
      if (i == *(this + 5))
      {
        v5 = 0;
        goto LABEL_16;
      }

      v5 = *i;
      if (*i)
      {
        if (*(v5 + 88))
        {
          break;
        }
      }
    }

    *(this + 3) = v5;
  }

LABEL_16:
  v8 = v5;
  v11 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>;
  v12 = &v8;
  *&v10 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v10 + 1) = &v11;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), &v10);
}

void sub_1DE686F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  if (v3)
  {
    v4 = *(v3 + 88);
    if (v4)
    {
      v6 = (*(*v4 + 344))(v4, a2);
      if (*(a3 + 108))
      {
        v8 = v7;
        if (*(a3 + 368) & 1) != 0 || (HALS_IODSPInfo::GetClientFormat(&v15, (a3 + 112)), (*(a3 + 368)))
        {
          if (*(a3 + 328) != v8)
          {
            v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v9 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v6);
            }

            v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              v12 = *v11;
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            else
            {
              v12 = *v11;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(a3 + 328);
              v15 = 136315906;
              v16 = "HALS_IODSPInfo.cpp";
              v17 = 1024;
              v18 = 121;
              v19 = 2048;
              v20 = v14;
              v21 = 2048;
              v22 = v8;
              _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Replacing client sample rate on DSP Info from %6.1f to %6.1f", &v15, 0x26u);
            }
          }

          *(a3 + 328) = v8;
        }
      }
    }
  }

  return 0;
}

uint64_t HALS_IOContextDescription::DeviceDied(HALS_IOContextDescription *this, const __CFString *a2)
{
  result = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, a2);
  if (result)
  {
    v5 = result;
    v6 = *(result + 368);
    *(v5 + 368) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    HALS_ObjectMap::ReleaseObject_LongTerm(*(v5 + 88), v4);
    *(v5 + 88) = 0;
    *(v5 + 940) = 0;

    return HALS_IOContextDescription::PickMasterEngine(this);
  }

  return result;
}

uint64_t HALS_IOContextDescription::HasClockDevice(HALS_IOContextDescription *this, const __CFString *a2)
{
  if (!this)
  {
    goto LABEL_5;
  }

  CFRetain(this);
  v8[0] = &unk_1F5991008;
  v8[1] = this;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v6, this, @"clock device uid");
  v4 = theString1;
  if (theString1)
  {
    LOBYTE(a2) = CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
  }

  OS::CF::UntypedObject::~UntypedObject(&v6);
  OS::CF::UntypedObject::~UntypedObject(v8);
  if (!v4)
  {
LABEL_5:
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

void sub_1DE6872A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextDescription::GetOutputStackDescriptionForChannel(HALS_IOContextDescription *this, unsigned int a2, HALS_IOStackDescription *a3, unsigned int *a4)
{
  v4 = *(this + 11) - *(this + 10);
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  if (((v4 >> 5) & 0xFFFFFFFE) != 0)
  {
    v10 = (v4 >> 5);
  }

  else
  {
    v10 = 1;
  }

  v32 = v10;
  while (1)
  {
    v11 = *(this + 10);
    if (v8 >= (*(this + 11) - v11) >> 5)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = (v11 + 32 * v8);
    v13 = *v12;
    *a3 = *v12;
    if (v12 != a3)
    {
      v15 = *(v12 + 1);
      v14 = *(v12 + 2);
      v16 = v14 - v15;
      v17 = *(a3 + 3);
      v18 = *(a3 + 1);
      if (v17 - v18 < (v14 - v15))
      {
        if (v18)
        {
          v19 = *(a3 + 2);
          v20 = *(a3 + 1);
          if (v19 != v18)
          {
            do
            {
              v19 -= 3;
              v33 = v19;
              std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v33);
            }

            while (v19 != v18);
            v20 = *(a3 + 1);
          }

          *(a3 + 2) = v18;
          operator delete(v20);
          v17 = 0;
          *(a3 + 1) = 0;
          *(a3 + 2) = 0;
          *(a3 + 3) = 0;
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v21;
          }

          std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](a3 + 1, v23);
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v24 = *(a3 + 2) - v18;
      if (v24 >= v16)
      {
        std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(v15, v14, *(a3 + 1));
        v26 = v27;
        v28 = *(a3 + 2);
        if (v28 != v27)
        {
          do
          {
            v28 -= 3;
            v33 = v28;
            std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v33);
          }

          while (v28 != v26);
        }
      }

      else
      {
        v25 = std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(v15, (v15 + v24), *(a3 + 1));
        v26 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*,HALS_IOStreamGroup*,HALS_IOStreamGroup*>(a3 + 8, v25, v14, *(a3 + 2));
      }

      *(a3 + 2) = v26;
      v13 = *a3;
    }

    v29 = v13 + v9;
    if (v29 > a2)
    {
      break;
    }

    ++v8;
    v9 = v29;
    if (v8 == v32)
    {
      return 0;
    }
  }

  *a4 = a2 - v9;
  return 1;
}

void *HALS_IOContextDescription::SetStreamIsEnabledAtIndex(void *this, int a2, unsigned int a3, int a4)
{
  if (a2)
  {
    if (this[17] <= a3)
    {
      return this;
    }

    v4 = this[16];
  }

  else
  {
    if (this[14] <= a3)
    {
      return this;
    }

    v4 = this[13];
  }

  v5 = a3 >> 6;
  v6 = 1 << a3;
  if (a4)
  {
    v7 = *(v4 + 8 * v5) | v6;
  }

  else
  {
    v7 = *(v4 + 8 * v5) & ~v6;
  }

  *(v4 + 8 * v5) = v7;
  return this;
}

uint64_t HALS_IOContextDescription::PushStreamUsageToEngines(uint64_t a1, char a2, int a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN25HALS_IOContextDescription24PushStreamUsageToEnginesEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke;
  v4[3] = &__block_descriptor_tmp_90_17054;
  v4[4] = a1;
  v6 = a2;
  v5 = a3;
  v7 = v4;
  v8[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v8[1] = &v7;
  v10 = v8;
  *&v9 = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *(&v9 + 1) = &v10;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(*(a1 + 32), *(a1 + 40), &v9);
}

uint64_t ___ZN25HALS_IOContextDescription24PushStreamUsageToEnginesEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 44) == 1)
    {
      v7 = v5[10];
      v6 = v5[11];
      if (v6 == v7)
      {
LABEL_23:
        if ((*(*v3 + 512))(v3))
        {
          *(a2 + 829) = 1;
          if (!(*(**(a2 + 88) + 416))(*(a2 + 88), 0))
          {
            *(a2 + 828) = 1;
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = v7 + 32 * v8;
          v12 = *(v10 + 8);
          v11 = *(v10 + 16);
          v13 = (v10 + 8);
          if (v11 != v12)
          {
            break;
          }

LABEL_21:
          v8 = (v9 + 1);
          v9 = v8;
          if (v8 >= (v6 - v7) >> 5)
          {
            v3 = *(a2 + 88);
            goto LABEL_23;
          }
        }

        v14 = 0;
        v15 = 0;
        while (1)
        {
          v16 = (v12 + 24 * v14);
          v17 = *v16;
          v18 = v16[1];
          if (*v16 != v18)
          {
            break;
          }

LABEL_19:
          v14 = ++v15;
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) <= v15)
          {
            v7 = v5[10];
            v6 = v5[11];
            goto LABEL_21;
          }
        }

        while (1)
        {
          if (!*(v17 + 108) || ((v19 = *(v17 + 112), *(v17 + 120) != v19) ? (v20 = v19 == 0) : (v20 = 1), v20))
          {
            v19 = v17 + 456;
          }

          if (*(*v19 + 88) == *(a2 + 88) && ((*(*v5 + 16))(v5, 0, v9) & 1) != 0)
          {
            break;
          }

          v17 += 472;
          if (v17 == v18)
          {
            v12 = *v13;
            v11 = v13[1];
            goto LABEL_19;
          }
        }
      }
    }

    v21 = 840;
    if (*(a1 + 44))
    {
      v21 = 836;
    }

    if (*(a2 + v21))
    {
      operator new();
    }
  }

  return 0;
}

void sub_1DE687BFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE687BD8);
}

void std::__shared_ptr_emplace<std::vector<BOOL>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

void std::__shared_ptr_emplace<std::vector<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextDescription::RegisterBuffers(HALS_IOContextDescription *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = this + 104;
  v7 = *(this + 122);
  v6[0] = this + 104;
  v6[1] = &v7;
  v3 = *(this + 30);
  *&v10 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>;
  *(&v10 + 1) = v6;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v3, v3[1], &v10);
  v4 = *(this + 31);
  *&v10 = &unk_1F596E848;
  *(&v10 + 1) = v2;
  v11 = &v7;
  v12 = &v10;
  v9 = &v10;
  *&v8 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v8 + 1) = &v9;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v4, v4[1], &v8);
  return std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v10);
}

void sub_1DE687DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextDescription::UnregisterBuffers(HALS_IOContextDescription *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = this + 104;
  v3 = *(this + 122);
  v7 = this + 104;
  v8 = v3;
  v4 = *(this + 30);
  *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>;
  *(&v11 + 1) = &v7;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v4, v4[1], &v11);
  v5 = *(this + 31);
  *&v11 = &unk_1F596E8C8;
  *(&v11 + 1) = v2;
  v12 = v3;
  v13 = &v11;
  v10 = &v11;
  *&v9 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v9 + 1) = &v10;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v5, v5[1], &v9);
  return std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v11);
}

void sub_1DE687EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_1>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, HALS_IOStackDescription *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a6 + 8) == 1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    v13 = 560947818;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "HALS_IOProcessorFactory.cpp";
      v16 = 1024;
      v17 = 143;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactory::allocate_output_processors: trying to allocate output processor from input stream info!", v15, 0x12u);
    }
  }

  else
  {
    v12 = **a1;
    if (!(*(*v12 + 16))(v12, a2, a3, a4, a5) || (*(a6 + 464) & 1) == 0)
    {
      *v15 = &unk_1F59737E0;
      HALS_IOProcessorFactoryWorker::do_allocate_processor(v15, v12, a6, 0, 0, a3);
    }

    return 0;
  }

  return v13;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_0>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 8))
  {
    v3 = **a1;
    if ((*(*v3 + 16))(v3) && *(v2 + 464) == 1)
    {
      v4 = (*(*v3 + 32))(v3);
    }

    else
    {
      v4 = (*(*v3 + 24))(v3);
    }

    v9 = *(*v4 + 16);

    return v9();
  }

  else
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v11 = 136315394;
      v12 = "HALS_IOProcessorFactory.cpp";
      v13 = 1024;
      v14 = 121;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactory::allocate_input_processors: trying to allocate input processor from output stream info!", &v11, 0x12u);
    }

    return 560947818;
  }
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_1>(AMCP::Log::AMCP_Scope_Registry *a1, int a2, int a3, int a4, int a5, HALS_IOProcessorFactory *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    v10 = 560947818;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_IOProcessorFactory.cpp";
      v14 = 1024;
      v15 = 177;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContextDescription::AllocateProcessors: trying to free output processor from input stream info!", &v12, 0x12u);
    }
  }

  else
  {
    HALS_IOProcessorFactory::free_processor(this, 0);
    return 0;
  }

  return v10;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_0>(AMCP::Log::AMCP_Scope_Registry *a1, int a2, HALS_IOProcessorFactory *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
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

    v16 = 560947818;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HALS_IOProcessorFactory.cpp";
      v20 = 1024;
      v21 = 163;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_input_processor: trying to free input processor from output stream info!", &v18, 0x12u);
    }

    return v16;
  }

  HALS_IOProcessorFactory::free_processor(this, 1);
  v5 = *(this + 14);
  v6 = *(this + 15);
  if (v5 == v6)
  {
    return 0;
  }

  while (1)
  {
    v7 = v5[13];
    if (v7)
    {
      break;
    }

LABEL_8:
    v5 += 16;
    if (v5 == v6)
    {
      return 0;
    }
  }

  if (*(v7 + 8))
  {
    HALS_IOProcessorList::DestroyProcessor((*v5 + 24 * *(this + 8) + 776), v7);
    v5[13] = 0;
    v4 = v5[14];
    if (v4)
    {
      v4 = (*(*v4 + 8))(v4);
    }

    v5[14] = 0;
    goto LABEL_8;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315906;
    v19 = "HALS_IOProcessorFactory.cpp";
    v20 = 1024;
    v21 = 213;
    v22 = 2082;
    v23 = "input";
    v24 = 2082;
    v25 = "output";
    _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_processor_for_dsp: trying to free %{public}s processor but it is for %{public}s", &v18, 0x26u);
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>(_DWORD **a1, HALS_IOStackDescription **a2)
{
  v2 = *a1;
  memset(&v12, 0, sizeof(v12));
  v3 = *(*a2 + 1);
  if (*(*a2 + 2) != v3)
  {
    v4 = *v3;
    if (-1601513229 * ((v3[1] - *v3) >> 3) && v4 != 0)
    {
      if (!*(v4 + 108) || ((v6 = *(v4 + 112), *(v4 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        v6 = (v4 + 456);
      }

      v8 = *v6;
      if (*(*v6 + 88) && *(v4 + 56))
      {
        HALS_IOStackDescription::GetFormat(*a2, &v12);
        v9 = *(v8 + 388);
        v10 = *(v4 + 64) - v9;
        if (v12.mBytesPerFrame && v10 >= *v2 * v12.mBytesPerFrame)
        {
          v10 = *v2 * v12.mBytesPerFrame;
        }

        bzero((*(v4 + 56) + v9), v10);
      }
    }
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 108);
  if (!v4 || ((v5 = *(a3 + 112), *(a3 + 120) != v5) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v5 = (a3 + 456);
  }

  v7 = *v5;
  if (*(*v5 + 88) && *(a3 + 56))
  {
    v8 = *a1;
    if (v4)
    {
      HALS_IODSPInfo::GetClientFormat(&v13, (a3 + 112));
    }

    else
    {
      v9 = *(a3 + 432);
      v13 = *(a3 + 416);
      v14 = v9;
      v15 = *(a3 + 448);
    }

    if (DWORD2(v13) == 1819304813 && (BYTE12(v13) & 0x40) == 0)
    {
      DWORD2(v14) = 4 * HIDWORD(v14);
    }

    v10 = *(v7 + 388);
    v11 = *(a3 + 64) - v10;
    if (DWORD2(v14) && v11 >= *v8 * DWORD2(v14))
    {
      v11 = *v8 * DWORD2(v14);
    }

    bzero((*(a3 + 56) + v10), v11);
  }

  return 0;
}

uint64_t HALS_IOContextDescription::ClearInactiveInputSharedBuffers(uint64_t this, int a2)
{
  v7 = a2;
  v6[0] = &unk_1F59877B8;
  v6[1] = this;
  v8 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearInactiveInputSharedBuffers::$_0>;
  v9 = &v7;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v4)
      {
        ++v5;
      }

      else
      {
        v5 = 0;
      }

      v11[0] = v2;
      v11[1] = v5;
      this = (*(v6[0] + 16))(v6, v11);
      if ((this & 1) == 0)
      {
        v10[0] = v2;
        v10[1] = v5;
        this = v8(&v9, v10);
        if (this)
        {
          break;
        }
      }

      v2 += 472;
      v4 = 1;
    }

    while (v2 != v3);
  }

  return this;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearInactiveInputSharedBuffers(unsigned int)::$_0>(_DWORD **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 108);
  if (!v3 || ((v4 = *(v2 + 112), *(v2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (v2 + 456);
  }

  v6 = *v4;
  if (*(*v4 + 88) && *(v2 + 56))
  {
    v7 = *a1;
    if (v3)
    {
      HALS_IODSPInfo::GetClientFormat(&v12, (v2 + 112));
    }

    else
    {
      v8 = *(v2 + 432);
      v12 = *(v2 + 416);
      v13 = v8;
      v14 = *(v2 + 448);
    }

    if (DWORD2(v12) == 1819304813 && (BYTE12(v12) & 0x40) == 0)
    {
      DWORD2(v13) = 4 * HIDWORD(v13);
    }

    v9 = *(v6 + 388);
    v10 = *(v2 + 64) - v9;
    if (DWORD2(v13) && v10 >= *v7 * DWORD2(v13))
    {
      v10 = *v7 * DWORD2(v13);
    }

    bzero((*(v2 + 56) + v9), v10);
  }

  return 0;
}

uint64_t HALS_IOContextDescription::EndianSwapSharedBuffers(HALS_IOContextDescription *this, int a2, int a3)
{
  if (a2)
  {
    v4 = a3;
    v5[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_0>;
    v5[1] = &v4;
    *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
    *(&v6 + 1) = v5;
    return VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), &v6);
  }

  else
  {
    LODWORD(v5[0]) = a3;
    *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>;
    *(&v6 + 1) = v5;
    return VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 10), *(this + 11), &v6);
  }
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>(_DWORD **a1, HALS_IOStackDescription **a2)
{
  v2 = *a1;
  memset(&v15, 0, sizeof(v15));
  v3 = *(*a2 + 1);
  if (*(*a2 + 2) != v3)
  {
    v4 = *v3;
    if (-1601513229 * ((v3[1] - *v3) >> 3) && v4 != 0)
    {
      if (!*(v4 + 108) || ((v6 = *(v4 + 112), *(v4 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        v6 = (v4 + 456);
      }

      v8 = *v6;
      if (*(*v6 + 88))
      {
        if (*(v4 + 56))
        {
          HALS_IOStackDescription::GetFormat(*a2, &v15);
          if (v15.mFormatID == 1819304813)
          {
            mChannelsPerFrame = v15.mChannelsPerFrame;
            if (v15.mBytesPerFrame / v15.mChannelsPerFrame == 2)
            {
              v12 = *v2 * v15.mChannelsPerFrame;
              if (v12)
              {
                v13 = (*(v4 + 56) + *(v8 + 388));
                do
                {
                  *v13 = bswap32(*v13) >> 16;
                  ++v13;
                  --v12;
                }

                while (v12);
              }
            }

            else if (v15.mBytesPerFrame / v15.mChannelsPerFrame == 4 && *v2 * v15.mChannelsPerFrame)
            {
              v10 = 0;
              v11 = *(v4 + 56) + *(v8 + 388);
              do
              {
                *(v11 + 4 * v10) = bswap32(*(v11 + 4 * v10));
                ++v10;
              }

              while (v10 < mChannelsPerFrame * *v2);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 108);
  if (!v4 || ((v5 = *(a3 + 112), *(a3 + 120) != v5) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v5 = (a3 + 456);
  }

  v7 = *v5;
  if (*(*v5 + 88) && *(a3 + 56))
  {
    v8 = *a1;
    if (v4)
    {
      HALS_IODSPInfo::GetClientFormat(&v16, (a3 + 112));
    }

    else
    {
      v9 = *(a3 + 432);
      v16 = *(a3 + 416);
      v17 = v9;
      v18 = *(a3 + 448);
    }

    if (DWORD2(v16) == 1819304813)
    {
      if ((BYTE12(v16) & 0x40) == 0)
      {
        DWORD2(v17) = 4 * HIDWORD(v17);
      }

      v10 = HIDWORD(v17);
      if (DWORD2(v17) / HIDWORD(v17) == 2)
      {
        v13 = (*v8 * HIDWORD(v17));
        if (v13)
        {
          v14 = (*(a3 + 56) + *(v7 + 388));
          do
          {
            *v14 = bswap32(*v14) >> 16;
            ++v14;
            --v13;
          }

          while (v13);
        }
      }

      else if (DWORD2(v17) / HIDWORD(v17) == 4 && *v8 * HIDWORD(v17))
      {
        v11 = 0;
        v12 = *(a3 + 56) + *(v7 + 388);
        do
        {
          *(v12 + 4 * v11) = bswap32(*(v12 + 4 * v11));
          ++v11;
        }

        while (v11 < (v10 * *v8));
      }
    }
  }

  return 0;
}

uint64_t HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(HALS_IOContextDescription::HostedDSPDescription *this, uint64_t a2)
{
  v40[4] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v30);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(v36, &__p);
  v26 = this;
  LOBYTE(v37) = 0;
  v38 = 0;
  v36[0] = &unk_1F5987978;
  DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v39);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v4 = *(a2 + 88);
  if (v4 == (a2 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 7) == 7;
      v37 = *(v4 + 7);
      v38 = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, " | ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(&__p, v36);
      if (v29 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v29 >= 0)
      {
        v8 = v29;
      }

      else
      {
        v8 = v28;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, p_p, v8);
      if (v29 < 0)
      {
        operator delete(__p);
      }

      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v5 |= v6;
      v4 = v10;
    }

    while (v10 != (a2 + 96));
  }

  v12 = *(a2 + 128);
  if (v12 != (a2 + 136))
  {
    do
    {
      v13 = *(v12 + 7) == 7;
      v37 = *(v12 + 7);
      v38 = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, " | ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(&__p, v36);
      if (v29 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (v29 >= 0)
      {
        v15 = v29;
      }

      else
      {
        v15 = v28;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, v14, v15);
      if (v29 < 0)
      {
        operator delete(__p);
      }

      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v11 = *v17 == v12;
          v12 = v17;
        }

        while (!v11);
      }

      v5 |= v13;
      v12 = v17;
    }

    while (v17 != (a2 + 136));
  }

  if (*(a2 + 84) & 1) != 0 || (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, " | Isolated Use Case ID: ", 25);
    v19 = *(a2 + 84) == 1 ? *(a2 + 80) : 0;
    v18.i32[0] = bswap32(v19);
    v20 = vzip1_s8(v18, v18);
    v21.i64[0] = 0x1F0000001FLL;
    v21.i64[1] = 0x1F0000001FLL;
    v22.i64[0] = 0x5F0000005FLL;
    v22.i64[1] = 0x5F0000005FLL;
    v23 = vbsl_s8(vmovn_s32(vcgtq_u32(v22, vsraq_n_s32(v21, vshlq_n_s32(vmovl_u16(v20), 0x18uLL), 0x18uLL))), v20, 0x2E002E002E002ELL);
    v29 = 4;
    LODWORD(__p) = vuzp1_s8(v23, v23).u32[0];
    BYTE4(__p) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, &__p, 4);
    if (v29 < 0)
    {
      operator delete(__p);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v26, v30);
  v36[0] = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v40);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v39);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v36);
  v30[0] = *MEMORY[0x1E69E54D8];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  *(v30 + *(v30[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v31 = v24;
  v32 = MEMORY[0x1E69E5548] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v35);
}

void sub_1DE68913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp((v16 - 184));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest::~ReferenceStreamRequest(HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription26UpdateForDSPAdaptedLatencyEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, _DWORD **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 2);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = v2[12];
    v10 = v2[24];
    v11 = v2[4];
    *v12 = 136316418;
    *&v12[4] = "HALS_DSPStream.cpp";
    *&v12[12] = 1024;
    *&v12[14] = 657;
    *&v12[18] = 1024;
    *&v12[20] = v9;
    LOWORD(v13) = 1024;
    *(&v13 + 2) = v10;
    HIWORD(v13) = 1024;
    *v14 = v11;
    *&v14[4] = 1024;
    *&v14[6] = v3;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Setting DSP Stream adapted latency %d", v12, 0x2Au);
  }

  *v12 = MEMORY[0x1E69E9820];
  *&v12[8] = 0x40000000;
  *&v12[16] = ___ZN14HALS_DSPStream23SetCurrentLatencyFramesEj_block_invoke;
  v13 = &__block_descriptor_tmp_23_17197;
  *v14 = v2;
  *&v14[8] = v3;
  v8 = (*(*v2 + 64))(v2);
  HALB_CommandGate::ExecuteCommand(v8, v12);
}

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987AB0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void HALS_IOContextDescription::HostedDSPDescription::ResetRequests(HALS_IOContextDescription::HostedDSPDescription *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    do
    {
      v4 = v2 - 16;
      std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v2 - 8));
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 1) = v3;
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
  }

  if (*(this + 188) == 1)
  {
    *(this + 188) = 0;
  }
}

uint64_t for_all_taps(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    CFRetain(theDict);
  }

  v23[0] = &unk_1F5991008;
  v23[1] = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v21, theDict, @"taps");
  v4 = v22;
  if (v22)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v4) > v6 && (v7 & 1) != 0)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v19, v21, v6);
      if (theDicta)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v17, theDicta, @"uid");
        v14[0] = 0;
        v14[1] = 0;
        HALS_System::GetInstance(&v15, 0, v14);
        v9 = HALS_System::CopyTapByUUID(v15, v18);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v9)
        {
          v13 = v9;
          HALS_ObjectMap::RetainObject(v9, v8);
          v10 = *(a2 + 24);
          if (!v10)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v7 = (*(*v10 + 48))(v10, &v13);
          HALS_ObjectMap::ReleaseObject(v13, v11);
          v5 = 1;
        }

        else
        {
          v7 = 1;
        }

        HALS_ObjectMap::ReleaseObject(v9, v8);
        OS::CF::UntypedObject::~UntypedObject(v17);
      }

      else
      {
        v7 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v19);
      ++v6;
      v4 = v22;
    }
  }

  else
  {
    v5 = 0;
  }

  OS::CF::UntypedObject::~UntypedObject(v21);
  OS::CF::UntypedObject::~UntypedObject(v23);
  return v5 & 1;
}

void sub_1DE6896F0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  HALS_ObjectMap::ReleaseObject(v18, a2);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject((v19 - 64));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK25HALS_IOContextDescription17ShouldWaitForTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, HALS_ObjectMap **a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = *(v3 + 33);
  v4 = *(v3 + 34);
  if (v4)
  {
    v6 = 1;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    **(a1 + 8) = *(v5 + 352) != *(v5 + 360);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v5 = *(v3 + 33);
    v7 = *(v3 + 34);
    if (v7)
    {
      v6 = 0;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    **(a1 + 8) = *(v5 + 352) != *(v5 + 360);
    v6 = 1;
  }

  v8 = *(v5 + 352);
  v9 = *(v5 + 360);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = v8 + 16;
    while (1)
    {
      v12 = HALS_ObjectMap::CopyObjectByObjectID(**(v11 - 16));
      v14 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }

      if (((*(**(v12 + 104) + 824))(*(v12 + 104)) & 1) == 0)
      {
        break;
      }

      v15 = 1;
      v10 = 1;
LABEL_12:
      HALS_ObjectMap::ReleaseObject(v14, v13);
      if (v11 == v9)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v11 += 16;
      if (v16 == 1)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_18:
  **(a1 + 16) = v10 & 1;
  if ((v6 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (**(a1 + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = **(a1 + 16) ^ 1;
  }

  HALS_ObjectMap::ReleaseObject(v3, a2);
  return v17 & 1;
}

void sub_1DE6899B4(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v4, a2);
  if ((v5 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_ObjectMap::ReleaseObject(v2, v7);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5987BC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription23RegisterContextWithTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    HALS_MultiTap::register_autostart_context(v3, *(a1 + 8));
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    HALS_MultiTap::register_autostart_context(*(v2 + 264), *(a1 + 8));
  }

  HALS_ObjectMap::ReleaseObject(v2, v5);
  return 1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987C50;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription25UnRegisterContextWithTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    HALS_MultiTap::unregister_autostart_context(v3, *(a1 + 8));
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    HALS_MultiTap::unregister_autostart_context(*(v2 + 264), *(a1 + 8));
  }

  HALS_ObjectMap::ReleaseObject(v2, v5);
  return 1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987CD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(applesauce::CF::DictionaryRef *a1, uint64_t a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  valuePtr = *(a2 + 488);
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Context ID", v7);
  CFRelease(v7);
  if (a3)
  {
    valuePtr = 1937010544;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v8)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
      __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    valuePtr = 1937011316;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v8)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Event", v8);
  CFRelease(v8);
  if (*(a2 + 524) == 1)
  {
    valuePtr = *(a2 + 520);
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v9)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Isolated Use Case", v9);
    CFRelease(v9);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE689FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va1);
  _Unwind_Resume(a1);
}

void HALS_DSPStream::GetPropertyData(HALS_DSPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v97 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector <= 1936092512)
    {
      if (mSelector > 1936092450)
      {
        if (mSelector == 1936092451)
        {
          if (a4 <= 0x37)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 388;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormats", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          if (a9 && *(a9 + 4) == *(this + 24))
          {
            v39 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
            if (v39)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x6002000000;
              v92 = __Block_byref_object_copy__17161;
              v94 = 0u;
              v95 = 0u;
              v93[0] = __Block_byref_object_dispose__17162;
              v96 = 0;
              *&v93[1] = 0u;
              v86[0] = MEMORY[0x1E69E9820];
              v86[1] = 0x40000000;
              v86[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
              v86[3] = &unk_1E8678528;
              v86[4] = buf;
              v86[5] = this;
              v40 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v40, v86);
              v41 = *(*&buf[8] + 56);
              v42 = *(*&buf[8] + 72);
              v43 = *(*&buf[8] + 40);
              a6[6] = *(*&buf[8] + 88);
              *(a6 + 1) = v41;
              *(a6 + 2) = v42;
              *a6 = v43;
              _Block_object_dispose(buf, 8);
            }

            else
            {
              a6[6] = 0;
              *(a6 + 1) = 0u;
              *(a6 + 2) = 0u;
              *a6 = 0u;
            }

            HALS_ObjectMap::ReleaseObject(v39, v38);
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if (mSelector == 1936092479)
        {
          if (a4 <= 0x27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 414;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported", buf, 0x12u);
            }

            v28 = __cxa_allocate_exception(0x10uLL);
            *v28 = off_1F5991DD8;
            v28[2] = 561211770;
          }

          goto LABEL_74;
        }
      }

      else
      {
        if (mSelector == 1935894638)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 322;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel", buf, 0x12u);
            }

            v72 = __cxa_allocate_exception(0x10uLL);
            *v72 = off_1F5991DD8;
            v72[2] = 561211770;
          }

          goto LABEL_62;
        }

        if (mSelector == 1935960434)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 301;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection", buf, 0x12u);
            }

            v70 = __cxa_allocate_exception(0x10uLL);
            *v70 = off_1F5991DD8;
            v70[2] = 561211770;
          }

          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 0x40000000;
          v90[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
          v90[3] = &__block_descriptor_tmp_17150;
          v90[4] = this;
          v90[5] = a6;
          v24 = (*(*this + 64))(this, a2);
          HALB_CommandGate::ExecuteCommand(v24, v90);
          goto LABEL_107;
        }
      }

      goto LABEL_99;
    }

    if (mSelector <= 1936092531)
    {
      if (mSelector == 1936092513)
      {
        if (a4 <= 0x37)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 362;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyAvailableVirtualFormats", buf, 0x12u);
          }

          v81 = __cxa_allocate_exception(0x10uLL);
          *v81 = off_1F5991DD8;
          v81[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v61 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v61)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x6002000000;
            v92 = __Block_byref_object_copy__17161;
            v94 = 0u;
            v95 = 0u;
            v93[0] = __Block_byref_object_dispose__17162;
            v96 = 0;
            *&v93[1] = 0u;
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 0x40000000;
            v87[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
            v87[3] = &unk_1E8678500;
            v87[4] = buf;
            v87[5] = this;
            v62 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v62, v87);
            v63 = *(*&buf[8] + 56);
            v64 = *(*&buf[8] + 72);
            v65 = *(*&buf[8] + 40);
            a6[6] = *(*&buf[8] + 88);
            *(a6 + 1) = v63;
            *(a6 + 2) = v64;
            *a6 = v65;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            a6[6] = 0;
            *(a6 + 1) = 0u;
            *(a6 + 2) = 0u;
            *a6 = 0u;
          }

          HALS_ObjectMap::ReleaseObject(v61, v60);
          goto LABEL_98;
        }

        goto LABEL_97;
      }

      if (mSelector == 1936092525)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 423;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch", buf, 0x12u);
          }

          v30 = __cxa_allocate_exception(0x10uLL);
          *v30 = off_1F5991DD8;
          v30[2] = 561211770;
        }

        goto LABEL_74;
      }

      goto LABEL_99;
    }

    switch(mSelector)
    {
      case 1936092532:
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 345;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat", buf, 0x12u);
          }

          v79 = __cxa_allocate_exception(0x10uLL);
          *v79 = off_1F5991DD8;
          v79[2] = 561211770;
        }

        v52 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
        if (v52)
        {
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 0x40000000;
          v88[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_5;
          v88[3] = &__block_descriptor_tmp_6_17159;
          v88[4] = this;
          v88[5] = a6;
          v53 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v53, v88);
        }

        else
        {
          a6[4] = 0;
          *a6 = 0u;
          *(a6 + 1) = 0u;
        }

        *a5 = 40;
        HALS_ObjectMap::ReleaseObject(v52, v51);
        break;
      case 1952542835:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 522;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream", buf, 0x12u);
          }

          v76 = __cxa_allocate_exception(0x10uLL);
          *v76 = off_1F5991DD8;
          v76[2] = 561211770;
        }

        *a6 = 0;
        goto LABEL_107;
      case 1952805485:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 310;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType", buf, 0x12u);
          }

          v77 = __cxa_allocate_exception(0x10uLL);
          *v77 = off_1F5991DD8;
          v77[2] = 561211770;
        }

        v17 = *(this + 9);
        if (v17 == *(this + 10))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 311;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: mPhysicalStreamIDs is empty", buf, 0x12u);
          }

          v82 = __cxa_allocate_exception(0x10uLL);
          *v82 = off_1F5991DD8;
          v82[2] = 1852797029;
        }

        v18 = HALS_ObjectMap::CopyObjectByObjectID(*v17);
        v20 = v18;
        if (v18)
        {
          LODWORD(v18) = HALS_Stream::GetTerminalType(v18);
        }

        *a6 = v18;
        *a5 = 4;
        HALS_ObjectMap::ReleaseObject(v20, v19);
        break;
      default:
        goto LABEL_99;
    }
  }

  else
  {
    if (mSelector > 1885762594)
    {
      if (mSelector > 1885762656)
      {
        if (mSelector != 1885762657)
        {
          if (mSelector != 1885762669)
          {
            if (mSelector == 1935762292)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_DSPStream.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 292;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive", buf, 0x12u);
                }

                v16 = __cxa_allocate_exception(0x10uLL);
                *v16 = off_1F5991DD8;
                v16[2] = 561211770;
              }

LABEL_62:
              *a6 = 1;
LABEL_107:
              v44 = 4;
              goto LABEL_108;
            }

            goto LABEL_99;
          }

          if (a4 <= 0x27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 513;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch", buf, 0x12u);
            }

            v75 = __cxa_allocate_exception(0x10uLL);
            *v75 = off_1F5991DD8;
            v75[2] = 561211770;
          }

          goto LABEL_74;
        }

        if (a4 <= 0x37)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 456;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyAvailablePhysicalFormats", buf, 0x12u);
          }

          v78 = __cxa_allocate_exception(0x10uLL);
          *v78 = off_1F5991DD8;
          v78[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v46 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v46)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x6002000000;
            v92 = __Block_byref_object_copy__17161;
            v94 = 0u;
            v95 = 0u;
            v93[0] = __Block_byref_object_dispose__17162;
            v96 = 0;
            *&v93[1] = 0u;
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 0x40000000;
            v84[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13;
            v84[3] = &unk_1E8678570;
            v84[4] = buf;
            v84[5] = this;
            v47 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v47, v84);
            v48 = *(*&buf[8] + 56);
            v49 = *(*&buf[8] + 72);
            v50 = *(*&buf[8] + 40);
            a6[6] = *(*&buf[8] + 88);
            *(a6 + 1) = v48;
            *(a6 + 2) = v49;
            *a6 = v50;
            _Block_object_dispose(buf, 8);
          }

          HALS_ObjectMap::ReleaseObject(v46, v45);
          goto LABEL_98;
        }

        goto LABEL_97;
      }

      if (mSelector == 1885762595)
      {
        if (a4 <= 0x37)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 478;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormats", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v55 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v55)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x6002000000;
            v92 = __Block_byref_object_copy__17161;
            v94 = 0u;
            v95 = 0u;
            v93[0] = __Block_byref_object_dispose__17162;
            v96 = 0;
            *&v93[1] = 0u;
            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 0x40000000;
            v83[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
            v83[3] = &unk_1E8678598;
            v83[4] = buf;
            v83[5] = this;
            v56 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v56, v83);
            v57 = *(*&buf[8] + 56);
            v58 = *(*&buf[8] + 72);
            v59 = *(*&buf[8] + 40);
            a6[6] = *(*&buf[8] + 88);
            *(a6 + 1) = v57;
            *(a6 + 2) = v58;
            *a6 = v59;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            a6[6] = 0;
            *(a6 + 1) = 0u;
            *(a6 + 2) = 0u;
            *a6 = 0u;
          }

          HALS_ObjectMap::ReleaseObject(v55, v54);
          goto LABEL_98;
        }

LABEL_97:
        a6[6] = 0;
        *(a6 + 1) = 0u;
        *(a6 + 2) = 0u;
        *a6 = 0u;
LABEL_98:
        v44 = 56;
        goto LABEL_108;
      }

      if (mSelector == 1885762623)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 504;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported", buf, 0x12u);
          }

          v29 = __cxa_allocate_exception(0x10uLL);
          *v29 = off_1F5991DD8;
          v29[2] = 561211770;
        }

        goto LABEL_74;
      }

      goto LABEL_99;
    }

    if (mSelector > 1819569762)
    {
      if (mSelector == 1819569763)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 331;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyLatency", buf, 0x12u);
          }

          v73 = __cxa_allocate_exception(0x10uLL);
          *v73 = off_1F5991DD8;
          v73[2] = 561211770;
        }

        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 0x40000000;
        v89[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
        v89[3] = &__block_descriptor_tmp_3_17155;
        v89[4] = this;
        v89[5] = a6;
        v32 = (*(*this + 64))(this, a2);
        HALB_CommandGate::ExecuteCommand(v32, v89);
        v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v34 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v33);
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
          v66 = *(this + 12);
          v67 = *(this + 24);
          v68 = *(this + 4);
          v69 = *a6;
          *buf = 136316418;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 337;
          *&buf[18] = 1024;
          *&buf[20] = v66;
          LOWORD(v92) = 1024;
          *(&v92 + 2) = v67;
          HIWORD(v92) = 1024;
          LODWORD(v93[0]) = v68;
          WORD2(v93[0]) = 1024;
          *(v93 + 6) = v69;
          _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Getting DSP Stream adapted latency %d", buf, 0x2Au);
        }

        goto LABEL_107;
      }

      if (mSelector == 1885762592)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 432;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat", buf, 0x12u);
          }

          v71 = __cxa_allocate_exception(0x10uLL);
          *v71 = off_1F5991DD8;
          v71[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v26 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v26)
          {
            v85[0] = MEMORY[0x1E69E9820];
            v85[1] = 0x40000000;
            v85[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
            v85[3] = &__block_descriptor_tmp_12_17169;
            v85[4] = this;
            v85[5] = a6;
            v27 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v27, v85);
          }

          else
          {
            a6[4] = 0;
            *a6 = 0u;
            *(a6 + 1) = 0u;
          }

          HALS_ObjectMap::ReleaseObject(v26, v25);
          goto LABEL_75;
        }

LABEL_74:
        a6[4] = 0;
        *a6 = 0u;
        *(a6 + 1) = 0u;
LABEL_75:
        v44 = 40;
LABEL_108:
        *a5 = v44;
        return;
      }

LABEL_99:

      HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    if (mSelector == 1685287027)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 531;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsDSPStream", buf, 0x12u);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        *v31 = off_1F5991DD8;
        v31[2] = 561211770;
      }

      goto LABEL_62;
    }

    if (mSelector != 1819107691)
    {
      goto LABEL_99;
    }

    v21 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
    v23 = v21;
    if (v21)
    {
      strcpy(buf, "kamlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v21 + 120))(v21, *(this + 7), buf, a4, a5, a6, a7, a8, a9);
    }

    HALS_ObjectMap::ReleaseObject(v23, v22);
  }
}

void sub_1DE68B904(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

__n128 __Block_byref_object_copy__17161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

__n128 ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

double ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 128);
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 40) = result;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 80) = result;
  *(v5 + 88) = result;
  return result;
}

uint64_t HALS_DSPStream::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1935894637)
  {
    if (v3 <= 1936092512)
    {
      if (v3 <= 1936092450)
      {
        if (v3 == 1935894638)
        {
          return 4;
        }

        v4 = 1935960434;
        goto LABEL_19;
      }

      if (v3 == 1936092451)
      {
        return 56;
      }

      v7 = 27967;
    }

    else
    {
      if (v3 > 1936092531)
      {
        if (v3 != 1936092532)
        {
          if (v3 == 1952542835)
          {
            return 4;
          }

          v4 = 1952805485;
          goto LABEL_19;
        }

        return 40;
      }

      if (v3 == 1936092513)
      {
        return 56;
      }

      v7 = 28013;
    }

    v8 = v7 | 0x73660000;
  }

  else
  {
    if (v3 <= 1885762594)
    {
      if (v3 <= 1819569762)
      {
        if (v3 != 1685287027)
        {
          if (v3 == 1819107691)
          {
            return 8;
          }

          return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
        }

        return 4;
      }

      if (v3 == 1819569763)
      {
        return 4;
      }

      v6 = 29728;
    }

    else
    {
      if (v3 > 1885762656)
      {
        if (v3 != 1885762657)
        {
          if (v3 != 1885762669)
          {
            v4 = 1935762292;
LABEL_19:
            if (v3 != v4)
            {
              return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
            }

            return 4;
          }

          return 40;
        }

        return 56;
      }

      if (v3 == 1885762595)
      {
        return 56;
      }

      v6 = 29759;
    }

    v8 = v6 | 0x70660000;
  }

  if (v3 == v8)
  {
    return 40;
  }

  return HALS_Stream::GetPropertyDataSize(a1, a2, a3);
}

uint64_t HALS_DSPStream::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 0;
  v4 = *a3;
  if (*a3 > 1935894637)
  {
    if (v4 <= 1936092512)
    {
      if (v4 <= 1936092450)
      {
        v5 = v4 == 1935894638;
        v6 = 1935960434;
        goto LABEL_27;
      }

      v5 = v4 == 1936092451;
      v9 = 27967;
    }

    else
    {
      if (v4 > 1936092531)
      {
        if (v4 == 1952805485 || v4 == 1952542835)
        {
          return v3;
        }

        v8 = 1936092532;
        goto LABEL_21;
      }

      v5 = v4 == 1936092513;
      v9 = 28013;
    }

    v6 = v9 | 0x73660000;
    goto LABEL_27;
  }

  if (v4 > 1885762594)
  {
    if (v4 <= 1885762656)
    {
      v5 = v4 == 1885762595;
      v6 = 1885762623;
    }

    else
    {
      v5 = v4 == 1885762657 || v4 == 1885762669;
      v6 = 1935762292;
    }

LABEL_27:
    if (!v5 && v4 != v6)
    {
      return HALS_Stream::IsPropertySettable(a1, a2, a3);
    }

    return v3;
  }

  if (v4 <= 1819569762)
  {
    v5 = v4 == 1685287027;
    v6 = 1819107691;
    goto LABEL_27;
  }

  if (v4 == 1819569763)
  {
    return v3;
  }

  v8 = 1885762592;
LABEL_21:
  if (v4 == v8)
  {
    return 1;
  }

  return HALS_Stream::IsPropertySettable(a1, a2, a3);
}

uint64_t HALS_DSPStream::HasProperty(HALS_DSPStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  v7 = 1;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector <= 1936092478)
    {
      v13 = mSelector == 1935894638 || mSelector == 1935960434;
      v14 = 1936092451;
    }

    else
    {
      v13 = (mSelector - 1936092479) <= 0x35 && ((1 << (mSelector - 63)) & 0x20400400000001) != 0 || mSelector == 1952542835;
      v14 = 1952805485;
    }

    if (v13 || mSelector == v14)
    {
      return v7;
    }

    goto LABEL_35;
  }

  if (mSelector <= 1885762591)
  {
    if (mSelector == 1685287027)
    {
      return v7;
    }

    if (mSelector == 1819107691)
    {
      v18 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
      v20 = v18;
      if (v18)
      {
        v21 = 0x676C6F626C6D616BLL;
        v22 = 0;
        v7 = (*(*v18 + 96))(v18, *(this + 7), &v21, a4);
      }

      else
      {
        v7 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v20, v19);
      return v7;
    }

    v15 = 1819569763;
LABEL_34:
    if (mSelector != v15)
    {
      goto LABEL_35;
    }

    return v7;
  }

  if (mSelector > 1885762656)
  {
    if (mSelector == 1885762657 || mSelector == 1885762669)
    {
      return v7;
    }

    v15 = 1935762292;
    goto LABEL_34;
  }

  v8 = mSelector - 1885762592;
  v9 = v8 > 0x1F;
  v10 = (1 << v8) & 0x80000009;
  if (!v9 && v10 != 0)
  {
    return v7;
  }

LABEL_35:

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void HALS_DSPStream::~HALS_DSPStream(HALS_DSPStream *this)
{
  HALS_DSPStream::~HALS_DSPStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987D50;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  HALS_Stream::~HALS_Stream(this);
}

__n128 ___ZNK14HALS_DSPStream24GetCurrentPhysicalFormatER27AudioStreamBasicDescription_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *(v2 + 32) = *(v1 + 136);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void HALS_DSPStream::SetCurrentPhysicalFormat(HALS_DSPStream *this, const AudioStreamBasicDescription *a2)
{
  v29 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 12);
    v10 = *(this + 24);
    v11 = *(this + 4);
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mSampleRate = a2->mSampleRate;
    *buf = 136316674;
    v16 = "HALS_DSPStream.cpp";
    v17 = 1024;
    v18 = 568;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = mChannelsPerFrame;
    v27 = 1024;
    v28 = mSampleRate;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Setting DSP Stream format (%d channels, %6.1d rate)", buf, 0x30u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke;
  v14[3] = &__block_descriptor_tmp_19_17189;
  v14[4] = this;
  v14[5] = a2;
  v8 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v8, v14);
}

void ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4, _BOOL8 a5)
{
  queue[42] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v6[1];
  v16[0] = *v6;
  v16[1] = v7;
  v17 = *(v6 + 4);
  if (!*(v5 + 112) || !CA::StreamDescription::IsEquivalent(v16, (v5 + 104), 3u, a4, a5))
  {
    v8 = *v6;
    v9 = v6[1];
    *(v5 + 136) = *(v6 + 4);
    *(v5 + 120) = v9;
    *(v5 + 104) = v8;
    v10 = (*(*v5 + 72))(v5, a2, a3, a4, a5);
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, v10);
    v11 = *(v5 + 16);
    v12 = *(v5 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke_2;
    block[3] = &__block_descriptor_tmp_18_17190;
    v14 = v11;
    v15 = v12;
    dispatch_async(queue[0], block);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  }
}

void ___ZN14HALS_DSPStream24SetCurrentPhysicalFormatERK27AudioStreamBasicDescription_block_invoke_2(uint64_t a1, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  memset(v19, 0, sizeof(v19));
  v4 = *(a1 + 32);
  memset(v18, 0, 24);
  v18[3] = v4;
  *&v15 = 0x676C6F6273666D74;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, a3);
  *&v15 = 0x676C6F6270667420;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, v5);
  *&v15 = 0x676C6F626C746E63;
  DWORD2(v15) = 0;
  CAPropertyAddressList::AppendUniqueItem(v18, &v15, v6);
  std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v19, v18);
  v7 = *(a1 + 36);
  v15 = 0uLL;
  v16 = 0;
  v17 = v7;
  __p = 0x676C6F6273666D74;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v8);
  __p = 0x676C6F6273746D23;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v9);
  __p = 0x676C6F626E737274;
  LODWORD(v13) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v15, &__p, v10);
  v11 = *(a1 + 36);
  __p = 0;
  v13 = 0;
  v14 = 0;
  HALS_NotificationManager::GroupPropertiesChanged(1, v11, 0, &v15, v19, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (v18[0])
  {
    operator delete(v18[0]);
  }

  v18[0] = v19;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v18);
}

void sub_1DE68C568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a16)
  {
    operator delete(a16);
  }

  a16 = (v16 - 56);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Timed_Segment::translate_range(double **this, const AMCP::DAL::DAL_Time_Range *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  (*(*a2 + 16))(a2, a3);
  v4 = *this;
  v5 = this[1];
  if (*this != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      AMCP::DAL::DAL_Time::operator-(buf, (v4 + 7), (v4 + 2));
      if ((buf[0] & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(buf);
      }

      v8 = *&v31[4];
      v9 = v34;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (vabdd_f64(v6 - v7, v8) >= 1.0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v31 = "DAL_Timed_Segment.cpp";
          *&v31[8] = 1024;
          *&v31[10] = 92;
          v32 = 2080;
          v33 = "not (d.get_double() > -1 and d.get_double() < 1)";
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v21, "", v14);
        std::logic_error::logic_error(&v22, &v21);
        v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v23, &v22);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = -1;
        v23.__vftable = &unk_1F5991430;
        v24 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
        v34 = "rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::DAL_Timed_Segment::translate_range(const DAL_Time_Range &) const";
        v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v36 = 92;
        std::vector<void *>::vector[abi:ne200100](&v20);
      }

      if (round(v4[1] - *v4) == 0.0)
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v31 = "DAL_Timed_Segment.cpp";
          *&v31[8] = 1024;
          *&v31[10] = 93;
          v32 = 2080;
          v33 = "not (i.m_local_range.length() != 0_S)";
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v21, "", v19);
        std::logic_error::logic_error(&v22, &v21);
        v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v23, &v22);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = -1;
        v23.__vftable = &unk_1F5991430;
        v24 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
        v34 = "rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::DAL_Timed_Segment::translate_range(const DAL_Time_Range &) const";
        v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v36 = 93;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
      }

      v4 += 12;
    }

    while (v4 != v5);
  }
}

void sub_1DE68CB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_lists(AMCP::DAL::DAL_Timed_Segment *this, uint64_t a2)
{
  v2 = a2;
  v33[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  AMCP::DAL::DAL_Timed_Segment::translate_range(&v30, *(a2 + 80), a2);
  v5 = v30;
  v4 = v31;
  if (v30 != v31)
  {
    v6 = 0;
    v26 = v31;
    v27 = v2;
    do
    {
      (*(**(v2 + 80) + 56))(&v28);
      if (v28)
      {
        (*(*v28 + 64))(&v32, *v5, v5[1]);
      }

      else
      {
        v32 = 0;
        v33[3] = 0;
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      v7 = *(this + 2);
      if (v6 >= v7)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *this) >> 3);
        v10 = v9 + 1;
        if (v9 + 1 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *this) >> 3);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x333333333333333)
        {
          v12 = 0x666666666666666;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (v12 > 0x666666666666666 || !*MEMORY[0x1E69E3C08])
          {
LABEL_35:
            __break(1u);
          }

          v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        }

        else
        {
          v13 = 0;
        }

        v14 = (v13 + 40 * v9);
        v15 = v32;
        v32 = 0;
        *v14 = v15;
        v6 = v14 + 5;
        std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((v14 + 1), v33);
        v17 = *this;
        v16 = *(this + 1);
        v18 = v16 - *this;
        if (v16 != *this)
        {
          v19 = v13 + 40 * v9 - 8 * ((v16 - *this) >> 3) + 8;
          v20 = *this;
          do
          {
            v21 = (v20 + 1);
            v22 = *v20;
            *v20 = 0;
            v20 += 5;
            *(v19 - 8) = v22;
            v19 = std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](v19, v21) + 40;
          }

          while (v20 != v16);
          while (v17 != v16)
          {
            std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v17, 0);
            std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100]((v17 + 1));
            v17 += 5;
          }
        }

        *&v23 = v14 + 5;
        *(&v23 + 1) = v13 + 40 * v12;
        v24 = *this;
        *this = v14 - v18;
        v25 = *(this + 2);
        *(this + 8) = v23;
        if (v24)
        {
          v4 = v26;
          v2 = v27;
          if (0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3) > 0x666666666666666 || !*MEMORY[0x1E69E3C08])
          {
            goto LABEL_35;
          }

          caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v24);
        }

        else
        {
          v4 = v26;
          v2 = v27;
        }
      }

      else
      {
        v8 = v32;
        v32 = 0;
        *v6 = v8;
        std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((v6 + 1), v33);
        v6 += 5;
      }

      *(this + 1) = v6;
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v32, 0);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v33);
      v5 += 12;
    }

    while (v5 != v4);
  }

  v32 = &v30;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_1DE68D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v3 - 5, 0);
        result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100]((v3 - 4));
        v3 -= 5;
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    if (0xCCCCCCCCCCCCCCCDLL * ((v5[2] - v4) >> 3) < 0x666666666666667 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {

      return caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void AMCP::DAL::DAL_Timed_Segment::adjust_length(AMCP::DAL::DAL_Timed_Segment *this, const AMCP::DAL::DAL_Time_Delta *a2)
{
  boost::operators_impl::operator+(v7, this, a2);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v9, this, v7);
  *this = v9;
  *(this + 2) = v10;
  v3 = v11;
  v11 = 0uLL;
  v4 = *(this + 4);
  *(this + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 40) = v12;
  *(this + 7) = v13;
  v5 = v14;
  v14 = 0uLL;
  v6 = *(this + 9);
  *(this + 4) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }
  }

  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1DE68D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Writable_Range::pad_and_receive_data(uint64_t a1, uint64_t a2, AMCP::DAL::DAL_Time *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = AMCP::DAL::DAL_Time::operator<((a3 + 40), a3);
  if (v6)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v91 = "DAL_Timed_Segment.cpp";
      v92 = 1024;
      v93 = 108;
      v94 = 2080;
      v95 = "not (source_range_to_read.get_time_range().end() >= source_range_to_read.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v63, "Writable_Range::RecieveData: Bad time range", v22);
    std::logic_error::logic_error(v73, &v63);
    *v73 = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v56, v73);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = -1;
    v56.__vftable = &unk_1F5991430;
    v57 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v56);
    v96 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
    v97 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v98 = 108;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v80);
  }

  (*(**(a3 + 10) + 64))(&v70);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(buf, a3, &v70);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v63, buf);
  if (v99)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  AMCP::DAL::DAL_Time::get_sample_time(&v63);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v66);
  v8 = AMCP::DAL::DAL_Time::get_sample_time(&v63);
  AMCP::DAL::DAL_Time::get_sample_time(&v66);
  if (round(sample_time) < round(v8))
  {
    caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(buf, &v63);
    AMCP::DAL::DAL_Time_Range::operator=(&v63, buf);
    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }
  }

  v49 = v63;
  v50 = v64;
  v51 = v65;
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v52 = v66;
  v53 = v67;
  v54 = v68;
  v55 = v69;
  if (v69)
  {
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(&v56, &v49, a3);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(buf, a1, &v70);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(v73, buf, &v63);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::union_range(&v80, v73, v100);
  v9 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(&v80, a1);
  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  v10 = v76;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (!v9)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      v80 = 136315650;
      v81 = "DAL_Timed_Segment.cpp";
      v82 = 1024;
      v83 = 121;
      v84 = 2080;
      v85 = "not (zero_ranges.first.union_range(data_time_range_to_read).union_range(zero_ranges.second) == get_time_range())";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Union of zero and data ranges should equal this writable range", &v80, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v40, "Union of zero and data ranges should equal this writable range", v23);
    std::logic_error::logic_error(&v39, &v40);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v73, &v39);
    v76 = 0;
    *&v75[10] = 0;
    v77 = 0;
    v78 = -1;
    *v73 = &unk_1F5991430;
    *&v75[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v80, v73);
    v86 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
    v87 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v88 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v48);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v80, buf);
  if (AMCP::DAL::DAL_Time::operator<(buf, &v97) && (!AMCP::DAL::DAL_Time::operator<(&v63, &v66) || AMCP::DAL::DAL_Time::operator<(&v80, &v63)))
  {
    if (AMCP::DAL::DAL_Time::operator<(&v63, &v66))
    {
      if (!caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(buf, &v63))
      {
        v11 = AMCP::DAL::DAL_Time::operator<(buf, &v97);
        if (!v11 || !(v11 = AMCP::DAL::DAL_Time::operator<(&v63, &v66)) || !AMCP::DAL::DAL_Time::operator==(&v63, &v97) && !(v11 = AMCP::DAL::DAL_Time::operator==(buf, &v66)))
        {
          v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v28 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v11);
          }

          v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            v31 = *v30;
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          else
          {
            v31 = *v30;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *v73 = 136315650;
            *&v73[4] = "DAL_Timed_Segment.cpp";
            v74 = 1024;
            *v75 = 129;
            *&v75[4] = 2080;
            *&v75[6] = "not (zero_ranges.first.touches(data_time_range_to_read))";
            _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should be adjacent to valid range.", v73, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v48, "Zero range should be adjacent to valid range.", v37);
          std::logic_error::logic_error(&v41, &v48);
          v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v42, &v41);
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = -1;
          *v42 = &unk_1F5991430;
          *&v42[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v73, v42);
          v76 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
          v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
          v78 = 129;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
        }
      }

      v12 = AMCP::DAL::DAL_Time::operator==(&v87, &v63);
      if (!v12)
      {
        v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v32 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
          *v73 = 136315650;
          *&v73[4] = "DAL_Timed_Segment.cpp";
          v74 = 1024;
          *v75 = 130;
          *&v75[4] = 2080;
          *&v75[6] = "not (zero_range.end() == data_time_range_to_read.start())";
          _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should end where valid range starts.", v73, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v48, "Zero range should end where valid range starts.", v38);
        std::logic_error::logic_error(&v41, &v48);
        v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v42, &v41);
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = -1;
        *v42 = &unk_1F5991430;
        *&v42[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v73, v42);
        v76 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
        v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v78 = 130;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
      }
    }

    (*(**(a1 + 80) + 40))(*(a1 + 80), a2, &v80);
    AMCP::DAL::DAL_Time_Range::operator=(&v80, v100);
  }

  if (AMCP::DAL::DAL_Time::operator<(&v63, &v66))
  {
    (*(**(a1 + 80) + 24))(*(a1 + 80), a2, &v56);
  }

  if (AMCP::DAL::DAL_Time::operator<(&v80, &v87))
  {
    if (AMCP::DAL::DAL_Time::operator<(&v63, &v66))
    {
      v13 = AMCP::DAL::DAL_Time::operator==(&v80, &v66);
      if (!v13)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v13);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v73 = 136315650;
          *&v73[4] = "DAL_Timed_Segment.cpp";
          v74 = 1024;
          *v75 = 146;
          *&v75[4] = 2080;
          *&v75[6] = "not (data_time_range_to_read.is_empty() || zero_range.start() == data_time_range_to_read.end())";
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Zero range should start where valid range ends.", v73, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v48, "Zero range should start where valid range ends.", v36);
        std::logic_error::logic_error(&v41, &v48);
        v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v42, &v41);
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = -1;
        *v42 = &unk_1F5991430;
        *&v42[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v73, v42);
        v76 = "void AMCP::DAL::Writable_Range::pad_and_receive_data(const Source_ID &, const Readable_Range &)";
        v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v78 = 146;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
      }
    }

    (*(**(a1 + 80) + 40))(*(a1 + 80), a2, &v80);
  }

  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

  if (v101)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v101);
  }

  if (v99)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }
}

void sub_1DE68E0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&STACK[0x250]);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair((v63 - 256));
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a42);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a53);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a63);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Writable_Range::receive_data(uint64_t a1, int a2, AMCP::DAL::DAL_Time *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = AMCP::DAL::DAL_Time::operator<((a3 + 40), a3);
  if (v5)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "DAL_Timed_Segment.cpp";
      v31 = 1024;
      v32 = 163;
      v33 = 2080;
      v34 = "not (incoming_data.get_time_range().end() >= incoming_data.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "Writable_Range::RecieveData: Bad time range", v17);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "void AMCP::DAL::Writable_Range::receive_data(const Source_ID &, const Readable_Range &)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v37 = 163;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(a1, a3);
  if (!v6)
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

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "DAL_Timed_Segment.cpp";
      v31 = 1024;
      v32 = 164;
      v33 = 2080;
      v34 = "not (get_time_range() == incoming_data.get_time_range())";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "", v18);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "void AMCP::DAL::Writable_Range::receive_data(const Source_ID &, const Readable_Range &)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v37 = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v7 = *(**(a1 + 80) + 24);

  return v7();
}