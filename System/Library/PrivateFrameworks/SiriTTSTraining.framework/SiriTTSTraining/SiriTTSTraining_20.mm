uint64_t *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1808EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::PdfPrior::PdfPrior(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = off_277020;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }
  }

  else if (!*(a2 + 23))
  {
    return a1;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v49, "PdfPrior", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 53);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Computing pdf-priors from : ", 28);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v49);
  }

  v49[0].__locale_ = 0;
  kaldi::Input::OpenInternal(v49, a2, 0, 0);
  kaldi::Input::Stream(v49);
  kaldi::Vector<double>::Read(&v50, v9, 0, 0, v10);
  kaldi::Input::Close(v49);
  kaldi::Input::~Input(v49);
  v11 = v51;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  kaldi::Vector<float>::Resize(&v46, v51, 0, v12, v13);
  if (v11 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v51;
    v18 = v50;
    v19 = v47;
    v20 = v46;
    do
    {
      if (v17 == v15)
      {
LABEL_30:
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v14);
      }

      v21 = *(a2 + 28);
      if (v18[v15] < v21)
      {
        v18[v15] = v21;
        if (v15 >= v19)
        {
          goto LABEL_30;
        }

        *&v20[4 * v15] = 2130706431;
        ++v16;
      }

      ++v15;
    }

    while (v11 != v15);
    if (v16 >= 1 && kaldi::g_kaldi_verbose_level > -2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v49, "PdfPrior", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 73);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " out of ", 8);
      v23 = std::ostream::operator<<();
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " classes have counts", 20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " lower than ", 12);
      std::ostream::operator<<();
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v49);
    }
  }

  v25 = kaldi::VectorBase<double>::Sum(&v50);
  kaldi::VectorBase<double>::Scale(&v50, 1.0 / v25);
  kaldi::VectorBase<double>::ApplyLog(&v50);
  if (v11 >= 1)
  {
    v26 = "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)";
    v28 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h";
    v29 = "operator()";
    v30 = v50;
    v31 = v11;
    v32 = v51;
    while (v32)
    {
      if (*v30 == -INFINITY)
      {
        v45 = &stru_20.filesize + 1;
        v29 = "PdfPrior";
        v28 = "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc";
        v26 = "tmp_priors(i) != kLogZeroDouble";
LABEL_33:
        kaldi::KaldiAssertFailure_(v29, v28, v45, v26, v27);
      }

      --v32;
      ++v30;
      if (!--v31)
      {
        goto LABEL_28;
      }
    }

    v45 = &stru_68;
    goto LABEL_33;
  }

LABEL_28:
  memset(v49, 0, 24);
  kaldi::Vector<float>::Resize(v49, v51, 1, v26, v27);
  kaldi::VectorBase<float>::CopyFromVec<double>(v49, &v50, v33, v34, v35);
  kaldi::VectorBase<float>::AddVec<float>(v49, &v46, 1.0, v36, v37, v38);
  kaldi::CuVector<float>::Resize(v4, v11, 1u, v39, v40);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v4, v49, v41, v42, v43);
  kaldi::Vector<float>::Destroy(v49);
  kaldi::Vector<float>::Destroy(&v46);
  kaldi::Vector<float>::Destroy(&v50);
  return a1;
}

void sub_180C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Vector<float>::Destroy(v10 - 88);
  kaldi::CuVector<float>::~CuVector(v9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::PdfPrior::SubtractOnLogpost(uint64_t a1, kaldi::ContextDependency *this)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "SubtractOnLogpost", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 111);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "--class-frame-counts is empty: Cannot initialize priors ", 56);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "without the counts.");
    goto LABEL_5;
  }

  if (v2 != kaldi::ContextDependency::ContextWidth(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "SubtractOnLogpost", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 115);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Dimensionality mismatch,", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " class_frame_counts ", 20);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " pdf_output_llk ", 16);
    kaldi::ContextDependency::ContextWidth(this);
    std::ostream::operator<<();
LABEL_5:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  memset(v16, 0, 24);
  kaldi::Vector<float>::Resize(v16, *(a1 + 24), 1, v5, v6);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 8), v16, v7, v8, v9);
  kaldi::MatrixBase<float>::AddVecToRows<float>(this, v16, -*a1, v10, v11, v12);
  kaldi::Vector<float>::Destroy(v16);
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1810C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void *kaldi::nnet1::NormalizeComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);
  v7 = *(a2 + 20);
  v15[2] = 0;
  v16 = 0;
  v15[0] = off_277020;
  v15[1] = 0;
  kaldi::CuVector<float>::Resize(v15, v7, 0, v8, v9);
  v16 = *(a3 + 32);
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v15, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v15, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v15, -0.5);
  kaldi::CuMatrixBase<float>::MulRowsVec(a3, v15, v11, v12, v13);
  return kaldi::CuVector<float>::~CuVector(v15);
}

void *kaldi::nnet1::NormalizeComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 20);
  v24[2] = 0;
  v25 = 0;
  v24[0] = off_277020;
  v24[1] = 0;
  kaldi::CuVector<float>::Resize(v24, v8, 0, a4, a5);
  v25 = *(a5 + 32);
  v9 = v25;
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v24, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v24, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v24, -0.5);
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v24, a4, 111, v11, 1.0, 0.0);
  kaldi::CuVectorBase<float>::ReplaceValue(v24, 8589900000.0, 0.0);
  kaldi::CuVectorBase<float>::ApplyPow(v24, 3.0);
  v12 = *(a5 + 20);
  v22[2] = 0;
  v23 = 0;
  v22[0] = off_277020;
  v22[1] = 0;
  kaldi::CuVector<float>::Resize(v22, v12, 0, v13, v14);
  v23 = v9;
  kaldi::CuVectorBase<float>::AddDiagMatMat(v22, a4, 111, a2, 112, 1.0, 0.0);
  kaldi::CuVectorBase<float>::MulElements(v22, v24, v18, v15, v16, v17);
  v19 = -1.0 / *(a2 + 16);
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v22, a2, 111, v20, v19, 1.0);
  kaldi::CuVector<float>::~CuVector(v22);
  return kaldi::CuVector<float>::~CuVector(v24);
}

