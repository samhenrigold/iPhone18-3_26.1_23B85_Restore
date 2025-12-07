void sub_1B5327DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  a21 = &a60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = (v60 - 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = (v60 - 208);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::loadMasterLmOrCreatePlaceholder(const void **a1, uint64_t a2, uint64_t *a3, size_t a4)
{
  if (!quasar::isPlaceholder(a1))
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v23 = *(a4 + 24);
    if (v23)
    {
      (*(*v23 + 48))(&v30);
      std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string const&,std::optional<std::string>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = a1[1];
    }

    if (v10 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  if (v8 != v9)
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v30 = 0;
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string const&,std::optional<std::string>,decltype(nullptr),0>();
  }

LABEL_17:
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = a1[1];
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " for template ", 14);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v29 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v18 = *(a1 + 23);
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 23);
    }

    else
    {
      v20 = a1[1];
    }
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " not in geo-config ", 19);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "region-dependent-variable-list");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::loadMasterLmOrCreatePlaceholder(const void **a1, uint64_t a2, uint64_t *a3, size_t a4)
{
  if (!quasar::isPlaceholder(a1))
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v23 = *(a4 + 24);
    if (v23)
    {
      (*(*v23 + 48))(&v30);
      std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,std::string const&,std::optional<std::string>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>,0>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = a1[1];
    }

    if (v10 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  if (v8 != v9)
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v32) = 0;
    v30 = 0;
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,std::string const&,std::optional<std::string>,decltype(nullptr),0>();
  }

LABEL_17:
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = a1[1];
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " for template ", 14);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v29 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Placeholder ", 12);
    v18 = *(a1 + 23);
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 23);
    }

    else
    {
      v20 = a1[1];
    }
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " not in geo-config ", 19);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "region-dependent-variable-list");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

uint64_t quasar::OnlineLmRescoringDecoder::runImpl(uint64_t a1, void *a2, quasar::DecoderChainOutput **a3, uint64_t *a4)
{
  v83[4] = *MEMORY[0x1E69E9840];
  v8 = quasar::DecoderChainOutput::scaleResultLattice(*a3, 1.0, *(a1 + 456), 1);
  v9 = *(*a3 + 134);
  if (v9)
  {
    v10 = !v8;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rescoreScaled");
    quasar::UttInfo::addResult(v9, __p, a2, *a3, *(*a4 + 16));
  }

  if (*(a1 + 52) < 1 || (v11 = *(*a3 + 21)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
LABEL_15:
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x20000;
    }

    v17 = a2[57];
    if (v17)
    {
      if (*(v17 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v64, *(v17 + 48), *(v17 + 56));
      }

      else
      {
        v64 = *(v17 + 48);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "");
    }

    v18 = *(a1 + 624);
    v54 = a1;
    for (i = *(a1 + 632); v18 != i; v18 += 2)
    {
      v20 = *v18;
      v21 = *a3;
      v83[0] = &unk_1F2D0CD18;
      v83[3] = v83;
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::resolvePlaceholder(v20, v17, v21 + 55, &v64, v83, 0);
      std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::~__value_func[abi:ne200100](v83);
    }

    v22 = a2[57];
    if (v22)
    {
      v23 = (v22 + 24);
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v54 + 648);
    for (j = *(v54 + 656); v24 != j; v24 += 2)
    {
      v26 = *v24;
      v27 = *a3;
      v82[0] = &unk_1F2D0CD98;
      v82[3] = v82;
      quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::resolvePlaceholder(v26, v23, v27 + 55, &v64, v82, 0);
      std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](v82);
    }

    if (a2 + 59 != (v54 + 624))
    {
      std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(a2 + 59, *(v54 + 624), *(v54 + 632), (*(v54 + 632) - *(v54 + 624)) >> 4);
    }

    if (a2 + 62 != (v54 + 648))
    {
      std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(a2 + 62, *(v54 + 648), *(v54 + 656), (*(v54 + 656) - *(v54 + 648)) >> 4);
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    v28 = *(*a3 + 21);
    v60 = *(v28 + 8);
    ++*(v60 + 56);
    v59[33] = &unk_1F2CFC270;
    v29 = quasar::OnlineLmRescoringDecoder::rescoreLatticeWithLanguageModels(a2, a3, *a4, *(v54 + 464), v28, &v61, 1, 0, *(v54 + 672), v16, *(v54 + 52));
    if (*(v54 + 52) < 1)
    {
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
      v30 = fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(*(*a3 + 21));
    }

    if (quasar::gLogLevel >= 4)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring ok=", 13);
      v32 = MEMORY[0x1B8C84BD0](v31, v29);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " inputArcs=", 11);
      v34 = MEMORY[0x1B8C84C00](v33, v12);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " outputArcs=", 12);
      MEMORY[0x1B8C84C00](v35, v30);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "The rescoring LM interpolation weights:", 39);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v36 = v61;
    v37 = v62;
    if (v61 != v62)
    {
      do
      {
        std::to_string(&v55, *v36);
        v38 = v57;
        if (v57 >= v58)
        {
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
          v41 = v40 + 1;
          if (v40 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v58 - v56) >> 3) > v41)
          {
            v41 = 0x5555555555555556 * ((v58 - v56) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v58 - v56) >> 3) >= 0x555555555555555)
          {
            v42 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v42 = v41;
          }

          *&v67 = &v56;
          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v56, v42);
          }

          v43 = 8 * ((v57 - v56) >> 3);
          v44 = *&v55.__r_.__value_.__l.__data_;
          *(v43 + 16) = *(&v55.__r_.__value_.__l + 2);
          *v43 = v44;
          memset(&v55, 0, sizeof(v55));
          v45 = 24 * v40 + 24;
          v46 = (24 * v40 - (v57 - v56));
          memcpy((v43 - (v57 - v56)), v56, v57 - v56);
          v47 = v56;
          v48 = v58;
          v56 = v46;
          v57 = v45;
          v58 = 0;
          *&v66 = v47;
          *(&v66 + 1) = v48;
          __p[0] = v47;
          __p[1] = v47;
          std::__split_buffer<std::string>::~__split_buffer(__p);
          v57 = v45;
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v39 = *&v55.__r_.__value_.__l.__data_;
          *(v57 + 2) = *(&v55.__r_.__value_.__l + 2);
          *v38 = v39;
          v57 = v38 + 24;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " ", 1);
        std::ostream::operator<<();
        ++v36;
      }

      while (v36 != v37);
    }

    if (quasar::gLogLevel > 3)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::stringbuf::str();
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v55;
      }

      else
      {
        v49 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v55.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v49, size);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    v55.__r_.__value_.__r.__words[0] = ",";
    v55.__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(&v56, &v55);
    v51 = *a3 + 1048;
    if (*(*a3 + 1071) < 0)
    {
      operator delete(*v51);
    }

    *v51 = *__p;
    *(v51 + 2) = v66;
    v52 = *(v54 + 460);
    if (v52 > 0.0)
    {
      kaldi::PruneLattice<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>(*(*a3 + 21), v52);
    }

    fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst(&v55);
  }

  v12 = fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v11);
  if (v12 <= *(a1 + 52))
  {
    goto LABEL_15;
  }

  if (quasar::gLogLevel >= 4)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip rescoring: inputArcs=", 26);
    MEMORY[0x1B8C84C00](v13, v12);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  if (*(a1 + 56))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1B5329040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63, ...)
{
  va_start(va, a64);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a15);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::ostringstream::~ostringstream(&a21, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a35);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a54);
  if (__p)
  {
    a57 = __p;
    operator delete(__p);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLmRescoringDecoder::rescoreLatticeWithLanguageModels(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, char a7, unsigned int a8, float a9, uint64_t a10, unsigned int a11)
{
  quasar::DecoderPassData::getLeftContextLabels(a1, *(*a2 + 488), (a1 + 680), *(a1 + 216) + 32, &v73);
  if (quasar::gLogLevel >= 4)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring with ", 15);
    v21 = MEMORY[0x1B8C84C30](v20, (v74 - v73) >> 2);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " symbol(s) for left context from ", 33);
    v23 = MEMORY[0x1B8C84C30](v22, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 736) - *(a1 + 728)) >> 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " word(s)", 8);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  v42 = a4;
  v24 = a7;
  v43 = a6;
  v55 = 1065353216;
  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  v25 = *(a1 + 248);
  for (i = *(a1 + 256); v25 != i; v25 += 2)
  {
    v27 = *v25;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v27, __p, &v50);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v54, &v50);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v28 = *(a1 + 472);
  for (j = *(a1 + 480); v28 != j; v28 += 2)
  {
    v30 = *v28;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v30, __p, &v50);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v53, &v50);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  memset(v49, 0, sizeof(v49));
  v31 = *(a1 + 272);
  for (k = *(a1 + 280); v31 != k; v31 += 2)
  {
    v33 = *v31;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v33, __p, &v44);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](&v50, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = *(a1 + 496);
  for (m = *(a1 + 504); v34 != m; v34 += 2)
  {
    v36 = *v34;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v36, __p, &v44);
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::push_back[abi:ne200100](v49, &v44);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v37 = *(a3 + 24);
  v38 = *(a1 + 392);
  if (v38)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v38, &v44, &v47);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v39 = kaldi::quasar::RescoreLatticeWithLanguageModels(a5, v54, v53, &v50, v49, (v37 + 272), (a1 + 320), a1 + 408, a9, (a1 + 344), &v47, *(a1 + 448), a1 + 296, v43, &v55, 0, 0, &v73, v42, v24, a8, 0x40000000, a10, a11, (*a2 + 656));
  if (v38)
  {
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v46 < 0)
    {
      operator delete(v44);
    }
  }

  else if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (quasar::gLogLevel >= 4)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Total LM cost after rescoring = ", 32);
    std::ostream::operator<<();
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  v40 = *a2;
  *(v40 + 648) = v55;
  *(v40 + 644) = 1;
  __p[0] = v49;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v50;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v53;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v54;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  return v39;
}

void sub_1B53296B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  a46 = &a33;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a36;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a39;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a42;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a46);
  v53 = *(v51 - 128);
  if (v53)
  {
    *(v51 - 120) = v53;
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineLmRescoringDecoder::clearCaches(quasar::OnlineLmRescoringDecoder *this)
{
  v1 = *(this + 81);
  for (i = *(this + 82); v1 != i; v1 += 2)
  {
    v3 = *v1;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v3, __p, &v6);
    (*(*v6 + 24))(v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B53298A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLmRescoringDecoder::~OnlineLmRescoringDecoder(quasar::OnlineLmRescoringDecoder *this)
{
  quasar::OnlineLmRescoringDecoder::~OnlineLmRescoringDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0CB40;
  v3 = (this + 648);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 624);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 75);
  if (v2)
  {
    *(this + 76) = v2;
    operator delete(v2);
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  quasar::Decoder::~Decoder(this);
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::optional<std::string>,decltype(nullptr),std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AA80;
  std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string const&,std::optional<std::string>,decltype(nullptr)>(&v5, a1 + 1, a2, a3);
  return a1;
}

void std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string const&,std::optional<std::string>,decltype(nullptr)>(int a1, std::string *this, __int128 *a3, __int128 *a4)
{
  v4 = 0;
  v5 = 0;
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::RegionalLmPlug(this, a3, a4, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B5329B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::optional<std::string>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(std::string *a1, __int128 *a2, __int128 *a3, std::string::size_type *a4)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AA80;
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::RegionalLmPlug(a1 + 1, a2, a3, a4);
  return a1;
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D0CC18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::optional<std::string>,decltype(nullptr),std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AB60;
  std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::string const&,std::optional<std::string>,decltype(nullptr)>(&v5, a1 + 1, a2, a3);
  return a1;
}

void std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::string const&,std::optional<std::string>,decltype(nullptr)>(int a1, std::string *this, __int128 *a3, __int128 *a4)
{
  v4 = 0;
  v5 = 0;
  quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::RegionalLmPlug(this, a3, a4, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B5329E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::optional<std::string>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,0>(std::string *a1, __int128 *a2, __int128 *a3, std::string::size_type *a4)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AB60;
  quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::RegionalLmPlug(a1 + 1, a2, a3, a4);
  return a1;
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D0CC98;
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D0CC98;
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1B8C85350);
}

std::string *std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D0CC98;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a2 + 24), (a1 + 24));
}

void std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 48) == 1 && *(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0,std::allocator<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0,std::allocator<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1,std::allocator<quasar::OnlineLmRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
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
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

unint64_t kaldi::CharToString@<X0>(kaldi *this@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if ((v3 & 0x80000000) != 0)
  {
    v4 = __maskrune(v3, 0x40000uLL);
  }

  else
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
  }

  if (v4)
  {
    snprintf(__str, 0x14uLL, "'%c'");
  }

  else
  {
    snprintf(__str, 0x14uLL, "[character %d]");
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  *(a2 + v6) = 0;
  return result;
}

void kaldi::quasar::DnnlmEvaluator::DnnlmEvaluator(kaldi::quasar::DnnlmEvaluator *this, const kaldi::quasar::NnlmDecoderWord *a2, kaldi::InferenceNetItf *a3, kaldi::InferenceNetItf *a4, float a5, int a6, int a7)
{
  v22 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2D366A8;
  *(this + 1) = a2;
  *(this + 4) = kaldi::quasar::CEAttnEncoderDecoder::MaxEncoderSize(a2);
  *(this + 20) = 0;
  *this = &unk_1F2D0CE18;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 40) = 0;
  *(this + 11) = a5;
  *(this + 6) = a6;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,float>,void *>,kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,float>,void *>>>>::unordered_map(this + 56, 0, &v17, &v16);
  *(this + 13) = this + 104;
  *(this + 14) = this + 104;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>>>>::unordered_map(this + 144, 0, &v17, &v16);
  *(this + 24) = this + 192;
  *(this + 25) = this + 192;
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>>>>::unordered_map(this + 224, 0, &v17, &v16);
  *(this + 34) = this + 272;
  *(this + 35) = this + 272;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v13 = *(this + 3);
  {
    v17.__locale_ = a7;
    std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>>>>::unordered_map(v18, 0, &v16, &v15);
    v19 = &v19;
    v20 = &v19;
    v21 = 0;
    *(this + 17) = v17;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::__move_assign(this + 144, v18);
    std::list<std::pair<std::vector<int>,kaldi::CuVector<float>>>::__move_assign(this + 24, &v19);
    std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(&v19);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v18);
LABEL_8:
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "the NCE normalization factor is ", 32);
      std::ostream::operator<<();
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v17);
    }

    return;
  }

  v14 = *(this + 4);
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "dynamic_cast<CEInferenceNet* const>(extra_nnet_) != nullptr", 59);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v17);
  }

  *(this + 40) = 1;
  v17.__locale_ = a7;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>>>>::unordered_map(v18, 0, &v16, &v15);
  v19 = &v19;
  v20 = &v19;
  v21 = 0;
  *(this + 27) = v17;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntryCE>,void *>>>>::__move_assign(this + 224, v18);
  std::list<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__move_assign(this + 34, &v19);
  std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(&v19);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v18);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Backed by either TensorFlow or Espresso.", 40);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v17);
    goto LABEL_8;
  }
}

