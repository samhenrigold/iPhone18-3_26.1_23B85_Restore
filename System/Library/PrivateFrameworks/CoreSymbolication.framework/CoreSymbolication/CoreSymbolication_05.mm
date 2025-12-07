void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::pair<std::string,unsigned long long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::__function::__value_func<void ()(UUID const*,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void *std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
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
      if (result[2] == *a2 && result[3] == a2[1])
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

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1D9732B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

void *std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1] ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2[1] ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

const void *CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(const void **this)
{
  result = *this;
  if (result)
  {
  }

  return result;
}

uint64_t ___ZNK31CSCppDyldSplitSharedCacheMemory21for_each_shared_cacheIZNKS_24shared_cache_for_addressEmE3__0EEvT__block_invoke(uint64_t a1, CSCppDyldSharedCache *this)
{
  v4 = *(*(a1 + 32) + 8);
  result = CSCppDyldSharedCache::text_segment_range(this);
  if (*(a1 + 40) - this < v6)
  {
    **(a1 + 48) = this;
    *(v4 + 24) = 1;
  }

  return result;
}

BOOL has_minimum_source_info_attributes(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 4;
  do
  {
    v3 = *(v2 - 4);
    result = v3 == 16;
    v5 = v3 == 16 || v2 == v1;
    v2 += 4;
  }

  while (!v5);
  return result;
}

void CSCppArchitecture::CSCppArchitecture(CSCppArchitecture *this)
{
  v2 = MEMORY[0x1DA736D70]();
  host_info_outCnt = 12;
  if (!host_info(v2, 1, host_info_out, &host_info_outCnt))
  {
    v3 = v8;
    *this = v8;
    if (!HIBYTE(v3))
    {
      v5 = 0;
      v4 = 4;
      sysctlbyname("hw.cpu64bit_capable", &v5, &v4, 0, 0);
      if (v5)
      {
        *this |= 0x1000000u;
      }
    }
  }
}

uint64_t CSCppArchitecture::current_architecture(CSCppArchitecture *this)
{
  {
    CSCppArchitecture::CSCppArchitecture(&CSCppArchitecture::current_architecture(void)::arch);
  }

  return CSCppArchitecture::current_architecture(void)::arch;
}

uint64_t CSCppArchitecture::is_little_endian(CSCppArchitecture *this)
{
  v1 = *this & 0xFFFFFF;
  if (v1 == 7)
  {
    return 1;
  }

  if (v1 != 18)
  {
    if (v1 != 12)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "CSCppArchitecture: cannot answer isLittleEndian for cpu_type ", 61);
      v5 = MEMORY[0x1DA7365D0](v4, *this);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " cpuSubtype ", 12);
      MEMORY[0x1DA7365D0](v6, *(this + 1));
      std::ostringstream::str[abi:ne200100](v10, &v9);
      Exception::Exception(v8, &v9);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v8);
    }

    return 1;
  }

  return 0;
}

void sub_1D97332E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t CSCppArchitecture::is_64_bit(CSCppArchitecture *this)
{
  v1 = *(this + 3) << 24;
  if (v1)
  {
    v2 = v1 == 0x2000000;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  if (v1 != 0x1000000)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v11);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "CSCppArchitecture: cannot answer is64Bit for cpu_type ", 54);
    v6 = MEMORY[0x1DA7365D0](v5, *this);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " cpuSubtype ", 12);
    MEMORY[0x1DA7365D0](v7, *(this + 1));
    std::ostringstream::str[abi:ne200100](v11, &v10);
    Exception::Exception(v9, &v10);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v9);
  }

  return 1;
}

void sub_1D9733420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

BOOL CSCppArchitecture::matches(CSCppArchitecture *a1, unint64_t a2)
{
  v2 = a2;
  if (*a1 == -1 || a2 == -1)
  {
    return 1;
  }

  v5 = HIDWORD(a2);
  is_64_bit = CSCppArchitecture::is_64_bit(a1);
  v7 = v2 == -64 ? is_64_bit : 0;
  if (v7)
  {
    return 1;
  }

  if (*a1 == -64)
  {
    v11[0] = v2;
    v11[1] = v5;
    if (CSCppArchitecture::is_64_bit(v11))
    {
      return 1;
    }
  }

  if (*a1 != v2)
  {
    return 0;
  }

  v9 = v2 & 0xFFFFFF;
  v10 = *(a1 + 1);
  if ((v2 & 0xFFFFFF) != 0x12 && v9 != 12)
  {
    if (v9 == 7)
    {
      result = 1;
      if ((v10 & 0xFFFFFF) == 3 || (v5 & 0xFFFFFF) == 3)
      {
        return result;
      }
    }

    return v10 == v5;
  }

  result = 1;
  if ((v10 & 0xFFFFFF) != 0 && (v5 & 0xFFFFFF) != 0)
  {
    return v10 == v5;
  }

  return result;
}

void sub_1D973355C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D97334E8);
}

BOOL CSCppArchitecture::is_wildcard_architecture(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = qword_1D97E0800[v1];
  }

  while (v2 != a1 && v1++ != 2);
  return v2 == a1;
}

void CSCppBitLock::CSCppBitLock(uint64_t a1, atomic_uint *a2, unsigned int a3)
{
  v3 = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  atomic_compare_exchange_strong_explicit(a2, &v3, a3, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    do
    {
      v4 = *(a1 + 8);
      v5 = v3 & ~v4;
      v6 = v4 | v3;
      v3 = v5;
      atomic_compare_exchange_strong_explicit(*a1, &v3, v6, memory_order_acquire, memory_order_acquire);
    }

    while (v3 != v5);
  }
}

uint64_t **CSCppDeferredDemangler::symbolAddressesForDemangledNameImpl(CSCppDeferredDemangler *this, const char *a2)
{
  std::mutex::lock((this + 120));
  v6[0] = a2;
  v6[1] = strlen(a2);
  v4 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned int>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned int>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned int>>>::__equal_range_multi<std::string_view>(this + 5, v6);
  std::mutex::unlock((this + 120));
  return v4;
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<CSCppMMapSymbol>(uint64_t a1, unint64_t a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  v23 = a2;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v23);
  if (v6)
  {
    v7 = v6[3];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_5;
  }

  std::mutex::lock((a1 + 184));
  v22.__r_.__value_.__r.__words[0] = a3;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v22);
  if (v9)
  {
    v10 = *(v9 + 47);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v7 = v9[3];
      v10 = v9[4];
    }

    else
    {
      v7 = (v9 + 3);
    }

    v22.__r_.__value_.__r.__words[0] = v7;
    v22.__r_.__value_.__l.__size_ = v10;
    if (a2)
    {
      *&v25 = a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v25, &v25, &v22);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_5;
  }

  std::mutex::unlock((a1 + 184));
  if ((*(a2 + 8) & 2) != 0)
  {
    if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
    {
      v11 = 11;
    }

    else
    {
      v11 = 0;
    }

    a3 += v11;
  }

  v12 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  CSCppAddressSet::sort(*(a1 + 256));
  v15 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v12, v13, v14);
  v16 = v15;
  v17 = *(a2 + 8);
  if ((v17 & 0x380000) != 0 && !v15 && *a3 == 95)
  {
    v7 = a3 + 1;
LABEL_21:
    if ((v17 & 2) == 0)
    {
      v18 = strlen(v7);
      v22.__r_.__value_.__r.__words[0] = v7;
      v22.__r_.__value_.__l.__size_ = v18;
      *&v25 = a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v25, &v25, &v22);
      goto LABEL_5;
    }

    v16 = v7;
    goto LABEL_28;
  }

  v7 = a3;
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_28:
  std::string::basic_string[abi:ne200100]<0>(&v22, v16);
  if ((*(a2 + 8) & 2) != 0)
  {
    std::string::insert(&v22, 0, "DYLD-STUB$$", 0xBuLL);
    a3 -= 11;
  }

  std::mutex::lock((a1 + 184));
  *&v25 = a3;
  v19 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), &v25, &v25, &v22);
  if (v20)
  {
    v21 = *(v19 + 47);
    if (v21 < 0)
    {
      v7 = v19[3];
      v21 = v19[4];
    }

    else
    {
      v7 = (v19 + 3);
    }

    *&v25 = v7;
    *(&v25 + 1) = v21;
    v24 = a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v24, &v24, &v25);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_5:
  std::mutex::unlock((a1 + 120));
  return v7;
}

const char *CSCppDeferredDemangler::demangledNameForSymbol(CSCppDeferredDemangler *this, const FlatbufferSymbols::Symbol *a2)
{
  v6 = a2;
  v2 = (a2 - *a2);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = a2 + v3 + *(a2 + v3) + 4;
  }

  else
  {
    v4 = 0;
  }

  return CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>>(this, &v6, v4);
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>>(uint64_t a1, unint64_t *a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  if (a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v31);
  if (v7)
  {
    v8 = v7[3];
    goto LABEL_8;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  std::mutex::lock((a1 + 184));
  v30.__r_.__value_.__r.__words[0] = a3;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v30);
  if (v10)
  {
    v11 = *(v10 + 47);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v8 = v10[3];
      v11 = v10[4];
    }

    else
    {
      v8 = (v10 + 3);
    }

    v30.__r_.__value_.__r.__words[0] = v8;
    v30.__r_.__value_.__l.__size_ = v11;
    if (a2)
    {
      *&v33 = *a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33, &v33, &v30);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_8;
  }

  std::mutex::unlock((a1 + 184));
  v12 = (*a2 - **a2);
  if (*v12 >= 0x13u)
  {
    v13 = v12[9];
    if (v13)
    {
      if ((*(*a2 + v13) & 2) != 0)
      {
        if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
        {
          v14 = 11;
        }

        else
        {
          v14 = 0;
        }

        a3 += v14;
      }
    }
  }

  v15 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  CSCppAddressSet::sort(*(a1 + 256));
  v18 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v15, v16, v17);
  is_name_source_dwarf = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::Symbol>::is_name_source_dwarf(a2);
  v20 = *a2;
  v21 = (*a2 - **a2);
  v22 = *v21;
  if (v22 >= 0x13 && v21[9])
  {
    if (((is_name_source_dwarf | ((*(v20 + v21[9] + 1) & 2) >> 1)) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!is_name_source_dwarf)
  {
    goto LABEL_29;
  }

  if (!v18 && *a3 == 95)
  {
    v8 = a3 + 1;
    goto LABEL_41;
  }

LABEL_29:
  v8 = a3;
  if (!v18)
  {
LABEL_41:
    if (v22 < 0x13 || (v28 = v21[9]) == 0 || (*(v20 + v28) & 2) == 0)
    {
      v29 = strlen(v8);
      v30.__r_.__value_.__r.__words[0] = v8;
      v30.__r_.__value_.__l.__size_ = v29;
      *&v33 = v20;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33, &v33, &v30);
      goto LABEL_8;
    }

    v18 = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&v30, v18);
  v23 = (*a2 - **a2);
  if (*v23 >= 0x13u)
  {
    v24 = v23[9];
    if (v24)
    {
      if ((*(*a2 + v24) & 2) != 0)
      {
        std::string::insert(&v30, 0, "DYLD-STUB$$", 0xBuLL);
        a3 -= 11;
      }
    }
  }

  std::mutex::lock((a1 + 184));
  *&v33 = a3;
  v25 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), &v33, &v33, &v30);
  if (v26)
  {
    v27 = *(v25 + 47);
    if (v27 < 0)
    {
      v8 = v25[3];
      v27 = v25[4];
    }

    else
    {
      v8 = (v25 + 3);
    }

    *&v33 = v8;
    *(&v33 + 1) = v27;
    v32 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v32, &v32, &v33);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_8:
  std::mutex::unlock((a1 + 120));
  return v8;
}

void sub_1D9733CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 120));
  _Unwind_Resume(a1);
}

const char *CSCppDeferredDemangler::demangledNameForSymbol(CSCppDeferredDemangler *this, const FlatbufferSymbols::InlineSymbol *a2)
{
  v6 = a2;
  v2 = (a2 - *a2);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = a2 + v3 + *(a2 + v3) + 4;
  }

  else
  {
    v4 = 0;
  }

  return CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>>(this, &v6, v4);
}

const char *CSCppDeferredDemangler::demangledNameForSymbolImpl<FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>>(uint64_t a1, unint64_t *a2, char *a3)
{
  std::mutex::lock((a1 + 120));
  if (!*(a1 + 256))
  {
    operator new();
  }

  if (a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1, &v31);
  if (v7)
  {
    v8 = v7[3];
    goto LABEL_8;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  std::mutex::lock((a1 + 184));
  v30.__r_.__value_.__r.__words[0] = a3;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((a1 + 80), &v30);
  if (v10)
  {
    v11 = *(v10 + 47);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v8 = v10[3];
      v11 = v10[4];
    }

    else
    {
      v8 = (v10 + 3);
    }

    v30.__r_.__value_.__r.__words[0] = v8;
    v30.__r_.__value_.__l.__size_ = v11;
    if (a2)
    {
      *&v33 = *a2;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33, &v33, &v30);
    }

    std::mutex::unlock((a1 + 184));
    goto LABEL_8;
  }

  std::mutex::unlock((a1 + 184));
  v12 = (*a2 - **a2);
  if (*v12 >= 0x11u)
  {
    v13 = v12[8];
    if (v13)
    {
      if ((*(*a2 + v13) & 2) != 0)
      {
        if (!strncmp(a3, "DYLD-STUB$$", 0xBuLL))
        {
          v14 = 11;
        }

        else
        {
          v14 = 0;
        }

        a3 += v14;
      }
    }
  }

  v15 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(*(a1 + 256));
  CSCppAddressSet::sort(*(a1 + 256));
  v18 = DemanglingUtilities::demangle_with_reusable_buffer(a3, v15, v16, v17);
  is_name_source_dwarf = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_name_source_dwarf(a2);
  v20 = *a2;
  v21 = (*a2 - **a2);
  v22 = *v21;
  if (v22 >= 0x11 && v21[8])
  {
    if (((is_name_source_dwarf | ((*(v20 + v21[8] + 1) & 2) >> 1)) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!is_name_source_dwarf)
  {
    goto LABEL_29;
  }

  if (!v18 && *a3 == 95)
  {
    v8 = a3 + 1;
    goto LABEL_41;
  }

LABEL_29:
  v8 = a3;
  if (!v18)
  {
LABEL_41:
    if (v22 < 0x11 || (v28 = v21[8]) == 0 || (*(v20 + v28) & 2) == 0)
    {
      v29 = strlen(v8);
      v30.__r_.__value_.__r.__words[0] = v8;
      v30.__r_.__value_.__l.__size_ = v29;
      *&v33 = v20;
      std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v33, &v33, &v30);
      goto LABEL_8;
    }

    v18 = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&v30, v18);
  v23 = (*a2 - **a2);
  if (*v23 >= 0x11u)
  {
    v24 = v23[8];
    if (v24)
    {
      if ((*(*a2 + v24) & 2) != 0)
      {
        std::string::insert(&v30, 0, "DYLD-STUB$$", 0xBuLL);
        a3 -= 11;
      }
    }
  }

  std::mutex::lock((a1 + 184));
  *&v33 = a3;
  v25 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>((a1 + 80), &v33, &v33, &v30);
  if (v26)
  {
    v27 = *(v25 + 47);
    if (v27 < 0)
    {
      v8 = v25[3];
      v27 = v25[4];
    }

    else
    {
      v8 = (v25 + 3);
    }

    *&v33 = v8;
    *(&v33 + 1) = v27;
    v32 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(a1, &v32, &v32, &v33);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 184));
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_8:
  std::mutex::unlock((a1 + 120));
  return v8;
}

void sub_1D973410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 120));
  _Unwind_Resume(a1);
}

uint64_t **CSCppDeferredDemangler::mmapSymbolAddressesForDemangledName(CSCppDeferredDemangler *this, const char *a2)
{
  if (a2)
  {
    return CSCppDeferredDemangler::symbolAddressesForDemangledNameImpl(this, a2);
  }

  else
  {
    return 0;
  }
}

void CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 248);
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a1;
  if (atomic_load_explicit(v4, memory_order_acquire) != -1)
  {
    v7 = v5;
    v6 = &v7;
    std::__call_once(v4, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(TMMapSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>);
  }
}

{
  v4 = (a1 + 248);
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a1;
  if (atomic_load_explicit(v4, memory_order_acquire) != -1)
  {
    v7 = v5;
    v6 = &v7;
    std::__call_once(v4, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(FlatbufferSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>);
  }
}

void CSCppDeferredDemangler::~CSCppDeferredDemangler(CSCppDeferredDemangler *this)
{
  std::unique_ptr<DemanglingUtilities::CSCppReusableDemanglingBuffer>::reset[abi:ne200100](this + 32, 0);
  std::mutex::~mutex((this + 184));
  std::mutex::~mutex((this + 120));
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(this + 10);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this + 40);

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this);
}

void **std::unique_ptr<DemanglingUtilities::CSCppReusableDemanglingBuffer>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DemanglingUtilities::CSCppReusableDemanglingBuffer::~CSCppReusableDemanglingBuffer(result);

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string_view>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string_view>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string_view>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,std::string_view&>(void *a1, unint64_t *a2, void *a3, _OWORD *a4)
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
    if (v4 >= *&v5)
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>(void *a1, unint64_t *a2, void *a3, uint64_t a4)
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
    if (v4 >= *&v5)
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(TMMapSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>(void **a1)
{
  v1 = **a1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = v5 + 32 * v5[2] + 24 * v5[3] + (24 * v5[4]) + (4 * v5[4]) + (36 * v5[5]) + (20 * v5[6]) + v5[22] + v5[20] + 96;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP20TMMapSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_8;
  v8[4] = v3;
  v8[5] = v6;
  return (*(*v4 + 88))(v4, v2, v8);
}

void ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP20TMMapSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  if (!*((a3 & 0xFFFFFFFFFFFFFFFCLL) + 12))
  {
    v4 = *(result + 32);
    v6 = CSCppDeferredDemangler::demangledNameForSymbolImpl<CSCppMMapSymbol>(v4, v3, (*(v3 + 16) + *(result + 40)));

    CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<CSCppMMapSymbol>(v4, v6, v5, v3);
  }
}

void CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<CSCppMMapSymbol>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::mutex::lock((a1 + 120));
    std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_multi<std::string_view&,unsigned long const&>((a1 + 40));
  }
}

void sub_1D9734A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(FlatbufferSymbolOwnerData *,CSCppSymbolOwner *)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = *v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP25FlatbufferSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_1;
  v6[4] = v3;
  return FlatbufferSymbolOwnerData::symbols(v4, v2, v6);
}

void ___ZZN22CSCppDeferredDemangler34demangleAllConcreteSymbolsIfNeededEP25FlatbufferSymbolOwnerDataP16CSCppSymbolOwnerENK3__0clEv_block_invoke(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 7 | (8 * (a3 & 3))) == 5)
  {
    v3 = *(result + 32);
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) - *(a3 & 0xFFFFFFFFFFFFFFFCLL));
    if (*v5 < 0xBu || !v5[5])
    {
      v7 = CSCppDeferredDemangler::demangledNameForSymbol(*(result + 32), (a3 & 0xFFFFFFFFFFFFFFFCLL));

      CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<FlatbufferSymbols::Symbol>(v3, v7, v6, v4);
    }
  }
}

void CSCppDeferredDemangler::cacheDemangledNameToConcreteSymbol<FlatbufferSymbols::Symbol>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::mutex::lock((a1 + 120));
    std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_multi<std::string_view&,unsigned long const&>((a1 + 40));
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__CFString *CSCopyDescriptionWithIndent(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a1 & 7 | (8 * (a2 & 3));
  i = @"Unknown typeRef";
  if (v4 > 4)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {

        return CSSymbolicationSessionCopyDescriptionWithIndent(a1, a2, a3);
      }

      if (v4 != 10)
      {
        return i;
      }
    }

    else if (v4 != 5)
    {
      if (v4 != 6)
      {
        return i;
      }

      return CSSourceInfoCopyDescriptionWithIndent(a1, a2, a3);
    }

    return CSSymbolCopyDescriptionWithIndent(a1, a2, a3);
  }

  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 2)
      {

        return CSSymbolicatorCopyDescriptionWithIndent(a1, a2, a3);
      }
    }

    else
    {
      for (i = CFStringCreateMutable(0, 0); v3; --v3)
      {
        CFStringAppendCString(i, "\t", 0x8000100u);
      }

      CFStringAppendCString(i, "kCSNull", 0x8000100u);
    }

    return i;
  }

  if (v4 == 3)
  {

    return CSSymbolOwnerCopyDescriptionWithIndent(a1, a2, a3);
  }

  else
  {

    return CSRegionCopyDescriptionWithIndent(a1, a2, a3);
  }
}

void CSCppDwarfAbbrev::~CSCppDwarfAbbrev(CSCppDwarfAbbrev *this)
{
  *this = &unk_1F5505568;
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 5);
  }

  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t CSCppDwarfAbbrev::parse_stream(uint64_t this, void *a2, uint64_t a3)
{
  v5 = *(this + 40);
  v6 = *(this + 48);
  if (v5 != v6)
  {
    v7 = this;
    do
    {
      v8 = *v5++;
      this = (*(*v8 + 16))(v8, a2, a3);
    }

    while (v5 != v6);
    v5 = *(v7 + 40);
    v6 = *(v7 + 48);
  }

  while (v5 != v6)
  {
    v9 = *v5++;
    this = (*(*v9 + 24))(v9, a2, a3);
  }

  return this;
}

void CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(CSCppDwarfAbbrevTable *this)
{
  *this = &unk_1F55055A8;
  v3 = *(this + 1);
  v2 = *(this + 2);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(this + 2);
    }

    ++v3;
  }

  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v5 != v4)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        v4 = *(this + 5);
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *(this + 4);
  }

  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

{
  CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(this);

  JUMPOUT(0x1DA736760);
}

void sub_1D9735268(_Unwind_Exception *a1)
{
  MEMORY[0x1DA736760](v3, v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t new_memory_for_object_in_archive(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = 0;
  v15 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___Z32new_memory_for_object_in_archivePKcS0_j17CSCppArchitecturejj_block_invoke;
  v8[3] = &unk_1E8583980;
  v8[4] = &v11;
  v8[5] = a1;
  v9 = a3;
  v10 = a6;
  iterate_symbol_owners_from_memory(0, a1, 0, 0, a5, &v15, a2, 0, v8);
  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t iterate_symbol_owners_from_memory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v11 = a5;
  if (!a1)
  {
    operator new();
  }

  v14 = a3;
  v30 = a1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
  v22[3] = &unk_1E8583A20;
  v22[6] = a6;
  v22[7] = a1;
  v23 = a3;
  v24 = a5;
  v22[8] = a2;
  v22[9] = a7;
  v25 = a8;
  v22[4] = a9;
  v22[5] = &v26;
  if (!TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat32_header(&v30, a4, v22))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2;
    v18[3] = &unk_1E8583A48;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v19 = v14;
    v20 = v11;
    v21 = v9;
    v18[4] = a9;
    v18[5] = &v26;
    if (!TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat64_header(&v30, a4, v18))
    {
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2000000000;
      v33 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
      v31[3] = &unk_1E8583D00;
      v31[4] = v32;
      new_partial_file_memory(a2, a4, 1, v31);
    }
  }

  v16 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v16;
}

void sub_1D97357D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 136), 8);
  (*(*v35 + 8))(v35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z32new_memory_for_object_in_archivePKcS0_j17CSCppArchitecturejj_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24) && *(*a2 + 104) == *(result + 48))
  {
    operator new();
  }

  return result;
}

const char *split_static_library_path(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 8)
  {
    v3 = &a1[v2];
    if (a1[v2 - 1] == 41 && *(v3 - 2) == 111 && *(v3 - 3) == 46)
    {
      v4 = &a1[v2 - 5];
      for (i = v2 - 4; i; --i)
      {
        result = 0;
        v7 = *(v4 + 1);
        if (v7 == 41 || v7 == 47)
        {
          return result;
        }

        --v4;
        if (v7 == 40)
        {
          if (v4[1] != 97)
          {
            return 0;
          }

          if (*v4 == 46)
          {
            return v4 + 2;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void process_shared_cache_library_with_path(CSCppDyldSplitSharedCacheMemory *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v8 = CSCppDyldSplitSharedCacheMemory::text_address(a1);
  if (v8)
  {
    v9 = v8;
    is_little_endian = CSCppArchitecture::is_little_endian(&v15);
    is_64_bit = CSCppArchitecture::is_64_bit(&v15);
    if (is_little_endian)
    {
      if (is_64_bit)
      {
        v19[0] = a1;
        v12 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(v19, v9, 1);
        if (v12)
        {
          LOBYTE(v17) = 0;
          LOBYTE(v18) = 0;
          TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(v16, a1, v9, v12, a4, 0, a3, &v17);
          TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v16);
        }
      }

      else
      {
        v19[0] = a1;
        v13 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(v19, v9, 1);
        if (v13)
        {
          TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(v16, a1, v9, v13, a4, 0, a3, v14, 0, 0);
          TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v16);
        }
      }
    }
  }
}

void sub_1D9735BEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t process_all_shared_cache_libraries(CSCppDyldSplitSharedCacheMemory *a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x5002000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  *&v24 = CSCppDyldSplitSharedCacheMemory::primary_shared_cache_uuid(a1);
  *(&v24 + 1) = v8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke;
  v20[3] = &unk_1E85839D0;
  v21 = a3;
  v22 = a2;
  v20[4] = &v13;
  v23 = v24;
  CSCppDyldSplitSharedCacheMemory::for_each_text_memory<void({block_pointer})(char const*,CSCppFileMemory *,UUID)>(a1, v20);
  for (i = v14 + 7; ; (*(a4 + 16))(a4, v11, &v24, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }
  }

  _Block_object_dispose(&v13, 8);
  return std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(v18);
}

void sub_1D9735DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);
  std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(v9 + 40);
  _Unwind_Resume(a1);
}

uint64_t CSCppDyldSplitSharedCacheMemory::for_each_text_memory<void({block_pointer})(char const*,CSCppFileMemory *,UUID)>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 5)
  {
    result = CSCppDyldSplitSharedCacheMemory::CacheMemoryAndPath::is_task_memory(v2);
    if ((result & 1) == 0)
    {
      result = *v2;
      if (*v2)
      {
        if (result)
        {
          v5[0] = MEMORY[0x1E69E9820];
          v5[1] = 0x40000000;
          v5[2] = ___ZNK31CSCppDyldSplitSharedCacheMemory20for_each_text_memoryIU13block_pointerFvPKcP15CSCppFileMemory4UUIDEEEvT__block_invoke;
          v5[3] = &unk_1E8583C98;
          v5[4] = a2;
          v5[5] = result;
          result = CSCppDyldSharedCacheMemory::foreach_text_memory(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *(result + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke_2;
    v4[3] = &unk_1E85839A8;
    v4[4] = *(result + 32);
    v5 = *(result + 52);
    return iterate_symbol_owners_from_memory(a3, a2, 0, 0, v3, (result + 44), 0, 0, v4);
  }

  return result;
}

void **___Z34process_all_shared_cache_librariesP31CSCppDyldSplitSharedCacheMemory17CSCppArchitecturejU13block_pointerFvyRK4UUIDONSt3__16vectorINS5_10shared_ptrI16CSCppSymbolOwnerEENS5_9allocatorIS9_EEEEE_block_invoke_2(uint64_t a1, __int128 *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6 = (a1 + 40);
  v4 = std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>((v3 + 40), (a1 + 40), &std::piecewise_construct, &v6);
  return std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](v4 + 4, a2);
}

void **std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<CSCppSymbolOwner>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<CSCppSymbolOwner>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void iterate_symbol_owners_from_disk_dsc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v23 = *MEMORY[0x1E69E9840];
  {
    CSCppMachTask::CSCppMachTask(v21, *MEMORY[0x1E69E9A60]);
    v12 = CSCppMachTask::uses_development_dsc(v21);
    CSCppMachTask::~CSCppMachTask(v21);
    iterate_symbol_owners_from_disk_dsc(char const*,unsigned int,CSCppArchitecture const&,void({block_pointer})(unsigned long long,UUID const&,std::vector<std::shared_ptr<CSCppSymbolOwner>> &&))::analysis_process_uses_development_dsc = v12;
  }

  shared_cache_search_directories(&v13);
  if (CSArchitectureGetFamilyName(*v3))
  {
    is_wildcard_architecture = CSCppArchitecture::is_wildcard_architecture(*v3);
    v7 = v13;
    v6 = v14;
    if (v13 != v14)
    {
      if (v4)
      {
        v8 = is_wildcard_architecture;
      }

      else
      {
        v8 = 1;
      }

      do
      {
        v9 = *v7;
        if ((v8 & 1) == 0)
        {
          operator new();
        }

        if (v4)
        {
          v19 = *v7;
          v20 = v4;
          v18 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(*MEMORY[0x1E69E9A60]);
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          CSCppDyldSplitSharedCacheMemory::shared_cache_file_map_for_arch(__p, 0xFFFFFFFFFFFFFFFFLL, v21);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22)
          {
            v10 = (v22 + 16);
            ArchitectureForName = 0;
            if (*(v22 + 39) < 0)
            {
              v10 = *v10;
            }

            ArchitectureForName = CSArchitectureGetArchitectureForName(v10);
            std::make_unique[abi:ne200100]<CSCppDyldSplitSharedCacheMemory,_CSArchitecture &,char const*&,BOOL const&,std::vector<std::string>,char const*&,0>();
          }
        }

        else
        {
          v19 = *v7;
          v20 = 0;
          v18 = CSCppDyldSplitSharedCacheMemory::task_uses_development_cache(*MEMORY[0x1E69E9A60]);
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          CSCppDyldSplitSharedCacheMemory::shared_cache_file_map_for_arch(__p, 0xFFFFFFFFFFFFFFFFLL, v21);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22)
          {
            v11 = (v22 + 16);
            ArchitectureForName = 0;
            if (*(v22 + 39) < 0)
            {
              v11 = *v11;
            }

            ArchitectureForName = CSArchitectureGetArchitectureForName(v11);
            std::make_unique[abi:ne200100]<CSCppDyldSplitSharedCacheMemory,_CSArchitecture &,char const*&,BOOL const&,std::vector<std::string>,char const*&,0>();
          }
        }

        std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v21);
        v7 += 2;
      }

      while (v7 != v6);
    }
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_1D9736538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  CSCppMachTask::~CSCppMachTask(&a27);
  _Unwind_Resume(a1);
}

