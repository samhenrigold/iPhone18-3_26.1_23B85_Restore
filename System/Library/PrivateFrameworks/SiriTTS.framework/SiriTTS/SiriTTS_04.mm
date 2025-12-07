void sub_1C2FD8748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v64 - 217) < 0)
  {
    operator delete(*(v64 - 240));
  }

  if (*(v64 - 185) < 0)
  {
    operator delete(*(v64 - 208));
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(exception_object);
}

void Agglomerate::set<std::shared_ptr<FastSpeechDecoderFeature>>(uint64_t **a1, uint64_t *a2)
{
  v7 = &v10;
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = &unk_1F42EF708;
  v8 = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v8;
    v5 = v9;
  }

  v8 = 0;
  v9 = 0;
  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = &unk_1F42EF708;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void Agglomerate::set<std::shared_ptr<TacotronFeature>>(uint64_t **a1, uint64_t *a2)
{
  v7 = &v10;
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = &unk_1F42EF5A0;
  v8 = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v8;
    v5 = v9;
  }

  v8 = 0;
  v9 = 0;
  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v7 = &unk_1F42EF5A0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void SoundStormInference::inference(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_INFO, "SoundStorm inference begin.", &buf, 2u);
  }

  Diagnostics::log(6, "SoundStorm inference begin.", v4);
  std::chrono::steady_clock::now();
  v5 = std::string::basic_string[abi:ne200100]<0>(&buf, "disableInferenceRetry");
  InternalSettings::get_BOOL_for_key(v5);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  Diagnostics::get_log_path(&v7);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v7.__pn_.__r_.__value_.__l.__data_, v7.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    buf = v7.__pn_;
  }

  operator new();
}

void sub_1C2FD954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v32 - 137) < 0)
  {
    operator delete(*(v32 - 160));
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<AcousticFeature>,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void Agglomerate::ItemHolder<std::shared_ptr<SemanticFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F2320;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::TorchEncoderDecoder::EncFeedforward(uint64_t a1, uint64_t a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v6 = kaldi::quasar::TimeBlock::TimeBlock(v99, (a1 + 4056), a1 + 4104, &__p);
  if (SHIBYTE(v92) < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 3408);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3416) - v7) >> 4) <= a3)
  {
    v6 = std::vector<kaldi::CuMatrix<float>>::resize((a1 + 3408), a3 + 1);
    v7 = *(a1 + 3408);
  }

  *(a1 + 3512) = a3;
  v8 = *(v7 + 48 * a3 + 20);
  if (*(a1 + 3915))
  {
    v93 = 0u;
    v92 = 0u;
    __p = &unk_1F42BFED8;
    v94 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(v6, v8, a2, &__p, 1);
    kaldi::nnet1::Nnet::Feedforward((a1 + 8), &__p, a1 + 3120, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::~CuMatrix(&__p);
  }

  else
  {
    kaldi::nnet1::Nnet::Feedforward((a1 + 8), a2, a1 + 3120, 0xFFFFFFFF, 0);
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(&v97, a1 + 8);
  kaldi::nnet1::Nnet::GetHistoricalComponents(&v95, *(a1 + 1136));
  if (*(a1 + 3504) == 1)
  {
    if (v8 >= 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 416);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Handover is not supported for stream input.", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    if (*(a1 + 3506) == 1)
    {
      if (*(a1 + 3548) == 3)
      {
        if (*(a1 + 3505))
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 420);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Model type requires full handover.", 34);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        v9 = v97;
        if (v98 != v97)
        {
          v10 = 0;
          do
          {
            v93 = 0u;
            v92 = 0u;
            __p = &unk_1F42BFED8;
            v94 = 0;
            (*(*v9[v10] + 40))(v9[v10], &__p, 0);
            kaldi::CuMatrix<float>::CuMatrix(&v87, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, &v87, 0, SHIDWORD(v88), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &__p, 0, SHIDWORD(v92), 0, *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &v80, 111, v11, v12);
            v80 = &unk_1F42BFE90;
            v81 = 0u;
            v82 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v84 = &unk_1F42BFE90;
            v85 = 0u;
            v86 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, &v87, 0, SHIDWORD(v88), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &__p, 0, SHIDWORD(v92), (2 * *(a1 + 3976)), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &v80, 111, v13, v14);
            v80 = &unk_1F42BFE90;
            v81 = 0u;
            v82 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v84 = &unk_1F42BFE90;
            v85 = 0u;
            v86 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuMatrix<float>::CuMatrix(&v84, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &v84, 0, SHIDWORD(v85), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v76, &__p, 0, SHIDWORD(v92), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v80, &v76, 111, v15, v16);
            v76 = &unk_1F42BFE90;
            v77 = 0u;
            v78 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v80 = &unk_1F42BFE90;
            v81 = 0u;
            v82 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &v84, 0, SHIDWORD(v85), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v76, &__p, 0, SHIDWORD(v92), (3 * *(a1 + 3976)), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v80, &v76, 111, v17, v18);
            v76 = &unk_1F42BFE90;
            v77 = 0u;
            v78 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v80 = &unk_1F42BFE90;
            v81 = 0u;
            v82 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v82 = 0u;
            v81 = 0u;
            v80 = &unk_1F42BFED8;
            v83 = 0;
            kaldi::nnet1::Nnet::Feedforward((a1 + 1552), &v87, &v80, 0xFFFFFFFF, 0);
            v78 = 0u;
            v77 = 0u;
            v76 = &unk_1F42BFED8;
            v79 = 0;
            kaldi::nnet1::Nnet::Feedforward((a1 + 1176), &v84, &v76, 0xFFFFFFFF, 0);
            kaldi::CuMatrix<float>::CuMatrix(v74, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, v74, 0, v75, 0, *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v71, &v80, 111, v19, v20);
            v71 = &unk_1F42BFE90;
            v72 = 0u;
            v73 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, v74, 0, v75, *(a1 + 3976), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v71, &v76, 111, v21, v22);
            v71 = &unk_1F42BFE90;
            v72 = 0u;
            v73 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            (*(*v95[v10] + 56))(v95[v10], v74, 0);
            kaldi::CuMatrix<float>::~CuMatrix(v74);
            kaldi::CuMatrix<float>::~CuMatrix(&v76);
            kaldi::CuMatrix<float>::~CuMatrix(&v80);
            kaldi::CuMatrix<float>::~CuMatrix(&v84);
            kaldi::CuMatrix<float>::~CuMatrix(&v87);
            kaldi::CuMatrix<float>::~CuMatrix(&__p);
            ++v10;
            v9 = v97;
          }

          while (v10 != (v98 - v97) >> 3);
        }

        goto LABEL_39;
      }

      v93 = 0u;
      v92 = 0u;
      __p = &unk_1F42BFED8;
      v94 = 0;
      v27 = *(a1 + 3976) << (*(a1 + 3505) ^ 1);
      kaldi::CuMatrix<float>::Resize(&__p, 1, v27 * ((v98 - v97) >> 3), 0, 0);
      v28 = v97;
      if (v98 != v97)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0uLL;
        do
        {
          v89 = v31;
          v88 = v31;
          v87 = &unk_1F42BFED8;
          v90 = 0;
          (*(*v28[v30] + 40))(v28[v30], &v87, 0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, &__p, 0, SHIDWORD(v92), v29, v27);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &v87, 0, SHIDWORD(v88), 0, v27);
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &v80, 111, v32, v33);
          v80 = &unk_1F42BFE90;
          v81 = 0u;
          v82 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase();
          v84 = &unk_1F42BFE90;
          v85 = 0u;
          v86 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase();
          kaldi::CuMatrix<float>::~CuMatrix(&v87);
          v31 = 0uLL;
          ++v30;
          v28 = v97;
          v29 = (v29 + v27);
        }

        while (v30 != (v98 - v97) >> 3);
      }

      v89 = 0u;
      v88 = 0u;
      v87 = &unk_1F42BFED8;
      v90 = 0;
      kaldi::nnet1::Nnet::Feedforward((a1 + 1176), &__p, &v87, 0xFFFFFFFF, 0);
      v34 = v95;
      if (v96 != v95)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          if (*(a1 + 3505) == 1)
          {
            kaldi::CuMatrix<float>::CuMatrix(&v84, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v80, &v84, 0, SHIDWORD(v85), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v76, &v87, 0, SHIDWORD(v88), v35, v27);
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v80, &v76, 111, v37, v38);
            v76 = &unk_1F42BFE90;
            v77 = 0u;
            v78 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            v80 = &unk_1F42BFE90;
            v81 = 0u;
            v82 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            (*(*v95[v36] + 56))(v95[v36], &v84, 0);
            kaldi::CuMatrix<float>::~CuMatrix(&v84);
          }

          else
          {
            v39 = v34[v36];
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, &v87, 0, SHIDWORD(v88), v35, v27);
            (*(*v39 + 56))(v39, &v84, 0);
            v84 = &unk_1F42BFE90;
            v85 = 0u;
            v86 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
          }

          ++v36;
          v34 = v95;
          v35 = (v35 + v27);
        }

        while (v36 != (v96 - v95) >> 3);
      }

      kaldi::CuMatrix<float>::~CuMatrix(&v87);
LABEL_32:
      kaldi::CuMatrix<float>::~CuMatrix(&__p);
      goto LABEL_39;
    }

    if (*(a1 + 3505))
    {
      kaldi::CuMatrix<float>::CuMatrix(&__p, 1, *(a1 + 3976), 0, 0, 0);
      v23 = v97;
      if (v98 != v97)
      {
        v24 = 0;
        do
        {
          v89 = 0u;
          v88 = 0u;
          v87 = &unk_1F42BFED8;
          v90 = 0;
          (*(*v23[v24] + 40))(v23[v24], &v87, 0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, &v87, 0, SHIDWORD(v88), *(a1 + 3976), *(a1 + 3976));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &__p, 111, v25, v26);
          v84 = &unk_1F42BFE90;
          v85 = 0u;
          v86 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase();
          (*(*v95[v24] + 56))(v95[v24], &v87, 0);
          kaldi::CuMatrix<float>::~CuMatrix(&v87);
          ++v24;
          v23 = v97;
        }

        while (v24 != (v98 - v97) >> 3);
      }

      goto LABEL_32;
    }

    v40 = v97;
    if (v98 != v97)
    {
      v41 = 0;
      v42 = 0uLL;
      do
      {
        v93 = v42;
        v92 = v42;
        __p = &unk_1F42BFED8;
        v94 = 0;
        (*(*v40[v41] + 40))(v40[v41], &__p, 0);
        v43 = v95[v41];
        v44 = 2 * *(a1 + 3976);
        if (*(a1 + 3919))
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, &__p, 0, SHIDWORD(v92), v45, v44);
        (*(*v43 + 56))(v43, &v87, 0);
        v87 = &unk_1F42BFE90;
        v88 = 0u;
        v89 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase();
        kaldi::CuMatrix<float>::~CuMatrix(&__p);
        v42 = 0uLL;
        ++v41;
        v40 = v97;
      }

      while (v41 != (v98 - v97) >> 3);
    }
  }

LABEL_39:
  if (kaldi::nnet1::Nnet::IsBidirectionalRnn((a1 + 8)) && *(a1 + 3548) != 3)
  {
    if (v8 >= 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 500);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BidirectionalEncoder is not supported for stream input.", 55);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    kaldi::CuMatrix<float>::Resize(*(a1 + 3408) + 48 * *(a1 + 3512), *(a1 + 3140), (*(a1 + 3136) / 2), 0, 0);
    v49 = *(a1 + 3512);
    v50 = *(a1 + 3408);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, 0, *(a1 + 3140), 0, *(a1 + 3136) / 2);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((v50 + 48 * v49), &__p, 111, v51, v52);
    __p = &unk_1F42BFE90;
    v92 = 0u;
    v93 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    v53 = *(a1 + 3512);
    v54 = *(a1 + 3408);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, 0, *(a1 + 3140), (*(a1 + 3136) / 2), *(a1 + 3136) / 2);
    kaldi::CuMatrixBase<float>::AddMat(v54 + 48 * v53, &__p, 111, 1.0, 1.0, v55, v56);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(*(a1 + 3408) + 48 * *(a1 + 3512), (*(a1 + 3140) + v8), *(a1 + 3136), 2, 0);
    v46 = *(a1 + 3408) + 48 * *(a1 + 3512);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, v46, v8, *(a1 + 3140), 0, *(v46 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, a1 + 3120, 111, v47, v48);
  }

  __p = &unk_1F42BFE90;
  v92 = 0u;
  v93 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v57 = *(a1 + 3408) + 48 * *(a1 + 3512);
  kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(a1, v57, v57, *(a1 + 1136), v58);
  if (*(a1 + 3919))
  {
    v63 = 0;
    if (v8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v63 = *(a1 + 3140) - 1;
    if (v8)
    {
      goto LABEL_49;
    }
  }

  v64 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v59, v60, v61, v62);
  kaldi::CuMatrix<float>::Resize(a1 + 3312, 1, v64, 0, 0);
LABEL_49:
  if (*(a1 + 3504) != 1)
  {
    goto LABEL_59;
  }

  if (kaldi::nnet1::Nnet::IsBidirectionalRnn((a1 + 8)))
  {
    if (*(a1 + 3548) == 3)
    {
      kaldi::CuMatrixBase<float>::SetZero(a1 + 3312);
      goto LABEL_59;
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, a1 + 3120, v63, 1, 0, *(a1 + 3136));
    v67 = *(a1 + 3136) / 2;
    if (*(a1 + 3919))
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, &v87, 0, SHIDWORD(v88), v68, v67);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 3312), &__p, 111, v69, v70);
    __p = &unk_1F42BFE90;
    v92 = 0u;
    v93 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    v87 = &unk_1F42BFE90;
    v88 = 0u;
    v89 = 0u;
  }

  else
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, v63, 1, 0, *(a1 + 3136));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 3312), &__p, 111, v65, v66);
    __p = &unk_1F42BFE90;
    v92 = 0u;
    v93 = 0u;
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase();
LABEL_59:
  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v99, v59);
}

void sub_1C2FDAA60()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  JUMPOUT(0x1C2FDAAD0);
}

void sub_1C2FDAAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  JUMPOUT(0x1C2FDAEA4);
}

void sub_1C2FDAAFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C2FDAEACLL);
}

void sub_1C2FDAB14()
{
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  JUMPOUT(0x1C2FDAE74);
}

void sub_1C2FDAE2C()
{
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  JUMPOUT(0x1C2FDAE7CLL);
}

void sub_1C2FDAE68(_Unwind_Exception *a1, clockid_t a2)
{
  v4 = *(v2 - 184);
  if (v4)
  {
    *(v2 - 176) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 160);
  if (v5)
  {
    *(v2 - 152) = v5;
    operator delete(v5);
  }

  kaldi::quasar::TimeBlock::~TimeBlock((v2 - 136), a2);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::nnet1::Nnet::GetHistoricalComponents@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
}

uint64_t *std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FDAF30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5, unsigned int a6)
{
  *result = 0u;
  *(result + 16) = 0u;
  v6 = *(a2 + 12);
  v10 = v6 >= a3;
  v7 = v6 - a3;
  if (v7 == 0 || !v10 || ((v8 = *(a2 + 8), v10 = v8 >= a5, v9 = v8 - a5, v9 != 0 && v10) ? (v10 = v7 >= a4) : (v10 = 0), v10 ? (v11 = v9 >= a6) : (v11 = 0), !v11))
  {
    kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x71A, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", a5);
  }

  *(result + 8) = a6;
  *(result + 12) = a4;
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  *result = *a2 + 4 * a5 + 4 * (v12 * a3);
  *(result + 16) = v12;
  *(result + 20) = v13 - a5 - v12 * a3;
  return result;
}

void kaldi::quasar::TorchEncoderDecoder::StartFeedforward(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "StartFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 369);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Custom embedding is not supported for TorchEncoderDecoder");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v7 = *(a1 + 3408);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3416) - v7) >> 4) <= a3)
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 3408), a3 + 1);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v7 + 48 * a3, 0, 0, 0, 0);
  }

  kaldi::CuMatrix<float>::CuMatrix(v12, a2, 111);
  if (*(a1 + 3917) == 1)
  {
    v10 = 0u;
    v9 = 0u;
    v8 = &unk_1F42BFED8;
    v11 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddTag(a1, a2, *(a1 + 3516) - 1, &v8, 0);
    kaldi::CuMatrix<float>::operator=(v12, &v8);
    kaldi::CuMatrix<float>::~CuMatrix(&v8);
  }

  if (*(a1 + 3918) == 1)
  {
    v10 = 0u;
    v9 = 0u;
    v8 = &unk_1F42BFED8;
    v11 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddTag(a1, v12, *(a1 + 3520) - 1, &v8, 1);
    kaldi::CuMatrix<float>::operator=(v12, &v8);
    kaldi::CuMatrix<float>::~CuMatrix(&v8);
  }

  kaldi::quasar::TorchEncoderDecoder::EncFeedforward(a1, v12, a3);
  kaldi::CuMatrix<float>::~CuMatrix(v12);
}

void sub_1C2FDB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(void *result, uint64_t a2, uint64_t a3, kaldi::nnet1::Nnet *a4, const char *a5)
{
  if (((*(a4 + 1) - *a4) >> 3) >= 1)
  {
    v8 = result;
    v9 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(a4, v9, a3, a4, a5);
      if (v11)
      {
        result = (*(*v11 + 24))(v11, a2, a3, 0);
      }

      else
      {
        v15 = kaldi::nnet1::Nnet::GetComponent(a4, v9, v12, v13, v14);
        if (result)
        {
          v16 = result;
          v17 = result[23];
          if ((1736263375 * ((result[24] - v17) >> 3)) >= 1)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              result = kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(v8, a2, a3, (v17 + v18));
              ++v19;
              v17 = v16[23];
              v18 += 376;
            }

            while (v19 < (1736263375 * ((v16[24] - v17) >> 3)));
          }
        }
      }

      ++v9;
    }

    while (v9 < ((*(a4 + 1) - *a4) >> 3));
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::GetComponent(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x375, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x370, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
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
    kaldi::KaldiLogMessage::KaldiLogMessage(v21, "~TimeBlock", "../engine/common/libquasar/libkaldi/src/nnmt/torch-translator.h", 63);
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
    v14 = MEMORY[0x1C692A940](v10, Seconds - *v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
    v16 = MEMORY[0x1C692A940](v15, *(this + 2));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " diff ", 6);
    v18 = *this;
    v20 = kaldi::Timer::GetSeconds(5, v19);
    MEMORY[0x1C692A940](v17, v20 - *v18 - *(this + 2));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v21);
    LOBYTE(v4) = *(this + 47);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(*(this + 3));
  }
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(kaldi::quasar::TorchEncoderDecoder *a1, uint64_t *a2, const void **a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v56 = 0u;
  v55 = 0u;
  v54 = &unk_1F42BFED8;
  v57 = 0;
  kaldi::CuMatrix<float>::Resize(&v54, (a2[1] - *a2) >> 2, 1, 0, 0);
  v14 = *a2;
  v15 = a2[1];
  v16 = v15 - *a2;
  if (v15 != *a2)
  {
    v17 = 0;
    v18 = v16 >> 2;
    v19 = v55;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v20 = 4 * v56;
    do
    {
      *v19 = *(v14 + 4 * v17++);
      v19 = (v19 + v20);
    }

    while (v18 != v17);
  }

  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::Start(a1, 1u, a4);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, &v54, 0, 0);
  v86 = 0u;
  v85 = 0u;
  v84 = &unk_1F42BFED8;
  v87 = 0;
  kaldi::CuMatrix<float>::CuMatrix(v82, 1, 1, 0, 0, 0);
  v21 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
  *v83 = (v21 - 1);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v22 = 0;
  if ((a7 & 0x80000000) != 0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0;
    while (1)
    {
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, v82, &v84, 0);
      kaldi::Matrix<float>::Matrix(&v65, HIDWORD(v85), DWORD2(v85), 0, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v84, &v65, 111, v24, v25);
      IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(a1);
      v27 = -3.4028e38;
      if (IsUpdatable)
      {
        v27 = 0.0;
      }

      *&v58 = v27;
      if (v22 == a7)
      {
        SoftmaxEosId = kaldi::quasar::TorchEncoderDecoder::GetSoftmaxEosId(a1);
        LODWORD(v58) = *(v65.__locale_ + SoftmaxEosId);
        v29 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      }

      else
      {
        v34 = 0;
        v29 = 0;
        while (v34 != kaldi::MatrixBase<float>::NumCols(&v65))
        {
          VocabWordIdx = kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(a1, v34);
          if ((v22 >= a6 || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1) && (!kaldi::quasar::TorchEncoderDecoder::HasBpeModel(a1) || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::UnkTargetId(a1) - 1) && *(v65.__locale_ + v34) > *&v58)
          {
            LODWORD(v58) = *(v65.__locale_ + v34);
            v29 = VocabWordIdx;
          }

          ++v34;
        }
      }

      if (kaldi::nnet1::UpdatableComponent::IsUpdatable(a1))
      {
        LODWORD(v58) = logf(*&v58);
      }

      *v83 = v29;
      v30 = *&v58;
      std::vector<float>::push_back[abi:ne200100](&v73, &v58);
      BestAlignment = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(a1, 0);
      __p = 0;
      v62 = 0;
      v63 = 0;
      kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(a1, &__p, 0, v31, v32);
      v33 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      if (v29 == v33)
      {
        if (*(a1 + 3922) == 1 && *(a1 + 3923) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](&v79, &BestAlignment);
          std::vector<std::vector<float>>::push_back[abi:ne200100](&v76, &__p);
          v71 = v29 + 1;
          std::vector<int>::push_back[abi:ne200100](a3, &v71);
          v71 = 0;
          std::vector<float>::push_back[abi:ne200100](&v73, &v71);
        }
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&v79, &BestAlignment);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v76, &__p);
        v71 = v29 + 1;
        std::vector<int>::push_back[abi:ne200100](a3, &v71);
      }

      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      v23 = v23 + v30;
      kaldi::Matrix<float>::~Matrix(&v65);
      if (v29 == v33)
      {
        break;
      }

      if (v22++ == a7)
      {
        goto LABEL_38;
      }
    }
  }

  if (v22 == a7 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v65, "GreedyDecode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-model-tools.h", 211);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Decoder hit max sentence length : ", 34);
    v38 = MEMORY[0x1C692A960](v37, a7);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
    MEMORY[0x1C692A960](v39, a7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v65);
  }

