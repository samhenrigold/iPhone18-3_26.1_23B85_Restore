void sub_1B52F3260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[4],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1B52F32B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Vocab::~Vocab(unsigned int **this)
{
  *this = qword_1F2D2A398;
  LHash<unsigned int,float>::clear(this + 7, 0);
  LHash<unsigned int,float>::clear(this + 6, 0);
  v2 = this[3];
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x50C80EE9192B6);
  }

  LHash<char const*,unsigned int>::clear(this + 1, 0);
}

{
  Vocab::~Vocab(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t Vocab::numWords(Vocab *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *v1 >> 5;
  }

  else
  {
    return 0;
  }
}

uint64_t Vocab::unkIndex(Vocab *this)
{
  return *(this + 16);
}

{
  return this + 64;
}

uint64_t Vocab::ssIndex(Vocab *this)
{
  return *(this + 17);
}

{
  return this + 68;
}

uint64_t Vocab::seIndex(Vocab *this)
{
  return *(this + 18);
}

{
  return this + 72;
}

uint64_t Vocab::pauseIndex(Vocab *this)
{
  return *(this + 19);
}

{
  return this + 76;
}

uint64_t Vocab::isNonEvent(Vocab *this, const char *a2)
{
  v3 = (*(*this + 40))(this, a2, 0xFFFFFFFFLL);
  v4 = *(*this + 176);

  return v4(this, v3);
}

uint64_t Vocab::addNonEvent(Vocab *this, const char *a2)
{
  v3 = (*(*this + 16))(this, a2);
  v4 = *(*this + 184);

  return v4(this, v3);
}

uint64_t Vocab::typeOfMetaTag(Vocab *this, unsigned int a2)
{
  v4 = 0;
  if (LHash<unsigned int,float>::locate(this + 7, a2, &v4))
  {
    return *(*(this + 7) + 8 * v4 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *Vocab::use@<X0>(Vocab *this@<X0>, void *a2@<X8>)
{
  v3 = _ZTWN5Vocab14outputVocabTLSE(a2);
  result = *v3;
  if (!*v3)
  {
    result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v3 = result;
  }

  *result = this;
  return result;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::Edge::Edge(uint64_t a1, int a2, std::string *this, const std::string *a4, double a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __str = *this;
  }

  if (std::string::find(this, 35, 0) != -1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "#");
    quasar::splitStringSimple(this, &v13, __p);
  }

  *a1 = a2;
  std::string::operator=(v10, &__str);
  std::string::operator=(v10 + 1, a4);
  *(a1 + 56) = a5;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B52F369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 55) < 0)
  {
    operator delete(v24[3]);
  }

  if (*(v23 + 31) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::corrective_reranking::VoiceEditingWFST::Edge::accepts(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = strlen(quasar::corrective_reranking::VoiceEditingWFST::star[0]);
  v6 = v5;
  v7 = *(a1 + 31);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v4;
    if (v6 != v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (memcmp(v8, quasar::corrective_reranking::VoiceEditingWFST::star[0], v6))
    {
      goto LABEL_8;
    }

    v15 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
    v16 = v15;
    v17 = *(a2 + 23);
    if (v17 < 0)
    {
      if (v15 != *(a2 + 8))
      {
        return 1;
      }

      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *a2;
    }

    else
    {
      v18 = a2;
      if (v16 != v17)
      {
        return 1;
      }
    }

    if (!memcmp(v18, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v16))
    {
      goto LABEL_8;
    }

    return 1;
  }

  if (v5 == *(a1 + 16))
  {
    if (v5 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *v4;
    goto LABEL_7;
  }

LABEL_8:
  if ((v7 & 0x80000000) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = *v4;
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  return memcmp(v12, v13, v9) == 0;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::Path::Path(uint64_t a1, int a2, std::string **a3)
{
  v5[0] = a2;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *a1 = a2;
  *(a1 + 8) = 0;
  if ((a1 + 16) != a3)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 16), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
  return a1;
}

void sub_1B52F38F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 40);
  if (v14)
  {
    *(v10 + 48) = v14;
    operator delete(v14);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::advance(uint64_t a1, int *a2)
{
  *(a1 + 8) = *(a2 + 7) + *(a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __s1 = *(a2 + 2);
  }

  v4 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v4 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v4))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v4 != __s1.__r_.__value_.__l.__size_)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
LABEL_13:
    memset(&__s1, 0, sizeof(__s1));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__s1, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3));
    v7 = *&__s1.__r_.__value_.__l.__data_;
    p_s1 = &__s1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_s1);
    if (*(&v7 + 1) != v7)
    {
      quasar::corrective_reranking::VoiceEditingWFST::Path::removeTopInToken(a1);
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v5 = __s1.__r_.__value_.__r.__words[0];
  v6 = memcmp(__s1.__r_.__value_.__l.__data_, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v4);
  operator delete(v5);
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    __s1 = *(a2 + 8);
  }

  v8 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v8 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v8))
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (v8 != __s1.__r_.__value_.__l.__size_)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
LABEL_27:
    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__s1, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      __s1 = *(a2 + 8);
    }

    std::vector<std::string>::push_back[abi:ne200100](a1 + 64, &__s1);
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

    goto LABEL_32;
  }

  if (v8 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v9 = __s1.__r_.__value_.__r.__words[0];
  v10 = memcmp(__s1.__r_.__value_.__l.__data_, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v8);
  operator delete(v9);
  if (v10)
  {
    goto LABEL_27;
  }

LABEL_32:
  v11 = *a2;
  *a1 = *a2;
  LODWORD(__s1.__r_.__value_.__l.__data_) = v11;
  std::vector<int>::push_back[abi:ne200100]((a1 + 40), &__s1);
}

void sub_1B52F3B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::removeTopInToken(quasar::corrective_reranking::VoiceEditingWFST::Path *this)
{
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v6, (*(this + 2) + 24), *(this + 3), *(this + 2));
  v3 = v2;
  v4 = *(this + 3);
  if (v4 != v2)
  {
    do
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v3);
  }

  *(this + 3) = v3;
}

uint64_t *quasar::corrective_reranking::VoiceEditingWFST::Path::getOutputs@<X0>(quasar::corrective_reranking::VoiceEditingWFST::Path *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 8), *(this + 9), 0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - *(this + 8)) >> 3));
}

void quasar::corrective_reranking::VoiceEditingWFST::VoiceEditingWFST(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v53[19] = *MEMORY[0x1E69E9840];
  *a1 = a4;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  std::ifstream::basic_ifstream(v51, a3, 8);
  if ((v52[*(v51[0] - 24) + 16] & 5) != 0)
  {
    v48 = 0u;
    memset(v49, 0, 240);
    *&v47[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Could not open isyms file ", 26);
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v47);
  }

  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  v6 = MEMORY[0x1E69E5318];
  std::ios_base::getloc((v51 + *(v51[0] - 24)));
  v7 = std::locale::use_facet(v47, v6);
  v8 = (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(v47);
  v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51, v45, v8);
  if ((*(v9 + *(*v9 - 24) + 32) & 5) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, " \t");
    quasar::splitStringSimple(v45, v47, __p);
  }

  if (!*(a1 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "_vocab.size() > 0", 17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
  }

  std::ifstream::basic_ifstream(v47, a2, 8);
  if ((v49[*(v47[0].__locale_ - 3)] & 5) != 0)
  {
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
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    *v30 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not open fst text file ", 29);
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v10 = MEMORY[0x1E69E5318];
  std::ios_base::getloc((v47 + *(v47[0].__locale_ - 3)));
  v11 = std::locale::use_facet(__p, v10);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(__p);
  v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v47, v26, v12);
  if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, " \t");
    quasar::splitStringSimple(v26, &v25, __p);
  }

  if (!*(a1 + 56))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "!edgeLists.empty()", 18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  v47[0] = *MEMORY[0x1E69E54C8];
  locale = v47[0].__locale_;
  v15 = *(MEMORY[0x1E69E54C8] + 24);
  *(&v47[0].__locale_ + *(v47[0].__locale_ - 3)) = v15;
  MEMORY[0x1B8C84A00](&v48);
  std::istream::~istream();
  MEMORY[0x1B8C85200](&v50);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  v51[0] = locale;
  *(v51 + *(locale - 3)) = v15;
  MEMORY[0x1B8C84A00](v52);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v53);
}

void sub_1B52F4560(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B52F45CCLL);
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void quasar::corrective_reranking::VoiceEditingWFST::search(std::wstring *a1@<X0>, std::allocator<std::wstring> *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a6@<X8>)
{
  v34 = a4;
  if (!a4 || *a2 != *(a2 + 1))
  {
    if ((a3 & 0x100000000) == 0)
    {
      data = a1[2].__r_.__value_.__l.__data_;
      v8 = *data;
      if (LOBYTE(a1->__r_.__value_.__l.__data_) == 1)
      {
        for (; v8; v8 = *v8)
        {
          LODWORD(v27.__first_) = data[4];
          memset(&v27.__begin_, 0, 24);
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v27.__begin_, *(data + 3), *(data + 4), (*(data + 4) - *(data + 3)) >> 6);
          LODWORD(p_begin) = *(v8 + 4);
          v37 = 0;
          v38 = 0;
          v36 = 0;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v36, v8[3], v8[4], (v8[4] - v8[3]) >> 6);
          v9 = p_begin;
          v31 = &v36;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v31);
          p_begin = &v27.__begin_;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&p_begin);
          if (SLODWORD(v27.__first_) < v9)
          {
            data = v8;
          }
        }
      }

      else
      {
        for (; v8; v8 = *v8)
        {
          LODWORD(v27.__first_) = *(v8 + 4);
          memset(&v27.__begin_, 0, 24);
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v27.__begin_, v8[3], v8[4], (v8[4] - v8[3]) >> 6);
          LODWORD(p_begin) = data[4];
          v37 = 0;
          v38 = 0;
          v36 = 0;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v36, *(data + 3), *(data + 4), (*(data + 4) - *(data + 3)) >> 6);
          v10 = p_begin;
          v31 = &v36;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v31);
          p_begin = &v27.__begin_;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&p_begin);
          if (SLODWORD(v27.__first_) < v10)
          {
            data = v8;
          }
        }
      }
    }

    p_begin = 0;
    v36 = 0;
    v37 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v11 = *a2;
    v12 = *(a2 + 1);
    if (*a2 != v12)
    {
      do
      {
        v13 = *(v11 + 23);
        if (v13 < 0)
        {
          v14 = *v11;
          v13 = *(v11 + 8);
        }

        else
        {
          v14 = v11;
        }

        quasar::utf8::convertToLowerCaseOrThrow(v14, v13, &v30);
        std::vector<std::string>::push_back[abi:ne200100](&p_begin, &v30);
        if (&a1->__r_.__value_.__r.__words[2] == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&a1->__r_.__value_.__l.__size_, &v30.__r_.__value_.__l.__data_))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, quasar::corrective_reranking::VoiceEditingWFST::unk);
          v15 = v32;
          if (v32 >= v33)
          {
            v17 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3);
            v18 = v17 + 1;
            if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v33 - v31) >> 3) > v18)
            {
              v18 = 0x5555555555555556 * ((v33 - v31) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v33 - v31) >> 3) >= 0x555555555555555)
            {
              v19 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v19 = v18;
            }

            v27.__end_cap_.__value_ = &v31;
            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v31, v19);
            }

            v20 = 8 * ((v32 - v31) >> 3);
            v21 = *__p;
            *(v20 + 16) = v29;
            *v20 = v21;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            v22 = 24 * v17 + 24;
            v23 = (24 * v17 - (v32 - v31));
            memcpy((v20 - (v32 - v31)), v31, v32 - v31);
            v24 = v31;
            v25 = v33;
            v31 = v23;
            v32 = v22;
            v33 = 0;
            v27.__end_ = v24;
            v27.__end_cap_.__value_ = v25;
            v27.__first_ = v24;
            v27.__begin_ = v24;
            std::__split_buffer<std::string>::~__split_buffer(&v27);
            v32 = v22;
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v16 = *__p;
            *(v32 + 2) = v29;
            *v15 = v16;
            v32 = v15 + 24;
          }
        }

        else
        {
          std::vector<std::string>::push_back[abi:ne200100](&v31, &v30);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v11 += 24;
      }

      while (v11 != v12);
    }

    if (v34)
    {
      operator new();
    }

    operator new();
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
}

void sub_1B52F53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v36 - 184) = a9;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100]((v36 - 184));
  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  *(v36 - 184) = v36 - 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v36 - 184));
  *(v36 - 160) = v36 - 128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Paths::add(quasar::corrective_reranking::Paths *this, const quasar::corrective_reranking::VoiceEditingWFST::Path *a2)
{
  (*(*this + 16))(__p);
  v4 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    v10 = *(this + 2);
    if (v10 < *(this + 3))
    {
      std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 8, a2);
      v11 = v10 + 88;
LABEL_14:
      *(this + 2) = v11;
      goto LABEL_15;
    }

LABEL_13:
    v11 = std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 1, a2);
    goto LABEL_14;
  }

  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(this + 4, __p);
  if (!v5)
  {
    v12 = *(this + 1);
    v13 = *(this + 2);
    v18 = __p;
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 4, __p, &std::piecewise_construct, &v18, &v17)[5] = (0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 3));
    v14 = *(this + 2);
    if (v14 < *(this + 3))
    {
      std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 8, a2);
      v11 = v14 + 88;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5[5];
  v7 = *(this + 1);
  if (0x2E8BA2E8BA2E8BA3 * ((*(this + 2) - v7) >> 3) <= v6)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = v7 + 88 * v6;
  v9 = *(v8 + 8);
  if (*(a2 + 1) < v9)
  {
    v9 = *(a2 + 1);
  }

  *(v8 + 8) = v9;
LABEL_15:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F56F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(quasar::corrective_reranking::VoiceEditingWFST::Path *this)
{
  v3 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_2::operator()(uint64_t *a1, __int128 *a2, int *a3)
{
  v6 = *a1;
  v18 = *a2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v19, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 2);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v25, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  quasar::corrective_reranking::VoiceEditingWFST::Path::advance(&v18, a3);
  v12 = 0uLL;
  v13[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  v7 = v12;
  v28 = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (*(&v7 + 1) != v7)
  {
    quasar::corrective_reranking::Paths::add(*a1[1], &v18);
    goto LABEL_12;
  }

  LODWORD(v12) = v18;
  v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v6 + 72), &v12);
  if (v8)
  {
    *(&v18 + 1) = *(&v18 + 1) + *(v8 + 5);
    v9 = 2;
LABEL_11:
    quasar::corrective_reranking::Paths::add(*a1[v9], &v18);
    goto LABEL_12;
  }

  if (*a1[3] != 1 || (v12 = 0uLL, v13[0] = 0, std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3)), v10 = *(&v12 + 1) - v12, v11 = *(a1[4] + 8) - *a1[4], v28 = &v12, std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28), v10 != v11))
  {
    v9 = 1;
    goto LABEL_11;
  }

  v12 = v18;
  memset(v13, 0, sizeof(v13));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v13, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v22, v23, (v23 - v22) >> 2);
  memset(v17, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v17, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3));
  *(&v12 + 1) = *(&v12 + 1) + 1000000.0;
  quasar::corrective_reranking::Paths::add(*a1[2], &v12);
  v28 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v28 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
