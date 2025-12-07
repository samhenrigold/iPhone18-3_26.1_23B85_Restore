void DSPGraph::BufferColorist::consumeInputs(DSPGraph::BufferColorist *this, DSPGraph::Box *a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 9);
  if (v2 != v3)
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = (*(*v5 + 40))(v5);
      if (!v6)
      {
        std::string::basic_string[abi:ne200100]<0>(&v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v32, "consumeInputs");
        v29 = a2 + 32;
        if (*(a2 + 55) < 0)
        {
          v29 = *v29;
        }

        v30 = (*(*a2 + 16))(a2);
        DSPGraph::strprintf("box %s %s input port is not connected.", v29, v30);
      }

      v7 = *(v6 + 56);
      v8 = *(v7 + 104) - 1;
      *(v7 + 104) = v8;
      if (!v8)
      {
        if (*(v7 + 108))
        {
          v9 = 48;
        }

        else
        {
          v9 = 8;
        }

        LODWORD(v32) = *(v7 + 96);
        v10 = v32;
        if (!std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((this + v9), v32))
        {
          *&v33 = &v32;
          v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v9), v10, &v33);
          v13 = v11 + 3;
          v12 = v11[3];
          if (v12)
          {
            v11[4] = v12;
            operator delete(v12);
          }

          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          v10 = v32;
        }

        *&v33 = &v32;
        v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v9), v10, &v33);
        v15 = v14;
        v17 = v14[4];
        v16 = v14[5];
        if (v17 >= v16)
        {
          v19 = v14[3];
          v20 = (v17 - v19) >> 3;
          if ((v20 + 1) >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v21 = v16 - v19;
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
            if (!(v23 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = (8 * v20);
          *v24 = v7;
          v18 = 8 * v20 + 8;
          v25 = v14[3];
          v26 = v14[4] - v25;
          v27 = v24 - v26;
          memcpy(v24 - v26, v25, v26);
          v28 = v15[3];
          v15[3] = v27;
          v15[4] = v18;
          v15[5] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v7;
          v18 = (v17 + 1);
        }

        v15[4] = v18;
      }

      v5 += 32;
      v2 += 32;
    }

    while (v5 != v3);
  }
}

void sub_18F64EAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::BufferColorist::allocOutputs(DSPGraph::BufferColorist *this, DSPGraph::Box *a2, DSPGraph::Box *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = a2;
    do
    {
      v7 = (*(*v4 + 40))(v4);
      if (!v7[7])
      {
        v8 = v7;
        v9 = v7[15];
        v10 = *(v9 + 12);
        v11 = *(v9 + 28);
        v12 = v7[5];
        v18 = v11;
        if (v12 >> 31)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
        }

        if ((v10 & 0x20) != 0)
        {
          v13 = 8;
        }

        else
        {
          v13 = 48;
        }

        if (!std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((this + v13), v11) || (v19 = &v18, v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + v13), v11, &v19), v15 = v14[4], v15 == v14[3]))
        {
          operator new();
        }

        v16 = *(v15 - 8);
        v14[4] = v15 - 8;
        *(v16 + 104) = v12;
        v8[7] = v16;
      }

      v4 = (v4 + 32);
      v6 = (v6 + 32);
    }

    while (v4 != a3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(uint64_t a1)
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

void DSPGraph::Graph::getParameterList(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = (this + 536); ; std::vector<unsigned int>::push_back[abi:ne200100](a2, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }
}

void sub_18F64F258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal()
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X0] }

  _X6 = _X4;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X6, X7, [X0] }

  if (_X2 != _X4)
  {
    do
    {
      _X4 = _X2;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X0] }

      v13 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v13);
  }
}

uint64_t DSPGraph::GraphOutput::numChannels(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F64F3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GraphOutput::interleaved(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return (*(*((*(*v2 + 40))(v2) + 120) + 12) & 0x20) == 0;
}

void sub_18F64F4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void DSPGraph::Interpreter::~Interpreter(DSPGraph::Interpreter *this)
{
  *this = &unk_1F0331570;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  *(this + 2) = &unk_1F03315A0;
  v4 = (this + 104);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 64);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 24);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  DSPGraph::Interpreter::~Interpreter(this);

  JUMPOUT(0x193ADF220);
}

void std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100]((v2 + 5));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void acv2::PCMInterleaver::~PCMInterleaver(acv2::PCMInterleaver *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::CodecEncoderFactory::BuildCodecConverterChain(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 3);
  if (v5)
  {
    v7 = *(a3 + 80);
    outInstance = v7;
    v54 = *a2;
    v55 = *(a2 + 2);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    v13 = *(a2 + 8);
    v12 = *(a2 + 9);
    v53[0] = *(a2 + 5);
    *(v53 + 12) = *(a2 + 52);
    v14 = *(a2 + 17);
    if (!(v11 | v14))
    {
      return 4294967246;
    }

    v18 = a2[9];
    v19 = ((v13 + 7) >> 3) * v14;
    if ((v5 & 0x20) != 0)
    {
      v19 = v10;
    }

    if (!v11)
    {
      v8 = v19;
    }

    v41 = v8;
    if (v11)
    {
      v20 = v9;
    }

    else
    {
      v20 = 1;
    }

    v39 = v12;
    v40 = v20;
    if (v11)
    {
      v21 = v10;
    }

    else
    {
      v21 = v19;
    }

    v42 = v21;
    if (v11)
    {
      v22 = v11;
    }

    else
    {
      v22 = *(a2 + 17);
    }

    v44 = 0;
    v43[0] = &v44;
    v43[1] = &outInstance;
    if (v7)
    {
      if (!v14)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }

    v15 = AudioComponentInstanceNew(*(a1 + 32), &outInstance);
    if (!v15)
    {
      v7 = outInstance;
      if (outInstance)
      {
        v44 = 1;
        v12 = v39;
        if (!v14)
        {
LABEL_23:
          outWritable[0] = 0;
          *outSize = 0;
          v14 = v22;
          if (AudioCodecGetPropertyInfo(v7, 0x636D6E63u, outSize, outWritable))
          {
LABEL_41:
            v12 = v39;
            goto LABEL_42;
          }

          CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(buf, *outSize >> 2, 0);
          if (AudioCodecGetProperty(v7, 0x636D6E63u, outSize, *buf))
          {
            v23 = *buf;
          }

          else
          {
            v23 = *buf;
            if (*outSize >= 4u)
            {
              v24 = 0;
              v14 = 0;
              v25 = 0x7FFFFFFF;
              do
              {
                v26 = *(*buf + v24);
                v27 = v26 - v22;
                if ((v26 - v22) < 0)
                {
                  v27 = v22 - v26;
                }

                if (v27 < v25)
                {
                  v25 = v27;
                  v14 = *(*buf + v24);
                }

                v24 += 4;
              }

              while ((*outSize & 0xFFFFFFFC) != v24);
LABEL_40:
              free(v23);
              goto LABEL_41;
            }
          }

          v14 = v22;
          if (!v23)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_42:
        *buf = v54;
        *&buf[8] = v55;
        *&buf[12] = v5;
        *&buf[16] = v41;
        *&buf[20] = v40;
        *&buf[24] = v42;
        *&buf[28] = v22;
        *v52 = v13;
        *&v52[4] = v12;
        *&v52[8] = v53[0];
        *&v52[20] = *(v53 + 12);
        *&v52[36] = v14;
        *&v52[40] = v18;
        if (v22 == v14 || (*&v52[16] & 0xFFFFFEFF) == 0x6D74622B)
        {
LABEL_53:
          v31 = outInstance;
          v32 = *buf;
          v33 = *&v52[8];
          if (*buf < *&v52[8])
          {
            *buf = *&v52[8];
            v32 = *&v52[8];
          }

          outPropertyData = 0;
          ioPropertyDataSize = 4;
          if (AudioCodecGetProperty(outInstance, 0x6C6D7263u, &ioPropertyDataSize, &outPropertyData) || !outPropertyData)
          {
            goto LABEL_64;
          }

          if (v33 == 0.0 && v32 == 0.0)
          {
            if (gAudioConverterDeferredLogOnce != -1)
            {
              dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
            }

            v34 = *gAudioConverterLog;
            if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_76;
            }

            *outSize = 136315394;
            *&outSize[4] = "CodecConverterFactory.cpp";
            *&outSize[12] = 1024;
            *&outSize[14] = 938;
            v35 = "%25s:%-5d neither input nor output sampling rate specified";
LABEL_75:
            _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_ERROR, v35, outSize, 0x12u);
LABEL_76:
            v15 = 1718449215;
            goto LABEL_84;
          }

          *outSize = v32;
          acv2::ChooseNearestSampleRate(v31, outSize, 1);
          if (*outSize != v32)
          {
LABEL_64:
            if (v33 == 0.0)
            {
              if (v32 == 0.0)
              {
                if (gAudioConverterDeferredLogOnce != -1)
                {
                  dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
                }

                v34 = *gAudioConverterLog;
                if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                *outSize = 136315394;
                *&outSize[4] = "CodecConverterFactory.cpp";
                *&outSize[12] = 1024;
                *&outSize[14] = 959;
                v35 = "%25s:%-5d neither input nor output sampling rate specified";
                goto LABEL_75;
              }

              *outWritable = v32;
              acv2::ChooseNearestSampleRate(v31, outWritable, 0);
              v36 = *outWritable;
            }

            else
            {
              *outWritable = v33;
              acv2::ChooseNearestSampleRate(v31, outWritable, 0);
              v36 = *outWritable;
              if (vabdd_f64(*outWritable, v33) > 10.0)
              {
                if (gAudioConverterDeferredLogOnce != -1)
                {
                  dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
                }

                v34 = *gAudioConverterLog;
                if (!os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                *outSize = 136315394;
                *&outSize[4] = "CodecConverterFactory.cpp";
                *&outSize[12] = 1024;
                *&outSize[14] = 971;
                v35 = "%25s:%-5d unable to select compatible encoder sample rate";
                goto LABEL_75;
              }
            }

            *buf = v36;
            *&v52[8] = v36;
          }

          *v50 = *v52;
          *&v50[16] = *&v52[16];
          *&v50[32] = *&v52[32];
          *outSize = *buf;
          *&outSize[16] = *&buf[16];
          v15 = acv2::CodecConverterFactory::ChooseIntermediateFormat(a1, outInstance, outSize, &v52[8], buf, 1, *(a3 + 60));
          if (!v15)
          {
            *&v50[8] = *buf;
            *outSize = v54;
            *&outSize[8] = v55;
            *&outSize[12] = v5;
            *&outSize[16] = v41;
            *&outSize[20] = v40;
            *&outSize[24] = v42;
            *&outSize[28] = v22;
            *v50 = v13;
            *&v50[4] = v39;
            *&v50[40] = *v52;
            *&v50[24] = *&buf[16];
            if (*v52 >= 0)
            {
              v37 = *v52;
            }

            else
            {
              v37 = -*v52;
            }

            *&v50[40] = (v37 + 7) & 0xFFFFFFF8;
            ioPropertyDataSize = 0;
            AudioFormatProperty_FormatEmploysDependentPackets(*&v52[16], &ioPropertyDataSize);
            operator new();
          }

          goto LABEL_84;
        }

        if ((v5 & 0x20) != 0)
        {
          v28 = 1;
        }

        else
        {
          v28 = v22;
          if (!v22)
          {
            v29 = (v13 + 7) >> 3;
LABEL_49:
            if ((v5 & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = v14;
            }

            *&buf[24] = v29 * v30;
            *&buf[28] = v14;
            *&buf[16] = v29 * v30;
            *&buf[20] = 1;
            goto LABEL_53;
          }
        }

        v29 = v42 / v28;
        goto LABEL_49;
      }

      v15 = 2003329396;
    }

LABEL_84:
    applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v43);
    return v15;
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v15 = 1718449215;
  v16 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CodecConverterFactory.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 377;
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d wildcard for input LPCM format flags is not allowed", buf, 0x12u);
  }

  return v15;
}

void sub_18F64FFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  (*(*v31 + 8))(v31, a2, a3, a4, a5, a6, a7, a8);
  applesauce::raii::v1::detail::ScopeGuard<acv2::CodecEncoderFactory::BuildCodecConverterChain(acv2::StreamDescPair const&,acv2::ChainBuildSettings const&,acv2::AudioConverterChain &,acv2::PCMConverterFactory &)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a15);
  _Unwind_Resume(a1);
}

void DSPGraph::CalculationBox::~CalculationBox(DSPGraph::CalculationBox *this)
{
  *this = &unk_1F032CF60;
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032CF60;
  DSPGraph::Box::~Box(this);
}

void acv2::ChooseNearestSampleRate(acv2 *this, OpaqueAudioComponentInstance *a2, double *a3)
{
  outSize = 0;
  outWritable = 0;
  if (a3)
  {
    v5 = 1634300786;
  }

  else
  {
    v5 = 1634694002;
  }

  if (!AudioCodecGetPropertyInfo(this, v5, &outSize, &outWritable))
  {
    if (outSize >= 0x10)
    {
      operator new();
    }

    if (!AudioCodecGetProperty(this, v5, &outSize, 0))
    {
      *a2 = MEMORY[0];
    }
  }
}

void sub_18F650220(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

AUProcessingBlockBase *AUProcessingBlock_DSPGraph::AUProcessingBlock_DSPGraph(AUProcessingBlockBase *a1, void *a2)
{
  v4 = (*a2 + 408);
  if (*(*a2 + 431) < 0)
  {
    v4 = *v4;
    v5 = strlen(v4);
    if (!v4)
    {
      v6 = 0;
      cf = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = strlen((*a2 + 408));
  }

  v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
  cf = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

LABEL_5:
  AUProcessingBlockBase::AUProcessingBlockBase(a1, v6);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F03345B8;
  v7 = *a2;
  v8 = a2[1];
  *(a1 + 6) = *a2;
  *(a1 + 7) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 6);
  }

  *(a1 + 8) = 0;
  for (i = *(v7 + 24); i; i = *i)
  {
    AUPBRegisterAU(*(a1 + 2), *(i[2] + 56));
    v10 = i[2];
    v11 = *(v10 + 312);
    v12 = *(v10 + 320);
    while (v11 != v12)
    {
      AUPBRegisterAU(*(a1 + 2), *(*v11 + 88));
      v11 += 8;
    }
  }

  AUPBPropertyChanged(*(a1 + 2), 1735554168);
  return a1;
}

void sub_18F65040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void AUProcessingBlockBase::AUProcessingBlockBase(AUProcessingBlockBase *this, __CFString *a2)
{
  *this = &unk_1F032E690;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  AUProcessingBlockBase::SetName(this, a2);
  AUPBRegister(&gAUPBMethods, this, this + 2);
}

void sub_18F6504E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUPBRegisterAU(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v4 = +[AUPBServer sharedInstance];

  return [(AUPBServer *)v4 registerAU:a2 inBlock:a1];
}

uint64_t AUPBPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  [+[AUPBServer sharedInstance](AUPBServer processingBlockRef:"processingBlockRef:propertyChanged:" propertyChanged:a1, a2];
  return 0;
}

__n128 DSPGraph::AUBox::desc@<Q0>(DSPGraph::AUBox *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u32[0] = *(this + 210);
  result = *(this + 824);
  *a2 = result;
  return result;
}

uint64_t *std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(v2 + 64);
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::~lf_read_synchronized_write(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void DSPGraph::Interpreter::compileFile(DSPGraph::Graph **a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, DSPGraph::Graph **a5@<X8>)
{
  v23[20] = *MEMORY[0x1E69E9840];
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  memset(&v17, 0, sizeof(v17));
  v10 = (a2 - 1);
  do
  {
    v11 = v10->__r_.__value_.__s.__data_[1];
    v10 = (v10 + 1);
  }

  while (v11);
  std::string::append[abi:ne200100]<char const*,0>(&v17.__pn_, a2, v10);
  std::__fs::filesystem::__status(&v17, &__ec);
  if (buf[0] != 1 || __ec.__val_ != 0)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_8889);
    }

    v13 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "cannot find file %s", buf, 0xCu);
    }

LABEL_22:
    *a5 = 0;
    goto LABEL_23;
  }

  std::ifstream::basic_ifstream(buf, a2);
  v14 = v22;
  if (v22)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, *&v21[*(*buf - 24) + 24], 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    DSPGraph::Interpreter::compileText(p_p, a1, a3, a4, a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_8889);
    }

    v16 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = a2;
      _os_log_error_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "cannot open file %s", &__p, 0xCu);
    }
  }

  *buf = *MEMORY[0x1E69E54C8];
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x193ADEDD0](v21);
  std::istream::~istream();
  MEMORY[0x193ADF120](v23);
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_18F650998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a25);
  MEMORY[0x193ADF120](&a65);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Interpreter::parseString(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
  if ((DSPGraph::Interpreter::parseName(a1, a2) & 1) == 0)
  {
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
    if (**a1 != 34)
    {
      return 0;
    }

    for (i = *a1; ; v4 = i)
    {
      v7 = *++i;
      v6 = v7;
      if (v7 == 34)
      {
        break;
      }

      if (v6 == 10 || v6 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v11, "parseString");
        std::string::basic_string[abi:ne200100]<0>(&v10, "unterminated string");
        DSPGraph::ThrowException(1886548769, &v12, 427, &v11, &v10);
      }

      std::string::push_back(a2, v6);
    }

    *a1 = v4 + 2;
  }

  return 1;
}