void sub_1B532A9C8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B532AA14);
}

void kaldi::quasar::DnnlmEvaluator::~DnnlmEvaluator(kaldi::quasar::DnnlmEvaluator *this)
{
  *this = &unk_1F2D0CE18;
  v2 = this + 56;
  std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(this + 34);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 224);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(this + 24);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 144);
  std::__list_imp<std::pair<std::vector<int>,float>>::clear(this + 13);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::DnnlmEvaluator::~DnnlmEvaluator(this);

  JUMPOUT(0x1B8C85350);
}

float kaldi::quasar::DnnlmEvaluator::PrepareContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 2;
  kaldi::CuVector<float>::Resize(a3, v7, 1);
  if (v5 != v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = *a2;
    v12 = (a2[1] - *a2) >> 2;
    if (v7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v7;
    }

    do
    {
      if (v12 == v10)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      result = *(v11 + 4 * v10);
      *(*(a3 + 8) + (v9 >> 30)) = result;
      ++v10;
      v9 += 0x100000000;
    }

    while (v13 != v10);
  }

  return result;
}

void kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(uint64_t a1, int **a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  v11[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>((a1 + 8), v11);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }
}

void kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(unint64_t *a1, char **a2)
{
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "capacity_ > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::CuVector<float>&)#1}>(a1, a2);
}

void kaldi::quasar::DnnlmEvaluator::ClearCaches(kaldi::quasar::DnnlmEvaluator *this)
{
  kaldi::quasar::NnlmEvaluatorBase::ClearCaches(this);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "HIT vs MISS: ", 13);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "lm-score ", 9);
    v4 = MEMORY[0x1B8C84C00](v3, *(this + 32));
    v11 = 47;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
    v6 = MEMORY[0x1B8C84C00](v5, *(this + 33));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", penultimate cache ", 20);
    v8 = MEMORY[0x1B8C84C00](v7, *(this + 74));
    v11 = 47;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v11, 1);
    MEMORY[0x1B8C84C00](v9, *(this + 75));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v10);
  }

  *(this + 16) = 0;
  *(this + 37) = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 7);
  std::__list_imp<std::pair<std::vector<int>,float>>::clear(this + 13);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 18);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(this + 24);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(this + 28);
  std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(this + 34);
}

void sub_1B532ADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

void std::list<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::list<std::pair<std::vector<int>,kaldi::CuVector<float>>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::vector<int>,kaldi::CuVector<float>>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<int>,kaldi::CuVector<float>>,0>(uint64_t a1)
{
  kaldi::CuVector<float>::~CuVector((a1 + 24));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

void std::__list_imp<std::pair<std::vector<int>,float>>::clear(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != result)
    {
      v5 = v2[1];
      std::__list_imp<std::pair<std::vector<int>,float>>::__delete_node[abi:ne200100](result, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::pair<std::vector<int>,float>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[2];
  if (v3)
  {
    __p[3] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,float>,void *>,kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,float>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,float,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Insert(std::vector<int> const&,float const&)::{lambda(float &)#1}>(unint64_t *a1, char **a2, int *a3)
{
  v28 = &v28;
  v29 = &v28;
  v30 = 0;
  *&v26 = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1 + 1, &v26);
  if (v6)
  {
    v7 = v6[3];
    if (&v28 != v7)
    {
      v8 = v7[1];
      if (v8 != &v28)
      {
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = v28;
        v28[1] = v7;
        *v7 = v10;
        v7[1] = &v28;
        --a1[9];
        v28 = v7;
        ++v30;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v6);
  }

  else
  {
    v11 = a1[9];
    if (v11 < *a1)
    {
      v26 = 0uLL;
      v27 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, *a2, a2[1], (a2[1] - *a2) >> 2);
      operator new();
    }

    v12 = a1[7];
    if (&v28 != v12)
    {
      v13 = v12[1];
      if (v13 != &v28)
      {
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        v15 = v28;
        v28[1] = v12;
        *v12 = v15;
        v12[1] = &v28;
        a1[9] = v11 - 1;
        v28 = v12;
        ++v30;
      }
    }

    *&v26 = v29 + 2;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(a1 + 1, &v26);
    if (v29 + 2 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v29 + 2, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  v16 = v29;
  v17 = v29 + 2;
  v18 = *a3;
  v19 = v29;
  *(v29 + 10) = v18;
  v20 = v19 + 5;
  *&v26 = v17;
  *(&v26 + 1) = v16;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(a1 + 1, &v26, &v26);
  v21 = a1[8];
  if (v21 != v16)
  {
    v22 = v16[1];
    if (v22 != v21)
    {
      v23 = *v16;
      *(v23 + 8) = v22;
      *v22 = v23;
      v24 = *v21;
      *(v24 + 8) = v16;
      *v16 = v24;
      *v21 = v16;
      v16[1] = v21;
      --v30;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::vector<int>,float>>::clear(&v28);
  return v20;
}

uint64_t *kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(std::vector<int> const&)::{lambda(kaldi::CuVector<float>&)#1}>(unint64_t *a1, char **a2)
{
  v22 = &v22;
  v23 = &v22;
  v24 = 0;
  *&v20 = a2;
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::find<std::vector<int> const*>(a1 + 1, &v20);
  if (v4)
  {
    v5 = v4[3];
    if (&v22 != v5)
    {
      v6 = v5[1];
      if (v6 != &v22)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = v22;
        v22[1] = v5;
        *v5 = v8;
        v5[1] = &v22;
        --a1[9];
        v22 = v5;
        ++v24;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v4);
  }

  else
  {
    v9 = a1[9];
    if (v9 < *a1)
    {
      v20 = 0uLL;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *a2, a2[1], (a2[1] - *a2) >> 2);
      operator new();
    }

    v10 = a1[7];
    if (&v22 != v10)
    {
      v11 = v10[1];
      if (v11 != &v22)
      {
        v12 = *v10;
        *(v12 + 8) = v11;
        *v11 = v12;
        v13 = v22;
        v22[1] = v10;
        *v10 = v13;
        v10[1] = &v22;
        a1[9] = v9 - 1;
        v22 = v10;
        ++v24;
      }
    }

    *&v20 = v23 + 2;
    std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__erase_unique<std::vector<int> const*>(a1 + 1, &v20);
    if (v23 + 2 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v23 + 2, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  v14 = v23;
  *&v20 = v23 + 2;
  *(&v20 + 1) = v23;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__emplace_unique_key_args<std::vector<int> const*,std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>(a1 + 1, &v20, &v20);
  v15 = a1[8];
  if (v15 != v14)
  {
    v16 = v14[1];
    if (v16 != v15)
    {
      v17 = *v14;
      *(v17 + 8) = v16;
      *v16 = v17;
      v18 = *v15;
      *(v18 + 8) = v14;
      *v14 = v18;
      *v15 = v14;
      v14[1] = v15;
      --v24;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(&v22);
  return v14 + 5;
}

uint64_t quasar::rescoring::GetFeatureDescName(unsigned __int8 **a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  quasar::rescoring::EnumNameFeatureTypes<std::vector<quasar::rescoring::FeatureType>>(a1);
  if ((v14 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v3, v4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1[3];
  for (i = a1[4]; v5 != i; ++v5)
  {
    v7 = *v5;
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "_", 1);
    v9 = "";
    if (v7 <= 0x11)
    {
      v9 = quasar::rescoring::EnumNamesFeatureTransformation(void)::names[v7];
    }

    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  }

  std::stringbuf::str();
  v15[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

uint64_t quasar::rescoring::EnumNameFeatureTypes<std::vector<quasar::rescoring::FeatureType>>(unsigned __int8 **a1)
{
  v17[17] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = &v12 + *(v12 - 24);
      if ((v6[32] & 5) == 0)
      {
        (*(**(v6 + 5) + 32))(v17);
        if (v17[16] >= 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "_", 1);
        }
      }

      v7 = "";
      if (v5 <= 0x15)
      {
        v7 = quasar::rescoring::EnumNamesFeatureType(void)::names[v5];
      }

      v8 = strlen(v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v7, v8);
      ++v3;
    }

    while (v3 != v4);
  }

  std::stringbuf::str();
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v16);
}

void *quasar::rescoring::operator<<(void *a1, const void **a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(&v7, *a2, a2[1], a2[1] - *a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(&__p, a2[3], a2[4], a2[4] - a2[3]);
  memset(v13, 0, sizeof(v13));
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(v13, a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  quasar::rescoring::GetFeatureDescName(&v7);
  if ((v15 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v16 = v13;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_1B532BCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (*(v14 - 41) < 0)
  {
    operator delete(*(v14 - 64));
  }

  quasar::rescoring::TransformedFeatureDesc::~TransformedFeatureDesc(&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B532BD90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B532BE5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B532BEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(uint64_t a1, _DWORD **a2, _DWORD **a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v10 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  v8 = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      if (*v5)
      {
        operator new();
      }

      *v4 = 0;
      ++v5;
      v10 = ++v4;
    }

    while (v5 != a3);
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *--v3;
    result = v5;
    *v3 = 0;
    if (v5)
    {
      result = MEMORY[0x1B8C85350](result, 0x1000C4052888210);
    }
  }

  return result;
}

void std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1B8C85350](result, 0x1000C4052888210);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void quasar::rescoring::TransformedFeatureDesc::~TransformedFeatureDesc(quasar::rescoring::TransformedFeatureDesc *this)
{
  v4 = (this + 48);
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t quasar::tennessee::GenericTextNormalizerInterface<std::string,quasar::tennessee::ImmutableVector<std::string>,true>::normalize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return (*(*a1 + 16))(a1, a2, a3);
}

void sub_1B532C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<quasar::tennessee::ImmutableVector<std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::tennessee::ImmutableVector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
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

BOOL kaldi::EndsWith(uint64_t ***a1, void *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v11 = v4 >= v6;
  v7 = (v4 - v6);
  if (!v11)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    v11 = v6 != -1 && v3 >= v7;
    if (v11)
    {
      v12 = (v3 - v7);
      if (v12 >= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = v12;
      }

      a1 = *a1;
      goto LABEL_26;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v2 < v7 || v6 == -1)
  {
    goto LABEL_34;
  }

  if (v2 - v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v2 - v7;
  }

LABEL_26:
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(v7 + a1, a2, v10) && v10 == v6;
}

void *kaldi::quasar::MakeComputeEngineCachePath@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  v6 = atomic_load(&kaldi::quasar::sComputeEngineCacheLookupHandler);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v6(v7, v8, __s, 1024);
  return std::string::basic_string[abi:ne200100]<0>(a3, __s);
}

uint64_t kaldi::quasar::MatchSuffix(uint64_t **a1, uint64_t a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2 || (kaldi::SplitStringToVector(a2, "|", 1, &v21), v4 = v21, v5 = v22, v21 == v22))
  {
LABEL_39:
    v19 = 0;
  }

  else
  {
    v6 = *(a1 + 23);
    v7 = a1[1];
    if ((v6 & 0x80u) == 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    while (1)
    {
      v9 = *(v4 + 23);
      v10 = v9 >= 0 ? *(v4 + 23) : *(v4 + 8);
      v11 = v8 - v10;
      if (v8 >= v10)
      {
        if ((v6 & 0x80) != 0)
        {
          if (v10 == -1 || v7 < v11)
          {
LABEL_42:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v13 = v7 - v11 >= v10 ? v10 : v7 - v11;
          v14 = *a1;
        }

        else
        {
          if (v10 == -1 || v6 < v11)
          {
            goto LABEL_42;
          }

          v13 = v6 - v11 >= v10 ? v10 : v6 - v11;
          v14 = a1;
        }

        v16 = v9 >= 0 ? v4 : *v4;
        v17 = memcmp(v14 + v11, v16, v13);
        if (v13 == v10 && v17 == 0)
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_39;
      }
    }

    v19 = 1;
  }

  v24 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  return v19;
}

void sub_1B532C58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::WrappedComputeEngineConfig::~WrappedComputeEngineConfig(kaldi::quasar::WrappedComputeEngineConfig *this)
{
  v2 = *(this + 1);
  *this = &unk_1F2D0CEC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F2D0CEC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F2D0CEC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::WrappedComputeEngineConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  kaldi::Input::Input(&v6, a3);
  kaldi::Input::Stream(&v6);
  (*(*a1 + 24))(a1, a2, v5, v7);
  kaldi::Input::~Input(&v6);
}

void sub_1B532CA00(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::DefaultComputeEngineCacheLookupHandler(kaldi::quasar *this, const char *a2, char *a3, char *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = strlen(this);
  CC_SHA256(this, v8, md);
  bzero(__s, 0x400uLL);
  getuid();
  if (!__user_local_dirname())
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v56);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Could not get root temp directory: ", 35);
    v48 = __error();
    v49 = strerror(*v48);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v47, v49);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, __s);
  v9 = std::string::append(&v56, "/");
  v10 = std::string::append(v9, "SpeechModelCache");
  if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = *&v10->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v11;
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v56);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Testing if writable: ", 21);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v51;
    }

    else
    {
      v13 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, size);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v56);
  }

  v15 = kaldi::quasar::ProcessName(v10);
  if (*(v15 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *v15, *(v15 + 8));
  }

  else
  {
    v16 = *v15;
    v57.__r_.__value_.__r.__words[2] = *(v15 + 16);
    *&v57.__r_.__value_.__l.__data_ = v16;
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v57.__r_.__value_.__l.__size_;
    if (v57.__r_.__value_.__l.__size_ != 22)
    {
      goto LABEL_32;
    }

    v17 = v57.__r_.__value_.__r.__words[0];
  }

  else
  {
    v17 = &v57;
    if (HIBYTE(v57.__r_.__value_.__r.__words[2]) == 10)
    {
LABEL_55:
      v27 = v17->__r_.__value_.__r.__words[0];
      v28 = LOWORD(v17->__r_.__value_.__r.__words[1]);
      if (v27 != 0x697263736E617274 || v28 != 25954)
      {
        goto LABEL_59;
      }

      goto LABEL_76;
    }

    if (HIBYTE(v57.__r_.__value_.__r.__words[2]) != 22)
    {
      goto LABEL_59;
    }
  }

  v19 = v17->__r_.__value_.__r.__words[0];
  v20 = v17->__r_.__value_.__l.__size_;
  v21 = *(&v17->__r_.__value_.__r.__words[1] + 6);
  if (v19 == 0x6570736C61636F6CLL && v20 == 0x676F636572686365 && v21 == 0x6E6F6974696E676FLL)
  {
    goto LABEL_76;
  }

  v18 = v57.__r_.__value_.__l.__size_;
LABEL_32:
  if ((*(&v57.__r_.__value_.__s + 23) & 0x80) != 0 && v18 == 50)
  {
    if (!memcmp(v57.__r_.__value_.__l.__data_, "com.apple.SpeechRecognitionCore.speechrecognitiond", 0x32uLL))
    {
      goto LABEL_76;
    }

LABEL_59:
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v56, &v51);
    std::__fs::filesystem::__create_directories(&v56, 0);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v51.__r_.__value_.__l.__size_;
    }

    v31 = __p;
    std::string::basic_string[abi:ne200100](__p, v30 + 5);
    if (v53 < 0)
    {
      v31 = __p[0];
    }

    if (v30)
    {
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v51;
      }

      else
      {
        v32 = v51.__r_.__value_.__r.__words[0];
      }

      memmove(v31, v32, v30);
    }

    strcpy(v31 + v30, "/test");
    if (v53 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    v34 = fopen(v33, "w");
    v35 = v34 != 0;
    if (v34)
    {
      fclose(v34);
    }

    else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v56);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Not writable (via fopen): ", 26);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v51;
      }

      else
      {
        v41 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v51.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v56);
    }

    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    v39 = 0;
    goto LABEL_96;
  }

  if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0 || v18 != 29)
  {
    if ((*(&v57.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v18 != 10)
      {
        goto LABEL_59;
      }

      v17 = v57.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v57.__r_.__value_.__r.__words[2]) != 10)
      {
        goto LABEL_59;
      }

      v17 = &v57;
    }

    goto LABEL_55;
  }

  if (*v57.__r_.__value_.__l.__data_ != 0x6C7070612E6D6F63 || *(v57.__r_.__value_.__r.__words[0] + 8) != 0x652E697269732E65 || *(v57.__r_.__value_.__r.__words[0] + 16) != 0x736465646465626DLL || *(v57.__r_.__value_.__r.__words[0] + 21) != 0x6863656570736465)
  {
    goto LABEL_59;
  }

LABEL_76:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v56);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Writable (via processName): ", 28);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v51;
    }

    else
    {
      v37 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v51.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v56);
  }

  v35 = 0;
  v39 = 1;