LABEL_12:
  *&v12 = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  *&v12 = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_1B52F5A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(&a9);
  quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(&a21);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52F5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 2;
    do
    {
      v7 = v6 - 2;
      *v4 = *(v6 - 8);
      if (*(v6 - 1) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 8), *(v6 - 3), *(v6 - 2));
      }

      else
      {
        v8 = *(v6 - 24);
        *(v4 + 24) = *(v6 - 1);
        *(v4 + 8) = v8;
      }

      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 48) = *(v6 + 2);
        *(v4 + 32) = v9;
      }

      *(v4 + 56) = *(v6 + 3);
      v4 = v14 + 64;
      v14 += 64;
      v6 += 4;
    }

    while (v7 + 4 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 64;
      std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 16), *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 64), *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  *(a1 + 8) = v4 + 88;
  return result;
}

void sub_1B52F5EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 48) = v7;
    operator delete(v7);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 8) = v5;
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>(a1, v6);
  }

  v7 = 88 * v2;
  v15 = 0;
  v16 = v7;
  v17 = (88 * v2);
  *v7 = *a2;
  v8 = 88 * v2;
  *(v8 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v8 + 16), *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v7 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 64), *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  *&v17 = v17 + 88;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Path>::~__split_buffer(&v15);
  return v14;
}

void sub_1B52F60D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v8 = *v5;
  if (*v5)
  {
    *(v6 + 48) = v8;
    operator delete(v8);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Path>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>::destroy[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,0>(a1, v5);
      v5 += 88;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>::destroy[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 40);
  if (v3)
  {
    *(a2 + 48) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 88;
      std::allocator_traits<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>::destroy[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Path>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>::destroy[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,0>(v5, v4 - 88);
  }
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *>(&v7, a3, *(a1 + 8), a2);
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>::destroy[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,0>(a1, i))
  {
    i -= 88;
  }

  *(a1 + 8) = a2;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::vector<std::string>::__vdeallocate((a4 + 16));
    *(a4 + 16) = *(v5 + 16);
    *(a4 + 32) = *(v5 + 32);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    std::vector<int>::__move_assign(a4 + 40, (v5 + 40));
    std::vector<std::string>::__vdeallocate((a4 + 64));
    *(a4 + 64) = *(v5 + 64);
    *(a4 + 80) = *(v5 + 80);
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    a4 += 88;
    v5 += 88;
  }

  while (v5 != v6);
  return v6;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

double std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  result = *(a2 + 56);
  *(v4 + 56) = result;
  *(a1 + 8) = v4 + 64;
  return result;
}

void sub_1B52F6988(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>>(a1, v7);
  }

  v8 = v2 << 6;
  v19 = 0;
  v20 = v2 << 6;
  v21 = (v2 << 6);
  v9 = (v2 << 6);
  *v9 = *a2;
  v10 = (v9 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    v10->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v10->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v12 = *(a2 + 32);
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 32) = v12;
  }

  *(v8 + 56) = *(a2 + 56);
  *&v21 = v21 + 64;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Edge>::~__split_buffer(&v19);
  return v18;
}

void sub_1B52F6B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v8 + 31) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Edge>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(a4 + 56) = *(v7 + 56);
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](a1, v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void **std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Edge>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Edge>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::corrective_reranking::VoiceEditingWFST::Edge>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v4, i - 64);
  }
}

void quasar::corrective_reranking::UniqueSearchPaths::~UniqueSearchPaths(void **this)
{
  *this = &unk_1F2D0B770;
  v1 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v2 = v1;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F2D0B770;
  v2 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v3 = v2;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1B8C85350](this, 0x10A1C403B35B87FLL);
}

void quasar::corrective_reranking::UniqueSearchPaths::getKey(void x0_0, const quasar::corrective_reranking::VoiceEditingWFST::Path *a1)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *(a1 + 2), *(a1 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3) - *(a1 + 2)) >> 3));
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v38, *(a1 + 8), *(a1 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 9) - *(a1 + 8)) >> 3));
  memset(&v37, 0, sizeof(v37));
  std::to_string(&v36, *a1);
  end = v37.__end_;
  if (v37.__end_ >= v37.__end_cap_.__value_)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v37.__end_ - v37.__begin_) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) > v6)
    {
      v6 = 0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v6;
    }

    v44.__end_cap_.__value_ = &v37;
    if (v7)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v37, v7);
    }

    v8 = 8 * ((v37.__end_ - v37.__begin_) >> 3);
    v9 = *&v36.__r_.__value_.__l.__data_;
    *(v8 + 16) = *(&v36.__r_.__value_.__l + 2);
    *v8 = v9;
    memset(&v36, 0, sizeof(v36));
    v10 = (24 * v5 + 24);
    v11 = (24 * v5 - (v37.__end_ - v37.__begin_));
    memcpy((v8 - (v37.__end_ - v37.__begin_)), v37.__begin_, v37.__end_ - v37.__begin_);
    begin = v37.__begin_;
    value = v37.__end_cap_.__value_;
    v37.__begin_ = v11;
    v37.__end_ = v10;
    v37.__end_cap_.__value_ = 0;
    v44.__end_ = begin;
    v44.__end_cap_.__value_ = value;
    v44.__first_ = begin;
    v44.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v44);
    v37.__end_ = v10;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = *&v36.__r_.__value_.__l.__data_;
    v37.__end_->__r_.__value_.__r.__words[2] = v36.__r_.__value_.__r.__words[2];
    *&end->__r_.__value_.__l.__data_ = v4;
    v37.__end_ = end + 1;
  }

  std::to_string(&v36, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
  v14 = v37.__end_;
  if (v37.__end_ >= v37.__end_cap_.__value_)
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v37.__end_ - v37.__begin_) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) > v18)
    {
      v18 = 0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v44.__end_cap_.__value_ = &v37;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v37, v19);
    }

    v20 = 8 * ((v37.__end_ - v37.__begin_) >> 3);
    v21 = *&v36.__r_.__value_.__l.__data_;
    *(v20 + 16) = *(&v36.__r_.__value_.__l + 2);
    *v20 = v21;
    memset(&v36, 0, sizeof(v36));
    v16 = (24 * v17 + 24);
    v22 = (v20 - (v37.__end_ - v37.__begin_));
    memcpy(v22, v37.__begin_, v37.__end_ - v37.__begin_);
    v23 = v37.__begin_;
    v24 = v37.__end_cap_.__value_;
    v37.__begin_ = v22;
    v37.__end_ = v16;
    v37.__end_cap_.__value_ = 0;
    v44.__end_ = v23;
    v44.__end_cap_.__value_ = v24;
    v44.__first_ = v23;
    v44.__begin_ = v23;
    std::__split_buffer<std::string>::~__split_buffer(&v44);
    v37.__end_ = v16;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
      v16 = v37.__end_;
    }
  }

  else
  {
    v15 = *&v36.__r_.__value_.__l.__data_;
    v37.__end_->__r_.__value_.__r.__words[2] = v36.__r_.__value_.__r.__words[2];
    *&v14->__r_.__value_.__l.__data_ = v15;
    v16 = v14 + 1;
    v37.__end_ = v14 + 1;
  }

  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v37, v16, v41, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
  std::to_string(&v36, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3));
  v25 = v37.__end_;
  if (v37.__end_ >= v37.__end_cap_.__value_)
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v37.__end_ - v37.__begin_) >> 3);
    v29 = v28 + 1;
    if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) > v29)
    {
      v29 = 0x5555555555555556 * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v37.__end_cap_.__value_ - v37.__begin_) >> 3) >= 0x555555555555555)
    {
      v30 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v30 = v29;
    }

    v44.__end_cap_.__value_ = &v37;
    if (v30)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v37, v30);
    }

    v31 = 8 * ((v37.__end_ - v37.__begin_) >> 3);
    v32 = *&v36.__r_.__value_.__l.__data_;
    *(v31 + 16) = *(&v36.__r_.__value_.__l + 2);
    *v31 = v32;
    memset(&v36, 0, sizeof(v36));
    v27 = (24 * v28 + 24);
    v33 = (v31 - (v37.__end_ - v37.__begin_));
    memcpy(v33, v37.__begin_, v37.__end_ - v37.__begin_);
    v34 = v37.__begin_;
    v35 = v37.__end_cap_.__value_;
    v37.__begin_ = v33;
    v37.__end_ = v27;
    v37.__end_cap_.__value_ = 0;
    v44.__end_ = v34;
    v44.__end_cap_.__value_ = v35;
    v44.__first_ = v34;
    v44.__begin_ = v34;
    std::__split_buffer<std::string>::~__split_buffer(&v44);
    v37.__end_ = v27;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
      v27 = v37.__end_;
    }
  }

  else
  {
    v26 = *&v36.__r_.__value_.__l.__data_;
    v37.__end_->__r_.__value_.__r.__words[2] = v36.__r_.__value_.__r.__words[2];
    *&v25->__r_.__value_.__l.__data_ = v26;
    v27 = v25 + 1;
    v37.__end_ = v25 + 1;
  }

  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v37, v27, v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3));
  v44.__first_ = " ";
  v44.__begin_ = 1;
  quasar::join<std::vector<std::string>>(&v37, &v44);
  v44.__first_ = &v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  v44.__first_ = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  v44.__first_ = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
}

void sub_1B52F71E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char ***__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char **a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Paths::~Paths(void **this)
{
  *this = &unk_1F2D0B770;
  v1 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v2 = v1;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F2D0B770;
  v2 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v3 = v2;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1B8C85350](this, 0x10A1C403B35B87FLL);
}

void quasar::corrective_reranking::Paths::getKey(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void quasar::corrective_reranking::UniqueOutputPaths::~UniqueOutputPaths(void **this)
{
  *this = &unk_1F2D0B770;
  v1 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v2 = v1;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F2D0B770;
  v2 = this + 1;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  v3 = v2;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1B8C85350](this, 0x10A1C403B35B87FLL);
}

void quasar::corrective_reranking::UniqueOutputPaths::getKey(void x0_0, const quasar::corrective_reranking::VoiceEditingWFST::Path *a1)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *(a1 + 8), *(a1 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 9) - *(a1 + 8)) >> 3));
  v2[0] = " ";
  v2[1] = 1;
  quasar::join<std::vector<std::string>>(v3, v2);
  v2[0] = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v2);
}

void sub_1B52F7490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path*,quasar::corrective_reranking::VoiceEditingWFST::Path*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52F7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*,quasar::corrective_reranking::VoiceEditingWFST::Path*,quasar::corrective_reranking::VoiceEditingWFST::Path*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 32) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 16), *(v6 + 16), *(v6 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - *(v6 + 16)) >> 3));
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v4 + 40), *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 2);
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 64), *(v6 + 64), *(v6 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 72) - *(v6 + 64)) >> 3));
      v6 += 88;
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1B52F7680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Path>,quasar::corrective_reranking::VoiceEditingWFST::Path*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(uint64_t a1, double *a2, void **a3, uint64_t a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 10) < *(a1 + 8))
      {
        v7 = a2 - 11;

        std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>(a1, v7);
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v14 = (a1 + 88);
        if ((a1 + 88) != a2)
        {
          v15 = 0;
          v16 = a1;
          do
          {
            v17 = v14;
            if (*(v16 + 96) < *(v16 + 8))
            {
              v18 = *(v16 + 104);
              v38 = *v14;
              v39[0] = v18;
              *&v39[1] = *(v16 + 120);
              *(v16 + 104) = 0;
              *(v16 + 112) = 0;
              *(&v39[1] + 8) = *(v16 + 128);
              *(&v39[2] + 1) = *(v16 + 144);
              *(v16 + 120) = 0;
              *(v16 + 128) = 0;
              *(v16 + 136) = 0;
              *(v16 + 144) = 0;
              *v40 = *(v16 + 152);
              *&v40[16] = *(v16 + 168);
              *(v16 + 152) = 0;
              *(v16 + 160) = 0;
              v19 = v15;
              *(v16 + 168) = 0;
              while (1)
              {
                v20 = a1 + v19;
                *(a1 + v19 + 88) = *(a1 + v19);
                std::vector<std::string>::__vdeallocate((a1 + v19 + 104));
                *(v20 + 104) = *(v20 + 16);
                *(v20 + 120) = *(v20 + 32);
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 16) = 0;
                std::vector<int>::__move_assign(v20 + 128, (v20 + 40));
                std::vector<std::string>::__vdeallocate((a1 + v19 + 152));
                *(v20 + 152) = *(v20 + 64);
                *(v20 + 168) = *(v20 + 80);
                *(v20 + 72) = 0;
                *(v20 + 80) = 0;
                *(v20 + 64) = 0;
                if (!v19)
                {
                  break;
                }

                v19 -= 88;
                if (*(&v38 + 1) >= *(v20 - 80))
                {
                  v21 = a1 + v19 + 88;
                  goto LABEL_22;
                }
              }

              v21 = a1;
LABEL_22:
              *v21 = v38;
              std::vector<std::string>::__vdeallocate((v20 + 16));
              *(v20 + 16) = *&v39[0];
              *(v21 + 24) = *(v39 + 8);
              memset(v39, 0, 24);
              v24 = *(v20 + 40);
              v23 = (v20 + 40);
              v22 = v24;
              if (v24)
              {
                *(v21 + 48) = v22;
                operator delete(v22);
                v23->__begin_ = 0;
                v23->__end_ = 0;
                v23->__end_cap_.__value_ = 0;
              }

              v23->__begin_ = *(&v39[1] + 1);
              *(v21 + 48) = v39[2];
              memset(&v39[1] + 8, 0, 24);
              std::vector<std::string>::__vdeallocate(v23 + 1);
              v23[1].__begin_ = *v40;
              *(v21 + 72) = *&v40[8];
              memset(v40, 0, sizeof(v40));
              v41 = v40;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
              if (*(&v39[1] + 1))
              {
                *&v39[2] = *(&v39[1] + 1);
                operator delete(*(&v39[1] + 1));
              }

              v41 = v39;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
            }

            v14 = (v17 + 88);
            v15 += 88;
            v16 = v17;
          }

          while ((v17 + 88) != a2);
        }
      }
    }

    else
    {
      v10 = a4;
      v11 = a3 >> 1;
      v12 = (a1 + 88 * (a3 >> 1));
      if (a3 <= a5)
      {
        v41 = 0;
        *&v38 = a4;
        *(&v38 + 1) = &v41;
        std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(a1, (a1 + 88 * (a3 >> 1)), a3 >> 1, a4);
        v41 = (a3 >> 1);
        v25 = a3 - v11;
        v26 = v10 + 88 * v11;
        std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>((a1 + 88 * (a3 >> 1)), a2, v25, v26);
        v41 = a3;
        v27 = (v10 + 88 * a3);
        v28 = (a1 + 80);
        v29 = v26;
        while (v29 != v27)
        {
          v30 = v28 - 10;
          v31 = (v28 - 8);
          if (*(v29 + 8) >= *(v10 + 8))
          {
            *v30 = *v10;
            std::vector<std::string>::__vdeallocate(v31);
            *(v28 - 4) = *(v10 + 16);
            *(v28 - 6) = *(v10 + 32);
            *(v10 + 16) = 0;
            *(v10 + 24) = 0;
            *(v10 + 32) = 0;
            std::vector<int>::__move_assign((v28 - 5), (v10 + 40));
            std::vector<std::string>::__vdeallocate((v28 - 2));
            *(v28 - 1) = *(v10 + 64);
            *v28 = *(v10 + 80);
            *(v10 + 64) = 0;
            *(v10 + 72) = 0;
            *(v10 + 80) = 0;
            v10 += 88;
          }

          else
          {
            *v30 = *v29;
            std::vector<std::string>::__vdeallocate(v31);
            *(v28 - 4) = *(v29 + 16);
            *(v28 - 6) = *(v29 + 32);
            *(v29 + 16) = 0;
            *(v29 + 24) = 0;
            *(v29 + 32) = 0;
            std::vector<int>::__move_assign((v28 - 5), (v29 + 40));
            std::vector<std::string>::__vdeallocate((v28 - 2));
            *(v28 - 1) = *(v29 + 64);
            *v28 = *(v29 + 80);
            *(v29 + 64) = 0;
            *(v29 + 72) = 0;
            *(v29 + 80) = 0;
            v29 += 88;
          }

          v28 += 11;
          if (v10 == v26)
          {
            if (v29 != v27)
            {
              v32 = 0;
              do
              {
                v33 = (v29 + v32);
                v34 = &v28[v32 / 8];
                *&v28[v32 / 8 - 10] = *(v29 + v32);
                std::vector<std::string>::__vdeallocate(&v28[v32 / 8 - 8]);
                *(v34 - 4) = *(v29 + v32 + 16);
                *(v34 - 6) = *(v29 + v32 + 32);
                v33[2] = 0;
                v33[3] = 0;
                v33[4] = 0;
                std::vector<int>::__move_assign(&v28[v32 / 8 - 5], (v29 + v32 + 40));
                std::vector<std::string>::__vdeallocate(&v28[v32 / 8 - 2]);
                *(v34 - 1) = *(v29 + v32 + 64);
                *v34 = *(v29 + v32 + 80);
                v33[8] = 0;
                v33[9] = 0;
                v33[10] = 0;
                v32 += 88;
              }

              while (v33 + 11 != v27);
            }

            goto LABEL_42;
          }
        }

        if (v10 != v26)
        {
          v35 = 0;
          do
          {
            v36 = (v10 + v35);
            v37 = &v28[v35 / 8];
            *&v28[v35 / 8 - 10] = *(v10 + v35);
            std::vector<std::string>::__vdeallocate(&v28[v35 / 8 - 8]);
            *(v37 - 4) = *(v10 + v35 + 16);
            *(v37 - 6) = *(v10 + v35 + 32);
            v36[2] = 0;
            v36[3] = 0;
            v36[4] = 0;
            std::vector<int>::__move_assign(&v28[v35 / 8 - 5], (v10 + v35 + 40));
            std::vector<std::string>::__vdeallocate(&v28[v35 / 8 - 2]);
            *(v37 - 1) = *(v10 + v35 + 64);
            *v37 = *(v10 + v35 + 80);
            v36[8] = 0;
            v36[9] = 0;
            v36[10] = 0;
            v35 += 88;
          }

          while (v36 + 11 != v26);
        }

LABEL_42:
        std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST::Path,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v38);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(a1, (a1 + 88 * (a3 >> 1)), a3 >> 1, a4, a5);
        v13 = a3 - v11;
        std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(v12, a2, v13, v10, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(a1, v12, a2, v11, v13, v10, a5);
      }
    }
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(double *result, double *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v24 = &v25;
    v25 = 0;
    v8 = *(a2 - 10);
    v9 = result[1];
    if (v8 >= v9)
    {
      v10 = result;
    }

    else
    {
      v10 = a2 - 11;
    }

    if (v8 >= v9)
    {
      v11 = a2 - 11;
    }

    else
    {
      v11 = result;
    }

    std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(a4, v10);
    ++v25;
    std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v4 + 88, v11);
