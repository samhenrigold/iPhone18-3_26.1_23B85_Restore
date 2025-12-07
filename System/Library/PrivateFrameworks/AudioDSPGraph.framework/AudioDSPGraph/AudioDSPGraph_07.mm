void sub_1C922AD64(_Unwind_Exception *a1)
{
  if ((SLOBYTE(STACK[0x337]) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C922B468);
}

void sub_1C922B1A8()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B1BC()
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  JUMPOUT(0x1C922B198);
}

void sub_1C922B208()
{
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    JUMPOUT(0x1C922B468);
  }

  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B278(_Unwind_Exception *a1)
{
  if (STACK[0x448] != v1)
  {
    operator delete(STACK[0x448]);
  }

  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C922B468);
}

void sub_1C922B29C()
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  MEMORY[0x1CCA84AE0](v1, v0);
  JUMPOUT(0x1C922B48CLL);
}

void sub_1C922B2C8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C922B468);
}

void sub_1C922B364(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    v64 = *(v62 + 87);
    v65 = v64;
    v66 = *(v62 + 64);
    v67 = *(v62 + 72);
    STACK[0x2E0] = 13;
    if ((v64 & 0x80u) != 0)
    {
      v64 = v67;
    }

    if (v65 >= 0)
    {
      v68 = v63;
    }

    else
    {
      v68 = v66;
    }

    STACK[0x2D8] = v64;
    STACK[0x2D0] = v68;
    STACK[0x320] = &STACK[0x348];
    *&STACK[0x328] = xmmword_1C925F110;
    STACK[0x338] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    STACK[0x340] = 0;
    STACK[0x448] = &STACK[0x348];
    STACK[0x2B8] = 1;
    STACK[0x2C0] = &STACK[0x2D0];
    STACK[0x2C8] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&STACK[0x320], "format {} not found", 21, &STACK[0x2B8]);
    std::string::basic_string<std::string_view,0>(&__dst, STACK[0x448], STACK[0x330]);
    if (STACK[0x448] != &STACK[0x348])
    {
      operator delete(STACK[0x448]);
    }

    AudioDSPGraph::ThrowException(1852204065, &__dst, off_1E8335AF0);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 < 0)
  {
    JUMPOUT(0x1C922B44CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1C922B458(_Unwind_Exception *a1)
{
  if (STACK[0x448] != v1)
  {
    operator delete(STACK[0x448]);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Graph::getSubset(uint64_t *a1, uint64_t *a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *v4;
      v9 = *(*v4 + 31);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(*v4 + 16);
      }

      if (v6 == v9)
      {
        v13 = *(v8 + 8);
        v11 = v8 + 8;
        v12 = v13;
        v14 = (v10 >= 0 ? v11 : v12);
        if (!memcmp(v7, v14, v6))
        {
          break;
        }
      }

      if (++v4 == a2)
      {
        return 0;
      }
    }
  }

  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t AudioDSPGraph::Graph::addBox(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = a2;
  v4 = (result + 32);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      operator new();
    }
  }

  while (v4[2] != a2);
  return result;
}

void sub_1C922C214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,void *>>>::operator()[abi:ne200100](1, v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,unsigned int const,std::string const,unsigned int const>(void *result, uint64_t **a2, uint64_t **a3, unsigned int *a4, uint64_t **a5, unsigned int *a6)
{
  v6 = *(a3 + 23);
  v7 = v6;
  v8 = *a3;
  v9 = a3[1];
  *result = 13;
  if ((v6 & 0x80u) != 0)
  {
    v6 = v9;
  }

  if (v7 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  *a2 = v10;
  a2[1] = v6;
  v11 = *a4;
  *result |= 0xC0uLL;
  a2[2] = v11;
  a2[3] = 0;
  v12 = *(a5 + 23);
  v13 = v12;
  v14 = *a5;
  v15 = a5[1];
  *result |= 0x3400uLL;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v15;
  }

  if (v13 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v14;
  }

  a2[4] = v16;
  a2[5] = v12;
  v17 = *a6;
  *result |= 0x30000uLL;
  a2[6] = v17;
  a2[7] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (AudioDSPGraph::IR::BoxAlias::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t **std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *result = v5;
  result[1] = v3;
  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a3[1];
  }

  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  result[3] = v6;
  result[4] = 429;
  result[2] = v8;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1C922C85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void AudioDSPGraph::AnalyzerBuilder::Info::~Info(void **this)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100]((this + 6));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48D0DE0;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v2 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v2;
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0DE0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#2}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0DE0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,AudioDSPGraph::AnalyzerBuilder::Info>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48D0D98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
  }
}

void std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0D98;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__function::__func<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1},std::allocator<AudioDSPGraph::AnalyzerBuilder::registerAnalyzer(unsigned int,std::string const&,AudioComponentDescription const&)::{lambda(void)#1}>,std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F48D0D98;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void AudioDSPGraph::Graph::GraphProperty::~GraphProperty(AudioDSPGraph::Graph::GraphProperty *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      *(this + 2) = v3;
      operator delete(v3);
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[9];
    if (v3)
    {
      __p[10] = v3;
      operator delete(v3);
    }

    if (*(__p + 56) == 1)
    {
      v4 = __p[4];
      if (v4)
      {
        __p[5] = v4;
        operator delete(v4);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AudioDSPGraph::Graph::removeWire(void *a1, unint64_t a2)
{
  v3 = a1[8];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = vcnt_s8(v3);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v3)
    {
      v8 = v6 % *&v3;
    }
  }

  else
  {
    v8 = v6 & (*&v3 - 1);
  }

  v9 = a1[7];
  v10 = *(v9 + 8 * v8);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = *&v3 - 1;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v13 >= *&v3)
      {
        v13 %= *&v3;
      }
    }

    else
    {
      v13 &= v12;
    }

    if (v13 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }

  v15 = v11[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v15 >= *&v3)
    {
      v15 %= *&v3;
    }
  }

  else
  {
    v15 &= v12;
  }

  v16 = *(v9 + 8 * v15);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v11);
  if (v17 == a1 + 9)
  {
    goto LABEL_39;
  }

  v18 = v17[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v18 >= *&v3)
    {
      v18 %= *&v3;
    }
  }

  else
  {
    v18 &= v12;
  }

  if (v18 != v15)
  {
LABEL_39:
    if (!*v11)
    {
      goto LABEL_40;
    }

    v19 = *(*v11 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v19 >= *&v3)
      {
        v19 %= *&v3;
      }
    }

    else
    {
      v19 &= v12;
    }

    if (v19 != v15)
    {
LABEL_40:
      *(v9 + 8 * v15) = 0;
    }
  }

  v20 = *v11;
  if (*v11)
  {
    v21 = *(v20 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v21 >= *&v3)
      {
        v21 %= *&v3;
      }
    }

    else
    {
      v21 &= v12;
    }

    if (v21 != v15)
    {
      *(a1[7] + 8 * v21) = v17;
      v20 = *v11;
    }
  }

  *v17 = v20;
  *v11 = 0;
  --a1[10];
  operator delete(v11);
  if (a2)
  {
LABEL_19:
    v14 = *(*a2 + 8);

    v14(a2);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = *(a1 + 2);
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
    operator new();
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

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void *AudioDSPGraph::Boxes::GraphIOBox::GraphIOBox(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D0EE0;
  a1[105] = 0;
  return a1;
}

void sub_1C922D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<AudioDSPGraph::Box>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = *(a1 + 2);
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
    operator new();
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

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void AudioDSPGraph::BufferColorist::consumeInputs(AudioDSPGraph::BufferColorist *this, AudioDSPGraph::Box *a2)
{
  v2 = *(a2 + 9);
  for (i = *(a2 + 10); v2 != i; v2 += 32)
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v28 = (a2 + 40);
      if (*(a2 + 63) < 0)
      {
        v28 = *v28;
      }

      v29 = (*(*a2 + 16))(a2);
      caulk::make_string(&v32, "box %s %s input port is not connected.", v30, v28, v29);
      AudioDSPGraph::ThrowException(1970168609, &v32, off_1E8336480);
    }

    v6 = *(v5 + 56);
    v7 = *(v6 + 104) - 1;
    *(v6 + 104) = v7;
    if (!v7)
    {
      if (*(v6 + 108))
      {
        v8 = 48;
      }

      else
      {
        v8 = 8;
      }

      v33 = *(v6 + 96);
      v9 = v33;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((this + v8), v33))
      {
        v34 = &v33;
        v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v8), v9, &v34);
        v12 = v10 + 3;
        v11 = v10[3];
        if (v11)
        {
          v10[4] = v11;
          operator delete(v11);
        }

        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v9 = v33;
      }

      v34 = &v33;
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v8), v9, &v34);
      v14 = v13;
      v16 = v13[4];
      v15 = v13[5];
      if (v16 >= v15)
      {
        v18 = v13[3];
        v19 = (v16 - v18) >> 3;
        if ((v19 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v15 - v18;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = (8 * v19);
        *v23 = v6;
        v17 = 8 * v19 + 8;
        v24 = v13[3];
        v25 = v13[4] - v24;
        v26 = v23 - v25;
        memcpy(v23 - v25, v24, v25);
        v27 = v14[3];
        v14[3] = v26;
        v14[4] = v17;
        v14[5] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v16 = v6;
        v17 = (v16 + 1);
      }

      v14[4] = v17;
    }
  }
}

void sub_1C922E450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::BufferColorist::allocOutputs(AudioDSPGraph::BufferColorist *this, AudioDSPGraph::Box *a2, AudioDSPGraph::Box *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *(v4 + 2);
      if (!v6[7])
      {
        v7 = v6[15];
        v8 = *(v7 + 12);
        v9 = *(v7 + 28);
        v10 = v6[5];
        v16 = v9;
        if (v10 >> 31)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
        }

        if ((v8 & 0x20) != 0)
        {
          v11 = 8;
        }

        else
        {
          v11 = 48;
        }

        if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((this + v11), v9) || (v17 = &v16, v12 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v11), v9, &v17), v13 = v12[4], v13 == v12[3]))
        {
          operator new();
        }

        v14 = *(v13 - 8);
        v12[4] = v13 - 8;
        *(v14 + 104) = v10;
        v6[7] = v14;
      }

      v4 = (v4 + 32);
    }

    while (v4 != a3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void AudioDSPGraph::InternalBuffer::~InternalBuffer(AudioDSPGraph::InternalBuffer *this)
{
  *this = &unk_1F48D0EA8;
  AudioDSPGraph::SimpleABL::free((this + 80));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0EA8;
  AudioDSPGraph::SimpleABL::free((this + 80));
}

void AudioDSPGraph::Graph::setParameter(AudioDSPGraph::Graph *this, uint64_t a2, float a3, unsigned int a4)
{
  v14 = a4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((a2 + 584), a4);
  if (!v6)
  {
    LODWORD(v11) = 1852204065;
    *(&v11 + 1) = off_1E8336270;
    v12 = 0;
    v13 = 0;
    v7 = "graph parameter {} does not exist";
    goto LABEL_4;
  }

  if (*(v6 + 36) == 1)
  {
    LODWORD(v11) = 1852204065;
    *(&v11 + 1) = off_1E8336288;
    v12 = 0;
    v13 = 0;
    v7 = "graph parameter {} is not settable";
LABEL_4:
    AudioDSPGraph::Error::saveDescription<unsigned int &>(&v11, v7, &v14);
    *this = v11;
    v8 = v12;
    v12 = 0;
    *(this + 2) = v8;
    LODWORD(v8) = v13;
    v13 = 0;
    *(this + 6) = v8;
    *(this + 32) = 0;
    AudioDSPGraph::Error::~Error(&v11);
    return;
  }

  *(v6 + 7) = a3;
  *(v6 + 32) = 1;
  v9 = v6[5];
  v10 = v6[6];
  while (v9 != v10)
  {
    (*(**v9 + 88))(*v9, v9[2], v9[3], v9[4], 0, a3);
    if ((*(this + 32) & 1) == 0)
    {
      return;
    }

    v9 += 6;
  }

  *(this + 32) = 1;
}

uint64_t AudioDSPGraph::Error::saveDescription<unsigned int &>(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = MEMORY[0x1E69E3C08];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    v8 = result;
    v9 = *a3;
    *result = &unk_1F48D1218;
    *(result + 8) = a2;
    *(result + 16) = v9;
    if (*(a1 + 24) != 1)
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_6;
    }

    (*(*v10 + 24))(*(a1 + 16));
    (**v10)(v10);
    result = *v4;
    if (*v4)
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v10);
LABEL_6:
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double AudioDSPGraph::ErrorDescriptor::CustomDeferredDescription<unsigned int>::format@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = strlen(v4);
  v6 = *(a1 + 16);
  v12[1] = 0;
  v12[2] = 6;
  v11[2] = 6;
  v12[0] = v6;
  v13 = v17;
  *__len = xmmword_1C925F110;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __src = v17;
  v11[0] = 1;
  v11[1] = v12;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, v4, v5, v11);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = __len[1];
  if (__len[1])
  {
    memmove(&v9, __src, __len[1]);
  }

  *(&v9 + v7) = 0;
  if (__src != v17)
  {
    operator delete(__src);
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  return result;
}

void sub_1C922EF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (a2)
  {
    if (__p != v58)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    *v57 = 0;
    v57[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1C922EF40);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Graph::addEventHandler(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::GraphEventHandler,AudioDSPGraph::GraphEventHandlerAggregate>::addLeaf((a1 + 752), &v3);
  v2 = *(&v3 + 1);
  if (*(&v3 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1C922F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AudioDSPGraph::Graph::removeEventHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 808);
  v4 = *(a1 + 800);
  v5 = (v3 - v4);
  if (v3 == v4)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 800);
  while (*v7 != *a2)
  {
    v7 += 16;
    if (v7 == v3)
    {
      goto LABEL_21;
    }
  }

  if (v7 != v3)
  {
    v8 = v7 + 16;
    if (v7 + 16 != v3)
    {
      do
      {
        v9 = *v8;
        if (*v8 != *a2)
        {
          v10 = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = 0;
          v11 = *(v7 + 1);
          *v7 = v9;
          *(v7 + 1) = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v7 += 16;
        }

        v8 += 16;
      }

      while (v8 != v3);
      v3 = *(a1 + 808);
      v4 = *(a1 + 800);
    }
  }

  if (v7 == v3)
  {
LABEL_21:
    v7 = v3;
  }

  else
  {
    while (v3 != v7)
    {
      v12 = *(v3 - 1);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v3 -= 16;
    }

    *(a1 + 808) = v7;
    v4 = *(a1 + 800);
  }

  v13 = v7 - v4;
  if (v5 != v13)
  {
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v15, v13);
  return std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v15);
}

uint64_t AudioDSPGraph::Graph::setGraphPropertiesInitialValues(uint64_t this, const char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v2 = this;
    do
    {
      v3 = *(v2 + 72);
      v4 = *(v2 + 80);
      while (v3 != v4)
      {
        if ((*(v2 + 64) & 1) == 0 && *(v2 + 56) == 1)
        {
          v5 = *(v2 + 32);
          if ((*(v2 + 40) - v5) >> 32)
          {
            caulk::make_string(&v13, "graph property size is too large to accept: %zu bytes > %u", a2, *(v2 + 40) - v5, 0xFFFFFFFFLL);
            AudioDSPGraph::ThrowException(561211770, &v13, off_1E83362B8);
          }

          this = (*(**v3 + 312))(*v3, v3[2], v3[3], v3[4]);
          if (this)
          {
            v6 = this;
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v11, *(v2 + 16));
            v7 = (*v3 + 40);
            if (*(*v3 + 63) < 0)
            {
              v7 = *v7;
            }

            v10 = v7;
            AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v9, *(v2 + 16));
            caulk::string_from_4cc(&v8, v6);
            v16[0] = 0;
            std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,char const*,std::string,std::string>(v16, v15, &v11, &v10, &v9, &v8);
            v17 = v21;
            v18 = xmmword_1C925F110;
            v19 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
            v20 = 0;
            __p = v21;
            v14[0] = 4;
            v14[1] = v15;
            v14[2] = v16[0];
            std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v17, "failed to set default value for property {} on '{}' with error {}", 65, v14);
            std::string::basic_string<std::string_view,0>(__dst, __p, *(&v18 + 1));
            if (__p != v21)
            {
              operator delete(__p);
            }

            AudioDSPGraph::ThrowException(v6, __dst, off_1E83362D0);
          }
        }

        v3 += 6;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void sub_1C922F484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