void sub_18F650B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_18F650D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2)
{
  a1[59] = 0;
  v3 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v4 = *(MEMORY[0x1E69E54C8] + 16);
  v5 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 2);
  v7 = MEMORY[0x1E69E5528] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  a1[53] = v3;
  MEMORY[0x193ADEDC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_18F650E9C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x193ADF120](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2, void *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (!a2)
  {
    v6 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (a3[3] == a3[4])
    {
      if ((*(*a3 + 72))(a3) == -1)
      {
        goto LABEL_17;
      }

      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }

LABEL_19:
    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(this, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  if (a2[3] != a2[4])
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v7 = (*(*a2 + 72))(a2);
  v6 = v7 == -1;
  if (v7 == -1)
  {
    a2 = 0;
  }

  if (a3)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!v6)
  {
    a3 = 0;
    goto LABEL_19;
  }
}

void sub_18F65104C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

_BYTE *DSPGraph::checkASCIIEncoding(_BYTE *this, const char *a2)
{
  LOBYTE(v2) = *this;
  if (*this)
  {
    v3 = 0;
    while (1)
    {
      v4 = v2;
      if ((v2 & 0x80) != 0)
      {
        break;
      }

      v5 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60);
      if ((v5 & 0x800) != 0)
      {
        if (v2 == 127)
        {
          LOBYTE(v2) = 127;
LABEL_14:
          v6 = v3;
          v7 = v2;
LABEL_15:
          std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v9, "checkASCIIEncoding");
          caulk::make_string("failed to parse unsupported ASCII character %u at offset %u", &v8, v7, v6);
          DSPGraph::ThrowException(1886548769, &v10, 59, &v9, &v8);
        }
      }

      else if (v2 == 127 || (v5 & 0x4000) == 0)
      {
        goto LABEL_14;
      }

      v2 = this[++v3];
      if (!v2)
      {
        return this;
      }
    }

    v6 = v3;
    v7 = v2;
    if (!__maskrune(v2, 0x800uLL))
    {
      __maskrune(v4, 0x4000uLL);
    }

    goto LABEL_15;
  }

  return this;
}

void sub_18F651188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::Graph(DSPGraph::Graph *this)
{
  *this = &unk_1F033EA38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 16) = 850045863;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 449) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 472) = 0u;
  *(this + 138) = 1065353216;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 1065353216;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 1065353216;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  *(this + 91) = 0;
  *(this + 680) = 0u;
  *(this + 95) = 0;
  *(this + 96) = DSPGraph::Graph::generateSerialNumber(this);
  *(this + 101) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 204) = 1065353216;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 214) = 1065353216;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 224) = 1065353216;
  *(this + 113) = 0;
  *(this + 57) = 0u;
  *(this + 116) = 0x7F6E6F726DLL;
  *(this + 936) = 0;
  *(this + 235) = 1667327590;
  *(this + 118) = &unk_1F033EA98;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 246) = 1065353216;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 135) = 0;
  *(this + 272) = 1065353216;
  operator new();
}

void sub_18F65148C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = v17;
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(v14 + 1056);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](v14 + 1024);
  std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100]((v14 + 1016), 0);
  std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](&a14);
  *(v14 + 944) = v16;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(v18);
  a14 = a9;
  std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v14 + 784);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](v19, 0);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v14 + 640);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(v14 + 560);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(v14 + 520);
  v24 = *(v14 + 496);
  if (v24)
  {
    *(v14 + 504) = v24;
    operator delete(v24);
  }

  v25 = *v15;
  if (*v15)
  {
    *(v14 + 480) = v25;
    operator delete(v25);
  }

  if (*(v14 + 455) < 0)
  {
    operator delete(*(v14 + 432));
  }

  if (*(v14 + 431) < 0)
  {
    operator delete(*v21);
  }

  v26 = *(v14 + 304);
  if (v26)
  {
    *(v14 + 312) = v26;
    operator delete(v26);
  }

  v27 = *(v14 + 280);
  if (v27)
  {
    *(v14 + 288) = v27;
    operator delete(v27);
  }

  v28 = *(v14 + 256);
  if (v28)
  {
    *(v14 + 264) = v28;
    operator delete(v28);
  }

  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(v14 + 216);
  a14 = v14 + 192;
  std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::mutex::~mutex(a10);
  std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(a13);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Graph>::RenderObserver>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void DSPGraph::Preprocessor::preprocess(std::string *a1, std::string **a2, unsigned __int8 *a3, int a4)
{
  v156 = *MEMORY[0x1E69E9840];
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v149[0] = a2;
  v149[1] = &v150;
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  if ((a3[23] & 0x80u) == 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  if (!v4)
  {
    goto LABEL_537;
  }

  do
  {
    v9 = a3[23];
    if ((v9 & 0x80u) == 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a3 + 1);
    }

    if (v4 >= &v10[v9])
    {
      break;
    }

    v148 = (v4 + 1);
    v11 = *v4;
    if (v11 <= 0x5A)
    {
      if (v11 == 59)
      {
        v14 = (v4 + 2);
        while (1)
        {
          v11 = *(v14 - 1);
          if (!*(v14 - 1))
          {
            break;
          }

          v148 = v14++;
          if (v11 == 10)
          {
            goto LABEL_64;
          }
        }

        LOBYTE(v11) = 10;
LABEL_64:
        std::string::push_back(a1, v11);
        goto LABEL_444;
      }

      if (!*v4)
      {
        break;
      }

LABEL_53:
      if (v11 == 123 && a4)
      {
        memset(&v153, 0, sizeof(v153));
        DSPGraph::Preprocessor::parseToEnd(&v148, 123, 125, &v153);
        std::string::push_back(a1, 123);
        if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v153;
        }

        else
        {
          v20 = v153.__r_.__value_.__r.__words[0];
        }

        if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v153.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v153.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v20, size);
        std::string::push_back(a1, 125);
        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v153.__r_.__value_.__r.__words[0];
          goto LABEL_443;
        }

        goto LABEL_444;
      }

      goto LABEL_64;
    }

    if (v11 != 91)
    {
      if (v11 == 92)
      {
        v12 = (v4 + 2);
        v148 = (v4 + 2);
        v13 = v4[1];
        if (v13 <= 0x6D)
        {
          if (v4[1] > 0x61u)
          {
            if (v13 == 98)
            {
              LOBYTE(v13) = 8;
            }

            else if (v13 == 102)
            {
              LOBYTE(v13) = 12;
            }
          }

          else
          {
            if (!v4[1])
            {
              goto LABEL_445;
            }

            if (v13 == 97)
            {
              LOBYTE(v13) = 7;
            }
          }
        }

        else if (v4[1] <= 0x73u)
        {
          if (v13 == 110)
          {
            LOBYTE(v13) = 10;
          }

          else if (v13 == 114)
          {
            LOBYTE(v13) = 13;
          }
        }

        else
        {
          switch(v13)
          {
            case 'x':
              v148 = (v4 + 3);
              v29 = v4[2];
              if (v29 < 0 || (v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60), (v30 & 0x10000) == 0))
              {
                std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&__p, "preprocessor error: expected hex digit");
                DSPGraph::ThrowException(1886548769, &v153, 436, &v138, &__p);
              }

              if ((v30 & 0x9000) != 0)
              {
                v31 = 9;
              }

              else
              {
                v31 = 0;
              }

              v148 = (v4 + 4);
              v32 = v4[3];
              if (v32)
              {
                if ((v32 & 0x80000000) != 0 || (v33 = *(MEMORY[0x1E69E9830] + 4 * v32 + 60), (v33 & 0x10000) == 0))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&__p, "preprocessor error: expected hex digit");
                  DSPGraph::ThrowException(1886548769, &v153, 451, &v138, &__p);
                }

                v34 = v29 + v31;
                if ((v33 & 0x1000) != 0)
                {
                  v35 = -87;
                }

                else
                {
                  v35 = -48;
                }

                if ((v33 & 0x8000) != 0)
                {
                  v35 = -55;
                }

                std::string::push_back(a1, (v32 + v35) | (16 * v34));
                goto LABEL_444;
              }

              goto LABEL_537;
            case 'v':
              LOBYTE(v13) = 11;
              break;
            case 't':
              LOBYTE(v13) = 9;
              break;
          }
        }

        std::string::push_back(a1, v13);
        goto LABEL_445;
      }

      goto LABEL_53;
    }

    memset(&__p, 0, sizeof(__p));
    DSPGraph::Preprocessor::parseToEnd(&v148, 91, 93, &__p);
    DSPGraph::Preprocessor::preprocess(&v153, a2, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v153;
    p_p = &__p;
    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = v153.__r_.__value_.__r.__words[0];
    }

    v145 = 0;
    v146 = p_p;
    v144[0] = 0;
    v144[1] = 0;
    if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
    {
      std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
      std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected macro name");
      DSPGraph::ThrowException(1886548769, &v153, 497, &v138, &v143);
    }

    if ((SHIBYTE(v145) & 0x80000000) == 0)
    {
      if (HIBYTE(v145) <= 4u)
      {
        if (HIBYTE(v145) != 1)
        {
          if (HIBYTE(v145) != 2)
          {
            if (HIBYTE(v145) != 3)
            {
              goto LABEL_355;
            }

            if ((LOWORD(v144[0]) != 25956 || BYTE2(v144[0]) != 102) && (LOWORD(v144[0]) != 25964 || BYTE2(v144[0]) != 116))
            {
              if (LOWORD(v144[0]) != 28257 || BYTE2(v144[0]) != 100)
              {
LABEL_47:
                if (LOWORD(v144[0]) != 28526 || BYTE2(v144[0]) != 116)
                {
LABEL_262:
                  if (HIBYTE(v145) != 1)
                  {
                    if (HIBYTE(v145) != 2)
                    {
                      goto LABEL_355;
                    }

                    goto LABEL_134;
                  }

                  goto LABEL_296;
                }

LABEL_328:
                memset(&v153, 0, sizeof(v153));
                if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: not: expected condition");
                  DSPGraph::ThrowException(1886548769, &v138, 628, &v143, &v142);
                }

                if (v145 >= 0)
                {
                  v96 = v144;
                }

                else
                {
                  v96 = v144[0];
                }

                if (DSPGraph::strToLong(&v153, v96, 630, "preprocess"))
                {
                  v97 = "0";
                }

                else
                {
                  v97 = "1";
                }

                std::string::append(a1, v97, 1uLL);
                goto LABEL_436;
              }

              goto LABEL_311;
            }

            v26 = v144;
LABEL_197:
            v60 = *v26;
            v61 = *(v26 + 2);
            v63 = v60 != 25964 || v61 != 116;
            if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
            {
              std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v153, 506, &v138, &v143);
            }

            if (DSPGraph::Preprocessor::find(a2, v144))
            {
              if (DSPGraph::getLog(void)::onceToken != -1)
              {
                dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_9664);
              }

              v64 = DSPGraph::getLog(void)::gLog;
              if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                if (v145 >= 0)
                {
                  v65 = v144;
                }

                else
                {
                  v65 = v144[0];
                }

                LODWORD(v153.__r_.__value_.__l.__data_) = 136315138;
                *(v153.__r_.__value_.__r.__words + 4) = v65;
                _os_log_impl(&dword_18F5DF000, v64, OS_LOG_TYPE_INFO, "Preprocessor: redefining macro '%s'", &v153, 0xCu);
              }
            }

            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            while (DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              v66 = v153.__r_.__value_.__l.__size_;
              if (v153.__r_.__value_.__l.__size_ >= v153.__r_.__value_.__r.__words[2])
              {
                v68 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v153, &v138);
              }

              else
              {
                if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v153.__r_.__value_.__l.__size_, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
                }

                else
                {
                  v67 = *&v138.__r_.__value_.__l.__data_;
                  *(v153.__r_.__value_.__l.__size_ + 16) = *(&v138.__r_.__value_.__l + 2);
                  *v66 = v67;
                }

                v68 = (v66 + 24);
              }

              v153.__r_.__value_.__l.__size_ = v68;
            }

            if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v138.__r_.__value_.__l.__data_);
            }

            memset(&v138, 0, sizeof(v138));
            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v138))
            {
              v69 = DSPGraph::Preprocessor::def(a2, v144, &v138);
              *&v137 = v69;
              if (!v63)
              {
                std::vector<DSPGraph::Macro const*>::push_back[abi:ne200100](&v150, &v137);
              }

              v70 = v153.__r_.__value_.__l.__size_;
              v71 = v153.__r_.__value_.__r.__words[0];
              if (v153.__r_.__value_.__r.__words[0] != v153.__r_.__value_.__l.__size_)
              {
                v72 = *(v69 + 40);
                do
                {
                  if (v72 >= *(v69 + 48))
                  {
                    v72 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v69 + 32, v71);
                  }

                  else
                  {
                    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v69 + 32, v71);
                    ++v72;
                  }

                  *(v69 + 40) = v72;
                  v71 = (v71 + 24);
                }

                while (v71 != v70);
              }
            }

            else
            {
              if (v153.__r_.__value_.__l.__size_ - v153.__r_.__value_.__r.__words[0] != 24)
              {
                std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: expected macro body");
                DSPGraph::ThrowException(1886548769, &v143, 530, &v142, &v141);
              }

              *&v137 = DSPGraph::Preprocessor::def(a2, v144, v153.__r_.__value_.__l.__data_);
              if (!v63)
              {
                std::vector<DSPGraph::Macro const*>::push_back[abi:ne200100](&v150, &v137);
              }
            }

            if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v138.__r_.__value_.__l.__data_);
            }

            v138.__r_.__value_.__r.__words[0] = &v153;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v138);
            goto LABEL_439;
          }

          if (LOWORD(v144[0]) != 29295)
          {
LABEL_134:
            if (LOWORD(v144[0]) != 15677)
            {
              goto LABEL_355;
            }

LABEL_306:
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 639, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 642, &v142, &v141);
            }

            v90 = DSPGraph::strToLong(&v153, "equality", 644, "preprocess");
            if (v90 == DSPGraph::strToLong(&v138, "equality", 645, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

LABEL_265:
          v78 = 0;
          memset(&v153, 0, sizeof(v153));
          while (1)
          {
            v79 = v78;
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              break;
            }

            v78 = 1;
            if (!v79)
            {
              if (v145 >= 0)
              {
                v80 = v144;
              }

              else
              {
                v80 = v144[0];
              }

              v78 = DSPGraph::strToLong(&v153, v80, 598, "preprocess") != 0;
            }
          }

          if (v79)
          {
            v81 = "1";
          }

          else
          {
            v81 = "0";
          }

LABEL_321:
          std::string::append(a1, v81, 1uLL);
          if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_439;
          }

LABEL_437:
          v117 = v153.__r_.__value_.__r.__words[0];
          goto LABEL_438;
        }

        v36 = LOBYTE(v144[0]);
        if (LOBYTE(v144[0]) != 42)
        {
          if (LOBYTE(v144[0]) != 43)
          {
LABEL_297:
            if (v36 == 45)
            {
LABEL_298:
              memset(&v153, 0, sizeof(v153));
              memset(&v138, 0, sizeof(v138));
              if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
              {
                std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
                DSPGraph::ThrowException(1886548769, &v143, 654, &v142, &v141);
              }

              v85 = DSPGraph::strToLong(&v153, "subtraction", 656, "preprocess");
              if (DSPGraph::Preprocessor::parseToken(&v146, &v138))
              {
                v86 = DSPGraph::strToLong(&v138, "subtraction", 658, "preprocess");
                v87 = caulk::numeric::exceptional_sub<long>(v85, v86);
                std::to_string(&v143, v87);
                if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v88 = &v143;
                }

                else
                {
                  v88 = v143.__r_.__value_.__r.__words[0];
                }

                if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v89 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v89 = v143.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                v98 = caulk::numeric::exceptional_mul<long>(v85, -1);
                std::to_string(&v143, v98);
                if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v88 = &v143;
                }

                else
                {
                  v88 = v143.__r_.__value_.__r.__words[0];
                }

                if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v89 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v89 = v143.__r_.__value_.__l.__size_;
                }
              }

              goto LABEL_432;
            }

LABEL_345:
            if (v36 != 47)
            {
              goto LABEL_355;
            }

            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 666, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 669, &v142, &v141);
            }

            v99 = DSPGraph::strToLong(&v153, "division", 671, "preprocess");
            v100 = DSPGraph::strToLong(&v138, "division", 672, "preprocess");
            if (!v100)
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "division by zero is not allowed");
              DSPGraph::ThrowException(1886548769, &v143, 674, &v142, &v141);
            }

            std::to_string(&v143, v99 / v100);
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &v143;
            }

            else
            {
              v88 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = v143.__r_.__value_.__l.__size_;
            }

LABEL_432:
            std::string::append(a1, v88, v89);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            goto LABEL_434;
          }

          goto LABEL_192;
        }