LABEL_96:
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
    if (v35)
    {
LABEL_98:
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v56);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "Writable: ", 10);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v51;
        }

        else
        {
          v44 = v51.__r_.__value_.__r.__words[0];
        }

        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v45 = v51.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v56);
      }

      goto LABEL_108;
    }
  }

  else if (v35)
  {
    goto LABEL_98;
  }

  if ((v39 & 1) == 0)
  {
    v50 = strlen(this);
    CC_SHA256(this, v50, &v57);
    confstr(65537, &v56, 0x400uLL);
    snprintf(a3, a4, "%s/%02x%02x%02x%02x.%s", &v56, v57.__r_.__value_.__s.__data_[0], v57.__r_.__value_.__s.__data_[1], v57.__r_.__value_.__s.__data_[2], v57.__r_.__value_.__s.__data_[3], a2);
    goto LABEL_115;
  }

LABEL_108:
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v56, &v51);
  std::__fs::filesystem::__create_directories(&v56, 0);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v46 = &v51;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v46 = v51.__r_.__value_.__r.__words[0];
  }

  snprintf(a3, a4, "%s/%02x%02x%02x%02x.%s", v46, md[0], md[1], md[2], md[3], a2);
LABEL_115:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_1B532D188(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    JUMPOUT(0x1B532D198);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::LmeTrie::AddPath(unsigned int *a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = a3;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v6 != v7)
  {
    if (v4 <= 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "olabel > 0");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    __p = 0;
    v44 = 0;
    v45 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v7, (v7 - v6) >> 2);
    v10 = a1[14];
    if (v10)
    {
      v11 = (*(a1 + 4) + 4 * v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = __p;
    if (v44 != __p)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0.0;
      while (1)
      {
        v16 = v12[v13];
        v17 = *v11;
        if (v17)
        {
          v41 = v4;
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = *(a1 + 1) + 24 * v17;
            v21 = *(v20 + 8);
            if (v15 == -INFINITY || v21 == -INFINITY)
            {
              v22 = NAN;
            }

            else
            {
              v23 = v21 == INFINITY || v15 == INFINITY;
              v22 = v15 + v21;
              if (v23)
              {
                v22 = INFINITY;
              }
            }

            *(v20 + 8) = v22;
            v24 = *v20;
            if (*v20 == v16)
            {
              v25 = v20;
            }

            else
            {
              v25 = v19;
            }

            if (v24 == v16 || v14 == 0)
            {
              v19 = v25;
            }

            else
            {
              kaldi::quasar::LmeTrie::ArcSetOlabel(a1, v20, v14);
              v24 = *v20;
            }

            if (*a1 <= v24 && v24 < (a1[1] + *a1))
            {
              ++v18;
            }

            v17 = *(v20 + 20);
          }

          while (v17);
          v4 = v41;
        }

        else
        {
          v19 = 0;
          v18 = 0;
        }

        if (v16 == -1)
        {
          if (v18 >= a1[1])
          {
            goto LABEL_88;
          }

          v16 = *a1 + v18;
          if (!v19)
          {
LABEL_39:
            if (v13 + 1 == (v44 - __p) >> 2)
            {
              v29 = a1[15];
              if (v10)
              {
                goto LABEL_41;
              }

LABEL_43:
              v30 = 0;
            }

            else
            {
              v29 = kaldi::quasar::LmeTrie::StateNew(a1);
              if (!v10)
              {
                goto LABEL_43;
              }

LABEL_41:
              v30 = (*(a1 + 4) + 4 * v10);
            }

            v31 = kaldi::quasar::LmeTrie::ArcNew(a1, v30, v16, v29, a4);
            a4 = 0.0;
            v14 = 0;
            if (v31)
            {
              v19 = *(a1 + 1) + 24 * v31;
            }

            else
            {
              v19 = 0;
            }

            v15 = 0.0;
            if (!v4)
            {
              goto LABEL_75;
            }

            goto LABEL_70;
          }
        }

        else if (!v19)
        {
          goto LABEL_39;
        }

        if (*(v19 + 16) == a1[15])
        {
          v27 = kaldi::quasar::LmeTrie::StateNew(a1);
          *(v19 + 16) = v27;
          if (v27)
          {
            v28 = (*(a1 + 4) + 4 * v27);
          }

          else
          {
            v28 = 0;
          }

          v32 = *(a1 + 1);
          kaldi::quasar::LmeTrie::ArcNew(a1, v28, *a1, a1[15], 0.0);
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v32) >> 3);
          if (v33)
          {
            v19 = *(a1 + 1) + 24 * v33;
          }

          else
          {
            v19 = 0;
          }
        }

        if (v13 + 1 == (v44 - __p) >> 2)
        {
          v42 = -1;
          std::vector<int>::push_back[abi:ne200100](&__p, &v42);
        }

        v34 = kaldi::quasar::LmeTrie::Plus(a1, *(v19 + 8), a4);
        v35 = *(v19 + 8);
        v36 = v35 == -INFINITY;
        if ((LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          v36 = 1;
        }

        if (*(a1 + 68) == 1)
        {
          if (v36)
          {
            v15 = NAN;
          }

          else
          {
            v23 = v35 == INFINITY;
            v37 = v35 - v34;
            if (v23)
            {
              v15 = INFINITY;
            }

            else
            {
              v15 = v37;
            }
          }

          v38 = (LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF;
          v39 = NAN;
          if (a4 == -INFINITY)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v36)
          {
            v15 = NAN;
          }

          else
          {
            v23 = v35 == INFINITY;
            v40 = v35 - v34;
            if (v23)
            {
              v15 = INFINITY;
            }

            else
            {
              v15 = v40;
            }
          }

          v38 = (LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF;
          v39 = NAN;
          if (a4 == -INFINITY)
          {
            goto LABEL_69;
          }
        }

        if (!v38)
        {
          v39 = INFINITY;
          if (a4 != INFINITY)
          {
            v39 = a4 - v34;
          }
        }

LABEL_69:
        *(v19 + 8) = v34;
        a4 = v39;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_70:
        if (!v14)
        {
          v14 = *(v19 + 4);
          if (v14 == v4)
          {
            goto LABEL_83;
          }

          if ((*(v19 + 12) & 1) == 0)
          {
            kaldi::quasar::LmeTrie::ArcSetOlabel(a1, v19, v4);
LABEL_83:
            v4 = 0;
            v14 = 0;
            goto LABEL_84;
          }

          if (v14)
          {
            *(v19 + 4) = 0;
          }

LABEL_76:
          *(v19 + 12) = 1;
          goto LABEL_84;
        }

LABEL_75:
        if (v4)
        {
          goto LABEL_76;
        }

LABEL_84:
        v10 = *(v19 + 16);
        if (v10)
        {
          v11 = (*(a1 + 4) + 4 * v10);
        }

        else
        {
          v11 = 0;
        }

        ++v13;
        v12 = __p;
        if (v13 >= (v44 - __p) >> 2)
        {
LABEL_88:
          if (!v4)
          {
            ++a1[16];
          }

          v12 = __p;
          break;
        }
      }
    }

    if (v12)
    {
      v44 = v12;
      operator delete(v12);
    }
  }
}

void kaldi::quasar::LmeTrie::GetFst(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  (*(*a2 + 248))(a2, (*(a1 + 40) - *(a1 + 32)) >> 2);
  v5 = *(a1 + 56);
  v4 = *(a1 + 60);
  if (*(a1 + 40) - *(a1 + 32) >= 5uLL)
  {
    v6 = 1;
    do
    {
      v7 = (*(*a2 + 200))(a2);
      if (v6 - 1 != v7)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v17, "fst_state_id == trie_state_id - 1");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v17);
      }

      v8 = v7;
      v9 = *(a1 + 32);
      v10 = *(v9 + 4 * v6);
      if (v10)
      {
        v11 = *(*(a1 + 8) + 24 * v10 + 20);
        if (v11)
        {
          v12 = 1;
          do
          {
            ++v12;
            v11 = *(*(a1 + 8) + 24 * v11 + 20);
          }

          while (v11);
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      (*(*a2 + 256))(a2, v7, v12);
      for (i = *(v9 + 4 * v6); i; i = *(v14 + 20))
      {
        v14 = *(a1 + 8) + 24 * i;
        v15 = *(v14 + 8);
        v16 = *(v14 + 16) - 1;
        v17 = *v14;
        v18 = v15;
        v19 = v16;
        (*(*a2 + 208))(a2, v8, &v17);
      }

      ++v6;
    }

    while (v6 < (*(a1 + 40) - *(a1 + 32)) >> 2);
  }

  (*(*a2 + 176))(a2, (v5 - 1));
  (*(*a2 + 184))(a2, (v4 - 1), 0.0);
}

void kaldi::quasar::LmeFstBuilderCompact::GetFinalLmeFst(kaldi::quasar::LmeTrie **a1, uint64_t a2, _DWORD *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = *(v4 + 16);
    kaldi::quasar::LmeTrie::GetFst(v4, a2);
    std::unique_ptr<kaldi::quasar::LmeTrie>::reset[abi:ne200100](a1, 0);
    fst::MinimizeEncoded<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2, 0.00097656);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "trie");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
}

void fst::MinimizeEncoded<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, float a2)
{
  v3 = a2;
  fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::QuantizeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v3);
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::EncodeMapper(&v2, 3, 1);
}

void sub_1B532DBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~EncodeMapper(va);
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~EncodeMapper(&a9);
  _Unwind_Resume(a1);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B532DC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::LmeTrie::ArcSetOlabel(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 4);
  if (*(a2 + 12) != (v3 != 0))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "static_cast<BOOL>(arc->has_word) == static_cast<BOOL>(arc->olabel)");
    goto LABEL_8;
  }

  if (*(a2 + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "!arc->has_word");
    goto LABEL_8;
  }

  if (v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "!arc->olabel");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  *(a2 + 12) = 1;
  *(a2 + 4) = a3;
}

unint64_t kaldi::quasar::LmeTrie::StateNew(kaldi::quasar::LmeTrie *this)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v2 = this + 32;
  v5 = *(v2 + 2);
  v6 = v4 - v3;
  if (v4 >= v5)
  {
    v8 = v6 >> 2;
    v9 = (v6 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v3;
    v11 = v10 >> 1;
    if (v10 >> 1 <= v9)
    {
      v11 = (v6 >> 2) + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v2, v12);
    }

    *(4 * v8) = 0;
    v7 = 4 * v8 + 4;
    v13 = *(this + 4);
    v14 = *(this + 5) - v13;
    v15 = (4 * v8 - v14);
    memcpy(v15, v13, v14);
    v16 = *(this + 4);
    *(this + 4) = v15;
    *(this + 5) = v7;
    *(this + 6) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = 0;
    v7 = (v4 + 1);
  }

  result = v6 >> 2;
  *(this + 5) = v7;
  *(v7 - 4) = 0;
  return result;
}

unint64_t kaldi::quasar::LmeTrie::ArcNew(void *a1, int *a2, int a3, int a4, float a5)
{
  v11 = a1[1];
  v12 = a1[2];
  v10 = a1 + 1;
  v13 = v10[2];
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
  if (v12 >= v13)
  {
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v11) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v14 + 1)
    {
      v17 = v14 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LmeTrie::Arc>>(v10, v18);
    }

    v19 = 24 * v14;
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    v15 = 24 * v14 + 24;
    v20 = a1[1];
    v21 = a1[2] - v20;
    v22 = (24 * v14 - v21);
    memcpy(v22, v20, v21);
    v23 = a1[1];
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
    v15 = (v12 + 3);
    v12[2] = 0;
  }

  a1[2] = v15;
  *(v15 - 24) = a3;
  *(v15 - 20) = 0;
  *(v15 - 16) = a5;
  *(v15 - 12) = 0;
  v24 = *a2;
  *(v15 - 8) = a4;
  *(v15 - 4) = v24;
  *a2 = v14;
  return v14;
}

