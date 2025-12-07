void sub_1B54655E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TimeBlock::TimeBlock(uint64_t a1, double *a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 16) = kaldi::Timer::GetSeconds(5, a2) - *a2;
  return a1;
}

void sub_1B546566C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TimeBlock::~TimeBlock(kaldi::quasar::TimeBlock *this, clockid_t a2)
{
  v3 = *this;
  **(this + 1) = kaldi::Timer::GetSeconds(5, a2) - *v3 - *(this + 2) + **(this + 1);
  v4 = *(this + 47);
  if (v4 < 0)
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = *(this + 47);
  }

  if (v5 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v6 = *(this + 47);
    if (v6 >= 0)
    {
      v7 = this + 24;
    }

    else
    {
      v7 = *(this + 3);
    }

    if (v6 >= 0)
    {
      v8 = *(this + 47);
    }

    else
    {
      v8 = *(this + 4);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
    v11 = *this;
    Seconds = kaldi::Timer::GetSeconds(5, v12);
    v14 = MEMORY[0x1B8C84BE0](v10, Seconds - *v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
    v16 = MEMORY[0x1B8C84BE0](v15, *(this + 2));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " diff ", 6);
    v18 = *this;
    v20 = kaldi::Timer::GetSeconds(5, v19);
    MEMORY[0x1B8C84BE0](v17, v20 - *v18 - *(this + 2));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v21);
    LOBYTE(v4) = *(this + 47);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(*(this + 3));
  }
}

void kaldi::quasar::Encdec::EmbeddingRunOutput::~EmbeddingRunOutput(void **this)
{
  v3 = this + 9;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

uint64_t kaldi::quasar::TMTools::ModelCache<kaldi::quasar::ComputeEngineItf>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D12F80;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void kaldi::quasar::TMTools::ModelCache<kaldi::quasar::ComputeEngineItf>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D12F80;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      (*(*v3 + 64))(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void sub_1B54659F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::quasar::EspressoV2Plan>::shared_ptr[abi:ne200100]<kaldi::quasar::EspressoV2Plan,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Plan *,std::shared_ptr<kaldi::quasar::EspressoV2Plan>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Plan,kaldi::quasar::EspressoV2Plan>,std::allocator<kaldi::quasar::EspressoV2Plan>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Plan *,std::shared_ptr<kaldi::quasar::EspressoV2Plan>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Plan,kaldi::quasar::EspressoV2Plan>,std::allocator<kaldi::quasar::EspressoV2Plan>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Plan *,std::shared_ptr<kaldi::quasar::EspressoV2Plan>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Plan,kaldi::quasar::EspressoV2Plan>,std::allocator<kaldi::quasar::EspressoV2Plan>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<kaldi::quasar::Encdec::ModelCompilationSpec>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::Encdec::InferenceEngine const&,std::string &,std::string const&,std::vector<std::string> &,std::allocator<kaldi::quasar::Encdec::ModelCompilationSpec>,0>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D13030;
  std::allocator<kaldi::quasar::Encdec::ModelCompilationSpec>::construct[abi:ne200100]<kaldi::quasar::Encdec::ModelCompilationSpec,kaldi::quasar::Encdec::InferenceEngine const&,std::string &,std::string const&,std::vector<std::string> &>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::Encdec::ModelCompilationSpec>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::quasar::Encdec::ModelCompilationSpec>::construct[abi:ne200100]<kaldi::quasar::Encdec::ModelCompilationSpec,kaldi::quasar::Encdec::InferenceEngine const&,std::string &,std::string const&,std::vector<std::string> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a5, *(a5 + 8));
  }

  else
  {
    v12 = *a5;
  }

  v10 = 0uLL;
  v11 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v10, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  *a2 = &unk_1F2D12E50;
  *(a2 + 8) = v9;
  *(a2 + 16) = v13;
  memset(&v13, 0, sizeof(v13));
  *(a2 + 40) = v12;
  memset(&v12, 0, sizeof(v12));
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  v10 = 0uLL;
  v11 = 0;
  v14 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1B5465DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__emplace_unique_key_args<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__find_equal<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__find_equal<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(uint64_t a1, void *a2, void *a3)
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
        if (!(*(**a3 + 40))(*a3, v4[4]))
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

      if (!(*(*v7[4] + 40))(v7[4], *a3))
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

void sub_1B5465FA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::quasar::EspressoV2Plan>::shared_ptr[abi:ne200100]<kaldi::quasar::EspressoV2Plan,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Chain *,std::shared_ptr<kaldi::quasar::EspressoV2Chain>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Chain,kaldi::quasar::EspressoV2Chain>,std::allocator<kaldi::quasar::EspressoV2Chain>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Chain *,std::shared_ptr<kaldi::quasar::EspressoV2Chain>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Chain,kaldi::quasar::EspressoV2Chain>,std::allocator<kaldi::quasar::EspressoV2Chain>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::EspressoV2Chain *,std::shared_ptr<kaldi::quasar::EspressoV2Chain>::__shared_ptr_default_delete<kaldi::quasar::EspressoV2Chain,kaldi::quasar::EspressoV2Chain>,std::allocator<kaldi::quasar::EspressoV2Chain>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B54660CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::quasar::EspressoV2Plan>::shared_ptr[abi:ne200100]<kaldi::quasar::EspressoV2Plan,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::MTESNetworkPlan *,std::shared_ptr<kaldi::quasar::MTESNetworkPlan>::__shared_ptr_default_delete<kaldi::quasar::MTESNetworkPlan,kaldi::quasar::MTESNetworkPlan>,std::allocator<kaldi::quasar::MTESNetworkPlan>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::MTESNetworkPlan *,std::shared_ptr<kaldi::quasar::MTESNetworkPlan>::__shared_ptr_default_delete<kaldi::quasar::MTESNetworkPlan,kaldi::quasar::MTESNetworkPlan>,std::allocator<kaldi::quasar::MTESNetworkPlan>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::MTESNetworkPlan *,std::shared_ptr<kaldi::quasar::MTESNetworkPlan>::__shared_ptr_default_delete<kaldi::quasar::MTESNetworkPlan,kaldi::quasar::MTESNetworkPlan>,std::allocator<kaldi::quasar::MTESNetworkPlan>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

char *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string>>();
  }

  return v3;
}

void std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::__shared_ptr_emplace<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>::shared_ptr[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf,std::default_delete<kaldi::quasar::ComputeEngineBufferItf>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<kaldi::quasar::ComputeEngineBufferItf  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::ComputeEngineBufferItf  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::ComputeEngineBufferItf  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__construct_one_at_end[abi:ne200100]<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *(v5 + 24) = v7;
  *(a1 + 8) = v5 + 32;
}

void std::__shared_ptr_emplace<std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::EndPointer::EndPointer(uint64_t result, _OWORD *a2)
{
  *result = *a2;
  v2 = *(result + 12);
  if (v2 < 0.0 || v2 > 1.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "opts_.eos_probability_threshold >= 0.0 && opts_.eos_probability_threshold <= 1.0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

BOOL kaldi::EndPointer::IsEndPoint(kaldi::EndPointer *this, float a2, float a3, int a4, int a5, int a6)
{
  if (*this != 1)
  {
    return 0;
  }

  if (*(this + 1) <= a4)
  {
    return 1;
  }

  if (a5 < 1)
  {
    return 0;
  }

  if (*(this + 2) <= a6)
  {
    return 1;
  }

  v6 = *(this + 3);
  if (v6 < a2)
  {
    return 1;
  }

  return v6 < a3;
}

void sub_1B54674E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, char a63)
{
  STACK[0x228] = &a51;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);

  STACK[0x228] = &a54;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  STACK[0x228] = &a63;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);

  _Unwind_Resume(a1);
}

id EARHelpers::MultiArrayFromJaggedVec(uint64_t **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (*a1 != a1[1])
  {
    operator new();
  }

  return v2;
}

kaldi::nnet1::GradientNormalizationParams *kaldi::nnet1::GradientNormalizationParams::GradientNormalizationParams(kaldi::nnet1::GradientNormalizationParams *this)
{
  *this = -1082130432;
  v6 = 10;
  strcpy(__p, "NoGradNorm");
  kaldi::nnet1::Component::MarkerToGradientNormType(__p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 1) = v3;
  *(this + 4) = 0;
  return this;
}

void sub_1B5467A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN10EARHelpers23MultiArrayFromJaggedVecERNSt3__16vectorINS1_IfNS0_9allocatorIfEEEENS2_IS4_EEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5467B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<std::vector<std::vector<std::pair<int,float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::pair<int,float>>>*,std::vector<std::vector<std::pair<int,float>>>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5467CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::pair<int,float>>>>,std::vector<std::vector<std::pair<int,float>>>*,std::vector<std::vector<std::pair<int,float>>>*,std::vector<std::vector<std::pair<int,float>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<std::pair<int,float>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::pair<int,float>>>>,std::vector<std::vector<std::pair<int,float>>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::pair<int,float>>>>,std::vector<std::vector<std::pair<int,float>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::pair<int,float>>>>,std::vector<std::vector<std::pair<int,float>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::pair<int,float>>>>,std::vector<std::vector<std::pair<int,float>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void RefList_freeThread(void)
{
  v0 = idFromFilenameResult();
  v1 = *v0;
  if (!*v0)
  {
    v1 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
    *v0 = v1;
  }

  if (!*v1 || (free(*v1), (v1 = *v0) != 0))
  {
    free(v1);
    *v0 = 0;
  }
}

void quasar::tennessee::operator<<(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v4[0] = v3;
  v4[1] = v2;
  quasar::tennessee::ConvertWideCharacterToMultibyteString(v4);
}

void sub_1B5467FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5468064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(va);
  _Unwind_Resume(a1);
}

void sub_1B5468108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(va);
  _Unwind_Resume(a1);
}

void std::wstring_convert<std::codecvt_utf8<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::to_bytes(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_62;
  }

  v7 = a2;
  std::string::basic_string[abi:ne200100](a4, (a3 - a2) >> 1, 0);
  if (a3 == v7)
  {
    v23 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v23;
    v24 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v24;
    v25 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v25;
    v26 = *(a1 + 104);
    v50 = *(a1 + 88);
    v51 = v26;
  }

  else
  {
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a4, v8, 0);
    v9 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v9;
    v10 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v10;
    v11 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v11;
    v12 = *(a1 + 88);
    v13 = *(a1 + 104);
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    v16 = v15 + size;
    v50 = *(a1 + 88);
    v51 = v13;
    while (1)
    {
      v17 = (*(**(a1 + 48) + 24))(*(a1 + 48), &v48, v7, a3, &v47, v15, v16, &v46, v12);
      v18 = v47 == v7;
      *(a1 + 184) += (v47 - v7) >> 2;
      if (v18)
      {
        goto LABEL_60;
      }

      if (v17 != 1)
      {
        break;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = a4->__r_.__value_.__r.__words[0];
      }

      v20 = v46 - v19;
      std::string::resize(a4, 2 * (v46 - v19), 0);
      v21 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v21 & 0x80u) == 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = a4->__r_.__value_.__r.__words[0];
      }

      v15 = (v22 + v20);
      if ((v21 & 0x80u) != 0)
      {
        v21 = a4->__r_.__value_.__l.__size_;
      }

      v16 = v22 + v21;
      v7 = v47;
      if (v47 >= a3)
      {
        goto LABEL_60;
      }
    }

    if (v17)
    {
      if (v17 != 3)
      {
        goto LABEL_60;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v15 - v27, 0);
      std::string::append[abi:ne200100]<char const*,0>(a4, v7, a3);
    }

    else
    {
      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = a4;
      }

      else
      {
        v28 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v46 - v28, 0);
    }
  }

  v29 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v30 = a4->__r_.__value_.__l.__size_;
  if ((v29 & 0x80u) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(a4, v31, 0);
  if ((v29 & 0x80u) == 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = v30;
  }

  v33 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v34 = v33 < 0;
  if (v33 >= 0)
  {
    v35 = a4;
  }

  else
  {
    v35 = a4->__r_.__value_.__r.__words[0];
  }

  v36 = v35 + v32;
  if (v34)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  else
  {
    v37 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  for (i = &v36[v37]; ; i = v43 + v42)
  {
    v39 = (*(**(a1 + 48) + 40))(*(a1 + 48), &v48, v36, i, &v47);
    if (v39 != 1)
    {
      break;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = a4;
    }

    else
    {
      v40 = a4->__r_.__value_.__r.__words[0];
    }

    v41 = v47 - v40;
    std::string::resize(a4, 2 * (v47 - v40), 0);
    v42 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v42 & 0x80u) == 0)
    {
      v43 = a4;
    }

    else
    {
      v43 = a4->__r_.__value_.__r.__words[0];
    }

    v36 = v43 + v41;
    if ((v42 & 0x80u) != 0)
    {
      v42 = a4->__r_.__value_.__l.__size_;
    }
  }

  if (!v39)
  {
    v36 = v47;
    goto LABEL_68;
  }

  if (v39 == 3)
  {
LABEL_68:
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = a4;
    }

    else
    {
      v45 = a4->__r_.__value_.__r.__words[0];
    }

    std::string::resize(a4, v36 - v45, 0);
    return;
  }

LABEL_60:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

LABEL_62:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      *&a4->__r_.__value_.__l.__data_ = *a1;
      a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

LABEL_73:
    std::__throw_range_error[abi:ne200100]("wstring_convert: to_bytes error");
  }

  v44 = *(a1 + 8);
  if (!v44)
  {
    goto LABEL_73;
  }

  std::string::__init_copy_ctor_external(a4, *a1, v44);
}

void sub_1B54685B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

size_t quasar::tennessee::DecodeBytesToString<char>@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  result = strlen(a1);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, a1, result);
  }

  *(a2 + v5) = 0;
  return result;
}

void std::codecvt_utf8<wchar_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8[abi:ne200100](std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x1B8C85350);
}