LABEL_38:
  if (kaldi::quasar::TorchEncoderDecoder::Reverse(a1) && v79 != v80)
  {
    v40 = v80 - 4;
    if (v80 - 4 > v79)
    {
      v41 = (v79 + 1);
      do
      {
        v42 = *(v41 - 1);
        *(v41 - 1) = *v40;
        *v40 = v42;
        v40 -= 4;
        v43 = v41 >= v40;
        v41 += 4;
      }

      while (!v43);
    }
  }

  v44 = (*(*a5 + 200))(a5);
  (*(*a5 + 176))(a5, v44);
  if (a3[1] == *a3)
  {
    v46 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = v44;
    do
    {
      v48 = (*(*a5 + 200))(a5);
      if (v46 >= (v80 - v79) >> 2 || v46 >= (a3[1] - *a3) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 3) <= v46)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v44 = v48;
      v49 = v79[v46];
      v50 = *(*a3 + v46);
      v51 = *(v73 + v46);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v58, *(v76 + v45), *(v76 + v45 + 8), (*(v76 + v45 + 8) - *(v76 + v45)) >> 2);
      LODWORD(__p) = 0;
      *(&__p + 1) = -v51;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v62, v58, v59, (v59 - v58) >> 2);
      v65.__locale_ = __PAIR64__(v50, v49);
      v66 = __p;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v67, v62, v63, (v63 - v62) >> 2);
      v70 = v44;
      (*(*a5 + 208))(a5, v47, &v65);
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      ++v46;
      v45 += 24;
      v47 = v44;
    }

    while (v46 != (a3[1] - *a3) >> 2);
  }

  v52 = -*(v73 + v46);
  LODWORD(v65.__locale_) = 0;
  *(&v65.__locale_ + 1) = v52;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  (*(*a5 + 184))(a5, v44, &v65);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  __p = &v76;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v82);
  kaldi::CuMatrix<float>::~CuMatrix(&v84);
  kaldi::CuMatrix<float>::~CuMatrix(&v54);
  return -v23;
}

void sub_1C2FDBCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, void *a19, uint64_t a20, uint64_t a21, char a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  a18 = &a60;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  v62 = *(v60 - 240);
  if (v62)
  {
    *(v60 - 232) = v62;
    operator delete(v62);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v60 - 216);
  kaldi::CuMatrix<float>::~CuMatrix(v60 - 168);
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::Feedforward(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = 0u;
  v11 = 0u;
  v10 = &unk_1F42BFED8;
  v13 = 0;
  if (*(a1 + 3916))
  {
    kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(a1, *(a1 + 3508), a2, &v10, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::operator=(&v10, a2);
  }

  v7 = *(a1 + 3548);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      kaldi::quasar::TorchEncoderDecoder::FeedforwardModelT(a1, &v10, a3, v4);
      goto LABEL_13;
    }

    if (v7 == 3)
    {
      kaldi::quasar::TorchEncoderDecoder::FeedforwardModelF(a1, &v10, a3, v4);
      goto LABEL_13;
    }

LABEL_14:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 581);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Un-supported model type : ", 26);
    MEMORY[0x1C692A960](v8, *(a1 + 3548));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (!v7)
  {
    kaldi::quasar::TorchEncoderDecoder::FeedforwardModelN(a1, &v10, a3, v4);
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_14;
  }

  kaldi::quasar::TorchEncoderDecoder::FeedforwardModelM(a1, &v10, a3, v4);
LABEL_13:
  ++*(a1 + 3508);
  kaldi::CuMatrix<float>::~CuMatrix(&v10);
}

void kaldi::nnet1::AverageAttention::PropagateFnc(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  if (v5 != *(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x27B, "batch_size == num_utts", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v64, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 637, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1C692A960](v10, v5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1C692A960](v12, 1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1C692A960](v14, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v64);
  }

  (*(*a1 + 160))(a1);
  v16 = *(a1 + 16) + 48 * a4;
  v17 = *(v16 + 20);
  if (!v17)
  {
    v18 = (*(*a1 + 88))(a1);
    kaldi::CuMatrix<float>::Resize(v16, v5, v18, 0, 0);
    v17 = *(v16 + 20);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v61, v16, 0, v17, 0, 1);
  kaldi::CuMatrixBase<float>::Add(&v61, 1.0);
  v19 = *v62;
  v24 = kaldi::nnet1::Nnet::InputDim(*(a1 + 56), v20, v21, v22, v23);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v58, v16, 0, *(v16 + 20), 1, v24);
  kaldi::CuMatrixBase<float>::AddMat(&v58, a2, 111, 1.0, 1.0, v25, v26);
  kaldi::CuMatrix<float>::CuMatrix(v64, &v58, 111);
  kaldi::CuMatrixBase<float>::Scale(v64, 1.0 / v19);
  v56 = 0u;
  v55 = 0u;
  v54 = &unk_1F42BFED8;
  v57 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 56), v64, &v54, a4, v27);
  if (*(a1 + 64))
  {
    kaldi::CuMatrix<float>::CuMatrix(v52, *(a2 + 20), (v65 + *(a2 + 16)), 0, 0, 0);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v48, v52, 0, v53, 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v48, a2, 111, v30, v31);
    v48 = &unk_1F42BFE90;
    v49 = 0u;
    v50 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v48, v52, 0, v53, *(a2 + 16), v65);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v48, &v54, 111, v32, v33);
    v48 = &unk_1F42BFE90;
    v49 = 0u;
    v50 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    v49 = 0u;
    v50 = 0u;
    v48 = &unk_1F42BFED8;
    v51 = 0;
    kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 64), v52, &v48, 0, v34);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v48, 0, SHIDWORD(v49), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v45, a2, v35, v36, v37);
    v45 = &unk_1F42BFE90;
    v46 = 0u;
    v47 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v48, 0, SHIDWORD(v49), *(a2 + 16), v65);
    kaldi::CuMatrixBase<float>::MulElements(&v45, &v54, v38, v39, v40);
    v45 = &unk_1F42BFE90;
    v46 = 0u;
    v47 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v48, 0, SHIDWORD(v49), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v45, 111, v41, v42);
    v45 = &unk_1F42BFE90;
    v46 = 0u;
    v47 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v48, 0, SHIDWORD(v49), *(a2 + 16), v65);
    kaldi::CuMatrixBase<float>::AddMat(a3, &v45, 111, 1.0, 1.0, v43, v44);
    v45 = &unk_1F42BFE90;
    v46 = 0u;
    v47 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuMatrix<float>::~CuMatrix(&v48);
    kaldi::CuMatrix<float>::~CuMatrix(v52);
  }

  else
  {
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v54, 111, v28, v29);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v54);
  kaldi::CuMatrix<float>::~CuMatrix(v64);
  v58 = &unk_1F42BFE90;
  v59 = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v61 = &unk_1F42BFE90;
  v62 = 0u;
  v63 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
}

void sub_1C2FDC558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::CuMatrix<float>::~CuMatrix(&a14);
  kaldi::CuMatrix<float>::~CuMatrix(&a20);
  kaldi::CuMatrix<float>::~CuMatrix(&a26);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  a32 = &unk_1F42BFE90;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  a37 = &unk_1F42BFE90;
  v41[6] = 0u;
  v41[7] = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  _Unwind_Resume(a1);
}

void sub_1C2FDC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1C2FDC650);
}

void std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

unint64_t kaldi::nnet1::CompressedWordVecComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-vec-component.h", 0x2C, "in.NumCols() == this->input_dim_", a5);
  }

  return kaldi::CuMatrixBase<float>::ConcatenateVec(a3, (a1 + 48), a2, a4, a5);
}

unint64_t kaldi::CuMatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x338, "num_rows_ == index.NumRows()", a5);
  }

  v5 = *a2;
  if (*a2)
  {
    LODWORD(v5) = *(v5 + 12);
  }

  if (*(a1 + 16) != v5 * *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x339, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  v6 = a1 + 8;
  v7 = a3 + 8;

  return kaldi::MatrixBase<float>::ConcatenateVec(v6, a2, v7, a4, a5);
}

uint64_t kaldi::MatrixBase<float>::Min(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 < 1 || *(result + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("Min", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x76E, "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *result;
  v8 = **result;
  do
  {
    v9 = *(result + 8);
    v10 = v7;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 < v8)
      {
        v8 = v12;
      }

      --v9;
    }

    while (v9);
    ++v6;
    v7 += *(result + 16);
  }

  while (v6 != v5);
  return result;
}

uint64_t kaldi::MatrixBase<float>::Max(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 < 1 || *(result + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x764, "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *result;
  v8 = **result;
  do
  {
    v9 = *(result + 8);
    v10 = v7;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 > v8)
      {
        v8 = v12;
      }

      --v9;
    }

    while (v9);
    ++v6;
    v7 += *(result + 16);
  }

  while (v6 != v5);
  return result;
}

{
  v5 = *(a2 + 12);
  if (v5 != *(result + 12) || (v6 = *(a2 + 8), v6 != *(result + 8)))
  {
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4B5, "A.NumRows() == NumRows() && A.NumCols() == NumCols()", a5);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = *result;
    v9 = *a2;
    v10 = 4 * *(a2 + 16);
    v11 = 4 * *(result + 16);
    do
    {
      v12 = v6;
      v13 = v8;
      v14 = v9;
      if (v6 >= 1)
      {
        do
        {
          v15 = *v14++;
          v16 = v15;
          if (*v13 >= v15)
          {
            v16 = *v13;
          }

          *v13++ = v16;
          --v12;
        }

        while (v12);
      }

      ++v7;
      v9 = (v9 + v10);
      v8 = (v8 + v11);
    }

    while (v7 != v5);
  }

  return result;
}

void kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::CuMatrix<float>::Resize(a4, *(a3 + 20), (*(a3 + 16) + 1), 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v32, a4, 0, *(a4 + 20), 0, *(a3 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v32, a3, 111, v9, v10);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v29, a4, 0, *(a4 + 20), *(a3 + 16), 1);
  v11 = *(a3 + 20);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = v30;
    v14 = v31;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = (v11 + 3) & 0xFFFFFFFC;
    v17 = 3 * v31;
    v18 = 16 * v31;
    v19 = xmmword_1C378AEF0;
    v20 = xmmword_1C378AF00;
    v21 = vdupq_n_s64(4uLL);
    v22 = 2 * v31;
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v15, v20));
      if (vuzp1_s16(v23, *v15.i8).u8[0])
      {
        if (a5)
        {
          v24 = v12;
        }

        else
        {
          v24 = 0;
        }

        *v13 = (v24 + a2);
      }

      if (vuzp1_s16(v23, *&v15).i8[2])
      {
        if (a5)
        {
          v25 = v12 + 1;
        }

        else
        {
          v25 = 0;
        }

        v13[v14] = (v25 + a2);
      }

      v26 = vmovn_s64(vcgeq_u64(v15, v19));
      if (vuzp1_s16(*&v15, v26).i32[1])
      {
        v27 = v12 + 2;
        if (!a5)
        {
          v27 = 0;
        }

        v13[v22] = (v27 + a2);
      }

      if (vuzp1_s16(*&v15, v26).i8[6])
      {
        v28 = v12 + 3;
        if (!a5)
        {
          v28 = 0;
        }

        v13[v17] = (v28 + a2);
      }

      v12 += 4;
      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v13 = (v13 + v18);
    }

    while (v16 != v12);
  }

  v29 = &unk_1F42BFE90;
  v30 = 0u;
  v31 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v32 = &unk_1F42BFE90;
  v33 = 0u;
  v34 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
}

uint64_t *kaldi::CompressedMatrix::CopyRowToVec<float>(uint64_t *result, signed int a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, const char *a11)
{
  v11 = *result;
  if (*result)
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= a2)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D2, "row < this->NumRows()", a11);
  }

  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D3, "row >= 0", a11);
  }

  if (v11)
  {
    v13 = *(v11 + 12);
  }

  else
  {
    v13 = 0;
  }

  if (*(a3 + 2) != v13)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D4, "v->Dim() == this->NumCols()", a11);
  }

  v14 = *(v11 + 12);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *a3;
    v17 = *(v11 + 8);
    v18 = (v11 + 22);
    v19 = 8 * v14 + a2;
    do
    {
      v20 = *v11;
      v21 = *(v11 + 4) * 0.0000152590219;
      LOWORD(a8) = *(v18 - 2);
      v22 = v20 + v21 * *&a8;
      *&v22 = v22;
      result = *(v11 + 16 + v19);
      v23 = result - 64;
      if (result > 0x40)
      {
        LOWORD(a9) = *(v18 - 1);
        a9 = v20 + v21 * *&a9;
        *&a9 = a9;
        v28 = result >= 0xC0;
        result = (result - 192);
        if (result != 0 && v28)
        {
          LOWORD(v22) = *v18;
          a8 = *&v22;
          v31 = v20 + v21 * a8;
          *&a8 = result;
          v27 = *&a9 + ((v31 - *&a9) * result) * 0.0158730159;
        }

        else
        {
          v29 = *&v22;
          v30 = ((*&a9 - *&v22) * v23);
          a8 = 0.0078125;
          v27 = v29 + v30 * 0.0078125;
        }
      }

      else
      {
        LOWORD(a9) = *(v18 - 3);
        a9 = *&a9;
        v24 = v20 + v21 * a9;
        v25 = v24;
        v26 = ((*&v22 - v24) * result);
        a8 = 0.015625;
        v27 = v25 + v26 * 0.015625;
      }

      v18 += 4;
      v32 = v27;
      *(v16 + 4 * v15++) = v32;
      v19 += v17;
    }

    while (v14 != v15);
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (a1[1] - *a1) >> 3;
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB0, "NumComponents() > 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1[18] + 32) <= a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB1, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v8 = (a1[9] + 24 * a3);
  if (v5 >= (-1431655765 * ((v8[1] - *v8) >> 4)))
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB4, "(int32)propagate_buf_[batch_idx].size() >= NumComponents() + 1", a5);
  }

  v10 = a3;
  kaldi::CuMatrix<float>::Resize(*v8, *(a2 + 20), *(a2 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(*(a1[9] + 24 * v10), a2, 111, v11, v12);
  v13 = *a1;
  v14 = (a1[1] - *a1) >> 3;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v13 + 8 * v16++);
      v18 = *(a1[9] + 24 * v10) + v15;
      kaldi::nnet1::Component::Propagate(v17, v18, v18 + 48, a3);
      v13 = *a1;
      v19 = a1[1] - *a1;
      v15 += 48;
    }

    while (v16 < (v19 >> 3));
    v14 = v19 >> 3;
  }

  return *(a1[9] + 24 * v10) + 48 * v14;
}

int *kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0x99, "NULL != out", a5);
  }

  if (((a1[1] - *a1) & 0x7FFFFFFF8) != 0)
  {
    v6 = (a1[9] + 24 * a4);
    v8 = *v6;
    v7 = v6[1];
    if (*v6 != v7)
    {
      v9 = 0;
      v10 = *(a3 + 32);
      v11 = v7 - v8 - 48;
      v12 = vdupq_n_s64(v11 / 0x30);
      v13 = (v8 + 80);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v9), xmmword_1C378AF00)));
        if (v14.i8[0])
        {
          *(v13 - 6) = v10;
        }

        if (v14.i8[4])
        {
          *v13 = v10;
        }

        v9 += 2;
        v13 += 12;
      }

      while (((v11 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v9);
    }

    v15 = kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1, a2, a4, a4, a5);
    kaldi::CuMatrix<float>::Resize(a3, *(v15 + 20), *(v15 + 16), 1, 0);

    return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v15, 111, v16, v17);
  }

  else
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }
}

void kaldi::quasar::TorchEncoderDecoder::FeedforwardModelN(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v49, (a1 + 4056), a1 + 4128, __p);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v41, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4160, &v41);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v12 = *(a2 + 20);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("FeedforwardModelN", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x27D, "target_in.NumRows() != 0", v11);
  }

  v13 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v8, v9, v10, v11);
  kaldi::CuMatrix<float>::Resize(a1 + 3264, v12, v13, 0, 0);
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 760), a2, a1 + 3264, 0, v14);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v15);
  std::string::basic_string[abi:ne200100]<0>(&v41, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4136, &v41);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v20 = *(a1 + 3284);
  v21 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v16, v17, v18, v19);
  kaldi::CuMatrix<float>::Resize(a1 + 3312, v20, v21, 0, 0);
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 1136), a1 + 3264, a1 + 3312, 0, v22);
  kaldi::CuMatrix<float>::operator=(a1 + 3216, a1 + 3312);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v23);
  std::string::basic_string[abi:ne200100]<0>(&v41, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4144, &v41);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (*(a1 + 3922) == 1)
  {
    Component = kaldi::nnet1::Nnet::GetComponent(*(a1 + 1136), *(a1 + 3540), v25, v26, v27);
    if (!v29)
    {
      kaldi::KaldiAssertFailure_("FeedforwardModelN", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x28F, "attn_component", v30);
    }

    __sz = 0;
    __src = 0;
    v46 = 0;
    AttnProbabilities = kaldi::nnet1::SupervisedMultiHeadAttention::GetAttnProbabilities(v29);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, AttnProbabilities, 0, *(AttnProbabilities + 20), *(a1 + 3917), *(AttnProbabilities + 16) - *(a1 + 3918));
    kaldi::CuMatrix<float>::operator=(a1 + 4008, &v41);
    v41 = &unk_1F42BFE90;
    v42 = 0u;
    v43 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 4008, &__sz, v32, v33, v34);
    v35 = *(a1 + 3984);
    v36 = (*(a1 + 3992) - v35) >> 2;
    if (__sz != v36)
    {
      std::vector<float>::resize((a1 + 3984), __sz);
      v35 = *(a1 + 3984);
      LODWORD(v36) = __sz;
    }

    memcpy(v35, __src, 4 * v36);
    if (__src)
    {
      free(__src);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(__p, v24);
  std::string::basic_string[abi:ne200100]<0>(&v41, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4152, &v41);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
    if (a4)
    {
      goto LABEL_18;
    }
  }

  else if (a4)
  {
LABEL_18:
    v37 = ((*(a1 + 392) - *(a1 + 384)) >> 3) - 1;
    goto LABEL_21;
  }

  v37 = -1;
LABEL_21:
  if (*(a1 + 3664))
  {
    v38 = *(a1 + 3664);
  }

  else
  {
    v38 = (a1 + 384);
  }

  kaldi::nnet1::Nnet::Feedforward(v38, a1 + 3216, a3, v37, 0);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v39);
  kaldi::quasar::TimeBlock::~TimeBlock(v49, v40);
}

void sub_1C2FDD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, __int128 a10, __int128 a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock(&a15, v22);
  kaldi::quasar::TimeBlock::~TimeBlock((v20 - 96), v23);
  _Unwind_Resume(a1);
}

double kaldi::Timer::GetSeconds(kaldi::Timer *this, clockid_t a2)
{
  if (clock_gettime(this, &__tp) && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "GetSeconds", "../engine/common/libquasar/libkaldi/src/base/timer.h", 103);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Could not read clock ", 21);
    v4 = MEMORY[0x1C692A960](v3, this);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
    v6 = __error();
    v7 = strerror(*v6);
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return __tp.tv_nsec / 1000000000.0 + __tp.tv_sec;
}

void TacotronAlignment::alignment_reset(TacotronAlignment *this)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 8);
  std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](this + 5);
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 1065353216;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 156) = 0;
  *(this + 148) = 0;
  *(this + 41) = 0;
}

void FastSpeech2DecoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "Parallel AM decoder module start.", v5);
  std::mutex::lock((a1 + 320));
  *(a1 + 312) = 1;
  v7 = *(*v6 + 16);
  v41 = *(*v6 + 8);
  v42 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(*v8 + 16);
  v39 = *(*v8 + 8);
  v40 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(*v10 + 16);
  v37 = *(*v10 + 8);
  v38 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v41 + 8);
  if (v12 != *(v41 + 16) && *(v12 + 60) == 1)
  {
    *(a1 + 304) = 0;
  }

  TacotronAlignment::alignment_reset(*(a1 + 384));
  v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v35 = 0;
  v34 = 0;
  v14 = *(a1 + 400);
  v31 = v39;
  v32 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 8))(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v33[1] != v33[0])
  {
    v15 = *v33[0];
    v30 = v15;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v48 = 0;
    operator new();
  }

  v16 = ((std::chrono::steady_clock::now().__d_.__rep_ - v13.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v17 = (v16 >> 18) + (v16 >> 63);
  v18 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v20 = v17 / 1000.0;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 134218496;
    *&buf[1] = v34 + v35;
    v44 = 2048;
    v45 = v17 / 1000.0;
    v46 = 2048;
    v47 = *&buf[1] / v20;
    _os_log_impl(&dword_1C2F95000, v18, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", buf, 0x20u);
  }

  Diagnostics::log(5, "Parallel AM decoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", v19, v34 + v35, *&v20, (v34 + v35) / v20);
  v21 = *(a1 + 276);
  v22 = *(a1 + 272);
  v23 = *(a1 + 304);
  v24 = v35;
  v25 = *(a1 + 392);
  v29[0] = *(a1 + 384);
  v29[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 176);
  v28[0] = *(a1 + 168);
  v28[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v27[0] = v41;
  v27[1] = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  FastSpeechUtils::emit_word_markers(v21, v22, v23, v24, v29, v28, v27, a1, Module::callback, 0);
}

void sub_1C2FDDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34)
{
  v39 = v35;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    if (!v37)
    {
LABEL_3:
      if (!v36)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v37)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (!v36)
  {
LABEL_5:
    *(v38 - 192) = &a23;
    std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100]((v38 - 192));
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

    std::mutex::unlock(v34 + 5);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  goto LABEL_5;
}

void sub_1C2FDDC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  JUMPOUT(0x1C2FDDC40);
}

