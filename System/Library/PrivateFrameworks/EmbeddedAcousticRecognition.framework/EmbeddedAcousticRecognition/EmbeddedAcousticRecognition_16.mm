void sub_1B513152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a10)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  if (__p)
  {
    operator delete(__p);
  }

  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::AEDBeamSearchDecoder::AEDBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = quasar::CTCAlignedDecoder::CTCAlignedDecoder(a1, a2);
  *v3 = &unk_1F2CFF138;
  *(v3 + 592) = 0;
  *(v3 + 596) = -1;
  *(v3 + 600) = 0x8000000080;
  *(v3 + 608) = 1;
  std::string::basic_string[abi:ne200100]<0>((v3 + 616), "average-by-length");
  *(a1 + 640) = 0;
  std::string::basic_string[abi:ne200100]<0>(v6, "<?>");
  std::string::basic_string[abi:ne200100]<0>(v7, "<eps>");
  std::unordered_set<std::string>::unordered_set(a1 + 648, v6, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v7[i + 2]) < 0)
    {
      operator delete(v6[i + 3]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 696), "▁");
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::OnlineLatticeBiglmFasterDecoderConfig((a1 + 856));
  *(a1 + 1016) = 0xCF000000CF000000;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1089) = 0u;
  *(a1 + 1108) = 5000;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = 0u;
  *(a1 + 1132) = 0u;
  *(a1 + 1145) = 0u;
  *(a1 + 1161) = 1;
  *(a1 + 1164) = 60000;
  *(a1 + 1172) = 500;
  *(a1 + 1176) = 0;
  *(a1 + 1180) = 0x60000000BLL;
  *(a1 + 1188) = 0;
  *(a1 + 1192) = 0x3F3333333E99999ALL;
  *(a1 + 1200) = 15;
  *(a1 + 1204) = 0;
  *(a1 + 1208) = 5;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1264) = -1;
  *(a1 + 1272) = 0x3E99999A3F333333;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1304) = a1 + 1312;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1328), "decrease-by-one");
  *(a1 + 57) = 1;
  return a1;
}

void sub_1B51317D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__tree<int>::destroy(v15 + 1304, *(v15 + 1312));
  if (*(v15 + 1303) < 0)
  {
    operator delete(*v18);
  }

  quasar::AEDBeamSearchDecoder::AEDBeamSearchDecoder(v15, (v15 + 1240), (v15 + 1216), (v15 + 856));
  v20 = *(v15 + 848);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v15 + 832);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v15 + 816);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(v15 + 807) < 0)
  {
    operator delete(*(v15 + 784));
  }

  if (*(v15 + 783) < 0)
  {
    operator delete(*(v15 + 760));
  }

  v23 = *(v15 + 752);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(v15 + 743) < 0)
  {
    operator delete(*(v15 + 720));
  }

  if (*(v15 + 719) < 0)
  {
    operator delete(*v17);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v15 + 648));
  if (*(v15 + 639) < 0)
  {
    operator delete(*v16);
  }

  quasar::CTCAlignedDecoder::~CTCAlignedDecoder(v15);
  _Unwind_Resume(a1);
}

void quasar::AEDBeamSearchDecoder::~AEDBeamSearchDecoder(void **this)
{
  *this = &unk_1F2CFF138;
  if (*(this + 1351) < 0)
  {
    operator delete(this[166]);
  }

  std::__tree<int>::destroy((this + 163), this[164]);
  if (*(this + 1303) < 0)
  {
    operator delete(this[160]);
  }

  if (*(this + 1263) < 0)
  {
    operator delete(this[155]);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(this[152]);
  }

  v2 = this[144];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v7 = this + 140;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 1103) < 0)
  {
    operator delete(this[135]);
  }

  if (*(this + 1079) < 0)
  {
    operator delete(this[132]);
  }

  if (*(this + 1055) < 0)
  {
    operator delete(this[129]);
  }

  v3 = this[106];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[104];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[102];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 807) < 0)
  {
    operator delete(this[98]);
  }

  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  v6 = this[94];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 743) < 0)
  {
    operator delete(this[90]);
  }

  if (*(this + 719) < 0)
  {
    operator delete(this[87]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 81);
  if (*(this + 639) < 0)
  {
    operator delete(this[77]);
  }

  *this = &unk_1F2D37E18;
  if (*(this + 591) < 0)
  {
    operator delete(this[71]);
  }

  std::__tree<int>::destroy((this + 68), this[69]);
  if (*(this + 535) < 0)
  {
    operator delete(this[64]);
  }

  v7 = this + 60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::AEDBeamSearchDecoder::~AEDBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B51328E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::UttDetectConfig::registerParams(uint64_t a1, quasar::SystemConfig *this, const void **a3)
{
  quasar::SystemConfig::getPrefix(this, &v9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9.__r_.__value_.__l.__data_, a3, &__p);
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::Register(a1, this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  quasar::EndPointDecoderConfig::registerParams(a1 + 160, this, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "use-nnet");
  std::string::basic_string[abi:ne200100]<0>(v6, "Use nnet for utterance detection if true");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 304, v6, 1, 15, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "left-context");
  std::string::basic_string[abi:ne200100]<0>(v6, "Use left context for utterance detection if true");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 305, v6, 0, 15, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "hard-max-utt-length-ms");
  std::string::basic_string[abi:ne200100]<0>(v6, "If the utterance exceeds this length, force trigger the utterance detector. Ignored if <= 0. It is named 'hard' because there is a softer 'max-utt-length' config that does not trigger right away when exceeded.");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 308, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "utt-start-threshold");
  std::string::basic_string[abi:ne200100]<0>(v6, "If the speech activity detection model produce a score higher than threshold, we enable the decoder for graph/beam search. ");
  quasar::SystemConfig::Register<float>(this, &__p.__r_.__value_.__l.__data_, a1 + 312, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "utt-start-silence-length-ms");
  std::string::basic_string[abi:ne200100]<0>(v6, "We include up to this much preceding silence when a new utterance start is detected. ");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 316, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::setPrefix(this, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5132CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AEDBeamSearchDecoder::finishInit(quasar::AEDBeamSearchDecoder *this)
{
  v2 = (this + 744);
  quasar::ModelLoader::readSymbolTable(*(this + 47), this + 90, 4, 0, __p);
  v3 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v4 = *(this + 94);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  quasar::CTCAlignedDecoder::readNonDisplayableSymbols(this, v2);
  v5 = *(this + 1239);
  if (v5 < 0)
  {
    v5 = *(this + 153);
  }

  if (v5)
  {
    v6 = (*(**(this + 93) + 96))(*(this + 93), this + 1216);
    *(this + 316) = v6;
    if (v6 != -1)
    {
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 544, this + 316, this + 316);
    }
  }

  v7 = *(this + 1263);
  if (v7 < 0)
  {
    v7 = *(this + 156);
  }

  if (v7)
  {
    v8 = (*(**(this + 93) + 96))(*(this + 93), this + 1240);
    *(this + 317) = v8;
    if (v8 != -1)
    {
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 544, this + 317, this + 317);
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  kaldi::SplitStringToVector((this + 1280), ",", 1, &v21);
  v9 = v21;
  v10 = v22;
  while (v9 != v10)
  {
    v11 = (*(**v2 + 96))(*v2, v9);
    if (v11 != -1)
    {
      LODWORD(__p[0]) = v11;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 1304, __p, __p);
    }

    v9 += 24;
  }

  if ((*(this + 1188) & 1) == 0)
  {
    v12 = *(this + 47);
    v18 = 0;
    v19 = 0;
    LOBYTE(__p[0]) = 0;
    v17 = 0;
    quasar::ModelLoader::readNeuralNetwork(v12, this + 95, 1, 1, 1, &v18, __p, &v20);
    v13 = v20;
    v20 = 0uLL;
    v14 = *(this + 102);
    *(v2 + 4) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }
    }

    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  std::allocate_shared[abi:ne200100]<kaldi::quasar::CEDecoder,std::allocator<kaldi::quasar::CEDecoder>,std::string &,0>();
}

void sub_1B5133108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v17 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  JUMPOUT(0x1B5133150);
}

void sub_1B513314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  a11 = (v11 - 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void quasar::AEDBeamSearchDecoder::runImpl(uint64_t a1, void *a2, uint64_t *a3, quasar::SpeechRequestData **a4)
{
  v50[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 592) == 1)
  {
    if ((*(a1 + 1188) & 1) == 0)
    {
      v6 = a2[2];
      v7 = 0xFFFFFFFFLL;
      do
      {
        v8 = (*(*v6 + 8))(v6, v7, a3);
        v7 = (v7 + 1);
      }

      while ((v8 & 1) == 0);
    }

    return;
  }

  if (*(a1 + 1188) != 1 || *(a1 + 1204) != 1)
  {
    goto LABEL_26;
  }

  v10 = *a3;
  (*(*a1 + 176))(__p, a1);
  v50[0] = __p;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v10 + 120), __p, &std::piecewise_construct, v50);
  v13 = *(v11 + 56);
  v12 = *(v11 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = v12;
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13)
  {
LABEL_26:
    quasar::rescoring::AdapterModel::getFeaturizer(*(*a3 + 624));
    v21 = *(a1 + 744);
    v22 = *(a1 + 752);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = a2[22];
    a2[21] = v21;
    a2[22] = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v14 = *(v13 + 104);
  v15 = *(v13 + 108);
  v31 = v15;
  v16 = *(*a3 + 592);
  if (v14 < v16 && v15 != 0)
  {
    v24 = *(a1 + 1208);
    v25 = (v14 - v24) & ~((v14 - v24) >> 31);
    v32 = v25;
    if (v15 >= 1)
    {
      v26 = v15 + v14 + v24;
      if (v16 < v26)
      {
        v26 = *(*a3 + 592);
      }

      v31 = v26 - v25;
    }

    if (quasar::gLogLevel >= 5)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      *v44 = 0u;
      v45 = 0u;
      *v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      *v39 = 0u;
      *v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "AED redecoding encoder cache starting from ", 43);
      v28 = MEMORY[0x1B8C84C00](v27, v32);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", length ", 9);
      MEMORY[0x1B8C84C00](v29, v31);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    goto LABEL_26;
  }

  if (quasar::gLogLevel >= 4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    *v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip AED redecoding because it may be a segment with only silence ", 66);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  if (*(a1 + 1276) >= 0.00001)
  {
    v18 = *(*a3 + 592);
    if (v18)
    {
      if (v18 <= kaldi::quasar::CEDecoder::MaxEncoderSize(*(a1 + 824)))
      {
        if (quasar::gLogLevel >= 4)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v44 = 0u;
          v45 = 0u;
          *v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          *v39 = 0u;
          *v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Run AED rescoring on the segment.", 33);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        goto LABEL_26;
      }
    }
  }

  if (quasar::gLogLevel >= 4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    *v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip AED rescoring because of rescoring-AED-scale: ", 51);
    v19 = std::ostream::operator<<();
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", or segment length: ", 21);
    MEMORY[0x1B8C84C10](v20, *(*a3 + 592));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  a2[84] = *(a1 + 688);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1B5134D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  JUMPOUT(0x1B5135108);
}

void sub_1B5134DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  JUMPOUT(0x1B5135140);
}

void sub_1B5134DE0()
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    JUMPOUT(0x1B513513CLL);
  }

  JUMPOUT(0x1B5135140);
}

void sub_1B5134DF8()
{
  if (!STACK[0x2A8])
  {
    JUMPOUT(0x1B513514CLL);
  }

  JUMPOUT(0x1B5135148);
}