LABEL_40:
    v23 = 0;
    std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST::Path,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v23);
    return;
  }

  if (a3 != 1)
  {
    if (a3 > 8)
    {
      v20 = 11 * (a3 >> 1);
      v21 = &result[v20];
      std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(result, &result[v20], a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(&v7[v20], a2, a3 - (a3 >> 1), v4 + v20 * 8, a3 - (a3 >> 1));
      v23 = v4;
      v24 = &v25;
      v25 = 0;
      v22 = &v7[v20];
      while (v22 != a2)
      {
        if (v22[1] >= v7[1])
        {
          std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v4, v7);
          v7 += 11;
        }

        else
        {
          std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v4, v22);
          v22 += 11;
        }

        ++v25;
        v4 += 88;
        if (v7 == v21)
        {
          while (v22 != a2)
          {
            std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v4, v22);
            v22 += 11;
            v4 += 88;
            ++v25;
          }

          goto LABEL_40;
        }
      }

      while (v7 != v21)
      {
        std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v4, v7);
        v7 += 11;
        v4 += 88;
        ++v25;
      }
    }

    else
    {
      if (result == a2)
      {
        return;
      }

      v23 = a4;
      v24 = &v25;
      v25 = 0;
      std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(a4, result);
      ++v25;
      v12 = (v7 + 11);
      if (v7 + 11 != a2)
      {
        v13 = 0;
        v14 = v4;
        do
        {
          v15 = v12;
          v16 = v14 + 88;
          v17 = v14 + 88;
          if (v7[12] >= *(v14 + 8))
          {
            std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v17, v12);
            ++v25;
          }

          else
          {
            std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(v17, v14);
            ++v25;
            v18 = v4;
            if (v14 != v4)
            {
              v19 = v13;
              while (1)
              {
                v18 = v4 + v19;
                if (v7[12] >= *(v4 + v19 - 80))
                {
                  break;
                }

                *v18 = *(v18 - 88);
                std::vector<std::string>::__vdeallocate((v18 + 16));
                *(v18 + 16) = *(v18 - 72);
                *(v18 + 32) = *(v18 - 56);
                *(v18 - 64) = 0;
                *(v18 - 56) = 0;
                *(v18 - 72) = 0;
                std::vector<int>::__move_assign(v18 + 40, (v18 - 48));
                std::vector<std::string>::__vdeallocate((v18 + 64));
                *(v18 + 64) = *(v18 - 24);
                *(v18 + 80) = *(v18 - 8);
                *(v18 - 16) = 0;
                *(v18 - 8) = 0;
                *(v18 - 24) = 0;
                v19 -= 88;
                if (!v19)
                {
                  v18 = v4;
                  break;
                }
              }
            }

            *v18 = *v15;
            std::vector<std::string>::__vdeallocate((v18 + 16));
            *(v18 + 16) = *(v7 + 13);
            *(v18 + 32) = v7[15];
            v7[13] = 0.0;
            v7[14] = 0.0;
            v7[15] = 0.0;
            std::vector<int>::__move_assign(v18 + 40, v7 + 8);
            std::vector<std::string>::__vdeallocate((v18 + 64));
            *(v18 + 64) = *(v7 + 19);
            *(v18 + 80) = v7[21];
            v7[19] = 0.0;
            v7[20] = 0.0;
            v7[21] = 0.0;
          }

          v12 = (v15 + 11);
          v13 += 88;
          v14 = v16;
          v7 = v15;
        }

        while (v15 + 11 != a2);
      }
    }

    goto LABEL_40;
  }

  std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(a4, result);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(double *result, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = (v12 + result);
        if (a2[1] < *(v12 + result + 8))
        {
          break;
        }

        v12 += 11;
        if (__CFADD__(v13++, 1))
        {
          return;
        }
      }

      v58 = a3;
      v59 = a6;
      if (-v13 >= v8)
      {
        if (v13 == -1)
        {

          std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>((v12 + result), a2);
          return;
        }

        v24 = -v13 / 2;
        v17 = a2;
        if (a2 != a3)
        {
          v25 = 0x2E8BA2E8BA2E8BA3 * (a3 - a2);
          v17 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = &v17[11 * (v25 >> 1)];
            v28 = v27[1];
            v29 = v27 + 11;
            v25 += ~(v25 >> 1);
            if (v28 < *(&result[11 * v24 + 1] + v12))
            {
              v17 = v29;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v16 = 0x2E8BA2E8BA2E8BA3 * (v17 - a2);
        v18 = (&result[11 * v24] + v12);
      }

      else
      {
        v16 = v8 / 2;
        v17 = &a2[11 * (v8 / 2)];
        v18 = a2;
        if ((a2 - result) != v12)
        {
          v19 = 0x2E8BA2E8BA2E8BA3 * ((a2 - result - v12) >> 3);
          v18 = (v12 + result);
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[11 * (v19 >> 1)];
            v22 = v21[1];
            v23 = v21 + 11;
            v19 += ~(v19 >> 1);
            if (v17[1] < v22)
            {
              v19 = v20;
            }

            else
            {
              v18 = v23;
            }
          }

          while (v19);
        }

        v24 = 0x2E8BA2E8BA2E8BA3 * ((v18 - result - v12) >> 3);
      }

      a3 = v17;
      if (v18 != a2)
      {
        a3 = v18;
        if (a2 != v17)
        {
          v30 = a7;
          v31 = v24;
          v32 = v16;
          v33 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(v18, a2, v17);
          v16 = v32;
          v24 = v31;
          a7 = v30;
          a3 = v33;
        }
      }

      a4 = -v13 - v24;
      v34 = v8 - v16;
      if (v24 + v16 >= v8 - (v24 + v16) - v13)
      {
        v37 = v24;
        v38 = -v13 - v24;
        v39 = v16;
        v36 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(a3, v17, v58, v38, v34, v59, a7);
        v17 = v18;
        a6 = v59;
        v34 = v39;
        a4 = v37;
      }

      else
      {
        v35 = v18;
        a6 = v59;
        v36 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_3 &,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(v12 + result, v35, a3, v24, v16, v59, a7);
        v14 = a3;
        a3 = v58;
      }

      v8 = v34;
      result = v14;
      a2 = v17;
      a7 = v36;
      if (!v34)
      {
        return;
      }
    }

    v60[0] = a6;
    v60[1] = &v61;
    v61 = 0;
    if (a4 <= v8)
    {
      if (a2 != result)
      {
        v53 = 0;
        v54 = a6;
        v55 = result;
        do
        {
          *v54 = *v55;
          *(v54 + 24) = 0;
          *(v54 + 32) = 0;
          *(v54 + 16) = 0;
          *(v54 + 16) = *(v55 + 16);
          *(v54 + 32) = *(v55 + 32);
          *(v55 + 16) = 0;
          *(v55 + 24) = 0;
          *(v55 + 32) = 0;
          *(v54 + 40) = 0;
          *(v54 + 48) = 0;
          *(v54 + 56) = 0;
          *(v54 + 40) = *(v55 + 40);
          *(v54 + 56) = *(v55 + 56);
          *(v55 + 40) = 0;
          *(v55 + 48) = 0;
          *(v55 + 56) = 0;
          *(v54 + 64) = 0;
          *(v54 + 72) = 0;
          *(v54 + 80) = 0;
          *(v54 + 64) = *(v55 + 64);
          *(v54 + 80) = *(v55 + 80);
          *(v55 + 64) = 0;
          *(v55 + 72) = 0;
          *(v55 + 80) = 0;
          ++v53;
          v55 += 88;
          v54 += 88;
        }

        while (v55 != a2);
        v61 = v53;
        while (a2 != a3)
        {
          if (a2[1] >= *(a6 + 8))
          {
            *result = *a6;
            v57 = a2;
            std::vector<std::string>::__vdeallocate((result + 2));
            *(result + 1) = *(a6 + 16);
            result[4] = *(a6 + 32);
            *(a6 + 16) = 0;
            *(a6 + 24) = 0;
            *(a6 + 32) = 0;
            std::vector<int>::__move_assign((result + 5), (a6 + 40));
            std::vector<std::string>::__vdeallocate((result + 8));
            a2 = v57;
            *(result + 4) = *(a6 + 64);
            result[10] = *(a6 + 80);
            *(a6 + 64) = 0;
            *(a6 + 72) = 0;
            *(a6 + 80) = 0;
            a6 += 88;
          }

          else
          {
            *result = *a2;
            v56 = a2;
            std::vector<std::string>::__vdeallocate((result + 2));
            *(result + 1) = *(v56 + 1);
            result[4] = v56[4];
            v56[2] = 0.0;
            v56[3] = 0.0;
            v56[4] = 0.0;
            std::vector<int>::__move_assign((result + 5), (v56 + 5));
            std::vector<std::string>::__vdeallocate((result + 8));
            *(result + 4) = *(v56 + 4);
            result[10] = v56[10];
            v56[8] = 0.0;
            v56[9] = 0.0;
            v56[10] = 0.0;
            a2 = v56 + 11;
          }

          result += 11;
          if (v54 == a6)
          {
            goto LABEL_69;
          }
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *,quasar::corrective_reranking::VoiceEditingWFST::Path *>(v62, a6, v54, result);
      }
    }

    else if (a2 != a3)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = &a2[v40];
        v43 = a6 + v40 * 8;
        *v43 = *&a2[v40];
        *(v43 + 24) = 0;
        *(v43 + 32) = 0;
        *(v43 + 16) = 0;
        *(v43 + 16) = *&a2[v40 + 2];
        *(v43 + 32) = a2[v40 + 4];
        v42[2] = 0.0;
        v42[3] = 0.0;
        v42[4] = 0.0;
        *(v43 + 40) = 0;
        *(v43 + 48) = 0;
        *(v43 + 56) = 0;
        *(v43 + 40) = *&a2[v40 + 5];
        *(v43 + 56) = a2[v40 + 7];
        v42[5] = 0.0;
        v42[6] = 0.0;
        v42[7] = 0.0;
        *(v43 + 64) = 0;
        *(v43 + 72) = 0;
        *(v43 + 80) = 0;
        *(v43 + 64) = *&a2[v40 + 8];
        *(v43 + 80) = a2[v40 + 10];
        v42[8] = 0.0;
        v42[9] = 0.0;
        v42[10] = 0.0;
        ++v41;
        v40 += 11;
      }

      while (v42 + 11 != a3);
      v61 = v41;
      v44 = a6 + v40 * 8;
      v45 = (a3 - 3);
      v46 = a3;
      v47 = a6 + v40 * 8;
      while (a2 != result)
      {
        v48 = *(v47 - 80);
        v49 = *(a2 - 10);
        if (v48 < v49)
        {
          v50 = a2 - 11;
        }

        else
        {
          v50 = (v47 - 88);
        }

        if (v48 < v49)
        {
          v51 = a2;
        }

        else
        {
          v51 = v47;
        }

        if (v48 < v49)
        {
          v52 = a2 - 11;
        }

        else
        {
          v52 = a2;
        }

        if (v48 >= v49)
        {
          v47 -= 88;
        }

        *&v45[-3].__end_ = *v50;
        std::vector<std::string>::__vdeallocate(v45 - 2);
        *&v45[-2].__begin_ = *(v51 - 9);
        v45[-2].__end_cap_.__value_ = *(v51 - 7);
        *(v51 - 9) = 0.0;
        *(v51 - 8) = 0.0;
        *(v51 - 7) = 0.0;
        std::vector<int>::__move_assign(&v45[-1], v51 - 3);
        std::vector<std::string>::__vdeallocate(v45);
        a2 = v52;
        *&v45->__begin_ = *(v51 - 3);
        v45->__end_cap_.__value_ = *(v51 - 1);
        *(v51 - 3) = 0.0;
        *(v51 - 2) = 0.0;
        *(v51 - 1) = 0.0;
        v46 -= 11;
        v45 = (v45 - 88);
        if (v47 == a6)
        {
          goto LABEL_69;
        }
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<quasar::corrective_reranking::VoiceEditingWFST::Path *>,std::reverse_iterator<quasar::corrective_reranking::VoiceEditingWFST::Path *>,std::reverse_iterator<std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>>(v44, v47, a6, a3, v46, v62);
    }

LABEL_69:
    std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST::Path,std::__destruct_n &>::~unique_ptr[abi:ne200100](v60);
  }
}