void sub_1C2FDDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (!a20)
  {
    JUMPOUT(0x1C2FDDC30);
  }

  JUMPOUT(0x1C2FDDC28);
}

void FastSpeech2DecoderBaseInference::inference(void **a1, uint64_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_DEBUG, "Parallel AM inference decoder begin.", buf, 2u);
  }

  Diagnostics::log(7, "Parallel AM inference decoder begin.", v4);
  operator new();
}

void sub_1C2FDE3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v23 = *(v21 - 24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void FastSpeech2DecoderBaseInference::split_features(_DWORD *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 || **(*a2 + 56) <= a1[2])
  {
    std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](a4, a2);
  }

  else if (*(*(*a2 + 8) + 8) != **(*a2 + 8))
  {
    operator new();
  }
}

void sub_1C2FDE7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = a12;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t kaldi::MatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42A, "num_rows_ == index.NumRows()", a5);
  }

  v8 = *a2;
  if (*a2)
  {
    LODWORD(v8) = *(v8 + 12);
  }

  if (*(a1 + 8) != v8 * *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42B, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  kaldi::MatrixBase<float>::Min(a3, a2, a3, a4, a5);
  if (v13 < 0.0)
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42C, "index.Min() >= 0", v12);
  }

  result = kaldi::MatrixBase<float>::Max(a3, v9, v10, v11, v12);
  v17 = *a2;
  if (*a2)
  {
    if (v16 < *(v17 + 8))
    {
      v18 = *(v17 + 12);
      goto LABEL_11;
    }

LABEL_24:
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42D, "index.Max() < vec_table.NumRows()", v15);
  }

  if (v16 >= 0.0)
  {
    goto LABEL_24;
  }

  v18 = 0;
LABEL_11:
  v19 = *(a3 + 12);
  if (v19 >= 1)
  {
    v20 = 0;
    LODWORD(v21) = *(a3 + 8);
    do
    {
      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(a1, v20, v15, &v33);
          v36 = 0;
          v37 = 0;
          v22 += v18;
          if (v22 > v34)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v26);
          }

          v35 = v33 + v23;
          LODWORD(v36) = v18;
          LODWORD(v27) = *(*a3 + 4 * v20 * *(a3 + 16) + 4 * v24);
          result = kaldi::CompressedMatrix::CopyRowToVec<float>(a2, *&v27, &v35, v27, v28, v29, v30, v31, v32, v25, v26);
          v21 = *(a3 + 8);
          v23 += 4 * v18;
          ++v24;
        }

        while (v24 < v21);
        v19 = *(a3 + 12);
      }

      ++v20;
    }

    while (v20 < v19);
  }

  return result;
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

void sub_1C2FDEB08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::MatrixBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *result;
    v5 = *(result + 8);
    v6 = 4 * *(result + 16);
    do
    {
      v7 = v5;
      v8 = v4;
      if (v5 >= 1)
      {
        do
        {
          *v8 = *v8 + a2;
          ++v8;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v4 = (v4 + v6);
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(kaldi::quasar::TorchEncoderDecoder *this, uint64_t a2)
{
  if (*(this + 458))
  {
    return *(**(this + 457) + 4 * a2);
  }

  return a2;
}

uint64_t FrontendNNModule::check_valid_space(std::string *this, std::string::size_type __n, std::string::size_type a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size > __n && __n < a3)
  {
    v6 = __n;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E9830];
    while ((v9 & 1) == 0)
    {
      v12 = *std::string::at(this, v6);
      if ((v12 & 0x80000000) != 0)
      {
        if (!__maskrune(v12, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v11 + 4 * v12 + 60) & 0x4000) == 0)
      {
        break;
      }

      v9 = 0;
      ++v10;
LABEL_18:
      ++v6;
      v13 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v13 & 0x80u) != 0)
      {
        v13 = this->__r_.__value_.__l.__size_;
      }

      if (v6 >= a3 || v6 >= v13)
      {
        return v10;
      }
    }

    if (*std::string::at(this, v6) == 27)
    {
      v9 = 1;
    }

    else if (*std::string::at(this, v6) == 92)
    {
      v9 &= v8 ^ 1;
      v8 ^= 1u;
    }

    goto LABEL_18;
  }

  return 0;
}

std::string *UTFString::remove_invalid_utf8_codes(std::string *this, uint8_t *s)
{
  v2 = s;
  v3 = this;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v4 = s[23];
  if (v4 < 0)
  {
    v4 = *(s + 1);
    if (!v4)
    {
      return this;
    }

    v2 = *s;
LABEL_6:
    if (v4 < 1)
    {
      return this;
    }

    while (1)
    {
      v5 = v4 - 1;
      pi = v4 - 1;
      if ((v2[(v4 - 1)] & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      this = utf8_prevCharSafeBody(v2, 0, &pi, v2[(v4 - 1)], -1);
      if ((this & 0x80000000) == 0)
      {
        break;
      }

LABEL_11:
      LODWORD(v4) = pi;
      if (pi <= 0)
      {
        return this;
      }
    }

    v5 = pi;
LABEL_10:
    this = std::string::insert(v3, 0, &v2[v5], v4 - v5);
    goto LABEL_11;
  }

  if (s[23])
  {
    goto LABEL_6;
  }

  return this;
}

void sub_1C2FDED9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void FrontendFeatureLogModuleInternal::phoneme_by_words_hydra(FrontendFeatureLogModuleInternal *this, const FrontendFeature *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(&v28, a2, a3, 0x84BDA12F684BDA13 * ((a3 - a2) >> 3));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = v28;
  v5 = v29;
  if (v28 == v29)
  {
    goto LABEL_46;
  }

  do
  {
    v6 = *(v4 + 119);
    if (v6 < 0)
    {
      if (*(v4 + 104) != 1)
      {
        goto LABEL_14;
      }

      v7 = **(v4 + 96);
    }

    else
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v7 = *(v4 + 96);
    }

    if (v7 == 35 || v7 == 95)
    {
      v8 = v25;
      v9 = v26;
      if (v25 == v26)
      {
        goto LABEL_39;
      }

      v10 = (v26 - 3);
      v11 = *(v26 - 1);
      if (v11 < 0)
      {
        if (*(v26 - 2) != 1 || **v10 != 46)
        {
          goto LABEL_33;
        }

        operator delete(*v10);
        v8 = v25;
      }

      else if (v11 != 1 || *v10 != 46)
      {
        goto LABEL_33;
      }

      v26 = v10;
      v9 = v10;
LABEL_33:
      if (v8 == v9)
      {
        goto LABEL_39;
      }

      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v15 = v25;
      v18 = v26;
      while (v18 != v15)
      {
        v19 = *(v18 - 1);
        v18 -= 3;
        if (v19 < 0)
        {
          operator delete(*v18);
        }
      }

      goto LABEL_38;
    }

LABEL_14:
    if (*(v4 + 156) == 1 && v25 != v26)
    {
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v12 = v25;
      v13 = v26;
      while (v13 != v12)
      {
        v14 = *(v13 - 1);
        v13 -= 3;
        if (v14 < 0)
        {
          operator delete(*v13);
        }
      }

      v26 = v12;
    }

    std::vector<std::string>::push_back[abi:ne200100](&v25, (v4 + 96));
    if (*(v4 + 160) == 1)
    {
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v15 = v25;
      v16 = v26;
      while (v16 != v15)
      {
        v17 = *(v16 - 1);
        v16 -= 3;
        if (v17 < 0)
        {
          operator delete(*v16);
        }
      }

LABEL_38:
      v26 = v15;
      goto LABEL_39;
    }

    if (*(v4 + 172) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".");
      std::vector<std::string>::push_back[abi:ne200100](&v25, __p);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_39:
    v4 += 216;
  }

  while (v4 != v5);
  if (v25 != v26)
  {
    std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
    v20 = v25;
    v21 = v26;
    while (v21 != v20)
    {
      v22 = *(v21 - 1);
      v21 -= 3;
      if (v22 < 0)
      {
        operator delete(*v21);
      }
    }

    v26 = v20;
  }

LABEL_46:
  __p[0] = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v25 = &v28;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1C2FDF058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a19;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<std::string>>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(a1, v11);
    }

    v12 = 24 * v8;
    v17 = 0;
    v18 = v12;
    v19 = 24 * v8;
    v20 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((24 * v8), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = (v19 + 24);
    v13 = a1[1] - *a1;
    v14 = &v18[-v13];
    memcpy(&v18[-v13], *a1, v13);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v7;
    v16 = a1[2];
    a1[2] = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v17);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = v5 + 3;
    a1[1] = v7;
  }

  a1[1] = v7;
  return result;
}

void sub_1C2FDF214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t GeneratedPromptDB::find_prompt_by_text(uint64_t a1, std::string *__str, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_20;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size != 4)
    {
      if (size != 8)
      {
        goto LABEL_20;
      }

      v7 = __str->__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }

    data = *__str->__r_.__value_.__l.__data_;
  }

  else
  {
    if (*(&__str->__r_.__value_.__s + 23) != 4)
    {
      v7 = __str;
      if (*(&__str->__r_.__value_.__s + 23) != 8)
      {
        goto LABEL_20;
      }

LABEL_9:
      if (v7->__r_.__value_.__r.__words[0] != 0x7661772E70656562)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    data = __str->__r_.__value_.__l.__data_;
  }

  if (data != 1885693282)
  {
    goto LABEL_20;
  }

LABEL_14:
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    if (*(a3 + 8) != 4)
    {
      goto LABEL_20;
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (v10 != 4)
    {
      goto LABEL_20;
    }
  }

  if (*v11 == -1415208976)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "beep");
    v19 = (*(*v6 + 16))(v6, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v19 != -1)
    {
      return *(a1 + 8) | v19;
    }
  }

LABEL_20:
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = (*(*v12 + 16))(v12, __str, a3);
    if (v13 != -1)
    {
      return *(a1 + 12) | v13;
    }
  }

  v15 = *(a1 + 16);
  if (!v15 || (result = (*(*v15 + 16))(v15, __str, a3), result == -1))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if ((SHIBYTE(__str->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v17 = __str;
        if (!*(&__str->__r_.__value_.__s + 23))
        {
          return 0xFFFFFFFFLL;
        }

LABEL_31:
        if (v17->__r_.__value_.__s.__data_[0] == 47)
        {
          std::string::basic_string(&__p, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v21);
          v18 = (*(*v16 + 16))(v16, &__p, a3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v18 != -1)
          {
            return *(a1 + 8) | v18;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (__str->__r_.__value_.__l.__size_)
      {
        v17 = __str->__r_.__value_.__r.__words[0];
        goto LABEL_31;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1C2FDF4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NeuralPromptModule::process_data(uint64_t a1, uint64_t *a2)
{
  v191[0] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  {
    return;
  }

  v6 = *(*v5 + 16);
  v181 = *(*v5 + 8);
  v182 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v179, *(a1 + 168));
  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v177, *(a1 + 168));
  if (v177)
  {
    v7 = *(v177 + 84) == 3;
  }

  else
  {
    v7 = 0;
  }

  SharedObjectPool::get_if<FrontendEnvironment>(&v175, *(a1 + 168));
  if (v175)
  {
    v8 = v175 + 216;
    {
      __str.__first_ = &v190;
      operator new();
    }

    if (v8 == v9)
    {
      first = 0;
    }

    else
    {
      first = (*(v9 + 40) + 8);
    }
  }

  else
  {
    SharedObjectPool::get_if<PromptConfig>(&__str, *(a1 + 168));
    first = __str.__first_;
    if (__str.__begin_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
    }
  }

  SharedObjectPool::get<GeneratedPromptDB>(&v173, *(a1 + 168));
  v11 = v173;
  if (!(*(*v173 + 80))(v173) || first && (first->__r_.__value_.__s.__data_[0] & 1) != 0)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (*(*v11 + 64))(v11);
    v12 = 1;
  }

  v14 = v181;
  v15 = *v181;
  if (*v181 == v181[1])
  {
    v16 = *v181;
  }

  else
  {
    NeuralPromptModule::process_prosodic_markers(a1, v15[9], v15[10]);
    v14 = v181;
    v15 = *v181;
    v16 = v181[1];
  }

  if (0x84BDA12F684BDA13 * ((v16 - v15) >> 3) >= 2)
  {
    NeuralPromptModule::process_prosodic_markers(a1, v15[36], v15[37]);
    v14 = v181;
  }

  v165 = a2;
  v17 = v182;
  if (v182)
  {
    atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v172[0] = a1;
  v172[1] = &v181;
  v172[2] = &v179;
  memset(&v171, 0, sizeof(v171));
  v18 = *v14;
  v19 = v14;
  if (v14[1] - *v14 != 216)
  {
    goto LABEL_53;
  }

  v19 = v14;
  if (*(v18 + 24) != 1)
  {
    goto LABEL_53;
  }

  v21 = *(v18 + 72);
  v20 = *(v18 + 80);
  v19 = v14;
  if (v21 == v20)
  {
    goto LABEL_53;
  }

  while (*v21 != 9)
  {
    v21 += 56;
    if (v21 == v20)
    {
      v19 = v14;
      goto LABEL_53;
    }
  }

  if (*(v21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(v21 + 8), *(v21 + 16));
  }

  else
  {
    v22 = *(v21 + 8);
    __str.__end_ = *(v21 + 24);
    *&__str.__first_ = v22;
  }

  PromptStream::normalize_audio_prompt_name(&__str.__first_);
  std::string::operator=(&v171, &__str);
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v171.__r_.__value_.__l.__size_ == 7)
    {
      v23 = v171.__r_.__value_.__r.__words[0];
LABEL_41:
      v24 = 1196446287;
      v25 = bswap32(*v23);
      if (v25 == 1196446287 && (v24 = 1330466900, v25 = bswap32(*(v23 + 3)), v25 == 1330466900))
      {
        v26 = v12;
        v27 = 0;
      }

      else
      {
        v26 = v12;
        if (v25 < v24)
        {
          v27 = -1;
        }

        else
        {
          v27 = 1;
        }
      }

      v28 = v27 == 0;
      goto LABEL_49;
    }
  }

  else if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) == 7)
  {
    v23 = &v171;
    goto LABEL_41;
  }

  v26 = v12;
  v28 = 0;
LABEL_49:
  if (SHIBYTE(__str.__end_) < 0)
  {
    operator delete(__str.__first_);
  }

  if (!v28)
  {
    v140 = *(v21 + 48);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v141 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      v143 = &v171;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v143 = v171.__r_.__value_.__r.__words[0];
      }

      LODWORD(__str.__first_) = 136315138;
      *(&__str.__first_ + 4) = v143;
      _os_log_impl(&dword_1C2F95000, v141, OS_LOG_TYPE_INFO, "FrontendFeature contains only audio '%s'", &__str, 0xCu);
    }

    v144 = &v171;
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v144 = v171.__r_.__value_.__r.__words[0];
    }

    Diagnostics::log(6, "FrontendFeature contains only audio '%s'", v142, v144);
    SharedObjectPool::get<GeneratedPromptDB>(&v190, *(a1 + 168));
    SharedObjectPool::get<SynthesizerConfig>(&v184, *(a1 + 168));
    v145 = v184;
    if (SHIBYTE(v184[2].__end_cap_.__value_) >= 0)
    {
      value_high = HIBYTE(v184[2].__end_cap_.__value_);
    }

    else
    {
      value_high = v184[2].__end_cap_.__value_;
    }

    p_str = &__str;
    std::string::basic_string[abi:ne200100](&__str, value_high + 4);
    if (SHIBYTE(__str.__end_) < 0)
    {
      p_str = __str.__first_;
    }

    if (value_high)
    {
      if (SHIBYTE(v145[2].__end_cap_.__value_) >= 0)
      {
        p_end = &v145[2].__end_;
      }

      else
      {
        p_end = v145[2].__end_;
      }

      memmove(p_str, p_end, value_high);
    }

    v149 = &p_str[value_high];
    *v149 = -1415208976;
    v149[4] = 0;
    v150 = v190.__r_.__value_.__r.__words[0];
    v151 = (*(*v190.__r_.__value_.__l.__data_ + 16))(v190.__r_.__value_.__r.__words[0], &v171, &__str);
    v152 = v151;
    if (v151 == -1)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v155 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
      {
        v157 = &v171;
        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v157 = v171.__r_.__value_.__r.__words[0];
        }

        buf = 136315138;
        *buf_4 = v157;
        _os_log_impl(&dword_1C2F95000, v155, OS_LOG_TYPE_ERROR, "Prompt audio for canned audio '%s' is not found.", &buf, 0xCu);
      }

      v158 = &v171;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v158 = v171.__r_.__value_.__r.__words[0];
      }

      Diagnostics::log(3, "Prompt audio for canned audio '%s' is not found.", v156, v158);
      *&v183.__r_.__value_.__l.__data_ = 0uLL;
    }

    else
    {
      if ((*(v150 + 8) & v151) == 0)
      {
        goto LABEL_298;
      }

      size = HIBYTE(v171.__r_.__value_.__r.__words[2]);
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v171.__r_.__value_.__l.__size_;
      }

      if (size >= 0xE)
      {
        v154 = std::string::compare(&v171, size - 13, 0xDuLL, "SonicResponse") == 0;
      }

      else
      {
LABEL_298:
        v154 = 0;
      }

      NeuralPromptModule::generate_prompt(&v183, a1, v152, v154, v140, 0);
    }

    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    if (v185)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v185);
    }

    if (v190.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v190.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v190, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
    }

    else
    {
      v190 = v171;
    }

    memset(&__str, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v183, &__str);
    v184 = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v184);
    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    v159 = *v14;
    v160 = v14[1];
    if (0x84BDA12F684BDA13 * ((v160 - *v14) >> 3) >= 3)
    {
      for (i = v159 + 432; i != v160; i += 216)
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(i + 72), *(i + 80));
      }
    }

    if (v183.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v183.__r_.__value_.__l.__size_);
    }

    goto LABEL_330;
  }

  v19 = v181;
  v12 = v26;
LABEL_53:
  v168 = 0;
  v169 = 0;
  v170 = 0;
  if (!v13)
  {
    goto LABEL_155;
  }

  v163 = v14;
  v169 = 0;
  v29 = *v19;
  v30 = v19[1];
  if (*v19 == v30 || (v32 = *(v29 + 72), v31 = *(v29 + 80), v32 == v31))
  {
LABEL_154:
    v14 = v163;
    goto LABEL_155;
  }

  v33 = 0;
  v34 = v32 + 16;
  do
  {
    v35 = v34 - 16;
    if (*(v34 - 16) == 11 && *(v34 + 24) != 0)
    {
      v37 = (v34 - 8);
      v38 = *(v34 + 15);
      if (v38 < 0)
      {
        if (*v34 != 5)
        {
          goto LABEL_73;
        }

        v37 = *v37;
      }

      else if (v38 != 5)
      {
        goto LABEL_73;
      }

      v39 = *v37;
      v40 = *(v37 + 4);
      v42 = v39 == 1818587251 && v40 == 108;
      v33 |= v42;
    }

LABEL_73:
    v34 += 56;
  }

  while (v35 + 56 != v31);
  if ((v33 & 1) == 0)
  {
    goto LABEL_154;
  }

  memset(&v190, 0, sizeof(v190));
  v184 = 0;
  v185 = 0;
  v186 = 0;
  do
  {
    v43 = *(v29 + 72);
    v44 = *(v29 + 80);
    while (v43 != v44)
    {
      v45 = *v43;
      v46 = *(v43 + 40);
      if (*v43 != 11 || v46 == 0)
      {
        goto LABEL_92;
      }

      v48 = v43 + 8;
      v49 = *(v43 + 31);
      if (v49 < 0)
      {
        if (*(v43 + 16) != 5)
        {
          goto LABEL_91;
        }

        v48 = *v48;
      }

      else if (v49 != 5)
      {
        goto LABEL_91;
      }

      v50 = *v48;
      v51 = *(v48 + 4);
      if (v50 != 1818587251 || v51 != 108)
      {
LABEL_91:
        v45 = 11;
        goto LABEL_92;
      }

      if (v190.__r_.__value_.__r.__words[0] != v190.__r_.__value_.__l.__size_)
      {
        v62 = v190.__r_.__value_.__l.__size_ - 48;
        v63 = *(v190.__r_.__value_.__l.__size_ - 25);
        if (v63 < 0)
        {
          if (*(v190.__r_.__value_.__l.__size_ - 40) == 5)
          {
            v62 = *v62;
LABEL_135:
            v68 = *v62;
            v69 = *(v62 + 4);
            if (v68 == 1818587251 && v69 == 108)
            {
              goto LABEL_115;
            }
          }
        }

        else if (v63 == 5)
        {
          goto LABEL_135;
        }
      }

      std::vector<MarkerRecord>::push_back[abi:ne200100](&v190, v43);
      v71 = *(v29 + 80);
      v72 = *(v71 - 24);
      if (*(v71 - 56) != 3)
      {
        v72 += *(v71 - 16);
      }

      *(v190.__r_.__value_.__l.__size_ - 24) = v72;
      v45 = *v43;
      v46 = *(v43 + 40);
LABEL_92:
      if (v45 != 11 || v46 == 0)
      {
        goto LABEL_97;
      }

      v57 = v43 + 8;
      v58 = *(v43 + 31);
      if (v58 < 0)
      {
        if (*(v43 + 16) != 6)
        {
          goto LABEL_115;
        }

        v57 = *v57;
      }

      else if (v58 != 6)
      {
        goto LABEL_115;
      }

      v59 = *v57;
      v60 = *(v57 + 4);
      v61 = v59 == 1836216174 && v60 == 27745;
      if (v61 && v190.__r_.__value_.__r.__words[0] != v190.__r_.__value_.__l.__size_ && *(v190.__r_.__value_.__l.__size_ - 24) <= *(v43 + 32))
      {
        std::vector<MarkerRecord>::push_back[abi:ne200100](&v190, v43);
        v64 = v190.__r_.__value_.__l.__size_;
        if (v29 == v19[1] - 216)
        {
          *(v190.__r_.__value_.__l.__size_ - 24) = *(*(v29 + 72) + 32);
        }

        *(v64 - 16) = 0;
        v45 = *v43;
        v46 = *(v43 + 40);
LABEL_97:
        v54 = v45 != 3 || v46 == 0;
        if (!v54 && v190.__r_.__value_.__l.__size_ != v190.__r_.__value_.__r.__words[0] && *(v190.__r_.__value_.__l.__size_ - 56) == 11)
        {
          v55 = v190.__r_.__value_.__l.__size_ - 48;
          v56 = *(v190.__r_.__value_.__l.__size_ - 25);
          if (v56 < 0)
          {
            if (*(v190.__r_.__value_.__l.__size_ - 40) != 5)
            {
              goto LABEL_115;
            }

            v55 = *v55;
          }

          else if (v56 != 5)
          {
            goto LABEL_115;
          }

          v65 = *v55;
          v66 = *(v55 + 4);
          if (v65 == 1818587251 && v66 == 108)
          {
            std::vector<MarkerRecord>::push_back[abi:ne200100](&v184, v43);
          }
        }
      }

LABEL_115:
      v43 += 56;
    }

    v29 += 216;
  }

  while (v29 != v30);
  v14 = v163;
  if ((0x6DB6DB6DB6DB6DB7 * ((v190.__r_.__value_.__l.__size_ - v190.__r_.__value_.__r.__words[0]) >> 3)) > 1)
  {
    value = *(v190.__r_.__value_.__r.__words[0] + 32);
    v74 = *(v19 + 119);
    if ((v74 & 0x8000000000000000) != 0)
    {
      v74 = v19[13];
    }

    if (value < v74)
    {
      v75 = *(v190.__r_.__value_.__l.__size_ - 24);
      if (v75 <= v74)
      {
        if (v184 == v185)
        {
          v162 = (v75 - value);
        }

        else
        {
          value = v184->__end_cap_.__value_;
          v162 = (v185[-1].__vftable - value + v185[-1].__shared_owners_);
        }

        std::string::basic_string(&v183, v19 + 4, value, v162, &buf);
        operator new();
      }
    }

    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v76 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__str.__first_) = 0;
      _os_log_impl(&dword_1C2F95000, v76, OS_LOG_TYPE_INFO, "Fetch spell text failed, ignore!", &__str, 2u);
    }

    Diagnostics::log(6, "Fetch spell text failed, ignore!", v77);
  }

  __str.__first_ = &v184;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&__str);
  __str.__first_ = &v190;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&__str);
  v19 = v181;