void std::wstring_convert<std::codecvt_utf8<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::from_bytes(uint64_t a1@<X0>, std::wstring *a2@<X1>, std::wstring *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_29;
  }

  v7 = a2;
  v8 = 2 * (a3 - a2);
  if (v8 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v8 + 2);
  }

  *(a4 + 23) = v8;
  if (a3 != a2)
  {
    bzero(a4, 8 * (a3 - a2));
  }

  *(a4 + 4 * v8) = 0;
  if (v7 != a3)
  {
    if (*(a4 + 23) >= 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::wstring::resize(a4, v9, 0);
    v10 = *(a1 + 136);
    v30[4] = *(a1 + 120);
    v30[5] = v10;
    v11 = *(a1 + 168);
    v30[6] = *(a1 + 152);
    v30[7] = v11;
    v12 = *(a1 + 72);
    v30[0] = *(a1 + 56);
    v30[1] = v12;
    v13 = *(a1 + 88);
    v14 = *(a1 + 104);
    v15 = *(a4 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a4 + 8);
    }

    v17 = v16 + 4 * v15;
    v30[2] = *(a1 + 88);
    v30[3] = v14;
    do
    {
      v18 = (*(**(a1 + 48) + 32))(*(a1 + 48), v30, v7, a3, &v29, v16, v17, &v28, v13);
      v19 = v29 == v7;
      *(a1 + 184) += v29 - v7;
      if (v19)
      {
        goto LABEL_40;
      }

      if (v18 != 1)
      {
        if (v18)
        {
          if (v18 != 3)
          {
LABEL_40:
            if ((*(a4 + 23) & 0x80) != 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          if (*(a4 + 23) >= 0)
          {
            v25 = a4;
          }

          else
          {
            v25 = *a4;
          }

          std::wstring::resize(a4, (v16 - v25) >> 2, 0);
          std::wstring::append[abi:ne200100]<wchar_t const*,0>(a4, v7, a3);
        }

        else
        {
          if (*(a4 + 23) >= 0)
          {
            v27 = a4;
          }

          else
          {
            v27 = *a4;
          }

          std::wstring::resize(a4, (v28 - v27) >> 2, 0);
        }

        return;
      }

      if (*(a4 + 23) >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      v21 = v28 - v20;
      std::wstring::resize(a4, (v28 - v20) >> 1, 0);
      v22 = *(a4 + 23);
      v23 = v22;
      v24 = *a4;
      if ((v22 & 0x80u) == 0)
      {
        v24 = a4;
      }

      v16 = v24 + v21;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a4 + 8);
      }

      v17 = v24 + 4 * v22;
      v7 = v29;
    }

    while (v29 < a3);
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    operator delete(*a4);
LABEL_29:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      if (*(a1 + 47))
      {
        *a4 = *(a1 + 24);
        *(a4 + 16) = *(a1 + 40);
        return;
      }

LABEL_48:
      std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
    }

    v26 = *(a1 + 32);
    if (!v26)
    {
      goto LABEL_48;
    }

    std::basic_string<char32_t>::__init_copy_ctor_external(a4, *(a1 + 24), v26);
  }
}

void sub_1B54689B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5468B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    [_EARPhoneticMatchBuilder initWithModelRoot:a13 jsonConfigFile:? dataFeeds:?];
  }

  std::unique_ptr<quasar::SimpleFstLmRescorer>::~unique_ptr[abi:ne200100](v19 + 226);
  quasar::rescoring::AdapterModelMultiplexer::~AdapterModelMultiplexer((v19 + 222));
  quasar::rescoring::RescorerConfig::~RescorerConfig(v19);
  _Unwind_Resume(a1);
}

void sub_1B5468C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1B8C85350](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<quasar::SimpleFstLmRescorer>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 80);
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1B8C85350](v2, 0x1072C40140BB7A5);
  }

  return a1;
}

void quasar::rescoring::AdapterModelMultiplexer::~AdapterModelMultiplexer(quasar::rescoring::AdapterModelMultiplexer *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>>>::destroy(this, *(this + 1));
}

void quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(uint64_t a1, int *a2, int a3, char **a4, char **a5, uint64_t a6, uint64_t a7, char **a8, void *a9)
{
  if (a3 == 7)
  {
    v15 = *(a1 + 139);
  }

  else
  {
    v15 = 1;
  }

  v172 = v15;
  v16 = (a2 - *a2);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = (a2 + v17 + *(a2 + v17));
  }

  else
  {
    v18 = 0;
  }

  flatbuffers_2_0_6::String::str(v191, v18);
  v19 = (a2 + *(a2 - *a2 + 6));
  v20 = *(v19 + *v19);
  if (v20)
  {
    v21 = *(a1 + 1760);
    if (quasar::gLogLevel >= 4)
    {
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Rescoring n-best list with ", 27);
      v23 = MEMORY[0x1B8C84C30](v22, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " entries.", 9);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    std::vector<std::vector<float>>::vector[abi:ne200100](v190, v21);
    LODWORD(v173.__begin_) = 0;
    std::vector<float>::vector[abi:ne200100](&__p, v20, &v173);
    std::vector<std::vector<float>>::vector[abi:ne200100](v189, v21, &__p);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    v188[0] = v189;
    v188[1] = v20;
    v188[2] = v21;
    v24 = *(a1 + 80);
    kaldi::Matrix<float>::Resize(a4, v20, 1, 0, 0);
    if (a5)
    {
      kaldi::Matrix<float>::Resize(a5, v20, 1, 0, 0);
    }

    if (a6)
    {
      kaldi::Matrix<float>::Resize(a6, v20, 1, 0, 0);
    }

    if (a8)
    {
      kaldi::Matrix<float>::Resize(a8, 1, v21, 0, 0);
    }

    v165 = a5;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    __src = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v25 = *(a1 + 1704);
    v170 = *(v25 + 120);
    v26 = (*(**(v25 + 96) + 112))(*(v25 + 96));
    v167 = a3;
    v161 = a8;
    v162 = a7;
    v163 = a4;
    v27 = v26;
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = *(v25 + 120) + v26;
    }

    v28 = 0;
    v169 = (a1 + 1744);
    v166 = v20;
    v171 = v27;
    while (1)
    {
      v29 = (a2 - *a2);
      if (*v29 < 7u)
      {
        v30 = 0;
        v31 = v167;
      }

      else
      {
        v30 = v29[3];
        v31 = v167;
        if (v30)
        {
          v30 += a2 + *(a2 + v30);
        }
      }

      v32 = v30 + 4 * v28;
      v35 = *(v32 + 4);
      v33 = v32 + 4;
      v34 = v35;
      v178[0] = v21;
      v178[1] = v28;
      v178[2] = v188;
      if (v172)
      {
        v36 = v185;
        v37 = v186;
        while (v37 != v36)
        {
          v38 = *(v37 - 1);
          v37 -= 3;
          if (v38 < 0)
          {
            operator delete(*v37);
          }
        }

        v186 = v36;
      }

      else
      {
        v183 = __src;
      }

      v39 = (v33 + v34);
      if (v31 == 5)
      {
        quasar::rescoring::extractPostItnFromNBestListEntry(v39, &v173);
        if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
        {
          value_high = HIBYTE(v173.__end_cap_.__value_);
        }

        else
        {
          value_high = v173.__end_;
        }

        if (value_high)
        {
          v41 = v179;
          v42 = v180;
          while (v42 != v41)
          {
            v42 -= 4;
            *&__p = v42;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
          }

          v180 = v41;
          if (((*(**(a1 + 1816) + 16))(*(a1 + 1816), &v173, &v179) & 1) == 0)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Tokenizer failed to tokenize '", 30);
            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              begin = &v173;
            }

            else
            {
              begin = v173.__begin_;
            }

            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              end = HIBYTE(v173.__end_cap_.__value_);
            }

            else
            {
              end = v173.__end_;
            }

            v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, begin, end);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, "'.", 2);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
          }

          if (v180 - v179 != 32)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Tokenizer returned ", 19);
            v150 = MEMORY[0x1B8C84C30](v149, (v180 - v179) >> 5);
            v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, " hypotheses, ", 13);
            v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, "instead of expected singleton for '", 35);
            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              v153 = &v173;
            }

            else
            {
              v153 = v173.__begin_;
            }

            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              v154 = HIBYTE(v173.__end_cap_.__value_);
            }

            else
            {
              v154 = v173.__end_;
            }

            v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, v153, v154);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v155, "'.", 2);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
          }

          v45 = *v179;
          v44 = v179[1];
          while (v45 != v44)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, " ");
            quasar::splitAndTrimNoEmpty(v45, &__p, &v185);
            if (SBYTE7(v194) < 0)
            {
              operator delete(__p);
            }

            v45 = (v45 + 32);
          }

          if (quasar::gLogLevel > 5)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Hypothesis ", 11);
            v47 = MEMORY[0x1B8C84C30](v46, v28);
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " has post-ITN text ", 20);
            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              v49 = &v173;
            }

            else
            {
              v49 = v173.__begin_;
            }

            if (SHIBYTE(v173.__end_cap_.__value_) >= 0)
            {
              v50 = HIBYTE(v173.__end_cap_.__value_);
            }

            else
            {
              v50 = v173.__end_;
            }

            v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
            v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " ", 2);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "and tokenized post-ITN tokens ", 30);
            v54 = quasar::lm::operator<<<std::string>(v53, &v185);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ".", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
          }
        }

        else
        {
          quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(quasar::rescoring::NBestList const&,quasar::rescoring::FeatureType,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>> *)const::$_2::operator()(v178);
        }

        if (SHIBYTE(v173.__end_cap_.__value_) < 0)
        {
          v79 = v173.__begin_;
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      if (v31 != 7)
      {
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown language model feature.", 31);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
      }

      v43 = v171;
      if (*(a1 + 139) == 1)
      {
        quasar::rescoring::extractPreItnFromNBestListEntry(v39, &__p);
        if ((SBYTE7(v194) & 0x80u) == 0)
        {
          value_high = BYTE7(v194);
        }

        else
        {
          value_high = *(&__p + 1);
        }

        if (value_high)
        {
          quasar::rescoring::PreItnTokenExtractor::operator()(a1 + 1832, &__p, &v185);
        }

        quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(quasar::rescoring::NBestList const&,quasar::rescoring::FeatureType,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>> *)const::$_2::operator()(v178);
        if (SBYTE7(v194) < 0)
        {
          v79 = __p;
LABEL_106:
          operator delete(v79);
        }

LABEL_107:
        if (value_high)
        {
          goto LABEL_108;
        }

        goto LABEL_129;
      }

      v55 = (v39 + *(v39 - *v39 + 8));
      v56 = (v55 + *v55);
      v57 = *v56;
      if (!v57)
      {
        goto LABEL_108;
      }

      v58 = &v56[v57];
      while (1)
      {
        v59 = v56[1];
        v60 = (++v56 + v59);
        v61 = (v60 - *v60);
        if (*v61 >= 9u && (v62 = v61[4]) != 0)
        {
          v63 = *(v60 + v62);
          if (v63 == -1)
          {
            if (quasar::gLogLevel >= 2)
            {
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0u;
              v195 = 0u;
              __p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Encountered OOV in pre-ITN input tokens. This is unexpected and may indicate a problem.", 87);
              quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
            }

            goto LABEL_85;
          }

          v64 = v63;
        }

        else
        {
          v64 = 0;
          v63 = 0;
        }

        if (v43 <= v64)
        {
          if (quasar::gLogLevel >= 4)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Encountered pre-ITN input token with identifier that exceeds the symbol table. ", 79);
            v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "If the system which generated the pre-ITN uses the same symbol table as the rescoring system, ", 94);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "then this indicates that we're dealing with a personalized tokens. Substituing by OOV.", 86);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
          }

LABEL_85:
          v64 = -1;
LABEL_86:
          v69 = v183;
          if (v183 >= v184)
          {
            v71 = __src;
            v72 = v183 - __src;
            v73 = (v183 - __src) >> 3;
            v74 = v73 + 1;
            if ((v73 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v75 = v184 - __src;
            if ((v184 - __src) >> 2 > v74)
            {
              v74 = v75 >> 2;
            }

            v76 = v75 >= 0x7FFFFFFFFFFFFFF8;
            v77 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v76)
            {
              v77 = v74;
            }

            if (v77)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v77);
            }

            *(8 * v73) = v64;
            v70 = 8 * v73 + 8;
            memcpy(0, v71, v72);
            v78 = __src;
            __src = 0;
            v183 = v70;
            v184 = 0;
            if (v78)
            {
              operator delete(v78);
            }

            v43 = v171;
          }

          else
          {
            *v183 = v64;
            v70 = (v69 + 8);
          }

          v183 = v70;
          goto LABEL_99;
        }

        if (v170 > v64)
        {
          break;
        }

        if (!*(a1 + 1752))
        {
          goto LABEL_86;
        }

        v65 = a1 + 1744;
        v66 = *v169;
        if (!*v169)
        {
          goto LABEL_86;
        }

        do
        {
          if (*(v66 + 28) >= v63)
          {
            v65 = v66;
          }

          v66 = *(v66 + 8 * (*(v66 + 28) < v63));
        }

        while (v66);
        if (v65 == v169 || v63 < *(v65 + 28))
        {
          goto LABEL_86;
        }

        if (quasar::gLogLevel >= 6)
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Found unpronounced token in hypothesis; filtering token for LM scoring.", 71);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
        }

LABEL_99:
        if (v56 == v58)
        {
          goto LABEL_108;
        }
      }

      if (quasar::gLogLevel >= 1)
      {
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Encountered a pre-ITN token out of bounds for the symbol table. This may indicate a serious error. ", 99);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Skipping utterance.", 19);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
      }

      v183 = __src;
LABEL_108:
      if (v172)
      {
        v80 = 0xAAAAAAAAAAAAAAABLL * (v186 - v185);
      }

      else
      {
        v80 = (v183 - __src) >> 3;
      }

      if (v80)
      {
        v81 = v80 + 1;
        if (v165)
        {
          *&(*v165)[4 * *(v165 + 4) * v28] = v81;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        quasar::LmInfo::LmInfo(&v173, 1, &__p);
        if (SBYTE7(v194) < 0)
        {
          operator delete(__p);
        }

        v82 = *(a1 + 1808);
        if (v172)
        {
          v83 = quasar::SimpleFstLmRescorer::computeLmScore(v82, &v185, &v173);
        }

        else
        {
          v83 = quasar::SimpleFstLmRescorer::computeLmScore(v82, &__src, &v173, 0);
        }

        if (v83)
        {
          quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(quasar::rescoring::NBestList const&,quasar::rescoring::FeatureType,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>> *)const::$_2::operator()(v178);
        }

        else
        {
          v84 = v173.__end_;
          value = v173.__end_cap_.__value_;
          if (v81 != 0x2E8BA2E8BA2E8BA3 * ((v173.__end_cap_.__value_ - v173.__end_) >> 3))
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Number of token infos (", 23);
            v157 = MEMORY[0x1B8C84C30](v156, 0x2E8BA2E8BA2E8BA3 * ((v173.__end_cap_.__value_ - v173.__end_) >> 3));
            v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, ") ", 2);
            v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v158, "exceeds expected number of tokens (", 35);
            v160 = MEMORY[0x1B8C84C30](v159, v81);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v160, ").", 2);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
          }

          if (v173.__end_ != v173.__end_cap_.__value_)
          {
            v86 = 0;
            do
            {
              v87 = *(v84 + 5);
              v88 = *(v84 + 6);
              if (v21 != (v88 - v87) >> 2)
              {
                v208 = 0u;
                v209 = 0u;
                v206 = 0u;
                v207 = 0u;
                v204 = 0u;
                v205 = 0u;
                v202 = 0u;
                v203 = 0u;
                v200 = 0u;
                v201 = 0u;
                v198 = 0u;
                v199 = 0u;
                v196 = 0u;
                v197 = 0u;
                v194 = 0u;
                v195 = 0u;
                __p = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "FstLmScorer returned scores for ", 32);
                v141 = MEMORY[0x1B8C84C30](v140, (*(v84 + 6) - *(v84 + 5)) >> 2);
                v142 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v141, " models, ", 9);
                v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, "whereas ", 8);
                v144 = MEMORY[0x1B8C84C30](v143, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, " were expected.", 15);
                quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
              }

              if (v88 != v87)
              {
                v89 = 0;
                v90 = 0;
                v91 = 0;
                do
                {
                  if (*(v84 + 36) != 1 || (v92 = (a1 + 84), (*(a1 + 88) & 1) == 0))
                  {
                    v92 = (v87 + v90);
                  }

                  LODWORD(__p) = *v92;
                  std::vector<float>::push_back[abi:ne200100]((v190[0] + v89), &__p);
                  *(*(*v188[0] + v89) + 4 * v28) = *&__p + *(*(*v188[0] + v89) + 4 * v28);
                  ++v91;
                  v87 = *(v84 + 5);
                  v90 += 4;
                  v89 += 24;
                }

                while (v91 < (*(v84 + 6) - v87) >> 2);
              }

              v86 += *(v84 + 36);
              v84 += 22;
            }

            while (v84 != value);
            if (a6 && v86)
            {
              *(*a6 + 4 * *(a6 + 16) * v28) = v86;
            }
          }
        }

        if (v176)
        {
          v177 = v176;
          operator delete(v176);
        }

        if (v175 < 0)
        {
          operator delete(v174);
        }

        *&__p = &v173.__end_;
        std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        if (quasar::gLogLevel >= 2)
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Encountered empty hypothesis. Is there another error above that may explain it? If not, then this is an odd edge-case.", 118);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
        }

        quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(quasar::rescoring::NBestList const&,quasar::rescoring::FeatureType,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>> *)const::$_2::operator()(v178);
      }

