void sub_1C317C0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::quasar::ComputeEngineBufferItf *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t kaldi::quasar::ComputeEngineItf::CreateSplitMove@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  result = (*(*result + 176))(result);
  if (!result)
  {
    goto LABEL_5;
  }

  result = (*(**a2 + 184))(*a2, 0);
  if (result == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a3, 1uLL);
  }

  if (result)
  {
    v7 = *a2;
    v8 = *(*a1 + 104);

    return v8(a1, v7);
  }

  else
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_1C317C318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ComputeEngineItf::RunBatch(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, void **a5)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      kaldi::quasar::ComputeEngineItf::CreateConcatMove(a1, v7 + 3, 0, &v38);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        v33.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v33.__r_.__value_.__l.__data_ = v9;
      }

      v10 = v38;
      v38 = 0;
      v34 = v10;
      v11 = v36;
      if (v36 >= v37)
      {
        v15 = (v36 - v35) >> 5;
        v16 = v15 + 1;
        if ((v15 + 1) >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v37 - v35;
        if ((v37 - v35) >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v18 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v43 = &v35;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(&v35, v18);
        }

        v19 = 32 * v15;
        v20 = *&v33.__r_.__value_.__l.__data_;
        *(v19 + 16) = *(&v33.__r_.__value_.__l + 2);
        *v19 = v20;
        memset(&v33, 0, sizeof(v33));
        v21 = v34;
        v34 = 0;
        *(v19 + 24) = v21;
        v14 = 32 * v15 + 32;
        v22 = (32 * v15 - (v36 - v35));
        memcpy((v19 - (v36 - v35)), v35, v36 - v35);
        v23 = v35;
        v24 = v37;
        v35 = v22;
        v36 = v14;
        v37 = 0;
        v41 = v23;
        v42 = v24;
        v39 = v23;
        v40 = v23;
        std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v39);
      }

      else
      {
        v12 = *&v33.__r_.__value_.__l.__data_;
        *(v36 + 16) = *(&v33.__r_.__value_.__l + 2);
        *v11 = v12;
        memset(&v33, 0, sizeof(v33));
        v13 = v34;
        v34 = 0;
        *(v11 + 24) = v13;
        v14 = v11 + 32;
      }

      v36 = v14;
      v25 = v34;
      v34 = 0;
      if (v25)
      {
        (*(v25->__r_.__value_.__r.__words[0] + 8))(v25);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v26 = v38;
      v38 = 0;
      if (v26)
      {
        (*(v26->__r_.__value_.__r.__words[0] + 8))(v26);
      }

      v7 += 3;
    }

    while (v7 != v8);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  (*(*a1 + 120))(a1, &v35, a3, a4, &v39);
  v27 = *a5;
  v28 = a5[1];
  while (v28 != v27)
  {
    v28 -= 24;
    v33.__r_.__value_.__r.__words[0] = v28;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v33);
  }

  a5[1] = v27;
  v29 = v39;
  v30 = v40;
  if (v39 != v40)
  {
    do
    {
      kaldi::quasar::ComputeEngineItf::CreateSplitMove(a1, v29, &v33.__r_.__value_.__l.__data_);
      std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](a5, &v33);
      v38 = &v33;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v38);
      ++v29;
    }

    while (v29 != v30);
  }

  v33.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v39 = &v35;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v39);
}

void sub_1C317C610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a11 = &a20;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a16;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(kaldi::quasar::ComputeEngineConfigItf *this)
{
  *this = &unk_1F42CDA38;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *kaldi::quasar::ComputeEngineConfigItf::CreateComputeEngineAllowingFallback@<X0>(kaldi::quasar::ComputeEngineConfigItf *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 24))(&v4);
  *a2 = 0;
  *(a2 + 8) = v4;
  return result;
}

void kaldi::quasar::ComputeEngineBufferItf::GetWritableDataFloat(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetWritableDataFloat", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 64);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetWritableDataFloat not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::quasar::ComputeEngineBufferItf::GetDataFloat(kaldi::quasar::ComputeEngineBufferItf *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetDataFloat", "../engine/common/libquasar/libkaldi/src/shared-bridge/compute-engine-itf.h", 65);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "GetDataFloat not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void InferenceEngine::SoundStormIOProcessor::SoundStormIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v34, a2);
  InferenceEngine::BaseIOProcessor::BaseIOProcessor(a1, v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v35, v34[0]);
  *a1 = &unk_1F42CDAA8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v32, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
  v4 = *(a1 + 24);
  *(a1 + 24) = v32[0];
  v32[0] = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = v33;
  v33 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v33, v32[0]);
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "inference_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v6, &v30);
  v7 = v30;
  if (v30 == v31)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v7++;
      v8 += v9;
    }

    while (v7 != v31);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "loop");
  LODWORD(__src) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v10, &__src);
  if (v8 == __src)
  {
    LODWORD(__p[0]) = 0;
    v28 = 0;
    v29 = 0;
    __src = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__src, __p, __p + 1, 1uLL);
    v11 = v30;
    if (v31 - v30 == 4)
    {
      v12 = v28;
    }

    else
    {
      v13 = 0;
      v12 = v28;
      do
      {
        v14 = __src;
        v15 = v11[v13] + *(__src + v13);
        if (v12 >= v29)
        {
          v16 = v12 - __src;
          v17 = (v12 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v29 - __src;
          if ((v29 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v18);
          }

          v20 = (v12 - __src) >> 2;
          v21 = (4 * v17);
          v22 = (4 * v17 - 4 * v20);
          *v21 = v15;
          v12 = v21 + 1;
          memcpy(v22, v14, v16);
          v23 = __src;
          __src = v22;
          v28 = v12;
          v29 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12++ = v15;
        }

        v28 = v12;
        ++v13;
        v11 = v30;
      }

      while (((v31 - v30) >> 2) - 1 > v13);
    }

    v26 = 0;
    v25[0] = 2;
    __p[0] = __src;
    *v36 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>();
  }

  __assert_rtn("SoundStormIOProcessor", "SoundStormIOProcessor.cpp", 22, "std::reduce(inference_schedule.begin(), inference_schedule.end()) == model_parameters[loop].get<int>()");
}

void sub_1C317CE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v27);
  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(v26);
  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

void InferenceEngine::SoundStormIOProcessor::~SoundStormIOProcessor(InferenceEngine::SoundStormIOProcessor *this)
{
  *this = &unk_1F42CDAA8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 24);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 4, *(this + 24));

  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(this);
}

void InferenceEngine::SoundStormIOProcessor::build_vq_target(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, InferenceEngine::DataTensor **a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v20, "pred_semantic");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v20);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
  v9 = *(__p.__r_.__value_.__r.__words[0] + 8);
  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  if (!a3)
  {
    v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "num_vqs");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, &v18);
    v14 = v18;
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "vq_mask_id");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v15, &v18);
    v19 = v18;
    std::vector<float>::vector[abi:ne200100](v20, v14, &v19);
    std::vector<std::vector<float>>::vector[abi:ne200100](&__p, v9, v20);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "vq_tokens");
    InferenceEngine::DataTensor::build_from_2d_array<float>(v20, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "vq_tokens");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v12;
  a4[1] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::Vocab::OOvWord(v12, &__p);
  v20[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v20);
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = v16[6];
  v16[5] = v12;
  v16[6] = v11;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C317D1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = &a19;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::SoundStormIOProcessor::build_q_token_mask(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, kaldi::quasar::Vocab **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "pred_semantic");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v21);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
  v9 = *(__p + 1);
  v23 = __p;
  operator delete(__p);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
  if (v23 == __p)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (*(__p + v11) == a3)
      {
        LODWORD(v19) = 0;
        std::vector<float>::vector[abi:ne200100](v20, v9, &v19);
        std::vector<std::vector<float>>::vector[abi:ne200100](&v21, 1uLL, v20);
        if (v20[0])
        {
          v20[1] = v20[0];
          operator delete(v20[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v20, "q_token_mask");
        InferenceEngine::DataTensor::build_from_2d_array<float>(v20, &v21);
      }

      ++v11;
    }

    while (v11 < (v23 - __p) >> 2);
    *a4 = 0;
    a4[1] = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, "q_token_mask");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v21);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v12[5];
  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v14;
  a4[1] = v13;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v15 = *a4;
  kaldi::quasar::Vocab::OOvWord(*a4, &v21);
  v20[0] = &v21;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v21.__r_.__value_.__l.__data_, &std::piecewise_construct, v20);
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = v16[6];
  v16[5] = v15;
  v16[6] = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_1C317D528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_pred_data(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v24, "pred_semantic");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v24);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "vq_tokens");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v24);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      std::string::basic_string[abi:ne200100]<0>(&v24, "q_token_mask");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v24);
      if (v9)
      {
        v11 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_shape(v5, 0, &v24);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        InferenceEngine::DataTensor::unsqueeze(v5, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v5, &v21);
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v24, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
        v18 = &v21;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
        InferenceEngine::DataTensor::get_3d_array<float>(v8, &v18);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v21, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * (v18[1] - *v18));
        v17[0] = &v18;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v17);
        InferenceEngine::DataTensor::squeeze(v5, 2);
        InferenceEngine::DataTensor::unsqueeze(v11, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v11, v17);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v18, *v17[0], v17[0][1], 0xAAAAAAAAAAAAAAABLL * ((v17[0][1] - *v17[0]) >> 3));
        __p[0] = v17;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
        InferenceEngine::DataTensor::squeeze(v11, 2);
        memset(v15, 0, sizeof(v15));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v15, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v15, v14, 1, v16);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v16, v13, 1, v17);
        __p[0] = v13;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v16;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v14;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v15;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        std::string::basic_string[abi:ne200100]<0>(__p, "pred_data");
        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v17);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C317DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v34 + 8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  __p = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a28 = &a31;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = v35 - 144;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v35 - 144) = v35 - 120;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_1C317DBD4()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C317DBB4);
}

void sub_1C317DBEC()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C317DBC0);
}

void sub_1C317DC04()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1C317DBCCLL);
}

void InferenceEngine::SoundStormIOProcessor::build_prompt_data(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v16, "prompt_semantic");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v16);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "prompt_vq");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v16);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }

      InferenceEngine::DataTensor::unsqueeze(v5, 2);
      InferenceEngine::DataTensor::get_3d_array<float>(v5, &v13);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v16, *v13, v13[1], 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3));
      v12[0] = &v13;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v12);
      InferenceEngine::DataTensor::get_3d_array<float>(v8, v12);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v13, *v12[0], v12[0][1], 0xAAAAAAAAAAAAAAABLL * ((v12[0][1] - *v12[0]) >> 3));
      __p[0] = v12;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
      InferenceEngine::DataTensor::squeeze(v5, 2);
      memset(v11, 0, sizeof(v11));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v11, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
      memset(v10, 0, sizeof(v10));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v11, v10, 1, v12);
      __p[0] = v10;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v11;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      std::string::basic_string[abi:ne200100]<0>(__p, "prompt_data");
      InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v12);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C317DF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  __p = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &a24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = v27 - 88;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1C317DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a9 = &a18;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  JUMPOUT(0x1C317DFA8);
}

void sub_1C317DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  a18 = &a21;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  JUMPOUT(0x1C317DFB8);
}

void sub_1C317E024()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1C317DFC4);
}

void sub_1C317E03C()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1C317DFD0);
}