void sub_1814CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::NormalizeComponent::~NormalizeComponent(kaldi::nnet1::NormalizeComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  operator delete();
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282AD8;
  *(a1 + 88) = off_282C08;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282AD8;
  *(a1 + 88) = off_282C08;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v9 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v9);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 280), *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 304), *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 328), *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::CuMatrixBase<float>>();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_181AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 20) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v9 + 17) = v14;
    operator delete(v14);
  }

  v15 = *a9;
  if (*a9)
  {
    *(v9 + 14) = v15;
    operator delete(v15);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, unint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 939);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v8++), v4, v5, v6, v7);
    }

    while (v8 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void *kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!result)
  {
    kaldi::KaldiAssertFailure_("DeletePointers", "../subproject/libquasar/libkaldi/src/util/stl-utils.h", stru_B8.sectname, "v != NULL", a5);
  }

  v5 = *result;
  v6 = result[1];
  while (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      result = (*(*result + 8))(result, a2, a3, a4, a5);
      *v5 = 0;
    }

    ++v5;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = off_282AD8;
  *(a1 + 88) = off_282C08;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v11 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *(a1 + 256);
  if (v6)
  {
    *(a1 + 264) = v6;
    operator delete(v6);
  }

  v11 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v7 = *(a1 + 176);
  if (v7)
  {
    *(a1 + 184) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    *(a1 + 160) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 128);
  if (v9)
  {
    *(a1 + 136) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    *(a1 + 112) = v10;
    operator delete(v10);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  operator delete();
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v128 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v127);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v126);
  v112 = 0;
  v125 = -1;
  *(a1 + 460) = 1;
  memset(v124, 0, sizeof(v124));
  v10 = (a1 + 200);
  v113 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v124, v8, v9);
    if ((SHIBYTE(v124[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v124[2]) > 0xDu)
      {
        if (HIBYTE(v124[2]) <= 0x11u)
        {
          if (HIBYTE(v124[2]) == 14)
          {
            v35 = v124;
            goto LABEL_174;
          }

          if (HIBYTE(v124[2]) != 15)
          {
            if (HIBYTE(v124[2]) != 17)
            {
              goto LABEL_278;
            }

            v11 = v124[0] == 0x69446465626D453CLL && v124[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v124[2]) != 62)
            {
              goto LABEL_278;
            }

LABEL_17:
            memset(&__p, 0, sizeof(__p));
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v124[0] == 0x61526E7261654C3CLL && *(v124 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v124[0] != 0x656E67697373413CLL || *(v124 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_278;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v124[2]) != 18)
        {
          if (HIBYTE(v124[2]) != 19)
          {
            if (HIBYTE(v124[2]) != 20)
            {
              goto LABEL_278;
            }

            v18 = v124[0] == 0x6C616974696E493CLL && v124[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v124[2]) != 1047814499)
            {
              goto LABEL_278;
            }

            goto LABEL_180;
          }

          if (v124[0] != 0x61725474696E493CLL || v124[1] != 0x79546D726F66736ELL || *(&v124[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

          goto LABEL_103;
        }

        if (v124[0] != 0x6E6569646172473CLL || v124[1] != 0x7079546D726F4E74 || LOWORD(v124[2]) != 15973)
        {
          goto LABEL_278;
        }

LABEL_199:
        v30 = &v126;
        goto LABEL_200;
      }

      if (HIBYTE(v124[2]) > 0xAu)
      {
        if (HIBYTE(v124[2]) == 11)
        {
          v38 = v124[0] == 0x756F72476D754E3CLL && *(v124 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v124[0] == 0x6C6261546D754E3CLL && *(v124 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_278;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v124[2]) != 12)
        {
          if (v124[0] != 0x74536D617261503CLL || *(v124 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_278;
          }

          goto LABEL_189;
        }

        if (v124[0] == 0x536D6F646E61523CLL && LODWORD(v124[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v124[0] != 0x69536261636F563CLL || LODWORD(v124[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v124[2]) != 9)
      {
        if (HIBYTE(v124[2]) != 10)
        {
          goto LABEL_278;
        }

        if (v124[0] != 0x6D65744978614D3CLL || LOWORD(v124[1]) != 15987)
        {
          goto LABEL_278;
        }

LABEL_66:
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v124[0] == 0x6461724778614D3CLL && LOBYTE(v124[1]) == 62;
      goto LABEL_138;
    }

    v14 = v124[1];
    if (v124[1] <= 12)
    {
      if (v124[1] > 10)
      {
        if (v124[1] == &dword_8 + 3)
        {
          v40 = *v124[0] == 0x756F72476D754E3CLL && *(v124[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v124[0] == 0x6C6261546D754E3CLL && *(v124[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v124[0] == 0x536D6F646E61523CLL && *(v124[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v125;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7, v8, v9);
            goto LABEL_203;
          }

          if (*v124[0] == 0x69536261636F563CLL && *(v124[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v124[1] == &dword_8 + 1)
        {
          v34 = *v124[0] == 0x6461724778614D3CLL && *(v124[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_278;
          }

          goto LABEL_190;
        }

        if (v124[1] != &dword_8 + 2)
        {
          goto LABEL_158;
        }

        if (*v124[0] == 0x6D65744978614D3CLL && *(v124[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v124[1] > 16)
    {
      if (v124[1] != dword_10 + 1)
      {
        if (v124[1] == dword_10 + 2)
        {
          if (*v124[0] != 0x6E6569646172473CLL || *(v124[0] + 1) != 0x7079546D726F4E74 || *(v124[0] + 8) != 15973)
          {
            goto LABEL_278;
          }

          goto LABEL_199;
        }

        if (v124[1] == dword_10 + 3)
        {
          if (*v124[0] != 0x61725474696E493CLL || *(v124[0] + 1) != 0x79546D726F66736ELL || *(v124[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

LABEL_103:
          v30 = &v127;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v124[0] == 0x69446465626D453CLL && *(v124[0] + 1) == 0x736E6F69736E656DLL && *(v124[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v124[1];
LABEL_158:
      if (v14 != (&dword_C + 3))
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v124[1] == &dword_C + 1)
    {
      if (*v124[0] != 0x74536D617261503CLL || *(v124[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_278;
      }

LABEL_189:
      v7 = &v128;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7, v8, v9);
      goto LABEL_203;
    }

    if (v124[1] != &dword_C + 3)
    {
      goto LABEL_158;
    }

    v25 = *v124[0] == 0x61526E7261654C3CLL && *(v124[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v124[0] != 0x656E67697373413CLL || *(v124[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    memset(&__p, 0, sizeof(__p));
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v124[1];
LABEL_164:
  if (v14 == &dword_14)
  {
    v45 = *v124[0] == 0x6C616974696E493CLL && *(v124[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v124[0] + 4) == 1047814499)
    {
LABEL_180:
      v112 = 1;
      goto LABEL_203;
    }
  }

  v47 = v124[1];
  if (v124[1] != &dword_C + 2)
  {
    goto LABEL_208;
  }

  v35 = v124[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460), v8, v9);
    goto LABEL_203;
  }

  if ((HIBYTE(v124[2]) & 0x80) == 0)
  {
    if (HIBYTE(v124[2]) == 12)
    {
LABEL_206:
      v55 = v124;
      goto LABEL_210;
    }

    goto LABEL_278;
  }

  v47 = v124[1];
LABEL_208:
  if (v47 != &dword_C)
  {
    goto LABEL_278;
  }

  v55 = v124[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_278:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 271);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v124[2]) >= 0)
    {
      v107 = v124;
    }

    else
    {
      v107 = v124[0];
    }

    if (SHIBYTE(v124[2]) >= 0)
    {
      v108 = HIBYTE(v124[2]);
    }

    else
    {
      v108 = v124[1];
    }

    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v107, v108);
    v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v113 >= 1)
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v129[0] = 0;
    v120 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, &v114, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(&v114);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, v129, v62, v63);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v120, v64, v65);
    kaldi::nnet1::Component::NewComponentOfType(v61, v129[0], v120);
  }

  if ((v112 & 1) == 0)
  {
    goto LABEL_235;
  }

  v67 = *(a1 + 256);
  v66 = *(a1 + 264);
  if (v67 == v66)
  {
    if (!*(*v67 + 12))
    {
      goto LABEL_233;
    }

LABEL_288:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 304);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v111 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, " actual dim is ", 15);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v68 = 0;
  v69 = *(a1 + 256);
  do
  {
    v70 = *v69++;
    v68 += *(v70 + 8);
  }

  while (v69 != v66);
  if (v68 != *(*v67 + 12))
  {
    goto LABEL_288;
  }

  v71 = 0;
  do
  {
    v72 = *v67;
    if (!*v67)
    {
LABEL_285:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 326);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    if (v73)
    {
      v74 = v73;
      kaldi::Matrix<float>::Matrix(&__p, v73[3], v73[2], 0, 0);
      v75 = v74[3];
      v117 = 0;
      v118 = 0;
      v119 = 0;
      kaldi::Vector<float>::Resize(&v117, v75, 0, v76, v77);
      kaldi::SubMatrix<float>::SubMatrix(&v114, &__p, v71, v74[2]);
      kaldi::MatrixBase<float>::AddToDiag(&v114, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::nnet1::AffineTransform::SetLinearity(v74, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v74, &v117);
      v78 = v74[2];
      kaldi::Vector<float>::Destroy(&v117);
    }

    else
    {
      if (!v79)
      {
        goto LABEL_285;
      }

      v80 = v79;
      kaldi::Matrix<float>::Matrix(&__p, v79[3], v79[2], 0, 0);
      kaldi::SubMatrix<float>::SubMatrix(&v114, &__p, v71, *(v80 + 8));
      kaldi::MatrixBase<float>::AddToDiag(&v114, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v80, &__p);
      v78 = *(v80 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v71 = v78 + v71;
    ++v67;
  }

  while (v67 != v66);
  v10 = (a1 + 200);
  if (v71 != v68)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_108.flags + 3, "shift == total_dim", v81);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 332);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v127);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v126);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 339);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v118 = 0;
  v119 = 0;
  v117 = &v118;
  if (*v113 < 1)
  {
    v89 = 0;
  }

  else
  {
    v84 = 0;
    do
    {
      v85 = *(*(a1 + 176) + 4 * v84);
      LODWORD(v114) = v85;
      if (v85 < 0 || v85 >= *v10)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[1], "table_idx >= 0 && table_idx < num_tables_", v83);
      }

      v86 = *(*(a1 + 104) + 4 * v84);
      v87 = *(*(a1 + 152) + 4 * v84);
      __p.__r_.__value_.__r.__words[0] = &v114;
      v88 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v117, &v114, &std::piecewise_construct, &__p);
      *(v88 + 8) = v86;
      *(v88 + 9) = v87;
      ++v84;
    }

    while (v84 < *v113);
    v89 = v119;
  }

  if (v89 != *v10)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[4], "table_dims.size() == num_tables_", v83);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), v89);
  if (v125 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v125);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v120 = 0;
  if (*v10 >= 1)
  {
    *v129 = &v120;
    v90 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v117, &v120, &std::piecewise_construct, v129);
    v91 = *(v90 + 8);
    v92 = *(v90 + 9);
    kaldi::Matrix<float>::Matrix(&v114, v91, v92, 0, 0);
    if (v91 < 1)
    {
LABEL_266:
      kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::Matrix<float>>();
    }

    v96 = 0;
    while (v92 < 1)
    {
LABEL_265:
      if (++v96 == v91)
      {
        goto LABEL_266;
      }
    }

    v97 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v103 = *&v128;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v93, v94, v95);
        if (HIDWORD(v115) <= v96 || v97 >= v115)
        {
LABEL_276:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v95);
        }

        v101 = v114 + 4 * (v96 * v116);
        v102 = v103 * v104;
LABEL_263:
        *&v101[4 * v97] = v102;
      }

      else if (inited == 1)
      {
        v98 = *&v128;
        v99 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v93, v94, v95);
        if (HIDWORD(v115) <= v96 || v97 >= v115)
        {
          goto LABEL_276;
        }

        v101 = v114 + 4 * (v96 * v116);
        v102 = (v99 + -0.5) * (v98 + v98);
        goto LABEL_263;
      }

      if (v92 == ++v97)
      {
        goto LABEL_265;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v114 = &__p.__r_.__value_.__r.__words[2];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v114);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v117, v118);
  if (SHIBYTE(v124[2]) < 0)
  {
    operator delete(v124[0]);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }
}

void sub_183394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  a11 = &a22;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a16, a17);
  if (*(v26 - 177) < 0)
  {
    operator delete(*(v26 - 200));
  }

  if (*(v26 - 145) < 0)
  {
    operator delete(*(v26 - 168));
  }

  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_1833B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1833C4);
  }

  JUMPOUT(0x183414);
}

void sub_1833D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1833E4);
}

int *kaldi::nnet1::AffineTransform::SetLinearity(kaldi::nnet1::AffineTransform *a1, kaldi::ContextDependency *this)
{
  v4 = kaldi::ContextDependency::CentralPosition(this);
  if (v4 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.addr + 2, "linearity.NumRows() == Linearity().NumRows()", v5);
  }

  v6 = kaldi::ContextDependency::ContextWidth(this);
  if (v6 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.addr + 3, "linearity.NumCols() == Linearity().NumCols()", v7);
  }

  v8 = kaldi::nnet1::AffineTransform::Linearity(a1);

  return kaldi::CuMatrixBase<float>::CopyFromMat(v8, this, 111, v9, v10);
}

_DWORD *kaldi::nnet1::AffineTransform::SetBias(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != *(kaldi::nnet1::AffineTransform::Bias(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetBias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.segname[7], "bias.Dim() == Bias().Dim()", v5);
  }

  v6 = kaldi::nnet1::AffineTransform::Bias(a1);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v6, a2, v7, v8, v9);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 503);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "must have at least one group, you used ", 39);
      std::ostream::operator<<();
    }

    else
    {
      v2 = *(result + 200);
      if (v2 <= 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 506);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "must have at least one embedding table, you used ", 49);
        std::ostream::operator<<();
      }

      else if (v1 < v2)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 509);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are only ", 15);
        v33 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " groups, but you set ", 21);
        v34 = std::ostream::operator<<();
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, " embedding tables");
      }

      else
      {
        v3 = *(result + 104);
        v4 = *(result + 112) - v3;
        v5 = v4 >> 2;
        if (v4 >> 2 == v1)
        {
          v6 = *(result + 128);
          if (*(result + 136) - v6 == v4)
          {
            v7 = *(result + 152);
            if (*(result + 160) - v7 == v4)
            {
              v8 = *(result + 176);
              if (*(result + 184) - v8 == v4)
              {
                v9 = *(result + 208);
                if (v2 == (*(result + 216) - v9) >> 3)
                {
                  v10 = *(result + 460);
                  if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
                  {
                    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 528);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
                    v42 = std::ostream::operator<<();
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " groups, but the number of feature transforms is ", 49);
                    std::ostream::operator<<();
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    do
                    {
                      v14 = *(v8 + 4 * v11);
                      if ((v14 & 0x80000000) != 0 || v14 >= v2)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 537);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v27 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "-th group has assigned table index ", 35);
                        v28 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " , the number of tables is ", 27);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v15 = *(v3 + 4 * v11);
                      if (v15 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v21 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-th group has invalid vocab size ", 33);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v16 = *(v6 + 4 * v11);
                      if (v16 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 545);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v22 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "-th group has invalid max item value ", 37);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v17 = *(v7 + 4 * v11);
                      if (v17 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 548);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v20 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "-th group has invalid embedding dimension value ", 48);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v18 = *(v9 + 8 * v14);
                      if (*(v18 + 20) != v15)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v25 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "-th group has mismatched embedding table and vocab size ", 56);
                        v26 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " vs ", 4);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      if (*(v18 + 16) != v17)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 557);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v23 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "-th group has mismatched embedding table and embedding dim ", 59);
                        v24 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " vs ", 4);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      if (*(result + 460))
                      {
                        v19 = *(*(result + 256) + 8 * v11);
                        if (v17 != *(v19 + 8))
                        {
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 561);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                          v31 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "-th group has mismatched embedding table and feature transform ", 63);
                          v32 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " vs ", 4);
                          std::ostream::operator<<();
                          goto LABEL_32;
                        }

                        if (*(result + 12) != *(v19 + 12))
                        {
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 565);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                          v29 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "-th group has feature transform output dim ", 43);
                          v30 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " does not match component output dim ", 37);
                          std::ostream::operator<<();
                          goto LABEL_32;
                        }
                      }

                      v12 += v17;
                      v13 += v16;
                      ++v11;
                    }

                    while (v1 != v11);
                    if (*(result + 8) == v13)
                    {
                      if ((v10 & 1) != 0 || v12 == *(result + 12))
                      {
                        *(result + 544) = 1;
                        return result;
                      }

                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 575);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Total embedding size of ", 24);
                      v43 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " doesn't match the component output size of ", 44);
                      v44 = std::ostream::operator<<();
                      std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, " when transforms are not used");
                    }

                    else
                    {
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 571);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "input dim of the component is ", 30);
                      v41 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " , while the input dim defined in max items is ", 47);
                      std::ostream::operator<<();
                    }
                  }
                }

                else
                {
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 524);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the actual number of embedding tables is ", 41);
                  v40 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " and different than ", 20);
                  std::ostream::operator<<();
                }
              }

              else
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 521);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
                v38 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " groups, but ", 13);
                v39 = std::ostream::operator<<();
                std::operator<<[abi:ne200100]<std::char_traits<char>>(v39, " groups have assigned tables");
              }
            }

            else
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 518);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
              v37 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " groups, but the embedding dim list size is ", 44);
              std::ostream::operator<<();
            }
          }

          else
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 515);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
            v36 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " groups, but the max item list size is ", 39);
            std::ostream::operator<<();
          }
        }

        else
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 512);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
          v35 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " groups, but the number vocab list size is ", 43);
          std::ostream::operator<<();
        }
      }
    }

LABEL_32:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v61 = 0uLL;
  v62 = 0;
  *(a1 + 460) = 1;
  v58 = (a1 + 456);
  v8 = (a1 + 452);
  v9 = (a1 + 200);
  v10 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v61, v11, v12);
    if (SHIBYTE(v62) < 0)
    {
      v16 = *(&v61 + 1);
      if (*(&v61 + 1) == 11)
      {
        v33 = *v61 == 0x756F72476D754E3CLL && *(v61 + 3) == 0x3E7370756F72476DLL;
        v34 = v10;
        if (v33)
        {
          goto LABEL_108;
        }

        v35 = *v61 == 0x6C6261546D754E3CLL && *(v61 + 3) == 0x3E73656C6261546DLL;
        v34 = v9;
        if (v35)
        {
          goto LABEL_108;
        }
      }

      if (*(&v61 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v61 != 0x69536261636F563CLL || *(v61 + 8) != 1047750010)
      {
        v16 = *(&v61 + 1);
LABEL_20:
        if (v16 == 10 && *v61 == 0x6D65744978614D3CLL && *(v61 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v61 + 1) == 15)
        {
          if (*v61 == 0x656E67697373413CLL && *(v61 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v61 + 1) == 17)
        {
          v19 = *v61 == 0x69446465626D453CLL && *(v61 + 8) == 0x736E6F69736E656DLL;
          if (v19 && *(v61 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v61 + 1) == 9)
        {
          v24 = *v61 == 0x6461724778614D3CLL && *(v61 + 8) == 62;
          v25 = v8;
          if (v24)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v61 + 1) == 18)
        {
          v22 = *v61 == 0x6E6569646172473CLL && *(v61 + 8) == 0x7079546D726F4E74;
          if (v22 && *(v61 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v61 + 1) != 14)
        {
          if (*(&v61 + 1) != 15 || (*v61 == 0x61526E7261654C3CLL ? (v26 = *(v61 + 7) == 0x3E66656F43657461) : (v26 = 0), v25 = v58, !v26))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 408);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown token ", 14);
            if (v62 >= 0)
            {
              v55 = &v61;
            }

            else
            {
              v55 = v61;
            }

            if (v62 >= 0)
            {
              v56 = HIBYTE(v62);
            }

            else
            {
              v56 = *(&v61 + 1);
            }

            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_114;
        }

        v27 = v61;
        goto LABEL_102;
      }

LABEL_80:
      memset(__p, 0, 24);
      kaldi::ReadToken(a2, a3, __p, v13, v14);
      kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 104), v31);
LABEL_136:
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else if (HIBYTE(v62) > 0xDu)
    {
      if (HIBYTE(v62) > 0x10u)
      {
        if (HIBYTE(v62) == 17)
        {
          if (v61 != 0x69446465626D453CLL || *(&v61 + 1) != 0x736E6F69736E656DLL || v62 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          memset(__p, 0, 24);
          kaldi::ReadToken(a2, a3, __p, v13, v14);
          kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 152), v47);
          goto LABEL_136;
        }

        if (HIBYTE(v62) != 18)
        {
          goto LABEL_149;
        }

        v43 = v61 == 0x6E6569646172473CLL && *(&v61 + 1) == 0x7079546D726F4E74;
        if (!v43 || v62 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        memset(__p, 0, 24);
        kaldi::ReadToken(a2, a3, __p, v13, v14);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        goto LABEL_136;
      }

      if (HIBYTE(v62) != 14)
      {
        if (HIBYTE(v62) != 15)
        {
          goto LABEL_149;
        }

        if (v61 == 0x656E67697373413CLL && *(&v61 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          memset(__p, 0, 24);
          kaldi::ReadToken(a2, a3, __p, v13, v14);
          kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 176), v42);
          goto LABEL_136;
        }

        v29 = v61 == 0x61526E7261654C3CLL && *(&v61 + 7) == 0x3E66656F43657461;
        v25 = v58;
        if (!v29)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v27 = &v61;
LABEL_102:
      v38 = *v27;
      v39 = *(v27 + 6);
      if (v38 != 0x6E6172546573553CLL || v39 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460), v13, v14);
    }

    else if (HIBYTE(v62) > 0xAu)
    {
      if (HIBYTE(v62) != 11)
      {
        if (HIBYTE(v62) != 12)
        {
          goto LABEL_149;
        }

        if (v61 != 0x69536261636F563CLL || DWORD2(v61) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v36 = v61 == 0x756F72476D754E3CLL && *(&v61 + 3) == 0x3E7370756F72476DLL;
      v34 = v10;
      if (!v36)
      {
        v37 = v61 == 0x6C6261546D754E3CLL && *(&v61 + 3) == 0x3E73656C6261546DLL;
        v34 = v9;
        if (!v37)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v34, v13, v14);
    }

    else
    {
      if (HIBYTE(v62) != 9)
      {
        if (HIBYTE(v62) != 10)
        {
          goto LABEL_149;
        }

        if (v61 != 0x6D65744978614D3CLL || WORD4(v61) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        memset(__p, 0, 24);
        kaldi::ReadToken(a2, a3, __p, v13, v14);
        kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 128), v32);
        goto LABEL_136;
      }

      v41 = v61 == 0x6461724778614D3CLL && BYTE8(v61) == 62;
      v25 = v8;
      if (!v41)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v25, v13, v14);
    }
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), *(a1 + 200));
  if (*v9 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v48, v49, v50, v51);
  if (*(a1 + 460) == 1 && *v10 >= 1)
  {
    v52 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v53 = kaldi::nnet1::Component::Read(a2, a3, a4);
      if (!v53)
      {
        v59 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 425);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (!v59)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v59);
      ++v52;
    }

    while (v52 < *v10);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }
}