LABEL_129:
      if (++v28 == v166)
      {
        v94 = v190[0];
        if (*v190[0] == *(v190[0] + 8))
        {
          if (quasar::gLogLevel >= 2)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unable to rescore any hypotheses for utterance ", 47);
            if ((v192 & 0x80u) == 0)
            {
              v135 = v191;
            }

            else
            {
              v135 = v191[0];
            }

            if ((v192 & 0x80u) == 0)
            {
              v136 = v192;
            }

            else
            {
              v136 = v191[1];
            }

            v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, v135, v136);
            v138 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, " ", 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v138, "due to missing token scores.", 28);
            quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
            v94 = v190[0];
          }

          v139 = v190[1];
          while (v94 != v139)
          {
            std::vector<float>::push_back[abi:ne200100](v94, (a1 + 80));
            v94 += 3;
          }
        }

        if (a9)
        {
          v96 = *v190[0];
          v95 = *(v190[0] + 8);
          v97 = (v95 - *v190[0]) >> 2;
          kaldi::Matrix<double>::Matrix(&v173, v21, v97, 0, 0);
          if (v21)
          {
            v98 = 0;
            v99 = v190[0];
            v100 = v173.__begin_;
            v101 = v173.__end_cap_.__value_;
            if (v97 <= 1)
            {
              v102 = 1;
            }

            else
            {
              v102 = v97;
            }

            do
            {
              if (v95 != v96)
              {
                v103 = 0;
                v104 = 0;
                v105 = *(v99 + 24 * v98);
                do
                {
                  *(&v100[2 * v101 * v98] + (v103 >> 29)) = *(v105 + 4 * v104++);
                  v103 += 0x100000000;
                }

                while (v102 != v104);
              }

              ++v98;
            }

            while (v98 != v21);
          }

          kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>>::CheckImpl(a9);
          if (((*(**a9 + 8))(*a9, v191, &v173) & 1) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error in TableWriter::Write", 27);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
          }

          kaldi::Matrix<float>::~Matrix(&v173);
        }

        if (v21 <= 1)
        {
          v119 = 0;
          v120 = 0;
          v121 = *v189[0];
          v122 = *v163;
          v123 = *(v163 + 4);
          do
          {
            v124 = *(v121 + 4 * v120);
            if ((LODWORD(v124) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v124 = v24;
            }

            *&v122[4 * v119] = v124;
            if (v161)
            {
              **v161 = 1065353216;
            }

            ++v120;
            v119 += v123;
          }

          while (v166 != v120);
        }

        else
        {
          v106 = 1.0 / v21;
          *&__p = v106;
          std::vector<float>::vector[abi:ne200100](&v173, v21, &__p);
          kaldi::quasar::EstimateLinearWeights(v190, &v173, 20, 0.00097656);
          if (quasar::gLogLevel >= 6)
          {
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            __p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Rescoring estimated weights ", 28);
            v108 = quasar::lm::operator<<<float>(v107, &v173);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, ".", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
          }

          LODWORD(v178[0]) = 0;
          std::vector<float>::vector[abi:ne200100](&__p, v166, v178);
          kaldi::quasar::InterpolateLogScoresLinearly(v189, &v173, &__p);
          v109 = 0;
          v110 = 0;
          v111 = __p;
          v112 = *v163;
          v113 = *(v163 + 4);
          do
          {
            v114 = v111[v110];
            if ((LODWORD(v114) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v114 = v24;
            }

            *&v112[4 * v109] = v114;
            ++v110;
            v109 += v113;
          }

          while (v166 != v110);
          if (!v161)
          {
            goto LABEL_171;
          }

          v115 = 0;
          v116 = 0;
          v117 = v173.__begin_;
          v118 = *v161;
          do
          {
            *(v118 + (v115 >> 30)) = v117[v116++];
            v115 += 0x100000000;
          }

          while (v21 != v116);
          if (v111)
          {
LABEL_171:
            *(&__p + 1) = v111;
            operator delete(v111);
          }

          if (v173.__begin_)
          {
            v173.__end_ = v173.__begin_;
            operator delete(v173.__begin_);
          }
        }

        if (v162)
        {
          kaldi::Matrix<float>::Resize(v162, v166, v21, 0, 0);
          v125 = 0;
          v126 = v189[0];
          do
          {
            if (v21)
            {
              v127 = 0;
              v128 = 0;
              v129 = *v162 + 4 * *(v162 + 16) * v125;
              v130 = v126;
              do
              {
                v131 = *v130;
                v130 += 3;
                v132 = *(v131 + 4 * v125);
                if ((LODWORD(v132) & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  v132 = v24;
                }

                *(v129 + (v127 >> 30)) = v132;
                ++v128;
                v127 += 0x100000000;
              }

              while (v21 != v128);
            }

            ++v125;
          }

          while (v125 != v166);
        }

        if (quasar::gLogLevel >= 6)
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Rescored hypothesis log-probabilities: ", 39);
          kaldi::MatrixBase<float>::Write(v163, v133, 0, 0);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
        }

        *&__p = &v179;
        std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (__src)
        {
          v183 = __src;
          operator delete(__src);
        }

        *&__p = &v185;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        *&__p = v189;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
        *&__p = v190;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
        goto LABEL_195;
      }
    }
  }

  if (quasar::gLogLevel >= 2)
  {
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unable to rescore n-best list due to lack of hypotheses.", 56);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  }

LABEL_195:
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }
}

void sub_1B546A434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  JUMPOUT(0x1B546A468);
}

void sub_1B546A45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  quasar::LmInfo::~LmInfo(&a24);
  a24 = &a40;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  a24 = &a46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  a24 = &a52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a24);
  a24 = &a55;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a63 < 0)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

uint64_t *flatbuffers_2_0_6::String::str@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v3;
  if (v3)
  {
    this = memcpy(a1, this + 4, v3);
  }

  *(a1 + v3) = 0;
  return this;
}

void quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(quasar::rescoring::NBestList const&,quasar::rescoring::FeatureType,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::Matrix<float> *,kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>> *)const::$_2::operator()(uint64_t *a1)
{
  if (quasar::gLogLevel >= 2)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Unable to compute LM scores for hypothesis ", 43);
    v3 = MEMORY[0x1B8C84C30](v2, a1[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ".", 1);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = **a1[2];
    do
    {
      v7 = *v6;
      v6 += 3;
      *(v7 + 4 * v5) = *(v7 + 4 * v5) + -INFINITY;
      --v4;
    }

    while (v4);
  }
}

void *quasar::lm::operator<<<float>(void *a1, float **a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      ++v4;
      v6 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

BOOL quasar::rescoring::Rescorer::rescoreHypotheses(uint64_t a1, int *a2, std::vector<unsigned int> *a3)
{
  v3 = (a2 - *a2);
  if (!*(a2 + v3[3] + *(a2 + v3[3])))
  {
    return 0;
  }

  if (*v3 >= 9u && (v7 = v3[4]) != 0)
  {
    v8 = (a2 + v7 + *(a2 + v7));
  }

  else
  {
    v8 = 0;
  }

  Model = quasar::rescoring::AdapterModelMultiplexer::getModel(a1 + 1776, v8);
  if (!Model)
  {
    return 0;
  }

  v10 = Model;
  Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(Model);
  v12 = (*(*v10 + 24))(v10);
  quasar::rescoring::Rescorer::computeFeatureValues(a1, Featurizer, v12, a2, 0, &v19);
  v13 = v19 == 1;
  if (v19 == 1)
  {
    v14 = (a2 + *(a2 - *a2 + 6));
    v15 = *(v14 + *v14);
    std::vector<int>::resize(a3, v15);
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        (*(*v10 + 16))(v10, a2, v20, i);
        if (i >= a3->__end_ - a3->__begin_)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        a3->__begin_[i] = v17;
      }
    }
  }

  std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(v20, v20[1]);
  return v13;
}

void quasar::rescoring::Rescorer::computeFeatureValues(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 ***a3@<X2>, int *a4@<X3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = (a4 + *(a4 - *a4 + 6));
  v41 = *(v7 + *v7);
  if (v41)
  {
    v12 = *(a1 + 1760);
    v50[0] = 0;
    v50[1] = 0;
    v49 = v50;
    if (*(a1 + 138) == 1)
    {
      kaldi::Matrix<float>::Matrix(v46);
      kaldi::Matrix<float>::Matrix(v45);
      kaldi::Matrix<float>::Matrix(v44);
      kaldi::Matrix<float>::Matrix(v43);
      kaldi::Matrix<float>::Matrix(v42);
      quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(a1, a4, 5, v46, v45, v44, v43, v42, 0);
      if ((v13 & 1) == 0)
      {
        if (quasar::gLogLevel >= 2)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v52);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "Unable to score hypotheses by re-tokenizing post-ITN.", 53);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&v52);
        }

        kaldi::Matrix<float>::Resize(v46, v41, 1, 0, 0);
        kaldi::Matrix<float>::Resize(v45, v41, 1, 0, 0);
        kaldi::Matrix<float>::Resize(v44, v41, 1, 0, 0);
        kaldi::Matrix<float>::Resize(v43, v41, v12, 0, 0);
        kaldi::Matrix<float>::Resize(v42, 1, v12, 0, 0);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(5, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v46);
      v51 = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v51);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(4, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v45);
      v51 = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v51);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(19, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v44);
      v51 = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v51);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(13, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v43);
      v51 = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v51);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(14, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v42);
      v51 = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v51);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      kaldi::Matrix<float>::~Matrix(v42);
      kaldi::Matrix<float>::~Matrix(v43);
      kaldi::Matrix<float>::~Matrix(v44);
      kaldi::Matrix<float>::~Matrix(v45);
      kaldi::Matrix<float>::~Matrix(v46);
    }

    if (*(a1 + 137) == 1)
    {
      kaldi::Matrix<float>::Matrix(v46);
      kaldi::Matrix<float>::Matrix(v45);
      kaldi::Matrix<float>::Matrix(v44);
      kaldi::Matrix<float>::Matrix(v43);
      quasar::rescoring::Rescorer::scoreHypothesesWithLanguageModels(a1, a4, 7, v46, 0, v45, v44, v43, 0);
      if ((v14 & 1) == 0)
      {
        if (quasar::gLogLevel >= 2)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v52);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "Unable to score hypotheses by using device-generated pre-ITN.", 61);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&v52);
        }

        kaldi::Matrix<float>::Resize(v46, v41, 1, 0, 0);
        kaldi::Matrix<float>::Resize(v45, v41, 1, 0, 0);
        kaldi::Matrix<float>::Resize(v44, v41, v12, 0, 0);
        kaldi::Matrix<float>::Resize(v43, 1, v12, 0, 0);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(7, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v46);
      v42[0] = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](v42);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(18, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v45);
      v42[0] = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](v42);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(11, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v44);
      v42[0] = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](v42);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      quasar::rescoring::CreateAtomicTransformedFeatureDesc(12, &v52);
      quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v43);
      v42[0] = &v55;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](v42);
      if (*(&v53 + 1))
      {
        *&v54 = *(&v53 + 1);
        operator delete(*(&v53 + 1));
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      kaldi::Matrix<float>::~Matrix(v43);
      kaldi::Matrix<float>::~Matrix(v44);
      kaldi::Matrix<float>::~Matrix(v45);
      kaldi::Matrix<float>::~Matrix(v46);
    }

    quasar::rescoring::GenerateTransformedFeatureValues(a4, a2, a3, &v49);
    if (v15)
    {
      if (a5)
      {
        v16 = 0;
        v17 = &v55;
        v18 = &unk_1EB908000;
        while (1)
        {
          v19 = quasar::rescoring::EnumValuesFeatureType(void)::values[v16];
          {
            operator new();
          }

          v20 = v18[213];
          v23 = *(v20 + 8);
          v21 = v20 + 8;
          v22 = v23;
          if (v23)
          {
            v24 = v21;
            do
            {
              if (*(v22 + 25) >= v19)
              {
                v24 = v22;
              }

              v22 = *(v22 + 8 * (*(v22 + 25) < v19));
            }

            while (v22);
            if (v24 != v21 && *(v24 + 25) <= v19)
            {
              goto LABEL_77;
            }
          }

          quasar::rescoring::CreateAtomicTransformedFeatureDesc(v19, &v52);
          if ((v19 - 11) < 4)
          {
            break;
          }

          if (v19)
          {
            if (v19 == 20)
            {
              v25 = *(a2 + 16);
            }

            else
            {
              v25 = 1;
            }

LABEL_63:
            if (v50 == std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::find<quasar::rescoring::TransformedFeatureDesc>(&v49, &v52))
            {
              v26 = v17;
              kaldi::Matrix<float>::Matrix(v46, v41, v25, 0, 0);
              for (i = 0; i != v41; ++i)
              {
                if (v25)
                {
                  v28 = 0;
                  for (j = 0; j != v25; ++j)
                  {
                    quasar::rescoring::Featurizer::GetAtomicFeatureValue(a2, a4, &v49, i, v19 + v28);
                    *(v46[0] + 4 * v47 * i + (v28 >> 30)) = v30;
                    v28 += 0x100000000;
                  }
                }
              }

              quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(&v49, &v52, v46);
              v17 = v26;
              v18 = &unk_1EB908000;
              kaldi::Matrix<float>::~Matrix(v46);
            }
          }

          v46[0] = v17;
          std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](v46);
          if (*(&v53 + 1))
          {
            *&v54 = *(&v53 + 1);
            operator delete(*(&v53 + 1));
          }

          if (v52)
          {
            *(&v52 + 1) = v52;
            operator delete(v52);
          }

LABEL_77:
          if (++v16 == 22)
          {
            goto LABEL_87;
          }
        }

        v25 = *(a2 + 20);
        goto LABEL_63;
      }