void sub_1B5134E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a25);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a27);
  std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](&STACK[0x280]);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v67 = a22;
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
    v67 = a22;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  STACK[0x280] = &a45;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  std::__function::__value_func<float ()(std::pair<float,std::vector<int>> const&)>::~__value_func[abi:ne200100](v65 - 152);
  STACK[0x280] = &a55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2::operator()(uint64_t *a1, float **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  LOBYTE(v18[0].__loc_.__locale_) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v18, 1);
  v5 = *a2;
  if (*a2 != a2[1])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "    ", 4);
    v7 = *v6;
    *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v6 + *(v7 - 24) + 16) = 6;
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " | ", 3);
    v9 = *a1;
    quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_5::operator()(a1 + 1, (v5 + 8), v18);
    kaldi::JoinVectorToString<std::string>(v18, "");
    *&v19 = v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v18, (v9 + 696), 0);
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v10;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B51359E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  a15 = v28 - 136;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v28 - 112));
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](uint64_t a1, quasar::Token **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<quasar::Token>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::Token> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t fst::Union<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (!fst::CompatSymbols(v4, v5, 1) || (v6 = (*(*a1 + 120))(a1), v7 = (*(*a2 + 120))(a2), (fst::CompatSymbols(v6, v7, 1) & 1) == 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v20 = fst::LogMessage::LogMessage(&v35, &__p);
    v21 = fst::cerr(v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Union: input/output symbol tables of 1st argument ", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "do not match input/output symbol tables of 2nd argument", 55);
    fst::LogMessage::~LogMessage(&v35);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v8 = (*(*a1 + 160))(a1);
  v9 = (*(*a1 + 64))(a1, 0x2000000000, 1);
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  result = (*(*a2 + 24))(a2);
  if (result == -1)
  {
    if ((v11 & 4) != 0)
    {
      v25 = *(*a1 + 192);

      return v25(a1, 4, 4);
    }

    return result;
  }

  v13 = result;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v14 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
    if (v9)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 + 1;
    }

    (*(*a1 + 248))(a1, (v15 + v14));
  }

  v37 = 0;
  (*(*a2 + 128))(a2, &v35);
LABEL_10:
  if (!v35)
  {
    if (v37 >= v36)
    {
      goto LABEL_40;
    }

    goto LABEL_14;
  }

  if (!(*(*v35 + 16))(v35))
  {
LABEL_14:
    v16 = (*(*a1 + 200))(a1);
    if (v35)
    {
      v17 = (*(*v35 + 24))(v35);
    }

    else
    {
      v17 = v37;
    }

    (*(*a2 + 32))(&__p, a2, v17);
    (*(*a1 + 184))(a1, v16, &__p);
    v18 = (*(*a2 + 40))(a2, v17);
    (*(*a1 + 256))(a1, v16, v18);
    v34 = 0;
    (*(*a2 + 136))(a2, v17, &__p);
    while (__p)
    {
      if ((*(*__p + 24))(__p))
      {
        if (__p)
        {
          (*(*__p + 8))();
          goto LABEL_31;
        }

LABEL_29:
        if (v33)
        {
          --*v33;
        }

LABEL_31:
        if (v35)
        {
          (*(*v35 + 32))(v35);
        }

        else
        {
          ++v37;
        }

        goto LABEL_10;
      }

      if (!__p)
      {
        goto LABEL_23;
      }

      v19 = (*(*__p + 32))();
LABEL_24:
      v28[0] = *v19;
      v28[1] = *(v19 + 8);
      v29 = *(v19 + 16) + v8;
      (*(*a1 + 208))(a1, v16, v28);
      if (__p)
      {
        (*(*__p + 40))(__p);
      }

      else
      {
        ++v34;
      }
    }

    if (v34 >= v32)
    {
      goto LABEL_29;
    }

LABEL_23:
    v19 = v31 + 20 * v34;
    goto LABEL_24;
  }

  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

LABEL_40:
  v23 = (*(*a1 + 24))(a1);
  if (v23 == -1)
  {
    (*(*a1 + 176))(a1, v13);
    return (*(*a1 + 192))(a1, v11, 0x3FFFFFFF0004);
  }

  else
  {
    v24 = v23;
    if (v9)
    {
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v13 + v8;
      (*(*a1 + 208))(a1, v23, &__p);
    }

    else
    {
      v26 = (*(*a1 + 200))(a1);
      (*(*a1 + 176))(a1, v26);
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v24;
      (*(*a1 + 208))(a1, v26, &__p);
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v13 + v8;
      (*(*a1 + 208))(a1, v26, &__p);
    }

    v27 = fst::UnionProperties(v10, v11, 0);
    return (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
  }
}

void sub_1B51363E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::FirstPassEncoderCacheView::~FirstPassEncoderCacheView(quasar::FirstPassEncoderCacheView *this)
{
  *this = &unk_1F2CFF0B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](this + 12);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F2CFF0B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](this + 12);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::SecondPassEncoderCacheView::~SecondPassEncoderCacheView(quasar::SecondPassEncoderCacheView *this)
{
  *this = &unk_1F2CFF0F8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_1F2CFF0F8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(unint64_t a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v8, v8 + 32, (a2 - 8));
          return;
        case 4:
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v8, v8 + 32, v8 + 64);
          v51 = *(a2 - 8);
          v52 = *(v8 + 64);
          if (v51 > v52)
          {
            *(v8 + 64) = v51;
            *(a2 - 8) = v52;
            v53 = *(v8 + 72);
            *(v8 + 72) = *(a2 - 3);
            *(a2 - 3) = v53;
            v54 = *(v8 + 80);
            *(v8 + 80) = *(a2 - 2);
            *(a2 - 2) = v54;
            v55 = *(v8 + 88);
            *(v8 + 88) = *(a2 - 1);
            *(a2 - 1) = v55;
            v56 = *(v8 + 64);
            v57 = *(v8 + 32);
            if (v56 > v57)
            {
              *(v8 + 32) = v56;
              *(v8 + 64) = v57;
              v58 = *(v8 + 72);
              v59 = *(v8 + 80);
              v60 = *(v8 + 40);
              *(v8 + 40) = v58;
              *(v8 + 48) = v59;
              *(v8 + 72) = v60;
              v61 = *(v8 + 56);
              v62 = *(v8 + 88);
              *(v8 + 56) = v62;
              v63 = *v8;
              v64 = v56 <= *v8;
              *(v8 + 88) = v61;
              if (!v64)
              {
                *v8 = v56;
                *(v8 + 32) = v63;
                v65 = *(v8 + 8);
                *(v8 + 8) = v58;
                *(v8 + 16) = v59;
                *(v8 + 40) = v65;
                v66 = *(v8 + 24);
                *(v8 + 24) = v62;
                *(v8 + 56) = v66;
              }
            }
          }

          return;
        case 5:

          _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEvT1_S1J_S1J_S1J_S1J_S1D_(v8, v8 + 32, v8 + 64, (v8 + 96), a2 - 8);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v46 = *(a2 - 8);
        v47 = *v8;
        if (v46 > *v8)
        {
          *v8 = v46;
          *(a2 - 8) = v47;
          v48 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 3);
          *(a2 - 3) = v48;
          v49 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 2);
          *(a2 - 2) = v49;
          v50 = *(v8 + 24);
          *(v8 + 24) = *(a2 - 1);
          *(a2 - 1) = v50;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v80 = v10 >> 1;
      v81 = v10 >> 1;
      do
      {
        v82 = v81;
        if (v80 >= v81)
        {
          v83 = (2 * v81) | 1;
          v84 = v8 + 32 * v83;
          if (2 * v82 + 2 < v9 && *v84 > *(v84 + 32))
          {
            v84 += 32;
            v83 = 2 * v82 + 2;
          }

          v85 = v8 + 32 * v82;
          v86 = *v85;
          if (*v84 <= *v85)
          {
            v126 = *(v85 + 8);
            v87 = *(v85 + 24);
            *(v85 + 16) = 0;
            *(v85 + 24) = 0;
            *(v85 + 8) = 0;
            v88 = *v84;
            do
            {
              v89 = v85;
              v85 = v84;
              *v89 = v88;
              std::vector<int>::__move_assign((v89 + 2), (v84 + 8));
              if (v80 < v83)
              {
                break;
              }

              v90 = 2 * v83;
              v83 = (2 * v83) | 1;
              v84 = v8 + 32 * v83;
              v91 = v90 + 2;
              if (v91 < v9 && *v84 > *(v84 + 32))
              {
                v84 += 32;
                v83 = v91;
              }

              v88 = *v84;
            }

            while (*v84 <= v86);
            *v85 = v86;
            v92 = *(v85 + 8);
            if (v92)
            {
              *(v85 + 16) = v92;
              operator delete(v92);
            }

            *(v85 + 8) = v126;
            *(v85 + 24) = v87;
          }
        }

        v81 = v82 - 1;
      }

      while (v82);
      while (2)
      {
        v93 = 0;
        v94 = *v8;
        v95 = *(v8 + 8);
        v127 = *(v8 + 16);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v96 = v8;
        *(v8 + 8) = 0;
        do
        {
          v97 = v96;
          v98 = v96 + 32 * v93;
          v96 = v98 + 32;
          v99 = 2 * v93;
          v93 = (2 * v93) | 1;
          v100 = v99 + 2;
          if (v100 < v9)
          {
            v102 = *(v98 + 64);
            v101 = v98 + 64;
            if (*(v101 - 32) > v102)
            {
              v96 = v101;
              v93 = v100;
            }
          }

          v103 = (v96 + 8);
          *v97 = *v96;
          std::vector<int>::__move_assign((v97 + 2), (v96 + 8));
        }

        while (v93 <= ((v9 - 2) >> 1));
        v104 = a2 - 8;
        if (v96 == a2 - 8)
        {
          *v96 = v94;
          v115 = *(v96 + 8);
          if (v115)
          {
            *(v96 + 16) = v115;
            operator delete(v115);
            *(v96 + 16) = 0;
            *(v96 + 24) = 0;
          }

          *v103 = v95;
LABEL_131:
          *(v96 + 16) = v127;
        }

        else
        {
          *v96 = *(a2 - 8);
          std::vector<int>::__move_assign(v96 + 8, (a2 - 6));
          *(a2 - 8) = v94;
          v105 = *(a2 - 3);
          if (v105)
          {
            *(a2 - 2) = v105;
            operator delete(v105);
          }

          *(a2 - 3) = v95;
          *(a2 - 1) = v127;
          v106 = (v96 + 32 - v8) >> 5;
          v64 = v106 < 2;
          v107 = v106 - 2;
          if (!v64)
          {
            v108 = v107 >> 1;
            v109 = v8 + 32 * (v107 >> 1);
            v110 = *v96;
            if (*v109 > *v96)
            {
              v111 = *(v96 + 8);
              v127 = *(v96 + 16);
              *v103 = 0;
              *(v96 + 16) = 0;
              *(v96 + 24) = 0;
              v112 = *v109;
              do
              {
                v113 = v96;
                v96 = v109;
                *v113 = v112;
                std::vector<int>::__move_assign((v113 + 2), (v109 + 8));
                if (!v108)
                {
                  break;
                }

                v108 = (v108 - 1) >> 1;
                v109 = v8 + 32 * v108;
                v112 = *v109;
              }

              while (*v109 > v110);
              *v96 = v110;
              v114 = *(v96 + 8);
              if (v114)
              {
                *(v96 + 16) = v114;
                operator delete(v114);
                *(v96 + 16) = 0;
                *(v96 + 24) = 0;
              }

              *(v96 + 8) = v111;
              goto LABEL_131;
            }
          }
        }

        a2 = v104;
        v64 = v9-- <= 2;
        if (v64)
        {
          return;
        }

        continue;
      }
    }

    v11 = v9 >> 1;
    v12 = v8 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 32 * (v9 >> 1), a1, (a2 - 8));
    }

    else
    {
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a1 + 32 * (v9 >> 1), (a2 - 8));
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 32, v12 - 32, (a2 - 16));
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 64, a1 + 32 + 32 * v11, (a2 - 24));
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v12 - 32, a1 + 32 * (v9 >> 1), a1 + 32 + 32 * v11);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
      v14 = *(a1 + 8);
      *(a1 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
      v15 = *(a1 + 24);
      *(a1 + 24) = *(v12 + 24);
      *(v12 + 24) = v15;
    }

    --a3;
    v16 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 32) > v16)
    {
      v17 = 0;
      v123 = *(a1 + 8);
      v18 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      do
      {
        v19 = *(a1 + v17 + 32);
        v17 += 32;
      }

      while (v19 > v16);
      v20 = a1 + v17;
      v21 = a2;
      if (v17 == 32)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v23 = *(v21 - 8);
          v21 -= 8;
        }

        while (v23 <= v16);
      }

      else
      {
        do
        {
          v22 = *(v21 - 8);
          v21 -= 8;
        }

        while (v22 <= v16);
      }

      if (v20 >= v21)
      {
        v8 = a1 + v17;
      }

      else
      {
        v24 = *v21;
        v8 = a1 + v17;
        v25 = v21;
        do
        {
          *v8 = v24;
          *v25 = v19;
          v26 = *(v8 + 8);
          *(v8 + 8) = *(v25 + 1);
          *(v25 + 1) = v26;
          v27 = *(v8 + 16);
          *(v8 + 16) = *(v25 + 2);
          *(v25 + 2) = v27;
          v28 = *(v8 + 24);
          *(v8 + 24) = *(v25 + 3);
          *(v25 + 3) = v28;
          do
          {
            v29 = *(v8 + 32);
            v8 += 32;
            v19 = v29;
          }

          while (v29 > v16);
          do
          {
            v30 = *(v25 - 8);
            v25 -= 8;
            v24 = v30;
          }

          while (v30 <= v16);
        }

        while (v8 < v25);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        std::vector<int>::__move_assign(a1 + 8, (v8 - 24));
      }

      *(v8 - 32) = v16;
      v31 = *(v8 - 24);
      if (v31)
      {
        *(v8 - 16) = v31;
        operator delete(v31);
      }

      *(v8 - 24) = v123;
      *(v8 - 8) = v18;
      if (v20 < v21)
      {
        goto LABEL_39;
      }

      v32 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_EEbT1_S1J_S1D_(a1, v8 - 32);
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_EEbT1_S1J_S1D_(v8, a2))
      {
        a2 = (v8 - 32);
        if (v32)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v32)
      {
LABEL_39:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(a1, (v8 - 32), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v124 = *(a1 + 8);
      v33 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      if (v16 <= *(a2 - 8))
      {
        v35 = a1 + 32;
        do
        {
          v8 = v35;
          if (v35 >= a2)
          {
            break;
          }

          v35 += 32;
        }

        while (v16 <= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v34 = *(v8 + 32);
          v8 += 32;
        }

        while (v16 <= v34);
      }

      v36 = a2;
      if (v8 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36 - 8);
          v36 -= 8;
        }

        while (v16 > v37);
      }

      if (v8 < v36)
      {
        v38 = *v8;
        v39 = *v36;
        do
        {
          *v8 = v39;
          *v36 = v38;
          v40 = *(v8 + 8);
          *(v8 + 8) = *(v36 + 1);
          *(v36 + 1) = v40;
          v41 = *(v8 + 16);
          *(v8 + 16) = *(v36 + 2);
          *(v36 + 2) = v41;
          v42 = *(v8 + 24);
          *(v8 + 24) = *(v36 + 3);
          *(v36 + 3) = v42;
          do
          {
            v43 = *(v8 + 32);
            v8 += 32;
            v38 = v43;
          }

          while (v16 <= v43);
          do
          {
            v44 = *(v36 - 8);
            v36 -= 8;
            v39 = v44;
          }

          while (v16 > v44);
        }

        while (v8 < v36);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        std::vector<int>::__move_assign(a1 + 8, (v8 - 24));
      }

      *(v8 - 32) = v16;
      v45 = *(v8 - 24);
      if (v45)
      {
        *(v8 - 16) = v45;
        operator delete(v45);
      }

      a4 = 0;
      *(v8 - 24) = v124;
      *(v8 - 8) = v33;
    }
  }

  v67 = (v8 + 32);
  v69 = v8 == a2 || v67 == a2;
  if (a4)
  {
    if (!v69)
    {
      v70 = 0;
      v71 = v8;
      do
      {
        v72 = v67;
        v73 = *(v71 + 32);
        v74 = *v71;
        if (v73 > *v71)
        {
          v75 = *(v71 + 40);
          v125 = *(v71 + 48);
          *(v71 + 48) = 0;
          *(v71 + 56) = 0;
          v76 = v70;
          *(v71 + 40) = 0;
          while (1)
          {
            v77 = v8 + v76;
            *(v8 + v76 + 32) = v74;
            std::vector<int>::__move_assign(v8 + v76 + 40, (v8 + v76 + 8));
            if (!v76)
            {
              break;
            }

            v74 = *(v77 - 32);
            v76 -= 32;
            if (v73 <= v74)
            {
              v78 = v8 + v76 + 32;
              goto LABEL_90;
            }
          }

          v78 = v8;
LABEL_90:
          *v78 = v73;
          v79 = *(v77 + 8);
          if (v79)
          {
            *(v78 + 16) = v79;
            operator delete(v79);
          }

          *(v77 + 8) = v75;
          *(v78 + 16) = v125;
        }

        v67 = v72 + 8;
        v70 += 32;
        v71 = v72;
      }

      while (v72 + 8 != a2);
    }
  }

  else if (!v69)
  {
    v116 = (v8 + 56);
    do
    {
      v117 = v67;
      v118 = *(a1 + 32);
      v119 = *a1;
      if (v118 > *a1)
      {
        v128 = *(a1 + 40);
        v120 = *(a1 + 56);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v121 = v116;
        *(a1 + 40) = 0;
        do
        {
          v121[-2].n128_f32[2] = v119;
          std::vector<int>::__move_assign(&v121[-1], v121 - 3);
          v119 = v121[-6].n128_f32[2];
          v121 -= 2;
        }

        while (v118 > v119);
        v121[-2].n128_f32[2] = v118;
        v122 = v121[-1].n128_u64[0];
        if (v122)
        {
          v121[-1].n128_u64[1] = v122;
          operator delete(v122);
        }

        v121[-1] = v128;
        v121->n128_u64[0] = v120;
      }

      v67 = (v117 + 32);
      v116 += 2;
      a1 = v117;
    }

    while ((v117 + 32) != a2);
  }
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 > *result)
  {
    if (v5 <= v3)
    {
      *result = v3;
      *a2 = v4;
      v16 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v16;
      v17 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      v6 = (a2 + 24);
      v18 = *(a2 + 24);
      *(a2 + 16) = v17;
      v19 = *(result + 24);
      *(result + 24) = v18;
      *(a2 + 24) = v19;
      if (*a3 <= v4)
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v4;
      v20 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v20;
      v8 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
    }

    else
    {
      v6 = (result + 24);
      *result = v5;
      *a3 = v4;
      v7 = *(result + 8);
      *(result + 8) = *(a3 + 8);
      *(a3 + 8) = v7;
      v8 = *(result + 16);
      *(result + 16) = *(a3 + 16);
    }

    *(a3 + 16) = v8;
    v12 = (a3 + 24);
    goto LABEL_10;
  }

  if (v5 > v3)
  {
    *a2 = v5;
    *a3 = v3;
    v9 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v9;
    v10 = *(a2 + 16);
    *(a2 + 16) = *(a3 + 16);
    *(a3 + 16) = v10;
    v12 = (a2 + 24);
    v11 = *(a2 + 24);
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 24) = v11;
    v13 = *result;
    if (*a2 > *result)
    {
      *result = *a2;
      *a2 = v13;
      v14 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v14;
      v15 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v15;
      v6 = (result + 24);
LABEL_10:
      v21 = *v6;
      *v6 = *v12;
      *v12 = v21;
    }
  }

  return result;
}