LABEL_155:
  v78 = *v19;
  if (v19[1] == *v19 || (v80 = *(v78 + 72), v79 = *(v78 + 80), v80 == v79))
  {
    v83 = 0;
  }

  else
  {
    v81 = v80 + 56;
    do
    {
      v82 = *(v81 - 56);
      v83 = v82 == 1;
      v84 = v82 == 1 || v81 == v79;
      v81 += 56;
    }

    while (!v84);
  }

  v85 = v19[6];
  if (v19[7] - v85 == 72)
  {
    v86 = *(v85 + 8);
    if (v86 != -1 && !*v85)
    {
      v120 = *(v85 + 40);
      v121 = *(v85 + 41);
      v122 = v14;
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v123 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
      {
        LOWORD(__str.__first_) = 0;
        _os_log_impl(&dword_1C2F95000, v123, OS_LOG_TYPE_INFO, "FrontendFeature contains preset prompt id.", &__str, 2u);
      }

      Diagnostics::log(6, "FrontendFeature contains preset prompt id.", v124);
      NeuralPromptModule::generate_prompt(&v184, a1, v86, 0, v120, v121);
      v125 = v122;
      std::to_string(&v190, v86);
      memset(&__str, 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
      NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v184, &__str);
      v183.__r_.__value_.__r.__words[0] = &__str;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v183);
      if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v190.__r_.__value_.__l.__data_);
      }

      v126 = *v122;
      v127 = v122[1];
      if (0x84BDA12F684BDA13 * ((v127 - *v125) >> 3) >= 3)
      {
        for (j = v126 + 432; j != v127; j += 216)
        {
          NeuralPromptModule::process_prosodic_markers(a1, *(j + 72), *(j + 80));
        }
      }

      goto LABEL_239;
    }
  }

  if (v7 || (v12 & 1) == 0)
  {
    goto LABEL_192;
  }

  v87 = *(a1 + 168);
  v88 = *(a1 + 176);
  if (v88)
  {
    atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SharedObjectPool::get<GeneratedPromptDB>(&v190, v87);
  SharedObjectPool::get<SynthesizerConfig>(&v184, v87);
  if (SHIBYTE(v184[2].__end_cap_.__value_) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v184[2].__end_, v184[2].__end_cap_.__value_);
  }

  else
  {
    *&__str.__first_ = *&v184[2].__end_;
    __str.__end_ = v184[2].__end_cap_.__value_;
  }

  v89 = (*(*v190.__r_.__value_.__l.__data_ + 16))(v190.__r_.__value_.__r.__words[0], v19 + 12, &__str);
  if (SHIBYTE(__str.__end_) < 0)
  {
    operator delete(__str.__first_);
  }

  if (v185)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v185);
  }

  if (v190.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v190.__r_.__value_.__l.__size_);
  }

  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
  }

  if (v89 == -1)
  {
LABEL_192:
    if (v12 && *(a1 + 280) == 1)
    {
      memset(&v190, 0, sizeof(v190));
      v184 = 0;
      v185 = 0;
      v186 = 0;
      v92 = v181;
      v93 = *(a1 + 168);
      v94 = *(a1 + 176);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      is_partial_prompts_only = NeuralPromptModule::is_partial_prompts_only(a1, v92, &v190, v93);
      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      if (is_partial_prompts_only)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v96 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
        {
          LOWORD(__str.__first_) = 0;
          _os_log_impl(&dword_1C2F95000, v96, OS_LOG_TYPE_INFO, "FrontendFeature matches partial prompts.", &__str, 2u);
        }

        Diagnostics::log(6, "FrontendFeature matches partial prompts.", v97);
        v99 = v190.__r_.__value_.__l.__size_;
        for (k = v190.__r_.__value_.__r.__words[0]; k != v99; ++k)
        {
          std::to_string(&v183, *k);
          v100 = v185;
          if (v185 >= v186)
          {
            v102 = 0xAAAAAAAAAAAAAAABLL * ((v185 - v184) >> 3);
            v103 = v102 + 1;
            if (v102 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v186 - v184) >> 3) > v103)
            {
              v103 = 0x5555555555555556 * ((v186 - v184) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v186 - v184) >> 3) >= 0x555555555555555)
            {
              v104 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v104 = v103;
            }

            __str.__end_cap_.__value_ = &v184;
            if (v104)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v184, v104);
            }

            v105 = 8 * ((v185 - v184) >> 3);
            v106 = *&v183.__r_.__value_.__l.__data_;
            *(v105 + 16) = *(&v183.__r_.__value_.__l + 2);
            *v105 = v106;
            memset(&v183, 0, sizeof(v183));
            v107 = (24 * v102 + 24);
            v108 = (24 * v102 - (v185 - v184));
            memcpy((v105 - (v185 - v184)), v184, v185 - v184);
            v109 = v184;
            v110 = v186;
            v184 = v108;
            v185 = v107;
            v186 = 0;
            __str.__end_ = v109;
            __str.__end_cap_.__value_ = v110;
            __str.__first_ = v109;
            __str.__begin_ = v109;
            std::__split_buffer<std::string>::~__split_buffer(&__str);
            v185 = v107;
            if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v183.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v101 = *&v183.__r_.__value_.__l.__data_;
            v185->__shared_weak_owners_ = v183.__r_.__value_.__r.__words[2];
            v100->std::__shared_count = v101;
            v185 = v100 + 1;
          }
        }
      }

      *&__str.__first_ = 0uLL;
      v111 = v190.__r_.__value_.__r.__words[0];
      if (v190.__r_.__value_.__l.__size_ == v190.__r_.__value_.__r.__words[0])
      {
        v116 = 1;
      }

      else
      {
        v112 = 0;
        v113 = 0;
        do
        {
          if (v113)
          {
            NeuralPromptModule::generate_prompt(&v183, a1, v111[v113], 0, 0, 0);
            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>((v112 + 56), *(v112 + 64), *(v183.__r_.__value_.__r.__words[0] + 56), *(v183.__r_.__value_.__r.__words[0] + 64), (*(v183.__r_.__value_.__r.__words[0] + 64) - *(v183.__r_.__value_.__r.__words[0] + 56)) >> 2);
            if (v183.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v183.__r_.__value_.__l.__size_);
            }
          }

          else
          {
            NeuralPromptModule::generate_prompt(&v183, a1, *v111, 0, 0, 0);
            begin = __str.__begin_;
            v115 = v183.__r_.__value_.__r.__words[0];
            *&__str.__first_ = *&v183.__r_.__value_.__l.__data_;
            if (begin)
            {
              v164 = v183.__r_.__value_.__r.__words[0];
              std::__shared_weak_count::__release_shared[abi:ne200100](begin);
              v115 = v164;
            }

            v112 = v115;
          }

          ++v113;
          v111 = v190.__r_.__value_.__r.__words[0];
        }

        while (v113 < (v190.__r_.__value_.__l.__size_ - v190.__r_.__value_.__r.__words[0]) >> 2);
        v116 = v112 == 0;
      }

      NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &__str, &v184);
      if (!v116)
      {
        NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_0::operator()(*v14, v14[1], a1);
        if (__str.__begin_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
        }

        __str.__first_ = &v184;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (v190.__r_.__value_.__r.__words[0])
        {
          v190.__r_.__value_.__l.__size_ = v190.__r_.__value_.__r.__words[0];
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        goto LABEL_329;
      }

      if (__str.__begin_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
      }

      __str.__first_ = &v184;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
      if (v190.__r_.__value_.__r.__words[0])
      {
        v190.__r_.__value_.__l.__size_ = v190.__r_.__value_.__r.__words[0];
        operator delete(v190.__r_.__value_.__l.__data_);
      }
    }

    v130 = *v181;
    if (v181[1] - *v181 == 216 && *(v130 + 24) == 1)
    {
      v131 = *(v130 + 72);
      v132 = *(v130 + 80);
      while (v131 != v132)
      {
        if (*v131 == 7)
        {
          NeuralPromptModule::generate_silence(&v190, a1, v131[1]);
          memset(&__str, 0, 24);
          NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v190, &__str);
          v184 = &__str;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v184);
          v137 = v14[1];
          v138 = *v14 + 432;
          if (0x84BDA12F684BDA13 * ((v137 - *v14) >> 3) >= 3 && v137 != v138)
          {
            do
            {
              NeuralPromptModule::process_prosodic_markers(a1, *(v138 + 72), *(v138 + 80));
              v138 += 216;
            }

            while (v138 != v137);
          }

          v129 = v190.__r_.__value_.__l.__size_;
          if (v190.__r_.__value_.__l.__size_)
          {
            goto LABEL_240;
          }

          goto LABEL_329;
        }

        v131 += 14;
      }
    }

    v133 = v165[1];
    v166 = *v165;
    v167 = v133;
    if (v133)
    {
      atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 72))(a1, &v166);
    if (v167)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v167);
    }

    v134 = v14[1];
    v135 = *v14 + 432;
    if (0x84BDA12F684BDA13 * ((v134 - *v14) >> 3) >= 3 && v134 != v135)
    {
      do
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(v135 + 72), *(v135 + 80));
        v135 += 216;
      }

      while (v135 != v134);
    }
  }

  else if (v83)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v90 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__str.__first_) = 0;
      _os_log_impl(&dword_1C2F95000, v90, OS_LOG_TYPE_INFO, "FrontendFeature matches full input prompt.", &__str, 2u);
    }

    Diagnostics::log(6, "FrontendFeature matches full input prompt.", v91);
    NeuralPromptModule::generate_prompt(&v184, a1, v89, 0, 0, 0);
    std::to_string(&v190, v89);
    memset(&__str, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v184, &__str);
    v183.__r_.__value_.__r.__words[0] = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v183);
    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_0::operator()(*v14, v14[1], a1);
LABEL_239:
    v129 = v185;
    if (v185)
    {
LABEL_240:
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }
  }

  else
  {
    v117 = *v14;
    v118 = v14[1];
    if (0x84BDA12F684BDA13 * ((v118 - *v14) >> 3) >= 3)
    {
      for (m = v117 + 432; m != v118; m += 216)
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(m + 72), *(m + 80));
      }
    }
  }

LABEL_329:
  __str.__first_ = &v168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_330:
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v174)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v174);
  }

  if (v176)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v176);
  }

  if (v178)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v178);
  }

  if (v180)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v180);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }
}

void sub_1C2FE10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t buf, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  a44 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a44);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FrontendFeature>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = (a1 + 72);
  std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 48);
  std::vector<WordFeature>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 24);
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void NeuralAdapterModule::process_data(uint64_t a1, uint64_t *a2)
{
  v306 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  {
    return;
  }

  v5 = *(*v4 + 16);
  v283[0] = *(*v4 + 8);
  v283[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    NeuralAdapterModule::setup_features(a1, v283);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    NeuralAdapterModule::setup_features(a1, v283);
  }

  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v281, *(a1 + 168));
  if (v281)
  {
    v6 = *(v281 + 84) == 3;
  }

  else
  {
    v6 = 0;
  }

  NeuralAdapterModule::process_markers(a1, *(**(a1 + 840) + 72), *(**(a1 + 840) + 80));
  v7 = *(a1 + 840);
  if (v6 && 0x84BDA12F684BDA13 * ((v7[1] - *v7) >> 3) >= 2)
  {
    NeuralAdapterModule::process_markers(a1, *(*v7 + 288), *(*v7 + 296));
    v7 = *(a1 + 840);
  }

  if (v7[1] == *v7)
  {
    v9 = 0;
    v259 = 0;
    goto LABEL_747;
  }

  v267 = 0;
  v8 = 0;
  v9 = 0;
  v259 = 0;
  v10 = a1 + 856;
  v280 = (a1 + 400);
  __str = (a1 + 616);
  v278 = (a1 + 928);
  v274 = (a1 + 952);
  v254 = a1 + 544;
  v252 = a1 + 512;
  v266 = (a1 + 976);
  v258 = a1 + 280;
  v263 = a1 + 432;
  v260 = a1 + 456;
  v256 = a1 + 480;
  v11 = *(a1 + 840);
  v12 = *v11;
  v279 = (a1 + 856);
  do
  {
    v270 = v8;
    v13 = v12 + 216 * v8;
    if ((*(v13 + 24) & 1) == 0)
    {
      v133 = v11 + 3;
      v132 = v11[3];
      if (0xF0F0F0F0F0F0F0F1 * ((v133[1] - v132) >> 3) <= v259)
      {
        __p.__r_.__value_.__r.__words[0] = 0x8000000080000000;
        *&__p.__r_.__value_.__r.__words[1] = 0u;
        v294 = 0u;
        v295 = 0u;
        v296 = 0u;
        v297 = 0u;
        v298 = 0u;
        v299 = 0u;
        data = 0x7FFFFFFF;
        v300 = 0u;
      }

      else
      {
        WordFeature::WordFeature(&__p, v132 + 136 * v259);
        data = __p.__r_.__value_.__l.__data_;
      }

      v137 = v8;
      if (v8 != data)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v138 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v8;
          *&buf[8] = 1024;
          *&buf[10] = __p.__r_.__value_.__l.__data_;
          _os_log_impl(&dword_1C2F95000, v138, OS_LOG_TYPE_ERROR, "Phoneme index %d != word phoneme offset %d", buf, 0xEu);
        }

        Diagnostics::log(3, "Phoneme index %d != word phoneme offset %d", v139, v8, LODWORD(__p.__r_.__value_.__l.__data_));
        v137 = __p.__r_.__value_.__l.__data_;
      }

      v140 = (HIDWORD(__p.__r_.__value_.__r.__words[0]) + v137);
      v141 = 1749801491 * ((*(*(a1 + 840) + 8) - **(a1 + 840)) >> 3);
      if ((v140 & 0x80000000) != 0 || v140 > v141)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v142 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v140;
          *&buf[8] = 1024;
          *&buf[10] = v141;
          _os_log_impl(&dword_1C2F95000, v142, OS_LOG_TYPE_ERROR, "word phoneme end %d > limit %d", buf, 0xEu);
        }

        Diagnostics::log(3, "word phoneme end %d > limit %d", v143, v140, v141);
        LODWORD(v140) = v141;
      }

      if (v8 < v140)
      {
        v269 = -1;
        v136 = v8;
        v262 = v140;
        while (1)
        {
          v271 = v136;
          v144 = **(a1 + 840) + 216 * v136;
          v145 = v269;
          if (*(v144 + 148) != v269)
          {
            if (v269 < 0)
            {
              v145 = *(v144 + 148);
            }

            else
            {
              std::vector<std::string>::push_back[abi:ne200100](v10, v280);
              std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
              std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (*(a1 + 912) - 24));
              if (*(a1 + 423) < 0)
              {
                std::string::__init_copy_ctor_external(&v288, *(a1 + 400), *(a1 + 408));
              }

              else
              {
                *&v288.__r_.__value_.__l.__data_ = *v280;
                v288.__r_.__value_.__r.__words[2] = *(a1 + 416);
              }

              if (SBYTE7(v296) < 0)
              {
                std::string::__init_copy_ctor_external(&v287, v295, *(&v295 + 1));
              }

              else
              {
                *&v287.__r_.__value_.__l.__data_ = v295;
                v287.__r_.__value_.__r.__words[2] = v296;
              }

              TacotronPhoneFeature::TacotronPhoneFeature(buf, &v288, &v287, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 1, 0, 0, *(a1 + 296), *(a1 + 300));
              std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, buf);
              v305.__r_.__value_.__r.__words[0] = v304;
              std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v305);
              if (v303 < 0)
              {
                operator delete(*&buf[24]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v287.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v288.__r_.__value_.__l.__data_);
              }

              if (*(a1 + 423) >= 0)
              {
                v146 = *(a1 + 423);
              }

              else
              {
                v146 = *(a1 + 408);
              }

              std::string::basic_string[abi:ne200100](buf, v146 + 1);
              if (buf[23] >= 0)
              {
                v147 = buf;
              }

              else
              {
                v147 = *buf;
              }

              if (v146)
              {
                if (*(a1 + 423) >= 0)
                {
                  v148 = (a1 + 400);
                }

                else
                {
                  v148 = *(a1 + 400);
                }

                memmove(v147, v148, v146);
              }

              *&v147[v146] = 32;
              if (buf[23] >= 0)
              {
                v149 = buf;
              }

              else
              {
                v149 = *buf;
              }

              if (buf[23] >= 0)
              {
                v150 = buf[23];
              }

              else
              {
                v150 = *&buf[8];
              }

              std::string::append(v274, v149, v150);
              v10 = a1 + 856;
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v145 = *(v144 + 148);
            }
          }

          if (*(v144 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v286, *v144, *(v144 + 8));
          }

          else
          {
            v151 = *v144;
            v286.__r_.__value_.__r.__words[2] = *(v144 + 16);
            *&v286.__r_.__value_.__l.__data_ = v151;
          }

          if ((*(a1 + 615) & 0x8000000000000000) != 0)
          {
            if (!*(a1 + 600))
            {
              goto LABEL_413;
            }
          }

          else if (!*(a1 + 615))
          {
            goto LABEL_413;
          }

          if (!*(v144 + 152))
          {
            goto LABEL_413;
          }

          if (*(a1 + 644) == 1)
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 592), &v286.__r_.__value_.__l.__data_, buf);
            v152 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 272, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v258 != v152)
            {
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 592), &v286.__r_.__value_.__l.__data_, buf);
LABEL_410:
              if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v286.__r_.__value_.__l.__data_);
              }

              v286 = *buf;
            }
          }

          else
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v286.__r_.__value_.__l.__data_, (a1 + 592), buf);
            v153 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 272, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v258 != v153)
            {
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v286.__r_.__value_.__l.__data_, (a1 + 592), buf);
              goto LABEL_410;
            }
          }