LABEL_87:
      *a6 = 1;
      std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::map[abi:ne200100](a6 + 1, &v49);
    }

    else
    {
      *(&v52 + 1) = 0;
      *&v53 = 0;
      *&v52 = &v52 + 8;
      *a6 = 4;
      std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::map[abi:ne200100](a6 + 1, &v52);
      std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(&v52, *(&v52 + 1));
    }

    v35 = v50[0];
    v36 = &v49;
  }

  else
  {
    if (quasar::gLogLevel >= 2)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v52);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "Utterance ", 10);
      v32 = (a4 - *a4);
      if (*v32 >= 5u && (v33 = v32[2]) != 0)
      {
        v34 = (a4 + v33 + *(a4 + v33));
      }

      else
      {
        v34 = 0;
      }

      flatbuffers_2_0_6::String::str(v46, v34);
      if ((v48 & 0x80u) == 0)
      {
        v37 = v46;
      }

      else
      {
        v37 = v46[0];
      }

      if ((v48 & 0x80u) == 0)
      {
        v38 = v48;
      }

      else
      {
        v38 = v46[1];
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v37, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " has no hypotheses.", 19);
      if (v48 < 0)
      {
        operator delete(v46[0]);
      }

      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v52);
    }

    *(&v52 + 1) = 0;
    *&v53 = 0;
    *&v52 = &v52 + 8;
    *a6 = 2;
    std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::map[abi:ne200100](a6 + 1, &v52);
    v35 = *(&v52 + 1);
    v36 = &v52;
  }

  std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(v36, v35);
}

void sub_1B546B25C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47)
{
  MEMORY[0x1B8C85350](v47, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(&a42, a43);
  _Unwind_Resume(a1);
}

void quasar::lm::InsertOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(uint64_t **a1, const void **a2, int *a3)
{
  v4 = quasar::lm::InsertIfNotPresent<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(a1, a2, a3);
  if (v4)
  {

    quasar::lm::nullstream(v4);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v7, 5, "InsertOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 89);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "duplicate key ", 14);
    quasar::rescoring::operator<<(v6, a2);
    quasar::lm::LogMessage::~LogMessage(v7);
  }
}

void quasar::rescoring::CreateAtomicTransformedFeatureDesc(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType const*,quasar::rescoring::FeatureType const*>(&__p, &v3, &__p, 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(a2, __p, v5, v5 - __p);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(a2 + 3, 0, 0, 0);
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1B546B578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::rescoring::Featurizer::GetAtomicFeatureValue(uint64_t a1, int *a2, uint64_t a3, unsigned int a4, char a5)
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = (a2 - *a2);
  if (*v8 < 7u)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[3];
    if (v9)
    {
      v9 += a2 + *(a2 + v9);
    }
  }

  v10 = (v9 + 4 * a4 + 4);
  v11 = *v10;
  quasar::rescoring::CreateAtomicTransformedFeatureDesc(a5, v99);
  if (a3 + 8 != std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::find<quasar::rescoring::TransformedFeatureDesc>(a3, v99))
  {
    v12 = quasar::lm::FindOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(a3, v99);
    kaldi::MatrixBase<float>::NumRows(v12);
    goto LABEL_15;
  }

  v13 = (v10 + v11);
  if (a5 > 9u)
  {
    if (a5 > 0x10u)
    {
      if (a5 != 17 && a5 != 21 && a5 != 20)
      {
        goto LABEL_147;
      }

      goto LABEL_15;
    }

    if (a5 != 10)
    {
      if (a5 == 15)
      {
        v23 = (v13 + *(v13 - *v13 + 8));
        quasar::rescoring::Featurizer::NbestListEntryContainsLMEToken(a1, (v23 + *v23));
        goto LABEL_15;
      }

      if (a5 != 16)
      {
        goto LABEL_147;
      }

      goto LABEL_15;
    }

    v20 = (v13 - *v13);
    if (*v20 >= 9u && (v21 = v20[4]) != 0)
    {
      v22 = (v13 + v21 + *(v13 + v21));
    }

    else
    {
      v22 = 0;
    }

    v27 = *v22;
    if (!v27)
    {
      goto LABEL_15;
    }

    v28 = &v22[v27];
    while (1)
    {
      v29 = v22[1];
      v30 = (++v22 + v29);
      v31 = (v30 - *v30);
      if (*v31 >= 5u && (v32 = v31[2]) != 0)
      {
        v33 = (v30 + v32 + *(v30 + v32));
      }

      else
      {
        v33 = 0;
      }

      flatbuffers_2_0_6::String::str(__p, v33);
      if ((SBYTE7(v83) & 0x80u) == 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      if ((SBYTE7(v83) & 0x80u) == 0)
      {
        v35 = SBYTE7(v83);
      }

      else
      {
        v35 = __p[1];
      }

      v36 = strlen("\\PM-");
      if (v35)
      {
        v37 = v36 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = "\\PM-";
      if (v37)
      {
LABEL_65:
        v39 = v38 == &aPm[v36];
        if ((SBYTE7(v83) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v40 = v36 - 1;
        v41 = v35 - 1;
        v38 = "\\PM-";
        while (*v34 == *v38)
        {
          ++v38;
          if (v41)
          {
            v34 = (v34 + 1);
            v42 = v40--;
            --v41;
            if (v42)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        v39 = 0;
        if ((SBYTE7(v83) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }
      }

      operator delete(__p[0]);
LABEL_67:
      if (v39 || v22 == v28)
      {
        goto LABEL_15;
      }
    }
  }

  if (a5 > 5u)
  {
    if (a5 == 6)
    {
      goto LABEL_15;
    }

    if (a5 != 8)
    {
      if (a5 != 9)
      {
        goto LABEL_147;
      }

      v17 = (v13 - *v13);
      if (*v17 >= 9u && (v18 = v17[4]) != 0)
      {
        v19 = (v13 + v18 + *(v13 + v18));
      }

      else
      {
        v19 = 0;
      }

      v61 = *v19;
      if (!v61)
      {
        goto LABEL_15;
      }

      v62 = &v19[v61];
      while (1)
      {
        v63 = v19[1];
        v64 = (++v19 + v63);
        v65 = (v64 - *v64);
        if (*v65 >= 5u && (v66 = v65[2]) != 0)
        {
          v67 = (v64 + v66 + *(v64 + v66));
        }

        else
        {
          v67 = 0;
        }

        flatbuffers_2_0_6::String::str(__p, v67);
        if ((SBYTE7(v83) & 0x80u) == 0)
        {
          v68 = __p;
        }

        else
        {
          v68 = __p[0];
        }

        if ((SBYTE7(v83) & 0x80u) == 0)
        {
          v69 = SBYTE7(v83);
        }

        else
        {
          v69 = __p[1];
        }

        v70 = strlen("\\CS-");
        if (v69)
        {
          v71 = v70 == 0;
        }

        else
        {
          v71 = 1;
        }

        v72 = "\\CS-";
        if (v71)
        {
LABEL_130:
          v73 = v72 == &aCs[v70];
          if ((SBYTE7(v83) & 0x80000000) == 0)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v74 = v70 - 1;
          v75 = v69 - 1;
          v72 = "\\CS-";
          while (*v68 == *v72)
          {
            ++v72;
            if (v75)
            {
              v68 = (v68 + 1);
              v76 = v74--;
              --v75;
              if (v76)
              {
                continue;
              }
            }

            goto LABEL_130;
          }

          v73 = 0;
          if ((SBYTE7(v83) & 0x80000000) == 0)
          {
            goto LABEL_132;
          }
        }

        operator delete(__p[0]);
LABEL_132:
        if (v73 || v19 == v62)
        {
          goto LABEL_15;
        }
      }
    }

    v24 = (v13 - *v13);
    if (*v24 >= 9u && (v25 = v24[4]) != 0)
    {
      v26 = (v13 + v25 + *(v13 + v25));
    }

    else
    {
      v26 = 0;
    }

    v105[0] = &unk_1F2D132E8;
    v105[1] = quasar::rescoring::NBestListToken::phones;
    v105[2] = 0;
    v106 = v105;
    v43 = *v26;
    if (!v43)
    {
LABEL_142:
      v77 = v105;
LABEL_144:
      std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](v77);
      goto LABEL_15;
    }

    v44 = 0;
    v45 = &v26[v43];
    while (1)
    {
      if (!v106)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v46 = v26[1];
      v47 = (*(*v106 + 48))(v106, ++v26 + v46);
      if (!v47)
      {
        goto LABEL_92;
      }

      flatbuffers_2_0_6::String::str(__p, v47);
      if ((SBYTE7(v83) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (BYTE7(v83))
      {
        v48 = __p;
        v49 = SBYTE7(v83);
LABEL_85:
        v50 = 0;
        do
        {
          v51 = *v48;
          v48 = (v48 + 1);
          if (v51 == 32)
          {
            ++v50;
          }

          v49 = v49 - 1;
        }

        while (v49);
        v44 += v50 + 1;
        if ((SBYTE7(v83) & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        v48 = __p[0];
LABEL_91:
        operator delete(v48);
      }

LABEL_92:
      if (v26 == v45)
      {
        goto LABEL_142;
      }
    }

    v48 = __p[0];
    v49 = __p[1];
    if (__p[1])
    {
      goto LABEL_85;
    }

    goto LABEL_91;
  }

  if (a5 != 1 && a5 != 2)
  {
    if (a5 == 3)
    {
      v14 = (v13 - *v13);
      if (*v14 >= 9u && (v15 = v14[4]) != 0)
      {
        v16 = (v13 + v15 + *(v13 + v15));
      }

      else
      {
        v16 = 0;
      }

      v103[0] = &unk_1F2D132E8;
      v103[1] = quasar::rescoring::NBestListToken::text;
      v103[2] = 0;
      v104 = v103;
      v52 = *v16;
      if (v52)
      {
        v53 = 0;
        v54 = &v16[v52];
        while (1)
        {
          if (!v104)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v55 = v16[1];
          v56 = (*(*v104 + 48))(v104, ++v16 + v55);
          if (!v56)
          {
            goto LABEL_110;
          }

          flatbuffers_2_0_6::String::str(__p, v56);
          if ((SBYTE7(v83) & 0x8000000000000000) != 0)
          {
            break;
          }

          if (BYTE7(v83))
          {
            v57 = __p;
            v58 = SBYTE7(v83);
LABEL_103:
            v59 = 0;
            do
            {
              v60 = *v57;
              v57 = (v57 + 1);
              if (v60 == 32)
              {
                ++v59;
              }

              v58 = v58 - 1;
            }

            while (v58);
            v53 += v59 + 1;
            if ((SBYTE7(v83) & 0x80000000) == 0)
            {
              goto LABEL_110;
            }

            v57 = __p[0];
LABEL_109:
            operator delete(v57);
          }

LABEL_110:
          if (v16 == v54)
          {
            goto LABEL_143;
          }
        }

        v57 = __p[0];
        v58 = __p[1];
        if (__p[1])
        {
          goto LABEL_103;
        }

        goto LABEL_109;
      }

LABEL_143:
      v77 = v103;
      goto LABEL_144;
    }

LABEL_147:
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to compute value for feature ", 36);
    if (a5 <= 0x15u)
    {
      v79 = quasar::rescoring::EnumNamesFeatureType(void)::names[a5 & 0x1F];
    }

    else
    {
      v79 = "";
    }

    v80 = strlen(v79);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ".", 1);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_15:
  __p[0] = &v102;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v99[0])
  {
    v99[1] = v99[0];
    operator delete(v99[0]);
  }
}

void sub_1B546BE54(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LmInfo::LmInfo(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 29) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v4;
  }

  *(a1 + 64) = -1;
  *(a1 + 72) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1B546BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::LmInfo::~LmInfo(quasar::LmInfo *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = (this + 8);
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__tree_node<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__tree_node<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,void *> *,long>>>(void *result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__emplace_hint_unique_key_args<quasar::rescoring::TransformedFeatureDesc,std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__emplace_hint_unique_key_args<quasar::rescoring::TransformedFeatureDesc,std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>(uint64_t **a1, void *a2, unsigned __int8 **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__find_equal<quasar::rescoring::TransformedFeatureDesc>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__construct_node<std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__find_equal<quasar::rescoring::TransformedFeatureDesc>(void *a1, void *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 8);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 1);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 2);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__find_equal<quasar::rescoring::TransformedFeatureDesc>(a1, a3, a5);
}

void sub_1B546C324(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
LABEL_10:
    if (v4 - v3 != v6 - v5)
    {
      return 0;
    }

    while (v3 != v4)
    {
      if (*v3 != *v5)
      {
        return 0;
      }

      ++v3;
      ++v5;
    }

    v13 = a3[3];
    v12 = a3[4];
    if (v13 == v12)
    {
      return 0;
    }

    v14 = a2[3];
    v15 = v13 + 1;
    while (v14 != a2[4])
    {
      v16 = *v14;
      v17 = *(v15 - 1);
      if (v16 < v17)
      {
        break;
      }

      ++v14;
      if (v17 < v16 || v15++ == v12)
      {
        return 0;
      }
    }
  }

  else
  {
    v7 = v5 + 1;
    v8 = *a2;
    while (v8 != v4)
    {
      v9 = *v8;
      v10 = *(v7 - 1);
      if (v9 < v10)
      {
        break;
      }

      ++v8;
      if (v10 < v9 || v7++ == v6)
      {
        goto LABEL_10;
      }
    }
  }

  return 1;
}

uint64_t std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__find_equal<quasar::rescoring::TransformedFeatureDesc>(uint64_t a1, uint64_t *a2, unsigned __int8 **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>>::pair[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(a1 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  kaldi::Matrix<float>::Matrix((a1 + 9), (a2 + 72));
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    kaldi::Matrix<float>::~Matrix(a2 + 104);
    v5 = (a2 + 80);
    std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(a2 + 56);
    if (v3)
    {
      *(a2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 32);
    if (v4)
    {
      *(a2 + 40) = v4;
      operator delete(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>>::~pair(uint64_t a1)
{
  kaldi::Matrix<float>::~Matrix(a1 + 72);
  v5 = (a1 + 48);
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::destroy(a1, *(a2 + 1));
    kaldi::Matrix<float>::~Matrix((a2 + 104));
    v6 = (a2 + 80);
    std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 4);
    if (v5)
    {
      *(a2 + 5) = v5;
      operator delete(v5);
    }

    operator delete(a2);
  }
}

uint64_t *std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType const*,quasar::rescoring::FeatureType const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B546C734(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::set<quasar::rescoring::FeatureType>::set[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v5 = a3;
    do
    {
      std::__tree<quasar::rescoring::FeatureType>::__emplace_hint_unique_key_args<quasar::rescoring::FeatureType,quasar::rescoring::FeatureType const&>(a1, v4, a2, a2);
      ++a2;
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__tree<quasar::rescoring::FeatureType>::__emplace_hint_unique_key_args<quasar::rescoring::FeatureType,quasar::rescoring::FeatureType const&>(uint64_t **a1, uint64_t *a2, char *a3, _BYTE *a4)
{
  v4 = *std::__tree<quasar::rescoring::FeatureType>::__find_equal<quasar::rescoring::FeatureType>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<quasar::rescoring::FeatureType>::__find_equal<quasar::rescoring::FeatureType>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, char *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 25) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 25);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t quasar::rescoring::NBestListToken::phones(quasar::rescoring::NBestListToken *this)
{
  v1 = (this - *this);
  if (*v1 >= 7u && (v2 = v1[3]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::rescoring::NBestListToken::text(quasar::rescoring::NBestListToken *this)
{
  v1 = (this - *this);
  if (*v1 >= 5u && (v2 = v1[2]) != 0)
  {
    return this + v2 + *(this + v2);
  }

  else
  {
    return 0;
  }
}

char *quasar::lm::FindOrDie<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(uint64_t a1, unsigned __int8 **a2)
{
  v4 = std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::find<quasar::rescoring::TransformedFeatureDesc>(a1, a2);
  v5 = v4;
  if ((a1 + 8) == v4)
  {
    quasar::lm::LogMessage::LogMessage(v9, 5, "FindOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 104);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v9);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "missing key ", 12);
    quasar::rescoring::operator<<(v7, a2);
    quasar::lm::LogMessage::~LogMessage(v9);
  }

  else
  {
    quasar::lm::nullstream(v4);
  }

  return v5 + 104;
}

uint64_t std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::find<quasar::rescoring::TransformedFeatureDesc>(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

__n128 std::__function::__func<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const,std::allocator<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const>,flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D132E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const,std::allocator<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const>,flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = (a2 + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4);
  }
}

uint64_t std::__function::__func<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const,std::allocator<flatbuffers_2_0_6::String const* (quasar::rescoring::NBestListToken::*)(void)const>,flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *kaldi::TableWriter<kaldi::KaldiObjectHolder<kaldi::Matrix<double>>>::CheckImpl(void *result)
{
  if (!*result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Trying to use empty TableWriter (perhaps you ", 45);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "passed the empty string as an argument to a program?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t quasar::lm::InsertIfNotPresent<std::map<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>(uint64_t **a1, uint64_t a2, int *a3)
{
  std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>>::pair[abi:ne200100]<true,0>(v7, a2, a3);
  std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__emplace_unique_key_args<quasar::rescoring::TransformedFeatureDesc,std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>(a1, v7, v7);
  v5 = v4;
  kaldi::Matrix<float>::~Matrix(&v11);
  v12 = &v10;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return v5 & 1;
}

void sub_1B546CE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>>::~pair(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__emplace_unique_key_args<quasar::rescoring::TransformedFeatureDesc,std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>(uint64_t **a1, unsigned __int8 **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__find_equal<quasar::rescoring::TransformedFeatureDesc>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::__map_value_compare<quasar::rescoring::TransformedFeatureDesc,std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>,std::less<quasar::rescoring::TransformedFeatureDesc>,true>,std::allocator<std::__value_type<quasar::rescoring::TransformedFeatureDesc,kaldi::Matrix<float>>>>::__construct_node<std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>> const&>();
  }

  return result;
}

uint64_t *std::pair<quasar::rescoring::TransformedFeatureDesc const,kaldi::Matrix<float>>::pair[abi:ne200100]<true,0>(uint64_t *a1, uint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(a1 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  kaldi::Matrix<float>::Matrix((a1 + 9), a3);
  return a1;
}

void sub_1B546D304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char *a47)
{
  a47 = &a22;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a47);
  _Unwind_Resume(a1);
}

void sub_1B546D7C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void EARHelpers::ArrayToVector2<std::vector<quasar::Token>,std::vector<quasar::Token> (*)(NSArray<_EARSpeechRecognitionToken *> *)>(void *a1@<X0>, uint64_t a2@<X8>, void (*a3)(void *__return_ptr)@<X1>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        EARHelpers::ArrayToVector<std::vector<quasar::Token>,std::vector<quasar::Token> (*)(NSArray<_EARSpeechRecognitionToken *> *)>(v10, a3, v11);
        std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a2, v11);
        v16 = v11;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v16);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_1B546E13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::G2P::TokenProns::TokenProns(uint64_t a1, const std::string *a2, uint64_t *a3, uint64_t *a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v8 = (a1 + 24);
  *a1 = 0u;
  std::string::operator=(a1, a2);
  if (v8 != a3)
  {
    std::vector<quasar::PronChoice>::__assign_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(v8, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  }

  if (v7 != a4)
  {
    std::vector<quasar::PronChoice>::__assign_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(v7, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
  }

  return a1;
}

void sub_1B546E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void quasar::KeywordFinder::KeywordFinderRetValue::~KeywordFinderRetValue(void **this)
{
  v2 = this + 6;
  v3 = this + 9;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<quasar::KeywordFinder::KeywordLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<quasar::KeywordFinder::KeywordLoggingStats>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<quasar::KeywordFinder::KeywordLoggingStats>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::KeywordFinder::KeywordLoggingStats>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void **std::unique_ptr<quasar::KeywordFinder>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::KeywordFinder::~KeywordFinder(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::KeywordFinder::~KeywordFinder(void **this)
{
  quasar::Sanitizer::~Sanitizer((this + 214));
  if (*(this + 1711) < 0)
  {
    operator delete(this[211]);
  }

  v2 = this[209];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[207];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 1639) < 0)
  {
    operator delete(this[202]);
  }

  if (*(this + 1615) < 0)
  {
    operator delete(this[199]);
  }

  quasar::SystemConfig::~SystemConfig((this + 4));
  std::__tree<int>::destroy((this + 1), this[2]);
}

uint64_t std::vector<quasar::G2P::TokenProns>::__emplace_back_slow_path<quasar::G2P::TokenProns>(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::G2P::TokenProns>>(a1, v6);
  }

  v7 = 72 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *&v17 = 72 * v2 + 72;
  v9 = a1[1];
  v10 = 72 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::G2P::TokenProns>::~__split_buffer(&v15);
  return v14;
}

void sub_1B546E6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::G2P::TokenProns>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::G2P::TokenProns>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(v7 + 3) = 0;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = v7[3];
      *(a4 + 64) = *(v7 + 8);
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      v7 = (v7 + 72);
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::G2P::TokenProns>>::destroy[abi:ne200100]<quasar::G2P::TokenProns,0>(a1, v5);
      v5 = (v5 + 72);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator_traits<std::allocator<quasar::G2P::TokenProns>>::destroy[abi:ne200100]<quasar::G2P::TokenProns,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a2 + 24);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::G2P::TokenProns>,quasar::G2P::TokenProns*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      std::allocator_traits<std::allocator<quasar::G2P::TokenProns>>::destroy[abi:ne200100]<quasar::G2P::TokenProns,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::G2P::TokenProns>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::G2P::TokenProns>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::G2P::TokenProns>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<quasar::G2P::TokenProns>>::destroy[abi:ne200100]<quasar::G2P::TokenProns,0>(v5, v4 - 72);
  }
}

void quasar::G2P::TokenProns::~TokenProns(void **this)
{
  v2 = this + 6;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<quasar::G2P::TokenProns>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::G2P::TokenProns>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::G2P::TokenProns>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::G2P::TokenProns>>::destroy[abi:ne200100]<quasar::G2P::TokenProns,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void EARHelpers::ArrayToVector<std::vector<quasar::Token>,std::vector<quasar::Token> (*)(NSArray<_EARSpeechRecognitionToken *> *)>(void *a1@<X0>, void (*a2)(void *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        a2(v11);
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a3, v11);
        v16 = v11;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v16);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_1B546EBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::SharedProfanityFilter::SharedProfanityFilter(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = a3;
  return a1;
}

void sub_1B546EC98(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::SharedProfanityFilter::SPECIAL_LANGUAGE_LIST_DEFAULT(quasar::SharedProfanityFilter *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::SharedProfanityFilter::SPECIAL_LANGUAGE_LIST_DEFAULT(void)::specialLangs;
}

void sub_1B546EDE4(_Unwind_Exception *a1)
{
  v4 = (v2 + 71);
  v5 = -72;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::SharedProfanityFilter::profanityFilterMap(quasar::SharedProfanityFilter *this)
{
  {
    operator new();
  }

  if (quasar::gLogLevel >= 6)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "ProfanityFilterMap content:", 27);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v22);
    v1 = quasar::SharedProfanityFilter::profanityFilterMap(void)::dataFileMap + 8;
    v2 = *quasar::SharedProfanityFilter::profanityFilterMap(void)::dataFileMap;
    if (*quasar::SharedProfanityFilter::profanityFilterMap(void)::dataFileMap != quasar::SharedProfanityFilter::profanityFilterMap(void)::dataFileMap + 8)
    {
      do
      {
        v3 = v2[12];
        if (v3)
        {
          v4 = std::__shared_weak_count::lock(v3);
          if (v4)
          {
            v5 = v4;
            v6 = v2[11];
            if (v6 && quasar::gLogLevel >= 6)
            {
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              v22 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
              v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "    ", 4);
              v8 = *(v2 + 55);
              if (v8 >= 0)
              {
                v9 = (v2 + 4);
              }

              else
              {
                v9 = v2[4];
              }

              if (v8 >= 0)
              {
                v10 = *(v2 + 55);
              }

              else
              {
                v10 = v2[5];
              }

              v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
              v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ":", 1);
              v13 = *(v2 + 79);
              if (v13 >= 0)
              {
                v14 = (v2 + 7);
              }

              else
              {
                v14 = v2[7];
              }

              if (v13 >= 0)
              {
                v15 = *(v2 + 79);
              }

              else
              {
                v15 = v2[8];
              }

              v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
              v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " => ", 4);
              MEMORY[0x1B8C84C30](v17, *(v6 + 24));
              quasar::QuasarTraceMessage::~QuasarTraceMessage(&v22);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          }
        }

        v18 = v2[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v2[2];
            v20 = *v19 == v2;
            v2 = v19;
          }

          while (!v20);
        }

        v2 = v19;
      }

      while (v19 != v1);
    }
  }

  return quasar::SharedProfanityFilter::profanityFilterMap(void)::dataFileMap;
}

void quasar::SharedProfanityFilter::loadProfanityFilterData(uint64_t a1, uint64_t a2)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Loading profanity data file: ", 29);
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v7);
  }

  quasar::PTree::PTree(v7);
  quasar::PTree::readJsonFromFile(v7, a2);
}

void quasar::SharedProfanityFilter::getProfanityFilter(uint64_t a1, uint64_t **a2)
{
  {
    {
      operator new();
    }
  }

  std::mutex::lock(quasar::SharedProfanityFilter::getProfanityFilter(std::string const&,std::string const&,std::set<std::string> const&)::m);
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  quasar::split(a2, v6, __p, 0);
}

void sub_1B546FC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, int a31, __int16 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a30 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  std::pair<std::string,std::string>::~pair(&a32);
  if (a45 == 1 && a44 < 0)
  {
    operator delete(a39);
  }

  v70 = *(v67 + 8);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  quasar::PTree::~PTree(&a50);
  if (a63 < 0)
  {
    operator delete(a58);
  }

  std::pair<std::string,std::string>::~pair(v68 - 160);
  if (*(v68 - 73) < 0)
  {
    operator delete(*(v68 - 96));
  }

  std::mutex::unlock(v66);
  _Unwind_Resume(a1);
}

void sub_1B546FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  *(v52 - 160) = &a52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v52 - 160));
  if (a42 < 0)
  {
    JUMPOUT(0x1B546FEC8);
  }

  JUMPOUT(0x1B546FECCLL);
}

void sub_1B546FCB0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a27) < 0)
  {
    operator delete(a25);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  JUMPOUT(0x1B546FE28);
}

void sub_1B546FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(a18);
  }

  JUMPOUT(0x1B546FE20);
}

void sub_1B546FD04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      if (a27 == 1 && a26 < 0)
      {
        operator delete(a21);
      }

      JUMPOUT(0x1B546FE20);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  MEMORY[0x1B8C85350](v27, 0x10B2C402F08B51BLL);
  goto LABEL_6;
}

void sub_1B546FD74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B546FE58);
}