void sub_184990(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<NumTables>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 200));
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v10, v11);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v12, v13);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v14, v15);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v16, v17);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v18, v19);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v20, v21);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v22, v23);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v24, v25);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v26, v27);
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 456));
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v28, v29);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v30, v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v32, v33);
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 452));
  kaldi::WriteToken(a2, a3, "<UseTransform>", v34, v35);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_184BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      std::ostream::operator<<();
      ++v6;
      v7 = a1[1] - *a1;
      if (v6 < v7 >> 2)
      {
        v8 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, a2, v8);
        v7 = a1[1] - *a1;
      }
    }

    while (v6 < v7 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v11;
  *(a3 + 16) = v12;
  v14 = v9;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_184E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CuMatrixBase<float>::Write(v12, a2, a3, a4);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = *v1++;
      v3 = (v3 + *(v4 + 16) * *(v4 + 20));
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v10 = a1[26];
  v11 = a1[27];
  if (v10 == v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(*v10 + 16) * *(*v10 + 20);
      v25 = 0;
      v26 = 0;
      v15 = v14 + v12;
      if ((v14 + v12) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v24 = *a2 + 4 * v12;
      LODWORD(v25) = v14;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v24, v13, v7, v8, v9);
      v10 += 8;
      v12 = v15;
    }

    while (v10 != v11);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v17 = a1[32];
  for (i = a1[33]; v17 != i; ++v17)
  {
    (*(**v17 + 184))(*v17, &v24);
    v22 = 0;
    v23 = 0;
    if ((v25 + v15) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
    }

    v21 = *a2 + 4 * v15;
    LODWORD(v22) = v25;
    kaldi::VectorBase<float>::CopyFromVec(&v21, &v24, v18, v19, v20);
    v15 += v25;
  }

  if (v15 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.align + 2, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v24);
}

void sub_1851B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.nreloc, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[26];
  v7 = a1[27];
  if (v6 != v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      v10 = *(*v6 + 16) * *(*v6 + 20);
      v18 = 0;
      v19 = 0;
      v11 = v10 + v8;
      if ((v10 + v8) > *(a2 + 8))
      {
        break;
      }

      v17 = (*a2 + 4 * v8);
      LODWORD(v18) = v10;
      kaldi::CuMatrixBase<float>::CopyRowsFromVec(v9, &v17);
      ++v6;
      v8 = v11;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v11 = 0;
LABEL_8:
  v13 = a1[32];
  v12 = a1[33];
  if (v13 != v12)
  {
    while (1)
    {
      v14 = (*(**v13 + 176))();
      v15 = *v13;
      v18 = 0;
      v19 = 0;
      v16 = v14 + v11;
      if ((v14 + v11) > *(a2 + 8))
      {
        goto LABEL_15;
      }

      v17 = (*a2 + 4 * v11);
      LODWORD(v18) = v14;
      (*(*v15 + 192))(v15, &v17);
      ++v13;
      v11 = v16;
      if (v13 == v12)
      {
        goto LABEL_13;
      }
    }
  }

  v16 = v11;
LABEL_13:
  if (v16 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.reserved2, "shift == wei_src.Dim()", v5);
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CuMatrixBase<float>::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  (*(*a1 + 168))(a1, &v19, 0);
  v3 = a1[26];
  for (i = a1[27]; v3 != i; ++v3)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics<float>(*v3);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, v7);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[32];
  for (j = a1[33]; v8 != j; v8 += 8)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "\n## Feature Transform: input-dim ", 33);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", output-dim ", 13);
    v11 = std::ostream::operator<<();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
    (*(**v8 + 64))(&__p);
    if ((v18 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v3 = *(a1 + 256);
  for (i = *(a1 + 264); v3 != i; v3 += 8)
  {
    (*(**v3 + 72))(__p);
    if ((v10 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[4], "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[6], "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = off_276F40;
        v37 = 0u;
        v38 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.addr + 4, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = off_276F40;
      v34 = 0u;
      v35 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v36 = off_276F40;
      v37 = 0u;
      v38 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_185D5C(_Unwind_Exception *a1)
{
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 735);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = off_276F88;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = (*v15)[4] * (*v15)[5];
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_388.sectname[10], "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_1862C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 920);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *a3 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = 0;
    v14 = v12 >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v15 = *v10;
      v10 += 8;
      v13 += *(v15 + 16) * *(v15 + 20);
      *a3 = v13;
      --v14;
    }

    while (v14);
  }

  v16 = *(a1 + 232);
  v17 = *(a1 + 240);
  *a2 = 0;
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v16 + 8 * v18++), v6, v7, v8, v9);
      v16 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v16) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(void *result)
{
  v1 = result[27] - result[26];
  if (result[30] - result[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(result + 29, v1 >> 3);
    if (result[27] != result[26])
    {
      operator new();
    }
  }
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v9 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v9);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 280), *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 304), *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 328), *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_186A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11)
{
  v13 = *a9;
  if (*a9)
  {
    *(v11 + 20) = v13;
    operator delete(v13);
  }

  v14 = *a10;
  if (*a10)
  {
    *(v11 + 17) = v14;
    operator delete(v14);
  }

  v15 = *a11;
  if (*a11)
  {
    *(v11 + 14) = v15;
    operator delete(v15);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v11);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](result, (*result + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(result, a2 - v2);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(uint64_t a1, unint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 939);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v8++), v4, v5, v6, v7);
    }

    while (v8 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v11 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *(a1 + 256);
  if (v6)
  {
    *(a1 + 264) = v6;
    operator delete(v6);
  }

  v11 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v7 = *(a1 + 176);
  if (v7)
  {
    *(a1 + 184) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    *(a1 + 160) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 128);
  if (v9)
  {
    *(a1 + 136) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    *(a1 + 112) = v10;
    operator delete(v10);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  operator delete();
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v128 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v127);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v126);
  v112 = 0;
  v125 = -1;
  *(a1 + 460) = 1;
  memset(v124, 0, sizeof(v124));
  v113 = (a1 + 200);
  v10 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v124, v8, v9);
    if ((SHIBYTE(v124[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v124[2]) > 0xDu)
      {
        if (HIBYTE(v124[2]) <= 0x11u)
        {
          if (HIBYTE(v124[2]) == 14)
          {
            v35 = v124;
            goto LABEL_174;
          }

          if (HIBYTE(v124[2]) != 15)
          {
            if (HIBYTE(v124[2]) != 17)
            {
              goto LABEL_278;
            }

            v11 = v124[0] == 0x69446465626D453CLL && v124[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v124[2]) != 62)
            {
              goto LABEL_278;
            }

LABEL_17:
            memset(&__p, 0, sizeof(__p));
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v124[0] == 0x61526E7261654C3CLL && *(v124 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v124[0] != 0x656E67697373413CLL || *(v124 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_278;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v124[2]) != 18)
        {
          if (HIBYTE(v124[2]) != 19)
          {
            if (HIBYTE(v124[2]) != 20)
            {
              goto LABEL_278;
            }

            v18 = v124[0] == 0x6C616974696E493CLL && v124[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v124[2]) != 1047814499)
            {
              goto LABEL_278;
            }

            goto LABEL_180;
          }

          if (v124[0] != 0x61725474696E493CLL || v124[1] != 0x79546D726F66736ELL || *(&v124[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

          goto LABEL_103;
        }

        if (v124[0] != 0x6E6569646172473CLL || v124[1] != 0x7079546D726F4E74 || LOWORD(v124[2]) != 15973)
        {
          goto LABEL_278;
        }

LABEL_199:
        v30 = &v126;
        goto LABEL_200;
      }

      if (HIBYTE(v124[2]) > 0xAu)
      {
        if (HIBYTE(v124[2]) == 11)
        {
          v38 = v124[0] == 0x756F72476D754E3CLL && *(v124 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v124[0] == 0x6C6261546D754E3CLL && *(v124 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_278;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v124[2]) != 12)
        {
          if (v124[0] != 0x74536D617261503CLL || *(v124 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_278;
          }

          goto LABEL_189;
        }

        if (v124[0] == 0x536D6F646E61523CLL && LODWORD(v124[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v124[0] != 0x69536261636F563CLL || LODWORD(v124[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v124[2]) != 9)
      {
        if (HIBYTE(v124[2]) != 10)
        {
          goto LABEL_278;
        }

        if (v124[0] != 0x6D65744978614D3CLL || LOWORD(v124[1]) != 15987)
        {
          goto LABEL_278;
        }

LABEL_66:
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v124[0] == 0x6461724778614D3CLL && LOBYTE(v124[1]) == 62;
      goto LABEL_138;
    }

    v14 = v124[1];
    if (v124[1] <= 12)
    {
      if (v124[1] > 10)
      {
        if (v124[1] == &dword_8 + 3)
        {
          v40 = *v124[0] == 0x756F72476D754E3CLL && *(v124[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v124[0] == 0x6C6261546D754E3CLL && *(v124[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v124[0] == 0x536D6F646E61523CLL && *(v124[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v125;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7, v8, v9);
            goto LABEL_203;
          }

          if (*v124[0] == 0x69536261636F563CLL && *(v124[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v124[1] == &dword_8 + 1)
        {
          v34 = *v124[0] == 0x6461724778614D3CLL && *(v124[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_278;
          }

          goto LABEL_190;
        }

        if (v124[1] != &dword_8 + 2)
        {
          goto LABEL_158;
        }

        if (*v124[0] == 0x6D65744978614D3CLL && *(v124[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v124[1] > 16)
    {
      if (v124[1] != dword_10 + 1)
      {
        if (v124[1] == dword_10 + 2)
        {
          if (*v124[0] != 0x6E6569646172473CLL || *(v124[0] + 1) != 0x7079546D726F4E74 || *(v124[0] + 8) != 15973)
          {
            goto LABEL_278;
          }

          goto LABEL_199;
        }

        if (v124[1] == dword_10 + 3)
        {
          if (*v124[0] != 0x61725474696E493CLL || *(v124[0] + 1) != 0x79546D726F66736ELL || *(v124[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

LABEL_103:
          v30 = &v127;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v124[0] == 0x69446465626D453CLL && *(v124[0] + 1) == 0x736E6F69736E656DLL && *(v124[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v124[1];
LABEL_158:
      if (v14 != (&dword_C + 3))
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v124[1] == &dword_C + 1)
    {
      if (*v124[0] != 0x74536D617261503CLL || *(v124[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_278;
      }

LABEL_189:
      v7 = &v128;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7, v8, v9);
      goto LABEL_203;
    }

    if (v124[1] != &dword_C + 3)
    {
      goto LABEL_158;
    }

    v25 = *v124[0] == 0x61526E7261654C3CLL && *(v124[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v124[0] != 0x656E67697373413CLL || *(v124[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    memset(&__p, 0, sizeof(__p));
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v124[1];
LABEL_164:
  if (v14 == &dword_14)
  {
    v45 = *v124[0] == 0x6C616974696E493CLL && *(v124[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v124[0] + 4) == 1047814499)
    {
LABEL_180:
      v112 = 1;
      goto LABEL_203;
    }
  }

  v47 = v124[1];
  if (v124[1] != &dword_C + 2)
  {
    goto LABEL_208;
  }

  v35 = v124[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460), v8, v9);
    goto LABEL_203;
  }

  if ((HIBYTE(v124[2]) & 0x80) == 0)
  {
    if (HIBYTE(v124[2]) == 12)
    {
LABEL_206:
      v55 = v124;
      goto LABEL_210;
    }

    goto LABEL_278;
  }

  v47 = v124[1];
LABEL_208:
  if (v47 != &dword_C)
  {
    goto LABEL_278;
  }

  v55 = v124[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_278:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 271);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v124[2]) >= 0)
    {
      v107 = v124;
    }

    else
    {
      v107 = v124[0];
    }

    if (SHIBYTE(v124[2]) >= 0)
    {
      v108 = HIBYTE(v124[2]);
    }

    else
    {
      v108 = v124[1];
    }

    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v107, v108);
    v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v10 >= 1)
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v129[0] = 0;
    v120 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, &v114, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(&v114);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, v129, v62, v63);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v120, v64, v65);
    kaldi::nnet1::Component::NewComponentOfType(v61, v129[0], v120);
  }

  v10 = (a1 + 96);
  if ((v112 & 1) == 0)
  {
    goto LABEL_235;
  }

  v67 = *(a1 + 256);
  v66 = *(a1 + 264);
  if (v67 == v66)
  {
    if (!*(*v67 + 12))
    {
      goto LABEL_233;
    }

LABEL_288:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 304);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v111 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, " actual dim is ", 15);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v68 = 0;
  v69 = *(a1 + 256);
  do
  {
    v70 = *v69++;
    v68 += *(v70 + 8);
  }

  while (v69 != v66);
  if (v68 != *(*v67 + 12))
  {
    goto LABEL_288;
  }

  v71 = 0;
  do
  {
    v72 = *v67;
    if (!*v67)
    {
LABEL_285:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 326);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    if (v73)
    {
      v74 = v73;
      kaldi::Matrix<float>::Matrix(&__p, v73[3], v73[2], 0, 0);
      v75 = v74[3];
      v117 = 0;
      v118 = 0;
      v119 = 0;
      kaldi::Vector<float>::Resize(&v117, v75, 0, v76, v77);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(&v114, &__p, v71, v74[2]);
      kaldi::MatrixBase<float>::AddToDiag(&v114, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::nnet1::AffineTransform::SetLinearity(v74, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v74, &v117);
      v78 = v74[2];
      kaldi::Vector<float>::Destroy(&v117);
    }

    else
    {
      if (!v79)
      {
        goto LABEL_285;
      }

      v80 = v79;
      kaldi::Matrix<float>::Matrix(&__p, v79[3], v79[2], 0, 0);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(&v114, &__p, v71, *(v80 + 8));
      kaldi::MatrixBase<float>::AddToDiag(&v114, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v80, &__p);
      v78 = *(v80 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v71 = v78 + v71;
    ++v67;
  }

  while (v67 != v66);
  if (v71 != v68)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_108.flags + 3, "shift == total_dim", v81);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 332);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v127);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v126);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 339);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v118 = 0;
  v119 = 0;
  v117 = &v118;
  if (*v10 < 1)
  {
    v89 = 0;
  }

  else
  {
    v84 = 0;
    do
    {
      v85 = *(*(a1 + 176) + 4 * v84);
      LODWORD(v114) = v85;
      if (v85 < 0 || v85 >= *v113)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[1], "table_idx >= 0 && table_idx < num_tables_", v83);
      }

      v86 = *(*(a1 + 104) + 4 * v84);
      v87 = *(*(a1 + 152) + 4 * v84);
      __p.__r_.__value_.__r.__words[0] = &v114;
      v88 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v117, &v114, &std::piecewise_construct, &__p);
      *(v88 + 8) = v86;
      *(v88 + 9) = v87;
      ++v84;
    }

    while (v84 < *v10);
    v89 = v119;
  }

  if (v89 != *v113)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[4], "table_dims.size() == num_tables_", v83);
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), v89);
  if (v125 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v125);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v120 = 0;
  if (*v113 >= 1)
  {
    *v129 = &v120;
    v90 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v117, &v120, &std::piecewise_construct, v129);
    v91 = *(v90 + 8);
    v92 = *(v90 + 9);
    kaldi::Matrix<float>::Matrix(&v114, v91, v92, 0, 0);
    if (v91 < 1)
    {
LABEL_266:
      operator new();
    }

    v96 = 0;
    while (v92 < 1)
    {
LABEL_265:
      if (++v96 == v91)
      {
        goto LABEL_266;
      }
    }

    v97 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v103 = *&v128;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v93, v94, v95);
        if (HIDWORD(v115) <= v96 || v97 >= v115)
        {
LABEL_276:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v95);
        }

        v101 = v114 + 4 * (v96 * v116);
        v102 = v103 * v104;
LABEL_263:
        *&v101[4 * v97] = v102;
      }

      else if (inited == 1)
      {
        v98 = *&v128;
        v99 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v93, v94, v95);
        if (HIDWORD(v115) <= v96 || v97 >= v115)
        {
          goto LABEL_276;
        }

        v101 = v114 + 4 * (v96 * v116);
        v102 = (v99 + -0.5) * (v98 + v98);
        goto LABEL_263;
      }

      if (v92 == ++v97)
      {
        goto LABEL_265;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v114 = &__p.__r_.__value_.__r.__words[2];
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v114);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v117, v118);
  if (SHIBYTE(v124[2]) < 0)
  {
    operator delete(v124[0]);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }
}

void sub_188264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  a13 = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a18, a19);
  if (*(v28 - 177) < 0)
  {
    operator delete(*(v28 - 200));
  }

  if (*(v28 - 145) < 0)
  {
    operator delete(*(v28 - 168));
  }

  if (*(v28 - 121) < 0)
  {
    operator delete(*(v28 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_188284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x188294);
  }

  JUMPOUT(0x1882E4);
}

void sub_1882A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1882B4);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 503);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "must have at least one group, you used ", 39);
      std::ostream::operator<<();
    }

    else
    {
      v2 = *(result + 200);
      if (v2 <= 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 506);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "must have at least one embedding table, you used ", 49);
        std::ostream::operator<<();
      }

      else if (v1 < v2)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 509);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are only ", 15);
        v33 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " groups, but you set ", 21);
        v34 = std::ostream::operator<<();
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, " embedding tables");
      }

      else
      {
        v3 = *(result + 104);
        v4 = *(result + 112) - v3;
        v5 = v4 >> 2;
        if (v4 >> 2 == v1)
        {
          v6 = *(result + 128);
          if (*(result + 136) - v6 == v4)
          {
            v7 = *(result + 152);
            if (*(result + 160) - v7 == v4)
            {
              v8 = *(result + 176);
              if (*(result + 184) - v8 == v4)
              {
                v9 = *(result + 208);
                if (v2 == (*(result + 216) - v9) >> 3)
                {
                  v10 = *(result + 460);
                  if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
                  {
                    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 528);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
                    v42 = std::ostream::operator<<();
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " groups, but the number of feature transforms is ", 49);
                    std::ostream::operator<<();
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    do
                    {
                      v14 = *(v8 + 4 * v11);
                      if ((v14 & 0x80000000) != 0 || v14 >= v2)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 537);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v22 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "-th group has assigned table index ", 35);
                        v23 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " , the number of tables is ", 27);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      v15 = *(v3 + 4 * v11);
                      if (v15 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v25 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "-th group has invalid vocab size ", 33);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      v16 = *(v6 + 4 * v11);
                      if (v16 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 545);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v26 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-th group has invalid max item value ", 37);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      v17 = *(v7 + 4 * v11);
                      if (v17 <= 0)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 548);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v24 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-th group has invalid embedding dimension value ", 48);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      v18 = **(v9 + 8 * v14);
                      if (!v18 || *(v18 + 8) != v15)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v20 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "-th group has mismatched embedding table and vocab size ", 56);
                        v31 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " vs ", 4);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      if (*(v18 + 12) != v17)
                      {
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 557);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                        v21 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "-th group has mismatched embedding table and embedding dim ", 59);
                        v32 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " vs ", 4);
                        std::ostream::operator<<();
                        goto LABEL_40;
                      }

                      if (*(result + 460))
                      {
                        v19 = *(*(result + 256) + 8 * v11);
                        if (v17 != *(v19 + 8))
                        {
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 561);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                          v29 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "-th group has mismatched embedding table and feature transform ", 63);
                          v30 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " vs ", 4);
                          std::ostream::operator<<();
                          goto LABEL_40;
                        }

                        if (*(result + 12) != *(v19 + 12))
                        {
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 565);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the ", 4);
                          v27 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "-th group has feature transform output dim ", 43);
                          v28 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " does not match component output dim ", 37);
                          std::ostream::operator<<();
                          goto LABEL_40;
                        }
                      }

                      v12 += v17;
                      v13 += v16;
                      ++v11;
                    }

                    while (v1 != v11);
                    if (*(result + 8) == v13)
                    {
                      if ((v10 & 1) != 0 || v12 == *(result + 12))
                      {
                        *(result + 544) = 1;
                        return result;
                      }

                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 575);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Total embedding size of ", 24);
                      v43 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " doesn't match the component output size of ", 44);
                      v44 = std::ostream::operator<<();
                      std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, " when transforms are not used");
                    }

                    else
                    {
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 571);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "input dim of the component is ", 30);
                      v41 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " , while the input dim defined in max items is ", 47);
                      std::ostream::operator<<();
                    }
                  }
                }

                else
                {
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 524);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the actual number of embedding tables is ", 41);
                  v40 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " and different than ", 20);
                  std::ostream::operator<<();
                }
              }

              else
              {
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 521);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
                v38 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " groups, but ", 13);
                v39 = std::ostream::operator<<();
                std::operator<<[abi:ne200100]<std::char_traits<char>>(v39, " groups have assigned tables");
              }
            }

            else
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 518);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
              v37 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " groups, but the embedding dim list size is ", 44);
              std::ostream::operator<<();
            }
          }

          else
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 515);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
            v36 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " groups, but the max item list size is ", 39);
            std::ostream::operator<<();
          }
        }

        else
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 512);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are ", 10);
          v35 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " groups, but the number vocab list size is ", 43);
          std::ostream::operator<<();
        }
      }
    }