void InferenceEngine::SoundStormIOProcessor::build_prompt_lens(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "prompt_data");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, v6);
  if (v3)
  {
    InferenceEngine::DataTensor::get_shape(v3[5], 0, __p);
    v4 = *(__p[0] + 1);
    __p[1] = __p[0];
    operator delete(__p[0]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "prompt_lens");
    v5 = v4;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v6, &v5, v6, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v6);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C317E1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::SoundStormIOProcessor::process_inputs(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "pred_semantic");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*buf);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, buf);
  v9 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "SoundStormIOProcessor.cpp", 205, "B == 1");
  }

  (*(*a1 + 16))(&v49, a1, a2, a3);
  (*(*a1 + 24))(&v47, a1, a2, a3);
  (*(*a1 + 32))(&v45, a1, a2, a3);
  (*(*a1 + 48))(&v43, a1, a2, a3);
  (*(*a1 + 64))(&v41, a1, a2, a3);
  (*(*a1 + 40))(&v39, a1, a2, a3);
  InferenceEngine::DataTensor::get_1d_array<float>(buf, v39);
  v10 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v10 >= 1.0)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(buf, v45);
    v14 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "prompt_attention");
    buf[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v15, buf);
    if (buf[0] == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v38, "prompt_k_");
      std::to_string(&v37, v14);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v37;
      }

      else
      {
        v16 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v38, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v52 = v18->__r_.__value_.__r.__words[2];
      *buf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_v_");
      std::to_string(&__p, v14);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, p_p, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v24 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
      if (!v24)
      {
        goto LABEL_73;
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_k");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_, &std::piecewise_construct, &__p);
      v27 = v24[5];
      v26 = v24[6];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = v25[6];
      v25[5] = v27;
      v25[6] = v26;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v29 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v38);
      if (!v29)
      {
LABEL_73:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_v");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_, &std::piecewise_construct, &__p);
      v32 = v29[5];
      v31 = v29[6];
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }

      v33 = v30[6];
      v30[5] = v32;
      v30[6] = v31;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      (*(*a1 + 56))(buf, a1, a2, a3);
      (*(*a1 + 72))(&v38, a1, a2, a3);
      if (v38.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38.__r_.__value_.__l.__size_);
      }

      v30 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    LogObject = InferenceEngine::Diagnostics_GetLogObject(v30);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Prepare SoundStorm inputs finished for loop %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    v13 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_INFO, "Skip loop %d", buf, 8u);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v13;
}

void sub_1C317E880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v39 = *(v37 - 112);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "vq_tokens");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
    if (v9)
    {
      v10 = v9[6];
      v11 = v9[5];
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v11, a3);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v8, __p);
      (*(*a1 + 80))(a1, a2, __p);
      kaldi::quasar::Vocab::OOvWord(v8, &buf);
      InferenceEngine::DataTensor::build_from_3d_array<float>(&buf, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C317EC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a13;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1C317ED44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C317ED3CLL);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v8 = *v7;
      v7 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 1, v8);
      v10 = v6 == a5;
      v6 = v7;
    }

    while (!v10);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C317EF00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::exception::name(int a2@<W1>, std::string *a3@<X8>)
{
  std::operator+<char>();
  v5 = std::string::append(&v13, ".");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
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

  v9 = std::string::append(&v14, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "] ");
  *a3 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1C317F03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_1F42CDB50;
  *(this + 2) = a2;
  std::runtime_error::runtime_error(this + 1, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_1F42CDB50;
  MEMORY[0x1C692A5A0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F42CDB50;
  MEMORY[0x1C692A5A0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1C692AE10);
}

void nlohmann::detail::type_error::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  nlohmann::detail::exception::name(a1, &v14);
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

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F42CDB90;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1C317F2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_1E81A1310[v1];
  }
}

void nlohmann::detail::invalid_iterator::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "invalid_iterator");
  nlohmann::detail::exception::name(a1, &v14);
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

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F42CDBD0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1C317F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<int>::emplace_back<int>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

uint64_t *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C317F65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,int const*,int const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 8) = 0;
      v7 = *v6++;
      *v4 = 5;
      *(v4 + 8) = v7;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::__shared_ptr_emplace<InferenceEngine::DataTensor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CDBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

void **std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(void *a1, void **a2, char **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<float>>::__move_range(a1, a2, a1[1], &a2[3 * a5]);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, a3 + v16, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<float>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<int>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

void std::vector<std::vector<float>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    *v6 = *v5;
    v6[2] = *(v5 + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v5 += 24;
    v6 += 3;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = (a4 - v4);
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE13__move_assignERS3_NS_17integral_constantIbLb1EEE(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t *std::__split_buffer<std::vector<float>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<float>*>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v4 += 3;
      a2 += 24;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void InferenceEngine::DataTensor::get_1d_array<float>()
{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 338, "0");
}

{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 336, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_1d_array", "DataTensor.hpp", 332, "typeid(T) == typeid(float)");
}

void InferenceEngine::DataTensor::get_3d_array<float>()
{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 306, "0");
}

{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 304, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_3d_array", "DataTensor.hpp", 300, "typeid(T) == typeid(float)");
}

void InferenceEngine::VectorOps::concatenate_vectors_2d<float>()
{
  __assert_rtn("concatenate_vectors_2d", "VectorOps.h", 114, "matrix1.size() == matrix2.size()");
}

{
  __assert_rtn("concatenate_vectors_2d", "VectorOps.h", 112, "matrix1[0].size() == matrix2[0].size()");
}

void InferenceEngine::DataTensor::get_2d_array<float>()
{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 322, "0");
}

{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 320, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_2d_array", "DataTensor.hpp", 316, "typeid(T) == typeid(float)");
}

void InferenceEngine::SoundStormIOProcessor::check_outputs<int>(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1C2F95000, log, OS_LOG_TYPE_ERROR, "Found %d appearances of nan in loop %d", v3, 0xEu);
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*()
{
  __assert_rtn("operator*", "iter_impl.hpp", 254, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 248, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator*", "iter_impl.hpp", 242, "m_object != nullptr");
}

void InferenceEngine::mil2bnns_compiled_model_directory(std::__fs::filesystem::path *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = "/private/var/mobile/";
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v7, &v11);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v6.__pn_, "Library");
  std::__fs::filesystem::operator/[abi:ne200100](&v8, &v6, &v7);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v5.__pn_, "Caches");
  std::__fs::filesystem::operator/[abi:ne200100](&buffer, &v5, &v8);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v4.__pn_, "SiriTTS");
  std::__fs::filesystem::operator/[abi:ne200100](&v9, &v4, &buffer);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&__p, "BNNSModels");
  std::__fs::filesystem::operator/[abi:ne200100](&v10, &__p, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buffer.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buffer.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  v2 = MGGetStringAnswer();
  CFStringGetCString(v2, &buffer, 16, 0x8000100u);
  CFRelease(v2);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v9.__pn_, &buffer);
  std::__fs::filesystem::operator/[abi:ne200100](a1, &v9, &v10);
  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1C3180064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 97) < 0)
  {
    operator delete(*(v45 - 120));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::bnns_log_fn(InferenceEngine *result, uint64_t a2, const char *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = "";
  }

  if (result == 8 || result == 2)
  {
    LogObject = InferenceEngine::Diagnostics_GetLogObject(result);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      InferenceEngine::bnns_log_fn(a2, v4, LogObject);
    }
  }
}

void InferenceEngine::MilIO::~MilIO(void **this)
{
  *this = &unk_1F42CDD28;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  InferenceEngine::DataTensor::~DataTensor(this);
}

{
  *this = &unk_1F42CDD28;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  InferenceEngine::DataTensor::~DataTensor(this);

  JUMPOUT(0x1C692AE10);
}

uint64_t InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(uint64_t a1, std::string *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = InferenceEngine::MilInferenceModel::MilInferenceModel(a1, a2);
  *v3 = &unk_1F42CDC78;
  v4 = (v3 + 336);
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0;
  BNNSGraphCompileOptionsMakeDefault();
  std::string::basic_string[abi:ne200100]<0>(&__p, "mil2bnns_model_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((a1 + 32), &__p, "", &v71);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mil2bnns_downcast_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((a1 + 32), &__p, "", &v70);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mil2bnns_mmap_filename");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((a1 + 32), &__p, "", &v69);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "model_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((a1 + 32), &__p, "", &v68);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "mil2bnns_mmap_path");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value((a1 + 32), v64, "", &v66.__pn_);
    pn = v66.__pn_;
    memset(&v66, 0, sizeof(v66));
    std::__fs::filesystem::path::filename[abi:ne200100](&pn, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      *&__p.st_dev = *&buf.__r_.__value_.__l.__data_;
      *&__p.st_uid = *(&buf.__r_.__value_.__l + 2);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    *&v69.__r_.__value_.__l.__data_ = *&__p.st_dev;
    v69.__r_.__value_.__r.__words[2] = *&__p.st_uid;
    HIBYTE(__p.st_gid) = 0;
    LOBYTE(__p.st_dev) = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__pn_.__r_.__value_.__l.__data_);
    }

    if (v65 < 0)
    {
      operator delete(v64[0]);
    }
  }

  if ((kaldi::nnet1::Component::IsUpdatable(v5) & 1) == 0)
  {
    v7 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v69.__r_.__value_.__l.__size_;
    }

    if (v7)
    {
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v68.__r_.__value_.__l.__size_;
      }

      if (v8)
      {
        p_p = &__p;
        std::string::basic_string[abi:ne200100](&__p, v8 + 1);
        if ((__p.st_gid & 0x80000000) != 0)
        {
          p_p = *&__p.st_dev;
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v68;
        }

        else
        {
          v10 = v68.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v10, v8);
        *(&p_p->st_dev + v8) = 95;
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v69;
        }

        else
        {
          v11 = v69.__r_.__value_.__r.__words[0];
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = v69.__r_.__value_.__l.__size_;
        }

        v13 = std::string::append(&__p, v11, v12);
        v14 = v13->__r_.__value_.__r.__words[0];
        buf.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
        *(buf.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        v69.__r_.__value_.__r.__words[0] = v14;
        v69.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        *(&v69.__r_.__value_.__r.__words[1] + 7) = *(buf.__r_.__value_.__r.__words + 7);
        *(&v69.__r_.__value_.__s + 23) = v15;
        if (SHIBYTE(__p.st_gid) < 0)
        {
          operator delete(*&__p.st_dev);
        }
      }

      InferenceEngine::mil2bnns_compiled_model_directory(&pn);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v66.__pn_, &v69);
      std::__fs::filesystem::operator/[abi:ne200100](&buf, &v66, &pn);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        *&__p.st_dev = *&buf.__r_.__value_.__l.__data_;
        *&__p.st_uid = *(&buf.__r_.__value_.__l + 2);
      }

      if (*(a1 + 359) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
      }

      *&v4->__r_.__value_.__l.__data_ = *&__p.st_dev;
      v4->__r_.__value_.__r.__words[2] = *&__p.st_uid;
      HIBYTE(__p.st_gid) = 0;
      LOBYTE(__p.st_dev) = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v71.__r_.__value_.__l.__size_ == 7 && *v71.__r_.__value_.__l.__data_ == 1702257015 && *(v71.__r_.__value_.__r.__words[0] + 3) == 1852732005)
    {
      goto LABEL_90;
    }

    if (v71.__r_.__value_.__l.__size_ == 10 && *v71.__r_.__value_.__l.__data_ == 0x6F7473646E756F73 && *(v71.__r_.__value_.__r.__words[0] + 8) == 28018)
    {
      goto LABEL_90;
    }

    if (v71.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_91;
    }

    v19 = v71.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 10)
      {
        goto LABEL_91;
      }

      if (v71.__r_.__value_.__r.__words[0] != 0x6F7473646E756F73 || LOWORD(v71.__r_.__value_.__r.__words[1]) != 28018)
      {
        goto LABEL_91;
      }

LABEL_90:
      BNNSGraphCompileOptionsSetPredefinedOptimizations();
      goto LABEL_91;
    }

    if (LODWORD(v71.__r_.__value_.__l.__data_) == 1702257015 && *(v71.__r_.__value_.__r.__words + 3) == 1852732005)
    {
      goto LABEL_90;
    }

    v19 = &v71;
  }

  data = v19->__r_.__value_.__l.__data_;
  v22 = *(v19->__r_.__value_.__r.__words + 3);
  if (data == 1601401972 && v22 == 1886154335)
  {
    goto LABEL_90;
  }