void sub_1B546FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if ((a54 & 0x80000000) == 0)
  {
    std::pair<std::string,std::string>::~pair(v55 - 160);
    if (*(v55 - 73) < 0)
    {
      operator delete(*(v55 - 96));
    }

    std::mutex::unlock(v54);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B546FE6CLL);
}

void sub_1B546FE74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v39)
  {
    goto LABEL_6;
  }

  MEMORY[0x1B8C85350](v38, 0x10B2C402F08B51BLL);
LABEL_6:
  JUMPOUT(0x1B546FE58);
}

void *std::map<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>::insert_or_assign[abi:ne200100]<std::shared_ptr<quasar::SharedProfanityFilter> &>(uint64_t **a1, const void **a2, uint64_t *a3)
{
  v6 = std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::lower_bound[abi:ne200100]<std::tuple<std::string,std::string,BOOL>>(a1, a2);
  if (a1 + 1 == v6 || std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v11, a2, (v6 + 32)))
  {
    return std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__emplace_hint_unique_key_args<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL> const&,std::shared_ptr<quasar::SharedProfanityFilter> &>(a1, v6, a2, a2, a3);
  }

  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 96);
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v6;
}

void quasar::SharedProfanityFilter::mask(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, std::string *a5@<X8>)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (*(a1 + 80) == 1)
    {
      if (quasar::gLogLevel >= 5)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Locale in SPECIAL_LANGUAGE_LIST. Skip ICU tokenization", 54);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      quasar::SharedProfanityFilter::maskSentence(a1, a2, a3, a4, a5);
    }

    else
    {
      a5->__r_.__value_.__r.__words[0] = 0;
      a5->__r_.__value_.__l.__size_ = 0;
      a5[1].__r_.__value_.__s.__data_[0] = 0;
      a5->__r_.__value_.__r.__words[2] = 0;
      quasar::getWordBoundarySeparatedString(a2, &v15);
      v11 = v15;
      for (i = v16; v11 != i; v11 += 24)
      {
        quasar::SharedProfanityFilter::maskWord(a1, v11, __p);
        if ((SBYTE7(v18) & 0x80u) == 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if ((SBYTE7(v18) & 0x80u) == 0)
        {
          v14 = BYTE7(v18);
        }

        else
        {
          v14 = __p[1];
        }

        std::string::append(a5, v13, v14);
        a5[1].__r_.__value_.__s.__data_[0] |= BYTE8(v18);
        if (SBYTE7(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    }
  }

  else
  {
    *&a5->__r_.__value_.__l.__data_ = 0u;
    *&a5->__r_.__value_.__r.__words[2] = 0u;
  }
}

void quasar::SharedProfanityFilter::maskSentence(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, std::string *a5@<X8>)
{
  v6 = a3;
  v10 = *(a2 + 23);
  if ((v10 & 0x80000000) == 0)
  {
    *&a5->__r_.__value_.__l.__data_ = *a2;
    a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
    a5[1].__r_.__value_.__s.__data_[0] = 0;
    v11 = a5 + 1;
    goto LABEL_4;
  }

  std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
  v10 = *(a2 + 23);
  a5[1].__r_.__value_.__s.__data_[0] = 0;
  v11 = a5 + 1;
  if ((v10 & 0x80000000) == 0)
  {
LABEL_4:
    if (!v10)
    {
      return;
    }

    v12 = v10;
    v13 = a2;
    if (v12 == 1)
    {
LABEL_6:
      if (*v13 == 32)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = *(a2 + 8);
  if (!v14)
  {
    return;
  }

  if (v14 == 1)
  {
    v13 = *a2;
    goto LABEL_6;
  }

LABEL_11:
  quasar::SharedProfanityFilter::replaceAll(a1, a5, v6, a4, &v26);
  if (SHIBYTE(a5->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a5->__r_.__value_.__l.__data_);
  }

  *&a5->__r_.__value_.__l.__data_ = v26;
  a5->__r_.__value_.__r.__words[2] = v27;
  a5[1].__r_.__value_.__s.__data_[0] = BYTE8(v27);
  v15 = *(a1 + 40);
  if (v15)
  {
    quasar::SharedProfanityFilter::replaceAll(v15, a5, v6, a4, &v26);
    if (SHIBYTE(a5->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a5->__r_.__value_.__l.__data_);
    }

    *&a5->__r_.__value_.__l.__data_ = v26;
    a5->__r_.__value_.__r.__words[2] = v27;
    a5[1].__r_.__value_.__s.__data_[0] = BYTE8(v27);
  }

  if (v11->__r_.__value_.__s.__data_[0] == 1 && quasar::gLogLevel >= 6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "ProfanityFilter (sentence) replace [", 36);
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "] -> [", 6);
    v22 = SHIBYTE(a5->__r_.__value_.__r.__words[2]);
    if (v22 >= 0)
    {
      v23 = a5;
    }

    else
    {
      v23 = a5->__r_.__value_.__r.__words[0];
    }

    if (v22 >= 0)
    {
      size = HIBYTE(a5->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a5->__r_.__value_.__l.__size_;
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "]", 1);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v26);
  }
}

void sub_1B547039C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SharedProfanityFilter::maskWord(void *a1@<X0>, uint64_t a2@<X1>, std::string *a5@<X8>)
{
  v8 = *(a2 + 23);
  if (v8 < 0)
  {
    std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
    v8 = *(a2 + 23);
    a5[1].__r_.__value_.__s.__data_[0] = 0;
    if (v8 < 0)
    {
      v11 = *(a2 + 8);
      if (!v11)
      {
        return;
      }

      if (v11 == 1)
      {
        v10 = *a2;
        goto LABEL_6;
      }

LABEL_11:
      quasar::SharedProfanityFilter::replace(a1, a2);
    }
  }

  else
  {
    *&a5->__r_.__value_.__l.__data_ = *a2;
    a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
    a5[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a2;
  if (v9 != 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (*v10 != 32)
  {
    goto LABEL_11;
  }
}

void sub_1B54705E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SharedProfanityFilter::replace(void *a1, uint64_t a2)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  quasar::utf8::convertToLowerCase(v7, v8, &v9);
  quasar::utf8::startsWithCapitalLetter(a2);
}

void sub_1B54707F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B54708BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::exception a16)
{
  tl::bad_expected_access<std::string>::~bad_expected_access(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::SharedProfanityFilter::replaceAll(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
  }

  else
  {
    *a5 = *a2;
    *(a5 + 16) = *(a2 + 16);
  }

  *(a5 + 24) = 0;
  if (!a4)
  {
    a4 = "\x1B\\mrk=play=beep.wav\"";
  }

  for (i = *(a1 + 16); i; i = *i)
  {
    v11 = a4;
    if ((a3 & 1) == 0)
    {
      v11 = (i + 5);
      if (*(i + 63) < 0)
      {
        v11 = *v11;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v11);
    quasar::replaceAll(a5, i + 2, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a5 + 23);
  if (v12 >= 0)
  {
    v13 = *(a5 + 23);
  }

  else
  {
    v13 = *(a5 + 8);
  }

  v14 = *(a2 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v13 == v14)
  {
    if (v12 >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    if (v15 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v18 = memcmp(v16, v17, v13) != 0;
  }

  else
  {
    v18 = 1;
  }

  *(a5 + 24) = v18;
}

void sub_1B5470A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bEEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_bEJEJEJRKS8_SC_RbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, __int128 *a3, std::string::value_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  this[2].__r_.__value_.__s.__data_[0] = *a4;
  return this;
}

void sub_1B5470AD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::string&,std::string&>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_1B5470DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::find<std::tuple<std::string,std::string,BOOL>>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v9, (v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v10, a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v17, a2, a3);
}

BOOL std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 47);
  v6 = *(a2 + 47);
  if (v6 >= 0)
  {
    v7 = *(a2 + 47);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  if (v6 >= 0)
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 47);
  }

  else
  {
    v9 = *(a3 + 32);
  }

  if (v5 >= 0)
  {
    v10 = (a3 + 24);
  }

  else
  {
    v10 = *(a3 + 24);
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && *(a2 + 48) < *(a3 + 48);
}

void sub_1B5471128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<quasar::SharedProfanityFilter>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SharedProfanityFilter *,std::shared_ptr<quasar::SharedProfanityFilter>::__shared_ptr_default_delete<quasar::SharedProfanityFilter,quasar::SharedProfanityFilter>,std::allocator<quasar::SharedProfanityFilter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SharedProfanityFilter *,std::shared_ptr<quasar::SharedProfanityFilter>::__shared_ptr_default_delete<quasar::SharedProfanityFilter,quasar::SharedProfanityFilter>,std::allocator<quasar::SharedProfanityFilter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<quasar::SharedProfanityFilter>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    v3 = *(a2 + 48);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a2);

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::lower_bound[abi:ne200100]<std::tuple<std::string,std::string,BOOL>>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  for (i = *(a1 + 8); i; i = *(i + v6))
  {
    v5 = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v8, (i + 32), a2);
    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v2 = i;
    }
  }

  return v2;
}