uint64_t _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEvT1_S1J_S1J_S1J_S1J_S1D_(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  result = _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a2, a3);
  v11 = *a3;
  if (*a4 > *a3)
  {
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 1);
    *(a4 + 1) = v12;
    v13 = *(a3 + 16);
    *(a3 + 16) = *(a4 + 2);
    *(a4 + 2) = v13;
    v14 = *(a3 + 24);
    *(a3 + 24) = *(a4 + 3);
    *(a4 + 3) = v14;
    v15 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v16;
      v17 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v17;
      v18 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v18;
      v19 = *a1;
      if (*a2 > *a1)
      {
        *a1 = *a2;
        *a2 = v19;
        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v20;
        v21 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v21;
        v22 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v22;
      }
    }
  }

  v23 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v23;
    v24 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v24;
    v25 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v25;
    v26 = *(a4 + 3);
    *(a4 + 3) = *(a5 + 3);
    *(a5 + 3) = v26;
    v27 = *a3;
    if (*a4 > *a3)
    {
      *a3 = *a4;
      *a4 = v27;
      v28 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 1);
      *(a4 + 1) = v28;
      v29 = *(a3 + 16);
      *(a3 + 16) = *(a4 + 2);
      *(a4 + 2) = v29;
      v30 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 3);
      *(a4 + 3) = v30;
      v31 = *a2;
      if (*a3 > *a2)
      {
        *a2 = *a3;
        *a3 = v31;
        v32 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v32;
        v33 = *(a2 + 16);
        *(a2 + 16) = *(a3 + 16);
        *(a3 + 16) = v33;
        v34 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v34;
        v35 = *a1;
        if (*a2 > *a1)
        {
          *a1 = *a2;
          *a2 = v35;
          v36 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v36;
          v37 = *(a1 + 16);
          *(a1 + 16) = *(a2 + 16);
          *(a2 + 16) = v37;
          v38 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v38;
        }
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_EEbT1_S1J_S1D_(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a1 + 32, a2 - 32);
        break;
      case 4:
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a1 + 32, a1 + 64);
        v23 = *(a2 - 32);
        v24 = *(a1 + 64);
        if (v23 > v24)
        {
          *(a1 + 64) = v23;
          *(a2 - 32) = v24;
          v25 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v25;
          v26 = *(a1 + 80);
          *(a1 + 80) = *(a2 - 16);
          *(a2 - 16) = v26;
          v27 = *(a1 + 88);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 8) = v27;
          v28 = *(a1 + 64);
          v29 = *(a1 + 32);
          if (v28 > v29)
          {
            *(a1 + 32) = v28;
            *(a1 + 64) = v29;
            v30 = *(a1 + 72);
            v31 = *(a1 + 80);
            v32 = *(a1 + 40);
            *(a1 + 40) = v30;
            *(a1 + 48) = v31;
            *(a1 + 72) = v32;
            v33 = *(a1 + 56);
            v34 = *(a1 + 88);
            *(a1 + 56) = v34;
            v35 = *a1;
            v36 = v28 <= *a1;
            *(a1 + 88) = v33;
            if (!v36)
            {
              *a1 = v28;
              *(a1 + 32) = v35;
              v37 = *(a1 + 8);
              *(a1 + 8) = v30;
              *(a1 + 16) = v31;
              *(a1 + 40) = v37;
              v38 = *(a1 + 24);
              *(a1 + 24) = v34;
              *(a1 + 56) = v38;
            }
          }
        }

        return 1;
      case 5:
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEvT1_S1J_S1J_S1J_S1J_S1D_(a1, a1 + 32, a1 + 64, (a1 + 96), (a2 - 32));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 32);
    v6 = *a1;
    if (v5 > *a1)
    {
      *a1 = v5;
      *(a2 - 32) = v6;
      v7 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 24);
      *(a2 - 24) = v7;
      v8 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 16);
      *(a2 - 16) = v8;
      v9 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v9;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 64);
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a1 + 32, a1 + 64);
  v11 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 > *v10)
    {
      v15 = *(v11 + 8);
      v40 = *(v11 + 16);
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v16 = v12;
      v17 = *v10;
      while (1)
      {
        v18 = v16;
        v19 = a1 + v16;
        *(a1 + v16 + 96) = v17;
        std::vector<int>::__move_assign(a1 + v16 + 104, (a1 + v16 + 72));
        if (v18 == -64)
        {
          break;
        }

        v17 = *(v19 + 32);
        v16 = v18 - 32;
        if (v14 <= v17)
        {
          v20 = a1 + v16 + 96;
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v14;
      v21 = *(v19 + 72);
      if (v21)
      {
        *(v20 + 16) = v21;
        operator delete(v21);
        v22 = a1 + v18;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
      }

      *(v19 + 72) = v15;
      *(v20 + 16) = v40;
      if (++v13 == 8)
      {
        return v11 + 32 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 += 32;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

double kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::OnlineLatticeBiglmFasterDecoderConfig(kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig *this)
{
  kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig::LatticeBiglmFasterTraceBackDecoderConfig(this);
  *(v1 + 100) = 0x3F4000003F333333;
  *(v1 + 108) = xmmword_1B5AE1350;
  *(v1 + 124) = 3;
  *(v1 + 128) = 0x3D4CCCCD3C23D70ALL;
  *(v1 + 136) = 0;
  *(v1 + 140) = 0;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1077936128;
  *&result = 0xC800000002;
  *(v1 + 152) = 0xC800000002;
  return result;
}

double kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig::LatticeBiglmFasterTraceBackDecoderConfig(kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig *this)
{
  *this = 0x7FFFFFFF41800000;
  *(this + 12) = 0x4120000000000000;
  *(this + 5) = 25;
  *(this + 24) = 1;
  *(this + 28) = xmmword_1B5AE1360;
  *(this + 44) = 0x2FAF0803A800000;
  *(this + 26) = 257;
  *(this + 54) = 0;
  *(this + 14) = 2139095039;
  *(this + 60) = xmmword_1B5AE1370;
  result = -NAN;
  *(this + 76) = -NAN;
  *(this + 42) = 0;
  *(this + 11) = 0x7FFFFFFF43FA0000;
  *(this + 24) = 2139095040;
  *(this + 2) = 0;
  return result;
}

void quasar::UttDetectConfig::~UttDetectConfig(quasar::UttDetectConfig *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 264);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }
}

void kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "rt-min");
  std::string::basic_string[abi:ne200100]<0>(__p, "Approximate minimum decoding run time factor");
  (*(*a2 + 24))(a2, v6, a1 + 100, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "rt-max");
  std::string::basic_string[abi:ne200100]<0>(__p, "Approximate maximum decoding run time factor");
  (*(*a2 + 24))(a2, v6, a1 + 104, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "update-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "Beam update interval in frames");
  (*(*a2 + 8))(a2, v6, a1 + 124, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam-update");
  std::string::basic_string[abi:ne200100]<0>(__p, "Beam update rate");
  (*(*a2 + 24))(a2, v6, a1 + 128, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-beam-update");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max beam update rate");
  (*(*a2 + 24))(a2, v6, a1 + 132, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "inter-utt-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum # of silence frames to trigger new utterance. The value will be also possibly used for computing the moving average of silence posteriors.");
  (*(*a2 + 8))(a2, v6, a1 + 112, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum # of silence frames to trigger end of speech while no speech presented");
  (*(*a2 + 8))(a2, v6, a1 + 120, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "enable-avg-silpost");
  std::string::basic_string[abi:ne200100]<0>(__p, "To enable average silence posterior which is used for utterance detection.");
  (**a2)(a2, v6, a1 + 136, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "silence-posterior-threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "The threshold to trigger utterance detection with silence posterior.");
  (*(*a2 + 24))(a2, v6, a1 + 140, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "If the utterance becomes longer than this number of frames, shorter silence is acceptable as an utterance separator");
  (*(*a2 + 8))(a2, v6, a1 + 116, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "enable-adaptive-inter-utt-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "To enable adaptive inter-utt-sil to trigger new utterance.");
  (**a2)(a2, v6, a1 + 144, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "adaptive-inter-utt-sil-rate");
  std::string::basic_string[abi:ne200100]<0>(__p, "The rate to compute the exponential decay factor for adaptive inter-utt-sil: exp(adaptive-inter-utt-sil-rate * (max-utt-length - current_utt_frames) / max-utt-length)");
  (*(*a2 + 24))(a2, v6, a1 + 148, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "adaptive-inter-utt-sil-min");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minimum value for adaptive inter-utt-sil ");
  (*(*a2 + 8))(a2, v6, a1 + 152, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "adaptive-inter-utt-sil-max");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum value for adaptive inter-utt-sil ");
  (*(*a2 + 8))(a2, v6, a1 + 156, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5137FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::EndPointDecoderConfig::registerParams(uint64_t a1, quasar::SystemConfig *this, const void **a3)
{
  quasar::SystemConfig::getPrefix(this, &v9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9.__r_.__value_.__l.__data_, a3, &__p);
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "model-file");
  std::string::basic_string[abi:ne200100]<0>(v6, "Endpoint model file");
  quasar::SystemConfig::Register<std::string>(this, &__p.__r_.__value_.__l.__data_, a1 + 40, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(v6, "sequence of features for endpoint model");
  quasar::SystemConfig::Register<std::string>(this, &__p.__r_.__value_.__l.__data_, a1 + 64, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(v6, "model is memory mapped");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 88, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "early-endpoint-threshold");
  std::string::basic_string[abi:ne200100]<0>(v6, "Threshold for early endpoint detection");
  quasar::SystemConfig::Register<float>(this, &__p.__r_.__value_.__l.__data_, a1, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "endpoint-threshold");
  std::string::basic_string[abi:ne200100]<0>(v6, "Threshold for final endpoint detection");
  quasar::SystemConfig::Register<float>(this, &__p.__r_.__value_.__l.__data_, a1 + 4, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "enable-acoustic-endpointer");
  std::string::basic_string[abi:ne200100]<0>(v6, "use the threshold only for acoustic endpointer score and ignore every other EP features");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 8, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pause-threshold-list");
  std::string::basic_string[abi:ne200100]<0>(v6, "Comma-separated list for pause-threshold vector, which is used for determining the pause-counts vector that is an endpointer feature. pause-counts[n] is the number of interword pauses >= pause-threshold[n]. For example, pause-threshold=[3,30,100] and pauses of 90 frames and 100 frames will result in pause-counts=[2,2,1].");
  quasar::SystemConfig::Register<std::string>(this, &__p.__r_.__value_.__l.__data_, a1 + 16, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "trailing-silence-limit");
  std::string::basic_string[abi:ne200100]<0>(v6, "An upper limit for trailing silence duration (milliseconds) after which recognizer should be forced to endpoint");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 92, v6, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pauses-as-BOOL");
  std::string::basic_string[abi:ne200100]<0>(v6, "Needs pause-threshold-list. If true, then pause-threshold vector is used to create a pause-counts vector,where pause-counts[n] is a BOOLean for asserting interword pauses >= pause-threshold[n]. For example, pause-threshold=[3,30,100] and pause of 90 frames will result in pause-counts=[1,1,0].");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 96, v6, 0, 22, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "extra-delay-ms");
  std::string::basic_string[abi:ne200100]<0>(v6, "Delaying the endpointer trigger decision by the given amount of time (in msec), when specified in recog request.");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 100, v6, 0, 55, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::setPrefix(this, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5138558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::LatticeBiglmFasterDecoderConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "max-total-tokens");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max total allocated tokens at any time.");
  (*(*a2 + 8))(a2, v6, a1 + 68, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-total-forward-links");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max total allocated forward links at any time.");
  (*(*a2 + 8))(a2, v6, a1 + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "state-min-arcs-cache");
  std::string::basic_string[abi:ne200100]<0>(__p, "Cache unpacked arcs for FST states with more than this many arcs");
  (*(*a2 + 8))(a2, v6, a1 + 80, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "memoize-emitting-arcs");
  std::string::basic_string[abi:ne200100]<0>(__p, "Compute emitting arcs only one per frame. Speeds up decoding when acoustic model output is sparse.");
  (**a2)(a2, v6, a1 + 84, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "acoustic-cost-cutoff");
  std::string::basic_string[abi:ne200100]<0>(__p, "Pruning threshold for acoustic model costs as neg log prob; smaller prunes more aggressively");
  (*(*a2 + 24))(a2, v6, a1 + 88, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lm-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Pruning threshold for acoustic model costs as neg log prob; smaller prunes more aggressively");
  (*(*a2 + 24))(a2, v6, a1 + 96, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "acoustic-max-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of scores to consider from the acoustic model");
  (*(*a2 + 8))(a2, v6, a1 + 92, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5138978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::LatticeBiglmFasterDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::LatticeFasterDecoderConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "small-lm-prune-beam-diff");
  std::string::basic_string[abi:ne200100]<0>(__p, "Pruning threshold for small LM before checking with big LM; smaller prunes more aggressively");
  (*(*a2 + 24))(a2, v6, a1 + 56, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5138A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::LatticeFasterDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  fst::DeterminizeLatticePhonePrunedOptions::Register(a1 + 44, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoding beam.");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoder max active states.");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoder minimum #active states.");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-active-v2");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoder minimum #active states. V2 has a tighter bound and we will ignore v1 when v2 is provided.");
  (*(*a2 + 8))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Lattice generation beam");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "prune-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "Interval (in frames) at which to prune tokens");
  (*(*a2 + 8))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "determinize-lattice");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, determinize the lattice (in a special sense, keeping only best pdf-sequence for each word-sequence).");
  (**a2)(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam-delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "Increment used in decoding-- this parameter is obscure and relates to a speedup in the way the max-active constraint is applied.  Larger is more accurate.");
  (*(*a2 + 24))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "hash-ratio");
  std::string::basic_string[abi:ne200100]<0>(__p, "Setting used in decoder to control hash behavior");
  (*(*a2 + 24))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-ins-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word insertion penalty applied to each word");
  (*(*a2 + 24))(a2, v6, a1 + 36, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5138F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void fst::DeterminizeLatticePhonePrunedOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "Tolerance used in determinization");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-mem");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum approximate memory usage in determinization (real usage might be many times this).");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "phone-determinize");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, do an initial pass of determinization on both phones and words (see also --word-determinize)");
  (**a2)(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-determinize");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, do a second pass of determinization on words only (see also --phone-determinize)");
  (**a2)(a2, v6, a1 + 9, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "minimize");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, push and minimize after determinization.");
  (**a2)(a2, v6, a1 + 10, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B513925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t kaldi::JoinVectorToString<std::string>(uint64_t *a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v5 + v6;
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, v11);
      ++v7;
      v5 = *a1;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v7 < v12)
      {
        v13 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a2, v13);
        v5 = *a1;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      }

      v6 += 24;
    }

    while (v7 < v12);
  }

  std::stringbuf::str();
  v16[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v17 = v14;
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v21);
}

void sub_1B51394CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_5::operator()(uint64_t *a1@<X0>, int **a2@<X1>, std::allocator<std::wstring> *a3@<X8>)
{
  v3 = *a1;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v12 = a3;
  if (v4 != v5)
  {
    v6 = (v3 + 552);
    do
    {
      v7 = *v4;
      if (!kaldi::quasar::CEDecoder::IsPrintable(*(v3 + 824), *v4))
      {
        goto LABEL_12;
      }

      v8 = *v6;
      if (!*v6)
      {
        goto LABEL_11;
      }

      v9 = v3 + 552;
      do
      {
        if (*(v8 + 28) >= v7)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 28) < v7));
      }

      while (v8);
      if (v9 == v6 || *(v9 + 28) > v7)
      {
LABEL_11:
        (*(**(v3 + 744) + 88))(__p);
      }

      else
      {
LABEL_12:
        std::string::basic_string[abi:ne200100]<0>(__p, "");
      }

      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v12, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1B5139600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

std::allocator<std::wstring> **std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](std::allocator<std::wstring> **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
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

    v20.__end_cap_.__value_ = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 1) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20.__first_ = v17;
    v20.__begin_ = v17;
    *(v4 + 1) = v8;
    v20.__end_ = v17;
    v18 = *(v4 + 2);
    *(v4 + 2) = 0;
    v20.__end_cap_.__value_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 1) = v8;
  return a1;
}

uint64_t std::pair<std::shared_ptr<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,std::shared_ptr<std::vector<quasar::Token>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((24 * v2), *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5));
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
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B51398E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<float,std::vector<int>>>::__assign_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<float,std::vector<int>>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<float,std::vector<int>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        std::pair<float,std::vector<int>>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 4;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v16 = *(v12 - 24);
      if (v16)
      {
        *(v12 - 16) = v16;
        operator delete(v16);
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        std::pair<float,std::vector<int>>::operator=[abi:ne200100](v8, v15);
        v15 += 32;
        v8 += 4;
        v14 -= 32;
      }

      while (v14);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>,std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(a1, v6 + v13, a3, v12);
  }
}

void std::vector<std::pair<float,std::vector<int>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<float,std::vector<int>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>,std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 8), *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 2);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<float,std::vector<int>>>,std::pair<float,std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<float,std::vector<int>>>,std::pair<float,std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::pair<float,std::vector<int>>::operator=[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 24 * (v4 >> 1);
  v7 = *v6;
  v8 = *(a2 - 24);
  if (*v6 >= v8)
  {
    if (v8 < v7)
    {
      return result;
    }

    v10 = *(v6 + 8);
    v9 = *(a2 - 16);
    if (v10 >= v9 && (v9 < v10 || *(v6 + 16) >= *(a2 - 8)))
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 - 16);
    v10 = *(v6 + 8);
  }

  v11 = *(a2 - 8);
  *(a2 - 24) = v7;
  *(a2 - 16) = v10;
  *(a2 - 8) = *(v6 + 16);
  if (v4 < 2)
  {
    goto LABEL_20;
  }

  v12 = result + 24 * (v4 >> 1);
  while (1)
  {
    v13 = v5 - 1;
    v5 = (v5 - 1) >> 1;
    v6 = result + 24 * v5;
    v14 = *v6;
    if (*v6 >= v8)
    {
      break;
    }

    v15 = *(v6 + 8);
LABEL_12:
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = *(v6 + 16);
    v12 = result + 24 * v5;
    if (v13 <= 1)
    {
      goto LABEL_20;
    }
  }

  if (v8 >= v14)
  {
    v15 = *(v6 + 8);
    if (v15 < v9 || v9 >= v15 && *(v6 + 16) < v11)
    {
      goto LABEL_12;
    }
  }

  v6 = v12;
LABEL_20:
  *v6 = v8;
  *(v6 + 8) = v9;
  *(v6 + 16) = v11;
  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 += 24 * v3 + 24;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 < a3)
    {
      v7 = *(a1 + 24);
      if (*a1 < v7 || v7 >= *a1 && ((v9 = *(a1 + 8), v10 = *(a1 + 32), v9 < v10) || v10 >= v9 && *(a1 + 16) < *(a1 + 40)))
      {
        a1 += 24;
        v3 = v6;
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
    *(v4 + 16) = *(a1 + 16);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t *std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<float &,std::vector<int>&>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 8), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 8) = v4 + 32;
  return result;
}

char *std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(char **a1, _DWORD *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(a1, v8);
  }

  v9 = 32 * v3;
  v16 = 0;
  v17 = v9;
  v18 = 32 * v3;
  v19 = 0;
  *v9 = *a2;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((32 * v3 + 8), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v10 = v18 + 32;
  v11 = a1[1] - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(&v16);
  return v10;
}

void sub_1B5139FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::rescore(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::unordered_map<std::vector<int>,std::shared_ptr<void>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::shared_ptr<void>>>> const&,int,std::function<int ()(int)>,float,float,std::set<int> const&)::$_2 &,std::__wrap_iter<std::pair<float,std::vector<int>> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = a3 - a1;
    v7 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - a1) >> 5)
    {
      v9 = v6 >> 4;
      v10 = (v6 >> 4) | 1;
      v11 = a1 + 32 * v10;
      v12 = v9 + 2;
      if (v12 < a2 && *v11 > *(v11 + 32))
      {
        v11 += 32;
        v10 = v12;
      }

      v13 = *a3;
      if (*v11 <= *a3)
      {
        v20 = *(a3 + 8);
        v14 = *(a3 + 24);
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 8) = 0;
        v15 = *v11;
        do
        {
          v16 = v4;
          v4 = v11;
          *v16 = v15;
          std::vector<int>::__move_assign((v16 + 2), (v11 + 8));
          if (v7 < v10)
          {
            break;
          }

          v17 = 2 * v10;
          v10 = (2 * v10) | 1;
          v11 = a1 + 32 * v10;
          v18 = v17 + 2;
          if (v18 < a2 && *v11 > *(v11 + 32))
          {
            v11 += 32;
            v10 = v18;
          }

          v15 = *v11;
        }

        while (*v11 <= v13);
        *v4 = v13;
        v19 = *(v4 + 8);
        if (v19)
        {
          *(v4 + 16) = v19;
          operator delete(v19);
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 8) = v20;
        *(v4 + 24) = v14;
      }
    }
  }
}

const void **std::vector<std::pair<float,std::vector<int>>>::__append(const void **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = &v4[32 * a2];
      do
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        *(v4 + 1) = 0;
        v4 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(result, v10);
    }

    v12 = 32 * v8;
    v13 = 32 * v8 + 32 * a2;
    v14 = 32 * v8;
    do
    {
      *v14 = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      v14 += 32;
    }

    while (v14 != v13);
    v15 = result[1] - *result;
    v16 = (v12 - v15);
    memcpy((v12 - v15), *result, v15);
    v17 = *v3;
    *v3 = v16;
    v3[1] = v13;
    v18 = v3[2];
    v3[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    return std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(v19);
  }

  return result;
}