LABEL_91:
  v24 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v70.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    if ((_get_cpu_capabilities() & 0x78000000) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v52 = &v70;
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v70.__r_.__value_.__r.__words[0];
      }

      InferenceEngine::StringFormatter::StringFormatter(&__p, "BNNS downcast type not supported '%s'", v52);
      MEMORY[0x1C692A510](exception, &__p);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v70.__r_.__value_.__l.__size_ == 4 && *v70.__r_.__value_.__l.__data_ == 909209702)
      {
        goto LABEL_125;
      }

      if (v70.__r_.__value_.__l.__size_ == 19)
      {
        v27 = *v70.__r_.__value_.__l.__data_ == 0x73706F5F36317066 && *(v70.__r_.__value_.__r.__words[0] + 8) == 0x63615F323370665FLL;
        if (v27 && *(v70.__r_.__value_.__r.__words[0] + 11) == 0x6D756363615F3233)
        {
          goto LABEL_125;
        }
      }

      if (v70.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_126;
      }

      v29 = v70.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v70.__r_.__value_.__r.__words[2]) != 4)
      {
        if (HIBYTE(v70.__r_.__value_.__r.__words[2]) != 19)
        {
          goto LABEL_126;
        }

        v25 = v70.__r_.__value_.__r.__words[0] == 0x73706F5F36317066 && v70.__r_.__value_.__l.__size_ == 0x63615F323370665FLL;
        if (!v25 || *(&v70.__r_.__value_.__r.__words[1] + 3) != 0x6D756363615F3233)
        {
          goto LABEL_126;
        }

LABEL_125:
        BNNSGraphCompileOptionsSetDownconvertMode();
        goto LABEL_126;
      }

      if (LODWORD(v70.__r_.__value_.__l.__data_) == 909209702)
      {
        goto LABEL_125;
      }

      v29 = &v70;
    }

    if (LODWORD(v29->__r_.__value_.__l.__data_) != 909207138 || (_get_cpu_capabilities() & 0x78000000uLL) < 0x10000001)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_126:
  if ((*(a1 + 359) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 344))
    {
      goto LABEL_134;
    }
  }

  else if (!*(a1 + 359))
  {
    goto LABEL_134;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, v4);
  std::__fs::filesystem::__status(&__p, 0);
  v30 = buf.__r_.__value_.__s.__data_[0];
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (!v30 || v30 == 255)
  {
LABEL_134:
    InferenceEngine::mil2bnns_compiled_model_directory(&__p);
    std::__fs::filesystem::__status(&__p, 0);
    if (buf.__r_.__value_.__s.__data_[0] == 255 || !buf.__r_.__value_.__s.__data_[0])
    {
      directories = std::__fs::filesystem::__create_directories(&__p, 0);
      if (!directories)
      {
        LogObject = InferenceEngine::Diagnostics_GetLogObject(directories);
        if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
        {
          InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(&__p.st_dev, LogObject);
        }

        MEMORY[0x1C692A640](v4, "");
      }
    }

    if (*(a1 + 359) >= 0)
    {
      v33 = *(a1 + 359);
    }

    else
    {
      v33 = *(a1 + 344);
    }

    p_buf = &buf;
    std::string::basic_string[abi:ne200100](&buf, v33 + 11);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (v33)
    {
      if (*(a1 + 359) >= 0)
      {
        v35 = v4;
      }

      else
      {
        v35 = *(a1 + 336);
      }

      memmove(p_buf, v35, v33);
    }

    strcpy(p_buf + v33, ".inProgress");
    if ((*(a1 + 359) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 344))
      {
        goto LABEL_155;
      }
    }

    else if (!*(a1 + 359))
    {
LABEL_155:
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&pn, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        pn = *(a1 + 64);
      }

      v36 = BNNSGraphCompileFromFile_v2();
      *(a1 + 240) = v36;
      *(a1 + 248) = v38;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
        v36 = *(a1 + 240);
      }

      if (!v36)
      {
        goto LABEL_179;
      }

      if (*(a1 + 359) < 0)
      {
        if (*(a1 + 344))
        {
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &buf;
          }

          else
          {
            v39 = buf.__r_.__value_.__r.__words[0];
          }

          v40 = v4->__r_.__value_.__r.__words[0];
          goto LABEL_178;
        }
      }

      else if (*(a1 + 359))
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &buf;
        }

        else
        {
          v39 = buf.__r_.__value_.__r.__words[0];
        }

        v40 = v4;
LABEL_178:
        rename(v39, v40, v37);
      }

LABEL_179:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      v44 = *(a1 + 240);
      goto LABEL_184;
    }

    BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();
    goto LABEL_155;
  }

  v41 = v4;
  if (*(a1 + 359) < 0)
  {
    v41 = v4->__r_.__value_.__r.__words[0];
  }

  v42 = open(v41, 0);
  v43 = v42;
  if (v42 < 0)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    v55 = v4;
    if (*(a1 + 359) < 0)
    {
      v55 = v4->__r_.__value_.__r.__words[0];
    }

    v56 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&__p, "failed to open bnns mmap file from: '%s', errno: %d", v55, *v56);
    MEMORY[0x1C692A510](v54, &__p);
    __cxa_throw(v54, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (fstat(v42, &__p) < 0)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    v58 = v4;
    if (*(a1 + 359) < 0)
    {
      v58 = v4->__r_.__value_.__r.__words[0];
    }

    v59 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&buf, "failed to fstat bnns mmap file from: '%s', errno: %d", v58, *v59);
    MEMORY[0x1C692A510](v57, &buf);
    __cxa_throw(v57, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v44 = mmap(0, __p.st_size, 1, 1, v43, 0);
  if (v44 == -1)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    v61 = v4;
    if (*(a1 + 359) < 0)
    {
      v61 = v4->__r_.__value_.__r.__words[0];
    }

    v62 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&buf, "failed to mmap bnns mmap file from: '%s', errno: %d", v61, *v62);
    MEMORY[0x1C692A510](v60, &buf);
    __cxa_throw(v60, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  close(v43);
  st_size = __p.st_size;
  *(a1 + 240) = v44;
  *(a1 + 248) = st_size;
LABEL_184:
  if (!v44)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      buf = *(a1 + 64);
    }

    v53 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = buf.__r_.__value_.__r.__words[0];
    }

    InferenceEngine::StringFormatter::StringFormatter(&__p, "failed to compile mil2bnns model from: '%s'", v53);
    MEMORY[0x1C692A510](v50, &__p);
    __cxa_throw(v50, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  *(a1 + 264) = 0;
  (*(*a1 + 64))(a1);
  v46 = BNNSGraphCompileOptionsDestroy();
  v47 = InferenceEngine::Diagnostics_GetLogObject(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *&__p.st_dev = *(a1 + 64);
      *&__p.st_uid = *(a1 + 80);
    }

    v48 = &__p;
    if ((__p.st_gid & 0x80000000) != 0)
    {
      v48 = *&__p.st_dev;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v48;
    _os_log_impl(&dword_1C2F95000, v47, OS_LOG_TYPE_INFO, "Load model from %s", &buf, 0xCu);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C3180F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
    if ((v50 & 1) == 0)
    {
LABEL_8:
      __cxa_begin_catch(exception_object);
      BNNSGraphCompileOptionsDestroy();
      __cxa_rethrow();
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  goto LABEL_8;
}

void sub_1C3181280(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3181278);
}

void InferenceEngine::Mil2BnnsMilInferenceModel::~Mil2BnnsMilInferenceModel(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  *this = &unk_1F42CDC78;
  InferenceEngine::Mil2BnnsMilInferenceModel::destroy_context(this);
  v2 = *(this + 359);
  if (v2 < 0)
  {
    v2 = *(this + 43);
  }

  v3 = *(this + 30);
  if (v2)
  {
    munmap(v3, *(this + 31));
  }

  else
  {
    free(v3);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = (this + 288);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  InferenceEngine::MilInferenceModel::~MilInferenceModel(this);
}

void InferenceEngine::Mil2BnnsMilInferenceModel::destroy_context(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  BNNSGraphContextDestroy_v2();
  v2 = *(this + 33);
  if (v2)
  {

    free(v2);
  }
}

void *InferenceEngine::Mil2BnnsMilInferenceModel::build_context(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  (*(*this + 72))(this);
  v2 = BNNSGraphContextMakeWithLogging();
  *(this + 28) = v2;
  *(this + 29) = v3;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v6 = this;
    v7 = exception;
    if (*(v6 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(v6 + 8), *(v6 + 9));
    }

    else
    {
      v9 = *(v6 + 64);
    }

    v8 = &v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v9.__r_.__value_.__r.__words[0];
    }

    InferenceEngine::StringFormatter::StringFormatter(&v10, "failed to create context: '%s'", v8);
    MEMORY[0x1C692A510](v7, &v10);
    __cxa_throw(v7, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (*(this + 136) == 1)
  {
    result = BNNSGraphContextSetArgumentType();
    *(this + 32) = 0;
    *(this + 33) = 0;
  }

  else
  {
    result = BNNSGraphContextGetWorkspaceSize_v2();
    *(this + 32) = result;
    if (result)
    {
      result = malloc_type_valloc(result, 0x3BFD069BuLL);
    }

    *(this + 33) = result;
  }

  return result;
}

void std::__shared_ptr_emplace<BNNSNDArrayDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CDD58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

void std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CDDA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_shape_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void InferenceEngine::bnns_log_fn(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = a1;
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_1C2F95000, log, OS_LOG_TYPE_ERROR, "BNNS failure: %s, with op_info: %s", &v3, 0x16u);
}

void InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer()
{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 147, "dtype_ == int32");
}

{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 145, "dtype_ == fp16");
}

{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 143, "dtype_ == fp32");
}

void InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_1C2F95000, a2, OS_LOG_TYPE_ERROR, "Unable to create mil2bnns model directory: %s", &v3, 0xCu);
}

void InferenceEngine::BaseInferenceController::~BaseInferenceController(InferenceEngine::BaseInferenceController *this)
{
  *this = &unk_1F42CDDF8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(this + 24);

  InferenceEngine::MLInferenceModel::~MLInferenceModel(this);
}

void InferenceEngine::BaseInferenceController::set_io_processor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t InferenceEngine::S1NARDecoderIOProcessor::S1NARDecoderIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v9, a2);
  InferenceEngine::BaseIOProcessor::BaseIOProcessor(a1, v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v10, v9[0]);
  *a1 = &unk_1F42CDE68;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v7, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
  v4 = *(a1 + 24);
  *(a1 + 24) = v7[0];
  v7[0] = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = v8;
  v8 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v8, v7[0]);
  return a1;
}

void sub_1C3181B20(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v2);
  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(v1);
  _Unwind_Resume(a1);
}

void InferenceEngine::S1NARDecoderIOProcessor::~S1NARDecoderIOProcessor(InferenceEngine::S1NARDecoderIOProcessor *this)
{
  *this = &unk_1F42CDE68;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 24);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 4, *(this + 24));

  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(this);
}