float *AudioDSPGraph::Graph::setGraphParameterInitialValues(float *this)
{
  if (this)
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 5);
      v3 = *(v1 + 6);
      while (v2 != v3)
      {
        if ((v1[9] & 1) == 0 && *(v1 + 32) == 1)
        {
          this = (*(**v2 + 88))(v4, v1[7]);
          if ((v5 & 1) == 0)
          {
            AudioDSPGraph::Error::throwException(v4);
          }
        }

        v2 += 24;
      }

      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void sub_1C922F5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a14 & 1) == 0)
  {
    AudioDSPGraph::Error::~Error(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,char const*,std::string,std::string>(void *result, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, uint64_t **a6)
{
  v6 = *(a3 + 23);
  v7 = v6;
  v8 = *a3;
  v9 = a3[1];
  *result = 13;
  if ((v6 & 0x80u) != 0)
  {
    v6 = v9;
  }

  if (v7 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  *a2 = v10;
  a2[1] = v6;
  v11 = *a4;
  *result |= 0x180uLL;
  a2[2] = v11;
  v12 = *(a5 + 23);
  v13 = v12;
  v14 = *a5;
  v15 = a5[1];
  *result |= 0x3400uLL;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v15;
  }

  if (v13 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v14;
  }

  a2[4] = v16;
  a2[5] = v12;
  v17 = *(a6 + 23);
  v18 = v17;
  v19 = *a6;
  v20 = a6[1];
  *result |= 0x68000uLL;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v20;
  }

  if (v18 >= 0)
  {
    v21 = a6;
  }

  else
  {
    v21 = v19;
  }

  a2[6] = v21;
  a2[7] = v17;
  return result;
}

void *std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__emplace_unique_key_args<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::unique_ptr<AudioDSPGraph::IsoGroup>>(float *a1, unint64_t a2, uint64_t *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<AudioDSPGraph::IsoGroup>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void AudioDSPGraph::IsoGroup::~IsoGroup(AudioDSPGraph::IsoGroup *this)
{
  *this = &unk_1F48D11B0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D11B0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 16);
}

unint64_t AudioDSPGraph::Graph::getPropertyInfo(AudioDSPGraph::Graph *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 78, a2);
  if (v2)
  {
    v3 = v2[9];
    if (v2[10] == v3)
    {
      v5 = 0;
      v6 = 1969451041;
    }

    else
    {
      v4 = (*(**v3 + 296))(*v3, v3[2], v3[3], v3[4]);
      v5 = v4 & 0xFFFFFFFF00000000;
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1852204065;
  }

  return v5 | v6;
}

void std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t AudioDSPGraph::Graph::setAUStrip(AudioDSPGraph::Graph *this, const __CFDictionary *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(&v101, a2);
  if (!v101)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<__CFString const* const&>(v101, @"version");
  if (!v4 || ((v5 = applesauce::CF::convert_as<int,0>(v4), (v5 & 0x100000000) == 0) ? (v6 = 1) : (v6 = v5), v6 == 1))
  {
    applesauce::CF::DictionaryRef::from_get(buf, a2);
    if (!*buf)
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v83, "Could not construct");
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(*buf, @"strips"))
    {
      if (!*buf)
      {
        v84 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v84, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, *buf, @"strips");
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      }

      v100 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, this);
      v45 = theArray;
      if (!theArray)
      {
LABEL_178:
        v61 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v61, "Could not construct");
      }

      v46 = 0;
      v47 = v100 - 1;
      while (v46 < CFArrayGetCount(v45))
      {
        if (!theArray)
        {
          v71 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v71, "Could not construct");
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v104, theArray, v46);
        if (!v104)
        {
          v70 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v70, "Could not construct");
        }

        if (applesauce::CF::details::has_key<__CFString const* const&>(v104, @"effects"))
        {
          if (!v104)
          {
            v72 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v72, "Could not construct");
          }

          applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(v113, v104, @"effects");
          v48 = *v113;
          if (!*v113)
          {
LABEL_197:
            v64 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v64, "Could not construct");
          }

          v49 = 0;
          while (v49 < CFArrayGetCount(v48))
          {
            if (!*v113)
            {
              v66 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v66, "Could not construct");
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v110, *v113, v49);
            if (!v110)
            {
              v65 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v65, "Could not construct");
            }

            applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&v114, v110, @"displayname");
            v50 = v115;
            v51 = v115;
            if ((v115 & 0x80u) != 0)
            {
              v50 = *(&v114 + 1);
            }

            if (!v50)
            {
              __cxa_rethrow();
            }

            v52 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &v114);
            if (v52)
            {
              v53 = v52[5];
              if (v53)
              {
                if (!v110)
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                }

                v54 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"aupreset");
                if (!v54)
                {
                  v69 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v69, "Could not find item");
                }

                applesauce::CF::DictionaryRef::from_get(&v109, v54);
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                if (v47 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v55 = AudioDSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                  {
                    v56 = v53 + 40;
                    if (v53[63] < 0)
                    {
                      v56 = *v56;
                    }

                    LODWORD(__p) = 136315138;
                    *(&__p + 4) = v56;
                    _os_signpost_emit_with_name_impl(&dword_1C91AE000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v100, "Box::setPreset", "%s", &__p, 0xCu);
                  }
                }

                (*(*v53 + 336))(v53, v109);
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                if (v47 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v57 = AudioDSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                  {
                    v58 = v53 + 40;
                    if (v53[63] < 0)
                    {
                      v58 = *v58;
                    }

                    LODWORD(__p) = 136315138;
                    *(&__p + 4) = v58;
                    _os_signpost_emit_with_name_impl(&dword_1C91AE000, v57, OS_SIGNPOST_INTERVAL_END, v100, "Box::setPreset", "%s", &__p, 0xCu);
                  }
                }

                if (!v110)
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not construct");
                }

                v59 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"bypass");
                if (v59)
                {
                  v60 = applesauce::CF::convert_as<unsigned int,0>(v59);
                  if ((v60 & 0x100000000) != 0)
                  {
                    (*(*v53 + 56))(v53, v60 != 0);
                  }
                }

                if (v109)
                {
                  CFRelease(v109);
                }

                v51 = v115;
              }
            }

            if ((v51 & 0x80) != 0)
            {
              operator delete(v114);
            }

            if (v110)
            {
              CFRelease(v110);
            }

            ++v49;
            v48 = *v113;
            if (!*v113)
            {
              goto LABEL_197;
            }
          }

          if (*v113)
          {
            CFRelease(*v113);
          }
        }

        if (v104)
        {
          CFRelease(v104);
        }

        ++v46;
        v45 = theArray;
        if (!theArray)
        {
          goto LABEL_178;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      if (!*buf)
      {
        v85 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v85, "Could not construct");
      }

      if (CFDictionaryGetCount(*buf))
      {
        v44 = 1886548769;
        goto LABEL_185;
      }
    }

    v44 = 0;
LABEL_185:
    v62 = *buf;
    if (*buf)
    {
      goto LABEL_193;
    }

    goto LABEL_194;
  }

  if (v6 != 2)
  {
    v44 = 4294956445;
    goto LABEL_194;
  }

  applesauce::CF::DictionaryRef::from_get(&v109, a2);
  if (!v109)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v109, @"strips");
  if (v108 != 1)
  {
    if (!v109)
    {
      v87 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v87, "Could not construct");
    }

    if (CFDictionaryGetCount(v109))
    {
      v44 = 1886548769;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_192;
  }

  v7 = theArray;
  if (!theArray)
  {
    goto LABEL_120;
  }

  Count = CFArrayGetCount(theArray);
  v9 = CFArrayGetCount(v7);
  if (!Count)
  {
LABEL_118:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_120;
  }

  v10 = v9;
  v11 = 0;
  v89 = Count;
  v90 = v7;
  v88 = v9;
  do
  {
    if (v11 == v10)
    {
      break;
    }

    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v106, v7, v11);
    if (!v106)
    {
      v82 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v82, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v104, v106, @"effects");
    if (v105 != 1)
    {
      goto LABEL_114;
    }

    v13 = v104;
    if (!v104)
    {
      goto LABEL_114;
    }

    v94 = CFArrayGetCount(v104);
    v93 = CFArrayGetCount(v13);
    if (!v94)
    {
LABEL_112:
      if (v104)
      {
        CFRelease(v104);
      }

      goto LABEL_114;
    }

    v14 = 0;
    v92 = v13;
    while (v14 != v93)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v13, v14);
      if (!cf)
      {
        v79 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v79, "Could not construct");
      }

      applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, cf, @"displayname");
      v15 = v112;
      v16 = v112;
      if ((v112 & 0x80u) != 0)
      {
        v15 = *(&__p + 1);
      }

      if (!v15)
      {
        __cxa_rethrow();
      }

      v17 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &__p);
      if (!v17)
      {
        goto LABEL_99;
      }

      v99 = v17[5];
      if (!v99)
      {
        goto LABEL_99;
      }

      v18 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v102 = v18;
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      spid = os_signpost_id_generate(AudioDSPGraph::getLog(void)::gLog);
      if (!v102)
      {
        goto LABEL_221;
      }

      v19 = applesauce::CF::details::at_key<__CFString const* const&>(v102, @"aupreset");
      if (!v19)
      {
        goto LABEL_45;
      }

      v20 = v19;
      CFRetain(v19);
      v21 = CFGetTypeID(v20);
      if (v21 != CFDictionaryGetTypeID())
      {
        CFRelease(v20);
LABEL_45:
        LOBYTE(v114) = 0;
        BYTE8(v114) = 0;
        goto LABEL_46;
      }

      *&v114 = v20;
      BYTE8(v114) = 1;
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v22 = AudioDSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
        {
          v23 = v99 + 40;
          if (v99[63] < 0)
          {
            v23 = *v23;
          }

          *buf = 136315138;
          *&buf[4] = v23;
          _os_signpost_emit_with_name_impl(&dword_1C91AE000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setPreset", "%s", buf, 0xCu);
        }
      }

      (*(*v99 + 336))(v99, v114);
      if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
      {
        AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        __cxa_guard_release(v12);
      }

      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = AudioDSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
        {
          v25 = v99 + 40;
          if (v99[63] < 0)
          {
            v25 = *v25;
          }

          *buf = 136315138;
          *&buf[4] = v25;
          _os_signpost_emit_with_name_impl(&dword_1C91AE000, v24, OS_SIGNPOST_INTERVAL_END, spid, "Box::setPreset", "%s", buf, 0xCu);
        }
      }

LABEL_46:
      if (BYTE8(v114) == 1 && v114)
      {
        CFRelease(v114);
      }

      if (!v102)
      {
        goto LABEL_221;
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(buf, v102, @"parameters");
      if (buf[8] == 1)
      {
        v26 = *buf;
        if (*buf)
        {
          v97 = CFArrayGetCount(*buf);
          v96 = CFArrayGetCount(v26);
          if (!v97)
          {
            goto LABEL_89;
          }

          v27 = 0;
          v98 = spid - 1;
          v91 = (v99 + 40);
          while (v96 != v27)
          {
            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v110, v26, v27);
            if (!v110)
            {
              v77 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v77, "Could not construct");
            }

            v28 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"scope");
            if (v28)
            {
              applesauce::CF::convert_as<unsigned int,0>(v28);
            }

            if (!v110)
            {
              v73 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v73, "Could not construct");
            }

            v29 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"element");
            if (v29)
            {
              applesauce::CF::convert_as<unsigned int,0>(v29);
            }

            if (!v110)
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not construct");
            }

            v30 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"parameterID");
            if (!v30)
            {
              v74 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v74, "Could not find item");
LABEL_217:
            }

            if ((applesauce::CF::convert_as<unsigned int,0>(v30) & 0x100000000) == 0)
            {
              v74 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v74, "Could not convert");
              goto LABEL_217;
            }

            if (!v110)
            {
              v78 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v78, "Could not construct");
            }

            v31 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"value");
            if (!v31)
            {
              v75 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v75, "Could not find item");
              goto LABEL_214;
            }

            v32 = applesauce::CF::convert_as<float,0>(v31);
            if (!(v32 >> 32))
            {
              v75 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v75, "Could not convert");
LABEL_214:
            }

            v33 = *&v32;
            v34 = v12;
            if ((atomic_load_explicit(v12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v12))
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              __cxa_guard_release(v12);
            }

            if (v98 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v35 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v36 = v99 + 40;
                if (v99[63] < 0)
                {
                  v36 = *v91;
                }

                LODWORD(v114) = 136315138;
                *(&v114 + 4) = v36;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setParameter", "%s", &v114, 0xCu);
              }
            }

            (*(*v99 + 88))(&v114, v33);
            v12 = v34;
            if ((atomic_load_explicit(v34, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v34))
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
              __cxa_guard_release(v34);
            }

            if (v98 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v37 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v38 = v99 + 40;
                if (v99[63] < 0)
                {
                  v38 = *v91;
                }

                *v113 = 136315138;
                *&v113[4] = v38;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Box::setParameter", "%s", v113, 0xCu);
              }
            }

            if ((v116 & 1) == 0)
            {
              AudioDSPGraph::Error::throwException(&v114);
            }

            if (v110)
            {
              CFRelease(v110);
            }

            if (v97 == ++v27)
            {
              break;
            }
          }

          if (buf[8])
          {
LABEL_89:
            if (*buf)
            {
              CFRelease(*buf);
            }
          }
        }
      }

      v39 = v102;
      if (!v102)
      {
LABEL_221:
        v81 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v81, "Could not construct");
      }

      v40 = applesauce::CF::details::at_key<__CFString const* const&>(v102, @"bypass");
      if (v40)
      {
        v41 = applesauce::CF::convert_as<unsigned int,0>(v40);
        if ((v41 & 0x100000000) != 0)
        {
          (*(*v99 + 56))(v99, v41 != 0);
        }
      }

      v42 = applesauce::CF::details::at_key<__CFString const* const&>(v39, @"bypass");
      if (v42)
      {
        v43 = applesauce::CF::convert_as<BOOL,0>(v42);
        if (v43 >= 0x100u)
        {
          (*(*v99 + 56))(v99, v43 & 1);
        }
      }

      CFRelease(v39);
      v16 = v112;
LABEL_99:
      if ((v16 & 0x80) != 0)
      {
        operator delete(__p);
      }

      v13 = v92;
      if (cf)
      {
        CFRelease(cf);
      }

      if (++v14 == v94)
      {
        break;
      }
    }

    Count = v89;
    v7 = v90;
    v10 = v88;
    if (v105)
    {
      goto LABEL_112;
    }

LABEL_114:
    if (v106)
    {
      CFRelease(v106);
    }

    ++v11;
  }

  while (v11 != Count);
  if (v108)
  {
    goto LABEL_118;
  }

LABEL_120:
  v44 = 0;
LABEL_192:
  v62 = v109;
  if (v109)
  {
LABEL_193:
    CFRelease(v62);
  }

LABEL_194:
  if (v101)
  {
    CFRelease(v101);
  }

  return v44;
}

void sub_1C923115C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(void *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void AudioDSPGraph::stripDictFromBoxes(CFDictionaryRef *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      if ((*(**v3 + 328))(*v3))
      {
        applesauce::CF::StringRef::from_get(&v30, @"type");
        (*(**v3 + 216))(&p_p);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(&__p, v30, &p_p);
        applesauce::CF::StringRef::from_get(&v29, @"subtype");
        (*(**v3 + 216))(value);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v35, v29, value + 1);
        applesauce::CF::StringRef::from_get(&cf, @"manufacturer");
        (*(**v3 + 216))(&v25);
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v36, cf, v26);
        v31[0] = &__p;
        v31[1] = 3;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v31);
        v6 = 0;
        v31[2] = CFDictionaryRef;
        do
        {
          v7 = v36[v6 + 1];
          if (v7)
          {
            CFRelease(v7);
          }

          v8 = v36[v6];
          if (v8)
          {
            CFRelease(v8);
          }

          v6 -= 2;
        }

        while (v6 != -6);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        applesauce::CF::StringRef::from_get(&v25, @"aupreset");
        (*(**v3 + 344))(v31);
        v9 = v25;
        if (v25)
        {
          CFRetain(v25);
        }

        __p = v9;
        v10 = v31[0];
        if (v31[0])
        {
          CFRetain(v31[0]);
        }

        v34 = v10;
        applesauce::CF::StringRef::from_get(&v30, @"displayname");
        v11 = (*v3 + 40);
        if (*(*v3 + 63) < 0)
        {
          v11 = *v11;
        }

        v29 = v11;
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v35, v30, &v29);
        applesauce::CF::StringRef::from_get(&cf, @"bypass");
        v24 = (*(**v3 + 48))();
        applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(v36, cf, &v24);
        applesauce::CF::StringRef::from_get(&v23, @"unit");
        v12 = v23;
        if (v23)
        {
          CFRetain(v23);
        }

        v37 = v12;
        CFRetain(CFDictionaryRef);
        v38 = CFDictionaryRef;
        p_p = &__p;
        v40 = 4;
        v13 = 0;
        value[0] = applesauce::CF::details::make_CFDictionaryRef(&p_p);
        do
        {
          v14 = *(&v38 + v13);
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = *(&v37 + v13);
          if (v15)
          {
            CFRelease(v15);
          }

          v13 -= 16;
        }

        while (v13 != -64);
        if (v23)
        {
          CFRelease(v23);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v31[0])
        {
          CFRelease(v31[0]);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        CFArrayAppendValue(theArray, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (CFDictionaryRef)
        {
          CFRelease(CFDictionaryRef);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  applesauce::CF::StringRef::from_get(&v25, @"effects");
  v16 = theArray;
  applesauce::CF::ArrayRef::from_get(v31, theArray);
  v17 = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  p_p = v17;
  v18 = v31[0];
  if (v31[0])
  {
    CFRetain(v31[0]);
  }

  v40 = v18;
  __p = &p_p;
  v34 = 1;
  v19 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  value[0] = v19;
  if (v40)
  {
    CFRelease(v40);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v31[0])
  {
    CFRelease(v31[0]);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  CFRetain(v19);
  p_p = v19;
  std::vector<void const*>::vector[abi:ne200100](&__p, 1uLL);
  *__p = p_p;
  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p, v34);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v25 = CFArray;
  if (p_p)
  {
    CFRelease(p_p);
  }

  applesauce::CF::StringRef::from_get(v31, @"strips");
  v21 = v31[0];
  if (v31[0])
  {
    CFRetain(v31[0]);
  }

  p_p = v21;
  CFRetain(CFArray);
  v40 = CFArray;
  __p = &p_p;
  v34 = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(&__p);
  if (v40)
  {
    CFRelease(v40);
  }

  if (p_p)
  {
    CFRelease(p_p);
  }

  if (v31[0])
  {
    CFRelease(v31[0]);
  }

  CFRelease(CFArray);
  CFRelease(v19);
  if (v16)
  {
    CFRelease(v16);
  }
}

void sub_1C9231EF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  applesauce::CF::TypeRefPair::~TypeRefPair((v29 - 120));
  applesauce::CF::StringRef::~StringRef(&a24);
  applesauce::CF::ArrayRef::~ArrayRef(&a15);
  JUMPOUT(0x1C9231F44);
}

void sub_1C9231F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, const void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  applesauce::CF::TypeRefPair::~TypeRefPair((v12 - 120));
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(&v13);
  JUMPOUT(0x1C9232078);
}