LABEL_413:
          v269 = v145;
          v154 = *(a1 + 1000);
          NeuralAdapterModule::process_markers(a1, *(v144 + 72), *(v144 + 80));
          *(a1 + 1000) = v154;
          std::vector<std::string>::push_back[abi:ne200100](v10, &v286);
          std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (v144 + 120));
          std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (a1 + 304));
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v285, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
          }

          else
          {
            v285 = v286;
          }

          if (SBYTE7(v296) < 0)
          {
            std::string::__init_copy_ctor_external(&v284, v295, *(&v295 + 1));
          }

          else
          {
            *&v284.__r_.__value_.__l.__data_ = v295;
            v284.__r_.__value_.__r.__words[2] = v296;
          }

          TacotronPhoneFeature::TacotronPhoneFeature(buf, &v285, &v284, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 0, *(a1 + 1000), *(a1 + 296), *(a1 + 300));
          std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, buf);
          v305.__r_.__value_.__r.__words[0] = v304;
          std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v305);
          if (v303 < 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v284.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v285.__r_.__value_.__l.__data_);
          }

          v155 = *(v144 + 28);
          if (!v155)
          {
            v155 = 200;
          }

          v156 = *(v10 + 80);
          *(v156 - 48) = v155;
          if (v156 - 24 != v144 + 72)
          {
            std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>((v156 - 24), *(v144 + 72), *(v144 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(v144 + 80) - *(v144 + 72)) >> 3));
          }

          v157 = *(a1 + 984);
          if (*v266 != v157)
          {
            std::vector<MarkerRecord>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MarkerRecord*>,std::__wrap_iter<MarkerRecord*>>((*(v10 + 80) - 24), *(*(v10 + 80) - 16), *v266, v157, 0x6DB6DB6DB6DB6DB7 * ((v157 - *v266) >> 3));
            std::vector<MarkerRecord>::clear[abi:ne200100](v266);
          }

          if (*(a1 + 1000) == 1)
          {
            *(a1 + 1000) = 0;
          }

          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v286.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v286.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](buf, size + 1);
          if (buf[23] >= 0)
          {
            v159 = buf;
          }

          else
          {
            v159 = *buf;
          }

          if (size)
          {
            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v160 = &v286;
            }

            else
            {
              v160 = v286.__r_.__value_.__r.__words[0];
            }

            memmove(v159, v160, size);
          }

          *&v159[size] = 32;
          if (buf[23] >= 0)
          {
            v161 = buf;
          }

          else
          {
            v161 = *buf;
          }

          if (buf[23] >= 0)
          {
            v162 = buf[23];
          }

          else
          {
            v162 = *&buf[8];
          }

          std::string::append(v274, v161, v162);
          v10 = a1 + 856;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v263 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v286.__r_.__value_.__l.__data_))
          {
            if (v260 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, &v286.__r_.__value_.__l.__data_))
            {
              if (v256 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, &v286.__r_.__value_.__l.__data_))
              {
                if (Diagnostics_GetLogObject(void)::onceToken != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v165 = Diagnostics_GetLogObject(void)::__profile_log_default;
                if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
                {
                  v167 = &v286;
                  if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v167 = v286.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315138;
                  *&buf[4] = v167;
                }

                v168 = &v286;
                if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v168 = v286.__r_.__value_.__r.__words[0];
                }
              }

              v163 = 44;
            }

            else
            {
              v163 = 46;
            }

            goto LABEL_475;
          }

          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v286.__r_.__value_.__l.__size_ != 1)
            {
              goto LABEL_476;
            }

            v164 = v286.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) != 1)
            {
              goto LABEL_476;
            }

            v164 = &v286;
          }

          if (v164->__r_.__value_.__s.__data_[0] == 35)
          {
            v163 = 35;
LABEL_475:
            NeuralAdapterModule::save_break(a1, v163, v267, v9);
          }

LABEL_476:
          v169 = (v267 - v9);
          if (v169 >= *(a1 + 560))
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v175 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = v267 - v9;
              _os_log_impl(&dword_1C2F95000, v175, OS_LOG_TYPE_INFO, "Max word limit reached. word count = %d", buf, 8u);
            }

            Diagnostics::log(6, "Max word limit reached. word count = %d", v176, v169);
LABEL_493:
            v177 = *(a1 + 1008);
            v178 = *(v177 + 8);
            v277 = *v177;
            __na = *(v177 + 16);
            v265 = *(v177 + 24);
            v179 = *(a1 + 1016);
            v180 = v179 - (v177 + 32);
            if (v179 != v177 + 32)
            {
              memmove(v177, (v177 + 32), v180 - 7);
            }

            *(a1 + 1016) = v177 + v180;
            v181 = *(a1 + 864);
            v182 = *(a1 + 856);
            v183 = 0xAAAAAAAAAAAAAAABLL * ((v181 - v182) >> 3);
            v184 = v178;
            if (v178 < v183)
            {
              v185 = *(a1 + 423);
              if (v185 >= 0)
              {
                v186 = *(a1 + 423);
              }

              else
              {
                v186 = *(a1 + 408);
              }

              v187 = v182 + 24 * v178;
              v184 = v178;
              do
              {
                v188 = *(v187 + 23);
                v189 = v188;
                if ((v188 & 0x80u) != 0)
                {
                  v188 = *(v187 + 8);
                }

                if (v188 != v186)
                {
                  goto LABEL_512;
                }

                v190 = v189 >= 0 ? v187 : *v187;
                v191 = v185 >= 0 ? (a1 + 400) : *v280;
                if (memcmp(v190, v191, v186))
                {
                  goto LABEL_512;
                }

                ++v184;
                v187 += 24;
              }

              while (v183 != v184);
              v184 = 0xAAAAAAAAAAAAAAABLL * ((v181 - v182) >> 3);
            }

LABEL_512:
            memset(&v305, 0, sizeof(v305));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v305, (v182 + 24 * v184), v181, 0xAAAAAAAAAAAAAAABLL * ((v181 - v182 + -24 * v184) >> 3));
            std::vector<std::string>::resize(v279, v178);
            v192 = (24 * v184 + *(a1 + 880));
            v193 = *(a1 + 888);
            memset(&v292, 0, sizeof(v292));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v292, v192, v193, 0xAAAAAAAAAAAAAAABLL * ((v193 - v192) >> 3));
            std::vector<std::string>::resize((a1 + 880), v178);
            v194 = (24 * v184 + *(a1 + 904));
            v195 = *(a1 + 912);
            memset(&v291, 0, sizeof(v291));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v291, v194, v195, 0xAAAAAAAAAAAAAAABLL * ((v195 - v194) >> 3));
            std::vector<std::string>::resize((a1 + 904), v178);
            v196 = *v278;
            v197 = *(a1 + 936);
            v198 = *v278 + 104 * v184;
            memset(&v290, 0, sizeof(v290));
            *buf = &v290;
            buf[8] = 0;
            if (v197 != v198)
            {
              v199 = 0x4EC4EC4EC4EC4EC5 * ((v197 - v198) >> 3);
              if (v199 <= 0x276276276276276)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v199);
              }

              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v200 = 0x4EC4EC4EC4EC4EC5 * ((v197 - v196) >> 3);
            v201 = v178 >= v200;
            v202 = v178 - v200;
            if (v202 != 0 && v201)
            {
              v203 = *(a1 + 944);
              if (0x4EC4EC4EC4EC4EC5 * ((v203 - v197) >> 3) < v202)
              {
                if (v178 <= 0x276276276276276)
                {
                  v302 = a1 + 928;
                  v204 = 0x4EC4EC4EC4EC4EC5 * ((v203 - v196) >> 3);
                  v205 = 2 * v204;
                  if (2 * v204 <= v178)
                  {
                    v205 = v178;
                  }

                  if (v204 >= 0x13B13B13B13B13BLL)
                  {
                    v206 = 0x276276276276276;
                  }

                  else
                  {
                    v206 = v205;
                  }

                  std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v206);
                }

                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v207 = v197 + 104 * v202;
              do
              {
                *(v197 + 16) = 0uLL;
                *(v197 + 32) = 0uLL;
                *v197 = 0uLL;
                *(v197 + 48) = 0x8000000080000000;
                *(v197 + 56) = 0;
                *(v197 + 59) = 0;
                *(v197 + 64) = xmmword_1C3844BC0;
                *(v197 + 88) = 0;
                *(v197 + 96) = 0;
                *(v197 + 80) = 0;
                v197 += 104;
              }

              while (v197 != v207);
              *(a1 + 936) = v207;
            }

            else if (!v201)
            {
              std::vector<TacotronPhoneFeature>::__base_destruct_at_end[abi:ne200100](v278, (v196 + 104 * v178));
            }

            v208 = *(a1 + 975);
            for (i = __na; ; ++i)
            {
              v210 = v208;
              if ((v208 & 0x80) != 0)
              {
                v210 = *(a1 + 960);
              }

              if (i >= v210)
              {
                goto LABEL_541;
              }

              v211 = *std::string::at(v274, i);
              if (v211 != *std::string::at(v280, 0) && *std::string::at(v274, i) != 32)
              {
                break;
              }

              v208 = *(a1 + 975);
              v212 = v208;
              if (*(a1 + 975) < 0)
              {
                v212 = *(a1 + 960);
              }

              if (i >= v212 - 1)
              {
                goto LABEL_541;
              }
            }

            v208 = *(a1 + 975);
LABEL_541:
            v213 = a1 + 952;
            if ((v208 & 0x80) != 0)
            {
              v213 = *(a1 + 952);
              v208 = *(a1 + 960);
            }

            std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, (i + v213), (v213 + v208), v208 - i);
            std::string::resize(v274, __na, 0);
            UTFString::rstrip(v274);
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v214 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 67109632;
              *&buf[4] = v265;
              *&buf[8] = 2048;
              *&buf[10] = v277->__r_.__value_.__r.__words + 1;
              *&buf[18] = 2048;
              *&buf[20] = v178;
              _os_log_impl(&dword_1C2F95000, v214, OS_LOG_TYPE_INFO, "Break [%c] %zu words %zu phones", buf, 0x1Cu);
            }

            Diagnostics::log(6, "Break [%c] %zu words %zu phones", v215, v265, &v277->__r_.__value_.__l.__data_ + 1, v178);
            NeuralAdapterModule::dump_features(a1);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) >= *(a1 + 564))
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v170 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              v172 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3);
              *buf = 134217984;
              *&buf[4] = v172;
              _os_log_impl(&dword_1C2F95000, v170, OS_LOG_TYPE_INFO, "Max phone limit reached. phone count = %ld", buf, 0xCu);
            }

            Diagnostics::log(6, "Max phone limit reached. phone count = %ld", v171, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3));
            if (*(a1 + 1008) == *(a1 + 1016))
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v173 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C2F95000, v173, OS_LOG_TYPE_INFO, "No proper stop position found in phone vector, do hard split", buf, 2u);
              }

              Diagnostics::log(6, "No proper stop position found in phone vector, do hard split", v174);
              NeuralAdapterModule::save_break(a1, 35, v267, v9);
            }

            goto LABEL_493;
          }

          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v286.__r_.__value_.__l.__data_);
          }

          v136 = v271 + 1;
          if (v262 == v271 + 1)
          {
            goto LABEL_553;
          }
        }
      }

      v136 = v8;
LABEL_553:
      if (*(a1 + 1008) == *(a1 + 1016) || (*(a1 + 645) & 1) != 0)
      {
        if (*(a1 + 645))
        {
          NeuralAdapterModule::save_break(a1, 35, v259, v9);
LABEL_583:
          std::vector<std::string>::push_back[abi:ne200100](v10, v280);
          v223 = *(a1 + 888);
          if (v223 == *(a1 + 880))
          {
            std::string::basic_string[abi:ne200100]<0>(&v305, "-");
          }

          else if (*(v223 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v305, *(v223 - 24), *(v223 - 16));
          }

          else
          {
            v224 = *(v223 - 24);
            v305.__r_.__value_.__r.__words[2] = *(v223 - 8);
            *&v305.__r_.__value_.__l.__data_ = v224;
          }

          std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &v305);
          v225 = *(a1 + 912);
          if (v225 == *(a1 + 904))
          {
            std::string::basic_string[abi:ne200100]<0>(&v291, "narrator");
          }

          else if (*(v225 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v291, *(v225 - 24), *(v225 - 16));
          }

          else
          {
            v226 = *(v225 - 24);
            v291.__r_.__value_.__r.__words[2] = *(v225 - 8);
            *&v291.__r_.__value_.__l.__data_ = v226;
          }

          std::vector<std::string>::push_back[abi:ne200100](v10 + 48, &v291);
          if (*(a1 + 423) >= 0)
          {
            v227 = *(a1 + 423);
          }

          else
          {
            v227 = *(a1 + 408);
          }

          std::string::basic_string[abi:ne200100](buf, v227 + 1);
          if (buf[23] >= 0)
          {
            v228 = buf;
          }

          else
          {
            v228 = *buf;
          }

          if (v227)
          {
            if (*(a1 + 423) >= 0)
            {
              v229 = (a1 + 400);
            }

            else
            {
              v229 = *(a1 + 400);
            }

            memmove(v228, v229, v227);
          }

          *&v228[v227] = 32;
          if (buf[23] >= 0)
          {
            v230 = buf;
          }

          else
          {
            v230 = *buf;
          }

          if (buf[23] >= 0)
          {
            v231 = buf[23];
          }

          else
          {
            v231 = *&buf[8];
          }

          std::string::append(v274, v230, v231);
          v10 = a1 + 856;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (*(a1 + 423) < 0)
          {
            std::string::__init_copy_ctor_external(&v290, *(a1 + 400), *(a1 + 408));
          }

          else
          {
            *&v290.__r_.__value_.__l.__data_ = *v280;
            v290.__r_.__value_.__r.__words[2] = *(a1 + 416);
          }

          if (SBYTE7(v296) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v295, *(&v295 + 1));
          }

          else
          {
            *&__dst.__r_.__value_.__l.__data_ = v295;
            __dst.__r_.__value_.__r.__words[2] = v296;
          }

          TacotronPhoneFeature::TacotronPhoneFeature(buf, &v290, &__dst, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 1, 0, 0, *(a1 + 296), *(a1 + 300));
          std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, buf);
          v288.__r_.__value_.__r.__words[0] = v304;
          std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v288);
          if (v303 < 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v305.__r_.__value_.__l.__data_);
          }

          v216 = *(*(a1 + 840) + 24);
          v217 = 0xF0F0F0F0F0F0F0F1 * ((*(*(a1 + 840) + 32) - v216) >> 3);
          goto LABEL_631;
        }
      }

      else
      {
        v216 = *(*(a1 + 840) + 24);
        v217 = 0xF0F0F0F0F0F0F0F1 * ((*(*(a1 + 840) + 32) - v216) >> 3);
        if (v217 - 1 <= v259)
        {
LABEL_631:
          if (v217 > v259)
          {
            if (*(a1 + 645) == 1)
            {
              NeuralAdapterModule::find_last_char(&v305, v216 + 136 * v259 + 40, 0);
              if ((-1 - 0xF0F0F0F0F0F0F0FLL * ((*(*(a1 + 840) + 32) - *(*(a1 + 840) + 24)) >> 3) == v259 || *(a1 + 1008) == *(a1 + 1016) && (v259 - v9 + 1 == *(a1 + 560) || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) >= *(a1 + 564))) && v263 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v305.__r_.__value_.__l.__data_))
              {
                if (Diagnostics_GetLogObject(void)::onceToken != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v232 = Diagnostics_GetLogObject(void)::__profile_log_default;
                if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C2F95000, v232, OS_LOG_TYPE_DEBUG, "Append period in the end of utterance.", buf, 2u);
                }

                Diagnostics::log(7, "Append period in the end of utterance.", v233);
                std::string::operator=(&v305, (a1 + 568));
              }

              if (v263 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v305.__r_.__value_.__l.__data_))
              {
                std::vector<std::string>::push_back[abi:ne200100](v10, &v305);
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
                std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (*(a1 + 912) - 24));
                if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v292, v305.__r_.__value_.__l.__data_, v305.__r_.__value_.__l.__size_);
                }

                else
                {
                  v292 = v305;
                }

                if (SBYTE7(v296) < 0)
                {
                  std::string::__init_copy_ctor_external(&v291, v295, *(&v295 + 1));
                }

                else
                {
                  *&v291.__r_.__value_.__l.__data_ = v295;
                  v291.__r_.__value_.__r.__words[2] = v296;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(buf, &v292, &v291, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 1, 0, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, buf);
                v290.__r_.__value_.__r.__words[0] = v304;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v290);
                if (v303 < 0)
                {
                  operator delete(*&buf[24]);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v291.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v292.__r_.__value_.__l.__data_);
                }

                *(*(v10 + 80) - 48) = 200;
                if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v234 = HIBYTE(v305.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v234 = v305.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](buf, v234 + 1);
                if (buf[23] >= 0)
                {
                  v235 = buf;
                }

                else
                {
                  v235 = *buf;
                }

                if (v234)
                {
                  if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v236 = &v305;
                  }

                  else
                  {
                    v236 = v305.__r_.__value_.__r.__words[0];
                  }

                  memmove(v235, v236, v234);
                }

                *&v235[v234] = 32;
                if (buf[23] >= 0)
                {
                  v237 = buf;
                }

                else
                {
                  v237 = *buf;
                }

                if (buf[23] >= 0)
                {
                  v238 = buf[23];
                }

                else
                {
                  v238 = *&buf[8];
                }

                std::string::append(v274, v237, v238);
                v10 = a1 + 856;
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (-1 - 0xF0F0F0F0F0F0F0FLL * ((*(*(a1 + 840) + 32) - *(*(a1 + 840) + 24)) >> 3) > v259 && (*(a1 + 1008) != *(a1 + 1016) || v259 - v9 + 1 != *(a1 + 560) && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) < *(a1 + 564)))
                {
                  std::vector<std::string>::push_back[abi:ne200100](v279, v280);
                  std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
                  std::vector<std::string>::push_back[abi:ne200100](a1 + 904, (*(a1 + 912) - 24));
                  if (*(a1 + 423) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v290, *(a1 + 400), *(a1 + 408));
                  }

                  else
                  {
                    *&v290.__r_.__value_.__l.__data_ = *v280;
                    v290.__r_.__value_.__r.__words[2] = *(a1 + 416);
                  }

                  if (SBYTE7(v296) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__dst, v295, *(&v295 + 1));
                  }

                  else
                  {
                    *&__dst.__r_.__value_.__l.__data_ = v295;
                    __dst.__r_.__value_.__r.__words[2] = v296;
                  }

                  TacotronPhoneFeature::TacotronPhoneFeature(buf, &v290, &__dst, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 0, 0, *(a1 + 296), *(a1 + 300));
                  std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, buf);
                  v288.__r_.__value_.__r.__words[0] = v304;
                  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v288);
                  if (v303 < 0)
                  {
                    operator delete(*&buf[24]);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v290.__r_.__value_.__l.__data_);
                  }

                  if (*(a1 + 423) >= 0)
                  {
                    v239 = *(a1 + 423);
                  }

                  else
                  {
                    v239 = *(a1 + 408);
                  }

                  std::string::basic_string[abi:ne200100](buf, v239 + 1);
                  if (buf[23] >= 0)
                  {
                    v240 = buf;
                  }

                  else
                  {
                    v240 = *buf;
                  }

                  if (v239)
                  {
                    if (*(a1 + 423) >= 0)
                    {
                      v241 = (a1 + 400);
                    }

                    else
                    {
                      v241 = *(a1 + 400);
                    }

                    memmove(v240, v241, v239);
                  }

                  *&v240[v239] = 32;
                  if (buf[23] >= 0)
                  {
                    v242 = buf;
                  }

                  else
                  {
                    v242 = *buf;
                  }

                  if (buf[23] >= 0)
                  {
                    v243 = buf[23];
                  }

                  else
                  {
                    v243 = *&buf[8];
                  }

                  std::string::append(v274, v242, v243);
                  v10 = a1 + 856;
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }
                }

                if (v260 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, &v305.__r_.__value_.__l.__data_))
                {
                  if (v256 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, &v305.__r_.__value_.__l.__data_))
                  {
                    if (Diagnostics_GetLogObject(void)::onceToken != -1)
                    {
                      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                    }

                    v245 = Diagnostics_GetLogObject(void)::__profile_log_default;
                    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
                    {
                      v247 = &v305;
                      if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v247 = v305.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315138;
                      *&buf[4] = v247;
                    }

                    v248 = &v305;
                    if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v248 = v305.__r_.__value_.__r.__words[0];
                    }
                  }

                  v244 = 44;
                }

                else
                {
                  v244 = 46;
                }

                NeuralAdapterModule::save_break(a1, v244, v259, v9);
              }

              if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v305.__r_.__value_.__l.__data_);
              }
            }

            v267 = ++v259;
          }

          if (SHIBYTE(v300) < 0)
          {
            operator delete(*(&v299 + 1));
          }

          if (SBYTE7(v299) < 0)
          {
            operator delete(v298);
          }

          if (SHIBYTE(v297) < 0)
          {
            operator delete(*(&v296 + 1));
          }

          if (SBYTE7(v296) < 0)
          {
            operator delete(v295);
          }

          if (SHIBYTE(v294) < 0)
          {
            operator delete(__p.__r_.__value_.__r.__words[2]);
          }

          v11 = *(a1 + 840);
          goto LABEL_744;
        }
      }

      if (*(a1 + 975) < 0)
      {
        std::string::__init_copy_ctor_external(&v292, *(a1 + 952), *(a1 + 960));
      }

      else
      {
        *&v292.__r_.__value_.__l.__data_ = *&v274->__r_.__value_.__l.__data_;
        v292.__r_.__value_.__r.__words[2] = *(a1 + 968);
      }

      UTFString::rstrip(&v292);
      v305 = v292;
      memset(&v292, 0, sizeof(v292));
      NeuralAdapterModule::find_last_char(buf, &v305, 1);
      if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v305.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v292.__r_.__value_.__l.__data_);
      }

      if (v263 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, buf))
      {
        v218 = 35;
      }

      else if (v260 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, buf))
      {
        if (v256 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, buf))
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v219 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
          {
            v221 = buf;
            if (buf[23] < 0)
            {
              v221 = *buf;
            }

            LODWORD(v305.__r_.__value_.__l.__data_) = 136315138;
            *(v305.__r_.__value_.__r.__words + 4) = v221;
          }

          v222 = buf;
          if (buf[23] < 0)
          {
            v222 = *buf;
          }
        }

        v218 = 44;
      }

      else
      {
        v218 = 46;
      }

      NeuralAdapterModule::save_break(a1, v218, v259, v9);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_583;
    }

    v264 = v8;
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    if (v14 == v15)
    {
      goto LABEL_337;
    }

    __n = v9;
    v268 = *(v13 + 80);
    do
    {
      v16 = *(a1 + 639);
      if (v16 < 0)
      {
        if (!*(a1 + 624))
        {
LABEL_74:
          v20 = *v14;
LABEL_75:
          if (v20 == 10)
          {
            NeuralAdapterModule::process_bookmark(a1, v14);
          }

          goto LABEL_77;
        }
      }

      else if (!*(a1 + 639))
      {
        goto LABEL_74;
      }

      v17 = *(a1 + 840);
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *v14;
      v21 = v18 != v19 && v20 == 7;
      if (!v21)
      {
        goto LABEL_75;
      }

      if ((-1 - 252645135 * ((v19 - v18) >> 3)) >= v259)
      {
        v22 = v259;
      }

      else
      {
        v22 = -1 - 252645135 * ((v19 - v18) >> 3);
      }

      v23 = v14[1];
      if (v23 < 2)
      {
        goto LABEL_77;
      }

      v24 = v23;
      if (*(a1 + 640) == 2)
      {
        v25 = *(a1 + 864);
        v26 = *(a1 + 856);
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
        v28 = (v25 - 48);
        v29 = v27 - 1;
        if (v27 <= 1)
        {
          v28 = buf;
        }

        if (v25 == v26)
        {
          v28 = buf;
        }

        v275 = v28;
        if (v25 == v26)
        {
          v30 = buf;
        }

        else
        {
          v30 = (v25 - 24);
        }

        if (*(a1 + 496) > v24)
        {
          v24 = *(a1 + 496);
        }

        v31 = v27 - 2;
        memset(buf, 0, 24);
        v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
        if (v32 >= 0)
        {
          v33 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v30->__r_.__value_.__l.__size_;
        }

        v34 = *(a1 + 423);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(a1 + 408);
        }

        if (v33 == v34)
        {
          v36 = v32 >= 0 ? v30 : v30->__r_.__value_.__r.__words[0];
          v37 = v35 >= 0 ? (a1 + 400) : *v280;
          if (!memcmp(v36, v37, v33) && v254 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 536, &v275->__r_.__value_.__l.__data_))
          {
            std::operator+<char>();
            v91 = std::string::append(&v291, "->");
            v92 = *&v91->__r_.__value_.__l.__data_;
            v292.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
            *&v292.__r_.__value_.__l.__data_ = v92;
            v91->__r_.__value_.__l.__size_ = 0;
            v91->__r_.__value_.__r.__words[2] = 0;
            v91->__r_.__value_.__r.__words[0] = 0;
            v93 = *(a1 + 639);
            if (v93 >= 0)
            {
              v94 = (a1 + 616);
            }

            else
            {
              v94 = *(a1 + 616);
            }

            if (v93 >= 0)
            {
              v95 = *(a1 + 639);
            }

            else
            {
              v95 = *(a1 + 624);
            }

            v96 = std::string::append(&v292, v94, v95);
            v97 = *&v96->__r_.__value_.__l.__data_;
            v305.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
            *&v305.__r_.__value_.__l.__data_ = v97;
            v96->__r_.__value_.__l.__size_ = 0;
            v96->__r_.__value_.__r.__words[2] = 0;
            v96->__r_.__value_.__r.__words[0] = 0;
            v98 = std::string::append(&v305, ") ");
            v99 = *&v98->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v99;
            v98->__r_.__value_.__l.__size_ = 0;
            v98->__r_.__value_.__r.__words[2] = 0;
            v98->__r_.__value_.__r.__words[0] = 0;
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
              v101 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v101 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(v274, p_p, v101);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v305.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v292.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v291.__r_.__value_.__l.__data_);
            }

            std::string::operator=(v275, __str);
            v49 = *v278 + 104 * v31;
            std::string::operator=(v49, __str);
            goto LABEL_72;
          }
        }

        if (v254 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 536, &v30->__r_.__value_.__l.__data_))
        {
          v82 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          if (v82 >= 0)
          {
            v83 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = v30->__r_.__value_.__l.__size_;
          }

          v84 = *(a1 + 423);
          v85 = v84;
          if ((v84 & 0x80u) != 0)
          {
            v84 = *(a1 + 408);
          }

          if (v83 == v84 && (v82 >= 0 ? (v86 = v30) : (v86 = v30->__r_.__value_.__r.__words[0]), v85 >= 0 ? (v87 = (a1 + 400)) : (v87 = *v280), !memcmp(v86, v87, v83) && v252 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 504, &v275->__r_.__value_.__l.__data_)))
          {
            v88 = *(a1 + 528);
            v89 = *(a1 + 928) + 104 * v31;
          }

          else
          {
            if (v252 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 504, &v30->__r_.__value_.__l.__data_))
            {
              if (*(a1 + 856) != *(a1 + 864))
              {
                std::vector<std::string>::push_back[abi:ne200100](v10, __str);
                std::string::basic_string[abi:ne200100]<0>(&__p, "-");
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v116 = *(a1 + 912);
                if (v116 == *(a1 + 904))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v305, "narrator");
                }

                else if (*(v116 - 1) < 0)
                {
                  std::string::__init_copy_ctor_external(&v305, *(v116 - 24), *(v116 - 16));
                }

                else
                {
                  v117 = *(v116 - 24);
                  v305.__r_.__value_.__r.__words[2] = *(v116 - 8);
                  *&v305.__r_.__value_.__l.__data_ = v117;
                }

                std::vector<std::string>::push_back[abi:ne200100](v10 + 48, &v305);
                v118 = *(*(a1 + 840) + 24);
                if (*(a1 + 639) < 0)
                {
                  std::string::__init_copy_ctor_external(&v292, *(a1 + 616), *(a1 + 624));
                }

                else
                {
                  *&v292.__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
                  v292.__r_.__value_.__r.__words[2] = *(a1 + 632);
                }

                v119 = v118 + 136 * v22;
                if (*(v119 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&v291, *(v119 + 40), *(v119 + 48));
                }

                else
                {
                  v120 = *(v119 + 40);
                  v291.__r_.__value_.__r.__words[2] = *(v119 + 56);
                  *&v291.__r_.__value_.__l.__data_ = v120;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v292, &v291, *(v119 + 8), *(v119 + 12), v24, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, &__p);
                v290.__r_.__value_.__r.__words[0] = &v297 + 8;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v290);
                if (SBYTE7(v295) < 0)
                {
                  operator delete(v294);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v291.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v292.__r_.__value_.__l.__data_);
                }

                *(*(a1 + 936) - 28) = *(a1 + 500);
                if (*(a1 + 639) >= 0)
                {
                  v121 = *(a1 + 639);
                }

                else
                {
                  v121 = *(a1 + 624);
                }

                std::string::basic_string[abi:ne200100](&__p, v121 + 1);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v122 = &__p;
                }

                else
                {
                  v122 = __p.__r_.__value_.__r.__words[0];
                }

                if (v121)
                {
                  if (*(a1 + 639) >= 0)
                  {
                    v123 = (a1 + 616);
                  }

                  else
                  {
                    v123 = *(a1 + 616);
                  }

                  memmove(v122, v123, v121);
                }

                *(&v122->__r_.__value_.__l.__data_ + v121) = 32;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v124 = &__p;
                }

                else
                {
                  v124 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v125 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v125 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(v274, v124, v125);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::vector<std::string>::push_back[abi:ne200100](v279, v280);
                std::string::basic_string[abi:ne200100]<0>(&__p, "-");
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v305);
                if (*(a1 + 423) < 0)
                {
                  std::string::__init_copy_ctor_external(&v290, *(a1 + 400), *(a1 + 408));
                }

                else
                {
                  *&v290.__r_.__value_.__l.__data_ = *v280;
                  v290.__r_.__value_.__r.__words[2] = *(a1 + 416);
                }

                if (*(v119 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&__dst, *(v119 + 40), *(v119 + 48));
                }

                else
                {
                  v126 = *(v119 + 40);
                  __dst.__r_.__value_.__r.__words[2] = *(v119 + 56);
                  *&__dst.__r_.__value_.__l.__data_ = v126;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v290, &__dst, *(v119 + 8), *(v119 + 12), 1, 0, 0, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, &__p);
                v288.__r_.__value_.__r.__words[0] = &v297 + 8;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v288);
                if (SBYTE7(v295) < 0)
                {
                  operator delete(v294);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v290.__r_.__value_.__l.__data_);
                }

                if (*(a1 + 423) >= 0)
                {
                  v127 = *(a1 + 423);
                }

                else
                {
                  v127 = *(a1 + 408);
                }

                std::string::basic_string[abi:ne200100](&__p, v127 + 1);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v128 = &__p;
                }

                else
                {
                  v128 = __p.__r_.__value_.__r.__words[0];
                }

                if (v127)
                {
                  if (*(a1 + 423) >= 0)
                  {
                    v129 = (a1 + 400);
                  }

                  else
                  {
                    v129 = *(a1 + 400);
                  }

                  memmove(v128, v129, v127);
                }

                *(&v128->__r_.__value_.__l.__data_ + v127) = 32;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v130 = &__p;
                }

                else
                {
                  v130 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v131 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v131 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(v274, v130, v131);
                v10 = a1 + 856;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v305.__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_156;
            }

            v88 = *(a1 + 528);
            v89 = *(a1 + 928) + 104 * v29;
          }

          *(v89 + 72) = v88;
        }

        else
        {
          std::operator+<char>();
          v38 = std::string::append(&v291, "->");
          v39 = *&v38->__r_.__value_.__l.__data_;
          v292.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v292.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          v40 = *(a1 + 639);
          if (v40 >= 0)
          {
            v41 = (a1 + 616);
          }

          else
          {
            v41 = *(a1 + 616);
          }

          if (v40 >= 0)
          {
            v42 = *(a1 + 639);
          }

          else
          {
            v42 = *(a1 + 624);
          }

          v43 = std::string::append(&v292, v41, v42);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v305.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v305.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = std::string::append(&v305, ") ");
          v46 = *&v45->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__p;
          }

          else
          {
            v47 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(v274, v47, v48);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v305.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v292.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          std::string::operator=(v30, __str);
          v49 = *v278 + 104 * v29;
          std::string::operator=(v49, __str);
LABEL_72:
          v50 = *(a1 + 500);
          *(v49 + 72) = v24;
          *(v49 + 76) = v50;
        }