LABEL_233:
        memset(&v153, 0, sizeof(v153));
        v73 = 1;
        while (DSPGraph::Preprocessor::parseToken(&v146, &v153))
        {
          v74 = DSPGraph::strToLong(&v153, "multiplication", 587, "preprocess");
          v73 = caulk::numeric::exceptional_mul<long>(v73, v74);
        }

        std::to_string(&v138, v73);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &v138;
        }

        else
        {
          v75 = v138.__r_.__value_.__r.__words[0];
        }

        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = v138.__r_.__value_.__l.__size_;
        }

        goto LABEL_469;
      }

      if (HIBYTE(v145) != 5)
      {
        if (HIBYTE(v145) != 7)
        {
          if (HIBYTE(v145) != 10)
          {
            goto LABEL_355;
          }

          if (v144[0] != 0x746E756F4374656CLL || LOWORD(v144[1]) != 29285)
          {
            goto LABEL_355;
          }

LABEL_186:
          if (DSPGraph::Preprocessor::parseToken(&v146, v144))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              DSPGraph::strToLong(&v153, "counter start value", 554, "preprocess");
              if (DSPGraph::Preprocessor::parseToken(&v146, &v138))
              {
                DSPGraph::strToLong(&v138, "counter step", 556, "preprocess");
              }
            }

            operator new();
          }

          std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
          DSPGraph::ThrowException(1886548769, &v153, 549, &v138, &v143);
        }

        if (LODWORD(v144[0]) == 1853189987 && *(v144 + 3) == 1919251566)
        {
          goto LABEL_186;
        }

        if (LODWORD(v144[0]) != 1768318308 || *(v144 + 3) != 1684369001)
        {
LABEL_355:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "!="))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 680, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 683, &v142, &v141);
            }

            v101 = DSPGraph::strToLong(&v153, "inequality", 685, "preprocess");
            if (v101 == DSPGraph::strToLong(&v138, "inequality", 686, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

LABEL_476:
            std::string::append(a1, v91, 1uLL);
LABEL_434:
            if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v138.__r_.__value_.__l.__data_);
            }

            goto LABEL_436;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "<"))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 695, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 698, &v142, &v141);
            }

            v102 = DSPGraph::strToLong(&v153, "less than", 700, "preprocess");
            if (v102 >= DSPGraph::strToLong(&v138, "less than", 701, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "<="))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 710, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 713, &v142, &v141);
            }

            v103 = DSPGraph::strToLong(&v153, "less than or equal", 715, "preprocess");
            if (v103 <= DSPGraph::strToLong(&v138, "less than or equal", 716, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, ">"))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 725, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 728, &v142, &v141);
            }

            v104 = DSPGraph::strToLong(&v153, "greater than", 730, "preprocess");
            if (v104 <= DSPGraph::strToLong(&v138, "greater than", 731, "preprocess"))
            {
              v91 = "0";
            }

            else
            {
              v91 = "1";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, ">="))
          {
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 740, &v142, &v141);
            }

            if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
            {
              std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: missing argument");
              DSPGraph::ThrowException(1886548769, &v143, 743, &v142, &v141);
            }

            v105 = DSPGraph::strToLong(&v153, "greater than or equal", 745, "preprocess");
            if (v105 >= DSPGraph::strToLong(&v138, "greater than or equal", 746, "preprocess"))
            {
              v91 = "1";
            }

            else
            {
              v91 = "0";
            }

            goto LABEL_476;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "if"))
          {
            memset(&v153, 0, sizeof(v153));
            if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
            {
              std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: if: expected condition");
              DSPGraph::ThrowException(1886548769, &v138, 755, &v143, &v142);
            }

            if (v145 >= 0)
            {
              v106 = v144;
            }

            else
            {
              v106 = v144[0];
            }

            v107 = DSPGraph::strToLong(&v153, v106, 757, "preprocess");
            memset(&v138, 0, sizeof(v138));
            if (v107)
            {
              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v138))
              {
                std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v143, 762, &v142, &v141);
              }

              DSPGraph::Preprocessor::skipMacroBody(&v146, v109);
              DSPGraph::Preprocessor::preprocess(&v143, a2, &v138, 1);
              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v143;
              }

              else
              {
                v88 = v143.__r_.__value_.__r.__words[0];
              }

              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v143.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if ((DSPGraph::Preprocessor::skipMacroBody(&v146, v108) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v143, 768, &v142, &v141);
              }

              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v138))
              {
                goto LABEL_434;
              }

              DSPGraph::Preprocessor::preprocess(&v143, a2, &v138, 1);
              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v143;
              }

              else
              {
                v88 = v143.__r_.__value_.__r.__words[0];
              }

              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v143.__r_.__value_.__l.__size_;
              }
            }

            goto LABEL_432;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "ifdef"))
          {
            if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
            {
              std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v153, 776, &v138, &v143);
            }

            memset(&v153, 0, sizeof(v153));
            if (DSPGraph::Preprocessor::find(a2, v144))
            {
              if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v153))
              {
                std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: ifdef expected thenClause");
                DSPGraph::ThrowException(1886548769, &v138, 782, &v143, &v142);
              }

              DSPGraph::Preprocessor::skipMacroBody(&v146, v111);
              DSPGraph::Preprocessor::preprocess(&v138, a2, &v153, 1);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v138;
              }

              else
              {
                v75 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v138.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

            if ((DSPGraph::Preprocessor::skipMacroBody(&v146, v110) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: ifdef expected thenClause");
              DSPGraph::ThrowException(1886548769, &v138, 788, &v143, &v142);
            }

            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v153))
            {
              DSPGraph::Preprocessor::preprocess(&v138, a2, &v153, 1);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v138;
              }

              else
              {
                v75 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v138.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

LABEL_436:
            if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_439;
            }

            goto LABEL_437;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "ifset"))
          {
            if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
            {
              std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
              DSPGraph::ThrowException(1886548769, &v153, 796, &v138, &v143);
            }

            memset(&v153, 0, sizeof(v153));
            v112 = DSPGraph::Preprocessor::find(a2, v144);
            if (v112)
            {
              memset(&v143, 0, sizeof(v143));
              (*(*v112 + 16))(&v138);
              if (v145 >= 0)
              {
                v114 = v144;
              }

              else
              {
                v114 = v144[0];
              }

              v115 = DSPGraph::strToLong(&v138, v114, 800, "preprocess");
              if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v138.__r_.__value_.__l.__data_);
              }

              v142.__pn_.__r_.__value_.__r.__words[0] = &v143;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v142);
              if (v115 == 1)
              {
                if (!DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v153))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
                  std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: ifdef expected thenClause");
                  DSPGraph::ThrowException(1886548769, &v138, 802, &v143, &v142);
                }

                DSPGraph::Preprocessor::skipMacroBody(&v146, v116);
                DSPGraph::Preprocessor::preprocess(&v138, a2, &v153, 1);
                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v75 = &v138;
                }

                else
                {
                  v75 = v138.__r_.__value_.__r.__words[0];
                }

                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v76 = v138.__r_.__value_.__l.__size_;
                }

                goto LABEL_469;
              }
            }

            if ((DSPGraph::Preprocessor::skipMacroBody(&v146, v113) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
              std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: ifdef expected thenClause");
              DSPGraph::ThrowException(1886548769, &v138, 808, &v143, &v142);
            }

            if (DSPGraph::Preprocessor::parseMacroBody(a2, &v146, &v153))
            {
              DSPGraph::Preprocessor::preprocess(&v138, a2, &v153, 1);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = &v138;
              }

              else
              {
                v75 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v76 = v138.__r_.__value_.__l.__size_;
              }

              goto LABEL_469;
            }

            goto LABEL_436;
          }

          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "include"))
          {
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v144, "osFeatureEnabled"))
            {
              memset(&v153, 0, sizeof(v153));
              if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
              {
                std::string::basic_string[abi:ne200100]<0>(&v138, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v143, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: expected feature flag domain");
                DSPGraph::ThrowException(1886548769, &v138, 868, &v143, &v142);
              }

              memset(&v138, 0, sizeof(v138));
              if (!DSPGraph::Preprocessor::parseToken(&v146, &v138))
              {
                std::string::basic_string[abi:ne200100]<0>(&v143, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                std::string::basic_string[abi:ne200100]<0>(&v141, "preprocessor error: expected feature flag name");
                DSPGraph::ThrowException(1886548769, &v143, 873, &v142, &v141);
              }

              if (_os_feature_enabled_impl())
              {
                v91 = "1";
              }

              else
              {
                v91 = "0";
              }

              goto LABEL_476;
            }

            v120 = DSPGraph::Preprocessor::find(a2, v144);
            if (!v120)
            {
              std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
              v134 = v144;
              if (v145 < 0)
              {
                v134 = v144[0];
              }

              DSPGraph::strprintf("preprocessor error: macro %s not found.", v134);
            }

            v121 = v120;
            memset(&v153, 0, sizeof(v153));
            memset(&v138, 0, sizeof(v138));
            while (DSPGraph::Preprocessor::parseActualArg(a2, &v146, &v153))
            {
              std::vector<std::string>::emplace_back<std::string const&>(&v138, &v153);
            }

            (*(*v121 + 16))(&v143, v121, a2, &v138);
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v122 = &v143;
            }

            else
            {
              v122 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v123 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v123 = v143.__r_.__value_.__l.__size_;
            }

            std::string::append(a1, v122, v123);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            v143.__r_.__value_.__r.__words[0] = &v138;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v143);
            goto LABEL_436;
          }

          memset(&v143, 0, sizeof(v143));
          if ((DSPGraph::Preprocessor::parseString(&v146, &v143) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
            std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: expected filename");
            DSPGraph::ThrowException(1886548769, &v153, 817, &v138, &v142);
          }

          v118 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v118 = v143.__r_.__value_.__l.__size_;
            if (v143.__r_.__value_.__l.__size_ >= 3)
            {
              v119 = v143.__r_.__value_.__r.__words[0];
              if (*v143.__r_.__value_.__l.__data_ == 34)
              {
LABEL_492:
                if (v119->__r_.__value_.__s.__data_[v118 - 1] == 34)
                {
                  std::string::erase(&v143, 0, 1uLL);
                  if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v125 = v143.__r_.__value_.__r.__words[0];
                    v124 = --v143.__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v124 = SHIBYTE(v143.__r_.__value_.__r.__words[2]) - 1;
                    *(&v143.__r_.__value_.__s + 23) = v124 & 0x7F;
                    v125 = &v143;
                  }

                  v125->__r_.__value_.__s.__data_[v124] = 0;
                }
              }

LABEL_497:
              v140.__val_ = 0;
              v140.__cat_ = std::system_category();
              v138.__r_.__value_.__s.__data_[0] = 0;
              v139 = 0;
              std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v142.__pn_, &v143);
              if (std::__fs::filesystem::path::__root_directory(&v142).__size_)
              {
                if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v142, &v140) && !v140.__val_)
                {
                  std::ifstream::basic_ifstream(&v153, &v143);
                  if (!v155)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&v141, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v137, "preprocess");
                    v135 = &v143;
                    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v135 = v143.__r_.__value_.__r.__words[0];
                    }

                    DSPGraph::strprintf("preprocessor error: cannot open include file '%s'", v135);
                  }

                  v141.__r_.__value_.__r.__words[0] = *&v154[*(v153.__r_.__value_.__r.__words[0] - 24)];
                  *&v137 = 0;
                  std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v138, &v141, &v137);
                  std::ifstream::~ifstream(&v153);
                }
              }

              else
              {
                v129 = a2[6];
                v130 = a2[7];
                while (v129 != v130)
                {
                  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v153, v129);
                  std::__fs::filesystem::operator/[abi:ne200100](&v141, &v153, &v142);
                  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v153.__r_.__value_.__l.__data_);
                  }

                  if (std::__fs::filesystem::is_regular_file[abi:ne200100](&v141, &v140) && !v140.__val_)
                  {
                    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v131 = &v141;
                    }

                    else
                    {
                      v131 = v141.__r_.__value_.__r.__words[0];
                    }

                    std::ifstream::basic_ifstream(&v153, v131);
                    if (!v155)
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v137, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&v136, "preprocess");
                      v132 = &v143;
                      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v132 = v143.__r_.__value_.__r.__words[0];
                      }

                      DSPGraph::strprintf("preprocessor error: cannot open include file '%s'", v132);
                    }

                    *&v137 = *&v154[*(v153.__r_.__value_.__r.__words[0] - 24)];
                    *&v136 = 0;
                    std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(&v138, &v137, &v136);
                    std::ifstream::~ifstream(&v153);
                  }

                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v141.__r_.__value_.__l.__data_);
                  }

                  ++v129;
                }
              }

              if (SHIBYTE(v142.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v142.__pn_.__r_.__value_.__l.__data_);
              }

              if ((v139 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v142, "preprocess");
                v133 = &v143;
                if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v133 = v143.__r_.__value_.__r.__words[0];
                }

                DSPGraph::strprintf("preprocessor error: cannot find include file '%s'", v133);
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = &v138;
              }

              else
              {
                v126 = v138.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:ne200100]<0>(&v142, v126);
              DSPGraph::Preprocessor::preprocess(&v153, a2, &v142, 1);
              if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v127 = &v153;
              }

              else
              {
                v127 = v153.__r_.__value_.__r.__words[0];
              }

              if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v128 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v128 = v153.__r_.__value_.__l.__size_;
              }

              std::string::append(a1, v127, v128);
              if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v153.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v142.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v142.__pn_.__r_.__value_.__l.__data_);
              }

              if (v139 == 1 && SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v138.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_439;
              }

              v117 = v143.__r_.__value_.__r.__words[0];
LABEL_438:
              operator delete(v117);
              goto LABEL_439;
            }
          }

          else if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) > 2)
          {
            if (v143.__r_.__value_.__s.__data_[0] == 34)
            {
              v119 = &v143;
              goto LABEL_492;
            }

            goto LABEL_497;
          }

          std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v142, "preprocessor error: empty filename");
          DSPGraph::ThrowException(1886548769, &v153, 821, &v138, &v142);
        }

LABEL_181:
        if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
        {
          std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
          std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
          DSPGraph::ThrowException(1886548769, &v153, 567, &v138, &v143);
        }

        if (DSPGraph::Preprocessor::find(a2, v144))
        {
          v56 = "1";
        }

        else
        {
          v56 = "0";
        }

        std::string::append(a1, v56, 1uLL);
        goto LABEL_439;
      }

      if (LODWORD(v144[0]) != 1701080693 || BYTE4(v144[0]) != 102)
      {
        goto LABEL_355;
      }

      goto LABEL_151;
    }

    v23 = v144[1];
    if (v144[1] <= 4)
    {
      if (v144[1] == 1)
      {
        v57 = *v144[0];
        if (v57 == 42)
        {
          goto LABEL_233;
        }

        if (v57 == 43)
        {
LABEL_192:
          v58 = 0;
          memset(&v153, 0, sizeof(v153));
          while (DSPGraph::Preprocessor::parseToken(&v146, &v153))
          {
            v59 = DSPGraph::strToLong(&v153, "addition", 579, "preprocess");
            v58 = caulk::numeric::exceptional_add<long>(v58, v59);
          }

          std::to_string(&v138, v58);
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &v138;
          }

          else
          {
            v75 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v76 = v138.__r_.__value_.__l.__size_;
          }

LABEL_469:
          std::string::append(a1, v75, v76);
          goto LABEL_434;
        }

        if ((v145 & 0x8000000000000000) == 0)
        {
          goto LABEL_295;
        }
      }

      else
      {
        if (v144[1] != 3)
        {
LABEL_259:
          if (v23 == 2)
          {
            if (*v144[0] == 29295)
            {
              goto LABEL_265;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_262;
            }

            v23 = v144[1];
          }

          if (v23 == 3)
          {
            if (*v144[0] == 28257 && *(v144[0] + 2) == 100)
            {
LABEL_311:
              memset(&v153, 0, sizeof(v153));
              v92 = 1;
              while (1)
              {
                v93 = v92;
                if (!DSPGraph::Preprocessor::parseToken(&v146, &v153))
                {
                  break;
                }

                v92 = 0;
                if (v93)
                {
                  if (v145 >= 0)
                  {
                    v94 = v144;
                  }

                  else
                  {
                    v94 = v144[0];
                  }

                  v92 = DSPGraph::strToLong(&v153, v94, 615, "preprocess") != 0;
                }
              }

              if (v93)
              {
                v81 = "1";
              }

              else
              {
                v81 = "0";
              }

              goto LABEL_321;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              if (HIBYTE(v145) != 1)
              {
                if (HIBYTE(v145) == 2)
                {
                  goto LABEL_134;
                }

                if (HIBYTE(v145) == 3)
                {
                  goto LABEL_47;
                }

                goto LABEL_355;
              }

LABEL_296:
              v36 = LOBYTE(v144[0]);
              goto LABEL_297;
            }
          }

          v83 = v144[1];
          if (v144[1] == 3)
          {
            if (*v144[0] == 28526 && *(v144[0] + 2) == 116)
            {
              goto LABEL_328;
            }

            v83 = v144[1];
          }

          if (v83 != 2)
          {
            goto LABEL_323;
          }

          if (*v144[0] == 15677)
          {
            goto LABEL_306;
          }

          if (v145 < 0)
          {
LABEL_323:
            if (v144[1] != 1)
            {
              goto LABEL_355;
            }

            if (*v144[0] == 45)
            {
              goto LABEL_298;
            }

            if (v145 < 0)
            {
              v95 = v144[0];
            }

            else
            {
              if (HIBYTE(v145) != 1)
              {
                goto LABEL_355;
              }

              v95 = v144;
            }

            v36 = *v95;
            goto LABEL_345;
          }

LABEL_295:
          if (HIBYTE(v145) != 1)
          {
            goto LABEL_355;
          }

          goto LABEL_296;
        }

        v26 = v144[0];
        if (*v144[0] == 25956 && *(v144[0] + 2) == 102)
        {
          goto LABEL_197;
        }

        if (*v144[0] == 25964 && *(v144[0] + 2) == 116)
        {
          goto LABEL_197;
        }
      }