void sub_1C9232070(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C9232078);
  }

  __clang_call_terminate(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C9232134(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_1C9232214(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::vector<AudioDSPGraph::Box *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v146 = a2 - 1;
    v147 = a2;
    v143 = a2 - 3;
    v144 = a2 - 2;
    v7 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = a2 - v7;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v146);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v146);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v7, v7 + 1, v7 + 2, v7 + 3, v146);
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v67 = *v146;
              v68 = *v7;
              v69 = (*v146 + 40);
              if (*(*v146 + 63) < 0)
              {
                v69 = *v69;
              }

              v70 = (v68 + 40);
              if (*(v68 + 63) < 0)
              {
                v70 = *v70;
              }

              result = strcmp(v69, v70);
              if ((result & 0x80000000) != 0)
              {
                *v7 = v67;
                *v146 = v68;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v71 = v7 + 1;
            v73 = v7 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = v7;
                do
                {
                  v76 = v71;
                  v77 = v75[1];
                  v78 = (v77 + 40);
                  v79 = (v77 + 40);
                  if (*(v77 + 63) < 0)
                  {
                    v79 = *v78;
                  }

                  v80 = *v75;
                  v81 = (*v75 + 40);
                  if (*(*v75 + 63) < 0)
                  {
                    v81 = *v81;
                  }

                  result = strcmp(v79, v81);
                  if ((result & 0x80000000) != 0)
                  {
                    v82 = v74;
                    while (1)
                    {
                      *(v7 + v82 + 8) = v80;
                      if (!v82)
                      {
                        break;
                      }

                      v83 = (v77 + 40);
                      if (*(v77 + 63) < 0)
                      {
                        v83 = *v78;
                      }

                      v80 = *(v7 + v82 - 8);
                      v84 = (v80 + 40);
                      if (*(v80 + 63) < 0)
                      {
                        v84 = *v84;
                      }

                      result = strcmp(v83, v84);
                      v82 -= 8;
                      if ((result & 0x80000000) == 0)
                      {
                        v85 = (v7 + v82 + 8);
                        goto LABEL_146;
                      }
                    }

                    v85 = v7;
LABEL_146:
                    *v85 = v77;
                    a2 = v147;
                  }

                  v71 = v76 + 1;
                  v74 += 8;
                  v75 = v76;
                }

                while (v76 + 1 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v134 = v71;
                v135 = v8[1];
                v136 = (v135 + 40);
                v137 = (v135 + 40);
                if (*(v135 + 63) < 0)
                {
                  v137 = *v136;
                }

                v138 = *v8;
                v139 = (*v8 + 40);
                if (*(*v8 + 63) < 0)
                {
                  v139 = *v139;
                }

                result = strcmp(v137, v139);
                if ((result & 0x80000000) != 0)
                {
                  v140 = v134;
                  do
                  {
                    *v140 = v138;
                    v141 = (v135 + 40);
                    if (*(v135 + 63) < 0)
                    {
                      v141 = *v136;
                    }

                    v138 = *(v140 - 2);
                    v142 = (v138 + 40);
                    if (*(v138 + 63) < 0)
                    {
                      v142 = *v142;
                    }

                    result = strcmp(v141, v142);
                    --v140;
                  }

                  while ((result & 0x80000000) != 0);
                  *v140 = v135;
                }

                v71 = v134 + 1;
                v8 = v134;
              }

              while (v134 + 1 != v147);
            }

            return result;
          }

          v149 = v7;
          if (!a3)
          {
            if (v7 != a2)
            {
              v86 = v10 >> 1;
              v87 = v10 >> 1;
              do
              {
                v88 = v87;
                if (v86 >= v87)
                {
                  v89 = (2 * v87) | 1;
                  v90 = &v149[v89];
                  if (2 * v87 + 2 < v9)
                  {
                    v91 = (*v90 + 40);
                    if (*(*v90 + 63) < 0)
                    {
                      v91 = *v91;
                    }

                    v92 = v90[1];
                    ++v90;
                    v93 = (v92 + 40);
                    if (*(v92 + 63) < 0)
                    {
                      v93 = *v93;
                    }

                    if (strcmp(v91, v93) < 0)
                    {
                      v89 = 2 * v88 + 2;
                    }

                    else
                    {
                      v90 = &v149[v89];
                    }
                  }

                  v94 = &v149[v88];
                  v95 = *v90;
                  v96 = *v94;
                  v97 = (*v90 + 40);
                  if (*(*v90 + 63) < 0)
                  {
                    v97 = *v97;
                  }

                  v98 = (v96 + 40);
                  v99 = (v96 + 40);
                  if (*(v96 + 63) < 0)
                  {
                    v99 = *v98;
                  }

                  result = strcmp(v97, v99);
                  if ((result & 0x80000000) == 0)
                  {
                    do
                    {
                      v100 = v90;
                      *v94 = v95;
                      if (v86 < v89)
                      {
                        break;
                      }

                      v101 = (2 * v89) | 1;
                      v90 = &v149[v101];
                      if (2 * v89 + 2 >= v9)
                      {
                        v89 = (2 * v89) | 1;
                      }

                      else
                      {
                        v102 = (*v90 + 40);
                        if (*(*v90 + 63) < 0)
                        {
                          v102 = *v102;
                        }

                        v103 = v90[1];
                        ++v90;
                        v104 = (v103 + 40);
                        if (*(v103 + 63) < 0)
                        {
                          v104 = *v104;
                        }

                        if (strcmp(v102, v104) < 0)
                        {
                          v89 = 2 * v89 + 2;
                        }

                        else
                        {
                          v90 = &v149[v101];
                          v89 = (2 * v89) | 1;
                        }
                      }

                      v95 = *v90;
                      v105 = (*v90 + 40);
                      if (*(*v90 + 63) < 0)
                      {
                        v105 = *v105;
                      }

                      v106 = (v96 + 40);
                      if (*(v96 + 63) < 0)
                      {
                        v106 = *v98;
                      }

                      result = strcmp(v105, v106);
                      v94 = v100;
                    }

                    while ((result & 0x80000000) == 0);
                    *v100 = v96;
                  }
                }

                v87 = v88 - 1;
              }

              while (v88);
              v107 = v147;
              v108 = v149;
              do
              {
                v109 = 0;
                v110 = *v108;
                do
                {
                  v111 = &v108[v109];
                  v112 = v111 + 1;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 >= v9)
                  {
                    v109 = (2 * v109) | 1;
                  }

                  else
                  {
                    v117 = v111[2];
                    v116 = v111 + 2;
                    v115 = v117;
                    v118 = *(v116 - 1);
                    v119 = (v118 + 40);
                    if (*(v118 + 63) < 0)
                    {
                      v119 = *v119;
                    }

                    v120 = (v115 + 40);
                    if (*(v115 + 63) < 0)
                    {
                      v120 = *v120;
                    }

                    result = strcmp(v119, v120);
                    if (result >= 0)
                    {
                      v109 = v113;
                    }

                    else
                    {
                      v112 = v116;
                      v109 = v114;
                    }
                  }

                  *v108 = *v112;
                  v108 = v112;
                }

                while (v109 <= (v9 - 2) / 2);
                if (v112 == --v107)
                {
                  *v112 = v110;
                }

                else
                {
                  *v112 = *v107;
                  *v107 = v110;
                  v121 = (v112 - v149 + 8) >> 3;
                  v122 = v121 < 2;
                  v123 = v121 - 2;
                  if (!v122)
                  {
                    v124 = v123 >> 1;
                    v125 = &v149[v123 >> 1];
                    v126 = *v125;
                    v127 = (*v125 + 40);
                    if (*(*v125 + 63) < 0)
                    {
                      v127 = *v127;
                    }

                    v128 = *v112;
                    v129 = (*v112 + 40);
                    v130 = v129;
                    if (*(*v112 + 63) < 0)
                    {
                      v130 = *v129;
                    }

                    result = strcmp(v127, v130);
                    if ((result & 0x80000000) != 0)
                    {
                      do
                      {
                        v131 = v125;
                        *v112 = v126;
                        if (!v124)
                        {
                          break;
                        }

                        v124 = (v124 - 1) >> 1;
                        v125 = &v149[v124];
                        v126 = *v125;
                        v132 = (*v125 + 40);
                        if (*(*v125 + 63) < 0)
                        {
                          v132 = *v132;
                        }

                        v133 = v129;
                        if (*(v128 + 63) < 0)
                        {
                          v133 = *v129;
                        }

                        result = strcmp(v132, v133);
                        v112 = v131;
                      }

                      while ((result & 0x80000000) != 0);
                      *v131 = v128;
                    }
                  }
                }

                v122 = v9-- <= 2;
                v108 = v149;
              }

              while (!v122);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(&v8[v9 >> 1], v8, v146);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8, &v8[v9 >> 1], v146);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8 + 1, v12 - 1, v144);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v8 + 2, &v8[v11 + 1], v143);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(v12 - 1, &v8[v9 >> 1], &v8[v11 + 1]);
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v8;
          v148 = a3;
          if (a4)
          {
            LOBYTE(v15) = *(v14 + 63);
            break;
          }

          v16 = *(v8 - 1);
          v17 = (v16 + 40);
          if (*(v16 + 63) < 0)
          {
            v17 = *v17;
          }

          v18 = (v14 + 40);
          v15 = *(v14 + 63);
          v19 = (v14 + 40);
          if (v15 < 0)
          {
            v19 = *v18;
          }

          if (strcmp(v17, v19) < 0)
          {
            break;
          }

          v45 = (v14 + 40);
          if (v15 < 0)
          {
            v45 = *v18;
          }

          v46 = (*v146 + 40);
          if (*(*v146 + 63) < 0)
          {
            v46 = *v46;
          }

          result = strcmp(v45, v46);
          if ((result & 0x80000000) != 0)
          {
            v7 = v8;
            do
            {
              v47 = (v14 + 40);
              if (v15 < 0)
              {
                v47 = *v18;
              }

              v48 = v7[1];
              ++v7;
              v49 = (v48 + 40);
              if (*(v48 + 63) < 0)
              {
                v49 = *v49;
              }

              result = strcmp(v47, v49);
            }

            while ((result & 0x80000000) == 0);
          }

          else
          {
            v50 = (v8 + 1);
            do
            {
              v7 = v50;
              if (v50 >= a2)
              {
                break;
              }

              v51 = (v14 + 40);
              if (v15 < 0)
              {
                v51 = *v18;
              }

              v52 = (*v50 + 40);
              if (*(*v50 + 63) < 0)
              {
                v52 = *v52;
              }

              result = strcmp(v51, v52);
              v50 = (v7 + 1);
            }

            while ((result & 0x80000000) == 0);
          }

          v53 = a2;
          if (v7 < a2)
          {
            v53 = a2;
            do
            {
              v54 = (v14 + 40);
              if (v15 < 0)
              {
                v54 = *v18;
              }

              v55 = *--v53;
              v56 = (v55 + 40);
              if (*(v55 + 63) < 0)
              {
                v56 = *v56;
              }

              result = strcmp(v54, v56);
            }

            while ((result & 0x80000000) != 0);
          }

          if (v7 < v53)
          {
            v57 = *v7;
            v58 = *v53;
            do
            {
              *v7 = v58;
              *v53 = v57;
              v59 = *(v14 + 63);
              do
              {
                v60 = v7[1];
                ++v7;
                v57 = v60;
                v61 = (v14 + 40);
                if (v59 < 0)
                {
                  v61 = *v18;
                }

                v62 = (v57 + 40);
                if (*(v57 + 63) < 0)
                {
                  v62 = *v62;
                }
              }

              while ((strcmp(v61, v62) & 0x80000000) == 0);
              do
              {
                v63 = *--v53;
                v58 = v63;
                v64 = (v14 + 40);
                if (v59 < 0)
                {
                  v64 = *v18;
                }

                v65 = (v58 + 40);
                if (*(v58 + 63) < 0)
                {
                  v65 = *v65;
                }

                result = strcmp(v64, v65);
              }

              while ((result & 0x80000000) != 0);
            }

            while (v7 < v53);
          }

          v66 = v7 - 1;
          if (v7 - 1 != v8)
          {
            *v8 = *v66;
          }

          a4 = 0;
          *v66 = v14;
        }

        v20 = (v14 + 40);
        v21 = v8;
        do
        {
          v23 = v21[1];
          ++v21;
          v22 = v23;
          v24 = (v23 + 40);
          if (*(v23 + 63) < 0)
          {
            v24 = *v24;
          }

          v25 = (v14 + 40);
          if ((v15 & 0x80) != 0)
          {
            v25 = *v20;
          }
        }

        while (strcmp(v24, v25) < 0);
        v26 = v21 - 1;
        v27 = a2;
        if (v21 - 1 == v149)
        {
          v27 = a2;
          do
          {
            if (v21 >= v27)
            {
              break;
            }

            v31 = *--v27;
            v32 = (v31 + 40);
            if (*(v31 + 63) < 0)
            {
              v32 = *v32;
            }

            v33 = (v14 + 40);
            if ((v15 & 0x80) != 0)
            {
              v33 = *v20;
            }
          }

          while ((strcmp(v32, v33) & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v28 = *--v27;
            v29 = (v28 + 40);
            if (*(v28 + 63) < 0)
            {
              v29 = *v29;
            }

            v30 = (v14 + 40);
            if ((v15 & 0x80) != 0)
            {
              v30 = *v20;
            }
          }

          while ((strcmp(v29, v30) & 0x80000000) == 0);
        }

        if (v21 < v27)
        {
          v34 = *v27;
          v35 = v21;
          v36 = v27;
          do
          {
            *v35 = v34;
            *v36 = v22;
            v37 = *(v14 + 63);
            do
            {
              v38 = v35[1];
              ++v35;
              v22 = v38;
              v39 = (v38 + 40);
              if (*(v38 + 63) < 0)
              {
                v39 = *v39;
              }

              v40 = (v14 + 40);
              if (v37 < 0)
              {
                v40 = *v20;
              }
            }

            while (strcmp(v39, v40) < 0);
            v26 = v35 - 1;
            do
            {
              v41 = *--v36;
              v34 = v41;
              v42 = (v41 + 40);
              if (*(v41 + 63) < 0)
              {
                v42 = *v42;
              }

              v43 = (v14 + 40);
              if (v37 < 0)
              {
                v43 = *v20;
              }
            }

            while ((strcmp(v42, v43) & 0x80000000) == 0);
          }

          while (v35 < v36);
        }

        v6 = v149;
        if (v26 != v149)
        {
          *v149 = *v26;
        }

        *v26 = v14;
        a2 = v147;
        a3 = v148;
        if (v21 >= v27)
        {
          break;
        }

LABEL_62:
        result = std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(v149, v26, v148, a4 & 1);
        a4 = 0;
        v7 = v26 + 1;
      }

      v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(v149, v26);
      v7 = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(v26 + 1, v147);
      if (result)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_62;
      }
    }

    a2 = v26;
    if (!v44)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = (*a2 + 40);
  v9 = *(*a2 + 63);
  v10 = v8;
  if (v9 < 0)
  {
    v10 = *v8;
  }

  v11 = (v7 + 40);
  v12 = (v7 + 40);
  if (*(v7 + 63) < 0)
  {
    v12 = *v11;
  }

  v13 = strcmp(v10, v12);
  v14 = *a3;
  v15 = (*a3 + 40);
  v16 = *(*a3 + 63);
  if ((v13 & 0x80000000) == 0)
  {
    if (v16 < 0)
    {
      v15 = *v15;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v8 = *v8;
LABEL_12:
    result = strcmp(v15, v8);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v14;
      *a3 = v6;
      v18 = *a2;
      v19 = *a1;
      v20 = (*a2 + 40);
      if (*(*a2 + 63) < 0)
      {
        v20 = *v20;
      }

      v21 = (v19 + 40);
      if (*(v19 + 63) < 0)
      {
        v21 = *v21;
      }

      result = strcmp(v20, v21);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v18;
        *a2 = v19;
      }
    }

    return result;
  }

  if (v16 < 0)
  {
    v15 = *v15;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    v8 = *v8;
    goto LABEL_8;
  }

  if (v9 < 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  result = strcmp(v15, v8);
  if ((result & 0x80000000) != 0)
  {
    *a1 = v14;
LABEL_25:
    *a3 = v7;
    return result;
  }

  *a1 = v6;
  *a2 = v7;
  v22 = *a3;
  v23 = (*a3 + 40);
  if (*(*a3 + 63) < 0)
  {
    v23 = *v23;
  }

  if (*(v7 + 63) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v23, v11);
  if ((result & 0x80000000) != 0)
  {
    *a2 = v22;
    goto LABEL_25;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = (*a4 + 40);
  if (*(*a4 + 63) < 0)
  {
    v10 = *v10;
  }

  v11 = (v9 + 40);
  if (*(v9 + 63) < 0)
  {
    v11 = *v11;
  }

  result = strcmp(v10, v11);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v8;
    *a4 = v9;
    v13 = *a3;
    v14 = *a2;
    v15 = (*a3 + 40);
    if (*(*a3 + 63) < 0)
    {
      v15 = *v15;
    }

    v16 = (v14 + 40);
    if (*(v14 + 63) < 0)
    {
      v16 = *v16;
    }

    result = strcmp(v15, v16);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v13;
      *a3 = v14;
      v17 = *a2;
      v18 = *a1;
      v19 = (*a2 + 40);
      if (*(*a2 + 63) < 0)
      {
        v19 = *v19;
      }

      v20 = (v18 + 40);
      if (*(v18 + 63) < 0)
      {
        v20 = *v20;
      }

      result = strcmp(v19, v20);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v17;
        *a2 = v18;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = (*a5 + 40);
  if (*(*a5 + 63) < 0)
  {
    v12 = *v12;
  }

  v13 = (v11 + 40);
  if (*(v11 + 63) < 0)
  {
    v13 = *v13;
  }

  result = strcmp(v12, v13);
  if ((result & 0x80000000) != 0)
  {
    *a4 = v10;
    *a5 = v11;
    v15 = *a4;
    v16 = *a3;
    v17 = (*a4 + 40);
    if (*(*a4 + 63) < 0)
    {
      v17 = *v17;
    }

    v18 = (v16 + 40);
    if (*(v16 + 63) < 0)
    {
      v18 = *v18;
    }

    result = strcmp(v17, v18);
    if ((result & 0x80000000) != 0)
    {
      *a3 = v15;
      *a4 = v16;
      v19 = *a3;
      v20 = *a2;
      v21 = (*a3 + 40);
      if (*(*a3 + 63) < 0)
      {
        v21 = *v21;
      }

      v22 = (v20 + 40);
      if (*(v20 + 63) < 0)
      {
        v22 = *v22;
      }

      result = strcmp(v21, v22);
      if ((result & 0x80000000) != 0)
      {
        *a2 = v19;
        *a3 = v20;
        v23 = *a2;
        v24 = *a1;
        v25 = (*a2 + 40);
        if (*(*a2 + 63) < 0)
        {
          v25 = *v25;
        }

        v26 = (v24 + 40);
        if (*(v24 + 63) < 0)
        {
          v26 = *v26;
        }

        result = strcmp(v25, v26);
        if ((result & 0x80000000) != 0)
        {
          *a1 = v23;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = (v5 + 40);
        if (*(v5 + 63) < 0)
        {
          v7 = *v7;
        }

        v8 = (v6 + 40);
        if (*(v6 + 63) < 0)
        {
          v8 = *v8;
        }

        if (strcmp(v7, v8) < 0)
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_15:
  v9 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  for (i = 24; ; i += 8)
  {
    v13 = *v10;
    v14 = (*v10 + 40);
    v15 = v14;
    if (*(*v10 + 63) < 0)
    {
      v15 = *v14;
    }

    v16 = *v9;
    v17 = (v16 + 40);
    if (*(v16 + 63) < 0)
    {
      v17 = *v17;
    }

    if (strcmp(v15, v17) < 0)
    {
      v18 = i;
      while (1)
      {
        *(a1 + v18) = v16;
        v19 = v18 - 8;
        if (v18 == 8)
        {
          break;
        }

        v20 = v14;
        if (*(v13 + 63) < 0)
        {
          v20 = *v14;
        }

        v16 = *(a1 + v18 - 16);
        v21 = (v16 + 40);
        if (*(v16 + 63) < 0)
        {
          v21 = *v21;
        }

        v22 = strcmp(v20, v21);
        v18 = v19;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = (a1 + v19);
          goto LABEL_31;
        }
      }

      v23 = a1;
LABEL_31:
      *v23 = v13;
      if (++v11 == 8)
      {
        break;
      }
    }

    v9 = v10++;
    if (v10 == a2)
    {
      return 1;
    }
  }

  return v10 + 1 == a2;
}

void AudioDSPGraph::Graph::setPropertyStrip(AudioDSPGraph::Graph *this, CFTypeRef cf, const __CFString *a3)
{
  v279 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
LABEL_483:
    std::string::basic_string[abi:ne200100]<0>(v250, "property strip is not valid");
    AudioDSPGraph::ThrowException(1886548769, v250, off_1E8335F58);
  }

  CFRetain(cf);
  v196 = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    CFRelease(v196);
    goto LABEL_483;
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&cfa, v196, @"Boxes", &buf);
  if (buf.__r_.__value_.__r.__words[0])
  {
    CFRelease(buf.__r_.__value_.__l.__data_);
  }

  v5 = cfa;
  if (!cfa)
  {
    std::string::basic_string[abi:ne200100]<0>(v248, "property strip 'Boxes' entry not found");
    AudioDSPGraph::ThrowException(1886548769, v248, off_1E8335F70);
  }

  v6 = CFGetTypeID(cfa);
  if (v6 != CFArrayGetTypeID())
  {
    std::string::basic_string[abi:ne200100]<0>(v247, "property strip 'Boxes' entry is not valid");
    AudioDSPGraph::ThrowException(1886548769, v247, off_1E8335F88);
  }

  v7 = CFGetTypeID(v5);
  if (v7 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::ArrayRef::from_get(&theArray, v5);
  v8 = &unk_1EC395000;
  {
    v8 = &unk_1EC395000;
    if (v195)
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      v8 = &unk_1EC395000;
    }
  }

  spid = os_signpost_id_make_with_pointer(v8[171], this);
  v9 = theArray;
  if (!theArray)
  {
LABEL_372:
    v152 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v152, "Could not construct");
  }

  v204 = 0;
  v212 = spid - 1;
  alloc = *MEMORY[0x1E695E480];
  while (v204 < CFArrayGetCount(v9))
  {
    if (!theArray)
    {
      v170 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v170, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef>(&v245, theArray, v204, &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v11 = v245;
    if (!v245 || (v12 = CFGetTypeID(v245), v12 != CFDictionaryGetTypeID()))
    {
      caulk::make_string(&v244, "property strip 'Boxes[%zu]' entry is not valid", v10, v204);
      AudioDSPGraph::ThrowException(1886548769, &v244, off_1E8335FA0);
    }

    v13 = CFGetTypeID(v11);
    if (v13 != CFDictionaryGetTypeID())
    {
      v169 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v169, "Could not construct");
    }

    applesauce::CF::DictionaryRef::from_get(&v243, v11);
    if (!v243)
    {
      v168 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v168, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v242, v243, @"Name", &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v15 = v242;
    if (!v242)
    {
      caulk::make_string(&v241, "property strip 'Boxes[%zu].Name' entry not found", v14, v204);
      AudioDSPGraph::ThrowException(1886548769, &v241, off_1E8335FB8);
    }

    v16 = CFGetTypeID(v242);
    if (v16 != CFStringGetTypeID())
    {
      caulk::make_string(&v240, "property strip 'Boxes[%zu].Name' entry is not valid", v17, v204);
      AudioDSPGraph::ThrowException(1886548769, &v240, off_1E8335FD0);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, &byte_1C9279A7A);
    applesauce::CF::convert_as<std::string,0>(&buf, v15);
    if (v276)
    {
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v239, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      else
      {
        v239 = buf;
      }
    }

    else
    {
      v239 = __p;
      memset(&__p, 0, sizeof(__p));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v239.__r_.__value_.__r.__words[2]);
    v20 = SHIBYTE(v239.__r_.__value_.__r.__words[2]);
    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v239.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      caulk::make_string(&v238, "property strip 'Boxes[%zu].Name' entry is empty", v18, v204);
      AudioDSPGraph::ThrowException(1886548769, &v238, off_1E8335FE8);
    }

    v21 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(this + 117, &v239);
    if (!v21 || (v211 = v21[5]) == 0)
    {
      v166 = v239.__r_.__value_.__r.__words[0];
      if (v20 >= 0)
      {
        v166 = &v239;
      }

      caulk::make_string(&v237, "box %s not found", v22, v166);
      AudioDSPGraph::ThrowException(1852204065, &v237, off_1E8336000);
    }

    if (!v243)
    {
      v167 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v167, "Could not construct");
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v236, v243, @"Properties", &buf);
    if (buf.__r_.__value_.__r.__words[0])
    {
      CFRelease(buf.__r_.__value_.__l.__data_);
    }

    v24 = v236;
    if (!v236)
    {
      caulk::make_string(&v235, "property strip 'Boxes[%zu].Properties' entry not found", v23, v204);
      AudioDSPGraph::ThrowException(1886548769, &v235, off_1E8336018);
    }

    v25 = CFGetTypeID(v236);
    if (v25 != CFArrayGetTypeID())
    {
      caulk::make_string(&v234, "property strip 'Boxes[%zu].Properties' entry is not valid", v26, v204);
      AudioDSPGraph::ThrowException(1886548769, &v234, off_1E8336030);
    }

    v27 = CFGetTypeID(v24);
    if (v27 != CFArrayGetTypeID())
    {
      v171 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v171, "Could not construct");
    }

    applesauce::CF::ArrayRef::from_get(&v233, v24);
    v28 = v233;
    if (!v233)
    {
      goto LABEL_394;
    }

    idx = 0;
    v206 = (v211 + 40);
LABEL_43:
    Count = CFArrayGetCount(v28);
    v30 = v233;
    if (idx < Count)
    {
      if (!v233)
      {
        v160 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v160, "Could not construct");
      }

      if (CFArrayGetCount(v233) > idx)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v30, idx);
        v33 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v34 = CFGetTypeID(v33);
          if (v34 == CFDictionaryGetTypeID())
          {
            CFRetain(v33);
            CFRelease(v33);
            v35 = 0;
            buf.__r_.__value_.__r.__words[0] = @"PropertyID";
            buf.__r_.__value_.__l.__size_ = @"Number";
            while (1)
            {
              v36 = applesauce::CF::details::at_key<__CFString const*&>(v33, *(&buf.__r_.__value_.__l.__data_ + v35));
              if (v36)
              {
                break;
              }

              v35 += 8;
              if (v35 == 16)
              {
                caulk::make_string(&v231, "property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry not found", v37, v204, idx);
                AudioDSPGraph::ThrowException(1886548769, &v231, off_1E8336060);
              }
            }

            v38 = v36;
            CFRetain(v36);
            CFRetain(v38);
            CFRelease(v38);
            v39 = CFGetTypeID(v38);
            if (v39 != CFNumberGetTypeID())
            {
              v40 = CFGetTypeID(v38);
              if (v40 != CFStringGetTypeID())
              {
                caulk::make_string(&v230, "property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry is not valid", v41, v204, idx);
                AudioDSPGraph::ThrowException(1886548769, &v230, off_1E8336078);
              }
            }

            v42 = applesauce::CF::convert_as<unsigned int,0>(v38);
            v44 = v33;
            if ((v42 & 0x100000000) != 0)
            {
              goto LABEL_83;
            }

            applesauce::CF::convert_as<std::string,0>(&buf, v38);
            if (v276 != 1)
            {
              v42 = 0;
              goto LABEL_80;
            }

            v45 = 0;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            v47 = p_buf;
            while (1)
            {
              v48 = v47->__r_.__value_.__s.__data_[0];
              if (v48 == 92)
              {
                if (v47->__r_.__value_.__s.__data_[1] != 120 || strlen(&v47->__r_.__value_.__s.__data_[2]) < 2)
                {
                  goto LABEL_78;
                }

                v50 = 0;
                v49 = (v47->__r_.__value_.__r.__words + 4);
                v51 = 2;
                do
                {
                  v52 = v50;
                  v53 = __tolower(v47->__r_.__value_.__s.__data_[v51]);
                  if (v53 > 0xFF || (*(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x400) == 0 && v53 - 97 >= 6)
                  {
                    goto LABEL_78;
                  }

                  v50 = 1;
                  v51 = 3;
                }

                while ((v52 & 1) == 0);
                LODWORD(anURL.__r_.__value_.__l.__data_) = 0;
                if (sscanf(&v47->__r_.__value_.__s.__data_[2], "%02X", &anURL) != 1)
                {
                  goto LABEL_78;
                }

                LOBYTE(v48) = anURL.__r_.__value_.__s.__data_[0];
                if (LODWORD(anURL.__r_.__value_.__l.__data_) >= 0x100)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                if (!v47->__r_.__value_.__s.__data_[0])
                {
                  v49 = v47;
LABEL_76:
                  if (v49 == p_buf)
                  {
LABEL_78:
                    v42 = 0;
                  }

                  else
                  {
                    v42 = bswap32(__p.__r_.__value_.__l.__data_) | 0x100000000;
                  }

                  v33 = v44;
LABEL_80:
                  if (v276 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v54 = v42;
                    operator delete(buf.__r_.__value_.__l.__data_);
                    v42 = v54;
                  }

LABEL_83:
                  if ((v42 & 0x100000000) == 0)
                  {
                    caulk::make_string(&v229, "property strip 'Boxes[%zu].Properties[%zu].PropertyID' entry is not valid", v43, v204, idx);
                    AudioDSPGraph::ThrowException(1886548769, &v229, off_1E8336090);
                  }

                  v215 = v42;
                  v55 = applesauce::CF::details::at_key<__CFString const*>(v33, @"Scope");
                  if (v55)
                  {
                    v56 = applesauce::CF::convert_as<unsigned int,0>(v55);
                    if ((v56 & 0x100000000) != 0)
                    {
                      v57 = v56;
                    }

                    else
                    {
                      v57 = 0;
                    }

                    v214 = v57;
                  }

                  else
                  {
                    v214 = 0;
                  }

                  v58 = applesauce::CF::details::at_key<__CFString const*>(v33, @"Element");
                  if (v58)
                  {
                    v58 = applesauce::CF::convert_as<unsigned int,0>(v58);
                  }

                  if ((v58 & 0x100000000) != 0)
                  {
                    v59 = v58;
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v213 = v59;
                  buf.__r_.__value_.__r.__words[0] = 0;
                  applesauce::CF::at_or<applesauce::CF::TypeRef,__CFString const*>(&v273, v33, @"FeatureFlags", &buf);
                  if (buf.__r_.__value_.__r.__words[0])
                  {
                    CFRelease(buf.__r_.__value_.__l.__data_);
                  }

                  v60 = v273;
                  if (!v273)
                  {
                    goto LABEL_166;
                  }

                  v61 = CFGetTypeID(v273);
                  if (v61 != CFDictionaryGetTypeID())
                  {
                    caulk::make_string(&buf, "property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", v62, v204, idx);
                    AudioDSPGraph::ThrowException(1886548769, &buf, off_1E8336498);
                  }

                  v63 = CFGetTypeID(v60);
                  if (v63 != CFDictionaryGetTypeID())
                  {
                    v161 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v161, "Could not construct");
                  }

                  applesauce::CF::DictionaryRef::from_get(&v272, v60);
                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&buf, v272);
                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&__p, v272);
                  __p.__r_.__value_.__l.__size_ = (v269 - __p.__r_.__value_.__r.__words[2]) >> 3;
                  while (1)
                  {
                    if (buf.__r_.__value_.__r.__words[0] && buf.__r_.__value_.__l.__size_ != (v276 - buf.__r_.__value_.__r.__words[2]) >> 3)
                    {
                      v64 = __p.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v64 = __p.__r_.__value_.__r.__words[0];
                      if (!__p.__r_.__value_.__r.__words[0] || __p.__r_.__value_.__l.__size_ == (v269 - __p.__r_.__value_.__r.__words[2]) >> 3)
                      {
LABEL_152:
                        v83 = 2;
LABEL_153:
                        if (v270)
                        {
                          v271 = v270;
                          operator delete(v270);
                        }

                        if (__p.__r_.__value_.__r.__words[2])
                        {
                          v269 = __p.__r_.__value_.__r.__words[2];
                          operator delete(__p.__r_.__value_.__r.__words[2]);
                        }

                        if (v277)
                        {
                          v278 = v277;
                          operator delete(v277);
                        }

                        if (buf.__r_.__value_.__r.__words[2])
                        {
                          v276 = buf.__r_.__value_.__r.__words[2];
                          operator delete(buf.__r_.__value_.__r.__words[2]);
                        }

                        if (v272)
                        {
                          CFRelease(v272);
                        }

                        if (v83)
                        {
                          v85 = 0;
                          if (!v60)
                          {
LABEL_168:
                            if (!v85)
                            {
                              goto LABEL_337;
                            }

                            v252.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(v33, @"Value");
                            if (v252.__r_.__value_.__r.__words[0])
                            {
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v86 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v87 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v87 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v87;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v86, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v89 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &v252);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v90 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v91 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v91 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v91;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v90, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v89)
                              {
                                v162 = &v239;
                                if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v162 = v239.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string(&v228, "%s setProperty %u %u %u failed with error %d", v88, v162, v215, v214, v213, v89);
                                AudioDSPGraph::ThrowException(v89, &v228, off_1E83360A8);
                              }

                              goto LABEL_337;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,__CFString const*>(&theData, v33, @"Data");
                            if (v256 == 1)
                            {
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v92 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v93 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v93 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v93;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v92, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if ((v256 & 1) == 0)
                              {
                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              if (!theData)
                              {
                                v164 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v164, "Could not construct");
                              }

                              Length = CFDataGetLength(theData);
                              if ((v256 & 1) == 0)
                              {
                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              v95 = Length;
                              if (!theData)
                              {
                                v163 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v163, "Could not construct");
                              }

                              BytePtr = CFDataGetBytePtr(theData);
                              v98 = (*(*v211 + 312))(v211, v215, v214, v213, v95, BytePtr);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v99 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v100 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v100 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v100;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v99, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v98)
                              {
                                v165 = &v239;
                                if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v165 = v239.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string(&v227, "%s setProperty %u %u %u failed with error %d", v97, v165, v215, v214, v213, v98);
                                AudioDSPGraph::ThrowException(v98, &v227, off_1E83360C0);
                              }

LABEL_334:
                              if (v256 == 1 && theData)
                              {
                                CFRelease(theData);
                              }

LABEL_337:
                              CFRelease(v38);
                              CFRelease(v33);
                              ++idx;
                              v28 = v233;
                              if (!v233)
                              {
LABEL_394:
                                v159 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v159, "Could not construct");
                              }

                              goto LABEL_43;
                            }

                            v101 = applesauce::CF::details::at_key<char const*&>(v33, "UInt32");
                            if (v101)
                            {
                              v102 = applesauce::CF::convert_as<unsigned int,0>(v101);
                              if ((v102 & 0x100000000) != 0)
                              {
                                LODWORD(v274.__r_.__value_.__l.__data_) = v102;
                                v105 = (*(*v211 + 312))(v211, v215, v214, v213, 4, &v274);
                                if (v105)
                                {
                                  if (v211[63] < 0)
                                  {
                                    v206 = *v206;
                                  }

                                  std::to_string(&__p, v274.__r_.__value_.__l.__data_);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    p_p = &__p;
                                  }

                                  else
                                  {
                                    p_p = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&buf, "%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v172, v206, v215, v214, v213, p_p, "UInt32", v105);
                                  AudioDSPGraph::ThrowException(v105, &buf, off_1E8336570);
                                }

                                goto LABEL_334;
                              }
                            }

                            v207 = applesauce::CF::details::at_key<char const*&>(v33, "UInt32");
                            if (v207 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v207)))
                            {
                              v104 = CFArrayGetCount(v207);
                              if (v104 << 32)
                              {
                                v104 = v104;
                                if (!(v104 >> 62))
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v104);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v104 < 1)
                              {
                                v203 = 0;
                              }

                              else
                              {
                                v106 = CFArrayGetValueAtIndex(v207, 0);
                                if ((applesauce::CF::convert_as<unsigned int,0>(v106) & 0x100000000) != 0)
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v203 &= 0xFFFFFFFFFFFFFF00;
                              }

                              v33 = v44;
                            }

                            else
                            {
                              v203 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v107 = applesauce::CF::details::at_key<char const*&>(v33, "UInt64");
                            if (v107)
                            {
                              v108 = applesauce::CF::convert_as<unsigned long long,0>(v107);
                              if (v109)
                              {
                                v274.__r_.__value_.__r.__words[0] = v108;
                                v110 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &v274);
                                if (v110)
                                {
                                  if (v211[63] < 0)
                                  {
                                    v206 = *v206;
                                  }

                                  std::to_string(&__p, v274.__r_.__value_.__r.__words[0]);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v175 = &__p;
                                  }

                                  else
                                  {
                                    v175 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&buf, "%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v174, v206, v215, v214, v213, v175, "UInt64", v110);
                                  AudioDSPGraph::ThrowException(v110, &buf, off_1E83365A0);
                                }

                                goto LABEL_334;
                              }
                            }

                            v208 = applesauce::CF::details::at_key<char const*&>(v33, "UInt64");
                            if (v208 && (v111 = CFArrayGetTypeID(), v111 == CFGetTypeID(v208)))
                            {
                              v112 = CFArrayGetCount(v208);
                              if (v112 << 32)
                              {
                                v112 = v112;
                                if (!(v112 >> 61))
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v112);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v112 < 1)
                              {
                                v202 = 0;
                              }

                              else
                              {
                                v113 = CFArrayGetValueAtIndex(v208, 0);
                                applesauce::CF::convert_as<unsigned long long,0>(v113);
                                if (v114)
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v202 &= 0xFFFFFFFFFFFFFF00;
                              }

                              v33 = v44;
                            }

                            else
                            {
                              v202 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v115 = applesauce::CF::details::at_key<char const*&>(v33, "Float32");
                            if (v115)
                            {
                              v116 = applesauce::CF::convert_as<float,0>(v115);
                              if (v116 >> 32)
                              {
                                LODWORD(v274.__r_.__value_.__l.__data_) = v116;
                                v125 = (*(*v211 + 312))(v211, v215, v214, v213, 4, &v274);
                                if (v125)
                                {
                                  if (v211[63] < 0)
                                  {
                                    v206 = *v206;
                                  }

                                  std::to_string(&__p, *&v274.__r_.__value_.__l.__data_);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v180 = &__p;
                                  }

                                  else
                                  {
                                    v180 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&buf, "%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v179, v206, v215, v214, v213, v180, "Float32", v125);
                                  AudioDSPGraph::ThrowException(v125, &buf, off_1E83365D0);
                                }

                                goto LABEL_334;
                              }
                            }

                            v209 = applesauce::CF::details::at_key<char const*&>(v33, "Float32");
                            if (v209 && (v117 = CFArrayGetTypeID(), v117 == CFGetTypeID(v209)))
                            {
                              v118 = CFArrayGetCount(v209);
                              if (v118 << 32)
                              {
                                v118 = v118;
                                if (!(v118 >> 62))
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v118);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v118 < 1)
                              {
                                v33 = v44;
                                v201 = 0;
                              }

                              else
                              {
                                v149 = CFArrayGetValueAtIndex(v209, 0);
                                if (applesauce::CF::convert_as<float,0>(v149) >> 32)
                                {
                                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v201 &= 0xFFFFFFFFFFFFFF00;
                                v33 = v44;
                              }
                            }

                            else
                            {
                              v201 &= 0xFFFFFFFFFFFFFF00;
                            }

                            v119 = applesauce::CF::details::at_key<char const*&>(v33, "Float64");
                            if (v119)
                            {
                              v120 = applesauce::CF::convert_as<double,0>(v119);
                              if (v121)
                              {
                                v274.__r_.__value_.__r.__words[0] = v120;
                                v122 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &v274);
                                if (v122)
                                {
                                  if (v211[63] < 0)
                                  {
                                    v206 = *v206;
                                  }

                                  std::to_string(&__p, *&v274.__r_.__value_.__l.__data_);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v185 = &__p;
                                  }

                                  else
                                  {
                                    v185 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&buf, "%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v184, v206, v215, v214, v213, v185, "Float64", v122);
                                  AudioDSPGraph::ThrowException(v122, &buf, off_1E8336600);
                                }

                                goto LABEL_334;
                              }
                            }

                            v210 = applesauce::CF::details::at_key<char const*&>(v33, "Float64");
                            if (v210 && (v123 = CFArrayGetTypeID(), v123 == CFGetTypeID(v210)))
                            {
                              v124 = CFArrayGetCount(v210);
                              if (v124 << 32)
                              {
                                v124 = v124;
                                if (!(v124 >> 61))
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v124);
                                }

                                std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                              }

                              if (v124 < 1)
                              {
                                v33 = v44;
                                v199 = 0;
                              }

                              else
                              {
                                v150 = CFArrayGetValueAtIndex(v210, 0);
                                applesauce::CF::convert_as<double,0>(v150);
                                if (v151)
                                {
                                  std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](1uLL);
                                }

                                v199 &= 0xFFFFFFFFFFFFFF00;
                                v33 = v44;
                              }
                            }

                            else
                            {
                              v199 &= 0xFFFFFFFFFFFFFF00;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&__p, v33, @"FilePath");
                            if (__p.__r_.__value_.__s.__data_[8] == 1)
                            {
                              AudioDSPGraph::createAbsoluteURL(&anURL, __p.__r_.__value_.__l.__data_, a3);
                              if (!anURL.__r_.__value_.__r.__words[0])
                              {
                                v181 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v181, "Could not construct");
                              }

                              v126 = CFURLCopyFileSystemPath(anURL.__r_.__value_.__l.__data_, kCFURLPOSIXPathStyle);
                              v274.__r_.__value_.__r.__words[0] = v126;
                              if (!v126)
                              {
                                goto LABEL_442;
                              }

                              v127 = CFGetTypeID(v126);
                              if (v127 != CFStringGetTypeID())
                              {
                                v182 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v182, "Could not construct");
                              }

                              if (!v274.__r_.__value_.__r.__words[0])
                              {
LABEL_442:
                                if (__p.__r_.__value_.__s.__data_[8])
                                {
                                  v176 = applesauce::CF::StringRef::operator->(&__p);
                                  std::string::basic_string[abi:ne200100]<0>(v225, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v176, v225);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v178 = &buf;
                                  }

                                  else
                                  {
                                    v178 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&v226, "Couldn't create file path '%s'. CFURLCopyFileSystemPath failed.", v177, v178);
                                  AudioDSPGraph::ThrowException(1886548769, &v226, off_1E83360D8);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              stream.__r_.__value_.__r.__words[0] = v274.__r_.__value_.__r.__words[0];
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v128 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v129 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v129 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v129;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v128, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v131 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &stream);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v132 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v133 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v133 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v133;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v132, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v131)
                              {
                                v183 = &v239;
                                if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v183 = v239.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string(&v224, "%s setProperty %u %u %u failed with error %d", v130, v183, v215, v214, v213, v131);
                                AudioDSPGraph::ThrowException(v131, &v224, off_1E83360F0);
                              }

                              if (v274.__r_.__value_.__r.__words[0])
                              {
                                CFRelease(v274.__r_.__value_.__l.__data_);
                              }

                              v134 = anURL.__r_.__value_.__r.__words[0];
                              if (anURL.__r_.__value_.__r.__words[0])
                              {
LABEL_320:
                                CFRelease(v134);
                              }