float kaldi::quasar::LmeTrie::Plus(kaldi::quasar::LmeTrie *this, float a2, float a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 68) == 1)
  {
    if (a2 >= a3)
    {
      a2 = a3;
    }

    if (a3 == -INFINITY || v4 == -INFINITY)
    {
      return NAN;
    }

    else
    {
      return a2;
    }
  }

  else if (a2 != INFINITY)
  {
    if (a3 == INFINITY)
    {
      return a2;
    }

    else if (a2 <= a3)
    {
      v8 = expf(-(a3 - a2));
      return v4 - logf(v8 + 1.0);
    }

    else
    {
      v7 = expf(-(a2 - a3));
      return v3 - logf(v7 + 1.0);
    }
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LmeTrie::Arc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v11 = *(*a1 + 192);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_1B532E4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_i32[0];
        v45 = &a2[-1];
        if (v47 >= *v12)
        {
          return result;
        }

LABEL_77:
        v76 = *v12;
        *v12 = *v45;
        result = v76;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = (v12 + 16);
      v43 = *(v12 + 16);
      v46 = a2[-1].n128_u32[0];
      v45 = &a2[-1];
      v44 = v46;
      if (v43 < *v12)
      {
        if (v44 < v43)
        {
          goto LABEL_77;
        }

        v75 = *v12;
        *v12 = *v42;
        result = v75;
        *v42 = v75;
        if (*v45 >= *(v12 + 16))
        {
          return result;
        }

        result = *v42;
        *v42 = *v45;
LABEL_78:
        *v45 = result;
        return result;
      }

      if (v44 >= v43)
      {
        return result;
      }

      result = *v42;
      *v42 = *v45;
      *v45 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, a2);
      }

      else if (v12 != a2)
      {
        v51 = (v12 + 16);
        while (v51 != a2)
        {
          v52 = v51;
          v53 = a1[1].n128_u64[0];
          if (v53 < a1->n128_u32[0])
          {
            v54 = a1[1].n128_u64[1];
            v55 = v52;
            do
            {
              result = v55[-1];
              *v55 = result;
              v56 = v55[-2].n128_i32[0];
              --v55;
            }

            while (v53 < v56);
            v55->n128_u64[0] = v53;
            v55->n128_u64[1] = v54;
          }

          v51 = &v52[1];
          a1 = v52;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = (v12 + 16 * (v15 >> 1));
    v17 = v16;
    v18 = *v9;
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          v60 = *v16;
          *v16 = *v9;
          *v9 = v60;
          if (*v16 < *v12)
          {
            v61 = *v12;
            *v12 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v64 = *v12;
          *v12 = *v16;
          *v16 = v64;
          if (*v9 >= *v16)
          {
            goto LABEL_28;
          }

          v58 = *v16;
          *v16 = *v9;
        }

        else
        {
          v58 = *v12;
          *v12 = *v9;
        }

        *v9 = v58;
      }

LABEL_28:
      v21 = (v12 + 16);
      v22 = (v16 - 4);
      v23 = *(v16 - 4);
      v24 = *v10;
      if (v23 >= *(v12 + 16))
      {
        if (v24 < v23)
        {
          v65 = *v22;
          *v22 = *v10;
          *v10 = v65;
          if (*v22 < *v21)
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10 >= *v22)
          {
            goto LABEL_40;
          }

          v67 = *v22;
          *v22 = *v10;
          v25 = v67;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 32);
      v31 = v16[4];
      v29 = (v16 + 4);
      v30 = v31;
      v32 = *v11;
      if (v31 >= *(v12 + 32))
      {
        if (v32 < v30)
        {
          v68 = *v29;
          *v29 = *v11;
          *v11 = v68;
          if (*v29 < *v28)
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11 >= *v29)
          {
            goto LABEL_49;
          }

          v69 = *v29;
          *v29 = *v11;
          v33 = v69;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = *v29;
      if (*v17 >= *v22)
      {
        if (v37 < v36)
        {
          v71 = *v17;
          *v17 = *v29;
          *v29 = v71;
          if (*v17 < *v22)
          {
            v72 = *v22;
            *v22 = *v17;
            *v17 = v72;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v73 = *v22;
        *v22 = *v17;
        *v17 = v73;
        if (*v29 >= *v17)
        {
LABEL_58:
          v74 = *v12;
          *v12 = *v17;
          *v17 = v74;
          goto LABEL_59;
        }

        v70 = *v17;
        *v17 = *v29;
      }

      else
      {
        v70 = *v22;
        *v22 = *v29;
      }

      *v29 = v70;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v20)
      {
        v62 = *v12;
        *v12 = *v9;
        *v9 = v62;
        if (*v12 < *v17)
        {
          v63 = *v17;
          *v17 = *v12;
          *v12 = v63;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v59 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v59;
        goto LABEL_59;
      }

      v66 = *v17;
      *v17 = *v12;
      *v12 = v66;
      if (*v9 < *v12)
      {
        v59 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 16) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, v38, result);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>((v38 + 1), a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = (v12 + 16);
  v48 = *(v12 + 16);
  v49 = (v12 + 32);
  v50 = *(v12 + 32);
  if (v48 >= *v12)
  {
    if (v50 < v48)
    {
      result = *v42;
      *v42 = *v49;
      *v49 = result;
      if (*(v12 + 16) < *v12)
      {
        v78 = *v12;
        *v12 = *v42;
        result = v78;
        *v42 = v78;
      }
    }
  }

  else
  {
    if (v50 < v48)
    {
      v77 = *v12;
      *v12 = *v49;
      result = v77;
      goto LABEL_105;
    }

    v79 = *v12;
    *v12 = *v42;
    result = v79;
    *v42 = v79;
    if (v50 < *(v12 + 16))
    {
      result = *v42;
      *v42 = *v49;
LABEL_105:
      *v49 = result;
    }
  }

  if (*v9 >= v49->n128_u32[0])
  {
    return result;
  }

  result = *v49;
  *v49 = *v9;
  *v9 = result;
  if (v49->n128_u32[0] >= v42->n128_u32[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v49;
  *v49 = result;
LABEL_109:
  if (*(v12 + 16) < *v12)
  {
    v80 = *v12;
    *v12 = *v42;
    result = v80;
    *v42 = v80;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(__n128 *a1, __n128 *a2, int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 < *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(_OWORD *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 >= *(a2 - 4))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2-- - 4);
    }

    while (v3 < v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 >= v8);
    do
    {
      v9 = *(a2-- - 4);
    }

    while (v3 < v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 > v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 <= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 <= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 > v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 <= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] >= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 < v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 >= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 < *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 < v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 < *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 <= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 < *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 <= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

void fst::AcceptorMinimize<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 64))(a1, 0x200010000, 1))
  {
    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v6, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "FST is not an unweighted acceptor", 33);
  fst::LogMessage::~LogMessage(&v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 192))(a1, 4, 4);
}

void sub_1B532F978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::QuantizeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, float *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v12);
        while (!(*(*v12 + 24))(v12))
        {
          v7 = (*(*v12 + 32))(v12);
          v8 = *(v7 + 8);
          if ((LODWORD(v8) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v8 = *a2 * floorf((v8 / *a2) + 0.5);
          }

          v9 = *(v7 + 12);
          v11[0] = *v7;
          v11[1] = LODWORD(v8) | (v9 << 32);
          (*(*v12 + 88))(v12, v11);
          (*(*v12 + 40))(v12);
        }

        if (v12)
        {
          (*(*v12 + 8))();
        }

        v10.n128_f32[0] = (*(*a1 + 32))(a1, v6);
        if ((v10.n128_u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
        {
          v10.n128_f32[0] = *a2 * floorf((v10.n128_f32[0] / *a2) + 0.5);
        }

        (*(*a1 + 184))(a1, v6, v10);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFCFFFF0007, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B532FD1C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::EncodeMapper(_DWORD *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::EncodeTable(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a2;
  v5 = a2 & 1;
  v6 = (a2 & 2) != 0;
  std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const* const,int>>>::unordered_map(a1 + 32, 0x400uLL, &v4);
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1B532FE48(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const* const,int>>>::unordered_map(uint64_t a1, size_t a2, int *a3)
{
  v4 = *a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 36) = v4 & 1;
  *(a1 + 37) = (v4 & 2) != 0;
  *(a1 + 40) = 1065353216;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(a1, 0);
  (*(*a1 + 288))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v25 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if (*(a2 + 4) == 1 && (*a2 & 2) != 0)
    {
      v5 = (*(*a1 + 200))(a1);
      (*(*a1 + 184))(a1, v5, 0.0);
      v6 = 0;
    }

    else
    {
      LODWORD(v5) = -1;
      v6 = 1;
    }

    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      while (1)
      {
        (*(*a1 + 296))(a1, v7, &v34);
        while (!(*(*v34 + 24))(v34))
        {
          v8 = (*(*v34 + 32))(v34);
          v32 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(a2, v8);
          v33 = v9;
          (*(*v34 + 88))(v34, &v32);
          (*(*v34 + 40))(v34);
        }

        if (v34)
        {
          (*(*v34 + 8))();
        }

        if (v6)
        {
          break;
        }

        if (v7 != v5)
        {
          *&v18 = (*(*a1 + 32))(a1, v7);
          v32 = 0;
          v33 = v18 | 0xFFFFFFFF00000000;
          v19 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(a2, &v32);
          if (HIDWORD(v19) || v19 || (*&v32 = v20, LODWORD(v34) = 2139095040, v20 != INFINITY))
          {
            v32 = v19;
            v33 = __PAIR64__(v5, LODWORD(v20));
            (*(*a1 + 208))(a1, v7, &v32);
            v12.n128_u32[0] = 2139095040;
          }

          else
          {
            v12.n128_u32[0] = 2139095040;
          }

          goto LABEL_31;
        }

LABEL_32:
        v7 = (v7 + 1);
        if (v7 >= (*(*a1 + 160))(a1))
        {
          goto LABEL_35;
        }
      }

      *&v10 = (*(*a1 + 32))(a1, v7);
      v32 = 0;
      v33 = v10 | 0xFFFFFFFF00000000;
      v11 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(a2, &v32);
      v14 = v13;
      if (!v11)
      {
LABEL_30:
        v12.n128_u32[0] = v14;
LABEL_31:
        (*(*a1 + 184))(a1, v7, v12);
        goto LABEL_32;
      }

      v15 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v29, "FATAL");
        v16 = fst::LogMessage::LogMessage(&v31, v29);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v16 = fst::LogMessage::LogMessage(&v28, __p);
      }

      v17 = fst::cerr(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ArcMap: non-zero arc labels for superfinal arc", 46);
      if (v15)
      {
        fst::LogMessage::~LogMessage(&v31);
        if (v30 < 0)
        {
          v21 = v29[0];
LABEL_28:
          operator delete(v21);
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v28);
        if (v27 < 0)
        {
          v21 = __p[0];
          goto LABEL_28;
        }
      }

      (*(*a1 + 192))(a1, 4, 4);
      goto LABEL_30;
    }

LABEL_35:
    v22 = 0x3FFF00000007;
    if ((*a2 & 1) == 0)
    {
      v22 = 0x3FFFFFFF0007;
    }

    if ((*a2 & 2) != 0)
    {
      v23 = 0x1D7C48100007;
      if (*(a2 + 4) == 1)
      {
        v23 = 0x2EBC84200007;
      }

      v22 &= v23;
    }

    if (*(a2 + 16))
    {
      v24 = v25 | 4;
    }

    else
    {
      v24 = v25;
    }

    return (*(*a1 + 192))(a1, v22 & v24, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B5330494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  fst::LogMessage::~LogMessage(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
    v6 = *a1 | 4;
  }

  else
  {
    result = 0;
    v6 = *a1 & 0xFFFFFFFB;
  }

  *(a1 + 88) = result;
  *a1 = v6;
  return result;
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
    v6 = *a1 | 8;
  }

  else
  {
    result = 0;
    v6 = *a1 & 0xFFFFFFF7;
  }

  *(a1 + 96) = result;
  *a1 = v6;
  return result;
}

unint64_t fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(int *a1, unsigned int *a2)
{
  v4 = a2[3];
  if (a1[1] == 1)
  {
    if (v4 == -1)
    {
      if ((*a1 & 2) == 0 || (LODWORD(__p[0]) = a2[2], LODWORD(v21[0]) = 2139095040, *__p == INFINITY))
      {
LABEL_14:
        v5 = *a2;
        v6 = a2[1];
        return v5 | (v6 << 32);
      }
    }

    v5 = fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Encode(*(a1 + 1), a2);
    LODWORD(v6) = a2[1];
    if (*a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = v6;
    }
  }

  else
  {
    if (v4 == -1 || !*a2)
    {
      goto LABEL_14;
    }

    v7 = *a1;
    if ((*a1 & 1) != 0 && *a2 != a2[1])
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v8 = fst::LogMessage::LogMessage(&v26, __p);
      v9 = fst::cerr(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "EncodeMapper: Label-encoded arc has different input and output labels", 69);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 16) = 1;
      v7 = *a1;
    }

    if ((v7 & 2) != 0)
    {
      LODWORD(v21[0]) = a2[2];
      LODWORD(v18[0]) = 0;
      if (*v21 != 0.0)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v21, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v21, "ERROR");
        }

        v10 = fst::LogMessage::LogMessage(&v23, v21);
        v11 = fst::cerr(v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "EncodeMapper: Weight-encoded arc has non-trivial weight", 55);
        fst::LogMessage::~LogMessage(&v23);
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        *(a1 + 16) = 1;
      }
    }

    v12 = fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Decode(*(a1 + 1), *a2);
    if (v12)
    {
      v13 = v12;
      v5 = *v12;
      if (*a1)
      {
        v14 = v13;
      }

      else
      {
        v14 = a2;
      }

      v6 = v14[1];
    }

    else
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "ERROR");
      }

      v16 = fst::LogMessage::LogMessage(&v20, v18);
      v17 = fst::cerr(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "EncodeMapper: decode failed", 27);
      fst::LogMessage::~LogMessage(&v20);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      *(a1 + 16) = 1;
      v5 = -1;
      v6 = 0xFFFFFFFFLL;
    }
  }

  return v5 | (v6 << 32);
}