void *std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__emplace_hint_unique_key_args<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL> const&,std::shared_ptr<quasar::SharedProfanityFilter> &>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__find_equal<std::tuple<std::string,std::string,BOOL>>(a1, a2, &v7, &v6, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__construct_node<std::tuple<std::string,std::string,BOOL> const&,std::shared_ptr<quasar::SharedProfanityFilter> &>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__find_equal<std::tuple<std::string,std::string,BOOL>>(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v20, a5, a2 + 4))
  {
    if (*a1 == a2)
    {
      v12 = a2;
LABEL_16:
      if (*a2)
      {
        *a3 = v12;
        return (v12 + 1);
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    v11 = *a2;
    if (*a2)
    {
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v16 = a2;
      do
      {
        v12 = v16[2];
        v17 = *v12 == v16;
        v16 = v12;
      }

      while (v17);
    }

    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v21, v12 + 4, a5))
    {
      goto LABEL_16;
    }

    return std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__find_equal<std::tuple<std::string,std::string,BOOL>>(a1, a3, a5);
  }

  if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v22, a2 + 4, a5))
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v18 = a2;
    do
    {
      v15 = v18[2];
      v17 = *v15 == v18;
      v18 = v15;
    }

    while (!v17);
  }

  if (v15 != v9)
  {
    if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v23, a5, v15 + 4))
    {
      return std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__find_equal<std::tuple<std::string,std::string,BOOL>>(a1, a3, a5);
    }

    v13 = *a4;
  }

  if (v13)
  {
    *a3 = v15;
    return v15;
  }

  else
  {
    *a3 = a2;
  }

  return a4;
}

void sub_1B5471550(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__tree<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::__map_value_compare<std::tuple<std::string,std::string,BOOL>,std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,std::less<std::tuple<std::string,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>>>::__find_equal<std::tuple<std::string,std::string,BOOL>>(uint64_t a1, const void ***a2, const void **a3)
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
        if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v9, a3, v4 + 4))
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

      if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>>(&v10, v7 + 4, a3))
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

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::string,BOOL>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  return this;
}

void sub_1B5471684(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,BOOL>,std::weak_ptr<quasar::SharedProfanityFilter>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 12);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void kaldi::quasar::TensorFstCreator::Build(void *a1, uint64_t *a2)
{
  v4 = (a1 + 13);
  a1[14] = a1[13];
  v33 = (a1 + 16);
  a1[17] = a1[16];
  v5 = (a1 + 19);
  a1[20] = a1[19];
  v6 = (a1[8] - a1[7]) >> 3;
  __src = 0;
  v37 = 0;
  v38 = 0;
  std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::reserve(&__src, v6);
  v7 = a1[7];
  v8 = a1[8];
  v32 = a1;
  v28 = v4;
  if (v7 != v8)
  {
    v9 = (*(**v7 + 88))(*v7, 0);
    kaldi::quasar::TensorFstCreator::PreprocessFst(v9, v9);
  }

  while (v7 != v8)
  {
    v10 = *v7;
    __p = 0;
    v40 = 0;
    v41 = 0;
    fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v10, a2, &__p);
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    ++v7;
  }

  v34 = 0;
  v35 = 1;
  LODWORD(__p) = 0;
  std::vector<int>::push_back[abi:ne200100](v33, &__p);
  v11 = __src;
  v30 = v37;
  v12 = a1;
  if (__src != v37)
  {
    v13 = 0;
    v29 = 0;
    do
    {
      v14 = *(*(*v11 + 8) + 72) - *(*(*v11 + 8) + 64);
      if ((v14 >> 3) < 1)
      {
        ++v29;
      }

      else
      {
        v31 = v14 >> 3;
        v15 = 0;
        v16 = 0;
        v17 = (v14 >> 3) & 0x7FFFFFFF;
        do
        {
          v18 = *v11;
          v19 = *(*(*(*v11 + 8) + 64) + 8 * v15);
          v21 = *(v19 + 24);
          v20 = *(v19 + 32);
          if (v20 == v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = *(v19 + 24);
          }

          if (v20 == v21)
          {
            LODWORD(v23) = 0;
          }

          else
          {
            if (((v20 - v21) >> 4) <= 1)
            {
              v23 = 1;
            }

            else
            {
              v23 = (v20 - v21) >> 4;
            }

            v24 = v23;
            do
            {
              v25 = *v22 == 0;
              *&__p = (*(v22 + 12) + v35);
              std::vector<float>::push_back[abi:ne200100](v5, &__p);
              *&__p = (*v22 - 1);
              std::vector<float>::push_back[abi:ne200100](v5, &__p);
              *&__p = -*(v22 + 8);
              std::vector<float>::push_back[abi:ne200100](v5, &__p);
              v16 |= v25;
              v22 += 16;
              --v24;
            }

            while (v24);
            v18 = *v11;
            v12 = v32;
          }

          v26 = (*(*v18 + 32))(v18, v15);
          *&__p = v26;
          v42 = 2139095040;
          if (v26 != INFINITY)
          {
            LODWORD(__p) = 0;
            std::vector<float>::push_back[abi:ne200100](v5, &__p);
            *&__p = (*(*v12 + 8 * v13 + 4) - 1);
            std::vector<float>::push_back[abi:ne200100](v5, &__p);
            *&__p = -v26;
            std::vector<float>::push_back[abi:ne200100](v5, &__p);
            LODWORD(v23) = v23 + 1;
          }

          std::vector<int>::push_back[abi:ne200100](v33, &v34);
          v34 += v23;
          ++v15;
        }

        while (v15 != v17);
        LODWORD(__p) = *(*v12 + 8 * v13) - 1;
        std::vector<int>::push_back[abi:ne200100](v28, &__p);
        LODWORD(__p) = *(*v12 + 8 * v13 + 4) - 1;
        std::vector<int>::push_back[abi:ne200100](v28, &__p);
        std::vector<int>::push_back[abi:ne200100](v28, &v35);
        v35 += v31;
        LODWORD(__p) = v16 & 1;
        std::vector<int>::push_back[abi:ne200100](v28, &__p);
      }

      ++v13;
      v11 += 8;
    }

    while (v11 != v30);
  }

  std::vector<int>::push_back[abi:ne200100](v33, &v34);
  v27 = v34;
  *(v12 + 12) = v35 - 1;
  *(v12 + 13) = v27;
  __p = &__src;
  std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B5471B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  *(v20 - 104) = &a16;
  std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__destroy_vector::operator()[abi:ne200100]((v20 - 104));
  _Unwind_Resume(a1);
}

const void **std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void kaldi::quasar::TensorFstCreator::PreprocessFst(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = 1;
  fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, &v4);
  v3 = (*(*a2 + 112))(a2);
  (*(*a2 + 288))(a2, v3);
  fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2);
  v5[2] = &unk_1F2D0D2F8;
  v5[3] = a2;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst(v5);
}

void sub_1B5471E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Relabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  memset(v38, 0, sizeof(v38));
  v39 = 1065353216;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + v8 + 4);
      *&v36[0] = v7 + v8;
      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v38, (v7 + v8), &std::piecewise_construct, v36) + 5) = v10;
      ++v9;
      v7 = *a2;
      v8 += 8;
    }

    while (v9 < (a2[1] - *a2) >> 3);
  }

  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(v11 + v12 + 4);
      v33 = (v11 + v12);
      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v36, (v11 + v12), &std::piecewise_construct, &v33) + 5) = v14;
      ++v13;
      v11 = *a3;
      v12 += 8;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  v35 = 0;
  (*(*a1 + 128))(a1, &v33);
  while (1)
  {
    if (!v33)
    {
      if (v35 >= v34)
      {
        goto LABEL_45;
      }

LABEL_13:
      v15 = v35;
      goto LABEL_14;
    }

    if ((*(*v33 + 16))(v33))
    {
      break;
    }

    if (!v33)
    {
      goto LABEL_13;
    }

    v15 = (*(*v33 + 24))();
LABEL_14:
    (*(*a1 + 296))(a1, v15, &v32);
    while (((*(*v32 + 24))(v32) & 1) == 0)
    {
      v31 = *(*(*v32 + 32))(v32);
      v16 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v38, &v31);
      if (v16)
      {
        if (*(v16 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          v18 = fst::LogMessage::LogMessage(&v30, __p);
          v19 = fst::cerr(v18);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Input symbol id ", 16);
          v23 = MEMORY[0x1B8C84C00](v22, v31);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " missing from target vocabulary", 31);
          goto LABEL_36;
        }

        LODWORD(v31) = *(v16 + 5);
      }

      v17 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v36, &v31 + 1);
      if (v17)
      {
        if (*(v17 + 5) == -1)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          v20 = fst::LogMessage::LogMessage(&v30, __p);
          v21 = fst::cerr(v20);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Output symbol id ", 17);
          v25 = MEMORY[0x1B8C84C00](v24, DWORD1(v31));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " missing from target vocabulary", 31);
LABEL_36:
          fst::LogMessage::~LogMessage(&v30);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          (*(*a1 + 192))(a1, 4, 4);
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }

          if (v33)
          {
            (*(*v33 + 8))(v33);
          }

          goto LABEL_42;
        }

        DWORD1(v31) = *(v17 + 5);
      }

      (*(*v32 + 88))(v32, &v31);
      (*(*v32 + 40))(v32);
    }

    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    if (v33)
    {
      (*(*v33 + 32))(v33);
    }

    else
    {
      ++v35;
    }
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_45:
  v27 = fst::RelabelProperties(v6);
  (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
LABEL_42:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38);
}

void sub_1B54723D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a25);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

__n128 kaldi::quasar::TensorFstCreator::Make@<Q0>(kaldi::quasar::TensorFstCreator *this@<X0>, const kaldi::quasar::ComputeEngineItf *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a2 + 24))(&v19, a2, this + 104, 0);
  v6 = v19;
  v19 = 0;
  v7 = *(this + 3);
  *(this + 3) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v19;
    v19 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  (*(*a2 + 24))(&v19, a2, this + 128, 0);
  v9 = v19;
  v19 = 0;
  v10 = *(this + 4);
  *(this + 4) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v11 = v19;
    v19 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  (*(*a2 + 32))(&v19, a2, this + 152, 0);
  v12 = v19;
  v19 = 0;
  v13 = *(this + 5);
  *(this + 5) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v19;
    v19 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = *(this + 24);
  *(this + 24) = 0u;
  *a3 = v15;
  v16 = *(this + 5);
  v17 = *(this + 6);
  *(this + 5) = 0;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = *(this + 56);
  *(a3 + 48) = *(this + 9);
  *(this + 56) = 0u;
  *(this + 9) = 0;
  result = *(this + 5);
  *(a3 + 56) = result;
  *(a3 + 72) = *(this + 12);
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return result;
}