LABEL_321:
                              if (__p.__r_.__value_.__s.__data_[8] == 1 && __p.__r_.__value_.__r.__words[0])
                              {
                                CFRelease(__p.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_334;
                            }

                            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&anURL, v33, @"Path");
                            if (anURL.__r_.__value_.__s.__data_[8] == 1)
                            {
                              AudioDSPGraph::createAbsoluteURL(&v274, anURL.__r_.__value_.__l.__data_, a3);
                              v135 = CFReadStreamCreateWithFile(alloc, v274.__r_.__value_.__l.__data_);
                              stream.__r_.__value_.__r.__words[0] = v135;
                              if (!v135)
                              {
                                if (anURL.__r_.__value_.__s.__data_[8])
                                {
                                  v186 = applesauce::CF::StringRef::operator->(&anURL);
                                  std::string::basic_string[abi:ne200100]<0>(v222, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v186, v222);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v188 = &buf;
                                  }

                                  else
                                  {
                                    v188 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&v223, "Couldn't load plist from path '%s'. CFReadStreamCreateWithFile failed.", v187, v188);
                                  AudioDSPGraph::ThrowException(1886548769, &v223, off_1E8336108);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              CFReadStreamOpen(v135);
                              v266 = CFPropertyListCreateWithStream(alloc, stream.__r_.__value_.__l.__data_, 0, 0, 0, 0);
                              CFReadStreamClose(stream.__r_.__value_.__l.__data_);
                              if (!v266)
                              {
                                if (anURL.__r_.__value_.__s.__data_[8])
                                {
                                  v190 = applesauce::CF::StringRef::operator->(&anURL);
                                  std::string::basic_string[abi:ne200100]<0>(v220, "???");
                                  applesauce::CF::StringRef_proxy::convert_or(&buf, *v190, v220);
                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v192 = &buf;
                                  }

                                  else
                                  {
                                    v192 = buf.__r_.__value_.__r.__words[0];
                                  }

                                  caulk::make_string(&v221, "Couldn't load plist from path '%s'. CFPropertyListCreateWithStream failed.", v191, v192);
                                  AudioDSPGraph::ThrowException(1886548769, &v221, off_1E8336120);
                                }

                                std::__throw_bad_optional_access[abi:ne200100]();
                              }

                              v253 = v266;
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v136 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v137 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v137 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v137;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v136, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              v139 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &v253);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v140 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v141 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v141 = *v206;
                                  }

                                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                  *(buf.__r_.__value_.__r.__words + 4) = v141;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v140, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                                }
                              }

                              if (v139)
                              {
                                v189 = &v239;
                                if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v189 = v239.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string(&v219, "%s setProperty %u %u %u failed with error %d", v138, v189, v215, v214, v213, v139);
                                AudioDSPGraph::ThrowException(v139, &v219, off_1E8336138);
                              }

                              if (v266)
                              {
                                CFRelease(v266);
                              }

                              if (stream.__r_.__value_.__r.__words[0])
                              {
                                CFRelease(stream.__r_.__value_.__l.__data_);
                              }

                              v142 = v274.__r_.__value_.__r.__words[0];
                              if (v274.__r_.__value_.__r.__words[0])
                              {
                                goto LABEL_317;
                              }
                            }

                            else
                            {
                              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&buf, v33, @"URL");
                              if (buf.__r_.__value_.__s.__data_[8] != 1)
                              {
                                std::string::basic_string[abi:ne200100]<0>(v217, "Must provide either a 'Value', 'Data', 'Path', 'FilePath', 'URL', or a recognized number type for properties");
                                AudioDSPGraph::ThrowException(1886548769, v217, off_1E8336168);
                              }

                              AudioDSPGraph::createAbsoluteURL(&stream, buf.__r_.__value_.__l.__data_, a3);
                              v266 = stream.__r_.__value_.__r.__words[0];
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v143 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v144 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v144 = *v206;
                                  }

                                  LODWORD(v274.__r_.__value_.__l.__data_) = 136315138;
                                  *(v274.__r_.__value_.__r.__words + 4) = v144;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v143, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &v274, 0xCu);
                                }
                              }

                              v146 = (*(*v211 + 312))(v211, v215, v214, v213, 8, &v266);
                              {
                                AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                              }

                              if (v212 <= 0xFFFFFFFFFFFFFFFDLL)
                              {
                                v147 = AudioDSPGraph::getLog(void)::gLog;
                                if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
                                {
                                  v148 = (v211 + 40);
                                  if (v211[63] < 0)
                                  {
                                    v148 = *v206;
                                  }

                                  LODWORD(v274.__r_.__value_.__l.__data_) = 136315138;
                                  *(v274.__r_.__value_.__r.__words + 4) = v148;
                                  _os_signpost_emit_with_name_impl(&dword_1C91AE000, v147, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &v274, 0xCu);
                                }
                              }

                              if (v146)
                              {
                                v193 = &v239;
                                if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v193 = v239.__r_.__value_.__r.__words[0];
                                }

                                caulk::make_string(&v218, "%s setProperty %u %u %u failed with error %d", v145, v193, v215, v214, v213, v146);
                                AudioDSPGraph::ThrowException(v146, &v218, off_1E8336150);
                              }

                              if (stream.__r_.__value_.__r.__words[0])
                              {
                                CFRelease(stream.__r_.__value_.__l.__data_);
                              }

                              if (buf.__r_.__value_.__s.__data_[8] == 1)
                              {
                                v142 = buf.__r_.__value_.__r.__words[0];
                                if (buf.__r_.__value_.__r.__words[0])
                                {
LABEL_317:
                                  CFRelease(v142);
                                }
                              }
                            }

                            if (anURL.__r_.__value_.__s.__data_[8] == 1)
                            {
                              v134 = anURL.__r_.__value_.__r.__words[0];
                              if (anURL.__r_.__value_.__r.__words[0])
                              {
                                goto LABEL_320;
                              }
                            }

                            goto LABEL_321;
                          }