LABEL_156:
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v90 = *buf;
        goto LABEL_254;
      }

      v51 = v22;
      v52 = *(a1 + 864);
      v53 = *(a1 + 856);
      v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 3);
      v276 = (v54 - 1);
      if (v54 <= 1)
      {
        v55 = buf;
      }

      else
      {
        v55 = (v52 - 48);
      }

      if (v52 == v53)
      {
        v56 = buf;
      }

      else
      {
        v56 = v55;
      }

      if (v52 == v53)
      {
        v57 = buf;
      }

      else
      {
        v57 = (v52 - 24);
      }

      memset(buf, 0, 24);
      v58 = v57[23];
      if (v58 >= 0)
      {
        v59 = v57[23];
      }

      else
      {
        v59 = *(v57 + 1);
      }

      v60 = *(a1 + 423);
      v61 = v60;
      if ((v60 & 0x80u) != 0)
      {
        v60 = *(a1 + 408);
      }

      if (v59 == v60)
      {
        v253 = v56;
        v255 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 3);
        v261 = v57[23];
        if (v58 >= 0)
        {
          v62 = v57;
        }

        else
        {
          v62 = *v57;
        }

        if (v61 >= 0)
        {
          v63 = (a1 + 400);
        }

        else
        {
          v63 = *(a1 + 400);
        }

        v64 = memcmp(v62, v63, v59);
        v65 = *(a1 + 624);
        if (v64)
        {
          goto LABEL_122;
        }

        v66 = buf;
        if (v255 <= 1)
        {
          v67 = buf;
        }

        else
        {
          v67 = (v52 - 48);
        }

        if (v52 != v53)
        {
          v66 = v67;
        }

        v68 = v66[23];
        v69 = *(v66 + 1);
        v70 = (v68 & 0x80u) == 0 ? v68 : v69;
        v71 = v16 >= 0 ? v16 : *(a1 + 624);
        if (v70 != v71)
        {
LABEL_122:
          v58 = v261;
        }

        else
        {
          if ((v68 & 0x80u) == 0)
          {
            v72 = v253;
          }

          else
          {
            v72 = *v253;
          }

          if (v16 >= 0)
          {
            v73 = (a1 + 616);
          }

          else
          {
            v73 = __str->__r_.__value_.__r.__words[0];
          }

          v74 = *(a1 + 624);
          v75 = memcmp(v72, v73, v70);
          v65 = v74;
          v22 = v51;
          v58 = v261;
          if (!v75)
          {
            v76 = *v278 + 104 * (v255 - 2);
LABEL_182:
            *(v76 + 72) = v24;
            v10 = a1 + 856;
            v15 = v268;
            v9 = __n;
            goto LABEL_77;
          }
        }
      }

      else
      {
        v65 = *(a1 + 624);
      }

      if (v16 >= 0)
      {
        v77 = v16;
      }

      else
      {
        v77 = v65;
      }

      if (v59 == v77)
      {
        v78 = v58 >= 0 ? v57 : *v57;
        v79 = (v16 >= 0 ? a1 + 616 : __str->__r_.__value_.__r.__words[0]);
        if (!memcmp(v78, v79, v59))
        {
          v76 = *v278 + 104 * v276;
          goto LABEL_182;
        }
      }

      v21 = v52 == v53;
      v10 = a1 + 856;
      v15 = v268;
      v9 = __n;
      if (!v21)
      {
        std::vector<std::string>::push_back[abi:ne200100](v279, __str);
        std::string::basic_string[abi:ne200100]<0>(&__p, "-");
        std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v80 = *(a1 + 912);
        if (v80 == *(a1 + 904))
        {
          std::string::basic_string[abi:ne200100]<0>(&v305, "narrator");
        }

        else if (*(v80 - 1) < 0)
        {
          std::string::__init_copy_ctor_external(&v305, *(v80 - 24), *(v80 - 16));
        }

        else
        {
          v81 = *(v80 - 24);
          v305.__r_.__value_.__r.__words[2] = *(v80 - 8);
          *&v305.__r_.__value_.__l.__data_ = v81;
        }

        std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v305);
        v102 = *(*(a1 + 840) + 24);
        if (*(a1 + 639) < 0)
        {
          std::string::__init_copy_ctor_external(&v292, *(a1 + 616), *(a1 + 624));
        }

        else
        {
          *&v292.__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
          v292.__r_.__value_.__r.__words[2] = *(a1 + 632);
        }

        v103 = v102 + 136 * v22;
        if (*(v103 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v291, *(v103 + 40), *(v103 + 48));
        }

        else
        {
          v104 = *(v103 + 40);
          v291.__r_.__value_.__r.__words[2] = *(v103 + 56);
          *&v291.__r_.__value_.__l.__data_ = v104;
        }

        TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v292, &v291, *(v103 + 8), *(v103 + 12), v24, *(a1 + 296), *(a1 + 300));
        std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, &__p);
        v290.__r_.__value_.__r.__words[0] = &v297 + 8;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v290);
        if (SBYTE7(v295) < 0)
        {
          operator delete(v294);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v291.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v292.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 639) >= 0)
        {
          v105 = *(a1 + 639);
        }

        else
        {
          v105 = *(a1 + 624);
        }

        std::string::basic_string[abi:ne200100](&__p, v105 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = &__p;
        }

        else
        {
          v106 = __p.__r_.__value_.__r.__words[0];
        }

        if (v105)
        {
          if (*(a1 + 639) >= 0)
          {
            v107 = (a1 + 616);
          }

          else
          {
            v107 = *(a1 + 616);
          }

          memmove(v106, v107, v105);
        }

        *(&v106->__r_.__value_.__l.__data_ + v105) = 32;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = &__p;
        }

        else
        {
          v108 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v109 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v109 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(v274, v108, v109);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::vector<std::string>::push_back[abi:ne200100](v279, v280);
        std::string::basic_string[abi:ne200100]<0>(&__p, "-");
        std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v305);
        if (*(a1 + 423) < 0)
        {
          std::string::__init_copy_ctor_external(&v290, *(a1 + 400), *(a1 + 408));
        }

        else
        {
          *&v290.__r_.__value_.__l.__data_ = *v280;
          v290.__r_.__value_.__r.__words[2] = *(a1 + 416);
        }

        if (*(v103 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *(v103 + 40), *(v103 + 48));
        }

        else
        {
          v110 = *(v103 + 40);
          __dst.__r_.__value_.__r.__words[2] = *(v103 + 56);
          *&__dst.__r_.__value_.__l.__data_ = v110;
        }

        TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v290, &__dst, *(v103 + 8), *(v103 + 12), 1, 0, 0, *(a1 + 296), *(a1 + 300));
        std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v278, &__p);
        v288.__r_.__value_.__r.__words[0] = &v297 + 8;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v288);
        if (SBYTE7(v295) < 0)
        {
          operator delete(v294);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v290.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 423) >= 0)
        {
          v111 = *(a1 + 423);
        }

        else
        {
          v111 = *(a1 + 408);
        }

        std::string::basic_string[abi:ne200100](&__p, v111 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v112 = &__p;
        }

        else
        {
          v112 = __p.__r_.__value_.__r.__words[0];
        }

        if (v111)
        {
          if (*(a1 + 423) >= 0)
          {
            v113 = (a1 + 400);
          }

          else
          {
            v113 = *(a1 + 400);
          }

          memmove(v112, v113, v111);
        }

        *(&v112->__r_.__value_.__l.__data_ + v111) = 32;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v114 = &__p;
        }

        else
        {
          v114 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v115 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v115 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(v274, v114, v115);
        v10 = a1 + 856;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          v90 = v305.__r_.__value_.__r.__words[0];
LABEL_254:
          operator delete(v90);
        }
      }

LABEL_77:
      v14 += 14;
    }

    while (v14 != v15);
    v11 = *(a1 + 840);
    v12 = *v11;
LABEL_337:
    v135 = (v12 + 216 * v270 + 72);
    if (v266 != v135)
    {
      std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(v266, *v135, v135[1], 0x6DB6DB6DB6DB6DB7 * ((v135[1] - *v135) >> 3));
      v11 = *(a1 + 840);
    }

    v136 = (v264 + 1);
LABEL_744:
    v12 = *v11;
    v8 = v136;
  }

  while (0x84BDA12F684BDA13 * ((v11[1] - *v11) >> 3) > v136);
LABEL_747:
  if (*(a1 + 856) != *(a1 + 864))
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v249 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      v251 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v259 - v9;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v251;
      _os_log_impl(&dword_1C2F95000, v249, OS_LOG_TYPE_INFO, "Remainder %d words %zu phones", &__p, 0x12u);
    }

    Diagnostics::log(6, "Remainder %d words %zu phones", v250, (v259 - v9), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3));
    NeuralAdapterModule::dump_features(a1);
  }

  if (v282)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v282);
  }
}

void sub_1C2FE46D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  WordFeature::~WordFeature(&STACK[0x2A0]);
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  _Unwind_Resume(a1);
}

unint64_t *std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](unint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *result) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x276276276276276)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v10;
    }

    v25 = v2;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v12);
    }

    v13 = 104 * v9;
    v22 = 0;
    v23 = v13;
    *(&v24 + 1) = 0;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v16 = a2[4];
    *(v13 + 48) = a2[3];
    *(v13 + 64) = v16;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0;
    *(v13 + 80) = 0;
    *(v13 + 80) = a2[5];
    *(v13 + 96) = *(a2 + 12);
    a2[5] = 0uLL;
    *(a2 + 12) = 0;
    *&v24 = 104 * v9 + 104;
    v17 = v2[1];
    v18 = 104 * v9 + *v2 - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>(v2, *v2, v17, v18);
    v19 = *v2;
    *v2 = v18;
    v20 = v2[2];
    v21 = v24;
    *(v2 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    result = std::__split_buffer<TacotronPhoneFeature>::~__split_buffer(&v22);
    v8 = v21;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = a2[4];
    *(v3 + 48) = a2[3];
    *(v3 + 64) = v7;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = 0;
    *(v3 + 80) = a2[5];
    *(v3 + 96) = *(a2 + 12);
    a2[5] = 0uLL;
    *(a2 + 12) = 0;
    v8 = v3 + 104;
  }

  v2[1] = v8;
  return result;
}