uint64_t *std::vector<std::pair<float,std::vector<int>>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::pair<float,std::vector<int>>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 2);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v141 = *(v9 + 16);
                v142 = *(v9 + 4);
                v143 = *(a2 - 2);
                if (v141 <= v142)
                {
                  if (v143 <= v141)
                  {
                    return result;
                  }

                  v191 = *(v9 + 12);
                  *(v9 + 12) = *(a2 - 3);
                  *(a2 - 3) = v191;
                  v8 = (v9 + 20);
                  v192 = *(v9 + 20);
                  *(v9 + 16) = v143;
                  *(a2 - 2) = v141;
                  *(v9 + 20) = *(a2 - 1);
                  *(a2 - 1) = v192;
                  v193 = *(v9 + 16);
                  v194 = *(v9 + 4);
                  if (v193 <= v194)
                  {
                    return result;
                  }

                  v195 = *v9;
                  *v9 = *(v9 + 12);
                  *(v9 + 12) = v195;
                  *(v9 + 4) = v193;
                  *(v9 + 16) = v194;
                  v144 = (v9 + 8);
                }

                else
                {
                  v144 = (v9 + 8);
                  v145 = *v9;
                  if (v143 <= v141)
                  {
                    v204 = *(v9 + 8);
                    *v9 = *(v9 + 12);
                    *(v9 + 4) = v141;
                    v144 = (v9 + 20);
                    v205 = *(v9 + 20);
                    *(v9 + 16) = v142;
                    *(v9 + 8) = v205;
                    *(v9 + 12) = v145;
                    *(v9 + 20) = v204;
                    v206 = *(a2 - 2);
                    if (v206 <= v142)
                    {
                      return result;
                    }

                    *(v9 + 12) = *(a2 - 3);
                    *(a2 - 3) = v145;
                    *(v9 + 16) = v206;
                  }

                  else
                  {
                    *v9 = *(a2 - 3);
                    *(a2 - 3) = v145;
                    *(v9 + 4) = v143;
                  }

                  *(a2 - 2) = v142;
                }

                v207 = *v144;
                *v144 = *v8;
                *v8 = v207;
                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,0>(v9, (v9 + 12), (v9 + 24), a2 - 3);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,0>(v9, (v9 + 12), (v9 + 24), (v9 + 36));
                v121 = *(a2 - 2);
                v122 = *(v9 + 40);
                if (v121 > v122)
                {
                  v123 = *(v9 + 36);
                  *(v9 + 36) = *(a2 - 3);
                  *(a2 - 3) = v123;
                  *(v9 + 40) = v121;
                  *(a2 - 2) = v122;
                  v124 = *(v9 + 44);
                  *(v9 + 44) = *(a2 - 1);
                  *(a2 - 1) = v124;
                  v125 = *(v9 + 40);
                  v126 = *(v9 + 28);
                  if (v125 > v126)
                  {
                    v127 = *(v9 + 24);
                    v129 = *(v9 + 32);
                    v128 = *(v9 + 36);
                    *(v9 + 24) = v128;
                    *(v9 + 28) = v125;
                    *(v9 + 40) = v126;
                    v130 = *(v9 + 44);
                    *(v9 + 32) = v130;
                    *(v9 + 36) = v127;
                    v131 = *(v9 + 16);
                    *(v9 + 44) = v129;
                    if (v125 > v131)
                    {
                      v132 = *(v9 + 12);
                      *(v9 + 12) = v128;
                      *(v9 + 16) = v125;
                      *(v9 + 28) = v131;
                      v133 = *(v9 + 20);
                      *(v9 + 20) = v130;
                      *(v9 + 24) = v132;
                      *(v9 + 32) = v133;
                      v134 = *(v9 + 4);
                      if (v125 > v134)
                      {
                        v135 = *v9;
                        *v9 = v128;
                        *(v9 + 4) = v125;
                        *(v9 + 16) = v134;
                        v136 = *(v9 + 8);
                        *(v9 + 8) = v130;
                        *(v9 + 12) = v135;
                        *(v9 + 20) = v136;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v137 = *(a2 - 2);
              v138 = *(v9 + 4);
              if (v137 > v138)
              {
                v139 = *v9;
                *v9 = *(a2 - 3);
                *(a2 - 3) = v139;
                *(v9 + 4) = v137;
                *(a2 - 2) = v138;
                v140 = *(v9 + 8);
                *(v9 + 8) = *(a2 - 1);
                *(a2 - 1) = v140;
              }

              return result;
            }
          }

          if (v10 <= 287)
          {
            v146 = (v9 + 12);
            v148 = v9 == a2 || v146 == a2;
            if (a4)
            {
              if (!v148)
              {
                v149 = 0;
                v150 = v9;
                do
                {
                  v151 = v146;
                  v152 = *(v150 + 16);
                  if (v152 > *(v150 + 4))
                  {
                    v153 = *v146;
                    v154 = *(v150 + 20);
                    v155 = v149;
                    while (1)
                    {
                      v156 = (v9 + v155);
                      v156[3] = *(v9 + v155);
                      v156[4] = *(v9 + v155 + 4);
                      v156[5] = *(v9 + v155 + 8);
                      if (!v155)
                      {
                        break;
                      }

                      v155 -= 12;
                      if (v152 <= *(v156 - 2))
                      {
                        v157 = v9 + v155 + 12;
                        goto LABEL_140;
                      }
                    }

                    v157 = v9;
LABEL_140:
                    *v157 = v153;
                    *(v157 + 4) = v152;
                    *(v157 + 8) = v154;
                  }

                  v146 = v151 + 3;
                  v149 += 12;
                  v150 = v151;
                }

                while (v151 + 3 != a2);
              }
            }

            else if (!v148)
            {
              v196 = (v9 + 20);
              do
              {
                v197 = v146;
                v198 = *(v7 + 16);
                if (v198 > *(v7 + 4))
                {
                  v199 = *v146;
                  v200 = *(v7 + 20);
                  v201 = v196;
                  do
                  {
                    v202 = v201;
                    *(v201 - 2) = *(v201 - 5);
                    *(v201 - 1) = *(v201 - 4);
                    v203 = *(v201 - 3);
                    v201 -= 3;
                    *v202 = v203;
                  }

                  while (v198 > *(v202 - 7));
                  *(v201 - 2) = v199;
                  *(v201 - 1) = v198;
                  *v201 = v200;
                }

                v146 = v197 + 3;
                v196 += 3;
                v7 = v197;
              }

              while (v197 + 3 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v158 = (v11 - 2) >> 1;
              v159 = v158;
              do
              {
                v160 = v159;
                if (v158 >= v159)
                {
                  v161 = (2 * v159) | 1;
                  v162 = v9 + 12 * v161;
                  if (2 * v160 + 2 < v11 && *(v162 + 4) > *(v162 + 16))
                  {
                    v162 += 12;
                    v161 = 2 * v160 + 2;
                  }

                  v163 = v9 + 12 * v160;
                  v164 = *(v162 + 4);
                  v165 = *(v163 + 4);
                  if (v164 <= v165)
                  {
                    v166 = *v163;
                    v167 = *(v163 + 8);
                    do
                    {
                      v168 = v163;
                      v163 = v162;
                      *v168 = *v162;
                      *(v168 + 4) = v164;
                      *(v168 + 8) = *(v162 + 8);
                      if (v158 < v161)
                      {
                        break;
                      }

                      v169 = 2 * v161;
                      v161 = (2 * v161) | 1;
                      v162 = v9 + 12 * v161;
                      v170 = v169 + 2;
                      if (v170 < v11 && *(v162 + 4) > *(v162 + 16))
                      {
                        v162 += 12;
                        v161 = v170;
                      }

                      v164 = *(v162 + 4);
                    }

                    while (v164 <= v165);
                    *v163 = v166;
                    *(v163 + 4) = v165;
                    *(v163 + 8) = v167;
                  }
                }

                v159 = v160 - 1;
              }

              while (v160);
              v171 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
              do
              {
                v172 = 0;
                v173 = *v9;
                v174 = *(v9 + 4);
                v175 = *(v9 + 8);
                v176 = v9;
                do
                {
                  v177 = &v176[3 * v172];
                  v178 = (v177 + 3);
                  v179 = (2 * v172) | 1;
                  v172 = 2 * v172 + 2;
                  if (v172 >= v171)
                  {
                    v172 = v179;
                  }

                  else
                  {
                    v180 = v177[4];
                    v181 = v177[7];
                    v182 = (v177 + 6);
                    if (v180 <= v181)
                    {
                      v172 = v179;
                    }

                    else
                    {
                      v178 = v182;
                    }
                  }

                  *v176 = *v178;
                  v176[1] = *(v178 + 4);
                  result = *(v178 + 8);
                  v176[2] = result;
                  v176 = v178;
                }

                while (v172 <= ((v171 - 2) >> 1));
                if (v178 == a2 - 3)
                {
                  *v178 = v173;
                  *(v178 + 4) = v174;
                  *(v178 + 8) = v175;
                }

                else
                {
                  *v178 = *(a2 - 3);
                  *(v178 + 4) = *(a2 - 2);
                  *(v178 + 8) = *(a2 - 1);
                  *(a2 - 3) = v173;
                  *(a2 - 2) = v174;
                  *(a2 - 1) = v175;
                  v183 = v178 - v9 + 12;
                  if (v183 >= 13)
                  {
                    v184 = (-2 - 0x5555555555555555 * (v183 >> 2)) >> 1;
                    v185 = v9 + 12 * v184;
                    v186 = *(v185 + 4);
                    v187 = *(v178 + 4);
                    if (v186 > v187)
                    {
                      v188 = *v178;
                      v189 = *(v178 + 8);
                      do
                      {
                        result = v178;
                        v178 = v185;
                        *result = *v185;
                        *(result + 4) = v186;
                        *(result + 8) = *(v185 + 8);
                        if (!v184)
                        {
                          break;
                        }

                        v184 = (v184 - 1) >> 1;
                        v185 = v9 + 12 * v184;
                        v186 = *(v185 + 4);
                      }

                      while (v186 > v187);
                      *v178 = v188;
                      *(v178 + 4) = v187;
                      *(v178 + 8) = v189;
                    }
                  }
                }

                a2 -= 3;
              }

              while (v171-- > 2);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = (v9 + 12 * (v11 >> 1));
          v14 = *(a2 - 2);
          if (v10 >= 0x601)
          {
            v15 = v13[1];
            v16 = *(v9 + 4);
            if (v15 <= v16)
            {
              if (v14 <= v15 || (v23 = *v13, *v13 = *(a2 - 3), *(a2 - 3) = v23, v25 = v13 + 2, v24 = *(v13 + 2), v13[1] = v14, *(a2 - 2) = v15, v13[2] = *(a2 - 1), *(a2 - 1) = v24, v26 = v13[1], v27 = *(v9 + 4), v26 <= v27))
              {
LABEL_29:
                v39 = v9 + 12 * v12;
                v40 = v39 - 12;
                v41 = *(v39 - 8);
                v42 = *(v9 + 16);
                v43 = *(a2 - 5);
                if (v41 <= v42)
                {
                  if (v43 <= v41 || (v46 = *v40, *v40 = *(a2 - 6), *(a2 - 6) = v46, v48 = (v40 + 8), v47 = *(v40 + 8), *(v40 + 4) = v43, *(a2 - 5) = v41, *(v40 + 8) = *(a2 - 4), *(a2 - 4) = v47, v49 = *(v40 + 4), v50 = *(v9 + 16), v49 <= v50))
                  {
LABEL_42:
                    v60 = v9 + 12 * v12;
                    v61 = (v60 + 12);
                    v62 = *(v60 + 16);
                    v63 = *(v9 + 28);
                    v64 = *(a2 - 8);
                    if (v62 <= v63)
                    {
                      if (v64 > v62)
                      {
                        v67 = *v61;
                        *v61 = *(a2 - 9);
                        *(a2 - 9) = v67;
                        v69 = v61 + 2;
                        v68 = *(v61 + 2);
                        v61[1] = v64;
                        *(a2 - 8) = v62;
                        v61[2] = *(a2 - 7);
                        *(a2 - 7) = v68;
                        v62 = v61[1];
                        v70 = *(v9 + 28);
                        if (v62 > v70)
                        {
                          v71 = *(v9 + 24);
                          *(v9 + 24) = *v61;
                          *v61 = v71;
                          *(v9 + 28) = v62;
                          v61[1] = v70;
                          v66 = (v9 + 32);
LABEL_51:
                          v76 = *v66;
                          *v66 = *v69;
                          *v69 = v76;
                          v62 = v61[1];
                        }
                      }
                    }

                    else
                    {
                      v65 = *(v9 + 24);
                      if (v64 > v62)
                      {
                        v66 = (v9 + 32);
                        *(v9 + 24) = *(a2 - 9);
                        *(a2 - 9) = v65;
                        *(v9 + 28) = v64;
LABEL_50:
                        *(a2 - 8) = v63;
                        v69 = a2 - 7;
                        goto LABEL_51;
                      }

                      *(v9 + 24) = *v61;
                      *v61 = v65;
                      *(v9 + 28) = v62;
                      v66 = (v60 + 20);
                      v72 = *(v61 + 2);
                      v61[1] = v63;
                      v73 = *(v9 + 32);
                      *(v9 + 32) = v72;
                      *(v61 + 2) = v73;
                      v74 = *(a2 - 8);
                      if (v74 > v63)
                      {
                        v75 = *v61;
                        *v61 = *(a2 - 9);
                        *(a2 - 9) = v75;
                        v61[1] = v74;
                        goto LABEL_50;
                      }

                      v62 = v63;
                    }

                    v77 = v13[1];
                    v78 = *(v40 + 4);
                    if (v77 <= v78)
                    {
                      v79 = *v13;
                      if (v62 <= v77)
                      {
LABEL_62:
                        v87 = *v9;
                        *v9 = v79;
                        *v13 = v87;
                        v88 = *(v9 + 4);
                        *(v9 + 4) = v77;
                        *(v13 + 1) = v88;
                        v21 = (v9 + 8);
                        v31 = v13 + 2;
                        goto LABEL_63;
                      }

                      v82 = *v61;
                      *v13 = *v61;
                      *v61 = v79;
                      v13[1] = v62;
                      v61[1] = v77;
                      v81 = (v13 + 2);
                      v83 = *(v13 + 2);
                      v13[2] = v61[2];
                      *(v61 + 2) = v83;
                      if (v62 <= v78)
                      {
                        v77 = v62;
                        v79 = v82;
                        goto LABEL_62;
                      }

                      v84 = *v40;
                      *v40 = v82;
                      *v13 = v84;
                      *(v40 + 4) = v62;
                      v13[1] = v78;
                      v80 = (v40 + 8);
                    }

                    else
                    {
                      v80 = (v40 + 8);
                      v79 = *v40;
                      if (v62 <= v77)
                      {
                        *v40 = *v13;
                        *v13 = v79;
                        *(v40 + 4) = v77;
                        v13[1] = v78;
                        v80 = (v13 + 2);
                        v85 = *(v40 + 8);
                        *(v40 + 8) = v13[2];
                        *(v13 + 2) = v85;
                        if (v62 <= v78)
                        {
LABEL_61:
                          v77 = v78;
                          goto LABEL_62;
                        }

                        *v13 = *v61;
                        *v61 = v79;
                        v13[1] = v62;
                        v61[1] = v78;
                        v81 = (v61 + 2);
                        v78 = v62;
                      }

                      else
                      {
                        *v40 = *v61;
                        *v61 = v79;
                        *(v40 + 4) = v62;
                        v61[1] = v78;
                        v81 = (v61 + 2);
                        v78 = v77;
                      }
                    }

                    v86 = *v80;
                    *v80 = *v81;
                    *v81 = v86;
                    v79 = *v13;
                    goto LABEL_61;
                  }

                  v51 = *(v9 + 12);
                  *(v9 + 12) = *v40;
                  *v40 = v51;
                  *(v9 + 16) = v49;
                  *(v40 + 4) = v50;
                  v45 = (v9 + 20);
                }

                else
                {
                  v44 = *(v9 + 12);
                  if (v43 <= v41)
                  {
                    *(v9 + 12) = *v40;
                    *v40 = v44;
                    *(v9 + 16) = v41;
                    v45 = (v39 - 4);
                    v55 = *(v40 + 8);
                    *(v40 + 4) = v42;
                    v56 = *(v9 + 20);
                    *(v9 + 20) = v55;
                    *(v40 + 8) = v56;
                    v57 = *(a2 - 5);
                    if (v57 <= v42)
                    {
                      goto LABEL_42;
                    }

                    v58 = *v40;
                    *v40 = *(a2 - 6);
                    *(a2 - 6) = v58;
                    *(v40 + 4) = v57;
                  }

                  else
                  {
                    v45 = (v9 + 20);
                    *(v9 + 12) = *(a2 - 6);
                    *(a2 - 6) = v44;
                    *(v9 + 16) = v43;
                  }

                  *(a2 - 5) = v42;
                  v48 = a2 - 4;
                }

                v59 = *v45;
                *v45 = *v48;
                *v48 = v59;
                goto LABEL_42;
              }

              v28 = *v9;
              *v9 = *v13;
              *v13 = v28;
              *(v9 + 4) = v26;
              v13[1] = v27;
              v17 = (v9 + 8);
            }

            else
            {
              v17 = (v9 + 8);
              v18 = *v9;
              if (v14 <= v15)
              {
                *v9 = *v13;
                *v13 = v18;
                *(v9 + 4) = v15;
                v17 = (v13 + 2);
                v35 = *(v13 + 2);
                v13[1] = v16;
                v36 = *(v9 + 8);
                *(v9 + 8) = v35;
                *(v13 + 2) = v36;
                v37 = *(a2 - 2);
                if (v37 <= v16)
                {
                  goto LABEL_29;
                }

                *v13 = *(a2 - 3);
                *(a2 - 3) = v18;
                v13[1] = v37;
              }

              else
              {
                *v9 = *(a2 - 3);
                *(a2 - 3) = v18;
                *(v9 + 4) = v14;
              }

              *(a2 - 2) = v16;
              v25 = a2 - 1;
            }

            v38 = *v17;
            *v17 = *v25;
            *v25 = v38;
            goto LABEL_29;
          }

          v19 = *(v9 + 4);
          v20 = v13[1];
          if (v19 > v20)
          {
            v21 = (v13 + 2);
            v22 = *v13;
            if (v14 <= v19)
            {
              *v13 = *v9;
              *v9 = v22;
              v13[1] = v19;
              v21 = (v9 + 8);
              v52 = *(v9 + 8);
              *(v9 + 4) = v20;
              v53 = *(v13 + 2);
              *(v13 + 2) = v52;
              *(v9 + 8) = v53;
              v54 = *(a2 - 2);
              if (v54 <= v20)
              {
                goto LABEL_64;
              }

              *v9 = *(a2 - 3);
              *(a2 - 3) = v22;
              *(v9 + 4) = v54;
            }

            else
            {
              *v13 = *(a2 - 3);
              *(a2 - 3) = v22;
              v13[1] = v14;
            }

            *(a2 - 2) = v20;
            v31 = a2 - 1;
            goto LABEL_63;
          }

          if (v14 > v19)
          {
            v29 = *v9;
            *v9 = *(a2 - 3);
            *(a2 - 3) = v29;
            v31 = (v9 + 8);
            v30 = *(v9 + 8);
            *(v9 + 4) = v14;
            *(a2 - 2) = v19;
            *(v9 + 8) = *(a2 - 1);
            *(a2 - 1) = v30;
            v32 = *(v9 + 4);
            v33 = v13[1];
            if (v32 > v33)
            {
              v34 = *v13;
              *v13 = *v9;
              *v9 = v34;
              v13[1] = v32;
              *(v9 + 4) = v33;
              v21 = (v13 + 2);
LABEL_63:
              v89 = *v21;
              *v21 = *v31;
              *v31 = v89;
            }
          }

LABEL_64:
          --a3;
          if (a4)
          {
            break;
          }

          v91 = *(v9 + 4);
          v90 = *v9;
          if (*(v9 - 8) > v91)
          {
            goto LABEL_67;
          }

          if (v91 <= *(a2 - 2))
          {
            v110 = v9 + 12;
            do
            {
              v9 = v110;
              if (v110 >= a2)
              {
                break;
              }

              v111 = *(v110 + 4);
              v110 += 12;
            }

            while (v91 <= v111);
          }

          else
          {
            v108 = v9;
            do
            {
              v9 = v108 + 12;
              v109 = *(v108 + 16);
              v108 += 12;
            }

            while (v91 <= v109);
          }

          v112 = a2;
          if (v9 < a2)
          {
            v113 = a2;
            do
            {
              v112 = v113 - 3;
              v114 = *(v113 - 2);
              v113 -= 3;
            }

            while (v91 > v114);
          }

          v115 = *(v7 + 8);
          while (v9 < v112)
          {
            v116 = *v9;
            *v9 = *v112;
            *v112 = v116;
            v117 = *(v9 + 4);
            *(v9 + 4) = v112[1];
            *(v112 + 1) = v117;
            v118 = *(v9 + 8);
            *(v9 + 8) = v112[2];
            *(v112 + 2) = v118;
            do
            {
              v119 = *(v9 + 16);
              v9 += 12;
            }

            while (v91 <= v119);
            do
            {
              v120 = *(v112 - 2);
              v112 -= 3;
            }

            while (v91 > v120);
          }

          if (v9 - 12 != v7)
          {
            *v7 = *(v9 - 12);
            *(v7 + 4) = *(v9 - 8);
            *(v7 + 8) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 12) = v90;
          *(v9 - 8) = v91;
          *(v9 - 4) = v115;
        }

        v90 = *v9;
        v91 = *(v9 + 4);
LABEL_67:
        v92 = 0;
        v93 = *(v9 + 8);
        do
        {
          v94 = *(v9 + v92 + 16);
          v92 += 12;
        }

        while (v94 > v91);
        v95 = v9 + v92;
        v96 = a2;
        if (v92 == 12)
        {
          v99 = a2;
          while (v95 < v99)
          {
            v97 = v99 - 3;
            v100 = *(v99 - 2);
            v99 -= 3;
            if (v100 > v91)
            {
              goto LABEL_77;
            }
          }

          v97 = v99;
        }

        else
        {
          do
          {
            v97 = v96 - 3;
            v98 = *(v96 - 2);
            v96 -= 3;
          }

          while (v98 <= v91);
        }

LABEL_77:
        v9 = v95;
        if (v95 < v97)
        {
          v101 = v97;
          do
          {
            v102 = *v9;
            *v9 = *v101;
            *v101 = v102;
            v103 = *(v9 + 4);
            *(v9 + 4) = v101[1];
            *(v101 + 1) = v103;
            v104 = *(v9 + 8);
            *(v9 + 8) = v101[2];
            *(v101 + 2) = v104;
            do
            {
              v105 = *(v9 + 16);
              v9 += 12;
            }

            while (v105 > v91);
            do
            {
              v106 = *(v101 - 2);
              v101 -= 3;
            }

            while (v106 <= v91);
          }

          while (v9 < v101);
        }

        if (v9 - 12 != v7)
        {
          *v7 = *(v9 - 12);
          *(v7 + 4) = *(v9 - 8);
          *(v7 + 8) = *(v9 - 4);
        }

        *(v9 - 12) = v90;
        *(v9 - 8) = v91;
        *(v9 - 4) = v93;
        if (v95 >= v97)
        {
          break;
        }

LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,false>(v7, (v9 - 12), a3, a4 & 1);
        a4 = 0;
      }

      v107 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *>(v7, (v9 - 12));
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v107)
      {
        goto LABEL_88;
      }
    }

    a2 = (v9 - 12);
    if (!v107)
    {
      continue;
    }

    return result;
  }
}