void sub_1B52F85A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST::Path,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>(std::vector<std::wstring> *this, uint64_t a2)
{
  v17 = *&this->__begin_;
  end = this[1].__end_;
  p_end_cap = &this->__end_cap_;
  v13 = *&this->__end_cap_.__value_;
  this[1].__begin_ = 0;
  this[1].__end_ = 0;
  this->__end_cap_.__value_ = 0;
  v5 = &this[1].__end_cap_;
  v6 = *&this[1].__end_cap_.__value_;
  v7 = this[2].__end_;
  this[1].__end_cap_.__value_ = 0;
  v8 = (this + 64);
  *&v9 = v7;
  value = this[2].__end_cap_.__value_;
  *(&v9 + 1) = value;
  this[2].__begin_ = 0;
  this[2].__end_ = 0;
  v15 = v6;
  *__p = v6;
  v20 = v9;
  begin = this[3].__begin_;
  v11 = this[3].__end_;
  v21 = begin;
  v22 = v11;
  this[3].__begin_ = 0;
  this[3].__end_ = 0;
  this[2].__end_cap_.__value_ = 0;
  *&this->__begin_ = *a2;
  std::vector<std::string>::__vdeallocate(&this->__end_cap_);
  *&p_end_cap->__value_ = *(a2 + 16);
  this[1].__end_ = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  std::vector<int>::__move_assign(v5, (a2 + 40));
  std::vector<std::string>::__vdeallocate(v8);
  *&v8->__begin_ = *(a2 + 64);
  this[3].__end_ = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = v17;
  std::vector<std::string>::__vdeallocate((a2 + 16));
  *(a2 + 16) = v13;
  *(a2 + 32) = end;
  memset(v18, 0, sizeof(v18));
  v12 = *(a2 + 40);
  if (v12)
  {
    *(a2 + 48) = v12;
    operator delete(v12);
  }

  *(a2 + 40) = v15;
  *(a2 + 56) = v7;
  __p[1] = 0;
  *&v20 = 0;
  __p[0] = 0;
  std::vector<std::string>::__vdeallocate((a2 + 64));
  *(a2 + 64) = value;
  *(a2 + 72) = begin;
  *(a2 + 80) = v11;
  v21 = 0;
  v22 = 0;
  *(&v20 + 1) = 0;
  v23[0] = &v20 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v23[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
}

__n128 std::__construct_at[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path,quasar::corrective_reranking::VoiceEditingWFST::Path*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

uint64_t *std::unique_ptr<quasar::corrective_reranking::VoiceEditingWFST::Path,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 64);
      do
      {
        v8 = v5;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
        v6 = *(v5 - 3);
        if (v6)
        {
          *(v5 - 2) = v6;
          operator delete(v6);
        }

        v8 = v5 - 6;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
        ++v4;
        v5 += 11;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<quasar::corrective_reranking::VoiceEditingWFST::Path *>,std::reverse_iterator<quasar::corrective_reranking::VoiceEditingWFST::Path *>,std::reverse_iterator<std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v8 = a2;
  if (a2 != a3)
  {
    v12 = 0;
    do
    {
      v13 = v8 + v12;
      v14 = a5 + v12;
      *(a5 + v12 - 88) = *(v8 + v12 - 88);
      std::vector<std::string>::__vdeallocate((a5 + v12 - 72));
      *(v14 - 72) = *(v8 + v12 - 72);
      *(v14 - 56) = *(v8 + v12 - 56);
      *(v13 - 72) = 0;
      *(v13 - 64) = 0;
      *(v13 - 56) = 0;
      std::vector<int>::__move_assign(a5 + v12 - 48, (v8 + v12 - 48));
      std::vector<std::string>::__vdeallocate((a5 + v12 - 24));
      *(v14 - 24) = *(v8 + v12 - 24);
      *(v14 - 8) = *(v8 + v12 - 8);
      *(v13 - 24) = 0;
      *(v13 - 16) = 0;
      *(v13 - 8) = 0;
      v12 -= 88;
    }

    while (v8 + v12 != a3);
    a5 += v12;
    v8 += v12;
  }

  *a6 = a1;
  a6[1] = v8;
  a6[2] = a4;
  a6[3] = a5;
}

std::vector<std::wstring> *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::corrective_reranking::VoiceEditingWFST::Path *>>(std::vector<std::wstring> *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>(a1, a2);
  v6 = (a1 + 88);
  for (i = v4 + 88; i != a3; i += 88)
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>(v6, i);
    v6 = (v6 + 88);
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        std::swap[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path>(v8, v9);
        v8 = (v8 + 88);
        v9 += 88;
        if (v9 == a3)
        {
          break;
        }

        if (v8 == v4)
        {
          v4 = v9;
        }
      }

      v9 = v4;
    }

    while (v8 != v4);
  }

  return v6;
}

uint64_t parseProb(const char *a1, double *a2)
{
  v4 = 0;
  result = sscanf(a1, "%lf", &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t parseLogP(const char *a1, double *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = v2 == 45 || v2 == 43;
  v6 = v5;
  if (v5)
  {
    ++a1;
  }

  v7 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = &v4[v6 + 1];
    v11 = *a1;
    while ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) != 0)
    {
      v9 = v11 + 10 * v9 - 48;
      v12 = *(v10 + v8);
      v11 = *(v10 + v8++);
      if (v12 < 0)
      {
        goto LABEL_14;
      }
    }

    if (v11 == 46)
    {
      v14 = &v4[v6];
      if (v14[v8 + 1] < 0)
      {
        goto LABEL_14;
      }

      v11 = v14[v8 + 1];
      v15 = v14 + 2;
      v16 = 1;
      do
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) == 0)
        {
          break;
        }

        v9 = v11 + 10 * v9 - 48;
        v16 *= 10;
        v17 = v15[v8];
        v11 = v15[v8++];
      }

      while ((v17 & 0x80000000) == 0);
      v18 = v16;
    }

    else
    {
      v18 = 1.0;
    }

    if (!v11 && v8 <= 8)
    {
      v20 = v9;
      if (v2 == 45)
      {
        v20 = -v9;
      }

      v19 = v20 / v18;
      goto LABEL_40;
    }
  }

LABEL_14:
  if (v7 == 105 || v7 == 73)
  {
    if (a1[1] == 110 && a1[2] == 102)
    {
      goto LABEL_31;
    }
  }

  else if (v7 != 49 || a1[1] != 46 || a1[2] != 35)
  {
    return sscanf(v4, "%lf", a2) == 1;
  }

  if (strncmp(a1, "1.#INF", 6uLL))
  {
    return sscanf(v4, "%lf", a2) == 1;
  }

LABEL_31:
  v19 = INFINITY;
  if (v2 == 45)
  {
    v19 = -INFINITY;
  }

LABEL_40:
  *a2 = v19;
  return 1;
}

double PQCodebook::getProb(PQCodebook *this, unsigned int a2)
{
  if (*this <= a2)
  {
    return INFINITY;
  }

  else
  {
    return *Array<double>::operator[](this + 2, a2);
  }
}

void *quasar::ProcessingGraph::ProcessingGraph(void *a1, void *a2)
{
  a1[2] = 0;
  a1[1] = a1 + 2;
  *a1 = &unk_1F2D0B7D8;
  a1[3] = 0;
  v3 = a2[1];
  a1[4] = *a2;
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::ProcessingGraph::registerBlockType<quasar::MergerBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::NullBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::PDecTranslatorBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::PDecPhraseBookBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::AlternativesProcessorBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::AlignmentProcessorBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::DoNotTranslateBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::AmbiguityAnnotatorBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::SegmentationBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::SimpleTokenizerBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::PhraseBookBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::InputHammerBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::RomanizerBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::SentencePieceBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::QualityEstimatorBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::PDecForceAlignBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::FilterBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::SelectBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::CaseMapBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::GenderVerifierBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::PlaceholderBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::DumpBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::StructuredPredictionBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::LinkAlternativesBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::ProfanityFilterBlock>(a1);
  quasar::ProcessingGraph::registerBlockType<quasar::TokenizerBlock>(a1);
  return a1;
}

void sub_1B52F8DA4(_Unwind_Exception *a1)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__tree<std::string>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

void quasar::ProcessingGraph::registerBlockType<quasar::MergerBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MergerBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::MergerBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F8E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::NullBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NullBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::NullBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F8EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::PDecTranslatorBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PDecTranslatorBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::PDecTranslatorBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F8F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::PDecPhraseBookBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PDecPhraseBookBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::PDecPhraseBookBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F900C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::AlternativesProcessorBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlternativesProcessorBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::AlternativesProcessorBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F90A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::AlignmentProcessorBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlignmentProcessorBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::AlignmentProcessorBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::DoNotTranslateBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DoNotTranslateBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::DoNotTranslateBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F91D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::AmbiguityAnnotatorBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AmbiguityAnnotatorBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::AmbiguityAnnotatorBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::SegmentationBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SegmentationBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::SegmentationBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::SimpleTokenizerBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SimpleTokenizerBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::SimpleTokenizerBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F939C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::PhraseBookBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PhraseBookBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::PhraseBookBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::InputHammerBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "InputHammerBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::InputHammerBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F94CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::RomanizerBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RomanizerBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::RomanizerBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::SentencePieceBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SentencePieceBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::SentencePieceBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F95FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::QualityEstimatorBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "QualityEstimatorBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::QualityEstimatorBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::PDecForceAlignBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PDecForceAlignBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::PDecForceAlignBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F972C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::FilterBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FilterBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::FilterBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F97C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::SelectBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SelectBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::SelectBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F985C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::CaseMapBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CaseMapBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::CaseMapBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F98F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::GenderVerifierBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "GenderVerifierBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::GenderVerifierBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F998C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::PlaceholderBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PlaceholderBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::PlaceholderBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::DumpBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DumpBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::DumpBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::StructuredPredictionBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "StructuredPredictionBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::StructuredPredictionBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::LinkAlternativesBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LinkAlternativesBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::LinkAlternativesBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::ProfanityFilterBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ProfanityFilterBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::ProfanityFilterBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::registerBlockType<quasar::TokenizerBlock>(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TokenizerBlock");
  v4 = __p;
  *(std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 8), __p, &std::piecewise_construct, &v4) + 56) = quasar::ProcessingGraph::creator<quasar::TokenizerBlock>;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F9D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingGraph::~ProcessingGraph(quasar::ProcessingGraph *this)
{
  *this = &unk_1F2D0B7D8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::string>::destroy(this + 8, *(this + 2));
}

void quasar::ProcessingGraph::createBlock(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  if (!std::__tree<std::string>::__count_unique<std::string>(a1 + 8, a2))
  {
    memset(v16, 0, sizeof(v16));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ProcessingGraph: Unknown blocktype '", 36);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "', did you forget to call 'registerBlockType'?");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v16);
  }

  *&v16[0] = a2;
  v6 = std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::ProcessingBlock> (*)(void)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2, &std::piecewise_construct, v16, &v17);
  (v6[7])();
  v7 = *a3;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 56))(v7, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1B52F9F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  quasar::ProcessingGraph::createBlock(v10);
  _Unwind_Resume(a1);
}

void quasar::ProcessingGraph::run(void *a1, uint64_t a2, __int128 *a3)
{
  LOBYTE(v5) = 0;
  v7 = 0;
  if (*(a3 + 24) == 1)
  {
    v5 = *a3;
    v6 = *(a3 + 2);
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    v7 = 1;
  }

  memset(v4, 0, sizeof(v4));
  std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(v4, *a2, *(a2 + 8), 0xF83E0F83E0F83E1 * ((*(a2 + 8) - *a2) >> 3));
  quasar::ProcessingGraph::contextWrapper<&quasar::ProcessingGraph::runInternal,quasar::ProcessingBlock::ValueType>(a1, &v5, v4);
  v8 = v4;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v7 == 1)
  {
    v8 = &v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }
}

void sub_1B52FA07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v17 - 40) = v16;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  if (a16)
  {
    *(v17 - 40) = &a13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  }

  _Unwind_Resume(a1);
}

void quasar::ProcessingGraph::contextWrapper<&quasar::ProcessingGraph::runInternal,quasar::ProcessingBlock::ValueType>(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    if (v5 != v6)
    {
      v7 = 0uLL;
      v8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v7, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      operator new();
    }
  }

  (*(*a1 + 32))(a1, a3);
}

void sub_1B52FA210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void quasar::ProcessingGraph::run(void *a1, const void ***a2, __int128 *a3)
{
  LOBYTE(v5) = 0;
  v7 = 0;
  if (*(a3 + 24) == 1)
  {
    v5 = *a3;
    v6 = *(a3 + 2);
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    v7 = 1;
  }

  std::map<std::string,quasar::ProcessingBlock::ValueType>::map[abi:ne200100](v4, a2);
  quasar::ProcessingGraph::contextWrapper<&quasar::ProcessingGraph::runInternal,std::map<std::string,quasar::ProcessingBlock::ValueType>>(a1, &v5, v4);
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(v4, v4[1]);
  if (v7 == 1)
  {
    v8 = &v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }
}

void sub_1B52FA2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(&a10, a11);
  if (a16)
  {
    *(v16 - 40) = &a13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  }

  _Unwind_Resume(a1);
}

void quasar::ProcessingGraph::contextWrapper<&quasar::ProcessingGraph::runInternal,std::map<std::string,quasar::ProcessingBlock::ValueType>>(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    if (v5 != v6)
    {
      v7 = 0uLL;
      v8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v7, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      operator new();
    }
  }

  (*(*a1 + 40))(a1, a3);
}

void sub_1B52FA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t quasar::LinearProcessingGraph::appendBlock(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  quasar::ProcessingGraph::createBlock(a1, &__p.__r_.__value_.__l.__data_, &v23);
  v4 = a1[7];
  v3 = a1[8];
  if (v4 >= v3)
  {
    v7 = a1[6];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v24[4] = a1 + 6;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 6), v13);
    }

    v14 = (v4 - v7) >> 3;
    v15 = (8 * v9);
    v16 = v23;
    v23 = 0;
    v17 = (8 * v9 - 8 * v14);
    *v15 = v16;
    v6 = v15 + 1;
    memcpy(v17, v7, v8);
    v18 = a1[6];
    a1[6] = v17;
    a1[7] = v6;
    v19 = a1[8];
    a1[8] = 0;
    v24[2] = v18;
    v24[3] = v19;
    v24[0] = v18;
    v24[1] = v18;
    std::__split_buffer<std::unique_ptr<quasar::ProcessingBlock>>::~__split_buffer(v24);
  }

  else
  {
    v5 = v23;
    v23 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[7] = v6;
  v20 = v23;
  v23 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return *(a1[7] - 8);
}

void sub_1B52FAAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    quasar::LinearProcessingGraph::appendBlock(a16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DirectedProcessingGraph::DirectedProcessingGraph(void *a1, void *a2)
{
  v4[14] = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ProcessingGraph::ProcessingGraph(a1, v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F2D0B820;
  operator new();
}

void sub_1B52FADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v20, *(v19 + 7));
  quasar::ProcessingGraph::~ProcessingGraph(v19);
  _Unwind_Resume(a1);
}

void sub_1B52FAE68()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1B52FAE60);
}

uint64_t std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B52FB170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v18, *(v17 + 7));
  quasar::ProcessingGraph::~ProcessingGraph(v17);
  _Unwind_Resume(a1);
}

void quasar::DirectedProcessingGraph::runInternal(uint64_t a1, uint64_t a2)
{
  quasar::ProcessingSink::resetValue(*(a1 + 72));
  quasar::ProcessingBlock::receive(*(a1 + 80), a2);
  v5 = *(a1 + 48);
  if (v5 != (a1 + 56))
  {
    do
    {
      (*(*v5[7] + 40))(v5[7]);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (a1 + 56));
  }

  quasar::ProcessingSink::getValue(*(a1 + 72));
  operator new();
}