uint64_t InferenceEngine::S1NARDecoderIOProcessor::process_inputs(uint64_t a1, uint64_t *a2, int a3)
{
  v55[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v46, "enc_output");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v46);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, &v46);
  v29 = v7;
  v9 = *v46.__r_.__value_.__l.__data_;
  v46.__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
  operator delete(v46.__r_.__value_.__l.__data_);
  InferenceEngine::DataTensor::get_shape(v8, 0, &v46);
  v10 = *(v46.__r_.__value_.__r.__words[0] + 8);
  v46.__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
  operator delete(v46.__r_.__value_.__l.__data_);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "S1NARDecoderIOProcessor.cpp", 31, "B == 1");
  }

  if (!a3)
  {
    v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "vq_mask_id");
    LODWORD(v39) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v17, &v39);
    *&v36 = v39;
    std::vector<float>::vector[abi:ne200100](&v42, v10, &v36);
    std::vector<std::vector<float>>::vector[abi:ne200100](&v46, 1uLL, &v42);
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    std::string::basic_string[abi:ne200100]<0>(&v42, "semantic");
    InferenceEngine::DataTensor::build_from_2d_array<float>(&v42, &v46);
  }

  std::string::basic_string[abi:ne200100]<0>(&v46, "semantic");
  v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v46);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v11[5];
  v12 = v11[6];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v46, "semantic_inf_mask");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v46);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = v14[5];
  v15 = v14[6];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "loop");
  LODWORD(v46.__r_.__value_.__l.__data_) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v18, &v46);
  v19 = (a3 + 1.0) / SLODWORD(v46.__r_.__value_.__l.__data_);
  v20 = cos(v19 * 3.14159265 * 0.5);
  InferenceEngine::DataTensor::unsqueeze(v13, 2);
  InferenceEngine::DataTensor::get_3d_array<float>(v13, &v46);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v42, *v46.__r_.__value_.__l.__data_, *(v46.__r_.__value_.__r.__words[0] + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v46.__r_.__value_.__r.__words[0] + 8) - *v46.__r_.__value_.__l.__data_) >> 3));
  v39 = &v46;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v39);
  InferenceEngine::DataTensor::squeeze(v13, 2);
  InferenceEngine::DataTensor::unsqueeze(v16, 2);
  InferenceEngine::DataTensor::get_3d_array<float>(v16, &v46);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v39, *v46.__r_.__value_.__l.__data_, *(v46.__r_.__value_.__r.__words[0] + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v46.__r_.__value_.__r.__words[0] + 8) - *v46.__r_.__value_.__l.__data_) >> 3));
  v36 = &v46;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v36);
  InferenceEngine::DataTensor::squeeze(v16, 2);
  InferenceEngine::DataTensor::get_3d_array<float>(v8, &v46);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v36, *v46.__r_.__value_.__l.__data_, *(v46.__r_.__value_.__r.__words[0] + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v46.__r_.__value_.__r.__words[0] + 8) - *v46.__r_.__value_.__l.__data_) >> 3));
  buf.__r_.__value_.__r.__words[0] = &v46;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&buf);
  InferenceEngine::DataTensor::accumulate_sum(v16);
  v21 = v20;
  if (v10 - v22 - (v10 * v21) > 0)
  {
    memset(v32, 0, sizeof(v32));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v32, v42, v43, 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3));
    memset(v31, 0, sizeof(v31));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v31, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
    InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v32, v31, 1, v33);
    memset(v30, 0, sizeof(v30));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v30, v36, v37, 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3));
    InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v33, v30, 1, &v46);
    buf.__r_.__value_.__r.__words[0] = v30;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf.__r_.__value_.__r.__words[0] = v33;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf.__r_.__value_.__r.__words[0] = v31;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf.__r_.__value_.__r.__words[0] = v32;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
    std::string::basic_string[abi:ne200100]<0>(&buf, "input_data");
    InferenceEngine::DataTensor::build_from_2d_array<float>(&buf, &v46);
  }

  kaldi::quasar::Vocab::OOvWord(v13, &buf);
  *&v46.__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
  v23 = buf.__r_.__value_.__r.__words[2];
  memset(&buf, 0, sizeof(buf));
  v46.__r_.__value_.__r.__words[2] = v23;
  v47 = v13;
  v48 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::Vocab::OOvWord(v16, &v35);
  v49 = v35;
  memset(&v35, 0, sizeof(v35));
  v50 = v16;
  v51 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::Vocab::OOvWord(v8, &v34);
  v52 = v34;
  memset(&v34, 0, sizeof(v34));
  v53 = v8;
  v54 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__assign_unique<std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const*>(a2, &v46, v55);
  for (i = 0; i != -15; i -= 5)
  {
    v25 = (&v46.__r_.__value_.__l.__data_ + i * 8);
    v26 = v55[i - 1];
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (*(v25 + 103) < 0)
    {
      operator delete(v25[10]);
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v26);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    LODWORD(v46.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v46.__r_.__value_.__r.__words[0]) = a3;
    _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Skip loop %d", &v46, 8u);
  }

  v46.__r_.__value_.__r.__words[0] = &v36;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v46);
  v46.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v46);
  v46.__r_.__value_.__r.__words[0] = &v42;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return 1;
}

void sub_1C318269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v40 + 152) = &a34;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 240));
  *(v40 + 152) = &a37;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 240));
  *(v40 + 152) = &a40;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 240));
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::S1NARDecoderIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&buf, "semantic");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
  if (v4)
  {
    v6 = v4[5];
    v5 = v4[6];
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "semantic_inf_mask");
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
    if (v7)
    {
      v8 = v7[6];
      v30 = v7[5];
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, "enc_output");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
      if (v9)
      {
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "pred_code");
        v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
        if (v11)
        {
          v13 = v11[5];
          v12 = v11[6];
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, "index_b");
          v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
          if (v14)
          {
            v15 = v14[5];
            v16 = v14[6];
            if (v16)
            {
              atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&buf, "index_t");
            v17 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &buf);
            if (v17)
            {
              v19 = v17[5];
              v18 = v17[6];
              if (v18)
              {
                atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              InferenceEngine::DataTensor::get_1d_array<int>(v13, &v36);
              InferenceEngine::DataTensor::get_1d_array<int>(v15, &v34);
              InferenceEngine::DataTensor::get_1d_array<int>(v19, v33);
              InferenceEngine::DataTensor::get_2d_array<float>(v30, v32);
              InferenceEngine::DataTensor::get_2d_array<float>(v6, v31);
              if (v35 - v34 == v33[1] - v33[0])
              {
                v21 = v37 - v36;
                if (v35 - v34 == v37 - v36)
                {
                  if (v37 != v36)
                  {
                    v22 = 0;
                    if ((v21 >> 2) <= 1)
                    {
                      v23 = 1;
                    }

                    else
                    {
                      v23 = v21 >> 2;
                    }

                    v24 = v32[0];
                    do
                    {
                      v25 = *(v34 + v22);
                      v26 = *(v33[0] + v22);
                      if (*(*(v24 + 24 * v25) + 4 * v26) != 0.0)
                      {
                        LogObject = InferenceEngine::Diagnostics_GetLogObject(v20);
                        v20 = os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR);
                        if (v20)
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v25;
                          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
                          *(&buf.__r_.__value_.__r.__words[1] + 2) = v26;
                          _os_log_error_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_ERROR, "Duplicate value in index_t found in the outputs! inf_mask_vector[%d][%d] is already predicted!", &buf, 0xEu);
                        }
                      }

                      v24 = v32[0];
                      *(*(v32[0] + 24 * v25) + 4 * v26) = 1065353216;
                      *(*(v31[0] + 24 * v25) + 4 * v26) = *(v36 + v22++);
                    }

                    while (v23 != v22);
                  }

                  kaldi::quasar::Vocab::OOvWord(v6, &buf);
                  InferenceEngine::DataTensor::build_from_2d_array<float>(&buf, v31);
                }

                v28 = "top_k_b_index_vector.size() == top_k_pred_code_vector.size()";
                v29 = 104;
              }

              else
              {
                v28 = "top_k_b_index_vector.size() == top_k_t_index_vector.size()";
                v29 = 103;
              }

              __assert_rtn("process_outputs", "S1NARDecoderIOProcessor.cpp", v29, v28);
            }

            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3183140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  *(v55 - 224) = &a37;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  *(v55 - 224) = &a40;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v55 - 224));
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__assign_unique<std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const*>(uint64_t *a1, std::string *a2, std::string *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>::operator=[abi:ne200100]<std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const&,0>((v8 + 16), v4);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique(a1, v8);
        v4 = (v4 + 40);
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const&>(a1, v4, v4);
    v4 = (v4 + 40);
  }
}

void sub_1C3183478(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

std::string *std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>::operator=[abi:ne200100]<std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const&,0>(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = data;
  a1[1].__r_.__value_.__l.__size_ = size;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, (a2 + 16));
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<InferenceEngine::DataTensor>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1C31839A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<PersistentModule>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::GreedyDecoderIOProcessor::GreedyDecoderIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v9, a2);
  InferenceEngine::BaseIOProcessor::BaseIOProcessor(a1, v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v10, v9[0]);
  *a1 = &unk_1F42CDEA0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v7, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
  v4 = *(a1 + 24);
  *(a1 + 24) = v7[0];
  v7[0] = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = v8;
  v8 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v8, v7[0]);
  return a1;
}

void sub_1C3183B24(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v2);
  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(v1);
  _Unwind_Resume(a1);
}

void InferenceEngine::GreedyDecoderIOProcessor::~GreedyDecoderIOProcessor(InferenceEngine::GreedyDecoderIOProcessor *this)
{
  *this = &unk_1F42CDEA0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 24);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 4, *(this + 24));

  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(this);
}

uint64_t InferenceEngine::GreedyDecoderIOProcessor::process_inputs(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "input_ids");
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "bos_token_id");
    LODWORD(v9) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v4, &v9);
    v6 = v9;
    memset(v10, 0, sizeof(v10));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v10, &v6, v7, 1uLL);
    memset(v7, 0, sizeof(v7));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>(v7, v10, &v11, 1uLL);
    InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v7);
  }

  return 0;
}

void sub_1C3183D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::GreedyDecoderIOProcessor::process_outputs(uint64_t a1, void *a2)
{
  v21[8] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "input_ids");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "encoder_hidden_states");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
    if (v6)
    {
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "output_id");
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
      if (v8)
      {
        v10 = v8[5];
        v9 = v8[6];
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        InferenceEngine::DataTensor::get_2d_array<int>(&v15, v10);
        *v11 = **v15;
        memset(&__p, 0, sizeof(__p));
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, v11, v11 + 1, 1uLL);
        v17 = 0;
        v18 = 0;
        v19 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>(&v17, &__p, v21, 1uLL);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v14[0] = &v15;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v14);
        InferenceEngine::DataTensor::get_2d_array<float>(v5, &v15);
        kaldi::quasar::Vocab::OOvWord(v5, &__p);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
        memset(v12, 0, sizeof(v12));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v12, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v13, v12, 1, v14);
        InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v14);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3184204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v45 = v42 + 40;
  v46 = -80;
  do
  {
    v45 = std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::~pair(v45) - 40;
    v46 += 40;
  }

  while (v46);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a35 = &a28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a35);
  a35 = &a31;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a35);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(a1);
}

void sub_1C3184374(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C3184354);
}

void sub_1C318438C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C3184360);
}

void sub_1C31843A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C318436CLL);
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3184424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float> const*,std::vector<float> const*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
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

uint64_t InferenceEngine::DataTensor::DataTensor(uint64_t a1, __int128 *a2, __int128 *a3, char **a4, uint64_t a5)
{
  *a1 = &unk_1F42CDED8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  if ((a1 + 56) == a4)
  {
    goto LABEL_17;
  }

  std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 56), *a4, a4[1], (a4[1] - *a4) >> 3);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64) - v11;
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12 >> 3;
  v14 = v13 <= 1 ? 1 : v13;
  if (*v11 != -1)
  {
    v15 = 1;
    do
    {
      v16 = v15;
      if (v14 == v15)
      {
        break;
      }

      v17 = v11[v15++];
    }

    while (v17 != -1);
    if (v16 >= v13)
    {
LABEL_17:
      InferenceEngine::DataTensor::allocate_memory(a1, a5);
    }
  }

  return a1;
}

void sub_1C3184638(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::reshape(InferenceEngine::DataTensor *a1, uint64_t a2)
{
  v3 = *(a1 + 7);
  v4 = *(a1 + 8) - v3;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 1;
    do
    {
      v8 = *v3++;
      v7 *= v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 1;
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  v12 = v10 - v9;
  if (v10 == v9)
  {
    v14 = 1;
  }

  else
  {
    if ((v12 >> 3) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 >> 3;
    }

    v14 = 1;
    v15 = v9;
    do
    {
      v16 = *v15++;
      v14 *= v16;
      --v13;
    }

    while (v13);
  }

  if (v7 != v14)
  {
    InferenceEngine::DataTensor::reshape();
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v9, v10, v12 >> 3);
  InferenceEngine::DataTensor::set_shape(a1, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1C3184788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataUtils::write_binary_data_to_file(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v4, a1, 20);
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v5[*(v4 - 24) - 8], *&v5[*(v4 - 24) + 24] | 4);
  }

  v4 = *MEMORY[0x1E69E54D0];
  *&v5[*(v4 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1C692A7B0](v5);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](v6);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v5 = *(MEMORY[0x1E69E54D0] + 16);
  v6 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x1E69E5530] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x1C692A7A0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C3184AD4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C692A7B0](a1 + 1);

  return std::ostream::~ostream();
}

void InferenceEngine::DataUtils::compare_shape()
{
  __assert_rtn("compare_shape", "DataTensor.cpp", 305, "dst_dim >= 0");
}

{
  __assert_rtn("compare_shape", "DataTensor.cpp", 304, "src_dim >= 0");
}