LABEL_167:
                          CFRelease(v60);
                          goto LABEL_168;
                        }

LABEL_166:
                        v85 = 1;
                        if (!v60)
                        {
                          goto LABEL_168;
                        }

                        goto LABEL_167;
                      }
                    }

                    if (*&buf.__r_.__value_.__l.__data_ == __PAIR128__(__p.__r_.__value_.__l.__size_, v64))
                    {
                      goto LABEL_152;
                    }

                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v266, &buf);
                    v66 = v266;
                    if (!v266 || (v67 = CFGetTypeID(v266), v67 != CFStringGetTypeID()))
                    {
                      caulk::make_string(&anURL, "property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", v65, v204, idx);
                      AudioDSPGraph::ThrowException(1886548769, &anURL, off_1E83364B0);
                    }

                    applesauce::CF::convert_as<std::string,0>(&anURL, v66);
                    if (v262 == 1)
                    {
                      v274 = anURL;
                    }

                    else
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v274, &byte_1C9279A7A);
                    }

                    v69 = v267;
                    if (!v267 || (v70 = CFGetTypeID(v267), v70 != CFDictionaryGetTypeID()))
                    {
                      if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v157 = &v274;
                      }

                      else
                      {
                        v157 = v274.__r_.__value_.__r.__words[0];
                      }

                      caulk::make_string(&anURL, "property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", v68, v204, idx, v157);
                      AudioDSPGraph::ThrowException(1886548769, &anURL, off_1E83364C8);
                    }

                    v71 = CFGetTypeID(v69);
                    if (v71 != CFDictionaryGetTypeID())
                    {
                      v158 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v158, "Could not construct");
                    }

                    applesauce::CF::DictionaryRef::from_get(&v265, v69);
                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&anURL, v265);
                    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&theData, v265);
                    v256 = (v258 - v257) >> 3;
                    while (1)
                    {
                      if (anURL.__r_.__value_.__r.__words[0] && anURL.__r_.__value_.__l.__size_ != (v262 - anURL.__r_.__value_.__r.__words[2]) >> 3)
                      {
                        v72 = theData;
                      }

                      else
                      {
                        v72 = theData;
                        if (!theData || v256 == (v258 - v257) >> 3)
                        {
LABEL_136:
                          v83 = 0;
                          v84 = 1;
                          goto LABEL_138;
                        }
                      }

                      if (*&anURL.__r_.__value_.__l.__data_ == __PAIR128__(v256, v72))
                      {
                        goto LABEL_136;
                      }

                      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v253, &anURL);
                      v74 = v253;
                      if (!v253 || (v75 = CFGetTypeID(v253), v75 != CFStringGetTypeID()))
                      {
                        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v155 = &v274;
                        }

                        else
                        {
                          v155 = v274.__r_.__value_.__r.__words[0];
                        }

                        caulk::make_string(&v252, "property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", v73, v204, idx, v155);
                        AudioDSPGraph::ThrowException(1886548769, &v252, off_1E83364E0);
                      }

                      applesauce::CF::convert_to<std::string,0>(&v252, v74);
                      v77 = v254;
                      if (!v254 || (v78 = CFGetTypeID(v254), v78 != CFBooleanGetTypeID()))
                      {
                        v153 = &v274;
                        if ((v274.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v153 = v274.__r_.__value_.__r.__words[0];
                        }

                        v154 = &v252;
                        if ((v252.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v154 = v252.__r_.__value_.__r.__words[0];
                        }

                        caulk::make_string(&stream, "property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s.%s' entry is not valid", v76, v204, idx, v153, v154);
                        AudioDSPGraph::ThrowException(1886548769, &stream, off_1E83364F8);
                      }

                      v79 = CFBooleanGetTypeID();
                      if (v79 == CFGetTypeID(v77))
                      {
                        v80 = CFBooleanGetValue(v77) != 0;
                      }

                      else
                      {
                        v81 = CFNumberGetTypeID();
                        if (v81 != CFGetTypeID(v77) || (v80 = applesauce::CF::details::number_convert_as<BOOL>(v77), v80 <= 0xFFu))
                        {
                          v156 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v156, "Could not convert");
                        }
                      }

                      v82 = _os_feature_enabled_impl();
                      if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v252.__r_.__value_.__l.__data_);
                      }

                      CFRelease(v77);
                      CFRelease(v74);
                      if ((v80 ^ v82))
                      {
                        break;
                      }

                      ++anURL.__r_.__value_.__l.__size_;
                      v33 = v44;
                    }

                    v84 = 0;
                    v83 = 1;
                    v33 = v44;