void FastSpeech2EncoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "Parallel AM encoder module start.", v4);
  std::mutex::lock((a1 + 312));
  Diagnostics::get_log_path(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v39, *buf, *&buf[8]);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v39 = *buf;
  }

  *(a1 + 284) = 1;
  v6 = *(*v5 + 16);
  *&v38 = *(*v5 + 8);
  *(&v38 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(*v7 + 16);
  v36 = *(*v7 + 8);
  v37 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v38 + 8);
  if (v9 != *(v38 + 16) && *(v9 + 60) == 1)
  {
    *(a1 + 272) = 0;
  }

  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v34 = 0;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = *(a1 + 392);
  v33 = v38;
  if (*(&v38 + 1))
  {
    atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 8))(v11, &v33, *(a1 + 280));
  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  v12 = v38;
  v29 = v38;
  if (*(&v38 + 1))
  {
    atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(*(a1 + 392) + 8);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (v13 < 1 || (v15 = *(v12 + 32), v14 = *(v12 + 40), v13 >= (v14 - v15) >> 2))
  {
    std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](&v30, &v29);
  }

  else if (v14 != v15)
  {
    operator new();
  }

  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }

  v28 = 0;
  if (v31 != v30)
  {
    v16 = *(*(a1 + 392) + 12);
    if (v16 < 1 || v16 >= (*(v38 + 40) - *(v38 + 32)) >> 2)
    {
      if (*(v30 + 8))
      {
        atomic_fetch_add_explicit((*(v30 + 8) + 8), 1uLL, memory_order_relaxed);
      }

      v40 = 0;
      operator new();
    }

    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v27, *(a1 + 168));
    StringFormatter::StringFormatter(buf, "Input exceeds maximum input phone length %d", v16);
    v26[0] = *&buf[16];
    *(v26 + 3) = *&buf[19];
    v24 = 201;
    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v25, *buf, *&buf[8]);
      v21 = v24;
    }

    else
    {
      *&v25.__r_.__value_.__l.__data_ = *buf;
      LODWORD(v25.__r_.__value_.__r.__words[2]) = v26[0];
      *(&v25.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
      *(&v25.__r_.__value_.__s + 23) = buf[23];
      v21 = 201;
    }

    *buf = v21;
    *&buf[8] = v25;
    if (v27)
    {
      Observable::emit(v27, "tts.errors", buf);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    StringFormatter::StringFormatter(&v24, "Inputs too long! Exceeds maximum input phone length %d", v16);
    MEMORY[0x1C692A510](exception, &v24);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v17 = ((std::chrono::steady_clock::now().__d_.__rep_ - v10.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v18 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v20 = ((v17 >> 18) + (v17 >> 63)) / 1000.0;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v34;
    *&buf[12] = 2048;
    *&buf[14] = ((v17 >> 18) + (v17 >> 63)) / 1000.0;
    *&buf[22] = 2048;
    *&buf[24] = v34 / v20;
    _os_log_impl(&dword_1C2F95000, v18, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", buf, 0x20u);
  }

  Diagnostics::log(5, "Parallel AM encoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", v19, v34, *&v20, v34 / v20);
  *buf = &v30;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((a1 + 312));
}

void sub_1C2FE5ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  std::mutex::unlock((a18 + 312));
  _Unwind_Resume(a1);
}

void FastSpeech2EncoderFeaturesInference::align_feature_inputs(_BYTE *a1, uint64_t **a2, int a3)
{
  v6 = ((*a2)[5] - (*a2)[4]) >> 2;
  LODWORD(v55) = 1065353216;
  std::vector<float>::vector[abi:ne200100](&v58, v6, &v55);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v55, v58, v59, (v59 - v58) >> 2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v52, v58, v59, (v59 - v58) >> 2);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v49, v58, v59, (v59 - v58) >> 2);
  v7 = *a2;
  v8 = (*a2)[15];
  v9 = (*a2)[16];
  if (v8 != v9)
  {
    memmove(v55, v8, v9 - v8);
    v7 = *a2;
  }

  v10 = v7[18];
  v11 = v7[19];
  if (v10 != v11)
  {
    memmove(v52, v10, v11 - v10);
    v7 = *a2;
  }

  v12 = v7[21];
  v13 = v7[22];
  if (v12 != v13)
  {
    memmove(v49, v12, v13 - v12);
    v7 = *a2;
  }

  if (v7 + 15 != &v55)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v7 + 15, v55, v56, (v56 - v55) >> 2);
    v7 = *a2;
  }

  if (v7 + 18 != &v52)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v7 + 18, v52, v53, (v53 - v52) >> 2);
    v7 = *a2;
  }

  if (v7 + 21 != &v49)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v7 + 21, v49, v50, (v50 - v49) >> 2);
    v7 = *a2;
  }

  v14 = (v7[5] - v7[4]) >> 2;
  LODWORD(__dst) = 0;
  std::vector<float>::vector[abi:ne200100](&v47, v14, &__dst);
  __dst = 0;
  v45 = 0;
  v46 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__dst, v47, v48, (v48 - v47) >> 2);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v41, v47, v48, (v48 - v47) >> 2);
  __p = 0;
  v39 = 0;
  v40 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v47, v48, (v48 - v47) >> 2);
  v15 = (*a2)[24];
  v16 = (*a2)[25];
  if (v15 != v16)
  {
    memmove(__dst, v15, v16 - v15);
    v17 = __dst;
    v18 = v45;
    if (__dst != v45)
    {
      do
      {
        *v17 = *v17 / a3;
        ++v17;
      }

      while (v17 != v18);
    }
  }

  v19 = *a2;
  v20 = (*a2)[27];
  v21 = (*a2)[28];
  if (v20 != v21)
  {
    memmove(v41, v20, v21 - v20);
    v19 = *a2;
  }

  v22 = v19[30];
  v23 = v19[31];
  if (v22 != v23)
  {
    memmove(__p, v22, v23 - v22);
    v19 = *a2;
  }

  if (v19 + 24 != &__dst)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v19 + 24, __dst, v45, (v45 - __dst) >> 2);
    v19 = *a2;
  }

  if (v19 + 27 != &v41)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v19 + 27, v41, v42, (v42 - v41) >> 2);
    v19 = *a2;
  }

  if (v19 + 30 != &__p)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v19 + 30, __p, v39, (v39 - __p) >> 2);
  }

  v24 = ((*a2)[5] - (*a2)[4]) >> 2;
  if (a1[32] == 1)
  {
    v35 = 1065353216;
  }

  else
  {
    v35 = 0;
  }

  std::vector<float>::vector[abi:ne200100](&v36, v24, &v35);
  v25 = *a2;
  v26 = (*a2 + 33);
  v27 = *v26;
  if (*v26)
  {
    v25[34] = v27;
    operator delete(v27);
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
  }

  *v26 = v36;
  v25[35] = v37;
  v28 = ((*a2)[5] - (*a2)[4]) >> 2;
  if (a1[33] == 1)
  {
    v35 = 1065353216;
  }

  else
  {
    v35 = 0;
  }

  std::vector<float>::vector[abi:ne200100](&v36, v28, &v35);
  v29 = *a2;
  v30 = (*a2)[36];
  if (v30)
  {
    v29[37] = v30;
    operator delete(v30);
    v29[36] = 0;
    v29[37] = 0;
    v29[38] = 0;
  }

  *(v29 + 18) = v36;
  v29[38] = v37;
  v31 = ((*a2)[5] - (*a2)[4]) >> 2;
  if (a1[34] == 1)
  {
    v35 = 1065353216;
  }

  else
  {
    v35 = 0;
  }

  std::vector<float>::vector[abi:ne200100](&v36, v31, &v35);
  v32 = *a2;
  v33 = v32 + 39;
  v34 = v32[39];
  if (v34)
  {
    v32[40] = v34;
    operator delete(v34);
    *v33 = 0;
    v32[40] = 0;
    v32[41] = 0;
  }

  *v33 = v36;
  v32[41] = v37;
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (__dst)
  {
    v45 = __dst;
    operator delete(__dst);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_1C2FE615C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v27;
    operator delete(v27);
  }

  v28 = *(v25 + 24);
  if (v28)
  {
    *(v25 + 32) = v28;
    operator delete(v28);
  }

  v29 = *(v25 + 48);
  if (v29)
  {
    *(v25 + 56) = v29;
    operator delete(v29);
  }

  v30 = *(v25 + 72);
  if (v30)
  {
    *(v25 + 80) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void FastSpeech2EncoderFeaturesInference::inference(void **a1, void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_DEBUG, "Parallel AM inference encoder begin.", buf, 2u);
  }

  Diagnostics::log(7, "Parallel AM inference encoder begin.", v4);
  operator new();
}

void sub_1C2FE6AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FE6B20()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x1C2FE6B18);
}

void FastSpeech2EncoderFeaturesInference::prepare_inputs(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  FastSpeech2EncoderBaseInference::prepare_inputs(a1, v3);
}

void sub_1C2FE6D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v27 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FE6E4C()
{
  if (v0)
  {
    JUMPOUT(0x1C2FE6E40);
  }

  JUMPOUT(0x1C2FE6E44);
}

void InferenceEngine::DataTensor::build_from_1d_array<int>(void x0_0, void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  __p = ((a1[1] - *a1) >> 2);
  memset(v2, 0, sizeof(v2));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v2, &__p, v4, 1uLL);
  InferenceEngine::DataUtils::get_type_string<int>(&__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1C2FE6F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void *InferenceEngine::DataUtils::get_type_string<int>@<X0>(void *a1@<X8>)
{
  if (std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5468]))
  {
    v2 = "fp32";
  }

  else
  {
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5478]))
    {
      InferenceEngine::DataUtils::get_type_string<float>();
    }

    v2 = "int32";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t *a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v4 = a4[3];
  if (!v4)
  {
    return;
  }

  v6 = a3;
  if (v4 != 1 || (*(a4 + 35) & 1) != 0)
  {
    if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a3, a4), v6[1] - *v6 != 32) || fst::LatticeWeightTpl<float>::Member(*v6))
    {
      operator new();
    }

    v13 = *(*a2 + 192);

    v13();
    return;
  }

  memset(v75, 0, sizeof(v75));
  if ((*(*a1 + 24))(a1) == -1)
  {
    v14 = 0xFFFFFFFFLL;
    goto LABEL_33;
  }

  memset(v76, 0, sizeof(v76));
  v8 = *a4;
  v9 = *(a4 + 3);
  if (v9 == -1)
  {
    v9 = (*(*a1 + 24))(a1);
  }

  v92 = vneg_f32(0x7F0000007FLL);
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](v6);
  (*(**(v8 + 16) + 56))(*(v8 + 16));
  if (a4[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v77, &v84);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " instead", 8);
    goto LABEL_25;
  }

  v10 = *(a4 + 11);
  *__str = *(a4 + 10);
  v87.i32[0] = v10;
  LODWORD(v84) = 2139095040;
  v77.i32[0] = 2139095040;
  if (*__str != INFINITY || v87.f32[0] != v77.f32[0] || *(a4 + 18) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v77, &v84);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "SingleShortestPath: weight and state thresholds not applicable", 62);
LABEL_25:
    fst::LogMessage::~LogMessage(&v77);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84);
    }

    v18 = 0;
    v14 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v72 = a4;
  if (v9 > ((v6[1] - *v6) >> 5))
  {
    v30 = vneg_f32(0x7F0000007FLL);
    do
    {
      *__str = v30;
      memset(&__str[8], 0, 24);
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, __str);
      __str[0] = 0;
      std::vector<BOOL>::push_back(v76, __str);
      *__str = -1;
      *&__str[8] = -1;
      std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, __str);
    }

    while (v9 > ((v6[1] - *v6) >> 5));
  }

  memset(__str, 0, sizeof(__str));
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, __str);
  *__str = -1;
  *&__str[8] = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, __str);
  v31 = v8;
  (*(**(v8 + 16) + 24))(*(v8 + 16), v9);
  __str[0] = 1;
  std::vector<BOOL>::push_back(v76, __str);
  v32 = vneg_f32(0x7F0000007FLL);
  v70 = -1;
  do
  {
    if ((*(**(v31 + 16) + 48))(*(v31 + 16)))
    {
      goto LABEL_167;
    }

    v33 = (*(**(v31 + 16) + 16))(*(v31 + 16));
    (*(**(v31 + 16) + 32))(*(v31 + 16));
    *(v76[0] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v33);
    v34 = *v6 + 32 * v33;
    v87 = *v34;
    v89 = 0uLL;
    v88 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v88, *(v34 + 8), *(v34 + 16), (*(v34 + 16) - *(v34 + 8)) >> 2);
    (*(*a1 + 32))(__str, a1, v33);
    v77.i32[0] = *&__str[4];
    LODWORD(v84) = *__str;
    LODWORD(v90) = 2139095040;
    v35.n128_u32[0] = *__str;
    if (*__str == INFINITY)
    {
      v35.n128_u32[0] = v77.i32[0];
      v36 = v77.f32[0] != INFINITY;
    }

    else
    {
      v36 = 1;
    }

    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    if (!v36)
    {
      goto LABEL_103;
    }

    (*(*a1 + 32))(__str, a1, v33, v35);
    v37 = v87;
    v38 = *__str;
    *&v84 = 0;
    v77 = 0;
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    v39 = vadd_f32(v37, v38);
    v40 = v92;
    v41 = vadd_f32(vzip1_s32(v92, v39), vzip2_s32(v92, v39));
    v42 = v41.f32[1];
    if (v41.f32[0] >= v41.f32[1])
    {
      if (v41.f32[0] > v41.f32[1])
      {
        goto LABEL_78;
      }

      if ((vcgt_f32(v39, v92).u8[0] & 1) == 0)
      {
        v44 = &v94;
        v43 = &v93;
        if ((vcgt_f32(v92, v39).u8[0] & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_78:
        v44 = &v77;
        v43 = &v84;
        v40 = v39;
        goto LABEL_79;
      }
    }

    v44 = &v94;
    v43 = &v93;
LABEL_79:
    v71 = v39;
    *__str = v40;
    memset(&__str[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[8], *v43, *v44, (*v44 - *v43) >> 2);
    v35.n128_u32[0] = v92;
    LODWORD(v90) = v92;
    v91 = *__str;
    v45 = *&v92 != *__str || *(&v92 + 1) != *&__str[4];
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
      v35.n128_u32[0] = v92;
    }

    if (!v45)
    {
      goto LABEL_95;
    }

    v46 = __PAIR64__(HIDWORD(v92), v35.n128_u32[0]);
    if ((v35.n128_f32[0] + *(&v92 + 1)) >= v42)
    {
      if ((v35.n128_f32[0] + *(&v92 + 1)) > v42)
      {
        goto LABEL_91;
      }

      if (v35.n128_f32[0] >= *&v71)
      {
        v48 = &v94;
        v47 = &v93;
        if (v35.n128_f32[0] <= *&v71)
        {
          goto LABEL_92;
        }

LABEL_91:
        v48 = &v77;
        v47 = &v84;
        v46 = v71;
        goto LABEL_92;
      }
    }

    v48 = &v94;
    v47 = &v93;
LABEL_92:
    *__str = v46;
    memset(&__str[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[8], *v47, *v48, (*v48 - *v47) >> 2);
    v92 = *__str;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v93, *&__str[8], *&__str[16], (*&__str[16] - *&__str[8]) >> 2);
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    v35.n128_u32[0] = v92;
    v70 = v33;
LABEL_95:
    if (*(&v92 + 1) == -INFINITY || v35.n128_f32[0] == -INFINITY || (v35.n128_f32[0] == INFINITY || *(&v92 + 1) == INFINITY) && (v35.n128_f32[0] != INFINITY || (v35.n128_u32[0] = 2139095040, *(&v92 + 1) != INFINITY)))
    {
      v49 = 1;
      goto LABEL_159;
    }

    if (*(v72 + 34))
    {
      v49 = 5;
      goto LABEL_159;
    }

LABEL_103:
    v82 = 0;
    (*(*a1 + 136))(a1, v33, __str, v35);
    while (1)
    {
      if (*__str)
      {
        if ((*(**__str + 24))(*__str))
        {
          goto LABEL_150;
        }

        if (*__str)
        {
          v50 = (*(**__str + 32))(*__str);
          goto LABEL_112;
        }

        v51 = v82;
      }

      else
      {
        v51 = v82;
        if (v82 >= *&__str[16])
        {
LABEL_150:
          v49 = 0;
          goto LABEL_155;
        }
      }

      v50 = (*&__str[8] + 48 * v51);
LABEL_112:
      while (1)
      {
        v53 = v50[5].i32[0];
        if (v53 < (v6[1] - *v6) >> 5)
        {
          break;
        }

        v84 = v32;
        v85 = 0;
        v86 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, &v84);
        LOBYTE(v84) = 0;
        std::vector<BOOL>::push_back(v76, &v84);
        LODWORD(v84) = -1;
        *(&v84 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, &v84);
      }

      v52 = *v6;
      v54 = *v6 + 32 * v53;
      v55 = vadd_f32(v87, v50[1]);
      v84 = v55;
      v85 = 0;
      v86 = 0;
      v56 = *v54;
      v57 = vadd_f32(vzip1_s32(*v54, v55), vzip2_s32(*v54, v55));
      v58 = v57.f32[1];
      if (v57.f32[0] < v57.f32[1])
      {
LABEL_115:
        v59 = &v52[8 * v53];
        goto LABEL_118;
      }

      if (v57.f32[0] > v57.f32[1])
      {
        goto LABEL_117;
      }

      if (vcgt_f32(v55, v56).u8[0])
      {
        goto LABEL_115;
      }

      v59 = &v52[8 * v53];
      if (vcgt_f32(v56, v55).u8[0])
      {
LABEL_117:
        v59 = &v84;
        v56 = v55;
      }

LABEL_118:
      v77 = v56;
      v79 = 0;
      v80 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v59 + 1), *(v59 + 2), (*(v59 + 2) - *(v59 + 1)) >> 2);
      v60 = *(v54 + 4);
      LODWORD(v90) = *v54;
      v91 = v77.i32[0];
      v61.n128_u32[0] = v90;
      if (*&v90 == v77.f32[0])
      {
        v61.n128_f32[0] = v60;
        v62 = v60 != v77.f32[1];
      }

      else
      {
        v62 = 1;
      }

      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }

      if (v62)
      {
        break;
      }

LABEL_142:
      if (*(&v84 + 1))
      {
        operator delete(*(&v84 + 1));
      }

      v6 = a3;
      if (*__str)
      {
        (*(**__str + 40))(*__str, v61);
      }

      else
      {
        ++v82;
      }
    }

    v63 = *v54;
    v64 = vaddv_f32(*v54);
    if (v64 < v58)
    {
      goto LABEL_125;
    }

    if (v64 <= v58)
    {
      if (vcgt_f32(v55, v63).u8[0])
      {
LABEL_125:
        v65 = v54;
      }

      else
      {
        v65 = v54;
        if (vcgt_f32(v63, v55).u8[0])
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
LABEL_130:
      v65 = &v84;
      v63 = v55;
    }

    v77 = v63;
    v79 = 0;
    v80 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v65 + 1), *(v65 + 2), (*(v65 + 2) - *(v65 + 1)) >> 2);
    *v54 = v77;
    if (v54 != &v77)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v54 + 8), __p, v79, (v79 - __p) >> 2);
    }

    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    if (fst::LatticeWeightTpl<float>::Member(v54))
    {
      if (*__str)
      {
        v66 = (*(**__str + 48))(*__str);
      }

      else
      {
        v66 = v82;
      }

      v67 = v50[5].i32[0];
      v68 = v75[0] + 16 * v67;
      *v68 = v33;
      *(v68 + 1) = v66;
      v69 = **(v31 + 16);
      if ((*(v76[0] + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v67))
      {
        (*(v69 + 40))();
      }

      else
      {
        (*(v69 + 24))();
        *(v76[0] + ((v50[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50[5].i32[0];
      }

      goto LABEL_142;
    }

    v6 = a3;
    if (*(&v84 + 1))
    {
      operator delete(*(&v84 + 1));
    }

    v49 = 1;
LABEL_155:
    if (*__str)
    {
      (*(**__str + 8))(*__str);
    }

    else if (*&__str[24])
    {
      --**&__str[24];
    }

LABEL_159:
    if (v88)
    {
      *&v89 = v88;
      operator delete(v88);
    }
  }

  while (!v49);
  if (v49 == 5)
  {
LABEL_167:
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v14 = v70;
LABEL_28:
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v76[0])
  {
    operator delete(v76[0]);
  }

  if (v18)
  {
LABEL_33:
    (*(*a2 + 224))(a2);
    v19 = (*(*a1 + 112))(a1);
    (*(*a2 + 280))(a2, v19);
    v20 = (*(*a1 + 120))(a1);
    (*(*a2 + 288))(a2, v20);
    if (v14 != -1)
    {
      v21 = -1;
      v22 = v75[0];
      v23 = v14;
      LODWORD(v24) = -1;
      while (1)
      {
        v25 = v24;
        v24 = (*(*a2 + 200))(a2);
        if (v21 == -1)
        {
          (*(*a1 + 32))(&v87, a1, v14);
          (*(*a2 + 184))(a2, v24, &v87);
          if (v88)
          {
            *&v89 = v88;
            operator delete(v88);
          }

          goto LABEL_50;
        }

        v96 = 0;
        (*(*a1 + 136))(a1, v23, &v92);
        v26 = v22[2 * v21 + 1];
        if (!v92)
        {
          break;
        }

        (*(*v92 + 64))(v92, v26);
        if (!v92)
        {
          v26 = v96;
          goto LABEL_43;
        }

        v27 = (*(*v92 + 32))(v92);
LABEL_44:
        *__str = *v27;
        *&__str[8] = *(v27 + 1);
        *&__str[24] = 0;
        v82 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[16], *(v27 + 2), *(v27 + 3), (*(v27 + 3) - *(v27 + 2)) >> 2);
        v83 = v25;
        (*(*a2 + 208))(a2, v24, __str);
        if (*&__str[16])
        {
          *&__str[24] = *&__str[16];
          operator delete(*&__str[16]);
        }

        if (v92)
        {
          (*(*v92 + 8))(v92);
        }

        else if (v95)
        {
          --*v95;
        }

LABEL_50:
        v21 = v23;
        v23 = LODWORD(v22[2 * v23]);
        if (v23 == -1)
        {
          goto LABEL_54;
        }
      }

      v96 = v22[2 * v21 + 1];
LABEL_43:
      v27 = &v93[48 * v26];
      goto LABEL_44;
    }

    v24 = 0xFFFFFFFFLL;
LABEL_54:
    (*(*a2 + 176))(a2, v24);
    if ((*(*a1 + 64))(a1, 4, 0))
    {
      (*(*a2 + 192))(a2, 4, 4);
    }

    v28 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
    v29 = fst::ShortestPathProperties(v28, 0);
    (*(*a2 + 192))(a2, v29, 0x3FFFFFFF0007);
  }

  else
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  if (v75[0])
  {
    operator delete(v75[0]);
  }
}

void sub_1C2FE9474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, void *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 168);
  if (v54)
  {
    *(v52 - 160) = v54;
    operator delete(v54);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void *fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void sub_1C2FEA7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::map<unsigned long,std::pair<unsigned long,unsigned long>>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t FrontendNNModule::reconstruct_from_tokens(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int a4, int a5)
{
  v176 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v169, "");
  std::string::basic_string[abi:ne200100]<0>(&v171, "");
  v168[0] = a4;
  v7 = **a3;
  if ((*a3)[1] == v7)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v151 = *(v7 + 24);
  v8 = *(a1 + 128);
  if (v8)
  {
    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v166, v8);
  }

  else
  {
    v166 = 0;
    v167 = 0;
  }

  v157 = a1;
  if (v151 != -1)
  {
    memset(&v165, 0, sizeof(v165));
    FrontendNNModule::passdown_leading_empty_token(a1);
    memset(&v164, 0, sizeof(v164));
    memset(&__s, 0, sizeof(__s));
    v9 = a3[1];
    v156 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 439);
    if (v10 < 0)
    {
      v10 = *(a1 + 424);
    }

    v154 = (a1 + 416);
    if (!v10 || (v11 = *v156, v12 = v156[1], v12 == *v156))
    {
      v30 = 1;
      if (!v9)
      {
LABEL_49:
        if (!v30)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v37 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v161.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1C2F95000, v37, OS_LOG_TYPE_ERROR, "Unchunking G2P failed at sanity check", &v161, 2u);
          }

          Diagnostics::log(3, "Unchunking G2P failed at sanity check", v38);
LABEL_134:
          v61 = *(a1 + 40);
          v62 = *(a1 + 48);
          if (v62 == v61)
          {
            v63 = (a1 + 72);
            v62 = *(a1 + 40);
          }

          else
          {
            v63 = (a1 + 72);
            v64 = *(a1 + 64);
            v65 = &v61[v64 >> 8];
            v66 = *v65;
            v67 = *v65 + 16 * v64;
            v68 = *(v61 + (((*(a1 + 72) + v64) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + v64);
            if (v67 != v68)
            {
              do
              {
                v69 = *(v67 + 8);
                if (v69)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                  v66 = *v65;
                }

                v67 += 16;
                if (v67 - v66 == 4096)
                {
                  v70 = v65[1];
                  ++v65;
                  v66 = v70;
                  v67 = v70;
                }
              }

              while (v67 != v68);
              v61 = *(a1 + 40);
              v62 = *(a1 + 48);
            }
          }

          *v63 = 0;
          v74 = v62 - v61;
          if (v74 >= 3)
          {
            do
            {
              operator delete(*v61);
              v75 = *(a1 + 48);
              v61 = (*(a1 + 40) + 8);
              *(a1 + 40) = v61;
              v74 = (v75 - v61) >> 3;
            }

            while (v74 > 2);
          }

          if (v74 == 1)
          {
            v76 = 128;
          }

          else
          {
            if (v74 != 2)
            {
LABEL_152:
              v77 = 1;
              goto LABEL_226;
            }

            v76 = 256;
          }

          *(a1 + 64) = v76;
          goto LABEL_152;
        }

        if ((*a3)[1] != **a3)
        {
          operator new();
        }

        v39 = 0;
        size = HIBYTE(v164.__r_.__value_.__r.__words[2]);
        if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v164.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          UTFString::rstrip(&v164);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__s.__r_.__value_.__l.__size_)
            {
              std::string::__init_copy_ctor_external(&v161, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
              goto LABEL_78;
            }
          }

          else if (*(&__s.__r_.__value_.__s + 23))
          {
            v161 = __s;
            goto LABEL_78;
          }

          (*(*a1 + 136))(&v161, a1, &v164);
