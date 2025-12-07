void sub_1B5160D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HwcnConfidence::initArcFeatExtractors(quasar::HwcnConfidence *this)
{
  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](this + 58);
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 656), __p, v50);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v50[0];
  if (v50[0] != v50[1])
  {
    v49 = 0uLL;
    v3 = *(v50[0] + 23);
    if ((v3 & 0x80) == 0)
    {
      if (*(v50[0] + 23) <= 0xBu)
      {
        if (v3 != 6)
        {
          if (v3 != 7)
          {
            if (v3 != 10)
            {
              goto LABEL_134;
            }

            if (*v50[0] != 0x424D455F44524F57 || *(v50[0] + 4) != 17477)
            {
              if (*v50[0] != 0x4E4F48505F4D554ELL || *(v50[0] + 4) != 21317)
              {
                goto LABEL_17;
              }

LABEL_105:
              operator new();
            }

LABEL_63:
            std::allocate_shared[abi:ne200100]<quasar::WlatArcFeWordEmbedding,std::allocator<quasar::WlatArcFeWordEmbedding>,std::shared_ptr<marisa::Trie> &,std::shared_ptr<kaldi::Matrix<float>> &,0>();
          }

LABEL_99:
          if (*v50[0] != 1130316609 || *(v50[0] + 3) != 1414745923)
          {
            goto LABEL_134;
          }

LABEL_104:
          operator new();
        }

        if (*v50[0] != 1281315657 || *(v50[0] + 2) != 17741)
        {
          if (*v50[0] != 1598377292 || *(v50[0] + 2) != 17481)
          {
            if (*v50[0] != 1398756169 || *(v50[0] + 2) != 19529)
            {
              goto LABEL_134;
            }

LABEL_156:
            operator new();
          }

LABEL_89:
          operator new();
        }

LABEL_88:
        operator new();
      }

      if (v3 != 12)
      {
        if (v3 != 16)
        {
          goto LABEL_75;
        }

        if (*v50[0] != 0x5F54534F435F4341 || v50[0][1] != 0x4445485355504E55)
        {
          goto LABEL_134;
        }

LABEL_87:
        operator new();
      }

      goto LABEL_130;
    }

    if (v50[0][1] == 10 && **v50[0] == 0x424D455F44524F57 && *(*v50[0] + 8) == 17477)
    {
      goto LABEL_63;
    }

    if (v50[0][1] == 6 && **v50[0] == 1281315657 && *(*v50[0] + 4) == 17741)
    {
      goto LABEL_88;
    }

    if (v50[0][1] == 6 && **v50[0] == 1598377292 && *(*v50[0] + 4) == 17481)
    {
      goto LABEL_89;
    }

    if (v50[0][1] == 6)
    {
      if (**v50[0] == 1398756169 && *(*v50[0] + 4) == 19529)
      {
        goto LABEL_156;
      }

      if ((v3 & 0x80) == 0)
      {
        goto LABEL_134;
      }
    }

    if (v50[0][1] != 10)
    {
      goto LABEL_58;
    }

    if (**v50[0] == 0x4E4F48505F4D554ELL && *(*v50[0] + 8) == 21317)
    {
      goto LABEL_105;
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_58:
      if (v50[0][1] == 16)
      {
        if (**v50[0] == 0x5F54534F435F4341 && *(*v50[0] + 8) == 0x4445485355504E55)
        {
          goto LABEL_87;
        }

        if ((v3 & 0x80) == 0)
        {
          if (*(v50[0] + 23) <= 0xBu)
          {
            if (v3 != 7)
            {
              if (v3 != 10)
              {
                goto LABEL_134;
              }

LABEL_17:
              if (*v50[0] != 0x4F435F4850415247 || *(v50[0] + 4) != 21587)
              {
LABEL_21:
                if (*v50[0] != 0x4D4152465F4D554ELL || *(v50[0] + 4) != 21317)
                {
                  goto LABEL_134;
                }

LABEL_128:
                operator new();
              }

LABEL_120:
              operator new();
            }

            goto LABEL_99;
          }

          if (v3 != 12)
          {
            goto LABEL_75;
          }

LABEL_130:
          if (*v50[0] != 0x5F545345425F4E49 || *(v50[0] + 2) != 1213481296)
          {
            goto LABEL_134;
          }

LABEL_142:
          operator new();
        }
      }

      if (v50[0][1] != 12)
      {
        goto LABEL_106;
      }

      if (**v50[0] == 0x5F545345425F4E49 && *(*v50[0] + 8) == 1213481296)
      {
        goto LABEL_142;
      }

      if ((v3 & 0x80) != 0)
      {
LABEL_106:
        if (v50[0][1] == 7)
        {
          if (**v50[0] == 1130316609 && *(*v50[0] + 3) == 1414745923)
          {
            goto LABEL_104;
          }

          if ((v3 & 0x80) == 0)
          {
            goto LABEL_134;
          }
        }

        if (v50[0][1] != 10)
        {
          goto LABEL_125;
        }

        if (**v50[0] == 0x4F435F4850415247 && *(*v50[0] + 8) == 21587)
        {
          goto LABEL_120;
        }

        if ((v3 & 0x80) != 0)
        {
LABEL_125:
          if (v50[0][1] == 10 && **v50[0] == 0x4D4152465F4D554ELL && *(*v50[0] + 8) == 21317)
          {
            goto LABEL_128;
          }

          if (v50[0][1] != 13)
          {
            goto LABEL_134;
          }

          v16 = *v50[0];
          goto LABEL_76;
        }

        if (v3 == 10)
        {
          goto LABEL_21;
        }

LABEL_75:
        v16 = v50[0];
        if (v3 != 13)
        {
          goto LABEL_134;
        }

LABEL_76:
        v17 = *v16;
        v18 = *(v16 + 5);
        if (v17 == 0x54534F505F474F4CLL && v18 == 0x524F49524554534FLL)
        {
          operator new();
        }

LABEL_134:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v50[0], "LIN_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_AC_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_AC_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_COLLAPSED_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_POSTERIOR_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_POSTERIOR_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_UNPUSHED_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_AC_POSTERIOR_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_AC_POSTERIOR_2"))
        {
          operator new();
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
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
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown feature type: ", 22);
        v29 = *(v2 + 23);
        if (v29 >= 0)
        {
          v30 = v2;
        }

        else
        {
          v30 = *v2;
        }

        if (v29 >= 0)
        {
          v31 = *(v2 + 23);
        }

        else
        {
          v31 = v2[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }
    }

    if (v3 == 7)
    {
      goto LABEL_99;
    }

    if (v3 == 10)
    {
      goto LABEL_17;
    }

    goto LABEL_75;
  }

  __p[0] = v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5161B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 - 136);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  __p = (v16 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::HwcnConfidence::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(a2 + 553) = *(a1 + 808);
  *(a2 + 556) = *(a1 + 840);
  *(a2 + 560) = *(a1 + 844);
  quasar::HwcnConfidence::getHwcn(a1, a2, a3, &v66);
  if (!v66)
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_52;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Lattice is null. Doing nothing", 30);
LABEL_51:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v49);
    goto LABEL_52;
  }

  if (*(v66 + 3) == *(v66 + 2))
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_52;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Lattice is empty. Doing nothing", 31);
    goto LABEL_51;
  }

  quasar::WlatArcFeatureExtractor::runArcFeatureExtraction(v66, *(a1 + 984), a1 + 464);
  memset(&v48[1], 0, 24);
  v48[0] = &unk_1F2D3AC18;
  kaldi::quasar::LatticeRnn::Run(*(a1 + 456), v66, v48);
  v7 = v66;
  v8 = *(v66 + 5);
  v9 = *(v66 + 6);
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      v11 = **(*v8 + 432);
      v12 = *(a1 + 968);
      if (v12)
      {
        v11 = quasar::CalibrationMap::map(v12, v11);
      }

      *(v10 + 32) = v11;
      ++v8;
    }

    while (v8 != v9);
    v7 = v66;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  kaldi::WordHypLattice::GetBestMeanConfPath(v7, &v45, &v42, &v41);
  memset(v40, 0, sizeof(v40));
  v13 = v42;
  for (i = v43; v13 != i; v13 += 24)
  {
    v15 = *(v13 + 23);
    if (v15 < 0)
    {
      if (*(v13 + 8) != 3)
      {
        goto LABEL_18;
      }

      v16 = *v13;
    }

    else
    {
      v16 = v13;
      if (v15 != 3)
      {
        goto LABEL_18;
      }
    }

    v17 = *v16;
    v18 = *(v16 + 2);
    if (v17 != 16188 || v18 != 62)
    {
LABEL_18:
      std::string::basic_string[abi:ne200100]<0>(&v49, "~w00");
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      quasar::replaceAll(v13, &v49, __p);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v50) < 0)
      {
        operator delete(v49);
      }

      std::vector<std::string>::push_back[abi:ne200100](v40, v13);
    }
  }

  if (quasar::gLogLevel > 3)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Best conf result sessionId: ", 28);
    v21 = *(*a4 + 24);
    v24 = *(v21 + 128);
    v22 = v21 + 128;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v26, v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " result: ", 9);
    v37[0] = " ";
    v37[1] = 1;
    quasar::join<std::vector<std::string>>(v40, v37);
    if ((v39 & 0x80u) == 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v31 = v39;
    }

    else
    {
      v31 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v49);
  }

  *&v49 = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  *&v49 = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v32 = *a3;
  v34 = v66;
  v33 = v67;
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(v32 + 232);
  *(v32 + 224) = v34;
  *(v32 + 232) = v33;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  kaldi::CuVector<float>::~CuVector(v48);
LABEL_52:
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  return 0;
}

void sub_1B5161FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a32);
  v39 = *(v37 - 88);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void quasar::HwcnConfidence::getHwcn(uint64_t a1@<X0>, const quasar::DecoderPassData *a2@<X1>, uint64_t *a3@<X2>, kaldi::WordHypLattice **a4@<X8>)
{
  v8 = quasar::StopWatch::StopWatch(v21, a2);
  quasar::StopWatch::resume(v8, v9);
  v10 = *a3;
  v11 = *(a2 + 10);
  (*(**(*a2 + 16) + 32))(*(*a2 + 16));
  quasar::DecoderChainOutput::getWordHypLattice(v10, v11, a4);
  v12 = *a4;
  if (*a4 && *(v12 + 2) != *(v12 + 3))
  {
    if (*(a2 + 553) != 1)
    {
      std::allocate_shared[abi:ne200100]<kaldi::WordHypLattice,std::allocator<kaldi::WordHypLattice>,kaldi::WordHypLattice&,0>();
    }

    v13 = a4[1];
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = a4[1];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    quasar::HwcnConfidence::setPiPhoneStr(v14, a2, v12);
    quasar::mergeNodes(v12, *(a1 + 704), 0);
    quasar::setNormWords(v12, v15);
    quasar::mergeArcs(v12, 0);
    v17 = v24;
    if (v22)
    {
      v17 = v17 + kaldi::Timer::GetSeconds(5, v16) - v23;
    }

    if (quasar::gLogLevel >= 5)
    {
      memset(v20, 0, sizeof(v20));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Obtained HWCN in ", 17);
      v19 = MEMORY[0x1B8C84BE0](v18, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " s", 2);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
    }

    *a4 = v12;
    a4[1] = v13;
  }

  *&v20[0] = v21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1B51622A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  a9 = (v10 - 176);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

float quasar::CalibrationMap::map(float **this, float result)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v4 += ~(v4 >> 1);
      if (v9 > result)
      {
        v4 = v6;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v4);
    if (v5 == v3 || v5 != v2 && vabds_f32(result, *(v5 - 2)) < vabds_f32(result, *v5))
    {
      v5 -= 2;
    }

    return v5[1];
  }

  return result;
}

void quasar::HwcnConfidence::registerParams(quasar::HwcnConfidence *this, quasar::SystemConfig *a2)
{
  quasar::HwcnConfidence::registerOtherParams(this, a2);

  quasar::HwcnConfidence::registerModelFiles(this, a2);
}