LABEL_258:
      v23 = v144[1];
      goto LABEL_259;
    }

    if (v144[1] != 5)
    {
      if (v144[1] != 7)
      {
        if (v144[1] == 10)
        {
          if (*v144[0] == 0x746E756F4374656CLL && *(v144[0] + 4) == 29285)
          {
            goto LABEL_186;
          }

          goto LABEL_355;
        }

        goto LABEL_259;
      }

      if (*v144[0] == 1853189987 && *(v144[0] + 3) == 1919251566)
      {
        goto LABEL_186;
      }

      if (*v144[0] == 1768318308 && *(v144[0] + 3) == 1684369001)
      {
        goto LABEL_181;
      }

      goto LABEL_258;
    }

    if (*v144[0] != 1701080693 || *(v144[0] + 4) != 102)
    {
      goto LABEL_355;
    }

LABEL_151:
    if (!DSPGraph::Preprocessor::parseToken(&v146, v144))
    {
      std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Preprocessor.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v138, "preprocess");
      std::string::basic_string[abi:ne200100]<0>(&v143, "preprocessor error: expected name");
      DSPGraph::ThrowException(1886548769, &v153, 544, &v138, &v143);
    }

    v41 = a2[1];
    if (a2[2] == v41)
    {
      v77 = 0;
      goto LABEL_256;
    }

    v42 = a2[4];
    v43 = (&v41->__r_.__value_.__l.__data_ + (v42 >> 9));
    v44 = *v43;
    v45 = *v43 + 8 * (v42 & 0x1FF);
    v46 = *(v41->__r_.__value_.__r.__words + (((v42 + a2[5]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v42 + a2[5]) & 0x1FF);
    while (1)
    {
      if (v45 == v46)
      {
        v77 = 0;
        goto LABEL_256;
      }

      v47 = *v45;
      v48 = *(*v45 + 31);
      if (v48 >= 0)
      {
        v49 = *(*v45 + 31);
      }

      else
      {
        v49 = *(*v45 + 16);
      }

      v50 = HIBYTE(v145);
      if (v145 < 0)
      {
        v50 = v144[1];
      }

      if (v49 == v50)
      {
        v51 = v48 >= 0 ? v47 + 1 : v47[1];
        v52 = v145 >= 0 ? v144 : v144[0];
        if (!memcmp(v51, v52, v49))
        {
          break;
        }
      }

LABEL_170:
      v45 += 8;
      if (v45 - v44 == 4096)
      {
        v53 = v43[1];
        ++v43;
        v44 = v53;
        v45 = v53;
      }
    }

    if ((*(*v47 + 24))(v47))
    {
      v44 = *v43;
      goto LABEL_170;
    }

    v77 = *v45;
LABEL_256:
    DSPGraph::Preprocessor::undef(a2, v77);
LABEL_439:
    if (SHIBYTE(v145) < 0)
    {
      operator delete(v144[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = __p.__r_.__value_.__r.__words[0];
LABEL_443:
      operator delete(v22);
    }

LABEL_444:
    v12 = v148;
LABEL_445:
    v4 = v12;
  }

  while (v12);
LABEL_537:
  DSPGraph::UndefineLocals::~UndefineLocals(v149);
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }
}

void sub_18F65400C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::ifstream::~ifstream(&a69);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a36 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (*(v69 + 23) < 0)
  {
    operator delete(*v69);
  }

  DSPGraph::UndefineLocals::~UndefineLocals(&a66);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

void DSPGraph::UndefineLocals::~UndefineLocals(DSPGraph::UndefineLocals *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    DSPGraph::Preprocessor::undef(*this, *v3++);
  }
}

uint64_t std::deque<std::unique_ptr<DSPGraph::Macro>>::~deque[abi:ne200100](uint64_t a1)
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

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void DSPGraph::Interpreter::parseGraphNameCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "parseGraphNameCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "expected a string in 'graphName' command");
    DSPGraph::ThrowException(1886548769, &v6, 1171, &v5, &v4);
  }

  if (v8 >= 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = v7[0];
  }

  std::string::__assign_external((*(this + 1) + 408), v3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_18F654A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void DSPGraph::Graph::addInput(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v3, "addInput");
  std::string::basic_string[abi:ne200100]<0>(&v2, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v4, 945, &v3, &v2);
}

void sub_18F654DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void DSPGraph::Graph::addOutput(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v3, "addOutput");
  std::string::basic_string[abi:ne200100]<0>(&v2, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v4, 960, &v3, &v2);
}

void sub_18F654FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_29,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_29>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for NonFiniteProtectionBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1678, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for NonFiniteProtectionBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1675, &v4, &v3);
}

void sub_18F6551F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t DSPGraph::Interpreter::parseName(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
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

uint64_t DSPGraph::skipspace(DSPGraph *this, const char **a2)
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

uint64_t DSPGraph::Interpreter::parseUInt64(DSPGraph::Interpreter *this, const char **a2, unint64_t *a3)
{
  DSPGraph::skipspace(this, a2);
  __endptr = 0;
  v5 = strtoul(*this, &__endptr, 10);
  v6 = __endptr;
  if (__endptr == *this)
  {
    return 0;
  }

  v7 = v5;
  if (v5 == -1)
  {
    if (*__error())
    {
      return 0;
    }
  }

  *a2 = v7;
  *this = v6;
  return 1;
}

void DSPGraph::Box::Box(DSPGraph::Box *this, unsigned int a2, unsigned int a3)
{
  *(this + 4) = 0u;
  v6 = (this + 64);
  *(this + 7) = 0u;
  *this = &unk_1F0338050;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 8) = 0u;
  *(this + 200) = 0u;
  *(this + 36) = 1065353216;
  *(this + 31) = 850045863;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (qword_1EAD2E508)
  {
    v7 = std::__shared_weak_count::lock(qword_1EAD2E508);
    if (v7)
    {
      v8 = v7;
      v9 = qword_1EAD2E500;
      if (qword_1EAD2E500)
      {
        v10 = (this + 88);
        os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        *(this + 72) = v9;
        v11 = *(this + 73);
        *(this + 73) = v8;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        *(this + 74) = &caulk::inplace_function_detail::rt_vtable<void,caulk::concurrent::details::skiplist_node<unsigned int,DSPGraph::Analyzer *>::layout_vk const&>::empty;
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v12 = 0;
        *(this + 42) = 0;
        *(this + 87) = 167837706;
        *(this + 86) = 0;
        *(this + 45) = 0;
        *(this + 46) = 0;
        *(this + 44) = 0;
        do
        {
          atomic_store(0, (this + v12 + 360));
          atomic_store(0, (this + v12 + 368));
          v12 += 16;
        }

        while (v12 != 160);
        *(this + 65) = 0;
        *(this + 133) = 16908289;
        *(this + 132) = -1;
        *(this + 67) = 0;
        *(this + 69) = 0;
        *(this + 68) = 0;
        atomic_store(0, this + 68);
        atomic_store(0, this + 69);
        for (i = 360; i != 520; i += 16)
        {
          atomic_store(this + 520, (this + i));
        }

        __dmb(0xBu);
        *(this + 83) = 0;
        *(this + 84) = 850045863;
        *(this + 680) = 0u;
        *(this + 696) = 0u;
        *(this + 712) = 0u;
        *(this + 728) = 0u;
        *(this + 372) = 1;
        *(this + 746) = 0;
        *(this + 752) = 0;
        *(this + 760) = 0;
        *(this + 192) = 0;
        if (a2 > ((*(this + 10) - *(this + 8)) >> 5))
        {
          v41 = v6;
          std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](a2);
        }

        if (a3 > ((*(this + 13) - *(this + 11)) >> 5))
        {
          v41 = (this + 88);
          std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](a3);
        }

        if (a2)
        {
          v14 = 0;
          v15 = *(this + 9);
          do
          {
            v16 = *(this + 10);
            if (v15 >= v16)
            {
              v17 = *v6;
              v18 = (v15 - *v6) >> 5;
              v19 = v18 + 1;
              if ((v18 + 1) >> 59)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v20 = v16 - v17;
              if (v20 >> 4 > v19)
              {
                v19 = v20 >> 4;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFE0)
              {
                v21 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              v41 = v6;
              if (v21)
              {
                std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](v21);
              }

              v22 = 32 * v18;
              v38 = 0;
              v39 = v22;
              *(&v40 + 1) = 0;
              *(v22 + 8) = this;
              *(v22 + 16) = 0;
              *(v22 + 24) = v14;
              *(v22 + 28) = 0;
              *v22 = &unk_1F033ABE0;
              *&v40 = 32 * v18 + 32;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::InputPort>,DSPGraph::InputPort*>(v17, v15, 0);
              v23 = *(this + 8);
              *(this + 8) = 0;
              v24 = *(this + 10);
              v36 = v40;
              *(this + 72) = v40;
              *&v40 = v23;
              *(&v40 + 1) = v24;
              v38 = v23;
              v39 = v23;
              std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(&v38);
              v15 = v36;
            }

            else
            {
              *(v15 + 8) = this;
              *(v15 + 16) = 0;
              *(v15 + 24) = v14;
              *(v15 + 28) = 0;
              *v15 = &unk_1F033ABE0;
              v15 += 32;
              *(this + 9) = v15;
            }

            *(this + 9) = v15;
            ++v14;
          }

          while (a2 != v14);
        }

        if (a3)
        {
          v25 = 0;
          v26 = *(this + 12);
          do
          {
            v27 = *(this + 13);
            if (v26 >= v27)
            {
              v28 = *v10;
              v29 = (v26 - *v10) >> 5;
              v30 = v29 + 1;
              if ((v29 + 1) >> 59)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v31 = v27 - v28;
              if (v31 >> 4 > v30)
              {
                v30 = v31 >> 4;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFE0)
              {
                v32 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              v41 = (this + 88);
              if (v32)
              {
                std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](v32);
              }

              v33 = 32 * v29;
              v38 = 0;
              v39 = v33;
              *(&v40 + 1) = 0;
              *(v33 + 8) = this;
              *(v33 + 16) = 0;
              *(v33 + 24) = v25;
              *v33 = &unk_1F033AC80;
              *&v40 = 32 * v29 + 32;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::OutputPort>,DSPGraph::OutputPort*>(v28, v26, 0);
              v34 = *(this + 11);
              *(this + 11) = 0;
              v35 = *(this + 13);
              v37 = v40;
              *(this + 6) = v40;
              *&v40 = v34;
              *(&v40 + 1) = v35;
              v38 = v34;
              v39 = v34;
              std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(&v38);
              v26 = v37;
            }

            else
            {
              *(v26 + 8) = this;
              *(v26 + 16) = 0;
              *(v26 + 24) = v25;
              *v26 = &unk_1F033AC80;
              v26 += 32;
              *(this + 12) = v26;
            }

            *(this + 12) = v26;
            ++v25;
          }

          while (a3 != v25);
        }

        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  operator new();
}

void sub_18F655BA8(_Unwind_Exception *a1, uint64_t a2, void **a3, void **a4, void **a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v20 = va_arg(va1, void **);
  std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(va1);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100]((v16 + 736), 0);
  std::mutex::~mutex((v16 + 672));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](v16 + 640);
  caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(v16 + 336);
  caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(v16 + 560);
  v20 = a10;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  std::mutex::~mutex(v17);
  v20 = a11;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  v20 = a13;
  std::vector<std::unique_ptr<DSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](va);
  v20 = a12;
  std::vector<DSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](va);
  v19 = *(v16 + 152);
  if (v19)
  {
    *(v16 + 160) = v19;
    operator delete(v19);
  }

  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<DSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v16 + 55) < 0)
  {
    operator delete(*(v16 + 32));
  }

  _Unwind_Resume(a1);
}

void caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine);
  }
}

void std::allocator<DSPGraph::OutputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<DSPGraph::InputPort>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::OutputPort>,DSPGraph::OutputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F033AC30;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F033AC80;
      a3 += 32;
      v5 += 4;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t DSPGraph::Graph::addBox(uint64_t result, uint64_t *a2, const std::string *a3, unint64_t a4, char a5)
{
  v6 = a2;
  v5 = (result + 24);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      operator new();
    }
  }

  while (v5[2] != a2);
  return result;
}

void std::allocator<DSPGraph::InputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DSPGraph::InputPort>,DSPGraph::InputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F033AC30;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F033ABE0;
      *(a3 + 28) = *(v5 + 7);
      v5 += 4;
      a3 += 32;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

void DSPGraph::Interpreter::parseBoxCommand(DSPGraph::Interpreter *this, const char **a2, unint64_t *a3)
{
  v30 = 0;
  DSPGraph::Interpreter::parseUInt64(a2, &v30, a3);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v28) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&__p, "parseBoxCommand");
    DSPGraph::strprintf("expected name in 'box' command: %s", *a2);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v21 = *a2;
  if (DSPGraph::Interpreter::parseString(&v21, v26) && DSPGraph::NewBoxRegistry::has(this + 16, v26))
  {
    *a2 = v21;
    v6 = 1;
  }

  else
  {
    if (!DSPGraph::Interpreter::parseCompDesc(a2, v22, v5))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
      DSPGraph::strprintf("expected class name or component description in 'box' command: %s", *a2);
    }

    v6 = 0;
  }

  v19 = 0;
  if ((DSPGraph::Interpreter::parseUInt32(a2, (&v19 + 4), &v5->componentType) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
    std::string::basic_string[abi:ne200100]<0>(&v20, "expected number of inputs in 'box' command");
    DSPGraph::ThrowException(1886548769, &__p, 912, &v24, &v20);
  }

  if ((DSPGraph::Interpreter::parseUInt32(a2, &v19, v7) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
    std::string::basic_string[abi:ne200100]<0>(&v20, "expected number of outputs in 'box' command");
    DSPGraph::ThrowException(1886548769, &__p, 915, &v24, &v20);
  }

  if (v6)
  {
    if (!DSPGraph::NewBoxRegistry::has(this + 16, v26))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v24, "parseBoxCommand");
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20, &v18, "' not found");
      DSPGraph::ThrowException(1852204065, &__p, 921, &v24, &v20);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>(this + 3, v26);
    if (v8)
    {
      v9 = std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v8[8], HIDWORD(v19), v19);
    }

    else
    {
      v9 = 0;
    }

    v15 = *(this + 1);
    if (v29 >= 0)
    {
      v16 = v28;
    }

    else
    {
      v16 = v28[0];
    }
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v22;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v23;
    if (!std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(this + 8, &__p))
    {
      v11 = *(this + 1);
      v13 = v19;
      v12 = HIDWORD(v19);
      if (v29 >= 0)
      {
        v14 = v28;
      }

      else
      {
        v14 = v28[0];
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v14);
      DSPGraph::Graph::add(v11, v22, v12, v13, &__p);
    }

    v10 = std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(this + 8, v22);
    if (v10)
    {
      v9 = std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v10[8], HIDWORD(v19), v19);
    }

    else
    {
      v9 = 0;
    }

    v15 = *(this + 1);
    if (v29 >= 0)
    {
      v16 = v28;
    }

    else
    {
      v16 = v28[0];
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v16);
  DSPGraph::Graph::add(v15, v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *(this + 25);
  if (v17 != *(this + 24))
  {
    DSPGraph::Box::setSubset(v9, *(v17 - 8));
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_18F65714C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseUInt32(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  v5 = *this;
  v7 = 0;
  v8 = v5;
  result = DSPGraph::Interpreter::parseUInt64(&v8, &v7, a3);
  if (result)
  {
    if (HIDWORD(v7))
    {
      return 0;
    }

    else
    {
      *a2 = v7;
      *this = v8;
      return 1;
    }
  }

  return result;
}

BOOL DSPGraph::Interpreter::parseCompDesc(DSPGraph::Interpreter *this, const char **a2, AudioComponentDescription *a3)
{
  DSPGraph::skipspace(this, a2);
  v14 = *this;
  DSPGraph::skipspace(&v14, v5);
  v6 = *v14;
  if (v6 == 40)
  {
    ++v14;
    if ((DSPGraph::Interpreter::parse4cc(&v14, a2, 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v12, "parseCompDesc");
      std::string::basic_string[abi:ne200100]<0>(&v11, "expected component type or subtype");
      DSPGraph::ThrowException(1886548769, &v13, 513, &v12, &v11);
    }

    if ((DSPGraph::Interpreter::parse4cc(&v14, (a2 + 4), 1) & 1) == 0)
    {
      v7 = *a2;
      *a2 = 1635083896;
      *(a2 + 1) = v7;
    }

    if ((DSPGraph::Interpreter::parse4cc(&v14, a2 + 1, 1) & 1) == 0)
    {
      *(a2 + 2) = 1634758764;
    }

    DSPGraph::skipspace(&v14, v8);
    v9 = v14;
    if (*v14 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v12, "parseCompDesc");
      DSPGraph::strprintf("expected ')' at end of component description, got '%c'", *v9);
    }

    *this = v14 + 1;
  }

  return v6 == 40;
}

void sub_18F657444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parse4cc(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  v3 = a3;
  DSPGraph::skipspace(this, a2);
  if (v3)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      v8 = DSPGraph::is4ccChar(*(*this + v6));
      v10 = *this;
      if (!v8)
      {
        break;
      }

      v11 = v10[v6];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x100uLL);
      }

      else
      {
        v12 = *(v7 + 4 * v11 + 60) & 0x100;
      }

      ++v6;
      if (v12)
      {
        goto LABEL_15;
      }
    }

    v19 = 0;
    v20 = v10;
    if (DSPGraph::Interpreter::parseUInt64(&v20, &v19, v9))
    {
      v14 = v19;
      if (!HIDWORD(v19))
      {
        v15 = v20;
LABEL_20:
        *a2 = v14;
        *this = v15;
        return 1;
      }
    }
  }

  else
  {
    v13 = **this;
    if ((v13 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) != 0)
    {
      return 0;
    }
  }