void iterate_symbol_owners_from_path(char *a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = split_static_library_path(a1);
  if (v12)
  {
    v13 = v12;
    std::string::basic_string[abi:ne200100](__p, a1, v12 - a1);
    v14 = strlen(v13);
    std::string::basic_string[abi:ne200100](__dst, (v13 + 1), v14 - 2);
    if (v18 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v21 >= 0)
    {
      v16 = __dst;
    }

    else
    {
      v16 = __dst[0];
    }

    iterate_symbol_owners_from_memory(0, v15, 0, 0, a3, a4, v16, a5, a6);
    if (v21 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if ((iterate_symbol_owners_from_memory(0, a1, 0, 0, a3, a4, 0, a5, a6) & 1) == 0 && a2)
  {
    __p[0] = 0;
    __p[1] = __p;
    v18 = 0x2000000000;
    v19 = 0;
    iterate_symbol_owners_from_disk_dsc(a1);
    _Block_object_dispose(__p, 8);
  }
}

void ___Z31iterate_symbol_owners_from_pathPKcbjRK17CSCppArchitecturebU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      v7 = *v4;
      v8 = v4[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(*(*(a1 + 40) + 8) + 24) != 1 || (*(a1 + 48) & 1) == 0)
      {
        v9 = *(a1 + 32);
        v10 = v7;
        v11 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(v9 + 16))(v9, &v10, a3);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_1D973693C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat32_header(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    if (!v7 || *v7 != -1095041334 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = 20 * bswap32(v7[1]) + 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = 20 * v9 + 8;
  v15 = 1;
  do
  {
    if (v14 <= bswap32(v10[2]))
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 5;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

void ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v15 = bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32));
  if (CSCppArchitecture::matches(&v15, **(a1 + 48)))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v9 = *(a1 + 84);
    v10 = bswap32(a2[2]);
    v11 = bswap32(a2[3]);
    v12 = *(a1 + 32);
    if (CSCppArchitecture::is_64_bit(&v15))
    {
      if (CSCppArchitecture::is_64_bit(&v15) && CSCppArchitecture::is_little_endian(&v15) && (process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(v6, v7, v8, v10, v11, v9, &v15, v12) & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (CSCppArchitecture::is_little_endian(&v15) && (process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(v6, v7, v8, v10, v11, v9, &v15, v12) & 1) != 0)
    {
      goto LABEL_10;
    }

    iterate_symbol_owners_from_archive(*(a1 + 64), bswap32(a2[2]), *(a1 + 84), &v15, *(a1 + 72), *(a1 + 89), *(a1 + 32));
    if (!v13)
    {
      v14 = 0;
LABEL_13:
      *(*(*(a1 + 40) + 8) + 24) |= v14;
      return;
    }

LABEL_10:
    v14 = 1;
    if (*(a1 + 89) == 1)
    {
      *a3 = 1;
    }

    goto LABEL_13;
  }
}

void iterate_symbol_owners_from_archive(char *a1, uint64_t a2, int a3, uint64_t a4, char *a5, char a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  if ((atomic_load_explicit(_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    iterate_symbol_owners_from_archive();
  }

  v20 = &foreach_object_in_archive(char const*,unsigned long long,char const*,void({block_pointer})(CSCppFileMemory *,CSCppArchiveEntry const*,unsigned long long,BOOL *,BOOL *))::archive_file_maps_lock;
  v21 = 1;
  std::mutex::lock(&foreach_object_in_archive(char const*,unsigned long long,char const*,void({block_pointer})(CSCppFileMemory *,CSCppArchiveEntry const*,unsigned long long,BOOL *,BOOL *))::archive_file_maps_lock);
  std::string::basic_string[abi:ne200100]<0>(v17, a1);
  v19 = a2;
  v10 = std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::find<std::pair<std::string,unsigned long long>>(qword_1EDADA760, v17);
  if (v10)
  {
    if (a5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, a5);
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(v10 + 6, &__p);
      v12 = v11;
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v13 = 0;
      }

      if (v29 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v13 = 0;
      v12 = v10[8];
    }

    LOBYTE(v27) = 0;
    for (LOBYTE(v26) = 0; v12 != v13; v12 = *v12)
    {
      if (!a5)
      {
        v14 = (v12 + 2);
        if (*(v12 + 39) < 0)
        {
          v14 = v12[2];
        }

        if (!strncmp(v14, "__.SYMDEF", 9uLL))
        {
          continue;
        }
      }

      new_partial_file_memory(a1, v12[5], 2, &__block_literal_global_1);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v21 == 1)
    {
      std::mutex::unlock(v20);
    }

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v26 = a2;
    v27 = a1;
    if (v21)
    {
      std::mutex::unlock(v20);
      v21 = 0;
      v23 = 0u;
      v24 = 0u;
      v25 = 1065353216;
      v22 = a2 + 8;
      new_partial_file_memory(a1, a2 + 8, 2, &__block_literal_global_1);
    }

    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_arch_in_macho_fat64_header(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    if (!v7 || *v7 != -1078264118 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = (32 * bswap32(v7[1])) | 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = (32 * v9) | 8;
  v15 = 1;
  do
  {
    if (bswap64(*(v10 + 1)) >= v14)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 8;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

uint64_t ___Z33iterate_symbol_owners_from_memoryP11CSCppMemoryPKcjyjRK17CSCppArchitectureS2_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v15 = bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32));
  result = CSCppArchitecture::matches(&v15, **(a1 + 48));
  if (result)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 76);
    v11 = bswap64(*(a2 + 1));
    v12 = bswap64(*(a2 + 2));
    v13 = *(a1 + 32);
    if (CSCppArchitecture::is_64_bit(&v15))
    {
      result = CSCppArchitecture::is_64_bit(&v15);
      if (!result || (result = CSCppArchitecture::is_little_endian(&v15), !result) || (result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(v7, v8, v9, v11, v12, v10, &v15, v13), !result))
      {
LABEL_11:
        v14 = 0;
LABEL_12:
        *(*(*(a1 + 40) + 8) + 24) |= v14;
        return result;
      }
    }

    else
    {
      result = CSCppArchitecture::is_little_endian(&v15);
      if (!result)
      {
        goto LABEL_11;
      }

      result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(v7, v8, v9, v11, v12, v10, &v15, v13);
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v14 = 1;
    if (*(a1 + 81) == 1)
    {
      *a3 = 1;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, unint64_t *a7, uint64_t a8)
{
  if (!a1)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
    v21[3] = &__block_descriptor_tmp_86_0;
    v21[4] = a4;
    new_partial_file_memory(a2, a4, 0, v21);
  }

  v20 = a1;
  v14 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v20, a4, 1);
  if (v14)
  {
    v15 = v14;
    v19[0] = v14[1] | ((v14[2] & 0xFFFFFF) << 32);
    if (CSCppArchitecture::matches(v19, *a7))
    {
      LOBYTE(v17) = 0;
      v18 = 0;
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::TExtendedMachOHeader(v19, a1, a4, v15, a2, a3, a6, &v17);
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v19);
    }
  }

  return 0;
}

void sub_1D97377A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6, unint64_t *a7, uint64_t a8)
{
  if (!a1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke;
    v20[3] = &__block_descriptor_tmp_85;
    v21 = a4;
    new_partial_file_memory(a2, a4, 0, v20);
  }

  v19 = a1;
  v14 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v19, a4, 1);
  if (v14)
  {
    v15 = v14;
    v18[0] = v14[1] | ((v14[2] & 0xFFFFFF) << 32);
    if (CSCppArchitecture::matches(v18, *a7))
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::TExtendedMachOHeader(v18, a1, a4, v15, a2, a3, a6, v16, 0, 0);
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v18);
    }
  }

  return 0;
}

void sub_1D97379B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t extract_segment_content_from_dsc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke;
  v19 = &unk_1E8583AC0;
  v26 = a1;
  v27 = a2;
  v28 = a4;
  v29 = a5;
  v22 = &v12;
  v23 = a3;
  v20 = a8;
  v21 = v10;
  v24 = a6;
  v25 = a7;
  dyld_for_each_installed_shared_cache();
  v8 = *(v13 + 24);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void sub_1D9737AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke(void *a1, uint64_t a2)
{
  result = dyld_shared_cache_copy_uuid();
  if (a1[10])
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[11] == 0;
  }

  if (v4)
  {
    v5 = *(a1[5] + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      return dyld_shared_cache_for_each_image();
    }
  }

  return result;
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke_2(void *a1, uint64_t a2)
{
  result = dyld_image_copy_uuid();
  if (result)
  {
    if (a1[9])
    {
      v4 = 0;
    }

    else
    {
      v4 = a1[10] == 0;
    }

    if (v4)
    {
      result = dyld_image_content_for_segment();
      *(*(a1[5] + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t ___Z32extract_segment_content_from_dsc4UUIDPKcS_yyU13block_pointerFvPKhmE_block_invoke_3(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  if (v5)
  {
    if (a1[6] + v5 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = a1[7];
        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v8 = *(a1[4] + 16);
  }

  else
  {
    v8 = *(a1[4] + 16);
  }

  return v8();
}

uint64_t extract_segment_content_from_kc_fileset(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (a2)
  {
    operator new();
  }

  return 0;
}

void extract_segment_content_from_binary_on_disk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a1;
  operator new();
}

void sub_1D9738358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  (*(*v18 + 8))(v18);
  _Unwind_Resume(a1);
}

void with_cfdata_from_file(const char *a1, uint64_t a2)
{
  v3 = open(a1, 0x1000000);
  if (v3 != -1)
  {
    v4 = v3;
    if (fstat(v3, &v11) || (v5 = mmap(0, v11.st_size, 1, 1, v4, 0), v5 == -1))
    {
      close(v4);
    }

    else
    {
      v6 = v5;
      signature_file_mapping_length = v11.st_size;
      close(v4);
      v10 = *byte_1F55055C8;
      v7 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v10);
      v8 = CFDataCreateWithBytesNoCopy(0, v6, signature_file_mapping_length, v7);
      if (v8)
      {
        v9 = v8;
        (*(a2 + 16))(a2, v8);
        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }
}

void *unmapping_deallocator(void *result, void *a2)
{
  if (result)
  {
    return munmap(result, signature_file_mapping_length);
  }

  return result;
}

void read_path_from_offset_in_cpp_memory(uint64_t a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  if (((a2 >= 0xFFFFFFFFFFFFFBFFLL) << 63) >> 63 == a2 >= 0xFFFFFFFFFFFFFBFFLL)
  {
    v4 = a2;
    if (a2 + 1025 > a2)
    {
      for (i = 1025; i; --i)
      {
        v7 = (*(*a1 + 32))(a1, v4, 1);
        if (!v7)
        {
          break;
        }

        if (!*v7)
        {
          *a3 = v9;
          memset(&v9, 0, sizeof(v9));
          v8 = 1;
          goto LABEL_8;
        }

        std::string::push_back(&v9, *v7);
        ++v4;
      }
    }
  }

  v8 = 0;
  a3->__r_.__value_.__s.__data_[0] = 0;
LABEL_8:
  a3[1].__r_.__value_.__s.__data_[0] = v8;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1D97385D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *__source = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(*(a1 + 24));
  *v5 = CSCppFlagsForHeader<SizeAndEndianness<Pointer64,LittleEndian>>(a1);
  *__dst = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
  std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,0>();
}

void sub_1D9738794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFlagsForHeader<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2 & 0x4000;
  v4 = v3 | 1;
  v5 = *(a1 + 24);
  v6 = *(v5 + 12);
  v7 = v2 & 0x38000000 | v3 | 1 | 0x100;
  v8 = v3 | 0x1001;
  if (v6 != 11)
  {
    v8 = v3 | 1;
  }

  if (v6 != 10)
  {
    v7 = v8;
  }

  v9 = v3 | 0x81;
  v10 = v3 | 5;
  if (v6 != 9)
  {
    v10 = v3 | 1;
  }

  if (v6 != 8)
  {
    v9 = v10;
  }

  if (v6 <= 9)
  {
    v7 = v9;
  }

  v11 = v3 | 0x21;
  v12 = v3 | 0x41;
  if (v6 != 7)
  {
    v12 = v3 | 1;
  }

  if (v6 != 6)
  {
    v11 = v12;
  }

  v13 = v3 | 0x801;
  v14 = v3 | 0x11;
  if (v6 != 2)
  {
    v14 = v4;
  }

  if (v6 == 1)
  {
    v14 = v13;
  }

  if (v6 > 5)
  {
    v14 = v11;
  }

  if (v6 <= 7)
  {
    v7 = v14;
  }

  v15 = (*(v5 + 24) >> 8) & 0x2000 | v7;
  is_protected = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_protected(v5);
  v17 = v15 | 2;
  if (!is_protected)
  {
    v17 = v15;
  }

  v18 = *(a1 + 24);
  v19 = v17 | (*(v18 + 24) >> 31 << 9);
  if (*(a1 + 32))
  {
    v20 = v19 | 0x400;
  }

  else
  {
    v20 = v19;
  }

  if (TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_restricted(v18))
  {
    v20 |= 0x8000u;
  }

  v21 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uses_cplusplus(*(a1 + 24));
  v22 = (*(*(a1 + 24) + 26) >> 5) & 1;
  if (v6 == 11)
  {
    LOBYTE(v22) = 1;
  }

  if ((v22 | v21))
  {
    return v20 | 0x200000;
  }

  else
  {
    return v20;
  }
}

double TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_source_version_load_command@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::source_version(*(a1 + 24));
  if (v3)
  {
    v5 = *(v3 + 1);
    if ((v3[2] & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u.%u.%u");
    }

    else if (((v5 >> 10) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u.%u");
    }

    else if (((v5 >> 20) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (((v5 >> 30) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      snprintf(__str, 0x20uLL, "%u");
    }

    result = *__str;
    v6 = v8;
    *a2 = *__str;
    *(a2 + 16) = v6;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

double TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_id_dylib_load_command@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::id_dylib(*(a1 + 24));
  if (v3)
  {
    if (v3[4])
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (BYTE1(v3[4]))
    {
      snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      snprintf(__str, 0x20uLL, "%u");
    }

    result = *__str;
    v5 = v7;
    *a2 = *__str;
    *(a2 + 16) = v5;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,std::allocator<CSCppSymbolOwner>,0>(void *a1, __int128 **a2, unsigned int *a3, uint64_t *a4, uint64_t *a5, unsigned int *a6, uint64_t *a7, const char **a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_protected(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  while (1)
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
    if (!result)
    {
      break;
    }

    if (*result == 25 && (*(result + 68) & 8) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::is_restricted(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 32 + v1;
  v7 = a1 + 32;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
  if (result)
  {
    v3 = result;
    while (*v3 != 25 || strncmp("__RESTRICT", (v3 + 8), 0xFuLL) || !TSegmentLoadCommand<SizeAndEndianness<Pointer64,LittleEndian>>::section_named(v3, "__restrict"))
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

const char *TSegmentLoadCommand<SizeAndEndianness<Pointer64,LittleEndian>>::section_named(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  for (i = (a1 + 72); strncmp(__s1, i, 0x10uLL); i += 80)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uses_cplusplus(uint64_t a1)
{
  v1 = *(a1 + 20);
  v5 = *(a1 + 16);
  v6 = a1;
  v7 = a1 + 32 + v1;
  v8 = a1 + 32;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
  if (result)
  {
    v3 = result;
    do
    {
      if (*v3 == 12)
      {
        v4 = *(v3 + 2);
        if (strstr(&v3[v4], "libc++.") || strstr(&v3[v4], "libstdc++."))
        {
          return 1;
        }
      }

      else if (*v3 == 15)
      {
        return 1;
      }

      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
      v3 = result;
    }

    while (result);
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::source_version(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 42);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::id_dylib(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 13);
  return result;
}

uint64_t *std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9738F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *__source = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(*(a1 + 24));
  *v5 = CSCppFlagsForHeader<SizeAndEndianness<Pointer32,LittleEndian>>(a1);
  *__dst = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
  std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,unsigned int const&,unsigned long long const&,unsigned long long const&,unsigned int,CSCppArchitecture const,char const* const&,0>();
}

void sub_1D97390F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFlagsForHeader<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2 & 0x4000;
  v4 = v3 | 1;
  v5 = *(a1 + 24);
  v6 = *(v5 + 12);
  v7 = v2 & 0x38000000 | v3 | 1 | 0x100;
  v8 = v3 | 0x1001;
  if (v6 != 11)
  {
    v8 = v3 | 1;
  }

  if (v6 != 10)
  {
    v7 = v8;
  }

  v9 = v3 | 0x81;
  v10 = v3 | 5;
  if (v6 != 9)
  {
    v10 = v3 | 1;
  }

  if (v6 != 8)
  {
    v9 = v10;
  }

  if (v6 <= 9)
  {
    v7 = v9;
  }

  v11 = v3 | 0x21;
  v12 = v3 | 0x41;
  if (v6 != 7)
  {
    v12 = v3 | 1;
  }

  if (v6 != 6)
  {
    v11 = v12;
  }

  v13 = v3 | 0x801;
  v14 = v3 | 0x11;
  if (v6 != 2)
  {
    v14 = v4;
  }

  if (v6 == 1)
  {
    v14 = v13;
  }

  if (v6 > 5)
  {
    v14 = v11;
  }

  if (v6 <= 7)
  {
    v7 = v14;
  }

  v15 = (*(v5 + 24) >> 8) & 0x2000 | v7;
  is_protected = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_protected(v5);
  v17 = v15 | 2;
  if (!is_protected)
  {
    v17 = v15;
  }

  v18 = *(a1 + 24);
  v19 = v17 | (*(v18 + 24) >> 31 << 9);
  if (*(a1 + 32))
  {
    v20 = v19 | 0x400;
  }

  else
  {
    v20 = v19;
  }

  if (TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_restricted(v18))
  {
    v20 |= 0x8000u;
  }

  v21 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uses_cplusplus(*(a1 + 24));
  v22 = (*(*(a1 + 24) + 26) >> 5) & 1;
  if (v6 == 11)
  {
    LOBYTE(v22) = 1;
  }

  if ((v22 | v21))
  {
    return v20 | 0x200000;
  }

  else
  {
    return v20;
  }
}

double TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_source_version_load_command@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::source_version(*(a1 + 24));
  if (v3)
  {
    v5 = *(v3 + 1);
    if ((v3[2] & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u.%u.%u");
    }

    else if (((v5 >> 10) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u.%u");
    }

    else if (((v5 >> 20) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (((v5 >> 30) & 0x3FF) != 0)
    {
      snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      snprintf(__str, 0x20uLL, "%u");
    }

    result = *__str;
    v6 = v8;
    *a2 = *__str;
    *(a2 + 16) = v6;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

double TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::version_from_id_dylib_load_command@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::id_dylib(*(a1 + 24));
  if (v3)
  {
    if (v3[4])
    {
      snprintf(__str, 0x20uLL, "%u.%u.%u");
    }

    else if (BYTE1(v3[4]))
    {
      snprintf(__str, 0x20uLL, "%u.%u");
    }

    else
    {
      snprintf(__str, 0x20uLL, "%u");
    }

    result = *__str;
    v5 = v7;
    *a2 = *__str;
    *(a2 + 16) = v5;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_protected(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  while (1)
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
    if (!result)
    {
      break;
    }

    if (*result == 1 && (*(result + 52) & 8) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::is_restricted(uint64_t a1)
{
  v1 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = a1;
  v6 = a1 + 28 + v1;
  v7 = a1 + 28;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
  if (result)
  {
    v3 = result;
    while (*v3 != 1 || strncmp("__RESTRICT", (v3 + 8), 0xFuLL) || !TSegmentLoadCommand<SizeAndEndianness<Pointer32,LittleEndian>>::section_named(v3, "__restrict"))
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v4);
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

const char *TSegmentLoadCommand<SizeAndEndianness<Pointer32,LittleEndian>>::section_named(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  for (i = (a1 + 56); strncmp(__s1, i, 0x10uLL); i += 68)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

unint64_t TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uses_cplusplus(uint64_t a1)
{
  v1 = *(a1 + 20);
  v5 = *(a1 + 16);
  v6 = a1;
  v7 = a1 + 28 + v1;
  v8 = a1 + 28;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
  if (result)
  {
    v3 = result;
    do
    {
      if (*v3 == 12)
      {
        v4 = *(v3 + 2);
        if (strstr(&v3[v4], "libc++.") || strstr(&v3[v4], "libstdc++."))
        {
          return 1;
        }
      }

      else if (*v3 == 15)
      {
        return 1;
      }

      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v5);
      v3 = result;
    }

    while (result);
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::source_version(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 42);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::id_dylib(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 13);
  return result;
}

uint64_t ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = snprintf(__str, 0x400uLL, "%s(", *(a1 + 48));
  if (v12 <= 0x400)
  {
    v13 = &__str[v12];
    v14 = 1024 - v12;
    v15 = CSCppArchiveEntry::name_cpy(a3, v13, v14);
    if (v14 >= v15)
    {
      strlcat(&v13[v15], ")", v14 - v15);
    }
  }

  v16 = CSCppArchiveEntry::offset_to_macho_header(a3);
  v17 = (*(*a2 + 32))(a2, v16, 4);
  if (v17 && ((v18 = *v17, *v17 > -822415875) ? ((v18 + 17958194) >= 2 ? (v19 = v18 == -822415874) : (v19 = 1), v20 = -805638658) : ((v18 + 889275714) >= 2 ? (v19 = v18 == -1095041334) : (v19 = 1), v20 = -1078264118), !v19 ? (v21 = v18 == v20) : (v21 = 1), v21))
  {
    v22 = CSCppArchiveEntry::size_without_name(a3);
    v23 = strtoul(a3 + 16, 0, 10);
    v24 = *(a1 + 72);
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    v27 = *(a1 + 76);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_50;
    v30[3] = &unk_1E8583AE8;
    v30[5] = v16 + a4;
    v30[6] = v22;
    v30[4] = *(a1 + 32);
    result = iterate_symbol_owners_from_memory(a2, __str, v23, v16, v24 | 0x4000u, v25, v26, v27, v30);
    *(*(*(a1 + 40) + 8) + 24) |= result;
    if (result && *(a1 + 76) == 1)
    {
      *a5 = 1;
    }

    *a6 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 48);
      *buf = 136315394;
      v32 = v29;
      v33 = 2080;
      v34 = __str;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Corrupt archive entry in %s -- no header found for entry %s\n", buf, 0x16u);
    }

    return fprintf(*MEMORY[0x1E69E9848], "Corrupt archive entry in %s -- no header found for entry %s\n", *(a1 + 48), __str);
  }

  return result;
}

uint64_t CSCppArchiveEntry::offset_to_macho_header(CSCppArchiveEntry *this)
{
  if (*this == 35 && *(this + 1) == 49 && *(this + 2) == 47)
  {
    return strtoul(this + 3, 0, 10) + 60;
  }

  else
  {
    return 60;
  }
}

unint64_t CSCppArchiveEntry::size_without_name(CSCppArchiveEntry *this)
{
  if (*this != 35 || *(this + 1) != 49 || *(this + 2) != 47)
  {
    return strtoul(this + 48, 0, 10);
  }

  v2 = strtoul(this + 48, 0, 10);
  return v2 - strtoul(this + 3, 0, 10);
}

void ___ZL34iterate_symbol_owners_from_archivePKcyjRK17CSCppArchitectureS0_bU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(v3 + 152) = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v4 + 16))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1D9739B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::archive_entry_at(void *a1, uint64_t a2, int a3)
{
  v6 = 60;
  do
  {
    v7 = (*(**a1 + 32))(*a1, a2, v6);
    v9 = v7;
    if (!v7)
    {
      break;
    }

    if (*(v7 + 58) != 96)
    {
      return 0;
    }

    v10 = *(v7 + 59);
    if (v10 != 10 || a3 == 0)
    {
      if (v10 != 10)
      {
        return 0;
      }

      return v9;
    }

    v12 = v8;
    v6 = strtoul((v7 + 48), 0, 10) + 60;
  }

  while (v6 > v12);
  return v9;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::find<std::pair<std::string,unsigned long long>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v21, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v2[3];
  v7 = (v4 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = (v4 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
    if (v7 >= *&v5)
    {
      v10 = v7 % *&v5;
    }
  }

  else
  {
    v10 = v7 & (*&v5 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        v16 = *(v12 + 39);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v12[3];
        }

        if (v16 == v14)
        {
          v18 = v17 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v18, v2, v14) && v12[5] == v6)
          {
            return v12;
          }
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v10)
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

size_t CSCppArchiveEntry::name_cpy(CSCppArchiveEntry *this, char *__dst, size_t __n)
{
  if (__PAIR64__(*(this + 1), *this) == 0x3100000023 && *(this + 2) == 47)
  {
    strncpy(__dst, this + 60, __n);
    v5 = &__dst[__n - 1];
  }

  else
  {
    v6 = 15;
    do
    {
      v7 = v6;
      if (v6 == -1)
      {
        break;
      }

      v8 = *(this + v6--);
    }

    while (v8 == 32);
    if (v7 + 1 < __n - 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = __n - 1;
    }

    strncpy(__dst, this, v9);
    v5 = &__dst[v9];
  }

  *v5 = 0;

  return strlen(__dst);
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_impl<char (&)[1024],unsigned long long &>(v3);
}

void sub_1D9739EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9739FB4(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 2);
  v2[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v2 + 2);
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
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

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v18);
  }

  return 0;
}

void sub_1D973A1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = (std::__string_hash<char>::operator()[abi:ne200100](&v7, a2 + 2) + (v2[5] << 6) + (v2[5] >> 2) + 2654435769u) ^ v2[5];
  v2[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v2 + 2);
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::unordered_map<std::string,unsigned long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::__unordered_map_hasher<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,std::equal_to<std::pair<std::string,unsigned long long>>,true>,std::__unordered_map_equal<std::pair<std::string,unsigned long long>,std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>,std::equal_to<std::pair<std::string,unsigned long long>>,ArchiveAndArchOffsetHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,unsigned long long>,std::unordered_map<std::string,unsigned long long>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v8 = (v4 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a3 + 23);
        if (v11 >= 0)
        {
          v12 = *(a3 + 23);
        }

        else
        {
          v12 = a3[1];
        }

        if (v11 >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        v14 = a3[3];
        do
        {
          v15 = v10[1];
          if (v15 == a2)
          {
            v16 = *(v10 + 39);
            v17 = v16;
            if (v16 < 0)
            {
              v16 = v10[3];
            }

            if (v16 == v12)
            {
              v18 = v17 >= 0 ? (v10 + 2) : v10[2];
              if (!memcmp(v18, v13, v12) && v10[5] == v14)
              {
                return v10;
              }
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v15 >= v4)
              {
                v15 %= v4;
              }
            }

            else
            {
              v15 &= v4 - 1;
            }

            if (v15 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v20 = (*(a1 + 24) + 1);
  v21 = *(a1 + 32);
  if (!v4 || (v21 * v4) < v20)
  {
    v22 = 1;
    if (v4 >= 3)
    {
      v22 = (v4 & (v4 - 1)) != 0;
    }

    v23 = v22 | (2 * v4);
    v24 = vcvtps_u32_f32(v20 / v21);
    if (v23 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, v25);
  }

  return 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::unordered_map<std::string,unsigned long long>>,0>(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t ___ZL24get_archive_entry_memoryPKcy_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0, 60);
  if (result)
  {
    if (*(result + 58) == 96 && *(result + 59) == 10)
    {
      return strtoul((result + 48), 0, 10) + 60;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::foreach_fileset_entry(void *a1, uint64_t a2, uint64_t a3)
{
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v5 = result[5];
    v8 = result[4];
    v9 = result;
    v10 = result + v5 + 32;
    v11 = result + 8;
    v7 = 0;
    do
    {
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v8);
      if (!result)
      {
        break;
      }

      if (*result == -2147483595 && a3 != 0)
      {
        result = (*(a3 + 16))(a3, result, &v7);
      }
    }

    while (v7 != 1);
  }

  return result;
}

uint64_t ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke_2;
  v10[3] = &unk_1E8583B58;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v12 = v8;
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 40), v5, v6, v7, v8, 0, v10);
  **(a1 + 72) = result;
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  *v26 = a3;
  *&v26[8] = a4;
  result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v13 = 0;
    v14 = *(result + 20);
    v22 = *(result + 16);
    v23 = result;
    v24 = result + 32 + v14;
    v25 = result + 32;
    while (1)
    {
      v15 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v22);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (*v15 == 27)
      {
        if (*v26 == *(v15 + 8) && *&v26[8] == *(v15 + 16))
        {
          v19 = v13;
          goto LABEL_17;
        }
      }

      else if (*v15 == 25)
      {
        v17 = strlen((v15 + 8));
        if (!strncmp((v16 + 8), a5, v17) && strlen(a5) == v17)
        {
          v13 = v16;
        }
      }
    }

    v19 = 0;
LABEL_17:
    if (UUID::is_null(v26))
    {
      v19 = v13;
    }

    if (v19 && *(v19 + 48))
    {
      if (a6)
      {
        v20 = a2;
      }

      else
      {
        v20 = 0;
      }

      v21 = (*(**a1 + 32))(*a1, *(v19 + 40) + v20);
      (*(a7 + 16))(a7, v21, *(v19 + 48));
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZZ39extract_segment_content_from_kc_fileset17CSCppArchitecturePKcS1_4UUIDyyU13block_pointerFvPKhmEENK3__0clES1__block_invoke_2(void *a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v9 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    v7 = *(a1[4] + 16);
  }

  return v7();
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::foreach_arch_in_macho_fat32_header(void *a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = 8;
  while (1)
  {
    v7 = (*(**a1 + 32))(*a1, v5, v6);
    if (!v7 || *v7 != -1095041334 || !v7[1] || bswap32(v7[1]) > 0x2C)
    {
      break;
    }

    v6 = 20 * bswap32(v7[1]) + 8;
    if (v8 >= v6)
    {
      v9 = bswap32(v7[1]);
      v10 = v7 + 2;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_9:
  v17 = 0;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9;
  v14 = 20 * v9 + 8;
  v15 = 1;
  do
  {
    if (v14 <= bswap32(v10[2]))
    {
      if (a3)
      {
        (*(a3 + 16))(a3, v10, &v17);
        v11 = v17;
      }

      ++v12;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 += 5;
    ++v15;
  }

  while ((v11 & 1) == 0);
  return v12;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  result = CSCppArchitecture::matches(*(a1 + 48), bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32)));
  if (result)
  {
    v7 = bswap32(a2[2]);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2;
    v11[3] = &unk_1E8583BA8;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 72);
    v13 = v10;
    result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 56), v7, v8, v9, v10, 1, v11);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::provide_segment_content_matching_owner_uuid(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, const char *a5, int a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  *v26 = a3;
  *&v26[8] = a4;
  result = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(a1, a2, 1);
  if (result)
  {
    v13 = 0;
    v14 = *(result + 20);
    v22 = *(result + 16);
    v23 = result;
    v24 = result + 28 + v14;
    v25 = result + 28;
    while (1)
    {
      v15 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v22);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (*v15 == 27)
      {
        if (*v26 == *(v15 + 8) && *&v26[8] == *(v15 + 16))
        {
          v19 = v13;
          goto LABEL_17;
        }
      }

      else if (*v15 == 1)
      {
        v17 = strlen((v15 + 8));
        if (!strncmp((v16 + 8), a5, v17) && strlen(a5) == v17)
        {
          v13 = v16;
        }
      }
    }

    v19 = 0;
LABEL_17:
    if (UUID::is_null(v26))
    {
      v19 = v13;
    }

    if (v19 && *(v19 + 36))
    {
      if (a6)
      {
        v20 = a2;
      }

      else
      {
        v20 = 0;
      }

      v21 = (*(**a1 + 32))(*a1, *(v19 + 32) + v20);
      (*(a7 + 16))(a7, v21, *(v19 + 36));
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2(void *a1, uint64_t a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v9 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    v7 = *(a1[4] + 16);
  }

  return v7();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_74(void *a1, uint64_t a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v9 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    v7 = *(a1[4] + 16);
  }

  return v7();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  result = CSCppArchitecture::matches(*(a1 + 48), bswap64(a2[1] & 0xFFFFFF00 | (*a2 << 32)));
  if (result)
  {
    v7 = bswap32(a2[2]);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2;
    v11[3] = &unk_1E8583C20;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 72);
    v13 = v10;
    result = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::provide_segment_content_matching_owner_uuid((a1 + 56), v7, v8, v9, v10, 1, v11);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_2(void *a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v9 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    v7 = *(a1[4] + 16);
  }

  return v7();
}

uint64_t ___ZL22access_segment_contentI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKc4UUIDyyRK17CSCppArchitectureU13block_pointerFvPKhmE_block_invoke_79(void *a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  if (v4)
  {
    if (a1[6] + v4 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = a1[7];
        *buf = 136315138;
        v9 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested vm range length in %s does not exist in file.\n", buf, 0xCu);
      }

      fprintf(*MEMORY[0x1E69E9848], "Requested vm range length in %s does not exist in file.\n", a1[7]);
      return (*(a1[4] + 16))();
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    v7 = *(a1[4] + 16);
  }

  return v7();
}

uint64_t std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 32);
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1] ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2[1] ^ *a2;
    if (v4 >= *&v5)
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<UUID,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 4;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_1D973B95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA736760](v20, v19);
  _Unwind_Resume(a1);
}

_DWORD *___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer3212LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, *(a1 + 32), 28);
  if (result)
  {
    if (*result == -17958194)
    {
      return (result[5] + 28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *___ZL46process_symbol_owner_from_memory_arch_specificI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_jRK17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, *(a1 + 32), 32);
  if (result)
  {
    if (*result == -17958193)
    {
      return (result[5] + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0, *MEMORY[0x1E69E9AC8]);
  if (result)
  {
    if (*(result + 12) == 12)
    {
      result = *(result + 20) + 32;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v4 = v3 + a2;
  v8[1] = 0x40000000;
  v8[2] = ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_3;
  v8[3] = &unk_1E8583D28;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8[5] = v4;
  v8[6] = v6;
  v8[4] = *(a1 + 32);
  result = process_symbol_owner_from_memory_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(0, v6, v5, *(a2 + 16), *(a1 + 64) - *(a2 + 16), *(a1 + 72) | 0x80000u, (a1 + 76), v8);
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

void ___ZL37iterate_symbol_owners_from_mh_filesetI17SizeAndEndiannessI9Pointer6412LittleEndianEEbP11CSCppMemoryPKcNT_6size_tENS8_5ptr_tES9_j17CSCppArchitectureU13block_pointerFvNSt3__110shared_ptrI16CSCppSymbolOwnerEEE_block_invoke_3(uint64_t a1, void ***a2)
{
  v4 = *a2;
  *(v4 + 27) = *(*a2 + 27) & 0xFEF7FDFF | 0x1080000;
  CSCppSymbolOwner::set_path(v4, *(a1 + 40));
  CSCppSymbolOwner::set_path_for_symbolication(*a2, *(a1 + 48));
  v6 = *a2;
  v5 = a2[1];
  *(v6 + 27) = *(*a2 + 27) & 0xFEBFFFFF;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v7 + 16))(v7, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1D973BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void CSCppFileMemory::mapped_file_table_entry_key(CSCppFileMemory *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (*(this + 87) >= 0)
  {
    v8 = *(this + 87);
  }

  else
  {
    v8 = *(this + 9);
  }

  v9 = &v32;
  std::string::basic_string[abi:ne200100](&v32, v8 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v32.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(this + 87) >= 0)
    {
      v10 = this + 64;
    }

    else
    {
      v10 = *(this + 8);
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 45;
  std::to_string(&v31, a2);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v31;
  }

  else
  {
    v11 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v32, v11, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v33, "-", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v30, a3);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v30.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v34, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v35, "-", 1uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a4);
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
    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __p.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v36, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v37[0] = v25->__r_.__value_.__l.__size_;
  *(v37 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v28 = v37[0];
  *(this + 12) = v26;
  *(this + 13) = v28;
  *(this + 111) = *(v37 + 7);
  *(this + 119) = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1D973BF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppFileMemory::map_file(CSCppFileMemory *this, int a2, unint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&mapped_file_table_mutex);
  if (!mapped_file_table)
  {
    operator new();
  }

  CSCppFileMemory::mapped_file_table_entry_key(this, a3, a4, *(this + 11));
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(mapped_file_table, this + 12);
  if (v8)
  {
    v10 = v8[5];
    CSCppReferenceCount::retain(v10, v9);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (this + 64);
    if (*(this + 87) < 0)
    {
      v12 = *v12;
    }

    v13 = mmap(0, a4, 1, 8193, a2, a3);
    CSCppFileMemory::_total_mmapped_bytes += a4;
    if (v13 != -1)
    {
      operator new();
    }

    v14 = __error();
    v15 = strerror(*v14);
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15 == 22)
    {
      if (v16)
      {
        v17 = *__error();
        buf[0] = 136315394;
        *&buf[1] = v12;
        v21 = 1024;
        LODWORD(v22) = v17;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempt to mmap %s failed, Unknown Error %d\n", buf, 0x12u);
      }

      v18 = *MEMORY[0x1E69E9848];
      __error();
      fprintf(v18, "Attempt to mmap %s failed, Unknown Error %d\n");
    }

    else
    {
      if (v16)
      {
        buf[0] = 136315394;
        *&buf[1] = v12;
        v21 = 2080;
        v22 = v15;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempt to mmap %s failed, %s\n", buf, 0x16u);
      }

      fprintf(*MEMORY[0x1E69E9848], "Attempt to mmap %s failed, %s\n");
    }

    v11 = 0;
    if (*(this + 119) < 0)
    {
      **(this + 12) = 0;
      *(this + 13) = 0;
    }

    else
    {
      *(this + 96) = 0;
      *(this + 119) = 0;
    }
  }

  pthread_mutex_unlock(&mapped_file_table_mutex);
  return v11;
}

uint64_t CSCppFileMemory::unmap_file(CSCppFileMemory *this)
{
  pthread_mutex_lock(&mapped_file_table_mutex);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(mapped_file_table, this + 12);
  if (v2)
  {
    v3 = v2[5];
    v4 = *(v3 + 4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v7 = ___ZN15CSCppFileMemory10unmap_fileEv_block_invoke;
    v8 = &__block_descriptor_tmp_10;
    v9 = this;
    v10 = v4;
    v11 = v3;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      v7(v6);
      (*(*v3 + 8))(v3);
    }
  }

  return pthread_mutex_unlock(&mapped_file_table_mutex);
}

const void **___ZN15CSCppFileMemory10unmap_fileEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSCppFileMemory::_total_mmapped_bytes -= *(a1 + 40);
  result = std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__erase_unique<std::string>(mapped_file_table, (v1 + 96));
  if (*(v1 + 119) < 0)
  {
    **(v1 + 96) = 0;
    *(v1 + 104) = 0;
  }

  else
  {
    *(v1 + 96) = 0;
    *(v1 + 119) = 0;
  }

  return result;
}

uint64_t CSCppFileMemory::total_mmapped_bytes(CSCppFileMemory *this)
{
  pthread_mutex_lock(&mapped_file_table_mutex);
  v1 = CSCppFileMemory::_total_mmapped_bytes;
  pthread_mutex_unlock(&mapped_file_table_mutex);
  return v1;
}

uint64_t CSCppFileMemory::CSCppFileMemory(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, char a5)
{
  v25 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5505640;
  v9 = (a1 + 64);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (!a2)
  {
    a2 = "";
  }

  *(a1 + 40) = 0uLL;
  *(a1 + 56) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 64), a2);
  *(a1 + 88) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "");
  v10 = v9;
  if (*(a1 + 87) < 0)
  {
    v10 = *v9;
  }

  v11 = open(v10, 0x1000000, 0);
  v12 = v11;
  if ((v11 & 0x80000000) == 0)
  {
    if (!fstat(v11, &v24) && (v24.st_mode & 0xF000) == 0x8000)
    {
      st_size = v24.st_size;
      st_ino = v24.st_ino;
      *(a1 + 16) = v24.st_size;
      *(a1 + 88) = st_ino;
      if (st_size)
      {
        *(a1 + 56) = v24.st_mtimespec.tv_sec;
        if ((a5 & 1) != 0 && st_size > a3 && a4 + a3 > st_size)
        {
          a4 = st_size - a3;
        }

        if (a4 + a3 <= st_size)
        {
          if (a4)
          {
            v18 = a4;
          }

          else
          {
            a3 = 0;
            v18 = st_size;
          }

          *(a1 + 48) = a3;
          v19 = *MEMORY[0x1E69E9AB8];
          v20 = *MEMORY[0x1E69E9AB8] & a3;
          *(a1 + 32) = v20 + v18;
          v21 = CSCppFileMemory::map_file(a1, v12, a3 & ~v19, v20 + v18);
          *(a1 + 8) = v21;
          *(a1 + 24) = v21 + v20;
          if ((a5 & 2) != 0)
          {
            v22 = 0;
          }

          else
          {
            v22 = a3;
          }

          *(a1 + 40) = v22;
        }

        else if (st_size != a3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = v9;
            if (*(a1 + 87) < 0)
            {
              v16 = *v9;
            }

            v24.st_dev = 134219010;
            *&v24.st_mode = a3;
            WORD2(v24.st_ino) = 2048;
            *(&v24.st_ino + 6) = a4 + a3;
            HIWORD(v24.st_gid) = 2048;
            *&v24.st_rdev = a4;
            LOWORD(v24.st_atimespec.tv_sec) = 2048;
            *(&v24.st_atimespec.tv_sec + 2) = st_size;
            WORD1(v24.st_atimespec.tv_nsec) = 2080;
            *(&v24.st_atimespec.tv_nsec + 4) = v16;
            _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempting to map range %llu-%llu length %llu past end of file %llu in: %s\n", &v24, 0x34u);
            st_size = *(a1 + 16);
          }

          v17 = v9;
          if (*(a1 + 87) < 0)
          {
            v17 = *v9;
          }

          fprintf(*MEMORY[0x1E69E9848], "Attempting to map range %llu-%llu length %llu past end of file %llu in: %s\n", a3, a4 + a3, a4, st_size, v17);
        }
      }
    }

    if (v12)
    {
      close(v12);
    }
  }

  return a1;
}

void sub_1D973C76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void CSCppFileMemory::~CSCppFileMemory(void **this)
{
  *this = &unk_1F5505640;
  if (this[1])
  {
    CSCppFileMemory::unmap_file(this);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

{
  CSCppFileMemory::~CSCppFileMemory(this);

  JUMPOUT(0x1DA736760);
}

unint64_t CSCppFileMemory::bytes_at(void *a1, unint64_t a2, uint64_t a3)
{
  if (a1[1] && (v3 = a1[5], a2 >= v3) && a3 + a2 <= a1[4] + v3)
  {
    return a2 - v3 + a1[3];
  }

  else
  {
    return 0;
  }
}

uint64_t CSCppFileMemory::to_string@<X0>(CSCppFileMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "CSCppFileMemory ", 16);
  v7 = *(this + 8);
  v6 = this + 64;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  if ((v22 & 0x10) != 0)
  {
    v12 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v12 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    locale = v17[1].__locale_;
    v12 = v17[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, locale, v11);
  }

LABEL_20:
  a2[v11] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v23);
}

void sub_1D973CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7366F0](v3 + 112);
  _Unwind_Resume(a1);
}

void MappedFileTableEntry::~MappedFileTableEntry(MappedFileTableEntry *this)
{
  MappedFileTableEntry::~MappedFileTableEntry(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F55056A0;
  munmap(*(this + 2), *(this + 4));
}

const void **std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__emplace_unique_key_args<std::string,std::string&,MappedFileTableEntry *&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__construct_node_hash<std::string&,MappedFileTableEntry *&>();
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
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_1D973CDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D973CEC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::__erase_unique<std::string>(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MappedFileTableEntry *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MappedFileTableEntry *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MappedFileTableEntry *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void CSShow(uint64_t a1, uint64_t a2)
{
  v2 = CSCopyDescriptionWithIndent(a1, a2, 0);
  CFShow(v2);

  CFRelease(v2);
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, mach_port_name_t name, int a3, int a4)
{
  *this = &unk_1F55056D8;
  *(this + 2) = 0;
  *(this + 3) = a3;
  if (a3 != -1 && (!a4 || !mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1)))
  {
    *(this + 2) = name;
  }
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, mach_port_name_t t)
{
  x = -1;
  if (pid_for_task(t, &x))
  {
    v4 = -1;
  }

  else
  {
    v4 = x;
  }

  CSCppMachTaskContainer::CSCppMachTaskContainer(this, t, v4, 1);
}

uint64_t taskForPid(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  v2 = task_read_for_pid();
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v5 = v1;
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CSCppMachTaskContainer task_for_pid failed for process %u, err %d", buf, 0xEu);
  }

  return 0;
}

void CSCppMachTaskContainer::CSCppMachTaskContainer(CSCppMachTaskContainer *this, uint64_t a2)
{
  v2 = a2;
  v4 = taskForPid(a2);
  *this = &unk_1F55056D8;
  *(this + 2) = 0;
  *(this + 3) = v2;
  if (v2 != -1)
  {
    *(this + 2) = v4;
  }
}

void CSCppMachTaskContainer::~CSCppMachTaskContainer(CSCppMachTaskContainer *this)
{
  *this = &unk_1F55056D8;
  v1 = *(this + 2);
  if (v1 + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  }
}

{
  CSCppMachTaskContainer::~CSCppMachTaskContainer(this);

  JUMPOUT(0x1DA736760);
}

BOOL CSCppMachTaskContainer::is_alive(CSCppMachTaskContainer *this)
{
  v2 = *(this + 2);
  if (v2 + 1 < 2)
  {
    return 0;
  }

  x = -1;
  v4 = pid_for_task(v2, &x);
  v5 = x;
  if (v4)
  {
    v5 = -1;
  }

  return v5 == *(this + 3);
}

__CFData *CSSymbolOwnerCreateSparseSignatureWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 8) != 0)
  {
    return _CSSymbolOwnerCreateFlatbufferSignatureWithAddressSet<__CFData const*>(a1, a2, a5, a3, a4);
  }

  else
  {
    return _CSSymbolOwnerCreateSparseSignature<__CFData *>(a1, a2, a3, a4);
  }
}

CFMutableDataRef _CSSymbolOwnerCreateSparseSignature<__CFData *>(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v7 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  v9 = atomic_load((v8 + 40));
  v10 = v9 & 0x80002000;
  v11 = *(v8 + 32);
  v12 = *((*(*v11 + 16))(v11) + 12);
  v13 = (*(*v11 + 24))(v11);
  CSCppSignatureEncodeSymbolicator<__CFData *>(Mutable, v12, v13, v10 | 2, 1);
  CSCppSignatureEncodeSymbolOwner<__CFData *>(Mutable, (v7 + 16), *(v7 + 104), *(v7 + 108), *(v7 + 88), *(v7 + 96), *(v7 + 112), *(v7 + 120), (v7 + 32), 0);
  if ((CSCppAddSparseMMapArchiveToSignature<__CFData *>(Mutable, (a4 & 0xFFFFFFFFFFFFFFFCLL)) & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  v14 = (*(*v11 + 48))(v11);
  v15 = (*(*v11 + 64))(v11);
  v16 = (*(*v11 + 56))(v11);
  v17 = (*(*v11 + 72))(v11);
  CSCppSignatureEncodeOptionalData<__CFData *>(Mutable, 4, v14, v15, v16, v17, 2, v8);
  return Mutable;
}

CFMutableDataRef _CSSymbolOwnerCreateSignatureWithSlide<__CFData *>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  v11 = *(v10 + 32);
  v12 = *((*(*v11 + 16))(v11) + 12);
  v13 = (*(*v11 + 24))(v11);
  v14 = atomic_load((v10 + 40));
  CSCppSignatureEncodeSymbolicator<__CFData *>(Mutable, v12, v13, v14, 1);
  CSCppSignatureEncodeSymbolOwner<__CFData *>(Mutable, (v9 + 16), *(v9 + 104), *(v9 + 108), *(v9 + 88), *(v9 + 96), *(v9 + 112), *(v9 + 120), (v9 + 32), a4);
  if (a3)
  {
    CSCppAddMMapArchiveToSignatureFromSymbolOwner<__CFData *>(a1, a2, Mutable, (a3 >> 2) & 1);
  }

  v15 = (*(*v11 + 48))(v11);
  v16 = (*(*v11 + 64))(v11);
  v17 = (*(*v11 + 56))(v11);
  v18 = (*(*v11 + 72))(v11);
  CSCppSignatureEncodeOptionalData<__CFData *>(Mutable, 4, v15, v16, v17, v18, 2, v10);
  return Mutable;
}

CFMutableDataRef CSSymbolOwnerCreateSignature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 8) != 0)
  {
    return _CSSymbolOwnerCreateFlatbufferSignature<__CFData const*>(a1, a2, a3);
  }

  else
  {
    return _CSSymbolOwnerCreateSignatureWithSlide<__CFData *>(a1, a2, a3, 0);
  }
}

__CFString *CSSymbolOwnerCopyDescriptionWithIndent(char a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  for (i = CFStringCreateMutable(0, 0); a3; --a3)
  {
    CFStringAppendCString(i, "\t", 0x8000100u);
  }

  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes(a1, a2);
  if (CFUUIDBytes)
  {
    CSUUIDCFUUIDBytesToString(CFUUIDBytes, v13, 0x28uLL);
  }

  else
  {
    strcpy(v13, "null-uuid                           ");
  }

  LoadTimestamp = CSSymbolOwnerGetLoadTimestamp(a1, a2);
  UnloadTimestamp = CSSymbolOwnerGetUnloadTimestamp(a1, a2);
  if (LoadTimestamp || UnloadTimestamp != 0x7FFFFFFFFFFFFFFFLL)
  {
    snprintf(__str, 0x29uLL, "[0x%016llx 0x%016llx] ", LoadTimestamp, UnloadTimestamp);
  }

  else
  {
    __str[0] = 0;
  }

  Path = CSSymbolOwnerGetPath(a1, a2);
  CFStringAppendFormat(i, 0, @"<CSSymbolOwner: %p> %s %s%s", a2 & 0xFFFFFFFFFFFFFFFCLL, v13, __str, Path);
  return i;
}

mach_vm_address_t _CSCppConvertLegacyPreVersion7ArchiveToModernCopyWithValidation(_OWORD *a1, int a2)
{
  v4 = *(a1 + 1);
  v12[0] = 0;
  v12[1] = v4;
  mach_vm_allocate(*MEMORY[0x1E69E9A60], v12, v4, 3);
  v5 = v12[0];
  if (v12[0])
  {
    v6 = a1[1];
    *v12[0] = *a1;
    *(v5 + 16) = v6;
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[5];
    *(v5 + 64) = a1[4];
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    memcpy((v5 + 96), a1 + 6, *(a1 + 1) - 96);
    *(v5 + 4) = v4;
    v10 = TMMapArchive::calculate_checksum(v5);
    *(v5 + 48) = v10;
    *(v5 + 88) = 4 * *(v5 + 16);
    v12[0] = 0;
    if (a2)
    {
      if (!*(v5 + 4) || v10 != TMMapArchive::calculate_checksum(v5) || !TMMapArchive::are_offsets_in_bounds(v5))
      {
        v5 = 0;
      }
    }
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(v12);
  return v5;
}

mach_vm_address_t _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(CSMMapArchiveCompatibilityUtilities *a1, TMMapArchive *a2)
{
  v2 = a2;
  v4 = CSMMapArchiveCompatibilityUtilities::required_size_for_modern_archive_from_v5(a1, a2);
  address[0] = 0;
  address[1] = v4;
  mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v4, 3);
  v5 = address[0];
  if (address[0])
  {
    v6 = *(a1 + 1);
    *address[0] = *a1;
    *(v5 + 16) = v6;
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    v9 = *(a1 + 5);
    *(v5 + 64) = *(a1 + 4);
    *(v5 + 80) = v9;
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    v29 = *(v5 + 68);
    is_64_bit = CSCppArchitecture::is_64_bit(&v29);
    v11 = a1 + 88;
    if (is_64_bit)
    {
      v12 = *(a1 + 1) - 88;
      v13 = (v5 + 96);
    }

    else
    {
      v14 = v5 + 96;
      v15 = (32 * *(a1 + 2));
      v16 = &v11[v15];
      memcpy((v5 + 96), v11, v15);
      v17 = *(a1 + 3);
      if (v17)
      {
        v18 = (32 * *(v5 + 8)) + v14;
        v19 = *(a1 + 3);
        v20 = v16;
        do
        {
          v21 = HIDWORD(*v20);
          *v18 = *v20;
          *(v18 + 8) = v21;
          *(v18 + 16) = *(v20 + 2);
          v20 += 16;
          v18 += 24;
          --v19;
        }

        while (v19);
      }

      v11 = &v16[16 * v17];
      v13 = (v15 + v14 + 24 * v17);
      v12 = (*(a1 + 1) + a1 - v11);
    }

    memcpy(v13, v11, v12);
    v22 = *(v5 + 16);
    if (*v5 == 1)
    {
      LODWORD(v22) = 4 * v22;
    }

    else if (v22)
    {
      v23 = 0;
      v24 = (v5 + (32 * *(v5 + 8)) + (24 * *(v5 + 12)) + 108);
      do
      {
        v25 = *v24;
        v24 += 6;
        if (v25)
        {
          ++v23;
        }

        --v22;
      }

      while (v22);
      LODWORD(v22) = 4 * v23;
    }

    *(v5 + 88) = v22;
    *(v5 + 4) = v4;
    v26 = TMMapArchive::calculate_checksum(v5);
    *(v5 + 48) = v26;
    v27 = *(v5 + 4);
    *(v5 + 84) = v27 - (*(v5 + 88) + *(v5 + 80)) - (32 * *(v5 + 8) + 24 * *(v5 + 12) + 24 * *(v5 + 16) + 4 * *(v5 + 16) + 36 * *(v5 + 20) + 20 * *(v5 + 24)) - 96;
    address[0] = 0;
    if (v2 && (!v27 || v26 != TMMapArchive::calculate_checksum(v5) || !TMMapArchive::are_offsets_in_bounds(v5)))
    {
      v5 = 0;
    }
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(address);
  return v5;
}

void sub_1D973DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(va);
  _Unwind_Resume(a1);
}

uint64_t CSMMapArchiveCompatibilityUtilities::required_size_for_modern_archive_from_v5(uint64_t this, TMMapArchive *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 4);
    v4 = *(this + 68);
    if ((CSCppArchitecture::is_64_bit(&v4) & 1) == 0)
    {
      v3 += 8 * *(v2 + 12);
    }

    return (v3 + 8);
  }

  return this;
}

int32x4_t *CSCppConvertLegacyPreVersion5ArchiveToModernCopy(CSMMapArchiveCompatibilityUtilities *a1)
{
  result = _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(a1, 0);
  if (result)
  {
    v3 = result;
    v4 = result[2].i32[3];
    if (v4)
    {
      result[2].i32[3] = v4 + 8;
    }

    v5 = result[2].i32[2];
    if (v5)
    {
      result[2].i32[2] = v5 + 8;
    }

    CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(result, v2);
    if (*(v3 + 1) && (v6 = *(v3 + 12), v6 == TMMapArchive::calculate_checksum(v3)))
    {
      if (TMMapArchive::are_offsets_in_bounds(v3))
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

mach_vm_address_t CSCppConvertModernArchiveToLegacyPreVersion6Copy(uint64_t a1, TMMapArchive *a2)
{
  if (!a1)
  {
    return 0;
  }

  address = 0;
  v17 = LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(a1, a2);
  mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v17, 3);
  v3 = address;
  if (address)
  {
    LegacyMMapArchiveVersion5::LegacyMMapArchiveVersion5(address, a1);
    v15 = *(a1 + 68);
    if (CSCppArchitecture::is_64_bit(&v15))
    {
      v4 = TMMapArchive::strtab_end(a1);
      v5 = (a1 + 96);
      v6 = (v4 - (a1 + 96));
      v7 = (v3 + 88);
    }

    else
    {
      v8 = v3 + 88;
      v9 = (32 * *(a1 + 8));
      memcpy((v3 + 88), (a1 + 96), v9);
      v10 = *(a1 + 12);
      if (v10)
      {
        v11 = ((32 * *(v3 + 8)) + v8);
        v12 = *(a1 + 12);
        v13 = (v9 + a1 + 96);
        do
        {
          *v11 = vmovn_s64(*v13);
          v11[1].i32[0] = v13[1].i32[0];
          v13 = (v13 + 24);
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v5 = (v9 + a1 + 96 + 24 * v10);
      v7 = (v9 + v8 + 16 * v10);
      v6 = (*(a1 + 4) - (v9 + 96 + 24 * v10));
    }

    memcpy(v7, v5, v6);
    address = 0;
  }

  MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(&address);
  return v3;
}

void sub_1D973DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(va);
  _Unwind_Resume(a1);
}

uint64_t LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(LegacyMMapArchiveVersion5 *this, TMMapArchive *a2)
{
  v3 = TMMapArchive::strtab_end(this) - this - 8;
  v5 = *(this + 68);
  if ((CSCppArchitecture::is_64_bit(&v5) & 1) == 0)
  {
    return (v3 - 8 * *(this + 3));
  }

  return v3;
}

uint64_t TMMapArchive::strtab_end(TMMapArchive *this)
{
  v1 = *(this + 2);
  v2.i64[0] = v1;
  v2.i64[1] = HIDWORD(v1);
  v3 = v2;
  v3.i32[1] = v2.i32[0];
  v3.i32[3] = *(this + 6);
  return this + *(this + 20) + *(this + 21) + vaddlvq_u32(vmulq_s32(v3, xmmword_1D97E0550)) + (32 * *(this + 2)) + (24 * *(this + 3)) + *(this + 22) + 96;
}

int32x4_t *CSCppConvertSymbolOwnerLegacyPreVersion5ArchiveToModernCopy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return CSCppConvertLegacyPreVersion5ArchiveToModernCopy(mmap_archive_from_symbol_owner);
}

mach_vm_address_t CSCppConvertSymbolOwnerLegacyPreVersion6ArchiveToModernCopy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return _CSCppConvertLegacyPreVersion6ArchiveToModernCopyWithValidation(mmap_archive_from_symbol_owner, 1);
}

mach_vm_address_t CSCppConvertSymbolOwnerModernArchiveToLegacyPreVersion6Copy(char a1, uint64_t a2)
{
  mmap_archive_from_symbol_owner = _get_mmap_archive_from_symbol_owner(a1, a2);

  return CSCppConvertModernArchiveToLegacyPreVersion6Copy(mmap_archive_from_symbol_owner, v3);
}

uint64_t _get_mmap_archive_from_symbol_owner(char a1, uint64_t a2)
{
  if (!CSIsNull(a1, a2) && (a1 & 7 | (8 * (a2 & 3))) == 3 && (v6 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFFCLL), v4, v5), (*(*v6 + 24))(v6) == 4))
  {
    return v6[11];
  }

  else
  {
    return 0;
  }
}

uint64_t TMMapArchive::are_offsets_in_bounds(TMMapArchive *this)
{
  v2 = this + 96;
  v3 = this + 32 * *(this + 2) + 24 * *(this + 3) + (24 * *(this + 4)) + (4 * *(this + 4)) + (36 * *(this + 5)) + (20 * *(this + 6)) + *(this + 22) + *(this + 20) + 96;
  v4 = TMMapArchive::strtab_end(this);
  v5 = *(this + 10);
  v6 = *(this + 2);
  v7 = *(this + 22);
  v8 = (32 * *(this + 2));
  if (v5)
  {
    v9.i64[0] = v6;
    v9.i64[1] = HIDWORD(v6);
    v10 = v9;
    v10.i32[1] = *(this + 2);
    v10.i32[3] = *(this + 6);
    v11 = &v2[v7 + *(this + 20) + (24 * *(this + 3)) + v5 + vaddlvq_u32(vmulq_s32(v10, xmmword_1D97E0550)) + v8];
    if (v11)
    {
      if (v11 < v3 || v11 >= v4)
      {
        return 0;
      }
    }
  }

  v14 = *(this + 11);
  v15 = (24 * *(this + 3));
  v16 = (24 * v6);
  v17 = (36 * HIDWORD(v6));
  v18 = (20 * *(this + 6));
  v19 = (4 * v6);
  if (!v14 || (v20 = &v2[v14 + v8 + v15 + v16 + v19 + v18 + v7 + *(this + 20) + v17]) == 0 || (v13 = 0, v20 >= v3) && v20 < v4)
  {
    v21 = &v2[v8 + v15];
    v22 = &v21[v16];
    v23 = &v21[v16 + v18 + v17];
    v24 = (v23 + v7);
    if (v7)
    {
      v25 = v23;
      do
      {
        v26 = v23 - *v25;
        if (v26 < v21 || v26 >= v22)
        {
          return 0;
        }

        ++v25;
        ++v23;
      }

      while (v25 != v24);
    }

    if (v19)
    {
      v28 = (v24 + v19);
      v29 = v24 + 1;
      do
      {
        v30 = v24 - *(v29 - 1);
        v13 = v30 >= v21 && v30 < v22;
        v32 = !v13 || v29++ == v28;
        ++v24;
      }

      while (!v32);
    }

    else
    {
      return 1;
    }
  }

  return v13;
}

uint64_t CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(int32x4_t *this, TMMapArchive *a2)
{
  v2 = this->u32[0];
  v4 = this[2].u32[2];
  v3 = this[2].u32[3];
  v5 = &this[6].i8[32 * this->i32[2] + 24 * this->i32[3] + (24 * this[1].i32[0]) + (4 * this[1].i32[0]) + (36 * this[1].i32[1]) + (20 * this[1].i32[2]) + this[5].u32[2] + this[5].u32[0]];
  if (v3)
  {
    v6 = &this->i8[v3];
  }

  else
  {
    v6 = 0;
  }

  v9[0] = this + 32 * this->i32[2] + 24 * this->i32[3] + (24 * this[1].i32[0]) + (4 * this[1].i32[0]) + (36 * this[1].i32[1]) + (20 * this[1].i32[2]) + this[5].u32[2] + this[5].u32[0] + 96;
  v9[1] = v6;
  v7 = &this->i8[v4];
  if (!v4)
  {
    v7 = 0;
  }

  v9[2] = v5;
  v9[3] = v7;
  v9[4] = v5;
  v9[5] = v2;
  v9[6] = v5;
  v9[7] = v2;
  v9[8] = v5;
  v9[9] = v5;
  v10 = v2;
  v11 = v2;
  v12 = v5;
  v13 = v2;
  return CSMMapArchiveCompatibilityUtilities::_update_archive<CSMMapArchiveCompatibilityUtilities::ArchiveUpdater<CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::VersionOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::DsymPathOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapRegionImpl<Pointer64> *,CSMMapArchiveCompatibilityUtilities::RegionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSymbol *,CSMMapArchiveCompatibilityUtilities::SymbolTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapInlinedSymbol *,CSMMapArchiveCompatibilityUtilities::InlinedFunctionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSourceInfo *,CSMMapArchiveCompatibilityUtilities::SourceInfoTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapArchive *,CSMMapArchiveCompatibilityUtilities::PostProcessingTag)#1}>>(this, v9);
}

uint64_t CSMMapArchiveCompatibilityUtilities::_update_archive<CSMMapArchiveCompatibilityUtilities::ArchiveUpdater<CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::VersionOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(unsigned int *,CSMMapArchiveCompatibilityUtilities::DsymPathOffsetTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapRegionImpl<Pointer64> *,CSMMapArchiveCompatibilityUtilities::RegionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSymbol *,CSMMapArchiveCompatibilityUtilities::SymbolTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapInlinedSymbol *,CSMMapArchiveCompatibilityUtilities::InlinedFunctionTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(CSCppMMapSourceInfo *,CSMMapArchiveCompatibilityUtilities::SourceInfoTag)#1},CSMMapArchiveCompatibilityUtilities::_update_string_offsets_to_strtab_relative(TMMapArchive *)::{lambda(TMMapArchive *,CSMMapArchiveCompatibilityUtilities::PostProcessingTag)#1}>>(int32x4_t *this, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = v3 - *(a2 + 16);
  if (!v3)
  {
    v4 = 0;
  }

  this[2].i32[2] = v4;
  v5 = *(a2 + 8);
  v6 = v5 - *a2;
  if (!v5)
  {
    v6 = 0;
  }

  this[2].i32[3] = v6;
  v7 = this->u32[3];
  v8 = &this[6].i8[32 * this->i32[2]];
  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = 24 * v7;
    v11 = (this[7].i32 + (32 * this->i32[2]));
    v12 = v8 - *(a2 + 32);
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      *v11 += v13;
      v11 += 6;
      v12 += 24;
      v10 -= 24;
    }

    while (v10);
  }

  v14 = &v8[(24 * v7)];
  v15 = this[1].u32[0];
  if (v15)
  {
    v16 = *(a2 + 56);
    v17 = 24 * v15;
    v18 = (v14 + 12);
    v19 = v14 - *(a2 + 48);
    do
    {
      if (v16 >= 4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      *v18 = vadd_s32(vdup_n_s32(v20), *v18);
      v18 += 3;
      v19 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  v21 = &v14[(24 * v15)];
  v22 = this[1].u32[1];
  if (v22)
  {
    v23 = *(a2 + 64);
    v24 = *(a2 + 88);
    v25 = *(a2 + 80);
    v26 = (v21 + 12);
    v27 = v21 - *(a2 + 72);
    v28 = 36 * v22;
    v29 = v21;
    do
    {
      if (v26[-1].i32[1] < 0)
      {
        if (v24 >= 4)
        {
          v31 = v23;
        }

        else
        {
          v31 = v29;
        }

        v30 = v31 + v26[1].i32[1];
      }

      else
      {
        v30 = 0;
      }

      v26[1].i32[1] = v30 - v23;
      if (v25 >= 4)
      {
        v32 = 0;
      }

      else
      {
        v32 = v27;
      }

      *v26 = vadd_s32(*v26, vdup_n_s32(v32));
      v26 = (v26 + 36);
      v27 += 36;
      v29 += 36;
      v28 -= 36;
    }

    while (v28);
  }

  v33 = this[1].u32[2];
  if (v33)
  {
    v34 = &v21[(36 * v22)];
    v35 = *(a2 + 96);
    v36 = (v34 + 20 * v33);
    v37 = *(a2 + 104);
    v38 = v34;
    do
    {
      if (v37 >= 4)
      {
        v39 = v35;
      }

      else
      {
        v39 = v34;
      }

      *(v38 + 2) = CSCppMMapSourceInfo::path(v38, v39) - v35;
      v38 = (v38 + 20);
      v34 = (v34 + 20);
    }

    while (v38 != v36);
  }

  result = TMMapArchive::calculate_checksum(this);
  this[3].i32[0] = result;
  return result;
}

void LegacyMMapArchiveVersion5::LegacyMMapArchiveVersion5(LegacyMMapArchiveVersion5 *this, TMMapArchive *a2)
{
  v4 = LegacyMMapArchiveVersion5::required_bytes_from_modern_archive(a2, a2);
  *this = 7;
  *(this + 1) = v4;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 52) = *(a2 + 52);
  *(this + 68) = *(a2 + 68);
  *(this + 76) = *(a2 + 76);
  *(this + 21) = 0;
}

mach_vm_address_t *MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(mach_vm_address_t *a1)
{
  if (*a1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, a1[1]);
  }

  return a1;
}

mach_vm_address_t *MachVMAllocatePtr<LegacyMMapArchiveVersion5>::~MachVMAllocatePtr(mach_vm_address_t *a1)
{
  if (*a1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, a1[1]);
  }

  return a1;
}

void sub_1D973E628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D973E760(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::CSCppSymbolicator(uint64_t a1, uint64_t **a2, uint64_t *a3, int a4, const void *a5)
{
  *a1 = &unk_1F5505708;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = CSCppSymbolicator::_symbolicator_family_architecture<std::vector<std::shared_ptr<CSCppSymbolOwner>>>(a2);
  v10 = *a3;
  *a3 = 0;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = _Block_copy(a5);
  *(a1 + 56) = 0;
  *(a1 + 64) &= ~1u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0;
  atomic_store(a4 & 0xFFFF3FFF, (a1 + 40));
  atomic_fetch_or((a1 + 40), 0x2000u);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    do
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CSCppSymbolOwner::set_symbolicator(v13, a1);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  operator new();
}

void sub_1D973E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  MEMORY[0x1DA736760](v15, 0x10A1C40B218BFB8, a3, a4, a5, a6, a7, a8);
  v17 = v14[15];
  if (v17)
  {
    v14[16] = v17;
    operator delete(v17);
  }

  a14 = v14 + 12;
  std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v18 = v14[9];
  v14[9] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v14[4];
  v14[4] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolicator::_symbolicator_family_architecture<std::vector<std::shared_ptr<CSCppSymbolOwner>>>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = *(**a1 + 112);
  while (v1 != v2)
  {
    if (*(*v1 + 112) != result)
    {
      return CSArchitectureGetFamily(result);
    }

    v1 += 16;
  }

  return result;
}

uint64_t *CSCppSymbolicator::initialize_aot_symbolication_session(CSCppSymbolicator *this)
{
  result = *(this + 4);
  if (*(result + 16) == 1)
  {
    v3 = (*(*result + 64))(result);
    v4 = (*(**(this + 4) + 72))(*(this + 4));
    v5 = (*(**(this + 4) + 48))(*(this + 4));
    v6 = (*(**(this + 4) + 56))(*(this + 4));
    if (UUID::is_null(v5))
    {
      v5 = 0;
    }

    if (UUID::is_null(v6))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = (*(this + 4) + 8);

    return CSInitializeAotSymbolicationSession(v8, v3, v4, v5, v7);
  }

  return result;
}

uint64_t CSCppSymbolicator::send_notification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 48);
  if (result)
  {
    if (a2 == 256)
    {
      v6 = a4;
    }

    else
    {
      v6 = 0;
    }

    if (a2 == 256)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    if (a2 == 257)
    {
      v6 = a4;
      v7 = a3;
    }

    v8[0] = 2;
    v8[1] = a1;
    v8[2] = v7;
    v8[3] = v6;
    return (*(result + 16))(result, a2, v8, a4);
  }

  return result;
}

void CSCppSymbolicator::~CSCppSymbolicator(CSCppSymbolicator *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5505708;
  os_unfair_lock_lock(this + 3);
  atomic_fetch_or(this + 10, 0x4000u);
  os_unfair_lock_unlock(this + 3);
  (*(**(this + 4) + 128))(*(this + 4));
  v2 = *(this + 6);
  if (v2)
  {
    *&v11 = 2;
    *(&v11 + 1) = this;
    v12 = 0;
    v13 = 0;
    (*(v2 + 16))(v2, 0x80000000, &v11);
    v3 = *(this + 6);
    if (v3)
    {
      _Block_release(v3);
      *(this + 6) = 0;
    }
  }

  os_unfair_lock_lock(this + 3);
  v4 = atomic_load(this + 11);
  v5 = *(this + 9);
  if (v5 != v4)
  {
    v6 = atomic_load(this + 11);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    atomic_store(0, this + 11);
    v5 = *(this + 9);
  }

  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  os_unfair_lock_unlock(this + 3);
  CSDestroyAotSymbolicationSession(*(*(this + 4) + 8));
  if (CSGetDebugLoggingLevel() >= 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 134217984;
    *(&v11 + 4) = this;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SYMBOLICATOR %p DESTRUCTED\n", &v11, 0xCu);
  }

  v7 = *(this + 18);
  if (v7)
  {
    release_core_file_mapped_memory_cache(v7);
    *(this + 18) = 0;
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  *&v11 = this + 96;
  std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

{
  CSCppSymbolicator::~CSCppSymbolicator(this);

  JUMPOUT(0x1DA736760);
}

void sub_1D973EE6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double CSCppSymbolicator::set_aot_image_infos(uint64_t a1, __n128 *a2)
{
  v3 = std::vector<CSSymbolicatorAotImageInfo>::__move_assign(a1 + 120, a2);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 5));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(v4, v5, v7, 1, v3).n128_u64[0];
  return result;
}

char *CSCppSymbolicator::add_aot_image_info(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  v3 = (a1 + 120);
  if (v4 != v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[96 * (v6 >> 1)];
      v9 = *(v8 + 1);
      v10 = v8 + 96;
      v6 += ~(v6 >> 1);
      if (*(a2 + 8) < v9)
      {
        v6 = v7;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v6);
    v4 = v5;
  }

  return std::vector<CSSymbolicatorAotImageInfo>::insert(v3, v4, a2);
}

char *std::vector<CSSymbolicatorAotImageInfo>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v16 = &__src[-v14];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v42 = a1;
    if (v19)
    {
      std::allocator<CSSymbolicatorAotImageInfo>::allocate_at_least[abi:ne200100](a1, v19);
    }

    v39 = 0;
    v40 = 32 * (v16 >> 5);
    v41 = v40;
    std::__split_buffer<CSSymbolicatorAotImageInfo>::emplace_back<CSSymbolicatorAotImageInfo const&>(&v39, a3);
    v24 = v40;
    memcpy(v41, v4, a1[1] - v4);
    v25 = *a1;
    v26 = v40;
    *&v41 = v41 + a1[1] - v4;
    a1[1] = v4;
    v27 = v4 - v25;
    v28 = (v26 - (v4 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    *(a1 + 1) = v41;
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v39 = v29;
    v40 = v29;
    if (v29)
    {
      operator delete(v29);
    }

    return v24;
  }

  else if (__src == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 16) = v20;
    v21 = *(a3 + 2);
    v22 = *(a3 + 3);
    v23 = *(a3 + 5);
    *(v6 + 64) = *(a3 + 4);
    *(v6 + 80) = v23;
    *(v6 + 32) = v21;
    *(v6 + 48) = v22;
    a1[1] = v6 + 96;
  }

  else
  {
    v8 = __src + 96;
    if (v6 < 0x60)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 96;
      v10 = *(v6 - 80);
      *v6 = *(v6 - 96);
      *(v6 + 16) = v10;
      v11 = *(v6 - 64);
      v12 = *(v6 - 48);
      v13 = *(v6 - 16);
      *(v6 + 64) = *(v6 - 32);
      *(v6 + 80) = v13;
      *(v6 + 32) = v11;
      *(v6 + 48) = v12;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 96, __src, v6 - v8);
      v9 = a1[1];
    }

    v31 = v9 <= a3 || v4 > a3;
    v32 = 96;
    if (v31)
    {
      v32 = 0;
    }

    v33 = &a3[v32];
    v34 = *(v33 + 1);
    *v4 = *v33;
    *(v4 + 1) = v34;
    v35 = *(v33 + 2);
    v36 = *(v33 + 3);
    v37 = *(v33 + 5);
    *(v4 + 4) = *(v33 + 4);
    *(v4 + 5) = v37;
    *(v4 + 2) = v35;
    *(v4 + 3) = v36;
  }

  return v4;
}