void quasar::HwcnConfidence::registerOtherParams(quasar::HwcnConfidence *this, quasar::SystemConfig *a2)
{
  kaldi::WordBoundaryInfoNewOpts::Register(this + 936, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma-separated list of arc features. Example: BAG_OF_PHONES,KEYWORD:hey,KEYWORD:Siri,LM_SCORE,AC_SCORE,NUM_FRAMES,LOG_POSTERIOR,LIN_POSTERIOR");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 656, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "sil-phone-csl-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing colon-separated list of silence phones.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 680, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "node-merge-tol-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "Node merging tolerance in ms");
  quasar::SystemConfig::Register<int>(a2, v6, this + 704, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-emb-marisa-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "MARISA trie file for word embedding lookup");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 712, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-emb-mat-flt32-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Kaldi binary matrix file (float32) that stores word embeddings");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 736, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file with format <integer-phone-id> [begin|end|singleton|internal|nonword]");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 760, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "unpronounced-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing newline-separated list of words with no pronunciation.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 784, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-is-primary");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, write these confidence values, along with the HWCN nbest, to the main ASR output (resultChoices) so it can be used by downstream clients instead of the secondary ASR output (resultChoicesV2) that is only used for offline experimentation.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 808, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-criteria");
  std::string::basic_string[abi:ne200100]<0>(__p, "Type of nbest. One of MeanConfPath|TotalCostPath. (Default: MeanConfPath). MeanConfPath: paths with highest mean confidence. TotalCostPath: paths with lowest total cost (the usual ASR objective when confidence isn't present).");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 816, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-preserve-top-result");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, confidence will try not to change the top result. (Default: false).");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 844, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "calibration-map-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Text file with 2 columns of numbers. Lines must be sorted by the first column. Each confidence score will be mapped to the 2nd-column value of the line with the 1st-column value that is closest to the score. All values in the file (both columns) should be in the range 0-1 (not 0-1000). ");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 848, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5162888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HwcnConfidence::registerModelFiles(quasar::HwcnConfidence *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 560, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "forward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 584, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "backward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 608, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "arc-output-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 632, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5162AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HwcnConfidence::setPiPhoneStr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 48);
  if (v3 == v4)
  {
    return;
  }

  do
  {
    v6 = *v3;
    v7 = *(*v3 + 80);
    if (*(*v3 + 88) - v7 == 24)
    {
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        if (*(v7 + 1) == 3)
        {
          v7 = *v7;
LABEL_8:
          v9 = *v7;
          v10 = *(v7 + 2);
          if (v9 == 26995 && v10 == 108)
          {
            MEMORY[0x1B8C84820](v6 + 216, "sil");
            goto LABEL_40;
          }
        }
      }

      else if (v8 == 3)
      {
        goto LABEL_8;
      }
    }

    memset(v26, 0, sizeof(v26));
    v13 = *(v6 + 104);
    v12 = *(v6 + 112);
    if (v13 == v12)
    {
      goto LABEL_39;
    }

    do
    {
      v14 = *v13;
      (*(**(a2 + 168) + 88))(&__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          size = __str.__r_.__value_.__l.__size_;
          p_str = __str.__r_.__value_.__r.__words[0];
          if (!__str.__r_.__value_.__l.__size_)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v24 = __str;
      }

      p_str = &__str;
      if (!size)
      {
        goto LABEL_29;
      }

LABEL_18:
      v17 = p_str + size;
      v18 = p_str;
      v19 = v17;
      do
      {
        v20 = v18;
        v21 = v18;
        while (1)
        {
          v22 = *v21++;
          if (v22 == 95)
          {
            break;
          }

          v20 = v21;
          if (v21 == v17)
          {
            v20 = v19;
            goto LABEL_24;
          }
        }

        v18 = (&v20->__r_.__value_.__l.__data_ + 1);
        v19 = v20;
      }

      while (v21 != v17);
LABEL_24:
      if (v20 != v17 && v20 - p_str != -1)
      {
        std::string::basic_string(&v23, &__str, 0, v20 - p_str, &v27);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        v24 = v23;
      }

LABEL_29:
      if (!kaldi::SilencePhoneSet::isSilencePhone((a2 + 96), v14))
      {
        std::vector<std::string>::push_back[abi:ne200100](v26, &v24);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    while (v13 != v12);
    v6 = *v3;
LABEL_39:
    kaldi::JoinVectorToString(v26, " ", 1, (v6 + 216));
    __str.__r_.__value_.__r.__words[0] = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_40:
    ++v3;
  }

  while (v3 != v4);
}

void sub_1B5162DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  a19 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::StopWatch::resume(quasar::StopWatch *this, clockid_t a2)
{
  if (*(this + 6))
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "StopWatch is already running.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  *(this + 6) = 1;
  v2 = (this + 32);

  kaldi::Timer::Reset(v2, a2);
}

void quasar::HwcnConfidence::~HwcnConfidence(quasar::HwcnConfidence *this)
{
  quasar::HwcnConfidence::~HwcnConfidence(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D00450;
  v2 = *(this + 122);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 116);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 114);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 112);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 110);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 871) < 0)
  {
    operator delete(*(this + 106));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 807) < 0)
  {
    operator delete(*(this + 98));
  }

  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  if (*(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  if (*(this + 735) < 0)
  {
    operator delete(*(this + 89));
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  if (*(this + 583) < 0)
  {
    operator delete(*(this + 70));
  }

  v8 = *(this + 67);
  if (v8)
  {
    *(this + 68) = v8;
    operator delete(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = (this + 464);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](this + 57, 0);
  quasar::Decoder::~Decoder(this);
}

void std::__shared_ptr_emplace<marisa::Trie>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__120__shared_ptr_emplaceIN5kaldi6MatrixIfEENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00578;
  kaldi::Matrix<float>::Matrix((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<kaldi::Matrix<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::CalibrationMap>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::CalibrationMap>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D005C8;
  quasar::CalibrationMap::CalibrationMap((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::CalibrationMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D005C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::CalibrationMap>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void quasar::CalibrationMap::CalibrationMap(uint64_t a1, uint64_t a2)
{
  v51[19] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ifstream::basic_ifstream(v49, a2, 8);
  v4 = v49[0];
  if ((v50[*(v49[0] - 24) + 16] & 5) != 0)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
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
    *&v32[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Failed to open mapping file: ", 29);
    v26 = *(a2 + 23);
    if (v26 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= 0)
    {
      v28 = *(a2 + 23);
    }

    else
    {
      v28 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v32);
  }

  memset(&__p, 0, sizeof(__p));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v49 + *(v4 - 24)));
    v6 = std::locale::use_facet(v32, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v32);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(v32, " ");
    quasar::splitAndTrimNoEmpty(&__p, v32, &v29);
    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0].__locale_);
    }

    if (v29 != v30)
    {
      if (v30 - v29 != 48)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
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
        *&v32[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Calibration file line does not have 2 columns: ", 47);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, size);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v32);
      }

      v9 = std::stof(v29, 0);
      v10 = std::stof(v29 + 1, 0);
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *a1) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - *a1;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v17);
        }

        v18 = 8 * v14;
        *v18 = v9;
        *(v18 + 4) = v10;
        v13 = 8 * v14 + 8;
        v19 = *(a1 + 8) - *a1;
        v20 = 8 * v14 - v19;
        memcpy((v18 - v19), *a1, v19);
        v21 = *a1;
        *a1 = v20;
        *(a1 + 8) = v13;
        *(a1 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v9;
        v12[1] = v10;
        v13 = (v12 + 2);
      }

      *(a1 + 8) = v13;
    }

    v32[0].__locale_ = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
    v4 = v49[0];
  }

  quasar::CalibrationMap::init(a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v49[0] = *MEMORY[0x1E69E54C8];
  *(v49 + *(v49[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v50);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v51);
}

void sub_1B51637D0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5163870);
}

void sub_1B51637E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  JUMPOUT(0x1B5163834);
}

void sub_1B5163804(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5163834);
}

void sub_1B5163830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a52, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2E8]);
  v54 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

uint64_t *quasar::CalibrationMap::init(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this == v2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "Calibration file has no entries");
    goto LABEL_10;
  }

  v3 = (v2 - v1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v1 + 8);
    v5 = v3 - 1;
    while (1)
    {
      v6 = *(v4 - 2);
      if (*v4 < v6 || v6 >= *v4 && v4[1] < *(v4 - 1))
      {
        break;
      }

      v4 += 2;
      if (!--v5)
      {
        return this;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "Calibration is not sorted by first column");
LABEL_10:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
  }

  return this;
}

void *std::__shared_ptr_emplace<quasar::WlatArcFeWordEmbedding>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<marisa::Trie> &,std::shared_ptr<kaldi::Matrix<float>> &,std::allocator<quasar::WlatArcFeWordEmbedding>,0>(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00618;
  quasar::WlatArcFeWordEmbedding::WlatArcFeWordEmbedding(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WlatArcFeWordEmbedding>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeIsLme>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLmeId>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D006B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeIsSil>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeNumPhones>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostUnpushed>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D007A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeInBestPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D007F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCost>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeGraphCost>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeNumFrames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D008E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinAcousticPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D009D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogAcousticPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostCollapsed1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinPosterior1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogPosterior1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCost2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostUnpushed2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinAcousticPosterior2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogAcousticPosterior2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::WordHypLattice>::__shared_ptr_emplace[abi:ne200100]<kaldi::WordHypLattice&,std::allocator<kaldi::WordHypLattice>,0>(void *a1, const kaldi::WordHypLattice *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00CA8;
  kaldi::WordHypLattice::WordHypLattice((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::WordHypLattice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00CA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5164B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B5164E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(result, a2 - v4, a3, a4);
  }
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v3, a3);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1B5AE0060)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1B5AE0050)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1B5AE0060)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1B5AE0050)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1B5AE0060)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t quasar::tennessee::Serialize(uint64_t a1, void *a2)
{
  result = std::ostream::write();
  if (*(a2 + *(*a2 - 24) + 32))
  {
    memset(v4, 0, sizeof(v4));
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(v4);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  return result;
}

const void **quasar::EndpointerRequestFilter::EndpointerRequestFilter(const void **a1, const std::string *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "|");
  quasar::splitAndTrimNoEmpty(a2, __p, &v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v20;
  for (i = v21; v4 != i; ++v4)
  {
    v6 = std::stoi(v4, 0, 10);
    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = v8 - *a1;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
      }

      *(4 * v12) = v6;
      v9 = (4 * v12 + 4);
      memcpy(0, v10, v11);
      v16 = *a1;
      *a1 = 0;
      a1[1] = v9;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = v6;
      v9 = v8 + 4;
    }

    a1[1] = v9;
  }

  __p[0] = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return a1;
}

void sub_1B5165958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HybridEndpointConfig::registerParams(quasar::HybridEndpointConfig *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Endpoint model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 456, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "sequence of features for endpoint model");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 480, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "model is memory mapped");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 504, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "endpoint-threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "Threshold for final endpoint detection");
  quasar::SystemConfig::Register<float>(a2, v6, this, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "trailing-silence-limit");
  std::string::basic_string[abi:ne200100]<0>(__p, "An upper limit for trailing silence duration (milliseconds) after which recognizer should be forced to endpoint");
  quasar::SystemConfig::Register<unsigned int>(a2, v6, this + 4, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "only-use-acoustic-endpointer");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only use acoustic endpointer score when it is enabled");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 452, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "extra-delay-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "delaying the endpointer trigger decision by th given amount of time (in msec), when specified.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 448, __p, 0, 55, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "silence-posterior-nfhat-limit");
  std::string::basic_string[abi:ne200100]<0>(__p, "An upper limit for silence posterior NFHat estimate (milliseconds) after which recognizer should be forced to endpoint");
  quasar::SystemConfig::Register<unsigned int>(a2, v6, this + 8, __p, 0, 66, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "server-features-latency-clamp-begin");
  std::string::basic_string[abi:ne200100]<0>(__p, "Starting point (in milliseconds) for ServerFeaturesLatency Clamp. ServerFeaturesLatency will be clamped at this value for the duration of clamp i.e [serverFeaturesLatencyClampBeginMs, serverFeaturesLatencyClampEndMs]");
  quasar::SystemConfig::Register<unsigned int>(a2, v6, this + 12, __p, 0, 66, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "server-features-latency-clamp-end");
  std::string::basic_string[abi:ne200100]<0>(__p, "Ending point (in milliseconds) for ServerFeaturesLatency Clamp. ServerFeaturesLatency will be allowed to update after this point i.e it will not be clamped anymore");
  quasar::SystemConfig::Register<unsigned int>(a2, v6, this + 16, __p, 0, 66, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5165E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HybridEndpointConfig::init(quasar::HybridEndpointConfig *this)
{
  quasar::EndpointConfigHelper::initModels(this + 57, (this + 24), *(this + 504));
  quasar::EndpointConfigHelper::initFeatures(this + 480, this + 50);
  if (*this < 0.0 || *this > 1.0)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "endpoint-threshold needs to be configured to a value between 0-1");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }
}

void quasar::HybridEndpointConfig::HybridEndpointConfig(uint64_t a1, void *a2)
{
  *a1 = -1082130432;
  *(a1 + 4) = xmmword_1B5AE2E70;
  kaldi::nnet1::Nnet::Nnet((a1 + 24));
}

void sub_1B5165FAC(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  kaldi::nnet1::Nnet::~Nnet((v1 + 3));
  _Unwind_Resume(a1);
}