LABEL_40:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v61 = 0uLL;
  v62 = 0;
  *(a1 + 460) = 1;
  v58 = (a1 + 456);
  v8 = (a1 + 452);
  v9 = (a1 + 200);
  v10 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v61, v11, v12);
    if (SHIBYTE(v62) < 0)
    {
      v16 = *(&v61 + 1);
      if (*(&v61 + 1) == 11)
      {
        v33 = *v61 == 0x756F72476D754E3CLL && *(v61 + 3) == 0x3E7370756F72476DLL;
        v34 = v10;
        if (v33)
        {
          goto LABEL_108;
        }

        v35 = *v61 == 0x6C6261546D754E3CLL && *(v61 + 3) == 0x3E73656C6261546DLL;
        v34 = v9;
        if (v35)
        {
          goto LABEL_108;
        }
      }

      if (*(&v61 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v61 != 0x69536261636F563CLL || *(v61 + 8) != 1047750010)
      {
        v16 = *(&v61 + 1);
LABEL_20:
        if (v16 == 10 && *v61 == 0x6D65744978614D3CLL && *(v61 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v61 + 1) == 15)
        {
          if (*v61 == 0x656E67697373413CLL && *(v61 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v61 + 1) == 17)
        {
          v19 = *v61 == 0x69446465626D453CLL && *(v61 + 8) == 0x736E6F69736E656DLL;
          if (v19 && *(v61 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v61 + 1) == 9)
        {
          v24 = *v61 == 0x6461724778614D3CLL && *(v61 + 8) == 62;
          v25 = v8;
          if (v24)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v61 + 1) == 18)
        {
          v22 = *v61 == 0x6E6569646172473CLL && *(v61 + 8) == 0x7079546D726F4E74;
          if (v22 && *(v61 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v61 + 1) != 14)
        {
          if (*(&v61 + 1) != 15 || (*v61 == 0x61526E7261654C3CLL ? (v26 = *(v61 + 7) == 0x3E66656F43657461) : (v26 = 0), v25 = v58, !v26))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 408);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown token ", 14);
            if (v62 >= 0)
            {
              v55 = &v61;
            }

            else
            {
              v55 = v61;
            }

            if (v62 >= 0)
            {
              v56 = HIBYTE(v62);
            }

            else
            {
              v56 = *(&v61 + 1);
            }

            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_114;
        }

        v27 = v61;
        goto LABEL_102;
      }

LABEL_80:
      memset(__p, 0, 24);
      kaldi::ReadToken(a2, a3, __p, v13, v14);
      kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 104), v31);
LABEL_136:
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else if (HIBYTE(v62) > 0xDu)
    {
      if (HIBYTE(v62) > 0x10u)
      {
        if (HIBYTE(v62) == 17)
        {
          if (v61 != 0x69446465626D453CLL || *(&v61 + 1) != 0x736E6F69736E656DLL || v62 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          memset(__p, 0, 24);
          kaldi::ReadToken(a2, a3, __p, v13, v14);
          kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 152), v47);
          goto LABEL_136;
        }

        if (HIBYTE(v62) != 18)
        {
          goto LABEL_149;
        }

        v43 = v61 == 0x6E6569646172473CLL && *(&v61 + 1) == 0x7079546D726F4E74;
        if (!v43 || v62 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        memset(__p, 0, 24);
        kaldi::ReadToken(a2, a3, __p, v13, v14);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        goto LABEL_136;
      }

      if (HIBYTE(v62) != 14)
      {
        if (HIBYTE(v62) != 15)
        {
          goto LABEL_149;
        }

        if (v61 == 0x656E67697373413CLL && *(&v61 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          memset(__p, 0, 24);
          kaldi::ReadToken(a2, a3, __p, v13, v14);
          kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 176), v42);
          goto LABEL_136;
        }

        v29 = v61 == 0x61526E7261654C3CLL && *(&v61 + 7) == 0x3E66656F43657461;
        v25 = v58;
        if (!v29)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v27 = &v61;
LABEL_102:
      v38 = *v27;
      v39 = *(v27 + 6);
      if (v38 != 0x6E6172546573553CLL || v39 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460), v13, v14);
    }

    else if (HIBYTE(v62) > 0xAu)
    {
      if (HIBYTE(v62) != 11)
      {
        if (HIBYTE(v62) != 12)
        {
          goto LABEL_149;
        }

        if (v61 != 0x69536261636F563CLL || DWORD2(v61) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v36 = v61 == 0x756F72476D754E3CLL && *(&v61 + 3) == 0x3E7370756F72476DLL;
      v34 = v10;
      if (!v36)
      {
        v37 = v61 == 0x6C6261546D754E3CLL && *(&v61 + 3) == 0x3E73656C6261546DLL;
        v34 = v9;
        if (!v37)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v34, v13, v14);
    }

    else
    {
      if (HIBYTE(v62) != 9)
      {
        if (HIBYTE(v62) != 10)
        {
          goto LABEL_149;
        }

        if (v61 != 0x6D65744978614D3CLL || WORD4(v61) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        memset(__p, 0, 24);
        kaldi::ReadToken(a2, a3, __p, v13, v14);
        kaldi::SplitStringToIntegers<int>(__p, ",", 1, (a1 + 128), v32);
        goto LABEL_136;
      }

      v41 = v61 == 0x6461724778614D3CLL && BYTE8(v61) == 62;
      v25 = v8;
      if (!v41)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v25, v13, v14);
    }
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), *(a1 + 200));
  if (*v9 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v48, v49, v50, v51);
  if (*(a1 + 460) == 1 && *v10 >= 1)
  {
    v52 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v53 = kaldi::nnet1::Component::Read(a2, a3, a4);
      if (!v53)
      {
        v59 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 425);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
      }

      if (!v59)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v59);
      ++v52;
    }

    while (v52 < *v10);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }
}