LABEL_138:
                    if (v259)
                    {
                      v260 = v259;
                      operator delete(v259);
                    }

                    if (v257)
                    {
                      v258 = v257;
                      operator delete(v257);
                    }

                    if (v263)
                    {
                      v264 = v263;
                      operator delete(v263);
                    }

                    if (anURL.__r_.__value_.__r.__words[2])
                    {
                      v262 = anURL.__r_.__value_.__r.__words[2];
                      operator delete(anURL.__r_.__value_.__r.__words[2]);
                    }

                    if (v265)
                    {
                      CFRelease(v265);
                    }

                    if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v274.__r_.__value_.__l.__data_);
                    }

                    CFRelease(v69);
                    CFRelease(v66);
                    if (!v84)
                    {
                      goto LABEL_153;
                    }

                    ++buf.__r_.__value_.__l.__size_;
                  }
                }

                v49 = (&v47->__r_.__value_.__l.__data_ + 1);
              }

              __p.__r_.__value_.__s.__data_[v45++] = v48;
              v47 = v49;
              if (v45 == 4)
              {
                goto LABEL_76;
              }
            }
          }

          CFRelease(v33);
        }
      }

      caulk::make_string(&v232, "property strip 'Boxes[%zu].Properties[%zu]' entry is not valid", v31, v204, idx);
      AudioDSPGraph::ThrowException(1886548769, &v232, off_1E8336048);
    }

    if (v233)
    {
      CFRelease(v233);
    }

    if (v236)
    {
      CFRelease(v236);
    }

    if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v239.__r_.__value_.__l.__data_);
    }

    if (v242)
    {
      CFRelease(v242);
    }

    if (v243)
    {
      CFRelease(v243);
    }

    if (v245)
    {
      CFRelease(v245);
    }

    ++v204;
    v9 = theArray;
    if (!theArray)
    {
      goto LABEL_372;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  CFRelease(v196);
}

void sub_1C9236274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v61 - 153) < 0)
  {
    operator delete(*(v61 - 176));
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&STACK[0x480]);
  applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(&STACK[0x3B8]);
  applesauce::CF::URLRef::~URLRef((v61 - 208));
  std::optional<applesauce::CF::StringRef>::~optional(&STACK[0x438]);
  std::optional<applesauce::CF::StringRef>::~optional(&STACK[0x490]);
  std::optional<applesauce::CF::DataRef>::~optional(&STACK[0x3F8]);
  CFRelease(v59);
  CFRelease(v60);
  if (STACK[0x270])
  {
    CFRelease(STACK[0x270]);
  }

  if (STACK[0x2A8])
  {
    CFRelease(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (STACK[0x330])
  {
    CFRelease(STACK[0x330]);
  }

  if (STACK[0x338])
  {
    CFRelease(STACK[0x338]);
  }

  if (STACK[0x358])
  {
    CFRelease(STACK[0x358]);
  }

  if (STACK[0x360])
  {
    CFRelease(STACK[0x360]);
  }

  if (STACK[0x398])
  {
    CFRelease(STACK[0x398]);
  }

  CFRelease(a17);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::convert_as<std::string,0>(CFTypeID result, const __CFString *a2)
{
  v2 = result;
  if (a2 && (TypeID = CFStringGetTypeID(), result = CFGetTypeID(a2), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(&v5, a2);
    *v2 = v5;
    *(v2 + 16) = v6;
    *(v2 + 24) = 1;
  }

  else
  {
    *v2 = 0;
    *(v2 + 24) = 0;
  }

  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void AudioDSPGraph::createAbsoluteURL(AudioDSPGraph *this, const __CFString *a2, const __CFString *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  v48 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFURLGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!v48)
  {
LABEL_22:
    applesauce::CF::StringRef::from_get(&v36, a2);
    v17 = applesauce::CF::StringRef::operator->(&v36);
    std::string::basic_string[abi:ne200100]<0>(v45, "???");
    applesauce::CF::StringRef_proxy::convert_or(&v46, *v17, v45);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v46;
    }

    else
    {
      v19 = v46.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v47, "Could not create URL from file path '%s'. CFURLCreateWithFileSystemPath failed.", v18, v19);
    AudioDSPGraph::ThrowException(1886548769, &v47, off_1E8336510);
  }

  v9 = CFURLGetBaseURL(v48);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    v46.__r_.__value_.__r.__words[0] = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFURLGetTypeID())
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    CFRelease(v10);
    if (!a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v44, "Property strip resource path required if path is relative");
      AudioDSPGraph::ThrowException(1886548769, v44, off_1E8336528);
    }

    v12 = CFURLCreateWithFileSystemPath(v6, a3, kCFURLPOSIXPathStyle, 1u);
    v43 = v12;
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = CFGetTypeID(v12);
    if (v13 != CFURLGetTypeID())
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
    }

    if (!v43)
    {
LABEL_26:
      applesauce::CF::StringRef::from_get(&v36, a3);
      v20 = applesauce::CF::StringRef::operator->(&v36);
      std::string::basic_string[abi:ne200100]<0>(v41, "???");
      applesauce::CF::StringRef_proxy::convert_or(&v46, *v20, v41);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v46;
      }

      else
      {
        v22 = v46.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v42, "Could not create file URL from path '%s'.", v21, v22);
      AudioDSPGraph::ThrowException(1886548769, &v42, off_1E8336540);
    }

    v14 = MEMORY[0x1CCA84310](0, a2, 0, 0);
    cf = v14;
    if (!v14)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v32, "Could not construct");
    }

    v15 = CFURLCopyAbsoluteURL(v14);
    *this = v15;
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = CFGetTypeID(v15);
    if (v16 != CFURLGetTypeID())
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v33, "Could not construct");
    }

    if (!*this)
    {
LABEL_30:
      applesauce::CF::StringRef::from_get(&v38, a2);
      v23 = applesauce::CF::StringRef::operator->(&v38);
      std::string::basic_string[abi:ne200100]<0>(v37, "???");
      v24 = *v23;
      v25 = &v46;
      applesauce::CF::StringRef_proxy::convert_or(&v46, v24, v37);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v46.__r_.__value_.__r.__words[0];
      }

      applesauce::CF::StringRef::from_get(&v35, a3);
      v26 = applesauce::CF::StringRef::operator->(&v35);
      std::string::basic_string[abi:ne200100]<0>(v34, "???");
      applesauce::CF::StringRef_proxy::convert_or(&v36, *v26, v34);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v36;
      }

      else
      {
        v28 = v36.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v39, "Could not create absolute URL from path '%s' with base '%s'.", v27, v25, v28);
      AudioDSPGraph::ThrowException(1886548769, &v39, off_1E8336558);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v43)
    {
      CFRelease(v43);
    }
  }

  else
  {
    CFRetain(v48);
    *this = v48;
  }

  if (v48)
  {
    CFRelease(v48);
  }
}

void sub_1C9237170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, const void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  applesauce::CF::StringRef::~StringRef(&a18);
  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  applesauce::CF::StringRef::~StringRef(&a31);
  applesauce::CF::URLRef::~URLRef(v50);
  applesauce::CF::URLRef::~URLRef(&a38);
  applesauce::CF::URLRef::~URLRef((v51 - 176));
  applesauce::CF::URLRef::~URLRef((v51 - 72));
  _Unwind_Resume(a1);
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

double applesauce::CF::StringRef_proxy::convert_or(std::string *a1, const __CFString *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    applesauce::CF::details::CFString_get_value<false>(a1, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __p.__r_.__value_.__r.__words[0];

      operator delete(v7);
    }
  }

  else
  {
    result = *&__p.__r_.__value_.__l.__data_;
    *a1 = __p;
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__CFReadStream *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *applesauce::CF::details::CFString_get_value<false>(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v7 = maxBufLen;
  if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = maxBufLen;
  if (v7)
  {
    bzero(a1, v7);
  }

  *(a1 + v7) = 0;
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v11.location = 0;
  v11.length = Length;
  return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
}

const void *applesauce::CF::details::at_key<char const*&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_1C92377D4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C92377C0);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&v16);
  return v10;
}

uint64_t AudioDSPGraph::Boxes::GraphInput::ringBufferSampleRate(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return **(*(v2 + 16) + 120);
}

void sub_1C9237A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::bytesPerPacket(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 16);
}

void sub_1C9237AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::numChannels(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 28);
}

void sub_1C9237B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::GraphInput::interleaved(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E83378B0);
  }

  return (*(*(*(v2 + 16) + 120) + 12) & 0x20) == 0;
}

void sub_1C9237C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphInput::initialize(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  if (*(this + 905) == 1)
  {
    if (*(this + 114))
    {
      v3 = *(this + 114);
    }

    else
    {
      v3 = 4130;
    }

    v4 = (this + 880);
    if (*(this + 903) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 12);
    if (*(this + 13) == v5)
    {
      v10 = (this + 40);
      if (*(this + 63) < 0)
      {
        v10 = *v10;
      }

      caulk::make_string(&v12, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v10, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v12, off_1E8337C78);
    }

    v6 = *(*(this + 2) + 1048);
    v7 = *(*(v5 + 16) + 120);
    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
    {
      dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_3496);
    }

    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
    {
      v8 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v3, 0, v4, v6, 0, v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(this + 109);
    *(this + 109) = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v8 = *(this + 109);
    }

    if (!v8)
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "NewAudioCapturer for DSP graph raw input returned null");
      AudioDSPGraph::ThrowException(1852204065, v11, off_1E8336630);
    }
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
}

void sub_1C9237DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke_3505()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

void AudioDSPGraph::Boxes::GraphInput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "in ", 3);
  if (a3)
  {
    v4 = MEMORY[0x1CCA84740](v4, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
  }

  else
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C9237FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::GraphInput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.28117482e199;
  *a1 = xmmword_1C925F3E0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::GraphInput::stopRecording(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v4 = *(this + 109);
  *(this + 109) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 905) = 0;

  return AudioDSPGraph::Box::stopRecording(this, a2);
}

void AudioDSPGraph::Boxes::GraphInput::record(uint64_t a1, char *a2, unsigned int a3, char a4, char a5, uint64_t a6)
{
  v12 = &v18;
  std::string::basic_string[abi:ne200100]<0>(&v18, a2);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v14 = v12 + size;
    v15 = v12;
    do
    {
      v16 = memchr(v15, 46, size);
      if (!v16)
      {
        break;
      }

      if (*v16 == 46)
      {
        if (v16 != v14 && v16 - v12 != -1)
        {
          v17 = std::string::replace(&v18, v16 - v12, 1uLL, "_raw.", 5uLL);
          std::string::operator=((a1 + 880), v17);
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 1);
  }

  *(a1 + 904) = a5;
  *(a1 + 905) = a4;
  *(a1 + 912) = a6;
  AudioDSPGraph::Box::record(a1, a2, a3, a4, a5, a6);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1C9238198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphInput::~GraphInput(void **this)
{
  if (*(this + 903) < 0)
  {
    operator delete(this[110]);
  }

  v2 = this[109];
  this[109] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  if (*(this + 903) < 0)
  {
    operator delete(this[110]);
  }

  v2 = this[109];
  this[109] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 100));
  AudioDSPGraph::SimpleABL::free((this + 100));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::bytesPerPacket(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337898);
  }

  return *(*(*(v2 + 16) + 120) + 16);
}

void sub_1C9238394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::numChannels(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337898);
  }

  return *(*(*(v2 + 16) + 120) + 28);
}

void sub_1C9238434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::GraphOutput::interleaved(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337898);
  }

  return (*(*(*(v2 + 16) + 120) + 12) & 0x20) == 0;
}

void sub_1C92384DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphOutput::decompileBox(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "out ", 4);
  if (a3)
  {
    v4 = MEMORY[0x1CCA84740](v4, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
    v9 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v9 = *v9;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v9);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
  }

  else
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v6);
    AudioDSPGraph::asDecompileString(&__p, v10);
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
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C9238644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::GraphOutput::desc@<D0>(uint64_t a1@<X8>)
{
  result = 8.1261874e228;
  *a1 = xmmword_1C925F3F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::GraphOutput::~GraphOutput(AudioDSPGraph::Boxes::GraphOutput *this)
{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::IsoGroup::add(AudioDSPGraph::IsoGroup *this, AudioDSPGraph::Box *a2)
{
  v33 = a2;
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(this + 2, a2, &v33);
  *(a2 + 3) = this;
  if (((*(a2 + 13) - *(a2 + 12)) & 0x1FFFFFFFE0) == 0 || (*(*a2 + 272))(a2))
  {
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(this + 7, a2, &v33);
  }

  v4 = (*(*a2 + 232))(a2);
  if (v4)
  {
    v5 = v4;
    v7 = *(this + 23);
    v6 = *(this + 24);
    if (v7 >= v6)
    {
      v14 = *(this + 22);
      v15 = (v7 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v16 = v6 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v18);
      }

      *(8 * v15) = v5;
      v8 = 8 * v15 + 8;
      v24 = *(this + 22);
      v25 = *(this + 23) - v24;
      v26 = (8 * v15 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 22);
      *(this + 22) = v26;
      *(this + 23) = v8;
      *(this + 24) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v7 = v4;
      v8 = (v7 + 1);
    }

    *(this + 23) = v8;
  }

  else
  {
    v9 = (*(*a2 + 240))(a2);
    if (v9)
    {
      v10 = v9;
      v12 = *(this + 26);
      v11 = *(this + 27);
      if (v12 >= v11)
      {
        v19 = *(this + 25);
        v20 = (v12 - v19) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v21 = v11 - v19;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v23);
        }

        v28 = (8 * v20);
        *v28 = v10;
        v13 = 8 * v20 + 8;
        v29 = *(this + 25);
        v30 = *(this + 26) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 25);
        *(this + 25) = v31;
        *(this + 26) = v13;
        *(this + 27) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v12 = v9;
        v13 = (v12 + 1);
      }

      *(this + 26) = v13;
    }
  }
}

void AudioDSPGraph::IsoGroup::topologicalSort(uint64_t a1, void **a2)
{
  if (*(a1 + 249) == 1)
  {
    operator new();
  }

  if ((*(a1 + 248) & 1) == 0)
  {
    *(a1 + 249) = 1;
    for (i = *(a1 + 112); i; i = *i)
    {
      AudioDSPGraph::IsoGroup::topologicalSort(*(i[2] + 840), a2);
    }

    v5 = *(a1 + 224);
    *(a1 + 249) = 0;
    *(a1 + 232) = v5;
    for (j = *(a1 + 72); j; j = *j)
    {
      (*(*j[2] + 384))(j[2], a1, a1 + 224, a2);
    }

    v8 = a2[1];
    v7 = a2[2];
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = a1;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      a2[1] = v9;
      a2[2] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a1;
      v9 = (v8 + 8);
    }

    a2[1] = v9;
    *(a1 + 248) = 1;
  }
}