void quasar::HybridEndpointConfig::~HybridEndpointConfig(void **this)
{
  if (*(this + 503) < 0)
  {
    operator delete(this[60]);
  }

  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  v2 = this[53];
  if (v2)
  {
    this[54] = v2;
    operator delete(v2);
  }

  v3 = this[50];
  if (v3)
  {
    this[51] = v3;
    operator delete(v3);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 3));
}

void quasar::EagerResultAcceptConfig::registerParams(quasar::EagerResultAcceptConfig *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Endpoint model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 400, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "sequence of features for endpoint model");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 424, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "model is memory mapped");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 448, __p, 0, 36, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B51661AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::EagerResultAcceptConfig::~EagerResultAcceptConfig(void **this)
{
  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  if (*(this + 423) < 0)
  {
    operator delete(this[50]);
  }

  v2 = this[47];
  if (v2)
  {
    this[48] = v2;
    operator delete(v2);
  }

  kaldi::nnet1::Nnet::~Nnet(this);
}

void quasar::DefaultServerEndpointFeatsConfig::registerParams(quasar::DefaultServerEndpointFeatsConfig *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, quasar::EP_NUM_OF_WORDS_STR[0]);
  std::string::basic_string[abi:ne200100]<0>(__p, "num-of-words default");
  quasar::SystemConfig::Register<int>(a2, v6, this + 24, __p, 0, 51, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, quasar::EP_NUM_TRAILING_SIL_STR[0]);
  std::string::basic_string[abi:ne200100]<0>(__p, "trailing-silence-duration default");
  quasar::SystemConfig::Register<int>(a2, v6, this + 28, __p, 0, 51, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, quasar::EP_EOS_LIKELIHOOD_STR[0]);
  std::string::basic_string[abi:ne200100]<0>(__p, "eos-likelihood default");
  quasar::SystemConfig::Register<float>(a2, v6, this + 32, __p, 0, 51, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, quasar::EP_SILENCE_POSTERIOR_STR[0]);
  std::string::basic_string[abi:ne200100]<0>(__p, "silence-posterior default");
  quasar::SystemConfig::Register<float>(a2, v6, this + 36, __p, 0, 51, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5166440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HybridEndpointer::HybridEndpointer(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  kaldi::nnet1::Nnet::Nnet((a1 + 4));
}

void sub_1B5166B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  quasar::SystemConfig::~SystemConfig(v25);
  std::mutex::~mutex((v22 + 536));
  std::__tree<std::string>::destroy(v22 + 488, *v24);
  quasar::EagerResultAcceptConfig::~EagerResultAcceptConfig((v22 + 32));
  v25[0] = v22;
  std::vector<quasar::HybridEndpointConfig>::__destroy_vector::operator()[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void sub_1B5166B8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  JUMPOUT(0x1B5166C78);
}

void sub_1B5166BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    JUMPOUT(0x1B5166C00);
  }

  JUMPOUT(0x1B5166C78);
}

void sub_1B5166BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  JUMPOUT(0x1B5166C78);
}

void sub_1B5166C10(_Unwind_Exception *a1)
{
  quasar::SystemConfig::~SystemConfig(v4);
  std::mutex::~mutex((v1 + 536));
  std::__tree<std::string>::destroy(v1 + 488, *v3);
  quasar::EagerResultAcceptConfig::~EagerResultAcceptConfig((v1 + 32));
  v4[0] = v1;
  std::vector<quasar::HybridEndpointConfig>::__destroy_vector::operator()[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_1B5166C20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5166C6CLL);
}

void sub_1B5166C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  quasar::PTree::~PTree(va);
  JUMPOUT(0x1B5166C74);
}

quasar::HybridEndpointConfig **std::vector<quasar::HybridEndpointConfig>::reserve(quasar::HybridEndpointConfig **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 9)
  {
    if (!(a2 >> 55))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5166D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<quasar::HybridEndpointConfig>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::HybridEndpointConfig>::emplace<std::string const&>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      v12[64] = a1;
      quasar::HybridEndpointConfig::HybridEndpointConfig(v12, a3);
    }

    quasar::HybridEndpointConfig::HybridEndpointConfig(a1[1], a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 9) + 1;
  if (!(v6 >> 55))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 8;
    if (v8 >> 8 <= v6)
    {
      v9 = ((v4 - *a1) >> 9) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFE00)
    {
      v10 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 9;
    v12[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>>(a1, v10);
    }

    v12[0] = 0;
    v12[1] = v11 << 9;
    v12[2] = v11 << 9;
    v12[3] = 0;
    std::__split_buffer<quasar::HybridEndpointConfig>::emplace_back<std::string const&>(v12, a3);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void quasar::HybridEndpointer::~HybridEndpointer(quasar::HybridEndpointer *this)
{
  std::mutex::~mutex((this + 536));
  std::__tree<std::string>::destroy(this + 488, *(this + 62));
  quasar::EagerResultAcceptConfig::~EagerResultAcceptConfig(this + 4);
  v2 = this;
  std::vector<quasar::HybridEndpointConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void quasar::HybridEndpointer::updateEndpointThreshold(quasar::HybridEndpointer *this, float a2)
{
  if (a2 > 0.0)
  {
    std::mutex::lock((this + 536));
    *(this + 150) = a2;

    std::mutex::unlock((this + 536));
  }
}

void quasar::HybridEndpointer::updateEndpointDelayedTriggerSwitch(quasar::HybridEndpointer *this, char a2)
{
  std::mutex::lock((this + 536));
  *(this + 604) = a2;

  std::mutex::unlock((this + 536));
}

uint64_t quasar::HybridEndpointer::configureForRequest(quasar::HybridEndpointer *this, uint64_t a2)
{
  std::mutex::lock((this + 536));
  *(this + 3) = 0;
  for (i = *this; i != *(this + 1); i += 512)
  {
    v5 = *(i + 424);
    v6 = *(i + 432);
    if (v5 != v6)
    {
      while (*v5 != a2)
      {
        if (++v5 == v6)
        {
          goto LABEL_8;
        }
      }
    }

    if (v5 != v6)
    {
      *(this + 3) = i;
      *(this + 150) = *i;
      v8 = 1;
      goto LABEL_13;
    }

LABEL_8:
    ;
  }

  if (quasar::gLogLevel >= 2)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "No available endpointer for samplingRate = ", 43);
    MEMORY[0x1B8C84C10](v7, a2);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v10);
  }

  v8 = 0;
LABEL_13:
  std::mutex::unlock((this + 536));
  return v8;
}

BOOL quasar::HybridEndpointer::evalEndPoint(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, char **a7, _DWORD *a8, double a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16)
{
  v18 = a6;
  v20 = a4;
  v21 = a3;
  std::mutex::lock((a1 + 536));
  v33 = *(a1 + 24);
  if (*(v33 + 452) == 1)
  {
    v34 = *(a1 + 600) < a11;
  }

  else
  {
    *a8 = 0;
    if (*(v33 + 16) > a16)
    {
      LODWORD(v32) = *(v33 + 12);
      a16 = fmin(a16, v32);
    }

    if (*(v33 + 4) <= v20 || *(v33 + 8) <= a15)
    {
      *&v57 = v20;
      std::vector<double>::push_back[abi:ne200100](a7, &v57);
      *&v57 = a15;
      std::vector<double>::push_back[abi:ne200100](a7, &v57);
      v34 = 1;
    }

    else
    {
      if (*(a1 + 604) == 1)
      {
        *a8 = *(v33 + 448);
      }

      quasar::EndpointConfigHelper::computeFeats((v33 + 400), v21, v20, a5, v18, &v74, a10, a12, a13, a14, a15, a16);
      v36 = v74;
      v35 = v75;
      if (kaldi::nnet1::Nnet::InputDim((*(a1 + 24) + 24)) != (v35 - v36) >> 3)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "Feature dim=", 12);
        v49 = MEMORY[0x1B8C84C30](v48, (v75 - v74) >> 3);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " does not match model dim=", 26);
        v51 = kaldi::nnet1::Nnet::InputDim((*(a1 + 24) + 24));
        MEMORY[0x1B8C84C00](v50, v51);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v57);
      }

      kaldi::Matrix<float>::Matrix(v56, 1, (v75 - v74) >> 3, 0, 0);
      v37 = v74;
      if (v75 != v74)
      {
        v38 = 0;
        v39 = (v75 - v74) >> 3;
        v40 = v56[0];
        if (v39 <= 1)
        {
          v39 = 1;
        }

        do
        {
          v41 = *&v37[8 * v38];
          *(v40 + 4 * v38++) = v41;
        }

        while (v39 != v38);
      }

      v53 = 0u;
      v54 = 0u;
      v52 = &unk_1F2D0EE38;
      v55 = 0;
      v42 = *(a1 + 24);
      kaldi::CuMatrix<float>::CuMatrix<float>();
      kaldi::nnet1::Nnet::Feedforward((v42 + 24), &v57, &v52, 0xFFFFFFFF, 0);
      kaldi::CuMatrix<float>::~CuMatrix(&v57);
      if (HIDWORD(v53) == 1 || DWORD2(v53) == 1)
      {
        if (quasar::gLogLevel >= 6)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
          kaldi::MatrixBase<float>::Write(v56, &v57, 0, 0);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, ", ep-nnet-value=", 16);
          std::ostream::operator<<();
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v57);
        }

        *a2 = *v53;
      }

      else if (quasar::gLogLevel >= 1)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "Nnet output for endpointing is incorrect", 40);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v57);
      }

      v44 = *(a1 + 528);
      v45 = v44;
      if (v44 > -1.0)
      {
        v45 = v44 + *(*(a1 + 24) + 448);
      }

      if (v45 <= 0.0 || v45 > a9)
      {
        v46 = *a2;
        v47 = *(a1 + 600);
        if (*(a1 + 604))
        {
          v34 = 0;
          if (v44 == -1.0 && v46 >= v47)
          {
            v34 = 0;
            *(a1 + 528) = a9;
          }
        }

        else
        {
          if (&v74 != a7 && v46 >= v47)
          {
            std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a7, v74, v75, (v75 - v74) >> 3);
            v46 = *a2;
            v47 = *(a1 + 600);
          }

          v34 = v46 >= v47;
        }
      }

      else
      {
        if (&v74 != a7)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a7, v74, v75, (v75 - v74) >> 3);
        }

        v34 = 1;
      }

      kaldi::CuMatrix<float>::~CuMatrix(&v52);
      kaldi::Matrix<float>::~Matrix(v56);
      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }
    }
  }

  std::mutex::unlock((a1 + 536));
  return v34;
}

void sub_1B51676BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  JUMPOUT(0x1B51676D0);
}

void sub_1B51676CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  v6 = *(v4 - 168);
  if (v6)
  {
    *(v4 - 160) = v6;
    operator delete(v6);
  }

  std::mutex::unlock((v3 + 536));
  _Unwind_Resume(a1);
}

uint64_t quasar::HybridEndpointer::acceptEagerResult(int **a1, uint64_t a2, uint64_t a3, unsigned int **a4, uint64_t a5, void **a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  if (a1[52] != a1[51])
  {
    quasar::EndpointConfigHelper::computeFeats(a1 + 51, a2, a3, a4, a5, &__p, a7, a8, a9, a10, a11, a12);
    v15 = __p;
    v14 = v33;
    if (kaldi::nnet1::Nnet::InputDim((a1 + 4)) != (v14 - v15) >> 3)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Feature dim=", 12);
      v24 = MEMORY[0x1B8C84C30](v23, (v33 - __p) >> 3);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " does not match model dim=", 26);
      v26 = kaldi::nnet1::Nnet::InputDim((a1 + 4));
      MEMORY[0x1B8C84C00](v25, v26);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v34);
    }

    kaldi::Matrix<float>::Matrix(v31, 1, (v33 - __p) >> 3, 0, 0);
    v16 = __p;
    if (v33 != __p)
    {
      v17 = 0;
      v18 = (v33 - __p) >> 3;
      v19 = v31[0];
      if (v18 <= 1)
      {
        v18 = 1;
      }

      do
      {
        v20 = v16[v17];
        *(v19 + 4 * v17++) = v20;
      }

      while (v18 != v17);
    }

    v29 = 0u;
    v28 = 0u;
    v27 = &unk_1F2D0EE38;
    v30 = 0;
    kaldi::CuMatrix<float>::CuMatrix<float>();
    kaldi::nnet1::Nnet::Feedforward(a1 + 4, &v34, &v27, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::~CuMatrix(&v34);
    if (HIDWORD(v28) == 1 || DWORD2(v28) == 1)
    {
      if (quasar::gLogLevel >= 6)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
        kaldi::MatrixBase<float>::Write(v31, &v34, 0, 0);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", nnet-output=", 14);
        std::ostream::operator<<();
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v34);
      }

      if (*v28 >= 0.99)
      {
        if (&__p != a6)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a6, __p, v33, (v33 - __p) >> 3);
        }

        v21 = 1;
        goto LABEL_21;
      }
    }

    else if (quasar::gLogLevel >= 4)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Nnet output for recognitionResult validation is incorrect", 57);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
    }

    v21 = 0;