void quasar::DirectedProcessingGraph::runInternal(uint64_t a1, void *a2)
{
  quasar::ProcessingSink::resetValue(*(a1 + 72));
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      quasar::ProcessingBlock::receive(*(a1 + 80), (v6 + 4), (v6 + 7));
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  v11 = *(a1 + 48);
  if (v11 != (a1 + 56))
  {
    do
    {
      (*(*v11[7] + 40))(v11[7]);
      v12 = v11[1];
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
          v13 = v11[2];
          v10 = *v13 == v11;
          v11 = v13;
        }

        while (!v10);
      }

      v11 = v13;
    }

    while (v13 != (a1 + 56));
  }

  quasar::ProcessingSink::getValue(*(a1 + 72));
  operator new();
}

void quasar::DirectedProcessingGraph::runMultiOutInternal(uint64_t a1, void *a2)
{
  quasar::ProcessingSink::resetValue(*(a1 + 72));
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      quasar::ProcessingBlock::receive(*(a1 + 80), (v6 + 4), (v6 + 7));
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  v11 = *(a1 + 48);
  if (v11 != (a1 + 56))
  {
    do
    {
      (*(*v11[7] + 40))(v11[7]);
      v12 = v11[1];
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
          v13 = v11[2];
          v10 = *v13 == v11;
          v11 = v13;
        }

        while (!v10);
      }

      v11 = v13;
    }

    while (v13 != (a1 + 56));
  }

  quasar::ProcessingSink::getValueMap(*(a1 + 72));
  operator new();
}

uint64_t quasar::DirectedProcessingGraph::addBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (*(a2 + 8) != 12)
    {
      goto LABEL_10;
    }

    v7 = *a2;
  }

  else
  {
    v7 = a2;
    if (v6 != 12)
    {
      goto LABEL_10;
    }
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 == 0x756F2D6870617267 && v9 == 1953853556)
  {
    goto LABEL_27;
  }

LABEL_10:
  if (std::__tree<std::string>::__count_unique<std::string>(a1 + 48, a2))
  {
    v34 = 0u;
    v35 = 0u;
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
    v21 = 0u;
    memset(v20, 0, sizeof(v20));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Block ID already exist: ", 24);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, a2);
    goto LABEL_30;
  }

  if (*(a3 + 23) < 0)
  {
    v11 = *(a3 + 8);
    if (v11)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, v11);
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (!*(a3 + 23))
  {
LABEL_29:
    v34 = 0u;
    v35 = 0u;
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
    v21 = 0u;
    memset(v20, 0, sizeof(v20));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Missing (or empty) block-type for block ID: ", 44);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, a2);
LABEL_30:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v20);
  }

  __p = *a3;
LABEL_16:
  quasar::ProcessingGraph::createBlock(a1, &__p.__r_.__value_.__l.__data_, &v19);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v20, *a2, *(a2 + 8));
  }

  else
  {
    *v20 = *a2;
    *&v20[16] = *(a2 + 16);
  }

  v12 = v19;
  v19 = 0;
  *&v20[24] = v12;
  std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<quasar::ProcessingBlock>>>((a1 + 48), v20, v20);
  v13 = *&v20[24];
  *&v20[24] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if ((v20[23] & 0x80000000) != 0)
  {
    operator delete(*v20);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  *v20 = a2;
  return *(std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a2, &std::piecewise_construct, v20) + 7);
}

void quasar::DirectedProcessingGraph::addConnection(uint64_t a1, __int128 *a2, uint64_t a3, const std::string *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *a3, *(a3 + 8));
  }

  else
  {
    v58 = *a3;
  }

  size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    MEMORY[0x1B8C84820](&v58, "in");
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v53, a4, 24);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v53, &v50, 0x3Au);
  v48 = 0uLL;
  v49 = 0;
  v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v53, &v48, 0x3Au);
  if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
  {
    MEMORY[0x1B8C84820](&v48, "out");
  }

  if (quasar::gLogLevel >= 5)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    *__p = 0u;
    *v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Creating graph connection: ", 27);
    if (v52 >= 0)
    {
      v10 = &v50;
    }

    else
    {
      v10 = v50;
    }

    if (v52 >= 0)
    {
      v11 = HIBYTE(v52);
    }

    else
    {
      v11 = v51;
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ":", 1);
    if (v49 >= 0)
    {
      v14 = &v48;
    }

    else
    {
      v14 = v48;
    }

    if (v49 >= 0)
    {
      v15 = HIBYTE(v49);
    }

    else
    {
      v15 = *(&v48 + 1);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " -> ", 4);
    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 1);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":", 1);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v58;
    }

    else
    {
      v23 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v58.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v31);
  }

  if (a1 + 56 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 48, &v50))
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    *__p = 0u;
    *v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unknown block identifier in 'receives-from': ", 45);
    if (v52 >= 0)
    {
      v29 = &v50;
    }

    else
    {
      v29 = v50;
    }

    if (v52 >= 0)
    {
      v30 = HIBYTE(v52);
    }

    else
    {
      v30 = v51;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v31);
  }

  v31[0] = &v50;
  v25 = *(std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), &v50, &std::piecewise_construct, v31) + 7);
  v59 = a2;
  v26 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a2, &std::piecewise_construct, &v59);
  quasar::ProcessingConnection::ProcessingConnection(v31, *(v26 + 7), &v58, &v48);
  quasar::ProcessingBlock::connectOutput(v25, v31);
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  v53[0] = *MEMORY[0x1E69E54D8];
  v27 = *(MEMORY[0x1E69E54D8] + 72);
  *(v53 + *(v53[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v53[2] = v27;
  v54 = MEMORY[0x1E69E5548] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v57);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1B52FBD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56)
{
  if (*(v56 - 57) < 0)
  {
    operator delete(*(v56 - 80));
  }

  _Unwind_Resume(exception_object);
}

void quasar::DirectedProcessingGraph::updateConfiguration(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v10 = *(a2 + 23);
  if (v10 < 0)
  {
    if (a2[1] != 11)
    {
      goto LABEL_10;
    }

    v11 = *a2;
  }

  else
  {
    v11 = a2;
    if (v10 != 11)
    {
      goto LABEL_10;
    }
  }

  v12 = *v11;
  v13 = *(v11 + 3);
  if (v12 == 0x6E692D6870617267 && v13 == 0x7475706E692D6870)
  {
    v34 = 0u;
    v35 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No config block allowed for '", 29);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "graph-input", 11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "'");
    goto LABEL_14;
  }

LABEL_10:
  if (std::__tree<std::string>::__count_unique<std::string>(a1 + 48, a2))
  {
    __p[0] = a2;
    v15 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a2, &std::piecewise_construct, __p);
    (*(**(v15 + 7) + 32))(*(v15 + 7), a3, a4, a5);
    std::string::basic_string[abi:ne200100]<0>(__p, "receive-from");
    quasar::PTree::getChildOptional(a4, __p);
  }

  v34 = 0u;
  v35 = 0u;
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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "updateConfiguration called for nonexisting block id: ", 53);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, a2);
LABEL_14:
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::DirectedProcessingGraph::checkGraph(quasar::DirectedProcessingGraph *this)
{
  v1 = *(this + 6);
  v2 = this + 56;
  if (v1 != this + 56)
  {
    v3 = 0;
    while (1)
    {
      v4 = (*(**(v1 + 7) + 16))(*(v1 + 7));
      std::string::basic_string[abi:ne200100]<0>(__s1, "NullBlock");
      v5 = strlen(v4);
      if ((SBYTE7(v43) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 != SBYTE7(v43) || memcmp(__s1, v4, v5))
      {
        goto LABEL_12;
      }

LABEL_79:
      v38 = *(v1 + 1);
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = *(v1 + 2);
          v13 = *v39 == v1;
          v1 = v39;
        }

        while (!v13);
      }

      v1 = v39;
      if (v39 == v2)
      {
        if (v3)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          *__s1 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "Found ", 6);
          v41 = MEMORY[0x1B8C84C00](v40, v3);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v41, " graph connectivity error(s)");
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__s1);
        }

        return;
      }
    }

    if (v5 == __s1[1])
    {
      if (v5 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v6 = __s1[0];
      v7 = memcmp(__s1[0], v4, v5);
      operator delete(v6);
      if (!v7)
      {
        goto LABEL_79;
      }
    }

    else
    {
      operator delete(__s1[0]);
    }

LABEL_12:
    v8 = (v1 + 32);
    v9 = v1[55];
    if (v1[55] < 0)
    {
      if (*(v1 + 5) != 12)
      {
        goto LABEL_21;
      }

      v10 = *v8;
    }

    else
    {
      v10 = (v1 + 32);
      if (v9 != 12)
      {
LABEL_21:
        if (*(*(v1 + 7) + 32) == *(*(v1 + 7) + 40))
        {
          if (quasar::gLogLevel >= 1)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            *__s1 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "Block has no outgoing connections: ", 35);
            v16 = v1[55];
            if (v16 >= 0)
            {
              v17 = (v1 + 32);
            }

            else
            {
              v17 = *(v1 + 4);
            }

            if (v16 >= 0)
            {
              v18 = v1[55];
            }

            else
            {
              v18 = *(v1 + 5);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(__s1);
            v9 = v1[55];
          }

          LODWORD(v3) = v3 + 1;
          if ((v9 & 0x80) == 0)
          {
LABEL_23:
            v14 = (v1 + 32);
            if (v9 != 12)
            {
              goto LABEL_46;
            }

            goto LABEL_36;
          }

LABEL_34:
          if (*(v1 + 5) != 12)
          {
            goto LABEL_48;
          }

          v14 = *v8;
LABEL_36:
          v19 = *v14;
          v20 = *(v14 + 2);
          v21 = v19 == 0x756F2D6870617267 && v20 == 1953853556;
          if (v21 && *(*(v1 + 7) + 32) != *(*(v1 + 7) + 40))
          {
            if (quasar::gLogLevel >= 1)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              *__s1 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "'", 1);
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "graph-output", 12);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "' can have no outgoing connections", 34);
              quasar::QuasarErrorMessage::~QuasarErrorMessage(__s1);
              v9 = v1[55];
            }

            LODWORD(v3) = v3 + 1;
          }

          if ((v9 & 0x80) == 0)
          {
LABEL_46:
            if (v9 == 11)
            {
              v24 = (v1 + 32);
              goto LABEL_50;
            }

            goto LABEL_54;
          }

LABEL_48:
          if (*(v1 + 5) == 11)
          {
            v24 = *v8;
LABEL_50:
            v25 = *v24;
            v26 = *(v24 + 3);
            if (v25 == 0x6E692D6870617267 && v26 == 0x7475706E692D6870)
            {
              goto LABEL_55;
            }
          }

LABEL_54:
          if (!*(*(v1 + 7) + 24))
          {
            if (quasar::gLogLevel >= 1)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              *__s1 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
              v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "Block has no incoming connections: ", 35);
              v30 = v1[55];
              if (v30 >= 0)
              {
                v31 = (v1 + 32);
              }

              else
              {
                v31 = *(v1 + 4);
              }

              if (v30 >= 0)
              {
                v32 = v1[55];
              }

              else
              {
                v32 = *(v1 + 5);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
              quasar::QuasarErrorMessage::~QuasarErrorMessage(__s1);
              v9 = v1[55];
            }

            LODWORD(v3) = v3 + 1;
            if ((v9 & 0x80) == 0)
            {
LABEL_56:
              v28 = (v1 + 32);
              if (v9 != 11)
              {
                goto LABEL_78;
              }

              goto LABEL_69;
            }

LABEL_67:
            if (*(v1 + 5) != 11)
            {
LABEL_78:
              v3 = (*(**(v1 + 7) + 48))(*(v1 + 7), v1 + 4) + v3;
              goto LABEL_79;
            }

            v28 = *v8;
LABEL_69:
            v33 = *v28;
            v34 = *(v28 + 3);
            v35 = v33 == 0x6E692D6870617267 && v34 == 0x7475706E692D6870;
            if (v35 && *(*(v1 + 7) + 24))
            {
              if (quasar::gLogLevel >= 1)
              {
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                *__s1 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__s1);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__s1, "'", 1);
                v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "graph-input", 11);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "' can have no incoming connections", 34);
                quasar::QuasarErrorMessage::~QuasarErrorMessage(__s1);
              }

              LODWORD(v3) = v3 + 1;
            }

            goto LABEL_78;
          }

LABEL_55:
          if ((v9 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_67;
        }

LABEL_22:
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_34;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 2);
    v13 = v11 == 0x756F2D6870617267 && v12 == 1953853556;
    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

uint64_t quasar::ProcessingGraph::getBlock(uint64_t a1)
{
  if (quasar::gLogLevel >= 1)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Block name lookup not supported for this graph type!", 52);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v3);
  }

  return (*(*a1 + 16))(a1, 0);
}

void quasar::LinearProcessingGraph::~LinearProcessingGraph(quasar::LinearProcessingGraph *this)
{
  *this = &unk_1F2D0B878;
  v2 = (this + 48);
  std::vector<std::unique_ptr<quasar::ProcessingBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::ProcessingGraph::~ProcessingGraph(this);
}

{
  *this = &unk_1F2D0B878;
  v2 = (this + 48);
  std::vector<std::unique_ptr<quasar::ProcessingBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::ProcessingGraph::~ProcessingGraph(this);
  MEMORY[0x1B8C85350]();
}

uint64_t quasar::LinearProcessingGraph::getBlock(quasar::LinearProcessingGraph *this, int a2)
{
  v2 = *(this + 6);
  if (a2 >= ((*(this + 7) - v2) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

void quasar::LinearProcessingGraph::runInternal(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Multiple inputs not supported for (legacy) block config format");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  v2 = *(*a1 + 32);

  v2();
}

void quasar::LinearProcessingGraph::runMultiOutInternal()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Multiple inputs not supported for (legacy) block config format");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void quasar::DirectedProcessingGraph::~DirectedProcessingGraph(quasar::DirectedProcessingGraph *this)
{
  *this = &unk_1F2D0B820;
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 48, *(this + 7));

  quasar::ProcessingGraph::~ProcessingGraph(this);
}

{
  *this = &unk_1F2D0B820;
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 48, *(this + 7));
  quasar::ProcessingGraph::~ProcessingGraph(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::DirectedProcessingGraph::getBlock(quasar::DirectedProcessingGraph *this, unsigned int a2)
{
  v2 = *(this + 6);
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v4 = v2[1];
      v5 = v2;
      if (v4)
      {
        do
        {
          v2 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v2 = v5[2];
          v6 = *v2 == v5;
          v5 = v2;
        }

        while (!v6);
      }

      if (v2 == (this + 56))
      {
        memset(v9, 0, sizeof(v9));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid block index: ", 21);
        MEMORY[0x1B8C84C00](v7, a2);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v9);
      }
    }
  }
}

void std::__shared_ptr_emplace<quasar::Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0B8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::pair<std::string,std::unique_ptr<quasar::ProcessingBlock>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<quasar::ProcessingBlock>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<quasar::ProcessingBlock>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<quasar::ProcessingBlock>>::clear[abi:ne200100](void *result)
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

uint64_t std::default_delete<quasar::ProcessingBlock::ValueType>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x1B8C85350](a2, 0x20C40960023A9);
  }

  return result;
}

void sub_1B52FCFC0(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::MergerOptions *quasar::MergerOptions::MergerOptions(quasar::MergerOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D13A30;
  std::string::basic_string[abi:ne200100]<0>(&v5, "merge-style");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "type of merge performed");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 131);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B52FD0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void quasar::OptionValue<std::string>::OptionValue(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2CFAFC8;
  *(a1 + 104) = 0u;
  v11 = (a1 + 104);
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0u;
  v12 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v12 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v13 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = a2;
    if (v12 != 9)
    {
      goto LABEL_10;
    }
  }

  v14 = v13->__r_.__value_.__r.__words[0];
  v15 = v13->__r_.__value_.__s.__data_[8];
  if (v14 == 0x656469727265766FLL && v15 == 115)
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  std::string::operator=(v11, a3);
  std::string::operator=((a1 + 32), __p);
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B52FD2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v16, *(v14 + 144));
  if (*(v14 + 127) < 0)
  {
    operator delete(*v15);
  }

  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