void sub_1C3184EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  InferenceEngine::SoundStormIOProcessor::~SoundStormIOProcessor(v18);
  _Unwind_Resume(a1);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_prompt_data(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v16, "prompt_enc_output");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v16);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "prompt_target");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v16);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }

      InferenceEngine::DataTensor::get_shape(v5, 0, &v16);
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v5, &v13);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v16, *v13, v13[1], 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3));
      v12[0] = &v13;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v12);
      InferenceEngine::DataTensor::get_3d_array<float>(v8, v12);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v13, *v12[0], v12[0][1], 0xAAAAAAAAAAAAAAABLL * ((v12[0][1] - *v12[0]) >> 3));
      __p[0] = v12;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
      memset(v11, 0, sizeof(v11));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v11, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
      memset(v10, 0, sizeof(v10));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v11, v10, 1, v12);
      __p[0] = v10;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v11;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      std::string::basic_string[abi:ne200100]<0>(__p, "prompt_data");
      InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v12);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3185248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  __p = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &a24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = v27 - 88;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1C318530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a9 = &a18;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  JUMPOUT(0x1C31852D4);
}

void sub_1C318532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  a18 = &a21;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  JUMPOUT(0x1C31852E4);
}

void sub_1C3185358()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1C31852F0);
}

void sub_1C3185370()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1C31852FCLL);
}

uint64_t InferenceEngine::BaseIOProcessor::BaseIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  *a1 = &unk_1F42CDF90;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 8));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v8, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v8[0];
  v8[0] = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = v9;
  v9 = v6;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v9, v8[0]);
  return a1;
}

void InferenceEngine::BaseIOProcessor::~BaseIOProcessor(InferenceEngine::BaseIOProcessor *this)
{
  *this = &unk_1F42CDF90;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 2, *(this + 8));
}

uint64_t InferenceEngine::EspressoMilIO::EspressoMilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  v6 = InferenceEngine::MilIO::MilIO(a1, a2, a3, a4, a5);
  *v6 = &unk_1F42CDFB0;
  InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>((v6 + 16), v6[11], (a1 + 56), 65568);
  return a1;
}

uint64_t InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*a3 == a3[1])
  {
    result = espresso_buffer_set_rank();
  }

  else
  {
    result = espresso_buffer_pack_tensor_shape();
  }

  *a1 = a2;
  *(a1 + 160) = a4;
  return result;
}

void InferenceEngine::EspressoMilIO::~EspressoMilIO(void **this)
{
  InferenceEngine::MilIO::~MilIO(this);

  JUMPOUT(0x1C692AE10);
}

uint64_t InferenceEngine::EspressoMilInferenceModel::EspressoMilInferenceModel(uint64_t a1, std::string *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *InferenceEngine::MilInferenceModel::MilInferenceModel(a1, a2) = &unk_1F42CDFE0;
  *(a1 + 248) = espresso_create_context();
  *(a1 + 240) = espresso_create_plan();
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v17 = *(a1 + 64);
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 120))
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 135))
  {
    goto LABEL_16;
  }

  std::operator+<char>();
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

  std::string::append(&v17, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_16:
  v5 = espresso_plan_add_network();
  v6 = std::string::basic_string[abi:ne200100]<0>(v15, "Unable to load network.");
  if (v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v11 = v16;
    v12 = v15[0];
    status_string = espresso_get_status_string();
    v14 = v15;
    if (v11 < 0)
    {
      v14 = v12;
    }

    InferenceEngine::StringFormatter::StringFormatter(&__p, "%s Error: %d, %s", v14, v5, status_string);
    MEMORY[0x1C692A510](exception, &__p);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v6);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v8 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v17.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Load model from %s", &__p, 0xCu);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C3185844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a17 < 0)
      {
        operator delete(a12);
      }

      if (a23 < 0)
      {
        operator delete(a18);
      }

      InferenceEngine::MilInferenceModel::~MilInferenceModel(v30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::~EspressoMilInferenceModel(InferenceEngine::EspressoMilInferenceModel *this)
{
  *this = &unk_1F42CDFE0;
  v2 = espresso_plan_destroy();
  std::string::basic_string[abi:ne200100]<0>(__p, "Unable to destroy linear plan");
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v5 = v17;
    v6 = __p[0];
    status_string = espresso_get_status_string();
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v18, "%s Error: %d, %s", v8, v2, status_string);
    MEMORY[0x1C692A510](exception, &v18);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = espresso_context_destroy();
  std::string::basic_string[abi:ne200100]<0>(v14, "Unable to destroy context");
  if (v3)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    v10 = v15;
    v11 = v14[0];
    v12 = espresso_get_status_string();
    v13 = v14;
    if (v10 < 0)
    {
      v13 = v11;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v18, "%s Error: %d, %s", v13, v3, v12);
    MEMORY[0x1C692A510](v9, &v18);
    __cxa_throw(v9, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  InferenceEngine::MilInferenceModel::~MilInferenceModel(this);
}

void sub_1C3185A7C(void *a1)
{
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
    if ((v2 & 1) == 0)
    {
LABEL_6:
      __clang_call_terminate(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v1);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::prepare(InferenceEngine::EspressoMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::prepare(this);
  v2 = espresso_plan_build();
  std::string::basic_string[abi:ne200100]<0>(__p, "Unable to build plan.");
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = v34;
    v25 = __p[0];
    status_string = espresso_get_status_string();
    v27 = __p;
    if (v24 < 0)
    {
      v27 = v25;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v35, "%s Error: %d, %s", v27, v2, status_string);
    MEMORY[0x1C692A510](exception, &v35);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(this + 20);
  if (v3)
  {
    while (1)
    {
      v4 = v3[5];
      if (!v4)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = v3[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_11:
      InferenceEngine::MilIO::get_io_name(v5, &v32);
      v7 = espresso_network_bind_buffer();
      std::string::basic_string[abi:ne200100]<0>(v30, "Unable to bind input buffer");
      if (v7)
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        v14 = v31;
        v15 = v30[0];
        v16 = espresso_get_status_string();
        v17 = v30;
        if (v14 < 0)
        {
          v17 = v15;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v35, "%s Error: %d, %s", v17, v7, v16);
        MEMORY[0x1C692A510](v13, &v35);
        __cxa_throw(v13, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
        if (!v6)
        {
          goto LABEL_17;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_17;
      }

      if (v6)
      {
        goto LABEL_16;
      }

LABEL_17:
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    v5 = 0;
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

LABEL_21:
  v8 = *(this + 25);
  if (v8)
  {
    while (1)
    {
      v9 = v8[5];
      if (!v9)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_27;
      }

      v11 = v8[6];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_28:
      InferenceEngine::MilIO::get_io_name(v10, &v32);
      v12 = espresso_network_bind_buffer();
      std::string::basic_string[abi:ne200100]<0>(v28, "Unable to bind output buffer");
      if (v12)
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        v19 = v29;
        v20 = v28[0];
        v21 = espresso_get_status_string();
        v22 = v28;
        if (v19 < 0)
        {
          v22 = v20;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v35, "%s Error: %d, %s", v22, v12, v21);
        MEMORY[0x1C692A510](v18, &v35);
        __cxa_throw(v18, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
        if (!v11)
        {
          goto LABEL_34;
        }

LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_34;
      }

      if (v11)
      {
        goto LABEL_33;
      }

LABEL_34:
      v8 = *v8;
      if (!v8)
      {
        return;
      }
    }

    v10 = 0;
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }
}

void sub_1C3185F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (a35 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::clean(InferenceEngine::EspressoMilInferenceModel *this)
{
  v2 = espresso_plan_build_clean();
  std::string::basic_string[abi:ne200100]<0>(__p, "unable to clean the plan");
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = v9;
    v5 = __p[0];
    status_string = espresso_get_status_string();
    v7 = __p;
    if (v4 < 0)
    {
      v7 = v5;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v10, "%s Error: %d, %s", v7, v2, status_string);
    MEMORY[0x1C692A510](exception, &v10);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::MilInferenceModel::clean(this);
}

void sub_1C3186100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::execute(InferenceEngine::EspressoMilInferenceModel *this)
{
  v1 = espresso_plan_execute_sync();
  std::string::basic_string[abi:ne200100]<0>(__p, "Unable to execute model.");
  if (v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = v8;
    v4 = __p[0];
    status_string = espresso_get_status_string();
    v6 = __p;
    if (v3 < 0)
    {
      v6 = v4;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v9, "%s Error: %d, %s", v6, v1, status_string);
    MEMORY[0x1C692A510](exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C318621C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void *std::__shared_ptr_emplace<InferenceEngine::EspressoMilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,std::allocator<InferenceEngine::EspressoMilIO>,0>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CE078;
  InferenceEngine::EspressoMilIO::EspressoMilIO((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::EspressoMilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CE078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

char *InferenceEngine::SoundStormUtils::build_layer_group_mask@<X0>(char *result@<X0>, void *a2@<X8>, unsigned int a3@<W1>, int16x4_t a4@<D0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *result;
  if (*(result + 1) != *result)
  {
    v6 = result;
    v7 = 0;
    v8 = a3;
    v9 = a3;
    do
    {
      v10 = *(v5 + 4 * v7);
      if (v7 >= v8)
      {
        v12 = a2[1];
        if (v9 == v7)
        {
          v14 = 0x40000000;
          result = std::vector<float>::insert(a2, v12, v10, &v14, a4);
        }

        else
        {
          v13 = 1077936128;
          result = std::vector<float>::insert(a2, v12, v10, &v13, a4);
        }
      }

      else
      {
        v11 = a2[1];
        v15 = 1065353216;
        result = std::vector<float>::insert(a2, v11, v10, &v15, a4);
      }

      ++v7;
      v5 = *v6;
    }

    while (v7 < (*(v6 + 1) - *v6) >> 2);
  }

  return result;
}

void sub_1C31864C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::insert(void *a1, char *__src, unint64_t a3, char *a4, int16x4_t a5)
{
  if (!a3)
  {
    return __src;
  }

  v6 = a4;
  v9 = a1[1];
  v10 = a1[2];
  if (a3 <= (v10 - v9) >> 2)
  {
    v16 = v9 - __src;
    v17 = a1[1];
    v18 = a3;
    if (a3 <= (v9 - __src) >> 2)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v18 = v16 >> 2;
    v17 = &v9[4 * (a3 - (v16 >> 2))];
    a5.i32[0] = *a4;
    v20 = (4 * a3 - v16 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = v9 + 8;
    do
    {
      v24 = vdupq_n_s64(v19);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1C378AF00)));
      if (vuzp1_s16(v25, a5).u8[0])
      {
        *(v23 - 2) = a5.i32[0];
      }

      if (vuzp1_s16(v25, a5).i8[2])
      {
        *(v23 - 1) = a5.i32[0];
      }

      if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1C378AEF0)))).i32[1])
      {
        *v23 = a5.i32[0];
        v23[1] = a5.i32[0];
      }

      v19 += 4;
      v23 += 4;
    }

    while (v21 != v19);
    a1[1] = v17;
    if (v9 != __src)
    {
LABEL_21:
      v26 = &__src[4 * a3];
      v27 = &v17[-4 * a3];
      v28 = v17;
      if (v27 < v9)
      {
        v28 = v17;
        do
        {
          v29 = *v27;
          v27 += 4;
          *v28 = v29;
          v28 += 4;
        }

        while (v27 < v9);
      }

      a1[1] = v28;
      if (v17 != v26)
      {
        memmove(&__src[4 * a3], __src, v17 - v26);
      }

      if (__src <= v6)
      {
        if (a1[1] <= v6)
        {
          v30 = 0;
        }

        else
        {
          v30 = a3;
        }

        v6 += v30;
      }

      v31 = 0;
      a5.i32[0] = *v6;
      v32 = vdupq_n_s64(v18 - 1);
      v33 = __src + 8;
      do
      {
        v34 = vdupq_n_s64(v31);
        v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_1C378AF00)));
        if (vuzp1_s16(v35, a5).u8[0])
        {
          *(v33 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v35, a5).i8[2])
        {
          *(v33 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_1C378AEF0)))).i32[1])
        {
          *v33 = a5.i32[0];
          *(v33 + 1) = a5.i32[0];
        }

        v31 += 4;
        v33 += 16;
      }

      while (((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __src;
  }

  v11 = *a1;
  v12 = a3 + (&v9[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
  }

  v37 = 0;
  v36 = 4 * (v13 >> 2);
  a5.i32[0] = *a4;
  v38 = (v36 + 4 * a3);
  v39 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v40 = vdupq_n_s64(v39);
  v41 = v39 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v42 = (v36 + 8);
  do
  {
    v43 = vdupq_n_s64(v37);
    v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1C378AF00)));
    if (vuzp1_s16(v44, a5).u8[0])
    {
      *(v42 - 2) = a5.i32[0];
    }

    if (vuzp1_s16(v44, a5).i8[2])
    {
      *(v42 - 1) = a5.i32[0];
    }

    if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1C378AEF0)))).i32[1])
    {
      *v42 = a5.i32[0];
      v42[1] = a5.i32[0];
    }

    v37 += 4;
    v42 += 4;
  }

  while (v41 != v37);
  memcpy(v38, __src, a1[1] - __src);
  v45 = *a1;
  v46 = &v38[a1[1] - __src];
  a1[1] = __src;
  v47 = (__src - v45);
  v48 = (v36 - (__src - v45));
  memcpy(v48, v45, v47);
  v49 = *a1;
  *a1 = v48;
  a1[1] = v46;
  a1[2] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  return v36;
}