LABEL_15:
  v14 = 0;
  v15 = *this;
  v16 = 4;
  while (1)
  {
    v17 = *v15;
    result = DSPGraph::is4ccChar(*v15);
    if (!result)
    {
      return result;
    }

    ++v15;
    v14 = v17 | (v14 << 8);
    if (!--v16)
    {
      if ((DSPGraph::is4ccChar(*v15) & 1) == 0)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }
}

uint64_t DSPGraph::is4ccChar(unsigned int this)
{
  if (this >= 0x80)
  {
    result = __maskrune(this, 0x40000uLL);
    if (!result)
    {
      return result;
    }

    if (!__maskrune(this, 0x4000uLL))
    {
      return memchr("()[]{};", this, 9uLL) == 0;
    }

    return 0;
  }

  v3 = *(MEMORY[0x1E69E9830] + 4 * this + 60);
  if ((v3 & 0x40000) == 0 || (v3 & 0x4000) != 0)
  {
    return 0;
  }

  return memchr("()[]{};", this, 9uLL) == 0;
}

void DSPGraph::Graph::add(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const std::string *a5)
{
  if (*(a1 + 761) != 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v6, "add");
  std::string::basic_string[abi:ne200100]<0>(&v5, "graph is configured");
  DSPGraph::ThrowException(1667655457, &v7, 976, &v6, &v5);
}

void sub_18F657790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t *std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] + *a2 + a2[2];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] + *a2 + a2[2];
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == *a2 && *(result + 6) == a2[2])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void DSPGraph::AUBox::open(DSPGraph::AUBox *this)
{
  if (*(this + 106))
  {
    return;
  }

  Next = AudioComponentFindNext(0, (this + 824));
  if (!Next)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(1633906209, &v19, 1930, &v18, &v17);
  }

  v3 = (this + 848);
  v4 = AudioComponentInstanceNew(Next, this + 106);
  if (v4)
  {
    v13 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(v13, &v19, 1935, &v18, &v17);
  }

  if (!*v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "open");
    std::operator+<char>();
    DSPGraph::ThrowException(1633906209, &v19, 1938, &v18, &v17);
  }

  v5 = AudioComponentInstanceCanDo(*v3, 20) && ((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0x20 && ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) == 32;
  *(this + 856) = v5;
  v6 = this + 32;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    v7 = strlen(this + 32);
    goto LABEL_12;
  }

  v6 = *v6;
  v7 = strlen(v6);
  if (v6)
  {
LABEL_12:
    v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_13;
  }

  v8 = 0;
  cf = 0;
LABEL_13:
  v15 = v8;
  (*(*this + 312))(this, 54, 0, 0, 8, &v15);
  v9 = (*(this + 9) - *(this + 8)) >> 5;
  v10 = (*(this + 12) - *(this + 11)) >> 5;
  v22 = v10;
  v23 = v9;
  v21 = 0;
  v20 = 4;
  (*(*this + 304))(this, 11, 1, 0, &v20, &v21 + 4);
  (*(*this + 304))(this, 11, 2, 0, &v20, &v21);
  if (HIDWORD(v21) != v9)
  {
    v11 = (*(*this + 312))(this, 11, 1, 0, 4, &v23);
    if (v11)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "setElementCountOnUnit");
      std::string::basic_string[abi:ne200100]<0>(&v17, "setProperty failed");
      DSPGraph::ThrowException(v11, &v19, 2065, &v18, &v17);
    }
  }

  if (v21 != v10)
  {
    v12 = (*(*this + 312))(this, 11, 2, 0, 4, &v22);
    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "setElementCountOnUnit");
      std::string::basic_string[abi:ne200100]<0>(&v17, "setProperty failed");
      DSPGraph::ThrowException(v12, &v19, 2072, &v18, &v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18F657D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>(void *a1, void *a2)
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
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
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

uint64_t *DSPGraph::Graph::add(uint64_t a1, uint64_t *a2, const std::string *a3)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "add");
    std::string::basic_string[abi:ne200100]<0>(&v5, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v7, 990, &v6, &v5);
  }

  DSPGraph::Graph::addBox(a1, a2, a3, 0, 0);
  return a2;
}

void sub_18F657FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void DSPGraph::Interpreter::parseNamedFormatCommand(DSPGraph::Interpreter *this, const char **a2)
{
  memset(&v9, 0, 24);
  if ((DSPGraph::Interpreter::parseString(a2, &v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "parseNamedFormatCommand");
    std::string::basic_string[abi:ne200100]<0>(&v7, "named format : expected name.");
    DSPGraph::ThrowException(1886548769, v5, 1197, &v8, &v7);
  }

  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  DWORD2(v6) = 1;
  if ((DSPGraph::Interpreter::parseFormat(a2, v5) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "parseNamedFormatCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "named format : expected format.");
    DSPGraph::ThrowException(1886548769, &v8, 1202, &v7, &v4);
  }

  DSPGraph::Graph::setFormat(*(this + 1), &v9, v5);
  if (SHIBYTE(v9.mFramesPerPacket) < 0)
  {
    operator delete(*&v9.mSampleRate);
  }
}

void sub_18F6581C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v31 - 41) < 0)
  {
    operator delete(*(v31 - 64));
  }

  if (*(v31 - 17) < 0)
  {
    operator delete(*(v31 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseFormat(DSPGraph *a1, uint64_t a2)
{
  DSPGraph::skipspace(a1, a2);
  v4 = *a1;
  v5 = **a1;
  if (v5 == 40)
  {
    v42 = (v4 + 1);
    HIBYTE(v41) = 1;
    LODWORD(v41) = 0;
    if (!DSPGraph::Interpreter::parse4cc(&v42, &v41, 0))
    {
      goto LABEL_17;
    }

    if (v41 == 1819304813)
    {
      v7 = 0;
      LODWORD(v41) = 0;
      goto LABEL_18;
    }

    if (v41 == 1718773105)
    {
      LODWORD(v41) = 0;
      v7 = 1;
    }

    else
    {
LABEL_17:
      v7 = 0;
    }

LABEL_18:
    *v36 = v42;
    v40.__r_.__value_.__r.__words[0] = 0;
    if (!DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v6) || (data = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])) || (v42 = *v36, !v40.__r_.__value_.__r.__words[0]))
    {
      std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
      std::string::basic_string[abi:ne200100]<0>(&v39, "expected non-zero sample rate");
      DSPGraph::ThrowException(1886548769, v36, 556, &v40, &v39);
    }

    v16 = v41;
    if (v41)
    {
      v40.__r_.__value_.__r.__words[0] = 0;
      if (!DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v14) || (v18 = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])) || (v42 = *v36, !DSPGraph::Interpreter::parserInterleavedFlag(&v42, (&v41 + 7), v17)) || (*v36 = v42, v40.__r_.__value_.__r.__words[0] = 0, !DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v19)) || (v21 = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])) || (v40.__r_.__value_.__r.__words[0] = 0, !DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v20)) || (v23 = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])))
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v39, "constant bit rate formats must have a block size and bytes per packet.");
        DSPGraph::ThrowException(1718449215, v36, 561, &v40, &v39);
      }

      v42 = *v36;
      goto LABEL_39;
    }

    v40.__r_.__value_.__r.__words[0] = 0;
    if (!DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v14) || (v18 = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])))
    {
      v23 = 0;
      v18 = 1;
    }

    else
    {
      v42 = *v36;
      if (DSPGraph::Interpreter::parserInterleavedFlag(&v42, (&v41 + 7), v25))
      {
        *v36 = v42;
        v40.__r_.__value_.__r.__words[0] = 0;
        if (!DSPGraph::Interpreter::parseUInt64(v36, &v40.__r_.__value_.__l.__data_, v26) || (v21 = v40.__r_.__value_.__l.__data_, HIDWORD(v40.__r_.__value_.__r.__words[0])))
        {
          v21 = 1;
        }

        else
        {
          v42 = *v36;
        }

        v23 = 0;
        goto LABEL_39;
      }

      v23 = 0;
    }

    v21 = 1;
LABEL_39:
    DSPGraph::skipspace(&v42, v22);
    v27 = v42;
    if (*v42 != 41)
    {
      v35 = v42;
      std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
      DSPGraph::strprintf("expected ')' at end of format, got '%c'", *v35);
    }

    if (v16)
    {
      if (HIBYTE(v41) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v39, "constant bit rate formats must be de-interleaved.");
        DSPGraph::ThrowException(1718449215, v36, 577, &v40, &v39);
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v21;
    }

    else if (v7)
    {
      if (v21 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v39, "frequency domain formats must have a block size.");
        DSPGraph::ThrowException(1718449215, v36, 582, &v40, &v39);
      }

      if (HIBYTE(v41) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v40, "parseParenFormat");
        std::string::basic_string[abi:ne200100]<0>(&v39, "frequency domain formats must be de-interleaved.");
        DSPGraph::ThrowException(1718449215, v36, 585, &v40, &v39);
      }

      v16 = 1718773105;
      v30 = 64;
      v31 = 1;
      v23 = 8;
      v28 = 41;
      v29 = 8;
    }

    else
    {
      v16 = 1819304813;
      v31 = HIBYTE(v41);
      v30 = 32;
      if (HIBYTE(v41) == 1)
      {
        v23 = 4 * (v18 & 0x7FFFFFF);
        v28 = 9;
        v29 = v23;
      }

      else
      {
        v31 = 1;
        v23 = 4;
        v28 = 41;
        v29 = 4;
      }
    }

    *a2 = data;
    *(a2 + 8) = v16;
    *(a2 + 12) = v28;
    *(a2 + 16) = v23;
    *(a2 + 20) = v31;
    *(a2 + 24) = v29;
    *(a2 + 28) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = v21;
    *a1 = v27 + 2;
    return 1;
  }

  memset(&v40, 0, sizeof(v40));
  if (!v5)
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    v9 = v5;
    if ((v5 & 0x80) != 0)
    {
      v10 = __maskrune(v5, 0x500uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v5 + 60) & 0x500;
    }

    if (!v10 && !memchr("-@/#,", v9, 6uLL))
    {
      break;
    }

    std::string::push_back(&v40, v9);
    v12 = *++v4;
    LOBYTE(v5) = v12;
  }

  while (v12);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v40.__r_.__value_.__s + 23))
    {
      v13 = &v40;
      goto LABEL_49;
    }

    return 0;
  }

  if (!v40.__r_.__value_.__l.__size_)
  {
    v24 = 0;
LABEL_60:
    operator delete(v40.__r_.__value_.__l.__data_);
    return v24;
  }

  v13 = v40.__r_.__value_.__r.__words[0];
LABEL_49:
  v32 = *(a2 + 16);
  *v36 = *a2;
  v37 = v32;
  v38 = *(a2 + 32);
  v24 = CAStreamBasicDescription::FromText(v13, v36, v11);
  if (v24)
  {
    v33 = v37;
    *a2 = *v36;
    *(a2 + 16) = v33;
    *(a2 + 32) = v38;
    *(a2 + 40) = 1;
    *a1 = v4;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_60;
  }

  return v24;
}

void sub_18F658858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::parserInterleavedFlag(DSPGraph::Interpreter *this, const char **a2, BOOL *a3)
{
  DSPGraph::skipspace(this, a2);
  v5 = *this;
  v6 = **this;
  if (**this)
  {
    if (**this > 0x63u)
    {
      if (v6 != 100)
      {
        if (v6 != 105)
        {
          goto LABEL_5;
        }

LABEL_8:
        *a2 = 1;
LABEL_10:
        *this = v5 + 1;
        return v6 != 0;
      }
    }

    else if (v6 != 68)
    {
      if (v6 != 73)
      {
LABEL_5:
        *a2 = 0;
        return v6 != 0;
      }

      goto LABEL_8;
    }

    *a2 = 0;
    goto LABEL_10;
  }

  return v6 != 0;
}

void *DSPGraph::Graph::setFormat(uint64_t a1, AudioStreamBasicDescription *a2, DSPGraph *this)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v12, 3046, &v11, &v10);
  }

  if (*(this + 2) == 1718773105 && *(this + 8) != 64)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "frequency domain format should be 64 bits.");
    DSPGraph::ThrowException(1718449215, &v12, 3050, &v11, &v10);
  }

  if (*this != floor(*this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "only integer sample rates are supported.");
    DSPGraph::ThrowException(1718449215, &v12, 3054, &v11, &v10);
  }

  if ((DSPGraph::MinimalSafetyCheck(this, a2) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setFormat");
    std::string::basic_string[abi:ne200100]<0>(&v10, "format failed sanity check.");
    DSPGraph::ThrowException(1718449215, &v12, 3057, &v11, &v10);
  }

  *&v12 = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 600), a2, &v12);
  v7 = *this;
  v8 = *(this + 1);
  *(v6 + 68) = *(this + 28);
  *(v6 + 7) = v8;
  *(v6 + 5) = v7;
  *&v12 = a2;
  return std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 600), a2, &v12) + 5;
}

void sub_18F658B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t DSPGraph::Interpreter::parsePortDesc(char **a1, const char **a2, const char **a3)
{
  v13 = *a1;
  *a3 = 0;
  DSPGraph::skipspace(&v13, a2);
  if (*v13 == 40)
  {
    ++v13;
    result = DSPGraph::Interpreter::parseString(&v13, a2);
    if (!result)
    {
      return result;
    }

    DSPGraph::Interpreter::parseUInt32(&v13, a3, v7);
    DSPGraph::skipspace(&v13, v8);
    v9 = v13;
    if (*v13 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v11, "parsePortDesc");
      DSPGraph::strprintf("expected ')' at end of port description, got '%c'", *v9);
    }

    v10 = v13 + 1;
  }

  else
  {
    result = DSPGraph::Interpreter::parseString(&v13, a2);
    if (!result)
    {
      return result;
    }

    v10 = v13;
  }

  *a1 = v10;
  return 1;
}

void sub_18F658D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Wire *DSPGraph::Graph::connect(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float **a6, DSPGraph::Wire **a7)
{
  if (a1[95].i8[1] == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
    std::string::basic_string[abi:ne200100]<0>(&v26, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v28, 1162, &v27, &v26);
  }

  v9 = a5;
  if (a6)
  {
    if (a7)
    {
      v12 = *a7;
      v13 = *a6;
      if (*a6)
      {
        if (v12)
        {
          if (v13 != v12)
          {
            if (*(v12 + 1))
            {
              std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
              std::string::basic_string[abi:ne200100]<0>(&v26, "destination jack already has a source.");
              DSPGraph::ThrowException(1633903905, &v28, 1180, &v27, &v26);
            }

LABEL_15:
            DSPGraph::Wire::addAll(v13, v12);
            DSPGraph::Graph::removeWire(a1, v12);
            goto LABEL_16;
          }

          return v13;
        }

LABEL_16:
        *a7 = v13;
        return v13;
      }

      if (!v12)
      {
        operator new();
      }

      *a6 = v12;
      return v12;
    }

    v18 = *(a3 + 64);
    if (a5 >= ((*(a3 + 72) - v18) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v27, "in");
      v24 = (a3 + 32);
      if (*(a3 + 55) < 0)
      {
        v24 = *v24;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v24, (*(a3 + 72) - *(a3 + 64)) >> 5, v9);
    }

    v19 = (v18 + 32 * a5);
    if ((*(*v19 + 40))(v19, a2))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v26, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v28, 1207, &v27, &v26);
    }

    v13 = *a6;
    if ((*(*v19 + 40))(v19))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v26, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v28, 1213, &v27, &v26);
    }

    if (!v13)
    {
      operator new();
    }

LABEL_28:
    *&v28 = v19;
    std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>(v13 + 4, v19, &v28);
    v19[2] = v13;
    return v13;
  }

  v15 = *(a2 + 88);
  if (a4 >= ((*(a2 + 96) - v15) >> 5))
  {
    v22 = a4;
    std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v27, "out");
    v23 = (a2 + 32);
    if (*(a2 + 55) < 0)
    {
      v23 = *v23;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, (*(a2 + 96) - *(a2 + 88)) >> 5, v22);
  }

  v16 = (v15 + 32 * a4);
  if (!a7)
  {
    v20 = *(a3 + 64);
    if (a5 >= ((*(a3 + 72) - v20) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v27, "in");
      v25 = (a3 + 32);
      if (*(a3 + 55) < 0)
      {
        v25 = *v25;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, (*(a3 + 72) - *(a3 + 64)) >> 5, v9);
    }

    v19 = (v20 + 32 * a5);
    v13 = (*(*v16 + 40))(v16);
    if ((*(*v19 + 40))(v19))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v26, "The input port already has a connection.");
      DSPGraph::ThrowException(1633903905, &v28, 1265, &v27, &v26);
    }

    if (!v13)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v17 = (*(*v16 + 40))(v16);
  v12 = *a7;
  if (!v17)
  {
    if (!v12)
    {
      operator new();
    }

    DSPGraph::Wire::setSource(*a7, v16);
    return v12;
  }

  v13 = v17;
  if (!v12)
  {
    goto LABEL_16;
  }

  if (v17 != v12)
  {
    if (*(v12 + 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "connect");
      std::string::basic_string[abi:ne200100]<0>(&v26, "The jack already has a source.");
      DSPGraph::ThrowException(1633903905, &v28, 1239, &v27, &v26);
    }

    goto LABEL_15;
  }

  return v13;
}