void sub_1B533094C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  fst::LogMessage::~LogMessage(&a28);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Encode(int8x8_t *a1, uint64_t a2)
{
  v2 = (a1->i32[0] << 31 >> 31) & *(a2 + 4);
  v3 = *(a2 + 8);
  if ((a1->i32[0] & 2) == 0)
  {
    v3 = 0.0;
  }

  v6[0] = *a2;
  v6[1] = v2;
  *&v6[2] = v3;
  v7 = v6;
  v4 = std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*>(a1 + 4, &v7);
  if (!v4)
  {
    operator new();
  }

  return *(v4 + 6);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Decode(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v3 = *(a1 + 8);
    if (a2 <= ((*(a1 + 16) - v3) >> 3))
    {
      return *(v3 + 8 * a2 - 8);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v4 = fst::LogMessage::LogMessage(&v10, __p);
  v5 = fst::cerr(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "EncodeTable::Decode: unknown decode key: ", 41);
  MEMORY[0x1B8C84C00](v6, a2);
  fst::LogMessage::~LogMessage(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5330C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*>(int8x8_t *a1, float **a2)
{
  v4 = *a2;
  v5 = **a2;
  if (a1[4].i8[4] == 1)
  {
    v5 += 7853 * *(v4 + 1);
    if ((a1[4].i8[5] & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1[4].i8[5])
  {
LABEL_5:
    v5 += 7867 * *(v4 + 2);
  }

LABEL_6:
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v5)
    {
      if (std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](uint64_t a1, float **a2, float **a3)
{
  v3 = *a2;
  v4 = *a3;
  return **a2 == **a3 && *(v3 + 1) == *(v4 + 1) && v3[2] == v4[2];
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>>>::__emplace_unique_key_args<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::piecewise_construct_t const&,std::tuple<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const* const&>,std::tuple<>>(int8x8_t *a1, float **a2, uint64_t a3, void **a4)
{
  v6 = *a2;
  v7 = **a2;
  if (a1[4].i8[4] == 1)
  {
    v7 += 7853 * *(v6 + 1);
    if ((a1[4].i8[5] & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1[4].i8[5])
  {
LABEL_5:
    v7 += 7867 * *(v6 + 2);
  }

LABEL_6:
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
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
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (!std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_22;
  }

  return v13;
}

void fst::MergeStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(void *a1, uint64_t a2)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((a1[5] - a1[4]) >> 3));
  v5 = a1[4];
  v4 = a1[5];
  v6 = v4 - v5;
  if (((v4 - v5) >> 3))
  {
    v7 = 0;
    v8 = (v6 >> 3);
    v9 = __p;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v9++ = **(v5 + (v7 >> 29));
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 8 * v10);
      if (v11)
      {
        do
        {
          v12 = *v11;
          (*(*a2 + 296))(a2, *v11, &v15);
          while (!(*(*v15 + 24))(v15))
          {
            v14 = *(*(*v15 + 32))(v15);
            HIDWORD(v14) = *(__p + *(a1[10] + 4 * SHIDWORD(v14)));
            if (v12 == *(__p + v10))
            {
              (*(*v15 + 88))(v15, &v14);
            }

            else
            {
              (*(*a2 + 208))(a2);
            }

            (*(*v15 + 40))(v15);
          }

          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          v11 = *(v11 + 1);
        }

        while (v11);
        v5 = a1[4];
        v4 = a1[5];
      }

      ++v10;
    }

    while (v10 < ((v4 - v5) >> 3));
  }

  v13 = (*(*a2 + 24))(a2);
  (*(*a2 + 176))(a2, *(__p + *(a1[10] + 4 * v13)));
  fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
}

void sub_1B533130C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AcyclicMinimizer(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 64))(a2, 0x40000, 1) == 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v4;
  if (!(*(*a2 + 64))(a2, 0x40000, 1))
  {
    FstCheck(1, "Weight::Properties() & kIdempotent", "../libquasar/libkaldi/tools/openfst/src/include/fst/minimize.h", 317);
  }

  fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Initialize(a1, a2);
  fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Refine(a1, a2);
  return a1;
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Initialize(void *a1, uint64_t a2)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, &v10, 0);
  fst::Partition<int>::Initialize(a1, v12);
  fst::Partition<int>::AllocateClasses(a1, DWORD2(v11) + 1);
  v3 = v10;
  if (*(&v10 + 1) != v10)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v3[v5];
      v7 = *(a1[1] + (v4 >> 29));
      v8 = a1[4];
      v9 = *(v8 + 8 * v6);
      if (v9)
      {
        *(v9 + 16) = v7;
        v9 = *(v8 + 8 * v6);
      }

      *(v7 + 8) = v9;
      *(v7 + 16) = 0;
      *(v8 + 8 * v6) = v7;
      *(a1[10] + 4 * (v4 >> 32)) = v6;
      ++*(a1[13] + 4 * v6);
      ++v5;
      v3 = v10;
      v4 += 0x100000000;
    }

    while (v5 < (*(&v10 + 1) - v10) >> 2);
  }

  if (v3)
  {
    *(&v10 + 1) = v3;
    operator delete(v3);
  }
}

void sub_1B533155C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Refine(void *a1, void *a2)
{
  v2 = a1[5] - a1[4];
  if ((v2 >> 3))
  {
    v5 = 0;
    v6 = (v2 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v17[2] = a2;
      v17[3] = a1;
      v18 = 7;
      v16 = v17;
      v8 = *(a1[4] + 8 * v5);
      v15 = *v8;
      v19 = &v15;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15, &std::piecewise_construct, &v19) + 8) = v5;
      for (i = *(v8 + 8); i; i = *(i + 8))
      {
        v15 = *i;
        v10 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&v16, &v15);
        if (v17 == v10)
        {
          v11 = fst::Partition<int>::AddClass(a1);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v19 = &v15;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15, &std::piecewise_construct, &v19) + 8) = v11;
      }

      v12 = *(a1[4] + 8 * v5);
      while (v12)
      {
        v15 = *v12;
        v13 = *(a1[10] + 4 * v15);
        v19 = &v15;
        v14 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15, &std::piecewise_construct, &v19) + 8);
        v12 = *(v12 + 8);
        if (v13 != v14)
        {
          fst::Partition<int>::Move(a1, v15, v14);
        }
      }

      std::__tree<int>::destroy(&v16, v17[0]);
      ++v5;
    }

    while (v5 != v7);
  }
}

void fst::Partition<int>::Initialize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (v5 != v4)
  {
    v7 = 0;
    do
    {
      v8 = *(v4 + 8 * v7);
      if (v8)
      {
        MEMORY[0x1B8C85350](v8, 0x1020C40F89CB87BLL);
        v4 = *(a1 + 8);
        v5 = *(a1 + 16);
      }

      ++v7;
    }

    while (v7 < (v5 - v4) >> 3);
  }

  v9 = *(a1 + 80);
  *(a1 + 16) = v4;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 88) = v9;
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v6, a2);
  __x = -1;
  std::vector<int>::resize((a1 + 80), a2, &__x);
  std::vector<int>::reserve((a1 + 104), a2);
  if (a2)
  {
    operator new();
  }

  *a1 = 0;
}

void fst::Partition<int>::AllocateClasses(uint64_t a1, int a2)
{
  v2 = (a1 + 32);
  v3 = ((*(a1 + 40) - *(a1 + 32)) >> 3) + a2;
  *__x = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize((a1 + 32), v3, __x);
  __x[0] = 0;
  std::vector<int>::resize(v2 + 3, v3, __x);
  *__x = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(&v2[1].__begin_, v3, __x);
  __x[0] = 0;
  std::vector<int>::resize(v2 + 4, v3, __x);
}

void fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  if ((*(*a1 + 24))(a1) != -1)
  {
    memset(&v7, 0, sizeof(v7));
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MemoryPool(v3, 64);
  }
}

void sub_1B5332030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v15 = *(v13 - 112);
  if (v15)
  {
    *(v13 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::HeightVisitor::InitState(const void **a1, int a2)
{
  v4 = (a1[1] - *a1) >> 2;
  for (i = a2; v4 <= i; ++v4)
  {
    v7 = -1;
    std::vector<int>::push_back[abi:ne200100](a1, &v7);
  }

  if (a1[4] <= i)
  {
    a1[4] = (a2 + 1);
  }

  return 1;
}

uint64_t fst::Partition<int>::AddClass(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (*(a1 + 40) - *(a1 + 32)) >> 3;
  *__x = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize((a1 + 32), v2 + 1, __x);
  __x[0] = 0;
  std::vector<int>::resize(v1 + 3, v2 + 1, __x);
  *__x = 0;
  std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(&v1[1].__begin_, v2 + 1, __x);
  __x[0] = 0;
  std::vector<int>::resize(v1 + 4, v2 + 1, __x);
  return v2;
}

void *fst::Partition<int>::Move(void *result, int a2, int a3)
{
  v3 = *(result[10] + 4 * a2);
  v4 = result[1];
  v5 = *(v4 + 8 * a2);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6)
  {
    *(v6 + 16) = v7;
  }

  if (v7)
  {
    *(v7 + 8) = v6;
  }

  else
  {
    *(result[4] + 8 * v3) = v6;
    v4 = result[1];
  }

  v8 = *(v4 + 8 * a2);
  v9 = result[4];
  v10 = *(v9 + 8 * a3);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * a3);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * a3) = v8;
  *(result[10] + 4 * a2) = a3;
  v11 = result[13];
  ++*(v11 + 4 * a3);
  --*(v11 + 4 * v3);
  return result;
}

void *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t **a1, unsigned int *a2, uint64_t a3, unsigned int **a4)
{
  v4 = *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()((a1 + 24), *a3, *(v4 + 7)))
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

      if (!fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()((a1 + 24), *(v8 + 7), *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (v6)
  {
    v16 = (*(**a1 + 32))();
    v17 = (*(**a1 + 32))(*a1, a3);
    if (LODWORD(v16) < LODWORD(v17))
    {
      return 1;
    }

    if (LODWORD(v16) <= LODWORD(v17) && (a1[2] & 2) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v6 & 2) == 0)
  {
    return 0;
  }

LABEL_3:
  v7 = (*(**a1 + 40))(*a1, a2);
  if (v7 < (*(**a1 + 40))(*a1, a3))
  {
    return 1;
  }

  v8 = (*(**a1 + 40))(*a1, a2);
  if (v8 > (*(**a1 + 40))(*a1, a3) || (a1[2] & 4) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v26 = 0;
  (*(*v9 + 136))(v9, a2, v24);
  v10 = *a1;
  v23 = 0;
  (*(*v10 + 136))(v10, a3, v21);
  while (1)
  {
    if (v24[0])
    {
      if ((*(*v24[0] + 24))(v24[0]))
      {
        goto LABEL_36;
      }
    }

    else if (v26 >= v24[2])
    {
      goto LABEL_36;
    }

    if (v21[0])
    {
      if ((*(*v21[0] + 24))(v21[0]))
      {
        goto LABEL_36;
      }
    }

    else if (v23 >= v21[2])
    {
LABEL_36:
      v18 = 0;
      v19 = 1;
      goto LABEL_39;
    }

    if (v24[0])
    {
      v11 = (*(*v24[0] + 32))(v24[0]);
    }

    else
    {
      v11 = (v24[1] + 16 * v26);
    }

    if (v21[0])
    {
      v12 = (*(*v21[0] + 32))(v21[0]);
    }

    else
    {
      v12 = (v21[1] + 16 * v23);
    }

    if (*v11 < *v12)
    {
      goto LABEL_37;
    }

    if (*v11 > *v12)
    {
      break;
    }

    v13 = *(a1[1] + 80);
    v14 = *(v13 + 4 * v11[3]);
    v15 = *(v13 + 4 * v12[3]);
    if (v14 < v15)
    {
LABEL_37:
      v19 = 0;
      v18 = 1;
      goto LABEL_39;
    }

    if (v14 > v15)
    {
      break;
    }

    if (v24[0])
    {
      (*(*v24[0] + 40))(v24[0]);
    }

    else
    {
      ++v26;
    }

    if (v21[0])
    {
      (*(*v21[0] + 40))(v21[0]);
    }

    else
    {
      ++v23;
    }
  }

  v19 = 0;
  v18 = 0;
LABEL_39:
  if (v21[0])
  {
    (*(*v21[0] + 8))(v21[0]);
  }

  else if (v22)
  {
    --*v22;
  }

  if (v24[0])
  {
    (*(*v24[0] + 8))(v24[0]);
  }

  else if (v25)
  {
    --*v25;
  }

  if (v19)
  {
    return 0;
  }

  return v18;
}

void sub_1B53327F8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(uint64_t a1, unsigned int *a2)
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
    v7 = fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()((a1 + 24), *(v3 + 28), *a2);
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
  if (v6 == v2 || fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()((a1 + 24), *a2, *(v6 + 28)))
  {
    return v2;
  }

  return v6;
}

void *fst::Partition<int>::~Partition(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        MEMORY[0x1B8C85350](v5, 0x1020C40F89CB87BLL);
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[16];
  if (v7)
  {
    a1[17] = v7;
    operator delete(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  v11 = a1[4];
  if (v11)
  {
    a1[5] = v11;
    operator delete(v11);
  }

  v12 = a1[1];
  if (v12)
  {
    a1[2] = v12;
    operator delete(v12);
  }

  return a1;
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::CyclicMinimizer(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, 0x40000, 1);
  *(a1 + 200) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3 == 0;
  *(a1 + 192) = 2;
  *(a1 + 196) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = &unk_1F2CFB7B0;
  fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFst((a1 + 248));
}

void sub_1B5332B3C(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  fst::Partition<int>::~Partition(v1);
  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::Initialize(uint64_t *a1, uint64_t a2)
{
  fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, a1 + 31, 1);
  fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>((a1 + 31));
  fst::Partition<int>::Initialize(a1, (((*(a1[32] + 72) - *(a1[32] + 64)) << 29) - 0x100000000) >> 32);
  fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::PrePartition(a1, a2);
  operator new();
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::Compute(uint64_t result)
{
  for (i = *(result + 240); i; i = *(result + 240))
  {
    v3 = *(*(*(result + 208) + ((*(result + 232) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(result + 232) & 0x3FFLL));
    ++*(result + 232);
    *(result + 240) = i - 1;
    std::deque<int>::__maybe_remove_front_spare[abi:ne200100](result + 200, 1);
    fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::Split(result, v3);
  }
}

void fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5332CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::PrePartition(void *a1, uint64_t a2)
{
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
    v4 = fst::LogMessage::LogMessage(&v33, &__p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "PrePartition", 12);
    fst::LogMessage::~LogMessage(&v33);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }
  }

  v38 = 0;
  v39 = a2;
  v40 = a1;
  v41 = 1;
  __p = &v37;
  v37 = 0;
  v35 = 0;
  (*(*a2 + 128))(a2, &v33);
  v6 = fst::Partition<int>::AddClass(a1);
  if (v33)
  {
    v7 = (*(*v33 + 24))(v33);
  }

  else
  {
    v7 = v35;
  }

  v8 = *(a1[1] + 8 * v7);
  v9 = a1[4];
  v10 = *(v9 + 8 * v6);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * v6);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * v6) = v8;
  *(a1[10] + 4 * v7) = v6;
  ++*(a1[13] + 4 * v6);
  if (v33)
  {
    v11 = (*(*v33 + 24))(v33);
  }

  else
  {
    v11 = v35;
  }

  v32 = v11;
  v30[0] = &v32;
  *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32, &std::piecewise_construct, v30) + 8) = v6;
  LODWORD(v30[0]) = v6;
  std::deque<int>::push_front((a1 + 25), v30);
  v12 = v33;
  if (v33)
  {
    goto LABEL_28;
  }

  ++v35;
  while (v33)
  {
    if ((*(*v33 + 16))(v33))
    {
      goto LABEL_30;
    }

    if (!v33)
    {
      goto LABEL_19;
    }

    v13 = (*(*v33 + 24))(v33);
LABEL_20:
    v32 = v13;
    v14 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&__p, &v32);
    if (&v37 == v14)
    {
      v21 = fst::Partition<int>::AddClass(a1);
      v22 = v21;
      v23 = v32;
      v24 = *(a1[1] + 8 * v32);
      v25 = a1[4];
      v26 = *(v25 + 8 * v21);
      if (v26)
      {
        *(v26 + 16) = v24;
        v26 = *(v25 + 8 * v21);
      }

      *(v24 + 8) = v26;
      *(v24 + 16) = 0;
      *(v25 + 8 * v21) = v24;
      *(a1[10] + 4 * v23) = v21;
      ++*(a1[13] + 4 * v21);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32, &std::piecewise_construct, v30) + 8) = v21;
      LODWORD(v30[0]) = v22;
      std::deque<int>::push_front((a1 + 25), v30);
    }

    else
    {
      v15 = v32;
      v16 = *(v14 + 32);
      v17 = *(a1[1] + 8 * v32);
      v18 = a1[4];
      v19 = *(v18 + 8 * v16);
      if (v19)
      {
        *(v19 + 16) = v17;
        v19 = *(v18 + 8 * v16);
      }

      *(v17 + 8) = v19;
      *(v17 + 16) = 0;
      *(v18 + 8 * v16) = v17;
      *(a1[10] + 4 * v15) = v16;
      ++*(a1[13] + 4 * v16);
      v20 = *(v14 + 32);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32, &std::piecewise_construct, v30) + 8) = v20;
    }

    v12 = v33;
    if (v33)
    {
LABEL_28:
      (*(*v33 + 32))(v12);
    }

    else
    {
      ++v35;
    }
  }

  if (v35 < v34)
  {
LABEL_19:
    v13 = v35;
    goto LABEL_20;
  }