float *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = *(a2 + 1);
  v5 = *(result + 1);
  v6 = *(a3 + 1);
  if (*&v4 <= *&v5)
  {
    if (*&v6 <= *&v4)
    {
      v4 = *(a3 + 1);
      goto LABEL_12;
    }

    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    v11 = (a2 + 2);
    v10 = *(a2 + 2);
    a2[1] = *&v6;
    a3[1] = *&v4;
    a2[2] = a3[2];
    *(a3 + 2) = v10;
    v12 = a2[1];
    v13 = result[1];
    if (v12 > v13)
    {
      v14 = *result;
      *result = *a2;
      *a2 = v14;
      result[1] = v12;
      a2[1] = v13;
      v7 = (result + 2);
      v5 = *(a3 + 1);
LABEL_10:
      v18 = *v7;
      *v7 = *v11;
      *v11 = v18;
      v4 = v5;
    }
  }

  else
  {
    v7 = (result + 2);
    v8 = *result;
    if (*&v6 > *&v4)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = *&v6;
LABEL_9:
      a3[1] = *&v5;
      v11 = (a3 + 2);
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = *&v4;
    v7 = (a2 + 2);
    v15 = *(a2 + 2);
    a2[1] = *&v5;
    v16 = *(result + 2);
    *(result + 2) = v15;
    *(a2 + 2) = v16;
    v4 = *(a3 + 1);
    if (*&v4 > *&v5)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = *&v4;
      goto LABEL_9;
    }
  }