void sub_189684(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 96));
  kaldi::WriteToken(a2, a3, "<NumTables>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 200));
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v10, v11);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v12, v13);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v14, v15);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v16, v17);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v18, v19);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v20, v21);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v22, v23);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v37);
  kaldi::WriteToken(a2, a3, v37, v24, v25);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v26, v27);
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 456));
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v28, v29);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v30, v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v32, v33);
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 452));
  kaldi::WriteToken(a2, a3, "<UseTransform>", v34, v35);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_1898C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CompressedMatrix::Write(v12, a2, a3, a4, v9);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = **v1;
      if (v4)
      {
        LODWORD(v4) = *(v4 + 12) * *(v4 + 8);
      }

      v3 = (v4 + v3);
      ++v1;
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v10 = a1[26];
  v11 = a1[27];
  if (v10 == v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = **v10;
      if (v14)
      {
        LODWORD(v14) = *(v14 + 12) * *(v14 + 8);
      }

      v25 = 0;
      v26 = 0;
      v15 = v14 + v12;
      if ((v14 + v12) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v24 = *a2 + 4 * v12;
      LODWORD(v25) = v14;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v24, v13, v7, v8, v9);
      ++v10;
      v12 = v15;
    }

    while (v10 != v11);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v17 = a1[32];
  for (i = a1[33]; v17 != i; ++v17)
  {
    (*(**v17 + 184))(*v17, &v24);
    v22 = 0;
    v23 = 0;
    if ((v25 + v15) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
    }

    v21 = *a2 + 4 * v15;
    LODWORD(v22) = v25;
    kaldi::VectorBase<float>::CopyFromVec(&v21, &v24, v18, v19, v20);
    v15 += v25;
  }

  if (v15 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.align + 2, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v24);
}

void sub_189C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v4 = *(a2 + 8);
  result = (*(*a1 + 176))(a1);
  if (v4 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.nreloc, "wei_src.Dim() == NumParams()", v6);
  }

  v7 = a1[26];
  v8 = a1[27];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = **v7;
      if (v11)
      {
        LODWORD(v11) = *(v11 + 12) * *(v11 + 8);
      }

      v19 = 0;
      v20 = 0;
      v12 = v11 + v9;
      if ((v11 + v9) > *(a2 + 8))
      {
        break;
      }

      v18 = (*a2 + 4 * v9);
      LODWORD(v19) = v11;
      result = kaldi::CompressedMatrix::CopyRowsFromVec<float>(v10, &v18);
      ++v7;
      v9 = v12;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_17:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v12 = 0;
LABEL_10:
  v14 = a1[32];
  v13 = a1[33];
  if (v14 != v13)
  {
    while (1)
    {
      v15 = (*(**v14 + 176))();
      v16 = *v14;
      v19 = 0;
      v20 = 0;
      v17 = v15 + v12;
      if ((v15 + v12) > *(a2 + 8))
      {
        goto LABEL_17;
      }

      v18 = (*a2 + 4 * v12);
      LODWORD(v19) = v15;
      result = (*(*v16 + 192))(v16, &v18);
      ++v14;
      v12 = v17;
      if (v14 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = v12;
LABEL_15:
  if (v17 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.reserved2, "shift == wei_src.Dim()", v6);
  }

  return result;
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CompressedMatrix::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PerturbParams()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "PerturbParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 661);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  (*(*a1 + 168))(a1, &v19, 0);
  v3 = a1[26];
  for (i = a1[27]; v3 != i; ++v3)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics(*v3);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v7 = v18;
    }

    else
    {
      v7 = v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, v7);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[32];
  for (j = a1[33]; v8 != j; v8 += 8)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "\n## Feature Transform: input-dim ", 33);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", output-dim ", 13);
    v11 = std::ostream::operator<<();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
    (*(**v8 + 64))(&__p);
    if ((v18 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t *kaldi::nnet1::MomentStatistics(kaldi::nnet1 *this)
{
  kaldi::Matrix<float>::Matrix(v12, this);
  v2 = kaldi::ContextDependency::CentralPosition(v12);
  v3 = kaldi::ContextDependency::ContextWidth(v12);
  memset(v11, 0, sizeof(v11));
  kaldi::Vector<float>::Resize(v11, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat(v11, v12);
  kaldi::nnet1::MomentStatistics<float>(v11, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v11);
  return kaldi::Matrix<float>::~Matrix(v12);
}

void sub_18A330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v3 = *(a1 + 256);
  for (i = *(a1 + 264); v3 != i; v3 += 8)
  {
    (*(**v3 + 72))(__p);
    if ((v10 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[4], "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[6], "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = off_276F40;
        v37 = 0u;
        v38 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.addr + 4, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = off_276F40;
      v34 = 0u;
      v35 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v36 = off_276F40;
      v37 = 0u;
      v38 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_18A950(_Unwind_Exception *a1)
{
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 735);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 762);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 846);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = off_276F88;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = (*v15)[4] * (*v15)[5];
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_388.sectname[10], "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_18AF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 920);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *a3 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = 0;
    v14 = v12 >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v15 = **v10;
      if (v15)
      {
        LODWORD(v15) = *(v15 + 12) * *(v15 + 8);
      }

      v13 += v15;
      *a3 = v13;
      v10 += 8;
      --v14;
    }

    while (v14);
  }

  v16 = *(a1 + 232);
  v17 = *(a1 + 240);
  *a2 = 0;
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v16 + 8 * v18++), v6, v7, v8, v9);
      v16 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v16) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(void *result)
{
  v1 = result[27] - result[26];
  if (result[30] - result[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(result + 29, v1 >> 3);
    if (result[27] != result[26])
    {
      operator new();
    }
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 949);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PerturbParams(void *a1, float a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  memset(&v25[1], 0, 24);
  v25[0] = off_277020;
  v21 = 1729;
  v6 = 5489;
  v22 = 0;
  v23 = 5489;
  v7 = 1;
  for (i = 3; i != 626; ++i)
  {
    v9 = 1812433253 * (v6 ^ (v6 >> 30));
    v6 = v9 + v7;
    *(&v21 + i) = i + v9 - 2;
    ++v7;
  }

  v24 = 0;
  v10 = a1[26];
  for (j = a1[27]; v10 != j; ++v10)
  {
    kaldi::CuVector<float>::Resize(v25, (*(*v10 + 16) * *(*v10 + 20)), 1u, v4, v5);
    kaldi::CuRandom::RandGauss<float>(&v21, v25, 0.0, 1.0);
    v12 = *v10;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, v25, *(*v10 + 20));
    kaldi::CuMatrixBase<float>::AddMat(v12, &v18, 111, v13, v14, a2, 1.0);
    v18 = off_276F40;
    v19 = 0u;
    v20 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  }

  v16 = a1[32];
  v15 = a1[33];
  while (v16 != v15)
  {
    (*(**v16 + 216))(a2);
    v16 += 8;
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  return kaldi::CuVector<float>::~CuVector(v25);
}

void sub_18B3F8(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::CuVector<float>::~CuVector((v1 - 96));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v11 = *(a2 + 20);
  *(a1 + 464) = v11;
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.segname[14], "input.NumCols() == input_dim_", v10);
  }

  if (*(a3 + 20) != v11)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.segname[15], "diff.NumRows() == batch_size", v10);
  }

  if (*(a3 + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.addr, "diff.NumCols() == output_dim_", v10);
  }

  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 328), *(a1 + 96));
  if (*(a1 + 460) == 1 && *(a1 + 96) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(a1 + 328) + v13;
      *(v15 + 32) = a4;
      kaldi::nnet1::Component::Backpropagate(*(*(a1 + 256) + 8 * v14), *(a1 + 280) + v13, *(a1 + 304) + v13, a3, v15, a5);
      v16 = *(*(a1 + 256) + 8 * v14);
      (*(*v16 + 232))(v16, *(a1 + 280) + v13, a3, a4, a5);
      ++v14;
      v13 += 48;
    }

    while (v14 < *(a1 + 96));
  }

  if (*(a1 + 80) > 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v43, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 787);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v43, "WordMultiVecComponent doesn't support multi-batches yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v43);
  }

  memset(v44, 0, sizeof(v44));
  v43 = off_276F40;
  v17 = *(a1 + 232);
  if (*(a1 + 240) != v17)
  {
    v18 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::SetZero(*(v17 + 8 * v18++));
      v17 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v17) >> 3);
  }

  if (*(a1 + 96) < 1)
  {
    v20 = 0;
  }

  else
  {
    v38 = a3;
    v39 = a4;
    v19 = 0;
    v20 = 0;
    v21 = v11;
    v22 = 0;
    v40 = a1 + 352;
    do
    {
      if (*(a1 + 460) == 1)
      {
        v23 = (*(a1 + 328) + 48 * v19);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, v38, 0, *(v38 + 20), v22, *(*(a1 + 152) + 4 * v19));
        *&v44[0] = v42[0];
        *(v44 + 8) = *&v42[1];
        *(&v44[1] + 1) = v42[3];
        v41 = off_276F40;
        memset(v42, 0, sizeof(v42));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v22 = (*(*(a1 + 152) + 4 * v19) + v22);
        v23 = &v43;
      }

      v24 = *(a1 + 452);
      if (v24 > 0.0)
      {
        *(a1 + 384) = a4;
        kaldi::CuMatrix<float>::operator=(v40, v23);
        v25 = *(a1 + 448);
        if (v25 == 2)
        {
          v27 = *(a1 + 84);
          *(a1 + 432) = a4;
          kaldi::CuMatrix<float>::Resize(a1 + 400, *(a1 + 372), *(a1 + 368), 1, 0);
          if (v27)
          {
            v31 = v21;
          }

          else
          {
            v31 = 1.0;
          }

          v23 = (a1 + 352);
          kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v40, (a1 + 400), v24 * v31, v28, v29, v30);
        }

        else
        {
          v23 = (a1 + 352);
          if (v25 == 1)
          {
            if (*(a1 + 84))
            {
              v26 = v21;
            }

            else
            {
              v26 = 1.0;
            }

            v23 = (a1 + 352);
            kaldi::nnet1::UpdatableComponent::ClipGradient(v40, v24 * v26);
          }
        }
      }

      v32 = *(*(a1 + 176) + 4 * v19);
      *(*(*(a1 + 232) + 8 * v32) + 32) = a4;
      if (*(*(a1 + 128) + 4 * v19) >= 1)
      {
        v33 = v22;
        v34 = 0;
        do
        {
          v35 = *(*(a1 + 232) + 8 * v32);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a2, 0, *(a2 + 20), (v20 + v34), 1);
          kaldi::CuMatrixBase<float>::AddIndexedRows(v35, &v41, v23, v36, v37, 1.0);
          v41 = off_276F40;
          memset(v42, 0, sizeof(v42));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v34;
        }

        while (v34 < *(*(a1 + 128) + 4 * v19));
        v20 += v34;
        v22 = v33;
        a4 = v39;
      }

      ++v19;
    }

    while (v19 < *(a1 + 96));
  }

  if (v20 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_338.sectname[6], "shift == input_dim_", v12);
  }

  v43 = off_276F40;
  memset(v44, 0, sizeof(v44));
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  if (v9 > 0.0 && *(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 857);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "Using transform with gradient compression is not supported yet");
    goto LABEL_19;
  }

  v11 = *(a1 + 256);
  v12 = *(a1 + 264);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 256))(v13, a2, a3);
  }

  v14 = *(a1 + 56);
  if (*(a1 + 84))
  {
    v14 = v14 / *(a1 + 464);
  }

  if (v9 > 0.0)
  {
    if (*(a1 + 80) < 2)
    {
      if (*(a1 + 480) == *(a1 + 472))
      {
        kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
      }

      kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 472), v10, v9, v6, v7, v8);
      goto LABEL_13;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 868);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "the multi batch gradient quantization does not work yet");
LABEL_19:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

LABEL_13:
  v15 = *(a1 + 208);
  if (*(a1 + 216) != v15)
  {
    v16 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::AddMat(*(v15 + 8 * v16), *(*(a1 + 232) + 8 * v16), 111, v7, v8, *(a1 + 456) * -v14, 1.0);
      ++v16;
      v15 = *(a1 + 208);
    }

    while (v16 < (*(a1 + 216) - v15) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 957);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Not implemented yet when transforms are used");
    goto LABEL_14;
  }

  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 960);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Weights are already vectorized");
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v11, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 963);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Performing vectorization of WordMultiVecComponent", 49);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v11);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
  }

  v7 = (*(*a1 + 176))(a1, a2);
  kaldi::CuSubVector<float>::CuSubVector(v11, a3, 0, v7, v8);
  v9.i32[0] = *(a1 + 456);
  kaldi::CuVectorBase<float>::Set(v11, v9);
  v10 = *(a3 + 16) - v7;
  *(a3 + 8) += 4 * v7;
  *(a3 + 16) = v10;
  *(a3 + 24) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (a4[1] - *a4 != 32)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 983);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "veccorrs->size() == 1");
    goto LABEL_14;
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
  }

  *(a1 + 16) = 1;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v11, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 994);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Done  vectorization of WordMultiVecComponent", 44);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v11);
  }
}

char **std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(char **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vdeallocate(result);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = kaldi::CuMatrix<float>::operator=(v8, v6);
        v6 += 48;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    if (v11 != v8)
    {
      v15 = v11 - 48;
      v16 = (v11 - 48);
      v17 = (v11 - 48);
      do
      {
        v18 = *v17;
        v17 -= 48;
        result = (*(v18 + 16))(v16);
        v15 -= 48;
        v19 = v16 == v8;
        v16 = v17;
      }

      while (!v19);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::CuMatrix<float>::operator=(v8, v14);
        v14 += 48;
        v8 += 48;
        v13 -= 48;
      }

      while (v13);
      v11 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void std::vector<kaldi::CuMatrix<float>>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 48;
      v6 = v3 - 48;
      v7 = v3 - 48;
      do
      {
        v8 = *v7;
        v7 -= 48;
        (*(v8 + 16))(v6);
        v5 -= 48;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v9 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v9);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 280), *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 304), *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 328), *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_18C564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11)
{
  v13 = *a9;
  if (*a9)
  {
    *(v11 + 20) = v13;
    operator delete(v13);
  }

  v14 = *a10;
  if (*a10)
  {
    *(v11 + 17) = v14;
    operator delete(v14);
  }

  v15 = *a11;
  if (*a11)
  {
    *(v11 + 14) = v15;
    operator delete(v15);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v11);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix<float>(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  kaldi::Matrix<float>::Matrix<float>(v7, a2, 111, a4, a5);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v7);
  kaldi::Matrix<float>::~Matrix(v7);
  return a1;
}

void sub_18C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](kaldi::CompressedMatrix ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](uint64_t result, kaldi::CompressedMatrix **a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(result + 8) = a2;
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](int a1, kaldi::CompressedMatrix *this)
{
  if (this)
  {
    kaldi::CompressedMatrix::Destroy(this);

    operator delete();
  }
}