void sub_1C3186A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  InferenceEngine::SoundStormIOProcessor::~SoundStormIOProcessor(v22);
  _Unwind_Resume(a1);
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<int>,0>@<D0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v13, v10);
    v11 = std::string::insert(&v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v14, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v14);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v13, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v13);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v14, &v13))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  }

  else
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v14);
    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v8, a4);
  }

  return result;
}

void sub_1C3186BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::build_q_token_mask(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, kaldi::quasar::Vocab **a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v8, &v27);
  std::string::basic_string[abi:ne200100]<0>(v24, "pred_enc_output");
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v24);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v9[5], 0, &__p);
  v10 = *(__p.__r_.__value_.__r.__words[0] + 8);
  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v28 == v27)
  {
    *v7 = 0;
  }

  else
  {
    v21 = v7;
    v11 = 0;
    do
    {
      if (*(v27 + v11) == a3)
      {
        v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "layer_groups");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v12, v24);
        v13 = *(v24[0] + v11);
        v22 = 0;
        std::vector<float>::vector[abi:ne200100](v23, v10, &v22);
        std::vector<std::vector<float>>::vector[abi:ne200100](&__p, v13, v23);
        if (v23[0])
        {
          v23[1] = v23[0];
          operator delete(v23[0]);
        }

        if (v24[0])
        {
          v24[1] = v24[0];
          operator delete(v24[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v24, "q_token_mask");
        InferenceEngine::DataTensor::build_from_2d_array<float>(v24, &__p);
      }

      ++v11;
    }

    while (v11 < (v28 - v27) >> 2);
    v7 = v21;
    *v21 = 0;
    v21[1] = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "q_token_mask");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &__p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = v14[5];
  v15 = v14[6];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  *v7 = v16;
  v7[1] = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *v7;
  kaldi::quasar::Vocab::OOvWord(*v7, &__p);
  v24[0] = &__p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v24);
  v19 = v7[1];
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
  }

  v20 = v18[6];
  v18[5] = v17;
  v18[6] = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_1C3186F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29)
{
  v32 = v29;
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v32 + 8);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::build_l2_tensor(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "q_token_mask");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, __p);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "l2_tensor");
    InferenceEngine::DataTensor::get_shape(v5, 0, &v6);
    v7 = *v6;
    memset(v8, 0, sizeof(v8));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v8, &v7, v8, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v8);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3187198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::build_layer_mask(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v11, "layer_q");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v11);
  if (v5)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(&__p, v5[5]);
    v6 = *__p;
    v14 = __p;
    operator delete(__p);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "layer_groups");
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v7, v10);
    InferenceEngine::SoundStormUtils::build_layer_group_mask(v10, &__p, v6, *&v8);
    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "layer_mask");
    memset(v15, 0, sizeof(v15));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, __p, v14, (v14 - __p) >> 2);
    memset(v9, 0, sizeof(v9));
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>(v9, v15, &v16, 1uLL);
    InferenceEngine::DataTensor::build_from_2d_array<float>(v11, v9);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3187448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::build_pred_data(void x0_0, void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v18, "pred_enc_output");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v18);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, "target");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v18);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v18);
      }

      std::string::basic_string[abi:ne200100]<0>(&v18, "q_token_mask");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v18);
      if (v9)
      {
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v18);
        }

        InferenceEngine::DataTensor::get_shape(v5, 0, &v18);
        v19 = v18;
        operator delete(v18);
        InferenceEngine::DataTensor::get_3d_array<float>(v5, &v15);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v18, *v15, v15[1], 0xAAAAAAAAAAAAAAABLL * ((v15[1] - *v15) >> 3));
        v14[0] = &v15;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v14);
        InferenceEngine::DataTensor::get_3d_array<float>(v8, v14);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v15, *v14[0], v14[0][1], 0xAAAAAAAAAAAAAAABLL * ((v14[0][1] - *v14[0]) >> 3));
        __p[0] = v14;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](__p);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
        memset(v12, 0, sizeof(v12));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v12, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v13, v12, 1, v14);
        __p[0] = v12;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v13;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
        std::string::basic_string[abi:ne200100]<0>(__p, "pred_data");
        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v14);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C31878EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  v34 = *(v30 + 8);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  __p = &a27;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a27 = v32 - 128;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a27);
  *v31 = v32 - 104;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v32 - 128));
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void sub_1C3187A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a15 = &a24;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a15);
  JUMPOUT(0x1C31879BCLL);
}

void sub_1C3187A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = (v24 - 128);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  JUMPOUT(0x1C31879CCLL);
}

void sub_1C3187A54()
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x1C31879D8);
}

void sub_1C3187A6C()
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x1C31879E4);
}

void sub_1C3187A84()
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x1C31879F0);
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::update_vq_target(uint64_t a1, void *a2, void **a3)
{
  v55 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v52, "q_token_mask");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[6];
  v42 = v4[5];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "layer_q");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6[5];
  v8 = v6[6];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "layer_mask");
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = v9[5];
  v11 = v9[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "target");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "pred_code");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = v14[5];
  v15 = v14[6];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "index_b");
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = v17[5];
  v18 = v17[6];
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "index_t");
  v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v52);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = v20[5];
  v21 = v20[6];
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  InferenceEngine::DataTensor::get_2d_array<float>(v42, v52);
  InferenceEngine::DataTensor::get_2d_array<float>(v10, &__p);
  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v49, *__p, *(__p + 1), (*(__p + 1) - *__p) >> 2);
  p_p = &__p;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  InferenceEngine::DataTensor::get_1d_array<float>(&__p, v7);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v23 = v49;
  if (v49 == v50)
  {
    v24 = v49;
  }

  else
  {
    v24 = v49;
    do
    {
      if (*v24 == 2.0)
      {
        goto LABEL_44;
      }

      ++v24;
    }

    while (v24 != v50);
    v24 = v50;
  }

LABEL_44:
  InferenceEngine::DataTensor::get_1d_array<int>(v16, &__p);
  InferenceEngine::DataTensor::get_1d_array<int>(v19, &p_p);
  _1d = InferenceEngine::DataTensor::get_1d_array<int>(v22, v44);
  v26 = v24 - v23;
  v27 = p_p;
  v28 = v46;
  if (p_p != v46)
  {
    v29 = p_p;
    do
    {
      *v29 += v26 >> 2;
      v29 += 4;
    }

    while (v29 != v28);
  }

  v30 = v28 - v27;
  if (v30 == v44[1] - v44[0])
  {
    v31 = v48 - __p;
    if (v30 == v48 - __p)
    {
      if (v48 != __p)
      {
        v32 = 0;
        v33 = v26 >> 2;
        if ((v31 >> 2) <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v31 >> 2;
        }

        v35 = v52[0];
        do
        {
          v36 = *(p_p + v32);
          v37 = *(v44[0] + v32);
          v38 = v36 - v33;
          if (*(v35[3 * v38] + 4 * v37) != 0.0)
          {
            LogObject = InferenceEngine::Diagnostics_GetLogObject(_1d);
            _1d = os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR);
            if (_1d)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v36;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = v37;
              _os_log_error_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_ERROR, "Duplicate value in index_t found in the outputs! q_mask_vector[%d][%d] is already predicted!", &buf, 0xEu);
            }
          }

          v35 = v52[0];
          *(*(v52[0] + 3 * v38) + 4 * v37) = 1065353216;
          *(*(**a3 + 24 * v37) + 4 * v36) = *(__p + v32++);
        }

        while (v34 != v32);
      }

      kaldi::quasar::Vocab::OOvWord(v42, &buf);
      InferenceEngine::DataTensor::build_from_2d_array<float>(&buf, v52);
    }

    v40 = "top_k_b_index_vector.size() == top_k_pred_code_vector.size()";
    v41 = 132;
  }

  else
  {
    v40 = "top_k_b_index_vector.size() == top_k_t_index_vector.size()";
    v41 = 131;
  }

  __assert_rtn("update_vq_target", "P2ASoundStormLayerGroupIOProcessor.cpp", v41, v40);
}

void sub_1C318811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (*(v34 - 105) < 0)
  {
    operator delete(*(v34 - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  a32 = (v34 - 160);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::P2ASoundStormLayerGroupIOProcessor::process_inputs(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "pred_enc_output");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(*buf);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, buf);
  v9 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "P2ASoundStormLayerGroupIOProcessor.cpp", 156, "B == 1");
  }

  (*(*a1 + 16))(&v55, a1, a2, a3);
  (*(*a1 + 24))(&v53, a1, a2, a3);
  (*(*a1 + 96))(&v51, a1, a2, a3);
  (*(*a1 + 32))(&v49, a1, a2, a3);
  (*(*a1 + 48))(&v47, a1, a2, a3);
  (*(*a1 + 64))(&v45, a1, a2, a3);
  (*(*a1 + 40))(&v43, a1, a2, a3);
  (*(*a1 + 88))(&v41, a1, a2, a3);
  (*(*a1 + 104))(&v39, a1, a2, a3);
  InferenceEngine::DataTensor::get_1d_array<float>(buf, v43);
  v10 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v10 >= 1.0)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(buf, v49);
    v14 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "prompt_attention");
    buf[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v15, buf);
    if (buf[0] == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v38, "prompt_k_");
      std::to_string(&v37, v14);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v37;
      }

      else
      {
        v16 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v38, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v58 = v18->__r_.__value_.__r.__words[2];
      *buf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_v_");
      std::to_string(&__p, v14);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, p_p, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v24 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, buf);
      if (!v24)
      {
        goto LABEL_79;
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_k");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_, &std::piecewise_construct, &__p);
      v27 = v24[5];
      v26 = v24[6];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = v25[6];
      v25[5] = v27;
      v25[6] = v26;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v29 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v38);
      if (!v29)
      {
LABEL_79:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "prompt_v");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_, &std::piecewise_construct, &__p);
      v32 = v29[5];
      v31 = v29[6];
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }

      v33 = v30[6];
      v30[5] = v32;
      v30[6] = v31;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      (*(*a1 + 56))(buf, a1, a2, a3);
      (*(*a1 + 72))(&v38, a1, a2, a3);
      if (v38.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38.__r_.__value_.__l.__size_);
      }

      v30 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    LogObject = InferenceEngine::Diagnostics_GetLogObject(v30);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Prepare P2ASoundStormLayerGroup inputs finished for loop %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    v13 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_INFO, "Skip loop %d", buf, 8u);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v13;
}

void sub_1C3188A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  v41 = *(v39 - 144);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(v39 - 128);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(v39 - 112);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormLayerGroupIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "target");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
    if (v9)
    {
      v10 = v9[6];
      v11 = v9[5];
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v11, a3);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v8, __p);
      (*(*a1 + 80))(a1, a2, __p);
      std::string::basic_string[abi:ne200100]<0>(buf, "target");
      InferenceEngine::DataTensor::build_from_3d_array<float>(buf, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C3188EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a13;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1C3188F60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C3188F58);
}