LABEL_21:
    kaldi::CuMatrix<float>::~CuMatrix(&v27);
    kaldi::Matrix<float>::~Matrix(v31);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    return v21;
  }

  if (quasar::gLogLevel >= 2)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "EagerResultAccept not configured", 32);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v34);
  }

  return 0;
}

void sub_1B5167AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  JUMPOUT(0x1B5167AFCLL);
}

void sub_1B5167BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5167C60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1B5167D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5167DA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<quasar::HybridEndpointConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::HybridEndpointConfig::~HybridEndpointConfig(v4 - 64);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 55))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>,quasar::HybridEndpointConfig*>(int a1, void **a2, void **a3, quasar::HybridEndpointConfig *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      quasar::HybridEndpointConfig::HybridEndpointConfig(this, v8);
      v8 = (v8 + 512);
      this = (this + 512);
      v7 -= 512;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      quasar::HybridEndpointConfig::~HybridEndpointConfig(v6);
      v6 += 64;
    }
  }
}

void sub_1B5167F10(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 512);
    do
    {
      quasar::HybridEndpointConfig::~HybridEndpointConfig(v4);
      v4 = (v5 - 512);
      v2 += 512;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

quasar::HybridEndpointConfig *quasar::HybridEndpointConfig::HybridEndpointConfig(quasar::HybridEndpointConfig *this, const quasar::HybridEndpointConfig *a2)
{
  v4 = *a2;
  *(this + 4) = *(a2 + 4);
  *this = v4;
  kaldi::nnet1::Nnet::Nnet((this + 24), (a2 + 24));
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  std::vector<quasar::EndpointConfigHelper::EndPointFeatType>::__init_with_size[abi:ne200100]<quasar::EndpointConfigHelper::EndPointFeatType*,quasar::EndpointConfigHelper::EndPointFeatType*>(this + 50, *(a2 + 50), *(a2 + 51), (*(a2 + 51) - *(a2 + 50)) >> 2);
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 53, *(a2 + 53), *(a2 + 54), (*(a2 + 54) - *(a2 + 53)) >> 2);
  v5 = *(a2 + 112);
  *(this + 452) = *(a2 + 452);
  *(this + 112) = v5;
  if (*(a2 + 479) < 0)
  {
    std::string::__init_copy_ctor_external(this + 19, *(a2 + 57), *(a2 + 58));
  }

  else
  {
    v6 = *(a2 + 456);
    *(this + 59) = *(a2 + 59);
    *(this + 456) = v6;
  }

  if (*(a2 + 503) < 0)
  {
    std::string::__init_copy_ctor_external(this + 20, *(a2 + 60), *(a2 + 61));
  }

  else
  {
    v7 = *(a2 + 30);
    *(this + 62) = *(a2 + 62);
    *(this + 30) = v7;
  }

  *(this + 504) = *(a2 + 504);
  return this;
}

void sub_1B5168024(_Unwind_Exception *a1)
{
  if (*(v1 + 479) < 0)
  {
    operator delete(*v2);
  }

  v4 = *(v1 + 424);
  if (v4)
  {
    *(v1 + 432) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 400);
  if (v5)
  {
    *(v1 + 408) = v5;
    operator delete(v5);
  }

  kaldi::nnet1::Nnet::~Nnet((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::EndpointConfigHelper::EndPointFeatType>::__init_with_size[abi:ne200100]<quasar::EndpointConfigHelper::EndPointFeatType*,quasar::EndpointConfigHelper::EndPointFeatType*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51680E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B516815C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::HybridEndpointConfig>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 512;
    quasar::HybridEndpointConfig::~HybridEndpointConfig((i - 512));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<quasar::HybridEndpointConfig>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      quasar::HybridEndpointConfig::HybridEndpointConfig(v8, v10);
      v10 = (v10 + 512);
      v8 = (v8 + 512);
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *>(&v12, a2, v7, v6);
}

void std::__split_buffer<quasar::HybridEndpointConfig>::emplace_back<std::string const&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 8;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>>(v9, v8);
    }

    v6 = (((v5 - *a1) >> 9) + 1 + ((((v5 - *a1) >> 9) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *>(v10, v5, v4, &v5[-32 * v6]);
    v4 = v7;
    a1[1] -= v6 << 9;
    a1[2] = v7;
  }

  quasar::HybridEndpointConfig::HybridEndpointConfig(v4, a2);
}

void sub_1B51683A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<quasar::HybridEndpointConfig>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::HybridEndpointConfig>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>,quasar::HybridEndpointConfig*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::HybridEndpointConfig>,quasar::HybridEndpointConfig*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = a3 + v7;
      v10 = *(a3 + v7 - 512);
      v11 = a4 + v7 - 512;
      *(v11 + 16) = *(a3 + v7 - 496);
      *v11 = v10;
      kaldi::nnet1::Nnet::operator=((a4 + v7 - 488), (a3 + v7 - 488));
      if (a3 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v8 - 112), *(v9 - 112), *(v9 - 104), (*(v9 - 104) - *(v9 - 112)) >> 2);
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v8 - 88), *(v9 - 88), *(v9 - 80), (*(v9 - 80) - *(v9 - 88)) >> 2);
      }

      v12 = *(v9 - 64);
      *(v8 - 60) = *(v9 - 60);
      *(v8 - 64) = v12;
      std::string::operator=((v8 - 56), (v9 - 56));
      std::string::operator=((v8 - 32), (v9 - 32));
      *(v8 - 8) = *(v9 - 8);
      v7 -= 512;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *,quasar::HybridEndpointConfig *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    *(a4 + 16) = *(v5 + 4);
    *a4 = v7;
    kaldi::nnet1::Nnet::operator=((a4 + 24), (v5 + 24));
    if (a4 != v5)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 400), *(v5 + 50), *(v5 + 51), (*(v5 + 51) - *(v5 + 50)) >> 2);
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 424), *(v5 + 53), *(v5 + 54), (*(v5 + 54) - *(v5 + 53)) >> 2);
    }

    v8 = *(v5 + 112);
    *(a4 + 452) = *(v5 + 452);
    *(a4 + 448) = v8;
    std::string::operator=((a4 + 456), v5 + 19);
    std::string::operator=((a4 + 480), v5 + 20);
    *(a4 + 504) = *(v5 + 504);
    a4 += 512;
    v5 += 32;
  }

  while (v5 != v6);
  return v6;
}

uint64_t **std::map<std::string,float>::map[abi:ne200100](uint64_t **a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t **std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
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

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string const,float> const&>();
  }

  return result;
}

void sub_1B516883C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

      std::vector<long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
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

void sub_1B5168A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v11);
  v13 = *(v10 + 202);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v10 + 200);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 198);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v10 + 196);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  quasar::SystemConfig::~SystemConfig(v10);
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizerConfig::SpeechRecognizerConfig(quasar::SpeechRecognizerConfig *this, const quasar::SystemConfig *a2, const quasar::DecoderOptions *a3)
{
  v4 = quasar::SystemConfig::SystemConfig(this, a2, 1, 1);
  *(v4 + 812) = 0;
  *(v4 + 1592) = 0u;
  *(v4 + 1608) = 0u;
  *(v4 + 1560) = 0u;
  *(v4 + 1576) = 0u;
  *(v4 + 407) = 27;
  *(v4 + 1632) = 0;
  quasar::SpeechRecognizerConfig::Initialize(v4, a3);
}

void sub_1B5168B60(_Unwind_Exception *a1)
{
  v3 = *(v1 + 202);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::SpeechRecognizerConfig::SpeechRecognizerConfig(v1);
  quasar::SystemConfig::~SystemConfig(v1);
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizerConfig::~SpeechRecognizerConfig(quasar::SpeechRecognizerConfig *this)
{
  v2 = *(this + 202);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 198);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 196);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  quasar::SystemConfig::~SystemConfig(this);
}

void quasar::MiscSharedConfig::registerParams(quasar::MiscSharedConfig *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "voice-trigger-phrase");
  std::string::basic_string[abi:ne200100]<0>(__p, "VoiceTrigger phrase as space separated list of tokens as recognized by the decoder");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 56, __p, 0, 172, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "voice-trigger-phrases");
  std::string::basic_string[abi:ne200100]<0>(__p, "VoiceTrigger phrases as comma/space separated list of tokens as recognized by the decoder");
  quasar::SystemConfig::Register<std::string>(a2, v6, this, __p, 0, 172, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lead-buffer-leeway");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of samples the primary buffer is allowed to fall behind secondary buffers");
  quasar::SystemConfig::Register<unsigned int>(a2, v6, this + 48, __p, 0, 237, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "mil-is-ane-ready-on-low-end-device-v2");
  std::string::basic_string[abi:ne200100]<0>(__p, "(default false) set this field to true if MIL in the datapack has all the lowend support");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 52, __p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5168DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MiscSharedConfig::init(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_9;
  }

  v3 = this[3].__r_.__value_.__s.__data_[7];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = this[2].__r_.__value_.__r.__words[2];
  }

  if (v3)
  {
    std::string::operator=(this, (this + 56));
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
  }

LABEL_9:
  if ((v2 & 0x80) != 0)
  {
    if (!this->__r_.__value_.__l.__size_)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  quasar::toLower(this, __p);
  std::string::basic_string[abi:ne200100]<0>(v32, ",");
  quasar::splitAndTrimNoEmpty(__p, v32, v34);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v34[0];
  if (v34[0] != v34[1])
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v16 = 0u;
      v17 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "trigger phrase: ", 16);
      v7 = *(v5 + 23);
      if (v7 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = *(v5 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    quasar::splitStringToTokens(v5, __p);
  }

  data = this[1].__r_.__value_.__l.__data_;
  size = this[1].__r_.__value_.__l.__size_;
  v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((size - data) >> 3));
  if (size == data)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,false>(data, size, v32, v13, 1, v4);
  if (quasar::gLogLevel >= 5)
  {
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
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "num of trigger phrases: ", 24);
    MEMORY[0x1B8C84C30](v14, 0xAAAAAAAAAAAAAAABLL * ((this[1].__r_.__value_.__l.__size_ - this[1].__r_.__value_.__r.__words[0]) >> 3));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  __p[0] = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5169080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v14 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::EndPointModelConfig::registerParams(quasar::EndPointModelConfig *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Endpointing model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this, __p, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "List of features");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v6, this + 24, __p, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "voice-trigger-phrase");
  std::string::basic_string[abi:ne200100]<0>(__p, "VoiceTrigger phrase as space separated list of tokens as recognized by the decoder");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 88, __p, 0, 93, 0, 171, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B516926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::EndPointModelConfig::init(quasar::EndPointModelConfig *this, const std::string *a2)
{
  v11.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, ",");
    quasar::splitAndTrimNoEmpty(a2, v7, &__str);
    std::vector<std::string>::__vdeallocate((this + 64));
    *(this + 64) = __str;
    p_str = &__str;
    memset(&__str, 0, sizeof(__str));
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_str);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    v5 = *v7;
    goto LABEL_13;
  }

  if (*(this + 111) < 0)
  {
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_14;
    }

    std::string::__init_copy_ctor_external(&__str, *(this + 11), v6);
  }

  else
  {
    if (!*(this + 111))
    {
      goto LABEL_14;
    }

    __str = *(this + 88);
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((this + 64), &__str, &v11, 1uLL);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = __str.__r_.__value_.__r.__words[0];
LABEL_13:
    operator delete(v5);
  }

LABEL_14:
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return;
    }

LABEL_18:
    _ZNSt3__115allocate_sharedB8ne200100IN5kaldi5nnet14NnetENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (*(this + 23))
  {
    goto LABEL_18;
  }
}