LABEL_12:
  v19 = a4[1];
  if (v19 > *&v4)
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    a3[1] = v19;
    a4[1] = *&v4;
    v21 = *(a3 + 2);
    a3[2] = a4[2];
    *(a4 + 2) = v21;
    v22 = a3[1];
    v23 = a2[1];
    if (v22 > v23)
    {
      v24 = *a2;
      *a2 = *a3;
      *a3 = v24;
      a2[1] = v22;
      a3[1] = v23;
      v25 = *(a2 + 2);
      a2[2] = a3[2];
      *(a3 + 2) = v25;
      v26 = a2[1];
      v27 = result[1];
      if (v26 > v27)
      {
        v28 = *result;
        *result = *a2;
        *a2 = v28;
        result[1] = v26;
        a2[1] = v27;
        v29 = *(result + 2);
        result[2] = a2[2];
        *(a2 + 2) = v29;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *>(uint64_t a1, int *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v25 = *(a1 + 16);
      v26 = *(a1 + 4);
      v27 = *(a2 - 2);
      if (v25 <= v26)
      {
        if (v27 <= v25)
        {
          return 1;
        }

        v35 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 3);
        *(a2 - 3) = v35;
        v37 = (a1 + 20);
        v36 = *(a1 + 20);
        *(a1 + 16) = v27;
        *(a2 - 2) = v25;
        *(a1 + 20) = *(a2 - 1);
        *(a2 - 1) = v36;
        v38 = *(a1 + 16);
        v39 = *(a1 + 4);
        if (v38 <= v39)
        {
          return 1;
        }

        v40 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 12) = v40;
        *(a1 + 4) = v38;
        *(a1 + 16) = v39;
        v28 = (a1 + 8);
      }

      else
      {
        v28 = (a1 + 8);
        v29 = *a1;
        if (v27 <= v25)
        {
          v46 = *(a1 + 8);
          *a1 = *(a1 + 12);
          *(a1 + 4) = v25;
          v28 = (a1 + 20);
          v47 = *(a1 + 20);
          *(a1 + 16) = v26;
          *(a1 + 8) = v47;
          *(a1 + 12) = v29;
          *(a1 + 20) = v46;
          v48 = *(a2 - 2);
          if (v48 <= v26)
          {
            return 1;
          }

          *(a1 + 12) = *(a2 - 3);
          *(a2 - 3) = v29;
          *(a1 + 16) = v48;
        }

        else
        {
          *a1 = *(a2 - 3);
          *(a2 - 3) = v29;
          *(a1 + 4) = v27;
        }

        *(a2 - 2) = v26;
        v37 = a2 - 1;
      }

      v49 = *v28;
      *v28 = *v37;
      *v37 = v49;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,0>(a1, (a1 + 12), (a1 + 24), (a1 + 36));
        v9 = *(a2 - 2);
        v10 = *(a1 + 40);
        if (v9 > v10)
        {
          v11 = *(a1 + 36);
          *(a1 + 36) = *(a2 - 3);
          *(a2 - 3) = v11;
          *(a1 + 40) = v9;
          *(a2 - 2) = v10;
          v12 = *(a1 + 44);
          *(a1 + 44) = *(a2 - 1);
          *(a2 - 1) = v12;
          v13 = *(a1 + 40);
          v14 = *(a1 + 28);
          if (v13 > v14)
          {
            v15 = *(a1 + 24);
            v17 = *(a1 + 32);
            v16 = *(a1 + 36);
            *(a1 + 24) = v16;
            *(a1 + 28) = v13;
            *(a1 + 40) = v14;
            v18 = *(a1 + 44);
            *(a1 + 32) = v18;
            *(a1 + 36) = v15;
            v19 = *(a1 + 16);
            *(a1 + 44) = v17;
            if (v13 > v19)
            {
              v20 = *(a1 + 12);
              *(a1 + 12) = v16;
              *(a1 + 16) = v13;
              *(a1 + 28) = v19;
              v21 = *(a1 + 20);
              *(a1 + 20) = v18;
              *(a1 + 24) = v20;
              *(a1 + 32) = v21;
              v22 = *(a1 + 4);
              if (v13 > v22)
              {
                v23 = *a1;
                *a1 = v16;
                *(a1 + 4) = v13;
                *(a1 + 16) = v22;
                v24 = *(a1 + 8);
                *(a1 + 8) = v18;
                *(a1 + 12) = v23;
                *(a1 + 20) = v24;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,0>(a1, (a1 + 12), (a1 + 24), a2 - 3);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *(a1 + 4);
    if (v5 > v6)
    {
      v7 = *a1;
      *a1 = *(a2 - 3);
      *(a2 - 3) = v7;
      *(a1 + 4) = v5;
      *(a2 - 2) = v6;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v30 = *(a1 + 16);
  v31 = *(a1 + 4);
  v32 = *(a1 + 28);
  if (v30 > v31)
  {
    v33 = (a1 + 8);
    v34 = *a1;
    if (v32 <= v30)
    {
      v50 = *(a1 + 8);
      *a1 = *(a1 + 12);
      *(a1 + 4) = v30;
      *(a1 + 16) = v31;
      v33 = (a1 + 20);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v34;
      *(a1 + 20) = v50;
      if (v32 <= v31)
      {
        goto LABEL_35;
      }

      *(a1 + 12) = *(a1 + 24);
      *(a1 + 24) = v34;
      *(a1 + 16) = v32;
    }

    else
    {
      *a1 = *(a1 + 24);
      *(a1 + 24) = v34;
      *(a1 + 4) = v32;
    }

    *(a1 + 28) = v31;
    v41 = (a1 + 32);
    goto LABEL_34;
  }

  if (v32 > v30)
  {
    v41 = (a1 + 20);
    v42 = *(a1 + 20);
    v43 = *(a1 + 12);
    v44 = *(a1 + 24);
    *(a1 + 12) = v44;
    *(a1 + 16) = v32;
    *(a1 + 28) = v30;
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v43;
    *(a1 + 32) = v42;
    if (v32 > v31)
    {
      v45 = *a1;
      *a1 = v44;
      *(a1 + 12) = v45;
      *(a1 + 4) = v32;
      *(a1 + 16) = v31;
      v33 = (a1 + 8);
LABEL_34:
      v51 = *v33;
      *v33 = *v41;
      *v41 = v51;
    }
  }

LABEL_35:
  v52 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  v55 = (a1 + 24);
  while (1)
  {
    v56 = v52[1];
    if (v56 > v55[1])
    {
      v57 = *v52;
      v58 = *(v52 + 2);
      v59 = v53;
      while (1)
      {
        v60 = a1 + v59;
        *(v60 + 36) = *(a1 + v59 + 24);
        *(v60 + 40) = *(a1 + v59 + 28);
        *(v60 + 44) = *(a1 + v59 + 32);
        if (v59 == -24)
        {
          break;
        }

        v59 -= 12;
        if (v56 <= *(v60 + 16))
        {
          v61 = a1 + v59 + 36;
          goto LABEL_43;
        }
      }

      v61 = a1;
LABEL_43:
      *v61 = v57;
      *(v61 + 4) = v56;
      *(v61 + 8) = v58;
      if (++v54 == 8)
      {
        return v52 + 3 == a2;
      }
    }

    v55 = v52;
    v53 += 12;
    v52 += 3;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::vector<std::pair<float,std::vector<int>>>::__init_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<float,std::vector<int>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B513B7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::pair<float,std::vector<int>> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v3 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 8) = v3 + 32;
  return result;
}

char *std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<std::pair<float,std::vector<int>> const&>(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = 32 * v2;
  v18 = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((32 * v2 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v9 = v17 + 32;
  v10 = a1[1] - *a1;
  v11 = &v16[-v10];
  memcpy(&v16[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(&v15);
  return v9;
}

void sub_1B513B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        kaldi::Vector<float>::Destroy(v7);
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 170;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void std::deque<kaldi::Vector<float>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v9);
}

void sub_1B513BC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<kaldi::quasar::CEDecoder>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF268;
  kaldi::quasar::CEDecoder::CEDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::CEDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::CTCLabelScorer>::__shared_ptr_emplace[abi:ne200100]<int &,int,int,float &,float &,int &,std::allocator<kaldi::CTCLabelScorer>,0>(void *a1, int *a2, int *a3, int *a4, float *a5, float *a6, int *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF2B8;
  kaldi::CTCLabelScorer::CTCLabelScorer((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, 0.00001);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::CTCLabelScorer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF2B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::CTCLabelScorer::~CTCLabelScorer(kaldi::CTCLabelScorer *this)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 888);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](this + 105);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](this + 99);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](this + 93);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](this + 87);
  v2 = *(this + 84);
  if (v2)
  {
    *(this + 85) = v2;
    operator delete(v2);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 624);
  kaldi::CuVector<float>::~CuVector(this + 74);
  kaldi::CuMatrix<float>::~CuMatrix(this + 544);
  kaldi::CuMatrix<float>::~CuMatrix(this + 496);
  kaldi::CuMatrix<float>::~CuMatrix(this + 448);
  kaldi::CuMatrix<float>::~CuMatrix(this + 400);
  kaldi::CuMatrix<float>::~CuMatrix(this + 352);
  kaldi::CuMatrix<float>::~CuMatrix(this + 304);
  kaldi::CuMatrix<float>::~CuMatrix(this + 256);
  kaldi::CuMatrix<float>::~CuMatrix(this + 208);
  kaldi::CuMatrix<float>::~CuMatrix(this + 160);
  kaldi::CuMatrix<float>::~CuMatrix(this + 112);
  kaldi::CuMatrix<float>::~CuMatrix(this + 64);
  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x55];
    v7 = v2[(a1[5] + v5) / 0x55] + 48 * ((a1[5] + v5) % 0x55);
    if (*v6 + 48 * (v5 % 0x55) != v7)
    {
      v8 = *v6 + 48 * (v5 % 0x55);
      do
      {
        v9 = *v8;
        v8 += 48;
        (*(v9 + 16))();
        if (v8 - *v6 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 42;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 85;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst11SymbolTableENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF308;
  fst::SymbolTable::SymbolTable((a1 + 3));
}

void std::__shared_ptr_emplace<fst::SymbolTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::SymbolTable>,quasar::TextEncoding,std::allocator<quasar::QsrTextSymbolTable>,0>(void *a1, uint64_t *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD0D0;
  std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<fst::SymbolTable>,quasar::TextEncoding>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<fst::SymbolTable>,quasar::TextEncoding>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v6 = *a4;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = v5;
  *(a2 + 104) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a2 + 112) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(a2 + 112) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEEC2B8ne200100IJESC_Li0EEESC_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF358;
  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst(a1 + 3);
}

void std::__shared_ptr_emplace<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__value_func<float ()(std::pair<float,std::vector<int>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0>,float ()(std::pair<float,std::vector<int>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<float ()(std::pair<float,std::vector<int>> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1B513C99C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1>,float ()(std::pair<float,std::vector<int>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2CFF438;
  a2[1] = v2;
  return result;
}

float std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1>,float ()(std::pair<float,std::vector<int>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = (*(a2 + 16) - *(a2 + 8)) >> 2;
  v4 = *(*(a1 + 8) + 8) - **(a1 + 8);
  if (v3 != v4 >> 2)
  {
    return result / (v3 - (v4 >> 2));
  }

  return result;
}

uint64_t std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_1>,float ()(std::pair<float,std::vector<int>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<quasar::SecondPassEncoderCacheView>::__shared_ptr_emplace[abi:ne200100]<quasar::AEDBeamSearchDecoder &,quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,int &,int &,std::allocator<quasar::SecondPassEncoderCacheView>,0>(void *a1, uint64_t a2, kaldi::OnlineFeatureMatrix **a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF4B8;
  quasar::SecondPassEncoderCacheView::SecondPassEncoderCacheView((a1 + 3), a2, a3, a4, a5, *a6, *a7);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SecondPassEncoderCacheView>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::FirstPassEncoderCacheView>::__shared_ptr_emplace[abi:ne200100]<quasar::AEDBeamSearchDecoder &,quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::allocator<quasar::FirstPassEncoderCacheView>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, quasar::SpeechRequestData **a5, BOOL a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF508;
  quasar::FirstPassEncoderCacheView::FirstPassEncoderCacheView(a1 + 3, a2, a3, a4, a5, a6);
}

void std::__shared_ptr_emplace<quasar::FirstPassEncoderCacheView>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

__n128 std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2>,std::string ()(std::vector<std::pair<float,std::vector<int>>>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2CFF558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2>,std::string ()(std::vector<std::pair<float,std::vector<int>>>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<float ()(std::pair<float,std::vector<int>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3>,void ()(std::vector<int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2CFF5E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3>,void ()(std::vector<int> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  if (*(*(a1 + 8) + 561) == 1 && (*(*(a1 + 16) + 1188) & 1) == 0)
  {
    v3 = *(a1 + 24);
    v4 = *v3;
    quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_5::operator()(v3 + 1, &__p, &v15);
    if (*(v3 + 17) == 1)
    {
      quasar::addSeparatorForCjkWordPieces(&v15, v12);
      std::vector<std::string>::__vdeallocate(&v15);
      v15 = v12[0];
      memset(v12, 0, 24);
      __str.__r_.__value_.__r.__words[0] = v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    }

    kaldi::JoinVectorToString<std::string>(&v15, "");
    memset(&v11, 0, sizeof(v11));
    if (*(v4 + 537) != 1)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v12, (v4 + 696), 0);
    }

    quasar::wordPieceSequenceToWords(v12, &__str, *(v3 + 16), (v4 + 696));
    std::vector<std::string>::__vdeallocate(&v11);
    v11 = v12[0];
    memset(v12, 0, 24);
    *&v13 = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (*(v3 + 17) == 1)
    {
      quasar::splitOnSeparatorForCjkWordPieces(&v11, v12);
      std::vector<std::string>::__vdeallocate(&v11);
      v11 = v12[0];
      memset(v12, 0, 24);
      *&v13 = v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v12[0].__loc_.__locale_ = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
    v5 = **(a1 + 32);
    v6 = *(v5 + 576);
    v7 = *(**(a1 + 40) + 12);
    memset(v12, 0, 24);
    memset(&v15, 0, sizeof(v15));
    memset(&__str, 0, sizeof(__str));
    (*(*v6 + 24))(v6, &v11, v7, 1, 0, 0, v12, &v15, &__str, 0, v5 + 1152);
    *&v13 = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    __str.__r_.__value_.__r.__words[0] = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    v15.__begin_ = v12;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v15);
    v12[0].__loc_.__locale_ = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1B513D3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19)
{
  a19.__locale_ = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  a19.__locale_ = (v19 - 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3,std::allocator<quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_3>,void ()(std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<quasar::CTCAlignedDecoderContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::CTCAlignedDecoderContext>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>>>::~__hash_table(a1 + 88);
  std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::~__hash_table(a1 + 48);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<int> const,std::vector<quasar::Token>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::shared_ptr<void>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<int> const,std::shared_ptr<void>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<int> const,std::shared_ptr<void>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void *std::__shared_ptr_emplace<quasar::ArithmeticMean>::__shared_ptr_emplace[abi:ne200100]<std::vector<int> &,kaldi::CuMatrix<float> &,std::allocator<quasar::ArithmeticMean>,0>(void *a1, int **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF6C8;
  quasar::ConfidenceReducer::ConfidenceReducer(a1 + 3, a2, a3);
  a1[3] = &unk_1F2D37F00;
  return a1;
}

void std::__shared_ptr_emplace<quasar::ArithmeticMean>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF6C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__value_func<int ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void fst::Factor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a2 + 224))(a2);
  if (((*(*a1 + 24))(a1) & 0x80000000) == 0)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v60 = &v61;
    fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DfsOrderVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, &v60, 0);
    v6 = v61;
    v7 = v61 + 1;
    if (v61 != v62 && v7 != v62)
    {
      v9 = *v61;
      v10 = v61 + 1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        v13 = v9 < v12;
        if (v9 <= v12)
        {
          v9 = v11;
        }

        if (v13)
        {
          v6 = v7;
        }

        v7 = v10;
      }

      while (v10 != v62);
    }

    v14 = *v6;
    memset(&v59, 0, sizeof(v59));
    fst::GetStateProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, v14, &v59);
    v15 = v14 + 1;
    std::vector<BOOL>::vector(&v58, v15);
    if ((v14 & 0x80000000) == 0)
    {
      v16 = 0;
      begin = v59.__begin_;
      v18 = v58;
      do
      {
        v19 = begin[v16];
        v20 = &v18[8 * (v16 >> 6)];
        v21 = 1 << v16;
        if (v19 == 20 || v19 == 148)
        {
          v22 = *v20 | v21;
        }

        else
        {
          v22 = *v20 & ~v21;
        }

        *v20 = v22;
        ++v16;
      }

      while (v15 != v16);
    }

    std::vector<int>::vector[abi:ne200100](v57, v15, &fst::kNoStateId);
    v54 = 0u;
    v55 = 0u;
    v56 = 1065353216;
    __p = 0;
    v49 = 0;
    v50 = 0;
    p_p = &__p;
    *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(&v54, &__p, &std::piecewise_construct) + 10) = 0;
    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    memset(&v53, 0, sizeof(v53));
    v24 = v61;
    if (v62 != v61)
    {
      v41 = a3;
      v25 = 0;
      v26 = 1;
      while (1)
      {
        v27 = *&v24[4 * v25];
        if ((*&v58[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v27))
        {
          goto LABEL_63;
        }

        v28 = v57[0];
        if (*(v57[0] + v27) == -1)
        {
          v28[v27] = (*(*a2 + 200))(a2);
        }

        v52 = 0;
        (*(*a1 + 136))(a1, v27, &__p);
        while (1)
        {
          if (!__p)
          {
            if (v52 >= v50)
            {
              goto LABEL_58;
            }

LABEL_32:
            v29 = &v49[20 * v52];
            goto LABEL_33;
          }

          if ((*(*__p + 24))(__p))
          {
            break;
          }

          if (!__p)
          {
            goto LABEL_32;
          }

          v29 = (*(*__p + 32))();
LABEL_33:
          v45 = *v29;
          v46 = v29[1];
          v30 = v29[2].i32[0];
          v47 = v30;
          if (v45.i32[0])
          {
            std::vector<int>::resize(&v53, 1uLL);
            *v53.__begin_ = v45.i32[0];
            v30 = v47;
          }

          else
          {
            v53.__end_ = v53.__begin_;
          }

          for (i = v30; ((*&v58[(i >> 3) & 0x1FFFFFFFFFFFFFF8] >> i) & 1) != 0; i = v47)
          {
            (*(*a1 + 136))(a1);
            if (p_p)
            {
              v32 = (*(p_p->__begin_ + 4))(p_p);
            }

            else
            {
              v32 = v43;
            }

            v46 = vadd_f32(v46, v32[1]);
            if (v32->i32[0])
            {
              std::vector<int>::push_back[abi:ne200100](&v53.__begin_, v32);
            }

            v47 = v32[2].i32[0];
            if (p_p)
            {
              (*(p_p->__begin_ + 1))(p_p);
            }

            else if (v44)
            {
              --*v44;
            }
          }

          v33 = v57[0];
          v34 = *(v57[0] + i);
          if (v34 == -1)
          {
            v34 = (*(*a2 + 200))(a2);
            v33[i] = v34;
          }

          v47 = v34;
          p_p = &v53;
          if (std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::find<std::vector<int>>(&v54, &v53.__begin_))
          {
            v35 = *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(&v54, &v53.__begin_, &std::piecewise_construct) + 10);
          }

          else
          {
            *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(&v54, &v53.__begin_, &std::piecewise_construct) + 10) = v26;
            v35 = v26++;
          }

          v45.i32[0] = v35;
          (*(*a2 + 208))(a2, v28[v27], &v45);
          if (__p)
          {
            (*(*__p + 40))(__p);
          }

          else
          {
            ++v52;
          }
        }

        if (__p)
        {
          (*(*__p + 8))();
          goto LABEL_60;
        }

LABEL_58:
        if (v51)
        {
          --*v51;
        }

LABEL_60:
        (*(*a1 + 32))(&__p, a1, v27);
        v45.i32[0] = HIDWORD(__p);
        LODWORD(p_p) = __p;
        v65 = 2139095040;
        v64 = INFINITY;
        v23.n128_u32[0] = __p;
        if (*&__p != INFINITY || (v23.n128_u32[0] = v45.i32[0], v45.f32[0] != v64))
        {
          v36 = v28[v27];
          (*(*a1 + 32))(&__p, a1, v27, v23);
          (*(*a2 + 184))(a2, v36, &__p);
        }

LABEL_63:
        ++v25;
        v24 = v61;
        if (v25 >= v62 - v61)
        {
          v37 = v26;
          a3 = v41;
          goto LABEL_66;
        }
      }
    }

    v37 = 1;
LABEL_66:
    v38 = (*(*a1 + 24))(a1, v23);
    (*(*a2 + 176))(a2, *(v57[0] + v38));
    std::vector<std::vector<int>>::resize(a3, v37);
    for (j = v55; j; j = *j)
    {
      v40 = (*a3 + 24 * *(j + 10));
      if (v40 != (j + 2))
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v40, j[2], j[3], (j[3] - j[2]) >> 2);
      }
    }

    if (v53.__begin_)
    {
      v53.__end_ = v53.__begin_;
      operator delete(v53.__begin_);
    }

    std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(&v54);
    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    if (v58)
    {
      operator delete(v58);
    }

    if (v59.__begin_)
    {
      v59.__end_ = v59.__begin_;
      operator delete(v59.__begin_);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }
  }
}

void sub_1B513E168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(&a27);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  v35 = *(v33 - 176);
  if (v35)
  {
    operator delete(v35);
  }

  v36 = *(v33 - 152);
  if (v36)
  {
    *(v33 - 144) = v36;
    operator delete(v36);
  }

  v37 = *(v33 - 120);
  if (v37)
  {
    *(v33 - 112) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::Invert<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  if ((*(*a1 + 112))(a1))
  {
    v2 = (*(*a1 + 112))(a1);
    v3 = (*(*v2 + 16))(v2);
  }

  else
  {
    v3 = 0;
  }

  if ((*(*a1 + 120))(a1))
  {
    v4 = (*(*a1 + 120))(a1);
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
    v5 = 0;
  }

  fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::InvertMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1);
  (*(*a1 + 280))(a1, v5);
  result = (*(*a1 + 288))(a1, v3);
  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void fst::TopSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  v2 = 0;
  v1[0] = __p;
  v1[1] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v1, 0);
}

void sub_1B513E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::GetStateProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, int a2, std::vector<char> *a3)
{
  a3->__end_ = a3->__begin_;
  result = (*(*a1 + 24))(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = a2 + 1;
  __x[0] = 0;
  v8 = a3->__end_ - a3->__begin_;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      a3->__end_ = &a3->__begin_[v7];
    }
  }

  else
  {
    std::vector<char>::__append(a3, v7 - v8, __x);
  }

  result = (*(*a1 + 24))(a1);
  a3->__begin_[result] |= 2u;
  if (a2 < 0)
  {
    return result;
  }

  v9 = 0;
  do
  {
    begin = a3->__begin_;
    v20 = 0;
    (*(*a1 + 136))(a1, v9, __x);
    while (1)
    {
      if (!*__x)
      {
        if (v20 >= v18)
        {
          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if ((*(**__x + 24))(*__x))
      {
        break;
      }

      if (*__x)
      {
        v11 = (*(**__x + 32))();
        goto LABEL_15;
      }

LABEL_14:
      v11 = (v17 + 20 * v20);
LABEL_15:
      v12 = begin[v9];
      if (*v11)
      {
        v12 |= 0x80u;
        begin[v9] = v12;
      }

      if (v11[1])
      {
        v12 |= 0x40u;
        begin[v9] = v12;
      }

      v13 = v11[4];
      v14 = a3->__begin_;
      if ((v12 & 0x10) != 0)
      {
        v12 |= 0x20u;
        begin[v9] = v12;
      }

      begin[v9] = v12 | 0x10;
      v15 = v14[v13];
      if ((v15 & 4) != 0)
      {
        v15 |= 8u;
        v14[v13] = v15;
      }

      v14[v13] = v15 | 4;
      if (*__x)
      {
        (*(**__x + 40))(*__x);
      }

      else
      {
        ++v20;
      }
    }

    if (*__x)
    {
      (*(**__x + 8))();
      goto LABEL_30;
    }

LABEL_28:
    if (v19)
    {
      --*v19;
    }

LABEL_30:
    result = (*(*a1 + 32))(__x, a1, v9);
    v24 = *__x;
    v23 = *&__x[4];
    v22 = 2139095040;
    v21 = INFINITY;
    if (*__x != INFINITY || v23 != v21)
    {
      begin[v9] |= 1u;
    }

    ++v9;
  }

  while (v9 != v7);
  return result;
}

void sub_1B513E870(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a13)
  {
    --*a13;
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DfsOrderVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  if ((*(*a1 + 24))(a1) != -1)
  {
    memset(&v7, 0, sizeof(v7));
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MemoryPool(v3, 64);
  }
}

void sub_1B513EF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v15 = *(v13 - 112);
  if (v15)
  {
    *(v13 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::find<std::vector<int>>(void *a1, const void **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v4 == v14)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v14 >= *&v7)
          {
            v14 %= *&v7;
          }
        }

        else
        {
          v14 &= *&v7 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::InvertMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1)
{
  (*(*a1 + 280))(a1, 0);
  (*(*a1 + 288))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v3 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v4 = 0;
      do
      {
        (*(*a1 + 296))(a1, v4, &v11);
        while (!(*(*v11 + 24))(v11))
        {
          v5 = (*(*v11 + 32))(v11);
          v6 = v5[2].i32[0];
          v7 = v5[1];
          v9[0] = vrev64_s32(*v5);
          v9[1] = v7;
          v10 = v6;
          (*(*v11 + 88))(v11, v9);
          (*(*v11 + 40))(v11);
        }

        if (v11)
        {
          (*(*v11 + 8))();
        }

        (*(*a1 + 32))(v9, a1, v4);
        (*(*a1 + 184))(a1, v4, v9);
        v4 = (v4 + 1);
      }

      while (v4 < (*(*a1 + 160))(a1));
    }

    v8 = fst::InvertProperties(v3);
    return (*(*a1 + 192))(a1, v8, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B513F504(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::StateSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, void *a2)
{
  v4 = a2[1] - *a2;
  if ((*(*a1 + 160))(a1) != v4 >> 2)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v27 = fst::LogMessage::LogMessage(v48, &__p);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "StateSort: bad order vector size: ", 34);
    MEMORY[0x1B8C84C30](v29, (a2[1] - *a2) >> 2);
    fst::LogMessage::~LogMessage(v48);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    (*(*a1 + 192))(a1, 4, 4);
    return;
  }

  if ((*(*a1 + 24))(a1) == -1)
  {
    return;
  }

  v5 = (*(*a1 + 64))(a1, 0xF3FFFFF0007, 0);
  v6 = (a2[1] - *a2) >> 2;
  LOBYTE(__p) = 0;
  std::vector<BOOL>::vector(v48, v6, &__p);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v7 = (*(*a1 + 24))(a1);
  (*(*a1 + 176))(a1, *(*a2 + 4 * v7));
  v30 = v5;
  v41 = 0;
  (*(*a1 + 128))(a1, &v39);
  v8 = &v45;
  v9 = &v42;
  v10 = vneg_f32(0x7F0000007FLL);
  while (1)
  {
    if (!v39)
    {
      if (v41 >= v40)
      {
        goto LABEL_60;
      }

      goto LABEL_9;
    }

    if ((*(*v39 + 16))(v39))
    {
      break;
    }

    if (v39)
    {
      v11 = (*(*v39 + 24))();
      goto LABEL_10;
    }

LABEL_9:
    v11 = v41;
LABEL_10:
    v12 = v11;
    v13 = v11 >> 6;
    v14 = 1 << v11;
    if (((1 << v11) & *(v48[0] + v13)) == 0)
    {
      (*(*a1 + 32))(&v38, a1, v11);
      v8[1] = *v8;
      v37 = 0;
      (*(*a1 + 136))(a1, v12, &__p);
      while (__p)
      {
        if ((*(*__p + 24))(__p))
        {
          if (__p)
          {
            (*(*__p + 8))();
          }

          else
          {
LABEL_23:
            if (v36)
            {
              --*v36;
            }
          }

          v16 = v48[0];
          if ((v14 & *(v48[0] + v13)) != 0)
          {
            v17 = v8;
            goto LABEL_27;
          }

          v18 = v10;
          while (2)
          {
            v31 = v14;
            v32 = v13;
            v17 = v9;
            v9 = v8;
            v19 = *(*a2 + 4 * v12);
            v12 = v19;
            v13 = v19 >> 6;
            v20 = 1 << v19;
            if (((1 << v19) & v16[v13]) != 0)
            {
              goto LABEL_33;
            }

            (*(*a1 + 32))(&__p, a1, v19);
            v18 = __p;
            v17[1] = *v17;
            v37 = 0;
            (*(*a1 + 136))(a1, v19, &__p);
LABEL_39:
            if (__p)
            {
              if ((*(*__p + 24))(__p))
              {
                if (__p)
                {
                  (*(*__p + 8))();
                  goto LABEL_33;
                }

LABEL_50:
                if (v36)
                {
                  --*v36;
                }

LABEL_33:
                __p = v38;
                (*(*a1 + 184))(a1, v19, &__p);
                (*(*a1 + 240))(a1, v19);
                v21 = *v9;
                if (v9[1] != *v9)
                {
                  v22 = 0;
                  v23 = 0;
                  do
                  {
                    v24 = &v21[v22];
                    __p = *v24;
                    v34 = *(v24 + 1);
                    v25 = *(v24 + 4);
                    LODWORD(v35) = v25;
                    LODWORD(v35) = *(*a2 + 4 * v25);
                    (*(*a1 + 208))(a1, v19, &__p);
                    ++v23;
                    v21 = *v9;
                    v22 += 20;
                  }

                  while (v23 < 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 2));
                }

                v16 = v48[0];
                *(v48[0] + v32) |= v31;
                v38 = v18;
                v14 = 1 << v19;
                v8 = v17;
                if ((v20 & v16[v13]) != 0)
                {
LABEL_27:
                  v8 = v17;
                  goto LABEL_28;
                }

                continue;
              }

              if (__p)
              {
                v26 = (*(*__p + 32))();
                goto LABEL_45;
              }
            }

            else if (v37 >= v35)
            {
              goto LABEL_50;
            }

            break;
          }

          v26 = v34 + 20 * v37;
LABEL_45:
          std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v17, v26);
          if (__p)
          {
            (*(*__p + 40))(__p);
          }

          else
          {
            ++v37;
          }

          goto LABEL_39;
        }

        if (!__p)
        {
          goto LABEL_17;
        }

        v15 = (*(*__p + 32))();
LABEL_18:
        std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v8, v15);
        if (__p)
        {
          (*(*__p + 40))(__p);
        }

        else
        {
          ++v37;
        }
      }

      if (v37 >= v35)
      {
        goto LABEL_23;
      }