void sub_1C9238BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::interpretText(void *a1, const char *a2, AudioDSPGraph::Language::V1::Interpreters *this, uint64_t a4, uint64_t *a5)
{
  v123 = *MEMORY[0x1E69E9840];
  AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(this, a2);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  *__p = 0u;
  v116 = 0u;
  if (&v118 != a5)
  {
    v8 = *a5;
    v9 = a5[1];
    if (v9 != v8)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    *(&v118 + 1) = 0;
  }

  for (i = *(a4 + 16); i; i = *i)
  {
    AudioDSPGraph::Language::V1::Preprocessor::def(__p, i + 2, (i + 5));
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, this);
  AudioDSPGraph::Language::V1::Preprocessor::preprocess(&v103, __p, &__str, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = &v118;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](__p);
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v103;
  }

  else
  {
    v13 = v103.__r_.__value_.__r.__words[0];
  }

  AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(v13, v12);
  v14 = 0;
  while (v13->__r_.__value_.__s.__data_[0])
  {
    ++v14;
    memset(&v108, 0, sizeof(v108));
    while (1)
    {
      v15 = v13->__r_.__value_.__s.__data_[0];
      if (!v13->__r_.__value_.__s.__data_[0])
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == 10)
      {
        break;
      }

      std::string::push_back(&v108, v15);
    }

    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v108;
    }

    else
    {
      v16 = v108.__r_.__value_.__r.__words[0];
    }

    v107 = v16;
    AudioDSPGraph::Language::V1::Interpreters::skipspace(&v107, v15);
    if (!*v107 || *v107 == 59)
    {
      goto LABEL_292;
    }

    v105 = 0uLL;
    v106 = 0;
    if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(&v107, &v105))
    {
      AudioDSPGraph::Language::V1::Interpreters::skipspace(&v107, v17);
      v19 = v107;
      memset(&v104, 0, sizeof(v104));
      while (1)
      {
        v20 = *v19;
        if (v20 <= 0x3B && ((1 << v20) & 0x800000000000401) != 0)
        {
          break;
        }

        std::string::push_back(&v104, v20);
        ++v19;
      }

      v22 = &v104;
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v104.__r_.__value_.__r.__words[0];
      }

      v107 = v22;
      if ((v106 & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v106) > 5u)
        {
          if (HIBYTE(v106) > 8u)
          {
            if (HIBYTE(v106) != 9)
            {
              goto LABEL_38;
            }

            if (v105 != 0x6574656D61726170 || BYTE8(v105) != 114)
            {
LABEL_127:
              if (v105 != 0x6172615065726977 || BYTE8(v105) != 109)
              {
                goto LABEL_235;
              }

LABEL_132:
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(&__str, &v107);
              if ((v122 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v113, "expected source endpoint in 'wireParam' command");
                AudioDSPGraph::ThrowException(1886548769, &v113, off_1E83369E0);
              }

              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(__p, &v107);
              if ((BYTE8(v117) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v113, "expected destination endpoint in 'wireParam' command");
                AudioDSPGraph::ThrowException(1886548769, &v113, off_1E83369F8);
              }

              v114.__r_.__value_.__s.__data_[0] = 0;
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(&v107, &v114.__r_.__value_.__l.__data_, v38);
              (*(*a2 + 136))(a2, &__str, __p, v114.__r_.__value_.__s.__data_[0]);
              if (BYTE8(v117) == 1 && SBYTE7(v116) < 0)
              {
                operator delete(__p[0]);
              }

              if (v122 != 1)
              {
LABEL_288:
                if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v104.__r_.__value_.__l.__data_);
                }

                goto LABEL_290;
              }

LABEL_190:
              if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_288;
              }

              v47 = __str.__r_.__value_.__r.__words[0];
LABEL_287:
              operator delete(v47);
              goto LABEL_288;
            }

LABEL_139:
            LODWORD(v113.__r_.__value_.__l.__data_) = 0;
            if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v107, &v113.__r_.__value_.__l.__data_, 1) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "expected parameter ID in 'param' command");
              AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368C0);
            }

            AudioDSPGraph::Language::V1::Interpreters::skipspace(&v107, v39);
            __str.__r_.__value_.__r.__words[0] = 0;
            v40 = v107;
            v42 = strtof(v107, &__str.__r_.__value_.__l.__data_);
            v43 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__l.__data_ == v40)
            {
LABEL_143:
              v45 = 0;
            }

            else
            {
              v44 = v42;
              if (fabsf(v42) == INFINITY)
              {
                if (*__error())
                {
                  goto LABEL_143;
                }

                v43 = __str.__r_.__value_.__r.__words[0];
              }

              v107 = v43;
              v45 = LODWORD(v44) | 0x100000000;
            }

            v63 = AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "out", v41);
            if (!v63)
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "in", v62);
            }

            (*(*a2 + 120))(a2, LODWORD(v113.__r_.__value_.__l.__data_), v45, v63);
            goto LABEL_288;
          }

          if (HIBYTE(v106) != 6)
          {
LABEL_87:
            if (HIBYTE(v106) == 8 && v105 == 0x79747265706F7270)
            {
LABEL_160:
              LODWORD(v114.__r_.__value_.__l.__data_) = 0;
              LOBYTE(__p[0]) = 0;
              BYTE8(v116) = 0;
              if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(&v107, &v114.__r_.__value_.__l.__data_, 1) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected property ID in 'property' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368D8);
              }

              if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "out", v48))
              {
                goto LABEL_162;
              }

              if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "in", v49) || (AudioDSPGraph::Language::V1::Interpreters::skipspace(&v107, v51), !*v107))
              {
LABEL_192:
                v50 = 0;
              }

              else
              {
                AudioDSPGraph::Language::V1::Interpreters::skipspace(&v107, v52);
                v53 = v107;
                memset(&v113, 0, sizeof(v113));
                v54 = *v107;
                if (*v107)
                {
                  do
                  {
                    v55 = v54;
                    if (v54 < 0)
                    {
                      v56 = __maskrune(v54, 0x4000uLL);
                    }

                    else
                    {
                      v56 = *(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x4000;
                    }

                    if (v56)
                    {
                      break;
                    }

                    std::string::push_back(&v113, v55);
                    v57 = *++v53;
                    v54 = v57;
                  }

                  while (v57);
                  v58 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
                  size = v113.__r_.__value_.__l.__size_;
                  v60 = v113.__r_.__value_.__r.__words[0];
                }

                else
                {
                  size = 0;
                  v60 = 0;
                  v58 = 0;
                }

                v107 = v53;
                if ((v58 & 0x80u) == 0)
                {
                  v88 = &v113;
                }

                else
                {
                  v88 = v60;
                }

                if ((v58 & 0x80u) != 0)
                {
                  v58 = size;
                }

                if (v58 < 2)
                {
                  goto LABEL_341;
                }

                if (LOWORD(v88->__r_.__value_.__l.__data_) != 30768 || (v58 & 1) != 0)
                {
                  goto LABEL_341;
                }

                v90 = v58 - 2;
                if (v58 != 2)
                {
                  for (j = &v88->__r_.__value_.__s.__data_[2]; ; ++j)
                  {
                    v92 = *j;
                    if (v92 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v92 + 60) & 0x10000) == 0)
                    {
                      break;
                    }

                    if (!--v90)
                    {
                      operator new();
                    }
                  }

LABEL_341:
                  std::string::basic_string[abi:ne200100]<0>(&v112, "bad property value hexadecimal formatting");
                  AudioDSPGraph::ThrowException(1886548769, &v112, off_1E8336710);
                }

                if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v113.__r_.__value_.__l.__data_);
                }

                if (BYTE8(v116) == 1)
                {
                  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, 0, 0, 0);
                }

                else
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v116 = 0;
                  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, 0, 0, 0);
                  BYTE8(v116) = 1;
                }

                if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "out", v93))
                {
                  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::match(&v107, "in", v94);
                  goto LABEL_192;
                }

LABEL_162:
                v50 = 1;
              }

              __str.__r_.__value_.__s.__data_[0] = 0;
              v121 = 0;
              v61 = BYTE8(v116);
              if (BYTE8(v116) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v116;
                __p[1] = 0;
                *&v116 = 0;
                __p[0] = 0;
                v121 = 1;
              }

              (*(*a2 + 144))(a2, LODWORD(v114.__r_.__value_.__l.__data_), &__str, v50);
              if (v121 == 1 && __str.__r_.__value_.__r.__words[0])
              {
                __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (!v61)
              {
                goto LABEL_288;
              }

              v47 = __p[0];
              if (!__p[0])
              {
                goto LABEL_288;
              }

              goto LABEL_287;
            }

LABEL_235:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "wireGraphParam") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "wireGraphParameter"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphParamCommand(a2, &v107, v73, v74);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "wireGraphProperty"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphPropertyCommand(a2, &v107, v75, v76);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "order"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseOrderCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "set"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseSetCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "beginSubset"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBeginSubsetCommand(a1, a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "endSubset"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseEndSubsetCommand(a1);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "graphName"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseGraphNameCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "componentName"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseComponentNameCommand(&v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "format"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseNamedFormatCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "jack"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseJackCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "record"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseRecordCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "inject"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseInjectCommand(a2, &v107);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "analysis"))
            {
              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisCommand(a2, &v107, v95, v96);
            }

            else
            {
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v105, "analysisDefine"))
              {
                v100 = &v105;
                if (v106 < 0)
                {
                  v100 = v105;
                }

                caulk::make_string(&__str, "unknown command name '%s'\n", v97, v100);
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336D28);
              }

              AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseAnalysisDefineCommand(a2, &v107, v98, v99);
            }

            goto LABEL_288;
          }

          if (v105 != 1886680431 || WORD2(v105) != 29813)
          {
            goto LABEL_235;
          }

LABEL_149:
          AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v107, &v113.__r_.__value_.__l.__data_, v18);
          __p[0] = 0;
          __p[1] = 0;
          *&v116 = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v107, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "expected name in 'output' command");
            AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368A8);
          }

          if (SBYTE7(v116) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p[0], __p[1]);
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *__p;
            __str.__r_.__value_.__r.__words[2] = v116;
          }

          (*(*a2 + 112))(a2, &__str);
LABEL_156:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if ((SBYTE7(v116) & 0x80000000) == 0)
          {
            goto LABEL_288;
          }

          v47 = __p[0];
          goto LABEL_287;
        }

        if (HIBYTE(v106) <= 3u)
        {
          if (HIBYTE(v106) != 2)
          {
            if (HIBYTE(v106) != 3)
            {
              goto LABEL_235;
            }

            if (v105 == 30063 && BYTE2(v105) == 116)
            {
              goto LABEL_149;
            }

LABEL_62:
            if (v105 != 28514 || BYTE2(v105) != 120)
            {
              goto LABEL_235;
            }

LABEL_245:
            v109.__r_.__value_.__r.__words[0] = 0;
            AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v107, &v109.__r_.__value_.__l.__data_, v18);
            memset(&v114, 0, sizeof(v114));
            if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v107, &v114) & 1) == 0)
            {
              caulk::make_string(&__str, "expected name in 'box' command: %s", v77, v107);
              AudioDSPGraph::ThrowException(1886548769, &__str, off_1E83368F0);
            }

            LOBYTE(__p[0]) = 0;
            BYTE8(v116) = 0;
            v78 = a1[6];
            if (v78)
            {
              v79 = *(a1[2] + 8 * ((v78 + a1[5] - 1) / 0xAAuLL)) - 4080 * ((v78 + a1[5] - 1) / 0xAAuLL) + 24 * (v78 + a1[5] - 1);
              if (*(v79 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(__p, *v79, *(v79 + 8));
              }

              else
              {
                *__p = *v79;
                *&v116 = *(v79 + 16);
              }

              BYTE8(v116) = 1;
            }

            memset(&v113, 0, sizeof(v113));
            if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v107, &v113))
            {
              __str.__r_.__value_.__r.__words[0] = v107;
              v112.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v112.__r_.__value_.__l.__data_, v80) || (v82 = v112.__r_.__value_.__r.__words[0], HIDWORD(v112.__r_.__value_.__r.__words[0])))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of inputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336908);
              }

              v112.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v112.__r_.__value_.__l.__data_, v81) || HIDWORD(v112.__r_.__value_.__r.__words[0]))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of outputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336920);
              }

              v107 = __str.__r_.__value_.__r.__words[0];
              v112 = v114;
              memset(&v114, 0, sizeof(v114));
              v111 = v113;
              memset(&v113, 0, sizeof(v113));
              __str.__r_.__value_.__s.__data_[0] = 0;
              v121 = 0;
              if (BYTE8(v116) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v116;
                __p[1] = 0;
                *&v116 = 0;
                __p[0] = 0;
                v121 = 1;
              }

              (*(*a2 + 56))(a2, &v112, &v111, v82);
              if (v121 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                v83 = v111.__r_.__value_.__r.__words[0];
                goto LABEL_277;
              }
            }

            else
            {
              memset(&v111, 0, 20);
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseCompDesc(&v107, &v111.__r_.__value_.__l.__data_, v80))
              {
                caulk::make_string(&__str, "expected class name or component description in 'box' command: %s", v84, v107);
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336968);
              }

              __str.__r_.__value_.__r.__words[0] = v107;
              v112.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v112.__r_.__value_.__l.__data_, v85) || (v87 = v112.__r_.__value_.__r.__words[0], HIDWORD(v112.__r_.__value_.__r.__words[0])))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of inputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336938);
              }

              v112.__r_.__value_.__r.__words[0] = 0;
              if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&__str, &v112.__r_.__value_.__l.__data_, v86) || HIDWORD(v112.__r_.__value_.__r.__words[0]))
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "expected number of outputs in 'box' command");
                AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336950);
              }

              v107 = __str.__r_.__value_.__r.__words[0];
              v112 = v114;
              memset(&v114, 0, sizeof(v114));
              __str.__r_.__value_.__s.__data_[0] = 0;
              v121 = 0;
              if (BYTE8(v116) == 1)
              {
                *&__str.__r_.__value_.__l.__data_ = *__p;
                __str.__r_.__value_.__r.__words[2] = v116;
                __p[1] = 0;
                *&v116 = 0;
                __p[0] = 0;
                v121 = 1;
              }

              (*(*a2 + 64))(a2, &v112, &v111, v87);
              if (v121 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                v83 = __str.__r_.__value_.__r.__words[0];
LABEL_277:
                operator delete(v83);
              }
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            if (BYTE8(v116) == 1 && SBYTE7(v116) < 0)
            {
              operator delete(__p[0]);
            }

            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_288;
            }

            v47 = v114.__r_.__value_.__r.__words[0];
            goto LABEL_287;
          }

          v31 = v105;
LABEL_119:
          if (v31 != 28265)
          {
            goto LABEL_235;
          }

LABEL_120:
          AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt64(&v107, &v113.__r_.__value_.__l.__data_, v18);
          __p[0] = 0;
          __p[1] = 0;
          *&v116 = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v107, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "expected name in 'input' command");
            AudioDSPGraph::ThrowException(1886548769, &__str, off_1E8336890);
          }

          if (SBYTE7(v116) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p[0], __p[1]);
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *__p;
            __str.__r_.__value_.__r.__words[2] = v116;
          }

          (*(*a2 + 104))(a2, &__str);
          goto LABEL_156;
        }

        if (HIBYTE(v106) != 4)
        {
          if (v105 == 1970302569 && BYTE4(v105) == 116)
          {
            goto LABEL_120;
          }

          if (v105 == 1634886000 && BYTE4(v105) == 109)
          {
            goto LABEL_139;
          }

LABEL_115:
          if (HIBYTE(v106) > 8u)
          {
LABEL_116:
            if (HIBYTE(v106) == 9)
            {
              goto LABEL_127;
            }

LABEL_38:
            if (HIBYTE(v106) != 12)
            {
              if (HIBYTE(v106) == 13 && v105 == 0x6172615065726977 && *(&v105 + 5) == 0x726574656D617261)
              {
                goto LABEL_132;
              }

              goto LABEL_235;
            }

            goto LABEL_230;
          }

          if (HIBYTE(v106) == 3)
          {
            goto LABEL_62;
          }

          if (HIBYTE(v106) != 4)
          {
            goto LABEL_235;
          }
        }

LABEL_165:
        if (v105 != 1701996919)
        {
          goto LABEL_235;
        }