LABEL_78:
          v41 = *(a1 + 439);
          if (v41 < 0)
          {
            v42 = *(a1 + 424);
          }

          else
          {
            v42 = *(a1 + 439);
          }

          v43 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
          if (v42)
          {
            v44 = v161.__r_.__value_.__l.__size_;
            if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v161;
            }

            else
            {
              v45 = v161.__r_.__value_.__r.__words[0];
            }

            if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v46 = v161.__r_.__value_.__l.__size_;
            }

            if (v41 >= 0)
            {
              v47 = v154;
            }

            else
            {
              v47 = *(a1 + 416);
            }

            if (v41 >= 0)
            {
              v48 = *(a1 + 439);
            }

            else
            {
              v48 = *(a1 + 424);
            }

            if (!v48)
            {
LABEL_132:
              if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v161.__r_.__value_.__l.__data_);
              }

              goto LABEL_134;
            }

            if (v46 >= v48)
            {
              v49 = v45 + v46;
              v50 = *v47;
              v51 = v45;
              while (1)
              {
                if (v46 - v48 == -1)
                {
                  goto LABEL_107;
                }

                v52 = memchr(v51, v50, v46 - v48 + 1);
                if (!v52)
                {
                  goto LABEL_107;
                }

                v53 = v52;
                if (!memcmp(v52, v47, v48))
                {
                  break;
                }

                v51 = (v53 + 1);
                v46 = v49 - (v53 + 1);
                if (v46 < v48)
                {
                  goto LABEL_107;
                }
              }

              if (v53 == v49)
              {
LABEL_107:
                a1 = v157;
              }

              else
              {
                a1 = v157;
                if (v53 - v45 != -1)
                {
                  goto LABEL_132;
                }
              }
            }
          }

          else
          {
            v44 = v161.__r_.__value_.__l.__size_;
          }

          if ((v43 & 0x80u) == 0)
          {
            v54 = v43;
          }

          else
          {
            v54 = v44;
          }

          std::string::basic_string[abi:ne200100](&__str, v54 + 3);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (v54)
          {
            if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v161;
            }

            else
            {
              v56 = v161.__r_.__value_.__r.__words[0];
            }

            memmove(p_str, v56, v54);
          }

          *(&p_str->__r_.__value_.__l.__data_ + v54) = 2121504;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &__str;
          }

          else
          {
            v57 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v58 = __str.__r_.__value_.__l.__size_;
          }

          std::string::append(&v165, v57, v58);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v60 = *(v59 + 64);
          v160[0] = *(v59 + 56);
          v160[1] = v60;
          if (v60)
          {
            atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
          }

          FrontendNNModule::update_embedded_lang(v168, v160);
          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          create_pronunciation_with_phone_sequence(&__str, &v161, v168);
        }

        v71 = *(a1 + 72);
        if (v71)
        {
          v73 = *(*(v72 + 40) + 24) + *(*(v72 + 40) + 16);
        }

        else
        {
          v73 = 0;
        }

        v78 = *(a1 + 352);
        v79 = *(a1 + 360);
        if (!((v79 - v78) >> 4))
        {
          goto LABEL_171;
        }

        v80 = 0;
        v81 = 0;
        {
LABEL_163:
          ++v39;
          v81 += 16;
          if (v39 >= (v79 - v78) >> 4)
          {
            if (v80)
            {
              v162 = 0u;
              *&v161.__r_.__value_.__r.__words[1] = 0u;
              v83 = (*(*a1 + 88))(a1);
              FrontendNNModule::update_phrasing_item(a1, &v161, 0, v83);
              Agglomerate::set<TokenPhrasingItem>(*(*(*(a1 + 40) + (((*(a1 + 72) + *(a1 + 64) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + *(a1 + 64) - 1)), &v161);
              if (*(&v162 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v162 + 1));
              }

              if (v161.__r_.__value_.__r.__words[2])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v161.__r_.__value_.__r.__words[2]);
              }
            }

LABEL_171:
            v84 = *(a1 + 72);
            if (!v84)
            {
LABEL_212:
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v108 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
              {
                Censor::global_plaintext(&v161, &v165);
                v109 = (v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v161 : v161.__r_.__value_.__r.__words[0];
                LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
                *(__str.__r_.__value_.__r.__words + 4) = v109;
                _os_log_impl(&dword_1C2F95000, v108, OS_LOG_TYPE_DEBUG, "#Formatted - %s", &__str, 0xCu);
                if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v161.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&v161, &v165);
              if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v111 = &v161;
              }

              else
              {
                v111 = v161.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(7, "#Formatted - %s", v110, v111);
              if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v161.__r_.__value_.__l.__data_);
              }

              v77 = 0;
LABEL_226:
              if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__s.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v164.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v165.__r_.__value_.__l.__data_);
              }

              if (v77 & a5)
              {
                goto LABEL_233;
              }

              if (!v77)
              {
                goto LABEL_328;
              }

              goto LABEL_258;
            }

            v85 = 0;
            v86 = 0;
            v87 = MEMORY[0x1E69E9830];
            while (2)
            {
              v88 = *(*(*(a1 + 40) + (((*(a1 + 64) + v85) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v85));
              if (v88 + 8 == v89)
              {
                v90 = 0;
              }

              else
              {
                v90 = (*(v89 + 40) + 8);
              }

              if (v84 <= v85)
              {
                std::__throw_out_of_range[abi:ne200100]("deque");
              }

              {
                v91 = *(v90[6] + 16);
                if (*(v91 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v161, *v91, *(v91 + 1));
                }

                else
                {
                  v92 = *v91;
                  v161.__r_.__value_.__r.__words[2] = *(v91 + 2);
                  *&v161.__r_.__value_.__l.__data_ = v92;
                }

                v93 = v90[1];
                v94 = v90[2] + v93;
                v95 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
                if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v95 = v161.__r_.__value_.__l.__size_;
                }

                if (v94 < v95)
                {
                  v96 = 0;
                  do
                  {
                    v97 = *std::string::at(&v161, v94);
                    if ((v97 & 0x80000000) != 0)
                    {
                      v98 = __maskrune(v97, 0x4000uLL);
                    }

                    else
                    {
                      v98 = *(v87 + 4 * v97 + 60) & 0x4000;
                    }

                    if (v98)
                    {
                      break;
                    }

                    ++v96;
                    ++v94;
                    v99 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
                    if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v99 = v161.__r_.__value_.__l.__size_;
                    }
                  }

                  while (v94 < v99);
                  if (v96)
                  {
                    if (*(v157 + 72) <= v85 + 1)
                    {
                      v102 = v90[1];
                      v101 = v90[2];
                    }

                    else
                    {
                      v102 = v90[1];
                      v101 = v90[2];
                      v103 = *(*(v100 + 40) + 16) - (v102 + v101);
                      if (v96 > (v103 & ~(v103 >> 31)))
                      {
                        v90[1] = v102 + v86;
                        v96 = v103 & ~(v103 >> 31);
                        if (v103 < 1)
                        {
                          v96 = 0;
                          goto LABEL_200;
                        }

LABEL_203:
                        v104 = 0;
                        v90[2] = v101 + v96;
LABEL_204:
                        a1 = v157;
                        if (*(v157 + 72) <= v85)
                        {
                          std::__throw_out_of_range[abi:ne200100]("deque");
                        }

                        v105 = *(*(*(v157 + 40) + (((*(v157 + 64) + v85) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v157 + 64) + v85));
                        if (v105 + 8 != v106)
                        {
                          v107 = *(v106 + 40);
                          *(v107 + 56) += v86;
                          if ((v104 & 1) == 0)
                          {
                            *(v107 + 64) += v96;
                          }
                        }

                        if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v161.__r_.__value_.__l.__data_);
                        }

                        v86 += v96;
                        v84 = *(v157 + 72);
LABEL_211:
                        if (v84 <= ++v85)
                        {
                          goto LABEL_212;
                        }

                        continue;
                      }
                    }

                    v90[1] = v102 + v86;
                    goto LABEL_203;
                  }

                  v93 = v90[1];
                }

                v96 = 0;
                v90[1] = v93 + v86;
LABEL_200:
                v104 = 1;
                goto LABEL_204;
              }

              break;
            }

            a1 = v157;
            goto LABEL_211;
          }
        }

        if ((v80 & 1) == 0)
        {
          v82 = *(a1 + 72);
          if (!v82)
          {
            v80 = 0;
            goto LABEL_161;
          }
        }

        v80 = 1;
LABEL_161:
        if (v39 >= (v79 - v78) >> 4)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back((a1 + 32), (v78 + v81));
        v78 = *(a1 + 352);
        v79 = *(a1 + 360);
        goto LABEL_163;
      }
    }

    else
    {
      v155 = v9;
      v13 = 0;
      v14 = 0;
      do
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) <= v13)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = (v11 + 40 * v13);
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v161, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          v161.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&v161.__r_.__value_.__l.__data_ = v16;
        }

        v17 = 0;
        v18 = SHIBYTE(v161.__r_.__value_.__r.__words[2]);
        __p = v161.__r_.__value_.__r.__words[0];
        if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v161;
        }

        else
        {
          v19 = v161.__r_.__value_.__r.__words[0];
        }

        if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v161.__r_.__value_.__l.__size_;
        }

        v21 = *(v157 + 439);
        if (v21 >= 0)
        {
          v22 = v154;
        }

        else
        {
          v22 = *(v157 + 416);
        }

        if (v21 >= 0)
        {
          v23 = *(v157 + 439);
        }

        else
        {
          v23 = *(v157 + 424);
        }

        v24 = v19 + v20;
        while (!v23)
        {
LABEL_40:
          if (v17 != -1)
          {
            ++v14;
            v17 += v23;
            if (v20 >= v17)
            {
              continue;
            }
          }

          goto LABEL_42;
        }

        v25 = v20 - v17;
        if ((v20 - v17) >= v23)
        {
          v26 = v19 + v17;
          v27 = *v22;
          do
          {
            if (v25 - v23 == -1)
            {
              break;
            }

            v28 = memchr(v26, v27, v25 - v23 + 1);
            if (!v28)
            {
              break;
            }

            v29 = v28;
            if (!memcmp(v28, v22, v23))
            {
              if (v29 == v24)
              {
                break;
              }

              v17 = v29 - v19;
              goto LABEL_40;
            }

            v26 = v29 + 1;
            v25 = v24 - (v29 + 1);
          }

          while (v25 >= v23);
        }

LABEL_42:
        if (v18 < 0)
        {
          operator delete(__p);
        }

        ++v13;
        v11 = *v156;
        v12 = v156[1];
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v12 - *v156) >> 3) > v13);
      v30 = (v14 & 1) == 0;
      a1 = v157;
      v9 = v155;
      if (!v155)
      {
        goto LABEL_49;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_49;
  }

  if (!a5 || ((v31 = *(a1 + 440), LODWORD(__str.__r_.__value_.__l.__data_) = 0, LODWORD(v161.__r_.__value_.__l.__data_) = 0, v32 = *(a2 + 23), v32 >= 0) ? (v33 = a2) : (v33 = *a2), v32 >= 0 ? (v34 = *(a2 + 23)) : (v34 = *(a2 + 8)), (v35 = utext_openUTF8(0, v33, v34, &v161), SLODWORD(v161.__r_.__value_.__l.__data_) <= 0) ? (v36 = v35) : (v36 = 0), UTFRegex::set_text(v31, v36, 1), !uregex_find(*v31, -1, &__str)))
  {
LABEL_258:
    FrontendNNModule::passdown_leading_empty_token(a1);
    memset(&v161, 0, sizeof(v161));
    v129 = **a3;
    v130 = (*a3)[1];
    while (v129 != v130)
    {
      if (*(v129 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v129, *(v129 + 1));
      }

      else
      {
        v131 = *v129;
        __str.__r_.__value_.__r.__words[2] = *(v129 + 2);
        *&__str.__r_.__value_.__l.__data_ = v131;
      }

      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v132 = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__l.__size_)
        {
          goto LABEL_303;
        }

        if (*__str.__r_.__value_.__l.__data_ == 32)
        {
          std::string::__init_copy_ctor_external(&v159, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
LABEL_269:
          UTFString::lstrip(&v159);
          status = v159;
          memset(&v159, 0, sizeof(v159));
          v133 = std::string::append(&status, " ");
          v134 = *&v133->__r_.__value_.__l.__data_;
          v173.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
          *&v173.__r_.__value_.__l.__data_ = v134;
          v133->__r_.__value_.__l.__size_ = 0;
          v133->__r_.__value_.__r.__words[2] = 0;
          v133->__r_.__value_.__r.__words[0] = 0;
          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v135 = &v173;
          }

          else
          {
            v135 = v173.__r_.__value_.__r.__words[0];
          }

          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v136 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v136 = v173.__r_.__value_.__l.__size_;
          }

          std::string::append(&v161, v135, v136);
          if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v173.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(status.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            v137 = v159.__r_.__value_.__r.__words[0];
LABEL_301:
            operator delete(v137);
            goto LABEL_302;
          }

          goto LABEL_302;
        }
      }

      else
      {
        if (!*(&__str.__r_.__value_.__s + 23))
        {
          goto LABEL_304;
        }

        if (__str.__r_.__value_.__s.__data_[0] == 32)
        {
          v159 = __str;
          goto LABEL_269;
        }

        v132 = __str.__r_.__value_.__l.__size_;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v138 = v132;
      }

      std::string::basic_string[abi:ne200100](&v173, v138 + 1);
      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &v173;
      }

      else
      {
        v139 = v173.__r_.__value_.__r.__words[0];
      }

      if (v138)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v140 = &__str;
        }

        else
        {
          v140 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v139, v140, v138);
      }

      *(&v139->__r_.__value_.__l.__data_ + v138) = 32;
      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &v173;
      }

      else
      {
        v141 = v173.__r_.__value_.__r.__words[0];
      }

      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v142 = v173.__r_.__value_.__l.__size_;
      }

      std::string::append(&v161, v141, v142);
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        v137 = v173.__r_.__value_.__r.__words[0];
        goto LABEL_301;
      }

LABEL_302:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_303:
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_304:
      v129 = (v129 + 40);
    }

    UTFString::rstrip(&v161);
    (*(*v157 + 136))(&__str, v157, &v161);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v143 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
    {
      Censor::global_plaintext(&v173, &__str);
      v144 = (v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v173 : v173.__r_.__value_.__r.__words[0];
      LODWORD(status.__r_.__value_.__l.__data_) = 136315138;
      *(status.__r_.__value_.__r.__words + 4) = v144;
      _os_log_impl(&dword_1C2F95000, v143, OS_LOG_TYPE_DEBUG, "#Formatted - %s", &status, 0xCu);
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }
    }

    Censor::global_plaintext(&v173, &__str);
    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = &v173;
    }

    else
    {
      v146 = v173.__r_.__value_.__r.__words[0];
    }

    Diagnostics::log(7, "#Formatted - %s", v145, v146);
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v173.__r_.__value_.__l.__data_);
    }

    (*(*v157 + 176))(v157, &__str, 0, a4);
    v147 = v166;
    if (v166)
    {
      v148 = v151 == -1 ? "G2PAlignmentFailure" : "ReconstructionFailure";
      std::string::basic_string[abi:ne200100]<0>(&v173, v148);
      Observable::emit(v147, "tts.errors.word_alignment_failure", &v173);
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v161.__r_.__value_.__l.__data_);
    }

LABEL_328:
    v128 = 1;
    goto LABEL_329;
  }

LABEL_233:
  v113 = *(a1 + 352);
  for (i = *(a1 + 360); v113 != i; v113 += 16)
  {
    v115 = *v113;
    v114 = *(v113 + 8);
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v115 + 1 != v116)
    {
      v117 = *(v116 + 40);
      if (*(v117 + 8) != 1952807028)
      {
        v118 = *(v157 + 440);
        LODWORD(v173.__r_.__value_.__l.__data_) = 0;
        v121 = *(v117 + 32);
        v120 = v117 + 32;
        v119 = v121;
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        v122 = *(v120 + 23);
        v123 = (v122 >= 0 ? v120 : v119);
        v124 = v122 >= 0 ? *(v120 + 23) : *(v120 + 8);
        v125 = utext_openUTF8(0, v123, v124, &__str);
        v126 = SLODWORD(__str.__r_.__value_.__l.__data_) <= 0 ? v125 : 0;
        UTFRegex::set_text(v118, v126, 1);
        if (uregex_find(*v118, -1, &v173))
        {
          MEMORY[0x1C692A640](v120, "");
        }
      }
    }

    __str.__r_.__value_.__r.__words[0] = &v173;
    a1 = v157;
    {
      operator new();
    }

    v127 = *(v157 + 16);
    v161.__r_.__value_.__r.__words[0] = v115;
    v161.__r_.__value_.__l.__size_ = v114;
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<Agglomerate>>::push_back((v127 + 32), &v161);
    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }
  }

  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100]((a1 + 352));
  v128 = 0;
LABEL_329:
  if (v167)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v167);
  }

  if (v172 < 0)
  {
    operator delete(v171);
  }

  if (v170 < 0)
  {
    operator delete(v169);
  }

  return v128;
}

void sub_1C2FEDC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  TokenBasicItem::~TokenBasicItem(&a45);
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a61);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a68);
  }

  fst::FstHeader::~FstHeader(&a69);
  _Unwind_Resume(a1);
}

std::string *FrontendNNModule::update_embedded_lang(uint64_t a1, uint64_t ***a2)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *v4;
    if (*v4)
    {
      do
      {
        v8 = v4[1];
        v4 = v7;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *v4;
        v6 = v8;
      }

      while (*v4);
    }

    else
    {
      v8 = v6;
    }

    std::string::operator=((a1 + 8), (v4 + 5));
    std::string::operator=((a1 + 32), (*a2 + 5));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    std::string::operator=((a1 + 8), (v3 + 5));
    if (*(a1 + 55) < 0)
    {
      **(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 55) = 0;
    }
  }

  FrontendNNModule::lang_string_cleanup((a1 + 8));

  return FrontendNNModule::lang_string_cleanup((a1 + 32));
}

void sub_1C2FEE1AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *FrontendNNModule::lang_string_cleanup(std::string *result)
{
  size = HIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v2 = result;
  }

  else
  {
    v2 = result->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v3 = (v2 + size);
    for (i = v2; i->__r_.__value_.__s.__data_[0] != 45; i = (i + 1))
    {
      if (!--size)
      {
        return result;
      }
    }

    if (i != v3 && i - v2 != -1)
    {
      return std::string::erase(result, i - v2, 1uLL);
    }
  }

  return result;
}

void *std::__list_imp<char *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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