void quasar::OptionValueBase::~OptionValueBase(quasar::OptionValueBase *this)
{
  *this = &unk_1F2D08890;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

quasar::PDecTranslatorBlock *quasar::PDecTranslatorBlock::PDecTranslatorBlock(quasar::PDecTranslatorBlock *this)
{
  *(this + 3375) = &unk_1F2D08820;
  *(this + 3377) = 0;
  *(this + 3379) = 0;
  *(this + 3378) = 0;
  *(this + 3376) = this + 27016;
  *(this + 3381) = 0;
  *(this + 3380) = 0;
  *(this + 27056) = 1;
  v2 = off_1F2D37010;
  v3 = off_1F2D37008;
  *this = off_1F2D37008;
  *(this + *(v3 - 3)) = v2;
  quasar::TranslatorOptions::TranslatorOptions((this + 8));
  *(this + 1130) = 0;
  *(this + 1129) = 0;
  *(this + 9000) = 0u;
  *(this + 9016) = 0u;
  *(this + 8968) = 0u;
  *(this + 8984) = 0u;
  *this = &unk_1F2D36EE8;
  *(this + 3375) = &unk_1F2D36FA0;
  *(this + 1132) = 0;
  *(this + 1131) = 0;
  quasar::TranslatorOptions::TranslatorOptions((this + 9064));
  quasar::TranslatorOptions::TranslatorOptions((this + 18024));
  *(this + 26984) = 0u;
  return this;
}

void sub_1B52FD614(_Unwind_Exception *a1)
{
  quasar::TranslatorOptions::~TranslatorOptions((v2 + 1133));
  v6 = v2[1132];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v2[1130];
  v2[1130] = 0;
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  quasar::PDecEngineBlockMixin::~PDecEngineBlockMixin(v3);
  quasar::ConfiguredProcessingBlock<quasar::TranslatorOptions>::~ConfiguredProcessingBlock(v2, (v4 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);
  _Unwind_Resume(a1);
}

void quasar::PDecEngineBlockMixin::~PDecEngineBlockMixin(quasar::PDecEngineBlockMixin *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~unique_ptr[abi:ne200100](this + 4);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~unique_ptr[abi:ne200100](this + 3);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~unique_ptr[abi:ne200100](this + 2);
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::TranslatorOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::TranslatorOptions::~TranslatorOptions((a1 + 1));
  return a1;
}

quasar::TranslatorOptions *quasar::TranslatorOptions::TranslatorOptions(quasar::TranslatorOptions *this)
{
  *quasar::PDecOptions::PDecOptions(this) = &unk_1F2D36EB0;
  std::string::basic_string[abi:ne200100]<0>(v4, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "mt model file name");
  quasar::OptionValue<std::string>::OptionValue(this + 3232, v4, &v6, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "beam");
  LODWORD(__p.__r_.__value_.__l.__data_) = 4;
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum number of active beams in pruning");
  quasar::OptionValue<int>::OptionValue(this + 3392, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "as-beam");
  __p.__r_.__value_.__r.__words[0] = 0x41E0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "as_beam pruning value");
  quasar::OptionValue<double>::OptionValue(this + 3536, v4, &__p, &v6, 96);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "rs-beam");
  __p.__r_.__value_.__r.__words[0] = 0x41E0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "rs_beam pruning value");
  quasar::OptionValue<double>::OptionValue(this + 3680, v4, &__p, &v6, 96);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "beam-batch");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "beam batch size for (espresso) decoder model (0 = off, -1 = any)");
  quasar::OptionValue<int>::OptionValue(this + 3824, v4, &__p, &v6, 213);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "confidence-threshold");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "confidence threshold");
  quasar::OptionValue<double>::OptionValue(this + 3968, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "lm-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "path to language model file");
  quasar::OptionValue<std::string>::OptionValue(this + 4112, v4, &v6, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "lm-weight");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "language model weight");
  quasar::OptionValue<double>::OptionValue(this + 4272, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "veto-factor");
  __p.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "MT defcoding veto factor");
  quasar::OptionValue<double>::OptionValue(this + 4416, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "veto-factor-exclude-input-tags");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "MT decoding, exclude input tags in  veto factor computation");
  quasar::OptionValue<BOOL>::OptionValue(this + 4560, v4, &__p, &v6, 138);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "veto-factor-num-external-input-tags");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "MT decoding, num externally provided tags to exclude for veto factor");
  quasar::OptionValue<int>::OptionValue(this + 4704, v4, &__p, &v6, 138);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "norm-costs");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "normalize costs in mt decoding? (backward compatible version)");
  quasar::OptionValue<BOOL>::OptionValue(this + 4848, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "norm-mode");
  std::string::basic_string[abi:ne200100]<0>(&v6, "off");
  std::string::basic_string[abi:ne200100]<0>(&__p, "normalize costs in mt decoding? (off|length|gnmt)");
  quasar::OptionValue<std::string>::OptionValue(this + 4992, v4, &v6, &__p, 97);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "norm-alpha");
  __p.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "normalization alpha parameter");
  quasar::OptionValue<double>::OptionValue(this + 5152, v4, &__p, &v6, 97);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "norm-sigma");
  __p.__r_.__value_.__r.__words[0] = 0x4014000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "normalization sigma parameter");
  quasar::OptionValue<double>::OptionValue(this + 5296, v4, &__p, &v6, 97);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "unk-replace");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "oov");
  quasar::OptionValue<BOOL>::OptionValue(this + 5440, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "max-seq-length");
  LODWORD(__p.__r_.__value_.__l.__data_) = 100;
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum decoding sequence length");
  quasar::OptionValue<int>::OptionValue(this + 5584, v4, &__p, &v6, 35);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "max-seq-length-relative");
  __p.__r_.__value_.__r.__words[0] = 0xBFF0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum decoding sequence length as factor of input length");
  quasar::OptionValue<double>::OptionValue(this + 5728, v4, &__p, &v6, 160);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "max-seq-length-floor");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum decoding sequence length floor (used with input length factor)");
  quasar::OptionValue<int>::OptionValue(this + 5872, v4, &__p, &v6, 160);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "lm-mode");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "lm mode");
  quasar::OptionValue<std::string>::OptionValue(this + 6016, v4, &v6, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "confidence model file");
  quasar::OptionValue<std::string>::OptionValue(this + 6176, v4, &v6, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "stop-mode");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "stop mode in mt decoding (nbeam|best|finished_score)");
  quasar::OptionValue<std::string>::OptionValue(this + 6336, v4, &v6, &__p, 99);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "block-control");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "flow control for block sequence (<empty>|optional|optional_stop_on_success)");
  quasar::OptionValue<std::string>::OptionValue(this + 6496, v4, &v6, &__p, 106);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "shortlist-lang-pair");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "language pair used for shortlist");
  quasar::OptionValue<std::string>::OptionValue(this + 6656, v4, &v6, &__p, 121);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "shortlist-cond-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "top n in condition table used for shortlist");
  quasar::OptionValue<int>::OptionValue(this + 6816, v4, &__p, &v6, 121);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "shortlist-freq-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "top n in freq words used for shortlist");
  quasar::OptionValue<int>::OptionValue(this + 6960, v4, &__p, &v6, 121);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "nbest");
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum entries in nbest list to produce (default to same as 'beam'}");
  v2 = quasar::OptionValue<int>::value(this + 424);
  quasar::OptionValue<int>::OptionValue(this + 7104, v4, v2, &v6, 35);
  *(this + 902) = this + 3392;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "stop-mode-finished-score-beam");
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v6, "number of finished hypotheses considered for finished score stop mode (default: 1)");
  quasar::OptionValue<int>::OptionValue(this + 7248, v4, &__p, &v6, 99);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "stream-buffer-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "stream decoding initial read length (effective read buffer)");
  quasar::OptionValue<int>::OptionValue(this + 7392, v4, &__p, &v6, 129);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "stream-block-m");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "stream decoding read/write length (block size for looped read/write calls)");
  quasar::OptionValue<int>::OptionValue(this + 7536, v4, &__p, &v6, 129);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "stream-stabilize");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "stabilize partial stream decoding results after each read/write block");
  quasar::OptionValue<BOOL>::OptionValue(this + 7680, v4, &__p, &v6, 129);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "partial-input-override");
  quasar::PTree::PTree(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "optional override parameter block to change parameter settings for partial-input processing");
  quasar::OptionValue<quasar::PTree>::OptionValue(this + 7824, &v6, v4, &__p, 229);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::~PTree(&v4[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "timing-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "include decoder timing information in meta info json");
  quasar::OptionValue<BOOL>::OptionValue(this + 8024, v4, &__p, &v6, 240);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "repetition-threshold");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "probility threshold for detecting repetitions");
  quasar::OptionValue<double>::OptionValue(this + 8168, v4, &__p, &v6, 269);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "abort-on-repetitions");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "abort decoding on detecting repetitions");
  quasar::OptionValue<BOOL>::OptionValue(this + 8312, v4, &__p, &v6, 269);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "redecode-on-repetitions");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "retry decoding without shortlist on detecting repetitions");
  quasar::OptionValue<BOOL>::OptionValue(this + 8456, v4, &__p, &v6, 269);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "redecode-override");
  quasar::PTree::PTree(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "optional override parameter block to change parameter settings for redecode");
  quasar::OptionValue<quasar::PTree>::OptionValue(this + 8600, &v6, v4, &__p, 269);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::~PTree(&v4[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "shortlist-suppress-tokens");
  memset(&v6, 0, sizeof(v6));
  quasar::OptionValue<std::vector<std::string>>::OptionValue(this + 8800, v4, &v6, &__p, 121);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v4[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B52FE76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  quasar::OptionValue<quasar::PTree>::~OptionValue(v33 + v42);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + v41);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + v40);
  quasar::OptionValue<double>::~OptionValue(v33 + v39);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + v38);
  quasar::OptionValue<quasar::PTree>::~OptionValue(v33 + v37);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + v36);
  quasar::OptionValue<int>::~OptionValue(v33 + v35);
  quasar::OptionValue<int>::~OptionValue(v33 + 7392);
  quasar::OptionValue<int>::~OptionValue(v33 + 7248);
  quasar::OptionValue<int>::~OptionValue(v33 + 7104);
  quasar::OptionValue<int>::~OptionValue(v33 + 6960);
  quasar::OptionValue<int>::~OptionValue(v33 + 6816);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 6656);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 6496);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 6336);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 6176);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 6016);
  quasar::OptionValue<int>::~OptionValue(v33 + 5872);
  quasar::OptionValue<double>::~OptionValue(v33 + 5728);
  quasar::OptionValue<int>::~OptionValue(v33 + 5584);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + 5440);
  quasar::OptionValue<double>::~OptionValue(v33 + 5296);
  quasar::OptionValue<double>::~OptionValue(v33 + 5152);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 4992);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + 4848);
  quasar::OptionValue<int>::~OptionValue(v33 + 4704);
  quasar::OptionValue<BOOL>::~OptionValue(v33 + 4560);
  quasar::OptionValue<double>::~OptionValue(v33 + 4416);
  quasar::OptionValue<double>::~OptionValue(v33 + 4272);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 4112);
  quasar::OptionValue<double>::~OptionValue(v33 + 3968);
  quasar::OptionValue<int>::~OptionValue(v33 + 3824);
  quasar::OptionValue<double>::~OptionValue(v33 + 3680);
  quasar::OptionValue<double>::~OptionValue(v33 + 3536);
  quasar::OptionValue<int>::~OptionValue(v34);
  quasar::OptionValue<std::string>::~OptionValue(v33 + 3232);
  quasar::PDecOptions::~PDecOptions(v33);
  _Unwind_Resume(a1);
}

void sub_1B52FE98C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE808);
}

void sub_1B52FE9C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE810);
}

void sub_1B52FE9FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE818);
}

void sub_1B52FEA34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE820);
}

void sub_1B52FEA6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a11);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  JUMPOUT(0x1B52FE828);
}

void sub_1B52FEAB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE830);
}

void sub_1B52FEAEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE838);
}

void sub_1B52FEB24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE844);
}

void sub_1B52FEB5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  JUMPOUT(0x1B52FE850);
}

void sub_1B52FEB94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B52FE85CLL);
}

quasar::PDecOptions *quasar::PDecOptions::PDecOptions(quasar::PDecOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D37030;
  std::string::basic_string[abi:ne200100]<0>(&v9, "model-type");
  std::string::basic_string[abi:ne200100]<0>(&v8, "kaldi");
  std::string::basic_string[abi:ne200100]<0>(&__p, "translation model type (kaldi/espresso)");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v9, &v8, &__p, 213);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "enable-memory-map");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "use memory map");
  quasar::OptionValue<BOOL>::OptionValue(this + 176, &v9, &__p, &v8, 35);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "phrase-book-mode");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "phrase book mode");
  quasar::OptionValue<std::string>::OptionValue(this + 320, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "pron-guide-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "pron guide model file");
  quasar::OptionValue<std::string>::OptionValue(this + 480, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "pron-guide-preprocessing");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v8, "pron guide preprocessing (splitting into characters and <space> insertion)");
  quasar::OptionValue<BOOL>::OptionValue(this + 640, &v9, &__p, &v8, 35);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "romanizer");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "romanizer");
  quasar::OptionValue<std::string>::OptionValue(this + 784, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "phrasebook-case-sensitve");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "case sensitive phrase book?");
  quasar::OptionValue<BOOL>::OptionValue(this + 944, &v9, &__p, &v8, 35);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "filter-list-file");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "filter list file");
  quasar::OptionValue<std::string>::OptionValue(this + 1088, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "pb-file-list");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "phrase book file list");
  quasar::OptionValue<std::string>::OptionValue(this + 1248, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "nbest");
  LODWORD(__p.__r_.__value_.__l.__data_) = 3;
  std::string::basic_string[abi:ne200100]<0>(&v8, "maximum entries in nbest list to produce");
  quasar::OptionValue<int>::OptionValue(this + 1408, &v9, &__p, &v8, 35);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "reset-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v8, "reset metaInfo json");
  quasar::OptionValue<BOOL>::OptionValue(this + 1552, &v9, &__p, &v8, 131);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "source-locale");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "source locale");
  v2 = this + 1696;
  quasar::OptionValue<std::string>::OptionValue(this + 1696, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "target-locale");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "target locale");
  quasar::OptionValue<std::string>::OptionValue(this + 1856, &v9, &v8, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "source-token");
  std::string::basic_string[abi:ne200100]<0>(&v8, "source tag for multilingual model");
  v3 = quasar::OptionValue<std::string>::value(this + 212);
  quasar::OptionValue<std::string>::OptionValue(this + 2016, &v9, v3, &v8, 35);
  *(this + 268) = v2;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "target-token");
  std::string::basic_string[abi:ne200100]<0>(&v8, "target tag for multilingual model");
  v4 = quasar::OptionValue<std::string>::value(this + 232);
  quasar::OptionValue<std::string>::OptionValue(this + 2176, &v9, v4, &v8, 35);
  *(this + 288) = this + 1856;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "dynamic-switch-key");
  std::string::basic_string[abi:ne200100]<0>(&v8, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "dynamic weight switching key for espresso model");
  quasar::OptionValue<std::string>::OptionValue(this + 2336, &v9, &v8, &__p, 267);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "source-model-tag");
  std::string::basic_string[abi:ne200100]<0>(&v8, "source tag for multilingual model switching");
  v5 = quasar::OptionValue<std::string>::value(this + 212);
  quasar::OptionValue<std::string>::OptionValue(this + 2496, &v9, v5, &v8, 35);
  *(this + 328) = v2;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "share-translation-model");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v8, "share translation model");
  quasar::OptionValue<BOOL>::OptionValue(this + 2656, &v9, &__p, &v8, 194);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "use-sentencepiece-ids");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "use sentencepiece ids directly, drop dictionaries");
  quasar::OptionValue<BOOL>::OptionValue(this + 2800, &v9, &__p, &v8, 242);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "use-stable-output-prefix");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "use input stable-output-prefix to force (or bias) decoding. This disables any other configured LM mode and weight");
  quasar::OptionValue<BOOL>::OptionValue(this + 2944, &v9, &__p, &v8, 276);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "use-source-side-trim");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "use info from segmentationRanges, both for forced decoding, and for triming completed segments / sentences. This disables any other configured LM mode and weight");
  quasar::OptionValue<BOOL>::OptionValue(this + 3088, &v9, &__p, &v8, 278);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B52FFB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  quasar::OptionValue<BOOL>::~OptionValue(v24 + 2944);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 2800);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 2656);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 2496);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 2336);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 2176);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 2016);
  quasar::OptionValue<std::string>::~OptionValue(v26);
  quasar::OptionValue<std::string>::~OptionValue(v25);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 1552);
  quasar::OptionValue<int>::~OptionValue(v24 + 1408);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1248);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1088);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 944);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 784);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 640);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 480);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 320);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_1B52FFC5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B52FFBC4);
}