void sub_1D973F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppSymbolicator::get_aot_image_info_for_address@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 120);
  v3 = *(this + 128);
  if (v3 != v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5);
    v3 = *(this + 120);
    do
    {
      v6 = v5 >> 1;
      v7 = v3 + 96 * (v5 >> 1);
      v8 = *(v7 + 8);
      v9 = v7 + 96;
      v5 += ~(v5 >> 1);
      if (v8 > a2)
      {
        v5 = v6;
      }

      else
      {
        v3 = v9;
      }
    }

    while (v5);
  }

  if (v3 == v4 || (v10 = *(v3 - 88), v10 > a2) || *(v3 - 80) + v10 <= a2)
  {
    v15 = 0;
    *a3 = 0;
  }

  else
  {
    v11 = (v3 - 96);
    v12 = v11[3];
    *(a3 + 32) = v11[2];
    *(a3 + 48) = v12;
    v13 = v11[5];
    *(a3 + 64) = v11[4];
    *(a3 + 80) = v13;
    v14 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v14;
    v15 = 1;
  }

  *(a3 + 96) = v15;
  return this;
}

void CSCppSymbolicator::force_allocate_all_symbol_owner_data(CSCppSymbolicator *this)
{
  CSCppSymbolicator::get_symbol_owners(v5, this);
  v3 = v5[0];
  v4 = v5[1];
  while (v3 != v4)
  {
    CSCppSymbolOwner::data(*v3, v1, v2);
    v3 += 2;
  }

  v6 = v5;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1D973F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::apply_mutable_context_block(uint64_t a1, uint64_t a2)
{
  CSCppSymbolicator::get_symbol_owners(&v16, a1);
  CSCppMutableContext::CSCppMutableContext(&v9, &v16);
  v15 = &v16;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v15);
  (*(a2 + 16))(a2, &v9);
  CSCppMutableContext::make_all_symbol_owners_immutable(&v9);
  v8 = 1;
  memset(v5, 0, sizeof(v5));
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v5, v9, v10, (v10 - v9) >> 4);
  memset(v6, 0, sizeof(v6));
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v6, v11, v12, (v12 - v11) >> 4);
  memset(v7, 0, 24);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v7, v13, v14, (v14 - v13) >> 4);
  v7[3] = &v8;
  add_explicit = atomic_fetch_add_explicit((a1 + 68), 1u, memory_order_relaxed);
  os_unfair_lock_lock((a1 + 12));
  if ((add_explicit & 0xF0000000) != 0 && (add_explicit & 0xFFFFFFF) == 0)
  {
    if (add_explicit)
    {
      std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::erase(a1 + 96, *(a1 + 96), (*(a1 + 96) + (add_explicit >> 25)));
      atomic_fetch_add((a1 + 68), -(add_explicit & 0xF0000000));
    }
  }

  atomic_store(0, (a1 + 80));
  atomic_load((a1 + 88));
  operator new();
}