void DSP::LP(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  std::vector<double>::vector[abi:ne200100](&__p, a2 + 1);
  if (v13 != __p)
  {
    v6 = 0;
    v7 = 0;
    v8 = (v4 - v5) >> 3;
    do
    {
      cblas_ddot_NEWLAPACK();
      v9 = __p;
      v10 = v13;
      *(__p + v6) = v11;
      ++v7;
      v6 += 8;
      LODWORD(v8) = v8 - 1;
    }

    while (v7 < (v10 - v9) >> 3);
  }

  DSP::levinson_durbin(&__p, a3);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_18CB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::levinson_durbin(double **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1] - *a1;
  if (**a1 == 0.0)
  {
    __p[0] = 0;
    std::vector<double>::vector[abi:ne200100](a2, v3 >> 3, __p);
    **a2 = 0x3FF0000000000000;
  }

  else
  {
    std::vector<double>::vector[abi:ne200100](a2, (v3 >> 3));
    std::vector<double>::vector[abi:ne200100](__p, (v3 >> 3));
    v5 = *a2;
    **a2 = 0x3FF0000000000000;
    v6 = __p[0];
    *__p[0] = 0x3FF0000000000000;
    if (((v3 >> 3) - 1) >= 1)
    {
      v7 = 0;
      v8 = *a1;
      v9 = **a1;
      v10 = (v3 >> 3);
      v11 = 1;
      do
      {
        if (v11 < 2)
        {
          v16 = *&v8[8 * v11] / v9;
          *&v5[v11] = v16;
          v17 = -v16;
        }

        else
        {
          v12 = 0.0;
          v13 = v6 + 1;
          v14 = v7;
          do
          {
            v15 = *v13++;
            v12 = v12 + v15 * *&v8[8 * v14--];
          }

          while (v14);
          v16 = (*&v8[8 * v11] - v12) / v9;
          *&v5[v11] = v16;
          v17 = -v16;
          v18 = 1;
          v19 = v7;
          do
          {
            *&v5[v18] = v6[v18] + v17 * v6[v19];
            ++v18;
            --v19;
          }

          while (v19);
        }

        v9 = v9 * (v17 * v16 + 1.0);
        v20 = (v3 >> 3);
        v21 = v6;
        v22 = v5;
        do
        {
          v23 = *v22++;
          *v21++ = v23;
          --v20;
        }

        while (v20);
        ++v11;
        ++v7;
      }

      while (v11 != v10);
      v24 = (v5 + 1);
      v25 = v10 - 1;
      do
      {
        *v24 = -*v24;
        ++v24;
        --v25;
      }

      while (v25);
    }

    *v5 = 0x3FF0000000000000;
    __p[1] = v6;
    operator delete(v6);
  }
}

void sub_18CD08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_18CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::firfilter(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = (v6 - *a1) >> 3;
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v5, v6, v7);
  v8 = v19 - 8;
  if (__p != v19 && v8 > __p)
  {
    v10 = __p + 8;
    do
    {
      v11 = *(v10 - 1);
      *(v10 - 1) = *v8;
      *v8 = v11;
      v8 -= 8;
      v12 = v10 >= v8;
      v10 += 8;
    }

    while (!v12);
  }

  v13 = (a2[1] - *a2) >> 3;
  v17 = 0;
  std::vector<double>::vector[abi:ne200100](a3, v13, &v17);
  if (a2[1] != *a2)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      cblas_ddot_NEWLAPACK();
      *(*a3 + 8 * v14) = v16;
      ++v15;
      ++v14;
    }

    while (v14 < (a2[1] - *a2) >> 3);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_18D010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::fft(DSP *this, unint64_t a2, int a3)
{
  v3 = 2 * a2;
  if (2 * a2)
  {
    v5 = 1;
    v6 = 1;
    do
    {
      if (v6 > v5)
      {
        v7 = (this + 4 * v6);
        v8 = *v7;
        v9 = (this + 4 * v5);
        *v7 = *v9;
        *v9 = v8;
        v10 = v7[1];
        v7[1] = v9[1];
        v9[1] = v10;
      }

      if (a2 < 2 || v6 <= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = a2;
        do
        {
          v12 = v11;
          v6 -= v11;
          v11 >>= 1;
        }

        while (v12 >= 4 && v6 > v11);
      }

      v6 += v11;
      v5 += 2;
    }

    while (v5 < v3);
    if (v3 >= 3)
    {
      v13 = a3;
      v14 = 2;
      do
      {
        v15 = 2 * v14;
        v16 = sin(6.28318531 / v14 * v13 * 0.5);
        v17 = sin(6.28318531 / v14 * v13);
        if (v14)
        {
          v18 = v16 * (v16 * -2.0);
          v19 = 4 * v14;
          v20 = 1.0;
          v21 = 0.0;
          v22 = this;
          v23 = 2;
          v24 = 1;
          do
          {
            v25 = -v21;
            if (v24 <= v3)
            {
              v26 = v22;
              v27 = v23;
              do
              {
                v28 = (v26 + v19);
                v29 = *(v26 + v19 + 4);
                v30 = *(v26 + v19 + 8);
                v31 = v25 * v30 + v20 * v29;
                *&v29 = v21 * v29 + v20 * v30;
                v28[1] = *(v26 + 1) - v31;
                LODWORD(v30) = *(v26 + 2);
                v28[2] = *&v30 - *&v29;
                *(v26 + 1) = *(v26 + 1) + v31;
                *(v26 + 2) = *&v30 + *&v29;
                v27 += v15;
                v26 = (v26 + 8 * v14);
              }

              while (v27 - 1 <= v3);
            }

            v32 = v17 * v20;
            v20 = v20 + v17 * v25 + v20 * v18;
            v24 += 2;
            v21 = v21 + v32 + v21 * v18;
            v23 += 2;
            v22 = (v22 + 8);
          }

          while (v24 < v14);
        }

        v14 *= 2;
      }

      while (v3 > v15);
    }
  }
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void DSP::high_pass_filter(unint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  std::vector<double>::resize(a2, (((a1[1] - *a1) >> 3) >> 1) + a2[1] - *a2, a2[1] - 1);
  std::vector<double>::vector[abi:ne200100](&__p, (a1[1] - *a1) >> 3, *a2);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *a2, __p, v22, (v22 - __p) >> 3);
  std::vector<double>::vector[abi:ne200100](a3, a2[1] - *a2);
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 - *a1;
  if (v6 != *a1)
  {
    v9 = (v6 - 8);
    if (v9 > v7)
    {
      v10 = v7 + 8;
      do
      {
        v11 = *(v10 - 8);
        *(v10 - 8) = *v9;
        *v9-- = v11;
        v12 = v10 >= v9;
        v10 += 8;
      }

      while (!v12);
    }
  }

  if (a2[1] == *a2)
  {
    v15 = *a3;
  }

  else
  {
    v13 = 0;
    v14 = 1;
    do
    {
      cblas_ddot_NEWLAPACK();
      v15 = *a3;
      *(*a3 + 8 * v13) = v16;
      ++v14;
      ++v13;
    }

    while (v13 < a2[1] - *a2);
    v8 = a1[1] - *a1;
  }

  v17 = ((v8 >> 3) * 1.5);
  if (v17)
  {
    v18 = &v15[8 * v17];
    v19 = a3[1];
    v20 = v19 - v18;
    if (v19 != v18)
    {
      memmove(v15, v18, v19 - v18);
    }

    a3[1] = &v15[v20];
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_18D49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::high_pass_filter(unint64_t *a1@<X0>, __int16 **a2@<X1>, uint64_t *a3@<X8>)
{
  std::vector<short>::resize(a2, (((a1[1] - *a1) >> 3) >> 1) + a2[1] - *a2, a2[1] - 1);
  v6 = (a1[1] - *a1) >> 3;
  *&__p = **a2;
  std::vector<double>::vector[abi:ne200100](&v34, v6, &__p);
  std::vector<short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *a2, v34, v35, (v35 - v34) >> 3);
  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  v32 = 0;
  v33 = 0;
  *&__p = 0.0;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(&__p, v7, v8, v9);
  std::vector<short>::vector[abi:ne200100](a3, a2[1] - *a2);
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 - *a1;
  if (v11 != *a1)
  {
    v14 = (v11 - 8);
    if (v14 > v12)
    {
      v15 = v12 + 8;
      do
      {
        v10.i64[0] = *(v15 - 8);
        *(v15 - 8) = *v14;
        *v14-- = v10.i64[0];
        v16 = v15 >= v14;
        v15 += 8;
      }

      while (!v16);
    }
  }

  v17 = __p;
  if (v32 == __p)
  {
    v25 = *a3;
  }

  else
  {
    v18 = 0;
    v19 = 1;
    v10.i32[0] = 1191181824;
    v30 = v10;
    do
    {
      v20 = v18 + 1;
      cblas_ddot_NEWLAPACK();
      *v22.i32 = v21;
      v23.i64[0] = 0x8000000080000000;
      v23.i64[1] = 0x8000000080000000;
      v24 = *vbslq_s8(v23, v30, v22).i32;
      if (fabs(v21) > 32767.0)
      {
        v21 = v24;
      }

      v25 = *a3;
      *(*a3 + 2 * v18) = v21;
      v17 = __p;
      ++v19;
      ++v18;
    }

    while (v20 < (v32 - __p) >> 3);
    v13 = a1[1] - *a1;
  }

  v26 = ((v13 >> 3) * 1.5);
  if (v26)
  {
    v27 = &v25[2 * v26];
    v28 = a3[1];
    v29 = v28 - v27;
    if (v28 != v27)
    {
      memmove(v25, v27, v28 - v27);
      v17 = __p;
    }

    a3[1] = &v25[v29];
  }

  if (v17)
  {
    v32 = v17;
    operator delete(v17);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_18D710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::resize(void *result, unint64_t a2, __int16 *a3)
{
  v3 = (result[1] - *result) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(result, a2 - v3, a3);
  }
}

void DSP::resample(void *a1@<X0>, int a2@<W1>, int a3@<W2>, const void **a4@<X8>)
{
  if (a2 == a3)
  {
    *a4 = *a1;
    a4[2] = a1[2];
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
  }

  else
  {
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    DSP::get_resampling_highpass_iir_filter_coefficients(a2, a3, &v103, &v100);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (a2 <= a3)
    {
      v35 = *a1;
      if (a1[1] - *a1 < 3uLL)
      {
        v41 = 0;
      }

      else
      {
        *v8.i64 = a2;
        v36 = 0.0;
        v8.i32[0] = 1191181824;
        v92 = v8;
        do
        {
          v37 = vcvtmd_s64_f64(v36);
          v38 = (v35 + 2 * v37);
          *v9.i64 = v38[1];
          v39 = (v36 - v37) * *v9.i64 + (1.0 - (v36 - v37)) * *v38;
          *v9.i32 = v39;
          v40.i64[0] = 0x8000000080000000;
          v40.i64[1] = 0x8000000080000000;
          *v9.i64 = *vbslq_s8(v40, v92, v9).i32;
          if (fabs(v39) > 32767.0)
          {
            v39 = *v9.i64;
          }

          LOWORD(__dst) = v39;
          std::vector<short>::push_back[abi:ne200100](a4, &__dst);
          v36 = a2 / a3 + v36;
          v35 = *a1;
        }

        while (v36 + 1.0 < ((a1[1] - *a1) >> 1));
        v41 = (a4[1] - *a4) >> 1;
      }

      v47 = v104 - v103;
      v48 = ((v104 - v103) << 28) + 0x100000000;
      LOWORD(__dst) = 0;
      std::vector<short>::resize(a4, v41 + (v48 >> 32), &__dst);
      v49 = (a4[1] - *a4) >> 1;
      __p = 0;
      std::vector<double>::vector[abi:ne200100](&__dst, v49, &__p);
      __p = 0;
      v96 = 0;
      v97 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v100, v101, (v101 - v100) >> 3);
      if (__p != v96)
      {
        v50 = v96 - 8;
        if (v96 - 8 > __p)
        {
          v51 = __p + 8;
          do
          {
            v52 = *(v51 - 1);
            *(v51 - 1) = *v50;
            *v50 = v52;
            v50 -= 8;
            v21 = v51 >= v50;
            v51 += 8;
          }

          while (!v21);
        }
      }

      v54 = __dst;
      v53 = v99;
      if (v99 != __dst)
      {
        v55 = 0;
        v56 = 0;
        v57 = (v104 - v103) >> 3;
        do
        {
          v58 = v56 + 1;
          if (v57 < 1)
          {
            v62 = 0.0;
          }

          else
          {
            v59 = 0;
            if (v58 >= v57)
            {
              v60 = v57;
            }

            else
            {
              v60 = v56 + 1;
            }

            v61 = (*a4 + v55);
            v62 = 0.0;
            do
            {
              v63 = *v61--;
              v62 = v62 + v63 * *(v103 + v59++);
            }

            while (v59 < v60);
          }

          cblas_ddot_NEWLAPACK();
          v54 = __dst;
          *(__dst + v56) = v62 - v64;
          v53 = v99;
          v55 += 2;
          ++v56;
        }

        while (v58 < (v99 - v54) >> 3);
      }

      v65 = v48 >> 32;
      if ((v47 << 28) <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v66 = &v54[8 * v65];
        v67 = v53 - v66;
        if (v53 != v66)
        {
          memmove(v54, v66, v53 - v66);
        }

        v99 = &v54[v67];
      }

      std::vector<short>::resize(a4, ((a4[1] - *a4) >> 1) - v65);
      v70 = __dst;
      if (v99 != __dst)
      {
        v71 = (v99 - __dst) >> 3;
        v72 = *a4;
        if (v71 <= 1)
        {
          v71 = 1;
        }

        v68.i32[0] = 1191181824;
        v73.i64[0] = 0x8000000080000000;
        v73.i64[1] = 0x8000000080000000;
        v74 = __dst;
        do
        {
          v75 = *v74++;
          v76 = v75;
          *v69.i32 = v75;
          v69 = vbslq_s8(v73, v68, v69);
          *v69.i64 = *v69.i32;
          if (fabs(v75) > 32767.0)
          {
            v76 = *v69.i64;
          }

          *v72++ = v76;
          --v71;
        }

        while (v71);
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
        v70 = __dst;
      }
    }

    else
    {
      v10 = (a1[1] - *a1) >> 1;
      __p = 0;
      std::vector<double>::vector[abi:ne200100](&__dst, v10, &__p);
      if (v103 == v104 || v100 == v101)
      {
        v42 = *a1;
        v43 = a1[1] - *a1;
        if (v43)
        {
          v44 = v43 >> 1;
          v45 = __dst;
          if (v44 <= 1)
          {
            v44 = 1;
          }

          do
          {
            v46 = *v42++;
            *v45++ = v46;
            --v44;
          }

          while (v44);
        }
      }

      else
      {
        v14 = v104 - v103;
        v15 = ((v104 - v103) << 28) + 0x100000000;
        v16 = ((a1[1] - *a1) >> 1) + (v15 >> 32);
        LOWORD(__p) = 0;
        std::vector<short>::resize(a1, v16, &__p);
        v17 = v15 >> 32;
        __p = 0;
        std::vector<double>::resize(&__dst, (v15 >> 32) + ((v99 - __dst) >> 3), &__p);
        __p = 0;
        v96 = 0;
        v97 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v100, v101, (v101 - v100) >> 3);
        if (__p != v96)
        {
          v18 = v96 - 8;
          if (v96 - 8 > __p)
          {
            v19 = __p + 8;
            do
            {
              v20 = *(v19 - 1);
              *(v19 - 1) = *v18;
              *v18 = v20;
              v18 -= 8;
              v21 = v19 >= v18;
              v19 += 8;
            }

            while (!v21);
          }
        }

        v22 = a1[1];
        if (v22 == *a1)
        {
          v33 = __dst;
          v34 = a1[1];
        }

        else
        {
          v90 = v14;
          v91 = v15 >> 32;
          v23 = 0;
          v24 = 0;
          v25 = (v104 - v103) >> 3;
          v22 = *a1;
          do
          {
            v26 = v24 + 1;
            if (v25 < 1)
            {
              v30 = 0.0;
            }

            else
            {
              v27 = 0;
              if (v26 >= v25)
              {
                v28 = v25;
              }

              else
              {
                v28 = v24 + 1;
              }

              v29 = (v22 + v23);
              v30 = 0.0;
              do
              {
                v31 = *v29--;
                v30 = v30 + v31 * *(v103 + v27++);
              }

              while (v27 < v28);
            }

            cblas_ddot_NEWLAPACK();
            v33 = __dst;
            *(__dst + v24) = v30 - v32;
            v22 = *a1;
            v34 = a1[1];
            v23 += 2;
            ++v24;
          }

          while (v26 < (v34 - *a1) >> 1);
          v14 = v90;
          v17 = v91;
        }

        if ((v14 << 28) <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v77 = &v33[8 * v17];
          v78 = v99 - v77;
          if (v99 != v77)
          {
            memmove(v33, v77, v99 - v77);
            v22 = *a1;
            v34 = a1[1];
          }

          v99 = &v33[v78];
        }

        std::vector<short>::resize(a1, ((v34 - v22) >> 1) - v17);
        if (__p)
        {
          v96 = __p;
          operator delete(__p);
        }
      }

      *v12.i64 = a3;
      v79 = a2 / a3;
      *v11.i64 = v79;
      v70 = __dst;
      if (v79 == *v11.i64)
      {
        if (v99 != __dst)
        {
          v80 = 0.0;
          v12.i32[0] = 1191181824;
          v93 = v12;
          v81 = 0.0;
          do
          {
            v82 = v70[v80];
            *v13.i32 = v82;
            v83.i64[0] = 0x8000000080000000;
            v83.i64[1] = 0x8000000080000000;
            *v13.i64 = *vbslq_s8(v83, v93, v13).i32;
            if (fabs(v82) > 32767.0)
            {
              v82 = *v13.i64;
            }

            LOWORD(__p) = v82;
            std::vector<short>::push_back[abi:ne200100](a4, &__p);
            v81 = v79 + v81;
            v80 = round(v81);
            v70 = __dst;
          }

          while (v80 < ((v99 - __dst) >> 3));
        }
      }

      else if ((v99 - __dst) >= 9)
      {
        v84 = 0.0;
        v11.i32[0] = 1191181824;
        v94 = v11;
        do
        {
          v85 = vcvtmd_s64_f64(v84);
          v86 = v84 - v85;
          v87 = &v70[v85];
          v13.i64[0] = *v87;
          v88 = v86 * v87[1] + (1.0 - v86) * *v87;
          *v13.i32 = v88;
          v89.i64[0] = 0x8000000080000000;
          v89.i64[1] = 0x8000000080000000;
          *v13.i64 = *vbslq_s8(v89, v94, v13).i32;
          if (fabs(v88) > 32767.0)
          {
            v88 = *v13.i64;
          }

          LOWORD(__p) = v88;
          std::vector<short>::push_back[abi:ne200100](a4, &__p);
          v84 = v79 + v84;
          v70 = __dst;
        }

        while (v84 + 1.0 < ((v99 - __dst) >> 3));
      }
    }

    if (v70)
    {
      v99 = v70;
      operator delete(v70);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }
  }
}