LABEL_166:
        memset(&__str, 0, sizeof(__str));
        HIDWORD(v110) = 0;
        if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(&v107, &__str.__r_.__value_.__l.__data_, (&v110 + 4)) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v113, "source port description parse failed");
          AudioDSPGraph::ThrowException(1886548769, &v113, off_1E8336998);
        }

        memset(&v114, 0, sizeof(v114));
        LODWORD(v110) = 0;
        if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePortDesc(&v107, &v114.__r_.__value_.__l.__data_, &v110) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v113, "destination port description parse failed.");
          AudioDSPGraph::ThrowException(1886548769, &v113, off_1E83369B0);
        }

        *&v117 = 0;
        *__p = 0u;
        v116 = 0u;
        DWORD2(v117) = 1;
        if (AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseFormat(&v107, __p))
        {
          v113 = __str;
          memset(&__str, 0, sizeof(__str));
          v112 = v114;
          memset(&v114, 0, sizeof(v114));
          (*(*a2 + 80))(a2, &v113, HIDWORD(v110), &v112, v110, __p, DWORD2(v117));
        }

        else
        {
          memset(&v113, 0, sizeof(v113));
          if (!AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(&v107, &v113))
          {
            std::string::basic_string[abi:ne200100]<0>(&v112, "expected format in 'wire' command");
            AudioDSPGraph::ThrowException(1886548769, &v112, off_1E83369C8);
          }

          v112 = __str;
          memset(&__str, 0, sizeof(__str));
          v111 = v114;
          memset(&v114, 0, sizeof(v114));
          v109 = v113;
          memset(&v113, 0, sizeof(v113));
          (*(*a2 + 72))(a2, &v112, HIDWORD(v110), &v111, v110, &v109);
          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        goto LABEL_190;
      }

      v24 = *(&v105 + 1);
      if (*(&v105 + 1) > 4)
      {
        if (*(&v105 + 1) != 5)
        {
          if (*(&v105 + 1) == 6)
          {
            if (*v105 != 1886680431 || *(v105 + 4) != 29813)
            {
              goto LABEL_235;
            }

            goto LABEL_149;
          }

          goto LABEL_90;
        }

        if (*v105 == 1970302569 && *(v105 + 4) == 116)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (*(&v105 + 1) == 2)
        {
          v31 = *v105;
          goto LABEL_119;
        }

        if (*(&v105 + 1) == 3)
        {
          if (*v105 == 30063 && *(v105 + 2) == 116)
          {
            goto LABEL_149;
          }

          if ((v106 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v24 = *(&v105 + 1);
        }

LABEL_90:
        if (v24 != 5)
        {
LABEL_102:
          if (v24 == 9)
          {
            if (*v105 == 0x6574656D61726170 && *(v105 + 8) == 114)
            {
              goto LABEL_139;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v106) > 8u)
              {
                goto LABEL_116;
              }

              if (HIBYTE(v106) == 3)
              {
                goto LABEL_62;
              }

              if (HIBYTE(v106) != 4)
              {
                goto LABEL_87;
              }

              goto LABEL_165;
            }
          }

          v35 = *(&v105 + 1);
          if (*(&v105 + 1) == 8)
          {
            if (*v105 == 0x79747265706F7270)
            {
              goto LABEL_160;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              goto LABEL_115;
            }

            v35 = *(&v105 + 1);
          }

          if (v35 == 3)
          {
            if (*v105 == 28514 && *(v105 + 2) == 120)
            {
              goto LABEL_245;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }
          }

          v65 = *(&v105 + 1);
          if (*(&v105 + 1) == 4)
          {
            if (*v105 == 1701996919)
            {
              goto LABEL_166;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }

            v65 = *(&v105 + 1);
          }

          if (v65 == 9)
          {
            if (*v105 == 0x6172615065726977 && *(v105 + 8) == 109)
            {
              goto LABEL_132;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              goto LABEL_235;
            }
          }

          v67 = *(&v105 + 1);
          if (*(&v105 + 1) == 13)
          {
            if (*v105 == 0x6172615065726977 && *(v105 + 5) == 0x726574656D617261)
            {
              goto LABEL_132;
            }

            if ((v106 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v106) != 12)
              {
                goto LABEL_235;
              }

LABEL_230:
              v69 = &v105;
LABEL_231:
              v70 = *v69;
              v71 = *(v69 + 2);
              if (v70 == 0x706F725065726977 && v71 == 2037674597)
              {
                AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWirePropertyCommand(a2, &v107);
                goto LABEL_288;
              }

              goto LABEL_235;
            }

            v67 = *(&v105 + 1);
          }

          if (v67 != 12)
          {
            goto LABEL_235;
          }

          v69 = v105;
          goto LABEL_231;
        }
      }

      if (*v105 == 1634886000 && *(v105 + 4) == 109)
      {
        goto LABEL_139;
      }

      v24 = *(&v105 + 1);
      goto LABEL_102;
    }

LABEL_290:
    if (SHIBYTE(v106) < 0)
    {
      operator delete(v105);
    }

LABEL_292:
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }
}

void sub_1C923A408(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t __dst, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *buf, __int128 a56, void (*a57)(uint64_t a1, uint64_t a2), uint64_t a58, uint64_t a59)
{
  if (a2)
  {
    if (*(v60 - 153) < 0)
    {
      operator delete(*(v60 - 176));
    }

    if (a24 < 0)
    {
      operator delete(__p);
    }

    v63 = a2;
    if (SHIBYTE(a27) < 0)
    {
      operator delete(a25);
    }

    if (a34 < 0)
    {
      operator delete(a29);
    }

    v64 = __cxa_begin_catch(a1);
    Log = AudioDSPGraph::getLog(v64);
    v66 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v63 == 2)
    {
      if (v66)
      {
        v67 = v64 + 2;
        if (*(v64 + 39) < 0)
        {
          v67 = *v67;
        }

        v68 = *(v64 + 2);
        LODWORD(buf) = 67109634;
        HIDWORD(buf) = v59;
        LOWORD(a56) = 2080;
        *(&a56 + 2) = v67;
        WORD5(a56) = 1024;
        HIDWORD(a56) = v68;
        _os_log_error_impl(&dword_1C91AE000, Log, OS_LOG_TYPE_ERROR, "parsing exception at line %u (%s) (%d)", &buf, 0x18u);
      }

      __cxa_rethrow();
    }

    if (v66)
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v59;
      _os_log_error_impl(&dword_1C91AE000, Log, OS_LOG_TYPE_ERROR, "parsing exception at line %u", &buf, 8u);
    }

    a52 = 0;
    a53 = 6;
    a51 = v59;
    buf = &a59;
    a56 = xmmword_1C925F110;
    a57 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    a58 = 0;
    STACK[0x268] = &a59;
    a25 = 1;
    a26 = &a51;
    a27 = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&buf, "parsing exception at line {}", 28, &a25);
    std::string::basic_string<std::string_view,0>(&__dst, STACK[0x268], *(&a56 + 1));
    if (STACK[0x268] != &a59)
    {
      operator delete(STACK[0x268]);
    }

    AudioDSPGraph::ThrowException(1886548769, &__dst, off_1E83366F8);
  }

  _Unwind_Resume(a1);
}

void sub_1C923AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1C923ACA4);
}

void sub_1C923AC9C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C923ACA4);
  }

  __clang_call_terminate(a1);
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::checkUTF8Encoding(uint64_t this, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *this;
  if (*this)
  {
    v3 = 0;
    v4 = this + 1;
    v5 = MEMORY[0x1E69E9830];
    while ((v2 & 0x80) == 0)
    {
      v6 = *(v5 + 4 * v2 + 60);
      if ((v6 & 0x800) == 0)
      {
        this = v6 & 0x4000;
LABEL_8:
        if (v2 == 127 || !this)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (v2 == 127)
      {
        LOBYTE(v2) = 127;
LABEL_15:
        v9[0] = v2;
        v9[1] = 0;
        v9[3] = 0;
        v9[4] = 198;
        v9[2] = v3;
        v10 = v14;
        *__len = xmmword_1C925F110;
        v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v13 = 0;
        __p = v14;
        v8[0] = 2;
        v8[1] = v9;
        v8[2] = 198;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "failed to parse unsupported UTF-8 character {} at offset {}", 59, v8);
        std::string::basic_string<std::string_view,0>(v7, __p, __len[1]);
        if (__p != v14)
        {
          operator delete(__p);
        }

        AudioDSPGraph::ThrowException(1886548769, v7, off_1E8336D40);
      }

LABEL_12:
      v2 = *(v4 + v3++);
      if (!v2)
      {
        return this;
      }
    }

    this = __maskrune(v2, 0x800uLL);
    if (this)
    {
      goto LABEL_12;
    }

    this = __maskrune(v2, 0x4000uLL);
    goto LABEL_8;
  }

  return this;
}

void sub_1C923AE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::def(void *a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (a1[2] == v3)
  {
    goto LABEL_21;
  }

  v4 = a1[4];
  v5 = (v3 + 8 * (v4 >> 9));
  v6 = *v5;
  v7 = *v5 + 8 * (v4 & 0x1FF);
  v8 = *(v3 + (((a1[5] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v4) & 0x1FF);
  if (v7 != v8)
  {
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    if (v9 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    while (1)
    {
      v12 = *v7;
      v13 = *(*v7 + 31);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(*v7 + 16);
      }

      if (v13 == v10)
      {
        v17 = *(v12 + 8);
        v15 = v12 + 8;
        v16 = v17;
        v18 = (v14 >= 0 ? v15 : v16);
        if (!memcmp(v18, v11, v10))
        {
          break;
        }
      }

      v7 += 8;
      if (v7 - v6 == 4096)
      {
        v19 = v5[1];
        ++v5;
        v6 = v19;
        v7 = v19;
      }

      if (v7 == v8)
      {
        goto LABEL_21;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_21:
    operator new();
  }

  return *v7;
}

void AudioDSPGraph::Language::V1::Preprocessor::~Preprocessor(AudioDSPGraph::Language::V1::Preprocessor *this)
{
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](this);
}

uint64_t std::deque<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::skipspace(AudioDSPGraph::Language::V1::Interpreters *this, const char **a2)
{
  v3 = *this;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v3;
    if ((v5 & 0x80000000) != 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
    }

    v7 = v5 == 10 || result == 0;
    v8 = !v7;
    if (v7)
    {
      if (v5 != 59)
      {
        return result;
      }

      v3 = *this;
      do
      {
        v9 = *v3;
        if (!*v3)
        {
          break;
        }

        *this = ++v3;
      }

      while (v9 != 10);
    }

    else
    {
      v3 = (*this + 1);
      *this = v3;
    }
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseName(AudioDSPGraph::Language::V1::Interpreters *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::Interpreters::skipspace(a1, a2);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = *a1;
  v5 = **a1;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(v5, 0x100uLL);
    v4 = *a1;
    LOBYTE(v5) = **a1;
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 95;
  }

  v8 = v7;
  if (v7)
  {
    std::string::push_back(a2, v5);
    v11 = v4[1];
    v10 = v4 + 1;
    v9 = v11;
    if (!v11)
    {
LABEL_23:
      *a1 = v10;
      return v8;
    }

    v12 = MEMORY[0x1E69E9830];
    while (1)
    {
      v13 = v9;
      if (v9 < 0)
      {
        if (!__maskrune(v9, 0x500uLL))
        {
LABEL_21:
          if (!memchr("_-+=|./:!@#$%^&*<>?~", v13, 0x15uLL))
          {
            goto LABEL_23;
          }
        }
      }

      else if ((*(v12 + 4 * v9 + 60) & 0x500) == 0)
      {
        goto LABEL_21;
      }

      std::string::push_back(a2, v13);
      v14 = *++v10;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  return v8;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWirePropertyCommand(uint64_t a1, const char **a2)
{
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(v10, a2);
  if ((v12 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "expected source endpoint in 'wireProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v9, off_1E8336A10);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(__p, a2);
  if ((v8 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>((v5 + 1), "expected destination endpoint in 'wireProperty' command");
    AudioDSPGraph::ThrowException(1886548769, (v5 + 1), off_1E8336A28);
  }

  LOBYTE(v5[0]) = 0;
  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, v5, v4);
  (*(*a1 + 160))(a1, v10, __p, LOBYTE(v5[0]));
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1C923B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((*(v34 - 24) & 1) != 0 && *(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphParamCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, uint64_t a3, BOOL a4)
{
  LODWORD(v11) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v11, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "expected parameter ID in 'wireGraphParam' command");
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336A40);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseParamEndpoint(__p, this);
  if ((v9 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "expected endpoint in 'wireGraphParam' command");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336A58);
  }

  (*(*a1 + 128))(a1, v11, __p);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C923B728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseWireGraphPropertyCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *this, uint64_t a3, BOOL a4)
{
  LODWORD(v11) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parse4cc(this, &v11, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "expected parameter ID in 'wireGraphProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v10, off_1E8336A70);
  }

  AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parsePropertyEndpoint(__p, this);
  if ((v9 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "expected endpoint in 'wireGraphProperty' command");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336A88);
  }

  (*(*a1 + 152))(a1, v11, __p);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C923B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseOrderCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters *a2)
{
  memset(&v9, 0, sizeof(v9));
  memset(&v8, 0, sizeof(v8));
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "expected 'before' argument in 'order' command");
    AudioDSPGraph::ThrowException(1886548769, v7, off_1E8336AA0);
  }

  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v8) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "expected 'after' argument in 'order' command");
    AudioDSPGraph::ThrowException(1886548769, v6, off_1E8336AB8);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = v9;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  (*(*a1 + 168))(a1, &v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1C923BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (*(v34 - 17) < 0)
  {
    operator delete(*(v34 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseSetCommand(uint64_t a1, AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter *a2)
{
  v29 = 0uLL;
  v30 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a2, &v29) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "expected name argument in 'set' command");
    AudioDSPGraph::ThrowException(1886548769, v28, off_1E8336AD0);
  }

  if (SHIBYTE(v30) < 0)
  {
    if (*(&v29 + 1) <= 17)
    {
      if (*(&v29 + 1) != 13)
      {
        if (*(&v29 + 1) == 14 && *v29 == 0x416D726F66726570 && *(v29 + 6) == 0x6E7552797244416DLL)
        {
LABEL_19:
          BYTE4(v25[0]) = 0;
          if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBool(a2, (v25 + 4), v4) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>((v27 + 4), "expected integer in 'set performADryRun' command");
            AudioDSPGraph::ThrowException(1886548769, (v27 + 4), off_1E8336AE8);
          }

          (*(*a1 + 32))(a1, BYTE4(v25[0]));
          goto LABEL_54;
        }

LABEL_42:
        std::operator+<char>();
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v21, (v25 + 4), "' command");
        AudioDSPGraph::ThrowException(1886548769, &v21, off_1E8336B60);
      }

      if (*v29 != 0x7275446563696C73 || *(v29 + 5) != 0x6E6F697461727544)
      {
        goto LABEL_42;
      }

      goto LABEL_51;
    }

    if (*(&v29 + 1) != 18)
    {
      if (*(&v29 + 1) != 21)
      {
        goto LABEL_42;
      }

      v7 = v29;
      goto LABEL_27;
    }

    if (*v29 != 0x696C536465786966 || *(v29 + 8) != 0x6974617275446563 || *(v29 + 16) != 28271)
    {
      goto LABEL_42;
    }

LABEL_51:
    LODWORD(v27[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v27, v4) & 1) == 0)
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v26, (v25 + 4), "' command");
      AudioDSPGraph::ThrowException(1886548769, &v26, off_1E8336B00);
    }

    LODWORD(v25[0]) = 0;
    if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v25, v17) & 1) == 0)
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, (v25 + 4), "' command");
      AudioDSPGraph::ThrowException(1886548769, &v24, off_1E8336B18);
    }

    (*(*a1 + 40))(a1, LODWORD(v27[0]), LODWORD(v25[0]));
    goto LABEL_54;
  }

  if (HIBYTE(v30) <= 0x11u)
  {
    if (HIBYTE(v30) != 13)
    {
      if (HIBYTE(v30) != 14)
      {
        goto LABEL_42;
      }

      if (v29 != 0x416D726F66726570 || *(&v29 + 6) != 0x6E7552797244416DLL)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

    if (v29 != 0x7275446563696C73 || *(&v29 + 5) != 0x6E6F697461727544)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (HIBYTE(v30) == 18)
  {
    if (v29 != 0x696C536465786966 || *(&v29 + 1) != 0x6974617275446563 || v30 != 28271)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (HIBYTE(v30) != 21)
  {
    goto LABEL_42;
  }

  v7 = &v29;
LABEL_27:
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 13);
  if (v8 != 0x656C626169726176 || v9 != 0x7275446563696C53 || v10 != 0x6E6F697461727544)
  {
    goto LABEL_42;
  }

  LODWORD(v27[0]) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v27, v4) & 1) == 0)
  {
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, (v25 + 4), "' command");
    AudioDSPGraph::ThrowException(1886548769, &v23, off_1E8336B30);
  }

  LODWORD(v25[0]) = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseUInt32(a2, v25, v13) & 1) == 0)
  {
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, (v25 + 4), "' command");
    AudioDSPGraph::ThrowException(1886548769, &v22, off_1E8336B48);
  }

  (*(*a1 + 48))(a1, LODWORD(v27[0]), LODWORD(v25[0]));
LABEL_54:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1C923BFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v46 - 33) < 0)
  {
    operator delete(*(v46 - 56));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseBeginSubsetCommand(void *a1, uint64_t a2, AudioDSPGraph::Language::V1::Interpreters *a3)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  if ((AudioDSPGraph::Language::V1::Interpreters::LegacyInterpreter::parseString(a3, v20) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "expected name argument in 'beginSubset' command");
    AudioDSPGraph::ThrowException(1886548769, v19, off_1E8336B78);
  }

  v5 = a1[2];
  v6 = a1[3];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 170 * ((v6 - v5) >> 3) - 1;
  }

  v8 = a1[5];
  if (v7 == a1[6] + v8)
  {
    v9 = v8 >= 0xAA;
    v10 = v8 - 170;
    if (!v9)
    {
      v11 = a1[4];
      v12 = a1[1];
      if (v6 - v5 < (v11 - v12))
      {
        if (v11 != v6)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v11 - v12) >> 2;
      }

      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v13);
    }

    a1[5] = v10;
    v22 = *v5;
    a1[2] = v5 + 8;
    std::__split_buffer<std::string *>::emplace_back<std::string *&>(a1 + 1, &v22);
    v5 = a1[2];
    v6 = a1[3];
  }

  if (v6 == v5)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[6] + a1[5];
    v15 = (*&v5[8 * (v14 / 0xAA)] - 4080 * (v14 / 0xAA) + 24 * v14);
  }

  if (SHIBYTE(v21) < 0)
  {
    std::string::__init_copy_ctor_external(v15, v20[0], v20[1]);
  }

  else
  {
    v16 = *v20;
    v15->__r_.__value_.__r.__words[2] = v21;
    *&v15->__r_.__value_.__l.__data_ = v16;
  }

  ++a1[6];
  *__p = *v20;
  v18 = v21;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  (*(*a2 + 96))(a2, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}