uint64_t InferenceEngine::MilInferenceModel::MilInferenceModel(uint64_t a1, std::string *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F42CE160;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 32));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  *(a1 + 144) = 0u;
  *(a1 + 64) = 0u;
  v5 = (a1 + 64);
  *(a1 + 112) = 0u;
  v6 = (a1 + 112);
  v7 = (a1 + 88);
  *(a1 + 160) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v23, a2);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&v23, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v23;
  }

  InferenceEngine::Utils::read_json_from_file(&v18, &v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v19);
  v8 = *(a1 + 32);
  *(a1 + 32) = v19;
  LOBYTE(v19) = v8;
  v9 = *(a1 + 40);
  *(a1 + 40) = v20;
  v20 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "model_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(v4, &buf.__r_.__value_.__l.__data_, "", &v18);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v18);
  std::__fs::filesystem::operator/[abi:ne200100](&buf, &__p, v21);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "model_parameters");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,0>(v4, &buf.__r_.__value_.__l.__data_, &__p, v15);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  v10 = *(a1 + 48);
  *(a1 + 48) = v15[0];
  v15[0] = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = v16;
  v16 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "model_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(v4, &__p.__r_.__value_.__l.__data_, "", &buf);
  if (*(a1 + 111) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 104) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "model_function");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value(v4, &__p.__r_.__value_.__l.__data_, "main", &buf);
  if (*(a1 + 135) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 128) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "model_dynamic_shape");
  __p.__r_.__value_.__s.__data_[0] = 0;
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v4, &buf.__r_.__value_.__l.__data_, &__p);
  *(a1 + 136) = v12;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v12);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 135) < 0)
    {
      v6 = *v6;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Load model with %s function", &buf, 0xCu);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C3189400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(v43);
  if (v40[135] < 0)
  {
    operator delete(*v44);
  }

  if (v40[111] < 0)
  {
    operator delete(*v46);
  }

  if (v40[87] < 0)
  {
    operator delete(*v45);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v42);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v41);
  if (v40[31] < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::MilInferenceModel::~MilInferenceModel(InferenceEngine::MilInferenceModel *this)
{
  *this = &unk_1F42CE160;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(this + 184);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::~__hash_table(this + 144);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 48);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 7, *(this + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 32);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 5, *(this + 32));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void InferenceEngine::MilInferenceModel::get_output_io(uint64_t a1, uint64_t *a2)
{
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 184), a2) != 0;
  std::operator+<char>();
  InferenceEngine::Utils::assert_with_log(v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 184), a2, &std::piecewise_construct, &__p, &v9);
  v7 = v6;
  if (*(a1 + 136) == 1)
  {
    (*(*v6[5] + 24))(v6[5]);
  }

  InferenceEngine::MilIO::get_io_name(v7[5], &__p);
  kaldi::quasar::Vocab::BosWord(v7[5], &v9);
  InferenceEngine::DataTensor::get_shape(v7[5], 0, &v8);
  std::allocate_shared[abi:ne200100]<InferenceEngine::MilIO,std::allocator<InferenceEngine::MilIO>,std::string const&,std::string,std::string,std::vector<unsigned long>,0>();
}

void sub_1C3189778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<InferenceEngine::MilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,std::allocator<InferenceEngine::MilIO>,0>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CE1D8;
  InferenceEngine::MilIO::MilIO((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::MilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CE1D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

unsigned __int8 *std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v10, v5);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v11;
      v11 = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v11, v10[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void InferenceEngine::MilInferenceModel::set_input(kaldi::quasar::Vocab **a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  kaldi::quasar::Vocab::OOvWord(*a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *buf = 136315138;
  v6 = p_p;
  _os_log_debug_impl(&dword_1C2F95000, a2, OS_LOG_TYPE_DEBUG, "Set input: %s", buf, 0xCu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void InferenceEngine::MLInferenceModel::MLInferenceModel(void *a1, std::string::size_type a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F42CE228;
  a1[1] = 0;
  a1[2] = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12.__pn_, a2);
  std::__fs::filesystem::__status(&v12, 0);
  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (!v11 || v11 == 255)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v12.__pn_, "Model config %s doesn't exist!", v8);
    MEMORY[0x1C692A510](exception, &v12);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    if (*(a3 + 8) == 8 && **a3 == 0x6F73736572707365)
    {
LABEL_8:
      std::allocate_shared[abi:ne200100]<InferenceEngine::EspressoMilInferenceModel,std::allocator<InferenceEngine::EspressoMilInferenceModel>,std::string const&,0>();
    }

    if (*(a3 + 8) != 8)
    {
LABEL_19:
      v9 = __cxa_allocate_exception(0x10uLL);
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v12.__pn_, "Unsupported inference type %s! Inference type can be either %s or %s.", v10, "espresso", "mil2bnns");
      MEMORY[0x1C692A510](v9, &v12);
      __cxa_throw(v9, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v6 = *a3;
  }

  else
  {
    if (v5 != 8)
    {
      goto LABEL_19;
    }

    v6 = a3;
    if (*a3 == 0x6F73736572707365)
    {
      goto LABEL_8;
    }
  }

  if (*v6 == 0x736E6E62326C696DLL)
  {
    std::allocate_shared[abi:ne200100]<InferenceEngine::Mil2BnnsMilInferenceModel,std::allocator<InferenceEngine::Mil2BnnsMilInferenceModel>,std::string const&,0>();
  }

  goto LABEL_19;
}

void sub_1C3189E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MLInferenceModel::~MLInferenceModel(InferenceEngine::MLInferenceModel *this)
{
  *this = &unk_1F42CE228;
  (*(**(this + 1) + 8))(*(this + 1));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void InferenceEngine::MLInferenceModel::set_input(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 16))(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1C318A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, const std::string::value_type *a2)
{
  v13 = a2;
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v11, exception);
  }

  v3 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(*(a1 + 8), &v13);
  v4 = *(a1 + 8);
  if (v4 + 8 == v3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>();
  }

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(v4, &v13) + 56;
}

void sub_1C318A168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t InferenceEngine::DataUtils::read_vector_from_file<float>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v5, a1, 6);
  std::istream::tellg();
  if ((v4 & 3) != 0)
  {
    __assert_rtn("read_vector_from_file", "DataTensor.hpp", 217, "filesize%sizeof(T) == 0");
  }

  std::vector<float>::vector[abi:ne200100](a2, v4 >> 2);
  std::istream::seekg();
  std::istream::read();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v5 + *(v5[0] - 24)), *&v6[*(v5[0] - 24) + 16] | 4);
  }

  v5[0] = *MEMORY[0x1E69E54C8];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1C692A7B0](v6);
  std::istream::~istream();
  return MEMORY[0x1C692AD30](v7);
}

void *std::__shared_ptr_emplace<InferenceEngine::EspressoMilInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<InferenceEngine::EspressoMilInferenceModel>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CE290;
  InferenceEngine::EspressoMilInferenceModel::EspressoMilInferenceModel((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::EspressoMilInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CE290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

void *std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<InferenceEngine::Mil2BnnsMilInferenceModel>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CE2E0;
  InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F42CE2E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(uint64_t a1, const std::string::value_type **a2)
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
    v6 = std::string::compare((v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), *a2) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1C318A7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::GreedyDecoderKVCachingIOProcessor::GreedyDecoderKVCachingIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v23, a2);
  InferenceEngine::GreedyDecoderIOProcessor::GreedyDecoderIOProcessor(a1, v23);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
  *a1 = &unk_1F42CE330;
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "num_hidden_layers");
  v25 = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v4, &v25);
  v21[0] = 5;
  v22 = v25;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "num_hidden_layers");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  v6 = *v5;
  *v5 = v21[0];
  v21[0] = v6;
  v7 = v5[1];
  v5[1] = v22;
  v22 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v22, v21[0]);
  v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "num_attention_heads");
  v25 = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v8, &v25);
  v19[0] = 5;
  v20 = v25;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "num_attention_heads");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  v10 = *v9;
  *v9 = v19[0];
  v19[0] = v10;
  v11 = v9[1];
  v9[1] = v20;
  v20 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "attention_head_size");
  v25 = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v12, &v25);
  v17[0] = 5;
  v18 = v25;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "attention_head_size");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  v14 = *v13;
  *v13 = v17[0];
  v17[0] = v14;
  v15 = v13[1];
  v13[1] = v18;
  v18 = v15;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v17);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v18, v17[0]);
  return a1;
}

void sub_1C318AA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  InferenceEngine::GreedyDecoderIOProcessor::~GreedyDecoderIOProcessor(v3);
  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::GreedyDecoderKVCachingIOProcessor::process_inputs(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  InferenceEngine::GreedyDecoderIOProcessor::process_inputs(a1, a2, a3);
  if (!a3)
  {
    memset(v11, 0, sizeof(v11));
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "num_hidden_layers");
    LODWORD(v9) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v5, &v9);
    __p[0] = v9;
    __p[1] = 1;
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "num_attention_heads");
    LODWORD(v9) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v9);
    __p[2] = v9;
    __p[3] = 0;
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "attention_head_size");
    LODWORD(v9) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v7, &v9);
    __p[4] = v9;
    memset(v10, 0, sizeof(v10));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v10, __p, &v13, 5uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "self_past_key_input");
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v11);
  }

  return 0;
}

void sub_1C318AD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
    if (!v25)
    {
LABEL_7:
      if (!v24)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v25)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (!v24)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  goto LABEL_9;
}

void InferenceEngine::GreedyDecoderKVCachingIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  v55[33] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "input_ids");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
  if (v5)
  {
    v6 = v5[6];
    v33 = v5[5];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "encoder_hidden_states");
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
    if (v7)
    {
      v8 = v7[6];
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "output_id");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
      if (v9)
      {
        v11 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "self_past_key_input");
        v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
        if (v12)
        {
          v13 = v12[5];
          v14 = v12[6];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "self_past_values_input");
          v15 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
          if (v15)
          {
            v16 = v15[5];
            v17 = v15[6];
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "self_past_key_output");
            v18 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
            if (v18)
            {
              InferenceEngine::DataTensor::get_shape(v18[5], 0, v52);
              InferenceEngine::DataTensor::resize(v13, v52);
              if (v52[0])
              {
                v52[1] = v52[0];
                operator delete(v52[0]);
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }

              std::string::basic_string[abi:ne200100]<0>(__p, "self_past_values_output");
              v19 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
              if (v19)
              {
                InferenceEngine::DataTensor::get_shape(v19[5], 0, v51);
                InferenceEngine::DataTensor::resize(v16, v51);
                if (v51[0])
                {
                  v51[1] = v51[0];
                  operator delete(v51[0]);
                }

                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p[0]);
                }

                std::string::basic_string[abi:ne200100]<0>(__p, "self_past_key_output");
                v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
                if (v20)
                {
                  v21 = v20[5];
                  v49 = v13;
                  v50 = v14;
                  if (v14)
                  {
                    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  InferenceEngine::DataTensor::cast_data_to_target_tensor(v21, &v49);
                  if (v50)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                  }

                  if (SHIBYTE(v54) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  std::string::basic_string[abi:ne200100]<0>(__p, "self_past_values_output");
                  v22 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
                  if (v22)
                  {
                    v23 = v22[5];
                    v47 = v16;
                    v48 = v17;
                    if (v17)
                    {
                      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    InferenceEngine::DataTensor::cast_data_to_target_tensor(v23, &v47);
                    if (v48)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                    }

                    if (SHIBYTE(v54) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    std::string::basic_string[abi:ne200100]<0>(__p, "cross_past_key_input");
                    v24 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
                    if (v24)
                    {
                      v25 = v24[6];
                      if (v25)
                      {
                        atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
                      }

                      if (SHIBYTE(v54) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      std::string::basic_string[abi:ne200100]<0>(__p, "cross_past_values_input");
                      v26 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
                      if (v26)
                      {
                        v27 = v26[6];
                        if (v27)
                        {
                          atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
                        }

                        if (SHIBYTE(v54) < 0)
                        {
                          operator delete(__p[0]);
                        }

                        v45 = v33;
                        v46 = v6;
                        if (v6)
                        {
                          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        InferenceEngine::DataTensor::cast_data_to_target_tensor(v11, &v45);
                        if (v46)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
                        }

                        InferenceEngine::DataTensor::get_2d_array<int>(&v40, v11);
                        *v36 = **v40;
                        __p[1] = 0;
                        v54 = 0;
                        __p[0] = 0;
                        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, v36, v36 + 1, 1uLL);
                        v42 = 0;
                        v43 = 0;
                        v44 = 0;
                        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>(&v42, __p, v55, 1uLL);
                        if (__p[0])
                        {
                          __p[1] = __p[0];
                          operator delete(__p[0]);
                        }

                        v39 = &v40;
                        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v39);
                        if (a3)
                        {
                          std::string::basic_string[abi:ne200100]<0>(__p, "accumulated_ids");
                          v28 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, __p);
                          if (v28)
                          {
                            v30 = v28[5];
                            v29 = v28[6];
                            if (v29)
                            {
                              atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
                            }

                            if (SHIBYTE(v54) < 0)
                            {
                              operator delete(__p[0]);
                            }

                            InferenceEngine::DataTensor::get_2d_array<float>(v30, &v40);
                            std::string::basic_string[abi:ne200100]<0>(__p, "accumulated_ids");
                            memset(v38, 0, sizeof(v38));
                            std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v38, v40, v41, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
                            memset(v37, 0, sizeof(v37));
                            std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v37, v42, v43, 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3));
                            InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v38, v37, 1, &v39);
                            InferenceEngine::DataTensor::build_from_2d_array<float>(__p, &v39);
                          }

                          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                        }

                        std::string::basic_string[abi:ne200100]<0>(__p, "accumulated_ids");
                        v31 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>((a1 + 24), "bos_token_id");
                        LODWORD(v35[0]) = 0;
                        nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v31, v35);
                        *v34 = SLODWORD(v35[0]);
                        std::vector<float>::vector[abi:ne200100](&v39, 1uLL, v34);
                        std::vector<std::vector<float>>::vector[abi:ne200100](&v40, 1uLL, &v39);
                        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, &v40);
                      }

                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                  }

                  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                }

                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C318B8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char *a63)
{
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  if (__p)
  {
    a43 = __p;
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  a63 = &a48;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a63);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::Utils::read_json_from_file@<X0>(InferenceEngine *a1@<X0>, uint64_t a2@<X8>)
{
  v14[20] = *MEMORY[0x1E69E9840];
  LogObject = InferenceEngine::Diagnostics_GetLogObject(a1);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Read json from %s", buf, 0xCu);
  }

  std::ifstream::basic_ifstream(buf, a1, 8);
  if (!v13[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v9, "Can't open file from %s", v8);
    MEMORY[0x1C692A510](exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v11 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(buf, v10, 1, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v10);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *(&v13[2] + *(*buf - 24)) | 4);
  }

  *buf = *MEMORY[0x1E69E54C8];
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1C692A7B0](v13);
  std::istream::~istream();
  return MEMORY[0x1C692AD30](v14);
}