LABEL_30:
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "INFO");
    v27 = fst::LogMessage::LogMessage(&v32, v30);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Initial Partition: ", 19);
    MEMORY[0x1B8C84C00](v29, (a1[5] - a1[4]) >> 3);
    fst::LogMessage::~LogMessage(&v32);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__tree<int>::destroy(&__p, v37);
}

void sub_1B533313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__tree<int>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v11 = *(*a1 + 192);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_1B5333668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::Split(const void **a1, int a2)
{
  for (i = *(a1[4] + a2); i; i = *(i + 1))
  {
    if (*(*(*(a1[32] + 8) + 8 * (*i + 1)) + 32) != *(*(*(a1[32] + 8) + 8 * (*i + 1)) + 24))
    {
      operator new();
    }
  }

  v4 = a1[33];
  v5 = *v4;
  v6 = v4 + 1;
  v7 = v4[1];
  if (*v4 != v7)
  {
    v8 = -1;
    while (1)
    {
      v9 = *v5;
      v35 = v4[3];
      v10 = (v7 - v5) >> 3;
      if (v10 >= 2)
      {
        v11 = *v5;
        v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> **>>(v5, &v35, v10);
        v13 = (v7 - 8);
        if ((v7 - 8) == v12)
        {
          *v12 = v11;
        }

        else
        {
          *v12 = *v13;
          *v13 = v11;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> **>>(v5, (v12 + 1), &v35, v12 + 1 - v5);
        }
      }

      *v6 -= 8;
      if (!*v9)
      {
        break;
      }

      v14 = (*(**v9 + 24))(*v9);
      v15 = *v9;
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          v17 = (*(*v15 + 32))(v15);
          if (*v9)
          {
            v18 = (*(**v9 + 32))(*v9);
            goto LABEL_24;
          }
        }

        else
        {
LABEL_22:
          v17 = (v9[1] + 16 * v9[4]);
        }

        v18 = v9[1] + 16 * v9[4];
LABEL_24:
        v19 = *(v18 + 12);
        v20 = *v17;
        if (v8 != *v17)
        {
          fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
        }

        if (*(a1[13] + *(a1[10] + v19 - 1)) >= 2u)
        {
          fst::Partition<int>::SplitOn(a1, v19 - 1);
        }

        if (*v9)
        {
          (*(**v9 + 40))(*v9);
          if (*v9)
          {
            if ((*(**v9 + 24))(*v9))
            {
              if (*v9)
              {
                (*(**v9 + 8))(*v9);
                goto LABEL_39;
              }

LABEL_37:
              v25 = v9[3];
              if (v25)
              {
                --*v25;
              }

LABEL_39:
              MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_51:
              v8 = v20;
              goto LABEL_52;
            }

LABEL_35:
            v21 = a1[33];
            v23 = v21[1];
            v22 = v21[2];
            if (v23 >= v22)
            {
              v26 = (v23 - *v21) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v27 = v22 - *v21;
              v28 = v27 >> 2;
              if (v27 >> 2 <= (v26 + 1))
              {
                v28 = v26 + 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1[33], v29);
              }

              v30 = (8 * v26);
              *v30 = v9;
              v24 = 8 * v26 + 8;
              v31 = v21[1] - *v21;
              v32 = v30 - v31;
              memcpy(v30 - v31, *v21, v31);
              v33 = *v21;
              *v21 = v32;
              v21[1] = v24;
              v21[2] = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v23 = v9;
              v24 = (v23 + 8);
            }

            v21[1] = v24;
            v34 = *v21;
            v35 = v21[3];
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> **>>(v34, v24, &v35, (v24 - v34) >> 3);
            goto LABEL_51;
          }
        }

        else
        {
          ++v9[4];
        }

        if (v9[4] >= v9[2])
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      if (!v15)
      {
        goto LABEL_16;
      }

      (*(*v15 + 8))(v15);
LABEL_18:
      MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_52:
      v4 = a1[33];
      v5 = *v4;
      v6 = v4 + 1;
      v7 = v4[1];
      if (*v4 == v7)
      {
        goto LABEL_53;
      }
    }

    if (v9[4] < v9[2])
    {
      goto LABEL_22;
    }

LABEL_16:
    v16 = v9[3];
    if (v16)
    {
      --*v16;
    }

    goto LABEL_18;
  }

LABEL_53:
  fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
}

void fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(uint64_t result, uint64_t a2)
{
  v3 = *(result + 152);
  if (*(result + 160) != v3)
  {
    v5 = 0;
    do
    {
      v6 = fst::Partition<int>::SplitRefine(result, *(v3 + 4 * v5));
      if (a2 && v6 != -1)
      {
        v7 = v6;
        std::deque<int>::push_front(a2 + 16, &v7);
      }

      ++v5;
      v3 = *(result + 152);
    }

    while (v5 < (*(result + 160) - v3) >> 2);
  }

  *(result + 160) = v3;
}

const void **fst::Partition<int>::SplitOn(const void **result, int a2)
{
  v11 = *(result[10] + a2);
  v2 = v11;
  if (*(result[13] + v11) != 1)
  {
    v4 = result;
    v5 = result[16];
    v6 = v5[v11];
    if (!v6)
    {
      std::vector<int>::push_back[abi:ne200100](result + 19, &v11);
      v2 = v11;
      *(v4[7] + v11) = *(v4[4] + v11);
      v5 = v4[16];
      v6 = v5[v2];
    }

    v5[v2] = v6 + 1;
    v7 = v11;
    v8 = v4[7];
    v9 = v8[v11];
    if (v9)
    {
      v10 = *(v4[1] + a2);
      if (v9 == v10)
      {
        v8[v11] = *(v10 + 8);
      }
    }

    return fst::Partition<int>::Move(v4, a2, v7);
  }

  return result;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> **>>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(uint64_t a1, void *a2, void *a3)
{
  if (*a2)
  {
    v4 = (*(**a2 + 32))(*a2);
  }

  else
  {
    v4 = (a2[1] + 16 * a2[4]);
  }

  if (*a3)
  {
    v5 = (*(**a3 + 32))(*a3);
  }

  else
  {
    v5 = (a3[1] + 16 * a3[4]);
  }

  return *v4 > *v5;
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t fst::Partition<int>::SplitRefine(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 56) + 8 * a2);
  if (v4)
  {
    result = fst::Partition<int>::AddClass(a1);
    if (*(a1 + 176))
    {
      v6 = *(*(a1 + 32) + 8 * a2);
      if (v6 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          ++v7;
          v6 = *(v6 + 8);
        }

        while (v6 != v4);
      }

      *(*(a1 + 128) + 4 * a2) = v7;
    }

    else
    {
      v7 = *(*(a1 + 128) + 4 * a2);
    }

    v8 = *(*(a1 + 104) + 4 * a2) - v7;
    if (v8 >= v7)
    {
      *(*(a1 + 32) + 8 * result) = *(*(a1 + 32) + 8 * a2);
      v12 = *(a1 + 104);
      *(v12 + 4 * a2) = v8;
      v9 = result << 32;
      *(v12 + 4 * result) = *(*(a1 + 128) + 4 * a2);
      *(*(v4 + 16) + 8) = 0;
      *(v4 + 16) = 0;
      *(*(a1 + 32) + 8 * a2) = v4;
    }

    else
    {
      *(*(a1 + 32) + 8 * result) = v4;
      v9 = result << 32;
      *(*(v4 + 16) + 8) = 0;
      v10 = *(*(a1 + 128) + 4 * a2);
      *(v4 + 16) = 0;
      v11 = *(a1 + 104);
      *(v11 + 4 * a2) = v10;
      *(v11 + 4 * result) = v8;
    }

    v13 = *(*(a1 + 32) + (v9 >> 29));
    if (v13)
    {
      v14 = *(a1 + 80);
      do
      {
        *(v14 + 4 * *v13) = result;
        v13 = *(v13 + 1);
      }

      while (v13);
    }

    *(*(a1 + 56) + 8 * a2) = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(a1 + 128) + 4 * a2) = 0;
  return result;
}