void sub_18F659460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<DSPGraph::Wire *,std::hash<DSPGraph::Wire *>,std::equal_to<DSPGraph::Wire *>,std::allocator<DSPGraph::Wire *>>::__emplace_unique_key_args<DSPGraph::Wire *,DSPGraph::Wire * const&>(float *a1, unint64_t a2, void *a3)
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

DSPGraph::Wire *DSPGraph::Wire::Wire(DSPGraph::Wire *this, DSPGraph::OutputPort *a2)
{
  *this = &unk_1F033F678;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 72) = 0u;
  *(this + 28) = 1;
  *(this + 15) = this + 72;
  if (a2)
  {
    DSPGraph::Wire::setSource(this, a2);
  }

  return this;
}

uint64_t DSPGraph::Wire::setSource(uint64_t this, DSPGraph::OutputPort *a2)
{
  v2 = this;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3 == a2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "setSource");
    v7 = *(*(v2 + 8) + 8);
    v8 = v7 + 32;
    if (v7[55] < 0)
    {
      v8 = *v8;
    }

    v9 = (*(*v7 + 16))(v7);
    DSPGraph::strprintf("wire already has a source: %s %s output %u", v8, v9, *(*(v2 + 8) + 24));
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = v5 == this;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "setSource");
    v11 = *(a2 + 1);
    v12 = v11 + 32;
    if (v11[55] < 0)
    {
      v12 = *v12;
    }

    v13 = (*(*v11 + 16))(v11);
    DSPGraph::strprintf("output port already has a wire: %s %s output %u", v12, v13, *(a2 + 6));
  }

  *(this + 8) = a2;
  *(a2 + 2) = this;
  return this;
}

void sub_18F659B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
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

BOOL DSPGraph::NewBoxRegistry::has(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>((a1 + 8), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3 != 0;
}

uint64_t std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

void *std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, void *a2, __int128 **a3)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t DSPGraph::MinimalSafetyCheck(DSPGraph *this, const AudioStreamBasicDescription *a2)
{
  result = 0;
  if (*this >= 0.0 && *this < 3000000.0)
  {
    v4 = *(this + 4);
    if (v4 >= 0xF4240)
    {
      return 0;
    }

    v5 = *(this + 5);
    if (v5 >= 0xF4240)
    {
      return 0;
    }

    v6 = *(this + 6);
    if (v6 >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if ((*(this + 7) - 1) > 0x3FF || *(this + 8) > 0x400u)
    {
      return result;
    }

    v7 = *(this + 2);
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == 1 && v4 == v6;
    return v7 != 1819304813 || v9;
  }

  return result;
}

void std::__hash_table<DSPGraph::InputPort *,std::hash<DSPGraph::InputPort *>,std::equal_to<DSPGraph::InputPort *>,std::allocator<DSPGraph::InputPort *>>::__emplace_unique_key_args<DSPGraph::InputPort *,DSPGraph::InputPort * const&>(float *a1, unint64_t a2, void *a3)
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

uint64_t DSPGraph::Wire::setGlobalFormat(uint64_t result, __int128 *__s1)
{
  v3 = result;
  if (*(result + 64) == 1)
  {
    v4 = *(result + 120);
    result = memcmp(__s1, v4, 0x28uLL);
    if (result || *(__s1 + 10) != v4[10])
    {
      std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v19, "setGlobalFormat");
      v5 = *(*(v3 + 8) + 8);
      v6 = (v5 + 32);
      if (*(v5 + 55) < 0)
      {
        v6 = *v6;
      }

      v7 = __s1[1];
      v21 = *__s1;
      v22 = v7;
      v23 = *(__s1 + 4);
      CA::StreamDescription::AsString(v17, &v21, *&v21, *&v7);
      v8 = v18;
      v9 = v17[0];
      v10 = *(__s1 + 10);
      v11 = *(v3 + 120);
      v21 = *v11;
      v22 = v11[1];
      v23 = *(v11 + 4);
      CA::StreamDescription::AsString(v15, &v21, *&v22, v12);
      if (v8 >= 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v9;
      }

      if (v16 >= 0)
      {
        v14 = v15;
      }

      else
      {
        v14 = v15[0];
      }

      DSPGraph::strprintf("Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v6, v13, v10, v14, *(*(v3 + 120) + 40));
    }
  }

  else
  {
    *(result + 64) = 1;
  }

  *(v3 + 120) = __s1;
  return result;
}

void sub_18F65A86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::match(DSPGraph::Interpreter *this, const char **a2, const char *a3)
{
  DSPGraph::skipspace(this, a2);
  v5 = strlen(a2);
  v6 = *this;
  v7 = strncmp(*this, a2, v5);
  if (!v7)
  {
    *this = v6 + v5;
  }

  return v7 == 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

uint64_t *DSPGraph::Graph::addParameter(DSPGraph::Graph *this, unsigned int a2, float a3, char a4)
{
  v11 = a2;
  if (*(this + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "addParameter");
    std::string::basic_string[abi:ne200100]<0>(&v8, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v10, 2360, &v9, &v8);
  }

  *&v10 = &v11;
  result = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 130, a2, &v10);
  *(result + 6) = a2;
  *(result + 7) = a3;
  *(result + 32) = a4;
  result[6] = result[5];
  return result;
}

void sub_18F65AE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::Interpreter::parseParamEndpoint(uint64_t a1, DSPGraph *this, uint64_t a3)
{
  DSPGraph::skipspace(this, this);
  v24 = *this;
  DSPGraph::skipspace(&v24, v6);
  v7 = *v24;
  if (v7 == 40)
  {
    v23 = 0;
    ++v24;
    v22[0] = 0;
    v22[1] = 0;
    if ((DSPGraph::Interpreter::parseString(&v24, v22) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parseParamEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v19, "expected box name for parameter endpoint");
      DSPGraph::ThrowException(1886548769, &v21, 669, v20, &v19);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(a1 + 8) + 784), v22);
    if (!v8 || (v9 = v8[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parseParamEndpoint");
      std::operator+<char>();
      DSPGraph::ThrowException(1852204065, &v21, 673, v20, &v19);
    }

    HIDWORD(v18) = 0;
    if ((DSPGraph::Interpreter::parse4cc(&v24, (&v18 + 4), 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parseParamEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v19, "expected parameter ID for parameter endpoint");
      DSPGraph::ThrowException(1886548769, &v21, 678, v20, &v19);
    }

    LODWORD(v18) = 0;
    if (DSPGraph::Interpreter::parseScope(&v24, &v18, v10) && (*&v21 = v24, v20[0] = 0, DSPGraph::Interpreter::parseUInt64(&v21, v20, v12)) && (v13 = v20[0], !(v20[0] >> 32)))
    {
      v24 = v21;
    }

    else
    {
      v13 = 0;
    }

    DSPGraph::skipspace(&v24, v11);
    v14 = v24;
    if (*v24 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parseParamEndpoint");
      DSPGraph::strprintf("expected ')' at end of param endpoint, got '%c'", *v14);
    }

    v16 = v18;
    v15 = HIDWORD(v18);
    *a3 = v9;
    *(a3 + 8) = v15;
    *(a3 + 12) = v16;
    *(a3 + 16) = v13;
    *this = v14 + 1;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  return v7 == 40;
}

void sub_18F65B100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseScope(DSPGraph::Interpreter *this, const char **a2, unsigned int *a3)
{
  DSPGraph::skipspace(this, a2);
  v26 = *this;
  v27 = 0;
  __p = v26;
  if (!DSPGraph::Interpreter::parseUInt64(&__p, &v27, v5) || v27 >> 32)
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    v8 = DSPGraph::Interpreter::parseName(&v26, &__p);
    v9 = HIBYTE(v25);
    if ((v8 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (v25 < 0)
    {
      if (v24 > 4)
      {
        if (v24 == 5)
        {
          if (*__p == 1970302569 && *(__p + 4) == 116)
          {
            goto LABEL_81;
          }
        }

        else if (v24 == 6 && *__p == 1886680431 && *(__p + 2) == 29813)
        {
          goto LABEL_43;
        }
      }

      else if (v24 == 2)
      {
        if (*__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else if (v24 == 3)
      {
        if (*__p == 30063 && *(__p + 2) == 116)
        {
          goto LABEL_43;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          return 0;
        }
      }

      if (v24 == 6 && *__p == 1651469415 && *(__p + 2) == 27745)
      {
LABEL_83:
        v15 = 0;
        goto LABEL_85;
      }

      if (v24 != 5)
      {
        goto LABEL_71;
      }

      if (*__p == 1970238055 && *(__p + 4) == 112)
      {
LABEL_84:
        v15 = 3;
LABEL_85:
        *a2 = v15;
        *this = v26;
        v7 = 1;
        if ((v9 & 0x80) == 0)
        {
          return v7;
        }

        goto LABEL_88;
      }

      if (v25 < 0)
      {
LABEL_71:
        if (v24 != 4)
        {
          v7 = 0;
          goto LABEL_88;
        }

        p_p = __p;
LABEL_73:
        if (*p_p == 1953653104)
        {
          v15 = 4;
          goto LABEL_85;
        }

LABEL_74:
        v7 = 0;
        if ((v25 & 0x8000000000000000) == 0)
        {
          return v7;
        }

LABEL_88:
        operator delete(__p);
        return v7;
      }

      if (HIBYTE(v25) == 4)
      {
LABEL_69:
        p_p = &__p;
        goto LABEL_73;
      }
    }

    else
    {
      v7 = 0;
      if (HIBYTE(v25) > 3u)
      {
        if (HIBYTE(v25) != 4)
        {
          if (HIBYTE(v25) != 5)
          {
            if (HIBYTE(v25) != 6)
            {
              return v7;
            }

            if (__p != 1886680431 || WORD2(__p) != 29813)
            {
              if (__p != 1651469415 || WORD2(__p) != 27745)
              {
                return 0;
              }

              goto LABEL_83;
            }

LABEL_43:
            v15 = 2;
            goto LABEL_85;
          }

          if (__p != 1970302569 || BYTE4(__p) != 116)
          {
            if (__p != 1970238055 || BYTE4(__p) != 112)
            {
              return 0;
            }

            goto LABEL_84;
          }

LABEL_81:
          v15 = 1;
          goto LABEL_85;
        }

        goto LABEL_69;
      }

      if (HIBYTE(v25) == 2)
      {
        if (__p == 28265)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (HIBYTE(v25) != 3)
        {
          return v7;
        }

        if (__p == 30063 && BYTE2(__p) == 116)
        {
          goto LABEL_43;
        }
      }
    }

    return 0;
  }

  v6 = __p;
  *a2 = v27;
  *this = v6;
  return 1;
}

void sub_18F65B4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Graph::connectParameter(uint64_t a1, unsigned int a2, __int128 *a3)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connectParameter");
    std::string::basic_string[abi:ne200100]<0>(&v18, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v20, 2370, &v19, &v18);
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((a1 + 520), a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "connectParameter");
    std::string::basic_string[abi:ne200100]<0>(&v18, "connectParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v20, 2375, &v19, &v18);
  }

  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v10 = v4[5];
    v11 = v7 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = *a3;
    *(v16 + 16) = *(a3 + 2);
    v9 = 24 * v12 + 24;
    v17 = v16 - v11;
    memcpy((v16 - v11), v10, v11);
    v5[5] = v17;
    v5[6] = v9;
    v5[7] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    v9 = v7 + 24;
  }

  v5[6] = v9;
}

void sub_18F65B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

void DSPGraph::Graph::addProperty(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v35 = a2;
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v34, "addProperty");
    std::string::basic_string[abi:ne200100]<0>(&v33, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v26, 2268, &v34, &v33);
  }

  LODWORD(v26) = a2;
  std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](&v26 + 8, a3);
  v29 = a4;
  v31 = 0;
  v32 = 0;
  __p = 0;
  *&v34 = &v35;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 560), v35, &v34);
  *(v6 + 6) = v26;
  v7 = v6 + 4;
  v8 = *(v6 + 56);
  if (v8 == v28)
  {
    if (v7 != (&v26 + 8) && v8 != 0)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, *(&v26 + 1), v27, &v27[-*(&v26 + 1)]);
    }
  }

  else
  {
    if (*(v6 + 56))
    {
      v10 = *v7;
      if (v10)
      {
        v6[5] = v10;
        operator delete(v10);
      }

      v11 = 0;
    }

    else
    {
      *v7 = 0;
      v6[5] = 0;
      v6[6] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, *(&v26 + 1), v27, &v27[-*(&v26 + 1)]);
      v11 = 1;
    }

    *(v6 + 56) = v11;
  }

  *(v6 + 64) = v29;
  if (v6 + 3 != &v26)
  {
    v12 = v6[9];
    v13 = __p;
    v14 = v31;
    v15 = v31 - __p;
    v16 = v6[11];
    if (v16 - v12 < (v31 - __p))
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      if (v12)
      {
        v6[10] = v12;
        operator delete(v12);
        v16 = 0;
        v6[9] = 0;
        v6[10] = 0;
        v6[11] = 0;
      }

      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        v19 = 2 * v18;
        if (2 * v18 <= v17)
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
        }

        if (v18 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v19;
        }

        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v20);
        }
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v21 = v6[10];
    v22 = v21 - v12;
    if (v21 - v12 >= v15)
    {
      if (v31 != __p)
      {
        memmove(v12, __p, v15 - 4);
      }

      v25 = &v12[v15];
    }

    else
    {
      if (v21 != v12)
      {
        memmove(v6[9], __p, v22 - 4);
        v21 = v6[10];
      }

      v23 = &v13[v22];
      v24 = v14 - &v13[v22];
      if (v24)
      {
        memmove(v21, v23, v24 - 4);
      }

      v25 = &v21[v24];
    }

    v6[10] = v25;
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v28 == 1 && *(&v26 + 1))
  {
    v27 = *(&v26 + 1);
    operator delete(*(&v26 + 1));
  }
}

void sub_18F65BE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_18F65BEE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseWireGraphPropertyCommand(DSPGraph::Interpreter *this, const char **a2)
{
  LODWORD(v9) = 0;
  if ((DSPGraph::Interpreter::parse4cc(a2, &v9, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "parseWireGraphPropertyCommand");
    std::string::basic_string[abi:ne200100]<0>(&v5, "expected parameter ID in 'wireGraphProperty' command");
    DSPGraph::ThrowException(1886548769, &v7, 1072, &v6, &v5);
  }

  v7 = 0uLL;
  v8 = 0;
  if (!DSPGraph::Interpreter::parsePropertyEndpoint(this, a2, &v7))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "parseWireGraphPropertyCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "expected endpoint in 'wireGraphProperty' command");
    DSPGraph::ThrowException(1886548769, &v6, 1077, &v5, &v4);
  }

  DSPGraph::Graph::connectProperty(*(this + 1), v9, &v7);
}

void sub_18F65C01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

BOOL DSPGraph::Interpreter::parsePropertyEndpoint(uint64_t a1, DSPGraph *this, uint64_t a3)
{
  DSPGraph::skipspace(this, this);
  v24 = *this;
  DSPGraph::skipspace(&v24, v6);
  v7 = *v24;
  if (v7 == 40)
  {
    v23 = 0;
    ++v24;
    v22[0] = 0;
    v22[1] = 0;
    if ((DSPGraph::Interpreter::parseString(&v24, v22) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v19, "expected box name for property endpoint");
      DSPGraph::ThrowException(1886548769, &v21, 710, v20, &v19);
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(a1 + 8) + 784), v22);
    if (!v8 || (v9 = v8[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v19, "property endpoint : box not found");
      DSPGraph::ThrowException(1852204065, &v21, 714, v20, &v19);
    }

    HIDWORD(v18) = 0;
    if ((DSPGraph::Interpreter::parse4cc(&v24, (&v18 + 4), 1) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parsePropertyEndpoint");
      std::string::basic_string[abi:ne200100]<0>(&v19, "expected property ID for property endpoint");
      DSPGraph::ThrowException(1886548769, &v21, 719, v20, &v19);
    }

    LODWORD(v18) = 0;
    if (DSPGraph::Interpreter::parseScope(&v24, &v18, v10) && (*&v21 = v24, v20[0] = 0, DSPGraph::Interpreter::parseUInt64(&v21, v20, v12)) && (v13 = v20[0], !(v20[0] >> 32)))
    {
      v24 = v21;
    }

    else
    {
      v13 = 0;
    }

    DSPGraph::skipspace(&v24, v11);
    v14 = v24;
    if (*v24 != 41)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "parsePropertyEndpoint");
      DSPGraph::strprintf("expected ')' at end of property endpoint, got '%c'", *v14);
    }

    v16 = v18;
    v15 = HIDWORD(v18);
    *a3 = v9;
    *(a3 + 8) = v15;
    *(a3 + 12) = v16;
    *(a3 + 16) = v13;
    *this = v14 + 1;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  return v7 == 40;
}

void sub_18F65C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void DSPGraph::Graph::connectProperty(uint64_t a1, unsigned int a2, __int128 *a3)
{
  if (*(a1 + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "connectProperty");
    std::string::basic_string[abi:ne200100]<0>(&v21, "graph is configured");
    DSPGraph::ThrowException(1667655457, &v23, 2278, &v22, &v21);
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((a1 + 560), a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v22, "connectProperty");
    std::string::basic_string[abi:ne200100]<0>(&v21, "connectProperty : inPropertyID not found");
    DSPGraph::ThrowException(1852204065, &v23, 2283, &v22, &v21);
  }

  v5 = v4;
  v7 = v4[10];
  v6 = v4[11];
  if (v7 >= v6)
  {
    v10 = v4[9];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::allocator<DSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v14);
    }

    v15 = 24 * v11;
    v16 = *a3;
    *(v15 + 16) = *(a3 + 2);
    *v15 = v16;
    v9 = 24 * v11 + 24;
    v17 = v5[9];
    v18 = v5[10] - v17;
    v19 = v15 - v18;
    memcpy((v15 - v18), v17, v18);
    v20 = v5[9];
    v5[9] = v19;
    v5[10] = v9;
    v5[11] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    v9 = v7 + 24;
  }

  v5[10] = v9;
}

