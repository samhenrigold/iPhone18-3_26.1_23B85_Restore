uint64_t ___getPreSmartSet_block_invoke()
  v0 = {;
  v1 = _getPreSmartSet___preSmartSet;
  _getPreSmartSet___preSmartSet = v0;

  v2 = _getPreSmartSet___preSmartSet;
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [_getPreSmartSet___preSmartSet addCharactersInRange:{161, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{163, 3}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{167, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{169, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{171, 4}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{177, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{182, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{187, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{191, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8208, 6}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8216, 8}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8226, 6}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8249, 1}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8259, 3}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{8352, 22}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{4352, 256}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{11904, 352}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{12272, 464}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{12800, 29392}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{44032, 11183}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{63744, 352}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{65072, 32}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{65280, 240}];
  [_getPreSmartSet___preSmartSet addCharactersInRange:{0x20000, 42711}];
  v4 = _getPreSmartSet___preSmartSet;

  return [v4 addCharactersInRange:{194560, 542}];
}

void ___getPostSmartSet_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:{@"]., :?'!%*-/}>"}]);;
  v1 = _getPostSmartSet___postSmartSet;
  _getPostSmartSet___postSmartSet = v0;

  v2 = _getPostSmartSet___postSmartSet;
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [_getPostSmartSet___postSmartSet addCharactersInRange:{162, 1}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{170, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{173, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{176, 1}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{178, 3}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{185, 3}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8208, 6}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8216, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8220, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8224, 2}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8228, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8240, 5}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8250, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8262, 4}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8240, 5}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{8304, 37}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{4352, 256}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{11904, 352}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{12272, 464}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{12800, 29392}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{44032, 11183}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{63744, 352}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{65072, 32}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{65280, 240}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{0x20000, 42711}];
  [_getPostSmartSet___postSmartSet addCharactersInRange:{194560, 542}];
  v4 = _getPostSmartSet___postSmartSet;
  v5 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v5];
}

void sub_26B45785C(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v4, 0x60C4044C4A2DFLL);

  _Unwind_Resume(a1);
}

CMDPFst **std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100](CMDPFst **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CMDPFst::~CMDPFst(v2);
    MEMORY[0x26D6787B0]();
  }

  return a1;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_26B458478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_26B4586BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, CMDPFst *a15)
{
  if (__p)
  {
    [CMDPGrammar addAdlibFstWithLabel:? outputIndex:?];
  }

  std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_26B4588C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    (*(*__p + 8))(__p, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100]((v21 - 40));
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF5288, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

CMDPNormalizer *std::unique_ptr<CMDPNormalizer>::reset[abi:ne200100](CMDPNormalizer **a1, CMDPNormalizer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CMDPNormalizer::~CMDPNormalizer(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

void CMDPFst::~CMDPFst(CMDPFst *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__construct_one_at_end[abi:ne200100]<std::string const&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, __int128 *a2, uint64_t *a3)
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

std::string::value_type *std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v26 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(a1, v9);
  }

  v10 = (32 * v3);
  v22 = 0;
  v23 = v10;
  v11 = 0;
  v24 = v10;
  v25 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v23;
    v14 = v24;
    v11 = v25;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v15 = *a3;
  *a3 = 0;
  v10[1].__r_.__value_.__r.__words[0] = v15;
  v16 = &v14[1].__r_.__value_.__s.__data_[8];
  v17 = *(a1 + 8) - *a1;
  v18 = v13 - v17;
  memcpy(v13 - v17, *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v16;
  v20 = *(a1 + 16);
  *(a1 + 16) = v11;
  v24 = v19;
  v25 = v20;
  v22 = v19;
  v23 = v19;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(&v22);
  return v16;
}

void sub_26B459058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::clear[abi:ne200100](void *result)
{
  v2 = result[1];
  for (i = result[2]; i != v2; i = result[2])
  {
    v4 = result[4];
    result[2] = i - 32;
    std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](v4, i - 32);
  }
}

void std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__emplace_back_slow_path<char const*&,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>>(a1, v9);
  }

  v18 = 0;
  v19 = 32 * v3;
  v20 = 32 * v3;
  v21 = 0;
  v10 = std::string::basic_string[abi:ne200100]<0>((32 * v3), *a2);
  v11 = *a3;
  *a3 = 0;
  v10[3] = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v19 - v13;
  memcpy((v19 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(&v18);
  return v12;
}

void sub_26B459360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::allocator<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_26B4614B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B462558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B463104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_26B4631E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_26B463428(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x60C4044C4A2DFLL);

  _Unwind_Resume(a1);
}

void sub_26B46376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::vector<std::vector<std::pair<std::string,std::string>>>::__destroy_vector::operator()[abi:ne200100](va);

  (*(*v22 + 8))(v22);
  _Unwind_Resume(a1);
}

void sub_26B464254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  a23 = a10;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<CMDPToken>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
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

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<CMDPToken>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void **std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, v10);
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
    result = std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::~__split_buffer(v16);
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

void **std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, v10);
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
    result = std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::~__split_buffer(v16);
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

void sub_26B464A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  a44 = a10;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&a44);

  _Unwind_Resume(a1);
}

void sub_26B464CDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6787B0](v17, 0x1012C408B718000, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF5290, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](void *****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::default_delete<CMDPToken>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<CMDPToken>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CMDPToken>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<CMDPToken>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
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
      std::default_delete<CMDPToken>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<unsigned int ()(CMDPToken const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::vector<std::pair<std::string,std::string>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CMDPToken>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<CMDPToken>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<CMDPToken>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<CMDPToken>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

_BYTE *OUTLINED_FUNCTION_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t AllValidCommandParameterIdentifiers(uint64_t a1, uint64_t a2)
{
  if (AllValidCommandParameterIdentifiers_staticValidLMIdentifierSetup != -1)
  {
    AllValidCommandParameterIdentifiers_cold_1();
  }

  return AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet;
}

uint64_t __AllValidCommandParameterIdentifiers_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB58]);
  AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet = [v0 initWithObjects:{kSRCSCommandParameterSwitchableApplication[0], kSRCSCommandParameterRunningApplication[0], kSRCSCommandParameterMenuBarItem[0], kSRCSCommandParameterMenuItem[0], kSRCSCommandParameterWindowItem[0], kSRCSCommandParameterWindowItem2[0], kSRCSCommandParameterModifierKeys[0], kSRCSCommandParameterKeyboardKeyName[0], kSRCSCommandParameterDictation[0], kSRCSCommandParameterDictation2[0], kSRCSCommandParameterOverlayLabel[0], kSRCSCommandParameterOverlayLabel2[0], kSRCSCommandParameterTextSegmentCardinalNumber[0], kSRCSCommandParameterScreenDistanceCardinalNumber[0], kSRCSCommandParameterDeviceName[0], kSRCSCommandParameterNumberZeroThroughOneHundred[0], kSRCSCommandParameterNumberTwoThroughNinetyNine[0], kSRCSCommandParameterNumberTwoThroughNinetyNine2[0], 0}];

  return MEMORY[0x2821F96F8]();
}

BOOL IsValidCommandParameterIdentifier(uint64_t a1, uint64_t a2)
{
  if (AllValidCommandParameterIdentifiers_staticValidLMIdentifierSetup != -1)
  {
    AllValidCommandParameterIdentifiers_cold_1();
  }

  v3 = [AllValidCommandParameterIdentifiers_sValidBuiltInLMIdentifierSet member:a1];
  v4 = v3 != 0;

  return v4;
}

id SRCSLogGeneral(uint64_t a1)
{
  if (SRCSLogGeneral_onceToken != -1)
  {
    SRCSLogGeneral_cold_1();
  }

  v2 = SRCSLogGeneral_sLogGeneral;

  return v2;
}

uint64_t __SRCSLogGeneral_block_invoke()
{
  SRCSLogGeneral_sLogGeneral = os_log_create("com.apple.speech.SpeechRecognitionCommandServices", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_26B46ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B46BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 184), 8);
  _Block_object_dispose((v33 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t yyparse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v5 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v6 = v45;
  v7 = 200;
  memset(v45, 0, 512);
  yynerrs = 0;
  yychar = -2;
  value = *MEMORY[0x277CBED28];
  v8 = v45;
  v9 = v46;
  v10 = v46;
  while (1)
  {
    *v9 = v5;
    if (&v10[2 * v7 - 2] <= v9)
    {
      break;
    }

LABEL_12:
    if ((0xF4C2uLL >> v5))
    {
      goto LABEL_27;
    }

    v14 = yypact[v5];
    v15 = yychar;
    if (yychar == -2)
    {
      v15 = yylex();
      yychar = v15;
    }

    if (v15 <= 0)
    {
      v16 = 0;
      yychar = 0;
    }

    else
    {
      v16 = v15 > 0x103 ? 2 : yytranslate[v15];
    }

    v17 = (v16 + v14);
    if (v17 > 0x16 || v16 != yycheck[v17])
    {
LABEL_27:
      if (((0xB1DuLL >> v5) & 1) == 0)
      {
        v18 = yydefact[v5];
        v19 = yyr2[yydefact[v5]];
        v20 = v6[1 - v19];
        if (v18 <= 5)
        {
          if (v18 > 3)
          {
            v20 = *v6;
          }

          else if (v18 == 2)
          {
            CommandParseDictionary = CreateCommandParseDictionary(0, *v6, 0, v4);
            if (!CommandParseDictionary || (v20 = CommandParseDictionary, !*v6))
            {
              bzero(buffer, 0x1388uLL);
              v32 = @"Nil parameter in ': spokenCommandStringComponent'";
              goto LABEL_71;
            }

            CFRelease(*v6);
            sResultDictionary = v20;
          }

          else if (v18 == 3)
          {
            v22 = *(v6 - 2);
            if (v22 && *v6)
            {
              v23 = CFDictionaryGetValue(v22, kSRCSCommandParseDictionaryKeyChildren[0]);
              if (v23)
              {
                CFArrayAppendValue(v23, *v6);
              }

              else
              {
                bzero(buffer, 0x1388uLL);
                CFStringGetCString(@"Nil children in '| spokenCommandList '|' spokenCommandStringComponent'", buffer, 5000, 0x8000100u);
                yyerror(buffer);
              }

              CFRelease(*v6);
              v20 = *(v6 - 2);
              goto LABEL_76;
            }

            bzero(buffer, 0x1388uLL);
            v32 = @"Nil parameter in '| spokenCommandList '|' spokenCommandStringComponent'";
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (v18 > 7)
        {
          switch(v18)
          {
            case 8:
              v27 = CFDictionaryGetValue(*(v6 - 1), kSRCSCommandParseDictionaryKeyAttributes[0]);
              if (v27)
              {
                CFDictionaryAddValue(v27, kSRCSCommandParseAttributeOptional[0], value);
              }

              else
              {
                bzero(buffer, 0x1388uLL);
                CFStringGetCString(@"Nil attribute in ': '[' spokenCommandStringComponent ']''", buffer, 5000, 0x8000100u);
                yyerror(buffer);
              }

              v20 = *(v6 - 1);
              break;
            case 9:
              v30 = CreateCommandParseDictionary(1, 0, 0, v4);
              if (v30)
              {
                v31 = *(v6 - 1);
                if (v31)
                {
                  v20 = v30;
                  CFDictionaryAddValue(v30, kSRCSCommandParseDictionaryKeyIdentifier[0], v31);
                  CFDictionaryAddValue(v20, kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0], value);
                  v29 = *(v6 - 1);
                  goto LABEL_64;
                }
              }

              bzero(buffer, 0x1388uLL);
              v32 = @"Nil parameter in '| '{' kParameterToken '}''";
              goto LABEL_71;
            case 10:
              v21 = CreateCommandParseDictionary(1, 0, 0, v4);
              if (v21 && *v6)
              {
                v20 = v21;
                CFDictionaryAddValue(v21, kSRCSCommandParseDictionaryKeyText[0], *v6);
LABEL_60:
                v29 = *v6;
LABEL_64:
                CFRelease(v29);
                break;
              }

              bzero(buffer, 0x1388uLL);
              v32 = @"Nil parameter in '| string'";
LABEL_71:
              CFStringGetCString(v32, buffer, 5000, 0x8000100u);
              yyerror(buffer);
              v20 = 0;
              break;
          }

LABEL_76:
          v33 = &v6[-v19];
          v9 -= 2 * v19;
          v33[1] = v20;
          v6 = v33 + 1;
          v34 = yyr1[v18] - 12;
          v35 = *v9 + yypgoto[v34];
          if (v35 <= 0x16 && *v9 == yycheck[v35])
          {
            v5 = yytable[v35];
          }

          else
          {
            v5 = yydefgoto[v34];
          }

          goto LABEL_80;
        }

        if (v18 == 6)
        {
          v28 = *(v6 - 1);
          if (!v28 || !*v6)
          {
            bzero(buffer, 0x1388uLL);
            v32 = @"Nil parameter in '| spokenCommandStringComponent stringOrIdentifierComponent'";
            goto LABEL_71;
          }

          v20 = CreateCommandParseDictionary(1, v28, *v6, v4);
          if (!v20)
          {
            bzero(buffer, 0x1388uLL);
            v25 = @"Nil dictionary in '| spokenCommandStringComponent stringOrIdentifierComponent'";
            goto LABEL_58;
          }
        }

        else
        {
          v24 = *(v6 - 1);
          if (!v24 || !*v6)
          {
            bzero(buffer, 0x1388uLL);
            v32 = @"Nil parameter in '| spokenCommandStringComponent optionalComponent'";
            goto LABEL_71;
          }

          v20 = CreateCommandParseDictionary(1, v24, *v6, v4);
          if (!v20)
          {
            bzero(buffer, 0x1388uLL);
            v25 = @"Nil dictionary in '| spokenCommandStringComponent optionalComponent'";
LABEL_58:
            CFStringGetCString(v25, buffer, 5000, 0x8000100u);
            yyerror(buffer);
          }
        }

        CFRelease(*(v6 - 1));
        goto LABEL_60;
      }

LABEL_82:
      ++yynerrs;
      v37 = yysyntax_error(0, v5, yychar);
      v38 = v37;
      v36 = v47;
      if (v37 < 0x81)
      {
        v41 = 128;
      }

      else
      {
        if (v37 < 0)
        {
          v39 = -1;
        }

        else
        {
          v39 = 2 * v37;
        }

        v40 = malloc_type_malloc(v39, 0x100004077774924uLL);
        v41 = 128;
        if (v40)
        {
          v41 = v39;
          v36 = v40;
        }
      }

      if (v38 - 1 < v41)
      {
        yysyntax_error(v36, v5, yychar);
        yyerror(v36);
LABEL_93:
        v42 = 1;
        goto LABEL_94;
      }

      yyerror("syntax error");
      if (!v38)
      {
        goto LABEL_93;
      }

LABEL_92:
      yyerror("memory exhausted");
      v42 = 2;
LABEL_94:
      v12 = v10;
      goto LABEL_95;
    }

    if ((0x208440uLL >> (v16 + v14)))
    {
      goto LABEL_82;
    }

    if (v17 == 2)
    {
      v42 = 0;
      v36 = v47;
      goto LABEL_94;
    }

    if (v15 >= 1)
    {
      yychar = -2;
    }

    v5 = yytable[v17];
    v6[1] = yylval;
    ++v6;
LABEL_80:
    v9 += 2;
  }

  if (v7 > 0x7CF || (2 * v7 >= 0x7D0 ? (v7 = 2000) : (v7 *= 2), (v11 = malloc_type_malloc(10 * v7 + 7, 0x1000040BDFB0063uLL)) == 0))
  {
    v36 = v47;
    goto LABEL_92;
  }

  v12 = v11;
  v13 = ((v9 - v10) >> 1) + 1;
  memcpy(v11, v10, 2 * v13);
  memcpy(&v12[(2 * v7 + 7) & 0x7FFFFFFFFFFFFFF8], v8, 8 * v13);
  if (v10 != v46)
  {
    free(v10);
  }

  if (v7 > v13)
  {
    v9 = &v12[2 * v13 - 2];
    v6 = &v12[8 * v13 - 8 + ((2 * v7 + 7) & 0x7FFFFFFFFFFFFFF8)];
    v8 = &v12[(2 * v7 + 7) & 0x7FFFFFFFFFFFFFF8];
    v10 = v12;
    goto LABEL_12;
  }

  v36 = v47;
  v42 = 1;
LABEL_95:
  if (v12 != v46)
  {
    free(v12);
  }

  if (v36 != v47)
  {
    free(v36);
  }

  return v42;
}

__CFDictionary *CreateCommandParseDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v12)
    {
      v13 = v12;
      CFDictionaryAddValue(Mutable, kSRCSCommandParseDictionaryKeyAttributes[0], v12);
      CFRelease(v13);
      if (v9)
      {
        CFDictionaryAddValue(v13, kSRCSCommandParseAttributePath[0], *MEMORY[0x277CBED28]);
      }
    }

    else
    {
      bzero(v27, 0x1388uLL);
      CFStringGetCString(@"Nil attributes for in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
      yyerror(v27);
    }

    v14 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
    if (v14)
    {
      v15 = v14;
      if (v8)
      {
        Value = CFDictionaryGetValue(v8, kSRCSCommandParseDictionaryKeyAttributes[0]);
        if (Value)
        {
          v17 = CFDictionaryContainsKey(Value, kSRCSCommandParseAttributeOptional[0]) != 0;
          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

        bzero(v27, 0x1388uLL);
        CFStringGetCString(@"Nil attribute for child 1 in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
        yyerror(v27);
      }

      v17 = 0;
      if (!v6)
      {
        goto LABEL_17;
      }

LABEL_14:
      v18 = CFDictionaryGetValue(v6, kSRCSCommandParseDictionaryKeyAttributes[0]);
      if (v18)
      {
        v17 = CFDictionaryContainsKey(v18, kSRCSCommandParseAttributeOptional[0]) != 0;
      }

      else
      {
        bzero(v27, 0x1388uLL);
        CFStringGetCString(@"Nil attribute for child 2 in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
        yyerror(v27);
      }

LABEL_17:
      if (v8)
      {
        v19 = CFDictionaryGetValue(v8, kSRCSCommandParseDictionaryKeyChildren[0]);
        if (v19)
        {
          v20 = v19;
          Count = CFArrayGetCount(v19);
          if (v6)
          {
            v22 = v17;
          }

          else
          {
            v22 = 1;
          }

          if (Count >= 1 && (v22 & 1) == 0)
          {
            v29.length = Count;
            v29.location = 0;
            CFArrayAppendArray(v15, v20, v29);
            goto LABEL_27;
          }

          CFArrayAppendValue(v15, v8);
          if (!v6)
          {
LABEL_33:
            CFDictionaryAddValue(Mutable, kSRCSCommandParseDictionaryKeyChildren[0], v15);
            CFRelease(v15);
            return Mutable;
          }

LABEL_27:
          v23 = CFDictionaryGetValue(v6, kSRCSCommandParseDictionaryKeyChildren[0]);
          if (v23)
          {
            v24 = v23;
            v25 = CFArrayGetCount(v23);
            if (v25 < 1 || v17)
            {
              CFArrayAppendValue(v15, v6);
            }

            else
            {
              v30.length = v25;
              v30.location = 0;
              CFArrayAppendArray(v15, v24, v30);
            }
          }

          else
          {
            bzero(v27, 0x1388uLL);
            CFStringGetCString(@"Nil children 2 in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
            yyerror(v27);
          }

          goto LABEL_33;
        }

        bzero(v27, 0x1388uLL);
        CFStringGetCString(@"Nil children 1 in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
        yyerror(v27);
      }

      if (!v6)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    bzero(v27, 0x1388uLL);
    CFStringGetCString(@"Nil children in 'CreateCommandParseDictionary()'", v27, 5000, 0x8000100u);
    yyerror(v27);
  }

  return Mutable;
}

uint64_t yysyntax_error(_BYTE *a1, int a2, unsigned int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((0x10B3DuLL >> a2))
  {
    v5 = a2;
    v6 = yypact[a2];
    if (a3 > 0x103)
    {
      v7 = 2;
    }

    else
    {
      v7 = yytranslate[a3];
    }

    v8 = yytname[v7];
    v9 = yytnamerr(0, v8);
    v38 = 0u;
    v37 = 0u;
    v36 = v8;
    strcpy(v35, "syntax error, unexpected %s");
    if ((0xF6C2uLL >> v5))
    {
      v10 = -v6;
    }

    else
    {
      v10 = 0;
    }

    if (23 - v6 >= 12)
    {
      v11 = 12;
    }

    else
    {
      v11 = 23 - v6;
    }

    if (v10 < v11)
    {
      v12 = 0;
      v13 = &v35[27];
      v14 = v10;
      v15 = v11;
      v16 = ", expecting %s";
      v17 = 1;
      v34 = v9;
      v18 = v9;
      while (1)
      {
        if (v14 != 1 && v14 == yycheck[v14 + v6])
        {
          if (v17 == 5)
          {
            v35[27] = 0;
            v17 = 1;
            v18 = v34;
            goto LABEL_27;
          }

          v19 = yytname[v14];
          (&v36)[v17] = v19;
          v20 = yytnamerr(0, v19);
          v21 = __CFADD__(v20, v18);
          v18 += v20;
          v22 = v21;
          --v13;
          do
          {
            v23 = *v16++;
            *++v13 = v23;
          }

          while (v23);
          ++v17;
          v12 |= v22;
          v16 = " or %s";
        }

        if (++v14 == v15)
        {
          goto LABEL_27;
        }
      }
    }

    v12 = 0;
    v17 = 1;
    v18 = v9;
LABEL_27:
    v3 = v18 - 1;
    v24 = v35;
    do
    {
      v25 = *v24++;
      ++v3;
    }

    while (v25);
    if (v12 | (v3 < v18))
    {
      return -1;
    }

    if (!a1)
    {
      return v3;
    }

    v27 = 0;
    for (i = v35; ; i += v32)
    {
      v29 = *i;
      *a1 = v29;
      if (v29 != 37)
      {
        break;
      }

      if (i[1] != 115 || v27 >= v17)
      {
        goto LABEL_41;
      }

      v33 = v27 + 1;
      v31 = yytnamerr(a1, (&v36)[v27]);
      v32 = 2;
      v27 = v33;
LABEL_43:
      a1 += v31;
    }

    if (!v29)
    {
      return v3;
    }

LABEL_41:
    v31 = 1;
    v32 = 1;
    goto LABEL_43;
  }

  return 0;
}

CFStringRef yyerror(char *cStr)
{
  sLastErrorLineNumber = 1;
  if (sLastErrorDescriptionString)
  {
    CFRelease(sLastErrorDescriptionString);
  }

  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  sLastErrorDescriptionString = result;
  return result;
}

uint64_t CreateMutableDictionaryFromSpokenCommandString(const __CFString *a1, void *a2)
{
  sResultDictionary = 0;
  sCurSpokenCommandStringOffset = 0;
  sSpokenCommandString = a1;
  sSpokenCommandStringLength = CFStringGetLength(a1);
  sLastErrorLineNumber = 0;
  v6 = sLastErrorDescriptionString;
  if (sLastErrorDescriptionString)
  {
    CFRelease(sLastErrorDescriptionString);
    sLastErrorDescriptionString = 0;
  }

  yyparse(v6, v3, v4, v5);
  if (a2 && sLastErrorDescriptionString && CFStringGetLength(sLastErrorDescriptionString) >= 1)
  {
    v7 = sLastErrorDescriptionString;
    *a2 = sLastErrorDescriptionString;
    CFRetain(v7);
  }

  return sResultDictionary;
}

uint64_t yylex()
{
  if (!sReservedCharacterSet)
  {
    sReservedCharacterSet = CFCharacterSetCreateMutable(0);
    CFCharacterSetAddCharactersInString(sReservedCharacterSet, @"[]{}|");
  }

  if (sCurSpokenCommandStringOffset >= sSpokenCommandStringLength)
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(sSpokenCommandString, sCurSpokenCommandStringOffset);
  if (!CharacterAtIndex)
  {
    return 0;
  }

  v1 = CharacterAtIndex;
  v2 = sCurSpokenCommandStringOffset;
  if (CFCharacterSetIsCharacterMember(sReservedCharacterSet, CharacterAtIndex))
  {
    ++sCurSpokenCommandStringOffset;
    return v1;
  }

  while (1)
  {
    v4 = sCurSpokenCommandStringOffset + 1;
    sCurSpokenCommandStringOffset = v4;
    v5 = sSpokenCommandStringLength;
    if (v4 < sSpokenCommandStringLength)
    {
      v1 = CFStringGetCharacterAtIndex(sSpokenCommandString, v4);
      v4 = sCurSpokenCommandStringOffset;
      v5 = sSpokenCommandStringLength;
    }

    if (v4 >= v5)
    {
      break;
    }

    if (CFCharacterSetIsCharacterMember(sReservedCharacterSet, v1))
    {
      v4 = sCurSpokenCommandStringOffset;
      break;
    }
  }

  v6 = *MEMORY[0x277CBECE8];
  v11.length = v4 - v2;
  v11.location = v2;
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], sSpokenCommandString, v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  yylval = CFStringCreateMutable(v6, 0);
  CFStringAppend(yylval, v8);
  if (IsValidCommandParameterIdentifier(v8, v9))
  {
    v3 = 258;
  }

  else
  {
    v3 = 259;
  }

  CFRelease(v8);
  if (sLastErrorSymbolString)
  {
    CFRelease(sLastErrorSymbolString);
    sLastErrorSymbolString = 0;
  }

  if (yylval)
  {
    sLastErrorSymbolString = CFStringCreateCopy(0, yylval);
  }

  return v3;
}

uint64_t yytnamerr(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    v9 = 0;
    if (a1)
    {
      do
      {
        v10 = a2[v9];
        *(a1 + v9++) = v10;
      }

      while (v10);
    }

    else
    {
        ;
      }
    }

    return v9 - 1;
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

void sub_26B46D28C()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v398 = sub_26B542AB4();
  v397 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B5450B0;
  v407[0] = 0;
  v10 = sub_26B470D98(&unk_287BF12A8);
  v11 = sub_26B470D98(&unk_287BF12D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5450C0;
  v400 = sub_26B4C6A78();
  v13 = *v400;
  *(v12 + 32) = *v400;
  *(v12 + 40) = 1;
  *(v12 + 48) = v13;
  *(v12 + 56) = 3;
  *(v12 + 64) = v13;
  *(v12 + 72) = 8;
  *(v12 + 80) = 0x403A000000000000;
  *(v12 + 88) = 10;
  v14 = sub_26B470F10(&unk_287BF12F8);
  v406 = 4;
  v405 = 4;
  v15.value._countAndFlagsBits = 0x68507463656C6573;
  v15.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v15, 0);
  v401 = v403;
  v402 = v404;
  v16 = sub_26B4CE5C8();
  v17 = sub_26B4D4400();
  *&v356 = sub_26B4D4408();
  *(&v356 + 1) = sub_26B4D4414();
  *&v318 = v11;
  *(&v318 + 1) = v12;
  v399._rawValue = v9;
  *&v280 = v10;
  *(&v280 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B550030, &unk_287BF3B80, &unk_287BF1238, &unk_287BF1270, 0, 0, v407, v9 + 32, v16 & 1, v17 & 1, v280, v318, v356, v14, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v18 = sub_26B470D98(&unk_287BF13C0);
  v19 = sub_26B470D98(&unk_287BF13E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26B5450C0;
  v21 = *v400;
  *(v20 + 32) = *v400;
  *(v20 + 40) = 1;
  *(v20 + 48) = v21;
  *(v20 + 56) = 3;
  *(v20 + 64) = v21;
  *(v20 + 72) = 8;
  *(v20 + 80) = 0x403A000000000000;
  *(v20 + 88) = 10;
  v22 = sub_26B470F10(&unk_287BF1410);
  v406 = 4;
  v405 = 4;
  v23.value._countAndFlagsBits = 0x68507463656C6573;
  v23.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v23, 0);
  v401 = v403;
  v402 = v404;
  v24 = sub_26B4CE5C8();
  v25 = sub_26B4D4400();
  *&v357 = sub_26B4D4408();
  *(&v357 + 1) = sub_26B4D4414();
  *&v319 = v19;
  *(&v319 + 1) = v20;
  *&v281 = v18;
  *(&v281 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B550050, &unk_287BF3BB0, &unk_287BF1350, &unk_287BF1388, 0, 0, v407, v9 + 216, v24 & 1, v25 & 1, v281, v319, v357, v22, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v26 = sub_26B470D98(&unk_287BF14D8);
  v27 = sub_26B470D98(&unk_287BF1500);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26B5450C0;
  v29 = *v400;
  *(v28 + 32) = *v400;
  *(v28 + 40) = 1;
  *(v28 + 48) = v29;
  *(v28 + 56) = 3;
  *(v28 + 64) = v29;
  *(v28 + 72) = 8;
  *(v28 + 80) = 0x403A000000000000;
  *(v28 + 88) = 10;
  v30 = sub_26B470F10(&unk_287BF1528);
  v406 = 4;
  v405 = 4;
  v31.value._countAndFlagsBits = 0x68507463656C6573;
  v31.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v31, 0);
  v401 = v403;
  v402 = v404;
  v32 = sub_26B4CE5C8();
  v33 = sub_26B4D4400();
  *&v358 = sub_26B4D4408();
  *(&v358 + 1) = sub_26B4D4414();
  *&v320 = v27;
  *(&v320 + 1) = v28;
  *&v282 = v26;
  *(&v282 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B550070, &unk_287BF3BE0, &unk_287BF1468, &unk_287BF14A0, 0, 0, v407, v9 + 400, v32 & 1, v33 & 1, v282, v320, v358, v30, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v34 = sub_26B470D98(&unk_287BF15C8);
  v35 = sub_26B470D98(&unk_287BF15F0);
  v36 = sub_26B471088(&unk_287BF1668);
  v37 = sub_26B470F10(&unk_287BF1690);
  v406 = 4;
  v405 = 4;
  v38.value._object = 0x800000026B5500B0;
  v38.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v38, 0);
  v401 = v403;
  v402 = v404;
  v39 = sub_26B4D43F4();
  v40 = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v359 = v36;
  *(&v359 + 1) = sub_26B4D4414();
  *&v321 = v35;
  *(&v321 + 1) = &unk_287BF1618;
  *&v283 = v34;
  *(&v283 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550090, &unk_287BF3C10, &unk_287BF1590, v39, 0, 0, v407, v9 + 584, v40 & 1, v26 & 1, v283, v321, v359, v37, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v41 = sub_26B470D98(&unk_287BF1730);
  v42 = sub_26B470D98(&unk_287BF1758);
  v43 = sub_26B471088(&unk_287BF17D0);
  v44 = sub_26B470F10(&unk_287BF17F8);
  v406 = 4;
  v405 = 4;
  v45.value._object = 0x800000026B5500F0;
  v45.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v45, 0);
  v401 = v403;
  v402 = v404;
  v46 = sub_26B4D43F4();
  LOBYTE(v37) = sub_26B4CE5C8();
  v47 = sub_26B4D4400();
  *&v360 = v43;
  *(&v360 + 1) = sub_26B4D4414();
  *&v322 = v42;
  *(&v322 + 1) = &unk_287BF1780;
  *&v284 = v41;
  *(&v284 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5500D0, &unk_287BF3C40, &unk_287BF16F8, v46, 0, 0, v407, v9 + 768, v37 & 1, v47 & 1, v284, v322, v360, v44, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v48 = sub_26B470D98(&unk_287BF18E0);
  v49 = sub_26B470D98(&unk_287BF1908);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_26B5450D0;
  v51 = *v400;
  *(v50 + 32) = *v400;
  *(v50 + 40) = 1;
  *(v50 + 48) = v51;
  *(v50 + 56) = 3;
  *(v50 + 64) = 0x403A000000000000;
  *(v50 + 72) = 10;
  v52 = sub_26B470F10(&unk_287BF1930);
  v406 = 4;
  v405 = 4;
  v53.value._object = 0x800000026B550130;
  v53.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v53, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v46) = sub_26B4CE5C8();
  LOBYTE(v37) = sub_26B4D4400();
  *&v361 = sub_26B4D4408();
  *(&v361 + 1) = sub_26B4D4414();
  *&v323 = v49;
  *(&v323 + 1) = v50;
  *&v285 = v48;
  *(&v285 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B550110, &unk_287BF3C70, &unk_287BF1870, &unk_287BF18A8, 0, 0, v407, v399._rawValue + 952, v46 & 1, v37 & 1, v285, v323, v361, v52, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v54 = sub_26B470D98(&unk_287BF19F8);
  v55 = sub_26B470D98(&unk_287BF1A20);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B5450D0;
  v57 = *v400;
  *(v56 + 32) = *v400;
  *(v56 + 40) = 1;
  *(v56 + 48) = v57;
  *(v56 + 56) = 3;
  *(v56 + 64) = 0x403A000000000000;
  *(v56 + 72) = 10;
  v58 = sub_26B470F10(&unk_287BF1A48);
  v406 = 4;
  v405 = 4;
  v59.value._countAndFlagsBits = 0x68507463656C6573;
  v59.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v59, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v37) = sub_26B4CE5C8();
  v60 = sub_26B4D4400();
  *&v362 = sub_26B4D4408();
  *(&v362 + 1) = sub_26B4D4414();
  *&v324 = v55;
  *(&v324 + 1) = v56;
  *&v286 = v54;
  *(&v286 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B550150, &unk_287BF3CA0, &unk_287BF1988, &unk_287BF19C0, 0, 0, v407, v399._rawValue + 1136, v37 & 1, v60 & 1, v286, v324, v362, v58, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v394 = sub_26B470D98(&unk_287BF1AF8);
  v61 = sub_26B470D98(&unk_287BF1B20);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26B5450C0;
  v63 = *v400;
  *(v62 + 32) = *v400;
  *(v62 + 40) = 1;
  *(v62 + 48) = v63;
  *(v62 + 56) = 3;
  *(v62 + 64) = v63;
  *(v62 + 72) = 8;
  *(v62 + 80) = 0x403A000000000000;
  *(v62 + 88) = 10;
  v406 = 4;
  v405 = 4;
  v64.value._countAndFlagsBits = 0x6E556D6574737973;
  v65.value._object = 0x800000026B550170;
  v65.value._countAndFlagsBits = 0xD000000000000012;
  v64.value._object = 0xEA00000000006F64;
  Action.init(_:mac:)(v65, v64);
  v401 = v403;
  v402 = v404;
  v66 = sub_26B4D43F4();
  LOBYTE(v58) = sub_26B4CE5C8();
  v67 = sub_26B4D4400();
  v68 = sub_26B4D4408();
  v69 = sub_26B4D4414();
  v70 = sub_26B4D4414();
  *&v363 = v68;
  *(&v363 + 1) = v69;
  *&v325 = v61;
  *(&v325 + 1) = v62;
  *(&v287 + 1) = MEMORY[0x277D84FA0];
  *&v287 = v394;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x552E6D6574737953, 0xEB000000006F646ELL, &unk_287BF3CD0, &unk_287BF1AC0, v66, 0, 0, v407, v399._rawValue + 1320, v58 & 1, v67 & 1, v287, v325, v363, v70, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v71 = sub_26B470D98(&unk_287BF1BC0);
  v72 = sub_26B470D98(&unk_287BF1BE8);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_26B5450C0;
  v74 = *v400;
  *(v73 + 32) = *v400;
  *(v73 + 40) = 1;
  *(v73 + 48) = v74;
  *(v73 + 56) = 3;
  *(v73 + 64) = v74;
  *(v73 + 72) = 8;
  *(v73 + 80) = 0x403A000000000000;
  *(v73 + 88) = 10;
  v406 = 4;
  v405 = 4;
  v75.value._countAndFlagsBits = 0x65526D6574737973;
  v76.value._object = 0x800000026B550190;
  v76.value._countAndFlagsBits = 0xD000000000000012;
  v75.value._object = 0xEA00000000006F64;
  Action.init(_:mac:)(v76, v75);
  v401 = v403;
  v402 = v404;
  v77 = sub_26B4D43F4();
  LOBYTE(v58) = sub_26B4CE5C8();
  v78 = sub_26B4D4400();
  v79 = sub_26B4D4408();
  v80 = sub_26B4D4414();
  v81 = sub_26B4D4414();
  *&v364 = v79;
  *(&v364 + 1) = v80;
  *&v326 = v72;
  *(&v326 + 1) = v73;
  *&v288 = v71;
  *(&v288 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x522E6D6574737953, 0xEB000000006F6465, &unk_287BF3D00, &unk_287BF1B88, v77, 0, 0, v407, v399._rawValue + 1504, v58 & 1, v78 & 1, v288, v326, v364, v81, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v82 = sub_26B470D98(&unk_287BF1CB0);
  v83 = sub_26B470D98(&unk_287BF1CD8);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B5450D0;
  v85 = *v400;
  *(v84 + 32) = *v400;
  *(v84 + 40) = 1;
  *(v84 + 48) = v85;
  *(v84 + 56) = 3;
  *(v84 + 64) = v85;
  *(v84 + 72) = 8;
  v406 = 4;
  v405 = 4;
  v86.value._countAndFlagsBits = 0x616F626574736170;
  v86.value._object = 0xEE003A7475436472;
  v87.value._countAndFlagsBits = 0x75436D6574737973;
  v87.value._object = 0xE900000000000074;
  Action.init(_:mac:)(v86, v87);
  v401 = v403;
  v402 = v404;
  v88 = sub_26B4D43F4();
  LOBYTE(v58) = sub_26B4CE5C8();
  v89 = sub_26B4D4400();
  v90 = sub_26B4D4408();
  v91 = sub_26B4D4414();
  v92 = sub_26B4D4414();
  *&v365 = v90;
  *(&v365 + 1) = v91;
  *&v327 = v83;
  *(&v327 + 1) = v84;
  *&v289 = v82;
  *(&v289 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x432E6D6574737953, 0xEA00000000007475, &unk_287BF3D30, &unk_287BF1C60, v88, 0, 0, v407, v399._rawValue + 1688, v58 & 1, v89 & 1, v289, v327, v365, v92, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v93 = sub_26B470D98(&unk_287BF1DA0);
  v94 = sub_26B470D98(&unk_287BF1DC8);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B5450D0;
  v96 = *v400;
  *(v95 + 32) = *v400;
  *(v95 + 40) = 1;
  *(v95 + 48) = v96;
  *(v95 + 56) = 3;
  *(v95 + 64) = v96;
  *(v95 + 72) = 8;
  v406 = 4;
  v405 = 4;
  v97.value._object = 0xEF3A79706F436472;
  v98.value._countAndFlagsBits = 0x6F436D6574737973;
  v98.value._object = 0xEA00000000007970;
  v97.value._countAndFlagsBits = 0x616F626574736170;
  Action.init(_:mac:)(v97, v98);
  v401 = v403;
  v402 = v404;
  v99 = sub_26B4D43F4();
  LOBYTE(v58) = sub_26B4CE5C8();
  v100 = sub_26B4D4400();
  v101 = sub_26B4D4408();
  v102 = sub_26B4D4414();
  v103 = sub_26B4D4414();
  *&v366 = v101;
  *(&v366 + 1) = v102;
  *&v328 = v94;
  *(&v328 + 1) = v95;
  *&v290 = v93;
  *(&v290 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x432E6D6574737953, 0xEB0000000079706FLL, &unk_287BF3D60, &unk_287BF1D50, v99, 0, 0, v407, v399._rawValue + 1872, v58 & 1, v100 & 1, v290, v328, v366, v103, &v406, &v405, 0, 0, &v401);
  v407[0] = 0;
  v395 = sub_26B470D98(&unk_287BF1E90);
  v104 = sub_26B470D98(&unk_287BF1EB8);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_26B5450D0;
  v106 = *v400;
  *(v105 + 32) = *v400;
  *(v105 + 40) = 1;
  *(v105 + 48) = v106;
  *(v105 + 56) = 3;
  *(v105 + 64) = v106;
  *(v105 + 72) = 8;
  v406 = 4;
  v405 = 4;
  v107.value._countAndFlagsBits = 0x61506D6574737973;
  v107.value._object = 0xEB00000000657473;
  v108.value._object = 0x800000026B5501B0;
  v108.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v108, v107);
  v401 = v403;
  v402 = v404;
  v109 = sub_26B4D43F4();
  v110 = sub_26B4CE5C8();
  LOBYTE(v101) = sub_26B4D4400();
  v111 = sub_26B4D4408();
  v112 = sub_26B4D4414();
  v113 = sub_26B4D4414();
  *&v367 = v111;
  *(&v367 + 1) = v112;
  *&v329 = v104;
  *(&v329 + 1) = v105;
  *(&v291 + 1) = MEMORY[0x277D84FA0];
  *&v291 = v395;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x502E6D6574737953, 0xEC00000065747361, &unk_287BF3D90, &unk_287BF1E40, v109, 0, 0, v407, v399._rawValue + 2056, v110 & 1, v101 & 1, v291, v329, v367, v113, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v114 = sub_26B470D98(&unk_287BF1F98);
  v115 = sub_26B470D98(&unk_287BF1FC0);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_26B5450C0;
  v117 = *v400;
  *(v116 + 32) = *v400;
  *(v116 + 40) = 1;
  *(v116 + 48) = v117;
  *(v116 + 56) = 3;
  *(v116 + 64) = v117;
  *(v116 + 72) = 8;
  *(v116 + 80) = 0x403A000000000000;
  *(v116 + 88) = 10;
  v118 = sub_26B470F10(&unk_287BF1FE8);
  v406 = 4;
  v405 = 4;
  v119.value._countAndFlagsBits = 0x726F46796C707061;
  v119.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v119, 0);
  v401 = v403;
  v402 = v404;
  v120 = sub_26B4D43F4();
  LOBYTE(v101) = sub_26B4CE5C8();
  LOBYTE(v95) = sub_26B4D4400();
  *&v368 = sub_26B4D4408();
  *(&v368 + 1) = sub_26B4D4414();
  *&v330 = v115;
  *(&v330 + 1) = v116;
  *&v292 = v114;
  *(&v292 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5501D0, &unk_287BF3DC0, &unk_287BF1F60, v120, 0, 0, v407, v399._rawValue + 2240, v101 & 1, v95 & 1, v292, v330, v368, v118, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v396 = sub_26B470D98(&unk_287BF20B0);
  v121 = sub_26B470D98(&unk_287BF20D8);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B5450C0;
  v123 = *v400;
  *(v122 + 32) = *v400;
  *(v122 + 40) = 1;
  *(v122 + 48) = v123;
  *(v122 + 56) = 3;
  *(v122 + 64) = v123;
  *(v122 + 72) = 8;
  *(v122 + 80) = 0x403A000000000000;
  *(v122 + 88) = 10;
  v124 = sub_26B470F10(&unk_287BF2100);
  v406 = 4;
  v405 = 4;
  v125.value._countAndFlagsBits = 0x68507463656C6573;
  v125.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v125, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v118) = sub_26B4CE5C8();
  LOBYTE(v101) = sub_26B4D4400();
  *&v369 = sub_26B4D4408();
  *(&v369 + 1) = sub_26B4D4414();
  *&v331 = v121;
  *(&v331 + 1) = v122;
  *(&v293 + 1) = MEMORY[0x277D84FA0];
  *&v293 = v396;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5501F0, &unk_287BF3DF0, &unk_287BF2040, &unk_287BF2078, 0, 0, v407, v399._rawValue + 2424, v118 & 1, v101 & 1, v293, v331, v369, v124, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v126 = sub_26B470D98(&unk_287BF21B0);
  v127 = sub_26B470D98(&unk_287BF21D8);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_26B5450C0;
  v129 = *v400;
  *(v128 + 32) = *v400;
  *(v128 + 40) = 1;
  *(v128 + 48) = v129;
  *(v128 + 56) = 3;
  *(v128 + 64) = v129;
  *(v128 + 72) = 8;
  *(v128 + 80) = 0x403A000000000000;
  *(v128 + 88) = 10;
  v130 = sub_26B470F10(&unk_287BF2200);
  v406 = 4;
  v405 = 4;
  v131.value._countAndFlagsBits = 0x726F46796C707061;
  v131.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v131, 0);
  v401 = v403;
  v402 = v404;
  v132 = sub_26B4D43F4();
  LOBYTE(v118) = sub_26B4CE5C8();
  LOBYTE(v101) = sub_26B4D4400();
  *&v370 = sub_26B4D4408();
  *(&v370 + 1) = sub_26B4D4414();
  *&v332 = v127;
  *(&v332 + 1) = v128;
  *&v294 = v126;
  *(&v294 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B550210, &unk_287BF3E20, &unk_287BF2178, v132, 0, 0, v407, v399._rawValue + 2608, v118 & 1, v101 & 1, v294, v332, v370, v130, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v133 = sub_26B470D98(&unk_287BF22C8);
  v134 = sub_26B470D98(&unk_287BF22F0);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_26B5450C0;
  v136 = *v400;
  *(v135 + 32) = *v400;
  *(v135 + 40) = 1;
  *(v135 + 48) = v136;
  *(v135 + 56) = 3;
  *(v135 + 64) = v136;
  *(v135 + 72) = 8;
  *(v135 + 80) = 0x403A000000000000;
  *(v135 + 88) = 10;
  v137 = sub_26B470F10(&unk_287BF2318);
  v406 = 4;
  v405 = 4;
  v138.value._countAndFlagsBits = 0x68507463656C6573;
  v138.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v138, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v371 = sub_26B4D4408();
  *(&v371 + 1) = sub_26B4D4414();
  *&v333 = v134;
  *(&v333 + 1) = v135;
  *&v295 = v133;
  *(&v295 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550230, &unk_287BF3E50, &unk_287BF2258, &unk_287BF2290, 0, 0, v407, v399._rawValue + 2792, v83 & 1, v118 & 1, v295, v333, v371, v137, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v139 = sub_26B470D98(&unk_287BF23C8);
  v140 = sub_26B470D98(&unk_287BF23F0);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_26B5450C0;
  v142 = *v400;
  *(v141 + 32) = *v400;
  *(v141 + 40) = 1;
  *(v141 + 48) = v142;
  *(v141 + 56) = 3;
  *(v141 + 64) = v142;
  *(v141 + 72) = 8;
  *(v141 + 80) = 0x403A000000000000;
  *(v141 + 88) = 10;
  v143 = sub_26B470F10(&unk_287BF2418);
  v406 = 4;
  v405 = 4;
  v144.value._countAndFlagsBits = 0x726F46796C707061;
  v144.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v144, 0);
  v401 = v403;
  v402 = v404;
  v145 = sub_26B4D43F4();
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v372 = sub_26B4D4408();
  *(&v372 + 1) = sub_26B4D4414();
  *&v334 = v140;
  *(&v334 + 1) = v141;
  *&v296 = v139;
  *(&v296 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B550250, &unk_287BF3E80, &unk_287BF2390, v145, 0, 0, v407, v399._rawValue + 2976, v83 & 1, v118 & 1, v296, v334, v372, v143, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v146 = sub_26B470D98(&unk_287BF24E0);
  v147 = sub_26B470D98(&unk_287BF2508);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_26B5450C0;
  v149 = *v400;
  *(v148 + 32) = *v400;
  *(v148 + 40) = 1;
  *(v148 + 48) = v149;
  *(v148 + 56) = 3;
  *(v148 + 64) = v149;
  *(v148 + 72) = 8;
  *(v148 + 80) = 0x403A000000000000;
  *(v148 + 88) = 10;
  v150 = sub_26B470F10(&unk_287BF2530);
  v406 = 4;
  v405 = 4;
  v151.value._countAndFlagsBits = 0x68507463656C6573;
  v151.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v151, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v373 = sub_26B4D4408();
  *(&v373 + 1) = sub_26B4D4414();
  *&v335 = v147;
  *(&v335 + 1) = v148;
  *&v297 = v146;
  *(&v297 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B550270, &unk_287BF3EB0, &unk_287BF2470, &unk_287BF24A8, 0, 0, v407, v399._rawValue + 3160, v83 & 1, v118 & 1, v297, v335, v373, v150, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v152 = sub_26B470D98(&unk_287BF2618);
  v153 = sub_26B470D98(&unk_287BF2640);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_26B5450D0;
  v155 = *v400;
  *(v154 + 32) = *v400;
  *(v154 + 40) = 1;
  *(v154 + 48) = v155;
  *(v154 + 56) = 3;
  *(v154 + 64) = v155;
  *(v154 + 72) = 8;
  v156 = sub_26B470F10(&unk_287BF2668);
  v406 = 4;
  v405 = 4;
  v157.value._countAndFlagsBits = 0x726F46796C707061;
  v157.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v157, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v374 = sub_26B4D4408();
  *(&v374 + 1) = sub_26B4D4414();
  *&v336 = v153;
  *(&v336 + 1) = v154;
  *&v298 = v152;
  *(&v298 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x726F462E74786554, 0xEF646C6F4274616DLL, &unk_287BF3EE0, &unk_287BF25A8, &unk_287BF25E0, 0, 0, v407, v399._rawValue + 3344, v83 & 1, v118 & 1, v298, v336, v374, v156, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v158 = sub_26B470D98(&unk_287BF2730);
  v159 = sub_26B470D98(&unk_287BF2758);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_26B5450D0;
  v161 = *v400;
  *(v160 + 32) = *v400;
  *(v160 + 40) = 1;
  *(v160 + 48) = v161;
  *(v160 + 56) = 3;
  *(v160 + 64) = v161;
  *(v160 + 72) = 8;
  v162 = sub_26B470F10(&unk_287BF2780);
  v406 = 4;
  v405 = 4;
  v163.value._countAndFlagsBits = 0x68507463656C6573;
  v163.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v163, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v375 = sub_26B4D4408();
  *(&v375 + 1) = sub_26B4D4414();
  *&v337 = v159;
  *(&v337 + 1) = v160;
  *&v299 = v158;
  *(&v299 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B550290, &unk_287BF3F10, &unk_287BF26C0, &unk_287BF26F8, 0, 0, v407, v399._rawValue + 3528, v83 & 1, v118 & 1, v299, v337, v375, v162, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v164 = sub_26B470D98(&unk_287BF2868);
  v165 = sub_26B470D98(&unk_287BF2890);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B5450D0;
  v167 = *v400;
  *(v166 + 32) = *v400;
  *(v166 + 40) = 1;
  *(v166 + 48) = v167;
  *(v166 + 56) = 3;
  *(v166 + 64) = v167;
  *(v166 + 72) = 8;
  v168 = sub_26B470F10(&unk_287BF28B8);
  v406 = 4;
  v405 = 4;
  v169.value._countAndFlagsBits = 0x726F46796C707061;
  v169.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v169, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v376 = sub_26B4D4408();
  *(&v376 + 1) = sub_26B4D4414();
  *&v338 = v165;
  *(&v338 + 1) = v166;
  *&v300 = v164;
  *(&v300 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B5502B0, &unk_287BF3F40, &unk_287BF27F8, &unk_287BF2830, 0, 0, v407, v399._rawValue + 3712, v83 & 1, v118 & 1, v300, v338, v376, v168, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v170 = sub_26B470D98(&unk_287BF2980);
  v171 = sub_26B470D98(&unk_287BF29A8);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_26B5450D0;
  v173 = *v400;
  *(v172 + 32) = *v400;
  *(v172 + 40) = 1;
  *(v172 + 48) = v173;
  *(v172 + 56) = 3;
  *(v172 + 64) = v173;
  *(v172 + 72) = 8;
  v174 = sub_26B470F10(&unk_287BF29D0);
  v406 = 4;
  v405 = 4;
  v175.value._countAndFlagsBits = 0x68507463656C6573;
  v175.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v175, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v377 = sub_26B4D4408();
  *(&v377 + 1) = sub_26B4D4414();
  *&v339 = v171;
  *(&v339 + 1) = v172;
  *&v301 = v170;
  *(&v301 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B5502D0, &unk_287BF3F70, &unk_287BF2910, &unk_287BF2948, 0, 0, v407, v399._rawValue + 3896, v83 & 1, v118 & 1, v301, v339, v377, v174, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v176 = sub_26B470D98(&unk_287BF2AB8);
  v177 = sub_26B470D98(&unk_287BF2AE0);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_26B5450C0;
  v179 = *v400;
  *(v178 + 32) = *v400;
  *(v178 + 40) = 1;
  *(v178 + 48) = v179;
  *(v178 + 56) = 3;
  *(v178 + 64) = v179;
  *(v178 + 72) = 8;
  *(v178 + 80) = 0x403A000000000000;
  *(v178 + 88) = 10;
  v180 = sub_26B470F10(&unk_287BF2B08);
  v406 = 4;
  v405 = 4;
  v181.value._countAndFlagsBits = 0x726F46796C707061;
  v181.value._object = 0xEC0000003A74616DLL;
  Action.init(_:mac:)(v181, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v83) = sub_26B4CE5C8();
  LOBYTE(v118) = sub_26B4D4400();
  *&v378 = sub_26B4D4408();
  *(&v378 + 1) = sub_26B4D4414();
  *&v340 = v177;
  *(&v340 + 1) = v178;
  *&v302 = v176;
  *(&v302 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5502F0, &unk_287BF3FA0, &unk_287BF2A48, &unk_287BF2A80, 0, 0, v407, v399._rawValue + 4080, v83 & 1, v118 & 1, v302, v340, v378, v180, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v182 = sub_26B470D98(&unk_287BF2BD0);
  v183 = sub_26B470D98(&unk_287BF2BF8);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_26B5450C0;
  v185 = *v400;
  *(v184 + 32) = *v400;
  *(v184 + 40) = 1;
  *(v184 + 48) = v185;
  *(v184 + 56) = 3;
  *(v184 + 64) = v185;
  *(v184 + 72) = 8;
  *(v184 + 80) = 0x403A000000000000;
  *(v184 + 88) = 10;
  v186 = sub_26B470F10(&unk_287BF2C20);
  v406 = 4;
  v405 = 4;
  v187.value._countAndFlagsBits = 0x68507463656C6573;
  v187.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v187, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v101) = sub_26B4CE5C8();
  LOBYTE(v177) = sub_26B4D4400();
  *&v379 = sub_26B4D4408();
  *(&v379 + 1) = sub_26B4D4414();
  *&v341 = v183;
  *(&v341 + 1) = v184;
  *&v303 = v182;
  *(&v303 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B550310, &unk_287BF3FD0, &unk_287BF2B60, &unk_287BF2B98, 0, 0, v407, v399._rawValue + 4264, v101 & 1, v177 & 1, v303, v341, v379, v186, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v188 = sub_26B470D98(&unk_287BF2D08);
  v189 = sub_26B470D98(&unk_287BF2D30);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26B5450C0;
  v191 = *v400;
  *(v190 + 32) = *v400;
  *(v190 + 40) = 1;
  *(v190 + 48) = v191;
  *(v190 + 56) = 3;
  *(v190 + 64) = v191;
  *(v190 + 72) = 8;
  *(v190 + 80) = 0x403A000000000000;
  *(v190 + 88) = 10;
  v192 = sub_26B470F10(&unk_287BF2D58);
  v406 = 4;
  v405 = 4;
  v193.value._object = 0x800000026B550360;
  v193.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v193, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v101) = sub_26B4CE5C8();
  LOBYTE(v177) = sub_26B4D4400();
  *&v380 = sub_26B4D4408();
  *(&v380 + 1) = sub_26B4D4414();
  *&v342 = v189;
  *(&v342 + 1) = v190;
  *&v304 = v188;
  *(&v304 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B550330, &unk_287BF4000, &unk_287BF2C98, &unk_287BF2CD0, 0, 0, v407, v399._rawValue + 4448, v101 & 1, v177 & 1, v304, v342, v380, v192, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v194 = sub_26B470D98(&unk_287BF2E20);
  v195 = sub_26B470D98(&unk_287BF2E48);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_26B5450C0;
  v197 = *v400;
  *(v196 + 32) = *v400;
  *(v196 + 40) = 1;
  *(v196 + 48) = v197;
  *(v196 + 56) = 3;
  *(v196 + 64) = v197;
  *(v196 + 72) = 8;
  *(v196 + 80) = 0x403A000000000000;
  *(v196 + 88) = 10;
  v198 = sub_26B470F10(&unk_287BF2E70);
  v406 = 4;
  v405 = 4;
  v199.value._countAndFlagsBits = 0x68507463656C6573;
  v199.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v199, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v101) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v381 = sub_26B4D4408();
  *(&v381 + 1) = sub_26B4D4414();
  *&v343 = v195;
  *(&v343 + 1) = v196;
  *&v305 = v194;
  *(&v305 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B550390, &unk_287BF4030, &unk_287BF2DB0, &unk_287BF2DE8, 0, 0, v407, v399._rawValue + 4632, v101 & 1, v178 & 1, v305, v343, v381, v198, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v200 = sub_26B470D98(&unk_287BF2F50);
  v201 = sub_26B470D98(&unk_287BF2F78);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_26B5450C0;
  v203 = *v400;
  *(v202 + 32) = *v400;
  *(v202 + 40) = 1;
  *(v202 + 48) = v203;
  *(v202 + 56) = 3;
  *(v202 + 64) = v203;
  *(v202 + 72) = 8;
  *(v202 + 80) = 0x403A000000000000;
  *(v202 + 88) = 10;
  v204 = sub_26B470F10(&unk_287BF2FA0);
  v406 = 4;
  v405 = 4;
  v205.value._object = 0x800000026B550360;
  v205.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v205, 0);
  v401 = v403;
  v402 = v404;
  v206 = sub_26B4D43F4();
  LOBYTE(v178) = sub_26B4CE5C8();
  LOBYTE(v145) = sub_26B4D4400();
  *&v382 = sub_26B4D4408();
  *(&v382 + 1) = sub_26B4D4414();
  *&v344 = v201;
  *(&v344 + 1) = v202;
  *&v306 = v200;
  *(&v306 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B5503C0, &unk_287BF4060, &unk_287BF2F18, v206, 0, 0, v407, v399._rawValue + 4816, v178 & 1, v145 & 1, v306, v344, v382, v204, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v207 = sub_26B470D98(&unk_287BF3078);
  v208 = sub_26B470D98(&unk_287BF30A0);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_26B5450C0;
  v210 = *v400;
  *(v209 + 32) = *v400;
  *(v209 + 40) = 1;
  *(v209 + 48) = v210;
  *(v209 + 56) = 3;
  *(v209 + 64) = v210;
  *(v209 + 72) = 8;
  *(v209 + 80) = 0x403A000000000000;
  *(v209 + 88) = 10;
  v211 = sub_26B470F10(&unk_287BF30C8);
  v406 = 4;
  v405 = 4;
  v212.value._countAndFlagsBits = 0x68507463656C6573;
  v212.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v212, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v206) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v383 = sub_26B4D4408();
  *(&v383 + 1) = sub_26B4D4414();
  *&v345 = v208;
  *(&v345 + 1) = v209;
  *&v307 = v207;
  *(&v307 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B5503F0, &unk_287BF4090, &unk_287BF3008, &unk_287BF3040, 0, 0, v407, v399._rawValue + 5000, v206 & 1, v178 & 1, v307, v345, v383, v211, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v213 = sub_26B470D98(&unk_287BF31A0);
  v214 = sub_26B470D98(&unk_287BF31C8);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B5450C0;
  v216 = *v400;
  *(v215 + 32) = *v400;
  *(v215 + 40) = 1;
  *(v215 + 48) = v216;
  *(v215 + 56) = 3;
  *(v215 + 64) = v216;
  *(v215 + 72) = 8;
  *(v215 + 80) = 0x403A000000000000;
  *(v215 + 88) = 10;
  v217 = sub_26B470F10(&unk_287BF31F0);
  v406 = 4;
  v405 = 4;
  v218.value._object = 0x800000026B550360;
  v218.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v218, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v206) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v384 = sub_26B4D4408();
  *(&v384 + 1) = sub_26B4D4414();
  *&v346 = v214;
  *(&v346 + 1) = v215;
  *&v308 = v213;
  *(&v308 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B550420, &unk_287BF40C0, &unk_287BF3130, &unk_287BF3168, 0, 0, v407, v399._rawValue + 5184, v206 & 1, v178 & 1, v308, v346, v384, v217, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v219 = sub_26B470D98(&unk_287BF32B8);
  v220 = sub_26B470D98(&unk_287BF32E0);
  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_26B5450C0;
  v222 = *v400;
  *(v221 + 32) = *v400;
  *(v221 + 40) = 1;
  *(v221 + 48) = v222;
  *(v221 + 56) = 3;
  *(v221 + 64) = v222;
  *(v221 + 72) = 8;
  *(v221 + 80) = 0x403A000000000000;
  *(v221 + 88) = 10;
  v223 = sub_26B470F10(&unk_287BF3308);
  v406 = 4;
  v405 = 4;
  v224.value._countAndFlagsBits = 0x68507463656C6573;
  v224.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v224, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v206) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v385 = sub_26B4D4408();
  *(&v385 + 1) = sub_26B4D4414();
  *&v347 = v220;
  *(&v347 + 1) = v221;
  *&v309 = v219;
  *(&v309 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B550450, &unk_287BF40F0, &unk_287BF3248, &unk_287BF3280, 0, 0, v407, v399._rawValue + 5368, v206 & 1, v178 & 1, v309, v347, v385, v223, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v225 = sub_26B470D98(&unk_287BF33C8);
  v226 = sub_26B470D98(&unk_287BF33F0);
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_26B5450C0;
  v228 = *v400;
  *(v227 + 32) = *v400;
  *(v227 + 40) = 1;
  *(v227 + 48) = v228;
  *(v227 + 56) = 3;
  *(v227 + 64) = v228;
  *(v227 + 72) = 8;
  *(v227 + 80) = 0x403A000000000000;
  *(v227 + 88) = 10;
  v229 = sub_26B470F10(&unk_287BF3418);
  v406 = 4;
  v405 = 4;
  v230.value._object = 0x800000026B550360;
  v230.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v230, 0);
  v401 = v403;
  v402 = v404;
  v231 = sub_26B4D43F4();
  LOBYTE(v221) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v386 = sub_26B4D4408();
  *(&v386 + 1) = sub_26B4D4414();
  *&v348 = v226;
  *(&v348 + 1) = v227;
  *&v310 = v225;
  *(&v310 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B550480, &unk_287BF4120, &unk_287BF3390, v231, 0, 0, v407, v399._rawValue + 5552, v221 & 1, v178 & 1, v310, v348, v386, v229, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v232 = sub_26B470D98(&unk_287BF34F0);
  v233 = sub_26B470D98(&unk_287BF3518);
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_26B5450C0;
  v235 = *v400;
  *(v234 + 32) = *v400;
  *(v234 + 40) = 1;
  *(v234 + 48) = v235;
  *(v234 + 56) = 3;
  *(v234 + 64) = v235;
  *(v234 + 72) = 8;
  *(v234 + 80) = 0x403A000000000000;
  *(v234 + 88) = 10;
  v236 = sub_26B470F10(&unk_287BF3540);
  v406 = 4;
  v405 = 4;
  v237.value._countAndFlagsBits = 0x68507463656C6573;
  v237.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v237, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v231) = sub_26B4CE5C8();
  LOBYTE(v221) = sub_26B4D4400();
  *&v387 = sub_26B4D4408();
  *(&v387 + 1) = sub_26B4D4414();
  *&v349 = v233;
  *(&v349 + 1) = v234;
  *&v311 = v232;
  *(&v311 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B5504B0, &unk_287BF4150, &unk_287BF3480, &unk_287BF34B8, 0, 0, v407, v399._rawValue + 5736, v231 & 1, v221 & 1, v311, v349, v387, v236, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v238 = sub_26B470D98(&unk_287BF35E0);
  v239 = sub_26B470D98(&unk_287BF3608);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_26B5450C0;
  v241 = *v400;
  *(v240 + 32) = *v400;
  *(v240 + 40) = 1;
  *(v240 + 48) = v241;
  *(v240 + 56) = 3;
  *(v240 + 64) = v241;
  *(v240 + 72) = 8;
  *(v240 + 80) = 0x403A000000000000;
  *(v240 + 88) = 10;
  v242 = sub_26B470F10(&unk_287BF3630);
  v406 = 4;
  v405 = 4;
  v243.value._object = 0x800000026B550360;
  v243.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v243, 0);
  v401 = v403;
  v402 = v404;
  v244 = sub_26B4D43F4();
  LOBYTE(v221) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v388 = sub_26B4D4408();
  *(&v388 + 1) = sub_26B4D4414();
  *&v350 = v239;
  *(&v350 + 1) = v240;
  *&v312 = v238;
  *(&v312 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B5504E0, &unk_287BF4180, &unk_287BF35A8, v244, 0, 0, v407, v399._rawValue + 5920, v221 & 1, v178 & 1, v312, v350, v388, v242, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v245 = sub_26B470D98(&unk_287BF36F8);
  v246 = sub_26B470D98(&unk_287BF3720);
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_26B5450C0;
  v248 = *v400;
  *(v247 + 32) = *v400;
  *(v247 + 40) = 1;
  *(v247 + 48) = v248;
  *(v247 + 56) = 3;
  *(v247 + 64) = v248;
  *(v247 + 72) = 8;
  *(v247 + 80) = 0x403A000000000000;
  *(v247 + 88) = 10;
  v249 = sub_26B470F10(&unk_287BF3748);
  v406 = 4;
  v405 = 4;
  v250.value._countAndFlagsBits = 0x68507463656C6573;
  v250.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v250, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v244) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v389 = sub_26B4D4408();
  *(&v389 + 1) = sub_26B4D4414();
  *&v351 = v246;
  *(&v351 + 1) = v247;
  *&v313 = v245;
  *(&v313 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B550510, &unk_287BF41B0, &unk_287BF3688, &unk_287BF36C0, 0, 0, v407, v399._rawValue + 6104, v244 & 1, v178 & 1, v313, v351, v389, v249, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v251 = sub_26B470D98(&unk_287BF37E8);
  v252 = sub_26B470D98(&unk_287BF3810);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_26B5450C0;
  v254 = *v400;
  *(v253 + 32) = *v400;
  *(v253 + 40) = 1;
  *(v253 + 48) = v254;
  *(v253 + 56) = 3;
  *(v253 + 64) = v254;
  *(v253 + 72) = 8;
  *(v253 + 80) = 0x403A000000000000;
  *(v253 + 88) = 10;
  v255 = sub_26B470F10(&unk_287BF3838);
  v406 = 4;
  v405 = 4;
  v256.value._object = 0x800000026B550360;
  v256.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v256, 0);
  v401 = v403;
  v402 = v404;
  v257 = sub_26B4D43F4();
  LOBYTE(v178) = sub_26B4CE5C8();
  LOBYTE(v145) = sub_26B4D4400();
  *&v390 = sub_26B4D4408();
  *(&v390 + 1) = sub_26B4D4414();
  *&v352 = v252;
  *(&v352 + 1) = v253;
  *&v314 = v251;
  *(&v314 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B550530, &unk_287BF41E0, &unk_287BF37B0, v257, 0, 0, v407, v399._rawValue + 6288, v178 & 1, v145 & 1, v314, v352, v390, v255, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v258 = sub_26B470D98(&unk_287BF3900);
  v259 = sub_26B470D98(&unk_287BF3928);
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_26B5450C0;
  v261 = *v400;
  *(v260 + 32) = *v400;
  *(v260 + 40) = 1;
  *(v260 + 48) = v261;
  *(v260 + 56) = 3;
  *(v260 + 64) = v261;
  *(v260 + 72) = 8;
  *(v260 + 80) = 0x403A000000000000;
  *(v260 + 88) = 10;
  v262 = sub_26B470F10(&unk_287BF3950);
  v406 = 4;
  v405 = 4;
  v263.value._countAndFlagsBits = 0x68507463656C6573;
  v263.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v263, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v257) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v391 = sub_26B4D4408();
  *(&v391 + 1) = sub_26B4D4414();
  *&v353 = v259;
  *(&v353 + 1) = v260;
  *&v315 = v258;
  *(&v315 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B550560, &unk_287BF4210, &unk_287BF3890, &unk_287BF38C8, 0, 0, v407, v399._rawValue + 6472, v257 & 1, v178 & 1, v315, v353, v391, v262, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v264 = sub_26B470D98(&unk_287BF39F0);
  v265 = sub_26B470D98(&unk_287BF3A18);
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_26B5450C0;
  v267 = *v400;
  *(v266 + 32) = *v400;
  *(v266 + 40) = 1;
  *(v266 + 48) = v267;
  *(v266 + 56) = 3;
  *(v266 + 64) = v267;
  *(v266 + 72) = 8;
  *(v266 + 80) = 0x403A000000000000;
  *(v266 + 88) = 10;
  v268 = sub_26B470F10(&unk_287BF3A40);
  v406 = 4;
  v405 = 4;
  v269.value._object = 0x800000026B550360;
  v269.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v269, 0);
  v401 = v403;
  v402 = v404;
  v270 = sub_26B4D43F4();
  LOBYTE(v178) = sub_26B4CE5C8();
  LOBYTE(v145) = sub_26B4D4400();
  *&v392 = sub_26B4D4408();
  *(&v392 + 1) = sub_26B4D4414();
  *&v354 = v265;
  *(&v354 + 1) = v266;
  *&v316 = v264;
  *(&v316 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B550590, &unk_287BF4240, &unk_287BF39B8, v270, 0, 0, v407, v399._rawValue + 6656, v178 & 1, v145 & 1, v316, v354, v392, v268, &v406, &v405, 0, 0, &v401);
  v407[0] = 1;
  v271 = sub_26B470D98(&unk_287BF3B08);
  v272 = sub_26B470D98(&unk_287BF3B30);
  v273 = swift_allocObject();
  *(v273 + 16) = xmmword_26B5450C0;
  v274 = *v400;
  *(v273 + 32) = *v400;
  *(v273 + 40) = 1;
  *(v273 + 48) = v274;
  *(v273 + 56) = 3;
  *(v273 + 64) = v274;
  *(v273 + 72) = 8;
  *(v273 + 80) = 0x403A000000000000;
  *(v273 + 88) = 10;
  v275 = sub_26B470F10(&unk_287BF3B58);
  v406 = 4;
  v405 = 4;
  v276.value._countAndFlagsBits = 0x68507463656C6573;
  v276.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v276, 0);
  v401 = v403;
  v402 = v404;
  LOBYTE(v266) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v393 = sub_26B4D4408();
  *(&v393 + 1) = sub_26B4D4414();
  *&v355 = v272;
  *(&v355 + 1) = v273;
  *&v317 = v271;
  *(&v317 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B5505C0, &unk_287BF4270, &unk_287BF3A98, &unk_287BF3AD0, 0, 0, v407, v399._rawValue + 6840, v266 & 1, v178 & 1, v317, v355, v393, v275, &v406, &v405, 0, 0, &v401);
  LOBYTE(v238) = sub_26B4CE5C8();
  v277 = sub_26B4D4400() & 1;
  v278._countAndFlagsBits = 0x676E6974696445;
  v278._object = 0xE700000000000000;
  v279._countAndFlagsBits = v398;
  v279._object = v397;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406C48, v278, v279, v238 & 1, v277, v399);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B470D00()
{
  if (qword_2804003C0 != -1)
  {
    swift_once();
  }

  return &stru_280406C48;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B470D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC80, &qword_26B5450E8);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v17 = a1 + 32;
    sub_26B471350();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v18 = *(v17 + v5);
      result = sub_26B5429B4();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v4 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        sub_26B4713A4();
        while (1)
        {
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v4 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + v12) = v18;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26B470F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC68, &qword_26B5450E0);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v17 = a1 + 32;
    sub_26B4712A8();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v18 = *(v17 + v5);
      result = sub_26B5429B4();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v4 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        sub_26B4712FC();
        while (1)
        {
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v4 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + v12) = v18;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26B471088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
    v3 = sub_26B542D44();
    v4 = v3 + 56;
    v17 = a1 + 32;
    sub_26B471200();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v18 = *(v17 + v5);
      result = sub_26B5429B4();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v4 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        sub_26B471254();
        while (1)
        {
          result = sub_26B542A34();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v4 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + v12) = v18;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26B471200()
{
  result = qword_2803FFC58;
  if (!qword_2803FFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC58);
  }

  return result;
}

unint64_t sub_26B471254()
{
  result = qword_2803FFC60;
  if (!qword_2803FFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC60);
  }

  return result;
}

unint64_t sub_26B4712A8()
{
  result = qword_2803FFC70;
  if (!qword_2803FFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC70);
  }

  return result;
}

unint64_t sub_26B4712FC()
{
  result = qword_2803FFC78;
  if (!qword_2803FFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC78);
  }

  return result;
}

unint64_t sub_26B471350()
{
  result = qword_2803FFC88;
  if (!qword_2803FFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC88);
  }

  return result;
}

unint64_t sub_26B4713A4()
{
  result = qword_2803FFC90;
  if (!qword_2803FFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFC90);
  }

  return result;
}

void sub_26B4713F8()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v468 = sub_26B542AB4();
  v467 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B5450F0;
  v483[0] = 0;
  v10 = sub_26B470D98(&unk_287BF4320);
  v11 = sub_26B470D98(&unk_287BF4348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5450C0;
  v475 = sub_26B4C6A78();
  v13 = *v475;
  *(v12 + 32) = *v475;
  *(v12 + 40) = 1;
  *(v12 + 48) = v13;
  *(v12 + 56) = 3;
  *(v12 + 64) = v13;
  *(v12 + 72) = 8;
  *(v12 + 80) = 0x403A000000000000;
  *(v12 + 88) = 10;
  v14 = sub_26B471088(&unk_287BF4370);
  v482 = 4;
  v481 = 4;
  v15.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v15.value._object = 0xE90000000000003ALL;
  v16.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v16.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v15, v16);
  v477 = v479;
  v478 = v480;
  v17 = sub_26B4D43F4();
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  v20 = sub_26B4D4414();
  v21 = sub_26B4D4414();
  *&v406 = v14;
  *(&v406 + 1) = v20;
  *&v364 = v11;
  *(&v364 + 1) = v12;
  v476._rawValue = v9;
  *&v322 = v10;
  *(&v322 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5524B0, &unk_287BF6CC0, &unk_287BF42D0, v17, 0, 0, v483, v9 + 32, v18 & 1, v19 & 1, v322, v364, v406, v21, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v471 = sub_26B470D98(&unk_287BF4400);
  v22 = sub_26B470D98(&unk_287BF4428);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B545100;
  *(v23 + 32) = *v475;
  *(v23 + 40) = 1;
  v24 = sub_26B471088(&unk_287BF4450);
  v482 = 4;
  v481 = 4;
  v25.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v25.value._object = 0xE90000000000003ALL;
  v26.value._countAndFlagsBits = 0x6E776F4465766F6DLL;
  v26.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v25, v26);
  v477 = v479;
  v478 = v480;
  v27 = sub_26B4D43F4();
  v28 = sub_26B4CE5C8();
  LOBYTE(v20) = sub_26B4D4400();
  v29 = sub_26B4D4414();
  v30 = sub_26B4D4414();
  *&v407 = v24;
  *(&v407 + 1) = v29;
  *&v365 = v22;
  *(&v365 + 1) = v23;
  *(&v323 + 1) = MEMORY[0x277D84FA0];
  *&v323 = v471;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B5524D0, &unk_287BF6CF0, &unk_287BF43C8, v27, 0, 0, v483, v9 + 216, v28 & 1, v20 & 1, v323, v365, v407, v30, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v31 = sub_26B470D98(&unk_287BF44F8);
  v32 = sub_26B470D98(&unk_287BF4520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26B5450C0;
  v34 = *v475;
  *(v33 + 32) = *v475;
  *(v33 + 40) = 1;
  *(v33 + 48) = v34;
  *(v33 + 56) = 3;
  *(v33 + 64) = v34;
  *(v33 + 72) = 8;
  *(v33 + 80) = 0x403A000000000000;
  *(v33 + 88) = 10;
  v35 = sub_26B471088(&unk_287BF4548);
  v482 = 4;
  v481 = 4;
  v36.value._countAndFlagsBits = 0x3A705565766F6DLL;
  v37.value._countAndFlagsBits = 0x705565766F6DLL;
  v36.value._object = 0xE700000000000000;
  v37.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v36, v37);
  v477 = v479;
  v478 = v480;
  v38 = sub_26B4D43F4();
  v39 = sub_26B4CE5C8();
  LOBYTE(v20) = sub_26B4D4400();
  v40 = sub_26B4D4414();
  v41 = sub_26B4D4414();
  *&v408 = v35;
  *(&v408 + 1) = v40;
  *&v366 = v32;
  *(&v366 + 1) = v33;
  *&v324 = v31;
  *(&v324 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5524F0, &unk_287BF6D20, &unk_287BF44A8, v38, 0, 0, v483, v476._rawValue + 400, v39 & 1, v20 & 1, v324, v366, v408, v41, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v469 = sub_26B470D98(&unk_287BF45D8);
  v42 = sub_26B470D98(&unk_287BF4600);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26B545100;
  *(v43 + 32) = *v475;
  *(v43 + 40) = 1;
  v44 = sub_26B471088(&unk_287BF4628);
  v482 = 4;
  v481 = 4;
  v45.value._countAndFlagsBits = 0x3A705565766F6DLL;
  v45.value._object = 0xE700000000000000;
  v46.value._countAndFlagsBits = 0x705565766F6DLL;
  v46.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v45, v46);
  v477 = v479;
  v478 = v480;
  v47 = sub_26B4D43F4();
  LOBYTE(v40) = sub_26B4CE5C8();
  v48 = sub_26B4D4400();
  v49 = sub_26B4D4414();
  v50 = sub_26B4D4414();
  *&v409 = v44;
  *(&v409 + 1) = v49;
  *&v367 = v42;
  *(&v367 + 1) = v43;
  *(&v325 + 1) = MEMORY[0x277D84FA0];
  *&v325 = v469;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B552510, &unk_287BF6D50, &unk_287BF45A0, v47, 0, 0, v483, v476._rawValue + 584, v40 & 1, v48 & 1, v325, v367, v409, v50, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v470 = sub_26B470D98(&unk_287BF46D0);
  v51 = sub_26B470D98(&unk_287BF46F8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26B5450C0;
  v53 = *v475;
  *(v52 + 32) = *v475;
  *(v52 + 40) = 1;
  *(v52 + 48) = v53;
  *(v52 + 56) = 3;
  *(v52 + 64) = v53;
  *(v52 + 72) = 8;
  *(v52 + 80) = 0x403A000000000000;
  *(v52 + 88) = 10;
  v54 = sub_26B471088(&unk_287BF4720);
  v482 = 4;
  v481 = 4;
  v55.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v55.value._object = 0xE90000000000003ALL;
  v56.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v56.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v55, v56);
  v477 = v479;
  v478 = v480;
  v57 = sub_26B4D43F4();
  LOBYTE(v40) = sub_26B4CE5C8();
  v58 = sub_26B4D4400();
  v59 = sub_26B4D4414();
  v60 = sub_26B4D4414();
  *&v410 = v54;
  *(&v410 + 1) = v59;
  *&v368 = v51;
  *(&v368 + 1) = v52;
  *(&v326 + 1) = MEMORY[0x277D84FA0];
  *&v326 = v470;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B552530, &unk_287BF6D80, &unk_287BF4680, v57, 0, 0, v483, v476._rawValue + 768, v40 & 1, v58 & 1, v326, v368, v410, v60, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v473 = sub_26B470D98(&unk_287BF47B0);
  v61 = sub_26B470D98(&unk_287BF47D8);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26B545100;
  *(v62 + 32) = *v475;
  *(v62 + 40) = 1;
  v63 = sub_26B471088(&unk_287BF4800);
  v482 = 4;
  v481 = 4;
  v64.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v64.value._object = 0xE90000000000003ALL;
  v65.value._countAndFlagsBits = 0x7466654C65766F6DLL;
  v65.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v64, v65);
  v477 = v479;
  v478 = v480;
  v66 = sub_26B4D43F4();
  v67 = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  v68 = sub_26B4D4414();
  v69 = sub_26B4D4414();
  *&v411 = v63;
  *(&v411 + 1) = v68;
  *&v369 = v61;
  *(&v369 + 1) = v62;
  *(&v327 + 1) = MEMORY[0x277D84FA0];
  *&v327 = v473;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B552550, &unk_287BF6DB0, &unk_287BF4778, v66, 0, 0, v483, v476._rawValue + 952, v67 & 1, v59 & 1, v327, v369, v411, v69, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v70 = sub_26B470D98(&unk_287BF48A8);
  v71 = sub_26B470D98(&unk_287BF48D0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26B5450C0;
  v73 = *v475;
  *(v72 + 32) = *v475;
  *(v72 + 40) = 1;
  *(v72 + 48) = v73;
  *(v72 + 56) = 3;
  *(v72 + 64) = v73;
  *(v72 + 72) = 8;
  *(v72 + 80) = 0x403A000000000000;
  *(v72 + 88) = 10;
  v74 = sub_26B471088(&unk_287BF48F8);
  v482 = 4;
  v481 = 4;
  v75.value._countAndFlagsBits = 0x6867695265766F6DLL;
  v76.value._object = 0xE900000000000074;
  v75.value._object = 0xEA00000000003A74;
  v76.value._countAndFlagsBits = 0x6867695265766F6DLL;
  Action.init(_:mac:)(v75, v76);
  v477 = v479;
  v478 = v480;
  v77 = sub_26B4D43F4();
  LOBYTE(v63) = sub_26B4CE5C8();
  v78 = sub_26B4D4400();
  v79 = sub_26B4D4414();
  v80 = sub_26B4D4414();
  *&v412 = v74;
  *(&v412 + 1) = v79;
  *&v370 = v71;
  *(&v370 + 1) = v72;
  *&v328 = v70;
  *(&v328 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B552570, &unk_287BF6DE0, &unk_287BF4858, v77, 0, 0, v483, v476._rawValue + 1136, v63 & 1, v78 & 1, v328, v370, v412, v80, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v81 = sub_26B470D98(&unk_287BF4988);
  v82 = sub_26B470D98(&unk_287BF49B0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26B545100;
  *(v83 + 32) = *v475;
  *(v83 + 40) = 1;
  v84 = sub_26B471088(&unk_287BF49D8);
  v482 = 4;
  v481 = 4;
  v85.value._object = 0xE900000000000074;
  v86.value._countAndFlagsBits = 0x6867695265766F6DLL;
  v86.value._object = 0xEA00000000003A74;
  v85.value._countAndFlagsBits = 0x6867695265766F6DLL;
  Action.init(_:mac:)(v86, v85);
  v477 = v479;
  v478 = v480;
  v87 = sub_26B4D43F4();
  v88 = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  v89 = sub_26B4D4414();
  v90 = sub_26B4D4414();
  *&v413 = v84;
  *(&v413 + 1) = v89;
  *&v371 = v82;
  *(&v371 + 1) = v83;
  *&v329 = v81;
  *(&v329 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552590, &unk_287BF6E10, &unk_287BF4950, v87, 0, 0, v483, v476._rawValue + 1320, v88 & 1, v79 & 1, v329, v371, v413, v90, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v91 = sub_26B470D98(&unk_287BF4A98);
  v92 = sub_26B470D98(&unk_287BF4AC0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_26B5450C0;
  v94 = *v475;
  *(v93 + 32) = *v475;
  *(v93 + 40) = 1;
  *(v93 + 48) = v94;
  *(v93 + 56) = 3;
  *(v93 + 64) = v94;
  *(v93 + 72) = 8;
  *(v93 + 80) = 0x403A000000000000;
  *(v93 + 88) = 10;
  v95 = sub_26B470F10(&unk_287BF4AE8);
  v482 = 4;
  v481 = 4;
  v96.value._object = 0x800000026B5525D0;
  v96.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v96, 0);
  v477 = v479;
  v478 = v480;
  v97 = sub_26B4D43F4();
  v98 = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v414 = sub_26B4D4408();
  *(&v414 + 1) = sub_26B4D4414();
  *&v372 = v92;
  *(&v372 + 1) = v93;
  *&v330 = v91;
  *(&v330 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5525B0, &unk_287BF6E40, &unk_287BF4A60, v97, 0, 0, v483, v476._rawValue + 1504, v98 & 1, v79 & 1, v330, v372, v414, v95, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v458 = sub_26B470D98(&unk_287BF4BA8);
  v99 = sub_26B470D98(&unk_287BF4BD0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_26B5450C0;
  v101 = *v475;
  *(v100 + 32) = *v475;
  *(v100 + 40) = 1;
  *(v100 + 48) = v101;
  *(v100 + 56) = 3;
  *(v100 + 64) = v101;
  *(v100 + 72) = 8;
  *(v100 + 80) = 0x403A000000000000;
  *(v100 + 88) = 10;
  v102 = sub_26B470F10(&unk_287BF4BF8);
  v482 = 4;
  v481 = 4;
  v103.value._countAndFlagsBits = 0xD000000000000012;
  v103.value._object = 0x800000026B552610;
  Action.init(_:mac:)(v103, 0);
  v477 = v479;
  v478 = v480;
  v104 = sub_26B4D43F4();
  v105 = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v415 = sub_26B4D4408();
  *(&v415 + 1) = sub_26B4D4414();
  *&v373 = v99;
  *(&v373 + 1) = v100;
  *(&v331 + 1) = MEMORY[0x277D84FA0];
  *&v331 = v458;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5525F0, &unk_287BF6E70, &unk_287BF4B70, v104, 0, 0, v483, v476._rawValue + 1688, v105 & 1, v79 & 1, v331, v373, v415, v102, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v450 = sub_26B470D98(&unk_287BF4C98);
  v106 = sub_26B470D98(&unk_287BF4CC0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B5450C0;
  v108 = *v475;
  *(v107 + 32) = *v475;
  *(v107 + 40) = 1;
  *(v107 + 48) = v108;
  *(v107 + 56) = 3;
  *(v107 + 64) = v108;
  *(v107 + 72) = 8;
  *(v107 + 80) = 0x403A000000000000;
  *(v107 + 88) = 10;
  v109 = sub_26B470F10(&unk_287BF4CE8);
  v482 = 4;
  v481 = 4;
  v110.value._countAndFlagsBits = 0xD000000000000010;
  v110.value._object = 0x800000026B552650;
  Action.init(_:mac:)(v110, 0);
  v477 = v479;
  v478 = v480;
  v111 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v112 = sub_26B4D4400();
  *&v416 = sub_26B4D4408();
  *(&v416 + 1) = sub_26B4D4414();
  *&v374 = v106;
  *(&v374 + 1) = v107;
  *(&v332 + 1) = MEMORY[0x277D84FA0];
  *&v332 = v450;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552630, &unk_287BF6EA0, &unk_287BF4C60, v111, 0, 0, v483, v476._rawValue + 1872, v102 & 1, v112 & 1, v332, v374, v416, v109, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v451 = sub_26B470D98(&unk_287BF4D88);
  v113 = sub_26B470D98(&unk_287BF4DB0);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_26B5450C0;
  v115 = *v475;
  *(v114 + 32) = *v475;
  *(v114 + 40) = 1;
  *(v114 + 48) = v115;
  *(v114 + 56) = 3;
  *(v114 + 64) = v115;
  *(v114 + 72) = 8;
  *(v114 + 80) = 0x403A000000000000;
  *(v114 + 88) = 10;
  v116 = sub_26B470F10(&unk_287BF4DD8);
  v482 = 4;
  v481 = 4;
  v117.value._countAndFlagsBits = 0x4F646E456F546F67;
  v117.value._object = 0xEE003A64726F5766;
  Action.init(_:mac:)(v117, 0);
  v477 = v479;
  v478 = v480;
  v118 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v119 = sub_26B4D4400();
  *&v417 = sub_26B4D4408();
  *(&v417 + 1) = sub_26B4D4414();
  *&v375 = v113;
  *(&v375 + 1) = v114;
  *(&v333 + 1) = MEMORY[0x277D84FA0];
  *&v333 = v451;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B552670, &unk_287BF6ED0, &unk_287BF4D50, v118, 0, 0, v483, v476._rawValue + 2056, v102 & 1, v119 & 1, v333, v375, v417, v116, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v452 = sub_26B470D98(&unk_287BF4E78);
  v448 = sub_26B470D98(&unk_287BF4EA0);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_26B5450C0;
  v121 = *v475;
  *(v120 + 32) = *v475;
  *(v120 + 40) = 1;
  *(v120 + 48) = v121;
  *(v120 + 56) = 3;
  *(v120 + 64) = v121;
  *(v120 + 72) = 8;
  *(v120 + 80) = 0x403A000000000000;
  *(v120 + 88) = 10;
  v122 = sub_26B470F10(&unk_287BF4EC8);
  v482 = 4;
  v481 = 4;
  v123.value._object = 0x800000026B5526B0;
  v123.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v123, 0);
  v477 = v479;
  v478 = v480;
  v124 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v125 = sub_26B4D4400();
  *&v418 = sub_26B4D4408();
  *(&v418 + 1) = sub_26B4D4414();
  *(&v376 + 1) = v120;
  *&v376 = v448;
  *(&v334 + 1) = MEMORY[0x277D84FA0];
  *&v334 = v452;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B552690, &unk_287BF6F00, &unk_287BF4E40, v124, 0, 0, v483, v476._rawValue + 2240, v102 & 1, v125 & 1, v334, v376, v418, v122, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v459 = sub_26B470D98(&unk_287BF4F68);
  v126 = sub_26B470D98(&unk_287BF4F90);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_26B5450C0;
  v128 = *v475;
  *(v127 + 32) = *v475;
  *(v127 + 40) = 1;
  *(v127 + 48) = v128;
  *(v127 + 56) = 3;
  *(v127 + 64) = v128;
  *(v127 + 72) = 8;
  *(v127 + 80) = 0x403A000000000000;
  *(v127 + 88) = 10;
  v129 = sub_26B470F10(&unk_287BF4FB8);
  v482 = 4;
  v481 = 4;
  v130.value._object = 0x800000026B5526F0;
  v130.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v130, 0);
  v477 = v479;
  v478 = v480;
  v131 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v132 = sub_26B4D4400();
  *&v419 = sub_26B4D4408();
  *(&v419 + 1) = sub_26B4D4414();
  *&v377 = v126;
  *(&v377 + 1) = v127;
  *(&v335 + 1) = MEMORY[0x277D84FA0];
  *&v335 = v459;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5526D0, &unk_287BF6F30, &unk_287BF4F30, v131, 0, 0, v483, v476._rawValue + 2424, v102 & 1, v132 & 1, v335, v377, v419, v129, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v453 = sub_26B470D98(&unk_287BF5058);
  v133 = sub_26B470D98(&unk_287BF5080);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B5450C0;
  v135 = *v475;
  *(v134 + 32) = *v475;
  *(v134 + 40) = 1;
  *(v134 + 48) = v135;
  *(v134 + 56) = 3;
  *(v134 + 64) = v135;
  *(v134 + 72) = 8;
  *(v134 + 80) = 0x403A000000000000;
  *(v134 + 88) = 10;
  v136 = sub_26B470F10(&unk_287BF50A8);
  v482 = 4;
  v481 = 4;
  v137.value._countAndFlagsBits = 0xD000000000000015;
  v137.value._object = 0x800000026B552730;
  Action.init(_:mac:)(v137, 0);
  v477 = v479;
  v478 = v480;
  v138 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v139 = sub_26B4D4400();
  *&v420 = sub_26B4D4408();
  *(&v420 + 1) = sub_26B4D4414();
  *&v378 = v133;
  *(&v378 + 1) = v134;
  *(&v336 + 1) = MEMORY[0x277D84FA0];
  *&v336 = v453;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B552710, &unk_287BF6F60, &unk_287BF5020, v138, 0, 0, v483, v476._rawValue + 2608, v102 & 1, v139 & 1, v336, v378, v420, v136, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v140 = sub_26B470D98(&unk_287BF5148);
  v141 = sub_26B470D98(&unk_287BF5170);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_26B5450C0;
  v143 = *v475;
  *(v142 + 32) = *v475;
  *(v142 + 40) = 1;
  *(v142 + 48) = v143;
  *(v142 + 56) = 3;
  *(v142 + 64) = v143;
  *(v142 + 72) = 8;
  *(v142 + 80) = 0x403A000000000000;
  *(v142 + 88) = 10;
  v144 = sub_26B470F10(&unk_287BF5198);
  v482 = 4;
  v481 = 4;
  v145.value._object = 0x800000026B552770;
  v145.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v145, 0);
  v477 = v479;
  v478 = v480;
  v146 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v147 = sub_26B4D4400();
  *&v421 = sub_26B4D4408();
  *(&v421 + 1) = sub_26B4D4414();
  *&v379 = v141;
  *(&v379 + 1) = v142;
  *&v337 = v140;
  *(&v337 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552750, &unk_287BF6F90, &unk_287BF5110, v146, 0, 0, v483, v476._rawValue + 2792, v102 & 1, v147 & 1, v337, v379, v421, v144, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v148 = sub_26B470D98(&unk_287BF5238);
  v149 = sub_26B470D98(&unk_287BF5260);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B5450C0;
  v151 = *v475;
  *(v150 + 32) = *v475;
  *(v150 + 40) = 1;
  *(v150 + 48) = v151;
  *(v150 + 56) = 3;
  *(v150 + 64) = v151;
  *(v150 + 72) = 8;
  *(v150 + 80) = 0x403A000000000000;
  *(v150 + 88) = 10;
  v152 = sub_26B470F10(&unk_287BF5288);
  v482 = 4;
  v481 = 4;
  v153.value._object = 0x800000026B5527B0;
  v153.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v153, 0);
  v477 = v479;
  v478 = v480;
  v154 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v155 = sub_26B4D4400();
  *&v422 = sub_26B4D4408();
  *(&v422 + 1) = sub_26B4D4414();
  *&v380 = v149;
  *(&v380 + 1) = v150;
  *&v338 = v148;
  *(&v338 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B552790, &unk_287BF6FC0, &unk_287BF5200, v154, 0, 0, v483, v476._rawValue + 2976, v102 & 1, v155 & 1, v338, v380, v422, v152, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v156 = sub_26B470D98(&unk_287BF5328);
  v157 = sub_26B470D98(&unk_287BF5350);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_26B5450C0;
  v159 = *v475;
  *(v158 + 32) = *v475;
  *(v158 + 40) = 1;
  *(v158 + 48) = v159;
  *(v158 + 56) = 3;
  *(v158 + 64) = v159;
  *(v158 + 72) = 8;
  *(v158 + 80) = 0x403A000000000000;
  *(v158 + 88) = 10;
  v160 = sub_26B470F10(&unk_287BF5378);
  v482 = 4;
  v481 = 4;
  v161.value._object = 0xEE003A656E694C66;
  v161.value._countAndFlagsBits = 0x4F646E456F546F67;
  Action.init(_:mac:)(v161, 0);
  v477 = v479;
  v478 = v480;
  v162 = sub_26B4D43F4();
  LOBYTE(v102) = sub_26B4CE5C8();
  v163 = sub_26B4D4400();
  *&v423 = sub_26B4D4408();
  *(&v423 + 1) = sub_26B4D4414();
  *&v381 = v157;
  *(&v381 + 1) = v158;
  *&v339 = v156;
  *(&v339 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B5527D0, &unk_287BF6FF0, &unk_287BF52F0, v162, 0, 0, v483, v476._rawValue + 3160, v102 & 1, v163 & 1, v339, v381, v423, v160, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v164 = sub_26B470D98(&unk_287BF5418);
  v165 = sub_26B470D98(&unk_287BF5440);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B5450C0;
  v167 = *v475;
  *(v166 + 32) = *v475;
  *(v166 + 40) = 1;
  *(v166 + 48) = v167;
  *(v166 + 56) = 3;
  *(v166 + 64) = v167;
  *(v166 + 72) = 8;
  *(v166 + 80) = 0x403A000000000000;
  *(v166 + 88) = 10;
  v168 = sub_26B470F10(&unk_287BF5468);
  v482 = 4;
  v481 = 4;
  v169.value._object = 0x800000026B552810;
  v169.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v169, 0);
  v477 = v479;
  v478 = v480;
  v170 = sub_26B4D43F4();
  v171 = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v424 = sub_26B4D4408();
  *(&v424 + 1) = sub_26B4D4414();
  *&v382 = v165;
  *(&v382 + 1) = v166;
  *&v340 = v164;
  *(&v340 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5527F0, &unk_287BF7020, &unk_287BF53E0, v170, 0, 0, v483, v476._rawValue + 3344, v171 & 1, v79 & 1, v340, v382, v424, v168, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v172 = sub_26B470D98(&unk_287BF5508);
  v173 = sub_26B470D98(&unk_287BF5530);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B5450C0;
  v175 = *v475;
  *(v174 + 32) = *v475;
  *(v174 + 40) = 1;
  *(v174 + 48) = v175;
  *(v174 + 56) = 3;
  *(v174 + 64) = v175;
  *(v174 + 72) = 8;
  *(v174 + 80) = 0x403A000000000000;
  *(v174 + 88) = 10;
  v176 = sub_26B470F10(&unk_287BF5558);
  v482 = 4;
  v481 = 4;
  v177.value._object = 0x800000026B552850;
  v177.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v177, 0);
  v477 = v479;
  v478 = v480;
  v178 = sub_26B4D43F4();
  v179 = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v425 = sub_26B4D4408();
  *(&v425 + 1) = sub_26B4D4414();
  *&v383 = v173;
  *(&v383 + 1) = v174;
  *&v341 = v172;
  *(&v341 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552830, &unk_287BF7050, &unk_287BF54D0, v178, 0, 0, v483, v476._rawValue + 3528, v179 & 1, v79 & 1, v341, v383, v425, v176, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v180 = sub_26B470D98(&unk_287BF5608);
  v181 = sub_26B470D98(&unk_287BF5630);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_26B5450C0;
  v183 = *v475;
  *(v182 + 32) = *v475;
  *(v182 + 40) = 1;
  *(v182 + 48) = v183;
  *(v182 + 56) = 3;
  *(v182 + 64) = v183;
  *(v182 + 72) = 8;
  *(v182 + 80) = 0x403A000000000000;
  *(v182 + 88) = 10;
  v184 = sub_26B470F10(&unk_287BF5658);
  v482 = 4;
  v481 = 4;
  v185.value._object = 0x800000026B5528A0;
  v185.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v185, 0);
  v477 = v479;
  v478 = v480;
  v186 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v426 = sub_26B4D4408();
  *(&v426 + 1) = sub_26B4D4414();
  *&v384 = v181;
  *(&v384 + 1) = v182;
  *&v342 = v180;
  *(&v342 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552870, &unk_287BF7080, &unk_287BF55D0, v186, 0, 0, v483, v476._rawValue + 3712, v79 & 1, v178 & 1, v342, v384, v426, v184, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v187 = sub_26B470D98(&unk_287BF5738);
  v188 = sub_26B470D98(&unk_287BF5760);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_26B5450C0;
  v190 = *v475;
  *(v189 + 32) = *v475;
  *(v189 + 40) = 1;
  *(v189 + 48) = v190;
  *(v189 + 56) = 3;
  *(v189 + 64) = v190;
  *(v189 + 72) = 8;
  *(v189 + 80) = 0x403A000000000000;
  *(v189 + 88) = 10;
  v191 = sub_26B470F10(&unk_287BF5788);
  v482 = 4;
  v481 = 4;
  v192.value._countAndFlagsBits = 0xD00000000000002ALL;
  v192.value._object = 0x800000026B552900;
  Action.init(_:mac:)(v192, 0);
  v477 = v479;
  v478 = v480;
  v193 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v178) = sub_26B4D4400();
  *&v427 = sub_26B4D4408();
  *(&v427 + 1) = sub_26B4D4414();
  *&v385 = v188;
  *(&v385 + 1) = v189;
  *&v343 = v187;
  *(&v343 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B5528D0, &unk_287BF70B0, &unk_287BF5700, v193, 0, 0, v483, v476._rawValue + 3896, v79 & 1, v178 & 1, v343, v385, v427, v191, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v194 = sub_26B470D98(&unk_287BF5838);
  v195 = sub_26B470D98(&unk_287BF5860);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_26B5450C0;
  v197 = *v475;
  *(v196 + 32) = *v475;
  *(v196 + 40) = 1;
  *(v196 + 48) = v197;
  *(v196 + 56) = 3;
  *(v196 + 64) = v197;
  *(v196 + 72) = 8;
  *(v196 + 80) = 0x403A000000000000;
  *(v196 + 88) = 10;
  v198 = sub_26B470F10(&unk_287BF5888);
  v482 = 4;
  v481 = 4;
  v199.value._countAndFlagsBits = 0xD000000000000024;
  v199.value._object = 0x800000026B552960;
  Action.init(_:mac:)(v199, 0);
  v477 = v479;
  v478 = v480;
  v200 = sub_26B4D43F4();
  LOBYTE(v193) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v428 = sub_26B4D4408();
  *(&v428 + 1) = sub_26B4D4414();
  *&v386 = v195;
  *(&v386 + 1) = v196;
  *&v344 = v194;
  *(&v344 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552930, &unk_287BF70E0, &unk_287BF5800, v200, 0, 0, v483, v476._rawValue + 4080, v193 & 1, v79 & 1, v344, v386, v428, v198, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v461 = sub_26B470D98(&unk_287BF5968);
  v201 = sub_26B470D98(&unk_287BF5990);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_26B5450C0;
  v203 = *v475;
  *(v202 + 32) = *v475;
  *(v202 + 40) = 1;
  *(v202 + 48) = v203;
  *(v202 + 56) = 3;
  *(v202 + 64) = v203;
  *(v202 + 72) = 8;
  *(v202 + 80) = 0x403A000000000000;
  *(v202 + 88) = 10;
  v204 = sub_26B470F10(&unk_287BF59B8);
  v482 = 4;
  v481 = 4;
  v205.value._countAndFlagsBits = 0xD000000000000025;
  v205.value._object = 0x800000026B5529C0;
  Action.init(_:mac:)(v205, 0);
  v477 = v479;
  v478 = v480;
  v206 = sub_26B4D43F4();
  LOBYTE(v193) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v429 = sub_26B4D4408();
  *(&v429 + 1) = sub_26B4D4414();
  *&v387 = v201;
  *(&v387 + 1) = v202;
  *(&v345 + 1) = MEMORY[0x277D84FA0];
  *&v345 = v461;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552990, &unk_287BF7110, &unk_287BF5930, v206, 0, 0, v483, v476._rawValue + 4264, v193 & 1, v79 & 1, v345, v387, v429, v204, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v207 = sub_26B470D98(&unk_287BF5A68);
  v208 = sub_26B470D98(&unk_287BF5A90);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_26B5450C0;
  v210 = *v475;
  *(v209 + 32) = *v475;
  *(v209 + 40) = 1;
  *(v209 + 48) = v210;
  *(v209 + 56) = 3;
  *(v209 + 64) = v210;
  *(v209 + 72) = 8;
  *(v209 + 80) = 0x403A000000000000;
  *(v209 + 88) = 10;
  v211 = sub_26B470F10(&unk_287BF5AB8);
  v482 = 4;
  v481 = 4;
  v212.value._object = 0x800000026B552A20;
  v212.value._countAndFlagsBits = 0xD000000000000028;
  Action.init(_:mac:)(v212, 0);
  v477 = v479;
  v478 = v480;
  v213 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v206) = sub_26B4D4400();
  *&v430 = sub_26B4D4408();
  *(&v430 + 1) = sub_26B4D4414();
  *&v388 = v208;
  *(&v388 + 1) = v209;
  *&v346 = v207;
  *(&v346 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B5529F0, &unk_287BF7140, &unk_287BF5A30, v213, 0, 0, v483, v476._rawValue + 4448, v79 & 1, v206 & 1, v346, v388, v430, v211, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v462 = sub_26B470D98(&unk_287BF5B98);
  v214 = sub_26B470D98(&unk_287BF5BC0);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B5450C0;
  v216 = *v475;
  *(v215 + 32) = *v475;
  *(v215 + 40) = 1;
  *(v215 + 48) = v216;
  *(v215 + 56) = 3;
  *(v215 + 64) = v216;
  *(v215 + 72) = 8;
  *(v215 + 80) = 0x403A000000000000;
  *(v215 + 88) = 10;
  v217 = sub_26B470F10(&unk_287BF5BE8);
  v482 = 4;
  v481 = 4;
  v218.value._object = 0x800000026B552A80;
  v218.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v218, 0);
  v477 = v479;
  v478 = v480;
  v219 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v206) = sub_26B4D4400();
  *&v431 = sub_26B4D4408();
  *(&v431 + 1) = sub_26B4D4414();
  *&v389 = v214;
  *(&v389 + 1) = v215;
  *(&v347 + 1) = MEMORY[0x277D84FA0];
  *&v347 = v462;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552A50, &unk_287BF7170, &unk_287BF5B60, v219, 0, 0, v483, v476._rawValue + 4632, v79 & 1, v206 & 1, v347, v389, v431, v217, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v220 = sub_26B470D98(&unk_287BF5C98);
  v221 = sub_26B470D98(&unk_287BF5CC0);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_26B5450C0;
  v223 = *v475;
  *(v222 + 32) = *v475;
  *(v222 + 40) = 1;
  *(v222 + 48) = v223;
  *(v222 + 56) = 3;
  *(v222 + 64) = v223;
  *(v222 + 72) = 8;
  *(v222 + 80) = 0x403A000000000000;
  *(v222 + 88) = 10;
  v224 = sub_26B470F10(&unk_287BF5CE8);
  v482 = 4;
  v481 = 4;
  v225.value._object = 0x800000026B552AE0;
  v225.value._countAndFlagsBits = 0xD000000000000029;
  Action.init(_:mac:)(v225, 0);
  v477 = v479;
  v478 = v480;
  v226 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v206) = sub_26B4D4400();
  *&v432 = sub_26B4D4408();
  *(&v432 + 1) = sub_26B4D4414();
  *&v390 = v221;
  *(&v390 + 1) = v222;
  *&v348 = v220;
  *(&v348 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B552AB0, &unk_287BF71A0, &unk_287BF5C60, v226, 0, 0, v483, v476._rawValue + 4816, v79 & 1, v206 & 1, v348, v390, v432, v224, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v463 = sub_26B470D98(&unk_287BF5DC8);
  v227 = sub_26B470D98(&unk_287BF5DF0);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_26B5450C0;
  v229 = *v475;
  *(v228 + 32) = *v475;
  *(v228 + 40) = 1;
  *(v228 + 48) = v229;
  *(v228 + 56) = 3;
  *(v228 + 64) = v229;
  *(v228 + 72) = 8;
  *(v228 + 80) = 0x403A000000000000;
  *(v228 + 88) = 10;
  v230 = sub_26B470F10(&unk_287BF5E18);
  v482 = 4;
  v481 = 4;
  v231.value._countAndFlagsBits = 0xD00000000000002ALL;
  v231.value._object = 0x800000026B552B40;
  Action.init(_:mac:)(v231, 0);
  v477 = v479;
  v478 = v480;
  v232 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v206) = sub_26B4D4400();
  *&v433 = sub_26B4D4408();
  *(&v433 + 1) = sub_26B4D4414();
  *&v391 = v227;
  *(&v391 + 1) = v228;
  *(&v349 + 1) = MEMORY[0x277D84FA0];
  *&v349 = v463;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B552B10, &unk_287BF71D0, &unk_287BF5D90, v232, 0, 0, v483, v476._rawValue + 5000, v79 & 1, v206 & 1, v349, v391, v433, v230, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v464 = sub_26B470D98(&unk_287BF5EC8);
  v233 = sub_26B470D98(&unk_287BF5EF0);
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_26B5450C0;
  v235 = *v475;
  *(v234 + 32) = *v475;
  *(v234 + 40) = 1;
  *(v234 + 48) = v235;
  *(v234 + 56) = 3;
  *(v234 + 64) = v235;
  *(v234 + 72) = 8;
  *(v234 + 80) = 0x403A000000000000;
  *(v234 + 88) = 10;
  v236 = sub_26B470F10(&unk_287BF5F18);
  v482 = 4;
  v481 = 4;
  v237.value._object = 0x800000026B552BA0;
  v237.value._countAndFlagsBits = 0xD000000000000024;
  Action.init(_:mac:)(v237, 0);
  v477 = v479;
  v478 = v480;
  v238 = sub_26B4D43F4();
  LOBYTE(v232) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v434 = sub_26B4D4408();
  *(&v434 + 1) = sub_26B4D4414();
  *&v392 = v233;
  *(&v392 + 1) = v234;
  *(&v350 + 1) = MEMORY[0x277D84FA0];
  *&v350 = v464;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552B70, &unk_287BF7200, &unk_287BF5E90, v238, 0, 0, v483, v476._rawValue + 5184, v232 & 1, v79 & 1, v350, v392, v434, v236, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v465 = sub_26B470D98(&unk_287BF5FF8);
  v239 = sub_26B470D98(&unk_287BF6020);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_26B5450C0;
  v241 = *v475;
  *(v240 + 32) = *v475;
  *(v240 + 40) = 1;
  *(v240 + 48) = v241;
  *(v240 + 56) = 3;
  *(v240 + 64) = v241;
  *(v240 + 72) = 8;
  *(v240 + 80) = 0x403A000000000000;
  *(v240 + 88) = 10;
  v242 = sub_26B470F10(&unk_287BF6048);
  v482 = 4;
  v481 = 4;
  v243.value._object = 0x800000026B552C00;
  v243.value._countAndFlagsBits = 0xD000000000000025;
  Action.init(_:mac:)(v243, 0);
  v477 = v479;
  v478 = v480;
  v244 = sub_26B4D43F4();
  LOBYTE(v232) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v435 = sub_26B4D4408();
  *(&v435 + 1) = sub_26B4D4414();
  *&v393 = v239;
  *(&v393 + 1) = v240;
  *(&v351 + 1) = MEMORY[0x277D84FA0];
  *&v351 = v465;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552BD0, &unk_287BF7230, &unk_287BF5FC0, v244, 0, 0, v483, v476._rawValue + 5368, v232 & 1, v79 & 1, v351, v393, v435, v242, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v466 = sub_26B470D98(&unk_287BF60F8);
  v245 = sub_26B470D98(&unk_287BF6120);
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_26B5450C0;
  v247 = *v475;
  *(v246 + 32) = *v475;
  *(v246 + 40) = 1;
  *(v246 + 48) = v247;
  *(v246 + 56) = 3;
  *(v246 + 64) = v247;
  *(v246 + 72) = 8;
  *(v246 + 80) = 0x403A000000000000;
  *(v246 + 88) = 10;
  v248 = sub_26B470F10(&unk_287BF6148);
  v482 = 4;
  v481 = 4;
  v249.value._countAndFlagsBits = 0xD000000000000027;
  v249.value._object = 0x800000026B552C60;
  Action.init(_:mac:)(v249, 0);
  v477 = v479;
  v478 = v480;
  v250 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v244) = sub_26B4D4400();
  *&v436 = sub_26B4D4408();
  *(&v436 + 1) = sub_26B4D4414();
  *&v394 = v245;
  *(&v394 + 1) = v246;
  *(&v352 + 1) = MEMORY[0x277D84FA0];
  *&v352 = v466;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B552C30, &unk_287BF7260, &unk_287BF60C0, v250, 0, 0, v483, v476._rawValue + 5552, v79 & 1, v244 & 1, v352, v394, v436, v248, &v482, &v481, 0, 0, &v477);
  v483[0] = 0;
  v251 = sub_26B470D98(&unk_287BF61F8);
  v252 = sub_26B470D98(&unk_287BF6220);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_26B5450C0;
  v254 = *v475;
  *(v253 + 32) = *v475;
  *(v253 + 40) = 1;
  *(v253 + 48) = v254;
  *(v253 + 56) = 3;
  *(v253 + 64) = v254;
  *(v253 + 72) = 8;
  *(v253 + 80) = 0x403A000000000000;
  *(v253 + 88) = 10;
  v255 = sub_26B470F10(&unk_287BF6248);
  v482 = 4;
  v481 = 4;
  v256.value._countAndFlagsBits = 0xD000000000000026;
  v256.value._object = 0x800000026B552CC0;
  Action.init(_:mac:)(v256, 0);
  v477 = v479;
  v478 = v480;
  v257 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v162) = sub_26B4D4400();
  *&v437 = sub_26B4D4408();
  *(&v437 + 1) = sub_26B4D4414();
  *&v395 = v252;
  *(&v395 + 1) = v253;
  *&v353 = v251;
  *(&v353 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552C90, &unk_287BF7290, &unk_287BF61C0, v257, 0, 0, v483, v476._rawValue + 5736, v79 & 1, v162 & 1, v353, v395, v437, v255, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v460 = sub_26B470D98(&unk_287BF62F8);
  v258 = sub_26B470D98(&unk_287BF6320);
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_26B5450C0;
  v260 = *v475;
  *(v259 + 32) = *v475;
  *(v259 + 40) = 1;
  *(v259 + 48) = v260;
  *(v259 + 56) = 3;
  *(v259 + 64) = v260;
  *(v259 + 72) = 8;
  *(v259 + 80) = 0x403A000000000000;
  *(v259 + 88) = 10;
  v261 = sub_26B470F10(&unk_287BF6348);
  v482 = 4;
  v481 = 4;
  v262.value._countAndFlagsBits = 0xD000000000000022;
  v262.value._object = 0x800000026B552D20;
  Action.init(_:mac:)(v262, 0);
  v477 = v479;
  v478 = v480;
  v263 = sub_26B4D43F4();
  LOBYTE(v257) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v438 = sub_26B4D4408();
  *(&v438 + 1) = sub_26B4D4414();
  *&v396 = v258;
  *(&v396 + 1) = v259;
  *(&v354 + 1) = MEMORY[0x277D84FA0];
  *&v354 = v460;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B552CF0, &unk_287BF72C0, &unk_287BF62C0, v263, 0, 0, v483, v476._rawValue + 5920, v257 & 1, v79 & 1, v354, v396, v438, v261, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v454 = sub_26B470D98(&unk_287BF63F8);
  v264 = sub_26B470D98(&unk_287BF6420);
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_26B5450C0;
  v266 = *v475;
  *(v265 + 32) = *v475;
  *(v265 + 40) = 1;
  *(v265 + 48) = v266;
  *(v265 + 56) = 3;
  *(v265 + 64) = v266;
  *(v265 + 72) = 8;
  *(v265 + 80) = 0x403A000000000000;
  *(v265 + 88) = 10;
  v267 = sub_26B470F10(&unk_287BF6448);
  v482 = 4;
  v481 = 4;
  v268.value._countAndFlagsBits = 0xD000000000000021;
  v268.value._object = 0x800000026B552D80;
  Action.init(_:mac:)(v268, 0);
  v477 = v479;
  v478 = v480;
  v269 = sub_26B4D43F4();
  LOBYTE(v257) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v439 = sub_26B4D4408();
  *(&v439 + 1) = sub_26B4D4414();
  *&v397 = v264;
  *(&v397 + 1) = v265;
  *(&v355 + 1) = MEMORY[0x277D84FA0];
  *&v355 = v454;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B552D50, &unk_287BF72F0, &unk_287BF63C0, v269, 0, 0, v483, v476._rawValue + 6104, v257 & 1, v79 & 1, v355, v397, v439, v267, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v455 = sub_26B470D98(&unk_287BF64F8);
  v449 = sub_26B470D98(&unk_287BF6520);
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_26B5450C0;
  v271 = *v475;
  *(v270 + 32) = *v475;
  *(v270 + 40) = 1;
  *(v270 + 48) = v271;
  *(v270 + 56) = 3;
  *(v270 + 64) = v271;
  *(v270 + 72) = 8;
  *(v270 + 80) = 0x403A000000000000;
  *(v270 + 88) = 10;
  v272 = sub_26B470F10(&unk_287BF6548);
  v482 = 4;
  v481 = 4;
  v273.value._object = 0x800000026B552DE0;
  v273.value._countAndFlagsBits = 0xD000000000000026;
  Action.init(_:mac:)(v273, 0);
  v477 = v479;
  v478 = v480;
  v274 = sub_26B4D43F4();
  LOBYTE(v79) = sub_26B4CE5C8();
  LOBYTE(v158) = sub_26B4D4400();
  *&v440 = sub_26B4D4408();
  *(&v440 + 1) = sub_26B4D4414();
  *(&v398 + 1) = v270;
  *&v398 = v449;
  *(&v356 + 1) = MEMORY[0x277D84FA0];
  *&v356 = v455;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552DB0, &unk_287BF7320, &unk_287BF64C0, v274, 0, 0, v483, v476._rawValue + 6288, v79 & 1, v158 & 1, v356, v398, v440, v272, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v456 = sub_26B470D98(&unk_287BF65F8);
  v275 = sub_26B470D98(&unk_287BF6620);
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_26B5450C0;
  v277 = *v475;
  *(v276 + 32) = *v475;
  *(v276 + 40) = 1;
  *(v276 + 48) = v277;
  *(v276 + 56) = 3;
  *(v276 + 64) = v277;
  *(v276 + 72) = 8;
  *(v276 + 80) = 0x403A000000000000;
  *(v276 + 88) = 10;
  v278 = sub_26B470F10(&unk_287BF6648);
  v482 = 4;
  v481 = 4;
  v279.value._object = 0x800000026B552E40;
  v279.value._countAndFlagsBits = 0xD000000000000025;
  Action.init(_:mac:)(v279, 0);
  v477 = v479;
  v478 = v480;
  v280 = sub_26B4D43F4();
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v441 = sub_26B4D4408();
  *(&v441 + 1) = sub_26B4D4414();
  *&v399 = v275;
  *(&v399 + 1) = v276;
  *(&v357 + 1) = MEMORY[0x277D84FA0];
  *&v357 = v456;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B552E10, &unk_287BF7350, &unk_287BF65C0, v280, 0, 0, v483, v476._rawValue + 6472, v274 & 1, v79 & 1, v357, v399, v441, v278, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v457 = sub_26B470D98(&unk_287BF66F8);
  v281 = sub_26B470D98(&unk_287BF6720);
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_26B5450C0;
  v283 = *v475;
  *(v282 + 32) = *v475;
  *(v282 + 40) = 1;
  *(v282 + 48) = v283;
  *(v282 + 56) = 3;
  *(v282 + 64) = v283;
  *(v282 + 72) = 8;
  *(v282 + 80) = 0x403A000000000000;
  *(v282 + 88) = 10;
  v284 = sub_26B470F10(&unk_287BF6748);
  v482 = 4;
  v481 = 4;
  v285.value._object = 0x800000026B552EA0;
  v285.value._countAndFlagsBits = 0xD000000000000026;
  Action.init(_:mac:)(v285, 0);
  v477 = v479;
  v478 = v480;
  v286 = sub_26B4D43F4();
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v442 = sub_26B4D4408();
  *(&v442 + 1) = sub_26B4D4414();
  *&v400 = v281;
  *(&v400 + 1) = v282;
  *(&v358 + 1) = MEMORY[0x277D84FA0];
  *&v358 = v457;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B552E70, &unk_287BF7380, &unk_287BF66C0, v286, 0, 0, v483, v476._rawValue + 6656, v274 & 1, v79 & 1, v358, v400, v442, v284, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v287 = sub_26B470D98(&unk_287BF67F8);
  v288 = sub_26B470D98(&unk_287BF6820);
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_26B5450C0;
  v290 = *v475;
  *(v289 + 32) = *v475;
  *(v289 + 40) = 1;
  *(v289 + 48) = v290;
  *(v289 + 56) = 3;
  *(v289 + 64) = v290;
  *(v289 + 72) = 8;
  *(v289 + 80) = 0x403A000000000000;
  *(v289 + 88) = 10;
  v291 = sub_26B470F10(&unk_287BF6848);
  v482 = 4;
  v481 = 4;
  v292.value._object = 0x800000026B552F00;
  v292.value._countAndFlagsBits = 0xD000000000000024;
  Action.init(_:mac:)(v292, 0);
  v477 = v479;
  v478 = v480;
  v293 = sub_26B4D43F4();
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v443 = sub_26B4D4408();
  *(&v443 + 1) = sub_26B4D4414();
  *&v401 = v288;
  *(&v401 + 1) = v289;
  *&v359 = v287;
  *(&v359 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B552ED0, &unk_287BF73B0, &unk_287BF67C0, v293, 0, 0, v483, v476._rawValue + 6840, v274 & 1, v79 & 1, v359, v401, v443, v291, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v472 = sub_26B470D98(&unk_287BF68F8);
  v294 = sub_26B470D98(&unk_287BF6920);
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_26B5450C0;
  v296 = *v475;
  *(v295 + 32) = *v475;
  *(v295 + 40) = 1;
  *(v295 + 48) = v296;
  *(v295 + 56) = 3;
  *(v295 + 64) = v296;
  *(v295 + 72) = 8;
  *(v295 + 80) = 0x403A000000000000;
  *(v295 + 88) = 10;
  v297 = sub_26B470F10(&unk_287BF6948);
  v482 = 4;
  v481 = 4;
  v298.value._object = 0x800000026B552F60;
  v298.value._countAndFlagsBits = 0xD000000000000021;
  Action.init(_:mac:)(v298, 0);
  v477 = v479;
  v478 = v480;
  v299 = sub_26B4D43F4();
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v444 = sub_26B4D4408();
  *(&v444 + 1) = sub_26B4D4414();
  *&v402 = v294;
  *(&v402 + 1) = v295;
  *(&v360 + 1) = MEMORY[0x277D84FA0];
  *&v360 = v472;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B552F30, &unk_287BF73E0, &unk_287BF68C0, v299, 0, 0, v483, v476._rawValue + 7024, v274 & 1, v79 & 1, v360, v402, v444, v297, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v474 = sub_26B470D98(&unk_287BF69F8);
  v300 = sub_26B470D98(&unk_287BF6A20);
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_26B5450C0;
  v302 = *v475;
  *(v301 + 32) = *v475;
  *(v301 + 40) = 1;
  *(v301 + 48) = v302;
  *(v301 + 56) = 3;
  *(v301 + 64) = v302;
  *(v301 + 72) = 8;
  *(v301 + 80) = 0x403A000000000000;
  *(v301 + 88) = 10;
  v303 = sub_26B470F10(&unk_287BF6A48);
  v482 = 4;
  v481 = 4;
  v304.value._countAndFlagsBits = 0xD00000000000001FLL;
  v304.value._object = 0x800000026B552FC0;
  Action.init(_:mac:)(v304, 0);
  v477 = v479;
  v478 = v480;
  v305 = sub_26B4D43F4();
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v445 = sub_26B4D4408();
  *(&v445 + 1) = sub_26B4D4414();
  *&v403 = v300;
  *(&v403 + 1) = v301;
  *(&v361 + 1) = MEMORY[0x277D84FA0];
  *&v361 = v474;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B552F90, &unk_287BF7410, &unk_287BF69C0, v305, 0, 0, v483, v476._rawValue + 7208, v274 & 1, v79 & 1, v361, v403, v445, v303, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v306 = sub_26B470D98(&unk_287BF6B20);
  v307 = sub_26B470D98(&unk_287BF6B48);
  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_26B5450C0;
  v309 = *v475;
  *(v308 + 32) = *v475;
  *(v308 + 40) = 1;
  *(v308 + 48) = v309;
  *(v308 + 56) = 3;
  *(v308 + 64) = v309;
  *(v308 + 72) = 8;
  *(v308 + 80) = 0x403A000000000000;
  *(v308 + 88) = 10;
  v310 = sub_26B470F10(&unk_287BF6B70);
  v482 = 4;
  v481 = 4;
  v311.value._countAndFlagsBits = 0x68507463656C6573;
  v311.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v311, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v274) = sub_26B4CE5C8();
  LOBYTE(v79) = sub_26B4D4400();
  *&v446 = sub_26B4D4408();
  *(&v446 + 1) = sub_26B4D4414();
  *&v404 = v307;
  *(&v404 + 1) = v308;
  v312 = MEMORY[0x277D84FA0];
  *&v362 = v306;
  *(&v362 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B552FE0, &unk_287BF7440, &unk_287BF6AB0, &unk_287BF6AE8, 0, 0, v483, v476._rawValue + 7392, v274 & 1, v79 & 1, v362, v404, v446, v310, &v482, &v481, 0, 0, &v477);
  v483[0] = 1;
  v313 = sub_26B470D98(&unk_287BF6C48);
  v314 = sub_26B470D98(&unk_287BF6C70);
  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_26B5450C0;
  v316 = *v475;
  *(v315 + 32) = *v475;
  *(v315 + 40) = 1;
  *(v315 + 48) = v316;
  *(v315 + 56) = 3;
  *(v315 + 64) = v316;
  *(v315 + 72) = 8;
  *(v315 + 80) = 0x403A000000000000;
  *(v315 + 88) = 10;
  v317 = sub_26B470F10(&unk_287BF6C98);
  v482 = 4;
  v481 = 4;
  v318.value._countAndFlagsBits = 0x68507463656C6573;
  v318.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v318, 0);
  v477 = v479;
  v478 = v480;
  LOBYTE(v286) = sub_26B4CE5C8();
  LOBYTE(v288) = sub_26B4D4400();
  *&v447 = sub_26B4D4408();
  *(&v447 + 1) = sub_26B4D4414();
  *&v405 = v314;
  *(&v405 + 1) = v315;
  *&v363 = v313;
  *(&v363 + 1) = v312;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B553000, &unk_287BF7470, &unk_287BF6BD8, &unk_287BF6C10, 0, 0, v483, v476._rawValue + 7576, v286 & 1, v288 & 1, v363, v405, v447, v317, &v482, &v481, 0, 0, &v477);
  LOBYTE(v286) = sub_26B4CE5C8();
  v319 = sub_26B4D4400() & 1;
  v320._countAndFlagsBits = 0x746E656D65766F4DLL;
  v320._object = 0xE800000000000000;
  v321._countAndFlagsBits = v468;
  v321._object = v467;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406C78, v320, v321, v286 & 1, v319, v476);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B475644()
{
  if (qword_2804003C8 != -1)
  {
    swift_once();
  }

  return &stru_280406C78;
}

void *sub_26B4866E0()
{
  if (qword_2804003D0 != -1)
  {
    swift_once();
  }

  return &unk_280406CA8;
}

void sub_26B486730()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v153 = v9;
  v154 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B5451D0;
  v161[0] = 0;
  v11 = sub_26B470D98(&unk_287BF7540);
  v12 = sub_26B470D98(&unk_287BF7568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B5450C0;
  v14 = sub_26B4C6A78();
  v15 = *v14;
  *(v13 + 32) = *v14;
  *(v13 + 40) = 1;
  *(v13 + 48) = v15;
  *(v13 + 56) = 3;
  *(v13 + 64) = v15;
  *(v13 + 72) = 8;
  *(v13 + 80) = 0x403A000000000000;
  *(v13 + 88) = 10;
  v16 = sub_26B470F10(&unk_287BF7590);
  v160 = 4;
  v159 = 4;
  v17.value._object = 0x800000026B558780;
  v17.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v17, 0);
  v155 = v157;
  v156 = v158;
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  *&v140 = sub_26B4D4408();
  *(&v140 + 1) = sub_26B4D4414();
  *&v127 = v12;
  *(&v127 + 1) = v13;
  *&v114 = v11;
  *(&v114 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B558760, &unk_287BF83E0, &unk_287BF74D0, &unk_287BF7508, 0, 0, v161, v10 + 32, v18 & 1, v19 & 1, v114, v127, v140, v16, &v160, &v159, 0, &unk_287BF75B8, &v155);
  v161[0] = 0;
  v20 = sub_26B470D98(&unk_287BF76A8);
  v21 = sub_26B470D98(&unk_287BF76D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B5450C0;
  v23 = *v14;
  *(v22 + 32) = *v14;
  *(v22 + 40) = 1;
  *(v22 + 48) = v23;
  *(v22 + 56) = 3;
  *(v22 + 64) = v23;
  *(v22 + 72) = 8;
  *(v22 + 80) = 0x403A000000000000;
  *(v22 + 88) = 10;
  v24 = sub_26B471088(&unk_287BF76F8);
  v25 = sub_26B470F10(&unk_287BF7720);
  v26 = sub_26B470F10(&unk_287BF7748);
  v160 = 4;
  v159 = 4;
  v27.value._countAndFlagsBits = 0x6D45747265736E69;
  v27.value._object = 0xEC0000003A696A6FLL;
  Action.init(_:mac:)(v27, 0);
  v155 = v157;
  v156 = v158;
  v28 = sub_26B4CE5C8();
  v29 = sub_26B4D4400();
  *&v141 = v24;
  *(&v141 + 1) = v25;
  *&v128 = v21;
  *(&v128 + 1) = v22;
  *&v115 = v20;
  *(&v115 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5587A0, &unk_287BF8410, &unk_287BF7638, &unk_287BF7670, 0, 0, v161, v10 + 216, v28 & 1, v29 & 1, v115, v128, v141, v26, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v30 = sub_26B470D98(&unk_287BF7820);
  v31 = sub_26B470D98(&unk_287BF7848);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26B5450C0;
  v33 = *v14;
  *(v32 + 32) = *v14;
  *(v32 + 40) = 1;
  *(v32 + 48) = v33;
  *(v32 + 56) = 3;
  *(v32 + 64) = v33;
  *(v32 + 72) = 8;
  *(v32 + 80) = 0x403A000000000000;
  *(v32 + 88) = 10;
  v34 = sub_26B470F10(&unk_287BF7870);
  v160 = 4;
  v159 = 4;
  v35.value._object = 0x800000026B558780;
  v35.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v35, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v142 = sub_26B4D4408();
  *(&v142 + 1) = sub_26B4D4414();
  *&v129 = v31;
  *(&v129 + 1) = v32;
  *&v116 = v30;
  *(&v116 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B5587C0, &unk_287BF8440, &unk_287BF77B0, &unk_287BF77E8, 0, 0, v161, v10 + 400, v26 & 1, v24 & 1, v116, v129, v142, v34, &v160, &v159, 0, &unk_287BF7898, &v155);
  v161[0] = 1;
  v36 = sub_26B470D98(&unk_287BF7988);
  v37 = sub_26B470D98(&unk_287BF79B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450C0;
  v39 = *v14;
  *(v38 + 32) = *v14;
  *(v38 + 40) = 1;
  *(v38 + 48) = v39;
  *(v38 + 56) = 3;
  *(v38 + 64) = v39;
  *(v38 + 72) = 8;
  *(v38 + 80) = 0x403A000000000000;
  *(v38 + 88) = 10;
  v40 = sub_26B470F10(&unk_287BF79D8);
  v160 = 4;
  v159 = 4;
  v41.value._countAndFlagsBits = 0x6144747265736E69;
  v41.value._object = 0xEB000000003A6574;
  Action.init(_:mac:)(v41, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v143 = sub_26B4D4408();
  *(&v143 + 1) = sub_26B4D4414();
  *&v130 = v37;
  *(&v130 + 1) = v38;
  *&v117 = v36;
  *(&v117 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x736E492E74786554, 0xEF65746144747265, &unk_287BF8470, &unk_287BF7918, &unk_287BF7950, 0, 0, v161, v10 + 584, v26 & 1, v24 & 1, v117, v130, v143, v40, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v42 = sub_26B470D98(&unk_287BF7AB0);
  v43 = sub_26B470D98(&unk_287BF7AD8);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26B5450C0;
  v45 = *v14;
  *(v44 + 32) = *v14;
  *(v44 + 40) = 1;
  *(v44 + 48) = v45;
  *(v44 + 56) = 3;
  *(v44 + 64) = v45;
  *(v44 + 72) = 8;
  *(v44 + 80) = 0x403A000000000000;
  *(v44 + 88) = 10;
  v160 = 4;
  v159 = 4;
  v46.value._object = 0x800000026B558810;
  v46.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v46, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v40) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  v47 = sub_26B4D4408();
  v48 = sub_26B4D4414();
  v49 = sub_26B4D4414();
  *&v144 = v47;
  *(&v144 + 1) = v48;
  *&v131 = v43;
  *(&v131 + 1) = v44;
  *&v118 = v42;
  *(&v118 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B5587E0, &unk_287BF84A0, &unk_287BF7A40, &unk_287BF7A78, 0, 0, v161, v10 + 768, v40 & 1, v26 & 1, v118, v131, v144, v49, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v50 = sub_26B470D98(&unk_287BF7BA0);
  v51 = sub_26B470D98(&unk_287BF7BC8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26B5450C0;
  v53 = *v14;
  *(v52 + 32) = *v14;
  *(v52 + 40) = 1;
  *(v52 + 48) = v53;
  *(v52 + 56) = 3;
  *(v52 + 64) = v53;
  *(v52 + 72) = 8;
  *(v52 + 80) = 0x403A000000000000;
  *(v52 + 88) = 10;
  v54 = sub_26B470F10(&unk_287BF7BF0);
  v160 = 4;
  v159 = 4;
  v55.value._object = 0x800000026B558850;
  v56.value._countAndFlagsBits = 0xD000000000000014;
  v56.value._object = 0x800000026B558870;
  v55.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v55, v56);
  v155 = v157;
  v156 = v158;
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v47) = sub_26B4D4400();
  *&v145 = sub_26B4D4408();
  *(&v145 + 1) = sub_26B4D4414();
  *&v132 = v51;
  *(&v132 + 1) = v52;
  *&v119 = v50;
  *(&v119 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B558830, &unk_287BF84D0, &unk_287BF7B30, &unk_287BF7B68, 0, 0, v161, v10 + 952, v26 & 1, v47 & 1, v119, v132, v145, v54, &v160, &v159, 0, 0, &v155);
  v161[0] = 1;
  v57 = sub_26B470D98(&unk_287BF7CF0);
  v58 = sub_26B470D98(&unk_287BF7D18);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26B5450D0;
  v60 = *v14;
  *(v59 + 32) = *v14;
  *(v59 + 40) = 1;
  *(v59 + 48) = v60;
  *(v59 + 56) = 3;
  *(v59 + 64) = v60;
  *(v59 + 72) = 8;
  v61 = sub_26B471088(&unk_287BF7D40);
  v62 = sub_26B470F10(&unk_287BF7D68);
  v160 = 4;
  v159 = 4;
  v63.value._countAndFlagsBits = 0xD000000000000019;
  v63.value._object = 0x800000026B5588B0;
  Action.init(_:mac:)(v63, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v26) = sub_26B4CE5C8();
  LOBYTE(v48) = sub_26B4D4400();
  *&v146 = v61;
  *(&v146 + 1) = sub_26B4D4414();
  *&v133 = v58;
  *(&v133 + 1) = v59;
  *&v120 = v57;
  *(&v120 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B558890, &unk_287BF8500, &unk_287BF7C68, &unk_287BF7CA0, 0, 0, v161, v10 + 1136, v26 & 1, v48 & 1, v120, v133, v146, v62, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v64 = sub_26B470D98(&unk_287BF7E30);
  v65 = sub_26B470D98(&unk_287BF7E58);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_26B5450C0;
  v67 = *v14;
  *(v66 + 32) = *v14;
  *(v66 + 40) = 1;
  *(v66 + 48) = v67;
  *(v66 + 56) = 3;
  *(v66 + 64) = v67;
  *(v66 + 72) = 8;
  *(v66 + 80) = 0x403A000000000000;
  *(v66 + 88) = 10;
  v160 = 4;
  v159 = 4;
  v68.value._countAndFlagsBits = 0xD000000000000012;
  v68.value._object = 0x800000026B5588F0;
  Action.init(_:mac:)(v68, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v62) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  v69 = sub_26B4D4408();
  v70 = sub_26B4D4414();
  v71 = sub_26B4D4414();
  *&v147 = v69;
  *(&v147 + 1) = v70;
  *&v134 = v65;
  *(&v134 + 1) = v66;
  *&v121 = v64;
  *(&v121 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5588D0, &unk_287BF8530, &unk_287BF7DC0, &unk_287BF7DF8, 0, 0, v161, v10 + 1320, v62 & 1, v26 & 1, v121, v134, v147, v71, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v72 = sub_26B470D98(&unk_287BF7F20);
  v73 = sub_26B470D98(&unk_287BF7F48);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_26B5450C0;
  v75 = *v14;
  *(v74 + 32) = *v14;
  *(v74 + 40) = 1;
  *(v74 + 48) = v75;
  *(v74 + 56) = 3;
  *(v74 + 64) = v75;
  *(v74 + 72) = 8;
  *(v74 + 80) = 0x403A000000000000;
  *(v74 + 88) = 10;
  v160 = 4;
  v159 = 4;
  v76.value._object = 0x800000026B558930;
  v76.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v76, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v62) = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  v77 = sub_26B4D4408();
  v78 = sub_26B4D4414();
  v79 = sub_26B4D4414();
  *&v148 = v77;
  *(&v148 + 1) = v78;
  *&v135 = v73;
  *(&v135 + 1) = v74;
  *&v122 = v72;
  *(&v122 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B558910, &unk_287BF8560, &unk_287BF7EB0, &unk_287BF7EE8, 0, 0, v161, v10 + 1504, v62 & 1, v26 & 1, v122, v135, v148, v79, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v80 = sub_26B470D98(&unk_287BF8010);
  v81 = sub_26B470D98(&unk_287BF8038);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_26B5450C0;
  v83 = *v14;
  *(v82 + 32) = *v14;
  *(v82 + 40) = 1;
  *(v82 + 48) = v83;
  *(v82 + 56) = 3;
  *(v82 + 64) = v83;
  *(v82 + 72) = 8;
  *(v82 + 80) = 0x403A000000000000;
  *(v82 + 88) = 10;
  v84 = sub_26B470F10(&unk_287BF8060);
  v85 = sub_26B470F10(&unk_287BF8088);
  v160 = 4;
  v159 = 4;
  v86.value._countAndFlagsBits = 0xD000000000000011;
  v86.value._object = 0x800000026B558970;
  Action.init(_:mac:)(v86, 0);
  v155 = v157;
  v156 = v158;
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v78) = sub_26B4D4400();
  *&v149 = sub_26B4D4408();
  *(&v149 + 1) = v84;
  *&v136 = v81;
  *(&v136 + 1) = v82;
  *&v123 = v80;
  *(&v123 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B558950, &unk_287BF8590, &unk_287BF7FA0, &unk_287BF7FD8, 0, 0, v161, v10 + 1688, v77 & 1, v78 & 1, v123, v136, v149, v85, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v87 = sub_26B470D98(&unk_287BF80E0);
  v88 = sub_26B470D98(&unk_287BF8108);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_26B545100;
  *(v89 + 32) = *v14;
  *(v89 + 40) = 1;
  v90 = sub_26B471088(&unk_287BF8130);
  v91 = sub_26B470F10(&unk_287BF8158);
  v160 = 4;
  v159 = 4;
  v92.value._countAndFlagsBits = 0xD000000000000013;
  v92.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v92, 0);
  v155 = v157;
  v156 = v158;
  v93 = sub_26B4D43F4();
  LOBYTE(v82) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  v94 = sub_26B4D4414();
  *&v150 = v90;
  *(&v150 + 1) = v91;
  *&v137 = v88;
  *(&v137 + 1) = v89;
  v95 = MEMORY[0x277D84FA0];
  *&v124 = v87;
  *(&v124 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x4B2E6D6574737953, 0xEF65636170537965, &unk_287BF85C0, MEMORY[0x277D84F90], v93, 0, 0, v161, v10 + 1872, v82 & 1, v77 & 1, v124, v137, v150, v94, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v96 = sub_26B470D98(&unk_287BF81B0);
  v97 = sub_26B470D98(&unk_287BF81D8);
  v98 = sub_26B471088(&unk_287BF8260);
  v99 = sub_26B470F10(&unk_287BF8288);
  v160 = 4;
  v159 = 4;
  v100.value._countAndFlagsBits = 0xD000000000000013;
  v100.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v100, 0);
  v155 = v157;
  v156 = v158;
  v101 = sub_26B4D43F4();
  LOBYTE(v91) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  v102 = sub_26B4D4414();
  *&v151 = v98;
  *(&v151 + 1) = v99;
  *&v138 = v97;
  *(&v138 + 1) = &unk_287BF8200;
  *&v125 = v96;
  *(&v125 + 1) = v95;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEF72614265636170, &unk_287BF85F0, MEMORY[0x277D84F90], v101, 0, 0, v161, v10 + 2056, v91 & 1, v77 & 1, v125, v138, v151, v102, &v160, &v159, 0, 0, &v155);
  v161[0] = 0;
  v103 = sub_26B470D98(&unk_287BF82E0);
  v104 = sub_26B470D98(&unk_287BF8308);
  v105 = sub_26B471088(&unk_287BF8390);
  v106 = sub_26B470F10(&unk_287BF83B8);
  v160 = 4;
  v159 = 4;
  v107.value._countAndFlagsBits = 0xD000000000000013;
  v107.value._object = 0x800000026B558990;
  Action.init(_:mac:)(v107, 0);
  v155 = v157;
  v156 = v158;
  v108 = sub_26B4D43F4();
  LOBYTE(v98) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  v109 = sub_26B4D4414();
  *&v152 = v105;
  *(&v152 + 1) = v106;
  *&v139 = v104;
  *(&v139 + 1) = &unk_287BF8330;
  *&v126 = v103;
  *(&v126 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B5589B0, &unk_287BF8620, MEMORY[0x277D84F90], v108, 0, 0, v161, v10 + 2240, v98 & 1, v77 & 1, v126, v139, v152, v109, &v160, &v159, 0, 0, &v155);
  LOBYTE(v105) = sub_26B4CE5C8();
  v110 = sub_26B4D4400();
  v111._object = 0xED00006E6F697461;
  v112 = v110 & 1;
  v111._countAndFlagsBits = 0x7463694474786554;
  v113._object = v153;
  v113._countAndFlagsBits = v154;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406CD8, v111, v113, v105 & 1, v112, v10);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B487B84()
{
  if (qword_2804003D8 != -1)
  {
    swift_once();
  }

  return &stru_280406CD8;
}

void sub_26B487BD4()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v107 = v9;
  v108 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545250;
  v117[0] = 0;
  v106 = sub_26B470D98(&unk_287BF8708);
  v11 = sub_26B470D98(&unk_287BF8730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5450C0;
  v110 = sub_26B4C6A78();
  v13 = *v110;
  *(v12 + 32) = *v110;
  *(v12 + 40) = 1;
  *(v12 + 48) = v13;
  *(v12 + 56) = 3;
  *(v12 + 64) = v13;
  *(v12 + 72) = 8;
  *(v12 + 80) = 0x403A000000000000;
  *(v12 + 88) = 10;
  v14 = sub_26B470F10(&unk_287BF8758);
  v116 = 4;
  v115 = 4;
  v15.value._countAndFlagsBits = 0xD000000000000014;
  v15.value._object = 0x800000026B559550;
  Action.init(_:mac:)(v15, 0);
  v111 = v113;
  v112 = v114;
  v16 = sub_26B4CE5C8();
  v17 = sub_26B4D4400();
  *&v96 = sub_26B4D4408();
  *(&v96 + 1) = sub_26B4D4414();
  *&v88 = v11;
  *(&v88 + 1) = v12;
  *(&v80 + 1) = MEMORY[0x277D84FA0];
  *&v80 = v106;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B559520, &unk_287BF9098, &unk_287BF8680, &unk_287BF86D0, 0, 0, v117, v10 + 32, v16 & 1, v17 & 1, v80, v88, v96, v14, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v18 = sub_26B470D98(&unk_287BF8820);
  v19 = sub_26B470D98(&unk_287BF8848);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26B5450D0;
  v21 = *v110;
  *(v20 + 32) = *v110;
  *(v20 + 40) = 3;
  *(v20 + 48) = v21;
  *(v20 + 56) = 8;
  *(v20 + 64) = 0x403A000000000000;
  *(v20 + 72) = 10;
  v116 = 4;
  v115 = 4;
  v22.value._countAndFlagsBits = 0x6172447472617473;
  v22.value._object = 0xE900000000000067;
  Action.init(_:mac:)(v22, 0);
  v111 = v113;
  v112 = v114;
  v23 = sub_26B4CE5C8();
  v24 = sub_26B4D4400();
  v25 = sub_26B4D4408();
  v26 = sub_26B4D4414();
  v27 = sub_26B4D4414();
  *&v97 = v25;
  *(&v97 + 1) = v26;
  *&v89 = v19;
  *(&v89 + 1) = v20;
  v109._rawValue = v10;
  *&v81 = v18;
  *(&v81 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B559570, &unk_287BF90C8, &unk_287BF87B0, &unk_287BF87E8, 0, 0, v117, v10 + 216, v23 & 1, v24 & 1, v81, v89, v97, v27, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v104 = sub_26B470D98(&unk_287BF8910);
  v28 = sub_26B470D98(&unk_287BF8938);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26B5450C0;
  v30 = *v110;
  *(v29 + 32) = *v110;
  *(v29 + 40) = 1;
  *(v29 + 48) = v30;
  *(v29 + 56) = 3;
  *(v29 + 64) = v30;
  *(v29 + 72) = 8;
  *(v29 + 80) = 0x403A000000000000;
  *(v29 + 88) = 10;
  v31 = sub_26B470F10(&unk_287BF8960);
  v116 = 4;
  v115 = 4;
  v32.value._object = 0x800000026B5595B0;
  v33.value._countAndFlagsBits = 0x6172447472617473;
  v33.value._object = 0xE900000000000067;
  v32.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v33, v32);
  v111 = v113;
  v112 = v114;
  v34 = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v98 = sub_26B4D4408();
  *(&v98 + 1) = sub_26B4D4414();
  *&v90 = v28;
  *(&v90 + 1) = v29;
  *(&v82 + 1) = MEMORY[0x277D84FA0];
  *&v82 = v104;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B559590, &unk_287BF90F8, &unk_287BF88A0, &unk_287BF88D8, 0, 0, v117, v10 + 400, v34 & 1, v26 & 1, v82, v90, v98, v31, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v105 = sub_26B470D98(&unk_287BF8A10);
  v35 = sub_26B470D98(&unk_287BF8A38);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26B5450D0;
  v37 = *v110;
  *(v36 + 32) = *v110;
  *(v36 + 40) = 3;
  *(v36 + 48) = v37;
  *(v36 + 56) = 8;
  *(v36 + 64) = 0x403A000000000000;
  *(v36 + 72) = 10;
  v38 = sub_26B470F10(&unk_287BF8A60);
  v116 = 4;
  v115 = 4;
  v39.value._countAndFlagsBits = 0x67617244646E65;
  v39.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v39, 0);
  v111 = v113;
  v112 = v114;
  v40 = sub_26B4D43F4();
  v41 = sub_26B4CE5C8();
  LOBYTE(v26) = sub_26B4D4400();
  *&v99 = sub_26B4D4408();
  *(&v99 + 1) = sub_26B4D4414();
  *&v91 = v35;
  *(&v91 + 1) = v36;
  *(&v83 + 1) = MEMORY[0x277D84FA0];
  *&v83 = v105;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5595D0, &unk_287BF9128, &unk_287BF89D8, v40, 0, 0, v117, v10 + 584, v41 & 1, v26 & 1, v83, v91, v99, v38, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v42 = sub_26B470D98(&unk_287BF8BD8);
  v43 = sub_26B470D98(&unk_287BF8C00);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26B5450C0;
  v45 = *v110;
  *(v44 + 32) = *v110;
  *(v44 + 40) = 1;
  *(v44 + 48) = v45;
  *(v44 + 56) = 3;
  *(v44 + 64) = v45;
  *(v44 + 72) = 8;
  *(v44 + 80) = 0x403A000000000000;
  *(v44 + 88) = 10;
  v46 = sub_26B470F10(&unk_287BF8C28);
  v116 = 4;
  v115 = 4;
  v47.value._countAndFlagsBits = 0x4167617244646E65;
  v47.value._object = 0xEE006C6562614C74;
  v48.value._countAndFlagsBits = 0x67617244646E65;
  v48.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v48, v47);
  v111 = v113;
  v112 = v114;
  v49 = sub_26B4CE5C8();
  LOBYTE(v10) = sub_26B4D4400();
  *&v100 = sub_26B4D4408();
  *(&v100 + 1) = sub_26B4D4414();
  *&v92 = v43;
  *(&v92 + 1) = v44;
  *&v84 = v42;
  *(&v84 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B5595F0, &unk_287BF9158, &unk_287BF8B38, &unk_287BF8B88, 0, 0, v117, v109._rawValue + 768, v49 & 1, v10 & 1, v84, v92, v100, v46, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v50 = sub_26B470D98(&unk_287BF8D78);
  v51 = sub_26B470D98(&unk_287BF8DA0);
  v52 = sub_26B470D98(&unk_287BF8DC8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26B5450D0;
  v54 = *v110;
  *(v53 + 32) = *v110;
  *(v53 + 40) = 3;
  *(v53 + 48) = v54;
  *(v53 + 56) = 8;
  *(v53 + 64) = 0x403A000000000000;
  *(v53 + 72) = 10;
  v116 = 4;
  v115 = 4;
  v55.value._object = 0x800000026B559630;
  v55.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v55, 0);
  v111 = v113;
  v112 = v114;
  LOBYTE(v46) = sub_26B4CE5C8();
  v56 = sub_26B4D4400();
  v57 = sub_26B4D4408();
  v58 = sub_26B4D4414();
  v59 = sub_26B4D4414();
  *&v101 = v57;
  *(&v101 + 1) = v58;
  *&v93 = v52;
  *(&v93 + 1) = v53;
  *&v85 = v50;
  *(&v85 + 1) = v51;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B559610, &unk_287BF9198, &unk_287BF8CF0, &unk_287BF8D40, 0, 0, v117, v109._rawValue + 952, v46 & 1, v56 & 1, v85, v93, v101, v59, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v60 = sub_26B470D98(&unk_287BF8F20);
  v61 = sub_26B470D98(&unk_287BF8F48);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26B5450C0;
  v63 = *v110;
  *(v62 + 32) = *v110;
  *(v62 + 40) = 1;
  *(v62 + 48) = v63;
  *(v62 + 56) = 3;
  *(v62 + 64) = v63;
  *(v62 + 72) = 8;
  *(v62 + 80) = 0x403A000000000000;
  *(v62 + 88) = 10;
  v64 = sub_26B470F10(&unk_287BF8F70);
  v116 = 4;
  v115 = 4;
  v65.value._object = 0x800000026B559630;
  v66.value._countAndFlagsBits = 0xD000000000000030;
  v66.value._object = 0x800000026B559670;
  v65.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v65, v66);
  v111 = v113;
  v112 = v114;
  v67 = sub_26B4CE5C8();
  LOBYTE(v57) = sub_26B4D4400();
  *&v102 = sub_26B4D4408();
  *(&v102 + 1) = sub_26B4D4414();
  *&v94 = v61;
  *(&v94 + 1) = v62;
  *&v86 = v60;
  *(&v86 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B559650, &unk_287BF91D8, &unk_287BF8E80, &unk_287BF8ED0, 0, 0, v117, v109._rawValue + 1136, v67 & 1, v57 & 1, v86, v94, v102, v64, &v116, &v115, 0, 0, &v111);
  v117[0] = 0;
  v68 = sub_26B470D98(&unk_287BF9020);
  v69 = sub_26B470D98(&unk_287BF9048);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26B5450D0;
  v71 = *v110;
  *(v70 + 32) = *v110;
  *(v70 + 40) = 3;
  *(v70 + 48) = v71;
  *(v70 + 56) = 8;
  *(v70 + 64) = 0x403A000000000000;
  *(v70 + 72) = 10;
  v72 = sub_26B470F10(&unk_287BF9070);
  v116 = 4;
  v115 = 4;
  v73.value._countAndFlagsBits = 0x65476C65636E6163;
  v73.value._object = 0xED00006572757473;
  Action.init(_:mac:)(v73, 0);
  v111 = v113;
  v112 = v114;
  v74 = sub_26B4D43F4();
  v75 = sub_26B4CE5C8();
  LOBYTE(v62) = sub_26B4D4400();
  *&v103 = sub_26B4D4408();
  *(&v103 + 1) = sub_26B4D4414();
  *&v95 = v69;
  *(&v95 + 1) = v70;
  *&v87 = v68;
  *(&v87 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5596B0, &unk_287BF9218, &unk_287BF8FE8, v74, 0, 0, v117, v109._rawValue + 1320, v75 & 1, v62 & 1, v87, v95, v103, v72, &v116, &v115, 0, 0, &v111);
  LOBYTE(v72) = sub_26B4CE5C8();
  v76 = sub_26B4D4400();
  v77._countAndFlagsBits = v108;
  v78._object = 0x800000026B5594C0;
  v79 = v76 & 1;
  v78._countAndFlagsBits = 0xD000000000000010;
  v77._object = v107;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D08, v78, v77, v72 & 1, v79, v109);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B488994()
{
  if (qword_2804003E0 != -1)
  {
    swift_once();
  }

  return &stru_280406D08;
}

void sub_26B4889E4()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v150 = v9;
  v151 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545260;
  v158[0] = 1;
  v11 = sub_26B470D98(&unk_287BF92E8);
  v12 = sub_26B470D98(&unk_287BF9310);
  v13 = sub_26B470D98(&unk_287BF9338);
  v14 = sub_26B471088(&unk_287BF9390);
  v15 = sub_26B470F10(&unk_287BF93B8);
  v16 = sub_26B470F10(&unk_287BF93E0);
  v157 = 4;
  v156 = 4;
  v17.value._countAndFlagsBits = 0x6977537472617473;
  v17.value._object = 0xEE0065646F4D7466;
  Action.init(_:mac:)(v17, 0);
  v152 = v154;
  v153 = v155;
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  *&v138 = v14;
  *(&v138 + 1) = v15;
  *&v126 = v13;
  *(&v126 + 1) = &unk_287BF9360;
  *&v114 = v11;
  *(&v114 + 1) = v12;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55A250, &unk_287BFA778, &unk_287BF9278, &unk_287BF92B0, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 32, v18 & 1, v19 & 1, v114, v126, v138, v16, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v20 = sub_26B470D98(&unk_287BF94A8);
  v21 = sub_26B470D98(&unk_287BF94D0);
  v22 = sub_26B470D98(&unk_287BF94F8);
  v23 = sub_26B471088(&unk_287BF9550);
  v24 = sub_26B470F10(&unk_287BF9578);
  v25 = sub_26B470F10(&unk_287BF95A0);
  v157 = 4;
  v156 = 4;
  v26.value._countAndFlagsBits = 0xD000000000000018;
  v26.value._object = 0x800000026B55A2B0;
  Action.init(_:mac:)(v26, 0);
  v152 = v154;
  v153 = v155;
  v27 = sub_26B4CE5C8();
  v28 = sub_26B4D4400();
  *&v139 = v23;
  *(&v139 + 1) = v24;
  *&v127 = v22;
  *(&v127 + 1) = &unk_287BF9520;
  *&v115 = v20;
  *(&v115 + 1) = v21;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55A290, &unk_287BFA7A8, &unk_287BF9438, &unk_287BF9470, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 216, v27 & 1, v28 & 1, v115, v127, v139, v25, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v29 = sub_26B470D98(&unk_287BF9668);
  v30 = sub_26B470D98(&unk_287BF9690);
  v31 = sub_26B470D98(&unk_287BF96B8);
  v32 = sub_26B471088(&unk_287BF9710);
  v33 = sub_26B470F10(&unk_287BF9738);
  v34 = sub_26B470F10(&unk_287BF9760);
  v157 = 4;
  v156 = 4;
  v35.value._countAndFlagsBits = 0xD000000000000013;
  v35.value._object = 0x800000026B55A2F0;
  Action.init(_:mac:)(v35, 0);
  v152 = v154;
  v153 = v155;
  v36 = sub_26B4CE5C8();
  v37 = sub_26B4D4400();
  *&v140 = v32;
  *(&v140 + 1) = v33;
  *&v128 = v31;
  *(&v128 + 1) = &unk_287BF96E0;
  *&v116 = v29;
  *(&v116 + 1) = v30;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55A2D0, &unk_287BFA7D8, &unk_287BF95F8, &unk_287BF9630, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 400, v36 & 1, v37 & 1, v116, v128, v140, v34, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v38 = sub_26B470D98(&unk_287BF9828);
  v39 = sub_26B470D98(&unk_287BF9850);
  v40 = sub_26B470D98(&unk_287BF9878);
  v41 = sub_26B471088(&unk_287BF98D0);
  v42 = sub_26B470F10(&unk_287BF98F8);
  v43 = sub_26B470F10(&unk_287BF9920);
  v157 = 4;
  v156 = 4;
  v44.value._countAndFlagsBits = 0xD000000000000011;
  v44.value._object = 0x800000026B55A330;
  Action.init(_:mac:)(v44, 0);
  v152 = v154;
  v153 = v155;
  v45 = sub_26B4CE5C8();
  v46 = sub_26B4D4400();
  *&v141 = v41;
  *(&v141 + 1) = v42;
  *&v129 = v40;
  *(&v129 + 1) = &unk_287BF98A0;
  *&v117 = v38;
  *(&v117 + 1) = v39;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55A310, &unk_287BFA808, &unk_287BF97B8, &unk_287BF97F0, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 584, v45 & 1, v46 & 1, v117, v129, v141, v43, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v47 = sub_26B470D98(&unk_287BF99E8);
  v48 = sub_26B470D98(&unk_287BF9A10);
  v49 = sub_26B470D98(&unk_287BF9A38);
  v50 = sub_26B471088(&unk_287BF9A90);
  v51 = sub_26B470F10(&unk_287BF9AB8);
  v52 = sub_26B470F10(&unk_287BF9AE0);
  v157 = 4;
  v156 = 4;
  v53.value._countAndFlagsBits = 0xD000000000000010;
  v53.value._object = 0x800000026B55A370;
  Action.init(_:mac:)(v53, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v20) = sub_26B4CE5C8();
  v54 = sub_26B4D4400();
  *&v142 = v50;
  *(&v142 + 1) = v51;
  *&v130 = v49;
  *(&v130 + 1) = &unk_287BF9A60;
  *&v118 = v47;
  *(&v118 + 1) = v48;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55A350, &unk_287BFA838, &unk_287BF9978, &unk_287BF99B0, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 768, v20 & 1, v54 & 1, v118, v130, v142, v52, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v55 = sub_26B470D98(&unk_287BF9BA8);
  v56 = sub_26B470D98(&unk_287BF9BD0);
  v57 = sub_26B470D98(&unk_287BF9BF8);
  v58 = sub_26B471088(&unk_287BF9C50);
  v59 = sub_26B470F10(&unk_287BF9C78);
  v60 = sub_26B470F10(&unk_287BF9CA0);
  v157 = 4;
  v156 = 4;
  v61.value._object = 0x800000026B55A3B0;
  v61.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v61, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v20) = sub_26B4CE5C8();
  v62 = sub_26B4D4400();
  *&v143 = v58;
  *(&v143 + 1) = v59;
  *&v131 = v57;
  *(&v131 + 1) = &unk_287BF9C20;
  *&v119 = v55;
  *(&v119 + 1) = v56;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B55A390, &unk_287BFA868, &unk_287BF9B38, &unk_287BF9B70, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 952, v20 & 1, v62 & 1, v119, v131, v143, v60, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v63 = sub_26B470D98(&unk_287BF9D78);
  v64 = sub_26B470D98(&unk_287BF9DA0);
  v65 = sub_26B470D98(&unk_287BF9DC8);
  v66 = sub_26B471088(&unk_287BF9E20);
  v67 = sub_26B470F10(&unk_287BF9E48);
  v68 = sub_26B470F10(&unk_287BF9E70);
  v157 = 4;
  v156 = 4;
  v69.value._countAndFlagsBits = 0x6C46747265736E69;
  v69.value._object = 0xEF3A657361437461;
  Action.init(_:mac:)(v69, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v55) = sub_26B4CE5C8();
  v70 = sub_26B4D4400();
  *&v144 = v66;
  *(&v144 + 1) = v67;
  *&v132 = v65;
  *(&v132 + 1) = &unk_287BF9DF0;
  *&v120 = v63;
  *(&v120 + 1) = v64;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55A3D0, &unk_287BFA898, &unk_287BF9D08, &unk_287BF9D40, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 1136, v55 & 1, v70 & 1, v120, v132, v144, v68, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v71 = sub_26B470D98(&unk_287BF9F38);
  v72 = sub_26B470D98(&unk_287BF9F60);
  v73 = sub_26B470D98(&unk_287BF9F88);
  v74 = sub_26B471088(&unk_287BF9FE0);
  v75 = sub_26B470F10(&unk_287BFA008);
  v76 = sub_26B470F10(&unk_287BFA030);
  v157 = 4;
  v156 = 4;
  v77.value._countAndFlagsBits = 0xD000000000000016;
  v77.value._object = 0x800000026B55A410;
  Action.init(_:mac:)(v77, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v55) = sub_26B4CE5C8();
  v78 = sub_26B4D4400();
  *&v145 = v74;
  *(&v145 + 1) = v75;
  *&v133 = v73;
  *(&v133 + 1) = &unk_287BF9FB0;
  *&v121 = v71;
  *(&v121 + 1) = v72;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55A3F0, &unk_287BFA8C8, &unk_287BF9EC8, &unk_287BF9F00, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 1320, v55 & 1, v78 & 1, v121, v133, v145, v76, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v79 = sub_26B470D98(&unk_287BFA108);
  v80 = sub_26B470D98(&unk_287BFA130);
  v81 = sub_26B470D98(&unk_287BFA158);
  v82 = sub_26B471088(&unk_287BFA1B0);
  v83 = sub_26B470F10(&unk_287BFA1D8);
  v84 = sub_26B470F10(&unk_287BFA200);
  v157 = 4;
  v156 = 4;
  v85.value._object = 0x800000026B55A450;
  v85.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v85, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v38) = sub_26B4CE5C8();
  v86 = sub_26B4D4400();
  *&v146 = v82;
  *(&v146 + 1) = v83;
  *&v134 = v81;
  *(&v134 + 1) = &unk_287BFA180;
  *&v122 = v79;
  *(&v122 + 1) = v80;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55A430, &unk_287BFA8F8, &unk_287BFA098, &unk_287BFA0D0, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 1504, v38 & 1, v86 & 1, v122, v134, v146, v84, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v87 = sub_26B470D98(&unk_287BFA2C8);
  v88 = sub_26B470D98(&unk_287BFA2F0);
  v89 = sub_26B470D98(&unk_287BFA318);
  v90 = sub_26B471088(&unk_287BFA370);
  v91 = sub_26B470F10(&unk_287BFA398);
  v92 = sub_26B470F10(&unk_287BFA3C0);
  v157 = 4;
  v156 = 4;
  v93.value._countAndFlagsBits = 0xD000000000000017;
  v93.value._object = 0x800000026B55A490;
  Action.init(_:mac:)(v93, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v55) = sub_26B4CE5C8();
  v94 = sub_26B4D4400();
  *&v147 = v90;
  *(&v147 + 1) = v91;
  *&v135 = v89;
  *(&v135 + 1) = &unk_287BFA340;
  *&v123 = v87;
  *(&v123 + 1) = v88;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55A470, &unk_287BFA928, &unk_287BFA258, &unk_287BFA290, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 1688, v55 & 1, v94 & 1, v123, v135, v147, v92, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v95 = sub_26B470D98(&unk_287BFA498);
  v96 = sub_26B470D98(&unk_287BFA4C0);
  v97 = sub_26B470D98(&unk_287BFA4E8);
  v98 = sub_26B471088(&unk_287BFA540);
  v99 = sub_26B470F10(&unk_287BFA568);
  v100 = sub_26B470F10(&unk_287BFA590);
  v157 = 4;
  v156 = 4;
  v101.value._countAndFlagsBits = 0x6144747265736E69;
  v101.value._object = 0xEF3A657361436873;
  Action.init(_:mac:)(v101, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v55) = sub_26B4CE5C8();
  v102 = sub_26B4D4400();
  *&v148 = v98;
  *(&v148 + 1) = v99;
  *&v136 = v97;
  *(&v136 + 1) = &unk_287BFA510;
  *&v124 = v95;
  *(&v124 + 1) = v96;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55A4B0, &unk_287BFA958, &unk_287BFA428, &unk_287BFA460, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 1872, v55 & 1, v102 & 1, v124, v136, v148, v100, &v157, &v156, 0, 0, &v152);
  v158[0] = 1;
  v103 = sub_26B470D98(&unk_287BFA658);
  v104 = sub_26B470D98(&unk_287BFA680);
  v105 = sub_26B470D98(&unk_287BFA6A8);
  v106 = sub_26B471088(&unk_287BFA700);
  v107 = sub_26B470F10(&unk_287BFA728);
  v108 = sub_26B470F10(&unk_287BFA750);
  v157 = 4;
  v156 = 4;
  v109.value._countAndFlagsBits = 0xD000000000000016;
  v109.value._object = 0x800000026B55A4F0;
  Action.init(_:mac:)(v109, 0);
  v152 = v154;
  v153 = v155;
  LOBYTE(v100) = sub_26B4CE5C8();
  v110 = sub_26B4D4400();
  *&v149 = v106;
  *(&v149 + 1) = v107;
  *&v137 = v105;
  *(&v137 + 1) = &unk_287BFA6D0;
  *&v125 = v103;
  *(&v125 + 1) = v104;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55A4D0, &unk_287BFA988, &unk_287BFA5E8, &unk_287BFA620, 0xD000000000000014, 0x800000026B55A270, v158, v10 + 2056, v100 & 1, v110 & 1, v125, v137, v149, v108, &v157, &v156, 0, 0, &v152);
  v111 = sub_26B4CE5C8() & 1;
  v112._countAndFlagsBits = 0x6D6D6172676F7250;
  v112._object = 0xEB00000000676E69;
  v113._object = v150;
  v113._countAndFlagsBits = v151;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D38, v112, v113, v111, 1, v10);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B489B08()
{
  if (qword_2804003E8 != -1)
  {
    swift_once();
  }

  return &stru_280406D38;
}

void sub_26B489B58()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v471 = v9;
  v472 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545270;
  v474._rawValue = v10;
  v481[0] = 0;
  v11 = sub_26B470D98(&unk_287BFAA58);
  v12 = sub_26B470D98(&unk_287BFAA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B5450C0;
  v14 = sub_26B4C6A78();
  v15 = *v14;
  *(v13 + 32) = *v14;
  *(v13 + 40) = 1;
  *(v13 + 48) = v15;
  *(v13 + 56) = 3;
  *(v13 + 64) = v15;
  *(v13 + 72) = 8;
  *(v13 + 80) = 0x403A000000000000;
  *(v13 + 88) = 10;
  v16 = sub_26B470F10(&unk_287BFAAA8);
  v480 = 4;
  v479 = 4;
  v17.value._countAndFlagsBits = 0xD00000000000001CLL;
  v17.value._object = 0x800000026B55C580;
  Action.init(_:mac:)(v17, 0);
  v475 = v477;
  v476 = v478;
  v18 = sub_26B4CE5C8();
  v19 = sub_26B4D4400();
  *&v415 = sub_26B4D4408();
  *(&v415 + 1) = sub_26B4D4414();
  *&v370 = v12;
  *(&v370 + 1) = v13;
  *&v325 = v11;
  *(&v325 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55C560, &unk_287BFD478, &unk_287BFA9E8, &unk_287BFAA20, 0, 0, v481, v10 + 32, v18 & 1, v19 & 1, v325, v370, v415, v16, &v480, &v479, 0, 0, &v475);
  v481[0] = 0;
  v20 = sub_26B470D98(&unk_287BFAB80);
  v21 = sub_26B470D98(&unk_287BFABA8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B5450C0;
  v23 = *v14;
  v473 = v14;
  *(v22 + 32) = *v14;
  *(v22 + 40) = 1;
  *(v22 + 48) = v23;
  *(v22 + 56) = 3;
  *(v22 + 64) = v23;
  *(v22 + 72) = 8;
  *(v22 + 80) = 0x403A000000000000;
  *(v22 + 88) = 10;
  v480 = 4;
  v479 = 4;
  v24.value._countAndFlagsBits = 0x6C417463656C6573;
  v25.value._countAndFlagsBits = 0x65536D6574737973;
  v25.value._object = 0xEF6C6C417463656CLL;
  v24.value._object = 0xEA00000000003A6CLL;
  Action.init(_:mac:)(v24, v25);
  v475 = v477;
  v476 = v478;
  LOBYTE(v16) = sub_26B4CE5C8();
  v26 = sub_26B4D4400();
  v27 = sub_26B4D4408();
  v28 = sub_26B4D4414();
  v29 = sub_26B4D4414();
  *&v416 = v27;
  *(&v416 + 1) = v28;
  *&v371 = v21;
  *(&v371 + 1) = v22;
  *&v326 = v20;
  *(&v326 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55C5A0, &unk_287BFD4A8, &unk_287BFAB10, &unk_287BFAB48, 0, 0, v481, v10 + 216, v16 & 1, v26 & 1, v326, v371, v416, v29, &v480, &v479, 0, 0, &v475);
  v481[0] = 0;
  v30 = sub_26B470D98(&unk_287BFAC70);
  v31 = sub_26B470D98(&unk_287BFAC98);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26B5450C0;
  v33 = *v14;
  *(v32 + 32) = *v14;
  *(v32 + 40) = 1;
  *(v32 + 48) = v33;
  *(v32 + 56) = 3;
  *(v32 + 64) = v33;
  *(v32 + 72) = 8;
  *(v32 + 80) = 0x403A000000000000;
  *(v32 + 88) = 10;
  v34 = sub_26B470F10(&unk_287BFACC0);
  v480 = 4;
  v479 = 4;
  v35.value._countAndFlagsBits = 0x68507463656C6573;
  v35.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v35, 0);
  v475 = v477;
  v476 = v478;
  v36 = sub_26B4CE5C8();
  LOBYTE(v20) = sub_26B4D4400();
  *&v417 = sub_26B4D4408();
  *(&v417 + 1) = sub_26B4D4414();
  *&v372 = v31;
  *(&v372 + 1) = v32;
  *&v327 = v30;
  *(&v327 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55C5C0, &unk_287BFD4D8, &unk_287BFAC00, &unk_287BFAC38, 0, 0, v481, v10 + 400, v36 & 1, v20 & 1, v327, v372, v417, v34, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v470 = sub_26B470D98(&unk_287BFAD60);
  v37 = sub_26B470D98(&unk_287BFAD88);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450C0;
  v39 = v14;
  v40 = *v14;
  *(v38 + 32) = *v14;
  *(v38 + 40) = 1;
  *(v38 + 48) = v40;
  *(v38 + 56) = 3;
  *(v38 + 64) = v40;
  *(v38 + 72) = 8;
  *(v38 + 80) = 0x403A000000000000;
  *(v38 + 88) = 10;
  v41 = sub_26B470F10(&unk_287BFADB0);
  v480 = 4;
  v479 = 4;
  v42.value._countAndFlagsBits = 0xD00000000000001ALL;
  v42.value._object = 0x800000026B55C600;
  Action.init(_:mac:)(v42, 0);
  v475 = v477;
  v476 = v478;
  v43 = sub_26B4D43F4();
  LOBYTE(v20) = sub_26B4CE5C8();
  LOBYTE(v21) = sub_26B4D4400();
  *&v418 = sub_26B4D4408();
  *(&v418 + 1) = sub_26B4D4414();
  *&v373 = v37;
  *(&v373 + 1) = v38;
  *(&v328 + 1) = MEMORY[0x277D84FA0];
  *&v328 = v470;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B55C5E0, &unk_287BFD508, &unk_287BFAD28, v43, 0, 0, v481, v10 + 584, v20 & 1, v21 & 1, v328, v373, v418, v41, &v480, &v479, 0, 0, &v475);
  v481[0] = 3;
  v44 = sub_26B470D98(&unk_287BFAE78);
  v45 = sub_26B470D98(&unk_287BFAEA0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B5450C0;
  v47 = *v14;
  *(v46 + 32) = *v14;
  *(v46 + 40) = 1;
  *(v46 + 48) = v47;
  *(v46 + 56) = 3;
  *(v46 + 64) = v47;
  *(v46 + 72) = 8;
  *(v46 + 80) = 0x403A000000000000;
  *(v46 + 88) = 10;
  v48 = sub_26B471088(&unk_287BFAEC8);
  v49 = sub_26B470F10(&unk_287BFAEF0);
  v50 = sub_26B470F10(&unk_287BFAF18);
  v480 = 4;
  v479 = 4;
  v51.value._countAndFlagsBits = 0x68507463656C6573;
  v51.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v51, 0);
  v475 = v477;
  v476 = v478;
  LOBYTE(v20) = sub_26B4CE5C8();
  v52 = sub_26B4D4400();
  *&v419 = v48;
  *(&v419 + 1) = v49;
  *&v374 = v45;
  *(&v374 + 1) = v46;
  *&v329 = v44;
  *(&v329 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55C620, &unk_287BFD538, &unk_287BFAE08, &unk_287BFAE40, 0, 0, v481, v474._rawValue + 768, v20 & 1, v52 & 1, v329, v374, v419, v50, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v53 = sub_26B470D98(&unk_287BFAFE0);
  v54 = sub_26B470D98(&unk_287BFB008);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B5450C0;
  v56 = *v14;
  *(v55 + 32) = *v14;
  *(v55 + 40) = 1;
  *(v55 + 48) = v56;
  *(v55 + 56) = 3;
  *(v55 + 64) = v56;
  *(v55 + 72) = 8;
  *(v55 + 80) = 0x403A000000000000;
  *(v55 + 88) = 10;
  v57 = sub_26B470F10(&unk_287BFB030);
  v480 = 4;
  v479 = 4;
  v58.value._countAndFlagsBits = 0x72507463656C6573;
  v58.value._object = 0xEF3A73756F697665;
  Action.init(_:mac:)(v58, 0);
  v475 = v477;
  v476 = v478;
  LOBYTE(v50) = sub_26B4CE5C8();
  LOBYTE(v44) = sub_26B4D4400();
  *&v420 = sub_26B4D4408();
  *(&v420 + 1) = sub_26B4D4414();
  *&v375 = v54;
  *(&v375 + 1) = v55;
  *&v330 = v53;
  *(&v330 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C640, &unk_287BFD568, &unk_287BFAF70, &unk_287BFAFA8, 0, 0, v481, v474._rawValue + 952, v50 & 1, v44 & 1, v330, v375, v420, v57, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v59 = sub_26B470D98(&unk_287BFB0F8);
  v60 = sub_26B470D98(&unk_287BFB120);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_26B5450C0;
  v62 = *v14;
  *(v61 + 32) = *v14;
  *(v61 + 40) = 1;
  *(v61 + 48) = v62;
  *(v61 + 56) = 3;
  *(v61 + 64) = v62;
  *(v61 + 72) = 8;
  *(v61 + 80) = 0x403A000000000000;
  *(v61 + 88) = 10;
  v63 = sub_26B470F10(&unk_287BFB148);
  v480 = 4;
  v479 = 4;
  v64.value._countAndFlagsBits = 0x654E7463656C6573;
  v64.value._object = 0xEB000000003A7478;
  Action.init(_:mac:)(v64, 0);
  v475 = v477;
  v476 = v478;
  LOBYTE(v50) = sub_26B4CE5C8();
  LOBYTE(v45) = sub_26B4D4400();
  *&v421 = sub_26B4D4408();
  *(&v421 + 1) = sub_26B4D4414();
  *&v376 = v60;
  *(&v376 + 1) = v61;
  *&v331 = v59;
  *(&v331 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x6C65532E74786554, 0xEF7478654E746365, &unk_287BFD598, &unk_287BFB088, &unk_287BFB0C0, 0, 0, v481, v474._rawValue + 1136, v50 & 1, v45 & 1, v331, v376, v421, v63, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v65 = sub_26B470D98(&unk_287BFB210);
  v66 = sub_26B470D98(&unk_287BFB238);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B5450C0;
  v68 = *v39;
  *(v67 + 32) = *v39;
  *(v67 + 40) = 1;
  *(v67 + 48) = v68;
  *(v67 + 56) = 3;
  *(v67 + 64) = v68;
  *(v67 + 72) = 8;
  *(v67 + 80) = 0x403A000000000000;
  *(v67 + 88) = 10;
  v69 = sub_26B470F10(&unk_287BFB260);
  v480 = 4;
  v479 = 4;
  v70.value._countAndFlagsBits = 0xD000000000000017;
  v70.value._object = 0x800000026B55C680;
  Action.init(_:mac:)(v70, 0);
  v475 = v477;
  v476 = v478;
  LOBYTE(v50) = sub_26B4CE5C8();
  LOBYTE(v45) = sub_26B4D4400();
  *&v422 = sub_26B4D4408();
  *(&v422 + 1) = sub_26B4D4414();
  *&v377 = v66;
  *(&v377 + 1) = v67;
  *&v332 = v65;
  *(&v332 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C660, &unk_287BFD5C8, &unk_287BFB1A0, &unk_287BFB1D8, 0, 0, v481, v474._rawValue + 1320, v50 & 1, v45 & 1, v332, v377, v422, v69, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v469 = sub_26B470D98(&unk_287BFB2F0);
  v71 = sub_26B470D98(&unk_287BFB318);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26B5450C0;
  v73 = *v39;
  *(v72 + 32) = *v39;
  *(v72 + 40) = 1;
  *(v72 + 48) = v73;
  *(v72 + 56) = 3;
  *(v72 + 64) = v73;
  *(v72 + 72) = 8;
  *(v72 + 80) = 0x403A000000000000;
  *(v72 + 88) = 10;
  v74 = sub_26B470F10(&unk_287BFB340);
  v480 = 4;
  v479 = 4;
  v75.value._countAndFlagsBits = 0xD000000000000018;
  v75.value._object = 0x800000026B55C6C0;
  Action.init(_:mac:)(v75, 0);
  v475 = v477;
  v476 = v478;
  v76 = sub_26B4D43F4();
  LOBYTE(v45) = sub_26B4CE5C8();
  LOBYTE(v46) = sub_26B4D4400();
  *&v423 = sub_26B4D4408();
  *(&v423 + 1) = sub_26B4D4414();
  *&v378 = v71;
  *(&v378 + 1) = v72;
  *(&v333 + 1) = MEMORY[0x277D84FA0];
  *&v333 = v469;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55C6A0, &unk_287BFD5F8, &unk_287BFB2B8, v76, 0, 0, v481, v474._rawValue + 1504, v45 & 1, v46 & 1, v333, v378, v423, v74, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v467 = sub_26B470D98(&unk_287BFB3D0);
  v77 = sub_26B470D98(&unk_287BFB3F8);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_26B5450C0;
  v79 = *v473;
  *(v78 + 32) = *v473;
  *(v78 + 40) = 1;
  *(v78 + 48) = v79;
  *(v78 + 56) = 3;
  *(v78 + 64) = v79;
  *(v78 + 72) = 8;
  *(v78 + 80) = 0x403A000000000000;
  *(v78 + 88) = 10;
  v80 = sub_26B470F10(&unk_287BFB420);
  v480 = 4;
  v479 = 4;
  v81.value._countAndFlagsBits = 0xD000000000000014;
  v81.value._object = 0x800000026B55C700;
  Action.init(_:mac:)(v81, 0);
  v475 = v477;
  v476 = v478;
  v82 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v45) = sub_26B4D4400();
  *&v424 = sub_26B4D4408();
  *(&v424 + 1) = sub_26B4D4414();
  *&v379 = v77;
  *(&v379 + 1) = v78;
  *(&v334 + 1) = MEMORY[0x277D84FA0];
  *&v334 = v467;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55C6E0, &unk_287BFD628, &unk_287BFB398, v82, 0, 0, v481, v474._rawValue + 1688, v53 & 1, v45 & 1, v334, v379, v424, v80, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v468 = sub_26B470D98(&unk_287BFB4B0);
  v83 = sub_26B470D98(&unk_287BFB4D8);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B5450C0;
  v85 = *v473;
  *(v84 + 32) = *v473;
  *(v84 + 40) = 1;
  *(v84 + 48) = v85;
  *(v84 + 56) = 3;
  *(v84 + 64) = v85;
  *(v84 + 72) = 8;
  *(v84 + 80) = 0x403A000000000000;
  *(v84 + 88) = 10;
  v86 = sub_26B470F10(&unk_287BFB500);
  v480 = 4;
  v479 = 4;
  v87.value._countAndFlagsBits = 0xD000000000000012;
  v87.value._object = 0x800000026B55C740;
  Action.init(_:mac:)(v87, 0);
  v475 = v477;
  v476 = v478;
  v88 = sub_26B4D43F4();
  LOBYTE(v82) = sub_26B4CE5C8();
  LOBYTE(v53) = sub_26B4D4400();
  *&v425 = sub_26B4D4408();
  *(&v425 + 1) = sub_26B4D4414();
  *&v380 = v83;
  *(&v380 + 1) = v84;
  *(&v335 + 1) = MEMORY[0x277D84FA0];
  *&v335 = v468;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55C720, &unk_287BFD658, &unk_287BFB478, v88, 0, 0, v481, v474._rawValue + 1872, v82 & 1, v53 & 1, v335, v380, v425, v86, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v464 = sub_26B470D98(&unk_287BFB590);
  v89 = sub_26B470D98(&unk_287BFB5B8);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_26B5450C0;
  v91 = *v473;
  *(v90 + 32) = *v473;
  *(v90 + 40) = 1;
  *(v90 + 48) = v91;
  *(v90 + 56) = 3;
  *(v90 + 64) = v91;
  *(v90 + 72) = 8;
  *(v90 + 80) = 0x403A000000000000;
  *(v90 + 88) = 10;
  v92 = sub_26B470F10(&unk_287BFB5E0);
  v480 = 4;
  v479 = 4;
  v93.value._object = 0x800000026B55C780;
  v93.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v93, 0);
  v475 = v477;
  v476 = v478;
  v94 = sub_26B4D43F4();
  LOBYTE(v82) = sub_26B4CE5C8();
  LOBYTE(v53) = sub_26B4D4400();
  *&v426 = sub_26B4D4408();
  *(&v426 + 1) = sub_26B4D4414();
  *&v381 = v89;
  *(&v381 + 1) = v90;
  *(&v336 + 1) = MEMORY[0x277D84FA0];
  *&v336 = v464;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C760, &unk_287BFD688, &unk_287BFB558, v94, 0, 0, v481, v474._rawValue + 2056, v82 & 1, v53 & 1, v336, v381, v426, v92, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v465 = sub_26B470D98(&unk_287BFB670);
  v95 = sub_26B470D98(&unk_287BFB698);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_26B5450C0;
  v97 = *v473;
  *(v96 + 32) = *v473;
  *(v96 + 40) = 1;
  *(v96 + 48) = v97;
  *(v96 + 56) = 3;
  *(v96 + 64) = v97;
  *(v96 + 72) = 8;
  *(v96 + 80) = 0x403A000000000000;
  *(v96 + 88) = 10;
  v98 = sub_26B470F10(&unk_287BFB6C0);
  v480 = 4;
  v479 = 4;
  v99.value._object = 0xEF3A64726F577478;
  v99.value._countAndFlagsBits = 0x654E7463656C6573;
  Action.init(_:mac:)(v99, 0);
  v475 = v477;
  v476 = v478;
  v100 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v427 = sub_26B4D4408();
  *(&v427 + 1) = sub_26B4D4414();
  *&v382 = v95;
  *(&v382 + 1) = v96;
  *(&v337 + 1) = MEMORY[0x277D84FA0];
  *&v337 = v465;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C7A0, &unk_287BFD6B8, &unk_287BFB638, v100, 0, 0, v481, v474._rawValue + 2240, v53 & 1, v77 & 1, v337, v382, v427, v98, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v466 = sub_26B470D98(&unk_287BFB750);
  v101 = sub_26B470D98(&unk_287BFB778);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_26B5450C0;
  v103 = *v473;
  *(v102 + 32) = *v473;
  *(v102 + 40) = 1;
  *(v102 + 48) = v103;
  *(v102 + 56) = 3;
  *(v102 + 64) = v103;
  *(v102 + 72) = 8;
  *(v102 + 80) = 0x403A000000000000;
  *(v102 + 88) = 10;
  v104 = sub_26B470F10(&unk_287BFB7A0);
  v480 = 4;
  v479 = 4;
  v105.value._countAndFlagsBits = 0xD000000000000016;
  v105.value._object = 0x800000026B55C7E0;
  Action.init(_:mac:)(v105, 0);
  v475 = v477;
  v476 = v478;
  v106 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v428 = sub_26B4D4408();
  *(&v428 + 1) = sub_26B4D4414();
  *&v383 = v101;
  *(&v383 + 1) = v102;
  *(&v338 + 1) = MEMORY[0x277D84FA0];
  *&v338 = v466;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B55C7C0, &unk_287BFD6E8, &unk_287BFB718, v106, 0, 0, v481, v474._rawValue + 2424, v53 & 1, v59 & 1, v338, v383, v428, v104, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v463 = sub_26B470D98(&unk_287BFB830);
  v107 = sub_26B470D98(&unk_287BFB858);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26B5450C0;
  v109 = *v473;
  *(v108 + 32) = *v473;
  *(v108 + 40) = 1;
  *(v108 + 48) = v109;
  *(v108 + 56) = 3;
  *(v108 + 64) = v109;
  *(v108 + 72) = 8;
  *(v108 + 80) = 0x403A000000000000;
  *(v108 + 88) = 10;
  v110 = sub_26B470F10(&unk_287BFB880);
  v480 = 4;
  v479 = 4;
  v111.value._countAndFlagsBits = 0xD000000000000017;
  v111.value._object = 0x800000026B55C820;
  Action.init(_:mac:)(v111, 0);
  v475 = v477;
  v476 = v478;
  v112 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v429 = sub_26B4D4408();
  *(&v429 + 1) = sub_26B4D4414();
  *&v384 = v107;
  *(&v384 + 1) = v108;
  *(&v339 + 1) = MEMORY[0x277D84FA0];
  *&v339 = v463;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C800, &unk_287BFD718, &unk_287BFB7F8, v112, 0, 0, v481, v474._rawValue + 2608, v53 & 1, v59 & 1, v339, v384, v429, v110, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v461 = sub_26B470D98(&unk_287BFB910);
  v113 = sub_26B470D98(&unk_287BFB938);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_26B5450C0;
  v115 = *v473;
  *(v114 + 32) = *v473;
  *(v114 + 40) = 1;
  *(v114 + 48) = v115;
  *(v114 + 56) = 3;
  *(v114 + 64) = v115;
  *(v114 + 72) = 8;
  *(v114 + 80) = 0x403A000000000000;
  *(v114 + 88) = 10;
  v116 = sub_26B470F10(&unk_287BFB960);
  v480 = 4;
  v479 = 4;
  v117.value._object = 0x800000026B55C860;
  v117.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v117, 0);
  v475 = v477;
  v476 = v478;
  v118 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v430 = sub_26B4D4408();
  *(&v430 + 1) = sub_26B4D4414();
  *&v385 = v113;
  *(&v385 + 1) = v114;
  *(&v340 + 1) = MEMORY[0x277D84FA0];
  *&v340 = v461;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C840, &unk_287BFD748, &unk_287BFB8D8, v118, 0, 0, v481, v474._rawValue + 2792, v53 & 1, v59 & 1, v340, v385, v430, v116, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v462 = sub_26B470D98(&unk_287BFB9F0);
  v119 = sub_26B470D98(&unk_287BFBA18);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_26B5450C0;
  v121 = *v473;
  *(v120 + 32) = *v473;
  *(v120 + 40) = 1;
  *(v120 + 48) = v121;
  *(v120 + 56) = 3;
  *(v120 + 64) = v121;
  *(v120 + 72) = 8;
  *(v120 + 80) = 0x403A000000000000;
  *(v120 + 88) = 10;
  v122 = sub_26B470F10(&unk_287BFBA40);
  v480 = 4;
  v479 = 4;
  v123.value._countAndFlagsBits = 0xD000000000000017;
  v123.value._object = 0x800000026B55C8A0;
  Action.init(_:mac:)(v123, 0);
  v475 = v477;
  v476 = v478;
  v124 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v431 = sub_26B4D4408();
  *(&v431 + 1) = sub_26B4D4414();
  *&v386 = v119;
  *(&v386 + 1) = v120;
  *(&v341 + 1) = MEMORY[0x277D84FA0];
  *&v341 = v462;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55C880, &unk_287BFD778, &unk_287BFB9B8, v124, 0, 0, v481, v474._rawValue + 2976, v53 & 1, v59 & 1, v341, v386, v431, v122, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v125 = sub_26B470D98(&unk_287BFBAD0);
  v126 = sub_26B470D98(&unk_287BFBAF8);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_26B5450C0;
  v128 = *v473;
  *(v127 + 32) = *v473;
  *(v127 + 40) = 1;
  *(v127 + 48) = v128;
  *(v127 + 56) = 3;
  *(v127 + 64) = v128;
  *(v127 + 72) = 8;
  *(v127 + 80) = 0x403A000000000000;
  *(v127 + 88) = 10;
  v129 = sub_26B470F10(&unk_287BFBB20);
  v480 = 4;
  v479 = 4;
  v130.value._countAndFlagsBits = 0xD000000000000018;
  v130.value._object = 0x800000026B55C8E0;
  Action.init(_:mac:)(v130, 0);
  v475 = v477;
  v476 = v478;
  v131 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v432 = sub_26B4D4408();
  *(&v432 + 1) = sub_26B4D4414();
  *&v387 = v126;
  *(&v387 + 1) = v127;
  *&v342 = v125;
  *(&v342 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55C8C0, &unk_287BFD7A8, &unk_287BFBA98, v131, 0, 0, v481, v474._rawValue + 3160, v53 & 1, v59 & 1, v342, v387, v432, v129, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v132 = sub_26B470D98(&unk_287BFBBB0);
  v133 = sub_26B470D98(&unk_287BFBBD8);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B5450C0;
  v135 = *v473;
  *(v134 + 32) = *v473;
  *(v134 + 40) = 1;
  *(v134 + 48) = v135;
  *(v134 + 56) = 3;
  *(v134 + 64) = v135;
  *(v134 + 72) = 8;
  *(v134 + 80) = 0x403A000000000000;
  *(v134 + 88) = 10;
  v136 = sub_26B470F10(&unk_287BFBC00);
  v480 = 4;
  v479 = 4;
  v137.value._countAndFlagsBits = 0xD000000000000014;
  v137.value._object = 0x800000026B55C920;
  Action.init(_:mac:)(v137, 0);
  v475 = v477;
  v476 = v478;
  v138 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v433 = sub_26B4D4408();
  *(&v433 + 1) = sub_26B4D4414();
  *&v388 = v133;
  *(&v388 + 1) = v134;
  *&v343 = v132;
  *(&v343 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55C900, &unk_287BFD7D8, &unk_287BFBB78, v138, 0, 0, v481, v474._rawValue + 3344, v53 & 1, v59 & 1, v343, v388, v433, v136, &v480, &v479, 0, 0, &v475);
  v481[0] = 0;
  v139 = sub_26B470D98(&unk_287BFBC90);
  v140 = sub_26B470D98(&unk_287BFBCB8);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_26B5450C0;
  v142 = *v473;
  *(v141 + 32) = *v473;
  *(v141 + 40) = 1;
  *(v141 + 48) = v142;
  *(v141 + 56) = 3;
  *(v141 + 64) = v142;
  *(v141 + 72) = 8;
  *(v141 + 80) = 0x403A000000000000;
  *(v141 + 88) = 10;
  v143 = sub_26B470F10(&unk_287BFBCE0);
  v480 = 4;
  v479 = 4;
  v144.value._object = 0x800000026B55C960;
  v144.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v144, 0);
  v475 = v477;
  v476 = v478;
  v145 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v434 = sub_26B4D4408();
  *(&v434 + 1) = sub_26B4D4414();
  *&v389 = v140;
  *(&v389 + 1) = v141;
  *&v344 = v139;
  *(&v344 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55C940, &unk_287BFD808, &unk_287BFBC58, v145, 0, 0, v481, v474._rawValue + 3528, v53 & 1, v59 & 1, v344, v389, v434, v143, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v460 = sub_26B470D98(&unk_287BFBD70);
  v146 = sub_26B470D98(&unk_287BFBD98);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_26B5450C0;
  v148 = *v473;
  *(v147 + 32) = *v473;
  *(v147 + 40) = 1;
  *(v147 + 48) = v148;
  *(v147 + 56) = 3;
  *(v147 + 64) = v148;
  *(v147 + 72) = 8;
  *(v147 + 80) = 0x403A000000000000;
  *(v147 + 88) = 10;
  v149 = sub_26B470F10(&unk_287BFBDC0);
  v480 = 4;
  v479 = 4;
  v150.value._object = 0x800000026B55C9A0;
  v150.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v150, 0);
  v475 = v477;
  v476 = v478;
  v151 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v435 = sub_26B4D4408();
  *(&v435 + 1) = sub_26B4D4414();
  *&v390 = v146;
  *(&v390 + 1) = v147;
  *(&v345 + 1) = MEMORY[0x277D84FA0];
  *&v345 = v460;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55C980, &unk_287BFD838, &unk_287BFBD38, v151, 0, 0, v481, v474._rawValue + 3712, v53 & 1, v59 & 1, v345, v390, v435, v149, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v152 = sub_26B470D98(&unk_287BFBE50);
  v153 = sub_26B470D98(&unk_287BFBE78);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_26B5450C0;
  v155 = *v473;
  *(v154 + 32) = *v473;
  *(v154 + 40) = 1;
  *(v154 + 48) = v155;
  *(v154 + 56) = 3;
  *(v154 + 64) = v155;
  *(v154 + 72) = 8;
  *(v154 + 80) = 0x403A000000000000;
  *(v154 + 88) = 10;
  v156 = sub_26B470F10(&unk_287BFBEA0);
  v480 = 4;
  v479 = 4;
  v157.value._object = 0xEF3A656E694C7478;
  v157.value._countAndFlagsBits = 0x654E7463656C6573;
  Action.init(_:mac:)(v157, 0);
  v475 = v477;
  v476 = v478;
  v158 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v436 = sub_26B4D4408();
  *(&v436 + 1) = sub_26B4D4414();
  *&v391 = v153;
  *(&v391 + 1) = v154;
  *&v346 = v152;
  *(&v346 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55C9C0, &unk_287BFD868, &unk_287BFBE18, v158, 0, 0, v481, v474._rawValue + 3896, v53 & 1, v59 & 1, v346, v391, v436, v156, &v480, &v479, 0, 0, &v475);
  v481[0] = 0;
  v159 = sub_26B470D98(&unk_287BFBF30);
  v160 = sub_26B470D98(&unk_287BFBF58);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_26B5450C0;
  v162 = *v473;
  *(v161 + 32) = *v473;
  *(v161 + 40) = 1;
  *(v161 + 48) = v162;
  *(v161 + 56) = 3;
  *(v161 + 64) = v162;
  *(v161 + 72) = 8;
  *(v161 + 80) = 0x403A000000000000;
  *(v161 + 88) = 10;
  v163 = sub_26B470F10(&unk_287BFBF80);
  v480 = 4;
  v479 = 4;
  v164.value._countAndFlagsBits = 0xD000000000000018;
  v164.value._object = 0x800000026B55C6C0;
  Action.init(_:mac:)(v164, 0);
  v475 = v477;
  v476 = v478;
  v165 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v437 = sub_26B4D4408();
  *(&v437 + 1) = sub_26B4D4414();
  *&v392 = v160;
  *(&v392 + 1) = v161;
  *&v347 = v159;
  *(&v347 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B55C9E0, &unk_287BFD898, &unk_287BFBEF8, v165, 0, 0, v481, v474._rawValue + 4080, v53 & 1, v59 & 1, v347, v392, v437, v163, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v166 = sub_26B470D98(&unk_287BFC010);
  v167 = sub_26B470D98(&unk_287BFC038);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B5450C0;
  v169 = *v473;
  *(v168 + 32) = *v473;
  *(v168 + 40) = 1;
  *(v168 + 48) = v169;
  *(v168 + 56) = 3;
  *(v168 + 64) = v169;
  *(v168 + 72) = 8;
  *(v168 + 80) = 0x403A000000000000;
  *(v168 + 88) = 10;
  v170 = sub_26B470F10(&unk_287BFC060);
  v480 = 4;
  v479 = 4;
  v171.value._countAndFlagsBits = 0xD000000000000014;
  v171.value._object = 0x800000026B55C700;
  Action.init(_:mac:)(v171, 0);
  v475 = v477;
  v476 = v478;
  v172 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v438 = sub_26B4D4408();
  *(&v438 + 1) = sub_26B4D4414();
  *&v393 = v167;
  *(&v393 + 1) = v168;
  *&v348 = v166;
  *(&v348 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B55CA20, &unk_287BFD8C8, &unk_287BFBFD8, v172, 0, 0, v481, v474._rawValue + 4264, v53 & 1, v59 & 1, v348, v393, v438, v170, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v173 = sub_26B470D98(&unk_287BFC0F0);
  v174 = sub_26B470D98(&unk_287BFC118);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_26B5450C0;
  v176 = *v473;
  *(v175 + 32) = *v473;
  *(v175 + 40) = 1;
  *(v175 + 48) = v176;
  *(v175 + 56) = 3;
  *(v175 + 64) = v176;
  *(v175 + 72) = 8;
  *(v175 + 80) = 0x403A000000000000;
  *(v175 + 88) = 10;
  v177 = sub_26B470F10(&unk_287BFC140);
  v480 = 4;
  v479 = 4;
  v178.value._object = 0x800000026B55C780;
  v178.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v178, 0);
  v475 = v477;
  v476 = v478;
  v179 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v439 = sub_26B4D4408();
  *(&v439 + 1) = sub_26B4D4414();
  *&v394 = v174;
  *(&v394 + 1) = v175;
  *&v349 = v173;
  *(&v349 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CA50, &unk_287BFD8F8, &unk_287BFC0B8, v179, 0, 0, v481, v474._rawValue + 4448, v53 & 1, v59 & 1, v349, v394, v439, v177, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v180 = sub_26B470D98(&unk_287BFC1D0);
  v181 = sub_26B470D98(&unk_287BFC1F8);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_26B5450C0;
  v183 = *v473;
  *(v182 + 32) = *v473;
  *(v182 + 40) = 1;
  *(v182 + 48) = v183;
  *(v182 + 56) = 3;
  *(v182 + 64) = v183;
  *(v182 + 72) = 8;
  *(v182 + 80) = 0x403A000000000000;
  *(v182 + 88) = 10;
  v184 = sub_26B470F10(&unk_287BFC220);
  v480 = 4;
  v479 = 4;
  v185.value._countAndFlagsBits = 0x654E7463656C6573;
  v185.value._object = 0xEF3A64726F577478;
  Action.init(_:mac:)(v185, 0);
  v475 = v477;
  v476 = v478;
  v186 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v59) = sub_26B4D4400();
  *&v440 = sub_26B4D4408();
  *(&v440 + 1) = sub_26B4D4414();
  *&v395 = v181;
  *(&v395 + 1) = v182;
  *&v350 = v180;
  *(&v350 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55CA80, &unk_287BFD928, &unk_287BFC198, v186, 0, 0, v481, v474._rawValue + 4632, v53 & 1, v59 & 1, v350, v395, v440, v184, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v187 = sub_26B470D98(&unk_287BFC2B0);
  v188 = sub_26B470D98(&unk_287BFC2D8);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_26B5450C0;
  v190 = *v473;
  *(v189 + 32) = *v473;
  *(v189 + 40) = 1;
  *(v189 + 48) = v190;
  *(v189 + 56) = 3;
  *(v189 + 64) = v190;
  *(v189 + 72) = 8;
  *(v189 + 80) = 0x403A000000000000;
  *(v189 + 88) = 10;
  v191 = sub_26B470F10(&unk_287BFC300);
  v480 = 4;
  v479 = 4;
  v192.value._countAndFlagsBits = 0xD000000000000017;
  v192.value._object = 0x800000026B55C820;
  Action.init(_:mac:)(v192, 0);
  v475 = v477;
  v476 = v478;
  v193 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v441 = sub_26B4D4408();
  *(&v441 + 1) = sub_26B4D4414();
  *&v396 = v188;
  *(&v396 + 1) = v189;
  *&v351 = v187;
  *(&v351 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B55CAB0, &unk_287BFD958, &unk_287BFC278, v193, 0, 0, v481, v474._rawValue + 4816, v53 & 1, v77 & 1, v351, v396, v441, v191, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v194 = sub_26B470D98(&unk_287BFC390);
  v195 = sub_26B470D98(&unk_287BFC3B8);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_26B5450C0;
  v197 = *v473;
  *(v196 + 32) = *v473;
  *(v196 + 40) = 1;
  *(v196 + 48) = v197;
  *(v196 + 56) = 3;
  *(v196 + 64) = v197;
  *(v196 + 72) = 8;
  *(v196 + 80) = 0x403A000000000000;
  *(v196 + 88) = 10;
  v198 = sub_26B470F10(&unk_287BFC3E0);
  v480 = 4;
  v479 = 4;
  v199.value._object = 0x800000026B55C860;
  v199.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v199, 0);
  v475 = v477;
  v476 = v478;
  v200 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v442 = sub_26B4D4408();
  *(&v442 + 1) = sub_26B4D4414();
  *&v397 = v195;
  *(&v397 + 1) = v196;
  *&v352 = v194;
  *(&v352 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CAE0, &unk_287BFD988, &unk_287BFC358, v200, 0, 0, v481, v474._rawValue + 5000, v53 & 1, v77 & 1, v352, v397, v442, v198, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v201 = sub_26B470D98(&unk_287BFC470);
  v202 = sub_26B470D98(&unk_287BFC498);
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_26B5450C0;
  v204 = *v473;
  *(v203 + 32) = *v473;
  *(v203 + 40) = 1;
  *(v203 + 48) = v204;
  *(v203 + 56) = 3;
  *(v203 + 64) = v204;
  *(v203 + 72) = 8;
  *(v203 + 80) = 0x403A000000000000;
  *(v203 + 88) = 10;
  v205 = sub_26B470F10(&unk_287BFC4C0);
  v480 = 4;
  v479 = 4;
  v206.value._countAndFlagsBits = 0xD000000000000018;
  v206.value._object = 0x800000026B55C8E0;
  Action.init(_:mac:)(v206, 0);
  v475 = v477;
  v476 = v478;
  v207 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v443 = sub_26B4D4408();
  *(&v443 + 1) = sub_26B4D4414();
  *&v398 = v202;
  *(&v398 + 1) = v203;
  *&v353 = v201;
  *(&v353 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B55CB10, &unk_287BFD9B8, &unk_287BFC438, v207, 0, 0, v481, v474._rawValue + 5184, v53 & 1, v77 & 1, v353, v398, v443, v205, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v208 = sub_26B470D98(&unk_287BFC550);
  v209 = sub_26B470D98(&unk_287BFC578);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_26B5450C0;
  v211 = *v473;
  *(v210 + 32) = *v473;
  *(v210 + 40) = 1;
  *(v210 + 48) = v211;
  *(v210 + 56) = 3;
  *(v210 + 64) = v211;
  *(v210 + 72) = 8;
  *(v210 + 80) = 0x403A000000000000;
  *(v210 + 88) = 10;
  v212 = sub_26B470F10(&unk_287BFC5A0);
  v480 = 4;
  v479 = 4;
  v213.value._countAndFlagsBits = 0xD000000000000014;
  v213.value._object = 0x800000026B55C920;
  Action.init(_:mac:)(v213, 0);
  v475 = v477;
  v476 = v478;
  v214 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v444 = sub_26B4D4408();
  *(&v444 + 1) = sub_26B4D4414();
  *&v399 = v209;
  *(&v399 + 1) = v210;
  *&v354 = v208;
  *(&v354 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B55CB50, &unk_287BFD9E8, &unk_287BFC518, v214, 0, 0, v481, v474._rawValue + 5368, v53 & 1, v77 & 1, v354, v399, v444, v212, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v215 = sub_26B470D98(&unk_287BFC630);
  v216 = sub_26B470D98(&unk_287BFC658);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B5450C0;
  v218 = *v473;
  *(v217 + 32) = *v473;
  *(v217 + 40) = 1;
  *(v217 + 48) = v218;
  *(v217 + 56) = 3;
  *(v217 + 64) = v218;
  *(v217 + 72) = 8;
  *(v217 + 80) = 0x403A000000000000;
  *(v217 + 88) = 10;
  v219 = sub_26B470F10(&unk_287BFC680);
  v480 = 4;
  v479 = 4;
  v220.value._object = 0x800000026B55C9A0;
  v220.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v220, 0);
  v475 = v477;
  v476 = v478;
  v221 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v445 = sub_26B4D4408();
  *(&v445 + 1) = sub_26B4D4414();
  *&v400 = v216;
  *(&v400 + 1) = v217;
  *&v355 = v215;
  *(&v355 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B55CB80, &unk_287BFDA18, &unk_287BFC5F8, v221, 0, 0, v481, v474._rawValue + 5552, v53 & 1, v77 & 1, v355, v400, v445, v219, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v222 = sub_26B470D98(&unk_287BFC710);
  v223 = sub_26B470D98(&unk_287BFC738);
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_26B5450C0;
  v225 = *v473;
  *(v224 + 32) = *v473;
  *(v224 + 40) = 1;
  *(v224 + 48) = v225;
  *(v224 + 56) = 3;
  *(v224 + 64) = v225;
  *(v224 + 72) = 8;
  *(v224 + 80) = 0x403A000000000000;
  *(v224 + 88) = 10;
  v226 = sub_26B470F10(&unk_287BFC760);
  v480 = 4;
  v479 = 4;
  v227.value._countAndFlagsBits = 0x654E7463656C6573;
  v227.value._object = 0xEF3A656E694C7478;
  Action.init(_:mac:)(v227, 0);
  v475 = v477;
  v476 = v478;
  v228 = sub_26B4D43F4();
  LOBYTE(v53) = sub_26B4CE5C8();
  LOBYTE(v77) = sub_26B4D4400();
  *&v446 = sub_26B4D4408();
  *(&v446 + 1) = sub_26B4D4414();
  *&v401 = v223;
  *(&v401 + 1) = v224;
  *&v356 = v222;
  *(&v356 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55CBB0, &unk_287BFDA48, &unk_287BFC6D8, v228, 0, 0, v481, v474._rawValue + 5736, v53 & 1, v77 & 1, v356, v401, v446, v226, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v229 = sub_26B470D98(&unk_287BFC800);
  v230 = sub_26B470D98(&unk_287BFC828);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_26B5450D0;
  v232 = *v473;
  *(v231 + 32) = *v473;
  *(v231 + 40) = 3;
  *(v231 + 48) = v232;
  *(v231 + 56) = 8;
  *(v231 + 64) = 0x403A000000000000;
  *(v231 + 72) = 10;
  v233 = sub_26B470F10(&unk_287BFC850);
  v480 = 4;
  v479 = 4;
  v234.value._countAndFlagsBits = 0xD00000000000001BLL;
  v234.value._object = 0x800000026B55CC00;
  Action.init(_:mac:)(v234, 0);
  v475 = v477;
  v476 = v478;
  v235 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v447 = sub_26B4D4408();
  *(&v447 + 1) = sub_26B4D4414();
  *&v402 = v230;
  *(&v402 + 1) = v231;
  *&v357 = v229;
  *(&v357 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55CBE0, &unk_287BFDA78, &unk_287BFC7C8, v235, 0, 0, v481, v474._rawValue + 5920, v77 & 1, v223 & 1, v357, v402, v447, v233, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v236 = sub_26B470D98(&unk_287BFC8F0);
  v237 = sub_26B470D98(&unk_287BFC918);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_26B5450D0;
  v239 = *v473;
  *(v238 + 32) = *v473;
  *(v238 + 40) = 3;
  *(v238 + 48) = v239;
  *(v238 + 56) = 8;
  *(v238 + 64) = 0x403A000000000000;
  *(v238 + 72) = 10;
  v240 = sub_26B470F10(&unk_287BFC940);
  v480 = 4;
  v479 = 4;
  v241.value._countAndFlagsBits = 0xD000000000000015;
  v241.value._object = 0x800000026B55CC40;
  Action.init(_:mac:)(v241, 0);
  v475 = v477;
  v476 = v478;
  v242 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v448 = sub_26B4D4408();
  *(&v448 + 1) = sub_26B4D4414();
  *&v403 = v237;
  *(&v403 + 1) = v238;
  *&v358 = v236;
  *(&v358 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55CC20, &unk_287BFDAA8, &unk_287BFC8B8, v242, 0, 0, v481, v474._rawValue + 6104, v77 & 1, v223 & 1, v358, v403, v448, v240, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v243 = sub_26B470D98(&unk_287BFC9E0);
  v244 = sub_26B470D98(&unk_287BFCA08);
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_26B5450C0;
  v246 = *v473;
  *(v245 + 32) = *v473;
  *(v245 + 40) = 1;
  *(v245 + 48) = v246;
  *(v245 + 56) = 3;
  *(v245 + 64) = v246;
  *(v245 + 72) = 8;
  *(v245 + 80) = 0x403A000000000000;
  *(v245 + 88) = 10;
  v247 = sub_26B470F10(&unk_287BFCA30);
  v480 = 4;
  v479 = 4;
  v248.value._countAndFlagsBits = 0xD000000000000034;
  v248.value._object = 0x800000026B55CCA0;
  Action.init(_:mac:)(v248, 0);
  v475 = v477;
  v476 = v478;
  v249 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v449 = sub_26B4D4408();
  *(&v449 + 1) = sub_26B4D4414();
  *&v404 = v244;
  *(&v404 + 1) = v245;
  *&v359 = v243;
  *(&v359 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CC60, &unk_287BFDAD8, &unk_287BFC9A8, v249, 0, 0, v481, v474._rawValue + 6288, v77 & 1, v223 & 1, v359, v404, v449, v247, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v250 = sub_26B470D98(&unk_287BFCAF0);
  v251 = sub_26B470D98(&unk_287BFCB18);
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_26B5450C0;
  v253 = *v473;
  *(v252 + 32) = *v473;
  *(v252 + 40) = 1;
  *(v252 + 48) = v253;
  *(v252 + 56) = 3;
  *(v252 + 64) = v253;
  *(v252 + 72) = 8;
  *(v252 + 80) = 0x403A000000000000;
  *(v252 + 88) = 10;
  v254 = sub_26B470F10(&unk_287BFCB40);
  v480 = 4;
  v479 = 4;
  v255.value._countAndFlagsBits = 0xD000000000000035;
  v255.value._object = 0x800000026B55CD20;
  Action.init(_:mac:)(v255, 0);
  v475 = v477;
  v476 = v478;
  v256 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v450 = sub_26B4D4408();
  *(&v450 + 1) = sub_26B4D4414();
  *&v405 = v251;
  *(&v405 + 1) = v252;
  *&v360 = v250;
  *(&v360 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000039, 0x800000026B55CCE0, &unk_287BFDB08, &unk_287BFCAB8, v256, 0, 0, v481, v474._rawValue + 6472, v77 & 1, v223 & 1, v360, v405, v450, v254, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v257 = sub_26B470D98(&unk_287BFCBE0);
  v258 = sub_26B470D98(&unk_287BFCC08);
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_26B5450C0;
  v260 = *v473;
  *(v259 + 32) = *v473;
  *(v259 + 40) = 1;
  *(v259 + 48) = v260;
  *(v259 + 56) = 3;
  *(v259 + 64) = v260;
  *(v259 + 72) = 8;
  *(v259 + 80) = 0x403A000000000000;
  *(v259 + 88) = 10;
  v261 = sub_26B470F10(&unk_287BFCC30);
  v480 = 4;
  v479 = 4;
  v262.value._countAndFlagsBits = 0xD00000000000002FLL;
  v262.value._object = 0x800000026B55CDA0;
  Action.init(_:mac:)(v262, 0);
  v475 = v477;
  v476 = v478;
  v263 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v451 = sub_26B4D4408();
  *(&v451 + 1) = sub_26B4D4414();
  *&v406 = v258;
  *(&v406 + 1) = v259;
  *&v361 = v257;
  *(&v361 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000033, 0x800000026B55CD60, &unk_287BFDB38, &unk_287BFCBA8, v263, 0, 0, v481, v474._rawValue + 6656, v77 & 1, v223 & 1, v361, v406, v451, v261, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v264 = sub_26B470D98(&unk_287BFCCF0);
  v265 = sub_26B470D98(&unk_287BFCD18);
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_26B5450C0;
  v267 = *v473;
  *(v266 + 32) = *v473;
  *(v266 + 40) = 1;
  *(v266 + 48) = v267;
  *(v266 + 56) = 3;
  *(v266 + 64) = v267;
  *(v266 + 72) = 8;
  *(v266 + 80) = 0x403A000000000000;
  *(v266 + 88) = 10;
  v268 = sub_26B470F10(&unk_287BFCD40);
  v480 = 4;
  v479 = 4;
  v269.value._countAndFlagsBits = 0xD000000000000030;
  v269.value._object = 0x800000026B55CE10;
  Action.init(_:mac:)(v269, 0);
  v475 = v477;
  v476 = v478;
  v270 = sub_26B4D43F4();
  LOBYTE(v77) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v452 = sub_26B4D4408();
  *(&v452 + 1) = sub_26B4D4414();
  *&v407 = v265;
  *(&v407 + 1) = v266;
  *&v362 = v264;
  *(&v362 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000034, 0x800000026B55CDD0, &unk_287BFDB68, &unk_287BFCCB8, v270, 0, 0, v481, v474._rawValue + 6840, v77 & 1, v223 & 1, v362, v407, v452, v268, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v271 = sub_26B470D98(&unk_287BFCDE0);
  v272 = sub_26B470D98(&unk_287BFCE08);
  v273 = swift_allocObject();
  *(v273 + 16) = xmmword_26B5450C0;
  v274 = *v473;
  *(v273 + 32) = *v473;
  *(v273 + 40) = 1;
  *(v273 + 48) = v274;
  *(v273 + 56) = 3;
  *(v273 + 64) = v274;
  *(v273 + 72) = 8;
  *(v273 + 80) = 0x403A000000000000;
  *(v273 + 88) = 10;
  v275 = sub_26B470F10(&unk_287BFCE30);
  v480 = 4;
  v479 = 4;
  v276.value._countAndFlagsBits = 0xD000000000000033;
  v276.value._object = 0x800000026B55CE90;
  Action.init(_:mac:)(v276, 0);
  v475 = v477;
  v476 = v478;
  v277 = sub_26B4D43F4();
  LOBYTE(v270) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v453 = sub_26B4D4408();
  *(&v453 + 1) = sub_26B4D4414();
  *&v408 = v272;
  *(&v408 + 1) = v273;
  *&v363 = v271;
  *(&v363 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000037, 0x800000026B55CE50, &unk_287BFDB98, &unk_287BFCDA8, v277, 0, 0, v481, v474._rawValue + 7024, v270 & 1, v223 & 1, v363, v408, v453, v275, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v278 = sub_26B470D98(&unk_287BFCEF0);
  v279 = sub_26B470D98(&unk_287BFCF18);
  v280 = swift_allocObject();
  *(v280 + 16) = xmmword_26B5450C0;
  v281 = *v473;
  *(v280 + 32) = *v473;
  *(v280 + 40) = 1;
  *(v280 + 48) = v281;
  *(v280 + 56) = 3;
  *(v280 + 64) = v281;
  *(v280 + 72) = 8;
  *(v280 + 80) = 0x403A000000000000;
  *(v280 + 88) = 10;
  v282 = sub_26B470F10(&unk_287BFCF40);
  v480 = 4;
  v479 = 4;
  v283.value._countAndFlagsBits = 0xD000000000000034;
  v283.value._object = 0x800000026B55CF10;
  Action.init(_:mac:)(v283, 0);
  v475 = v477;
  v476 = v478;
  v284 = sub_26B4D43F4();
  LOBYTE(v273) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v454 = sub_26B4D4408();
  *(&v454 + 1) = sub_26B4D4414();
  *&v409 = v279;
  *(&v409 + 1) = v280;
  *&v364 = v278;
  *(&v364 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CED0, &unk_287BFDBC8, &unk_287BFCEB8, v284, 0, 0, v481, v474._rawValue + 7208, v273 & 1, v223 & 1, v364, v409, v454, v282, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v285 = sub_26B470D98(&unk_287BFCFE0);
  v286 = sub_26B470D98(&unk_287BFD008);
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_26B5450C0;
  v288 = *v473;
  *(v287 + 32) = *v473;
  *(v287 + 40) = 1;
  *(v287 + 48) = v288;
  *(v287 + 56) = 3;
  *(v287 + 64) = v288;
  *(v287 + 72) = 8;
  *(v287 + 80) = 0x403A000000000000;
  *(v287 + 88) = 10;
  v289 = sub_26B470F10(&unk_287BFD030);
  v480 = 4;
  v479 = 4;
  v290.value._countAndFlagsBits = 0xD000000000000034;
  v290.value._object = 0x800000026B55CF90;
  Action.init(_:mac:)(v290, 0);
  v475 = v477;
  v476 = v478;
  v291 = sub_26B4D43F4();
  LOBYTE(v273) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v455 = sub_26B4D4408();
  *(&v455 + 1) = sub_26B4D4414();
  *&v410 = v286;
  *(&v410 + 1) = v287;
  *&v365 = v285;
  *(&v365 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000038, 0x800000026B55CF50, &unk_287BFDBF8, &unk_287BFCFA8, v291, 0, 0, v481, v474._rawValue + 7392, v273 & 1, v223 & 1, v365, v410, v455, v289, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v292 = sub_26B470D98(&unk_287BFD0F0);
  v293 = sub_26B470D98(&unk_287BFD118);
  v294 = swift_allocObject();
  *(v294 + 16) = xmmword_26B5450C0;
  v295 = *v473;
  *(v294 + 32) = *v473;
  *(v294 + 40) = 1;
  *(v294 + 48) = v295;
  *(v294 + 56) = 3;
  *(v294 + 64) = v295;
  *(v294 + 72) = 8;
  *(v294 + 80) = 0x403A000000000000;
  *(v294 + 88) = 10;
  v296 = sub_26B470F10(&unk_287BFD140);
  v480 = 4;
  v479 = 4;
  v297.value._countAndFlagsBits = 0xD000000000000035;
  v297.value._object = 0x800000026B55D010;
  Action.init(_:mac:)(v297, 0);
  v475 = v477;
  v476 = v478;
  v298 = sub_26B4D43F4();
  LOBYTE(v273) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v456 = sub_26B4D4408();
  *(&v456 + 1) = sub_26B4D4414();
  *&v411 = v293;
  *(&v411 + 1) = v294;
  *&v366 = v292;
  *(&v366 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000039, 0x800000026B55CFD0, &unk_287BFDC28, &unk_287BFD0B8, v298, 0, 0, v481, v474._rawValue + 7576, v273 & 1, v223 & 1, v366, v411, v456, v296, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v299 = sub_26B470D98(&unk_287BFD1E0);
  v300 = sub_26B470D98(&unk_287BFD208);
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_26B5450C0;
  v302 = *v473;
  *(v301 + 32) = *v473;
  *(v301 + 40) = 1;
  *(v301 + 48) = v302;
  *(v301 + 56) = 3;
  *(v301 + 64) = v302;
  *(v301 + 72) = 8;
  *(v301 + 80) = 0x403A000000000000;
  *(v301 + 88) = 10;
  v303 = sub_26B470F10(&unk_287BFD230);
  v480 = 4;
  v479 = 4;
  v304.value._countAndFlagsBits = 0xD00000000000002FLL;
  v304.value._object = 0x800000026B55D090;
  Action.init(_:mac:)(v304, 0);
  v475 = v477;
  v476 = v478;
  v305 = sub_26B4D43F4();
  LOBYTE(v273) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v457 = sub_26B4D4408();
  *(&v457 + 1) = sub_26B4D4414();
  *&v412 = v300;
  *(&v412 + 1) = v301;
  *&v367 = v299;
  *(&v367 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000033, 0x800000026B55D050, &unk_287BFDC58, &unk_287BFD1A8, v305, 0, 0, v481, v474._rawValue + 7760, v273 & 1, v223 & 1, v367, v412, v457, v303, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v306 = sub_26B470D98(&unk_287BFD2F0);
  v307 = sub_26B470D98(&unk_287BFD318);
  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_26B5450C0;
  v309 = *v473;
  *(v308 + 32) = *v473;
  *(v308 + 40) = 1;
  *(v308 + 48) = v309;
  *(v308 + 56) = 3;
  *(v308 + 64) = v309;
  *(v308 + 72) = 8;
  *(v308 + 80) = 0x403A000000000000;
  *(v308 + 88) = 10;
  v310 = sub_26B470F10(&unk_287BFD340);
  v480 = 4;
  v479 = 4;
  v311.value._countAndFlagsBits = 0xD000000000000030;
  v311.value._object = 0x800000026B55D100;
  Action.init(_:mac:)(v311, 0);
  v475 = v477;
  v476 = v478;
  v312 = sub_26B4D43F4();
  LOBYTE(v273) = sub_26B4CE5C8();
  LOBYTE(v223) = sub_26B4D4400();
  *&v458 = sub_26B4D4408();
  *(&v458 + 1) = sub_26B4D4414();
  *&v413 = v307;
  *(&v413 + 1) = v308;
  *&v368 = v306;
  *(&v368 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000034, 0x800000026B55D0C0, &unk_287BFDC88, &unk_287BFD2B8, v312, 0, 0, v481, v474._rawValue + 7944, v273 & 1, v223 & 1, v368, v413, v458, v310, &v480, &v479, 0, 0, &v475);
  v481[0] = 1;
  v313 = sub_26B470D98(&unk_287BFD400);
  v314 = sub_26B470D98(&unk_287BFD428);
  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_26B5450C0;
  v316 = *v473;
  *(v315 + 32) = *v473;
  *(v315 + 40) = 1;
  *(v315 + 48) = v316;
  *(v315 + 56) = 3;
  *(v315 + 64) = v316;
  *(v315 + 72) = 8;
  *(v315 + 80) = 0x403A000000000000;
  *(v315 + 88) = 10;
  v317 = sub_26B470F10(&unk_287BFD450);
  v480 = 4;
  v479 = 4;
  v318.value._countAndFlagsBits = 0x7463656C65736E75;
  v319.value._countAndFlagsBits = 0xD000000000000015;
  v319.value._object = 0x800000026B552810;
  v318.value._object = 0xE90000000000003ALL;
  Action.init(_:mac:)(v319, v318);
  v475 = v477;
  v476 = v478;
  v320 = sub_26B4D43F4();
  LOBYTE(v65) = sub_26B4CE5C8();
  LOBYTE(v273) = sub_26B4D4400();
  *&v459 = sub_26B4D4408();
  *(&v459 + 1) = sub_26B4D4414();
  *&v414 = v314;
  *(&v414 + 1) = v315;
  *&v369 = v313;
  *(&v369 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x736E552E74786554, 0xED00007463656C65, &unk_287BFDCB8, &unk_287BFD3C8, v320, 0, 0, v481, v474._rawValue + 8128, v65 & 1, v273 & 1, v369, v414, v459, v317, &v480, &v479, 0, 0, &v475);
  LOBYTE(v320) = sub_26B4CE5C8();
  v321 = sub_26B4D4400();
  v322._object = 0xE90000000000006ELL;
  v323 = v321 & 1;
  v322._countAndFlagsBits = 0x6F697463656C6553;
  v324._object = v471;
  v324._countAndFlagsBits = v472;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D68, v322, v324, v320 & 1, v323, v474);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B48E25C()
{
  if (qword_2804003F0 != -1)
  {
    swift_once();
  }

  return &stru_280406D68;
}

void sub_26B48E2AC()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v242 = sub_26B542AB4();
  v241 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B545280;
  v255[0] = 0;
  v10 = sub_26B470D98(&unk_287BFDD78);
  v11 = sub_26B470D98(&unk_287BFDDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B5450C0;
  *(v12 + 32) = 0x403A000000000000;
  *(v12 + 40) = 1;
  v13 = sub_26B4C6A78();
  v14 = *v13;
  v246 = v13;
  *(v12 + 48) = *v13;
  *(v12 + 56) = 3;
  *(v12 + 64) = v14;
  *(v12 + 72) = 8;
  *(v12 + 80) = 0x403A000000000000;
  *(v12 + 88) = 10;
  v15 = sub_26B471088(&unk_287BFDDC8);
  v254 = 4;
  v253 = 4;
  v16.value._countAndFlagsBits = 0x6573616572636564;
  v16.value._object = 0xEE00656D756C6F56;
  v17.value._countAndFlagsBits = 0xD000000000000014;
  v17.value._object = 0x800000026B55D8A0;
  Action.init(_:mac:)(v16, v17);
  v249 = v251;
  v250 = v252;
  v18 = sub_26B4D43F4();
  v19 = sub_26B4CE5C8();
  v20 = sub_26B4D4400();
  v21 = sub_26B4D4414();
  v22 = sub_26B4D4414();
  *&v220 = v15;
  *(&v220 + 1) = v21;
  *&v201 = v11;
  *(&v201 + 1) = v12;
  v247._rawValue = v9;
  *&v182 = v10;
  *(&v182 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55D880, &unk_287BFEDF8, &unk_287BFDD28, v18, 0, 0, v255, v9 + 32, v19 & 1, v20 & 1, v182, v201, v220, v22, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v245 = sub_26B470D98(&unk_287BFDE80);
  v23 = sub_26B470D98(&unk_287BFDEA8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B5450C0;
  *(v24 + 32) = 0x403A000000000000;
  *(v24 + 40) = 1;
  v25 = *v13;
  *(v24 + 48) = *v13;
  *(v24 + 56) = 3;
  *(v24 + 64) = v25;
  *(v24 + 72) = 8;
  *(v24 + 80) = 0x403A000000000000;
  *(v24 + 88) = 10;
  v26 = sub_26B471088(&unk_287BFDED0);
  v254 = 4;
  v253 = 4;
  v27.value._countAndFlagsBits = 0x6573616572636E69;
  v28.value._countAndFlagsBits = 0xD000000000000014;
  v28.value._object = 0x800000026B55D8E0;
  v27.value._object = 0xEE00656D756C6F56;
  Action.init(_:mac:)(v27, v28);
  v249 = v251;
  v250 = v252;
  v29 = sub_26B4D43F4();
  v30 = sub_26B4CE5C8();
  v31 = sub_26B4D4400();
  v32 = sub_26B4D4414();
  v33 = sub_26B4D4414();
  *&v221 = v26;
  *(&v221 + 1) = v32;
  *&v202 = v23;
  *(&v202 + 1) = v24;
  *(&v183 + 1) = MEMORY[0x277D84FA0];
  *&v183 = v245;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B55D8C0, &unk_287BFEE28, &unk_287BFDE30, v29, 0, 0, v255, v9 + 216, v30 & 1, v31 & 1, v183, v202, v221, v33, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v34 = sub_26B470D98(&unk_287BFDFB8);
  v35 = sub_26B470D98(&unk_287BFDFE0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26B5450D0;
  *(v36 + 32) = 0x403A000000000000;
  *(v36 + 40) = 1;
  *(v36 + 48) = *v246;
  *(v36 + 56) = 3;
  *(v36 + 64) = 0x403A000000000000;
  *(v36 + 72) = 10;
  v37 = sub_26B471088(&unk_287BFE008);
  v254 = 4;
  v253 = 4;
  v38.value._countAndFlagsBits = 0xD000000000000010;
  v39.value._countAndFlagsBits = 0xD000000000000015;
  v39.value._object = 0x800000026B55D900;
  v38.value._object = 0x800000026B55D920;
  Action.init(_:mac:)(v39, v38);
  v249 = v251;
  v250 = v252;
  v40 = sub_26B4D43F4();
  v41 = sub_26B4CE5C8();
  v42 = sub_26B4D4400();
  v43 = sub_26B4D4414();
  v44 = sub_26B4D4414();
  *&v222 = v37;
  *(&v222 + 1) = v43;
  *&v203 = v35;
  *(&v203 + 1) = v36;
  *&v184 = v34;
  *(&v184 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x4D2E6D6574737953, 0xEB00000000657475, &unk_287BFEE58, &unk_287BFDF68, v40, 0, 0, v255, v247._rawValue + 400, v41 & 1, v42 & 1, v184, v203, v222, v44, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v248 = sub_26B470D98(&unk_287BFE0F0);
  v45 = sub_26B470D98(&unk_287BFE118);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B5450D0;
  *(v46 + 32) = 0x403A000000000000;
  *(v46 + 40) = 1;
  *(v46 + 48) = *v246;
  *(v46 + 56) = 3;
  *(v46 + 64) = 0x403A000000000000;
  *(v46 + 72) = 10;
  v47 = sub_26B471088(&unk_287BFE140);
  v254 = 4;
  v253 = 4;
  v48.value._countAndFlagsBits = 0xD000000000000014;
  v48.value._object = 0x800000026B55D940;
  v49.value._object = 0x800000026B55D960;
  v49.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v48, v49);
  v249 = v251;
  v250 = v252;
  v50 = sub_26B4D43F4();
  v51 = sub_26B4CE5C8();
  v52 = sub_26B4D4400();
  v53 = sub_26B4D4414();
  v54 = sub_26B4D4414();
  *&v223 = v47;
  *(&v223 + 1) = v53;
  *&v204 = v45;
  *(&v204 + 1) = v46;
  *(&v185 + 1) = MEMORY[0x277D84FA0];
  *&v185 = v248;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x552E6D6574737953, 0xED00006574756D6ELL, &unk_287BFEE98, &unk_287BFE0A0, v50, 0, 0, v255, v247._rawValue + 584, v51 & 1, v52 & 1, v185, v204, v223, v54, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v55 = sub_26B470D98(&unk_287BFE1D0);
  v56 = sub_26B470D98(&unk_287BFE1F8);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B545100;
  *(v57 + 32) = *v246;
  *(v57 + 40) = 3;
  v254 = 4;
  v253 = 4;
  v58.value._countAndFlagsBits = 0xD000000000000011;
  v58.value._object = 0x800000026B55D9A0;
  Action.init(_:mac:)(v58, 0);
  v249 = v251;
  v250 = v252;
  v59 = sub_26B4D43F4();
  v60 = sub_26B4CE5C8();
  v61 = sub_26B4D4400();
  v62 = sub_26B4D4408();
  v63 = sub_26B4D4414();
  v64 = sub_26B4D4414();
  *&v224 = v62;
  *(&v224 + 1) = v63;
  *&v205 = v56;
  *(&v205 + 1) = v57;
  *&v186 = v55;
  *(&v186 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55D980, &unk_287BFEED8, &unk_287BFE198, v59, 0, 0, v255, v247._rawValue + 768, v60 & 1, v61 & 1, v186, v205, v224, v64, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v65 = sub_26B470D98(&unk_287BFE288);
  v66 = sub_26B470D98(&unk_287BFE2B0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545100;
  *(v67 + 32) = *v246;
  *(v67 + 40) = 3;
  v254 = 4;
  v253 = 4;
  v68.value._object = 0x800000026B55D9E0;
  v68.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v68, 0);
  v249 = v251;
  v250 = v252;
  v69 = sub_26B4D43F4();
  v70 = sub_26B4CE5C8();
  v71 = sub_26B4D4400();
  v72 = sub_26B4D4408();
  v73 = sub_26B4D4414();
  v74 = sub_26B4D4414();
  *&v225 = v72;
  *(&v225 + 1) = v73;
  *&v206 = v66;
  *(&v206 + 1) = v67;
  *&v187 = v65;
  *(&v187 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55D9C0, &unk_287BFEF08, &unk_287BFE250, v69, 0, 0, v255, v247._rawValue + 952, v70 & 1, v71 & 1, v187, v206, v225, v74, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v75 = sub_26B470D98(&unk_287BFE340);
  v76 = sub_26B470D98(&unk_287BFE368);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_26B545120;
  v78 = *v246;
  *(v77 + 32) = *v246;
  *(v77 + 40) = 3;
  *(v77 + 48) = v78;
  *(v77 + 56) = 8;
  v79 = sub_26B470F10(&unk_287BFE390);
  v254 = 4;
  v253 = 4;
  v80.value._countAndFlagsBits = 0xD000000000000017;
  v80.value._object = 0x800000026B55DA20;
  Action.init(_:mac:)(v80, 0);
  v249 = v251;
  v250 = v252;
  v81 = sub_26B4D43F4();
  v82 = sub_26B4CE5C8();
  v83 = sub_26B4D4400();
  *&v226 = sub_26B4D4408();
  *(&v226 + 1) = sub_26B4D4414();
  *&v207 = v76;
  *(&v207 + 1) = v77;
  *&v188 = v75;
  *(&v188 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55DA00, &unk_287BFEF38, &unk_287BFE308, v81, 0, 0, v255, v247._rawValue + 1136, v82 & 1, v83 & 1, v188, v207, v226, v79, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v84 = sub_26B470D98(&unk_287BFE430);
  v85 = sub_26B470D98(&unk_287BFE458);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26B545120;
  v87 = *v246;
  *(v86 + 32) = *v246;
  *(v86 + 40) = 3;
  *(v86 + 48) = v87;
  *(v86 + 56) = 8;
  v88 = sub_26B470F10(&unk_287BFE480);
  v254 = 4;
  v253 = 4;
  v89.value._countAndFlagsBits = 0xD00000000000001CLL;
  v89.value._object = 0x800000026B55DA60;
  Action.init(_:mac:)(v89, 0);
  v249 = v251;
  v250 = v252;
  v90 = sub_26B4D43F4();
  v91 = sub_26B4CE5C8();
  LOBYTE(v72) = sub_26B4D4400();
  *&v227 = sub_26B4D4408();
  *(&v227 + 1) = sub_26B4D4414();
  *&v208 = v85;
  *(&v208 + 1) = v86;
  *&v189 = v84;
  *(&v189 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55DA40, &unk_287BFEF68, &unk_287BFE3F8, v90, 0, 0, v255, v247._rawValue + 1320, v91 & 1, v72 & 1, v189, v208, v227, v88, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v92 = sub_26B470D98(&unk_287BFE510);
  v93 = sub_26B470D98(&unk_287BFE538);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_26B545120;
  v95 = *v246;
  *(v94 + 32) = *v246;
  *(v94 + 40) = 3;
  *(v94 + 48) = v95;
  *(v94 + 56) = 8;
  v96 = sub_26B470F10(&unk_287BFE560);
  v254 = 4;
  v253 = 4;
  v97.value._countAndFlagsBits = 0xD000000000000022;
  v97.value._object = 0x800000026B55DAB0;
  Action.init(_:mac:)(v97, 0);
  v249 = v251;
  v250 = v252;
  v98 = sub_26B4D43F4();
  v99 = sub_26B4CE5C8();
  LOBYTE(v72) = sub_26B4D4400();
  *&v228 = sub_26B4D4408();
  *(&v228 + 1) = sub_26B4D4414();
  *&v209 = v93;
  *(&v209 + 1) = v94;
  *&v190 = v92;
  *(&v190 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55DA80, &unk_287BFEF98, &unk_287BFE4D8, v98, 0, 0, v255, v247._rawValue + 1504, v99 & 1, v72 & 1, v190, v209, v228, v96, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v100 = sub_26B470D98(&unk_287BFE600);
  v101 = sub_26B470D98(&unk_287BFE628);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_26B545120;
  v103 = *v246;
  *(v102 + 32) = *v246;
  *(v102 + 40) = 3;
  *(v102 + 48) = v103;
  *(v102 + 56) = 8;
  v104 = sub_26B470F10(&unk_287BFE650);
  v254 = 4;
  v253 = 4;
  v105.value._countAndFlagsBits = 0xD00000000000001BLL;
  v105.value._object = 0x800000026B55DB00;
  Action.init(_:mac:)(v105, 0);
  v249 = v251;
  v250 = v252;
  v106 = sub_26B4D43F4();
  v107 = sub_26B4CE5C8();
  LOBYTE(v72) = sub_26B4D4400();
  *&v229 = sub_26B4D4408();
  *(&v229 + 1) = sub_26B4D4414();
  *&v210 = v101;
  *(&v210 + 1) = v102;
  *&v191 = v100;
  *(&v191 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55DAE0, &unk_287BFEFC8, &unk_287BFE5C8, v106, 0, 0, v255, v247._rawValue + 1688, v107 & 1, v72 & 1, v191, v210, v229, v104, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v239 = sub_26B470D98(&unk_287BFE6E0);
  v108 = sub_26B470D98(&unk_287BFE708);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B545120;
  *(v109 + 32) = *v246;
  *(v109 + 40) = 3;
  *(v109 + 48) = 0x403A000000000000;
  *(v109 + 56) = 6;
  v254 = 4;
  v253 = 4;
  v110.value._countAndFlagsBits = 0x657263536B636F6CLL;
  v110.value._object = 0xEA00000000006E65;
  Action.init(_:mac:)(v110, 0);
  v249 = v251;
  v250 = v252;
  v111 = sub_26B4D43F4();
  LOBYTE(v106) = sub_26B4CE5C8();
  v112 = sub_26B4D4400();
  v113 = sub_26B4D4408();
  v114 = sub_26B4D4414();
  v115 = sub_26B4D4414();
  *&v230 = v113;
  *(&v230 + 1) = v114;
  *&v211 = v108;
  *(&v211 + 1) = v109;
  *(&v192 + 1) = MEMORY[0x277D84FA0];
  *&v192 = v239;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55DB20, &unk_287BFEFF8, &unk_287BFE6A8, v111, 0, 0, v255, v247._rawValue + 1872, v106 & 1, v112 & 1, v192, v211, v230, v115, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v240 = sub_26B470D98(&unk_287BFE798);
  v116 = sub_26B470D98(&unk_287BFE7C0);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_26B5450C0;
  v118 = *v246;
  *(v117 + 32) = *v246;
  *(v117 + 40) = 1;
  *(v117 + 48) = v118;
  *(v117 + 56) = 3;
  *(v117 + 64) = v118;
  *(v117 + 72) = 8;
  *(v117 + 80) = 0x403A000000000000;
  *(v117 + 88) = 10;
  v254 = 4;
  v253 = 4;
  v119.value._countAndFlagsBits = 0x7055676E6168;
  v119.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v119, 0);
  v249 = v251;
  v250 = v252;
  v120 = sub_26B4D43F4();
  LOBYTE(v111) = sub_26B4CE5C8();
  LOBYTE(v106) = sub_26B4D4400();
  v121 = sub_26B4D4408();
  v122 = sub_26B4D4414();
  v123 = sub_26B4D4414();
  *&v231 = v121;
  *(&v231 + 1) = v122;
  *&v212 = v116;
  *(&v212 + 1) = v117;
  *(&v193 + 1) = MEMORY[0x277D84FA0];
  *&v193 = v240;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x482E6D6574737953, 0xED00007055676E61, &unk_287BFF028, &unk_287BFE760, v120, 0, 0, v255, v247._rawValue + 2056, v111 & 1, v106 & 1, v193, v212, v231, v123, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v124 = sub_26B470D98(&unk_287BFE850);
  v125 = sub_26B470D98(&unk_287BFE878);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_26B545120;
  v127 = *v246;
  *(v126 + 32) = *v246;
  *(v126 + 40) = 3;
  *(v126 + 48) = v127;
  *(v126 + 56) = 8;
  v128 = sub_26B470F10(&unk_287BFE8A0);
  v129 = sub_26B470F10(&unk_287BFE8C8);
  v254 = 4;
  v253 = 4;
  v130.value._countAndFlagsBits = 0x6574617669746361;
  v130.value._object = 0xEB00000000534F53;
  Action.init(_:mac:)(v130, 0);
  v249 = v251;
  v250 = v252;
  v131 = sub_26B4D43F4();
  LOBYTE(v122) = sub_26B4CE5C8();
  *&v232 = sub_26B4D4408();
  *(&v232 + 1) = v128;
  *&v213 = v125;
  *(&v213 + 1) = v126;
  *&v194 = v124;
  *(&v194 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEA0000000000534FLL, &unk_287BFF058, &unk_287BFE818, v131, 0, 0, v255, v247._rawValue + 2240, v122 & 1, 1, v194, v213, v232, v129, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v132 = sub_26B470D98(&unk_287BFE968);
  v133 = sub_26B470D98(&unk_287BFE990);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B545120;
  v135 = *v246;
  *(v134 + 32) = *v246;
  *(v134 + 40) = 3;
  *(v134 + 48) = v135;
  *(v134 + 56) = 8;
  v136 = sub_26B470F10(&unk_287BFE9B8);
  v137 = sub_26B470F10(&unk_287BFE9E0);
  v254 = 4;
  v253 = 4;
  v138.value._object = 0x800000026B55DB60;
  v138.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v138, 0);
  v249 = v251;
  v250 = v252;
  v139 = sub_26B4D43F4();
  LOBYTE(v122) = sub_26B4CE5C8();
  LOBYTE(v10) = sub_26B4D4400();
  *&v233 = sub_26B4D4408();
  *(&v233 + 1) = v136;
  *&v214 = v133;
  *(&v214 + 1) = v134;
  *&v195 = v132;
  *(&v195 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DB40, &unk_287BFF088, &unk_287BFE930, v139, 0, 0, v255, v247._rawValue + 2424, v122 & 1, v10 & 1, v195, v214, v233, v137, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v140 = sub_26B470D98(&unk_287BFEA70);
  v141 = sub_26B470D98(&unk_287BFEA98);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_26B545100;
  *(v142 + 32) = *v246;
  *(v142 + 40) = 3;
  v254 = 4;
  v253 = 4;
  v143.value._countAndFlagsBits = 0x656B616873;
  v143.value._object = 0xE500000000000000;
  Action.init(_:mac:)(v143, 0);
  v249 = v251;
  v250 = v252;
  v144 = sub_26B4D43F4();
  LOBYTE(v137) = sub_26B4CE5C8();
  LOBYTE(v139) = sub_26B4D4400();
  v145 = sub_26B4D4408();
  v146 = sub_26B4D4414();
  v147 = sub_26B4D4414();
  *&v234 = v145;
  *(&v234 + 1) = v146;
  *&v215 = v141;
  *(&v215 + 1) = v142;
  *&v196 = v140;
  *(&v196 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEC000000656B6168, &unk_287BFF0B8, &unk_287BFEA38, v144, 0, 0, v255, v247._rawValue + 2608, v137 & 1, v139 & 1, v196, v215, v234, v147, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v243 = sub_26B470D98(&unk_287BFEB48);
  v148 = sub_26B470D98(&unk_287BFEB70);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_26B545100;
  *(v149 + 32) = *v246;
  *(v149 + 40) = 3;
  v254 = 4;
  v253 = 4;
  v150.value._countAndFlagsBits = 0x6C43656C70697274;
  v150.value._object = 0xEB000000006B6369;
  Action.init(_:mac:)(v150, 0);
  v249 = v251;
  v250 = v252;
  v151 = sub_26B4D43F4();
  LOBYTE(v137) = sub_26B4CE5C8();
  LOBYTE(v139) = sub_26B4D4400();
  v152 = sub_26B4D4408();
  v153 = sub_26B4D4414();
  v154 = sub_26B4D4414();
  *&v235 = v152;
  *(&v235 + 1) = v153;
  *&v216 = v148;
  *(&v216 + 1) = v149;
  *(&v197 + 1) = MEMORY[0x277D84FA0];
  *&v197 = v243;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DB80, &unk_287BFF0E8, &unk_287BFEB10, v151, 0, 0, v255, v247._rawValue + 2792, v137 & 1, v139 & 1, v197, v216, v235, v154, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v155 = sub_26B470D98(&unk_287BFEC00);
  v156 = sub_26B470D98(&unk_287BFEC28);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_26B545120;
  v158 = *v246;
  *(v157 + 32) = *v246;
  *(v157 + 40) = 3;
  *(v157 + 48) = v158;
  *(v157 + 56) = 8;
  v159 = sub_26B470F10(&unk_287BFEC50);
  v254 = 4;
  v253 = 4;
  v160.value._countAndFlagsBits = 0x65726353656B6174;
  v160.value._object = 0xEE00746F68736E65;
  Action.init(_:mac:)(v160, 0);
  v249 = v251;
  v250 = v252;
  v161 = sub_26B4D43F4();
  LOBYTE(v139) = sub_26B4CE5C8();
  LOBYTE(v152) = sub_26B4D4400();
  *&v236 = sub_26B4D4408();
  *(&v236 + 1) = sub_26B4D4414();
  *&v217 = v156;
  *(&v217 + 1) = v157;
  *&v198 = v155;
  *(&v198 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55DBA0, &unk_287BFF118, &unk_287BFEBC8, v161, 0, 0, v255, v247._rawValue + 2976, v139 & 1, v152 & 1, v198, v217, v236, v159, &v254, &v253, 0, 0, &v249);
  v255[0] = 1;
  v244 = sub_26B470D98(&unk_287BFECF0);
  v162 = sub_26B470D98(&unk_287BFED18);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26B5450D0;
  v164 = *v246;
  *(v163 + 32) = *v246;
  *(v163 + 40) = 3;
  *(v163 + 48) = v164;
  *(v163 + 56) = 8;
  *(v163 + 64) = 0x403A000000000000;
  *(v163 + 72) = 10;
  v254 = 4;
  v253 = 4;
  v165.value._countAndFlagsBits = 0xD000000000000013;
  v165.value._object = 0x800000026B55DBE0;
  Action.init(_:mac:)(v165, 0);
  v249 = v251;
  v250 = v252;
  v166 = sub_26B4D43F4();
  LOBYTE(v159) = sub_26B4CE5C8();
  LOBYTE(v139) = sub_26B4D4400();
  v167 = sub_26B4D4408();
  v168 = sub_26B4D4414();
  v169 = sub_26B4D4414();
  *&v237 = v167;
  *(&v237 + 1) = v168;
  *&v218 = v162;
  *(&v218 + 1) = v163;
  *(&v199 + 1) = MEMORY[0x277D84FA0];
  *&v199 = v244;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55DBC0, &unk_287BFF148, &unk_287BFECB8, v166, 0, 0, v255, v247._rawValue + 3160, v159 & 1, v139 & 1, v199, v218, v237, v169, &v254, &v253, 0, 0, &v249);
  v255[0] = 0;
  v170 = sub_26B470D98(&unk_287BFEDA8);
  v171 = sub_26B470D98(&unk_287BFEDD0);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_26B5450D0;
  v173 = *v246;
  *(v172 + 32) = *v246;
  *(v172 + 40) = 3;
  *(v172 + 48) = v173;
  *(v172 + 56) = 8;
  *(v172 + 64) = 0x403A000000000000;
  *(v172 + 72) = 10;
  v254 = 4;
  v253 = 4;
  v174.value._countAndFlagsBits = 0x746F6F626572;
  v174.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v174, 0);
  v249 = v251;
  v250 = v252;
  v175 = sub_26B4D43F4();
  LOBYTE(v166) = sub_26B4CE5C8();
  LOBYTE(v139) = sub_26B4D4400();
  v176 = sub_26B4D4408();
  v177 = sub_26B4D4414();
  v178 = sub_26B4D4414();
  *&v238 = v176;
  *(&v238 + 1) = v177;
  *&v219 = v171;
  *(&v219 + 1) = v172;
  *&v200 = v170;
  *(&v200 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x522E6D6574737953, 0xED0000746F6F6265, &unk_287BFF178, &unk_287BFED70, v175, 0, 0, v255, v247._rawValue + 3344, v166 & 1, v139 & 1, v200, v219, v238, v178, &v254, &v253, 0, 0, &v249);
  LOBYTE(v172) = sub_26B4CE5C8();
  v179 = sub_26B4D4400() & 1;
  v180._countAndFlagsBits = 0x6572617764726148;
  v180._object = 0xE800000000000000;
  v181._countAndFlagsBits = v242;
  v181._object = v241;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406D98, v180, v181, v172 & 1, v179, v247);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B490014()
{
  if (qword_2804003F8 != -1)
  {
    swift_once();
  }

  return &stru_280406D98;
}

void sub_26B490064()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v1287 = sub_26B542AB4();
  v1286 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v1421 = swift_allocObject();
  *(v1421 + 16) = xmmword_26B545290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC98, &qword_26B545230);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B545100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545120;
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = 0x800000026B55DC10;
  *(v10 + 48) = 0xD000000000000016;
  *(v10 + 56) = 0x800000026B55DC30;
  *(v9 + 32) = v10;
  *(v9 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B545100;
  *(v11 + 32) = 0xD000000000000017;
  *(v11 + 40) = 0x800000026B55DC50;
  *(v11 + 48) = 0;
  v1428[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545140;
  *(v12 + 32) = 84017408;
  *(v12 + 36) = 8;
  v1403 = sub_26B470D98(v12);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1394 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1394 = MEMORY[0x277D84FA0];
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B545100;
  *(v13 + 32) = 3;
  v14 = sub_26B470D98(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B5450C0;
  v16 = sub_26B4C6A78();
  *(v15 + 32) = *v16;
  *(v15 + 40) = 1;
  *(v15 + 48) = *v16;
  *(v15 + 56) = 3;
  v1418 = v16;
  *(v15 + 64) = *v16;
  *(v15 + 72) = 8;
  *(v15 + 80) = 0x403A000000000000;
  *(v15 + 88) = 10;
  v1427 = 4;
  v1426 = 4;
  v17.value._countAndFlagsBits = 0xD000000000000018;
  v17.value._object = 0x800000026B55DCA0;
  Action.init(_:mac:)(v17, 0);
  v1422 = v1424;
  v1423 = v1425;
  v18 = sub_26B4D43F4();
  v19 = sub_26B4CE5C8();
  v20 = sub_26B4D4408();
  v21 = sub_26B4D4414();
  v22 = sub_26B4D4414();
  *&v1186 = v20;
  *(&v1186 + 1) = v21;
  *&v1109 = v14;
  *(&v1109 + 1) = v15;
  *(&v1032 + 1) = v1394;
  *&v1032 = v1403;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55DC70, v9, v11, v18, 0, 0, v1428, v1421 + 32, v19 & 1, 1, v1032, v1109, v1186, v22, &v1427, &v1426, 0, 0, &v1422);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B545100;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26B5450C0;
  *(v24 + 32) = 0xD00000000000001DLL;
  *(v24 + 40) = 0x800000026B55DCC0;
  *(v24 + 48) = 0xD00000000000001DLL;
  *(v24 + 56) = 0x800000026B55DCE0;
  *(v24 + 64) = 0xD000000000000017;
  *(v24 + 72) = 0x800000026B55DD00;
  *(v24 + 80) = 0xD000000000000017;
  *(v24 + 88) = 0x800000026B55DD20;
  *(v23 + 32) = v24;
  *(v23 + 40) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26B545100;
  *(v25 + 32) = 0xD00000000000001ELL;
  *(v25 + 40) = 0x800000026B55DD40;
  *(v25 + 48) = 0;
  v1428[0] = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26B545120;
  *(v26 + 32) = 513;
  v1404 = sub_26B470D98(v26);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1371 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1371 = MEMORY[0x277D84FA0];
  }

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26B5450C0;
  *(v27 + 32) = 134546176;
  v28 = sub_26B470D98(v27);

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26B545100;
  *(v29 + 32) = *v1418;
  *(v29 + 40) = 3;
  v1427 = 4;
  v1426 = 4;
  v30.value._countAndFlagsBits = 0xD000000000000014;
  v30.value._object = 0x800000026B55DD90;
  Action.init(_:mac:)(v30, 0);
  v1422 = v1424;
  v1423 = v1425;
  v31 = sub_26B4D43F4();
  v32 = sub_26B4CE5C8();
  v33 = sub_26B4D4400();
  v34 = sub_26B4D4408();
  v35 = sub_26B4D4414();
  v36 = sub_26B4D4414();
  *&v1187 = v34;
  *(&v1187 + 1) = v35;
  *&v1110 = v28;
  *(&v1110 + 1) = v29;
  *(&v1033 + 1) = v1371;
  *&v1033 = v1404;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55DD60, v23, v25, v31, 0, 0, v1428, v1421 + 216, v32 & 1, v33 & 1, v1033, v1110, v1187, v36, &v1427, &v1426, 0, 0, &v1422);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26B545100;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450C0;
  *(v38 + 32) = 0xD00000000000001ELL;
  *(v38 + 40) = 0x800000026B55DDB0;
  *(v38 + 48) = 0xD00000000000001ELL;
  *(v38 + 56) = 0x800000026B55DDD0;
  *(v38 + 64) = 0xD000000000000018;
  *(v38 + 72) = 0x800000026B55DDF0;
  *(v38 + 80) = 0xD000000000000018;
  *(v38 + 88) = 0x800000026B55DE10;
  *(v37 + 32) = v38;
  *(v37 + 40) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26B545100;
  *(v39 + 32) = 0xD00000000000001FLL;
  *(v39 + 40) = 0x800000026B55DE30;
  *(v39 + 48) = 0;
  v1428[0] = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B545120;
  *(v40 + 32) = 513;
  v1405 = sub_26B470D98(v40);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1372 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1372 = MEMORY[0x277D84FA0];
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26B5450C0;
  *(v41 + 32) = 134546176;
  v42 = sub_26B470D98(v41);

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26B545100;
  *(v43 + 32) = *v1418;
  *(v43 + 40) = 3;
  v1427 = 4;
  v1426 = 4;
  v44.value._countAndFlagsBits = 0xD000000000000015;
  v44.value._object = 0x800000026B55DE80;
  Action.init(_:mac:)(v44, 0);
  v1422 = v1424;
  v1423 = v1425;
  v45 = sub_26B4D43F4();
  v46 = sub_26B4CE5C8();
  v47 = sub_26B4D4400();
  v48 = sub_26B4D4408();
  v49 = sub_26B4D4414();
  v50 = sub_26B4D4414();
  *&v1188 = v48;
  *(&v1188 + 1) = v49;
  *&v1111 = v42;
  *(&v1111 + 1) = v43;
  *(&v1034 + 1) = v1372;
  *&v1034 = v1405;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55DE50, v37, v39, v45, 0, 0, v1428, v1421 + 400, v46 & 1, v47 & 1, v1034, v1111, v1188, v50, &v1427, &v1426, 0, 0, &v1422);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_26B545100;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26B5450C0;
  *(v52 + 32) = 0xD000000000000022;
  *(v52 + 40) = 0x800000026B55DEA0;
  *(v52 + 48) = 0xD000000000000022;
  *(v52 + 56) = 0x800000026B55DED0;
  *(v52 + 64) = 0xD00000000000001CLL;
  *(v52 + 72) = 0x800000026B55DF00;
  *(v52 + 80) = 0xD00000000000001CLL;
  *(v52 + 88) = 0x800000026B55DF20;
  *(v51 + 32) = v52;
  *(v51 + 40) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26B545100;
  *(v53 + 32) = 0xD000000000000023;
  *(v53 + 40) = 0x800000026B55DF40;
  *(v53 + 48) = 0;
  v1428[0] = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B545120;
  *(v54 + 32) = 513;
  v1406 = sub_26B470D98(v54);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1373 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1373 = MEMORY[0x277D84FA0];
  }

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B5450C0;
  *(v55 + 32) = 134546176;
  v56 = sub_26B470D98(v55);

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B545100;
  *(v57 + 32) = *v1418;
  *(v57 + 40) = 3;
  v1427 = 4;
  v1426 = 4;
  v58.value._object = 0x800000026B55DFA0;
  v58.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v58, 0);
  v1422 = v1424;
  v1423 = v1425;
  v59 = sub_26B4D43F4();
  v60 = sub_26B4CE5C8();
  v61 = sub_26B4D4400();
  v62 = sub_26B4D4408();
  v63 = sub_26B4D4414();
  v64 = sub_26B4D4414();
  *&v1189 = v62;
  *(&v1189 + 1) = v63;
  *&v1112 = v56;
  *(&v1112 + 1) = v57;
  *(&v1035 + 1) = v1373;
  *&v1035 = v1406;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55DF70, v51, v53, v59, 0, 0, v1428, v1421 + 584, v60 & 1, v61 & 1, v1035, v1112, v1189, v64, &v1427, &v1426, 0, 0, &v1422);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26B545100;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_26B5450C0;
  *(v66 + 32) = 0xD000000000000023;
  *(v66 + 40) = 0x800000026B55DFC0;
  *(v66 + 48) = 0xD000000000000023;
  *(v66 + 56) = 0x800000026B55DFF0;
  *(v66 + 64) = 0xD00000000000001DLL;
  *(v66 + 72) = 0x800000026B55E020;
  *(v66 + 80) = 0xD00000000000001DLL;
  *(v66 + 88) = 0x800000026B55E040;
  *(v65 + 32) = v66;
  *(v65 + 40) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545100;
  *(v67 + 32) = 0xD000000000000024;
  *(v67 + 40) = 0x800000026B55E060;
  *(v67 + 48) = 0;
  v1428[0] = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26B545120;
  *(v68 + 32) = 513;
  v1407 = sub_26B470D98(v68);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1374 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1374 = MEMORY[0x277D84FA0];
  }

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B5450C0;
  *(v69 + 32) = 134546176;
  v70 = sub_26B470D98(v69);

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26B545100;
  *(v71 + 32) = *v1418;
  *(v71 + 40) = 3;
  v1427 = 4;
  v1426 = 4;
  v72.value._countAndFlagsBits = 0xD000000000000019;
  v72.value._object = 0x800000026B55E0C0;
  Action.init(_:mac:)(v72, 0);
  v1422 = v1424;
  v1423 = v1425;
  v73 = sub_26B4D43F4();
  v74 = sub_26B4CE5C8();
  v75 = sub_26B4D4400();
  v76 = sub_26B4D4408();
  v77 = sub_26B4D4414();
  v78 = sub_26B4D4414();
  *&v1190 = v76;
  *(&v1190 + 1) = v77;
  *&v1113 = v70;
  *(&v1113 + 1) = v71;
  *(&v1036 + 1) = v1374;
  *&v1036 = v1407;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E090, v65, v67, v73, 0, 0, v1428, v1421 + 768, v74 & 1, v75 & 1, v1036, v1113, v1190, v78, &v1427, &v1426, 0, 0, &v1422);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_26B545100;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_26B545120;
  *(v80 + 32) = 0xD000000000000016;
  *(v80 + 40) = 0x800000026B55E0E0;
  *(v80 + 48) = 0xD000000000000016;
  *(v80 + 56) = 0x800000026B55E100;
  *(v79 + 32) = v80;
  *(v79 + 40) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_26B545100;
  *(v81 + 32) = 0xD000000000000017;
  *(v81 + 40) = 0x800000026B55E120;
  *(v81 + 48) = 0;
  v1428[0] = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_26B5450C0;
  *(v82 + 32) = 134545921;
  v1408 = sub_26B470D98(v82);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1343 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1343 = MEMORY[0x277D84FA0];
  }

  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26B545120;
  *(v83 + 32) = 768;
  v84 = sub_26B470D98(v83);

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26B5450D0;
  *(v85 + 32) = *v1418;
  *(v85 + 40) = 3;
  *(v85 + 48) = *v1418;
  *(v85 + 56) = 8;
  *(v85 + 64) = 0x403A000000000000;
  *(v85 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v86.value._object = 0x800000026B55E170;
  v86.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v86, 0);
  v1422 = v1424;
  v1423 = v1425;
  v87 = sub_26B4D43F4();
  v88 = sub_26B4CE5C8();
  v89 = sub_26B4D4400();
  v90 = sub_26B4D4408();
  v91 = sub_26B4D4414();
  v92 = sub_26B4D4414();
  *&v1191 = v90;
  *(&v1191 + 1) = v91;
  *&v1114 = v84;
  *(&v1114 + 1) = v85;
  *(&v1037 + 1) = v1343;
  *&v1037 = v1408;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55E140, v79, v81, v87, 0, 0, v1428, v1421 + 952, v88 & 1, v89 & 1, v1037, v1114, v1191, v92, &v1427, &v1426, 0, 0, &v1422);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_26B545100;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_26B545120;
  *(v94 + 32) = 0xD000000000000017;
  *(v94 + 40) = 0x800000026B55E190;
  *(v94 + 48) = 0xD000000000000017;
  *(v94 + 56) = 0x800000026B55E1B0;
  *(v93 + 32) = v94;
  *(v93 + 40) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B545100;
  *(v95 + 32) = 0xD000000000000018;
  *(v95 + 40) = 0x800000026B55E1D0;
  *(v95 + 48) = 0;
  v1428[0] = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_26B5450C0;
  *(v96 + 32) = 134545921;
  v1409 = sub_26B470D98(v96);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1344 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1344 = MEMORY[0x277D84FA0];
  }

  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B545120;
  *(v97 + 32) = 768;
  v98 = sub_26B470D98(v97);

  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_26B5450D0;
  *(v99 + 32) = *v1418;
  *(v99 + 40) = 3;
  *(v99 + 48) = *v1418;
  *(v99 + 56) = 8;
  *(v99 + 64) = 0x403A000000000000;
  *(v99 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v100.value._object = 0x800000026B55E220;
  v100.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v100, 0);
  v1422 = v1424;
  v1423 = v1425;
  v101 = sub_26B4D43F4();
  v102 = sub_26B4CE5C8();
  v103 = sub_26B4D4408();
  v104 = sub_26B4D4414();
  v105 = sub_26B4D4414();
  *&v1192 = v103;
  *(&v1192 + 1) = v104;
  *&v1115 = v98;
  *(&v1115 + 1) = v99;
  *(&v1038 + 1) = v1344;
  *&v1038 = v1409;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55E1F0, v93, v95, v101, 0, 0, v1428, v1421 + 1136, v102 & 1, 1, v1038, v1115, v1192, v105, &v1427, &v1426, 0, 0, &v1422);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_26B545100;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B545120;
  *(v107 + 32) = 0xD00000000000001ELL;
  *(v107 + 40) = 0x800000026B55E240;
  *(v107 + 48) = 0xD00000000000001DLL;
  *(v107 + 56) = 0x800000026B55E260;
  *(v106 + 32) = v107;
  *(v106 + 40) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26B545100;
  *(v108 + 32) = 0xD00000000000001ELL;
  *(v108 + 40) = 0x800000026B55E280;
  *(v108 + 48) = 0;
  v1428[0] = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B5450C0;
  *(v109 + 32) = 134545921;
  v1410 = sub_26B470D98(v109);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1345 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1345 = MEMORY[0x277D84FA0];
  }

  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_26B545120;
  *(v110 + 32) = 768;
  v111 = sub_26B470D98(v110);

  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_26B5450D0;
  *(v112 + 32) = *v1418;
  *(v112 + 40) = 3;
  *(v112 + 48) = *v1418;
  *(v112 + 56) = 8;
  *(v112 + 64) = 0x403A000000000000;
  *(v112 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v113.value._object = 0x800000026B55E2D0;
  v113.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v113, 0);
  v1422 = v1424;
  v1423 = v1425;
  v114 = sub_26B4D43F4();
  v115 = sub_26B4CE5C8();
  v116 = sub_26B4D4400();
  v117 = sub_26B4D4408();
  v118 = sub_26B4D4414();
  v119 = sub_26B4D4414();
  *&v1193 = v117;
  *(&v1193 + 1) = v118;
  *&v1116 = v111;
  *(&v1116 + 1) = v112;
  *(&v1039 + 1) = v1345;
  *&v1039 = v1410;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E2A0, v106, v108, v114, 0, 0, v1428, v1421 + 1320, v115 & 1, v116 & 1, v1039, v1116, v1193, v119, &v1427, &v1426, 0, 0, &v1422);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_26B545100;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_26B545120;
  *(v121 + 32) = 0xD00000000000001FLL;
  *(v121 + 40) = 0x800000026B55E2F0;
  *(v121 + 48) = 0xD00000000000001ELL;
  *(v121 + 56) = 0x800000026B55E310;
  *(v120 + 32) = v121;
  *(v120 + 40) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B545100;
  *(v122 + 32) = 0xD00000000000001FLL;
  *(v122 + 40) = 0x800000026B55E330;
  *(v122 + 48) = 0;
  v1428[0] = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26B5450C0;
  *(v123 + 32) = 134545921;
  v1411 = sub_26B470D98(v123);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1346 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1346 = MEMORY[0x277D84FA0];
  }

  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_26B545120;
  *(v124 + 32) = 768;
  v125 = sub_26B470D98(v124);

  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_26B5450D0;
  *(v126 + 32) = *v1418;
  *(v126 + 40) = 3;
  *(v126 + 48) = *v1418;
  *(v126 + 56) = 8;
  *(v126 + 64) = 0x403A000000000000;
  *(v126 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v127.value._countAndFlagsBits = 0xD00000000000001ALL;
  v127.value._object = 0x800000026B55E380;
  Action.init(_:mac:)(v127, 0);
  v1422 = v1424;
  v1423 = v1425;
  v128 = sub_26B4D43F4();
  v129 = sub_26B4CE5C8();
  v130 = sub_26B4D4400();
  v131 = sub_26B4D4408();
  v132 = sub_26B4D4414();
  v133 = sub_26B4D4414();
  *&v1194 = v131;
  *(&v1194 + 1) = v132;
  *&v1117 = v125;
  *(&v1117 + 1) = v126;
  *(&v1040 + 1) = v1346;
  *&v1040 = v1411;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000028, 0x800000026B55E350, v120, v122, v128, 0, 0, v1428, v1421 + 1504, v129 & 1, v130 & 1, v1040, v1117, v1194, v133, &v1427, &v1426, 0, 0, &v1422);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B545100;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_26B545120;
  *(v135 + 32) = 0xD00000000000001CLL;
  *(v135 + 40) = 0x800000026B55E3A0;
  *(v135 + 48) = 0xD00000000000001BLL;
  *(v135 + 56) = 0x800000026B55E3C0;
  *(v134 + 32) = v135;
  *(v134 + 40) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B545100;
  *(v136 + 32) = 0xD00000000000001CLL;
  *(v136 + 40) = 0x800000026B55E3E0;
  *(v136 + 48) = 0;
  v1428[0] = 0;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B5450C0;
  *(v137 + 32) = 134545921;
  v1412 = sub_26B470D98(v137);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1347 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1347 = MEMORY[0x277D84FA0];
  }

  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_26B545120;
  *(v138 + 32) = 768;
  v139 = sub_26B470D98(v138);

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_26B5450D0;
  *(v140 + 32) = *v1418;
  *(v140 + 40) = 3;
  *(v140 + 48) = *v1418;
  *(v140 + 56) = 8;
  *(v140 + 64) = 0x403A000000000000;
  *(v140 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v141.value._object = 0x800000026B55E430;
  v141.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v141, 0);
  v1422 = v1424;
  v1423 = v1425;
  v142 = sub_26B4D43F4();
  v143 = sub_26B4CE5C8();
  v144 = sub_26B4D4400();
  v145 = sub_26B4D4408();
  v146 = sub_26B4D4414();
  v147 = sub_26B4D4414();
  *&v1195 = v145;
  *(&v1195 + 1) = v146;
  *&v1118 = v139;
  *(&v1118 + 1) = v140;
  *(&v1041 + 1) = v1347;
  *&v1041 = v1412;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B55E400, v134, v136, v142, 0, 0, v1428, v1421 + 1688, v143 & 1, v144 & 1, v1041, v1118, v1195, v147, &v1427, &v1426, 0, 0, &v1422);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_26B545100;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_26B545120;
  *(v149 + 32) = 0xD00000000000001DLL;
  *(v149 + 40) = 0x800000026B55E450;
  *(v149 + 48) = 0xD00000000000001CLL;
  *(v149 + 56) = 0x800000026B55E470;
  *(v148 + 32) = v149;
  *(v148 + 40) = 0;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B545100;
  *(v150 + 32) = 0xD00000000000001DLL;
  *(v150 + 40) = 0x800000026B55E490;
  *(v150 + 48) = 0;
  v1428[0] = 0;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_26B5450C0;
  *(v151 + 32) = 134545921;
  v1413 = sub_26B470D98(v151);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1348 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1348 = MEMORY[0x277D84FA0];
  }

  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26B545120;
  *(v152 + 32) = 768;
  v153 = sub_26B470D98(v152);

  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_26B5450D0;
  *(v154 + 32) = *v1418;
  *(v154 + 40) = 3;
  *(v154 + 48) = *v1418;
  *(v154 + 56) = 8;
  *(v154 + 64) = 0x403A000000000000;
  *(v154 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v155.value._object = 0x800000026B55E4E0;
  v155.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v155, 0);
  v1422 = v1424;
  v1423 = v1425;
  v156 = sub_26B4D43F4();
  v157 = sub_26B4CE5C8();
  v158 = sub_26B4D4400();
  v159 = sub_26B4D4408();
  v160 = sub_26B4D4414();
  v161 = sub_26B4D4414();
  *&v1196 = v159;
  *(&v1196 + 1) = v160;
  *&v1119 = v153;
  *(&v1119 + 1) = v154;
  *(&v1042 + 1) = v1348;
  *&v1042 = v1413;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55E4B0, v148, v150, v156, 0, 0, v1428, v1421 + 1872, v157 & 1, v158 & 1, v1042, v1119, v1196, v161, &v1427, &v1426, 0, 0, &v1422);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_26B545100;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26B545120;
  *(v163 + 32) = 0xD000000000000015;
  *(v163 + 40) = 0x800000026B55E500;
  *(v163 + 48) = 0xD000000000000015;
  *(v163 + 56) = 0x800000026B55E520;
  *(v162 + 32) = v163;
  *(v162 + 40) = 0;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_26B545100;
  *(v164 + 32) = 0xD000000000000016;
  *(v164 + 40) = 0x800000026B55E540;
  *(v164 + 48) = 0;
  v1428[0] = 3;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_26B5450C0;
  *(v165 + 32) = 134545921;
  v1414 = sub_26B470D98(v165);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1342 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1342 = MEMORY[0x277D84FA0];
  }

  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B545120;
  *(v166 + 32) = 768;
  v167 = sub_26B470D98(v166);

  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_26B5450D0;
  *(v168 + 32) = *v1418;
  *(v168 + 40) = 3;
  *(v168 + 48) = *v1418;
  *(v168 + 56) = 8;
  *(v168 + 64) = 0x403A000000000000;
  *(v168 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v169.value._countAndFlagsBits = 0xD000000000000012;
  v169.value._object = 0x800000026B55E590;
  Action.init(_:mac:)(v169, 0);
  v1422 = v1424;
  v1423 = v1425;
  v170 = sub_26B4D43F4();
  v171 = sub_26B4CE5C8();
  v172 = sub_26B4D4400();
  v173 = sub_26B4D4408();
  v174 = sub_26B4D4414();
  v175 = sub_26B4D4414();
  *&v1197 = v173;
  *(&v1197 + 1) = v174;
  *&v1120 = v167;
  *(&v1120 + 1) = v168;
  *(&v1043 + 1) = v1342;
  *&v1043 = v1414;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E560, v162, v164, v170, 0, 0, v1428, v1421 + 2056, v171 & 1, v172 & 1, v1043, v1120, v1197, v175, &v1427, &v1426, 0, 0, &v1422);
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_26B545100;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_26B545120;
  *(v177 + 32) = 0xD000000000000016;
  *(v177 + 40) = 0x800000026B55E5B0;
  *(v177 + 48) = 0xD000000000000016;
  *(v177 + 56) = 0x800000026B55E5D0;
  *(v176 + 32) = v177;
  *(v176 + 40) = 0;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_26B545100;
  *(v178 + 32) = 0xD000000000000017;
  *(v178 + 40) = 0x800000026B55E5F0;
  *(v178 + 48) = 0;
  v1428[0] = 0;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_26B5450C0;
  *(v179 + 32) = 134545921;
  v1415 = sub_26B470D98(v179);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1341 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1341 = MEMORY[0x277D84FA0];
  }

  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_26B545120;
  *(v180 + 32) = 768;
  v181 = sub_26B470D98(v180);

  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_26B5450D0;
  *(v182 + 32) = *v1418;
  *(v182 + 40) = 3;
  *(v182 + 48) = *v1418;
  *(v182 + 56) = 8;
  *(v182 + 64) = 0x403A000000000000;
  *(v182 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v183.value._countAndFlagsBits = 0xD000000000000013;
  v183.value._object = 0x800000026B55E640;
  Action.init(_:mac:)(v183, 0);
  v1422 = v1424;
  v1423 = v1425;
  v184 = sub_26B4D43F4();
  v185 = sub_26B4CE5C8();
  v186 = sub_26B4D4400();
  v187 = sub_26B4D4408();
  v188 = sub_26B4D4414();
  v189 = sub_26B4D4414();
  *&v1198 = v187;
  *(&v1198 + 1) = v188;
  *&v1121 = v181;
  *(&v1121 + 1) = v182;
  *(&v1044 + 1) = v1341;
  *&v1044 = v1415;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55E610, v176, v178, v184, 0, 0, v1428, v1421 + 2240, v185 & 1, v186 & 1, v1044, v1121, v1198, v189, &v1427, &v1426, 0, 0, &v1422);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26B545100;
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_26B545120;
  *(v191 + 32) = 0xD000000000000014;
  *(v191 + 40) = 0x800000026B55E660;
  *(v191 + 48) = 0xD000000000000014;
  *(v191 + 56) = 0x800000026B55E680;
  *(v190 + 32) = v191;
  *(v190 + 40) = 0;
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_26B545100;
  *(v192 + 32) = 0xD000000000000015;
  *(v192 + 40) = 0x800000026B55E6A0;
  *(v192 + 48) = 0;
  v1428[0] = 0;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_26B545120;
  *(v193 + 32) = 513;
  v1297 = sub_26B470D98(v193);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1288 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1288 = MEMORY[0x277D84FA0];
  }

  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_26B5450C0;
  *(v194 + 32) = 134546176;
  v195 = sub_26B470D98(v194);

  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_26B545100;
  *(v196 + 32) = 0x403A000000000000;
  *(v196 + 40) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB0, &qword_26B545238);
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_26B545100;
  *(v197 + 32) = 33;
  v198 = sub_26B470F10(v197);

  v1427 = 4;
  v1426 = 4;
  v199.value._countAndFlagsBits = 0xD000000000000011;
  v199.value._object = 0x800000026B55E6E0;
  Action.init(_:mac:)(v199, 0);
  v1422 = v1424;
  v1423 = v1425;
  v200 = sub_26B4D43F4();
  v201 = sub_26B4CE5C8();
  v202 = sub_26B4D4400();
  *&v1199 = sub_26B4D4408();
  *(&v1199 + 1) = sub_26B4D4414();
  *&v1122 = v195;
  *(&v1122 + 1) = v196;
  *(&v1045 + 1) = v1288;
  *&v1045 = v1297;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55E6C0, v190, v192, v200, 0, 0, v1428, v1421 + 2424, v201 & 1, v202 & 1, v1045, v1122, v1199, v198, &v1427, &v1426, 0, 0, &v1422);
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_26B545100;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_26B545120;
  *(v204 + 32) = 0xD000000000000015;
  *(v204 + 40) = 0x800000026B55E700;
  *(v204 + 48) = 0xD000000000000015;
  *(v204 + 56) = 0x800000026B55E720;
  *(v203 + 32) = v204;
  *(v203 + 40) = 0;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_26B545100;
  *(v205 + 32) = 0xD000000000000016;
  *(v205 + 40) = 0x800000026B55E740;
  *(v205 + 48) = 0;
  v1428[0] = 0;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_26B545120;
  *(v206 + 32) = 513;
  v1298 = sub_26B470D98(v206);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1289 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1289 = MEMORY[0x277D84FA0];
  }

  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_26B5450C0;
  *(v207 + 32) = 134546176;
  v208 = sub_26B470D98(v207);

  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_26B545100;
  *(v209 + 32) = 0x403A000000000000;
  *(v209 + 40) = 3;
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_26B545100;
  *(v210 + 32) = 33;
  v211 = sub_26B470F10(v210);

  v1427 = 4;
  v1426 = 4;
  v212.value._object = 0x800000026B55E790;
  v212.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v212, 0);
  v1422 = v1424;
  v1423 = v1425;
  v213 = sub_26B4D43F4();
  v214 = sub_26B4CE5C8();
  *&v1200 = sub_26B4D4408();
  *(&v1200 + 1) = sub_26B4D4414();
  *&v1123 = v208;
  *(&v1123 + 1) = v209;
  *(&v1046 + 1) = v1289;
  *&v1046 = v1298;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E760, v203, v205, v213, 0, 0, v1428, v1421 + 2608, v214 & 1, 1, v1046, v1123, v1200, v211, &v1427, &v1426, 0, 0, &v1422);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B545100;
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_26B545120;
  *(v216 + 32) = 0xD00000000000001CLL;
  *(v216 + 40) = 0x800000026B55E7B0;
  *(v216 + 48) = 0xD00000000000001CLL;
  *(v216 + 56) = 0x800000026B55E7D0;
  *(v215 + 32) = v216;
  *(v215 + 40) = 0;
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B545100;
  *(v217 + 32) = 0xD00000000000001DLL;
  *(v217 + 40) = 0x800000026B55E7F0;
  *(v217 + 48) = 0;
  v1428[0] = 0;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_26B5450C0;
  *(v218 + 32) = 134545921;
  v1299 = sub_26B470D98(v218);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1290 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1290 = MEMORY[0x277D84FA0];
  }

  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_26B545120;
  *(v219 + 32) = 768;
  v220 = sub_26B470D98(v219);

  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_26B5450D0;
  *(v221 + 32) = *v1418;
  *(v221 + 40) = 3;
  *(v221 + 48) = *v1418;
  *(v221 + 56) = 8;
  *(v221 + 64) = 0x403A000000000000;
  *(v221 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v222.value._object = 0x800000026B55E840;
  v222.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v222, 0);
  v1422 = v1424;
  v1423 = v1425;
  v223 = sub_26B4D43F4();
  v224 = sub_26B4CE5C8();
  v225 = sub_26B4D4400();
  v226 = sub_26B4D4408();
  v227 = sub_26B4D4414();
  v228 = sub_26B4D4414();
  *&v1201 = v226;
  *(&v1201 + 1) = v227;
  *&v1124 = v220;
  *(&v1124 + 1) = v221;
  *(&v1047 + 1) = v1290;
  *&v1047 = v1299;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B55E810, v215, v217, v223, 0, 0, v1428, v1421 + 2792, v224 & 1, v225 & 1, v1047, v1124, v1201, v228, &v1427, &v1426, 0, 0, &v1422);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_26B545100;
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_26B545120;
  *(v230 + 32) = 0xD00000000000001DLL;
  *(v230 + 40) = 0x800000026B55E860;
  *(v230 + 48) = 0xD00000000000001DLL;
  *(v230 + 56) = 0x800000026B55E880;
  *(v229 + 32) = v230;
  *(v229 + 40) = 0;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_26B545100;
  *(v231 + 32) = 0xD00000000000001ELL;
  *(v231 + 40) = 0x800000026B55E8A0;
  *(v231 + 48) = 0;
  v1428[0] = 0;
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_26B5450C0;
  *(v232 + 32) = 134545921;
  v1300 = sub_26B470D98(v232);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1291 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1291 = MEMORY[0x277D84FA0];
  }

  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_26B545120;
  *(v233 + 32) = 768;
  v234 = sub_26B470D98(v233);

  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_26B5450D0;
  *(v235 + 32) = *v1418;
  *(v235 + 40) = 3;
  *(v235 + 48) = *v1418;
  *(v235 + 56) = 8;
  *(v235 + 64) = 0x403A000000000000;
  *(v235 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v236.value._object = 0x800000026B55E8F0;
  v236.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v236, 0);
  v1422 = v1424;
  v1423 = v1425;
  v237 = sub_26B4D43F4();
  v238 = sub_26B4CE5C8();
  v239 = sub_26B4D4408();
  v240 = sub_26B4D4414();
  v241 = sub_26B4D4414();
  *&v1202 = v239;
  *(&v1202 + 1) = v240;
  *&v1125 = v234;
  *(&v1125 + 1) = v235;
  *(&v1048 + 1) = v1291;
  *&v1048 = v1300;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B55E8C0, v229, v231, v237, 0, 0, v1428, v1421 + 2976, v238 & 1, 1, v1048, v1125, v1202, v241, &v1427, &v1426, 0, 0, &v1422);
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_26B545100;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_26B545120;
  *(v243 + 32) = 0xD000000000000015;
  *(v243 + 40) = 0x800000026B55E910;
  *(v243 + 48) = 0xD000000000000015;
  *(v243 + 56) = 0x800000026B55E930;
  *(v242 + 32) = v243;
  *(v242 + 40) = 0;
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_26B545100;
  *(v244 + 32) = 0xD000000000000016;
  *(v244 + 40) = 0x800000026B55E950;
  *(v244 + 48) = 0;
  v1428[0] = 0;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_26B545120;
  *(v245 + 32) = 513;
  v1301 = sub_26B470D98(v245);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1292 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1292 = MEMORY[0x277D84FA0];
  }

  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_26B5450C0;
  *(v246 + 32) = 134546176;
  v247 = sub_26B470D98(v246);

  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_26B545100;
  *(v248 + 32) = 0x403A000000000000;
  *(v248 + 40) = 3;
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_26B545100;
  *(v249 + 32) = 34;
  v250 = sub_26B470F10(v249);

  v1427 = 4;
  v1426 = 4;
  v251.value._object = 0x800000026B55E9A0;
  v251.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v251, 0);
  v1422 = v1424;
  v1423 = v1425;
  v252 = sub_26B4D43F4();
  v253 = sub_26B4CE5C8();
  v254 = sub_26B4D4400();
  *&v1203 = sub_26B4D4408();
  *(&v1203 + 1) = sub_26B4D4414();
  *&v1126 = v247;
  *(&v1126 + 1) = v248;
  *(&v1049 + 1) = v1292;
  *&v1049 = v1301;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000020, 0x800000026B55E970, v242, v244, v252, 0, 0, v1428, v1421 + 3160, v253 & 1, v254 & 1, v1049, v1126, v1203, v250, &v1427, &v1426, 0, 0, &v1422);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_26B545100;
  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_26B545120;
  *(v256 + 32) = 0xD000000000000016;
  *(v256 + 40) = 0x800000026B55E9C0;
  *(v256 + 48) = 0xD000000000000016;
  *(v256 + 56) = 0x800000026B55E9E0;
  *(v255 + 32) = v256;
  *(v255 + 40) = 0;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_26B545100;
  *(v257 + 32) = 0xD000000000000017;
  *(v257 + 40) = 0x800000026B55EA00;
  *(v257 + 48) = 0;
  v1428[0] = 0;
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_26B545120;
  *(v258 + 32) = 513;
  v1302 = sub_26B470D98(v258);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1293 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1293 = MEMORY[0x277D84FA0];
  }

  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_26B5450C0;
  *(v259 + 32) = 134546176;
  v260 = sub_26B470D98(v259);

  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_26B545100;
  *(v261 + 32) = 0x403A000000000000;
  *(v261 + 40) = 3;
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_26B545100;
  *(v262 + 32) = 34;
  v263 = sub_26B470F10(v262);

  v1427 = 4;
  v1426 = 4;
  v264.value._object = 0x800000026B55EA50;
  v264.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v264, 0);
  v1422 = v1424;
  v1423 = v1425;
  v265 = sub_26B4D43F4();
  v266 = sub_26B4CE5C8();
  *&v1204 = sub_26B4D4408();
  *(&v1204 + 1) = sub_26B4D4414();
  *&v1127 = v260;
  *(&v1127 + 1) = v261;
  *(&v1050 + 1) = v1293;
  *&v1050 = v1302;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55EA20, v255, v257, v265, 0, 0, v1428, v1421 + 3344, v266 & 1, 1, v1050, v1127, v1204, v263, &v1427, &v1426, 0, 0, &v1422);
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_26B545100;
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_26B545120;
  *(v268 + 32) = 0xD00000000000001ALL;
  *(v268 + 40) = 0x800000026B55EA70;
  *(v268 + 48) = 0xD00000000000001ALL;
  *(v268 + 56) = 0x800000026B55EA90;
  *(v267 + 32) = v268;
  *(v267 + 40) = 0;
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_26B545100;
  *(v269 + 32) = 0xD00000000000001BLL;
  *(v269 + 40) = 0x800000026B55EAB0;
  *(v269 + 48) = 0;
  v1428[0] = 0;
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_26B5450C0;
  *(v270 + 32) = 134545921;
  v1395 = sub_26B470D98(v270);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1303 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1303 = MEMORY[0x277D84FA0];
  }

  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_26B545120;
  *(v271 + 32) = 768;
  v272 = sub_26B470D98(v271);

  v273 = swift_allocObject();
  *(v273 + 16) = xmmword_26B5450D0;
  *(v273 + 32) = *v1418;
  *(v273 + 40) = 3;
  *(v273 + 48) = *v1418;
  *(v273 + 56) = 8;
  *(v273 + 64) = 0x403A000000000000;
  *(v273 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v274.value._object = 0x800000026B55EB00;
  v274.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v274, 0);
  v1422 = v1424;
  v1423 = v1425;
  v275 = sub_26B4D43F4();
  v276 = sub_26B4CE5C8();
  v277 = sub_26B4D4400();
  v278 = sub_26B4D4408();
  v279 = sub_26B4D4414();
  v280 = sub_26B4D4414();
  *&v1205 = v278;
  *(&v1205 + 1) = v279;
  *&v1128 = v272;
  *(&v1128 + 1) = v273;
  *(&v1051 + 1) = v1303;
  *&v1051 = v1395;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B55EAD0, v267, v269, v275, 0, 0, v1428, v1421 + 3528, v276 & 1, v277 & 1, v1051, v1128, v1205, v280, &v1427, &v1426, 0, 0, &v1422);
  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_26B545100;
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_26B545120;
  *(v282 + 32) = 0xD00000000000001BLL;
  *(v282 + 40) = 0x800000026B55EB20;
  *(v282 + 48) = 0xD00000000000001BLL;
  *(v282 + 56) = 0x800000026B55EB40;
  *(v281 + 32) = v282;
  *(v281 + 40) = 0;
  v283 = swift_allocObject();
  *(v283 + 16) = xmmword_26B545100;
  *(v283 + 32) = 0xD00000000000001CLL;
  *(v283 + 40) = 0x800000026B55EB60;
  *(v283 + 48) = 0;
  v1428[0] = 0;
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_26B5450C0;
  *(v284 + 32) = 134545921;
  v1396 = sub_26B470D98(v284);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1334 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1334 = MEMORY[0x277D84FA0];
  }

  v285 = swift_allocObject();
  *(v285 + 16) = xmmword_26B545120;
  *(v285 + 32) = 768;
  v286 = sub_26B470D98(v285);

  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_26B5450D0;
  *(v287 + 32) = *v1418;
  *(v287 + 40) = 3;
  *(v287 + 48) = *v1418;
  *(v287 + 56) = 8;
  *(v287 + 64) = 0x403A000000000000;
  *(v287 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v288.value._object = 0x800000026B55EBB0;
  v288.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v288, 0);
  v1422 = v1424;
  v1423 = v1425;
  v289 = sub_26B4D43F4();
  v290 = sub_26B4CE5C8();
  v291 = sub_26B4D4400();
  v292 = sub_26B4D4408();
  v293 = sub_26B4D4414();
  v294 = sub_26B4D4414();
  *&v1206 = v292;
  *(&v1206 + 1) = v293;
  *&v1129 = v286;
  *(&v1129 + 1) = v287;
  *(&v1052 + 1) = v1334;
  *&v1052 = v1396;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B55EB80, v281, v283, v289, 0, 0, v1428, v1421 + 3712, v290 & 1, v291 & 1, v1052, v1129, v1206, v294, &v1427, &v1426, 0, 0, &v1422);
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_26B545100;
  v296 = swift_allocObject();
  *(v296 + 16) = xmmword_26B545120;
  *(v296 + 32) = 0xD000000000000016;
  *(v296 + 40) = 0x800000026B55EBD0;
  *(v296 + 48) = 0xD000000000000016;
  *(v296 + 56) = 0x800000026B55EBF0;
  *(v295 + 32) = v296;
  *(v295 + 40) = 0;
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_26B545100;
  *(v297 + 32) = 0xD000000000000017;
  *(v297 + 40) = 0x800000026B55EC10;
  *(v297 + 48) = 0;
  v1428[0] = 0;
  v298 = swift_allocObject();
  *(v298 + 16) = xmmword_26B5450C0;
  *(v298 + 32) = 134545921;
  v1397 = sub_26B470D98(v298);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1335 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1335 = MEMORY[0x277D84FA0];
  }

  v299 = swift_allocObject();
  *(v299 + 16) = xmmword_26B545120;
  *(v299 + 32) = 768;
  v300 = sub_26B470D98(v299);

  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_26B5450D0;
  *(v301 + 32) = *v1418;
  *(v301 + 40) = 3;
  *(v301 + 48) = *v1418;
  *(v301 + 56) = 8;
  *(v301 + 64) = 0x403A000000000000;
  *(v301 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v302.value._object = 0x800000026B55EC60;
  v302.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v302, 0);
  v1422 = v1424;
  v1423 = v1425;
  v303 = sub_26B4D43F4();
  v304 = sub_26B4CE5C8();
  v305 = sub_26B4D4400();
  v306 = sub_26B4D4408();
  v307 = sub_26B4D4414();
  v308 = sub_26B4D4414();
  *&v1207 = v306;
  *(&v1207 + 1) = v307;
  *&v1130 = v300;
  *(&v1130 + 1) = v301;
  *(&v1053 + 1) = v1335;
  *&v1053 = v1397;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B55EC30, v295, v297, v303, 0, 0, v1428, v1421 + 3896, v304 & 1, v305 & 1, v1053, v1130, v1207, v308, &v1427, &v1426, 0, 0, &v1422);
  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_26B545100;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_26B545120;
  *(v310 + 32) = 0xD000000000000017;
  *(v310 + 40) = 0x800000026B55EC80;
  *(v310 + 48) = 0xD000000000000017;
  *(v310 + 56) = 0x800000026B55ECA0;
  *(v309 + 32) = v310;
  *(v309 + 40) = 0;
  v311 = swift_allocObject();
  *(v311 + 16) = xmmword_26B545100;
  *(v311 + 32) = 0xD000000000000018;
  *(v311 + 40) = 0x800000026B55ECC0;
  *(v311 + 48) = 0;
  v1428[0] = 0;
  v312 = swift_allocObject();
  *(v312 + 16) = xmmword_26B5450C0;
  *(v312 + 32) = 134545921;
  v1398 = sub_26B470D98(v312);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1336 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1336 = MEMORY[0x277D84FA0];
  }

  v313 = swift_allocObject();
  *(v313 + 16) = xmmword_26B545120;
  *(v313 + 32) = 768;
  v314 = sub_26B470D98(v313);

  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_26B5450D0;
  *(v315 + 32) = *v1418;
  *(v315 + 40) = 3;
  *(v315 + 48) = *v1418;
  *(v315 + 56) = 8;
  *(v315 + 64) = 0x403A000000000000;
  *(v315 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v316.value._object = 0x800000026B55ED10;
  v316.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v316, 0);
  v1422 = v1424;
  v1423 = v1425;
  v317 = sub_26B4D43F4();
  v318 = sub_26B4CE5C8();
  v319 = sub_26B4D4408();
  v320 = sub_26B4D4414();
  v321 = sub_26B4D4414();
  *&v1208 = v319;
  *(&v1208 + 1) = v320;
  *&v1131 = v314;
  *(&v1131 + 1) = v315;
  *(&v1054 + 1) = v1336;
  *&v1054 = v1398;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B55ECE0, v309, v311, v317, 0, 0, v1428, v1421 + 4080, v318 & 1, 1, v1054, v1131, v1208, v321, &v1427, &v1426, 0, 0, &v1422);
  v322 = swift_allocObject();
  *(v322 + 16) = xmmword_26B545100;
  v323 = swift_allocObject();
  *(v323 + 16) = xmmword_26B545120;
  *(v323 + 32) = 0xD000000000000011;
  *(v323 + 40) = 0x800000026B55ED30;
  *(v323 + 48) = 0xD000000000000011;
  *(v323 + 56) = 0x800000026B55ED50;
  *(v322 + 32) = v323;
  *(v322 + 40) = 0;
  v324 = swift_allocObject();
  *(v324 + 16) = xmmword_26B545100;
  *(v324 + 32) = 0xD000000000000012;
  *(v324 + 40) = 0x800000026B55ED70;
  *(v324 + 48) = 0;
  v1428[0] = 0;
  v325 = swift_allocObject();
  *(v325 + 16) = xmmword_26B5450C0;
  *(v325 + 32) = 134545921;
  v1399 = sub_26B470D98(v325);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1337 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1337 = MEMORY[0x277D84FA0];
  }

  v326 = swift_allocObject();
  *(v326 + 16) = xmmword_26B545120;
  *(v326 + 32) = 768;
  v327 = sub_26B470D98(v326);

  v328 = swift_allocObject();
  *(v328 + 16) = xmmword_26B5450D0;
  *(v328 + 32) = *v1418;
  *(v328 + 40) = 3;
  *(v328 + 48) = *v1418;
  *(v328 + 56) = 8;
  *(v328 + 64) = 0x403A000000000000;
  *(v328 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v329.value._countAndFlagsBits = 0x6F56656C62616E65;
  v329.value._object = 0xEF7265764F656369;
  Action.init(_:mac:)(v329, 0);
  v1422 = v1424;
  v1423 = v1425;
  v330 = sub_26B4D43F4();
  v331 = sub_26B4CE5C8();
  v332 = sub_26B4D4400();
  v333 = sub_26B4D4408();
  v334 = sub_26B4D4414();
  v335 = sub_26B4D4414();
  *&v1209 = v333;
  *(&v1209 + 1) = v334;
  *&v1132 = v327;
  *(&v1132 + 1) = v328;
  *(&v1055 + 1) = v1337;
  *&v1055 = v1399;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55ED90, v322, v324, v330, 0, 0, v1428, v1421 + 4264, v331 & 1, v332 & 1, v1055, v1132, v1209, v335, &v1427, &v1426, 0, 0, &v1422);
  v336 = swift_allocObject();
  *(v336 + 16) = xmmword_26B545100;
  v337 = swift_allocObject();
  *(v337 + 16) = xmmword_26B545120;
  *(v337 + 32) = 0xD000000000000012;
  *(v337 + 40) = 0x800000026B55EDB0;
  *(v337 + 48) = 0xD000000000000012;
  *(v337 + 56) = 0x800000026B55EDD0;
  *(v336 + 32) = v337;
  *(v336 + 40) = 0;
  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_26B545100;
  *(v338 + 32) = 0xD000000000000013;
  *(v338 + 40) = 0x800000026B55EDF0;
  *(v338 + 48) = 0;
  v1428[0] = 0;
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_26B5450C0;
  *(v339 + 32) = 134545921;
  v1400 = sub_26B470D98(v339);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1304 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1304 = MEMORY[0x277D84FA0];
  }

  v340 = swift_allocObject();
  *(v340 + 16) = xmmword_26B545120;
  *(v340 + 32) = 768;
  v341 = sub_26B470D98(v340);

  v342 = swift_allocObject();
  *(v342 + 16) = xmmword_26B5450D0;
  *(v342 + 32) = *v1418;
  *(v342 + 40) = 3;
  *(v342 + 48) = *v1418;
  *(v342 + 56) = 8;
  *(v342 + 64) = 0x403A000000000000;
  *(v342 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v343.value._countAndFlagsBits = 0xD000000000000010;
  v343.value._object = 0x800000026B55EE30;
  Action.init(_:mac:)(v343, 0);
  v1422 = v1424;
  v1423 = v1425;
  v344 = sub_26B4D43F4();
  v345 = sub_26B4CE5C8();
  v346 = sub_26B4D4408();
  v347 = sub_26B4D4414();
  v348 = sub_26B4D4414();
  *&v1210 = v346;
  *(&v1210 + 1) = v347;
  *&v1133 = v341;
  *(&v1133 + 1) = v342;
  *(&v1056 + 1) = v1304;
  *&v1056 = v1400;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B55EE10, v336, v338, v344, 0, 0, v1428, v1421 + 4448, v345 & 1, 1, v1056, v1133, v1210, v348, &v1427, &v1426, 0, 0, &v1422);
  v349 = swift_allocObject();
  *(v349 + 16) = xmmword_26B545100;
  v350 = swift_allocObject();
  *(v350 + 16) = xmmword_26B545120;
  strcpy((v350 + 32), "Turn on Zoom");
  *(v350 + 45) = 0;
  *(v350 + 46) = -5120;
  strcpy((v350 + 48), "Turn Zoom on");
  *(v350 + 61) = 0;
  *(v350 + 62) = -5120;
  *(v349 + 32) = v350;
  *(v349 + 40) = 0;
  v351 = swift_allocObject();
  *(v351 + 16) = xmmword_26B545100;
  *(v351 + 32) = 0xD00000000000001BLL;
  *(v351 + 40) = 0x800000026B55EE50;
  *(v351 + 48) = 0;
  v1428[0] = 0;
  v352 = swift_allocObject();
  *(v352 + 16) = xmmword_26B5450C0;
  *(v352 + 32) = 134545921;
  v1401 = sub_26B470D98(v352);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1305 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1305 = MEMORY[0x277D84FA0];
  }

  v353 = swift_allocObject();
  *(v353 + 16) = xmmword_26B545120;
  *(v353 + 32) = 768;
  v354 = sub_26B470D98(v353);

  v355 = swift_allocObject();
  *(v355 + 16) = xmmword_26B5450D0;
  *(v355 + 32) = *v1418;
  *(v355 + 40) = 3;
  *(v355 + 48) = *v1418;
  *(v355 + 56) = 8;
  *(v355 + 64) = 0x403A000000000000;
  *(v355 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v356.value._countAndFlagsBits = 0x6F5A656C62616E65;
  v356.value._object = 0xEA00000000006D6FLL;
  Action.init(_:mac:)(v356, 0);
  v1422 = v1424;
  v1423 = v1425;
  v357 = sub_26B4D43F4();
  v358 = sub_26B4CE5C8();
  v359 = sub_26B4D4400();
  v360 = sub_26B4D4408();
  v361 = sub_26B4D4414();
  v362 = sub_26B4D4414();
  *&v1211 = v360;
  *(&v1211 + 1) = v361;
  *&v1134 = v354;
  *(&v1134 + 1) = v355;
  *(&v1057 + 1) = v1305;
  *&v1057 = v1401;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55EE70, v349, v351, v357, 0, 0, v1428, v1421 + 4632, v358 & 1, v359 & 1, v1057, v1134, v1211, v362, &v1427, &v1426, 0, 0, &v1422);
  v363 = swift_allocObject();
  *(v363 + 16) = xmmword_26B545100;
  v364 = swift_allocObject();
  *(v364 + 16) = xmmword_26B545120;
  strcpy((v364 + 32), "Turn off Zoom");
  *(v364 + 46) = -4864;
  strcpy((v364 + 48), "Turn Zoom off");
  *(v364 + 62) = -4864;
  *(v363 + 32) = v364;
  *(v363 + 40) = 0;
  v365 = swift_allocObject();
  *(v365 + 16) = xmmword_26B545100;
  *(v365 + 32) = 0xD00000000000001CLL;
  *(v365 + 40) = 0x800000026B55EE90;
  *(v365 + 48) = 0;
  v1428[0] = 0;
  v366 = swift_allocObject();
  *(v366 + 16) = xmmword_26B5450C0;
  *(v366 + 32) = 134545921;
  v1402 = sub_26B470D98(v366);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1306 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1306 = MEMORY[0x277D84FA0];
  }

  v367 = swift_allocObject();
  *(v367 + 16) = xmmword_26B545120;
  *(v367 + 32) = 768;
  v368 = sub_26B470D98(v367);

  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_26B5450D0;
  *(v369 + 32) = *v1418;
  *(v369 + 40) = 3;
  *(v369 + 48) = *v1418;
  *(v369 + 56) = 8;
  *(v369 + 64) = 0x403A000000000000;
  *(v369 + 72) = 10;
  v1427 = 4;
  v1426 = 4;
  v370.value._countAndFlagsBits = 0x5A656C6261736964;
  v370.value._object = 0xEB000000006D6F6FLL;
  Action.init(_:mac:)(v370, 0);
  v1422 = v1424;
  v1423 = v1425;
  v371 = sub_26B4D43F4();
  v372 = sub_26B4CE5C8();
  v373 = sub_26B4D4400();
  v374 = sub_26B4D4408();
  v375 = sub_26B4D4414();
  v376 = sub_26B4D4414();
  *&v1212 = v374;
  *(&v1212 + 1) = v375;
  *&v1135 = v368;
  *(&v1135 + 1) = v369;
  *(&v1058 + 1) = v1306;
  *&v1058 = v1402;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55EEB0, v363, v365, v371, 0, 0, v1428, v1421 + 4816, v372 & 1, v373 & 1, v1058, v1135, v1212, v376, &v1427, &v1426, 0, 0, &v1422);
  v377 = swift_allocObject();
  *(v377 + 16) = xmmword_26B545100;
  v378 = swift_allocObject();
  *(v378 + 16) = xmmword_26B545120;
  *(v378 + 32) = 0xD000000000000012;
  *(v378 + 40) = 0x800000026B55EED0;
  *(v378 + 48) = 0x65764F6563696F56;
  *(v378 + 56) = 0xEF73736572702072;
  *(v377 + 32) = v378;
  *(v377 + 40) = 0;
  v379 = swift_allocObject();
  *(v379 + 16) = xmmword_26B545100;
  *(v379 + 32) = 0xD000000000000040;
  *(v379 + 40) = 0x800000026B55EEF0;
  *(v379 + 48) = 0;
  v380 = swift_allocObject();
  *(v380 + 16) = xmmword_26B545100;
  *(v380 + 32) = 0xD00000000000002DLL;
  *(v380 + 40) = 0x800000026B55EF40;
  *(v380 + 48) = 0;
  v1428[0] = 0;
  v381 = swift_allocObject();
  *(v381 + 16) = xmmword_26B545140;
  *(v381 + 32) = 84017408;
  *(v381 + 36) = 8;
  v1307 = sub_26B470D98(v381);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1294 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1294 = MEMORY[0x277D84FA0];
  }

  v382 = swift_allocObject();
  *(v382 + 16) = xmmword_26B545100;
  *(v382 + 32) = 3;
  v383 = sub_26B470D98(v382);

  v384 = swift_allocObject();
  *(v384 + 16) = xmmword_26B5450C0;
  *(v384 + 32) = *v1418;
  *(v384 + 40) = 1;
  *(v384 + 48) = *v1418;
  *(v384 + 56) = 3;
  *(v384 + 64) = *v1418;
  *(v384 + 72) = 8;
  *(v384 + 80) = 0x403A000000000000;
  *(v384 + 88) = 10;
  v385 = swift_allocObject();
  *(v385 + 16) = xmmword_26B545100;
  *(v385 + 32) = 28;
  v386 = sub_26B470F10(v385);

  v1427 = 4;
  v1426 = 4;
  v387.value._countAndFlagsBits = 0x6176697463416F76;
  v387.value._object = 0xEA00000000006574;
  Action.init(_:mac:)(v387, 0);
  v1422 = v1424;
  v1423 = v1425;
  v388 = sub_26B4CE5C8();
  v389 = sub_26B4D4400();
  *&v1213 = sub_26B4D4408();
  *(&v1213 + 1) = sub_26B4D4414();
  *&v1136 = v383;
  *(&v1136 + 1) = v384;
  *(&v1059 + 1) = v1294;
  *&v1059 = v1307;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55EF70, v377, v379, v380, 0, 0, v1428, v1421 + 5000, v388 & 1, v389 & 1, v1059, v1136, v1213, v386, &v1427, &v1426, 0, 0, &v1422);
  v390 = swift_allocObject();
  *(v390 + 16) = xmmword_26B545100;
  v391 = swift_allocObject();
  *(v391 + 16) = xmmword_26B545100;
  *(v391 + 32) = 0xD000000000000013;
  *(v391 + 40) = 0x800000026B55EF90;
  *(v390 + 32) = v391;
  *(v390 + 40) = 0;
  v392 = swift_allocObject();
  *(v392 + 16) = xmmword_26B545100;
  *(v392 + 32) = 0xD00000000000002ALL;
  *(v392 + 40) = 0x800000026B55EFB0;
  *(v392 + 48) = 0;
  v393 = swift_allocObject();
  *(v393 + 16) = xmmword_26B545100;
  *(v393 + 32) = 0xD00000000000002DLL;
  *(v393 + 40) = 0x800000026B55EF40;
  *(v393 + 48) = 0;
  v1428[0] = 0;
  v394 = swift_allocObject();
  *(v394 + 16) = xmmword_26B5450C0;
  *(v394 + 32) = 134545921;
  v1308 = sub_26B470D98(v394);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1295 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1295 = MEMORY[0x277D84FA0];
  }

  v395 = swift_allocObject();
  *(v395 + 16) = xmmword_26B545120;
  *(v395 + 32) = 768;
  v396 = sub_26B470D98(v395);

  v397 = swift_allocObject();
  *(v397 + 16) = xmmword_26B5450D0;
  *(v397 + 32) = *v1418;
  *(v397 + 40) = 3;
  *(v397 + 48) = *v1418;
  *(v397 + 56) = 8;
  *(v397 + 64) = 0x403A000000000000;
  *(v397 + 72) = 10;
  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_26B545100;
  *(v398 + 32) = 28;
  v399 = sub_26B470F10(v398);

  v1427 = 4;
  v1426 = 4;
  v400.value._countAndFlagsBits = 0x54636967614D6F76;
  v400.value._object = 0xEA00000000007061;
  Action.init(_:mac:)(v400, 0);
  v1422 = v1424;
  v1423 = v1425;
  v401 = sub_26B4CE5C8();
  v402 = sub_26B4D4400();
  *&v1214 = sub_26B4D4408();
  *(&v1214 + 1) = sub_26B4D4414();
  *&v1137 = v396;
  *(&v1137 + 1) = v397;
  *(&v1060 + 1) = v1295;
  *&v1060 = v1308;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55EFE0, v390, v392, v393, 0, 0, v1428, v1421 + 5184, v401 & 1, v402 & 1, v1060, v1137, v1214, v399, &v1427, &v1426, 0, 0, &v1422);
  v403 = swift_allocObject();
  *(v403 + 16) = xmmword_26B545100;
  v404 = swift_allocObject();
  *(v404 + 16) = xmmword_26B545100;
  *(v404 + 32) = 0xD000000000000029;
  *(v404 + 40) = 0x800000026B55F000;
  *(v403 + 32) = v404;
  *(v403 + 40) = 0;
  v405 = swift_allocObject();
  *(v405 + 16) = xmmword_26B545100;
  *(v405 + 32) = 0xD00000000000002DLL;
  *(v405 + 40) = 0x800000026B55F030;
  *(v405 + 48) = 0;
  v406 = swift_allocObject();
  *(v406 + 16) = xmmword_26B545100;
  *(v406 + 32) = 0xD000000000000061;
  *(v406 + 40) = 0x800000026B55F060;
  *(v406 + 48) = 0;
  v1428[0] = 0;
  v407 = swift_allocObject();
  *(v407 + 16) = xmmword_26B5450C0;
  *(v407 + 32) = 134545921;
  v1309 = sub_26B470D98(v407);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1296 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1296 = MEMORY[0x277D84FA0];
  }

  v408 = swift_allocObject();
  *(v408 + 16) = xmmword_26B545120;
  *(v408 + 32) = 768;
  v409 = sub_26B470D98(v408);

  v410 = swift_allocObject();
  *(v410 + 16) = xmmword_26B5450D0;
  *(v410 + 32) = *v1418;
  *(v410 + 40) = 3;
  *(v410 + 48) = *v1418;
  *(v410 + 56) = 8;
  *(v410 + 64) = 0x403A000000000000;
  *(v410 + 72) = 10;
  v411 = swift_allocObject();
  *(v411 + 16) = xmmword_26B545120;
  *(v411 + 32) = 7187;
  v412 = sub_26B470F10(v411);

  v1427 = 4;
  v1426 = 4;
  v413.value._countAndFlagsBits = 0x7463656C65536F76;
  v413.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v413, 0);
  v1422 = v1424;
  v1423 = v1425;
  v414 = sub_26B4CE5C8();
  v415 = sub_26B4D4400();
  *&v1215 = sub_26B4D4408();
  *(&v1215 + 1) = sub_26B4D4414();
  *&v1138 = v409;
  *(&v1138 + 1) = v410;
  *(&v1061 + 1) = v1296;
  *&v1061 = v1309;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55F0D0, v403, v405, v406, 0, 0, v1428, v1421 + 5368, v414 & 1, v415 & 1, v1061, v1138, v1215, v412, &v1427, &v1426, 0, 0, &v1422);
  v416 = swift_allocObject();
  *(v416 + 16) = xmmword_26B545100;
  v417 = swift_allocObject();
  *(v417 + 16) = xmmword_26B545100;
  *(v417 + 32) = 0xD000000000000012;
  *(v417 + 40) = 0x800000026B55F0F0;
  *(v416 + 32) = v417;
  *(v416 + 40) = 0;
  v418 = swift_allocObject();
  *(v418 + 16) = xmmword_26B545100;
  *(v418 + 32) = 0xD00000000000002BLL;
  *(v418 + 40) = 0x800000026B55F110;
  *(v418 + 48) = 0;
  v419 = swift_allocObject();
  *(v419 + 16) = xmmword_26B545100;
  *(v419 + 32) = 0xD00000000000002DLL;
  *(v419 + 40) = 0x800000026B55EF40;
  *(v419 + 48) = 0;
  v1428[0] = 0;
  v420 = swift_allocObject();
  *(v420 + 16) = xmmword_26B545140;
  *(v420 + 32) = 84017408;
  *(v420 + 36) = 8;
  v1310 = sub_26B470D98(v420);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1277 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1277 = MEMORY[0x277D84FA0];
  }

  v421 = swift_allocObject();
  *(v421 + 16) = xmmword_26B545100;
  *(v421 + 32) = 3;
  v422 = sub_26B470D98(v421);

  v423 = swift_allocObject();
  *(v423 + 16) = xmmword_26B5450C0;
  *(v423 + 32) = *v1418;
  *(v423 + 40) = 1;
  *(v423 + 48) = *v1418;
  *(v423 + 56) = 3;
  *(v423 + 64) = *v1418;
  *(v423 + 72) = 8;
  *(v423 + 80) = 0x403A000000000000;
  *(v423 + 88) = 10;
  v424 = swift_allocObject();
  *(v424 + 16) = xmmword_26B545100;
  *(v424 + 32) = 28;
  v425 = sub_26B470F10(v424);

  v1427 = 4;
  v1426 = 4;
  v426.value._countAndFlagsBits = 0x6C41646165526F76;
  v426.value._object = 0xE90000000000006CLL;
  Action.init(_:mac:)(v426, 0);
  v1422 = v1424;
  v1423 = v1425;
  v427 = sub_26B4CE5C8();
  v428 = sub_26B4D4400();
  *&v1216 = sub_26B4D4408();
  *(&v1216 + 1) = sub_26B4D4414();
  *&v1139 = v422;
  *(&v1139 + 1) = v423;
  *(&v1062 + 1) = v1277;
  *&v1062 = v1310;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B55F140, v416, v418, v419, 0, 0, v1428, v1421 + 5552, v427 & 1, v428 & 1, v1062, v1139, v1216, v425, &v1427, &v1426, 0, 0, &v1422);
  v429 = swift_allocObject();
  *(v429 + 16) = xmmword_26B545100;
  v430 = swift_allocObject();
  *(v430 + 16) = xmmword_26B545100;
  *(v430 + 32) = 0xD000000000000027;
  *(v430 + 40) = 0x800000026B55F160;
  *(v429 + 32) = v430;
  *(v429 + 40) = 0;
  v431 = swift_allocObject();
  *(v431 + 16) = xmmword_26B545100;
  *(v431 + 32) = 0xD000000000000038;
  *(v431 + 40) = 0x800000026B55F190;
  *(v431 + 48) = 0;
  v432 = swift_allocObject();
  *(v432 + 16) = xmmword_26B545100;
  *(v432 + 32) = 0xD00000000000002DLL;
  *(v432 + 40) = 0x800000026B55EF40;
  *(v432 + 48) = 0;
  v1428[0] = 0;
  v433 = swift_allocObject();
  *(v433 + 16) = xmmword_26B5450C0;
  *(v433 + 32) = 134545921;
  v1311 = sub_26B470D98(v433);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1278 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1278 = MEMORY[0x277D84FA0];
  }

  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_26B545120;
  *(v434 + 32) = 768;
  v435 = sub_26B470D98(v434);

  v436 = swift_allocObject();
  *(v436 + 16) = xmmword_26B5450D0;
  *(v436 + 32) = *v1418;
  *(v436 + 40) = 3;
  *(v436 + 48) = *v1418;
  *(v436 + 56) = 8;
  *(v436 + 64) = 0x403A000000000000;
  *(v436 + 72) = 10;
  v437 = swift_allocObject();
  *(v437 + 16) = xmmword_26B545100;
  *(v437 + 32) = 28;
  v438 = sub_26B470F10(v437);

  v1427 = 4;
  v1426 = 4;
  v439.value._countAndFlagsBits = 0x7463656C65536F76;
  v439.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v439, 0);
  v1422 = v1424;
  v1423 = v1425;
  v440 = sub_26B4CE5C8();
  v441 = sub_26B4D4400();
  *&v1217 = sub_26B4D4408();
  *(&v1217 + 1) = sub_26B4D4414();
  *&v1140 = v435;
  *(&v1140 + 1) = v436;
  *(&v1063 + 1) = v1278;
  *&v1063 = v1311;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B55F1D0, v429, v431, v432, 0, 0, v1428, v1421 + 5736, v440 & 1, v441 & 1, v1063, v1140, v1217, v438, &v1427, &v1426, 0, 0, &v1422);
  v442 = swift_allocObject();
  *(v442 + 16) = xmmword_26B545100;
  v443 = swift_allocObject();
  *(v443 + 16) = xmmword_26B545100;
  *(v443 + 32) = 0xD000000000000021;
  *(v443 + 40) = 0x800000026B55F1F0;
  *(v442 + 32) = v443;
  *(v442 + 40) = 0;
  v444 = swift_allocObject();
  *(v444 + 16) = xmmword_26B545100;
  *(v444 + 32) = 0xD00000000000002CLL;
  *(v444 + 40) = 0x800000026B55F220;
  *(v444 + 48) = 0;
  v445 = swift_allocObject();
  *(v445 + 16) = xmmword_26B545100;
  *(v445 + 32) = 0xD00000000000002DLL;
  *(v445 + 40) = 0x800000026B55EF40;
  *(v445 + 48) = 0;
  v1428[0] = 0;
  v446 = swift_allocObject();
  *(v446 + 16) = xmmword_26B545140;
  *(v446 + 32) = 84017408;
  *(v446 + 36) = 8;
  v1279 = sub_26B470D98(v446);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1272 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1272 = MEMORY[0x277D84FA0];
  }

  v447 = swift_allocObject();
  *(v447 + 16) = xmmword_26B545100;
  *(v447 + 32) = 3;
  v448 = sub_26B470D98(v447);

  v449 = swift_allocObject();
  *(v449 + 16) = xmmword_26B5450C0;
  *(v449 + 32) = *v1418;
  *(v449 + 40) = 1;
  *(v449 + 48) = *v1418;
  *(v449 + 56) = 3;
  *(v449 + 64) = *v1418;
  *(v449 + 72) = 8;
  *(v449 + 80) = 0x403A000000000000;
  *(v449 + 88) = 10;
  v450 = swift_allocObject();
  *(v450 + 16) = xmmword_26B545100;
  *(v450 + 32) = 28;
  v451 = sub_26B470F10(v450);

  v1427 = 4;
  v1426 = 4;
  v452.value._object = 0x800000026B55F270;
  v452.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v452, 0);
  v1422 = v1424;
  v1423 = v1425;
  v453 = sub_26B4CE5C8();
  v454 = sub_26B4D4400();
  *&v1218 = sub_26B4D4408();
  *(&v1218 + 1) = sub_26B4D4414();
  *&v1141 = v448;
  *(&v1141 + 1) = v449;
  *(&v1064 + 1) = v1272;
  *&v1064 = v1279;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F250, v442, v444, v445, 0, 0, v1428, v1421 + 5920, v453 & 1, v454 & 1, v1064, v1141, v1218, v451, &v1427, &v1426, 0, 0, &v1422);
  v455 = swift_allocObject();
  *(v455 + 16) = xmmword_26B545100;
  v456 = swift_allocObject();
  *(v456 + 16) = xmmword_26B545100;
  *(v456 + 32) = 0xD000000000000020;
  *(v456 + 40) = 0x800000026B55F290;
  *(v455 + 32) = v456;
  *(v455 + 40) = 0;
  v457 = swift_allocObject();
  *(v457 + 16) = xmmword_26B545100;
  *(v457 + 32) = 0xD00000000000002BLL;
  *(v457 + 40) = 0x800000026B55F2C0;
  *(v457 + 48) = 0;
  v458 = swift_allocObject();
  *(v458 + 16) = xmmword_26B545100;
  *(v458 + 32) = 0xD00000000000002DLL;
  *(v458 + 40) = 0x800000026B55EF40;
  *(v458 + 48) = 0;
  v1428[0] = 0;
  v459 = swift_allocObject();
  *(v459 + 16) = xmmword_26B545140;
  *(v459 + 32) = 84017408;
  *(v459 + 36) = 8;
  v1280 = sub_26B470D98(v459);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1273 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1273 = MEMORY[0x277D84FA0];
  }

  v460 = swift_allocObject();
  *(v460 + 16) = xmmword_26B545100;
  *(v460 + 32) = 3;
  v461 = sub_26B470D98(v460);

  v462 = swift_allocObject();
  *(v462 + 16) = xmmword_26B5450C0;
  *(v462 + 32) = *v1418;
  *(v462 + 40) = 1;
  *(v462 + 48) = *v1418;
  *(v462 + 56) = 3;
  *(v462 + 64) = *v1418;
  *(v462 + 72) = 8;
  *(v462 + 80) = 0x403A000000000000;
  *(v462 + 88) = 10;
  v463 = swift_allocObject();
  *(v463 + 16) = xmmword_26B545100;
  *(v463 + 32) = 28;
  v464 = sub_26B470F10(v463);

  v1427 = 4;
  v1426 = 4;
  v465.value._object = 0x800000026B55F310;
  v465.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v465, 0);
  v1422 = v1424;
  v1423 = v1425;
  v466 = sub_26B4CE5C8();
  v467 = sub_26B4D4400();
  *&v1219 = sub_26B4D4408();
  *(&v1219 + 1) = sub_26B4D4414();
  *&v1142 = v461;
  *(&v1142 + 1) = v462;
  *(&v1065 + 1) = v1273;
  *&v1065 = v1280;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55F2F0, v455, v457, v458, 0, 0, v1428, v1421 + 6104, v466 & 1, v467 & 1, v1065, v1142, v1219, v464, &v1427, &v1426, 0, 0, &v1422);
  v468 = swift_allocObject();
  *(v468 + 16) = xmmword_26B545100;
  v469 = swift_allocObject();
  *(v469 + 16) = xmmword_26B545100;
  *(v469 + 32) = 0xD00000000000001FLL;
  *(v469 + 40) = 0x800000026B55F330;
  *(v468 + 32) = v469;
  *(v468 + 40) = 0;
  v470 = swift_allocObject();
  *(v470 + 16) = xmmword_26B545100;
  *(v470 + 32) = 0xD000000000000014;
  *(v470 + 40) = 0x800000026B55F350;
  *(v470 + 48) = 0;
  v471 = swift_allocObject();
  *(v471 + 16) = xmmword_26B545100;
  *(v471 + 32) = 0xD00000000000002DLL;
  *(v471 + 40) = 0x800000026B55EF40;
  *(v471 + 48) = 0;
  v1428[0] = 0;
  v472 = swift_allocObject();
  *(v472 + 16) = xmmword_26B545100;
  *(v472 + 32) = 2;
  v1281 = sub_26B470D98(v472);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1265 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1265 = MEMORY[0x277D84FA0];
  }

  v473 = swift_allocObject();
  *(v473 + 16) = xmmword_26B545140;
  *(v473 + 32) = 84082944;
  *(v473 + 36) = 8;
  v474 = sub_26B470D98(v473);

  v475 = swift_allocObject();
  *(v475 + 16) = xmmword_26B545100;
  *(v475 + 32) = *v1418;
  *(v475 + 40) = 3;
  v476 = swift_allocObject();
  *(v476 + 16) = xmmword_26B545100;
  *(v476 + 32) = 28;
  v477 = sub_26B470F10(v476);

  v1427 = 4;
  v1426 = 4;
  v478.value._object = 0xEF7070417478654ELL;
  v478.value._countAndFlagsBits = 0x7463656C65536F76;
  Action.init(_:mac:)(v478, 0);
  v1422 = v1424;
  v1423 = v1425;
  v479 = sub_26B4CE5C8();
  v480 = sub_26B4D4400();
  *&v1220 = sub_26B4D4408();
  *(&v1220 + 1) = sub_26B4D4414();
  *&v1143 = v474;
  *(&v1143 + 1) = v475;
  *(&v1066 + 1) = v1265;
  *&v1066 = v1281;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B55F370, v468, v470, v471, 0, 0, v1428, v1421 + 6288, v479 & 1, v480 & 1, v1066, v1143, v1220, v477, &v1427, &v1426, 0, 0, &v1422);
  v481 = swift_allocObject();
  *(v481 + 16) = xmmword_26B545100;
  v482 = swift_allocObject();
  *(v482 + 16) = xmmword_26B545100;
  *(v482 + 32) = 0xD00000000000001ALL;
  *(v482 + 40) = 0x800000026B55F390;
  *(v481 + 32) = v482;
  *(v481 + 40) = 0;
  v483 = swift_allocObject();
  *(v483 + 16) = xmmword_26B545100;
  *(v483 + 32) = 0xD00000000000002BLL;
  *(v483 + 40) = 0x800000026B55F3B0;
  *(v483 + 48) = 0;
  v484 = swift_allocObject();
  *(v484 + 16) = xmmword_26B545100;
  *(v484 + 32) = 0xD00000000000002DLL;
  *(v484 + 40) = 0x800000026B55EF40;
  *(v484 + 48) = 0;
  v1428[0] = 0;
  v485 = swift_allocObject();
  *(v485 + 16) = xmmword_26B545140;
  *(v485 + 32) = 84017408;
  *(v485 + 36) = 8;
  v1282 = sub_26B470D98(v485);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1266 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1266 = MEMORY[0x277D84FA0];
  }

  v486 = swift_allocObject();
  *(v486 + 16) = xmmword_26B545100;
  *(v486 + 32) = 3;
  v487 = sub_26B470D98(v486);

  v488 = swift_allocObject();
  *(v488 + 16) = xmmword_26B5450C0;
  *(v488 + 32) = *v1418;
  *(v488 + 40) = 1;
  *(v488 + 48) = *v1418;
  *(v488 + 56) = 3;
  *(v488 + 64) = *v1418;
  *(v488 + 72) = 8;
  *(v488 + 80) = 0x403A000000000000;
  *(v488 + 88) = 10;
  v489 = swift_allocObject();
  *(v489 + 16) = xmmword_26B545100;
  *(v489 + 32) = 28;
  v490 = sub_26B470F10(v489);

  v1427 = 4;
  v1426 = 4;
  v491.value._object = 0x800000026B55F400;
  v491.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v491, 0);
  v1422 = v1424;
  v1423 = v1425;
  v492 = sub_26B4CE5C8();
  v493 = sub_26B4D4400();
  *&v1221 = sub_26B4D4408();
  *(&v1221 + 1) = sub_26B4D4414();
  *&v1144 = v487;
  *(&v1144 + 1) = v488;
  *(&v1067 + 1) = v1266;
  *&v1067 = v1282;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55F3E0, v481, v483, v484, 0, 0, v1428, v1421 + 6472, v492 & 1, v493 & 1, v1067, v1144, v1221, v490, &v1427, &v1426, 0, 0, &v1422);
  v494 = swift_allocObject();
  *(v494 + 16) = xmmword_26B545100;
  v495 = swift_allocObject();
  *(v495 + 16) = xmmword_26B545100;
  *(v495 + 32) = 0xD00000000000001BLL;
  *(v495 + 40) = 0x800000026B55F420;
  *(v494 + 32) = v495;
  *(v494 + 40) = 0;
  v496 = swift_allocObject();
  *(v496 + 16) = xmmword_26B545100;
  *(v496 + 32) = 0xD000000000000074;
  *(v496 + 40) = 0x800000026B55F440;
  *(v496 + 48) = 0;
  v497 = swift_allocObject();
  *(v497 + 16) = xmmword_26B545100;
  *(v497 + 32) = 0xD00000000000002DLL;
  *(v497 + 40) = 0x800000026B55EF40;
  *(v497 + 48) = 0;
  v1428[0] = 0;
  v498 = swift_allocObject();
  *(v498 + 16) = xmmword_26B5450C0;
  *(v498 + 32) = 134545921;
  v1283 = sub_26B470D98(v498);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1267 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1267 = MEMORY[0x277D84FA0];
  }

  v499 = swift_allocObject();
  *(v499 + 16) = xmmword_26B545120;
  *(v499 + 32) = 768;
  v500 = sub_26B470D98(v499);

  v501 = swift_allocObject();
  *(v501 + 16) = xmmword_26B5450D0;
  *(v501 + 32) = *v1418;
  *(v501 + 40) = 3;
  *(v501 + 48) = *v1418;
  *(v501 + 56) = 8;
  *(v501 + 64) = 0x403A000000000000;
  *(v501 + 72) = 10;
  v502 = swift_allocObject();
  *(v502 + 16) = xmmword_26B545100;
  *(v502 + 32) = 28;
  v503 = sub_26B470F10(v502);

  v1427 = 4;
  v1426 = 4;
  v504.value._object = 0x800000026B55F4E0;
  v504.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v504, 0);
  v1422 = v1424;
  v1423 = v1425;
  v505 = sub_26B4CE5C8();
  v506 = sub_26B4D4400();
  *&v1222 = sub_26B4D4408();
  *(&v1222 + 1) = sub_26B4D4414();
  *&v1145 = v500;
  *(&v1145 + 1) = v501;
  *(&v1068 + 1) = v1267;
  *&v1068 = v1283;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F4C0, v494, v496, v497, 0, 0, v1428, v1421 + 6656, v505 & 1, v506 & 1, v1068, v1145, v1222, v503, &v1427, &v1426, 0, 0, &v1422);
  v507 = swift_allocObject();
  *(v507 + 16) = xmmword_26B545100;
  v508 = swift_allocObject();
  *(v508 + 16) = xmmword_26B545100;
  *(v508 + 32) = 0xD000000000000022;
  *(v508 + 40) = 0x800000026B55F500;
  *(v507 + 32) = v508;
  *(v507 + 40) = 0;
  v509 = swift_allocObject();
  *(v509 + 16) = xmmword_26B545100;
  *(v509 + 32) = 0xD000000000000066;
  *(v509 + 40) = 0x800000026B55F530;
  *(v509 + 48) = 0;
  v510 = swift_allocObject();
  *(v510 + 16) = xmmword_26B545100;
  *(v510 + 32) = 0xD00000000000002DLL;
  *(v510 + 40) = 0x800000026B55EF40;
  *(v510 + 48) = 0;
  v1428[0] = 0;
  v511 = swift_allocObject();
  *(v511 + 16) = xmmword_26B5450C0;
  *(v511 + 32) = 134545921;
  v1268 = sub_26B470D98(v511);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1263 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1263 = MEMORY[0x277D84FA0];
  }

  v512 = swift_allocObject();
  *(v512 + 16) = xmmword_26B545120;
  *(v512 + 32) = 768;
  v513 = sub_26B470D98(v512);

  v514 = swift_allocObject();
  *(v514 + 16) = xmmword_26B5450D0;
  *(v514 + 32) = *v1418;
  *(v514 + 40) = 3;
  *(v514 + 48) = *v1418;
  *(v514 + 56) = 8;
  *(v514 + 64) = 0x403A000000000000;
  *(v514 + 72) = 10;
  v515 = swift_allocObject();
  *(v515 + 16) = xmmword_26B545100;
  *(v515 + 32) = 28;
  v516 = sub_26B470F10(v515);

  v1427 = 4;
  v1426 = 4;
  v517.value._object = 0x800000026B55F5C0;
  v517.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v517, 0);
  v1422 = v1424;
  v1423 = v1425;
  v518 = sub_26B4CE5C8();
  v519 = sub_26B4D4400();
  *&v1223 = sub_26B4D4408();
  *(&v1223 + 1) = sub_26B4D4414();
  *&v1146 = v513;
  *(&v1146 + 1) = v514;
  *(&v1069 + 1) = v1263;
  *&v1069 = v1268;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B55F5A0, v507, v509, v510, 0, 0, v1428, v1421 + 6840, v518 & 1, v519 & 1, v1069, v1146, v1223, v516, &v1427, &v1426, 0, 0, &v1422);
  v520 = swift_allocObject();
  *(v520 + 16) = xmmword_26B545100;
  v521 = swift_allocObject();
  *(v521 + 16) = xmmword_26B545100;
  *(v521 + 32) = 0xD000000000000023;
  *(v521 + 40) = 0x800000026B55F5E0;
  *(v520 + 32) = v521;
  *(v520 + 40) = 0;
  v522 = swift_allocObject();
  *(v522 + 16) = xmmword_26B545100;
  *(v522 + 32) = 0xD000000000000014;
  *(v522 + 40) = 0x800000026B55F610;
  *(v522 + 48) = 0;
  v523 = swift_allocObject();
  *(v523 + 16) = xmmword_26B545100;
  *(v523 + 32) = 0xD00000000000002DLL;
  *(v523 + 40) = 0x800000026B55EF40;
  *(v523 + 48) = 0;
  v1428[0] = 0;
  v524 = swift_allocObject();
  *(v524 + 16) = xmmword_26B545100;
  *(v524 + 32) = 2;
  v1269 = sub_26B470D98(v524);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1264 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1264 = MEMORY[0x277D84FA0];
  }

  v525 = swift_allocObject();
  *(v525 + 16) = xmmword_26B545140;
  *(v525 + 32) = 84082944;
  *(v525 + 36) = 8;
  v526 = sub_26B470D98(v525);

  v527 = swift_allocObject();
  *(v527 + 16) = xmmword_26B545100;
  *(v527 + 32) = *v1418;
  *(v527 + 40) = 3;
  v528 = swift_allocObject();
  *(v528 + 16) = xmmword_26B545100;
  *(v528 + 32) = 28;
  v529 = sub_26B470F10(v528);

  v1427 = 4;
  v1426 = 4;
  v530.value._object = 0x800000026B55F650;
  v530.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v530, 0);
  v1422 = v1424;
  v1423 = v1425;
  v531 = sub_26B4CE5C8();
  v532 = sub_26B4D4400();
  *&v1224 = sub_26B4D4408();
  *(&v1224 + 1) = sub_26B4D4414();
  *&v1147 = v526;
  *(&v1147 + 1) = v527;
  *(&v1070 + 1) = v1264;
  *&v1070 = v1269;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B55F630, v520, v522, v523, 0, 0, v1428, v1421 + 7024, v531 & 1, v532 & 1, v1070, v1147, v1224, v529, &v1427, &v1426, 0, 0, &v1422);
  v533 = swift_allocObject();
  *(v533 + 16) = xmmword_26B545100;
  v534 = swift_allocObject();
  *(v534 + 16) = xmmword_26B545100;
  *(v534 + 32) = 0xD00000000000001ELL;
  *(v534 + 40) = 0x800000026B55F670;
  *(v533 + 32) = v534;
  *(v533 + 40) = 0;
  v535 = swift_allocObject();
  *(v535 + 16) = xmmword_26B545100;
  *(v535 + 32) = 0xD00000000000002FLL;
  *(v535 + 40) = 0x800000026B55F690;
  *(v535 + 48) = 0;
  v536 = swift_allocObject();
  *(v536 + 16) = xmmword_26B545100;
  *(v536 + 32) = 0xD00000000000002DLL;
  *(v536 + 40) = 0x800000026B55EF40;
  *(v536 + 48) = 0;
  v1428[0] = 0;
  v537 = swift_allocObject();
  *(v537 + 16) = xmmword_26B545140;
  *(v537 + 32) = 84017408;
  *(v537 + 36) = 8;
  v1274 = sub_26B470D98(v537);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1270 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1270 = MEMORY[0x277D84FA0];
  }

  v538 = swift_allocObject();
  *(v538 + 16) = xmmword_26B545100;
  *(v538 + 32) = 3;
  v539 = sub_26B470D98(v538);

  v540 = swift_allocObject();
  *(v540 + 16) = xmmword_26B5450C0;
  *(v540 + 32) = *v1418;
  *(v540 + 40) = 1;
  *(v540 + 48) = *v1418;
  *(v540 + 56) = 3;
  *(v540 + 64) = *v1418;
  *(v540 + 72) = 8;
  *(v540 + 80) = 0x403A000000000000;
  *(v540 + 88) = 10;
  v541 = swift_allocObject();
  *(v541 + 16) = xmmword_26B545100;
  *(v541 + 32) = 28;
  v542 = sub_26B470F10(v541);

  v1427 = 4;
  v1426 = 4;
  v543.value._object = 0x800000026B55F6E0;
  v543.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v543, 0);
  v1422 = v1424;
  v1423 = v1425;
  v544 = sub_26B4CE5C8();
  v545 = sub_26B4D4400();
  *&v1225 = sub_26B4D4408();
  *(&v1225 + 1) = sub_26B4D4414();
  *&v1148 = v539;
  *(&v1148 + 1) = v540;
  *(&v1071 + 1) = v1270;
  *&v1071 = v1274;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B55F6C0, v533, v535, v536, 0, 0, v1428, v1421 + 7208, v544 & 1, v545 & 1, v1071, v1148, v1225, v542, &v1427, &v1426, 0, 0, &v1422);
  v546 = swift_allocObject();
  *(v546 + 16) = xmmword_26B545100;
  v547 = swift_allocObject();
  *(v547 + 16) = xmmword_26B545100;
  *(v547 + 32) = 0xD00000000000001FLL;
  *(v547 + 40) = 0x800000026B55F700;
  *(v546 + 32) = v547;
  *(v546 + 40) = 0;
  v548 = swift_allocObject();
  *(v548 + 16) = xmmword_26B545100;
  *(v548 + 32) = 0xD000000000000075;
  *(v548 + 40) = 0x800000026B55F720;
  *(v548 + 48) = 0;
  v549 = swift_allocObject();
  *(v549 + 16) = xmmword_26B545100;
  *(v549 + 32) = 0xD00000000000002DLL;
  *(v549 + 40) = 0x800000026B55EF40;
  *(v549 + 48) = 0;
  v1428[0] = 0;
  v550 = swift_allocObject();
  *(v550 + 16) = xmmword_26B5450C0;
  *(v550 + 32) = 134545921;
  v1275 = sub_26B470D98(v550);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1271 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1271 = MEMORY[0x277D84FA0];
  }

  v551 = swift_allocObject();
  *(v551 + 16) = xmmword_26B545120;
  *(v551 + 32) = 768;
  v552 = sub_26B470D98(v551);

  v553 = swift_allocObject();
  *(v553 + 16) = xmmword_26B5450D0;
  *(v553 + 32) = *v1418;
  *(v553 + 40) = 3;
  *(v553 + 48) = *v1418;
  *(v553 + 56) = 8;
  *(v553 + 64) = 0x403A000000000000;
  *(v553 + 72) = 10;
  v554 = swift_allocObject();
  *(v554 + 16) = xmmword_26B545100;
  *(v554 + 32) = 28;
  v555 = sub_26B470F10(v554);

  v1427 = 4;
  v1426 = 4;
  v556.value._object = 0x800000026B55F7C0;
  v556.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v556, 0);
  v1422 = v1424;
  v1423 = v1425;
  v557 = sub_26B4CE5C8();
  v558 = sub_26B4D4400();
  *&v1226 = sub_26B4D4408();
  *(&v1226 + 1) = sub_26B4D4414();
  *&v1149 = v552;
  *(&v1149 + 1) = v553;
  *(&v1072 + 1) = v1271;
  *&v1072 = v1275;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55F7A0, v546, v548, v549, 0, 0, v1428, v1421 + 7392, v557 & 1, v558 & 1, v1072, v1149, v1226, v555, &v1427, &v1426, 0, 0, &v1422);
  v559 = swift_allocObject();
  *(v559 + 16) = xmmword_26B545100;
  v560 = swift_allocObject();
  *(v560 + 16) = xmmword_26B545100;
  *(v560 + 32) = 0xD000000000000026;
  *(v560 + 40) = 0x800000026B55F7E0;
  *(v559 + 32) = v560;
  *(v559 + 40) = 0;
  v561 = swift_allocObject();
  *(v561 + 16) = xmmword_26B545100;
  *(v561 + 32) = 0xD000000000000066;
  *(v561 + 40) = 0x800000026B55F530;
  *(v561 + 48) = 0;
  v562 = swift_allocObject();
  *(v562 + 16) = xmmword_26B545100;
  *(v562 + 32) = 0xD00000000000002DLL;
  *(v562 + 40) = 0x800000026B55EF40;
  *(v562 + 48) = 0;
  v1428[0] = 0;
  v563 = swift_allocObject();
  *(v563 + 16) = xmmword_26B5450C0;
  *(v563 + 32) = 134545921;
  v1324 = sub_26B470D98(v563);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1284 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1284 = MEMORY[0x277D84FA0];
  }

  v564 = swift_allocObject();
  *(v564 + 16) = xmmword_26B545120;
  *(v564 + 32) = 768;
  v1276 = sub_26B470D98(v564);

  v565 = swift_allocObject();
  *(v565 + 16) = xmmword_26B5450D0;
  *(v565 + 32) = *v1418;
  *(v565 + 40) = 3;
  *(v565 + 48) = *v1418;
  *(v565 + 56) = 8;
  *(v565 + 64) = 0x403A000000000000;
  *(v565 + 72) = 10;
  v566 = swift_allocObject();
  *(v566 + 16) = xmmword_26B545100;
  *(v566 + 32) = 28;
  v567 = sub_26B470F10(v566);

  v1427 = 4;
  v1426 = 4;
  v568.value._object = 0x800000026B55F840;
  v568.value._countAndFlagsBits = 0xD00000000000001BLL;
  Action.init(_:mac:)(v568, 0);
  v1422 = v1424;
  v1423 = v1425;
  v569 = sub_26B4CE5C8();
  v570 = sub_26B4D4400();
  *&v1227 = sub_26B4D4408();
  *(&v1227 + 1) = sub_26B4D4414();
  *(&v1150 + 1) = v565;
  *&v1150 = v1276;
  *(&v1073 + 1) = v1284;
  *&v1073 = v1324;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B55F810, v559, v561, v562, 0, 0, v1428, v1421 + 7576, v569 & 1, v570 & 1, v1073, v1150, v1227, v567, &v1427, &v1426, 0, 0, &v1422);
  v571 = swift_allocObject();
  *(v571 + 16) = xmmword_26B545100;
  v572 = swift_allocObject();
  *(v572 + 16) = xmmword_26B545100;
  *(v572 + 32) = 0xD00000000000001BLL;
  *(v572 + 40) = 0x800000026B55F860;
  *(v571 + 32) = v572;
  *(v571 + 40) = 0;
  v573 = swift_allocObject();
  *(v573 + 16) = xmmword_26B545100;
  *(v573 + 32) = 0xD00000000000002CLL;
  *(v573 + 40) = 0x800000026B55F880;
  *(v573 + 48) = 0;
  v574 = swift_allocObject();
  *(v574 + 16) = xmmword_26B545100;
  *(v574 + 32) = 0xD00000000000002DLL;
  *(v574 + 40) = 0x800000026B55EF40;
  *(v574 + 48) = 0;
  v1428[0] = 0;
  v575 = swift_allocObject();
  *(v575 + 16) = xmmword_26B5450C0;
  *(v575 + 32) = 134545921;
  v1325 = sub_26B470D98(v575);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1313 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1313 = MEMORY[0x277D84FA0];
  }

  v576 = swift_allocObject();
  *(v576 + 16) = xmmword_26B545120;
  *(v576 + 32) = 768;
  v577 = sub_26B470D98(v576);

  v578 = swift_allocObject();
  *(v578 + 16) = xmmword_26B5450D0;
  *(v578 + 32) = *v1418;
  *(v578 + 40) = 3;
  *(v578 + 48) = *v1418;
  *(v578 + 56) = 8;
  *(v578 + 64) = 0x403A000000000000;
  *(v578 + 72) = 10;
  v579 = swift_allocObject();
  *(v579 + 16) = xmmword_26B545100;
  *(v579 + 32) = 28;
  v580 = sub_26B470F10(v579);

  v1427 = 4;
  v1426 = 4;
  v581.value._object = 0x800000026B55F8D0;
  v581.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v581, 0);
  v1422 = v1424;
  v1423 = v1425;
  v582 = sub_26B4CE5C8();
  v583 = sub_26B4D4400();
  *&v1228 = sub_26B4D4408();
  *(&v1228 + 1) = sub_26B4D4414();
  *&v1151 = v577;
  *(&v1151 + 1) = v578;
  *(&v1074 + 1) = v1313;
  *&v1074 = v1325;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F8B0, v571, v573, v574, 0, 0, v1428, v1421 + 7760, v582 & 1, v583 & 1, v1074, v1151, v1228, v580, &v1427, &v1426, 0, 0, &v1422);
  v584 = swift_allocObject();
  *(v584 + 16) = xmmword_26B545100;
  v585 = swift_allocObject();
  *(v585 + 16) = xmmword_26B545100;
  *(v585 + 32) = 0xD00000000000001DLL;
  *(v585 + 40) = 0x800000026B55F8F0;
  *(v584 + 32) = v585;
  *(v584 + 40) = 0;
  v586 = swift_allocObject();
  *(v586 + 16) = xmmword_26B545100;
  *(v586 + 32) = 0xD000000000000016;
  *(v586 + 40) = 0x800000026B55F910;
  *(v586 + 48) = 0;
  v587 = swift_allocObject();
  *(v587 + 16) = xmmword_26B545100;
  *(v587 + 32) = 0xD00000000000002DLL;
  *(v587 + 40) = 0x800000026B55EF40;
  *(v587 + 48) = 0;
  v1428[0] = 0;
  v588 = swift_allocObject();
  *(v588 + 16) = xmmword_26B545140;
  *(v588 + 32) = 84017408;
  *(v588 + 36) = 8;
  v1326 = sub_26B470D98(v588);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1314 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1314 = MEMORY[0x277D84FA0];
  }

  v589 = swift_allocObject();
  *(v589 + 16) = xmmword_26B545100;
  *(v589 + 32) = 3;
  v590 = sub_26B470D98(v589);

  v591 = swift_allocObject();
  *(v591 + 16) = xmmword_26B5450C0;
  *(v591 + 32) = *v1418;
  *(v591 + 40) = 1;
  *(v591 + 48) = *v1418;
  *(v591 + 56) = 3;
  *(v591 + 64) = *v1418;
  *(v591 + 72) = 8;
  *(v591 + 80) = 0x403A000000000000;
  *(v591 + 88) = 10;
  v592 = swift_allocObject();
  *(v592 + 16) = xmmword_26B545100;
  *(v592 + 32) = 28;
  v593 = sub_26B470F10(v592);

  v1427 = 4;
  v1426 = 4;
  v594.value._object = 0x800000026B55F950;
  v595.value._object = 0x800000026B55F970;
  v594.value._countAndFlagsBits = 0xD000000000000011;
  v595.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v594, v595);
  v1422 = v1424;
  v1423 = v1425;
  v596 = sub_26B4CE5C8();
  v597 = sub_26B4D4400();
  *&v1229 = sub_26B4D4408();
  *(&v1229 + 1) = sub_26B4D4414();
  *&v1152 = v590;
  *(&v1152 + 1) = v591;
  *(&v1075 + 1) = v1314;
  *&v1075 = v1326;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B55F930, v584, v586, v587, 0, 0, v1428, v1421 + 7944, v596 & 1, v597 & 1, v1075, v1152, v1229, v593, &v1427, &v1426, 0, 0, &v1422);
  v598 = swift_allocObject();
  *(v598 + 16) = xmmword_26B545100;
  v599 = swift_allocObject();
  *(v599 + 16) = xmmword_26B545100;
  *(v599 + 32) = 0xD000000000000017;
  *(v599 + 40) = 0x800000026B55F990;
  *(v598 + 32) = v599;
  *(v598 + 40) = 0;
  v600 = swift_allocObject();
  *(v600 + 16) = xmmword_26B545100;
  *(v600 + 32) = 0xD000000000000025;
  *(v600 + 40) = 0x800000026B55F9B0;
  *(v600 + 48) = 0;
  v601 = swift_allocObject();
  *(v601 + 16) = xmmword_26B545100;
  *(v601 + 32) = 0xD00000000000002DLL;
  *(v601 + 40) = 0x800000026B55EF40;
  *(v601 + 48) = 0;
  v1428[0] = 0;
  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_26B545140;
  *(v602 + 32) = 84017408;
  *(v602 + 36) = 8;
  v1315 = sub_26B470D98(v602);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1285 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1285 = MEMORY[0x277D84FA0];
  }

  v603 = swift_allocObject();
  *(v603 + 16) = xmmword_26B545100;
  *(v603 + 32) = 3;
  v604 = sub_26B470D98(v603);

  v605 = swift_allocObject();
  *(v605 + 16) = xmmword_26B5450C0;
  *(v605 + 32) = *v1418;
  *(v605 + 40) = 1;
  *(v605 + 48) = *v1418;
  *(v605 + 56) = 3;
  *(v605 + 64) = *v1418;
  *(v605 + 72) = 8;
  *(v605 + 80) = 0x403A000000000000;
  *(v605 + 88) = 10;
  v606 = swift_allocObject();
  *(v606 + 16) = xmmword_26B545100;
  *(v606 + 32) = 28;
  v607 = sub_26B470F10(v606);

  v1427 = 4;
  v1426 = 4;
  v608.value._countAndFlagsBits = 0x536B616570536F76;
  v608.value._object = 0xEE007972616D6D75;
  v609.value._object = 0x800000026B55FA00;
  v609.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v608, v609);
  v1422 = v1424;
  v1423 = v1425;
  v610 = sub_26B4CE5C8();
  v611 = sub_26B4D4400();
  *&v1230 = sub_26B4D4408();
  *(&v1230 + 1) = sub_26B4D4414();
  *&v1153 = v604;
  *(&v1153 + 1) = v605;
  *(&v1076 + 1) = v1285;
  *&v1076 = v1315;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55F9E0, v598, v600, v601, 0, 0, v1428, v1421 + 8128, v610 & 1, v611 & 1, v1076, v1153, v1230, v607, &v1427, &v1426, 0, 0, &v1422);
  v612 = swift_allocObject();
  *(v612 + 16) = xmmword_26B545100;
  v613 = swift_allocObject();
  *(v613 + 16) = xmmword_26B545100;
  *(v613 + 32) = 0xD000000000000017;
  *(v613 + 40) = 0x800000026B55FA20;
  *(v612 + 32) = v613;
  *(v612 + 40) = 0;
  v614 = swift_allocObject();
  *(v614 + 16) = xmmword_26B545100;
  *(v614 + 32) = 0xD00000000000001DLL;
  *(v614 + 40) = 0x800000026B55FA40;
  *(v614 + 48) = 0;
  v615 = swift_allocObject();
  *(v615 + 16) = xmmword_26B545100;
  *(v615 + 32) = 0xD00000000000002DLL;
  *(v615 + 40) = 0x800000026B55EF40;
  *(v615 + 48) = 0;
  v1428[0] = 0;
  v616 = swift_allocObject();
  *(v616 + 16) = xmmword_26B545140;
  *(v616 + 32) = 84017408;
  *(v616 + 36) = 8;
  v1338 = sub_26B470D98(v616);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1316 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1316 = MEMORY[0x277D84FA0];
  }

  v617 = swift_allocObject();
  *(v617 + 16) = xmmword_26B545100;
  *(v617 + 32) = 3;
  v618 = sub_26B470D98(v617);

  v619 = swift_allocObject();
  *(v619 + 16) = xmmword_26B5450C0;
  *(v619 + 32) = *v1418;
  *(v619 + 40) = 1;
  *(v619 + 48) = *v1418;
  *(v619 + 56) = 3;
  *(v619 + 64) = *v1418;
  *(v619 + 72) = 8;
  *(v619 + 80) = 0x403A000000000000;
  *(v619 + 88) = 10;
  v620 = swift_allocObject();
  *(v620 + 16) = xmmword_26B545100;
  *(v620 + 32) = 28;
  v621 = sub_26B470F10(v620);

  v1427 = 4;
  v1426 = 4;
  v622.value._countAndFlagsBits = 0x7053706F74536F76;
  v622.value._object = 0xEE00676E696B6165;
  v623.value._countAndFlagsBits = 0x6C65636E61436F76;
  v623.value._object = 0xEE00686365657053;
  Action.init(_:mac:)(v622, v623);
  v1422 = v1424;
  v1423 = v1425;
  v624 = sub_26B4CE5C8();
  v625 = sub_26B4D4400();
  *&v1231 = sub_26B4D4408();
  *(&v1231 + 1) = sub_26B4D4414();
  *&v1154 = v618;
  *(&v1154 + 1) = v619;
  *(&v1077 + 1) = v1316;
  *&v1077 = v1338;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B55FA60, v612, v614, v615, 0, 0, v1428, v1421 + 8312, v624 & 1, v625 & 1, v1077, v1154, v1231, v621, &v1427, &v1426, 0, 0, &v1422);
  v626 = swift_allocObject();
  *(v626 + 16) = xmmword_26B545100;
  v627 = swift_allocObject();
  *(v627 + 16) = xmmword_26B545100;
  *(v627 + 32) = 0xD000000000000021;
  *(v627 + 40) = 0x800000026B55FA80;
  *(v626 + 32) = v627;
  *(v626 + 40) = 0;
  v628 = swift_allocObject();
  *(v628 + 16) = xmmword_26B545100;
  *(v628 + 32) = 0xD000000000000022;
  *(v628 + 40) = 0x800000026B55FAB0;
  *(v628 + 48) = 0;
  v629 = swift_allocObject();
  *(v629 + 16) = xmmword_26B545100;
  *(v629 + 32) = 0xD00000000000002DLL;
  *(v629 + 40) = 0x800000026B55EF40;
  *(v629 + 48) = 0;
  v1428[0] = 0;
  v630 = swift_allocObject();
  *(v630 + 16) = xmmword_26B5450C0;
  *(v630 + 32) = 134545921;
  v1339 = sub_26B470D98(v630);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1327 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1327 = MEMORY[0x277D84FA0];
  }

  v631 = swift_allocObject();
  *(v631 + 16) = xmmword_26B545120;
  *(v631 + 32) = 768;
  v632 = sub_26B470D98(v631);

  v633 = swift_allocObject();
  *(v633 + 16) = xmmword_26B5450D0;
  *(v633 + 32) = *v1418;
  *(v633 + 40) = 3;
  *(v633 + 48) = *v1418;
  *(v633 + 56) = 8;
  *(v633 + 64) = 0x403A000000000000;
  *(v633 + 72) = 10;
  v634 = swift_allocObject();
  *(v634 + 16) = xmmword_26B545100;
  *(v634 + 32) = 28;
  v635 = sub_26B470F10(v634);

  v1427 = 4;
  v1426 = 4;
  v636.value._object = 0x800000026B55FB00;
  v636.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v636, 0);
  v1422 = v1424;
  v1423 = v1425;
  v637 = sub_26B4CE5C8();
  v638 = sub_26B4D4400();
  *&v1232 = sub_26B4D4408();
  *(&v1232 + 1) = sub_26B4D4414();
  *&v1155 = v632;
  *(&v1155 + 1) = v633;
  *(&v1078 + 1) = v1327;
  *&v1078 = v1339;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B55FAE0, v626, v628, v629, 0, 0, v1428, v1421 + 8496, v637 & 1, v638 & 1, v1078, v1155, v1232, v635, &v1427, &v1426, 0, 0, &v1422);
  v639 = swift_allocObject();
  *(v639 + 16) = xmmword_26B545100;
  v640 = swift_allocObject();
  *(v640 + 16) = xmmword_26B545100;
  *(v640 + 32) = 0xD00000000000001BLL;
  *(v640 + 40) = 0x800000026B55FB20;
  *(v639 + 32) = v640;
  *(v639 + 40) = 0;
  v641 = swift_allocObject();
  *(v641 + 16) = xmmword_26B545100;
  *(v641 + 32) = 0xD000000000000033;
  *(v641 + 40) = 0x800000026B55FB40;
  *(v641 + 48) = 0;
  v642 = swift_allocObject();
  *(v642 + 16) = xmmword_26B545100;
  *(v642 + 32) = 0xD000000000000028;
  *(v642 + 40) = 0x800000026B55FB80;
  *(v642 + 48) = 0;
  v1428[0] = 0;
  v643 = swift_allocObject();
  *(v643 + 16) = xmmword_26B5450C0;
  *(v643 + 32) = 134545921;
  v1317 = sub_26B470D98(v643);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1312 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1312 = MEMORY[0x277D84FA0];
  }

  v644 = swift_allocObject();
  *(v644 + 16) = xmmword_26B545120;
  *(v644 + 32) = 768;
  v645 = sub_26B470D98(v644);

  v646 = swift_allocObject();
  *(v646 + 16) = xmmword_26B5450D0;
  *(v646 + 32) = *v1418;
  *(v646 + 40) = 3;
  *(v646 + 48) = *v1418;
  *(v646 + 56) = 8;
  *(v646 + 64) = 0x403A000000000000;
  *(v646 + 72) = 10;
  v647 = swift_allocObject();
  *(v647 + 16) = xmmword_26B545100;
  *(v647 + 32) = 29;
  v648 = sub_26B470F10(v647);

  v1427 = 4;
  v1426 = 4;
  v649.value._object = 0x800000026B55FBD0;
  v649.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v649, 0);
  v1422 = v1424;
  v1423 = v1425;
  v650 = sub_26B4CE5C8();
  v651 = sub_26B4D4400();
  *&v1233 = sub_26B4D4408();
  *(&v1233 + 1) = sub_26B4D4414();
  *&v1156 = v645;
  *(&v1156 + 1) = v646;
  *(&v1079 + 1) = v1312;
  *&v1079 = v1317;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FBB0, v639, v641, v642, 0, 0, v1428, v1421 + 8680, v650 & 1, v651 & 1, v1079, v1156, v1233, v648, &v1427, &v1426, 0, 0, &v1422);
  v652 = swift_allocObject();
  *(v652 + 16) = xmmword_26B545100;
  v653 = swift_allocObject();
  *(v653 + 16) = xmmword_26B545100;
  *(v653 + 32) = 0xD00000000000001BLL;
  *(v653 + 40) = 0x800000026B55FBF0;
  *(v652 + 32) = v653;
  *(v652 + 40) = 0;
  v654 = swift_allocObject();
  *(v654 + 16) = xmmword_26B545100;
  *(v654 + 32) = 0xD000000000000033;
  *(v654 + 40) = 0x800000026B55FC10;
  *(v654 + 48) = 0;
  v655 = swift_allocObject();
  *(v655 + 16) = xmmword_26B545100;
  *(v655 + 32) = 0xD000000000000028;
  *(v655 + 40) = 0x800000026B55FB80;
  *(v655 + 48) = 0;
  v1428[0] = 0;
  v656 = swift_allocObject();
  *(v656 + 16) = xmmword_26B5450C0;
  *(v656 + 32) = 134545921;
  v1328 = sub_26B470D98(v656);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1318 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1318 = MEMORY[0x277D84FA0];
  }

  v657 = swift_allocObject();
  *(v657 + 16) = xmmword_26B545120;
  *(v657 + 32) = 768;
  v658 = sub_26B470D98(v657);

  v659 = swift_allocObject();
  *(v659 + 16) = xmmword_26B5450D0;
  *(v659 + 32) = *v1418;
  *(v659 + 40) = 3;
  *(v659 + 48) = *v1418;
  *(v659 + 56) = 8;
  *(v659 + 64) = 0x403A000000000000;
  *(v659 + 72) = 10;
  v660 = swift_allocObject();
  *(v660 + 16) = xmmword_26B545100;
  *(v660 + 32) = 29;
  v661 = sub_26B470F10(v660);

  v1427 = 4;
  v1426 = 4;
  v662.value._object = 0x800000026B55FC70;
  v662.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v662, 0);
  v1422 = v1424;
  v1423 = v1425;
  v663 = sub_26B4CE5C8();
  v664 = sub_26B4D4400();
  *&v1234 = sub_26B4D4408();
  *(&v1234 + 1) = sub_26B4D4414();
  *&v1157 = v658;
  *(&v1157 + 1) = v659;
  *(&v1080 + 1) = v1318;
  *&v1080 = v1328;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FC50, v652, v654, v655, 0, 0, v1428, v1421 + 8864, v663 & 1, v664 & 1, v1080, v1157, v1234, v661, &v1427, &v1426, 0, 0, &v1422);
  v665 = swift_allocObject();
  *(v665 + 16) = xmmword_26B545100;
  v666 = swift_allocObject();
  *(v666 + 16) = xmmword_26B545100;
  *(v666 + 32) = 0xD00000000000001BLL;
  *(v666 + 40) = 0x800000026B55FC90;
  *(v665 + 32) = v666;
  *(v665 + 40) = 0;
  v667 = swift_allocObject();
  *(v667 + 16) = xmmword_26B545100;
  *(v667 + 32) = 0xD00000000000002CLL;
  *(v667 + 40) = 0x800000026B55FCB0;
  *(v667 + 48) = 0;
  v668 = swift_allocObject();
  *(v668 + 16) = xmmword_26B545100;
  *(v668 + 32) = 0xD000000000000028;
  *(v668 + 40) = 0x800000026B55FB80;
  *(v668 + 48) = 0;
  v1428[0] = 1;
  v669 = swift_allocObject();
  *(v669 + 16) = xmmword_26B5450C0;
  *(v669 + 32) = 134545921;
  v1329 = sub_26B470D98(v669);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1319 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1319 = MEMORY[0x277D84FA0];
  }

  v670 = swift_allocObject();
  *(v670 + 16) = xmmword_26B545120;
  *(v670 + 32) = 768;
  v671 = sub_26B470D98(v670);

  v672 = swift_allocObject();
  *(v672 + 16) = xmmword_26B5450D0;
  *(v672 + 32) = *v1418;
  *(v672 + 40) = 3;
  *(v672 + 48) = *v1418;
  *(v672 + 56) = 8;
  *(v672 + 64) = 0x403A000000000000;
  *(v672 + 72) = 10;
  v673 = swift_allocObject();
  *(v673 + 16) = xmmword_26B545100;
  *(v673 + 32) = 29;
  v674 = sub_26B470F10(v673);

  v1427 = 4;
  v1426 = 4;
  v675.value._object = 0x800000026B55FD00;
  v675.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v675, 0);
  v1422 = v1424;
  v1423 = v1425;
  v676 = sub_26B4CE5C8();
  v677 = sub_26B4D4400();
  *&v1235 = sub_26B4D4408();
  *(&v1235 + 1) = sub_26B4D4414();
  *&v1158 = v671;
  *(&v1158 + 1) = v672;
  *(&v1081 + 1) = v1319;
  *&v1081 = v1329;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FCE0, v665, v667, v668, 0, 0, v1428, v1421 + 9048, v676 & 1, v677 & 1, v1081, v1158, v1235, v674, &v1427, &v1426, 0, 0, &v1422);
  v678 = swift_allocObject();
  *(v678 + 16) = xmmword_26B545100;
  v679 = swift_allocObject();
  *(v679 + 16) = xmmword_26B545100;
  *(v679 + 32) = 0xD00000000000001BLL;
  *(v679 + 40) = 0x800000026B55FD20;
  *(v678 + 32) = v679;
  *(v678 + 40) = 0;
  v680 = swift_allocObject();
  *(v680 + 16) = xmmword_26B545100;
  *(v680 + 32) = 0xD00000000000002BLL;
  *(v680 + 40) = 0x800000026B55FD40;
  *(v680 + 48) = 0;
  v681 = swift_allocObject();
  *(v681 + 16) = xmmword_26B545100;
  *(v681 + 32) = 0xD000000000000028;
  *(v681 + 40) = 0x800000026B55FB80;
  *(v681 + 48) = 0;
  v1428[0] = 1;
  v682 = swift_allocObject();
  *(v682 + 16) = xmmword_26B5450C0;
  *(v682 + 32) = 134545921;
  v1330 = sub_26B470D98(v682);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1320 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1320 = MEMORY[0x277D84FA0];
  }

  v683 = swift_allocObject();
  *(v683 + 16) = xmmword_26B545120;
  *(v683 + 32) = 768;
  v684 = sub_26B470D98(v683);

  v685 = swift_allocObject();
  *(v685 + 16) = xmmword_26B5450D0;
  *(v685 + 32) = *v1418;
  *(v685 + 40) = 3;
  *(v685 + 48) = *v1418;
  *(v685 + 56) = 8;
  *(v685 + 64) = 0x403A000000000000;
  *(v685 + 72) = 10;
  v686 = swift_allocObject();
  *(v686 + 16) = xmmword_26B545100;
  *(v686 + 32) = 29;
  v687 = sub_26B470F10(v686);

  v1427 = 4;
  v1426 = 4;
  v688.value._object = 0x800000026B55FD90;
  v688.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v688, 0);
  v1422 = v1424;
  v1423 = v1425;
  v689 = sub_26B4CE5C8();
  v690 = sub_26B4D4400();
  *&v1236 = sub_26B4D4408();
  *(&v1236 + 1) = sub_26B4D4414();
  *&v1159 = v684;
  *(&v1159 + 1) = v685;
  *(&v1082 + 1) = v1320;
  *&v1082 = v1330;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B55FD70, v678, v680, v681, 0, 0, v1428, v1421 + 9232, v689 & 1, v690 & 1, v1082, v1159, v1236, v687, &v1427, &v1426, 0, 0, &v1422);
  v691 = swift_allocObject();
  *(v691 + 16) = xmmword_26B545100;
  v692 = swift_allocObject();
  *(v692 + 16) = xmmword_26B545100;
  *(v692 + 32) = 0x776F64206D6F6F5ALL;
  *(v692 + 40) = 0xE90000000000006ELL;
  *(v691 + 32) = v692;
  *(v691 + 40) = 0;
  v693 = swift_allocObject();
  *(v693 + 16) = xmmword_26B545100;
  *(v693 + 32) = 0xD000000000000013;
  *(v693 + 40) = 0x800000026B55FDB0;
  *(v693 + 48) = 0;
  v694 = swift_allocObject();
  *(v694 + 16) = xmmword_26B545100;
  *(v694 + 32) = 0xD000000000000028;
  *(v694 + 40) = 0x800000026B55FB80;
  *(v694 + 48) = 0;
  v1428[0] = 0;
  v695 = swift_allocObject();
  *(v695 + 16) = xmmword_26B5450C0;
  *(v695 + 32) = 134545921;
  v1331 = sub_26B470D98(v695);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1321 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1321 = MEMORY[0x277D84FA0];
  }

  v696 = swift_allocObject();
  *(v696 + 16) = xmmword_26B545120;
  *(v696 + 32) = 768;
  v697 = sub_26B470D98(v696);

  v698 = swift_allocObject();
  *(v698 + 16) = xmmword_26B5450D0;
  *(v698 + 32) = *v1418;
  *(v698 + 40) = 3;
  *(v698 + 48) = *v1418;
  *(v698 + 56) = 8;
  *(v698 + 64) = 0x403A000000000000;
  *(v698 + 72) = 10;
  v699 = swift_allocObject();
  *(v699 + 16) = xmmword_26B545100;
  *(v699 + 32) = 29;
  v700 = sub_26B470F10(v699);

  v1427 = 4;
  v1426 = 4;
  v701.value._countAndFlagsBits = 0x446D6F6F5A6E6170;
  v701.value._object = 0xEB000000006E776FLL;
  Action.init(_:mac:)(v701, 0);
  v1422 = v1424;
  v1423 = v1425;
  v702 = sub_26B4CE5C8();
  v703 = sub_26B4D4400();
  *&v1237 = sub_26B4D4408();
  *(&v1237 + 1) = sub_26B4D4414();
  *&v1160 = v697;
  *(&v1160 + 1) = v698;
  *(&v1083 + 1) = v1321;
  *&v1083 = v1331;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FDD0, v691, v693, v694, 0, 0, v1428, v1421 + 9416, v702 & 1, v703 & 1, v1083, v1160, v1237, v700, &v1427, &v1426, 0, 0, &v1422);
  v704 = swift_allocObject();
  *(v704 + 16) = xmmword_26B545100;
  v705 = swift_allocObject();
  *(v705 + 16) = xmmword_26B545100;
  *(v705 + 32) = 0x7075206D6F6F5ALL;
  *(v705 + 40) = 0xE700000000000000;
  *(v704 + 32) = v705;
  *(v704 + 40) = 0;
  v706 = swift_allocObject();
  *(v706 + 16) = xmmword_26B545100;
  *(v706 + 32) = 0xD000000000000011;
  *(v706 + 40) = 0x800000026B55FDF0;
  *(v706 + 48) = 0;
  v707 = swift_allocObject();
  *(v707 + 16) = xmmword_26B545100;
  *(v707 + 32) = 0xD000000000000028;
  *(v707 + 40) = 0x800000026B55FB80;
  *(v707 + 48) = 0;
  v1428[0] = 0;
  v708 = swift_allocObject();
  *(v708 + 16) = xmmword_26B5450C0;
  *(v708 + 32) = 134545921;
  v1332 = sub_26B470D98(v708);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1322 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1322 = MEMORY[0x277D84FA0];
  }

  v709 = swift_allocObject();
  *(v709 + 16) = xmmword_26B545120;
  *(v709 + 32) = 768;
  v710 = sub_26B470D98(v709);

  v711 = swift_allocObject();
  *(v711 + 16) = xmmword_26B5450D0;
  *(v711 + 32) = *v1418;
  *(v711 + 40) = 3;
  *(v711 + 48) = *v1418;
  *(v711 + 56) = 8;
  *(v711 + 64) = 0x403A000000000000;
  *(v711 + 72) = 10;
  v712 = swift_allocObject();
  *(v712 + 16) = xmmword_26B545100;
  *(v712 + 32) = 29;
  v713 = sub_26B470F10(v712);

  v1427 = 4;
  v1426 = 4;
  v714.value._countAndFlagsBits = 0x556D6F6F5A6E6170;
  v714.value._object = 0xE900000000000070;
  Action.init(_:mac:)(v714, 0);
  v1422 = v1424;
  v1423 = v1425;
  v715 = sub_26B4CE5C8();
  v716 = sub_26B4D4400();
  *&v1238 = sub_26B4D4408();
  *(&v1238 + 1) = sub_26B4D4414();
  *&v1161 = v710;
  *(&v1161 + 1) = v711;
  *(&v1084 + 1) = v1322;
  *&v1084 = v1332;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000010, 0x800000026B55FE10, v704, v706, v707, 0, 0, v1428, v1421 + 9600, v715 & 1, v716 & 1, v1084, v1161, v1238, v713, &v1427, &v1426, 0, 0, &v1422);
  v717 = swift_allocObject();
  *(v717 + 16) = xmmword_26B545100;
  v718 = swift_allocObject();
  *(v718 + 16) = xmmword_26B545100;
  *(v718 + 32) = 0x66656C206D6F6F5ALL;
  *(v718 + 40) = 0xE900000000000074;
  *(v717 + 32) = v718;
  *(v717 + 40) = 0;
  v719 = swift_allocObject();
  *(v719 + 16) = xmmword_26B545100;
  *(v719 + 32) = 0xD000000000000013;
  *(v719 + 40) = 0x800000026B55FE30;
  *(v719 + 48) = 0;
  v720 = swift_allocObject();
  *(v720 + 16) = xmmword_26B545100;
  *(v720 + 32) = 0xD000000000000028;
  *(v720 + 40) = 0x800000026B55FB80;
  *(v720 + 48) = 0;
  v1428[0] = 0;
  v721 = swift_allocObject();
  *(v721 + 16) = xmmword_26B5450C0;
  *(v721 + 32) = 134545921;
  v1333 = sub_26B470D98(v721);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1323 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1323 = MEMORY[0x277D84FA0];
  }

  v722 = swift_allocObject();
  *(v722 + 16) = xmmword_26B545120;
  *(v722 + 32) = 768;
  v723 = sub_26B470D98(v722);

  v724 = swift_allocObject();
  *(v724 + 16) = xmmword_26B5450D0;
  *(v724 + 32) = *v1418;
  *(v724 + 40) = 3;
  *(v724 + 48) = *v1418;
  *(v724 + 56) = 8;
  *(v724 + 64) = 0x403A000000000000;
  *(v724 + 72) = 10;
  v725 = swift_allocObject();
  *(v725 + 16) = xmmword_26B545100;
  *(v725 + 32) = 29;
  v726 = sub_26B470F10(v725);

  v1427 = 4;
  v1426 = 4;
  v727.value._countAndFlagsBits = 0x4C6D6F6F5A6E6170;
  v727.value._object = 0xEB00000000746665;
  Action.init(_:mac:)(v727, 0);
  v1422 = v1424;
  v1423 = v1425;
  v728 = sub_26B4CE5C8();
  v729 = sub_26B4D4400();
  *&v1239 = sub_26B4D4408();
  *(&v1239 + 1) = sub_26B4D4414();
  *&v1162 = v723;
  *(&v1162 + 1) = v724;
  *(&v1085 + 1) = v1323;
  *&v1085 = v1333;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FE50, v717, v719, v720, 0, 0, v1428, v1421 + 9784, v728 & 1, v729 & 1, v1085, v1162, v1239, v726, &v1427, &v1426, 0, 0, &v1422);
  v730 = swift_allocObject();
  *(v730 + 16) = xmmword_26B545100;
  v731 = swift_allocObject();
  *(v731 + 16) = xmmword_26B545100;
  *(v731 + 32) = 0x676972206D6F6F5ALL;
  *(v731 + 40) = 0xEA00000000007468;
  *(v730 + 32) = v731;
  *(v730 + 40) = 0;
  v732 = swift_allocObject();
  *(v732 + 16) = xmmword_26B545100;
  *(v732 + 32) = 0xD000000000000014;
  *(v732 + 40) = 0x800000026B55FE70;
  *(v732 + 48) = 0;
  v733 = swift_allocObject();
  *(v733 + 16) = xmmword_26B545100;
  *(v733 + 32) = 0xD000000000000028;
  *(v733 + 40) = 0x800000026B55FB80;
  *(v733 + 48) = 0;
  v1428[0] = 0;
  v734 = swift_allocObject();
  *(v734 + 16) = xmmword_26B5450C0;
  *(v734 + 32) = 134545921;
  v1416 = sub_26B470D98(v734);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1349 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1349 = MEMORY[0x277D84FA0];
  }

  v735 = swift_allocObject();
  *(v735 + 16) = xmmword_26B545120;
  *(v735 + 32) = 768;
  v736 = sub_26B470D98(v735);

  v737 = swift_allocObject();
  *(v737 + 16) = xmmword_26B5450D0;
  *(v737 + 32) = *v1418;
  *(v737 + 40) = 3;
  *(v737 + 48) = *v1418;
  *(v737 + 56) = 8;
  *(v737 + 64) = 0x403A000000000000;
  *(v737 + 72) = 10;
  v738 = swift_allocObject();
  *(v738 + 16) = xmmword_26B545100;
  *(v738 + 32) = 29;
  v739 = sub_26B470F10(v738);

  v1427 = 4;
  v1426 = 4;
  v740.value._countAndFlagsBits = 0x526D6F6F5A6E6170;
  v740.value._object = 0xEC00000074686769;
  Action.init(_:mac:)(v740, 0);
  v1422 = v1424;
  v1423 = v1425;
  v741 = sub_26B4CE5C8();
  v742 = sub_26B4D4400();
  *&v1240 = sub_26B4D4408();
  *(&v1240 + 1) = sub_26B4D4414();
  *&v1163 = v736;
  *(&v1163 + 1) = v737;
  *(&v1086 + 1) = v1349;
  *&v1086 = v1416;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B55FE90, v730, v732, v733, 0, 0, v1428, v1421 + 9968, v741 & 1, v742 & 1, v1086, v1163, v1240, v739, &v1427, &v1426, 0, 0, &v1422);
  v743 = swift_allocObject();
  *(v743 + 16) = xmmword_26B545100;
  v744 = swift_allocObject();
  *(v744 + 16) = xmmword_26B545100;
  *(v744 + 32) = 0xD000000000000012;
  *(v744 + 40) = 0x800000026B55FEB0;
  *(v743 + 32) = v744;
  *(v743 + 40) = 0;
  v745 = swift_allocObject();
  *(v745 + 16) = xmmword_26B545100;
  *(v745 + 32) = 0xD00000000000002ALL;
  *(v745 + 40) = 0x800000026B55FED0;
  *(v745 + 48) = 0;
  v746 = swift_allocObject();
  *(v746 + 16) = xmmword_26B545100;
  *(v746 + 32) = 0xD00000000000003DLL;
  *(v746 + 40) = 0x800000026B55FF00;
  *(v746 + 48) = 0;
  v1428[0] = 0;
  v747 = swift_allocObject();
  *(v747 + 16) = xmmword_26B5450D0;
  *(v747 + 32) = 513;
  *(v747 + 34) = 8;
  v1417 = sub_26B470D98(v747);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1350 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1350 = MEMORY[0x277D84FA0];
  }

  v748 = swift_allocObject();
  *(v748 + 16) = xmmword_26B5450D0;
  *(v748 + 32) = 768;
  *(v748 + 34) = 5;
  v749 = sub_26B470D98(v748);

  v750 = swift_allocObject();
  *(v750 + 16) = xmmword_26B545120;
  *(v750 + 32) = *v1418;
  *(v750 + 40) = 3;
  *(v750 + 48) = 0x403A000000000000;
  *(v750 + 56) = 10;
  v751 = swift_allocObject();
  *(v751 + 16) = xmmword_26B545100;
  *(v751 + 32) = 23;
  v752 = sub_26B470F10(v751);

  v1427 = 4;
  v1426 = 4;
  v753.value._object = 0x800000026B55FF60;
  v753.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v753, 0);
  v1422 = v1424;
  v1423 = v1425;
  v754 = sub_26B4CE5C8();
  v755 = sub_26B4D4400();
  *&v1241 = sub_26B4D4408();
  *(&v1241 + 1) = sub_26B4D4414();
  *&v1164 = v749;
  *(&v1164 + 1) = v750;
  *(&v1087 + 1) = v1350;
  *&v1087 = v1417;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FF40, v743, v745, v746, 0, 0, v1428, v1421 + 10152, v754 & 1, v755 & 1, v1087, v1164, v1241, v752, &v1427, &v1426, 0, 0, &v1422);
  v756 = swift_allocObject();
  *(v756 + 16) = xmmword_26B545100;
  v757 = swift_allocObject();
  *(v757 + 16) = xmmword_26B545120;
  *(v757 + 32) = 0xD000000000000012;
  *(v757 + 40) = 0x800000026B55FF80;
  *(v757 + 48) = 0xD000000000000012;
  *(v757 + 56) = 0x800000026B55FFA0;
  *(v756 + 32) = v757;
  *(v756 + 40) = 0;
  v758 = swift_allocObject();
  *(v758 + 16) = xmmword_26B545100;
  *(v758 + 32) = 0xD00000000000001FLL;
  *(v758 + 40) = 0x800000026B55FFC0;
  *(v758 + 48) = 0;
  v759 = swift_allocObject();
  *(v759 + 16) = xmmword_26B545100;
  *(v759 + 32) = 0xD00000000000002DLL;
  *(v759 + 40) = 0x800000026B55EF40;
  *(v759 + 48) = 0;
  v1428[0] = 0;
  v760 = swift_allocObject();
  *(v760 + 16) = xmmword_26B545100;
  *(v760 + 32) = 0;
  v1351 = sub_26B470D98(v760);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1340 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1340 = MEMORY[0x277D84FA0];
  }

  v761 = swift_allocObject();
  *(v761 + 16) = xmmword_26B545140;
  *(v761 + 32) = 84083201;
  *(v761 + 36) = 8;
  v762 = sub_26B470D98(v761);

  v763 = swift_allocObject();
  *(v763 + 16) = xmmword_26B545100;
  *(v763 + 32) = *v1418;
  *(v763 + 40) = 1;
  v764 = swift_allocObject();
  *(v764 + 16) = xmmword_26B545100;
  *(v764 + 32) = 28;
  v765 = sub_26B470F10(v764);

  v1427 = 4;
  v1426 = 4;
  v766.value._object = 0xEC0000006E497463;
  v766.value._countAndFlagsBits = 0x617265746E496F76;
  Action.init(_:mac:)(v766, 0);
  v1422 = v1424;
  v1423 = v1425;
  v767 = sub_26B4CE5C8();
  v768 = sub_26B4D4400();
  *&v1242 = sub_26B4D4408();
  *(&v1242 + 1) = sub_26B4D4414();
  *&v1165 = v762;
  *(&v1165 + 1) = v763;
  *(&v1088 + 1) = v1340;
  *&v1088 = v1351;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000012, 0x800000026B55FFE0, v756, v758, v759, 0, 0, v1428, v1421 + 10336, v767 & 1, v768 & 1, v1088, v1165, v1242, v765, &v1427, &v1426, 0, 0, &v1422);
  v769 = swift_allocObject();
  *(v769 + 16) = xmmword_26B545100;
  v770 = swift_allocObject();
  *(v770 + 16) = xmmword_26B5450D0;
  *(v770 + 32) = 0xD00000000000001ALL;
  *(v770 + 40) = 0x800000026B560000;
  *(v770 + 48) = 0xD000000000000017;
  *(v770 + 56) = 0x800000026B560020;
  *(v770 + 64) = 0xD000000000000013;
  *(v770 + 72) = 0x800000026B560040;
  *(v769 + 32) = v770;
  *(v769 + 40) = 0;
  v771 = swift_allocObject();
  *(v771 + 16) = xmmword_26B545100;
  *(v771 + 32) = 0xD00000000000001ELL;
  *(v771 + 40) = 0x800000026B560060;
  *(v771 + 48) = 0;
  v772 = swift_allocObject();
  *(v772 + 16) = xmmword_26B545100;
  *(v772 + 32) = 0xD00000000000002DLL;
  *(v772 + 40) = 0x800000026B55EF40;
  *(v772 + 48) = 0;
  v1428[0] = 0;
  v773 = swift_allocObject();
  *(v773 + 16) = xmmword_26B545100;
  *(v773 + 32) = 0;
  v1375 = sub_26B470D98(v773);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1352 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1352 = MEMORY[0x277D84FA0];
  }

  v774 = swift_allocObject();
  *(v774 + 16) = xmmword_26B545140;
  *(v774 + 32) = 84083201;
  *(v774 + 36) = 8;
  v775 = sub_26B470D98(v774);

  v776 = swift_allocObject();
  *(v776 + 16) = xmmword_26B545100;
  *(v776 + 32) = *v1418;
  *(v776 + 40) = 1;
  v777 = swift_allocObject();
  *(v777 + 16) = xmmword_26B545100;
  *(v777 + 32) = 28;
  v778 = sub_26B470F10(v777);

  v1427 = 4;
  v1426 = 4;
  v779.value._object = 0xED000074754F7463;
  v779.value._countAndFlagsBits = 0x617265746E496F76;
  Action.init(_:mac:)(v779, 0);
  v1422 = v1424;
  v1423 = v1425;
  v780 = sub_26B4CE5C8();
  v781 = sub_26B4D4400();
  *&v1243 = sub_26B4D4408();
  *(&v1243 + 1) = sub_26B4D4414();
  *&v1166 = v775;
  *(&v1166 + 1) = v776;
  *(&v1089 + 1) = v1352;
  *&v1089 = v1375;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B560080, v769, v771, v772, 0, 0, v1428, v1421 + 10520, v780 & 1, v781 & 1, v1089, v1166, v1243, v778, &v1427, &v1426, 0, 0, &v1422);
  v782 = swift_allocObject();
  *(v782 + 16) = xmmword_26B545100;
  v783 = swift_allocObject();
  *(v783 + 16) = xmmword_26B545100;
  *(v783 + 32) = 0xD000000000000011;
  *(v783 + 40) = 0x800000026B5600A0;
  *(v782 + 32) = v783;
  *(v782 + 40) = 0;
  v784 = swift_allocObject();
  *(v784 + 16) = xmmword_26B545100;
  *(v784 + 32) = 0xD000000000000016;
  *(v784 + 40) = 0x800000026B5600C0;
  *(v784 + 48) = 0;
  v785 = swift_allocObject();
  *(v785 + 16) = xmmword_26B545100;
  *(v785 + 32) = 0xD00000000000002DLL;
  *(v785 + 40) = 0x800000026B55EF40;
  *(v785 + 48) = 0;
  v1428[0] = 0;
  v786 = swift_allocObject();
  *(v786 + 16) = xmmword_26B545100;
  *(v786 + 32) = 0;
  v1376 = sub_26B470D98(v786);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1353 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1353 = MEMORY[0x277D84FA0];
  }

  v787 = swift_allocObject();
  *(v787 + 16) = xmmword_26B545140;
  *(v787 + 32) = 84083201;
  *(v787 + 36) = 8;
  v788 = sub_26B470D98(v787);

  v789 = swift_allocObject();
  *(v789 + 16) = xmmword_26B545100;
  *(v789 + 32) = *v1418;
  *(v789 + 40) = 1;
  v790 = swift_allocObject();
  *(v790 + 16) = xmmword_26B545100;
  *(v790 + 32) = 28;
  v791 = sub_26B470F10(v790);

  v1427 = 4;
  v1426 = 4;
  v792.value._object = 0x800000026B560100;
  v792.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v792, 0);
  v1422 = v1424;
  v1423 = v1425;
  v793 = sub_26B4CE5C8();
  v794 = sub_26B4D4400();
  *&v1244 = sub_26B4D4408();
  *(&v1244 + 1) = sub_26B4D4414();
  *&v1167 = v788;
  *(&v1167 + 1) = v789;
  *(&v1090 + 1) = v1353;
  *&v1090 = v1376;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000015, 0x800000026B5600E0, v782, v784, v785, 0, 0, v1428, v1421 + 10704, v793 & 1, v794 & 1, v1090, v1167, v1244, v791, &v1427, &v1426, 0, 0, &v1422);
  v795 = swift_allocObject();
  *(v795 + 16) = xmmword_26B545100;
  v796 = swift_allocObject();
  *(v796 + 16) = xmmword_26B545100;
  *(v796 + 32) = 0xD000000000000016;
  *(v796 + 40) = 0x800000026B560120;
  *(v795 + 32) = v796;
  *(v795 + 40) = 0;
  v797 = swift_allocObject();
  *(v797 + 16) = xmmword_26B545100;
  *(v797 + 32) = 0xD00000000000001DLL;
  *(v797 + 40) = 0x800000026B560140;
  *(v797 + 48) = 0;
  v798 = swift_allocObject();
  *(v798 + 16) = xmmword_26B545100;
  *(v798 + 32) = 0xD00000000000002DLL;
  *(v798 + 40) = 0x800000026B55EF40;
  *(v798 + 48) = 0;
  v1428[0] = 0;
  v799 = swift_allocObject();
  *(v799 + 16) = xmmword_26B545100;
  *(v799 + 32) = 0;
  v1377 = sub_26B470D98(v799);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1354 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1354 = MEMORY[0x277D84FA0];
  }

  v800 = swift_allocObject();
  *(v800 + 16) = xmmword_26B545140;
  *(v800 + 32) = 84083201;
  *(v800 + 36) = 8;
  v801 = sub_26B470D98(v800);

  v802 = swift_allocObject();
  *(v802 + 16) = xmmword_26B545100;
  *(v802 + 32) = *v1418;
  *(v802 + 40) = 1;
  v803 = swift_allocObject();
  *(v803 + 16) = xmmword_26B545100;
  *(v803 + 32) = 28;
  v804 = sub_26B470F10(v803);

  v1427 = 4;
  v1426 = 4;
  v805.value._object = 0x800000026B560180;
  v805.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v805, 0);
  v1422 = v1424;
  v1423 = v1425;
  v806 = sub_26B4CE5C8();
  v807 = sub_26B4D4400();
  *&v1245 = sub_26B4D4408();
  *(&v1245 + 1) = sub_26B4D4414();
  *&v1168 = v801;
  *(&v1168 + 1) = v802;
  *(&v1091 + 1) = v1354;
  *&v1091 = v1377;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560160, v795, v797, v798, 0, 0, v1428, v1421 + 10888, v806 & 1, v807 & 1, v1091, v1168, v1245, v804, &v1427, &v1426, 0, 0, &v1422);
  v808 = swift_allocObject();
  *(v808 + 16) = xmmword_26B545100;
  v809 = swift_allocObject();
  *(v809 + 16) = xmmword_26B545100;
  *(v809 + 32) = 0xD000000000000012;
  *(v809 + 40) = 0x800000026B5601A0;
  *(v808 + 32) = v809;
  *(v808 + 40) = 0;
  v810 = swift_allocObject();
  *(v810 + 16) = xmmword_26B545100;
  *(v810 + 32) = 0xD000000000000017;
  *(v810 + 40) = 0x800000026B5601C0;
  *(v810 + 48) = 0;
  v811 = swift_allocObject();
  *(v811 + 16) = xmmword_26B545100;
  *(v811 + 32) = 0xD00000000000002DLL;
  *(v811 + 40) = 0x800000026B55EF40;
  *(v811 + 48) = 0;
  v1428[0] = 0;
  v812 = swift_allocObject();
  *(v812 + 16) = xmmword_26B545100;
  *(v812 + 32) = 0;
  v1378 = sub_26B470D98(v812);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1355 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1355 = MEMORY[0x277D84FA0];
  }

  v813 = swift_allocObject();
  *(v813 + 16) = xmmword_26B545140;
  *(v813 + 32) = 84083201;
  *(v813 + 36) = 8;
  v814 = sub_26B470D98(v813);

  v815 = swift_allocObject();
  *(v815 + 16) = xmmword_26B545100;
  *(v815 + 32) = *v1418;
  *(v815 + 40) = 1;
  v816 = swift_allocObject();
  *(v816 + 16) = xmmword_26B545100;
  *(v816 + 32) = 28;
  v817 = sub_26B470F10(v816);

  v1427 = 4;
  v1426 = 4;
  v818.value._object = 0x800000026B560200;
  v818.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v818, 0);
  v1422 = v1424;
  v1423 = v1425;
  v819 = sub_26B4CE5C8();
  v820 = sub_26B4D4400();
  *&v1246 = sub_26B4D4408();
  *(&v1246 + 1) = sub_26B4D4414();
  *&v1169 = v814;
  *(&v1169 + 1) = v815;
  *(&v1092 + 1) = v1355;
  *&v1092 = v1378;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B5601E0, v808, v810, v811, 0, 0, v1428, v1421 + 11072, v819 & 1, v820 & 1, v1092, v1169, v1246, v817, &v1427, &v1426, 0, 0, &v1422);
  v821 = swift_allocObject();
  *(v821 + 16) = xmmword_26B545100;
  v822 = swift_allocObject();
  *(v822 + 16) = xmmword_26B545100;
  *(v822 + 32) = 0xD000000000000019;
  *(v822 + 40) = 0x800000026B560220;
  *(v821 + 32) = v822;
  *(v821 + 40) = 0;
  v823 = swift_allocObject();
  *(v823 + 16) = xmmword_26B545100;
  *(v823 + 32) = 0xD00000000000002ELL;
  *(v823 + 40) = 0x800000026B560240;
  *(v823 + 48) = 0;
  v824 = swift_allocObject();
  *(v824 + 16) = xmmword_26B545100;
  *(v824 + 32) = 0xD00000000000002DLL;
  *(v824 + 40) = 0x800000026B55EF40;
  *(v824 + 48) = 0;
  v1428[0] = 0;
  v825 = swift_allocObject();
  *(v825 + 16) = xmmword_26B545100;
  *(v825 + 32) = 0;
  v1379 = sub_26B470D98(v825);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1356 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1356 = MEMORY[0x277D84FA0];
  }

  v826 = swift_allocObject();
  *(v826 + 16) = xmmword_26B545140;
  *(v826 + 32) = 84083201;
  *(v826 + 36) = 8;
  v827 = sub_26B470D98(v826);

  v828 = swift_allocObject();
  *(v828 + 16) = xmmword_26B545100;
  *(v828 + 32) = *v1418;
  *(v828 + 40) = 1;
  v829 = swift_allocObject();
  *(v829 + 16) = xmmword_26B545100;
  *(v829 + 32) = 28;
  v830 = sub_26B470F10(v829);

  v1427 = 4;
  v1426 = 4;
  v831.value._object = 0x800000026B560290;
  v831.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v831, 0);
  v1422 = v1424;
  v1423 = v1425;
  v832 = sub_26B4CE5C8();
  v833 = sub_26B4D4400();
  *&v1247 = sub_26B4D4408();
  *(&v1247 + 1) = sub_26B4D4414();
  *&v1170 = v827;
  *(&v1170 + 1) = v828;
  *(&v1093 + 1) = v1356;
  *&v1093 = v1379;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560270, v821, v823, v824, 0, 0, v1428, v1421 + 11256, v832 & 1, v833 & 1, v1093, v1170, v1247, v830, &v1427, &v1426, 0, 0, &v1422);
  v834 = swift_allocObject();
  *(v834 + 16) = xmmword_26B545100;
  v835 = swift_allocObject();
  *(v835 + 16) = xmmword_26B545100;
  *(v835 + 32) = 0xD00000000000001BLL;
  *(v835 + 40) = 0x800000026B5602B0;
  *(v834 + 32) = v835;
  *(v834 + 40) = 0;
  v836 = swift_allocObject();
  *(v836 + 16) = xmmword_26B545100;
  *(v836 + 32) = 0xD00000000000001CLL;
  *(v836 + 40) = 0x800000026B5602D0;
  *(v836 + 48) = 0;
  v837 = swift_allocObject();
  *(v837 + 16) = xmmword_26B545100;
  *(v837 + 32) = 0xD00000000000002DLL;
  *(v837 + 40) = 0x800000026B55EF40;
  *(v837 + 48) = 0;
  v1428[0] = 0;
  v838 = swift_allocObject();
  *(v838 + 16) = xmmword_26B545100;
  *(v838 + 32) = 0;
  v1380 = sub_26B470D98(v838);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1357 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1357 = MEMORY[0x277D84FA0];
  }

  v839 = swift_allocObject();
  *(v839 + 16) = xmmword_26B545140;
  *(v839 + 32) = 84083201;
  *(v839 + 36) = 8;
  v840 = sub_26B470D98(v839);

  v841 = swift_allocObject();
  *(v841 + 16) = xmmword_26B545100;
  *(v841 + 32) = *v1418;
  *(v841 + 40) = 1;
  v842 = swift_allocObject();
  *(v842 + 16) = xmmword_26B545100;
  *(v842 + 32) = 28;
  v843 = sub_26B470F10(v842);

  v1427 = 4;
  v1426 = 4;
  v844.value._object = 0x800000026B560310;
  v844.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v844, 0);
  v1422 = v1424;
  v1423 = v1425;
  v845 = sub_26B4CE5C8();
  v846 = sub_26B4D4400();
  *&v1248 = sub_26B4D4408();
  *(&v1248 + 1) = sub_26B4D4414();
  *&v1171 = v840;
  *(&v1171 + 1) = v841;
  *(&v1094 + 1) = v1357;
  *&v1094 = v1380;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B5602F0, v834, v836, v837, 0, 0, v1428, v1421 + 11440, v845 & 1, v846 & 1, v1094, v1171, v1248, v843, &v1427, &v1426, 0, 0, &v1422);
  v847 = swift_allocObject();
  *(v847 + 16) = xmmword_26B545100;
  v848 = swift_allocObject();
  *(v848 + 16) = xmmword_26B545100;
  *(v848 + 32) = 0x65764F6563696F56;
  *(v848 + 40) = 0xEF726F746F722072;
  *(v847 + 32) = v848;
  *(v847 + 40) = 0;
  v849 = swift_allocObject();
  *(v849 + 16) = xmmword_26B545100;
  *(v849 + 32) = 0xD000000000000019;
  *(v849 + 40) = 0x800000026B560330;
  *(v849 + 48) = 0;
  v850 = swift_allocObject();
  *(v850 + 16) = xmmword_26B545100;
  *(v850 + 32) = 0xD00000000000002DLL;
  *(v850 + 40) = 0x800000026B55EF40;
  *(v850 + 48) = 0;
  v1428[0] = 0;
  v851 = swift_allocObject();
  *(v851 + 16) = xmmword_26B545100;
  *(v851 + 32) = 0;
  v1381 = sub_26B470D98(v851);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1358 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1358 = MEMORY[0x277D84FA0];
  }

  v852 = swift_allocObject();
  *(v852 + 16) = xmmword_26B545140;
  *(v852 + 32) = 84083201;
  *(v852 + 36) = 8;
  v853 = sub_26B470D98(v852);

  v854 = swift_allocObject();
  *(v854 + 16) = xmmword_26B545100;
  *(v854 + 32) = *v1418;
  *(v854 + 40) = 1;
  v855 = swift_allocObject();
  *(v855 + 16) = xmmword_26B545100;
  *(v855 + 32) = 28;
  v856 = sub_26B470F10(v855);

  v1427 = 4;
  v1426 = 4;
  v857.value._countAndFlagsBits = 0x6F526E65704F6F76;
  v857.value._object = 0xEB00000000726F74;
  Action.init(_:mac:)(v857, 0);
  v1422 = v1424;
  v1423 = v1425;
  v858 = sub_26B4CE5C8();
  v859 = sub_26B4D4400();
  *&v1249 = sub_26B4D4408();
  *(&v1249 + 1) = sub_26B4D4414();
  *&v1172 = v853;
  *(&v1172 + 1) = v854;
  *(&v1095 + 1) = v1358;
  *&v1095 = v1381;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B560350, v847, v849, v850, 0, 0, v1428, v1421 + 11624, v858 & 1, v859 & 1, v1095, v1172, v1249, v856, &v1427, &v1426, 0, 0, &v1422);
  v860 = swift_allocObject();
  *(v860 + 16) = xmmword_26B545100;
  v861 = swift_allocObject();
  *(v861 + 16) = xmmword_26B545100;
  *(v861 + 32) = 0xD000000000000016;
  *(v861 + 40) = 0x800000026B560370;
  *(v860 + 32) = v861;
  *(v860 + 40) = 0;
  v862 = swift_allocObject();
  *(v862 + 16) = xmmword_26B545100;
  *(v862 + 32) = 0xD000000000000016;
  *(v862 + 40) = 0x800000026B560390;
  *(v862 + 48) = 0;
  v863 = swift_allocObject();
  *(v863 + 16) = xmmword_26B545100;
  *(v863 + 32) = 0xD00000000000002DLL;
  *(v863 + 40) = 0x800000026B55EF40;
  *(v863 + 48) = 0;
  v1428[0] = 0;
  v864 = swift_allocObject();
  *(v864 + 16) = xmmword_26B545100;
  *(v864 + 32) = 0;
  v1382 = sub_26B470D98(v864);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1359 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1359 = MEMORY[0x277D84FA0];
  }

  v865 = swift_allocObject();
  *(v865 + 16) = xmmword_26B545140;
  *(v865 + 32) = 84083201;
  *(v865 + 36) = 8;
  v866 = sub_26B470D98(v865);

  v867 = swift_allocObject();
  *(v867 + 16) = xmmword_26B545100;
  *(v867 + 32) = *v1418;
  *(v867 + 40) = 1;
  v868 = swift_allocObject();
  *(v868 + 16) = xmmword_26B545100;
  *(v868 + 32) = 28;
  v869 = sub_26B470F10(v868);

  v1427 = 4;
  v1426 = 4;
  v870.value._object = 0x800000026B5603D0;
  v870.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v870, 0);
  v1422 = v1424;
  v1423 = v1425;
  v871 = sub_26B4CE5C8();
  v872 = sub_26B4D4400();
  *&v1250 = sub_26B4D4408();
  *(&v1250 + 1) = sub_26B4D4414();
  *&v1173 = v866;
  *(&v1173 + 1) = v867;
  *(&v1096 + 1) = v1359;
  *&v1096 = v1382;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5603B0, v860, v862, v863, 0, 0, v1428, v1421 + 11808, v871 & 1, v872 & 1, v1096, v1173, v1250, v869, &v1427, &v1426, 0, 0, &v1422);
  v873 = swift_allocObject();
  *(v873 + 16) = xmmword_26B545100;
  v874 = swift_allocObject();
  *(v874 + 16) = xmmword_26B545100;
  *(v874 + 32) = 0xD00000000000001ALL;
  *(v874 + 40) = 0x800000026B5603F0;
  *(v873 + 32) = v874;
  *(v873 + 40) = 0;
  v875 = swift_allocObject();
  *(v875 + 16) = xmmword_26B545100;
  *(v875 + 32) = 0xD00000000000001ALL;
  *(v875 + 40) = 0x800000026B560410;
  *(v875 + 48) = 0;
  v876 = swift_allocObject();
  *(v876 + 16) = xmmword_26B545100;
  *(v876 + 32) = 0xD00000000000002DLL;
  *(v876 + 40) = 0x800000026B55EF40;
  *(v876 + 48) = 0;
  v1428[0] = 0;
  v877 = swift_allocObject();
  *(v877 + 16) = xmmword_26B545100;
  *(v877 + 32) = 0;
  v1383 = sub_26B470D98(v877);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1360 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1360 = MEMORY[0x277D84FA0];
  }

  v878 = swift_allocObject();
  *(v878 + 16) = xmmword_26B545140;
  *(v878 + 32) = 84083201;
  *(v878 + 36) = 8;
  v879 = sub_26B470D98(v878);

  v880 = swift_allocObject();
  *(v880 + 16) = xmmword_26B545100;
  *(v880 + 32) = *v1418;
  *(v880 + 40) = 1;
  v881 = swift_allocObject();
  *(v881 + 16) = xmmword_26B545100;
  *(v881 + 32) = 28;
  v882 = sub_26B470F10(v881);

  v1427 = 4;
  v1426 = 4;
  v883.value._object = 0x800000026B560450;
  v883.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v883, 0);
  v1422 = v1424;
  v1423 = v1425;
  v884 = sub_26B4CE5C8();
  v885 = sub_26B4D4400();
  *&v1251 = sub_26B4D4408();
  *(&v1251 + 1) = sub_26B4D4414();
  *&v1174 = v879;
  *(&v1174 + 1) = v880;
  *(&v1097 + 1) = v1360;
  *&v1097 = v1383;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B560430, v873, v875, v876, 0, 0, v1428, v1421 + 11992, v884 & 1, v885 & 1, v1097, v1174, v1251, v882, &v1427, &v1426, 0, 0, &v1422);
  v886 = swift_allocObject();
  *(v886 + 16) = xmmword_26B545100;
  v887 = swift_allocObject();
  *(v887 + 16) = xmmword_26B545100;
  *(v887 + 32) = 0xD000000000000013;
  *(v887 + 40) = 0x800000026B560470;
  *(v886 + 32) = v887;
  *(v886 + 40) = 0;
  v888 = swift_allocObject();
  *(v888 + 16) = xmmword_26B545100;
  *(v888 + 32) = 0xD000000000000013;
  *(v888 + 40) = 0x800000026B560490;
  *(v888 + 48) = 0;
  v889 = swift_allocObject();
  *(v889 + 16) = xmmword_26B545100;
  *(v889 + 32) = 0xD00000000000002DLL;
  *(v889 + 40) = 0x800000026B55EF40;
  *(v889 + 48) = 0;
  v1428[0] = 0;
  v890 = swift_allocObject();
  *(v890 + 16) = xmmword_26B545100;
  *(v890 + 32) = 0;
  v1384 = sub_26B470D98(v890);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1361 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1361 = MEMORY[0x277D84FA0];
  }

  v891 = swift_allocObject();
  *(v891 + 16) = xmmword_26B545140;
  *(v891 + 32) = 84083201;
  *(v891 + 36) = 8;
  v892 = sub_26B470D98(v891);

  v893 = swift_allocObject();
  *(v893 + 16) = xmmword_26B545100;
  *(v893 + 32) = *v1418;
  *(v893 + 40) = 1;
  v894 = swift_allocObject();
  *(v894 + 16) = xmmword_26B545100;
  *(v894 + 32) = 28;
  v895 = sub_26B470F10(v894);

  v1427 = 4;
  v1426 = 4;
  v896.value._object = 0x800000026B5604D0;
  v896.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v896, 0);
  v1422 = v1424;
  v1423 = v1425;
  v897 = sub_26B4CE5C8();
  v898 = sub_26B4D4400();
  *&v1252 = sub_26B4D4408();
  *(&v1252 + 1) = sub_26B4D4414();
  *&v1175 = v892;
  *(&v1175 + 1) = v893;
  *(&v1098 + 1) = v1361;
  *&v1098 = v1384;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B5604B0, v886, v888, v889, 0, 0, v1428, v1421 + 12176, v897 & 1, v898 & 1, v1098, v1175, v1252, v895, &v1427, &v1426, 0, 0, &v1422);
  v899 = swift_allocObject();
  *(v899 + 16) = xmmword_26B545100;
  v900 = swift_allocObject();
  *(v900 + 16) = xmmword_26B545100;
  *(v900 + 32) = 0xD000000000000017;
  *(v900 + 40) = 0x800000026B5604F0;
  *(v899 + 32) = v900;
  *(v899 + 40) = 0;
  v901 = swift_allocObject();
  *(v901 + 16) = xmmword_26B545100;
  *(v901 + 32) = 0xD000000000000017;
  *(v901 + 40) = 0x800000026B560510;
  *(v901 + 48) = 0;
  v902 = swift_allocObject();
  *(v902 + 16) = xmmword_26B545100;
  *(v902 + 32) = 0xD00000000000002DLL;
  *(v902 + 40) = 0x800000026B55EF40;
  *(v902 + 48) = 0;
  v1428[0] = 0;
  v903 = swift_allocObject();
  *(v903 + 16) = xmmword_26B545100;
  *(v903 + 32) = 0;
  v1385 = sub_26B470D98(v903);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1362 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1362 = MEMORY[0x277D84FA0];
  }

  v904 = swift_allocObject();
  *(v904 + 16) = xmmword_26B545140;
  *(v904 + 32) = 84083201;
  *(v904 + 36) = 8;
  v905 = sub_26B470D98(v904);

  v906 = swift_allocObject();
  *(v906 + 16) = xmmword_26B545100;
  *(v906 + 32) = *v1418;
  *(v906 + 40) = 1;
  v907 = swift_allocObject();
  *(v907 + 16) = xmmword_26B545100;
  *(v907 + 32) = 28;
  v908 = sub_26B470F10(v907);

  v1427 = 4;
  v1426 = 4;
  v909.value._object = 0x800000026B560550;
  v909.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v909, 0);
  v1422 = v1424;
  v1423 = v1425;
  v910 = sub_26B4CE5C8();
  v911 = sub_26B4D4400();
  *&v1253 = sub_26B4D4408();
  *(&v1253 + 1) = sub_26B4D4414();
  *&v1176 = v905;
  *(&v1176 + 1) = v906;
  *(&v1099 + 1) = v1362;
  *&v1099 = v1385;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560530, v899, v901, v902, 0, 0, v1428, v1421 + 12360, v910 & 1, v911 & 1, v1099, v1176, v1253, v908, &v1427, &v1426, 0, 0, &v1422);
  v912 = swift_allocObject();
  *(v912 + 16) = xmmword_26B545100;
  v913 = swift_allocObject();
  *(v913 + 16) = xmmword_26B545100;
  *(v913 + 32) = 0xD000000000000015;
  *(v913 + 40) = 0x800000026B560570;
  *(v912 + 32) = v913;
  *(v912 + 40) = 0;
  v914 = swift_allocObject();
  *(v914 + 16) = xmmword_26B545100;
  *(v914 + 32) = 0xD000000000000020;
  *(v914 + 40) = 0x800000026B560590;
  *(v914 + 48) = 0;
  v915 = swift_allocObject();
  *(v915 + 16) = xmmword_26B545100;
  *(v915 + 32) = 0xD00000000000002DLL;
  *(v915 + 40) = 0x800000026B55EF40;
  *(v915 + 48) = 0;
  v1428[0] = 0;
  v916 = swift_allocObject();
  *(v916 + 16) = xmmword_26B545100;
  *(v916 + 32) = 0;
  v1386 = sub_26B470D98(v916);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1363 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1363 = MEMORY[0x277D84FA0];
  }

  v917 = swift_allocObject();
  *(v917 + 16) = xmmword_26B545140;
  *(v917 + 32) = 84083201;
  *(v917 + 36) = 8;
  v918 = sub_26B470D98(v917);

  v919 = swift_allocObject();
  *(v919 + 16) = xmmword_26B545100;
  *(v919 + 32) = *v1418;
  *(v919 + 40) = 1;
  v920 = swift_allocObject();
  *(v920 + 16) = xmmword_26B545100;
  *(v920 + 32) = 28;
  v921 = sub_26B470F10(v920);

  v1427 = 4;
  v1426 = 4;
  v922.value._object = 0x800000026B5605E0;
  v922.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v922, 0);
  v1422 = v1424;
  v1423 = v1425;
  v923 = sub_26B4CE5C8();
  v924 = sub_26B4D4400();
  *&v1254 = sub_26B4D4408();
  *(&v1254 + 1) = sub_26B4D4414();
  *&v1177 = v918;
  *(&v1177 + 1) = v919;
  *(&v1100 + 1) = v1363;
  *&v1100 = v1386;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5605C0, v912, v914, v915, 0, 0, v1428, v1421 + 12544, v923 & 1, v924 & 1, v1100, v1177, v1254, v921, &v1427, &v1426, 0, 0, &v1422);
  v925 = swift_allocObject();
  *(v925 + 16) = xmmword_26B545100;
  v926 = swift_allocObject();
  *(v926 + 16) = xmmword_26B545100;
  *(v926 + 32) = 0xD00000000000001ELL;
  *(v926 + 40) = 0x800000026B560600;
  *(v925 + 32) = v926;
  *(v925 + 40) = 0;
  v927 = swift_allocObject();
  *(v927 + 16) = xmmword_26B545100;
  *(v927 + 32) = 0xD000000000000030;
  *(v927 + 40) = 0x800000026B560620;
  *(v927 + 48) = 0;
  v928 = swift_allocObject();
  *(v928 + 16) = xmmword_26B545100;
  *(v928 + 32) = 0xD00000000000002DLL;
  *(v928 + 40) = 0x800000026B55EF40;
  *(v928 + 48) = 0;
  v1428[0] = 0;
  v929 = swift_allocObject();
  *(v929 + 16) = xmmword_26B545100;
  *(v929 + 32) = 0;
  v1387 = sub_26B470D98(v929);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1364 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1364 = MEMORY[0x277D84FA0];
  }

  v930 = swift_allocObject();
  *(v930 + 16) = xmmword_26B545140;
  *(v930 + 32) = 84083201;
  *(v930 + 36) = 8;
  v931 = sub_26B470D98(v930);

  v932 = swift_allocObject();
  *(v932 + 16) = xmmword_26B545100;
  *(v932 + 32) = *v1418;
  *(v932 + 40) = 1;
  v933 = swift_allocObject();
  *(v933 + 16) = xmmword_26B545100;
  *(v933 + 32) = 28;
  v934 = sub_26B470F10(v933);

  v1427 = 4;
  v1426 = 4;
  v935.value._object = 0x800000026B560680;
  v935.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v935, 0);
  v1422 = v1424;
  v1423 = v1425;
  v936 = sub_26B4CE5C8();
  v937 = sub_26B4D4400();
  *&v1255 = sub_26B4D4408();
  *(&v1255 + 1) = sub_26B4D4414();
  *&v1178 = v931;
  *(&v1178 + 1) = v932;
  *(&v1101 + 1) = v1364;
  *&v1101 = v1387;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560660, v925, v927, v928, 0, 0, v1428, v1421 + 12728, v936 & 1, v937 & 1, v1101, v1178, v1255, v934, &v1427, &v1426, 0, 0, &v1422);
  v938 = swift_allocObject();
  *(v938 + 16) = xmmword_26B545100;
  v939 = swift_allocObject();
  *(v939 + 16) = xmmword_26B545100;
  *(v939 + 32) = 0xD00000000000001DLL;
  *(v939 + 40) = 0x800000026B5606A0;
  *(v938 + 32) = v939;
  *(v938 + 40) = 0;
  v940 = swift_allocObject();
  *(v940 + 16) = xmmword_26B545100;
  *(v940 + 32) = 0xD00000000000002CLL;
  *(v940 + 40) = 0x800000026B5606C0;
  *(v940 + 48) = 0;
  v941 = swift_allocObject();
  *(v941 + 16) = xmmword_26B545100;
  *(v941 + 32) = 0xD00000000000002DLL;
  *(v941 + 40) = 0x800000026B55EF40;
  *(v941 + 48) = 0;
  v1428[0] = 0;
  v942 = swift_allocObject();
  *(v942 + 16) = xmmword_26B545100;
  *(v942 + 32) = 0;
  v1388 = sub_26B470D98(v942);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1365 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1365 = MEMORY[0x277D84FA0];
  }

  v943 = swift_allocObject();
  *(v943 + 16) = xmmword_26B545140;
  *(v943 + 32) = 84083201;
  *(v943 + 36) = 8;
  v944 = sub_26B470D98(v943);

  v945 = swift_allocObject();
  *(v945 + 16) = xmmword_26B545100;
  *(v945 + 32) = *v1418;
  *(v945 + 40) = 1;
  v946 = swift_allocObject();
  *(v946 + 16) = xmmword_26B545100;
  *(v946 + 32) = 28;
  v947 = sub_26B470F10(v946);

  v1427 = 4;
  v1426 = 4;
  v948.value._object = 0x800000026B560710;
  v948.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v948, 0);
  v1422 = v1424;
  v1423 = v1425;
  v949 = sub_26B4CE5C8();
  v950 = sub_26B4D4400();
  *&v1256 = sub_26B4D4408();
  *(&v1256 + 1) = sub_26B4D4414();
  *&v1179 = v944;
  *(&v1179 + 1) = v945;
  *(&v1102 + 1) = v1365;
  *&v1102 = v1388;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B5606F0, v938, v940, v941, 0, 0, v1428, v1421 + 12912, v949 & 1, v950 & 1, v1102, v1179, v1256, v947, &v1427, &v1426, 0, 0, &v1422);
  v951 = swift_allocObject();
  *(v951 + 16) = xmmword_26B545100;
  v952 = swift_allocObject();
  *(v952 + 16) = xmmword_26B545100;
  *(v952 + 32) = 0xD00000000000001BLL;
  *(v952 + 40) = 0x800000026B560730;
  *(v951 + 32) = v952;
  *(v951 + 40) = 0;
  v953 = swift_allocObject();
  *(v953 + 16) = xmmword_26B545100;
  *(v953 + 32) = 0xD000000000000019;
  *(v953 + 40) = 0x800000026B560750;
  *(v953 + 48) = 0;
  v954 = swift_allocObject();
  *(v954 + 16) = xmmword_26B545100;
  *(v954 + 32) = 0xD00000000000002DLL;
  *(v954 + 40) = 0x800000026B55EF40;
  *(v954 + 48) = 0;
  v1428[0] = 0;
  v955 = swift_allocObject();
  *(v955 + 16) = xmmword_26B545100;
  *(v955 + 32) = 0;
  v1389 = sub_26B470D98(v955);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1366 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1366 = MEMORY[0x277D84FA0];
  }

  v956 = swift_allocObject();
  *(v956 + 16) = xmmword_26B545140;
  *(v956 + 32) = 84083201;
  *(v956 + 36) = 8;
  v957 = sub_26B470D98(v956);

  v958 = swift_allocObject();
  *(v958 + 16) = xmmword_26B545100;
  *(v958 + 32) = *v1418;
  *(v958 + 40) = 1;
  v959 = swift_allocObject();
  *(v959 + 16) = xmmword_26B545100;
  *(v959 + 32) = 28;
  v960 = sub_26B470F10(v959);

  v1427 = 4;
  v1426 = 4;
  v961.value._object = 0x800000026B560790;
  v961.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v961, 0);
  v1422 = v1424;
  v1423 = v1425;
  v962 = sub_26B4CE5C8();
  v963 = sub_26B4D4400();
  *&v1257 = sub_26B4D4408();
  *(&v1257 + 1) = sub_26B4D4414();
  *&v1180 = v957;
  *(&v1180 + 1) = v958;
  *(&v1103 + 1) = v1366;
  *&v1103 = v1389;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B560770, v951, v953, v954, 0, 0, v1428, v1421 + 13096, v962 & 1, v963 & 1, v1103, v1180, v1257, v960, &v1427, &v1426, 0, 0, &v1422);
  v964 = swift_allocObject();
  *(v964 + 16) = xmmword_26B545100;
  v965 = swift_allocObject();
  *(v965 + 16) = xmmword_26B545100;
  strcpy((v965 + 32), "VoiceOver help");
  *(v965 + 47) = -18;
  *(v964 + 32) = v965;
  *(v964 + 40) = 0;
  v966 = swift_allocObject();
  *(v966 + 16) = xmmword_26B545100;
  *(v966 + 32) = 0xD000000000000027;
  *(v966 + 40) = 0x800000026B5607B0;
  *(v966 + 48) = 0;
  v967 = swift_allocObject();
  *(v967 + 16) = xmmword_26B545100;
  *(v967 + 32) = 0xD00000000000002DLL;
  *(v967 + 40) = 0x800000026B55EF40;
  *(v967 + 48) = 0;
  v1428[0] = 0;
  v968 = swift_allocObject();
  *(v968 + 16) = xmmword_26B545100;
  *(v968 + 32) = 0;
  v1390 = sub_26B470D98(v968);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1367 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1367 = MEMORY[0x277D84FA0];
  }

  v969 = swift_allocObject();
  *(v969 + 16) = xmmword_26B545140;
  *(v969 + 32) = 84083201;
  *(v969 + 36) = 8;
  v970 = sub_26B470D98(v969);

  v971 = swift_allocObject();
  *(v971 + 16) = xmmword_26B545100;
  *(v971 + 32) = *v1418;
  *(v971 + 40) = 1;
  v972 = swift_allocObject();
  *(v972 + 16) = xmmword_26B545100;
  *(v972 + 32) = 28;
  v973 = sub_26B470F10(v972);

  v1427 = 4;
  v1426 = 4;
  v974.value._countAndFlagsBits = 0x706C65486F76;
  v974.value._object = 0xE600000000000000;
  Action.init(_:mac:)(v974, 0);
  v1422 = v1424;
  v1423 = v1425;
  v975 = sub_26B4CE5C8();
  v976 = sub_26B4D4400();
  *&v1258 = sub_26B4D4408();
  *(&v1258 + 1) = sub_26B4D4414();
  *&v1181 = v970;
  *(&v1181 + 1) = v971;
  *(&v1104 + 1) = v1367;
  *&v1104 = v1390;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B5607E0, v964, v966, v967, 0, 0, v1428, v1421 + 13280, v975 & 1, v976 & 1, v1104, v1181, v1258, v973, &v1427, &v1426, 0, 0, &v1422);
  v977 = swift_allocObject();
  *(v977 + 16) = xmmword_26B545100;
  v978 = swift_allocObject();
  *(v978 + 16) = xmmword_26B545100;
  *(v978 + 32) = 0xD000000000000013;
  *(v978 + 40) = 0x800000026B560800;
  *(v977 + 32) = v978;
  *(v977 + 40) = 0;
  v979 = swift_allocObject();
  *(v979 + 16) = xmmword_26B545100;
  *(v979 + 32) = 0xD000000000000025;
  *(v979 + 40) = 0x800000026B55F9B0;
  *(v979 + 48) = 0;
  v980 = swift_allocObject();
  *(v980 + 16) = xmmword_26B545100;
  *(v980 + 32) = 0xD00000000000002DLL;
  *(v980 + 40) = 0x800000026B55EF40;
  *(v980 + 48) = 0;
  v1428[0] = 0;
  v981 = swift_allocObject();
  *(v981 + 16) = xmmword_26B545100;
  *(v981 + 32) = 0;
  v1391 = sub_26B470D98(v981);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1368 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1368 = MEMORY[0x277D84FA0];
  }

  v982 = swift_allocObject();
  *(v982 + 16) = xmmword_26B545140;
  *(v982 + 32) = 84083201;
  *(v982 + 36) = 8;
  v983 = sub_26B470D98(v982);

  v984 = swift_allocObject();
  *(v984 + 16) = xmmword_26B545100;
  *(v984 + 32) = *v1418;
  *(v984 + 40) = 1;
  v985 = swift_allocObject();
  *(v985 + 16) = xmmword_26B545100;
  *(v985 + 32) = 28;
  v986 = sub_26B470F10(v985);

  v1427 = 4;
  v1426 = 4;
  v987.value._countAndFlagsBits = 0x7553706C65486F76;
  v987.value._object = 0xED00007972616D6DLL;
  Action.init(_:mac:)(v987, 0);
  v1422 = v1424;
  v1423 = v1425;
  v988 = sub_26B4CE5C8();
  v989 = sub_26B4D4400();
  *&v1259 = sub_26B4D4408();
  *(&v1259 + 1) = sub_26B4D4414();
  *&v1182 = v983;
  *(&v1182 + 1) = v984;
  *(&v1105 + 1) = v1368;
  *&v1105 = v1391;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560820, v977, v979, v980, 0, 0, v1428, v1421 + 13464, v988 & 1, v989 & 1, v1105, v1182, v1259, v986, &v1427, &v1426, 0, 0, &v1422);
  v990 = swift_allocObject();
  *(v990 + 16) = xmmword_26B545100;
  v991 = swift_allocObject();
  *(v991 + 16) = xmmword_26B545120;
  strcpy((v991 + 32), "VoiceOver hint");
  *(v991 + 47) = -18;
  *(v991 + 48) = 0xD000000000000018;
  *(v991 + 56) = 0x800000026B560840;
  *(v990 + 32) = v991;
  *(v990 + 40) = 0;
  v992 = swift_allocObject();
  *(v992 + 16) = xmmword_26B545100;
  *(v992 + 32) = 0xD00000000000002DLL;
  *(v992 + 40) = 0x800000026B560860;
  *(v992 + 48) = 0;
  v993 = swift_allocObject();
  *(v993 + 16) = xmmword_26B545100;
  *(v993 + 32) = 0xD00000000000002DLL;
  *(v993 + 40) = 0x800000026B55EF40;
  *(v993 + 48) = 0;
  v1428[0] = 0;
  v994 = swift_allocObject();
  *(v994 + 16) = xmmword_26B545100;
  *(v994 + 32) = 0;
  v1392 = sub_26B470D98(v994);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1369 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1369 = MEMORY[0x277D84FA0];
  }

  v995 = swift_allocObject();
  *(v995 + 16) = xmmword_26B545140;
  *(v995 + 32) = 84083201;
  *(v995 + 36) = 8;
  v996 = sub_26B470D98(v995);

  v997 = swift_allocObject();
  *(v997 + 16) = xmmword_26B545100;
  *(v997 + 32) = *v1418;
  *(v997 + 40) = 1;
  v998 = swift_allocObject();
  *(v998 + 16) = xmmword_26B545100;
  *(v998 + 32) = 28;
  v999 = sub_26B470F10(v998);

  v1427 = 4;
  v1426 = 4;
  v1000.value._object = 0x800000026B5608B0;
  v1000.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v1000, 0);
  v1422 = v1424;
  v1423 = v1425;
  v1001 = sub_26B4CE5C8();
  v1002 = sub_26B4D4400();
  *&v1260 = sub_26B4D4408();
  *(&v1260 + 1) = sub_26B4D4414();
  *&v1183 = v996;
  *(&v1183 + 1) = v997;
  *(&v1106 + 1) = v1369;
  *&v1106 = v1392;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B560890, v990, v992, v993, 0, 0, v1428, v1421 + 13648, v1001 & 1, v1002 & 1, v1106, v1183, v1260, v999, &v1427, &v1426, 0, 0, &v1422);
  v1003 = swift_allocObject();
  *(v1003 + 16) = xmmword_26B545100;
  v1004 = swift_allocObject();
  *(v1004 + 16) = xmmword_26B545100;
  *(v1004 + 32) = 0xD000000000000018;
  *(v1004 + 40) = 0x800000026B5608D0;
  *(v1003 + 32) = v1004;
  *(v1003 + 40) = 0;
  v1005 = swift_allocObject();
  *(v1005 + 16) = xmmword_26B545100;
  *(v1005 + 32) = 0xD00000000000001BLL;
  *(v1005 + 40) = 0x800000026B5608F0;
  *(v1005 + 48) = 0;
  v1006 = swift_allocObject();
  *(v1006 + 16) = xmmword_26B545100;
  *(v1006 + 32) = 0x10000000000000CELL;
  *(v1006 + 40) = 0x800000026B560910;
  *(v1006 + 48) = 0;
  v1428[0] = 0;
  v1007 = swift_allocObject();
  *(v1007 + 16) = xmmword_26B545100;
  *(v1007 + 32) = 0;
  v1393 = sub_26B470D98(v1007);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1370 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1370 = MEMORY[0x277D84FA0];
  }

  v1008 = swift_allocObject();
  *(v1008 + 16) = xmmword_26B545140;
  *(v1008 + 32) = 84083201;
  *(v1008 + 36) = 8;
  v1009 = sub_26B470D98(v1008);

  v1010 = swift_allocObject();
  *(v1010 + 16) = xmmword_26B545100;
  *(v1010 + 32) = *v1418;
  *(v1010 + 40) = 1;
  v1011 = swift_allocObject();
  *(v1011 + 16) = xmmword_26B545100;
  *(v1011 + 32) = 28;
  v1012 = sub_26B470F10(v1011);

  v1427 = 4;
  v1426 = 4;
  v1013.value._object = 0x800000026B560A00;
  v1013.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v1013, 0);
  v1422 = v1424;
  v1423 = v1425;
  v1014 = sub_26B4CE5C8();
  v1015 = sub_26B4D4400();
  *&v1261 = sub_26B4D4408();
  *(&v1261 + 1) = sub_26B4D4414();
  *&v1184 = v1009;
  *(&v1184 + 1) = v1010;
  *(&v1107 + 1) = v1370;
  *&v1107 = v1393;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B5609E0, v1003, v1005, v1006, 0, 0, v1428, v1421 + 13832, v1014 & 1, v1015 & 1, v1107, v1184, v1261, v1012, &v1427, &v1426, 0, 0, &v1422);
  v1016 = swift_allocObject();
  *(v1016 + 16) = xmmword_26B545100;
  v1017 = swift_allocObject();
  *(v1017 + 16) = xmmword_26B545120;
  *(v1017 + 32) = 0xD000000000000014;
  *(v1017 + 40) = 0x800000026B560A20;
  *(v1017 + 48) = 0xD000000000000015;
  *(v1017 + 56) = 0x800000026B560A40;
  *(v1016 + 32) = v1017;
  *(v1016 + 40) = 0;
  v1018 = swift_allocObject();
  *(v1018 + 16) = xmmword_26B545100;
  *(v1018 + 32) = 0xD000000000000025;
  *(v1018 + 40) = 0x800000026B55F9B0;
  *(v1018 + 48) = 0;
  v1019 = swift_allocObject();
  *(v1019 + 16) = xmmword_26B545100;
  *(v1019 + 32) = 0xD00000000000002DLL;
  *(v1019 + 40) = 0x800000026B55EF40;
  *(v1019 + 48) = 0;
  v1428[0] = 0;
  v1020 = swift_allocObject();
  *(v1020 + 16) = xmmword_26B545100;
  *(v1020 + 32) = 0;
  v1420 = sub_26B470D98(v1020);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v1419 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1419 = MEMORY[0x277D84FA0];
  }

  v1021 = swift_allocObject();
  *(v1021 + 16) = xmmword_26B545140;
  *(v1021 + 32) = 84083201;
  *(v1021 + 36) = 8;
  v1022 = sub_26B470D98(v1021);

  v1023 = swift_allocObject();
  *(v1023 + 16) = xmmword_26B545100;
  *(v1023 + 32) = *v1418;
  *(v1023 + 40) = 1;
  v1024 = swift_allocObject();
  *(v1024 + 16) = xmmword_26B545100;
  *(v1024 + 32) = 28;
  v1025 = sub_26B470F10(v1024);

  v1427 = 4;
  v1426 = 4;
  v1026.value._countAndFlagsBits = 0x746E6569724F6F76;
  v1026.value._object = 0xED00006E6F697461;
  Action.init(_:mac:)(v1026, 0);
  v1422 = v1424;
  v1423 = v1425;
  v1027 = sub_26B4CE5C8();
  v1028 = sub_26B4D4400();
  *&v1262 = sub_26B4D4408();
  *(&v1262 + 1) = sub_26B4D4414();
  *&v1185 = v1022;
  *(&v1185 + 1) = v1023;
  *(&v1108 + 1) = v1419;
  *&v1108 = v1420;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B560A60, v1016, v1018, v1019, 0, 0, v1428, v1421 + 14016, v1027 & 1, v1028 & 1, v1108, v1185, v1262, v1025, &v1427, &v1426, 0, 0, &v1422);
  LOBYTE(v1022) = sub_26B4CE5C8();
  v1029 = sub_26B4D4400() & 1;
  v1030._countAndFlagsBits = 0x6269737365636341;
  v1030._object = 0xED00007974696C69;
  v1031._countAndFlagsBits = v1287;
  v1031._object = v1286;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406DC8, v1030, v1031, v1022 & 1, v1029, v1421);
}