void sub_1D973F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  os_unfair_lock_unlock(v20 + 3);
  CSCppMutableContext::~CSCppMutableContext(v21);
  CSCppMutableContext::~CSCppMutableContext(va);
  _Unwind_Resume(a1);
}

void CSCppSymbolicator::dyld_activity(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = atomic_load((a1 + 40));
    if ((v4 & 0x4000) == 0)
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2000000000;
      v8 = a4;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = ___ZN17CSCppSymbolicator13dyld_activityEONSt3__110shared_ptrI16CSCppSymbolOwnerEEyb_block_invoke;
      v5[3] = &unk_1E8583D98;
      v6 = a4;
      v5[5] = a2;
      v5[6] = a3;
      v5[4] = v7;
      CSCppSymbolicator::apply_mutable_context_block(a1, v5);
    }
  }
}

void sub_1D973F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17CSCppSymbolicator13dyld_activityEONSt3__110shared_ptrI16CSCppSymbolOwnerEEyb_block_invoke(uint64_t a1, void **a2)
{
  v2 = *(a1 + 48);
  v3 = **(a1 + 40);
  *(v3 + 108) |= 0x1000000u;
  v4 = 96;
  if (*(a1 + 56))
  {
    v4 = 88;
  }

  *(v3 + v4) = v2;
  v6 = v3 + 32;
  v5 = *(v3 + 32);
  if (*(v6 + 8) == v5)
  {
    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *a2;
  if (*a2 < a2[1])
  {
    v10 = *v5;
    v11 = *a2;
    do
    {
      v12 = *v11;
      v13 = v11[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12[4];
      if (v12[5] == v14)
      {
        std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
      }

      if (v10 == *v14 && ((v15 = **(a1 + 40), v15[2] == v12[2]) ? (v16 = v15[3] == v12[3]) : (v16 = 0), v16 && (v17 = v12[12], v17 >= 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19 = v12[11];
        if (*(a1 + 48) - v19 >= v17 - v19)
        {
          v18 = 0;
        }

        else
        {
          if (*(a1 + 56) == 1)
          {
            *(*(*(a1 + 32) + 8) + 24) = 0;
          }

          else
          {
            v15[11] = v19;
            *(*(*(a1 + 32) + 8) + 24) = 1;
            CSCppMutableContext::remove_symbol_owner(a2, v9);
          }

          v18 = 2;
        }
      }

      else
      {
        v18 = 4;
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if ((v18 | 4) != 4)
      {
        break;
      }

      v11 += 2;
      ++v9;
    }

    while (v11 < a2[1]);
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v20 = *(a1 + 40);
    v22 = *v20;
    v21 = v20[1];
    *&v23 = v22;
    *(&v23 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    CSCppMutableContext::add_symbol_owner_no_copy(a2, &v23);
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
    }
  }
}

void sub_1D973FBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<CSCppSymbolOwnerTimeline>>::clear[abi:ne200100](void *result)
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

__n128 std::vector<CSSymbolicatorAotImageInfo>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a2 - 12;
  v11 = a2 - 18;
  v290 = &a2[-18].n128_u64[1];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-6].n128_u64[1] < v12->n128_u64[1])
        {
          v329 = *v12;
          v368 = v12[1];
          v484 = v12[4];
          v523 = v12[5];
          v406 = v12[2];
          v445 = v12[3];
          v168 = a2[-1];
          v170 = a2[-4];
          v169 = a2[-3];
          v12[4] = a2[-2];
          v12[5] = v168;
          v12[2] = v170;
          v12[3] = v169;
          v171 = a2[-5];
          *v12 = a2[-6];
          v12[1] = v171;
          a2[-6] = v329;
          a2[-5] = v368;
          result = v406;
          a2[-2] = v484;
          a2[-1] = v523;
          a2[-4] = v406;
          a2[-3] = v445;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v178 = v12[6].n128_u64[1];
      v179 = v12[12].n128_u64[1];
      if (v178 >= v12->n128_u64[1])
      {
        if (v179 < v178)
        {
          v413 = v12[8];
          v452 = v12[9];
          v491 = v12[10];
          v528 = v12[11];
          v336 = v12[6];
          v374 = v12[7];
          v253 = v12[15];
          v12[8] = v12[14];
          v12[9] = v253;
          v254 = v12[17];
          v12[10] = v12[16];
          v12[11] = v254;
          v255 = v12[13];
          v12[6] = v12[12];
          v12[7] = v255;
          v12[12] = v336;
          v12[13] = v374;
          v12[16] = v491;
          v12[17] = v528;
          result = v452;
          v12[14] = v413;
          v12[15] = v452;
          if (v12[6].n128_u64[1] < v12->n128_u64[1])
          {
            v337 = *v12;
            v375 = v12[1];
            v492 = v12[4];
            v529 = v12[5];
            v414 = v12[2];
            v453 = v12[3];
            v256 = v12[11];
            v12[4] = v12[10];
            v12[5] = v256;
            v257 = v12[9];
            v12[2] = v12[8];
            v12[3] = v257;
            v258 = v12[7];
            *v12 = v12[6];
            v12[1] = v258;
            v12[6] = v337;
            v12[7] = v375;
            result = v414;
            v12[10] = v492;
            v12[11] = v529;
            v12[8] = v414;
            v12[9] = v453;
          }
        }
      }

      else if (v179 >= v178)
      {
        v340 = *v12;
        v378 = v12[1];
        v495 = v12[4];
        v531 = v12[5];
        v417 = v12[2];
        v456 = v12[3];
        v274 = v12[11];
        v12[4] = v12[10];
        v12[5] = v274;
        v275 = v12[9];
        v12[2] = v12[8];
        v12[3] = v275;
        v276 = v12[7];
        *v12 = v12[6];
        v12[1] = v276;
        v12[6] = v340;
        v12[7] = v378;
        result = v417;
        v12[10] = v495;
        v12[11] = v531;
        v12[8] = v417;
        v12[9] = v456;
        if (v179 < v12[6].n128_u64[1])
        {
          v418 = v12[8];
          v457 = v12[9];
          v496 = v12[10];
          v532 = v12[11];
          v341 = v12[6];
          v379 = v12[7];
          v277 = v12[15];
          v12[8] = v12[14];
          v12[9] = v277;
          v278 = v12[17];
          v12[10] = v12[16];
          v12[11] = v278;
          v279 = v12[13];
          v12[6] = v12[12];
          v12[7] = v279;
          v12[12] = v341;
          v12[13] = v379;
          v12[16] = v496;
          v12[17] = v532;
          result = v457;
          v12[14] = v418;
          v12[15] = v457;
        }
      }

      else
      {
        v331 = *v12;
        v370 = v12[1];
        v486 = v12[4];
        v525 = v12[5];
        v408 = v12[2];
        v447 = v12[3];
        v180 = v12[17];
        v12[4] = v12[16];
        v12[5] = v180;
        v181 = v12[15];
        v12[2] = v12[14];
        v12[3] = v181;
        v182 = v12[13];
        *v12 = v12[12];
        v12[1] = v182;
        v12[12] = v331;
        v12[13] = v370;
        result = v408;
        v12[16] = v486;
        v12[17] = v525;
        v12[14] = v408;
        v12[15] = v447;
      }

      if (a2[-6].n128_u64[1] >= v12[12].n128_u64[1])
      {
        return result;
      }

      v419 = v12[14];
      v458 = v12[15];
      v497 = v12[16];
      v533 = v12[17];
      v342 = v12[12];
      v380 = v12[13];
      v280 = a2[-5];
      v12[12] = *v9;
      v12[13] = v280;
      v281 = a2[-1];
      v283 = a2[-4];
      v282 = a2[-3];
      v12[16] = a2[-2];
      v12[17] = v281;
      v12[14] = v283;
      v12[15] = v282;
      *v9 = v342;
      a2[-5] = v380;
      result = v419;
      a2[-2] = v497;
      a2[-1] = v533;
      a2[-4] = v419;
      a2[-3] = v458;
      if (v12[12].n128_u64[1] >= v12[6].n128_u64[1])
      {
        return result;
      }

      v420 = v12[8];
      v459 = v12[9];
      v498 = v12[10];
      v534 = v12[11];
      v343 = v12[6];
      v381 = v12[7];
      v284 = v12[15];
      v12[8] = v12[14];
      v12[9] = v284;
      v285 = v12[17];
      v12[10] = v12[16];
      v12[11] = v285;
      v286 = v12[13];
      v12[6] = v12[12];
      v12[7] = v286;
      v12[12] = v343;
      v12[13] = v381;
      v12[16] = v498;
      v12[17] = v534;
      result = v459;
      v12[14] = v420;
      v12[15] = v459;
LABEL_192:
      if (v12[6].n128_u64[1] < v12->n128_u64[1])
      {
        v344 = *v12;
        v382 = v12[1];
        v499 = v12[4];
        v535 = v12[5];
        v421 = v12[2];
        v460 = v12[3];
        v287 = v12[11];
        v12[4] = v12[10];
        v12[5] = v287;
        v288 = v12[9];
        v12[2] = v12[8];
        v12[3] = v288;
        v289 = v12[7];
        *v12 = v12[6];
        v12[1] = v289;
        v12[6] = v344;
        v12[7] = v382;
        result = v421;
        v12[10] = v499;
        v12[11] = v535;
        v12[8] = v421;
        v12[9] = v460;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(v12, &v12[6], &v12[12], &v12[18], &a2[-6]).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 2303)
    {
      v183 = v12 + 6;
      v185 = v12 == a2 || v183 == a2;
      if (a4)
      {
        if (!v185)
        {
          v186 = 0;
          v187 = v12;
          do
          {
            v188 = v183;
            v189 = v187[6].n128_u64[1];
            if (v189 < v187->n128_u64[1])
            {
              v190 = v188->n128_u64[0];
              v409 = v187[9];
              v448 = v187[10];
              v487 = v187[11];
              v191 = v187[7];
              result = v187[8];
              v192 = v186;
              v332 = v191;
              while (1)
              {
                v193 = (v12->n128_u64 + v192);
                v194 = *(&v12[3] + v192);
                v193[8] = *(&v12[2] + v192);
                v193[9] = v194;
                v195 = *(&v12[5] + v192);
                v193[10] = *(&v12[4] + v192);
                v193[11] = v195;
                v196 = *(&v12[1] + v192);
                v193[6] = *(v12 + v192);
                v193[7] = v196;
                if (!v192)
                {
                  break;
                }

                v192 -= 96;
                if (v189 >= *(v193 - 11))
                {
                  v197 = &v12[6] + v192;
                  goto LABEL_129;
                }
              }

              v197 = v12;
LABEL_129:
              *v197 = v190;
              *(v197 + 8) = v189;
              *(v197 + 48) = v409;
              *(v197 + 64) = v448;
              *(v197 + 80) = v487;
              *(v197 + 16) = v332;
              *(v197 + 32) = result;
            }

            v183 = v188 + 6;
            v186 += 96;
            v187 = v188;
          }

          while (&v188[6] != a2);
        }
      }

      else if (!v185)
      {
        do
        {
          v259 = v183;
          v260 = a1[6].n128_u64[1];
          if (v260 < a1->n128_u64[1])
          {
            v261 = v183->n128_u64[0];
            v415 = a1[9];
            v454 = a1[10];
            v493 = a1[11];
            v262 = v259;
            v338 = a1[7];
            v376 = a1[8];
            do
            {
              v263 = v262[-3];
              v262[2] = v262[-4];
              v262[3] = v263;
              v264 = v262[-1];
              v262[4] = v262[-2];
              v262[5] = v264;
              v265 = v262[-5];
              *v262 = v262[-6];
              v262[1] = v265;
              v266 = v262[-12].n128_u64[1];
              v262 -= 6;
            }

            while (v260 < v266);
            v262->n128_u64[0] = v261;
            v262->n128_u64[1] = v260;
            v262[1] = v338;
            result = v376;
            v262[4] = v454;
            v262[5] = v493;
            v262[2] = v376;
            v262[3] = v415;
          }

          v183 = v259 + 6;
          a1 = v259;
        }

        while (&v259[6] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v198 = (v14 - 2) >> 1;
        v199 = v198;
        do
        {
          v200 = v199;
          if (v198 >= v199)
          {
            v201 = (2 * v199) | 1;
            v202 = &v12[6 * v201];
            if (2 * v199 + 2 < v14)
            {
              v203 = v202->n128_u64[1];
              v204 = v202[6].n128_u64[1];
              v205 = v203 >= v204;
              v206 = v203 >= v204 ? 0 : 96;
              v202 = (v202 + v206);
              if (!v205)
              {
                v201 = 2 * v199 + 2;
              }
            }

            v207 = &v12[6 * v199];
            v208 = v207->n128_u64[1];
            if (v202->n128_u64[1] >= v208)
            {
              v209 = v207->n128_u64[0];
              v333 = v207[1];
              v449 = v207[4];
              v488 = v207[5];
              v371 = v207[2];
              v410 = v207[3];
              do
              {
                v210 = v207;
                v207 = v202;
                v211 = v202[1];
                *v210 = *v202;
                v210[1] = v211;
                v212 = v202[2];
                v213 = v202[3];
                v214 = v202[5];
                v210[4] = v202[4];
                v210[5] = v214;
                v210[2] = v212;
                v210[3] = v213;
                if (v198 < v201)
                {
                  break;
                }

                v215 = (2 * v201) | 1;
                v202 = &v12[6 * v215];
                v216 = 2 * v201 + 2;
                if (v216 < v14)
                {
                  v217 = v202->n128_u64[1];
                  v218 = v202[6].n128_u64[1];
                  v219 = v217 >= v218;
                  v220 = v217 >= v218 ? 0 : 96;
                  v202 = (v202 + v220);
                  if (!v219)
                  {
                    v215 = v216;
                  }
                }

                v201 = v215;
              }

              while (v202->n128_u64[1] >= v208);
              v207->n128_u64[0] = v209;
              v207->n128_u64[1] = v208;
              v207[3] = v410;
              v207[4] = v449;
              v207[5] = v488;
              v207[1] = v333;
              v207[2] = v371;
            }
          }

          v199 = v200 - 1;
        }

        while (v200);
        v221 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 5);
        do
        {
          v222 = 0;
          v334 = *v12;
          v372 = v12[1];
          v489 = v12[4];
          v526 = v12[5];
          v411 = v12[2];
          v450 = v12[3];
          v223 = v12;
          do
          {
            v224 = &v223[6 * v222];
            v225 = v224 + 6;
            v226 = (2 * v222) | 1;
            v222 = 2 * v222 + 2;
            if (v222 >= v221)
            {
              v222 = v226;
            }

            else
            {
              v227 = v224[6].n128_u64[1];
              v228 = v224[12].n128_u64[1];
              v229 = v224 + 12;
              if (v227 >= v228)
              {
                v222 = v226;
              }

              else
              {
                v225 = v229;
              }
            }

            v230 = v225[1];
            *v223 = *v225;
            v223[1] = v230;
            v231 = v225[2];
            v232 = v225[3];
            v233 = v225[5];
            v223[4] = v225[4];
            v223[5] = v233;
            v223[2] = v231;
            v223[3] = v232;
            v223 = v225;
          }

          while (v222 <= ((v221 - 2) >> 1));
          a2 -= 6;
          if (v225 == a2)
          {
            *v225 = v334;
            v225[1] = v372;
            result = v411;
            v225[4] = v489;
            v225[5] = v526;
            v225[2] = v411;
            v225[3] = v450;
          }

          else
          {
            v234 = a2[1];
            *v225 = *a2;
            v225[1] = v234;
            v235 = a2[2];
            v236 = a2[3];
            v237 = a2[5];
            v225[4] = a2[4];
            v225[5] = v237;
            v225[2] = v235;
            v225[3] = v236;
            a2[4] = v489;
            a2[5] = v526;
            a2[2] = v411;
            a2[3] = v450;
            result = v334;
            *a2 = v334;
            a2[1] = v372;
            v238 = v225 - v12 + 96;
            if (v238 >= 97)
            {
              v239 = (-2 - 0x5555555555555555 * (v238 >> 5)) >> 1;
              v240 = &v12[6 * v239];
              v241 = v225->n128_u64[1];
              if (v240->n128_u64[1] < v241)
              {
                v242 = v225->n128_u64[0];
                v302 = v225[4];
                v305 = v225[5];
                v296 = v225[2];
                v299 = v225[3];
                v293 = v225[1];
                do
                {
                  v243 = v225;
                  v225 = v240;
                  v244 = v240[1];
                  *v243 = *v240;
                  v243[1] = v244;
                  v245 = v240[2];
                  v246 = v240[3];
                  v247 = v240[5];
                  v243[4] = v240[4];
                  v243[5] = v247;
                  v243[2] = v245;
                  v243[3] = v246;
                  if (!v239)
                  {
                    break;
                  }

                  v239 = (v239 - 1) >> 1;
                  v240 = &v12[6 * v239];
                }

                while (v240->n128_u64[1] < v241);
                v225->n128_u64[0] = v242;
                v225->n128_u64[1] = v241;
                v225[3] = v299;
                v225[4] = v302;
                v225[5] = v305;
                result = v296;
                v225[1] = v293;
                v225[2] = v296;
              }
            }
          }
        }

        while (v221-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[6 * (v14 >> 1)];
    v17 = a2[-6].n128_u64[1];
    if (v13 > 0x3000)
    {
      v18 = v16->n128_u64[1];
      if (v18 >= v12->n128_u64[1])
      {
        if (v17 < v18)
        {
          v308 = *v16;
          v347 = v16[1];
          v463 = v16[4];
          v502 = v16[5];
          v385 = v16[2];
          v424 = v16[3];
          v28 = a2[-1];
          v30 = a2[-4];
          v29 = a2[-3];
          v16[4] = a2[-2];
          v16[5] = v28;
          v16[2] = v30;
          v16[3] = v29;
          v31 = a2[-5];
          *v16 = *v9;
          v16[1] = v31;
          *v9 = v308;
          a2[-5] = v347;
          a2[-2] = v463;
          a2[-1] = v502;
          a2[-4] = v385;
          a2[-3] = v424;
          if (v16->n128_u64[1] < v12->n128_u64[1])
          {
            v309 = *v12;
            v348 = v12[1];
            v464 = v12[4];
            v503 = v12[5];
            v386 = v12[2];
            v425 = v12[3];
            v32 = v16[5];
            v34 = v16[2];
            v33 = v16[3];
            v12[4] = v16[4];
            v12[5] = v32;
            v12[2] = v34;
            v12[3] = v33;
            v35 = v16[1];
            *v12 = *v16;
            v12[1] = v35;
            *v16 = v309;
            v16[1] = v348;
            v16[4] = v464;
            v16[5] = v503;
            v16[2] = v386;
            v16[3] = v425;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v306 = *v12;
          v345 = v12[1];
          v461 = v12[4];
          v500 = v12[5];
          v383 = v12[2];
          v422 = v12[3];
          v19 = a2[-1];
          v21 = a2[-4];
          v20 = a2[-3];
          v12[4] = a2[-2];
          v12[5] = v19;
          v12[2] = v21;
          v12[3] = v20;
          v22 = a2[-5];
          *v12 = *v9;
          v12[1] = v22;
          goto LABEL_26;
        }

        v312 = *v12;
        v351 = v12[1];
        v467 = v12[4];
        v506 = v12[5];
        v389 = v12[2];
        v428 = v12[3];
        v44 = v16[5];
        v46 = v16[2];
        v45 = v16[3];
        v12[4] = v16[4];
        v12[5] = v44;
        v12[2] = v46;
        v12[3] = v45;
        v47 = v16[1];
        *v12 = *v16;
        v12[1] = v47;
        *v16 = v312;
        v16[1] = v351;
        v16[4] = v467;
        v16[5] = v506;
        v16[2] = v389;
        v16[3] = v428;
        if (a2[-6].n128_u64[1] < v16->n128_u64[1])
        {
          v306 = *v16;
          v345 = v16[1];
          v461 = v16[4];
          v500 = v16[5];
          v383 = v16[2];
          v422 = v16[3];
          v48 = a2[-1];
          v50 = a2[-4];
          v49 = a2[-3];
          v16[4] = a2[-2];
          v16[5] = v48;
          v16[2] = v50;
          v16[3] = v49;
          v51 = a2[-5];
          *v16 = *v9;
          v16[1] = v51;
LABEL_26:
          *v9 = v306;
          a2[-5] = v345;
          a2[-2] = v461;
          a2[-1] = v500;
          a2[-4] = v383;
          a2[-3] = v422;
        }
      }

      v52 = &v12[6 * v15];
      v53 = v52 - 6;
      v54 = v52[-6].n128_u64[1];
      v55 = a2[-12].n128_u64[1];
      if (v54 >= v12[6].n128_u64[1])
      {
        if (v55 < v54)
        {
          v314 = *v53;
          v353 = v53[1];
          v469 = v53[4];
          v508 = v53[5];
          v391 = v53[2];
          v430 = v53[3];
          v60 = a2[-7];
          v62 = a2[-10];
          v61 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v60;
          v53[2] = v62;
          v53[3] = v61;
          v63 = a2[-11];
          *v53 = *v10;
          v53[1] = v63;
          *v10 = v314;
          a2[-11] = v353;
          a2[-8] = v469;
          a2[-7] = v508;
          a2[-10] = v391;
          a2[-9] = v430;
          if (v53->n128_u64[1] < v12[6].n128_u64[1])
          {
            v392 = v12[8];
            v431 = v12[9];
            v470 = v12[10];
            v509 = v12[11];
            v315 = v12[6];
            v354 = v12[7];
            v64 = v53[1];
            v12[6] = *v53;
            v12[7] = v64;
            v65 = v53[5];
            v67 = v53[2];
            v66 = v53[3];
            v12[10] = v53[4];
            v12[11] = v65;
            v12[8] = v67;
            v12[9] = v66;
            *v53 = v315;
            v53[1] = v354;
            v53[4] = v470;
            v53[5] = v509;
            v53[2] = v392;
            v53[3] = v431;
          }
        }
      }

      else
      {
        if (v55 < v54)
        {
          v390 = v12[8];
          v429 = v12[9];
          v468 = v12[10];
          v507 = v12[11];
          v313 = v12[6];
          v352 = v12[7];
          v56 = a2[-11];
          v12[6] = *v10;
          v12[7] = v56;
          v57 = a2[-7];
          v59 = a2[-10];
          v58 = a2[-9];
          v12[10] = a2[-8];
          v12[11] = v57;
          v12[8] = v59;
          v12[9] = v58;
          goto LABEL_38;
        }

        v394 = v12[8];
        v433 = v12[9];
        v472 = v12[10];
        v511 = v12[11];
        v317 = v12[6];
        v356 = v12[7];
        v76 = v53[1];
        v12[6] = *v53;
        v12[7] = v76;
        v77 = v53[5];
        v79 = v53[2];
        v78 = v53[3];
        v12[10] = v53[4];
        v12[11] = v77;
        v12[8] = v79;
        v12[9] = v78;
        *v53 = v317;
        v53[1] = v356;
        v53[4] = v472;
        v53[5] = v511;
        v53[2] = v394;
        v53[3] = v433;
        if (a2[-12].n128_u64[1] < v53->n128_u64[1])
        {
          v313 = *v53;
          v352 = v53[1];
          v468 = v53[4];
          v507 = v53[5];
          v390 = v53[2];
          v429 = v53[3];
          v80 = a2[-7];
          v82 = a2[-10];
          v81 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v80;
          v53[2] = v82;
          v53[3] = v81;
          v83 = a2[-11];
          *v53 = *v10;
          v53[1] = v83;
LABEL_38:
          *v10 = v313;
          a2[-11] = v352;
          a2[-8] = v468;
          a2[-7] = v507;
          a2[-10] = v390;
          a2[-9] = v429;
        }
      }

      v84 = &v12[6 * v15];
      v85 = v84[6].n128_u64[1];
      v86 = *v290;
      if (v85 >= v12[12].n128_u64[1])
      {
        if (v86 < v85)
        {
          v319 = v84[6];
          v358 = v84[7];
          v474 = v84[10];
          v513 = v84[11];
          v396 = v84[8];
          v435 = v84[9];
          v91 = a2[-13];
          v93 = a2[-16];
          v92 = a2[-15];
          v84[10] = a2[-14];
          v84[11] = v91;
          v84[8] = v93;
          v84[9] = v92;
          v94 = a2[-17];
          v84[6] = *v11;
          v84[7] = v94;
          *v11 = v319;
          a2[-17] = v358;
          a2[-14] = v474;
          a2[-13] = v513;
          a2[-16] = v396;
          a2[-15] = v435;
          if (v84[6].n128_u64[1] < v12[12].n128_u64[1])
          {
            v397 = v12[14];
            v436 = v12[15];
            v475 = v12[16];
            v514 = v12[17];
            v320 = v12[12];
            v359 = v12[13];
            v95 = v84[7];
            v12[12] = v84[6];
            v12[13] = v95;
            v96 = v84[11];
            v98 = v84[8];
            v97 = v84[9];
            v12[16] = v84[10];
            v12[17] = v96;
            v12[14] = v98;
            v12[15] = v97;
            v84[6] = v320;
            v84[7] = v359;
            v84[10] = v475;
            v84[11] = v514;
            v84[8] = v397;
            v84[9] = v436;
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          v395 = v12[14];
          v434 = v12[15];
          v473 = v12[16];
          v512 = v12[17];
          v318 = v12[12];
          v357 = v12[13];
          v87 = a2[-17];
          v12[12] = *v11;
          v12[13] = v87;
          v88 = a2[-13];
          v90 = a2[-16];
          v89 = a2[-15];
          v12[16] = a2[-14];
          v12[17] = v88;
          v12[14] = v90;
          v12[15] = v89;
          goto LABEL_47;
        }

        v398 = v12[14];
        v437 = v12[15];
        v476 = v12[16];
        v515 = v12[17];
        v321 = v12[12];
        v360 = v12[13];
        v99 = v84[7];
        v12[12] = v84[6];
        v12[13] = v99;
        v100 = v84[11];
        v102 = v84[8];
        v101 = v84[9];
        v12[16] = v84[10];
        v12[17] = v100;
        v12[14] = v102;
        v12[15] = v101;
        v84[6] = v321;
        v84[7] = v360;
        v84[10] = v476;
        v84[11] = v515;
        v84[8] = v398;
        v84[9] = v437;
        if (*v290 < v84[6].n128_u64[1])
        {
          v318 = v84[6];
          v357 = v84[7];
          v473 = v84[10];
          v512 = v84[11];
          v395 = v84[8];
          v434 = v84[9];
          v103 = a2[-13];
          v105 = a2[-16];
          v104 = a2[-15];
          v84[10] = a2[-14];
          v84[11] = v103;
          v84[8] = v105;
          v84[9] = v104;
          v106 = a2[-17];
          v84[6] = *v11;
          v84[7] = v106;
LABEL_47:
          *v11 = v318;
          a2[-17] = v357;
          a2[-14] = v473;
          a2[-13] = v512;
          a2[-16] = v395;
          a2[-15] = v434;
        }
      }

      v107 = v16->n128_u64[1];
      v108 = v84[6].n128_u64[1];
      if (v107 >= v53->n128_u64[1])
      {
        if (v108 < v107)
        {
          v323 = *v16;
          v362 = v16[1];
          v478 = v16[4];
          v517 = v16[5];
          v400 = v16[2];
          v439 = v16[3];
          v112 = v84[11];
          v16[4] = v84[10];
          v16[5] = v112;
          v113 = v84[9];
          v16[2] = v84[8];
          v16[3] = v113;
          v114 = v84[7];
          *v16 = v84[6];
          v16[1] = v114;
          v84[6] = v323;
          v84[7] = v362;
          v84[10] = v478;
          v84[11] = v517;
          v84[8] = v400;
          v84[9] = v439;
          if (v16->n128_u64[1] < v53->n128_u64[1])
          {
            v324 = *v53;
            v363 = v53[1];
            v479 = v53[4];
            v518 = v53[5];
            v401 = v53[2];
            v440 = v53[3];
            v115 = v16[5];
            v53[4] = v16[4];
            v53[5] = v115;
            v116 = v16[3];
            v53[2] = v16[2];
            v53[3] = v116;
            v117 = v16[1];
            *v53 = *v16;
            v53[1] = v117;
            *v16 = v324;
            v16[1] = v363;
            v16[4] = v479;
            v16[5] = v518;
            v16[2] = v401;
            v16[3] = v440;
          }
        }
      }

      else
      {
        if (v108 < v107)
        {
          v322 = *v53;
          v361 = v53[1];
          v477 = v53[4];
          v516 = v53[5];
          v399 = v53[2];
          v438 = v53[3];
          v109 = v84[11];
          v53[4] = v84[10];
          v53[5] = v109;
          v110 = v84[9];
          v53[2] = v84[8];
          v53[3] = v110;
          v111 = v84[7];
          *v53 = v84[6];
          v53[1] = v111;
          goto LABEL_56;
        }

        v325 = *v53;
        v364 = v53[1];
        v480 = v53[4];
        v519 = v53[5];
        v402 = v53[2];
        v441 = v53[3];
        v118 = v16[5];
        v53[4] = v16[4];
        v53[5] = v118;
        v119 = v16[3];
        v53[2] = v16[2];
        v53[3] = v119;
        v120 = v16[1];
        *v53 = *v16;
        v53[1] = v120;
        *v16 = v325;
        v16[1] = v364;
        v16[4] = v480;
        v16[5] = v519;
        v16[2] = v402;
        v16[3] = v441;
        if (v84[6].n128_u64[1] < v16->n128_u64[1])
        {
          v322 = *v16;
          v361 = v16[1];
          v477 = v16[4];
          v516 = v16[5];
          v399 = v16[2];
          v438 = v16[3];
          v121 = v84[11];
          v16[4] = v84[10];
          v16[5] = v121;
          v122 = v84[9];
          v16[2] = v84[8];
          v16[3] = v122;
          v123 = v84[7];
          *v16 = v84[6];
          v16[1] = v123;
LABEL_56:
          v84[6] = v322;
          v84[7] = v361;
          v84[10] = v477;
          v84[11] = v516;
          v84[8] = v399;
          v84[9] = v438;
        }
      }

      v326 = *v12;
      v365 = v12[1];
      v481 = v12[4];
      v520 = v12[5];
      v403 = v12[2];
      v442 = v12[3];
      v124 = v16[5];
      v126 = v16[2];
      v125 = v16[3];
      v12[4] = v16[4];
      v12[5] = v124;
      v12[2] = v126;
      v12[3] = v125;
      v127 = v16[1];
      *v12 = *v16;
      v12[1] = v127;
      *v16 = v326;
      v16[1] = v365;
      v16[4] = v481;
      v16[5] = v520;
      v16[2] = v403;
      v16[3] = v442;
      goto LABEL_58;
    }

    v23 = v12->n128_u64[1];
    if (v23 >= v16->n128_u64[1])
    {
      if (v17 < v23)
      {
        v310 = *v12;
        v349 = v12[1];
        v465 = v12[4];
        v504 = v12[5];
        v387 = v12[2];
        v426 = v12[3];
        v36 = a2[-1];
        v38 = a2[-4];
        v37 = a2[-3];
        v12[4] = a2[-2];
        v12[5] = v36;
        v12[2] = v38;
        v12[3] = v37;
        v39 = a2[-5];
        *v12 = *v9;
        v12[1] = v39;
        *v9 = v310;
        a2[-5] = v349;
        a2[-2] = v465;
        a2[-1] = v504;
        a2[-4] = v387;
        a2[-3] = v426;
        if (v12->n128_u64[1] < v16->n128_u64[1])
        {
          v311 = *v16;
          v350 = v16[1];
          v466 = v16[4];
          v505 = v16[5];
          v388 = v16[2];
          v427 = v16[3];
          v40 = v12[5];
          v42 = v12[2];
          v41 = v12[3];
          v16[4] = v12[4];
          v16[5] = v40;
          v16[2] = v42;
          v16[3] = v41;
          v43 = v12[1];
          *v16 = *v12;
          v16[1] = v43;
          *v12 = v311;
          v12[1] = v350;
          v12[4] = v466;
          v12[5] = v505;
          v12[2] = v388;
          v12[3] = v427;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v23)
    {
      v307 = *v16;
      v346 = v16[1];
      v462 = v16[4];
      v501 = v16[5];
      v384 = v16[2];
      v423 = v16[3];
      v24 = a2[-1];
      v26 = a2[-4];
      v25 = a2[-3];
      v16[4] = a2[-2];
      v16[5] = v24;
      v16[2] = v26;
      v16[3] = v25;
      v27 = a2[-5];
      *v16 = *v9;
      v16[1] = v27;
LABEL_35:
      *v9 = v307;
      a2[-5] = v346;
      a2[-2] = v462;
      a2[-1] = v501;
      a2[-4] = v384;
      a2[-3] = v423;
      goto LABEL_58;
    }

    v316 = *v16;
    v355 = v16[1];
    v471 = v16[4];
    v510 = v16[5];
    v393 = v16[2];
    v432 = v16[3];
    v68 = v12[5];
    v70 = v12[2];
    v69 = v12[3];
    v16[4] = v12[4];
    v16[5] = v68;
    v16[2] = v70;
    v16[3] = v69;
    v71 = v12[1];
    *v16 = *v12;
    v16[1] = v71;
    *v12 = v316;
    v12[1] = v355;
    v12[4] = v471;
    v12[5] = v510;
    v12[2] = v393;
    v12[3] = v432;
    if (a2[-6].n128_u64[1] < v12->n128_u64[1])
    {
      v307 = *v12;
      v346 = v12[1];
      v462 = v12[4];
      v501 = v12[5];
      v384 = v12[2];
      v423 = v12[3];
      v72 = a2[-1];
      v74 = a2[-4];
      v73 = a2[-3];
      v12[4] = a2[-2];
      v12[5] = v72;
      v12[2] = v74;
      v12[3] = v73;
      v75 = a2[-5];
      *v12 = *v9;
      v12[1] = v75;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v128 = v12->n128_u64[1];
LABEL_61:
      v129 = 0;
      v130 = v12->n128_u64[0];
      v300 = v12[4];
      v303 = v12[5];
      v294 = v12[2];
      v297 = v12[3];
      v291 = v12[1];
      do
      {
        v131 = v12[v129 + 6].n128_u64[1];
        v129 += 6;
      }

      while (v131 < v128);
      v132 = &v12[v129];
      v133 = a2;
      if (v129 == 6)
      {
        v136 = a2;
        while (v132 < v136)
        {
          v134 = v136 - 6;
          v137 = v136[-6].n128_u64[1];
          v136 -= 6;
          if (v137 < v128)
          {
            goto LABEL_71;
          }
        }

        v134 = v136;
      }

      else
      {
        do
        {
          v134 = v133 - 6;
          v135 = v133[-6].n128_u64[1];
          v133 -= 6;
        }

        while (v135 >= v128);
      }

LABEL_71:
      v12 = v132;
      if (v132 < v134)
      {
        v138 = v134;
        do
        {
          v327 = *v12;
          v366 = v12[1];
          v482 = v12[4];
          v521 = v12[5];
          v404 = v12[2];
          v443 = v12[3];
          v139 = v138[5];
          v141 = v138[2];
          v140 = v138[3];
          v12[4] = v138[4];
          v12[5] = v139;
          v12[2] = v141;
          v12[3] = v140;
          v142 = v138[1];
          *v12 = *v138;
          v12[1] = v142;
          *v138 = v327;
          v138[1] = v366;
          v138[4] = v482;
          v138[5] = v521;
          v138[2] = v404;
          v138[3] = v443;
          do
          {
            v143 = v12[6].n128_u64[1];
            v12 += 6;
          }

          while (v143 < v128);
          do
          {
            v144 = v138[-6].n128_u64[1];
            v138 -= 6;
          }

          while (v144 >= v128);
        }

        while (v12 < v138);
      }

      if (&v12[-6] != a1)
      {
        v145 = v12[-5];
        *a1 = v12[-6];
        a1[1] = v145;
        v146 = v12[-4];
        v147 = v12[-3];
        v148 = v12[-1];
        a1[4] = v12[-2];
        a1[5] = v148;
        a1[2] = v146;
        a1[3] = v147;
      }

      v12[-6].n128_u64[0] = v130;
      v12[-6].n128_u64[1] = v128;
      v12[-5] = v291;
      result = v294;
      v12[-2] = v300;
      v12[-1] = v303;
      v12[-4] = v294;
      v12[-3] = v297;
      if (v132 < v134)
      {
        goto LABEL_82;
      }

      v149 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(a1, &v12[-6]);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(v12, a2))
      {
        a2 = v12 - 6;
        if (!v149)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v149)
      {
LABEL_82:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,false>(a1, v12 - 6, a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
      }
    }

    else
    {
      v128 = v12->n128_u64[1];
      if (v12[-6].n128_u64[1] < v128)
      {
        goto LABEL_61;
      }

      v150 = v12->n128_u64[0];
      v301 = v12[4];
      v304 = v12[5];
      v295 = v12[2];
      v298 = v12[3];
      v292 = v12[1];
      if (v128 >= a2[-6].n128_u64[1])
      {
        n128_u64 = v12[6].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v154 = *(n128_u64 + 8);
          n128_u64 += 96;
        }

        while (v128 >= v154);
      }

      else
      {
        v151 = v12;
        do
        {
          v12 = v151 + 6;
          v152 = v151[6].n128_u64[1];
          v151 += 6;
        }

        while (v128 >= v152);
      }

      v155 = a2;
      if (v12 < a2)
      {
        v156 = a2;
        do
        {
          v155 = v156 - 6;
          v157 = v156[-6].n128_u64[1];
          v156 -= 6;
        }

        while (v128 < v157);
      }

      while (v12 < v155)
      {
        v328 = *v12;
        v367 = v12[1];
        v483 = v12[4];
        v522 = v12[5];
        v405 = v12[2];
        v444 = v12[3];
        v158 = v155[5];
        v160 = v155[2];
        v159 = v155[3];
        v12[4] = v155[4];
        v12[5] = v158;
        v12[2] = v160;
        v12[3] = v159;
        v161 = v155[1];
        *v12 = *v155;
        v12[1] = v161;
        *v155 = v328;
        v155[1] = v367;
        v155[4] = v483;
        v155[5] = v522;
        v155[2] = v405;
        v155[3] = v444;
        do
        {
          v162 = v12[6].n128_u64[1];
          v12 += 6;
        }

        while (v128 >= v162);
        do
        {
          v163 = v155[-6].n128_u64[1];
          v155 -= 6;
        }

        while (v128 < v163);
      }

      if (&v12[-6] != a1)
      {
        v164 = v12[-5];
        *a1 = v12[-6];
        a1[1] = v164;
        v165 = v12[-4];
        v166 = v12[-3];
        v167 = v12[-1];
        a1[4] = v12[-2];
        a1[5] = v167;
        a1[2] = v165;
        a1[3] = v166;
      }

      a4 = 0;
      v12[-6].n128_u64[0] = v150;
      v12[-6].n128_u64[1] = v128;
      v12[-5] = v292;
      result = v295;
      v12[-2] = v301;
      v12[-1] = v304;
      v12[-4] = v295;
      v12[-3] = v298;
    }
  }

  v172 = v12[6].n128_u64[1];
  v173 = a2[-6].n128_u64[1];
  if (v172 >= v12->n128_u64[1])
  {
    if (v173 >= v172)
    {
      return result;
    }

    v412 = v12[8];
    v451 = v12[9];
    v490 = v12[10];
    v527 = v12[11];
    v335 = v12[6];
    v373 = v12[7];
    v249 = a2[-5];
    v12[6] = *v9;
    v12[7] = v249;
    v250 = a2[-1];
    v252 = a2[-4];
    v251 = a2[-3];
    v12[10] = a2[-2];
    v12[11] = v250;
    v12[8] = v252;
    v12[9] = v251;
    *v9 = v335;
    a2[-5] = v373;
    result = v412;
    a2[-2] = v490;
    a2[-1] = v527;
    a2[-4] = v412;
    a2[-3] = v451;
    goto LABEL_192;
  }

  if (v173 >= v172)
  {
    v339 = *v12;
    v377 = v12[1];
    v494 = v12[4];
    v530 = v12[5];
    v416 = v12[2];
    v455 = v12[3];
    v267 = v12[11];
    v12[4] = v12[10];
    v12[5] = v267;
    v268 = v12[9];
    v12[2] = v12[8];
    v12[3] = v268;
    v269 = v12[7];
    *v12 = v12[6];
    v12[1] = v269;
    v12[6] = v339;
    v12[7] = v377;
    result = v416;
    v12[10] = v494;
    v12[11] = v530;
    v12[8] = v416;
    v12[9] = v455;
    if (a2[-6].n128_u64[1] >= v12[6].n128_u64[1])
    {
      return result;
    }

    v407 = v12[8];
    v446 = v12[9];
    v485 = v12[10];
    v524 = v12[11];
    v330 = v12[6];
    v369 = v12[7];
    v270 = a2[-5];
    v12[6] = *v9;
    v12[7] = v270;
    v271 = a2[-1];
    v273 = a2[-4];
    v272 = a2[-3];
    v12[10] = a2[-2];
    v12[11] = v271;
    v12[8] = v273;
    v12[9] = v272;
  }

  else
  {
    v330 = *v12;
    v369 = v12[1];
    v485 = v12[4];
    v524 = v12[5];
    v407 = v12[2];
    v446 = v12[3];
    v174 = a2[-1];
    v176 = a2[-4];
    v175 = a2[-3];
    v12[4] = a2[-2];
    v12[5] = v174;
    v12[2] = v176;
    v12[3] = v175;
    v177 = a2[-5];
    *v12 = *v9;
    v12[1] = v177;
  }

  *v9 = v330;
  a2[-5] = v369;
  result = v407;
  a2[-2] = v485;
  a2[-1] = v524;
  a2[-4] = v407;
  a2[-3] = v446;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  if (v5 >= *(a1 + 8))
  {
    if (v6 < v5)
    {
      v79 = *(a2 + 32);
      v90 = *(a2 + 48);
      v101 = *(a2 + 64);
      v112 = *(a2 + 80);
      v57 = *a2;
      v68 = *(a2 + 16);
      v11 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v11;
      v12 = *(a3 + 80);
      v14 = *(a3 + 32);
      v13 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 80) = v12;
      *(a2 + 32) = v14;
      *(a2 + 48) = v13;
      *(a3 + 64) = v101;
      *(a3 + 80) = v112;
      *(a3 + 32) = v79;
      *(a3 + 48) = v90;
      result = v57;
      *a3 = v57;
      *(a3 + 16) = v68;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v80 = *(a1 + 32);
        v91 = *(a1 + 48);
        v102 = *(a1 + 64);
        v113 = *(a1 + 80);
        v58 = *a1;
        v69 = *(a1 + 16);
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        v17 = *(a2 + 80);
        v19 = *(a2 + 32);
        v18 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v17;
        *(a1 + 32) = v19;
        *(a1 + 48) = v18;
        *(a2 + 64) = v102;
        *(a2 + 80) = v113;
        *(a2 + 32) = v80;
        *(a2 + 48) = v91;
        result = v58;
        *a2 = v58;
        *(a2 + 16) = v69;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v78 = *(a1 + 32);
      v89 = *(a1 + 48);
      v100 = *(a1 + 64);
      v111 = *(a1 + 80);
      v56 = *a1;
      v67 = *(a1 + 16);
      v7 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v7;
      v8 = *(a3 + 80);
      v10 = *(a3 + 32);
      v9 = *(a3 + 48);
      *(a1 + 64) = *(a3 + 64);
      *(a1 + 80) = v8;
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
LABEL_9:
      *(a3 + 64) = v100;
      *(a3 + 80) = v111;
      *(a3 + 32) = v78;
      *(a3 + 48) = v89;
      result = v56;
      *a3 = v56;
      *(a3 + 16) = v67;
      goto LABEL_10;
    }

    v81 = *(a1 + 32);
    v92 = *(a1 + 48);
    v103 = *(a1 + 64);
    v114 = *(a1 + 80);
    v59 = *a1;
    v70 = *(a1 + 16);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    v21 = *(a2 + 80);
    v23 = *(a2 + 32);
    v22 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v21;
    *(a1 + 32) = v23;
    *(a1 + 48) = v22;
    *(a2 + 64) = v103;
    *(a2 + 80) = v114;
    *(a2 + 32) = v81;
    *(a2 + 48) = v92;
    result = v59;
    *a2 = v59;
    *(a2 + 16) = v70;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v78 = *(a2 + 32);
      v89 = *(a2 + 48);
      v100 = *(a2 + 64);
      v111 = *(a2 + 80);
      v56 = *a2;
      v67 = *(a2 + 16);
      v24 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v24;
      v25 = *(a3 + 80);
      v27 = *(a3 + 32);
      v26 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 80) = v25;
      *(a2 + 32) = v27;
      *(a2 + 48) = v26;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 8) < *(a3 + 8))
  {
    v82 = *(a3 + 32);
    v93 = *(a3 + 48);
    v104 = *(a3 + 64);
    v115 = *(a3 + 80);
    v60 = *a3;
    v71 = *(a3 + 16);
    v28 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v28;
    v29 = *(a4 + 80);
    v31 = *(a4 + 32);
    v30 = *(a4 + 48);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 80) = v29;
    *(a3 + 32) = v31;
    *(a3 + 48) = v30;
    *(a4 + 64) = v104;
    *(a4 + 80) = v115;
    *(a4 + 32) = v82;
    *(a4 + 48) = v93;
    result = v60;
    *a4 = v60;
    *(a4 + 16) = v71;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v83 = *(a2 + 32);
      v94 = *(a2 + 48);
      v105 = *(a2 + 64);
      v116 = *(a2 + 80);
      v61 = *a2;
      v72 = *(a2 + 16);
      v32 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v32;
      v33 = *(a3 + 80);
      v35 = *(a3 + 32);
      v34 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 80) = v33;
      *(a2 + 32) = v35;
      *(a2 + 48) = v34;
      *(a3 + 64) = v105;
      *(a3 + 80) = v116;
      *(a3 + 32) = v83;
      *(a3 + 48) = v94;
      result = v61;
      *a3 = v61;
      *(a3 + 16) = v72;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v84 = *(a1 + 32);
        v95 = *(a1 + 48);
        v106 = *(a1 + 64);
        v117 = *(a1 + 80);
        v62 = *a1;
        v73 = *(a1 + 16);
        v36 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v36;
        v37 = *(a2 + 80);
        v39 = *(a2 + 32);
        v38 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v37;
        *(a1 + 32) = v39;
        *(a1 + 48) = v38;
        *(a2 + 64) = v106;
        *(a2 + 80) = v117;
        *(a2 + 32) = v84;
        *(a2 + 48) = v95;
        result = v62;
        *a2 = v62;
        *(a2 + 16) = v73;
      }
    }
  }

  if (*(a5 + 8) < *(a4 + 8))
  {
    v85 = *(a4 + 32);
    v96 = *(a4 + 48);
    v107 = *(a4 + 64);
    v118 = *(a4 + 80);
    v63 = *a4;
    v74 = *(a4 + 16);
    v40 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v40;
    v41 = *(a5 + 80);
    v43 = *(a5 + 32);
    v42 = *(a5 + 48);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 80) = v41;
    *(a4 + 32) = v43;
    *(a4 + 48) = v42;
    *(a5 + 64) = v107;
    *(a5 + 80) = v118;
    *(a5 + 32) = v85;
    *(a5 + 48) = v96;
    result = v63;
    *a5 = v63;
    *(a5 + 16) = v74;
    if (*(a4 + 8) < *(a3 + 8))
    {
      v86 = *(a3 + 32);
      v97 = *(a3 + 48);
      v108 = *(a3 + 64);
      v119 = *(a3 + 80);
      v64 = *a3;
      v75 = *(a3 + 16);
      v44 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v44;
      v45 = *(a4 + 80);
      v47 = *(a4 + 32);
      v46 = *(a4 + 48);
      *(a3 + 64) = *(a4 + 64);
      *(a3 + 80) = v45;
      *(a3 + 32) = v47;
      *(a3 + 48) = v46;
      *(a4 + 64) = v108;
      *(a4 + 80) = v119;
      *(a4 + 32) = v86;
      *(a4 + 48) = v97;
      result = v64;
      *a4 = v64;
      *(a4 + 16) = v75;
      if (*(a3 + 8) < *(a2 + 8))
      {
        v87 = *(a2 + 32);
        v98 = *(a2 + 48);
        v109 = *(a2 + 64);
        v120 = *(a2 + 80);
        v65 = *a2;
        v76 = *(a2 + 16);
        v48 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v48;
        v49 = *(a3 + 80);
        v51 = *(a3 + 32);
        v50 = *(a3 + 48);
        *(a2 + 64) = *(a3 + 64);
        *(a2 + 80) = v49;
        *(a2 + 32) = v51;
        *(a2 + 48) = v50;
        *(a3 + 64) = v109;
        *(a3 + 80) = v120;
        *(a3 + 32) = v87;
        *(a3 + 48) = v98;
        result = v65;
        *a3 = v65;
        *(a3 + 16) = v76;
        if (*(a2 + 8) < *(a1 + 8))
        {
          v88 = *(a1 + 32);
          v99 = *(a1 + 48);
          v110 = *(a1 + 64);
          v121 = *(a1 + 80);
          v66 = *a1;
          v77 = *(a1 + 16);
          v52 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v52;
          v53 = *(a2 + 80);
          v55 = *(a2 + 32);
          v54 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v53;
          *(a1 + 32) = v55;
          *(a1 + 48) = v54;
          *(a2 + 64) = v110;
          *(a2 + 80) = v121;
          *(a2 + 32) = v88;
          *(a2 + 48) = v99;
          result = v66;
          *a2 = v66;
          *(a2 + 16) = v77;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*>(__int128 *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v8 = a2 - 6;
      v9 = *(a1 + 13);
      v10 = *(a2 - 11);
      if (v9 < *(a1 + 1))
      {
        if (v10 >= v9)
        {
          v126 = a1[2];
          v142 = a1[3];
          v158 = a1[4];
          v174 = a1[5];
          v94 = *a1;
          v110 = a1[1];
          v44 = a1[9];
          a1[2] = a1[8];
          a1[3] = v44;
          v45 = a1[11];
          a1[4] = a1[10];
          a1[5] = v45;
          v46 = a1[7];
          *a1 = a1[6];
          a1[1] = v46;
          a1[6] = v94;
          a1[7] = v110;
          a1[10] = v158;
          a1[11] = v174;
          a1[8] = v126;
          a1[9] = v142;
          if (*(a2 - 11) >= *(a1 + 13))
          {
            return 1;
          }

          v118 = a1[8];
          v134 = a1[9];
          v150 = a1[10];
          v166 = a1[11];
          v86 = a1[6];
          v102 = a1[7];
          v47 = *(a2 - 5);
          a1[6] = *v8;
          a1[7] = v47;
          v48 = *(a2 - 1);
          v50 = *(a2 - 4);
          v49 = *(a2 - 3);
          a1[10] = *(a2 - 2);
          a1[11] = v48;
          a1[8] = v50;
          a1[9] = v49;
        }

        else
        {
          v118 = a1[2];
          v134 = a1[3];
          v150 = a1[4];
          v166 = a1[5];
          v86 = *a1;
          v102 = a1[1];
          v11 = *(a2 - 5);
          *a1 = *v8;
          a1[1] = v11;
          v12 = *(a2 - 1);
          v14 = *(a2 - 4);
          v13 = *(a2 - 3);
          a1[4] = *(a2 - 2);
          a1[5] = v12;
          a1[2] = v14;
          a1[3] = v13;
        }

        *(a2 - 2) = v150;
        *(a2 - 1) = v166;
        *(a2 - 4) = v118;
        *(a2 - 3) = v134;
        result = 1;
        *v8 = v86;
        *(a2 - 5) = v102;
        return result;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v121 = a1[8];
      v137 = a1[9];
      v153 = a1[10];
      v169 = a1[11];
      v89 = a1[6];
      v105 = a1[7];
      v28 = *(a2 - 5);
      a1[6] = *v8;
      a1[7] = v28;
      v29 = *(a2 - 1);
      v31 = *(a2 - 4);
      v30 = *(a2 - 3);
      a1[10] = *(a2 - 2);
      a1[11] = v29;
      a1[8] = v31;
      a1[9] = v30;
      *(a2 - 2) = v153;
      *(a2 - 1) = v169;
      *(a2 - 4) = v121;
      *(a2 - 3) = v137;
      *v8 = v89;
      *(a2 - 5) = v105;
LABEL_50:
      if (*(a1 + 13) < *(a1 + 1))
      {
        v132 = a1[2];
        v148 = a1[3];
        v164 = a1[4];
        v179 = a1[5];
        v100 = *a1;
        v116 = a1[1];
        v82 = a1[9];
        a1[2] = a1[8];
        a1[3] = v82;
        v83 = a1[11];
        a1[4] = a1[10];
        a1[5] = v83;
        v84 = a1[7];
        *a1 = a1[6];
        a1[1] = v84;
        a1[6] = v100;
        a1[7] = v116;
        a1[10] = v164;
        a1[11] = v179;
        a1[8] = v132;
        a1[9] = v148;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCppSymbolicator::set_aot_image_infos(std::vector<CSSymbolicatorAotImageInfo> &&)::$_0 &,CSSymbolicatorAotImageInfo*,0>(a1, (a1 + 6), (a1 + 12), (a1 + 18), (a2 - 6));
      return 1;
    }

    v22 = *(a1 + 13);
    v23 = *(a1 + 1);
    v24 = *(a1 + 25);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        v124 = a1[8];
        v140 = a1[9];
        v156 = a1[10];
        v172 = a1[11];
        v92 = a1[6];
        v108 = a1[7];
        v38 = a1[15];
        a1[8] = a1[14];
        a1[9] = v38;
        v39 = a1[17];
        a1[10] = a1[16];
        a1[11] = v39;
        v40 = a1[13];
        a1[6] = a1[12];
        a1[7] = v40;
        a1[12] = v92;
        a1[13] = v108;
        a1[16] = v156;
        a1[17] = v172;
        a1[14] = v124;
        a1[15] = v140;
        if (*(a1 + 13) < v23)
        {
          v125 = a1[2];
          v141 = a1[3];
          v157 = a1[4];
          v173 = a1[5];
          v93 = *a1;
          v109 = a1[1];
          v41 = a1[9];
          a1[2] = a1[8];
          a1[3] = v41;
          v42 = a1[11];
          a1[4] = a1[10];
          a1[5] = v42;
          v43 = a1[7];
          *a1 = a1[6];
          a1[1] = v43;
          a1[6] = v93;
          a1[7] = v109;
          a1[10] = v157;
          a1[11] = v173;
          a1[8] = v125;
          a1[9] = v141;
        }
      }

      goto LABEL_47;
    }

    if (v24 >= v22)
    {
      v129 = a1[2];
      v145 = a1[3];
      v161 = a1[4];
      v176 = a1[5];
      v97 = *a1;
      v113 = a1[1];
      v68 = a1[9];
      a1[2] = a1[8];
      a1[3] = v68;
      v69 = a1[11];
      a1[4] = a1[10];
      a1[5] = v69;
      v70 = a1[7];
      *a1 = a1[6];
      a1[1] = v70;
      a1[6] = v97;
      a1[7] = v113;
      a1[10] = v161;
      a1[11] = v176;
      a1[8] = v129;
      a1[9] = v145;
      if (v24 >= *(a1 + 13))
      {
        goto LABEL_47;
      }

      v120 = a1[8];
      v136 = a1[9];
      v152 = a1[10];
      v168 = a1[11];
      v88 = a1[6];
      v104 = a1[7];
      v71 = a1[15];
      a1[8] = a1[14];
      a1[9] = v71;
      v72 = a1[17];
      a1[10] = a1[16];
      a1[11] = v72;
      v73 = a1[13];
      a1[6] = a1[12];
      a1[7] = v73;
    }

    else
    {
      v120 = a1[2];
      v136 = a1[3];
      v152 = a1[4];
      v168 = a1[5];
      v88 = *a1;
      v104 = a1[1];
      v25 = a1[15];
      a1[2] = a1[14];
      a1[3] = v25;
      v26 = a1[17];
      a1[4] = a1[16];
      a1[5] = v26;
      v27 = a1[13];
      *a1 = a1[12];
      a1[1] = v27;
    }

    a1[12] = v88;
    a1[13] = v104;
    a1[16] = v152;
    a1[17] = v168;
    a1[14] = v120;
    a1[15] = v136;
LABEL_47:
    if (*(a2 - 11) >= *(a1 + 25))
    {
      return 1;
    }

    v74 = a2 - 6;
    v130 = a1[14];
    v146 = a1[15];
    v162 = a1[16];
    v177 = a1[17];
    v98 = a1[12];
    v114 = a1[13];
    v75 = *(a2 - 5);
    a1[12] = *(a2 - 6);
    a1[13] = v75;
    v76 = *(a2 - 1);
    v78 = *(a2 - 4);
    v77 = *(a2 - 3);
    a1[16] = *(a2 - 2);
    a1[17] = v76;
    a1[14] = v78;
    a1[15] = v77;
    v74[4] = v162;
    v74[5] = v177;
    v74[2] = v130;
    v74[3] = v146;
    *v74 = v98;
    v74[1] = v114;
    if (*(a1 + 25) >= *(a1 + 13))
    {
      return 1;
    }

    v131 = a1[8];
    v147 = a1[9];
    v163 = a1[10];
    v178 = a1[11];
    v99 = a1[6];
    v115 = a1[7];
    v79 = a1[15];
    a1[8] = a1[14];
    a1[9] = v79;
    v80 = a1[17];
    a1[10] = a1[16];
    a1[11] = v80;
    v81 = a1[13];
    a1[6] = a1[12];
    a1[7] = v81;
    a1[12] = v99;
    a1[13] = v115;
    a1[16] = v163;
    a1[17] = v178;
    a1[14] = v131;
    a1[15] = v147;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 11) < *(a1 + 1))
    {
      v117 = a1[2];
      v133 = a1[3];
      v149 = a1[4];
      v165 = a1[5];
      v85 = *a1;
      v101 = a1[1];
      v3 = *(a2 - 5);
      *a1 = *(a2 - 6);
      a1[1] = v3;
      v4 = *(a2 - 1);
      v6 = *(a2 - 4);
      v5 = *(a2 - 3);
      a1[4] = *(a2 - 2);
      a1[5] = v4;
      a1[2] = v6;
      a1[3] = v5;
      *(a2 - 4) = v117;
      *(a2 - 3) = v133;
      *(a2 - 2) = v149;
      *(a2 - 1) = v165;
      result = 1;
      *(a2 - 6) = v85;
      *(a2 - 5) = v101;
      return result;
    }

    return 1;
  }

LABEL_13:
  v15 = (a1 + 12);
  v16 = *(a1 + 13);
  v17 = *(a1 + 1);
  v18 = *(a1 + 25);
  if (v16 >= v17)
  {
    if (v18 < v16)
    {
      v122 = a1[8];
      v138 = a1[9];
      v154 = a1[10];
      v170 = a1[11];
      v90 = a1[6];
      v106 = a1[7];
      v32 = a1[15];
      a1[8] = a1[14];
      a1[9] = v32;
      v33 = a1[17];
      a1[10] = a1[16];
      a1[11] = v33;
      v34 = a1[13];
      a1[6] = *v15;
      a1[7] = v34;
      *v15 = v90;
      a1[13] = v106;
      a1[16] = v154;
      a1[17] = v170;
      a1[14] = v122;
      a1[15] = v138;
      if (*(a1 + 13) < v17)
      {
        v123 = a1[2];
        v139 = a1[3];
        v155 = a1[4];
        v171 = a1[5];
        v91 = *a1;
        v107 = a1[1];
        v35 = a1[9];
        a1[2] = a1[8];
        a1[3] = v35;
        v36 = a1[11];
        a1[4] = a1[10];
        a1[5] = v36;
        v37 = a1[7];
        *a1 = a1[6];
        a1[1] = v37;
        a1[6] = v91;
        a1[7] = v107;
        a1[10] = v155;
        a1[11] = v171;
        a1[8] = v123;
        a1[9] = v139;
      }
    }
  }

  else
  {
    if (v18 >= v16)
    {
      v127 = a1[2];
      v143 = a1[3];
      v159 = a1[4];
      v175 = a1[5];
      v95 = *a1;
      v111 = a1[1];
      v51 = a1[9];
      a1[2] = a1[8];
      a1[3] = v51;
      v52 = a1[11];
      a1[4] = a1[10];
      a1[5] = v52;
      v53 = a1[7];
      *a1 = a1[6];
      a1[1] = v53;
      a1[6] = v95;
      a1[7] = v111;
      a1[10] = v159;
      a1[11] = v175;
      a1[8] = v127;
      a1[9] = v143;
      if (v18 >= *(a1 + 13))
      {
        goto LABEL_33;
      }

      v119 = a1[8];
      v135 = a1[9];
      v151 = a1[10];
      v167 = a1[11];
      v87 = a1[6];
      v103 = a1[7];
      v54 = a1[15];
      a1[8] = a1[14];
      a1[9] = v54;
      v55 = a1[17];
      a1[10] = a1[16];
      a1[11] = v55;
      v56 = a1[13];
      a1[6] = *v15;
      a1[7] = v56;
    }

    else
    {
      v119 = a1[2];
      v135 = a1[3];
      v151 = a1[4];
      v167 = a1[5];
      v87 = *a1;
      v103 = a1[1];
      v19 = a1[15];
      a1[2] = a1[14];
      a1[3] = v19;
      v20 = a1[17];
      a1[4] = a1[16];
      a1[5] = v20;
      v21 = a1[13];
      *a1 = *v15;
      a1[1] = v21;
    }

    *v15 = v87;
    a1[13] = v103;
    a1[16] = v151;
    a1[17] = v167;
    a1[14] = v119;
    a1[15] = v135;
  }

LABEL_33:
  v57 = (a1 + 18);
  if (a1 + 18 == a2)
  {
    return 1;
  }

  v58 = 0;
  v59 = 0;
  while (1)
  {
    v60 = v57[1];
    if (v60 < v15[1])
    {
      v61 = *v57;
      v128 = *(v57 + 3);
      v144 = *(v57 + 4);
      v160 = *(v57 + 5);
      v62 = v58;
      v96 = *(v57 + 1);
      v112 = *(v57 + 2);
      while (1)
      {
        v63 = a1 + v62;
        v64 = *(a1 + v62 + 240);
        *(v63 + 320) = *(a1 + v62 + 224);
        *(v63 + 336) = v64;
        v65 = *(a1 + v62 + 272);
        *(v63 + 352) = *(a1 + v62 + 256);
        *(v63 + 368) = v65;
        v66 = *(a1 + v62 + 208);
        *(v63 + 288) = *(a1 + v62 + 192);
        *(v63 + 304) = v66;
        if (v62 == -192)
        {
          break;
        }

        v62 -= 96;
        if (v60 >= *(v63 + 104))
        {
          v67 = a1 + v62 + 288;
          goto LABEL_41;
        }
      }

      v67 = a1;
LABEL_41:
      *v67 = v61;
      *(v67 + 8) = v60;
      *(v67 + 48) = v128;
      *(v67 + 64) = v144;
      *(v67 + 80) = v160;
      ++v59;
      *(v67 + 16) = v96;
      *(v67 + 32) = v112;
      if (v59 == 8)
      {
        return v57 + 12 == a2;
      }
    }

    v15 = v57;
    v58 += 96;
    v57 += 12;
    if (v57 == a2)
    {
      return 1;
    }
  }
}