uint64_t fst::GetLinearSymbolSequence<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>(uint64_t a1, uint64_t *a2, uint64_t *a3, float *a4, int a5)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v10 = (*(*a1 + 24))(a1);
  if (v10 == -1)
  {
    if (a2)
    {
      a2[1] = *a2;
    }

    if (a3)
    {
      a3[1] = *a3;
    }

    if (a4)
    {
      *a4 = INFINITY;
    }
  }

  else
  {
    for (i = 0.0; ; i = v15)
    {
      v12 = (*(*a1 + 32))(a1, v10);
      *v24 = v12;
      v33 = 2139095040;
      if (v12 != INFINITY)
      {
        break;
      }

      if ((*(*a1 + 40))(a1, v10) != 1)
      {
        goto LABEL_46;
      }

      v26 = 0;
      (*(*a1 + 136))(a1, v10, v24);
      if (v24[0])
      {
        v13 = (*(*v24[0] + 32))(v24[0]);
      }

      else
      {
        v13 = v24[1] + 16 * v26;
      }

      v14 = *(v13 + 8);
      v15 = NAN;
      if (v14 != -INFINITY && i != -INFINITY)
      {
        v16 = v14 == INFINITY || i == INFINITY;
        v17 = i + v14;
        if (v16)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = v17;
        }
      }

      if (*v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = a5 == 0;
      }

      if (!v18)
      {
        std::vector<int>::push_back[abi:ne200100](&v30, v13);
      }

      if (*(v13 + 4))
      {
        v19 = 0;
      }

      else
      {
        v19 = a5 == 0;
      }

      if (!v19)
      {
        std::vector<int>::push_back[abi:ne200100](&__p, (v13 + 4));
      }

      v10 = *(v13 + 12);
      if (v24[0])
      {
        (*(*v24[0] + 8))(v24[0]);
      }

      else if (v25)
      {
        --*v25;
      }
    }

    v20 = NAN;
    if (v12 != -INFINITY && i != -INFINITY)
    {
      if (v12 == INFINITY || i == INFINITY)
      {
        v20 = INFINITY;
      }

      else
      {
        v20 = i + v12;
      }
    }

    if ((*(*a1 + 40))(a1, v10))
    {
LABEL_46:
      v22 = 0;
      goto LABEL_56;
    }

    if (a2 && &v30 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v30, v31, (v31 - v30) >> 2);
    }

    if (a3 && &__p != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v28, (v28 - __p) >> 2);
    }

    if (a4)
    {
      *a4 = v20;
    }
  }

  v22 = 1;
LABEL_56:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v22;
}

void sub_1B5472AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::clear[abi:ne200100](void *result)
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

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 16 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 16;
        v8 = (v3 - 16);
        v9 = (v3 - 16);
        do
        {
          v10 = *v9;
          v9 -= 2;
          result = (*v10)(v8);
          v7 -= 16;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__append(result, v5);
  }

  return result;
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (a2 > (v2 - v3) >> 4)
  {
    v4 = v3 - *result;
    v5 = a2 + (v4 >> 4);
    if (!(v5 >> 60))
    {
      v6 = v2 - *result;
      if (v6 >> 3 > v5)
      {
        v5 = v6 >> 3;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF0)
      {
        v7 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(result, v7);
      }

      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst((16 * (v4 >> 4)));
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst(v3);
  }

  result[1] = v3;
  return result;
}

void sub_1B5472E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double quasar::TokenInfo::TokenInfo(std::string *this, const quasar::Token *a2)
{
  v2 = quasar::Token::Token(this, a2);
  LODWORD(v2[9].__r_.__value_.__r.__words[2]) = 0;
  v2[9].__r_.__value_.__l.__size_ = 0;
  result = 0.0;
  *&v2[10].__r_.__value_.__l.__data_ = 0u;
  *&v2[10].__r_.__value_.__r.__words[2] = 0u;
  *&v2[11].__r_.__value_.__r.__words[1] = 0u;
  return result;
}

void quasar::TokenInfo::ptree(quasar::TokenInfo *this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  quasar::PTree::PTree(&v30, this);
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  v4 = *(this + 7);
  LODWORD(v30) = quasar::getType(v4);
  std::to_string(&v31, v4);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  v5 = *(this + 8);
  LODWORD(v30) = quasar::getType(v5);
  std::to_string(&v31, v5);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  v6 = *(this + 9);
  LODWORD(v30) = quasar::getType(v6);
  std::to_string(&v31, v6);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  quasar::PTree::PTree(&v30, this + 48);
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  v7 = *(this + 57);
  LODWORD(v30) = quasar::getType(v8, v7);
  std::to_string(&v31, v7);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  v9 = *(this + 58);
  LODWORD(v30) = quasar::getType(v10, v9);
  std::to_string(&v31, v9);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::~PTree(&v30);
  quasar::PTree::PTree(&v30);
  v11 = *(this + 30);
  for (i = *(this + 31); v11 != i; ++v11)
  {
    v13 = *v11;
    LODWORD(v24) = quasar::getType(*v11);
    std::to_string(&v25, v13);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    quasar::PTree::addChild(&v30, &v24);
    quasar::PTree::~PTree(&v24);
  }

  quasar::PTree::addChild(a2, &v30);
  quasar::PTree::PTree(&v24);
  v16 = *(this + 33);
  for (j = *(this + 34); v16 != j; ++v16)
  {
    v17 = *v16;
    LODWORD(v18) = quasar::getType(v14, *v16);
    std::to_string(&v19, v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    quasar::PTree::addChild(&v24, &v18);
    quasar::PTree::~PTree(&v18);
  }

  quasar::PTree::addChild(a2, &v24);
  quasar::PTree::~PTree(&v24);
  quasar::PTree::~PTree(&v30);
}

void sub_1B54731B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  quasar::PTree::~PTree(va);
  quasar::PTree::~PTree(va1);
  quasar::PTree::~PTree(v16);
  _Unwind_Resume(a1);
}

void quasar::ChoiceInfo::finalize(quasar::ChoiceInfo *this, const quasar::DecoderPassData *a2, const quasar::SpeechRequestData *a3, quasar::FstLmScorer *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::LmInfo::LmInfo(v39, 1, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  Latitude = quasar::Location::getLatitude((a2 + 232));
  Weight = quasar::corrective_reranking::VoiceEditingWFST::Path::getWeight((a2 + 232));
  v10 = *(a3 + 3);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(&v36, *(v10 + 272), *(v10 + 280), (*(v10 + 280) - *(v10 + 272)) >> 4);
  std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<kaldi::quasar::LmHandle>*>,std::__wrap_iter<std::shared_ptr<kaldi::quasar::LmHandle>*>>(&v36, v37, *(*(a3 + 3) + 296), *(*(a3 + 3) + 304), (*(*(a3 + 3) + 304) - *(*(a3 + 3) + 296)) >> 4);
  LmeDataStreams = quasar::SpeechRequestData::getLmeDataStreams(a3);
  memset(v35, 0, sizeof(v35));
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(v35, *LmeDataStreams, LmeDataStreams[1], (LmeDataStreams[1] - *LmeDataStreams) >> 4);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  LODWORD(__p[0]) = 0;
  v13 = *this;
  v12 = *(this + 1);
  if (v12 != *this)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v13 + 288 * v15;
      if (*(v16 + 224) >= 1)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v32, v16);
        std::vector<int>::push_back[abi:ne200100](&v29, (*this + 288 * SLODWORD(__p[0]) + 224));
        std::vector<int>::push_back[abi:ne200100](&v26, __p);
        v14 = __p[0];
        v13 = *this;
        v12 = *(this + 1);
      }

      LODWORD(__p[0]) = ++v14;
      v15 = v14;
    }

    while (0x8E38E38E38E38E39 * ((v12 - v13) >> 5) > v14);
    if (v32 != v33)
    {
      v24 = vdupq_n_s64(0x4076800000000000uLL);
      v25[0] = quasar::Location::knownOrFallback(&v24, Latitude, Weight, v16);
      v25[1] = v17;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      std::string::basic_string[abi:ne200100]<0>(&v23, "");
      v18 = *(a3 + 4);
      memset(v22, 0, sizeof(v22));
      BYTE2(v19) = 1;
      LOWORD(v19) = 257;
      quasar::FstLmScorer::computeLmScore(a4, v35, v25, __p, &v32, 1, v39, &v36, 0, &v23, &v29, v19, v18, v22, 1);
    }
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  __p[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v35;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v36;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40[4]);
  }

  __p[0] = v40;
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5473990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a15);
  if (__p)
  {
    a63 = __p;
    operator delete(__p);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  a15 = &a67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = (v67 - 240);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = (v67 - 216);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a15);
  quasar::LmInfo::~LmInfo((v67 - 192));
  _Unwind_Resume(a1);
}

void quasar::ChoiceInfo::ptree(quasar::ChoiceInfo *this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  quasar::PTree::PTree(v18);
  v4 = *this;
  v5 = *(this + 1);
  while (v4 != v5)
  {
    quasar::TokenInfo::ptree(v4, &__p);
    quasar::PTree::addChild(v18, &__p);
    quasar::PTree::~PTree(&__p);
    v4 = (v4 + 288);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "tokens");
  quasar::PTree::putChild(a2, &__p, v18, 1);
  if (v13.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v10, "graphCost");
  v7 = *(this + 6);
  LODWORD(__p) = quasar::getType(v6, v7);
  std::to_string(&v13, v7);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  quasar::PTree::putChild(a2, v10, &__p, 1);
  quasar::PTree::~PTree(&__p);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(v10, "acousticCost");
  v9 = *(this + 7);
  LODWORD(__p) = quasar::getType(v8, v9);
  std::to_string(&v13, v9);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  quasar::PTree::putChild(a2, v10, &__p, 1);
  quasar::PTree::~PTree(&__p);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  quasar::PTree::~PTree(v18);
}

void sub_1B5473C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a27);
  quasar::PTree::~PTree(v27);
  _Unwind_Resume(a1);
}

void quasar::ResultInfo::ptree(quasar::ChoiceInfo **this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  quasar::PTree::PTree(v15);
  v4 = *this;
  v5 = this[1];
  while (v4 != v5)
  {
    quasar::ChoiceInfo::ptree(v4, &__p);
    quasar::PTree::addChild(v15, &__p);
    quasar::PTree::~PTree(&__p);
    v4 = (v4 + 32);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "choices");
  quasar::PTree::putChild(a2, &__p, v15, 1);
  if (v10.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "aligned");
  v6 = *(this + 24);
  LODWORD(__p) = quasar::getType(v6);
  std::to_string(&v10, v6);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  quasar::PTree::putChild(a2, v7, &__p, 1);
  quasar::PTree::~PTree(&__p);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  quasar::PTree::~PTree(v15);
}

void sub_1B5473E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a27);
  quasar::PTree::~PTree(v27);
  _Unwind_Resume(a1);
}

void sub_1B5474204(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v2 - 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void quasar::UttInfo::finalize(quasar::UttInfo *this, const quasar::DecoderPassData *a2, const quasar::DecoderChainOutput *a3, const quasar::SpeechRequestData *a4, quasar::FstLmScorer *a5)
{
  v10 = (*(**(*a2 + 16) + 24))(*(*a2 + 16));
  v11 = *(a4 + 3);
  v12 = v11 + *(a3 + 148) * v10;
  *(this + 6) = v11;
  *(this + 7) = v12;
  v15 = *this;
  v13 = this + 8;
  v14 = v15;
  if (v15 != v13)
  {
    do
    {
      v16 = *(v14 + 7);
      v17 = *v16;
      v18 = v16[1];
      while (v17 != v18)
      {
        quasar::ChoiceInfo::finalize(v17, a2, a4, a5);
        v17 = (v17 + 32);
      }

      v19 = *(v14 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v14 + 2);
          v21 = *v20 == v14;
          v14 = v20;
        }

        while (!v21);
      }

      v14 = v20;
    }

    while (v20 != v13);
  }
}

void quasar::UttInfo::ptree(quasar::UttInfo *this@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  quasar::PTree::PTree(v18);
  v4 = *this;
  if (*this != (this + 8))
  {
    do
    {
      quasar::ResultInfo::ptree(*(v4 + 7), &__p);
      quasar::PTree::putChild(v18, v4 + 32, &__p, 1);
      quasar::PTree::~PTree(&__p);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 8));
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "results");
  quasar::PTree::putChild(a2, &__p, v18, 1);
  if (v13.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "startMillis");
  v8 = *(this + 6);
  LODWORD(__p) = quasar::getType(v8);
  std::to_string(&v13, v8);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  quasar::PTree::putChild(a2, v10, &__p, 1);
  quasar::PTree::~PTree(&__p);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "endMillis");
  v9 = *(this + 7);
  LODWORD(__p) = quasar::getType(v9);
  std::to_string(&v13, v9);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  quasar::PTree::putChild(a2, v10, &__p, 1);
  quasar::PTree::~PTree(&__p);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  quasar::PTree::~PTree(v18);
}

void sub_1B547452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a27);
  quasar::PTree::~PTree(v27);
  _Unwind_Resume(a1);
}

void quasar::UttInfo::ptreeBatch(quasar::UttInfo ***a1@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    quasar::UttInfo::ptree(*v5, v6);
    quasar::PTree::addChild(a2, v6);
    quasar::PTree::~PTree(v6);
    v5 += 2;
  }
}

uint64_t *std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<kaldi::quasar::LmHandle>*>,std::__wrap_iter<std::shared_ptr<kaldi::quasar::LmHandle>*>>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::LmHandle>>,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void std::__shared_ptr_emplace<quasar::ResultInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D13450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::vector<quasar::ChoiceInfo>::__destroy_vector::operator()[abi:ne200100](quasar::Token ****a1)
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
        v4 -= 4;
        v6 = v4;
        std::vector<quasar::TokenInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

char *std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ResultInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ResultInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ResultInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v4;
}

void *std::__shared_ptr_emplace<quasar::DecoderChainOutput>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::SymbolTableList> const&,std::shared_ptr<quasar::SpeechRequestResultData>,std::allocator<quasar::DecoderChainOutput>,0>(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07828;
  std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList> const&,std::shared_ptr<quasar::SpeechRequestResultData>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList> const&,std::shared_ptr<quasar::SpeechRequestResultData>>(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a4;
  *a4 = 0uLL;
  quasar::DecoderChainOutput::DecoderChainOutput(a2, &v6, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B5474B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

double quasar::MultiChainMultiAudioBuffer::MultiChainMultiAudioBuffer(quasar::MultiChainMultiAudioBuffer *this)
{
  v1 = quasar::RecogAudioBufferBase::RecogAudioBufferBase(this, 0);
  *v1 = &unk_1F2D134A0;
  *(v1 + 16) = 850045863;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = v1 + 88;
  *(v1 + 132) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

void quasar::MultiChainMultiAudioBuffer::addBuffer(uint64_t a1, std::string *a2, uint64_t *a3, int a4)
{
  std::mutex::lock((a1 + 16));
  *&v14[0] = a2;
  v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, v14);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 8);
  *(v8 + 7) = v10;
  *(v8 + 8) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a4)
  {
    v12 = *(a1 + 127);
    if (v12 < 0)
    {
      v12 = *(a1 + 112);
    }

    if (v12)
    {
      memset(v14, 0, sizeof(v14));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Multiple primary buffers are not allowed! ", 42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Hint: Only one decoder chain can do system combination.", 55);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
    }

    std::string::operator=((a1 + 104), a2);
  }

  quasar::MultiChainMultiAudioBuffer::updateLeadBuffersUnlocked(a1);
  std::mutex::unlock((a1 + 16));
}