void quasar::SystemConfig::Version::str(std::string *__return_ptr a1@<X8>, quasar::SystemConfig::Version *this@<X0>)
{
  std::to_string(&v10, *this);
  v4 = std::string::append(&v10, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(this + 1));
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

  v8 = std::string::append(&v11, p_p, size);
  *a1 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B5169548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
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

void quasar::PTree::Error::~Error(std::exception *this)
{
  this->__vftable = &unk_1F2D0D128;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2D0D128;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::SpeechRecognizerConfig::UnsupportedVersionError::~UnsupportedVersionError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

void std::__introsort<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,false>(uint64_t *result, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v131 = a2 - 8;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v118 = *(a2 - 3);
        v119 = *v10;
        if (*(a2 - 2) - v118 > (v10[1] - *v10))
        {
          *v10 = v118;
          *(a2 - 3) = v119;
          v120 = v10[1];
          v10[1] = *(a2 - 2);
          *(a2 - 2) = v120;
          v121 = v10[2];
          v10[2] = *(a2 - 1);
          *(a2 - 1) = v121;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      v108 = v10[3];
      v109 = v10[4];
      v110 = v109 - v108;
      v111 = *v10;
      v112 = v10[1];
      v113 = v112 - *v10;
      v114 = *(a2 - 3);
      v115 = *(a2 - 2) - v114;
      if (v109 - v108 <= v113)
      {
        if (v115 <= v110)
        {
          return;
        }

        v10[3] = v114;
        *(a2 - 3) = v108;
        v122 = v10[4];
        v10[4] = *(a2 - 2);
        *(a2 - 2) = v122;
        v123 = v10[5];
        v131 = (v10 + 5);
        v10[5] = *(a2 - 1);
        *(a2 - 1) = v123;
        v125 = v10[3];
        v124 = v10[4];
        v127 = *v10;
        v126 = v10[1];
        if (v124 - v125 <= (v126 - *v10))
        {
          return;
        }

        *v10 = v125;
        v10[1] = v124;
        v116 = (v10 + 2);
        v10[3] = v127;
        v10[4] = v126;
      }

      else
      {
        if (v115 <= v110)
        {
          *v10 = v108;
          v10[1] = v109;
          v10[3] = v111;
          v10[4] = v112;
          v116 = (v10 + 5);
          v128 = v10[2];
          v10[2] = v10[5];
          v10[5] = v128;
          v129 = *(a2 - 3);
          if (*(a2 - 2) - v129 <= v113)
          {
            return;
          }

          v10[3] = v129;
          *(a2 - 3) = v111;
          v117 = v10[4];
          v10[4] = *(a2 - 2);
        }

        else
        {
          v116 = (v10 + 2);
          *v10 = v114;
          *(a2 - 3) = v111;
          v117 = v10[1];
          v10[1] = *(a2 - 2);
        }

        *(a2 - 2) = v117;
      }

      v130 = *v116;
      *v116 = *v131;
      *v131 = v130;
      return;
    }

    if (v14 == 4)
    {
      break;
    }

    if (v14 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3);
      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v10, a2, a2, a3, a6);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    v17 = *(a2 - 3);
    v18 = *(a2 - 2) - v17;
    if (v13 >= 0xC01)
    {
      v19 = *v16;
      v20 = v16[1];
      v21 = v20 - *v16;
      v22 = *v10;
      v23 = v10[1];
      v24 = v23 - *v10;
      if (v21 <= v24)
      {
        if (v18 > v21)
        {
          *v16 = v17;
          *(a2 - 3) = v19;
          v35 = v16[1];
          v16[1] = *(a2 - 2);
          *(a2 - 2) = v35;
          v36 = (v16 + 2);
          v37 = v16[2];
          v16[2] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = v16[1];
          v40 = *v10;
          v39 = v10[1];
          if (v38 - *v16 > (v39 - *v10))
          {
            *v10 = *v16;
            v10[1] = v38;
            v25 = (v10 + 2);
            *v16 = v40;
            v16[1] = v39;
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (v18 > v21)
        {
          v25 = (v10 + 2);
          *v10 = v17;
          *(a2 - 3) = v22;
          v26 = v10[1];
          v10[1] = *(a2 - 2);
          goto LABEL_27;
        }

        *v10 = v19;
        v10[1] = v20;
        *v16 = v22;
        v16[1] = v23;
        v25 = v16 + 2;
        v47 = v10[2];
        v10[2] = v16[2];
        v16[2] = v47;
        v48 = *(a2 - 3);
        if (*(a2 - 2) - v48 > v24)
        {
          *v16 = v48;
          *(a2 - 3) = v22;
          v26 = v16[1];
          v16[1] = *(a2 - 2);
LABEL_27:
          *(a2 - 2) = v26;
          v36 = a2 - 8;
LABEL_28:
          v49 = *v25;
          *v25 = *v36;
          *v36 = v49;
        }
      }

      v50 = &v10[3 * v15];
      v52 = *(v50 - 3);
      v53 = *(v50 - 2);
      v51 = v50 - 3;
      v54 = v53 - v52;
      v55 = v10[3];
      v56 = *(a2 - 6);
      v57 = *(a2 - 5) - v56;
      if (v54 <= v10[4] - v55)
      {
        if (v57 > v54)
        {
          *v51 = v56;
          *(a2 - 6) = v52;
          v60 = v51[1];
          v51[1] = *(a2 - 5);
          *(a2 - 5) = v60;
          v62 = (v51 + 2);
          v61 = v51[2];
          v51[2] = *(a2 - 4);
          *(a2 - 4) = v61;
          v63 = v10[3];
          if ((v51[1] - *v51) > v10[4] - v63)
          {
            v10[3] = *v51;
            *v51 = v63;
            v64 = v10[4];
            v10[4] = v51[1];
            v51[1] = v64;
            v58 = (v10 + 5);
            goto LABEL_41;
          }
        }
      }

      else
      {
        if (v57 > v54)
        {
          v58 = (v10 + 5);
          v10[3] = v56;
          *(a2 - 6) = v55;
          v59 = v10[4];
          v10[4] = *(a2 - 5);
          goto LABEL_40;
        }

        v10[3] = v52;
        *v51 = v55;
        v68 = v10[4];
        v10[4] = v51[1];
        v51[1] = v68;
        v58 = v51 + 2;
        v69 = v10[5];
        v10[5] = v51[2];
        v51[2] = v69;
        v70 = *(a2 - 6);
        v71 = *v51;
        if (*(a2 - 5) - v70 > (v51[1] - *v51))
        {
          *v51 = v70;
          *(a2 - 6) = v71;
          v59 = v51[1];
          v51[1] = *(a2 - 5);
LABEL_40:
          *(a2 - 5) = v59;
          v62 = a2 - 32;
LABEL_41:
          v72 = *v58;
          *v58 = *v62;
          *v62 = v72;
        }
      }

      v73 = &v10[3 * v15];
      v75 = v73[3];
      v76 = v73[4];
      v74 = v73 + 3;
      v77 = v76 - v75;
      v78 = v10[6];
      v79 = *(a2 - 9);
      v80 = *(a2 - 8) - v79;
      if ((v76 - v75) <= v10[7] - v78)
      {
        if (v80 > v77)
        {
          *v74 = v79;
          *(a2 - 9) = v75;
          v83 = v74[1];
          v74[1] = *(a2 - 8);
          *(a2 - 8) = v83;
          v85 = (v74 + 2);
          v84 = v74[2];
          v74[2] = *(a2 - 7);
          *(a2 - 7) = v84;
          v75 = *v74;
          v76 = v74[1];
          v77 = v76 - *v74;
          v86 = v10[6];
          if (v77 > v10[7] - v86)
          {
            v10[6] = v75;
            *v74 = v86;
            v87 = v10[7];
            v10[7] = v74[1];
            v74[1] = v87;
            v81 = (v10 + 8);
            goto LABEL_51;
          }
        }
      }

      else
      {
        if (v80 > v77)
        {
          v81 = (v10 + 8);
          v10[6] = v79;
          *(a2 - 9) = v78;
          v82 = v10[7];
          v10[7] = *(a2 - 8);
          goto LABEL_50;
        }

        v10[6] = v75;
        *v74 = v78;
        v88 = v10[7];
        v10[7] = v74[1];
        v74[1] = v88;
        v81 = v74 + 2;
        v89 = v10[8];
        v10[8] = v74[2];
        v74[2] = v89;
        v90 = *(a2 - 9);
        v75 = *v74;
        v76 = v74[1];
        v77 = v76 - *v74;
        if (*(a2 - 8) - v90 > v77)
        {
          *v74 = v90;
          *(a2 - 9) = v75;
          v82 = v74[1];
          v74[1] = *(a2 - 8);
LABEL_50:
          *(a2 - 8) = v82;
          v85 = a2 - 56;
LABEL_51:
          v91 = *v81;
          *v81 = *v85;
          *v85 = v91;
          v75 = *v74;
          v76 = v74[1];
          v77 = v76 - *v74;
        }
      }

      v93 = *v16;
      v92 = v16[1];
      v94 = v92 - *v16;
      v96 = *v51;
      v95 = v51[1];
      v97 = v95 - *v51;
      if (v94 <= v97)
      {
        if (v77 > v94)
        {
          *v16 = v75;
          v16[1] = v76;
          *v74 = v93;
          v74[1] = v92;
          v100 = v16 + 2;
          v99 = v16[2];
          v16[2] = v74[2];
          v74[2] = v99;
          if (v77 > v97)
          {
            *v51 = v75;
            v51[1] = v76;
            v98 = v51 + 2;
            *v16 = v96;
            v16[1] = v95;
            goto LABEL_61;
          }

          v92 = v76;
          v93 = v75;
        }
      }

      else
      {
        if (v77 > v94)
        {
          v98 = v51 + 2;
          *v51 = v75;
          v51[1] = v76;
          goto LABEL_60;
        }

        *v51 = v93;
        v51[1] = v92;
        *v16 = v96;
        v16[1] = v95;
        v98 = v16 + 2;
        v101 = v51[2];
        v51[2] = v16[2];
        v16[2] = v101;
        if (v77 <= v97)
        {
          v92 = v95;
          v93 = v96;
        }

        else
        {
          *v16 = v75;
          v16[1] = v76;
LABEL_60:
          v100 = v74 + 2;
          *v74 = v96;
          v74[1] = v95;
LABEL_61:
          v102 = *v98;
          *v98 = *v100;
          *v100 = v102;
          v93 = *v16;
          v92 = v16[1];
        }
      }

      v103 = *v10;
      *v10 = v93;
      v10[1] = v92;
      *v16 = v103;
      v46 = (v16 + 2);
      v33 = (v10 + 2);
LABEL_63:
      v104 = *v33;
      *v33 = *v46;
      *v46 = v104;
      goto LABEL_64;
    }

    v27 = *v10;
    v28 = v10[1];
    v29 = v28 - *v10;
    v30 = *v16;
    v31 = v16[1];
    v32 = v31 - *v16;
    if (v29 <= v32)
    {
      if (v18 > v29)
      {
        *v10 = v17;
        *(a2 - 3) = v27;
        v41 = v10[1];
        v10[1] = *(a2 - 2);
        *(a2 - 2) = v41;
        v42 = v10[2];
        v10[2] = *(a2 - 1);
        *(a2 - 1) = v42;
        v43 = v10[1];
        v45 = *v16;
        v44 = v16[1];
        if (v43 - *v10 > (v44 - *v16))
        {
          *v16 = *v10;
          v16[1] = v43;
          v33 = v16 + 2;
          v46 = (v10 + 2);
          *v10 = v45;
          v10[1] = v44;
          goto LABEL_63;
        }
      }
    }

    else
    {
      if (v18 > v29)
      {
        v33 = v16 + 2;
        *v16 = v17;
        *(a2 - 3) = v30;
        v34 = v16[1];
        v16[1] = *(a2 - 2);
        *(a2 - 2) = v34;
LABEL_37:
        v46 = a2 - 8;
        goto LABEL_63;
      }

      *v16 = v27;
      v16[1] = v28;
      *v10 = v30;
      v10[1] = v31;
      v33 = (v10 + 2);
      v65 = v16[2];
      v16[2] = v10[2];
      v10[2] = v65;
      v66 = *(a2 - 3);
      if (*(a2 - 2) - v66 > v32)
      {
        *v10 = v66;
        *(a2 - 3) = v30;
        v67 = v10[1];
        v10[1] = *(a2 - 2);
        *(a2 - 2) = v67;
        goto LABEL_37;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && *(v10 - 2) - *(v10 - 3) <= (v10[1] - *v10))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<quasar::Token> *,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token>&,std::vector<quasar::Token>&)#1} &>(v10, a2);
      goto LABEL_74;
    }

    v105 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<quasar::Token> *,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token>&,std::vector<quasar::Token>&)#1} &>(v10, a2);
    if ((v106 & 1) == 0)
    {
      goto LABEL_72;
    }

    v107 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(v10, v105);
    v10 = (v105 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(v105 + 3, a2))
    {
      a4 = -v12;
      a2 = v105;
      if (v107)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v107)
    {
LABEL_72:
      std::__introsort<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,false>(result, v105, a3, -v12, a5 & 1);
      v10 = (v105 + 3);
LABEL_74:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(v10, v10 + 3, v10 + 6, a2 - 3);
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  v6 = *result;
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (v5 <= result[1] - *result)
  {
    if (v8 > v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2[1];
      a2[1] = a3[1];
      a3[1] = v11;
      v13 = a2 + 2;
      v12 = a2[2];
      a2[2] = a3[2];
      a3[2] = v12;
      v14 = *result;
      if (a2[1] - *a2 > (result[1] - *result))
      {
        *result = *a2;
        *a2 = v14;
        v15 = result[1];
        result[1] = a2[1];
        a2[1] = v15;
        v9 = result + 2;
LABEL_10:
        v19 = *v9;
        *v9 = *v13;
        *v13 = v19;
      }
    }
  }

  else
  {
    if (v8 > v5)
    {
      v9 = result + 2;
      *result = v7;
      *a3 = v6;
      v10 = result[1];
      result[1] = a3[1];
LABEL_9:
      a3[1] = v10;
      v13 = a3 + 2;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v16 = result[1];
    result[1] = a2[1];
    a2[1] = v16;
    v9 = a2 + 2;
    v17 = result[2];
    result[2] = a2[2];
    a2[2] = v17;
    v18 = *a2;
    if (a3[1] - *a3 > (a2[1] - *a2))
    {
      *a2 = *a3;
      *a3 = v18;
      v10 = a2[1];
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

  v20 = *a3;
  if (a4[1] - *a4 > (a3[1] - *a3))
  {
    *a3 = *a4;
    *a4 = v20;
    v21 = a3[1];
    a3[1] = a4[1];
    a4[1] = v21;
    v22 = a3[2];
    a3[2] = a4[2];
    a4[2] = v22;
    v23 = *a2;
    if (a3[1] - *a3 > (a2[1] - *a2))
    {
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      v25 = a2[2];
      a2[2] = a3[2];
      a3[2] = v25;
      v26 = *result;
      if (a2[1] - *a2 > (result[1] - *result))
      {
        *result = *a2;
        *a2 = v26;
        v27 = result[1];
        result[1] = a2[1];
        a2[1] = v27;
        v28 = result[2];
        result[2] = a2[2];
        a2[2] = v28;
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(a1, a2, a3, a4);
  v11 = *a4;
  if (a5[1] - *a5 > (a4[1] - *a4))
  {
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    a4[1] = a5[1];
    a5[1] = v12;
    v13 = a4[2];
    a4[2] = a5[2];
    a5[2] = v13;
    v14 = *a3;
    if (a4[1] - *a4 > (a3[1] - *a3))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = a3[1];
      a3[1] = a4[1];
      a4[1] = v15;
      v16 = a3[2];
      a3[2] = a4[2];
      a4[2] = v16;
      v17 = *a2;
      if (a3[1] - *a3 > (a2[1] - *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = a2[1];
        a2[1] = a3[1];
        a3[1] = v18;
        v19 = a2[2];
        a2[2] = a3[2];
        a3[2] = v19;
        v20 = *a1;
        if (a2[1] - *a2 > (a1[1] - *a1))
        {
          *a1 = *a2;
          *a2 = v20;
          v21 = a1[1];
          a1[1] = a2[1];
          a2[1] = v21;
          v22 = a1[2];
          a1[2] = a2[2];
          a2[2] = v22;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v16[9] = v2;
    v16[10] = v3;
    v6 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        v10 = v8[4];
        if ((v10 - v8[3]) > v8[1] - *v8)
        {
          *&v14 = v8[3];
          *(&v14 + 1) = v10;
          v15 = v8[5];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v11 = v7;
          while (1)
          {
            v12 = a1 + v11;
            std::vector<quasar::Token>::__vdeallocate((a1 + v11 + 24));
            *(v12 + 24) = *v12;
            *(v12 + 5) = *(v12 + 2);
            *(v12 + 1) = 0;
            *(v12 + 2) = 0;
            *v12 = 0;
            if (!v11)
            {
              break;
            }

            v11 -= 24;
            if (*(&v14 + 1) - v14 <= *(v12 - 2) - *(v12 - 3))
            {
              v13 = (a1 + v11 + 24);
              goto LABEL_10;
            }
          }

          v13 = a1;
LABEL_10:
          std::vector<quasar::Token>::__vdeallocate(v13);
          *v13 = v14;
          v13[2] = v15;
          v15 = 0;
          v14 = 0uLL;
          v16[0] = &v14;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v16);
        }

        v6 = v9 + 3;
        v7 += 24;
        v8 = v9;
      }

      while (v9 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v13[7] = v2;
    v13[8] = v3;
    v5 = a1;
    v6 = a1 + 3;
    if (a1 + 3 != a2)
    {
      do
      {
        v7 = v6;
        v8 = v5[4];
        if (v8 - v5[3] > (v5[1] - *v5))
        {
          *&v11 = v5[3];
          *(&v11 + 1) = v8;
          v12 = v5[5];
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          do
          {
            v9 = v5;
            std::vector<quasar::Token>::__vdeallocate(v5 + 3);
            *(v5 + 3) = *v5;
            v5[5] = v5[2];
            *v5 = 0;
            v5[1] = 0;
            v5[2] = 0;
            v10 = *(v5 - 3);
            v5 -= 3;
          }

          while (*(&v11 + 1) - v11 > *(v9 - 2) - v10);
          std::vector<quasar::Token>::__vdeallocate(v5 + 3);
          *(v5 + 3) = v11;
          v5[5] = v12;
          v11 = 0uLL;
          v12 = 0;
          v13[0] = &v11;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v13);
        }

        v6 = v7 + 3;
        v5 = v7;
      }

      while (v7 + 3 != a2);
    }
  }
}

void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<quasar::Token> *,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token>&,std::vector<quasar::Token>&)#1} &>(unint64_t a1, void **a2)
{
  v22 = *a1;
  v3 = v22;
  v23 = *(a1 + 8);
  v4 = v23;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = v4;
  v6 = v4 - v3;
  if (v4 - v3 <= (*(a2 - 2) - *(a2 - 3)))
  {
    v10 = (a1 + 24);
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = v10[1] - *v10;
      v10 += 3;
    }

    while (v6 <= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      v7 += 24;
    }

    while (v6 <= v9 - v8);
  }

  if (v7 < a2)
  {
    do
    {
      v12 = *(a2 - 3);
      v13 = *(a2 - 2);
      a2 -= 3;
    }

    while (v6 > v13 - v12);
  }

  if (v7 < a2)
  {
    v14 = *v7;
    v15 = *a2;
    do
    {
      *v7 = v15;
      *a2 = v14;
      v16 = *(v7 + 8);
      *(v7 + 8) = a2[1];
      a2[1] = v16;
      v17 = *(v7 + 16);
      *(v7 + 16) = a2[2];
      a2[2] = v17;
      v3 = v22;
      v5 = v23;
      v18 = v23 - v22;
      do
      {
        v14 = *(v7 + 24);
        v19 = *(v7 + 32);
        v7 += 24;
      }

      while (v18 <= v19 - v14);
      do
      {
        v15 = *(a2 - 3);
        v20 = *(a2 - 2);
        a2 -= 3;
      }

      while (v18 > v20 - v15);
    }

    while (v7 < a2);
  }

  if (v7 - 24 != a1)
  {
    std::vector<quasar::Token>::__vdeallocate(a1);
    *a1 = *(v7 - 24);
    *(a1 + 16) = *(v7 - 8);
    *(v7 - 24) = 0;
    *(v7 - 16) = 0;
    *(v7 - 8) = 0;
  }

  std::vector<quasar::Token>::__vdeallocate((v7 - 24));
  *(v7 - 24) = v3;
  *(v7 - 16) = v5;
  *(v7 - 8) = *(&v23 + 1);
  v22 = 0;
  v23 = 0uLL;
  v24 = &v22;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v24);
  return v7;
}

void **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<quasar::Token> *,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token>&,std::vector<quasar::Token>&)#1} &>(uint64_t a1, void **a2)
{
  v4 = 0;
  v25 = *a1;
  v5 = v25;
  v26 = *(a1 + 8);
  v6 = v26;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v7 = v6;
  v8 = v6 - v5;
  do
  {
    v9 = *(a1 + v4 + 24);
    v10 = *(a1 + v4 + 32) - v9;
    v4 += 24;
  }

  while (v10 > v8);
  v11 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      v14 = *(a2 - 3);
      v15 = *(a2 - 2);
      a2 -= 3;
    }

    while (v15 - v14 <= v8);
  }

  else
  {
    do
    {
      v12 = *(a2 - 3);
      v13 = *(a2 - 2);
      a2 -= 3;
    }

    while (v13 - v12 <= v8);
  }

  if (v11 >= a2)
  {
    v17 = v11;
  }

  else
  {
    v16 = *a2;
    v17 = v11;
    v18 = a2;
    do
    {
      *v17 = v16;
      *v18 = v9;
      v19 = v17[1];
      v17[1] = v18[1];
      v18[1] = v19;
      v20 = v17[2];
      v17[2] = v18[2];
      v18[2] = v20;
      v5 = v25;
      v7 = v26;
      v21 = v26 - v25;
      do
      {
        v9 = v17[3];
        v22 = v17[4];
        v17 += 3;
      }

      while (v22 - v9 > v21);
      do
      {
        v16 = *(v18 - 3);
        v23 = *(v18 - 2);
        v18 -= 3;
      }

      while (v23 - v16 <= v21);
    }

    while (v17 < v18);
  }

  if (v17 - 3 != a1)
  {
    std::vector<quasar::Token>::__vdeallocate(a1);
    *a1 = *(v17 - 3);
    *(a1 + 16) = *(v17 - 1);
    *(v17 - 3) = 0;
    *(v17 - 2) = 0;
    *(v17 - 1) = 0;
  }

  std::vector<quasar::Token>::__vdeallocate(v17 - 3);
  *(v17 - 3) = v5;
  *(v17 - 2) = v7;
  *(v17 - 1) = *(&v26 + 1);
  v25 = 0;
  v26 = 0uLL;
  v27 = &v25;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v27);
  return v17 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[3];
        v10 = a1[4];
        v11 = v10 - v9;
        v12 = *a1;
        v13 = a1[1];
        v14 = v13 - *a1;
        v15 = *(a2 - 3);
        v16 = *(a2 - 2) - v15;
        if (v10 - v9 <= v14)
        {
          if (v16 <= v11)
          {
            return 1;
          }

          a1[3] = v15;
          *(a2 - 3) = v9;
          v30 = a1[4];
          a1[4] = *(a2 - 2);
          *(a2 - 2) = v30;
          v32 = a1 + 5;
          v31 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v31;
          v34 = a1[3];
          v33 = a1[4];
          v36 = *a1;
          v35 = a1[1];
          if (v33 - v34 <= (v35 - *a1))
          {
            return 1;
          }

          *a1 = v34;
          a1[1] = v33;
          v17 = a1 + 2;
          a1[3] = v36;
          a1[4] = v35;
        }

        else
        {
          if (v16 <= v11)
          {
            *a1 = v9;
            a1[1] = v10;
            a1[3] = v12;
            a1[4] = v13;
            v17 = a1 + 5;
            v39 = a1[2];
            a1[2] = a1[5];
            a1[5] = v39;
            v40 = *(a2 - 3);
            if (*(a2 - 2) - v40 <= v14)
            {
              return 1;
            }

            a1[3] = v40;
            *(a2 - 3) = v12;
            v18 = a1[4];
            a1[4] = *(a2 - 2);
          }

          else
          {
            v17 = a1 + 2;
            *a1 = v15;
            *(a2 - 3) = v12;
            v18 = a1[1];
            a1[1] = *(a2 - 2);
          }

          *(a2 - 2) = v18;
          v32 = a2 - 1;
        }

        v41 = *v17;
        *v17 = *v32;
        *v32 = v41;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
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
      v5 = *(a2 - 3);
      v6 = *a1;
      if (*(a2 - 2) - v5 > (a1[1] - *a1))
      {
        *a1 = v5;
        *(a2 - 3) = v6;
        v7 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v7;
        v8 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v8;
      }

      return 1;
    }
  }

  v19 = a1 + 6;
  v20 = a1[6];
  v22 = a1[3];
  v21 = a1[4];
  v23 = v21 - v22;
  v25 = *a1;
  v24 = a1[1];
  v26 = v24 - *a1;
  v27 = a1[7];
  v28 = v27 - v20;
  if (v21 - v22 > v26)
  {
    if (v28 <= v23)
    {
      *a1 = v22;
      a1[1] = v21;
      v29 = a1 + 5;
      v42 = a1[5];
      a1[3] = v25;
      a1[4] = v24;
      v43 = a1[2];
      a1[2] = v42;
      a1[5] = v43;
      if (v28 <= v26)
      {
        goto LABEL_31;
      }

      a1[3] = v20;
      a1[4] = v27;
    }

    else
    {
      v29 = a1 + 2;
      *a1 = v20;
      a1[1] = v27;
    }

    v38 = a1 + 8;
    a1[6] = v25;
    a1[7] = v24;
    goto LABEL_30;
  }

  if (v28 > v23)
  {
    v38 = a1 + 5;
    v37 = a1[5];
    a1[3] = v20;
    a1[4] = v27;
    a1[5] = a1[8];
    a1[6] = v22;
    a1[7] = v21;
    a1[8] = v37;
    if (v28 > v26)
    {
      *a1 = v20;
      a1[1] = v27;
      v29 = a1 + 2;
      a1[3] = v25;
      a1[4] = v24;
LABEL_30:
      v44 = *v29;
      *v29 = *v38;
      *v38 = v44;
    }
  }

LABEL_31:
  v45 = a1 + 9;
  if (a1 + 9 != a2)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = v45[1];
      if (v48 - *v45 > (v19[1] - *v19))
      {
        *&v54 = *v45;
        *(&v54 + 1) = v48;
        v55 = v45[2];
        *v45 = 0;
        v45[1] = 0;
        v45[2] = 0;
        v49 = v46;
        while (1)
        {
          v50 = a1 + v49;
          std::vector<quasar::Token>::__vdeallocate((a1 + v49 + 72));
          *(v50 + 72) = *(v50 + 3);
          *(v50 + 11) = *(v50 + 8);
          *(v50 + 7) = 0;
          *(v50 + 8) = 0;
          *(v50 + 6) = 0;
          if (v49 == -48)
          {
            break;
          }

          v49 -= 24;
          if (*(&v54 + 1) - v54 <= *(v50 + 4) - *(v50 + 3))
          {
            v51 = (a1 + v49 + 72);
            goto LABEL_39;
          }
        }

        v51 = a1;
LABEL_39:
        std::vector<quasar::Token>::__vdeallocate(v51);
        *v51 = v54;
        v51[2] = v55;
        v55 = 0;
        v54 = 0uLL;
        if (++v47 == 8)
        {
          v52 = v45 + 3 == a2;
          v56 = &v54;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
          return v52;
        }

        v56 = &v54;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
      }

      v19 = v45;
      v46 += 24;
      v45 += 3;
    }

    while (v45 != a2);
  }

  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(char *a1, char *a2, char *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = &a1[24 * v11];
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(a1, a5, a4, v10, v13);
        v13 -= 3;
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        v15 = *v14;
        if (*(v14 + 1) - *v14 > *(a1 + 1) - *a1)
        {
          *v14 = *a1;
          *a1 = v15;
          v16 = *(v14 + 1);
          *(v14 + 1) = *(a1 + 1);
          *(a1 + 1) = v16;
          v17 = *(v14 + 2);
          *(v14 + 2) = *(a1 + 2);
          *(a1 + 2) = v17;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(a1, a5, a4, v10, a1);
        }

        v14 += 24;
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1},std::vector<quasar::Token>*>(a1, v7, a4, v18);
        v7 -= 24;
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = a4 - 2;
  if (a4 >= 2)
  {
    v29[9] = v5;
    v29[10] = v6;
    v8 = a5;
    v10 = v7 >> 1;
    if ((v7 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a5 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a5 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      if (0x5555555555555556 * ((a5 - a1) >> 3) + 2 >= a4)
      {
        v17 = *v13;
      }

      else
      {
        v14 = v13[1] - *v13;
        v15 = v13[4] - v13[3];
        v16 = v14 > v15;
        if (v14 <= v15)
        {
          v17 = *v13;
        }

        else
        {
          v17 = v13[3];
        }

        if (v16)
        {
          v13 += 3;
          v12 = 0x5555555555555556 * ((a5 - a1) >> 3) + 2;
        }
      }

      v18 = v13[1] - v17;
      v19 = a5[1];
      if (v18 <= v19 - *a5)
      {
        *&v27 = *a5;
        *(&v27 + 1) = v19;
        v28 = a5[2];
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        while (1)
        {
          v20 = v13;
          std::vector<quasar::Token>::__vdeallocate(v8);
          *v8 = *v20;
          v8[2] = v20[2];
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          if (v10 < v12)
          {
            break;
          }

          v13 = (a1 + 24 * ((2 * v12) | 1));
          if (2 * v12 + 2 >= a4)
          {
            v24 = *v13;
            v12 = (2 * v12) | 1;
          }

          else
          {
            v21 = v13[1] - *v13;
            v22 = v13[4] - v13[3];
            v23 = v21 > v22;
            if (v21 <= v22)
            {
              v24 = *v13;
            }

            else
            {
              v24 = v13[3];
            }

            if (v23)
            {
              v13 += 3;
              v12 = 2 * v12 + 2;
            }

            else
            {
              v12 = (2 * v12) | 1;
            }
          }

          v25 = v27;
          v8 = v20;
          if ((v13[1] - v24) > *(&v27 + 1) - v27)
          {
            goto LABEL_25;
          }
        }

        v25 = v27;
LABEL_25:
        v26 = v25;
        std::vector<quasar::Token>::__vdeallocate(v20);
        *v20 = v26;
        v20[2] = v28;
        v27 = 0uLL;
        v28 = 0;
        v29[0] = &v27;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v29);
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1},std::vector<quasar::Token>*>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = a1[1];
    *&v11 = *a1;
    *(&v11 + 1) = v8;
    v9 = a1[2];
    v12 = v9;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(a1, a3, a4);
    std::vector<quasar::Token>::__vdeallocate(v10);
    if (v10 == a2 - 24)
    {
      *v10 = v7;
      *(v10 + 8) = v8;
      *(v10 + 16) = v9;
      v12 = 0;
      v11 = 0uLL;
    }

    else
    {
      *v10 = *(a2 - 24);
      *(v10 + 16) = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      std::vector<quasar::Token>::__vdeallocate((a2 - 24));
      *(a2 - 24) = v11;
      *(a2 - 8) = v12;
      v12 = 0;
      v11 = 0uLL;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(a1, v10 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v10 + 24 - a1) >> 3));
    }

    v13 = &v11;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v13);
  }
}