void sub_18F65C600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t *DSPGraph::Graph::pruneSubsets(uint64_t *this)
{
  v1 = this[114];
  v2 = this[113];
  if (v2 != v1)
  {
    v3 = this;
    while (*(*v2 + 48))
    {
      if (++v2 == v1)
      {
        return this;
      }
    }

    if (v2 != v1)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v1)
      {
        do
        {
          v5 = *v4;
          if (*(*v4 + 48))
          {
            *v4 = 0;
            this = std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](v2++, v5);
          }

          ++v4;
        }

        while (v4 != v1);
        v1 = v3[114];
      }
    }

    if (v2 != v1)
    {
      while (v1 != v2)
      {
        this = std::unique_ptr<DSPGraph::Subset>::reset[abi:ne200100](--v1, 0);
      }

      v3[114] = v2;
    }
  }

  return this;
}

void DSPGraph::Graph::setPropertyStrip(DSPGraph::Graph *this, const __CFDictionary *a2, const __CFString *a3)
{
  v237 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(&v204, a2);
  if (!v204)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<char const(&)[6]>(v204, "Boxes");
  if (!v4)
  {
LABEL_437:
    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
    std::string::basic_string[abi:ne200100]<0>(&v214, "'Boxes' key not found");
    DSPGraph::ThrowException(1886548769, &buf, 2046, &v226, &v214);
  }

  v5 = v4;
  CFRetain(v4);
  theArray = v5;
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(theArray);
    goto LABEL_437;
  }

  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
  }

  v180 = 0;
  spid = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
  v188 = spid - 1;
  alloc = *MEMORY[0x1E695E480];
LABEL_7:
  if (v180 < CFArrayGetCount(theArray))
  {
    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v202, theArray, v180);
    if ((v203 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
      std::string::basic_string[abi:ne200100]<0>(&v214, "BoxInfo must be a dictionary");
      DSPGraph::ThrowException(1886548769, &buf, 2056, &v226, &v214);
    }

    v7 = v202;
    if (!v202)
    {
      v156 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v156, "Could not construct");
    }

    v8 = applesauce::CF::details::at_key<char const(&)[5]>(v202, "Name");
    if (v8)
    {
      applesauce::CF::convert_as<std::string,0>(v199, v8);
      if (v201)
      {
        v9 = v200;
        if ((v200 & 0x80u) != 0)
        {
          v9 = v199[1];
        }

        if (!v9)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
          std::string::basic_string[abi:ne200100]<0>(&v214, "Box name is empty");
          DSPGraph::ThrowException(1886548769, &buf, 2065, &v226, &v214);
        }

        v10 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, v199);
        if (!v10 || (v187 = v10[5]) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
          v151 = v199;
          if ((v200 & 0x80u) != 0)
          {
            v151 = v199[0];
          }

          DSPGraph::strprintf("Box %s not found", v151);
        }

        v11 = CFStringCreateWithBytes(0, "Properties", 10, 0x8000100u, 0);
        *&buf = v11;
        if (!v11)
        {
          v155 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v155, "Could not construct");
        }

        cf = CFDictionaryGetValue(v7, v11);
        if (buf)
        {
          CFRelease(buf);
        }

        if (cf)
        {
          CFRetain(cf);
          v12 = CFGetTypeID(cf);
          if (v12 == CFArrayGetTypeID())
          {
            v193 = 0;
            v185 = v187 + 32;
            while (1)
            {
              if (v193 >= CFArrayGetCount(cf))
              {
                CFRelease(cf);
                if (v201 == 1 && v200 < 0)
                {
                  operator delete(v199[0]);
                }

                if (v203 == 1 && v202)
                {
                  CFRelease(v202);
                }

                ++v180;
                goto LABEL_7;
              }

              applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&theDict, cf, v193);
              if ((v198 & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                std::string::basic_string[abi:ne200100]<0>(&v214, "Property dictionary not found");
                DSPGraph::ThrowException(1886548769, &buf, 2084, &v226, &v214);
              }

              v13 = DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(&theDict, "PropertyID");
              if ((v13 & 0x100000000) == 0)
              {
                v13 = DSPGraph::Graph::setPropertyStrip(__CFDictionary const*,__CFString const*)::$_0::operator()<char const*>(&theDict, "Number");
                if ((v13 & 0x100000000) == 0)
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                  std::string::basic_string[abi:ne200100]<0>(&v214, "PropertyID not found");
                  DSPGraph::ThrowException(1886548769, &buf, 2104, &v226, &v214);
                }
              }

              v14 = theDict;
              if (!theDict)
              {
                v146 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v146, "Could not construct");
              }

              v190 = v13;
              v15 = applesauce::CF::details::at_key<char const(&)[6]>(theDict, "Scope");
              if (v15)
              {
                v16 = applesauce::CF::convert_as<unsigned int,0>(v15);
                if ((v16 & 0x100000000) != 0)
                {
                  v17 = v16;
                }

                else
                {
                  v17 = 0;
                }

                v191 = v17;
              }

              else
              {
                v191 = 0;
              }

              v18 = CFStringCreateWithBytes(0, "Element", 7, 0x8000100u, 0);
              *&buf = v18;
              if (!v18)
              {
                v139 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v139, "Could not construct");
              }

              Value = CFDictionaryGetValue(v14, v18);
              if (buf)
              {
                CFRelease(buf);
              }

              if (Value)
              {
                v20 = applesauce::CF::convert_as<unsigned int,0>(Value);
              }

              else
              {
                v20 = 0;
              }

              if ((v20 & 0x100000000) != 0)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v189 = v21;
              v22 = applesauce::CF::details::at_key<__CFString const*>(v14, @"FeatureFlags");
              if (!v22)
              {
                goto LABEL_109;
              }

              v23 = v22;
              CFRetain(v22);
              CFRetain(v23);
              CFRelease(v23);
              v24 = CFGetTypeID(v23);
              if (v24 != CFDictionaryGetTypeID())
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "operator()");
                caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &v214, v180, v193);
                DSPGraph::ThrowException(1886548769, &buf, 2119, &v226, &v214);
              }

              v25 = CFGetTypeID(v23);
              if (v25 != CFDictionaryGetTypeID())
              {
                v147 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v147, "Could not construct");
              }

              applesauce::CF::DictionaryRef::from_get(&v231, v23);
              applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&buf, v231);
              applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v226, v231);
              *(&v226 + 1) = (v228 - v227) >> 3;
              while (1)
              {
                if (buf && *(&buf + 1) != v234 - v233)
                {
                  v26 = v226;
                  goto LABEL_53;
                }

                v26 = v226;
                if (!v226 || *(&v226 + 1) == (v228 - v227) >> 3)
                {
                  break;
                }

LABEL_53:
                if (buf == __PAIR128__(*(&v226 + 1), v26))
                {
                  break;
                }

                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v224, &buf);
                v27 = v224;
                if (!v224 || (v28 = CFGetTypeID(v224), v28 != CFStringGetTypeID()))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v214, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v210, "operator()");
                  caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags' entry is not valid", &v222, v180, v193);
                  DSPGraph::ThrowException(1886548769, &v214, 2130, &v210, &v222);
                }

                applesauce::CF::convert_as<std::string,0>(&v214, v27);
                if (v216 == 1)
                {
                  v222 = v214;
                  v223 = v215;
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&v222, "");
                }

                v29 = v225;
                if (!v225 || (v30 = CFGetTypeID(v225), v30 != CFDictionaryGetTypeID()))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v214, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v210, "operator()");
                  if (SHIBYTE(v223) >= 0)
                  {
                    v144 = &v222;
                  }

                  else
                  {
                    v144 = v222;
                  }

                  caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", __p, v180, v193, v144);
                  DSPGraph::ThrowException(1886548769, &v214, 2136, &v210, __p);
                }

                v31 = CFGetTypeID(v29);
                if (v31 != CFDictionaryGetTypeID())
                {
                  v145 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v145, "Could not construct");
                }

                applesauce::CF::DictionaryRef::from_get(&v219, v29);
                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v214, v219);
                applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v210, v219);
                v210.__r_.__value_.__l.__size_ = (v211 - v210.__r_.__value_.__r.__words[2]) >> 3;
                while (1)
                {
                  if (v214 && *(&v214 + 1) != (v216 - v215) >> 3)
                  {
                    v32 = v210.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v32 = v210.__r_.__value_.__r.__words[0];
                    if (!v210.__r_.__value_.__r.__words[0] || v210.__r_.__value_.__l.__size_ == (v211 - v210.__r_.__value_.__r.__words[2]) >> 3)
                    {
LABEL_78:
                      v39 = 0;
                      v40 = 1;
                      goto LABEL_80;
                    }
                  }

                  if (v214 == __PAIR128__(v210.__r_.__value_.__l.__size_, v32))
                  {
                    goto LABEL_78;
                  }

                  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&v208, &v214);
                  v33 = v208;
                  if (!v208 || (v34 = CFGetTypeID(v208), v34 != CFStringGetTypeID()))
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(anURL, "operator()");
                    if (SHIBYTE(v223) >= 0)
                    {
                      v143 = &v222;
                    }

                    else
                    {
                      v143 = v222;
                    }

                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s' entry is not valid", &v206, v180, v193, v143);
                    DSPGraph::ThrowException(1886548769, __p, 2144, anURL, &v206);
                  }

                  applesauce::CF::convert_to<std::string,0>(__p, v33);
                  v35 = v209;
                  if (!v209 || (v36 = CFGetTypeID(v209), v36 != CFBooleanGetTypeID()))
                  {
                    std::string::basic_string[abi:ne200100]<0>(anURL, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v206, "operator()");
                    v141 = &v222;
                    if (SHIBYTE(v223) < 0)
                    {
                      v141 = v222;
                    }

                    v142 = __p;
                    if (v221 < 0)
                    {
                      v142 = __p[0];
                    }

                    caulk::make_string("property strip 'Boxes[%zu].Properties[%zu].FeatureFlags.%s.%s' entry is not valid", v205, v180, v193, v141, v142);
                    DSPGraph::ThrowException(1886548769, anURL, 2150, &v206, v205);
                  }

                  v37 = applesauce::CF::convert_to<BOOL,0>(v35);
                  v38 = _os_feature_enabled_impl();
                  if (v221 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  CFRelease(v35);
                  CFRelease(v33);
                  if ((v37 ^ v38))
                  {
                    break;
                  }

                  ++*(&v214 + 1);
                }

                v40 = 0;
                v39 = 1;
LABEL_80:
                if (v212)
                {
                  v213 = v212;
                  operator delete(v212);
                }

                if (v210.__r_.__value_.__r.__words[2])
                {
                  v211 = v210.__r_.__value_.__r.__words[2];
                  operator delete(v210.__r_.__value_.__r.__words[2]);
                }

                if (v217)
                {
                  v218 = v217;
                  operator delete(v217);
                }

                if (v215)
                {
                  v216 = v215;
                  operator delete(v215);
                }

                if (v219)
                {
                  CFRelease(v219);
                }

                if (SHIBYTE(v223) < 0)
                {
                  operator delete(v222);
                }

                CFRelease(v29);
                CFRelease(v27);
                if (!v40)
                {
                  goto LABEL_95;
                }

                ++*(&buf + 1);
              }

              v39 = 2;
LABEL_95:
              if (v229)
              {
                v230 = v229;
                operator delete(v229);
              }

              if (v227)
              {
                v228 = v227;
                operator delete(v227);
              }

              if (v235)
              {
                v236 = v235;
                operator delete(v235);
              }

              if (v233)
              {
                v234 = v233;
                operator delete(v233);
              }

              if (v231)
              {
                CFRelease(v231);
              }

              if (v39)
              {
                v41 = 0;
              }

              else
              {
                v41 = -1;
              }

              CFRelease(v23);
              if (v41)
              {
LABEL_109:
                v42 = theDict;
                *&v206 = CFDictionaryGetValue(theDict, @"Value");
                if (v206)
                {
                  if (DSPGraph::getLog(void)::onceToken != -1)
                  {
                    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                  }

                  if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v43 = DSPGraph::getLog(void)::gLog;
                    if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                    {
                      v44 = v187 + 32;
                      if (v187[55] < 0)
                      {
                        v44 = *v185;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = v44;
                      _os_signpost_emit_with_name_impl(&dword_18F5DF000, v43, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                    }
                  }

                  v45 = (*(*v187 + 312))(v187, v190, v191, v189, 8, &v206);
                  if (DSPGraph::getLog(void)::onceToken != -1)
                  {
                    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                  }

                  if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v46 = DSPGraph::getLog(void)::gLog;
                    if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                    {
                      v47 = v187 + 32;
                      if (v187[55] < 0)
                      {
                        v47 = *v185;
                      }

                      LODWORD(buf) = 136315138;
                      *(&buf + 4) = v47;
                      _os_signpost_emit_with_name_impl(&dword_18F5DF000, v46, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                    }
                  }

                  if (v45)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                    v148 = v199;
                    if ((v200 & 0x80u) != 0)
                    {
                      v148 = v199[0];
                    }

                    DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v148, v190, v191, v189, v45);
                  }

                  goto LABEL_316;
                }

                if (!v42)
                {
                  v149 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v149, "Could not construct");
                }

                v48 = applesauce::CF::details::at_key<char const(&)[5]>(v42, "Data");
                if (v48)
                {
                  v49 = v48;
                  CFRetain(v48);
                  v50 = CFGetTypeID(v49);
                  if (v50 == CFDataGetTypeID())
                  {
                    *&v222 = v49;
                    BYTE8(v222) = 1;
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v51 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v52 = v187 + 32;
                        if (v187[55] < 0)
                        {
                          v52 = *v185;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = v52;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v51, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                      }
                    }

                    Length = CFDataGetLength(v49);
                    BytePtr = CFDataGetBytePtr(v49);
                    v55 = (*(*v187 + 312))(v187, v190, v191, v189, Length, BytePtr);
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v56 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v57 = v187 + 32;
                        if (v187[55] < 0)
                        {
                          v57 = *v185;
                        }

                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = v57;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v56, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                      }
                    }

                    if (v55)
                    {
                      std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                      v150 = v199;
                      if ((v200 & 0x80u) != 0)
                      {
                        v150 = v199[0];
                      }

                      DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v150, v190, v191, v189, v55);
                    }

                    goto LABEL_313;
                  }

                  CFRelease(v49);
                }

                LOBYTE(v222) = 0;
                BYTE8(v222) = 0;
                v58 = applesauce::CF::details::at_key<char const*&>(v42, "UInt32");
                if (!v58 || (v59 = applesauce::CF::convert_as<unsigned int,0>(v58), (v59 & 0x100000000) == 0))
                {
                  v60 = applesauce::CF::details::at_key<char const*&>(v42, "UInt32");
                  if (v60 && (v61 = v60, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v61)))
                  {
                    Count = CFArrayGetCount(v61);
                    if (Count << 32)
                    {
                      Count = Count;
                      if (!(Count >> 62))
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](Count);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v182 = 0;
                    if (Count >= 1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v61, 0);
                      if ((applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex) & 0x100000000) != 0)
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v182 = v3 & 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v182 = v3 & 0xFFFFFFFFFFFFFF00;
                  }

                  v64 = theDict;
                  if (!theDict)
                  {
                    goto LABEL_374;
                  }

                  v65 = applesauce::CF::details::at_key<char const*&>(theDict, "UInt64");
                  if (v65)
                  {
                    v66 = applesauce::CF::convert_as<unsigned long long,0>(v65);
                    if (v67)
                    {
                      __p[0] = v66;
                      v68 = (*(*v187 + 312))(v187, v190, v191, v189, 8, __p);
                      if (v68)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "applyPropertyStripScalarValue");
                        if (v187[55] < 0)
                        {
                          v185 = *v185;
                        }

                        std::to_string(&v210, __p[0]);
                        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v154 = &v210;
                        }

                        else
                        {
                          v154 = v210.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v185, v190, v191, v189, v154, "UInt64", v68);
                      }