void sub_1B52FFC94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B52FFBCCLL);
}

void sub_1B52FFCCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B52FFBD4);
}

void sub_1B5300104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B52FFBE4);
}

void sub_1B530012C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B52FFBECLL);
}

uint64_t quasar::OptionValue<quasar::PTree>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2CFB018;
  std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(a1 + 176, *(a1 + 184));
  quasar::PTree::~PTree((a1 + 104));
  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t quasar::OptionValue<BOOL>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(a1 + 120, *(a1 + 128));
  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t quasar::OptionValue<double>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(a1 + 120, *(a1 + 128));
  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t quasar::OptionValue<int>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(a1 + 120, *(a1 + 128));
  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t quasar::OptionValue<std::string>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 136, *(a1 + 144));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void quasar::PDecOptions::~PDecOptions(quasar::PDecOptions *this)
{
  *this = &unk_1F2D37030;
  *(this + 386) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 3208, *(this + 402));
  *(this + 386) = &unk_1F2D08890;
  v2 = *(this + 398);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 3167) < 0)
  {
    operator delete(*(this + 393));
  }

  if (*(this + 3143) < 0)
  {
    operator delete(*(this + 390));
  }

  if (*(this + 3119) < 0)
  {
    operator delete(*(this + 387));
  }

  *(this + 368) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 3064, *(this + 384));
  *(this + 368) = &unk_1F2D08890;
  v3 = *(this + 380);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 3023) < 0)
  {
    operator delete(*(this + 375));
  }

  if (*(this + 2999) < 0)
  {
    operator delete(*(this + 372));
  }

  if (*(this + 2975) < 0)
  {
    operator delete(*(this + 369));
  }

  *(this + 350) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2920, *(this + 366));
  *(this + 350) = &unk_1F2D08890;
  v4 = *(this + 362);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 2879) < 0)
  {
    operator delete(*(this + 357));
  }

  if (*(this + 2855) < 0)
  {
    operator delete(*(this + 354));
  }

  if (*(this + 2831) < 0)
  {
    operator delete(*(this + 351));
  }

  *(this + 332) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2776, *(this + 348));
  *(this + 332) = &unk_1F2D08890;
  v5 = *(this + 344);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 2735) < 0)
  {
    operator delete(*(this + 339));
  }

  if (*(this + 2711) < 0)
  {
    operator delete(*(this + 336));
  }

  if (*(this + 2687) < 0)
  {
    operator delete(*(this + 333));
  }

  *(this + 312) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2632, *(this + 330));
  if (*(this + 2623) < 0)
  {
    operator delete(*(this + 325));
  }

  *(this + 312) = &unk_1F2D08890;
  v6 = *(this + 324);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 2575) < 0)
  {
    operator delete(*(this + 319));
  }

  if (*(this + 2551) < 0)
  {
    operator delete(*(this + 316));
  }

  if (*(this + 2527) < 0)
  {
    operator delete(*(this + 313));
  }

  *(this + 292) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2472, *(this + 310));
  if (*(this + 2463) < 0)
  {
    operator delete(*(this + 305));
  }

  *(this + 292) = &unk_1F2D08890;
  v7 = *(this + 304);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 2415) < 0)
  {
    operator delete(*(this + 299));
  }

  if (*(this + 2391) < 0)
  {
    operator delete(*(this + 296));
  }

  if (*(this + 2367) < 0)
  {
    operator delete(*(this + 293));
  }

  *(this + 272) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2312, *(this + 290));
  if (*(this + 2303) < 0)
  {
    operator delete(*(this + 285));
  }

  *(this + 272) = &unk_1F2D08890;
  v8 = *(this + 284);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 2255) < 0)
  {
    operator delete(*(this + 279));
  }

  if (*(this + 2231) < 0)
  {
    operator delete(*(this + 276));
  }

  if (*(this + 2207) < 0)
  {
    operator delete(*(this + 273));
  }

  *(this + 252) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2152, *(this + 270));
  if (*(this + 2143) < 0)
  {
    operator delete(*(this + 265));
  }

  *(this + 252) = &unk_1F2D08890;
  v9 = *(this + 264);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 2095) < 0)
  {
    operator delete(*(this + 259));
  }

  if (*(this + 2071) < 0)
  {
    operator delete(*(this + 256));
  }

  if (*(this + 2047) < 0)
  {
    operator delete(*(this + 253));
  }

  *(this + 232) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1992, *(this + 250));
  if (*(this + 1983) < 0)
  {
    operator delete(*(this + 245));
  }

  *(this + 232) = &unk_1F2D08890;
  v10 = *(this + 244);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  *(this + 212) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1832, *(this + 230));
  if (*(this + 1823) < 0)
  {
    operator delete(*(this + 225));
  }

  *(this + 212) = &unk_1F2D08890;
  v11 = *(this + 224);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 1775) < 0)
  {
    operator delete(*(this + 219));
  }

  if (*(this + 1751) < 0)
  {
    operator delete(*(this + 216));
  }

  if (*(this + 1727) < 0)
  {
    operator delete(*(this + 213));
  }

  *(this + 194) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1672, *(this + 210));
  *(this + 194) = &unk_1F2D08890;
  v12 = *(this + 206);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  if (*(this + 1607) < 0)
  {
    operator delete(*(this + 198));
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  *(this + 176) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 1528, *(this + 192));
  *(this + 176) = &unk_1F2D08890;
  v13 = *(this + 188);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 1487) < 0)
  {
    operator delete(*(this + 183));
  }

  if (*(this + 1463) < 0)
  {
    operator delete(*(this + 180));
  }

  if (*(this + 1439) < 0)
  {
    operator delete(*(this + 177));
  }

  *(this + 156) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1384, *(this + 174));
  if (*(this + 1375) < 0)
  {
    operator delete(*(this + 169));
  }

  *(this + 156) = &unk_1F2D08890;
  v14 = *(this + 168);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 1327) < 0)
  {
    operator delete(*(this + 163));
  }

  if (*(this + 1303) < 0)
  {
    operator delete(*(this + 160));
  }

  if (*(this + 1279) < 0)
  {
    operator delete(*(this + 157));
  }

  *(this + 136) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1224, *(this + 154));
  if (*(this + 1215) < 0)
  {
    operator delete(*(this + 149));
  }

  *(this + 136) = &unk_1F2D08890;
  v15 = *(this + 148);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 1167) < 0)
  {
    operator delete(*(this + 143));
  }

  if (*(this + 1143) < 0)
  {
    operator delete(*(this + 140));
  }

  if (*(this + 1119) < 0)
  {
    operator delete(*(this + 137));
  }

  *(this + 118) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1064, *(this + 134));
  *(this + 118) = &unk_1F2D08890;
  v16 = *(this + 130);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(this + 1023) < 0)
  {
    operator delete(*(this + 125));
  }

  if (*(this + 999) < 0)
  {
    operator delete(*(this + 122));
  }

  if (*(this + 975) < 0)
  {
    operator delete(*(this + 119));
  }

  *(this + 98) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 920, *(this + 116));
  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  *(this + 98) = &unk_1F2D08890;
  v17 = *(this + 110);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 815) < 0)
  {
    operator delete(*(this + 99));
  }

  *(this + 80) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 760, *(this + 96));
  *(this + 80) = &unk_1F2D08890;
  v18 = *(this + 92);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  if (*(this + 695) < 0)
  {
    operator delete(*(this + 84));
  }

  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
  }

  *(this + 60) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 616, *(this + 78));
  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  *(this + 60) = &unk_1F2D08890;
  v19 = *(this + 72);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  *(this + 40) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 456, *(this + 58));
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  *(this + 40) = &unk_1F2D08890;
  v20 = *(this + 52);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 22) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 296, *(this + 38));
  *(this + 22) = &unk_1F2D08890;
  v21 = *(this + 34);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v22 = *(this + 14);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void quasar::OptionValue<int>::OptionValue(uint64_t a1, const std::string *a2, _DWORD *a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2CFCE78;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v12 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = a2;
    if (v11 != 9)
    {
      goto LABEL_10;
    }
  }

  v13 = v12->__r_.__value_.__r.__words[0];
  v14 = v12->__r_.__value_.__s.__data_[8];
  if (v13 == 0x656469727265766FLL && v14 == 115)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  *(a1 + 104) = *a3;
  std::string::operator=((a1 + 32), __p);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B5301218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::string>::destroy(v15, v14[16]);
  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<double>::OptionValue(uint64_t a1, const std::string *a2, void *a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2D07F00;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v12 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = a2;
    if (v11 != 9)
    {
      goto LABEL_10;
    }
  }

  v13 = v12->__r_.__value_.__r.__words[0];
  v14 = v12->__r_.__value_.__s.__data_[8];
  if (v13 == 0x656469727265766FLL && v14 == 115)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  *(a1 + 104) = *a3;
  std::string::operator=((a1 + 32), __p);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B53013FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::string>::destroy(v15, v14[16]);
  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<BOOL>::OptionValue(uint64_t a1, const std::string *a2, _BYTE *a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2CFCE10;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v12 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = a2;
    if (v11 != 9)
    {
      goto LABEL_10;
    }
  }

  v13 = v12->__r_.__value_.__r.__words[0];
  v14 = v12->__r_.__value_.__s.__data_[8];
  if (v13 == 0x656469727265766FLL && v14 == 115)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  *(a1 + 104) = *a3;
  std::string::operator=((a1 + 32), __p);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B53015E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::string>::destroy(v15, v14[16]);
  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<quasar::PTree>::OptionValue(uint64_t a1, const std::string *a2, uint64_t a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2CFB018;
  v11 = a1 + 104;
  quasar::PTree::PTree((a1 + 104));
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v12 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v12 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v13 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = a2;
    if (v12 != 9)
    {
      goto LABEL_10;
    }
  }

  v14 = v13->__r_.__value_.__r.__words[0];
  v15 = v13->__r_.__value_.__s.__data_[8];
  if (v14 == 0x656469727265766FLL && v15 == 115)
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  *(a1 + 104) = *a3;
  std::string::operator=((a1 + 112), (a3 + 8));
  if (v11 != a3)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 136, *(a3 + 32), *(a3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  }

  *(a1 + 160) = *(a3 + 56);
  std::string::operator=((a1 + 32), __p);
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B5301820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(v16, *v17);
  quasar::PTree::~PTree(v15);
  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<std::vector<std::string>>::OptionValue(uint64_t a1, const std::string *a2, std::string **a3, const std::string *a4, int a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *a1 = &unk_1F2D0B940;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0u;
  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_10;
    }

    v12 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = a2;
    if (v11 != 9)
    {
      goto LABEL_10;
    }
  }

  v13 = v12->__r_.__value_.__r.__words[0];
  v14 = v12->__r_.__value_.__s.__data_[8];
  if (v13 == 0x656469727265766FLL && v14 == 115)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "overrides option name is reserved", 33);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(__p, "<default>");
  quasar::OptionValue<std::vector<std::string>>::update(a1, a3, __p);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 56), a4);
  *(a1 + 80) = a5;
  std::string::operator=(v10, a2);
}

void sub_1B5301A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(v15, *(v14 + 18));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::OptionValueBase::~OptionValueBase(v14);
  _Unwind_Resume(a1);
}

std::string *quasar::OptionValue<std::vector<std::string>>::update(uint64_t a1, std::string **a2, std::string *__str)
{
  v5 = (a1 + 104);
  if (v5 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return std::string::operator=((a1 + 32), __str);
}

void sub_1B5301C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a25 == 1)
  {
    __p = &a22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<std::vector<std::string>>::debugInfo(uint64_t a1)
{
  v3 = quasar::OptionValue<std::string>::fallback(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = a1 + 8;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 31);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[", 1);
  v39 = ", ";
  v40 = 2;
  quasar::joinToStream<std::vector<std::string>>(v8, (v3 + 104), &v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " (", 2);
  v12 = *(v3 + 32);
  v11 = v3 + 32;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if (*(a1 + 152))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " overrides: [", 13);
    v17 = *(a1 + 136);
    v18 = (a1 + 144);
    if (v17 != (a1 + 144))
    {
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "", 1);
        v20 = *(v17 + 55);
        if (v20 >= 0)
        {
          v21 = (v17 + 4);
        }

        else
        {
          v21 = v17[4];
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + 55);
        }

        else
        {
          v22 = v17[5];
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[", 1);
        v39 = ", ";
        v40 = 2;
        quasar::joinToStream<std::vector<std::string>>(v24, v17 + 7, &v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "]", 1);
        v25 = *v18;
        v26 = (a1 + 144);
        if (*v18)
        {
          do
          {
            v27 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = *v27 == v26;
            v26 = v27;
          }

          while (v28);
        }

        if (v17 != v27)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", ", 2);
        }

        v29 = v17[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v17[2];
            v28 = *v30 == v17;
            v17 = v30;
          }

          while (!v28);
        }

        v17 = v30;
      }

      while (v30 != v18);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "]", 1);
  }

  std::stringbuf::str();
  v33[0] = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v31;
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v38);
}

void sub_1B5302020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<std::vector<std::string>>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a3;
  quasar::PTree::getOptional<std::vector<std::string>>(a4, (a1 + 8));
}

void sub_1B53020F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13)
  {
    *(v13 - 24) = &a10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 24));
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::OptionValue<std::vector<std::string>>::updateOptional(std::string *result, uint64_t a2, std::string *__str)
{
  if (*(a2 + 24) == 1)
  {
    v5 = result;
    v6 = &result[4].__r_.__value_.__r.__words[1];
    if (v6 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    }

    return std::string::operator=((v5 + 32), __str);
  }

  return result;
}

void sub_1B5302220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string_view &,std::vector<std::string>&,0>(void *__dst, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a2;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

  *(__dst + v3) = 0;
  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(__dst + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_1B5302390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~DecodeOptions(v2);
    MEMORY[0x1B8C85350](v3, 0x1032C40806CDC9ALL);
  }

  return a1;
}