void *fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::LifoQueue<int>>::~CyclicMinimizer(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C85350](v2, 0xE0C40DD5D8FE3);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(a1 + 31);
  std::deque<int>::~deque[abi:ne200100](a1 + 25);

  return fst::Partition<int>::~Partition(a1);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, const void **a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= (a2[3] - v9) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, &v9[16 * i]);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v10 = *(*a1 + 192);

    return v10(a1, v5 & 0xA6A0A950007, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetState(const void **a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  while (1)
  {
    if (!v13[0])
    {
      if (v15 >= v13[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = (v13[1] + 16 * v15);
      goto LABEL_8;
    }

    if ((*(*v13[0] + 24))(v13[0]))
    {
      break;
    }

    if (!v13[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v13[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v7);
    if (v13[0])
    {
      (*(*v13[0] + 40))(v13[0]);
    }

    else
    {
      ++v15;
    }
  }

  if (v13[0])
  {
    (*(*v13[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v14)
  {
    --*v14;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz((v9 - v8) >> 4);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v8, v9, v13, v11, 1);
  v12 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Equal &>(a1[2], a1[3], v13);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::resize(v4, (v12 - a1[2]) >> 4);
}

void sub_1B5334544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::resize(const void **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__append(result, a2 - v2);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(uint64_t result, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v21 = &a2[-1];
        v22 = a2[-1].n128_i32[0];
        if (v22 < *v9 || v22 <= *v9 && ((v31 = a2[-1].n128_i32[1], v32 = *(v9 + 4), v31 < v32) || v31 <= v32 && a2[-1].n128_u32[3] < *(v9 + 12)))
        {
          v40 = *v9;
          *v9 = *v21;
          *v21 = v40;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v9, (v9 + 16), (v9 + 32));
      v23 = a2 - 1;
      v24 = a2[-1].n128_i32[0];
      v25 = *(v9 + 32);
      if (v24 < v25 || v24 <= v25 && ((v33 = a2[-1].n128_i32[1], v34 = *(v9 + 36), v33 < v34) || v33 <= v34 && a2[-1].n128_u32[3] < *(v9 + 44)))
      {
        v26 = *(v9 + 32);
        *(v9 + 32) = *v23;
        *v23 = v26;
        v27 = *(v9 + 32);
        v28 = *(v9 + 16);
        if (v27 < v28 || v27 <= v28 && ((v35 = *(v9 + 36), v36 = *(v9 + 20), v35 < v36) || v35 <= v36 && *(v9 + 44) < *(v9 + 28)))
        {
          v29 = *(v9 + 16);
          *(v9 + 16) = *(v9 + 32);
          *(v9 + 32) = v29;
          v30 = *(v9 + 16);
          if (v30 < *v9 || v30 <= *v9 && ((v37 = *(v9 + 20), v38 = *(v9 + 4), v37 < v38) || v37 <= v38 && *(v9 + 28) < *(v9 + 12)))
          {
            v41 = *v9;
            *v9 = *(v9 + 16);
            *(v9 + 16) = v41;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v9, (v9 + 16), v9 + 32, (v9 + 48), &a2[-1]);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 16 * (v12 >> 1));
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>((v9 + 16 * (v12 >> 1)), v9, &a2[-1]);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v9, (v9 + 16 * (v12 >> 1)), &a2[-1]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>((v9 + 16), v14 - 4, &a2[-2]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>((v9 + 32), (v9 + 16 + 16 * v13), &a2[-3]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v14 - 1, v14, (v9 + 16 + 16 * v13));
      v39 = *v9;
      *v9 = *v14;
      *v14 = v39;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v15 = *(v9 - 16);
    if (v15 >= *v9)
    {
      if (v15 > *v9 || (v16 = *(v9 - 12), v17 = *(v9 + 4), v16 >= v17) && (v16 > v17 || *(v9 - 4) >= *(v9 + 12)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &>(v9, a2);
        v9 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v9, v18);
    v9 = (v18 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>((v18 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 1);
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v9, (v9 + 16), &a2[-1]);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(__int128 *a1, int *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 < *a1 || v3 <= *a1 && ((v9 = a2[1], v10 = *(a1 + 1), v9 < v10) || v9 <= v10 && a2[3] < *(a1 + 3)))
  {
    if (*a3 < v3 || *a3 <= v3 && ((v11 = *(a3 + 1), v12 = a2[1], v11 < v12) || v11 <= v12 && *(a3 + 3) < a2[3]))
    {
      v4 = *a1;
      *a1 = *a3;
    }

    else
    {
      v7 = *a1;
      *a1 = *a2;
      *a2 = v7;
      if (*a3 >= *a2)
      {
        if (*a3 > *a2)
        {
          return 1;
        }

        v15 = *(a3 + 1);
        v16 = a2[1];
        if (v15 >= v16 && (v15 > v16 || *(a3 + 3) >= a2[3]))
        {
          return 1;
        }
      }

      v4 = *a2;
      *a2 = *a3;
    }

    *a3 = v4;
    return 1;
  }

  if (*a3 < v3 || *a3 <= v3 && ((v17 = *(a3 + 1), v18 = a2[1], v17 < v18) || v17 <= v18 && *(a3 + 3) < a2[3]))
  {
    v5 = *a2;
    *a2 = *a3;
    *a3 = v5;
    if (*a2 < *a1 || *a2 <= *a1 && ((v13 = a2[1], v14 = *(a1 + 1), v13 < v14) || v13 <= v14 && a2[3] < *(a1 + 3)))
    {
      v6 = *a1;
      *a1 = *a2;
      *a2 = v6;
    }

    return 1;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(uint64_t a1, int *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v14 = *(a4 + 1), v15 = *(a3 + 4), v14 < v15) || v14 <= v15 && *(a4 + 3) < *(a3 + 12)))
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    if (*a3 < *a2 || *a3 <= *a2 && ((v16 = *(a3 + 4), v17 = a2[1], v16 < v17) || v16 <= v17 && *(a3 + 12) < a2[3]))
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      if (*a2 < *a1 || *a2 <= *a1 && ((v28 = a2[1], v29 = *(a1 + 4), v28 < v29) || v28 <= v29 && a2[3] < *(a1 + 12)))
      {
        v13 = *a1;
        *a1 = *a2;
        *a2 = v13;
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && ((v22 = *(a5 + 1), v23 = *(a4 + 1), v22 < v23) || v22 <= v23 && *(a5 + 3) < *(a4 + 3)))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    if (*a4 < *a3 || *a4 <= *a3 && ((v24 = *(a4 + 1), v25 = *(a3 + 4), v24 < v25) || v24 <= v25 && *(a4 + 3) < *(a3 + 12)))
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      if (*a3 < *a2 || *a3 <= *a2 && ((v26 = *(a3 + 4), v27 = a2[1], v26 < v27) || v26 <= v27 && *(a3 + 12) < a2[3]))
      {
        v20 = *a2;
        *a2 = *a3;
        *a3 = v20;
        if (*a2 < *a1 || *a2 <= *a1 && ((v30 = a2[1], v31 = *(a1 + 4), v30 < v31) || v30 <= v31 && a2[3] < *(a1 + 12)))
        {
          v21 = *a1;
          *a1 = *a2;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

_OWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(_OWORD *result, _OWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 1;
  if (result + 1 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 4);
    if (v6 >= *v5)
    {
      if (v6 > *v5)
      {
        goto LABEL_22;
      }

      v7 = *(v5 + 5);
      v14 = *(v5 + 1);
      if (v7 >= v14 && (v7 > v14 || *(v5 + 7) >= *(v5 + 3)))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *(v5 + 5);
    }

    v8 = *(v5 + 6);
    v9 = *(v5 + 7);
    *v4 = *v5;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_21;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        if (v6 > v12)
        {
          goto LABEL_20;
        }

        v13 = *(result + v11 - 12);
        if (v7 >= v13)
        {
          break;
        }
      }

LABEL_13:
      --v5;
      *(result + v11) = *(result + v11 - 16);
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_21;
      }
    }

    if (v7 <= v13)
    {
      v10 = (result + v11);
      if (v9 >= *(result + v11 - 4))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

LABEL_20:
    v10 = v5;
LABEL_21:
    *v10 = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
LABEL_22:
    v2 = v4 + 1;
    v3 += 16;
  }

  while (v4 + 1 != a2);
  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 4 == a2)
      {
        return result;
      }

      v2 = result;
      result += 4;
      v3 = v2[4];
      if (v3 >= *v2)
      {
        if (v3 <= *v2)
        {
          v4 = v2[5];
          v11 = v2[1];
          if (v4 < v11 || v4 <= v11 && v2[7] < v2[3])
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v4 = v2[5];
LABEL_5:
        v5 = v2[6];
        v6 = v2[7];
        do
        {
          do
          {
            v7 = v2;
            *(v2 + 1) = *v2;
            v8 = *(v2 - 4);
            v2 -= 4;
            v9 = v3 <= v8;
          }

          while (v3 < v8);
          if (!v9)
          {
            break;
          }

          v10 = *(v7 - 3);
        }

        while (v4 < v10 || v4 <= v10 && v6 < *(v7 - 1));
        *v7 = v3;
        v7[1] = v4;
        v7[2] = v5;
        v7[3] = v6;
      }
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &>(_DWORD *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a2 - 16);
  if (*a1 < v5 || v2 <= v5 && ((v21 = *(a2 - 12), v3 < v21) || v3 <= v21 && v4 < *(a2 - 4)))
  {
    i = a1;
    while (1)
    {
      v8 = i[4];
      i += 4;
      v7 = v8;
      if (v2 < v8)
      {
        break;
      }

      if (v2 <= v7)
      {
        v9 = i[1];
        if (v3 < v9 || v3 <= v9 && v4 < i[3])
        {
          break;
        }
      }
    }
  }

  else
  {
    for (i = a1 + 4; i < a2; i += 4)
    {
      if (v2 < *i)
      {
        break;
      }

      if (v2 <= *i)
      {
        v20 = i[1];
        if (v3 < v20 || v3 <= v20 && v4 < i[3])
        {
          break;
        }
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; ; a2 -= 16)
    {
      if (v2 >= v5)
      {
        if (v2 > v5)
        {
          break;
        }

        v10 = *(a2 + 4);
        if (v3 >= v10 && (v3 > v10 || v4 >= *(a2 + 12)))
        {
          break;
        }
      }

      v11 = *(a2 - 16);
      v5 = v11;
    }
  }

  v12 = a1[2];
  while (i < a2)
  {
    v22 = *i;
    *i = *a2;
    *a2 = v22;
    while (1)
    {
      v14 = i[4];
      i += 4;
      v13 = v14;
      if (v2 < v14)
      {
        break;
      }

      if (v2 <= v13)
      {
        v15 = i[1];
        if (v3 < v15 || v3 <= v15 && v4 < i[3])
        {
          break;
        }
      }
    }

    do
    {
      do
      {
        v16 = *(a2 - 16);
        a2 -= 16;
        v17 = v2 <= v16;
      }

      while (v2 < v16);
      if (!v17)
      {
        break;
      }

      v18 = *(a2 + 4);
    }

    while (v3 < v18 || v3 <= v18 && v4 < *(a2 + 12));
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 4) = v2;
  *(i - 3) = v3;
  *(i - 2) = v12;
  *(i - 1) = v4;
  return i;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  while (1)
  {
    v7 = a1[v2 + 4];
    if (v7 >= v3)
    {
      if (v7 > v3)
      {
        break;
      }

      v8 = a1[v2 + 5];
      if (v8 >= v4 && (v8 > v4 || a1[v2 + 7] >= v6))
      {
        break;
      }
    }

    v2 += 4;
  }

  v9 = &a1[v2 + 4];
  if (v2 * 4)
  {
    while (1)
    {
      v11 = *(a2 - 16);
      a2 -= 16;
      v10 = v11;
      if (v11 < v3)
      {
        break;
      }

      if (v10 <= v3)
      {
        v12 = *(a2 + 4);
        if (v12 < v4 || v12 <= v4 && *(a2 + 12) < v6)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_25:
    if (v9 < a2)
    {
      do
      {
        v14 = *(a2 - 16);
        a2 -= 16;
        v13 = v14;
        if (v14 < v3)
        {
          break;
        }

        if (v13 > v3)
        {
          goto LABEL_25;
        }

        v15 = *(a2 + 4);
        if (v15 < v4)
        {
          break;
        }

        if (v15 > v4)
        {
          goto LABEL_25;
        }
      }

      while (*(a2 + 12) >= v6 && v9 < a2);
    }
  }

  v17 = v9;
  if (v9 < a2)
  {
    v18 = a2;
    do
    {
      v26 = *v17;
      *v17 = *v18;
      *v18 = v26;
      do
      {
        do
        {
          v19 = v17[4];
          v17 += 4;
          v20 = v19 <= v3;
        }

        while (v19 < v3);
        if (!v20)
        {
          break;
        }

        v21 = v17[1];
      }

      while (v21 < v4 || v21 <= v4 && v17[3] < v6);
      while (1)
      {
        v23 = *(v18 - 16);
        v18 -= 16;
        v22 = v23;
        if (v23 < v3)
        {
          break;
        }

        if (v22 <= v3)
        {
          v24 = *(v18 + 4);
          if (v24 < v4 || v24 <= v4 && *(v18 + 12) < v6)
          {
            break;
          }
        }
      }
    }

    while (v17 < v18);
  }

  if (v17 - 4 != a1)
  {
    *a1 = *(v17 - 1);
  }

  *(v17 - 4) = v3;
  *(v17 - 3) = v4;
  *(v17 - 2) = v5;
  *(v17 - 1) = v6;
  return v17 - 4;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, (a1 + 16), a2 - 1);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, (a1 + 16), (a1 + 32));
        v20 = a2 - 1;
        v21 = *(a2 - 4);
        v22 = *(a1 + 32);
        if (v21 < v22 || v21 <= v22 && ((v31 = *(a2 - 3), v32 = *(a1 + 36), v31 < v32) || v31 <= v32 && *(a2 - 1) < *(a1 + 44)))
        {
          v23 = *(a1 + 32);
          *(a1 + 32) = *v20;
          *v20 = v23;
          v24 = *(a1 + 32);
          v25 = *(a1 + 16);
          if (v24 < v25 || v24 <= v25 && ((v33 = *(a1 + 36), v34 = *(a1 + 20), v33 < v34) || v33 <= v34 && *(a1 + 44) < *(a1 + 28)))
          {
            v26 = *(a1 + 16);
            *(a1 + 16) = *(a1 + 32);
            *(a1 + 32) = v26;
            v27 = *(a1 + 16);
            if (v27 < *a1 || v27 <= *a1 && ((v36 = *(a1 + 20), v37 = *(a1 + 4), v36 < v37) || v36 <= v37 && *(a1 + 28) < *(a1 + 12)))
            {
              v28 = *a1;
              *a1 = *(a1 + 16);
              *(a1 + 16) = v28;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, (a1 + 16), a1 + 32, (a1 + 48), a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 1;
      v6 = *(a2 - 4);
      if (v6 < *a1 || v6 <= *a1 && ((v29 = *(a2 - 3), v30 = *(a1 + 4), v29 < v30) || v29 <= v30 && *(a2 - 1) < *(a1 + 12)))
      {
        v7 = *a1;
        *a1 = *v5;
        *v5 = v7;
      }

      return 1;
    }
  }

  v8 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(a1, (a1 + 16), (a1 + 32));
  v9 = (a1 + 48);
  if ((a1 + 48) != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      if (*v9 >= *v8)
      {
        if (v12 > *v8)
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 1);
        v19 = *(v8 + 1);
        if (v13 >= v19 && (v13 > v19 || *(v9 + 3) >= *(v8 + 3)))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v13 = *(v9 + 1);
      }

      v14 = *(v9 + 2);
      v15 = *(v9 + 3);
      *v9 = *v8;
      v16 = v10;
      do
      {
        v17 = *(a1 + v16 + 16);
        if (v12 >= v17)
        {
          if (v12 > v17)
          {
            goto LABEL_24;
          }

          v18 = *(a1 + v16 + 20);
          if (v13 >= v18)
          {
            if (v13 > v18)
            {
              v8 = (a1 + v16 + 32);
              goto LABEL_24;
            }

            if (v15 >= *(a1 + v16 + 28))
            {
              goto LABEL_24;
            }
          }
        }

        --v8;
        *(a1 + v16 + 32) = *(a1 + v16 + 16);
        v16 -= 16;
      }

      while (v16 != -32);
      v8 = a1;
LABEL_24:
      *v8 = v12;
      *(v8 + 1) = v13;
      *(v8 + 2) = v14;
      *(v8 + 3) = v15;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }

LABEL_27:
      v8 = v9;
      v10 += 16;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(__n128 *a1, __n128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*v12 < a1->n128_u32[0] || *v12 <= a1->n128_u32[0] && ((v14 = *(v12 + 1), v15 = a1->n128_i32[1], v14 < v15) || v14 <= v15 && *(v12 + 3) < a1->n128_u32[3]))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = &a2[-1];
      do
      {
        v20 = *a1;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, a4, v8);
        if (v16 == v17)
        {
          *v17 = v20;
        }

        else
        {
          *v17 = *v16;
          *v16 = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(a1, (v17 + 1), a4, ((v17 + 1) - a1) >> 4);
        }

        --v16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || *v8 <= v10 && ((v23 = v8[1], v24 = v8[5], v23 < v24) || v23 <= v24 && v8[3] < v8[7]))
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (*v8 >= *a4)
      {
        if (*v8 <= v11)
        {
          v22 = v8[1];
          v12 = a4[1];
          if (v22 < v12 || v22 <= v12 && v8[3] < a4[3])
          {
            return result;
          }
        }

        else
        {
          v12 = a4[1];
        }

        v13 = a4[2];
        v14 = a4[3];
        *a4 = *v8;
        while (v5 >= v7)
        {
          v15 = v8;
          v16 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v17 = v16 + 2;
          if (v17 < a3)
          {
            v18 = v8[4];
            if (*v8 < v18 || *v8 <= v18 && ((v20 = v8[1], v21 = v8[5], v20 < v21) || v20 <= v21 && v8[3] < v8[7]))
            {
              v8 += 4;
              v7 = v17;
            }
          }

          if (*v8 < v11 || *v8 <= v11 && ((v19 = v8[1], v19 < v12) || v19 <= v12 && v8[3] < v14))
          {
            v8 = v15;
            break;
          }

          *v15 = *v8;
        }

        *v8 = v11;
        v8[1] = v12;
        v8[2] = v13;
        v8[3] = v14;
      }
    }
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[2].n128_i32[0];
      v9 = v5[1].n128_i32[0];
      if (v9 < v8 || v9 <= v8 && ((v11 = v5[1].n128_i32[1], v12 = v5[2].n128_i32[1], v11 < v12) || v11 <= v12 && v5[1].n128_u32[3] < v5[2].n128_u32[3]))
      {
        a1 = v5 + 2;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *(a2 - 16);
    if (*v6 >= v7)
    {
      if (*v6 > v7)
      {
        return result;
      }

      v14 = v6[1];
      v8 = *(a2 - 12);
      if (v14 >= v8 && (v14 > v8 || v6[3] >= *(a2 - 4)))
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 12);
    }

    v9 = *(a2 - 8);
    v10 = *(a2 - 4);
    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v11 = v6;
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
        if (*v6 >= v7)
        {
          if (*v6 > v7)
          {
            break;
          }

          v13 = v6[1];
          if (v13 >= v8 && (v13 > v8 || v6[3] >= v10))
          {
            break;
          }
        }

        *v11 = *v6;
        if (v12 <= 1)
        {
          goto LABEL_18;
        }
      }

      v6 = v11;
    }

LABEL_18:
    *v6 = v7;
    v6[1] = v8;
    v6[2] = v9;
    v6[3] = v10;
  }

  return result;
}

_OWORD *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Equal &>(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 1;
      if (a1 + 1 == a2)
      {
        break;
      }

      v8 = fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Equal::operator()(a3, a1, (a1 + 1));
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 1;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      for (i = v9 + 2; i != a2; ++i)
      {
        if (!fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Equal::operator()(a3, v9, i))
        {
          v9[1] = *i;
          ++v9;
        }
      }

      return v9 + 1;
    }
  }

  return result;
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void fst::RmFinalEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v2 = 0;
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v1, 0);
}

void sub_1B53364E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  v22 = *(v20 - 128);
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(v20 - 104);
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~EncodeMapper(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80) - 1;
  *(v2 + 80) = v3;
  if (!v3)
  {
    v4 = fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~EncodeTable(v2);
    MEMORY[0x1B8C85350](v4, 0x10A0C40782F6942);
  }

  return a1;
}

void *fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~EncodeTable(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        MEMORY[0x1B8C85350](v5, 0x1000C403E1C8BA9);
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[11];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 4));
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

kaldi::quasar::LmeTrie *kaldi::quasar::LmeTrie::LmeTrie(kaldi::quasar::LmeTrie *this, int a2, int a3, char a4)
{
  *this = a2;
  *(this + 1) = a3 - a2 + 1;
  *(this + 8) = 0u;
  v5 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 68) = a4;
  std::vector<kaldi::quasar::LmeTrie::Arc>::reserve(this + 1, 0x400000uLL);
  std::vector<int>::reserve((this + 32), 0x200000uLL);
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v7 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v5) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LmeTrie::Arc>>(v5, v12);
    }

    v13 = 24 * v9;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    v8 = 24 * v9 + 24;
    v14 = *(this + 1);
    v15 = *(this + 2) - v14;
    v16 = 24 * v9 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = *(this + 1);
    *(this + 1) = v16;
    *(this + 2) = v8;
    *(this + 3) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
    v8 = (v7 + 3);
    v7[2] = 0;
  }

  *(this + 2) = v8;
  v19 = *(this + 5);
  v18 = *(this + 6);
  if (v19 >= v18)
  {
    v21 = *(this + 4);
    v22 = (v19 - v21) >> 2;
    if ((v22 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v23 = v18 - v21;
    v24 = v23 >> 1;
    if (v23 >> 1 <= (v22 + 1))
    {
      v24 = v22 + 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v25 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 32, v25);
    }

    *(4 * v22) = 0;
    v20 = 4 * v22 + 4;
    v26 = *(this + 4);
    v27 = *(this + 5) - v26;
    v28 = (4 * v22 - v27);
    memcpy(v28, v26, v27);
    v29 = *(this + 4);
    *(this + 4) = v28;
    *(this + 5) = v20;
    *(this + 6) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v19 = 0;
    v20 = (v19 + 1);
  }

  *(this + 5) = v20;
  *(this + 14) = kaldi::quasar::LmeTrie::StateNew(this);
  *(this + 15) = kaldi::quasar::LmeTrie::StateNew(this);
  *(this + 16) = 0;
  return this;
}

void sub_1B533698C(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::quasar::LmeTrie::Arc>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::LmeTrie::Arc>>(a1, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

kaldi::quasar::LmeTrie *std::unique_ptr<kaldi::quasar::LmeTrie>::reset[abi:ne200100](kaldi::quasar::LmeTrie **a1, kaldi::quasar::LmeTrie *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::LmeTrie::~LmeTrie(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void kaldi::quasar::LmeTrie::~LmeTrie(kaldi::quasar::LmeTrie *this)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "LmeTrie: arc_count ", 19);
    v3 = MEMORY[0x1B8C84C30](v2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " arc_sizeof ", 12);
    v5 = MEMORY[0x1B8C84C30](v4, 24);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " arc_bytes ", 11);
    v7 = MEMORY[0x1B8C84C30](v6, *(this + 2) - *(this + 1));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " state_count ", 13);
    v9 = MEMORY[0x1B8C84C30](v8, (*(this + 5) - *(this + 4)) >> 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " state_sizeof ", 14);
    v11 = MEMORY[0x1B8C84C30](v10, 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " state_bytes ", 13);
    MEMORY[0x1B8C84C30](v12, *(this + 5) - *(this + 4));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }

  v13 = *(this + 4);
  if (v13)
  {
    *(this + 5) = v13;
    operator delete(v13);
  }

  v14 = *(this + 1);
  if (v14)
  {
    *(this + 2) = v14;
    operator delete(v14);
  }
}