LABEL_312:
                      v3 = v182;
                      goto LABEL_313;
                    }
                  }

                  v69 = applesauce::CF::details::at_key<char const*&>(v64, "UInt64");
                  if (v69 && (v70 = v69, v71 = CFArrayGetTypeID(), v71 == CFGetTypeID(v70)))
                  {
                    v72 = CFArrayGetCount(v70);
                    buf = 0uLL;
                    v233 = 0;
                    std::vector<unsigned long long>::reserve(&buf, v72);
                    if (v72 > 0)
                    {
                      v73 = 0;
                      v183 = v72 & 0x7FFFFFFF;
                      v74 = *(&buf + 1);
                      v75 = v233;
                      __src = buf;
                      while (1)
                      {
                        v76 = CFArrayGetValueAtIndex(v70, v73);
                        v77 = applesauce::CF::convert_as<unsigned long long,0>(v76);
                        if ((v78 & 1) == 0)
                        {
                          break;
                        }

                        v79 = v77;
                        if (v74 >= v75)
                        {
                          v80 = v74 - __src;
                          v81 = (v74 - __src) >> 3;
                          v82 = v81 + 1;
                          if ((v81 + 1) >> 61)
                          {
                            *(&buf + 1) = v74;
                            v233 = v75;
                            *&buf = __src;
                            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                          }

                          if ((v75 - __src) >> 2 > v82)
                          {
                            v82 = (v75 - __src) >> 2;
                          }

                          if ((v75 - __src) >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v83 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v83 = v82;
                          }

                          if (v83)
                          {
                            std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v83);
                          }

                          v75 = 0;
                          *(8 * v81) = v79;
                          v74 = (8 * v81 + 8);
                          memcpy(0, __src, v80);
                          if (__src)
                          {
                            operator delete(__src);
                          }

                          __src = 0;
                        }

                        else
                        {
                          *v74++ = v77;
                        }

                        if (v183 == ++v73)
                        {
                          goto LABEL_186;
                        }
                      }

                      v233 = v75;
                      *&buf = __src;
                      if (__src)
                      {
                        *(&buf + 1) = __src;
                        operator delete(__src);
                      }

                      goto LABEL_192;
                    }

                    v74 = *(&buf + 1);
                    __src = buf;
LABEL_186:
                    if (__src != v74)
                    {
                      v86 = (*(*v187 + 312))(v187, v190, v191, v189, (v74 - __src) & 0xFFFFFFF8, __src);
                      if (v86)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "applyPropertyStripScalarValue");
                        if (v187[55] < 0)
                        {
                          v185 = *v185;
                        }

                        std::to_string(&v210, *__src);
                        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v164 = &v210;
                        }

                        else
                        {
                          v164 = v210.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to [%s, ...] from property strip key %s failed with error %d", v185, v190, v191, v189, v164, "UInt64", v86);
                      }

                      if (__src)
                      {
                        operator delete(__src);
                        v181 = __src;
                      }

                      else
                      {
                        v181 = 0;
                      }

                      goto LABEL_312;
                    }

                    if (v74)
                    {
                      operator delete(__src);
                    }

                    v181 = __src;
                  }

                  else
                  {
LABEL_192:
                    v181 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v87 = theDict;
                  if (!theDict)
                  {
                    goto LABEL_374;
                  }

                  v88 = applesauce::CF::details::at_key<char const*&>(theDict, "Float32");
                  if (v88)
                  {
                    v89 = applesauce::CF::convert_as<float,0>(v88);
                    if (v89 >> 32)
                    {
                      LODWORD(__p[0]) = v89;
                      v103 = (*(*v187 + 312))(v187, v190, v191, v189, 4, __p);
                      if (v103)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "applyPropertyStripScalarValue");
                        if (v187[55] < 0)
                        {
                          v185 = *v185;
                        }

                        std::to_string(&v210, *__p);
                        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v158 = &v210;
                        }

                        else
                        {
                          v158 = v210.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v185, v190, v191, v189, v158, "Float32", v103);
                      }

                      goto LABEL_312;
                    }
                  }

                  v90 = applesauce::CF::details::at_key<char const*&>(v87, "Float32");
                  if (v90 && (v91 = v90, v92 = CFArrayGetTypeID(), v92 == CFGetTypeID(v91)))
                  {
                    v93 = CFArrayGetCount(v91);
                    if (v93 << 32)
                    {
                      v93 = v93;
                      if (!(v93 >> 62))
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v93);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v93 < 1)
                    {
                      v179 = 0;
                    }

                    else
                    {
                      v136 = CFArrayGetValueAtIndex(v91, 0);
                      if (applesauce::CF::convert_as<float,0>(v136) >> 32)
                      {
                        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v179 &= 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v179 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v94 = theDict;
                  if (!theDict)
                  {
LABEL_374:
                    v153 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v153, "Could not construct");
                  }

                  v95 = applesauce::CF::details::at_key<char const*&>(theDict, "Float64");
                  if (v95)
                  {
                    v96 = applesauce::CF::convert_as<double,0>(v95);
                    if (v97)
                    {
                      __p[0] = v96;
                      v98 = (*(*v187 + 312))(v187, v190, v191, v189, 8, __p);
                      if (v98)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "applyPropertyStripScalarValue");
                        if (v187[55] < 0)
                        {
                          v185 = *v185;
                        }

                        std::to_string(&v210, *__p);
                        if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v161 = &v210;
                        }

                        else
                        {
                          v161 = v210.__r_.__value_.__r.__words[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v185, v190, v191, v189, v161, "Float64", v98);
                      }

                      goto LABEL_312;
                    }
                  }

                  v99 = applesauce::CF::details::at_key<char const*&>(v94, "Float64");
                  if (v99 && (v100 = v99, v101 = CFArrayGetTypeID(), v101 == CFGetTypeID(v100)))
                  {
                    v102 = CFArrayGetCount(v100);
                    if (v102 << 32)
                    {
                      v102 = v102;
                      if (!(v102 >> 61))
                      {
                        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v102);
                      }

                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v102 < 1)
                    {
                      v177 = 0;
                    }

                    else
                    {
                      v137 = CFArrayGetValueAtIndex(v100, 0);
                      applesauce::CF::convert_as<double,0>(v137);
                      if (v138)
                      {
                        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](1uLL);
                      }

                      v177 &= 0xFFFFFFFFFFFFFF00;
                    }
                  }

                  else
                  {
                    v177 &= 0xFFFFFFFFFFFFFF00;
                  }

                  v104 = theDict;
                  if (!theDict)
                  {
                    v157 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v157, "Could not construct");
                  }

                  v105 = CFStringCreateWithBytes(0, "FilePath", 8, 0x8000100u, 0);
                  *&buf = v105;
                  if (!v105)
                  {
                    v140 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v140, "Could not construct");
                  }

                  v106 = CFDictionaryGetValue(v104, v105);
                  if (buf)
                  {
                    CFRelease(buf);
                  }

                  if (v106)
                  {
                    CFRetain(v106);
                    v107 = CFGetTypeID(v106);
                    if (v107 == CFStringGetTypeID())
                    {
                      __p[0] = v106;
                      LOBYTE(__p[1]) = 1;
                      DSPGraph::createAbsoluteURL(anURL, v106, a3);
                      if (!anURL[0])
                      {
                        v167 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v167, "Could not construct");
                      }

                      v108 = CFURLCopyFileSystemPath(anURL[0], kCFURLPOSIXPathStyle);
                      v205[0] = v108;
                      if (!v108)
                      {
                        goto LABEL_395;
                      }

                      v109 = CFGetTypeID(v108);
                      if (v109 != CFStringGetTypeID())
                      {
                        v165 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v165, "Could not construct");
                      }

                      if (!v205[0])
                      {
LABEL_395:
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        if (__p[1])
                        {
                          v159 = applesauce::CF::StringRef::operator->(__p);
                          std::string::basic_string[abi:ne200100]<0>(v196, "???");
                          applesauce::CF::StringRef_proxy::convert_or(&v210, *v159, v196);
                          if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v160 = &v210;
                          }

                          else
                          {
                            v160 = v210.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't create file path '%s'. CFURLCopyFileSystemPath failed.", v160);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v210.__r_.__value_.__l.__data_ = v205[0];
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v110 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v111 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v111 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v111;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v110, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v112 = (*(*v187 + 312))(v187, v190, v191, v189, 8, &v210);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v113 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v114 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v114 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v114;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v113, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v112)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        v166 = v199;
                        if ((v200 & 0x80u) != 0)
                        {
                          v166 = v199[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v166, v190, v191, v189, v112);
                      }

                      if (v205[0])
                      {
                        CFRelease(v205[0]);
                      }

                      v115 = anURL[0];
                      if (anURL[0])
                      {
LABEL_297:
                        CFRelease(v115);
                      }

LABEL_298:
                      if (LOBYTE(__p[1]) == 1 && __p[0])
                      {
                        CFRelease(__p[0]);
                      }

                      goto LABEL_312;
                    }

                    CFRelease(v106);
                  }

                  LOBYTE(__p[0]) = 0;
                  LOBYTE(__p[1]) = 0;
                  v116 = applesauce::CF::details::at_key<char const(&)[5]>(v104, "Path");
                  if (v116)
                  {
                    v117 = v116;
                    CFRetain(v116);
                    v118 = CFGetTypeID(v117);
                    if (v118 == CFStringGetTypeID())
                    {
                      anURL[0] = v117;
                      LOBYTE(anURL[1]) = 1;
                      DSPGraph::createAbsoluteURL(v205, v117, a3);
                      v119 = CFReadStreamCreateWithFile(alloc, v205[0]);
                      v120 = v119;
                      v224 = v119;
                      if (!v119)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        if (anURL[1])
                        {
                          v169 = applesauce::CF::StringRef::operator->(anURL);
                          std::string::basic_string[abi:ne200100]<0>(v195, "???");
                          applesauce::CF::StringRef_proxy::convert_or(&v210, *v169, v195);
                          if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v170 = &v210;
                          }

                          else
                          {
                            v170 = v210.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't load plist from path '%s'. CFReadStreamCreateWithFile failed.", v170);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      CFReadStreamOpen(v119);
                      v121 = CFPropertyListCreateWithStream(alloc, v120, 0, 0, 0, 0);
                      v208 = v121;
                      CFReadStreamClose(v120);
                      if (!v121)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        if (anURL[1])
                        {
                          v171 = applesauce::CF::StringRef::operator->(anURL);
                          std::string::basic_string[abi:ne200100]<0>(v194, "???");
                          applesauce::CF::StringRef_proxy::convert_or(&v210, *v171, v194);
                          if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v172 = &v210;
                          }

                          else
                          {
                            v172 = v210.__r_.__value_.__r.__words[0];
                          }

                          DSPGraph::strprintf("Couldn't load plist from path '%s'. CFPropertyListCreateWithStream failed.", v172);
                        }

                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v210.__r_.__value_.__r.__words[0] = v121;
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v122 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v123 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v123 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v123;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v122, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v124 = (*(*v187 + 312))(v187, v190, v191, v189, 8, &v210);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v125 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v126 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v126 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v126;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v125, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v124)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        v168 = v199;
                        if ((v200 & 0x80u) != 0)
                        {
                          v168 = v199[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v168, v190, v191, v189, v124);
                      }

                      CFRelease(v121);
                      CFRelease(v120);
                      v127 = v205[0];
                      if (v205[0])
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_295;
                    }

                    CFRelease(v117);
                  }

                  LOBYTE(anURL[0]) = 0;
                  LOBYTE(anURL[1]) = 0;
                  v128 = CFStringCreateWithBytes(0, "URL", 3, 0x8000100u, 0);
                  *&buf = v128;
                  if (!v128)
                  {
                    v163 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v163, "Could not construct");
                  }

                  v129 = CFDictionaryGetValue(v104, v128);
                  if (buf)
                  {
                    CFRelease(buf);
                  }

                  if (v129)
                  {
                    CFRetain(v129);
                    v130 = CFGetTypeID(v129);
                    if (v130 == CFStringGetTypeID())
                    {
                      v210.__r_.__value_.__r.__words[0] = v129;
                      v210.__r_.__value_.__s.__data_[8] = 1;
                      DSPGraph::createAbsoluteURL(v205, v129, a3);
                      v224 = v205[0];
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v131 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v132 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v132 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v132;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v131, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      v133 = (*(*v187 + 312))(v187, v190, v191, v189, 8, &v224);
                      if (DSPGraph::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                      }

                      if (v188 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v134 = DSPGraph::getLog(void)::gLog;
                        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                        {
                          v135 = v187 + 32;
                          if (v187[55] < 0)
                          {
                            v135 = *v185;
                          }

                          LODWORD(buf) = 136315138;
                          *(&buf + 4) = v135;
                          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v134, OS_SIGNPOST_INTERVAL_END, spid, "Box::setProperty", "%s", &buf, 0xCu);
                        }
                      }

                      if (v133)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                        v162 = v199;
                        if ((v200 & 0x80u) != 0)
                        {
                          v162 = v199[0];
                        }

                        DSPGraph::strprintf("%s setProperty %u %u %u failed with error %d", v162, v190, v191, v189, v133);
                      }

                      if (v205[0])
                      {
                        CFRelease(v205[0]);
                      }

                      if (v210.__r_.__value_.__s.__data_[8] == 1)
                      {
                        v127 = v210.__r_.__value_.__r.__words[0];
                        if (v210.__r_.__value_.__r.__words[0])
                        {
LABEL_294:
                          CFRelease(v127);
                        }
                      }

LABEL_295:
                      if (LOBYTE(anURL[1]) == 1)
                      {
                        v115 = anURL[0];
                        if (anURL[0])
                        {
                          goto LABEL_297;
                        }
                      }

                      goto LABEL_298;
                    }

                    CFRelease(v129);
                  }

                  v210.__r_.__value_.__s.__data_[0] = 0;
                  v210.__r_.__value_.__s.__data_[8] = 0;
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
                  std::string::basic_string[abi:ne200100]<0>(&v214, "Must provide either a 'Value', 'Data', 'Path', 'FilePath', 'URL', or a recognized number type for properties");
                  DSPGraph::ThrowException(1886548769, &buf, 2255, &v226, &v214);
                }

                LODWORD(__p[0]) = v59;
                v84 = (*(*v187 + 312))(v187, v190, v191, v189, 4, __p);
                if (v84)
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&v226, "applyPropertyStripScalarValue");
                  if (v187[55] < 0)
                  {
                    v185 = *v185;
                  }

                  std::to_string(&v210, __p[0]);
                  if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v152 = &v210;
                  }

                  else
                  {
                    v152 = v210.__r_.__value_.__r.__words[0];
                  }

                  DSPGraph::strprintf("%s setProperty %u %u %u to %s from property strip key %s failed with error %d", v185, v190, v191, v189, v152, "UInt32", v84);
                }

LABEL_313:
                if (BYTE8(v222) == 1 && v222)
                {
                  CFRelease(v222);
                }
              }

LABEL_316:
              if (v198 == 1 && theDict)
              {
                CFRelease(theDict);
              }

              ++v193;
            }
          }

          CFRelease(cf);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
        std::string::basic_string[abi:ne200100]<0>(&v214, "'Properties' array not found in BoxInfo dictionary");
        DSPGraph::ThrowException(1886548769, &buf, 2075, &v226, &v214);
      }
    }

    else
    {
      LOBYTE(v199[0]) = 0;
      v201 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v226, "setPropertyStrip");
    std::string::basic_string[abi:ne200100]<0>(&v214, "'Name' not found in BoxInfo dictionary");
    DSPGraph::ThrowException(1886548769, &buf, 2062, &v226, &v214);
  }

  CFRelease(theArray);
  if (v204)
  {
    CFRelease(v204);
  }
}

void sub_18F65FF4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFTypeRef a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, CFTypeRef cf, char a59, CFTypeRef a60)
{
  if (a57 == 1 && a56 < 0)
  {
    operator delete(__p);
  }

  if ((a59 & 1) != 0 && cf)
  {
    CFRelease(cf);
  }

  if (a21)
  {
    CFRelease(a21);
  }

  if (a60)
  {
    CFRelease(a60);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF54(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CFTypeRef a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, const void *a58, char a59, const void *a60)
{
  __cxa_free_exception(v60);
  std::optional<applesauce::CF::DataRef>::~optional(&STACK[0x280]);
  if (a50 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  if (a57 == 1 && a56 < 0)
  {
    operator delete(a51);
  }

  if ((a59 & 1) != 0 && a58)
  {
    CFRelease(a58);
  }

  if (a21)
  {
    CFRelease(a21);
  }

  if (a60)
  {
    CFRelease(a60);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FF90(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F65FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (*(v50 - 225) < 0)
  {
    operator delete(*(v50 - 248));
  }

  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F660000()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  CFRelease(v0);
  JUMPOUT(0x18F660360);
}

void sub_18F660084(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F660094()
{
  __cxa_free_exception(v0);
  CFRelease(v1);
  JUMPOUT(0x18F660360);
}

void sub_18F6600A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {
    *(v34 - 168) = v32;
    *(v34 - 160) = v33;
    *(v34 - 176) = a32;
    JUMPOUT(0x18F66042CLL);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6600C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  __cxa_free_exception(v50);
  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F660108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49, char a50)
{
  if (a50 == 1 && a49)
  {
    CFRelease(a49);
  }

  if (a38)
  {
    CFRelease(a38);
  }

  JUMPOUT(0x18F660388);
}

void sub_18F66011C()
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (STACK[0x2A0])
  {
    CFRelease(STACK[0x2A0]);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v3 = *(v2 - 208);
  if (v3)
  {
    *(v2 - 200) = v3;
    operator delete(v3);
  }

  v4 = *(v2 - 232);
  if (v4)
  {
    *(v2 - 224) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 136);
  if (v5)
  {
    *(v2 - 128) = v5;
    operator delete(v5);
  }

  v6 = *(v2 - 160);
  if (v6)
  {
    *(v2 - 152) = v6;
    operator delete(v6);
  }

  v7 = *(v2 - 184);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v1);
  JUMPOUT(0x18F660360);
}

void sub_18F6603D8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603E0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603E8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603F0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F6603F4);
  }

  JUMPOUT(0x18F660424);
}

void sub_18F6603F8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F6603FCLL);
  }

  __clang_call_terminate(a1);
}

void sub_18F66041C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void *applesauce::CF::details::at_key<char const(&)[6]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_18F6604E8(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F660498);
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_6:
    v9 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v7;
  v9 = 1;
LABEL_7:
  a1[8] = v9;
}

const void *applesauce::CF::details::at_key<char const(&)[5]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}