uint64_t kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~DecodeOptions(uint64_t a1)
{
  v3 = (a1 + 328);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v3 = (a1 + 240);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1B5302638(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1B5302804(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::AlternativesProcessorOptions *quasar::AlternativesProcessorOptions::AlternativesProcessorOptions(quasar::AlternativesProcessorOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D3E640;
  std::string::basic_string[abi:ne200100]<0>(&v5, "filter-redundant-tags");
  v3.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "flag on whether to filter out or keep hypotheses with redundant tags");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v5, &v3, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "tag-to-meta-json-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v3, "a json file that contains a mapping between tags and their corresponding string in the meta info ");
  quasar::OptionValue<std::string>::OptionValue(this + 160, &v5, &__p, &v3, 137);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5302948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<BOOL>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

quasar::AlignmentProcessorBlock *quasar::AlignmentProcessorBlock::AlignmentProcessorBlock(quasar::AlignmentProcessorBlock *this)
{
  *(this + 115) = &unk_1F2D08820;
  *(this + 117) = 0;
  *(this + 119) = 0;
  *(this + 118) = 0;
  *(this + 116) = this + 936;
  *(this + 121) = 0;
  *(this + 120) = 0;
  *(this + 976) = 1;
  v2 = off_1F2D310B8;
  v3 = off_1F2D310B0;
  *this = off_1F2D310B0;
  *(this + *(v3 - 3)) = v2;
  quasar::AlignmentProcessorOptions::AlignmentProcessorOptions((this + 8));
  v4 = off_1F2D310C8;
  v5 = off_1F2D310C0;
  *(this + 79) = off_1F2D310C0;
  *(this + *(v5 - 3) + 632) = v4;
  *this = &unk_1F2D30F48;
  *(this + 115) = &unk_1F2D31048;
  *(this + 79) = &unk_1F2D30FA8;
  std::string::basic_string[abi:ne200100]<0>(&v21, "source");
  if (SHIBYTE(v22) < 0)
  {
    std::string::__init_copy_ctor_external((this + 640), v21, *(&v21 + 1));
    v6 = SHIBYTE(v22);
    *(this + 664) = 0;
    *(this + 84) = 0;
    *(this + 86) = 0;
    *(this + 85) = 0;
    if (v6 < 0)
    {
      operator delete(v21);
    }
  }

  else
  {
    *(this + 40) = v21;
    *(this + 82) = v22;
    *(this + 664) = 0;
    *(this + 84) = 0;
    *(this + 86) = 0;
    *(this + 85) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "segmentor-encode");
  if (SHIBYTE(v20) < 0)
  {
    std::string::__init_copy_ctor_external(this + 29, __p[0], __p[1]);
    v7 = SHIBYTE(v20);
    *(this + 720) = 0;
    *(this + 91) = 0;
    *(this + 93) = 0;
    *(this + 92) = 0;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 696) = *__p;
    *(this + 89) = v20;
    *(this + 720) = 0;
    *(this + 91) = 0;
    *(this + 93) = 0;
    *(this + 92) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "pdec-decode");
  if (SHIBYTE(v18) < 0)
  {
    std::string::__init_copy_ctor_external((this + 752), v17[0], v17[1]);
    v8 = SHIBYTE(v18);
    *(this + 776) = 0;
    *(this + 98) = 0;
    *(this + 100) = 0;
    *(this + 99) = 0;
    if (v8 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    *(this + 47) = *v17;
    *(this + 96) = v18;
    *(this + 776) = 0;
    *(this + 98) = 0;
    *(this + 100) = 0;
    *(this + 99) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "segmentor-decode");
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external((this + 808), v15[0], v15[1]);
    v9 = SHIBYTE(v16);
    *(this + 832) = 0;
    *(this + 105) = 0;
    *(this + 107) = 0;
    *(this + 106) = 0;
    if (v9 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    *(this + 808) = *v15;
    *(this + 103) = v16;
    *(this + 832) = 0;
    *(this + 105) = 0;
    *(this + 107) = 0;
    *(this + 106) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "tokenized");
  v10 = (this + 864);
  if (SHIBYTE(v14) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v13[0], v13[1]);
    v11 = SHIBYTE(v14);
    *(this + 888) = 0;
    *(this + 112) = 0;
    *(this + 114) = 0;
    *(this + 113) = 0;
    if (v11 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *v13;
    *(this + 110) = v14;
    *(this + 888) = 0;
    *(this + 112) = 0;
    *(this + 114) = 0;
    *(this + 113) = 0;
  }

  return this;
}

void sub_1B5302E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v38);
  quasar::ProcessingInput::~ProcessingInput(v37);
  quasar::ProcessingInput::~ProcessingInput(v36);
  quasar::ProcessingInput::~ProcessingInput(v35);
  quasar::ConfiguredProcessingBlock<quasar::AlignmentProcessorOptions>::~ConfiguredProcessingBlock(v33, (v39 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v34);
  _Unwind_Resume(a1);
}

void quasar::ProcessingInput::~ProcessingInput(void **this)
{
  v2 = this + 4;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::AlignmentProcessorOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::AlignmentProcessorOptions::~AlignmentProcessorOptions((a1 + 1));
  return a1;
}

quasar::AlignmentProcessorOptions *quasar::AlignmentProcessorOptions::AlignmentProcessorOptions(quasar::AlignmentProcessorOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D30F08;
  std::string::basic_string[abi:ne200100]<0>(&v7, "word-level-alignments");
  v5.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "If set to true, then the BPE level alignments are merged into word level alignments");
  quasar::OptionValue<BOOL>::OptionValue(this + 24, &v7, &v5, &__p, 156);
  *(this + 2) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "avoid-crossing-words");
  v5.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "If set to True, then the Alignment Processor Block expects the tokenized translations and the alignment ranges do not cross the tokenized words");
  quasar::OptionValue<BOOL>::OptionValue(this + 168, &v7, &v5, &__p, 168);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "use-stripped-token-text");
  v5.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "If set to true, the whitespace stripped surface token representation is used instead of the internal representation.");
  quasar::OptionValue<BOOL>::OptionValue(this + 312, &v7, &v5, &__p, 243);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "mode");
  std::string::basic_string[abi:ne200100]<0>(&__p, "default");
  std::string::basic_string[abi:ne200100]<0>(&v5, "meta info mode and format for projections (default / structured_prediction)");
  quasar::OptionValue<std::string>::OptionValue(this + 464, &v7, &__p, &v5, 249);
  *(this + 57) = &unk_1F2D0BA40;
  *v3 = &unk_1F2D0BA80;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B53032A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  quasar::OptionValue<BOOL>::~OptionValue(v27 + 312);
  quasar::OptionValue<BOOL>::~OptionValue(v27 + 168);
  quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(v28);
  _Unwind_Resume(a1);
}

void sub_1B530334C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530333CLL);
}

void sub_1B5303384(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B5303344);
}

uint64_t quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(uint64_t a1)
{
  *(a1 + 8) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(a1 + 128, *(a1 + 136));
  *(a1 + 8) = &unk_1F2D08890;
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void quasar::AlignmentProcessorOptions::~AlignmentProcessorOptions(quasar::AlignmentProcessorOptions *this)
{
  *this = &unk_1F2D30F08;
  *(this + 58) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 600, *(this + 76));
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  *(this + 58) = &unk_1F2D08890;
  v2 = *(this + 70);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

  *(this + 39) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 432, *(this + 55));
  *(this + 39) = &unk_1F2D08890;
  v3 = *(this + 51);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  *(this + 21) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 288, *(this + 37));
  *(this + 21) = &unk_1F2D08890;
  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

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

  *(this + 3) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 144, *(this + 19));
  *(this + 3) = &unk_1F2D08890;
  v5 = *(this + 15);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

quasar::DoNotTranslateBlock *quasar::DoNotTranslateBlock::DoNotTranslateBlock(quasar::DoNotTranslateBlock *this)
{
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 15) = &unk_1F2D08820;
  *(this + 16) = this + 136;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 1;
  v2 = off_1F2D2F5A8;
  v3 = off_1F2D2F5A0;
  *this = off_1F2D2F5A0;
  *(this + *(v3 - 3)) = v2;
  *this = &unk_1F2D2F488;
  *(this + 15) = &unk_1F2D2F538;
  std::string::basic_string[abi:ne200100]<0>(__p, "source");
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), __p[0], __p[1]);
    v4 = SHIBYTE(v10);
    *(this + 32) = 0;
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 8) = *__p;
    *(this + 3) = v10;
    *(this + 32) = 0;
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "target");
  if (SHIBYTE(v8) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), v7[0], v7[1]);
    v5 = SHIBYTE(v8);
    *(this + 88) = 0;
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 12) = 0;
    if (v5 < 0)
    {
      operator delete(v7[0]);
    }
  }

  else
  {
    *(this + 4) = *v7;
    *(this + 10) = v8;
    *(this + 88) = 0;
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 12) = 0;
  }

  return this;
}

void sub_1B530396C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput((v20 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

quasar::AmbiguityAnnotatorBlock *quasar::AmbiguityAnnotatorBlock::AmbiguityAnnotatorBlock(quasar::AmbiguityAnnotatorBlock *this)
{
  *(this + 338) = &unk_1F2D08820;
  *(this + 340) = 0;
  *(this + 342) = 0;
  *(this + 341) = 0;
  *(this + 339) = this + 2720;
  *(this + 344) = 0;
  *(this + 343) = 0;
  *(this + 2760) = 1;
  v2 = off_1F2D36898;
  v3 = off_1F2D36890;
  *this = off_1F2D36890;
  *(this + *(v3 - 3)) = v2;
  quasar::AmbiguityAnnotatorOptions::AmbiguityAnnotatorOptions((this + 8));
  v4 = off_1F2D368A8;
  v5 = off_1F2D368A0;
  *(this + 321) = off_1F2D368A0;
  *(this + *(v5 - 3) + 2568) = v4;
  *this = &unk_1F2D36728;
  *(this + 338) = &unk_1F2D36828;
  *(this + 321) = &unk_1F2D36788;
  std::string::basic_string[abi:ne200100]<0>(__p, "source");
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external((this + 2576), __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    *(this + 2600) = 0;
    *(this + 326) = 0;
    *(this + 328) = 0;
    *(this + 327) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 161) = *__p;
    *(this + 324) = v13;
    *(this + 2600) = 0;
    *(this + 326) = 0;
    *(this + 328) = 0;
    *(this + 327) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "nbest");
  v7 = (this + 2632);
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v10[0], v10[1]);
    v8 = SHIBYTE(v11);
    *(this + 2656) = 0;
    *(this + 333) = 0;
    *(this + 335) = 0;
    *(this + 334) = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *v10;
    *(this + 331) = v11;
    *(this + 2656) = 0;
    *(this + 333) = 0;
    *(this + 335) = 0;
    *(this + 334) = 0;
  }

  *(this + 168) = 0u;
  return this;
}

void sub_1B5303D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v22);
  quasar::ConfiguredProcessingBlock<quasar::AmbiguityAnnotatorOptions>::~ConfiguredProcessingBlock(v20, (v23 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::AmbiguityAnnotatorOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::AmbiguityAnnotatorOptions::~AmbiguityAnnotatorOptions((a1 + 1));
  return a1;
}

quasar::AmbiguityAnnotatorOptions *quasar::AmbiguityAnnotatorOptions::AmbiguityAnnotatorOptions(quasar::AmbiguityAnnotatorOptions *this)
{
  *quasar::PhraseBookOptions::PhraseBookOptions(this) = &unk_1F2D366E8;
  std::string::basic_string[abi:ne200100]<0>(&v7, "source-locale");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "source locale");
  quasar::OptionValue<std::string>::OptionValue(this + 1216, &v7, &v6, &__p, 144);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "disambiguation-dictionary-file");
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "disambiguation dictionary file");
  quasar::OptionValue<std::string>::OptionValue(this + 1376, &v7, &v6, &__p, 144);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "max-match-length");
  LODWORD(__p.__r_.__value_.__l.__data_) = 4;
  std::string::basic_string[abi:ne200100]<0>(&v6, "maximum token sequence length in matching");
  quasar::OptionValue<int>::OptionValue(this + 1536, &v7, &__p, &v6, 173);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "prefer-position");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "prefer early match position over multiword matches");
  quasar::OptionValue<BOOL>::OptionValue(this + 1680, &v7, &__p, &v6, 173);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "prefer-multiword");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v6, "prefer longer multiword matches to shorter ones");
  quasar::OptionValue<BOOL>::OptionValue(this + 1824, &v7, &__p, &v6, 173);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "multisense-keep");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "number of senses to keep when several senses match a word in a hypotheses");
  quasar::OptionValue<int>::OptionValue(this + 1968, &v7, &__p, &v6, 144);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "strip-gender");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "keep 'gender' in the metainfo (false), or remove it (true)");
  quasar::OptionValue<BOOL>::OptionValue(this + 2112, &v7, &__p, &v6, 247);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "prune-nbest");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v6, "if we have alternatives, remove nbest entries that are not alternatives (false, for gender disambiguation compatibility)");
  quasar::OptionValue<BOOL>::OptionValue(this + 2264, &v7, &__p, &v6, 256);
  *(this + 282) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "allow-multiple-same-sense-alternatives");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "allow the same sense to be annotated on more than one hypothesis (true, for gender disambiguation compatibility)");
  quasar::OptionValue<BOOL>::OptionValue(this + 2416, &v7, &__p, &v6, 266);
  *(this + 301) = &unk_1F2D0B998;
  *v3 = &unk_1F2D0B9D8;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530427C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(v25);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 2112);
  quasar::OptionValue<int>::~OptionValue(v24 + 1968);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 1824);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 1680);
  quasar::OptionValue<int>::~OptionValue(v24 + 1536);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1376);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1216);
  quasar::PhraseBookOptions::~PhraseBookOptions(v24);
  _Unwind_Resume(a1);
}

void sub_1B5304338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B53042F8);
}

void sub_1B5304370(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B5304300);
}

void sub_1B53043A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B5304308);
}

void sub_1B53043E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B5304310);
}

void sub_1B5304418(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B5304318);
}

void sub_1B5304450(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B5304320);
}

void sub_1B53044A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B5304328);
}

quasar::PhraseBookOptions *quasar::PhraseBookOptions::PhraseBookOptions(quasar::PhraseBookOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D35CF8;
  std::string::basic_string[abi:ne200100]<0>(&v5, "case-sensitive");
  v3.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "case sensitive phrase book?");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v5, &v3, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "pb-file-list");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v3, "phrase book file list");
  quasar::OptionValue<std::string>::OptionValue(this + 160, &v5, &__p, &v3, 133);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "nbest");
  LODWORD(v3.__r_.__value_.__l.__data_) = 3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "maximum entries in nbest list to produce");
  quasar::OptionValue<int>::OptionValue(this + 320, &v5, &v3, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "reset-meta-info");
  v3.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "reset metaInfo json");
  quasar::OptionValue<BOOL>::OptionValue(this + 464, &v5, &v3, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "phrase-book-mode");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v3, "used to disable phrase book block");
  quasar::OptionValue<std::string>::OptionValue(this + 608, &v5, &__p, &v3, 133);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "filter-entries");
  v3.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "filter to make translations unique");
  quasar::OptionValue<BOOL>::OptionValue(this + 768, &v5, &v3, &__p, 184);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "normalization-pattern-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v3, "apply regular expressions from file for normalized lookup");
  quasar::OptionValue<std::string>::OptionValue(this + 912, &v5, &__p, &v3, 187);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "normalize-on-load");
  v3.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "apply normalization (lowercaseing/regex) to phrasebook keys on load");
  quasar::OptionValue<BOOL>::OptionValue(this + 1072, &v5, &v3, &__p, 196);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5304878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 912);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 768);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 608);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 464);
  quasar::OptionValue<int>::~OptionValue(v21 + 320);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 160);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530493C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B530490CLL);
}

void sub_1B5304974(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5304914);
}

void sub_1B53049C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B530491CLL);
}