LABEL_17:
      v15 = v34 + 20 * v37;
      goto LABEL_18;
    }

LABEL_28:
    if (v39)
    {
      (*(*v39 + 32))(v39);
    }

    else
    {
      ++v41;
    }
  }

  if (v39)
  {
    (*(*v39 + 8))();
  }

LABEL_60:
  (*(*a1 + 192))(a1, v30, 0x3FFFFFFF0007);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48[0])
  {
    operator delete(v48[0]);
  }
}

void sub_1B513FD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  fst::LogMessage::~LogMessage((v28 - 128));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B514064C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B514085C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  std::allocator_traits<std::allocator<quasar::Token>>::construct[abi:ne200100]<quasar::Token,quasar::Token,0>(a1, 224 * v2, a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v13);
  return v12;
}

void sub_1B51409B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<quasar::Token>>::construct[abi:ne200100]<quasar::Token,quasar::Token,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 39) = *(a3 + 39);
  *(a2 + 24) = v4;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 56) = 0uLL;
  *(a3 + 6) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a3 + 72) = 0uLL;
  *(a3 + 11) = 0;
  v6 = a3[6];
  *(a2 + 112) = *(a3 + 14);
  *(a2 + 96) = v6;
  *(a3 + 104) = 0uLL;
  *(a3 + 12) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 136) = *(a3 + 17);
  *(a3 + 120) = 0uLL;
  *(a3 + 17) = 0;
  v7 = a3[9];
  *(a2 + 160) = *(a3 + 20);
  *(a2 + 144) = v7;
  *(a3 + 152) = 0uLL;
  *(a3 + 18) = 0;
  v8 = *(a3 + 42);
  *(a2 + 172) = *(a3 + 86);
  *(a2 + 168) = v8;
  v9 = a3[11];
  *(a2 + 192) = *(a3 + 24);
  *(a2 + 176) = v9;
  *(a3 + 184) = 0uLL;
  *(a3 + 22) = 0;
  result = *(a3 + 200);
  *(a2 + 216) = *(a3 + 54);
  *(a2 + 200) = result;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::Token>>::construct[abi:ne200100]<quasar::Token,quasar::Token,0>(a1, a4, v9);
      v9 += 14;
      a4 += 224;
      v8 -= 224;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      quasar::Token::~Token(v6);
      v6 += 28;
    }
  }
}

void sub_1B5140B3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 224);
    do
    {
      quasar::Token::~Token(v4);
      v4 = (v5 - 224);
      v2 += 224;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    quasar::Token::~Token((i - 224));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t TChartInfo::TChartInfo(uint64_t result, void *a2, uint64_t a3)
{
  *result = 0;
  *(result + 424) = 0;
  v3 = a2[3];
  *(result + 408) = v3;
  *(result + 416) = a3;
  v4 = *(v3 + 8);
  if (v4 != 1)
  {
    v5 = v4 - 2;
    v6 = (result + 8 * v4 - 8);
    do
    {
      if (*(*(*(result + 408) + 24) + v5) == 1)
      {
        *v6 = 0;
      }

      else
      {
        *v6 = a2[7];
        a2 = a2[6];
      }

      --v5;
      --v6;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t TParser::TParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2CFF718;
  *(a1 + 8) = 0;
  v6 = a1 + 16;
  *(a1 + 16) = &unk_1F2CFF750;
  *(a1 + 24) = 0;
  TAllocator::TAllocator((a1 + 48), 2048);
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  (*(*a1 + 16))(a1);
  *(a1 + 24) = 10;
  (*(*(a1 + 16) + 16))(v6);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (*(a1 + 48) >= 0x801uLL)
  {
    TAllocator::clear((a1 + 48));
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_1B5140D38(_Unwind_Exception *a1)
{
  v4 = v1[20];
  if (v4)
  {
    v1[21] = v4;
    operator delete(v4);
  }

  v5 = v1[17];
  if (v5)
  {
    v1[18] = v5;
    operator delete(v5);
  }

  v6 = v1[14];
  if (v6)
  {
    v1[15] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  TAllocator::clear((v1 + 6));
  _Unwind_Resume(a1);
}

void TParser::~TParser(TParser *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  TAllocator::clear((this + 48));
}

void *TParser::getCell(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[11];
  v7 = a1 + 11;
  if (a3 >= (a1[12] - v6) >> 3)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 11, 2 * (a3 + 1));
    v10 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v7, a3 + 1, &v10);
    goto LABEL_7;
  }

  result = *(v6 + 8 * a3);
  if (!result)
  {
LABEL_7:
    result = TAllocator::allocate((a1 + 6), 32);
    v9 = *(a1[11] + 8 * a3);
    *result = a2;
    result[1] = 0;
    result[2] = 0;
    result[3] = v9;
    *(a1[11] + 8 * a3) = result;
    return result;
  }

  while (*result != a2)
  {
    result = result[3];
    if (!result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void *TParser::addOpenProduction(void *a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = (*(v3 + 16) + 8 * a2[4]);
  }

  else
  {
    v4 = a2 + 6;
  }

  result = TParser::getCell(a1, *v4, a2[2] + a2[1]);
  *a2 = result[1];
  result[1] = a2;
  return result;
}

void TParser::addClosedProduction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) && *(a2 + 24))
  {
    TChartInfo::TChartInfo(__p, a2, a1 + 48);
    (*(**(a1 + 40) + 16))(*(a1 + 40), __p);
    if (v32)
    {
      return;
    }

    *(a2 + 40) = __p[0];
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (*(v4 + 16) + 8 * *(a2 + 32));
  }

  else
  {
    v5 = (a2 + 48);
  }

  Cell = TParser::getCell(a1, *v5, *(a2 + 8));
  v7 = Cell[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7[2];
      v11 = *(a2 + 16);
      if (v10 < v11)
      {
        break;
      }

      if (v10 <= v11)
      {
        if (v7[5] == *(a2 + 40) || (v12 = *(a1 + 40)) != 0 && ((*(*v12 + 32))(v12, v7, a2) & 1) != 0)
        {
          if (*(a1 + 8) != 1)
          {
            return;
          }

          v20 = *(a2 + 8);
          v21 = *(a2 + 16);
          v22 = *(a2 + 24);
          if (v22)
          {
            v23 = *(v22 + 16) + 8 * *(a2 + 32);
          }

          else
          {
            v23 = a2 + 48;
          }

          loggableUnicode(*(*v23 + 16), __p);
          if (v31 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          tknPrintf("Warning: ignoring duplicate parse for token range [%llu,%llu] with symbol %s (rules %llu and %llu)\n", v27, v28, v20, v21, v29, **(a2 + 24), *v7[3]);
          goto LABEL_47;
        }

        ++v9;
      }

      else
      {
        v8 = v7;
      }

      v7 = *v7;
    }

    while (v7);
    if (v9 > *(a1 + 24))
    {
      if (*(a1 + 8) != 1)
      {
        return;
      }

      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = *(v13 + 16) + 8 * *(a2 + 32);
      }

      else
      {
        v14 = a2 + 48;
      }

      loggableUnicode(*(*v14 + 16), __p);
      if (v31 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      tknPrintf("Warning: grammar over-generating symbol %s for token range [%llu,%llu]. Ignoring parse. (rule %llu)\n", v24, v25, v26, *(a2 + 8), *(a2 + 16), **(a2 + 24));
LABEL_47:
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if (v8)
    {
      goto LABEL_24;
    }
  }

  v8 = Cell + 2;
LABEL_24:
  *a2 = *v8;
  *v8 = a2;
  for (i = Cell[1]; i; i = *i)
  {
    v16 = TAllocator::allocate((a1 + 48), 64);
    v17 = i[3];
    v16[3] = v17;
    v18 = i[4];
    do
    {
      v19 = *(*(v17 + 24) + 1 + v18++);
    }

    while ((v19 & 1) != 0);
    v16[4] = v18;
    *v16 = 0;
    v16[1] = i[1];
    v16[2] = *(a2 + 16) + i[2];
    v16[6] = i;
    v16[7] = a2;
    v16[5] = 0;
    ++*(a1 + 184);
    if (v17 && *(v17 + 8) - 1 != v18)
    {
      TParser::addOpenProduction(a1, v16);
    }

    else
    {
      TParser::addClosedProduction(a1, v16);
    }
  }

  TParser::startNewProductions(a1, a2);
}

void sub_1B5141244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TParser::startNewProductions(void *a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    v5 = (*(v4 + 16) + 8 * a2[4]);
  }

  else
  {
    v5 = (a2 + 6);
  }

  v6 = **v5;
  if (!v6)
  {
    return;
  }

  do
  {
    v7 = *(a1[11] + 8 * a2[1]);
    if (!v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v8 = *v7;
      if (v7[1])
      {
        v9 = a1[4];
        if ((*(v8 + 8) & 4) == 0)
        {
          break;
        }
      }

      else
      {
        v9 = a1[4];
      }

      if (v8 == v9[1])
      {
        break;
      }

LABEL_12:
      v7 = v7[3];
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    v10 = *(v8 + 24) + v9[8] * *(*(v6[2] + 8 * v6[1] - 8) + 24);
    if (((*(v9[15] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = TAllocator::allocate((a1 + 6), 64);
    v12 = 0;
    v11[3] = v6;
    v13 = v6[3];
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v13 + v12++);
      ++v14;
    }

    while ((v16 & 1) != 0);
    do
    {
      v17 = *(v13 + v15++);
    }

    while ((v17 & 1) != 0);
    v11[4] = v15 - 1;
    *(v11 + 1) = *(a2 + 1);
    *v11 = 0;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a2;
    ++a1[23];
    if (v6[1] == v15)
    {
      TParser::addClosedProduction(a1, v11);
    }

    else
    {
      TParser::addOpenProduction(a1, v11);
    }

LABEL_20:
    v6 = v6[4];
  }

  while (v6);
}

uint64_t TParser::getAllProductions(void *a1, uint64_t a2)
{
  ++a1[25];
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(a1 + 11, 0);
  Cell = TParser::getCell(a1, *(a1[4] + 8), 0);
  v5 = a1[11];
  if (a1[12] != v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8 * v6))
      {
        std::vector<TSymbol const*>::resize(a1 + 14, 0);
        std::vector<double>::resize(a1 + 17, 0);
        std::vector<void const*>::resize(a1 + 20, 0);
        (*(*a2 + 16))(a2, v6, a1 + 14, a1 + 17, a1 + 20, a1 + 6);
        if (a1[14] != a1[15])
        {
          v7 = 0;
          do
          {
            v8 = TAllocator::allocate((a1 + 6), 64);
            v9 = *(a1[14] + 8 * v7);
            v8[2] = *(a1[17] + 8 * v7);
            v8[3] = 0;
            v8[4] = 0;
            v8[5] = 0;
            *v8 = 0;
            v8[1] = v6;
            v8[6] = v9;
            v8[7] = 0;
            v8[5] = *(a1[20] + 8 * v7);
            ++a1[23];
            TParser::addClosedProduction(a1, v8);
            ++v7;
            v10 = a1[15] - a1[14];
          }

          while (v7 < v10 >> 3);
          a1[24] += v10 >> 3;
        }
      }

      ++v6;
      v5 = a1[11];
    }

    while (v6 < (a1[12] - v5) >> 3);
  }

  return Cell[2];
}

void std::vector<TSymbol const*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<TSymbol const*>::__append(result, a2 - v2);
  }
}

void std::vector<void const*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(result, a2 - v2);
  }
}

uint64_t *TParser::logChart(uint64_t *result, void *a2)
{
  if (result[12] != result[11])
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = MEMORY[0x1B8C84C30](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": terminals\n", 12);
      for (i = *(v3[11] + 8 * v4); i; i = i[3])
      {
        if ((*(*i + 8) & 4) != 0)
        {
          for (j = i[2]; j; j = *j)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
            TProduction::log(j, v3[5], a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          }
        }
      }

      v8 = MEMORY[0x1B8C84C30](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": closed productions\n", 21);
      for (k = *(v3[11] + 8 * v4); k; k = k[3])
      {
        if ((*(*k + 8) & 4) == 0)
        {
          for (m = k[2]; m; m = *m)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
            TProduction::log(m, v3[5], a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          }
        }
      }

      v11 = MEMORY[0x1B8C84C30](a2, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": open productions\n", 19);
      for (n = *(v3[11] + 8 * v4); n; n = *(n + 24))
      {
        for (ii = *(n + 8); ii; ii = *ii)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
          TProduction::log(ii, v3[5], a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        }
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "----\n", 5);
      ++v4;
    }

    while (v4 < (v3[12] - v3[11]) >> 3);
  }

  return result;
}

void *TProduction::log(void *a1, uint64_t a2, void *a3)
{
  if (a1[3])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "span ", 5);
    v7 = MEMORY[0x1B8C84C30](v6, a1[2]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    v8 = operator<<(a3, *(*(*(a1[3] + 16) + 8 * *(a1[3] + 8) - 8) + 16));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " =", 2);
    if (*(a1[3] + 8) != 1)
    {
      v9 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " ", 1);
        if (v9 == a1[4])
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, ". ", 2);
        }

        v10 = a1[3];
        if (*(*(v10 + 24) + v9) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "[", 1);
          v10 = a1[3];
        }

        v11 = *(*(v10 + 16) + 8 * v9);
        if ((*(v11 + 8) & 4) != 0)
        {
          v25 = 34;
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, &v25, 1);
          v13 = operator<<(v12, *(*(*(a1[3] + 16) + 8 * v9) + 16));
          v26 = 34;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v26, 1);
        }

        else
        {
          operator<<(a3, *(v11 + 16));
        }

        v14 = a1[3];
        if (*(*(v14 + 24) + v9) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "]", 1);
          v14 = a1[3];
        }

        ++v9;
      }

      while (v9 < *(v14 + 8) - 1);
    }

    v15 = 1;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " ", 1);
    v16 = a1[3];
    if (v16)
    {
      v15 = a1[4] + 1 == *(v16 + 8);
    }

    if (a2)
    {
      if (v15)
      {
        (*(*a2 + 24))(a2, a1, a3);
      }
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " // line ", 9);
    return MEMORY[0x1B8C84C30](v17, *a1[3]);
  }

  else
  {
    v23 = 96;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, &v23, 1);
    v20 = a1[3];
    if (v20)
    {
      v21 = (*(v20 + 16) + 8 * a1[4]);
    }

    else
    {
      v21 = a1 + 6;
    }

    v22 = operator<<(v19, *(*v21 + 16));
    v24 = 96;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v24, 1);
  }
}

void TParser::logTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a4 + 23) < 0)
  {
    if (!*(a4 + 8))
    {
      goto LABEL_9;
    }

    v12 = *a4;
  }

  else
  {
    v12 = a4;
    if (!*(a4 + 23))
    {
      goto LABEL_9;
    }
  }

  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "|\n", 2);
  v15 = a4;
  if (*(a4 + 23) < 0)
  {
    v15 = *a4;
  }

  v16 = strlen(v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "|", 1);