void sub_18DF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void **DSP::get_resampling_highpass_iir_filter_coefficients(int a1, int a2, void **a3, void **a4)
{
  v5 = a1 == 192000 && a2 == 48000;
  if (v5 || a1 == 48000 && a2 == 192000)
  {
    v25 = xmmword_21F788;
    v26 = *"ǤKqc^R?P";
    v27 = xmmword_21F7A8;
    v28 = 0x3ED6646F7914977ALL;
    v23 = xmmword_21F768;
    v24 = unk_21F778;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F7C0;
LABEL_8:
    v7 = v6[3];
    v25 = v6[2];
    v26 = v7;
    v27 = v6[4];
    v28 = *(v6 + 10);
    v8 = v6[1];
    v23 = *v6;
    v24 = v8;
    return std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a4, &v23, &v29, 0xBuLL);
  }

  if (a1 == 48000 && a2 == 24000 || a1 == 24000 && a2 == 48000)
  {
    v25 = xmmword_21F838;
    v26 = unk_21F848;
    v27 = xmmword_21F858;
    v28 = 0x3F60FC4BECDC6AB6;
    v23 = xmmword_21F818;
    v24 = unk_21F828;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F870;
    goto LABEL_8;
  }

  if (a1 == 48000 && a2 == 22050 || a1 == 22050 && a2 == 48000)
  {
    v25 = xmmword_21F8E8;
    v26 = unk_21F8F8;
    v27 = xmmword_21F908;
    v28 = 0x3F57F43AF3997A24;
    v23 = xmmword_21F8C8;
    v24 = unk_21F8D8;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F920;
    goto LABEL_8;
  }

  if (a1 == 48000 && a2 == 16000 || a1 == 16000 && a2 == 48000)
  {
    v25 = xmmword_21F998;
    v26 = unk_21F9A8;
    v27 = xmmword_21F9B8;
    v28 = 0x3F121FC3C3426C68;
    v23 = xmmword_21F978;
    v24 = unk_21F988;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21F9D0;
    goto LABEL_8;
  }

  v11 = a1 == 22050 && a2 == 24000;
  v12 = a2 == 22050 && a1 == 24000;
  if (v12 || v11)
  {
    v25 = xmmword_21FA48;
    v26 = unk_21FA58;
    v27 = xmmword_21FA68;
    v28 = 0x3FDC38EDB811BB02;
    v23 = xmmword_21FA28;
    v24 = unk_21FA38;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FA80;
    goto LABEL_8;
  }

  v14 = a1 == 16000 && a2 == 24000;
  v15 = a2 == 16000 && a1 == 24000;
  if (v15 || v14)
  {
    v25 = xmmword_21FAF8;
    v26 = unk_21FB08;
    v27 = xmmword_21FB18;
    v28 = 0x3F95500E95DE96B5;
    v23 = xmmword_21FAD8;
    v24 = unk_21FAE8;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FB30;
    goto LABEL_8;
  }

  v17 = a1 == 16000 && a2 == 22050;
  v18 = a2 == 16000 && a1 == 22050;
  if (v18 || v17)
  {
    v25 = xmmword_21FBA8;
    v26 = unk_21FBB8;
    v27 = xmmword_21FBC8;
    v28 = 0x3FA110EF889EA268;
    v23 = xmmword_21FB88;
    v24 = unk_21FB98;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FBE0;
    goto LABEL_8;
  }

  v20 = a1 == 8000 && a2 == 16000;
  v21 = a2 == 8000 && a1 == 16000;
  if (v21 || v20)
  {
    v25 = xmmword_21FC58;
    v26 = unk_21FC68;
    v27 = xmmword_21FC78;
    v28 = 0x3F509BFBA50105AELL;
    v23 = xmmword_21FC38;
    v24 = unk_21FC48;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(a3, &v23, &v29, 0xBuLL);
    v6 = &xmmword_21FC90;
    goto LABEL_8;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Warning: Anti-alias filter for resampling not supported: output may be distorted.", 81);

  return std::endl[abi:ne200100]<char,std::char_traits<char>>(v22);
}

void std::vector<short>::push_back[abi:ne200100](const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

void DSP::get_highpass_70hz_coefficients(DSP *this)
{
  v1 = off_270E88(this);
  v3 = v2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  memcpy(__dst, &unk_21B508, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v18, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21C5A0, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v15, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21D638, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v12, __dst, &v22, 0x213uLL);
  memcpy(__dst, &unk_21E6D0, sizeof(__dst));
  std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(__p, __dst, &v22, 0x213uLL);
  if (v1 <= 3999)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Sampling rate not supported: ", 36);
    v4 = std::ostream::operator<<();
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " Hz", 3);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_8;
  }

  if (v1 >> 5 < 0x271)
  {
    v7 = &v15;
LABEL_7:
    *v3 = *v7;
    v3[2] = v7[2];
    v3 = v7;
LABEL_8:
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_10;
  }

  if (v1 >> 4 < 0x753)
  {
    v7 = &v12;
    goto LABEL_7;
  }

  if (v1 > 0x1116F)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "Error: Sampling rate not supported: ", 36);
    v8 = std::ostream::operator<<();
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " Hz", 3);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
    exit(1);
  }

  *v3 = *__p;
  v3[2] = v11;
LABEL_10:
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_18E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::locale a21)
{
  std::locale::~locale(&a21);
  if (__p)
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
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void DSP::smooth_voiced_pitch_contour(double **a1@<X0>, DSP *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 > 2)
  {
    DSP::make_pitch_contour_continuous(a1, v31);
    DSP::window_hann_norm_double(__p, a2);
    v9 = a1[1] - *a1;
    v29 = 0;
    std::vector<double>::vector[abi:ne200100](a3, v9, &v29);
    v10 = (a2 - 1) >> 1;
    v11 = *a1;
    v12 = a1[1];
    v13 = v12 - *a1;
    if (v12 != *a1)
    {
      v14 = 0;
      v15 = -v10;
      if (v13 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12 - *a1;
      }

      do
      {
        v17 = v31[0];
        v18 = __p[0];
        v19 = 2 * v10 + 1;
        v20 = v15;
        v21 = *a3;
        do
        {
          if ((v20 & 0x8000000000000000) == 0 && v13 > v20)
          {
            *(v21 + 8 * v14) = *(v21 + 8 * v14) + v17[v20] * *v18;
          }

          ++v18;
          ++v20;
          --v19;
        }

        while (v19);
        ++v14;
        ++v15;
      }

      while (v14 != v16);
    }

    v22 = 0;
    v23 = v31[0];
    v24 = *a3;
    if (v10 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = (a2 - 1) >> 1;
    }

    v26 = 8 * v13 - 8;
    v27 = 8 * v25;
    do
    {
      *(v24 + v22) = *&v23[v22];
      *(v24 + v26) = *&v23[v26];
      v26 -= 8;
      v22 += 8;
    }

    while (v27 != v22);
    if (v12 != v11)
    {
      v28 = *a3;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      do
      {
        if (*v11 == 0.0)
        {
          *v28 = 0;
        }

        ++v28;
        ++v11;
        --v13;
      }

      while (v13);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = *a1;
    v6 = a1[1];
    v7 = v6 - *a1;

    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
  }
}

void sub_18EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSP::make_pitch_contour_continuous@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  v5 = *a1;
  v6 = *(a1 + 8) - *a1;
  v7 = v6 >> 3;
  if ((v6 >> 3) < 1)
  {
    return result;
  }

  v8 = 0;
  v9 = (v5 - 1);
  v10 = *a2;
  v11 = *a2 + 8;
  v12 = vdupq_n_s64(2uLL);
  while (1)
  {
    v13 = &v5[v8];
    if (*v13 == 0.0)
    {
      break;
    }

    v16 = (v8 + 1);
LABEL_28:
    v8 = v16;
    if (v16 >= v7)
    {
      return result;
    }
  }

  v14 = v8;
  result = (v7 - v8);
  if (v7 <= v8)
  {
    result = 0;
    v16 = v8;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    while (*v13 == 0.0)
    {
      --v15;
      ++v13;
      if (v8 - ((v6 >> 3) & 0x7FFFFFFF) == v15)
      {
        v16 = v6 >> 3;
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    result = -v15;
    v16 = (v8 - v15);
    if (v8)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (result == v7)
  {
    return result;
  }

LABEL_15:
  if (!v8)
  {
    if (result)
    {
      v19 = v5[v16];
      v20 = (result + 1) & 0x1FFFFFFFELL;
      v21 = vdupq_n_s64(result - 1);
      v22 = v11;
      v23 = xmmword_212100;
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v21, v23));
        if (v24.i8[0])
        {
          *(v22 - 1) = v19;
        }

        result = v24.u32[1];
        if (v24.i8[4])
        {
          *v22 = v19;
        }

        v23 = vaddq_s64(v23, v12);
        v22 += 2;
        v20 -= 2;
      }

      while (v20);
    }

    goto LABEL_28;
  }

  if (v16 != v7)
  {
    if (result)
    {
      v17 = (result + 1);
      v18 = result;
      result = v10 + 8 * v14;
      do
      {
        *result = (1.0 - v18 / v17) * *&v5[v16] + *&v9[8 * v14] * (v18 / v17);
        result += 8;
        --v18;
      }

      while (v18);
    }

    goto LABEL_28;
  }

  if (result)
  {
    v25 = *&v9[8 * v8];
    v26 = (result + 1) & 0x1FFFFFFFELL;
    v27 = vdupq_n_s64(result - 1);
    v28 = (v10 + 8 * v8 + 8);
    v29 = xmmword_212100;
    v30 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v27, v29));
      if (v31.i8[0])
      {
        *(v28 - 1) = v25;
      }

      if (v31.i8[4])
      {
        *v28 = v25;
      }

      v29 = vaddq_s64(v29, v30);
      v28 += 2;
      v26 -= 2;
    }

    while (v26);
  }

  return result;
}