void sub_1B516AFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = v7 + 24;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v10 = *(v7 + 48);
      v9 = v7 + 48;
      if (*(v9 - 16) - *(v9 - 24) <= (*(v9 + 8) - v10))
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v9;
        v5 = 2 * v5 + 2;
      }
    }

    std::vector<quasar::Token>::__vdeallocate(a1);
    *a1 = *v8;
    *(a1 + 16) = *(v8 + 16);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,quasar::MiscSharedConfig::init(void)::{lambda(std::vector<quasar::Token> &,std::vector<quasar::Token> &)#1} &,std::vector<quasar::Token>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17[9] = v4;
    v17[10] = v5;
    v8 = v6 >> 1;
    v9 = (a1 + 24 * (v6 >> 1));
    v10 = *(a2 - 16);
    v11 = (a2 - 24);
    if (v9[1] - *v9 > v10 - *(a2 - 24))
    {
      v14 = *(a2 - 24);
      v15 = v10;
      v16 = *(a2 - 8);
      *v11 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v12 = v9;
        std::vector<quasar::Token>::__vdeallocate(v11);
        *v11 = *v12;
        v11[2] = v12[2];
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v13 = v15;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v11 = v12;
      }

      while (v9[1] - *v9 > (v15 - v14));
      std::vector<quasar::Token>::__vdeallocate(v12);
      *v12 = v14;
      v12[1] = v13;
      v12[2] = v16;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17[0] = &v14;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v17);
    }
  }
}