void sub_1C318BEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[18] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  v8[0] = a1;
  v8[1] = *(a1 + *(*a1 - 24) + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v9, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>(v8, v9, a3, v10);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parse(v10, 1, a4);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(v11);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v9);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(v8);
}

void sub_1C318C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer((v15 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a11);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v14);
  _Unwind_Resume(a1);
}

void nlohmann::operator<<(void *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *(a1 + *(*a1 - 24) + 24) = 0;
  operator new();
}

void sub_1C318C278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = *MEMORY[0x1E69E9840];
  *&v8 = a1;
  *(&v8 + 1) = a2;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v9, a3);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(a5, &v8, v9, v5);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v9);
}

void sub_1C318C340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(uint64_t a1, int a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v33, a1);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v34, a3, v33, *(a1 + 176));
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v33);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    if (a2)
    {
      v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v32);
        v28 = *(a1 + 64);
        v29 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(v25, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 15, v25, &__p);
        nlohmann::detail::parse_error::create(101, &v28, &__p, &v30);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v34, v7, &v32, &v30);
        v30.__vftable = &unk_1F42CDB50;
        MEMORY[0x1C692A5A0](v31);
        std::exception::~exception(&v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v39 == 1)
    {
      v23[0] = 9;
      v8 = v23;
      v24 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v9 = *a3;
      *a3 = v23[0];
      v23[0] = v9;
      v10 = *(a3 + 8);
      *(a3 + 8) = v24;
      v24 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v11 = v23[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v34);
        return;
      }

      v21[0] = 0;
      v8 = v21;
      v22 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v17 = *a3;
      *a3 = v21[0];
      v21[0] = v17;
      v18 = *(a3 + 8);
      *(a3 + 8) = v22;
      v22 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v11 = v21[0];
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
    goto LABEL_27;
  }

  v12 = *(a1 + 176);
  v34 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v38 = v12;
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  if (a2)
  {
    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v13;
    if (v13 != 15)
    {
      v14 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v32);
      v28 = *(a1 + 64);
      v29 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(v25, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 15, v25, &__p);
      nlohmann::detail::parse_error::create(101, &v28, &__p, &v30);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v34, v14, &v32, &v30);
      v30.__vftable = &unk_1F42CDB50;
      MEMORY[0x1C692A5A0](v31);
      std::exception::~exception(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v37 == 1)
  {
    v19[0] = 9;
    v20 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    v15 = *a3;
    *a3 = v19[0];
    v19[0] = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = v20;
    v20 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_1C318C75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  nlohmann::detail::exception::~exception(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  v44 = *(v42 - 200);
  if (v44)
  {
    *(v42 - 192) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_decimal_point();
  *(a1 + 176) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  return a1;
}

void sub_1C318C940(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(v1 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_decimal_point()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(uint64_t a1)
{
  if (!*(a1 + 24) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_bom(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v9 = 1819047278;
            v5 = &v9;
            v6 = a1;
            v7 = 4;
            v8 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v11 = 1702195828;
            v5 = &v11;
            v6 = a1;
            v7 = 4;
            v8 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v10, "false", 5);
          v5 = v10;
          v6 = a1;
          v7 = 5;
          v8 = 2;
        }

        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(v6, v5, v7, v8);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1);
    default:
      goto LABEL_47;
  }
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_bom(unsigned __int8 **a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1, v2);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    *(a1 + 96) = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(a1);
  if (*(a1 + 16) != 34)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string();
  }

  while (2)
  {
    v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_86;
        }

        v8 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (codepoint >= 0x110000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string();
          }

          if (codepoint > 0x7F)
          {
            if (codepoint > 0x7FF)
            {
              if (HIWORD(codepoint))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(v8, (a1 + 72));
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_1C378DAC0;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_1C378DAB0;
        goto LABEL_5;
      case 238:
        v7 = xmmword_1C378DAA0;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_1C378DB68;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_1C378DB80;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_1C378DB98;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) < 9)
  {
    v4 = (a1 + 72);
    v5 = 5;
LABEL_3:
    std::string::push_back(v4, v2);
    v6 = (a1 + 72);
    while (1)
    {
      v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      if ((v7 - 48) >= 0xA)
      {
        break;
      }

      std::string::push_back((a1 + 72), *v3);
    }

    if (v7 != 46)
    {
      if (v7 != 69 && v7 != 101)
      {
LABEL_9:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1, v8);
        __endptr = 0;
        *__error() = 0;
        v9 = (a1 + 72);
        v10 = *(a1 + 95);
        v11 = (a1 + 72);
        if (v5 == 5)
        {
          if (v10 < 0)
          {
            v11 = *v9;
          }

          v12 = strtoull(v11, &__endptr, 10);
          v13 = *(a1 + 95);
          if (v13 < 0)
          {
            v9 = *(a1 + 72);
            v13 = *(a1 + 80);
          }

          if (__endptr != v9 + v13)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number();
          }

          if (!*__error())
          {
            result = 5;
            v15 = 112;
LABEL_30:
            *(a1 + v15) = v12;
            return result;
          }
        }

        else
        {
          if (v10 < 0)
          {
            v11 = *v9;
          }

          v12 = strtoll(v11, &__endptr, 10);
          v16 = *(a1 + 95);
          if (v16 < 0)
          {
            v9 = *(a1 + 72);
            v16 = *(a1 + 80);
          }

          if (__endptr != v9 + v16)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number();
          }

          if (!*__error())
          {
            result = 6;
            v15 = 104;
            goto LABEL_30;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 72), 48);
    v5 = 5;
  }

  else
  {
    if (v2 != 45)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number();
    }

    v4 = (a1 + 72);
    std::string::push_back((a1 + 72), 45);
    v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if ((v20 - 49) < 9)
    {
      v2 = *v3;
      v5 = 6;
      goto LABEL_3;
    }

    if (v20 != 48)
    {
      v24 = "invalid number; expected digit after '-'";
      goto LABEL_52;
    }

    std::string::push_back((a1 + 72), *v3);
    v5 = 6;
  }

  v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  if (v21 == 101 || v21 == 69)
  {
    v6 = (a1 + 72);
LABEL_48:
    std::string::push_back(v6, *(a1 + 16));
    v25 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if ((v25 - 48) < 0xA)
    {
      v26 = (a1 + 72);
    }

    else
    {
      if (v25 != 45 && v25 != 43)
      {
        v24 = "invalid number; expected '+', '-', or digit after exponent";
        goto LABEL_52;
      }

      v26 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 >= 0xA)
      {
        v24 = "invalid number; expected digit after exponent sign";
        goto LABEL_52;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1, (a1 + 16), v26);
    goto LABEL_55;
  }

  if (v21 != 46)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 72);
LABEL_40:
  std::string::push_back(v6, *(a1 + 128));
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 > 9)
  {
    v24 = "invalid number; expected digit after '.'";
LABEL_52:
    *(a1 + 96) = v24;
    return 14;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v22 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  }

  while ((v22 - 48) < 0xA);
  if (v22 == 101 || v22 == 69)
  {
    goto LABEL_48;
  }

LABEL_55:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(a1, v23);
  __endptr = 0;
  *__error() = 0;
LABEL_23:
  v17 = (a1 + 72);
  v18 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v18 = *v17;
  }

  *(a1 + 120) = strtod(v18, &__endptr);
  v19 = *(a1 + 95);
  if (v19 < 0)
  {
    v17 = *(a1 + 72);
    v19 = *(a1 + 80);
  }

  if (__endptr != v17 + v19)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number();
  }

  return 7;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget(uint64_t result, uint64_t a2)
{
  v2 = (result + 32);
  v3 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v3 || (v2 = (result + 40), (v3 = *(result + 40)) != 0))
  {
    *v2 = v3 - 1;
  }

  if (*(result + 16) != -1)
  {
    v4 = *(result + 56);
    if (*(result + 48) == v4)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::unget();
    }

    *(result + 56) = v4 - 1;
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::reset(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  std::vector<char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(uint64_t a1)
{
  if (*(a1 + 16) != 117)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint();
  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(std::string *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a2, a3, a1);
  return v4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2, a1 + 112, 0);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v30, &v32);
          v13 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v34, &v32);
          nlohmann::detail::exception::~exception(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    std::vector<BOOL>::push_back(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(&v28, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = &unk_1F42CDB50;
      MEMORY[0x1C692A5A0](&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    std::string::basic_string[abi:ne200100]<0>(&v28, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 16, &v28, &__p);
    nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
    v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key(a2, a1 + 112);
    }

    goto LABEL_64;
  }

  v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        std::string::basic_string[abi:ne200100]<0>(&v28, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 10, &v28, &__p);
        nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
        v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(&v28, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 11, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key(a2, a1 + 112);
  }

LABEL_64:
  v22 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  std::string::basic_string[abi:ne200100]<0>(&v28, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 4, &v28, &__p);
  nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
  v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  nlohmann::detail::exception::~exception(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1C318DEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  nlohmann::detail::exception::~exception(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, const nlohmann::detail::parse_error *a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    v5 = *(a4 + 2) / 100 % 100;
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v7 = nlohmann::detail::parse_error::parse_error(exception, a4);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_15;
        }

        v9 = __cxa_allocate_exception(0x20uLL);
        v7 = nlohmann::detail::invalid_iterator::invalid_iterator(v9, a4);
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v10 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::type_error::type_error(v10, a4);
          break;
        case 4:
          v11 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::out_of_range::out_of_range(v11, a4);
          break;
        case 5:
          v6 = __cxa_allocate_exception(0x20uLL);
          v7 = nlohmann::detail::other_error::other_error(v6, a4);
          break;
        default:
LABEL_15:
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error();
      }
    }

    __cxa_throw(v7, v8, nlohmann::detail::exception::~exception);
  }

  return 0;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1C318E224(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, nlohmann::detail::exception *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v24, "parse_error");
  nlohmann::detail::exception::name(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::parse_error::position_string(a2, &__p);
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

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  nlohmann::detail::exception::exception(a4, a1, v22);
  *a4 = &unk_1F42CE400;
  *(a4 + 4) = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}