void quasar::SyncSpeechRecognizer::SyncSpeechRecognizer(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D0CF10;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v3;
  }

  *(a1 + 40) = 0;
  quasar::SystemConfig::SystemConfig((a1 + 48));
}

uint64_t quasar::SyncSpeechRecognizer::init(char **this, char a2)
{
  memset(&__p, 0, sizeof(__p));
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  quasar::SystemConfig::readJsonFile((this + 6), this + 1, &__p, v20, 0, 0);
  v5 = v4;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v20);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v5 != 2)
  {
    ModelLoader = quasar::SystemConfig::getModelLoader((this + 6));
    quasar::ModelLoader::enableEmbeddedMlock(ModelLoader, a2);
    quasar::SystemConfig::getSpeechModelInfo((this + 6));
    quasar::SpeechModelInfo::operator=((this + 201), v8);
    std::string::basic_string[abi:ne200100]<0>(&__p, "recognizers");
    quasar::SystemConfig::getPtree((this + 6), &__p);
    v10 = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = quasar::PTree::begin(v10);
    if (v11 != quasar::PTree::end(v10))
    {
      String = quasar::PTree::getString((v11 + 24));
      std::string::basic_string[abi:ne200100]<0>(&p_p, "::");
      quasar::splitAndTrim(&__p, String, &p_p);
      if (v23 < 0)
      {
        operator delete(p_p);
      }

      quasar::SyncSpeechRecognizer::getFrontend(__p.__r_.__value_.__l.__data_, (this + 6), this + 237, v19);
      (*(*this + 9))(&v18, this, __p.__r_.__value_.__r.__words[0] + 24);
      (*(*this + 8))(v17, this, __p.__r_.__value_.__r.__words[0] + 48);
      quasar::SystemConfig::getConfigFileVersion((this + 6));
      v16 = v13;
      quasar::PTree::getString((v11 + 24));
      std::allocate_shared[abi:ne200100]<quasar::RecognizerComponents<quasar::SyncDecoder>,std::allocator<quasar::RecognizerComponents<quasar::SyncDecoder>>,quasar::SystemConfig::Version,std::string const&,std::string const&,std::vector<std::shared_ptr<quasar::FeatureExtractor>> &,std::shared_ptr<quasar::Decodable> &,std::vector<std::shared_ptr<quasar::SyncDecoder>> &,0>();
    }

    if (quasar::RecognizerComponents<quasar::SyncDecoder>::validateFilters(this + 201, this + 246))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "feature-read.");
      quasar::SystemConfig::setPrefix((this + 6), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      kaldi::OnlineFeatureMatrixOptions::Register((this + 249), (this + 6));
      std::string::basic_string[abi:ne200100]<0>(&__p, "feature-read");
      quasar::SystemConfig::readPtree((this + 6), &__p, 0, 0);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Found missing recognizer request handlers.");
    quasar::PTree::Error::Error(exception, &__p);
  }

  return 1;
}

void sub_1B5337310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27)
{
  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
LABEL_8:
      v28 = v27;
      a26 = 0u;
      a27 = 0u;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error reading JSON config file: ", 32);
      v30 = (*(*v28 + 16))(v28);
      v31 = strlen(v30);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v32);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v27 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      goto LABEL_8;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1B5336E44);
}

void sub_1B533763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  JUMPOUT(0x1B5337648);
}

uint64_t *quasar::SyncSpeechRecognizer::getFrontend@<X0>(const void **a1@<X0>, quasar::SystemConfig *a2@<X1>, uint64_t **a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 + 1 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, a1))
  {
    std::operator+<char>();
    quasar::SystemConfig::getPtree(a2, &__p);
    v9 = v8;
    LODWORD(v28) = *v8;
    if (*(v8 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(v8 + 8), *(v8 + 16));
    }

    else
    {
      v10 = *(v8 + 8);
      v29.__r_.__value_.__r.__words[2] = *(v8 + 24);
      *&v29.__r_.__value_.__l.__data_ = v10;
    }

    memset(v30, 0, sizeof(v30));
    std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v30, *(v9 + 32), *(v9 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 40) - *(v9 + 32)) >> 3));
    v31 = *(v9 + 56);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    v23.__r_.__value_.__r.__words[0] = a1;
    v11 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, a1, &std::piecewise_construct, &v23, &v25);
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(v11 + 7);
    *(v11 + 7) = __p;
    memset(&__p, 0, sizeof(__p));
    v24.__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v12 = quasar::PTree::begin(&v28);
    for (i = quasar::PTree::end(&v28); v12 != i; v12 += 88)
    {
      std::operator+<char>();
      v14 = std::string::append(&v23, ".");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      v19 = std::string::append(&v24, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      quasar::FeatureExtractorSimpleFactory::createSyncFeatureExtractorOrNull(&__p, &v25);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (v25)
      {
        quasar::FeatureExtractor::init(v25, a2);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    quasar::PTree::~PTree(&v28);
  }

  v28 = a1;
  v21 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, a1, &std::piecewise_construct, &v28, &__p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return std::vector<std::shared_ptr<quasar::FeatureExtractor>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::FeatureExtractor>*,std::shared_ptr<quasar::FeatureExtractor>*>(a4, v21[7], v21[8], (v21[8] - v21[7]) >> 4);
}

uint64_t quasar::RecognizerComponents<quasar::SyncDecoder>::validateFilters(void *a1, uint64_t *a2)
{
  v4 = 1;
  v37 = 1;
  quasar::RecogRequestFilter::getPowerContextOptions(&v35);
  v5 = a1[6];
  v6 = a1 + 7;
  if (v5 != a1 + 7)
  {
    v7 = (a1 + 10);
    do
    {
      v8 = a1[9];
      if (v8 != v7)
      {
        v9 = *(v5 + 7);
        v29 = v6;
        v30 = a1;
        v28 = v7;
        while (2)
        {
          for (i = 0; i != 2; ++i)
          {
            v11 = v35;
            if (v35 != v36)
            {
              v12 = *(&v37 + i);
              v31 = i;
              while (1)
              {
                v13 = v35;
                if (v35 != v36)
                {
                  break;
                }

LABEL_27:
                v21 = v11[1];
                if (v21)
                {
                  do
                  {
                    v22 = v21;
                    v21 = *v21;
                  }

                  while (v21);
                }

                else
                {
                  do
                  {
                    v22 = v11[2];
                    v18 = *v22 == v11;
                    v11 = v22;
                  }

                  while (!v18);
                }

                v11 = v22;
                i = v31;
                if (v22 == v36)
                {
                  goto LABEL_33;
                }
              }

              while (1)
              {
                v14 = v35;
                if (v35 != v36)
                {
                  break;
                }

LABEL_21:
                v19 = v13[1];
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
                    v20 = v13[2];
                    v18 = *v20 == v13;
                    v13 = v20;
                  }

                  while (!v18);
                }

                v13 = v20;
                if (v20 == v36)
                {
                  goto LABEL_27;
                }
              }

              while (1)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "*");
                quasar::RecognizerComponents<quasar::SyncDecoder>::lookupRecognizerComponents(v9, v8 + 4, &__p, v12, 1, (v11 + 4), (v13 + 4), (v14 + 4), &v33, a2);
                v15 = v33;
                if (v34)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (!v15)
                {
                  break;
                }

                v16 = v14[1];
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
                    v17 = v14[2];
                    v18 = *v17 == v14;
                    v14 = v17;
                  }

                  while (!v18);
                }

                v14 = v17;
                if (v17 == v36)
                {
                  goto LABEL_21;
                }
              }

              v4 = 0;
              goto LABEL_48;
            }

LABEL_33:
            ;
          }

          v23 = v8[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v8[2];
              v18 = *v24 == v8;
              v8 = v24;
            }

            while (!v18);
          }

          v8 = v24;
          v7 = v28;
          v6 = v29;
          a1 = v30;
          if (v24 != v28)
          {
            continue;
          }

          break;
        }
      }

      v25 = v5[1];
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
          v26 = v5[2];
          v18 = *v26 == v5;
          v5 = v26;
        }

        while (!v18);
      }

      v4 = 1;
      v5 = v26;
    }

    while (v26 != v6);
  }

LABEL_48:
  std::__tree<std::string>::destroy(&v35, v36[0]);
  return v4;
}

uint64_t *quasar::SyncSpeechRecognizer::getDecoderChain@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 + 1952 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1944, a2))
  {
    std::operator+<char>();
    quasar::SystemConfig::getPtree(a1 + 48, __p);
    v7 = v6;
    LODWORD(v27) = *v6;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v8 = *(v6 + 8);
      v28.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v28.__r_.__value_.__l.__data_ = v8;
    }

    memset(v29, 0, sizeof(v29));
    std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v29, *(v7 + 32), *(v7 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v7 + 40) - *(v7 + 32)) >> 3));
    v30 = *(v7 + 56);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v26 = 0;
    v21.__r_.__value_.__r.__words[0] = a2;
    v9 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1944), a2, &std::piecewise_construct, &v21, &v23);
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(v9 + 7);
    *(v9 + 7) = *__p;
    v9[9] = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v22.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v22);
    v10 = quasar::PTree::begin(&v27);
    for (i = quasar::PTree::end(&v27); v10 != i; v10 += 88)
    {
      std::operator+<char>();
      v12 = std::string::append(&v21, ".");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = *(v10 + 23);
      if (v14 >= 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = *v10;
      }

      if (v14 >= 0)
      {
        v16 = *(v10 + 23);
      }

      else
      {
        v16 = *(v10 + 8);
      }

      v17 = std::string::append(&v22, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v26 = v17->__r_.__value_.__r.__words[2];
      *__p = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      quasar::SyncDecoder::createDecoder(__p, &v23);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (v23)
      {
        quasar::SyncDecoder::init(v23, (a1 + 48));
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    quasar::PTree::~PTree(&v27);
  }

  v27 = a2;
  v19 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1944), a2, &std::piecewise_construct, &v27, __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return std::vector<std::shared_ptr<quasar::SyncDecoder>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::SyncDecoder>*,std::shared_ptr<quasar::SyncDecoder>*>(a3, v19[7], v19[8], (v19[8] - v19[7]) >> 4);
}