void quasar::SystemConfig::Register<std::vector<std::string>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  quasar::SystemConfig::Register(a1, a2, a3);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = (a1 + 824);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v23 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 1480), __p, &std::piecewise_construct, &v23, &v22);
  v16[7] = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v23 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 1504), __p, &std::piecewise_construct, &v23, &v22);
  v17[7] = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = (a1 + 824);
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1528), (a1 + 824), &std::piecewise_construct, __p, &v23);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 7, __p, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B516B318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN5kaldi5nnet14NnetENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00D38;
  kaldi::nnet1::Nnet::Nnet((a1 + 3));
}

void std::__shared_ptr_emplace<kaldi::nnet1::Nnet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::MiscSharedConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::MiscSharedConfig>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = (a1 + 48);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<quasar::EndPointModelConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::EndPointModelConfig>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (a1 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<quasar::EagerConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar9GeographyENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00E78;
  quasar::Geography::Geography((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::Geography>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<quasar::Geography>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1 + 104, *(a1 + 112));
  std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(a1 + 80, *(a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return MEMORY[0x1B8C85350](result, 0x1000C4052888210);
  }

  return result;
}

void std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t std::vector<quasar::RecogRequestFilter>::__emplace_back_slow_path<quasar::RecogRequestFilter>(uint64_t a1, __int128 *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RecogRequestFilter>>(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  std::allocator_traits<std::allocator<quasar::RecogRequestFilter>>::construct[abi:ne200100]<quasar::RecogRequestFilter,quasar::RecogRequestFilter,0>(a1, 216 * v2, a2);
  v15 = 216 * v2 + 216;
  v7 = *(a1 + 8);
  v8 = 216 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::RecogRequestFilter>,quasar::RecogRequestFilter*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::RecogRequestFilter>::~__split_buffer(&v13);
  return v12;
}

void sub_1B516BA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::RecogRequestFilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B516BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p)
{
  _Block_object_dispose(&STACK[0x700], 8);
  __p = a10;
  std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 1560;
      v7 = v4 - 1560;
      do
      {
        (*(*v7 + 48))(v7);
        v6 -= 1560;
        v8 = v7 == v2;
        v7 -= 1560;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<quasar::SystemConfig>::__emplace_back_slow_path<quasar::SystemConfig const&>(uint64_t a1, const quasar::SystemConfig *a2)
{
  v2 = 0xAFEAFEAFEAFEAFEBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2A02A02A02A02ALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5FD5FD5FD5FD5FD6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5FD5FD5FD5FD5FD6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAFEAFEAFEAFEAFEBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x15015015015015)
  {
    v6 = 0x2A02A02A02A02ALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SystemConfig>>(a1, v6);
  }

  v13 = 0;
  v14 = 1560 * v2;
  quasar::SystemConfig::SystemConfig((1560 * v2), a2, 1, 1);
  v15 = 1560 * v2 + 1560;
  v7 = *(a1 + 8);
  v8 = 1560 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SystemConfig>,quasar::SystemConfig*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::SystemConfig>::~__split_buffer(&v13);
  return v12;
}

void sub_1B516C1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::SystemConfig>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SystemConfig>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2A02A02A02A02BLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::SystemConfig *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SystemConfig>,quasar::SystemConfig*>(int a1, quasar::SystemConfig *a2, quasar::SystemConfig *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = quasar::SystemConfig::SystemConfig((a4 + v7), v8, 1, 1);
      v8 = (v8 + 1560);
      v7 += 1560;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        result = (*(*v6 + 48))(v6);
        v6 = (v6 + 1560);
        v10 = (v10 + 1560);
      }

      while (v6 != a3);
    }
  }

  return result;
}

void sub_1B516C2D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SystemConfig>,quasar::SystemConfig*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::SystemConfig>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1560;
    (*(*(i - 1560) + 48))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__shared_ptr_emplace<quasar::TranslatorCompiler>::__shared_ptr_emplace[abi:ne200100]<std::vector<quasar::SystemConfig> &,std::allocator<quasar::TranslatorCompiler>,0>(void *a1, quasar::SystemConfig **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00EC8;
  quasar::TranslatorCompiler::TranslatorCompiler(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::TranslatorCompiler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::TranslatorCompiler>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1B516C58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  fst::AutoQueue<int>::~AutoQueue(va);
  v15 = *(v13 - 104);
  if (v15)
  {
    *(v13 - 96) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D00F18;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

unint64_t fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 64))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

float fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 72))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 12) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 76) == a2)
  {
    v7 = v6 + 80;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 76) == a2)
  {
    v3 = (v2 + 80);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 48);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 48) = v8 | 8;
  return 1;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 48);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 48) = v5 | 4;
      v6 = *(MutableState + 32) - *(MutableState + 24) + *(a1 + 112) + 56;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 48) |= 4u;
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve((MutableState + 24), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 52))
    {
      *(a1 + 76) = a2;
      *v5 = 2139095040;
      *(v5 + 48) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 80);
      *(result + 48) |= 4u;
      return result;
    }

    *(v5 + 48) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 52))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 48);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 32) - *(MutableState + 24) + 56;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 48);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 48) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B516CE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

void fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Delete(void *a1)
{
  v1 = *(a1[7] + 16);
  if (!v1 || v1 - 1 == *(a1 + 19))
  {
    *(a1 + 19) = -1;
    a1[10] = 0;
  }

  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Delete(a1);
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Delete(void *a1)
{
  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(*(a1[1] + 8 * *(a1[7] + 16)));
  v2 = a1[6];
  *(a1[1] + 8 * *(a1[7] + 16)) = 0;
  v3 = a1[7];
  v5 = *v3;
  v4 = v3[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  a1[6] = v2 - 1;
  a1[7] = v4;

  operator delete(v3);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
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

void fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = fst::LookAheadMatchType<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2);
  v7 = *(a3 + 8);
  if (v6)
  {
    if (v6 == 1)
    {
      v8[0] = *a3;
      v9 = v7;
      v10 = 0u;
      memset(v11, 0, sizeof(v11));
      fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>(a1, a2, v8);
    }

    v8[0] = *a3;
    v9 = v7;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>(a1, a2, v8);
  }

  v8[0] = *a3;
  v9 = v7;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>(a1, a2, v8);
}

void fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ComposeFst(void *a1)
{
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::LookAheadMatchType<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadMatcher(v6, a1, 1);
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadMatcher(v5, a2, 0);
  v3 = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v6, v5);
  if (v5[0])
  {
    (*(*v5[0] + 8))(v5[0]);
  }

  if (v6[0])
  {
    (*(*v6[0] + 8))(v6[0]);
  }

  return v3;
}

void sub_1B516D6F0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    fst::LookAheadMatchType<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>();
  }

  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(void *a1, void *a2)
{
  v4 = (*(**a1 + 24))(*a1, 0);
  v5 = (*(**a2 + 24))(*a2, 0);
  if (v4 == 1 && ((*(**a1 + 48))() & 0x20) != 0)
  {
    return 1;
  }

  if (!v5 && ((*(**a2 + 48))() & 0x10) != 0)
  {
    return 0;
  }

  if (((*(**a1 + 48))() & 0x20) == 0 || (v6 = *a1, v7 = *(**a1 + 24), v8 = 1, v7(v6, 1) != 1))
  {
    if (((*(**a2 + 48))() & 0x10) == 0 || (*(**a2 + 24))(*a2, 1))
    {
      return 3;
    }

    return 0;
  }

  return v8;
}

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Final_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 32);

  return v1();
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D01150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D01150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena(quasar::Bitmap *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D01190;
  v2 = (a1 + 24);
  v3 = *(a1 + 4);
  if (v3 != (a1 + 24))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D010A8;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F2D01150;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 11));
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D010A8;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MemoryPool((a1 + 80), 1);
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 16 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 16 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D011D0;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B516E414(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(a1, a4);
  *v7 = &unk_1F2D01278;
  fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitBase(v7, a2, a3);
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(***(a1 + 144) + 48))(**(a1 + 144)) & 1) != 0 && (*(***(a1 + 144) + 24))(**(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(***(a1 + 152) + 48))(**(a1 + 152)) & 1) != 0 && (*(***(a1 + 152) + 24))(**(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(***(a1 + 144) + 24))(**(a1 + 144), 0);
    v5 = (*(***(a1 + 152) + 24))(**(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(***(a1 + 144) + 24))(**(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(***(a1 + 152) + 24))(**(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_1B516E850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v16);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == v3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(***(a1 + 144) + 96))(**(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = (*(*a3 + 112))(a3);
  v7 = (*(*a2 + 120))(a2);
  if ((fst::CompatSymbols(v6, v7, 1) & 1) == 0)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v14, &__str);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ComposeFst: output symbol table of 1st argument ", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "does not match input symbol table of 2nd argument", 49);
    fst::LogMessage::~LogMessage(&v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v11);
  v12 = (*(*a3 + 120))(a3);
  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v12);
}

void sub_1B516F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D012D8;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a4 + 32))(*a4, a2, a3);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t *fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Matcher(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  return a1;
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D011D0;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SequenceComposeFilter(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_1B516F64C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D012D8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B516F8A0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*>>((a1 + 24), v4, v5, v5 - v4);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*>>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B516FBA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::CompactHashBiTable(void *a1, uint64_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), *(a2 + 48), a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*>(a1 + 10, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
  for (i = *(a2 + 40); i; i = *i)
  {
    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, i + 4, i + 4);
  }

  return a1;
}

uint64_t *std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B516FE48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2 < -1)
  {
    v8 = 0;
  }

  else
  {
    v6 = a1[4];
    if (v5 == -1)
    {
      v7 = *(v6 + 104);
    }

    else
    {
      v7 = (*(v6 + 80) + 12 * v5);
    }

    v8 = *v7 + 7853 * v7[1] + 7867 * *(v7 + 8);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v9)
    {
      v12 = v8 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(v14 + 4), *a2))
  {
    goto LABEL_23;
  }

  return v14;
}

BOOL fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  else
  {
    v3 = *a1;
    if (a2 == -1)
    {
      v4 = *(v3 + 104);
    }

    else
    {
      v4 = *(v3 + 80) + 12 * a2;
    }

    if (a3 == -1)
    {
      v6 = *(v3 + 104);
    }

    else
    {
      v6 = *(v3 + 80) + 12 * a3;
    }

    if (v4 == v6)
    {
      return 1;
    }

    if (*v4 != *v6 || *(v4 + 4) != *(v6 + 4))
    {
      return 0;
    }

    return *(v4 + 8) == *(v6 + 8);
  }
}

void fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  if (*(a1 + 24) != __PAIR64__(a3, a2) || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v7 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2) == INFINITY && v6 == v7;
    *(a1 + 33) = v9;
    *(a1 + 34) = v7 == 0;
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144), a2);
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B5170458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  (*(**a7 + 56))(*a7, a4, a3);
  LODWORD(v18) = v8 - 1;
  *(&v18 + 4) = (v8 << 31 >> 31);
  HIDWORD(v18) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v18, v8);
  v17 = 0;
  (*(*a5 + 136))(a5, a6, v15);
  while (1)
  {
    if (!v15[0])
    {
      if (v17 >= v15[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v15[1] + 16 * v17);
      goto LABEL_8;
    }

    if ((*(*v15[0] + 24))(v15[0]))
    {
      break;
    }

    if (!v15[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v15[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, v8);
    if (v15[0])
    {
      (*(*v15[0] + 40))(v15[0]);
    }

    else
    {
      ++v17;
    }
  }

  if (v15[0])
  {
    (*(*v15[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v16)
  {
    --*v16;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5170688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 24);
  v6 = *(MutableState + 32) - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 48) |= 0xAu;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, char *a5)
{
  v5 = a2;
  v7 = *(a4 + 12);
  *&v17 = a3[3];
  HIDWORD(v17) = v7;
  v18 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  v11 = NAN;
  if (v10 != -INFINITY)
  {
    v12 = *(a4 + 8);
    if (v12 != -INFINITY)
    {
      if (v12 == INFINITY || v10 == INFINITY)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 + v12;
      }
    }
  }

  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v17, 1);
  *&v16 = __PAIR64__(v9, LODWORD(v8));
  *(&v16 + 1) = __PAIR64__(Id, LODWORD(v11));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), v5);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v16);
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(void *a1, uint64_t *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 2;
  v12 = 0xAAAAAAAAAAAAAAABLL * v11;
  v25 = -1431655765 * v11;
  if (v9 >= v10)
  {
    if (v12 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 2);
    v16 = 2 * v15;
    if (2 * v15 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0x1555555555555555;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>((a1 + 10), v17);
    }

    v18 = 4 * v11;
    v19 = *a2;
    *(v18 + 8) = *(a2 + 2);
    *v18 = v19;
    v14 = 4 * v11 + 12;
    v20 = a1[10];
    v21 = a1[11];
    v22 = 4 * v11 + v20 - v21;
    if (v20 != v21)
    {
      v23 = 4 * v11 + v20 - v21;
      do
      {
        v24 = *v20;
        *(v23 + 8) = *(v20 + 2);
        *v23 = v24;
        v23 += 12;
        v20 += 12;
      }

      while (v20 != v21);
      v20 = a1[10];
    }

    a1[10] = v22;
    a1[11] = v14;
    a1[12] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v13 = *a2;
    *(v9 + 8) = *(a2 + 2);
    *v9 = v13;
    v14 = v9 + 12;
  }

  a1[11] = v14;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v25, &v25);
  return v25;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(void *a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = (*(v5 + 80) + 12 * v4);
    }

    v7 = *v6 + 7853 * v6[1] + 7867 * *(v6 + 8);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
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
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return i;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 48) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void *fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(void *result)
{
  v1 = result[3];
  v2 = result[4] - v1;
  if (v2)
  {
    v3 = v2 >> 4;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[1];
      }

      if (!*v4)
      {
        ++result[2];
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D01310;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy(*(a3 + 144), 0);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D01310;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D01310;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy(*(a2 + 32), a3);
}

void sub_1B51715D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = (*(**a3 + 64))(*a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 136);
  if (a3 >= 0xFFFFFFFF00000000)
  {
    if ((v7[33] & 1) == 0)
    {
      LOBYTE(v7) = (v7[34] & 1) == 0;
      goto LABEL_10;
    }

    return 0;
  }

  if (a5 == -1)
  {
    LODWORD(v7) = v7[32];
    if (v7)
    {
      return 0;
    }
  }

  else
  {
    if (!HIDWORD(a3))
    {
      return 0;
    }

    LOBYTE(v7) = 0;
  }

LABEL_10:
  v12 = __PAIR64__(HIDWORD(a6), HIDWORD(a4));
  v13 = v7;
  *(a1 + 68) = a3;
  *(a1 + 72) = HIDWORD(a5);
  v9 = NAN;
  if (*&a4 != -INFINITY && *&a6 != -INFINITY)
  {
    v9 = INFINITY;
    if (*&a6 != INFINITY && *&a4 != INFINITY)
    {
      v9 = *&a4 + *&a6;
    }
  }

  *(a1 + 76) = v9;
  v8 = 1;
  *(a1 + 80) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(v6 + 176), &v12, 1);
  return v8;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D013A8;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *(v8 + 120);
  *(a1 + 144) = v8 + 120;
  *(a1 + 152) = v8 + 200;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(****(a1 + 152) + 32))(***(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(****(a1 + 144) + 40))(***(a1 + 144), v11);
  v14 = (*(****(a1 + 152) + 40))(***(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  v16 = *(*(a1 + 136) + 40);
  v17 = v15 | 4;
  if (v16 != 3)
  {
    v17 = v15;
  }

  v18 = v16 == 1;
  v19 = 0x3FFCCC300004;
  if (v18)
  {
    v19 = 0x3FFC330C0004;
  }

  *(a1 + 8) = v17 & v19 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B5171DC4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(****(a1 + 144) + 48))(***(a1 + 144)) & 1) != 0 && (*(****(a1 + 144) + 24))(***(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(****(a1 + 152) + 48))(***(a1 + 152)) & 1) != 0 && (*(****(a1 + 152) + 24))(***(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(****(a1 + 144) + 24))(***(a1 + 144), 0);
    v5 = (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(****(a1 + 144) + 24))(***(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(****(a1 + 152) + 24))(***(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_1B51721A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 20 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v8 = *(v4 + 1);
  LODWORD(v4) = v4[4];
  v17 = v8;
  v18 = v4;
  fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(a1, v5, v6))
  {
    v10 = a1[20];
    v9 = a1[21];
    v11 = a1[19];
    v12 = a1;
    v13 = a2;
    v14 = v6;
    v15 = v5;
    v16 = 1;
  }

  else
  {
    v9 = a1[20];
    v10 = a1[21];
    v11 = a1[18];
    v12 = a1;
    v13 = a2;
    v14 = v5;
    v15 = v6;
    v16 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(v12, v13, v9, v14, v10, v15, v11, v16);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    v4 = (*(*a1[21] + 24))(a1[21]);
    result = 0xFFFFFFFFLL;
    if (v4 != -1)
    {
      v5 = __PAIR64__(v4, v3);
      v6 = -1;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(a1[22], &v5, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 20 * a2);
  v4 = *v3;
  result = (*(****(a1 + 144) + 96))(***(a1 + 144), *v3);
  v13 = result;
  *&v10 = result;
  v14 = 2139095040;
  if (result != INFINITY)
  {
    v6 = v3[1];
    result = (*(****(a1 + 152) + 96))(***(a1 + 152), v6, result, result);
    v12 = result;
    *&v10 = result;
    v14 = 2139095040;
    if (result != INFINITY)
    {
      v7 = *(a1 + 136);
      v8 = v3[4];
      v10 = *(v3 + 1);
      v11 = v8;
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v4, v6, &v10);
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(*(a1 + 136), &v13);
      result = NAN;
      if (v13 != -INFINITY)
      {
        result = NAN;
        if (v12 != -INFINITY)
        {
          result = INFINITY;
          if (v12 != INFINITY && v13 != INFINITY)
          {
            return v13 + v12;
          }
        }
      }
    }
  }

  return result;
}