LABEL_9:
  if ((*(a3 + 8) & 4) != 0)
  {
    v30 = operator<<(v29, *(a3 + 16));
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    operator<<(a6, *(a3 + 16));
    if (a2)
    {
LABEL_11:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, " ", 1);
      v18 = *(a1 + 40);
      if (v18)
      {
        (*(*v18 + 24))(v18, a2, a6);
      }

      if (*(a2 + 24))
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, " // line ", 9);
        MEMORY[0x1B8C84C30](v19, **(a2 + 24));
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "\n", 1);
      v20 = *(a2 + 24);
      if (v20)
      {
        memset(v33, 0, sizeof(v33));
        v21 = v20[1];
        v22 = v21 - 1;
        if (v21 == 1)
        {
          if (a5)
          {
            v31 = "|  ";
          }

          else
          {
            v31 = "   ";
          }

          std::string::append(a4, v31);
        }

        else
        {
          v23 = v20[3];
          v24 = v21 - 2;
          do
          {
            *(v33 + v24) = 0;
            if ((*(v23 + v24) & 1) == 0)
            {
              *(v33 + v24) = *(a2 + 56);
              a2 = *(a2 + 48);
            }

            --v24;
          }

          while (v24 != -1);
          if (a5)
          {
            v25 = "|  ";
          }

          else
          {
            v25 = "   ";
          }

          std::string::append(a4, v25);
          v26 = 0;
          do
          {
            v27 = *(v33 + v26);
            v28 = *(v20[2] + 8 * v26);
            if (*(a4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
            }

            else
            {
              __p = *a4;
            }

            TParser::logTree(a1, v27, v28, &__p, ++v26 < v22, a6);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          while (v22 != v26);
        }
      }

      return;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "? // skipped", 12);

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a6, "\n", 1);
}

void TParser::logTree(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = a2[3];
    if (v4)
    {
      v5 = (*(v4 + 16) + 8 * a2[4]);
    }

    else
    {
      v5 = a2 + 6;
    }

    v6 = *v5;
    v8 = 0;
    LOBYTE(__p) = 0;
    TParser::logTree(a1, a2, v6, &__p, 0, a3);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1B5141E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSymbol const*>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

std::string *quasar::CircleRegion::CircleRegion(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  *&this[1].__r_.__value_.__r.__words[1] = quasar::Location::UNDEFINED_COORDINATES;
  return this;
}

void sub_1B51421E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B514226C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ContextDependency::Compute(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1] - *a2;
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<std::pair<int,int>>::reserve(&__p, ((v8 << 30) + 0x100000000) >> 32);
  v13 = (a3 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&__p, &v13);
  if (*(a1 + 8) >= 1)
  {
    v9 = 0;
    v10 = *a2;
    do
    {
      v13 = v9 + (*(v10 + 4 * v9) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&__p, &v13);
      v10 = *a2;
      ++v9;
    }

    while (v9 < *(a1 + 8));
  }

  v11 = (***(a1 + 16))(*(a1 + 16), &__p, a4);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_1B5142388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,int>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void kaldi::ContextDependency::Read(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 72))(v6);
    *(a1 + 16) = 0;
  }

  kaldi::ExpectToken(a2, a3, "ContextDependency");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 8);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 12);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::ReadToken(a2, a3, &v20);
  v7 = HIBYTE(v22);
  if (SHIBYTE(v22) < 0)
  {
    if (v21 != 8)
    {
      goto LABEL_15;
    }

    v8 = v20;
  }

  else
  {
    if (HIBYTE(v22) != 8)
    {
LABEL_10:
      if (v7 != 5)
      {
        goto LABEL_25;
      }

      v9 = &v20;
      goto LABEL_17;
    }

    v8 = &v20;
  }

  if (*v8 == 0x6874676E654C6F54)
  {
    v10 = kaldi::EventMap::Read(a2, a3);
    if (v10)
    {
      (*(*v10 + 72))(v10);
    }

    kaldi::ReadToken(a2, a3, &v20);
    v7 = HIBYTE(v22);
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v21 != 5)
  {
    goto LABEL_25;
  }

  v9 = v20;
LABEL_17:
  v11 = *v9;
  v12 = *(v9 + 4);
  if (v11 != 1682992980 || v12 != 102)
  {
LABEL_25:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Got unexpected token ", 21);
    if (v22 >= 0)
    {
      v16 = &v20;
    }

    else
    {
      v16 = v20;
    }

    if (v22 >= 0)
    {
      v17 = HIBYTE(v22);
    }

    else
    {
      v17 = v21;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " reading context-dependency object.", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  v14 = kaldi::EventMap::Read(a2, a3);
  kaldi::ExpectToken(a2, a3, "EndContextDependency");
  *(a1 + 16) = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_1B5142684(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void kaldi::ContextDependency::EnumeratePairs(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*a5 + 4 * i);
      if ((v14 & 0x80000000) == 0)
      {
        v38 = i | (v14 << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v45, &v38);
        v12 = *(a1 + 8);
      }
    }
  }

  v38 = (a4 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v45, &v38);
  v15 = 126 - 2 * __clz((v46 - v45) >> 3);
  if (v46 == v45)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v45, v46, &v38, v16, 1);
  (*(**(a1 + 16) + 8))(*(a1 + 16), &v45, &v42);
  std::__sort<std::__less<int,int> &,int *>();
  v17 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v42, v43);
  if (v17 != v43)
  {
    v43 = v17;
  }

  v46 = v45;
  v18 = *(a1 + 8);
  if (v18)
  {
    for (j = 0; j < v18; ++j)
    {
      v20 = *(*a5 + 4 * j);
      if ((v20 & 0x80000000) == 0)
      {
        v38 = j | (v20 << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v45, &v38);
        v18 = *(a1 + 8);
      }
    }
  }

  v38 = (a3 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v45, &v38);
  v21 = 126 - 2 * __clz((v46 - v45) >> 3);
  if (v46 == v45)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v45, v46, &v38, v22, 1);
  (*(**(a1 + 16) + 8))(*(a1 + 16), &v45, &__p);
  std::__sort<std::__less<int,int> &,int *>();
  v23 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(__p, v40);
  v24 = v40;
  if (v23 != v40)
  {
    v24 = v23;
    v40 = v23;
  }

  v26 = v42;
  v25 = v43;
  if (v43 - v42 == 4 || v24 - __p == 4)
  {
    if (v43 != v42)
    {
      v27 = 0;
      v28 = __p;
      do
      {
        if (v24 == v28)
        {
          v24 = v28;
        }

        else
        {
          v29 = 0;
          do
          {
            v38 = *(v42 + v27) | (v28[v29] << 32);
            std::__hash_table<std::pair<int,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<int,int>>(a6, &v38, &v38);
            ++v29;
            v28 = __p;
            v24 = v40;
          }

          while (v29 < (v40 - __p) >> 2);
          v26 = v42;
          v25 = v43;
        }

        ++v27;
      }

      while (v27 < (v25 - v26) >> 2);
    }
  }

  else
  {
    v30 = *(a1 + 8);
    v31 = v30 - 1;
    if (v30 < 1)
    {
      v33 = 0;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = *(a1 + 12);
      do
      {
        if (v34 >= 0)
        {
          v35 = v34;
        }

        else
        {
          v35 = -v34;
        }

        if (*(*a5 + 4 * v32) == -1 && v35 < v31)
        {
          v33 = v32;
          v31 = v35;
        }

        ++v32;
        --v34;
      }

      while (v30 != v32);
    }

    *(v48 + v33) = 0;
    kaldi::ContextDependency::EnumeratePairs(a1, a2, a3, a4, &v48, a6);
    v36 = *a2;
    if (a2[1] != *a2)
    {
      v37 = 0;
      do
      {
        *(v48 + v33) = *(v36 + 4 * v37);
        kaldi::ContextDependency::EnumeratePairs(a1, a2, a3, a4, &v48, a6);
        ++v37;
        v36 = *a2;
      }

      while (v37 < (a2[1] - *a2) >> 2);
    }
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_1B5142AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ContextDependency::GetPdfInfo(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a2 + 4;
  if (*a2 != v7 && v8 != v7)
  {
    v10 = *v6;
    v11 = (*a2 + 4);
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v10 < v13;
      if (v10 <= v13)
      {
        v10 = v12;
      }

      if (v14)
      {
        v6 = v8;
      }

      v8 = v11;
    }

    while (v11 != v7);
  }

  std::vector<std::vector<std::vector<std::pair<int,int>>>>::resize(a4, *v6 + 1);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 8));
  v15 = *a2;
  if (a2[1] != *a2)
  {
    v16 = 0;
    v17 = *a3;
    do
    {
      v18 = *(v15 + 4 * v16);
      std::vector<std::vector<std::pair<int,int>>>::resize(*a4 + 3 * v18, (*(v17 + 24 * v18 + 8) - *(v17 + 24 * v18)) >> 3);
      v17 = *a3;
      v19 = *(*a3 + 24 * v18);
      if (*(*a3 + 24 * v18 + 8) != v19)
      {
        v45 = v16;
        v20 = 0;
        do
        {
          v21 = (v19 + 8 * v20);
          v23 = *v21;
          v22 = v21[1];
          v24 = __p;
          if (v52 != __p)
          {
            v25 = 0;
            v26 = (v52 - __p) >> 2;
            if (v26 <= 1)
            {
              v26 = 1;
            }

            do
            {
              if (v25 == *(a1 + 12))
              {
                v27 = v18;
              }

              else
              {
                v27 = -1;
              }

              v24[v25++] = v27;
            }

            while (v26 != v25);
          }

          v48 = 0u;
          v49 = 0u;
          v50 = 1065353216;
          kaldi::ContextDependency::EnumeratePairs(a1, a2, v22, v23, &__p, &v48);
          for (i = v49; i; i = *i)
          {
            v29 = *(*a4 + 3 * v18) + 24 * v20;
            v31 = *(v29 + 8);
            v30 = *(v29 + 16);
            if (v31 >= v30)
            {
              v33 = (v31 - *v29) >> 3;
              if ((v33 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v30 - *v29;
              v35 = v34 >> 2;
              if (v34 >> 2 <= (v33 + 1))
              {
                v35 = v33 + 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v35;
              }

              if (v36)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*(*a4 + 3 * v18) + 24 * v20, v36);
              }

              *(8 * v33) = i[2];
              v32 = 8 * v33 + 8;
              v37 = *(v29 + 8) - *v29;
              v38 = (8 * v33 - v37);
              memcpy(v38, *v29, v37);
              v39 = *v29;
              *v29 = v38;
              *(v29 + 8) = v32;
              *(v29 + 16) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v31 = i[2];
              v32 = (v31 + 1);
            }

            *(v29 + 8) = v32;
          }

          v40 = (*(*a4 + 3 * v18) + 24 * v20);
          v41 = *v40;
          v42 = v40[1];
          v43 = 126 - 2 * __clz(&v42[-*v40] >> 3);
          if (v42 == v41)
          {
            v44 = 0;
          }

          else
          {
            v44 = v43;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v41, v42, &v53, v44, 1);
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v48);
          ++v20;
          v17 = *a3;
          v19 = *(*a3 + 24 * v18);
        }

        while (v20 < (*(*a3 + 24 * v18 + 8) - v19) >> 3);
        v16 = v45;
      }

      ++v16;
      v15 = *a2;
    }

    while (v16 < (a2[1] - *a2) >> 2);
  }

  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }
}

void sub_1B5142E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<std::pair<int,int>>>>::resize(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<std::pair<int,int>>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<std::pair<int,int>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::pair<int,int>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void kaldi::ContextDependency::GetPdfInfo(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = (*(*a1 + 40))(a1);
  std::vector<std::vector<std::pair<int,int>>>::resize(a4, v6);
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 4 * v8);
      v40 = v39;
      v35[0].__locale_ = (*(a1 + 12) | (v9 << 32));
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v39, v35);
      v10 = *(*a3 + 4 * v9);
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          std::vector<double>::resize(&v39, 2uLL);
          v12 = v39;
          v13 = v40;
          v14 = 126 - 2 * __clz((v40 - v39) >> 3);
          *v39 = *(a1 + 12);
          *(v12 + 1) = v9;
          *(v12 + 2) = -1;
          *(v12 + 3) = i;
          if (v13 == v12)
          {
            v15 = 0;
          }

          else
          {
            v15 = v14;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v12, v13, v35, v15, 1);
          v36 = 0;
          v37 = 0;
          v38 = 0;
          (*(**(a1 + 16) + 8))(*(a1 + 16), &v39, &v36);
          std::__sort<std::__less<int,int> &,int *>();
          v16 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v36, v37);
          v17 = v36;
          v18 = v37;
          if (v16 != v37)
          {
            v18 = v16;
            v37 = v16;
          }

          if (v36 == v18 && kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "ContextDependency::GetPdfInfo, no pdfs returned for position ", 61);
            v20 = MEMORY[0x1B8C84C00](v19, i);
            v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " of phone ", 10);
            v22 = MEMORY[0x1B8C84C00](v21, v9);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".   Continuing but this is a serious error.", 43);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(v35);
            v17 = v36;
            v18 = v37;
          }

          if (v18 != v17)
          {
            v23 = 0;
            do
            {
              v24 = *a4 + 24 * v17[v23];
              v35[0].__locale_ = ((i << 32) | v9);
              std::vector<std::pair<int,int>>::push_back[abi:ne200100](v24, v35);
              ++v23;
              v17 = v36;
            }

            while (v23 < v37 - v36);
          }

          if (v17)
          {
            v37 = v17;
            operator delete(v17);
          }
        }
      }

      ++v8;
      v7 = *a2;
    }

    while (v8 < (a2[1] - *a2) >> 2);
  }

  v25 = *a4;
  if (a4[1] != *a4)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = (v25 + v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = 126 - 2 * __clz(&v30[-*v28] >> 3);
      if (v30 == v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v29, v30, v35, v32, 1);
      ++v27;
      v25 = *a4;
      v26 += 24;
    }

    while (v27 < 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_1B5143298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 112);
  if (v14)
  {
    *(v12 - 104) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ContextDependency::NumPdfs(kaldi::ContextDependency *this)
{
  result = *(this + 2);
  if (result)
  {
    v2 = (*(*result + 48))(result);
    if (v2 >= 0)
    {
      return (v2 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void kaldi::ContextDependency::~ContextDependency(kaldi::ContextDependency *this)
{
  kaldi::ContextDependency::~ContextDependency(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2CFF788;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  quasar::Bitmap::~Bitmap(this);
}

uint64_t kaldi::EventMap::Copy(kaldi::EventMap *this)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v1 = (*(*this + 24))(this, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_1B5143510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<int>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 4;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < *(v10 + 1))
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = *(v10 + 1);
          *(v10 + 1) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = *(v10 + 2);
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || *(v10 + 3) >= *(v10 + 1)))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= *(v10 + 3)))
        {
          return result;
        }

        *(v10 + 2) = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 12;
        v107 = *(v10 + 3);
        *(v10 + 3) = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = *(v10 + 2);
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || *(v10 + 3) >= *(v10 + 1)))
        {
          return result;
        }

        *v10 = v108;
        *(v10 + 2) = v109;
        v94 = (v10 + 4);
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = (v10 + 4);
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = *(v10 + 3);
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = *(v10 + 3);
      }

      v111 = *(v10 + 1);
      *(v10 + 3) = v111;
      *v10 = v91;
      *(v10 + 1) = v110;
      *(v10 + 2) = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      *(v10 + 2) = v112;
      *(a2 - 2) = v92;
      v94 = (v10 + 12);
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[8 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= *(v10 + 1)))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = (v14 + 1), v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= *(v10 + 1)))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = *(v10 + 2);
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= *(v10 + 3)))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = (v14 - 1), v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = *(v10 + 2), *v39 >= v48) && (v48 < v47 || *v45 >= *(v10 + 3)))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = *(v10 + 4);
              if (v57 >= v58 && (v58 < v56 || v55[1] >= *(v10 + 5)))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = (v55 + 1), v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = *(v10 + 4), *v55 >= v65) && (v65 < v64 || *v62 >= *(v10 + 5)))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = (v10 + 4);
                    *v15 = v82;
                    v30 = (v15 + 1);
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                *(v10 + 4) = v64;
                *v55 = v65;
                v60 = (v10 + 20);
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  *(v10 + 4) = v59;
                  *(a2 - 6) = v58;
                  v60 = (v10 + 20);
LABEL_83:
                  v62 = a2 - 20;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = *(v10 + 5);
              *(v10 + 4) = v56;
              *(v10 + 5) = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            *(v10 + 2) = v47;
            *v39 = v48;
            v43 = (v10 + 12);
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              *(v10 + 2) = v42;
              *(a2 - 4) = v41;
              v43 = (v10 + 12);
LABEL_65:
              v45 = a2 - 12;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = *(v10 + 3);
          *(v10 + 2) = v40;
          *(v10 + 3) = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = (v10 + 4);
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = (v10 + 4);
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 4;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = *(v10 + 1);
      *v10 = v16;
      *(v10 + 1) = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && *(v10 + 1) < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = *(v10 + 1);
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = *(v10 + 1);
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        *(v10 + 1) = v50;
        v23 = (v10 + 4);
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 4;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < *(v10 + 1))
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 4;
      v31 = *(v10 + 1);
      *(v10 + 1) = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= *(v10 + 1)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, v85);
    v10 = (v85 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = (v85 + 2);
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = *(v10 + 6);
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < *(v10 + 7))
  {
    *(v10 + 6) = v95;
    *(a2 - 2) = v96;
    v97 = *(v10 + 7);
    *(v10 + 7) = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = *(v10 + 6);
    v99 = *(v10 + 4);
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = *(v10 + 7);
      v100 = *(v10 + 5);
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = *(v10 + 5);
      v101 = *(v10 + 7);
    }

    *(v10 + 4) = v98;
    *(v10 + 5) = v101;
    *(v10 + 6) = v99;
    *(v10 + 7) = v100;
    v102 = *(v10 + 2);
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = *(v10 + 3);
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = *(v10 + 3);
    }

    *(v10 + 2) = v98;
    *(v10 + 3) = v101;
    *(v10 + 4) = v102;
    *(v10 + 5) = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = *(v10 + 1);
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = *(v10 + 1);
    }

    *v10 = v98;
    *(v10 + 1) = v101;
    *(v10 + 2) = v104;
    *(v10 + 3) = v105;
  }

  return result;
}