void DSP::window_hann_norm_double(uint64_t *__return_ptr a1@<X8>, DSP *this@<X0>)
{
  v2 = this;
  std::vector<double>::vector[abi:ne200100](a1, this);
  if (v2 >= 1)
  {
    v4 = v2;
    v26 = vdupq_lane_s64(COERCE__INT64((v2 - 1)), 0);
    v27 = vdupq_n_s64(v2 - 1);
    v5 = (v2 + 1) & 0xFFFFFFFE;
    v6 = 0x100000000;
    v7 = xmmword_212100;
    v8 = (*a1 + 8);
    v9 = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v24 = _Q0;
    v25 = vdupq_n_s64(0x401921FB54442D18uLL);
    __asm { FMOV            V2.2D, #0.5 }

    v22 = vnegq_f64(0);
    v23 = _Q2;
    v21 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vcgeq_u64(v27, v7);
      v32 = v7;
      v30 = vmovn_s64(v31);
      v16.i64[0] = v6.u32[0];
      v16.i64[1] = v6.u32[1];
      __x = vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), v25), v26);
      v29 = cos(__x.f64[1]);
      v17.f64[0] = cos(__x.f64[0]);
      v17.f64[1] = v29;
      v18 = vmulq_f64(vsubq_f64(v24, v17), v23);
      if (v30.i8[0])
      {
        *(v8 - 1) = v18.i64[0];
      }

      if (v30.i8[4])
      {
        *v8 = v18.i64[1];
      }

      v19 = vbslq_s8(v31, v18, v22);
      v9 = v9 + *v19.i64 + *&v19.i64[1];
      v7 = vaddq_s64(v32, v21);
      v6 = vadd_s32(v6, 0x200000002);
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
    v20 = *a1;
    do
    {
      *v20 = *v20 / v9;
      ++v20;
      --v4;
    }

    while (v4);
  }
}

double DSP::gradient_index(void *a1)
{
  v1 = (a1[1] - *a1) >> 3;
  result = 0.0;
  if (v1 >= 3)
  {
    v3 = (*a1 + 16);
    v4 = v1 - 2;
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v3 - 2);
      v7 = (*v3 > v5) - (*v3 < v5) - (v5 > v6);
      if (v5 < v6)
      {
        ++v7;
      }

      if (v7 < 0)
      {
        v7 = -v7;
      }

      result = result + v7 * vabdd_f64(*v3++, v5);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t DSP::zero_crossing_rate_plus_zero(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 3;
  result = 0;
  v4 = v2 - 1;
  if (v4)
  {
    v6 = *v1;
    v5 = v1 + 1;
    v7 = v6;
    do
    {
      v8 = v7 == 0.0;
      v9 = v7;
      v10 = *v5++;
      v7 = v10;
      v11 = (*&v10 ^ *&v9) >> 63;
      v12 = v8;
      if (v7 != 0.0)
      {
        v12 = 0;
      }

      result = (result + v11 + v12);
      --v4;
    }

    while (v4);
  }

  return result;
}

void DSP::IAIF(double **a1@<X0>, uint64_t *a2@<X1>, double **a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = a1[1] - *a1;
  std::vector<double>::vector[abi:ne200100](v79, (v12 >> 3));
  std::vector<double>::vector[abi:ne200100](a5, (v12 >> 3));
  v13 = v12 >> 3;
  std::vector<double>::vector[abi:ne200100](__p, ((v12 >> 3) + a4));
  v14 = (v12 >> 3) & 0x7FFFFFFF;
  if ((v12 >> 3) >= 1)
  {
    v15 = *a1;
    v16 = *a3;
    v17 = (v12 >> 3) & 0x7FFFFFFF;
    v18 = v79[0];
    do
    {
      v19 = *v15;
      v15 += 8;
      v20 = v19;
      v21 = *v16++;
      *v18++ = v20 * v21;
      --v17;
    }

    while (v17);
  }

  DSP::LP(v79, 1, &v75);
  v22 = v75;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v72, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v72, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v13 >= 1)
  {
    v23 = *a5;
    v24 = (__p[0] + 8 * a4);
    v25 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v26 = *v24++;
      *v23++ = v26;
      --v25;
    }

    while (v25);
    v27 = *a5;
    v28 = *a3;
    v29 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v30 = *v28++;
      *v27 = *v27 * v30;
      ++v27;
      --v29;
    }

    while (v29);
  }

  DSP::LP(a5, a4, &v75);
  if (v22)
  {
    operator delete(v22);
  }

  v31 = v75;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v69, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v69, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v32 = *a5;
  if (v13 >= 1)
  {
    v33 = (__p[0] + 8 * a4);
    v34 = (v12 >> 3) & 0x7FFFFFFF;
    v35 = *a5;
    do
    {
      v36 = *v33++;
      *v35++ = v36;
      --v34;
    }

    while (v34);
  }

  v37 = (a5[1] - v32) >> 3;
  if (v37 >= 2)
  {
    v38 = v32 + 1;
    v39 = *v32;
    v40 = v37 - 1;
    do
    {
      v39 = *v38 + a6 * v39;
      *v38++ = v39;
      --v40;
    }

    while (v40);
  }

  if (v13 >= 1)
  {
    v41 = *a3;
    v42 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v43 = *v41++;
      *v32 = *v32 * v43;
      ++v32;
      --v42;
    }

    while (v42);
  }

  DSP::LP(a5, 8, &v75);
  if (v31)
  {
    operator delete(v31);
  }

  v44 = v75;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v66, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v66, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v45 = *a5;
  if (v13 >= 1)
  {
    v46 = (__p[0] + 8 * a4);
    v47 = (v12 >> 3) & 0x7FFFFFFF;
    v48 = *a5;
    do
    {
      v49 = *v46++;
      *v48++ = v49;
      --v47;
    }

    while (v47);
  }

  v50 = (a5[1] - v45) >> 3;
  if (v50 >= 2)
  {
    v51 = v45 + 1;
    v52 = *v45;
    v53 = v50 - 1;
    do
    {
      v52 = *v51 + a6 * v52;
      *v51++ = v52;
      --v53;
    }

    while (v53);
  }

  if (v13 >= 1)
  {
    v54 = *a3;
    v55 = (v12 >> 3) & 0x7FFFFFFF;
    do
    {
      v56 = *v54++;
      *v45 = *v45 * v56;
      ++v45;
      --v55;
    }

    while (v55);
  }

  DSP::LP(a5, a4, &v75);
  if (v44)
  {
    operator delete(v44);
  }

  v57 = v75;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 3);
  DSP::firfilter(&v63, a2, &v75);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v58 = v75;
  *__p = v75;
  v78 = v76;
  v76 = 0;
  v75 = 0uLL;
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
    v59 = __p[0];
  }

  else
  {
    v59 = v58;
  }

  if (v13 < 1)
  {
    if (!v59)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v60 = *a5;
    v61 = &v59[8 * a4];
    do
    {
      v62 = *v61;
      v61 += 8;
      *v60++ = v62;
      --v14;
    }

    while (v14);
  }

  __p[1] = v59;
  operator delete(v59);
LABEL_56:
  if (v79[0])
  {
    v79[1] = v79[0];
    operator delete(v79[0]);
  }

  if (v57)
  {
    operator delete(v57);
  }
}

void sub_18F344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 120);
  if (v31)
  {
    *(v28 - 112) = v31;
    operator delete(v31);
  }

  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void DSP::medfilt(char **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 > a2)
  {
    v8 = a2 | 1u;
    if (v8 > 2)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
      std::vector<double>::vector[abi:ne200100](__p, a2 | 1u);
      v10 = 1 - v8;
      v11 = *a1;
      if (1 - v8 + ((a1[1] - *a1) >> 3))
      {
        v13 = 0;
        v14 = 0;
        v15 = a2 >> 1;
        v16 = 8 * v8;
        do
        {
          v17 = 0;
          v18 = __p[0];
          v19 = &v11[v13];
          do
          {
            *&v18[v17] = *&v19[v17];
            v17 += 8;
          }

          while (v16 != v17);
          std::__sort<std::__less<double,double> &,double *>();
          v12 = __p[0];
          *(*a3 + 8 * v14++ + 8 * v15) = *(__p[0] + v15);
          v11 = *a1;
          v13 += 8;
        }

        while (v10 + ((a1[1] - *a1) >> 3) > v14);
      }

      else
      {
        v12 = __p[0];
        if (!__p[0])
        {
          return;
        }
      }

      __p[1] = v12;
      operator delete(v12);
      return;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;

  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v5, v6, v7);
}

void sub_18F570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void DSP::window_blackman(DSP *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = this;
  v3 = std::vector<double>::vector[abi:ne200100](a2, this);
  v4 = v2 - 1;
  if (v2 >= 1)
  {
    v5 = v2;
    v6 = (v2 + 1) & 0xFFFFFFFE;
    v25 = vdupq_n_s64(v5 - 1);
    v33 = vdupq_lane_s64(COERCE__INT64(v4), 0);
    v7 = 0x100000000;
    v8 = xmmword_212100;
    v23 = vdupq_n_s64(0x3FDAE147AE147AE1uLL);
    v24 = vdupq_n_s64(0x401921FB54442D18uLL);
    v9 = (*v3 + 8);
    __asm { FMOV            V2.2D, #-0.5 }

    v21 = vdupq_n_s64(0x402921FB54442D18uLL);
    v22 = _Q2;
    v19 = vdupq_n_s64(2uLL);
    v20 = vdupq_n_s64(0x3FB47AE147AE147BuLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v25, v8));
      v32 = v8;
      v15.i64[0] = v7.u32[0];
      v15.i64[1] = v7.u32[1];
      v30 = vcvtq_f64_u64(v15);
      __x = vdivq_f64(vmulq_f64(v30, v24), v33);
      v28 = cos(__x.f64[1]);
      v16.f64[0] = cos(__x.f64[0]);
      v16.f64[1] = v28;
      v29 = vmlaq_f64(v23, v22, v16);
      __xa = vdivq_f64(vmulq_f64(v30, v21), v33);
      v30.f64[0] = cos(__xa.f64[1]);
      v17.f64[0] = cos(__xa.f64[0]);
      v17.f64[1] = v30.f64[0];
      v18 = vmlaq_f64(v29, v20, v17);
      if (v31.i8[0])
      {
        *(v9 - 1) = *&v18.f64[0];
      }

      if (v31.i8[4])
      {
        *v9 = *&v18.f64[1];
      }

      v8 = vaddq_s64(v32, v19);
      v7 = vadd_s32(v7, 0x200000002);
      v9 += 2;
      v6 -= 2;
    }

    while (v6);
  }
}

uint64_t DSP::remove_mean(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8) - *result;
  if (v2)
  {
    v3 = v2 >> 3;
    if ((v2 >> 3) <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >> 3;
    }

    v5 = 0.0;
    v6 = v4;
    v7 = *result;
    do
    {
      v8 = *v7++;
      v5 = v5 + v8;
      --v6;
    }

    while (v6);
    v9 = v5 / v3;
    do
    {
      *v1 = *v1 - v9;
      ++v1;
      --v4;
    }

    while (v4);
  }

  return result;
}

void DSP::smooth(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  DSP::window_hann_norm_double(&v11, ((2 * a2) | 1u));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v8, v11, v12, (v12 - v11) >> 3);
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  DSP::high_pass_filter(&v8, &__p, a3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_18F874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    *(v14 - 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t *result, double *a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F91C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::__split_buffer<float>::emplace_back<float>(unint64_t *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = (v4 + 1);
  return result;
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_18FB30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
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

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_212100)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2120F0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_218970)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_218960))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_212100)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_2120F0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_218970)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_218960))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

char *std::vector<short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(void *a1, char *__src, double *a3, double *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 1)
  {
    v16 = (v9 - __src) >> 1;
    if (v16 >= a5)
    {
      v20 = &__src[2 * a5];
      v21 = &v9[-2 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 2;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[2 * a5], __src, v9 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25 = v26;
        v25 += 2;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + 4 * (v9 - __src));
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + 4 * (v9 - __src));
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 2;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[2 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v9)
        {
          v41 = *v39;
          v39 += 2;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[2 * a5], __src, v18 - v38);
        }

        v42 = __src;
        do
        {
          v43 = *v7++;
          *v42 = v43;
          v42 += 2;
        }

        while (v7 != v17);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 1);
  if (v12 < 0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 > v12)
  {
    v12 = v14;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
  }

  v27 = 2 * (v13 >> 1);
  v28 = 2 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 2;
  }

  while (v28);
  memcpy((v27 + 2 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 2 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(uint64_t *result, __int16 *a2, __int16 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_190570(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1905EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_190794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *std::vector<std::vector<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void estimate_and_vote_pitch(uint64_t a1@<X0>, DSP *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  if (a3)
  {
    v10 = &loc_3E80;
    if (a2 != 16000)
    {
      v69 = 0;
      v70 = 0;
      v68 = 0;
      std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v68, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 1);
      DSP::resample(&v68, v7, 16000, &v53);
      v11 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v11;
        operator delete(v11);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = v53;
      *(a1 + 16) = v54;
      v54 = 0;
      v53 = 0uLL;
      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }
    }
  }

  else
  {
    v10 = a2;
  }

  memset(v67, 0, sizeof(v67));
  boost::filesystem::path::path(__p, "acf0");
  AutocF0::AutocF0(&v53, __p);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  v55 = a3;
  v56 = v5;
  AutocF0::estimate_pitch(&v53, a1, v10, v44);
  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  boost::filesystem::path::path(v31, "iaif0");
  AutocF0::AutocF0(v33, v31);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v33[6] = a3;
  v33[7] = v5;
  AutocF0::estimate_pitch(v33, a1, v10, v19);
  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(v44, v19);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  SRH::SRH(v19);
  v20 = __PAIR64__(v5, a3);
  SRH::estimate_pitch(v19, a1, v10, v12);
  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul,3ul>(v44, v12);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::push_back[abi:ne200100](v67, v44);
  vote_f0_external(v67, v5, a5);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  *&v53 = v67;
  std::vector<std::tuple<std::vector<float>,std::vector<float>,std::vector<float>,std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v53);
}