void quasar::MultiChainMultiAudioBuffer::updateLeadBuffersUnlocked(const void **this)
{
  v2 = this + 13;
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((this + 10), this + 13);
  v4 = this + 11;
  if (this + 11 == v3)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v5 = *(v3 + 64);
    v20 = *(v3 + 56);
    v21 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v6 = this[10];
  if (v6 != v4)
  {
    do
    {
      std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__p, v6 + 2);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v8 = *(this + 127);
      v9 = v8;
      if (v8 < 0)
      {
        v8 = this[14];
      }

      if (size == v8 && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), v9 >= 0 ? (v11 = v2) : (v11 = *v2), !memcmp(p_p, v11, size)))
      {
        v15 = 0;
        v16 = 0;
        quasar::RecogAudioBuffer::setLeadBuffer(v18, &v15);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      else
      {
        quasar::RecogAudioBuffer::setLeadBuffer(v18, &v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = *(v6 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v6 + 2);
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v4);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1B5474E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(&a12);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void quasar::MultiChainMultiAudioBuffer::removeBuffer(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 127);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 112);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 104) : *(a1 + 104);
    if (!memcmp(v8, v9, v5))
    {
      memset(v13, 0, sizeof(v13));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Cannot remove the primary buffer", 32);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v13);
    }
  }

  v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, a2);
  v11 = v10;
  if (a1 + 88 != v10)
  {
    (*(**(v10 + 56) + 32))(*(v10 + 56));
    v12 = v11[7];
    v13[0] = 0uLL;
    quasar::RecogAudioBuffer::setLeadBuffer(v12, v13);
    if (*(&v13[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13[0] + 1));
    }

    std::__tree<std::string>::__remove_node_pointer((a1 + 80), v11);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v11 + 4));
    operator delete(v11);
  }

  std::mutex::unlock((a1 + 16));
}

const void **quasar::MultiChainMultiAudioBuffer::getPrimaryBufferUnlocked@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((this + 10), this + 13);
  if (this + 11 == result)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = result[8];
    *a2 = result[7];
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void quasar::MultiChainMultiAudioBuffer::getBuffer(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 16));
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v6)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 64);
    *a3 = *(v6 + 56);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::mutex::unlock((a1 + 16));
}

void quasar::MultiChainMultiAudioBuffer::getPrimaryBuffer(quasar::MultiChainMultiAudioBuffer *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 16));
  quasar::MultiChainMultiAudioBuffer::getPrimaryBufferUnlocked(this, a2);

  std::mutex::unlock((this + 16));
}

uint64_t quasar::MultiChainMultiAudioBuffer::addAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v9, a4);
  v7 = quasar::MultiChainMultiAudioBuffer::addAudio<short>(a1, a2, a3, v9);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v9);
  return v7;
}

{
  v10 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v9, a4);
  v7 = quasar::MultiChainMultiAudioBuffer::addAudio<float>(a1, a2, a3, v9);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v9);
  return v7;
}

void sub_1B5475254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::MultiChainMultiAudioBuffer::addAudio<short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, (a1 + 104));
  v9 = (a1 + 88);
  if (a1 + 88 == v8)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(v8 + 56);
    v10 = *(v8 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v32, a4);
  v12 = (*(*v11 + 16))(v11, a2, a3, v32);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v32);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v12)
  {
    v13 = *(a1 + 80);
    if (v13 != v9)
    {
      do
      {
        v14 = *(v13 + 55);
        if (v14 >= 0)
        {
          v15 = *(v13 + 55);
        }

        else
        {
          v15 = v13[5];
        }

        v16 = *(a1 + 127);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(a1 + 112);
        }

        if (v15 != v16 || (v14 >= 0 ? (v18 = v13 + 4) : (v18 = v13[4]), v17 >= 0 ? (v19 = (a1 + 104)) : (v19 = *(a1 + 104)), memcmp(v18, v19, v15)))
        {
          v20 = v13[7];
          v31 = 0;
          v21 = (*(*v20 + 16))(v20, a2, a3, v30);
          std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v30);
          v29 = v21;
          if (v21)
          {
            v22 = quasar::gLogLevel < 5;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            memset(v28, 0, sizeof(v28));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Secondary chain rejected audio, probably waiting for primary: ", 62);
            quasar::operator<<(v23, &v29);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v28);
          }
        }

        v24 = v13[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v13[2];
            v26 = *v25 == v13;
            v13 = v25;
          }

          while (!v26);
        }

        v13 = v25;
      }

      while (v25 != v9);
    }
  }

  std::mutex::unlock((a1 + 16));
  return v12;
}

void sub_1B54754EC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v3 - 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_1B54755DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::MultiChainMultiAudioBuffer::addAudio<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, (a1 + 104));
  v9 = (a1 + 88);
  if (a1 + 88 == v8)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(v8 + 56);
    v10 = *(v8 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v32, a4);
  v12 = (*(*v11 + 24))(v11, a2, a3, v32);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v32);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v12)
  {
    v13 = *(a1 + 80);
    if (v13 != v9)
    {
      do
      {
        v14 = *(v13 + 55);
        if (v14 >= 0)
        {
          v15 = *(v13 + 55);
        }

        else
        {
          v15 = v13[5];
        }

        v16 = *(a1 + 127);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(a1 + 112);
        }

        if (v15 != v16 || (v14 >= 0 ? (v18 = v13 + 4) : (v18 = v13[4]), v17 >= 0 ? (v19 = (a1 + 104)) : (v19 = *(a1 + 104)), memcmp(v18, v19, v15)))
        {
          v20 = v13[7];
          v31 = 0;
          v21 = (*(*v20 + 24))(v20, a2, a3, v30);
          std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v30);
          v29 = v21;
          if (v21)
          {
            v22 = quasar::gLogLevel < 5;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            memset(v28, 0, sizeof(v28));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Secondary chain rejected audio, probably waiting for primary: ", 62);
            quasar::operator<<(v23, &v29);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v28);
          }
        }

        v24 = v13[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v13[2];
            v26 = *v25 == v13;
            v13 = v25;
          }

          while (!v26);
        }

        v13 = v25;
      }

      while (v25 != v9);
    }
  }

  std::mutex::unlock((a1 + 16));
  return v12;
}

void sub_1B5475874(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v3 - 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock((v1 + 16));
  _Unwind_Resume(a1);
}

void quasar::MultiChainMultiAudioBuffer::endAudio(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 != (this + 88))
  {
    do
    {
      (*(**(v2 + 7) + 32))(*(v2 + 7));
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 88));
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::endAudioForSecondaryBuffers(quasar::MultiChainMultiAudioBuffer *this, int a2)
{
  std::mutex::lock((this + 16));
  if (*(this + 12) != 1)
  {
    v4 = *(this + 10);
    if (v4 != (this + 88))
    {
      do
      {
        v5 = *(v4 + 55);
        if (v5 >= 0)
        {
          v6 = *(v4 + 55);
        }

        else
        {
          v6 = *(v4 + 5);
        }

        v7 = *(this + 127);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(this + 14);
        }

        if (v6 == v7 && (v5 >= 0 ? (v9 = v4 + 32) : (v9 = *(v4 + 4)), v8 >= 0 ? (v10 = this + 104) : (v10 = *(this + 13)), !memcmp(v9, v10, v6)))
        {
          quasar::RecogAudioBuffer::setWaitingForFollowers(*(v4 + 7), 1);
        }

        else
        {
          quasar::RecogAudioBuffer::endAudioToLeadBuffer(*(v4 + 7));
        }

        v11 = *(v4 + 1);
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
            v12 = *(v4 + 2);
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
      }

      while (v12 != (this + 88));
    }

    *(this + 32) = a2;
    *(this + 132) = 1;
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::synchronizeSecondaryBuffersToPrimary(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 != (this + 88))
  {
    do
    {
      v3 = *(v2 + 55);
      if (v3 >= 0)
      {
        v4 = *(v2 + 55);
      }

      else
      {
        v4 = *(v2 + 5);
      }

      v5 = *(this + 127);
      v6 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(this + 14);
      }

      if (v4 != v5 || (v3 >= 0 ? (v7 = v2 + 32) : (v7 = *(v2 + 4)), v6 >= 0 ? (v8 = this + 104) : (v8 = *(this + 13)), memcmp(v7, v8, v4)))
      {
        quasar::RecogAudioBuffer::synchronizeToLeadBuffer(*(v2 + 7));
      }

      quasar::RecogAudioBuffer::setWaitingForFollowers(*(v2 + 7), 0);
      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != (this + 88));
  }

  if (*(this + 132) == 1)
  {
    *(this + 132) = 0;
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::setServerSideEndPointing(quasar::MultiChainMultiAudioBuffer *this, uint64_t a2)
{
  std::mutex::lock((this + 16));
  v4 = *(this + 10);
  if (v4 != (this + 88))
  {
    do
    {
      (*(**(v4 + 7) + 40))(*(v4 + 7), a2);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 88));
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::triggerServerSideEndPointer(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 != (this + 88))
  {
    do
    {
      (*(**(v2 + 7) + 48))(*(v2 + 7));
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 88));
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::stopAudioDecoding(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 != (this + 88))
  {
    do
    {
      (*(**(v2 + 7) + 56))(*(v2 + 7));
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 88));
  }

  std::mutex::unlock((this + 16));
}

float quasar::MultiChainMultiAudioBuffer::audioLeftSeconds(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  v3 = 0.0;
  if (v2 != (this + 88))
  {
    do
    {
      v4 = (*(**(v2 + 7) + 64))(*(v2 + 7));
      if (v3 < v4)
      {
        v3 = v4;
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (this + 88));
  }

  std::mutex::unlock((this + 16));
  return v3;
}

float quasar::MultiChainMultiAudioBuffer::audioReadSeconds(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  v3 = 0.0;
  if (v2 != (this + 88))
  {
    do
    {
      v4 = (*(**(v2 + 7) + 72))(*(v2 + 7));
      if (v3 < v4)
      {
        v3 = v4;
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != (this + 88));
  }

  std::mutex::unlock((this + 16));
  return v3;
}

uint64_t quasar::MultiChainMultiAudioBuffer::packetArrivalTimestampFromAudioTime(quasar::MultiChainMultiAudioBuffer *this, float a2)
{
  std::mutex::lock((this + 16));
  v7 = (this + 104);
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 10, this + 13, &std::piecewise_construct, &v7);
  v5 = (*(**(v4 + 7) + 80))(*(v4 + 7), a2);
  std::mutex::unlock((this + 16));
  return v5;
}

uint64_t quasar::MultiChainMultiAudioBuffer::getPrimaryAudioEndMs(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 16);
  std::mutex::unlock((this + 16));
  return v2;
}

void quasar::MultiChainMultiAudioBuffer::emptyAudioBuffer(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 != (this + 88))
  {
    do
    {
      quasar::RecogAudioBuffer::emptyAudioBuffer(*(v2 + 7));
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 88));
  }

  std::mutex::unlock((this + 16));
}

void quasar::MultiChainMultiAudioBuffer::startCountingAudioDuration(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v3 = (this + 104);
  v2 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 10, this + 13, &std::piecewise_construct, &v3);
  quasar::RecogAudioBuffer::startCountingAudioDuration(*(v2 + 7));
  std::mutex::unlock((this + 16));
}

float quasar::MultiChainMultiAudioBuffer::stopCountingAudioDuration(quasar::MultiChainMultiAudioBuffer *this)
{
  std::mutex::lock((this + 16));
  v5 = (this + 104);
  v2 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 10, this + 13, &std::piecewise_construct, &v5);
  v3 = quasar::RecogAudioBuffer::stopCountingAudioDuration(*(v2 + 7));
  std::mutex::unlock((this + 16));
  return v3;
}

void quasar::MultiChainMultiAudioBuffer::~MultiChainMultiAudioBuffer(quasar::MultiChainMultiAudioBuffer *this)
{
  *this = &unk_1F2D134A0;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 80, *(this + 11));
  std::mutex::~mutex((this + 16));

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D134A0;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 80, *(this + 11));
  std::mutex::~mutex((this + 16));
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1B54763BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LexiconFST::removeAuxSymbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 8) + 72) - *(*(a2 + 8) + 64);
  if ((v3 >> 3) >= 1)
  {
    v6 = 0;
    v7 = (v3 >> 3) & 0x7FFFFFFF;
    do
    {
      v17 = &unk_1F2D04CD8;
      v20 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a2);
      v8 = *(a2 + 8);
      v9 = *(*(v8 + 64) + 8 * v6);
      v18 = v9;
      v19 = v8 + 8;
      for (i = v20; ; i = ++v20)
      {
        v12 = v9 + 24;
        v11 = *(v9 + 24);
        if (i >= (*(v12 + 8) - v11) >> 4)
        {
          break;
        }

        v16 = *(v11 + 16 * i);
        (*(*a3 + 88))(v14, a3, v16.n128_i32[0]);
        if ((v15 & 0x80000000) == 0)
        {
          if (v15)
          {
            goto LABEL_8;
          }

LABEL_7:
          v16.n128_u32[0] = 0;
          fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v17, &v16);
          goto LABEL_8;
        }

        v13 = v14[1];
        operator delete(v14[0]);
        if (!v13)
        {
          goto LABEL_7;
        }

LABEL_8:
        v9 = v18;
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void quasar::LexiconFST::readLexicon(uint64_t a1, void *a2, void *a3)
{
  memset(&v34, 0, sizeof(v34));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v6 = std::locale::use_facet(__p, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(__p);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v34, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    quasar::trim(&v34);
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "\t");
      quasar::splitAndTrimNoEmpty(&v34, __p, v33);
      if (SBYTE7(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v33[1] - v33[0]) == 48)
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3, v33[0]))
        {
          *__p = 0u;
          v17 = 0u;
          LODWORD(v18) = 1065353216;
          v36[0] = v33[0];
          v10 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v33[0], &std::piecewise_construct, v36, &v35);
          if (v10 + 5 != __p)
          {
            *(v10 + 18) = v18;
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v10 + 5, v17, 0);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
        }

        v36[0] = v33[0];
        v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v33[0], &std::piecewise_construct, v36, &v35);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v11 + 5, v33[0] + 3, (v33[0] + 3));
      }

      else if (quasar::gLogLevel >= 5)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Invalid line in lexicon: '", 26);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v34;
        }

        else
        {
          v13 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v34.__r_.__value_.__l.__size_;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "'", 1);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      __p[0] = v33;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}