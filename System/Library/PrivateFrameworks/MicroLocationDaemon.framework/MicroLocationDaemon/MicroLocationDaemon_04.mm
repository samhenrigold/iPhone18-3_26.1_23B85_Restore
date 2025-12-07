uint64_t *std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULROIPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259030CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

_BYTE *boost::uuids::to_chars<char *>(uint64_t a1, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = a2;
    if (*(a1 + i) >= 0xA0u)
    {
      v4 = (*(a1 + i) >> 4) + 87;
    }

    else
    {
      v4 = (*(a1 + i) >> 4) | 0x30;
    }

    *a2 = v4;
    a2 += 2;
    v5 = *(a1 + i) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(a1 + i) & 0xF | 0x30;
    }

    v3[1] = v6;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      a2 = v3 + 3;
      v3[2] = 45;
    }
  }

  return a2;
}

uint64_t std::vector<ULSegment>::__emplace_back_slow_path<ULSegment>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULSegment>>(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  std::allocator_traits<std::allocator<ULSegment>>::construct[abi:ne200100]<ULSegment,ULSegment,void,0>(a1, 104 * v2, a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = 104 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULSegment>,ULSegment*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULSegment>::~__split_buffer(&v13);
  return v12;
}

void sub_259030E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULSegment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<ULSegment>>::construct[abi:ne200100]<ULSegment,ULSegment,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 32) = a3[2];
  *(a2 + 48) = *(a3 + 6);
  a3[2] = 0uLL;
  *(a3 + 6) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 72) = *(a3 + 9);
  *(a3 + 56) = 0uLL;
  *(a3 + 9) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  result = a3[5];
  *(a2 + 80) = result;
  *(a2 + 96) = *(a3 + 12);
  a3[5] = 0uLL;
  *(a3 + 12) = 0;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULSegment>,ULSegment*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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
      std::allocator_traits<std::allocator<ULSegment>>::construct[abi:ne200100]<ULSegment,ULSegment,void,0>(a1, a4, v7);
      v7 = (v7 + 104);
      a4 = v12 + 104;
      v12 += 104;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULSegment>>::destroy[abi:ne200100]<ULSegment,void,0>(a1, v5);
      v5 = (v5 + 104);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULSegment>,ULSegment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<ULSegment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULSegment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULSegment>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<ULSegment>>::destroy[abi:ne200100]<ULSegment,void,0>(v5, (v4 - 104));
  }
}

uint64_t *std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590310C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__init_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25903113C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULSegment::~ULSegment(ULSegment *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

void std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULSegment>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(a1, *a2);
    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(a1, a2[1]);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a2 + 4));

    operator delete(a2);
  }
}

void *std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__find_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>>(a1, &v5, a2);
  if (!v3)
  {
    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__construct_node<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>();
  }

  return v3;
}

void *std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__find_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::operator<[abi:ne200100]<unsigned long long,boost::uuids::uuid,std::string>(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::operator<[abi:ne200100]<unsigned long long,boost::uuids::uuid,std::string>((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<[abi:ne200100]<unsigned long long,boost::uuids::uuid,std::string>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5 == -1 || v5 < v4)
  {
    return 1;
  }

  if (v5 > v4)
  {
    return 0;
  }

  v8[1] = v2;
  v8[2] = v3;
  v8[0] = &v7;
  return (off_286A54870[v5])(v8, a1, a2);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul,1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::less<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = bswap64(*a2);
  v4 = bswap64(*a3);
  if (v3 == v4 && (v3 = bswap64(a2[1]), v4 = bswap64(a3[1]), v3 == v4))
  {
    v5 = 0;
  }

  else if (v3 < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  return v5 >> 31;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<ULROIPoint>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = 0;
  for (i = 0; i != 16; ++i)
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + *(a2 + i);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v5)
    {
      v7 = v3 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
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
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

void OUTLINED_FUNCTION_0_0(uint64_t a1@<X1>, __int16 a2@<W8>)
{
  *(a1 + 10) = v2;
  *(a1 + 18) = 2081;
  *(a1 + 28) = a2;
}

void OUTLINED_FUNCTION_1_0(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void ULRFGroupGenerator::placeRFClusters(void *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  v127 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v102 = 0;
  v101 = 0;
  v103 = 0;
  v99 = 0;
  v98 = 0;
  v100 = 0;
  v96 = 0;
  v95 = 0;
  v97 = 0;
  v93 = 0;
  v92 = 0;
  v94 = 0;
  v90 = 0;
  v89 = 0;
  v91 = 0;
  ULRFGroupGenerator::preProcessSegments(a1, a2, &v101, &v98, &v95, &v92, &v89);
  if (v102 == v101 || v93 == v92 || v90 == v89)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULRFGroupGenerator::placeRFClusters();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v108 = (v102 - v101) >> 2;
      v109 = 2048;
      *v110 = (v93 - v92) >> 2;
      *&v110[8] = 2048;
      v111 = (v90 - v89) >> 2;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "#HomeSlam, placeRFClusters not enough information, returning, numSegments: %zu, numStartClusters: %zu, numEndClusters: %zu, ", buf, 0x20u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULRFGroupGenerator::placeRFClusters();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v5 = 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3);
      *buf = 134218240;
      v108 = v5;
      v109 = 2048;
      *v110 = (v102 - v101) >> 2;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "#HomeSlam, placeRFClusters got %zu segments, left with %zu segments after matching clustered fingerprints", buf, 0x16u);
    }

    v86 = 0u;
    v87 = 0u;
    v88 = 1065353216;
    v6 = v92;
    v7 = v93;
    while (v6 != v7)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v86, v6, v6);
      ++v6;
    }

    v9 = v89;
    v10 = v90;
    while (v9 != v10)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v86, v9, v9);
      ++v9;
    }

    v82 = 0x2EDBE6FF00000001;
    v80 = 6;
    v84 = 20;
    v85 = xmmword_25921C470;
    v81 = 0x3727C5AC3D4CCCCDLL;
    v83 = 0xA000003E8;
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::LBFGSBSolver(buf, &v80);
    v11 = DWORD2(v87);
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v66, v101, v102, (v102 - v101) >> 2);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v63, v98, v99, (v99 - v98) >> 2);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v60, v95, v96, (v96 - v95) >> 2);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, v92, v93, (v93 - v92) >> 2);
    __p = 0;
    v55 = 0;
    v56 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v89, v90, (v90 - v89) >> 2);
    MinimizerFunc::MinimizerFunc(v69, &v66, &v63, &v60, &v57, &__p, v11);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    v48[0] = 0;
    v48[1] = 0;
    v49 = 0;
    ULRFGroupGenerator::fillBoundsAndInitialX(v52, v50, v48, v11);
    v47 = 0.0;
    v13 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<MinimizerFunc>(buf, v69, v52, &v47, v48, v50, v12);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULRFGroupGenerator::placeRFClusters();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *v104 = 67109376;
      *&v104[4] = v13;
      v105 = 2048;
      v106 = v47;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEBUG, "#HomeSlam, placeRFClusters minimizer took %u iterations, target function value: %f", v104, 0x12u);
    }

    if (v53 != 7 * v11)
    {
      ULRFGroupGenerator::placeRFClusters(v104);

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULRFGroupGenerator.mm", 169, "placeRFClusters");
      __break(1u);
    }

    v15 = a3;
    if (*(&v87 + 1))
    {
      v16 = 0;
      v17 = v52[0];
      v18 = v52[0] + 4 * v11;
      v19 = v52[0] + 8 * (v11 & 0x7FFFFFFF);
      v20 = v52[0] + 12 * v11;
      v21 = v52[0] + 16 * (v11 & 0x3FFFFFFF);
      v22 = v52[0] + 20 * v11;
      v23 = a3[1];
      v24 = v52[0] + 24 * v11;
      v45 = v19;
      v46 = v18;
      do
      {
        v25 = v17[v16];
        v26 = *&v18[4 * v16];
        v27 = *&v19[4 * v16];
        v28 = *&v20[4 * v16];
        v29 = *&v21[4 * v16];
        v30 = *&v22[4 * v16];
        v31 = *&v24[4 * v16];
        v32 = v15[2];
        v33 = v15;
        if (v23 >= v32)
        {
          v34 = *v15;
          v35 = v23 - *v15;
          v36 = v35 >> 5;
          v37 = (v35 >> 5) + 1;
          if (v37 >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v38 = v32 - v34;
          if (v38 >> 4 > v37)
          {
            v37 = v38 >> 4;
          }

          v39 = v38 >= 0x7FFFFFFFFFFFFFE0;
          v40 = 0x7FFFFFFFFFFFFFFLL;
          if (!v39)
          {
            v40 = v37;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(v15, v40);
          }

          v41 = (32 * v36);
          *v41 = v16;
          v41[1] = v25;
          v41[2] = v26;
          v41[3] = v27;
          v41[4] = v28;
          v23 = (32 * v36 + 32);
          v41[5] = v29;
          v41[6] = v30;
          v42 = &v41[-8 * (v35 >> 5)];
          v41[7] = v31;
          memcpy(v42, v34, v35);
          v43 = *v33;
          *v33 = v42;
          v33[1] = v23;
          v33[2] = 0;
          if (v43)
          {
            operator delete(v43);
          }

          v19 = v45;
          v18 = v46;
        }

        else
        {
          *v23 = v16;
          *(v23 + 1) = v25;
          *(v23 + 2) = v26;
          *(v23 + 3) = v27;
          *(v23 + 4) = v28;
          *(v23 + 5) = v29;
          *(v23 + 6) = v30;
          *(v23 + 7) = v31;
          v23 += 32;
        }

        v33[1] = v23;
        ++v16;
        v15 = v33;
      }

      while (v16 < *(&v87 + 1));
    }

    free(v48[0]);
    free(v50[0]);
    free(v52[0]);
    v52[0] = &v79;
    std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v52);
    v52[0] = &v78;
    std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v52);
    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v69[0])
    {
      v69[1] = v69[0];
      operator delete(v69[0]);
    }

    free(v126);
    free(v125);
    free(v124);
    free(v123);
    free(v122);
    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

    free(v119);
    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    free(v116);
    free(v115);
    free(v114);
    free(v113);
    free(v112);
    free(*&v110[2]);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v86);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }
}

void sub_2590325EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 != 3)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = _CLLogObjectForCategory_MicroLocation_Default(v25);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v27)
      {
        LODWORD(STACK[0x290]) = 136315138;
        STACK[0x294] = v25;
        _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_ERROR, "#HomeSlam, placeRFClusters minimizer got exception: %s", &STACK[0x290], 0xCu);
      }
    }

    else if (v27)
    {
      LOWORD(STACK[0x290]) = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_ERROR, "#HomeSlam, placeRFClusters minimizer unkown exception!", &STACK[0x290], 2u);
    }

    __cxa_end_catch();
LABEL_25:
    JUMPOUT(0x2590323E0);
  }

  v21 = __cxa_begin_catch(a1);
  v22 = (*(*v21 + 16))(v21);
  std::string::basic_string[abi:ne200100]<0>(&STACK[0x290], v22);
  v23 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&STACK[0x290], "the line search routine is unable to sufficiently decrease the function value");
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v28 = (*(*v21 + 16))(v21);
    std::string::basic_string[abi:ne200100]<0>(&__p, v28);
    v23 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "the line search step became smaller than the minimum value allowed");
    v24 = v23;
    if (a20 < 0)
    {
      operator delete(__p);
    }
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  v29 = _CLLogObjectForCategory_MicroLocation_Default(v23);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  if (v24)
  {
    if (!v30)
    {
      goto LABEL_22;
    }

    LOWORD(STACK[0x290]) = 0;
    v31 = "#HomeSlam, RFGroupPlacement minimizer got linesearch error, using best result found!";
    v32 = v29;
    v33 = 2;
  }

  else
  {
    if (!v30)
    {
      goto LABEL_22;
    }

    v34 = (*(*v21 + 16))(v21);
    LODWORD(STACK[0x290]) = 136315138;
    STACK[0x294] = v34;
    v31 = "#HomeSlam, placeRFClusters minimizer runtime error: %s";
    v32 = v29;
    v33 = 12;
  }

  _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_ERROR, v31, &STACK[0x290], v33);
LABEL_22:

  __cxa_end_catch();
  if (v24)
  {
    JUMPOUT(0x25903227CLL);
  }

  goto LABEL_25;
}

void ULRFGroupGenerator::preProcessSegments(void *a1, uint64_t *a2, const void **a3, const void **a4, const void **a5, const void **a6, const void **a7)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v15 = *(v7 + 32);
      v14 = *(v7 + 40);
      while (v14 != v15)
      {
        v14 -= 2;
        if (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v14))
        {
          v15 = v14 + 2;
          break;
        }
      }

      if (v15 != *(v7 + 32))
      {
        v17 = *(v7 + 56);
        v16 = *(v7 + 64);
        if (v17 != v16)
        {
          while (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v17))
          {
            v17 += 2;
            if (v17 == v16)
            {
              v17 = v16;
              break;
            }
          }

          v16 = *(v7 + 64);
        }

        if (v17 != v16)
        {
          std::vector<float>::push_back[abi:ne200100](a3, (v7 + 16));
          std::vector<float>::push_back[abi:ne200100](a4, (v7 + 20));
          std::vector<float>::push_back[abi:ne200100](a5, (v7 + 24));
          v18 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v15 - 2);
          if (!v18 || (std::vector<int>::push_back[abi:ne200100](a6, v18 + 8), (v19 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v17)) == 0))
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::vector<int>::push_back[abi:ne200100](a7, v19 + 8);
        }
      }

      v7 += 104;
    }

    while (v7 != v8);
  }
}

void ULRFGroupGenerator::fillBoundsAndInitialX(char **a1, char **a2, char **a3, unsigned int a4)
{
  v8 = 7 * a4;
  if (v8 != *(a1 + 4))
  {
    *(a1 + 4) = v8;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, 7 * a4);
    if (*(a1 + 4) != v8)
    {
      v10 = cva::Logger::instance(v9);
      cva::Logger::logInCategory(v10, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a1 + 4), 1, v8, 1);
      if (*(a1 + 4) != v8)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }
  }

  if (a4)
  {
    bzero(*a1, 4 * v8);
  }

  srand(0x2Au);
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = *a1;
    v13 = 4 * v11;
    do
    {
      *v12++ = (vcvts_n_f32_s32(rand(), 0x1FuLL) * 2.0) + -1.0;
      v13 -= 4;
    }

    while (v13);
  }

  if (v8 != *(a2 + 4))
  {
    *(a2 + 4) = v8;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a2, v8);
    if (*(a2 + 4) != v8)
    {
      v15 = cva::Logger::instance(v14);
      cva::Logger::logInCategory(v15, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a2 + 4), 1, v8, 1);
      if (*(a2 + 4) != v8)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }
  }

  if (a4)
  {
    bzero(*a2, 4 * v8);
  }

  if (v8 != *(a3 + 4))
  {
    *(a3 + 4) = v8;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a3, v8);
    if (*(a3 + 4) != v8)
    {
      v17 = cva::Logger::instance(v16);
      cva::Logger::logInCategory(v17, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a3 + 4), 1, v8, 1);
      if (*(a3 + 4) != v8)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }
  }

  if (a4)
  {
    bzero(*a3, 4 * v8);
    v18 = 0;
    v56 = 6 * a4;
    v57 = 5 * a4;
    v61 = 4 * v56;
    v58 = 4 * a4;
    v59 = 3 * a4;
    v62 = 4 * v57;
    v63 = 4 * v58;
    v64 = 4 * v59;
    v60 = 2 * a4;
    v65 = 4 * v60;
    v66 = 4 * a4;
    v19 = a4;
    for (i = a4; i != v18; v19 = i)
    {
      v20 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      if (v18 >= *(a1 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a1)[4 * v18] = (v20 * 0.5) * *&(*a1)[4 * v18];
      v21 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      v22 = v19 + v18;
      if (v19 + v18 >= *(a1 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a1)[4 * v18 + v66] = (v21 * 0.5) * *&(*a1)[4 * v18 + v66];
      v23 = ULSettings::get<ULSettings::HomeSlamMapMaxZ>();
      v24 = v60 + v18;
      if (v60 + v18 >= *(a1 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a1)[4 * v18 + v65] = (v23 * 0.5) * *&(*a1)[4 * v18 + v65];
      v25 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaXY>();
      v26 = v59 + v18;
      if (v59 + v18 >= *(a1 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a1)[4 * v18 + v64] = v25 * 0.5;
      v27 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaXY>();
      v28 = v58 + v18;
      if (v58 + v18 >= *(a1 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a1)[4 * v18 + v63] = v27 * 0.5;
      v29 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaZ>();
      v30 = v57 + v18;
      v31 = *(a1 + 4);
      if (v57 + v18 >= v31)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v32 = *a1;
      *&(*a1)[4 * v18 + v62] = v29 * 0.5;
      v33 = v56 + v18;
      if (v56 + v18 >= v31)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&v32[4 * v18 + v61] = *&v32[4 * v18 + v61] * 3.1416;
      v34 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      if (v18 >= *(a2 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a2)[4 * v18] = v34;
      v35 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      if (v22 >= *(a2 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a2)[4 * v18 + v66] = v35;
      v36 = ULSettings::get<ULSettings::HomeSlamMapMaxZ>();
      if (v24 >= *(a2 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a2)[4 * v18 + v65] = v36;
      v37 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaXY>();
      if (v26 >= *(a2 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a2)[4 * v18 + v64] = v37;
      v38 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaXY>();
      if (v28 >= *(a2 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a2)[4 * v18 + v63] = v38;
      v39 = ULSettings::get<ULSettings::HomeSlamMapMaxSigmaZ>();
      v40 = *(a2 + 4);
      if (v30 >= v40)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v41 = *a2;
      *&(*a2)[4 * v18 + v62] = v39;
      if (v33 >= v40)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&v41[4 * v18 + v61] = 1086918619;
      v42 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      if (v18 >= *(a3 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a3)[4 * v18] = -v42;
      v43 = ULSettings::get<ULSettings::HomeSlamMapMaxXY>();
      if (v22 >= *(a3 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a3)[4 * v18 + v66] = -v43;
      v44 = ULSettings::get<ULSettings::HomeSlamMapMaxZ>();
      if (v24 >= *(a3 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a3)[4 * v18 + v65] = -v44;
      v45 = ULSettings::get<ULSettings::HomeSlamMapMinSigmaXY>();
      if (v26 >= *(a3 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a3)[4 * v18 + v64] = v45;
      v46 = ULSettings::get<ULSettings::HomeSlamMapMinSigmaXY>();
      if (v28 >= *(a3 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&(*a3)[4 * v18 + v63] = v46;
      v47 = +[ULDefaultsSingleton shared];
      v48 = [v47 defaultsDictionary];

      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMinSigmaZ"];
      v50 = [v48 objectForKey:v49];
      if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v50 floatValue];
      }

      else
      {
        [&unk_286A72C30 floatValue];
      }

      v52 = v51;

      v53 = *(a3 + 4);
      if (v30 >= v53)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v54 = *a3;
      *&(*a3)[4 * v18 + v62] = v52;
      if (v33 >= v53)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *&v54[4 * v18++ + v61] = -1060565029;
    }
  }
}

uint64_t LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<MinimizerFunc>(unsigned int **a1, uint64_t a2, cva::Logger *a3, float *a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = *(a3 + 4);
  if (*(a5 + 16) != v7 || *(a6 + 16) != v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'lb' and 'ub' must have the same size as 'x'");
    __cxa_throw(exception, off_2798D4070, MEMORY[0x277D82610]);
  }

  v9 = a6;
  v10 = a5;
  LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::force_bounds(a3, a5, a6, a7);
  v13 = **a1;
  *(a1 + 2) = v13;
  *(a1 + 3) = 1065353216;
  *(a1 + 8) = v7;
  *(a1 + 9) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 2), (v13 * v7));
  *(a1 + 14) = v7;
  *(a1 + 15) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 5), (v13 * v7));
  *(a1 + 20) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 8), v13);
  *(a1 + 26) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 11), v13);
  *(a1 + 28) = 0;
  *(a1 + 29) = v13;
  *(a1 + 34) = 2 * v13;
  *(a1 + 35) = 2 * v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 15), (2 * v13 * 2 * v13));
  v14 = *(a1 + 34);
  v15 = *(a1 + 35);
  if (v15 * v14)
  {
    bzero(a1[15], 4 * v15 * v14);
  }

  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = 0;
    v18 = a1[15];
    do
    {
      v18[v17] = 1065353216;
      v17 += v14 + 1;
      --v16;
    }

    while (v16);
  }

  v19 = (a1 + 35);
  *(a1 + 74) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 35), v7);
  *(a1 + 80) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 38), v7);
  *(a1 + 88) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 42), v7);
  v20 = (a1 + 45);
  *(a1 + 94) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 45), v7);
  v21 = (*a1)[3];
  if (v21 >= 1)
  {
    *(a1 + 68) = v21;
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 32), v21);
    LODWORD(v21) = (*a1)[3];
  }

  *a4 = MinimizerFunc::operator()(a2, a3, (a1 + 38));
  v22 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm(a3, (a1 + 38), v10, v9);
  *(a1 + 82) = v22;
  if (v21 >= 1)
  {
    if (!*(a1 + 68))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
    }

    *a1[32] = *a4;
    v22 = *(a1 + 82);
  }

  if (v22 <= *(*a1 + 1))
  {
    return 1;
  }

  v23 = *(a3 + 4);
  if (v23)
  {
    v24 = **a3 * **a3;
    if (v23 != 1)
    {
      v25 = 4 * v23;
      v26 = (*a3 + 4);
      v27 = v25 - 4;
      do
      {
        v28 = *v26++;
        v24 = v24 + (v28 * v28);
        v27 -= 4;
      }

      while (v27);
    }
  }

  else
  {
    v24 = 0.0;
  }

  if (v22 <= (*(*a1 + 2) * sqrtf(v24)))
  {
    return 1;
  }

  v179[0] = 0;
  v179[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v179, v7);
  v180 = v7;
  v177[0] = 0;
  v177[1] = 0;
  v178 = 0;
  memset(&v176, 0, sizeof(v176));
  memset(&__p, 0, sizeof(__p));
  LBFGSpp::Cauchy<float>::get_cauchy_point((a1 + 1), a3, (a1 + 38), v10, v9, v179, v177, &v176, &__p);
  v30 = v180;
  if (v180 != *(a3 + 4))
  {
    v31 = cva::Logger::instance(v29);
    cva::Logger::logInCategory(v31, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", v180, 1, *(a3 + 4), 1);
    v30 = v180;
    if (v180 != *(a3 + 4))
    {
      goto LABEL_39;
    }
  }

  if (v30 != *(a1 + 94))
  {
    if (v179[0] == *v20 || *a3 == *v20)
    {
      v181 = 0;
      v182 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v181, v30);
      v43 = v180;
      v44 = v181;
      if (v180)
      {
        v45 = *a3;
        v46 = v179[0];
        v47 = 4 * v180;
        do
        {
          v48 = *v46++;
          v49 = v48;
          v50 = *v45++;
          *v44++ = v49 - v50;
          v47 -= 4;
        }

        while (v47);
        v44 = v181;
      }

      v51 = a1[45];
      v52 = a1[46];
      v53 = v182;
      a1[45] = v44;
      a1[46] = v53;
      v181 = v51;
      v182 = v52;
      *(a1 + 94) = v43;
      v183 = 0;
      free(v51);
      goto LABEL_45;
    }

    *(a1 + 94) = v30;
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 45), v30);
    v30 = v180;
    if (*(a1 + 94) != v180)
    {
      v42 = cva::Logger::instance(v41);
      cva::Logger::logInCategory(v42, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a1 + 94), 1, v180, 1);
      v30 = *(a1 + 94);
      if (v30 != v180)
      {
LABEL_39:
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }
  }

  if (v30)
  {
    v32 = *v20;
    v33 = v30;
    v34 = *a3;
    v35 = v179[0];
    v36 = 4 * v33;
    do
    {
      v37 = *v35++;
      v38 = v37;
      v39 = *v34++;
      *v32++ = v38 - v39;
      v36 -= 4;
    }

    while (v36);
  }

LABEL_45:
  cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::normalize<float,void>((a1 + 45));
  v172 = 0;
  v173 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v172, v7);
  v174 = v7;
  v169 = 0;
  v170 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v169, v7);
  v157 = v21;
  v158 = v7;
  v171 = v7;
  for (i = 1; ; ++i)
  {
    v54 = v20;
    if (v19 != a3)
    {
      v55 = *(a3 + 4);
      cva::MatrixData<float,0ul,0ul,false>::reserve(v19, v55);
      if (v55)
      {
        memcpy(*v19, *a3, 4 * v55);
      }

      *(a1 + 74) = *(a3 + 4);
    }

    v56 = *(a1 + 80);
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 42), v56);
    v57 = v10;
    v58 = v9;
    if (v56)
    {
      memcpy(a1[42], a1[38], 4 * v56);
    }

    v59 = v19;
    *(a1 + 88) = *(a1 + 80);
    v60.n128_f64[0] = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a1 + 38, v54);
    v168 = v60.n128_f32[0];
    v62 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::max_step_size(a3, v54, v57, v58, v60);
    v167 = v62;
    if (v168 >= 0.0 || (v63 = *a1, v62 <= *(*a1 + 8)))
    {
      v64 = v180;
      if (v180 != *(a3 + 4))
      {
        v65 = cva::Logger::instance(v61);
        cva::Logger::logInCategory(v65, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", v180, 1, *(a3 + 4), 1);
        v64 = v180;
        if (v180 != *(a3 + 4))
        {
LABEL_154:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

      if (v64 != *(a1 + 94))
      {
        if (v179[0] == *v54 || *a3 == *v54)
        {
          v181 = 0;
          v182 = 0;
          cva::MatrixData<float,0ul,0ul,false>::allocate(&v181, v64);
          v75 = v180;
          v76 = v181;
          if (v180)
          {
            v77 = *a3;
            v78 = v179[0];
            v79 = 4 * v180;
            do
            {
              v80 = *v78++;
              v81 = v80;
              v82 = *v77++;
              *v76++ = v81 - v82;
              v79 -= 4;
            }

            while (v79);
            v76 = v181;
          }

          v83 = a1[45];
          v84 = a1[46];
          v85 = v182;
          a1[45] = v76;
          a1[46] = v85;
          v181 = v83;
          v182 = v84;
          *(a1 + 94) = v75;
          v183 = 0;
          free(v83);
          goto LABEL_71;
        }

        *(a1 + 94) = v64;
        cva::MatrixData<float,0ul,0ul,false>::reserve(v54, v64);
        v64 = v180;
        if (*(a1 + 94) != v180)
        {
          v74 = cva::Logger::instance(v73);
          cva::Logger::logInCategory(v74, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a1 + 94), 1, v180, 1);
          v64 = *(a1 + 94);
          if (v64 != v180)
          {
            goto LABEL_154;
          }
        }
      }

      if (v64)
      {
        v66 = *v54;
        v67 = *a3;
        v68 = 4 * v64;
        v69 = v179[0];
        do
        {
          v70 = *v69++;
          v71 = v70;
          v72 = *v67++;
          *v66++ = v71 - v72;
          v68 -= 4;
        }

        while (v68);
      }

LABEL_71:
      v86 = **a1;
      *(a1 + 2) = v86;
      *(a1 + 3) = 1065353216;
      *(a1 + 8) = v158;
      *(a1 + 9) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 2), (v86 * v158));
      *(a1 + 14) = v158;
      *(a1 + 15) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 5), (v86 * v158));
      *(a1 + 20) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 8), v86);
      *(a1 + 26) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 11), v86);
      *(a1 + 28) = 0;
      *(a1 + 29) = v86;
      *(a1 + 34) = 2 * v86;
      *(a1 + 35) = 2 * v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 15), (2 * v86 * 2 * v86));
      v87 = *(a1 + 34);
      v88 = *(a1 + 35);
      if (v88 * v87)
      {
        bzero(a1[15], 4 * v88 * v87);
      }

      if (v88 >= v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = v88;
      }

      if (v89)
      {
        v90 = 0;
        v91 = a1[15];
        do
        {
          v91[v90] = 1065353216;
          v90 += v87 + 1;
          --v89;
        }

        while (v89);
      }

      v92.n128_f64[0] = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a1 + 38, v54);
      v168 = v92.n128_f32[0];
      v62 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::max_step_size(a3, v54, v57, v58, v92);
      v63 = *a1;
    }

    if (v62 >= *(v63 + 36))
    {
      v62 = *(v63 + 36);
    }

    v167 = v62;
    v166 = fminf(v62, 1.0);
    v19 = v59;
    v20 = v54;
    LBFGSpp::LineSearchMoreThuente<float>::LineSearch<MinimizerFunc,LBFGSpp::LBFGSBParam<float>>(a2, v63, v59, v54, &v167, &v166, a4, (a1 + 38), &v168, a3);
    v9 = v58;
    v10 = v57;
    v40 = i;
    v94 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm(a3, (a1 + 38), v57, v9);
    *(a1 + 82) = v94;
    v95 = *a1;
    if (v94 <= *(*a1 + 1))
    {
      break;
    }

    v96 = *(a3 + 4);
    if (v96)
    {
      v97 = **a3 * **a3;
      if (v96 != 1)
      {
        v98 = (*a3 + 4);
        v99 = 4 * v96 - 4;
        do
        {
          v100 = *v98++;
          v97 = v97 + (v100 * v100);
          v99 -= 4;
        }

        while (v99);
      }
    }

    else
    {
      v97 = 0.0;
    }

    if (v94 <= (*(v95 + 8) * sqrtf(v97)))
    {
      break;
    }

    if (v157 >= 1)
    {
      v101 = i % v157;
      if (*(a1 + 68) <= v101)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v102 = a1[32];
      v103 = *a4;
      if (i >= v157)
      {
        v104 = *&v102[v101];
        v105 = vabds_f32(v104, v103);
        v106 = fabsf(v103);
        v107 = fabsf(v104);
        if (v106 >= v107)
        {
          v107 = v106;
        }

        if (v107 < 1.0)
        {
          v107 = 1.0;
        }

        if (v105 <= (*(v95 + 16) * v107))
        {
          break;
        }
      }

      *&v102[v101] = v103;
    }

    v108 = *(v95 + 20);
    if (v108 && i >= v108)
    {
      break;
    }

    if (v96 == *(a1 + 74))
    {
      v109 = *(a3 + 4);
    }

    else
    {
      v110 = cva::Logger::instance(v93);
      v93 = cva::Logger::logInCategory(v110, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a3 + 4), 1, *(a1 + 74), 1);
      v109 = *(a3 + 4);
      if (v109 != *(a1 + 74))
      {
        goto LABEL_152;
      }
    }

    if (v109 == v174)
    {
      goto LABEL_105;
    }

    if (*a3 != v172 && *v19 != v172)
    {
      v174 = v109;
      cva::MatrixData<float,0ul,0ul,false>::reserve(&v172, v109);
      v109 = *(a3 + 4);
      if (v174 != v109)
      {
        v118 = cva::Logger::instance(v93);
        v93 = cva::Logger::logInCategory(v118, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", v174, 1, *(a3 + 4), 1);
        v109 = v174;
        if (v174 != *(a3 + 4))
        {
LABEL_152:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

LABEL_105:
      if (v109)
      {
        v111 = v172;
        v112 = *v19;
        v113 = 4 * v109;
        v114 = *a3;
        do
        {
          v115 = *v114++;
          v116 = v115;
          v117 = *v112++;
          *v111++ = v116 - v117;
          v113 -= 4;
        }

        while (v113);
      }

      goto LABEL_119;
    }

    v181 = 0;
    v182 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v181, v109);
    v119 = *(a3 + 4);
    v120 = v181;
    if (v119)
    {
      v121 = *v19;
      v122 = *a3;
      v123 = 4 * v119;
      do
      {
        v124 = *v122++;
        v125 = v124;
        v126 = *v121++;
        *v120++ = v125 - v126;
        v123 -= 4;
      }

      while (v123);
      v120 = v181;
    }

    v127 = v172;
    v128 = v173;
    v172 = v120;
    v173 = v182;
    v181 = v127;
    v182 = v128;
    v174 = v119;
    v183 = 0;
    free(v127);
LABEL_119:
    v129 = *(a1 + 80);
    if (v129 != *(a1 + 88))
    {
      v130 = cva::Logger::instance(v93);
      cva::Logger::logInCategory(v130, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a1 + 80), 1, *(a1 + 88), 1);
      v129 = *(a1 + 80);
      if (v129 != *(a1 + 88))
      {
LABEL_153:
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    if (v129 == v171)
    {
      goto LABEL_122;
    }

    if (a1[38] != v169 && a1[42] != v169)
    {
      v171 = v129;
      cva::MatrixData<float,0ul,0ul,false>::reserve(&v169, v129);
      v129 = *(a1 + 80);
      if (v171 != v129)
      {
        v139 = cva::Logger::instance(v138);
        cva::Logger::logInCategory(v139, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", v171, 1, *(a1 + 80), 1);
        v129 = v171;
        if (v171 != *(a1 + 80))
        {
          goto LABEL_153;
        }
      }

LABEL_122:
      if (v129)
      {
        v131 = v169;
        v132 = a1[42];
        v133 = 4 * v129;
        v134 = a1[38];
        do
        {
          v135 = *v134++;
          v136 = v135;
          v137 = *v132++;
          *v131++ = v136 - v137;
          v133 -= 4;
        }

        while (v133);
      }

      goto LABEL_136;
    }

    v181 = 0;
    v182 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v181, v129);
    v140 = *(a1 + 80);
    v141 = v181;
    if (v140)
    {
      v142 = a1[42];
      v143 = a1[38];
      v144 = 4 * v140;
      do
      {
        v145 = *v143++;
        v146 = v145;
        v147 = *v142++;
        *v141++ = v146 - v147;
        v144 -= 4;
      }

      while (v144);
      v141 = v181;
    }

    v148 = v169;
    v149 = v170;
    v169 = v141;
    v170 = v182;
    v181 = v148;
    v182 = v149;
    v171 = v140;
    v183 = 0;
    free(v148);
LABEL_136:
    v150 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(&v172, &v169);
    if (v171)
    {
      v151 = *v169 * *v169;
      if (v171 != 1)
      {
        v152 = (v169 + 4);
        v153 = 4 * v171 - 4;
        do
        {
          v154 = *v152++;
          v151 = v151 + (v154 * v154);
          v153 -= 4;
        }

        while (v153);
      }
    }

    else
    {
      v151 = 0.0;
    }

    if (*&v150 > (v151 * 0.00000011921))
    {
      LODWORD(v181) = v174;
      v182 = v172;
      v183 = v174;
      v184 = 0;
      v162 = v171;
      v163 = v169;
      v164 = v171;
      v165 = 0;
      LBFGSpp::BFGSMat<float,true>::add_correction(a1 + 2, &v181, &v162);
    }

    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::force_bounds(a3, v57, v9, *&v150);
    LBFGSpp::Cauchy<float>::get_cauchy_point((a1 + 1), a3, (a1 + 38), v57, v9, v179, v177, &v176, &__p);
    LBFGSpp::SubspaceMin<float>::subspace_minimize((a1 + 1), a3, v179, a1 + 38, v57, v9, v177, &v176, &__p, (*a1)[6], v20);
  }

  free(v169);
  free(v172);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v176.__begin_)
  {
    v176.__end_ = v176.__begin_;
    operator delete(v176.__begin_);
  }

  free(v177[0]);
  free(v179[0]);
  return v40;
}

void sub_259033F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  free(a26);
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  free(*(v33 - 176));
  free(*(v33 - 152));
  _Unwind_Resume(a1);
}

float ULSettings::get<ULSettings::HomeSlamMapMaxXY>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMaxXY"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A71598 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamMapMaxZ>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMaxZ"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A715B0 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamMapMaxSigmaXY>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMaxSigmaXY"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72C40 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamMapMaxSigmaZ>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMaxSigmaZ"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A71580 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamMapMinSigmaXY>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapMinSigmaXY"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72C30 floatValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULRFGroupGenerator::getRotatedCovarianceElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, uint64_t a7, float **a8)
{
  v28 = a7;
  v12 = *a8;
  v13 = a8[3];
  v14 = a8[6];
  v15 = a8[9];
  v24 = a8[12];
  v16 = a8[15];
  v17 = a8[18];
  vvsincosf(*a8, v13, a6, &v28);
  MEMORY[0x259CA30C0](v13, 1, v12, 1, v14, 1, a7);
  MEMORY[0x259CA30C0](v13, 1, v13, 1, v15, 1, a7);
  MEMORY[0x259CA30C0](v12, 1, v12, 1, v24, 1, a7);
  MEMORY[0x259CA30C0](a4, 1, a4, 1, v16, 1, a7);
  MEMORY[0x259CA30C0](a5, 1, a5, 1, v17, 1, a7);
  v18 = *a8;
  v19 = a8[3];
  MEMORY[0x259CA30C0](v15, 1, v16, 1, *a8, 1, a7);
  MEMORY[0x259CA30C0](v24, 1, v17, 1, v19, 1, a7);
  MEMORY[0x259CA30B0](v18, 1, v19, 1, a1, 1, a7);
  v20 = *a8;
  MEMORY[0x259CA30E0](v17, 1, v16, 1, *a8, 1, a7);
  MEMORY[0x259CA30C0](v14, 1, v20, 1, a2, 1, a7);
  v21 = *a8;
  v22 = a8[3];
  MEMORY[0x259CA30C0](v15, 1, v17, 1, v21, 1, a7);
  MEMORY[0x259CA30C0](v24, 1, v16, 1, v22, 1, a7);
  return MEMORY[0x259CA30B0](v21, 1, v22, 1, a3, 1, a7);
}

void ULRFGroupGenerator::getCovarianceInverseElements(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, const float *a5, uint64_t a6, uint64_t a7, uint64_t a8, const float *a9, uint64_t a10, uint64_t a11)
{
  v24 = a10;
  v15 = *a11;
  v16 = *(a11 + 24);
  v17 = *(a11 + 48);
  MEMORY[0x259CA30C0](a6, 1, a8, 1, v16, 1, a10);
  MEMORY[0x259CA30C0](a7, 1, a7, 1, v17, 1, a10);
  MEMORY[0x259CA30E0](v17, 1, v16, 1, a5, 1, a10);
  MEMORY[0x259CA30C0](a5, 1, a9, 1, a5, 1, a10);
  vvrecf(v15, a5, &v24);
  MEMORY[0x259CA30C0](v15, 1, a8, 1, a1, 1, a10);
  MEMORY[0x259CA30C0](a1, 1, a9, 1, a1, 1, a10);
  v23 = -1082130432;
  v18 = *(a11 + 24);
  MEMORY[0x259CA30C0](v15, 1, a7, 1, v18, 1, a10);
  MEMORY[0x259CA30D0](v18, 1, &v23, a2, 1, a10);
  MEMORY[0x259CA30C0](a2, 1, a9, 1, a2, 1, a10);
  MEMORY[0x259CA30C0](v15, 1, a6, 1, a3, 1, a10);
  MEMORY[0x259CA30C0](a3, 1, a9, 1, a3, 1, a10);
  vvrecf(a4, a9, &v24);
}

uint64_t ULRFGroupGenerator::getGaussianExponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v22 = -1090519040;
  v15 = *a10;
  v16 = a10[3];
  v17 = a10[6];
  v18 = a10[9];
  MEMORY[0x259CA30C0](a6, 1, a2, 1, *a10, 1, a9);
  MEMORY[0x259CA30C0](a7, 1, a3, 1, v16, 1, a9);
  MEMORY[0x259CA30B0](v15, 1, v16, 1, v15, 1, a9);
  MEMORY[0x259CA30C0](a6, 1, v15, 1, v15, 1, a9);
  MEMORY[0x259CA30C0](a6, 1, a3, 1, v16, 1, a9);
  MEMORY[0x259CA30C0](a7, 1, a4, 1, v17, 1, a9);
  MEMORY[0x259CA30B0](v16, 1, v17, 1, v16, 1, a9);
  MEMORY[0x259CA30C0](a7, 1, v16, 1, v16, 1, a9);
  MEMORY[0x259CA30B0](v15, 1, v16, 1, v17, 1, a9);
  MEMORY[0x259CA30C0](a8, 1, a8, 1, v18, 1, a9);
  MEMORY[0x259CA30C0](v18, 1, a5, 1, v18, 1, a9);
  MEMORY[0x259CA30B0](v17, 1, v18, 1, v17, 1, a9);
  return MEMORY[0x259CA30D0](v17, 1, &v22, a1, 1, a9);
}

float ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t *a14, const float ***a15)
{
  v125 = *MEMORY[0x277D85DE8];
  v15 = a1[1] - *a1;
  if (v15 != a2[1] - *a2)
  {
    ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood();
  }

  if (v15 != a3[1] - *a3)
  {
    ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood();
  }

  if (v15 != a4[1] - *a4)
  {
    ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood();
  }

  if (v15 != a5[1] - *a5)
  {
    ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood();
  }

  v74 = *a1;
  v75 = a1[1];
  v24 = *a14;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v115, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 2);
  v25 = *a14;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v112, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 2);
  v26 = *a14;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v109, *(v26 + 48), *(v26 + 56), (*(v26 + 56) - *(v26 + 48)) >> 2);
  v27 = *a14;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v106, *(v27 + 72), *(v27 + 80), (*(v27 + 80) - *(v27 + 72)) >> 2);
  v28 = *a14;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v103, *(v28 + 96), *(v28 + 104), (*(v28 + 104) - *(v28 + 96)) >> 2);
  v29 = *a14;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v100, *(v29 + 120), *(v29 + 128), (*(v29 + 128) - *(v29 + 120)) >> 2);
  v30 = *a14;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v97, *(v30 + 144), *(v30 + 152), (*(v30 + 152) - *(v30 + 144)) >> 2);
  v31 = *a14;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v94, *(v31 + 168), *(v31 + 176), (*(v31 + 176) - *(v31 + 168)) >> 2);
  v32 = *a14;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v91, *(v32 + 192), *(v32 + 200), (*(v32 + 200) - *(v32 + 192)) >> 2);
  v33 = *a14;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v88, *(v33 + 216), *(v33 + 224), (*(v33 + 224) - *(v33 + 216)) >> 2);
  v34 = *a14;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v85, *(v34 + 240), *(v34 + 248), (*(v34 + 248) - *(v34 + 240)) >> 2);
  v35 = *a14;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v82, *(v35 + 264), *(v35 + 272), (*(v35 + 272) - *(v35 + 264)) >> 2);
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v36 = *a14;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v79, *(v36 + 288), *(v36 + 296), (*(v36 + 296) - *(v36 + 288)) >> 2);
  v37 = *a14;
  v77 = 0;
  v78 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v37 + 312), *(v37 + 320), (*(v37 + 320) - *(v37 + 312)) >> 2);
  v38 = v15 >> 2;
  if (v75 != v74)
  {
    v39 = 0;
    v40 = *a4;
    v41 = *a5;
    v42 = v115;
    v43 = v112;
    v44 = v109;
    v45 = v106;
    v46 = v103;
    v47 = v100;
    v48 = v97;
    v49 = v94;
    v50 = v91;
    v51 = v88;
    v52 = v85;
    v53 = v82;
    v54 = v79;
    if (v38 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v15 >> 2;
    }

    v56 = __p;
    while (1)
    {
      v57 = *(v40 + 4 * v39);
      if (v57 >= a13)
      {
        break;
      }

      v58 = *(v41 + 4 * v39);
      if (v58 >= a13)
      {
        v67 = _CLLogObjectForCategory_MicroLocation_Default(v43);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          buf = 68289539;
          v119 = 2082;
          v120 = "";
          v121 = 2082;
          v122 = "assert";
          v123 = 2081;
          v124 = "endCluster < numClusters";
          _os_log_impl(&dword_258FE9000, v67, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, segment end cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
        }

        v69 = _CLLogObjectForCategory_MicroLocation_Default(v68);
        if (os_signpost_enabled(v69))
        {
          buf = 68289539;
          v119 = 2082;
          v120 = "";
          v121 = 2082;
          v122 = "assert";
          v123 = 2081;
          v124 = "endCluster < numClusters";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v69, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, segment end cluster must be less than number of clusters", "{msg%{public}.0s:#HomeSlam, segment end cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
        }

        v65 = _CLLogObjectForCategory_MicroLocation_Default(v70);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          buf = 68289539;
          v119 = 2082;
          v120 = "";
          v121 = 2082;
          v122 = "assert";
          v123 = 2081;
          v124 = "endCluster < numClusters";
          _os_log_impl(&dword_258FE9000, v65, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, segment end cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
        }

        v66 = 431;
        goto LABEL_56;
      }

      v42[v39] = *(a6 + 4 * v57);
      v43[v39] = *(a7 + 4 * v57);
      v44[v39] = *(a8 + 4 * v57);
      v45[v39] = *(a9 + 4 * v57);
      v46[v39] = *(a10 + 4 * v57);
      v47[v39] = *(a11 + 4 * v57);
      v48[v39] = *(a12 + 4 * v57);
      v49[v39] = *(a6 + 4 * v58);
      v50[v39] = *(a7 + 4 * v58);
      v51[v39] = *(a8 + 4 * v58);
      v52[v39] = *(a9 + 4 * v58);
      v53[v39] = *(a10 + 4 * v58);
      v54[v39] = *(a11 + 4 * v58);
      v56[v39++] = *(a12 + 4 * v58);
      if (v55 == v39)
      {
        goto LABEL_13;
      }
    }

    v61 = _CLLogObjectForCategory_MicroLocation_Default(v43);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v119 = 2082;
      v120 = "";
      v121 = 2082;
      v122 = "assert";
      v123 = 2081;
      v124 = "startCluster < numClusters";
      _os_log_impl(&dword_258FE9000, v61, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#HomeSlam, segment start cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v63 = _CLLogObjectForCategory_MicroLocation_Default(v62);
    if (os_signpost_enabled(v63))
    {
      buf = 68289539;
      v119 = 2082;
      v120 = "";
      v121 = 2082;
      v122 = "assert";
      v123 = 2081;
      v124 = "startCluster < numClusters";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#HomeSlam, segment start cluster must be less than number of clusters", "{msg%{public}.0s:#HomeSlam, segment start cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v65 = _CLLogObjectForCategory_MicroLocation_Default(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v119 = 2082;
      v120 = "";
      v121 = 2082;
      v122 = "assert";
      v123 = 2081;
      v124 = "startCluster < numClusters";
      _os_log_impl(&dword_258FE9000, v65, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#HomeSlam, segment start cluster must be less than number of clusters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v66 = 430;
LABEL_56:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULRFGroupGenerator.mm", v66, "clusterGaussiansSegmentsLikelihood");
    __break(1u);
  }

LABEL_13:
  NegativeLogLikelihood3D = ULRFGroupGenerator::getNegativeLogLikelihood3D(*v71, *v72, *v73, v115, v94, v112, v91, v109, v88, v106, v103, v100, v85, v82, v79, v97, __p, v38, a15);
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
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

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  return NegativeLogLikelihood3D;
}

void sub_259035478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  v55 = *(v53 - 256);
  if (v55)
  {
    *(v53 - 248) = v55;
    operator delete(v55);
  }

  v56 = *(v53 - 232);
  if (v56)
  {
    *(v53 - 224) = v56;
    operator delete(v56);
  }

  v57 = *(v53 - 208);
  if (v57)
  {
    *(v53 - 200) = v57;
    operator delete(v57);
  }

  v58 = *(v53 - 184);
  if (v58)
  {
    *(v53 - 176) = v58;
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

float ULRFGroupGenerator::getNegativeLogLikelihood3D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const float *a16, const float *a17, vDSP_Length a18, const float ***a19)
{
  v54[0] = a18;
  v20 = **a19;
  v21 = (*a19)[3];
  v22 = (*a19)[6];
  v23 = (*a19)[9];
  v24 = (*a19)[12];
  v25 = (*a19)[15];
  ULRFGroupGenerator::getRotatedCovarianceElements(v20, v21, v22, a10, a11, a16, a18, *a19 + 18);
  ULRFGroupGenerator::getRotatedCovarianceElements(v23, v24, v25, a13, a14, a17, a18, *a19 + 18);
  v42 = (*a19)[18];
  v26 = (*a19)[21];
  v27 = (*a19)[24];
  MEMORY[0x259CA30B0](v20, 1, v23, 1);
  MEMORY[0x259CA30B0](v21, 1, v24, 1, v26, 1, a18);
  MEMORY[0x259CA30B0](v22, 1, v25, 1, v27, 1, a18);
  v28 = **a19;
  v29 = (*a19)[3];
  MEMORY[0x259CA30C0](a12, 1, a12, 1, v28, 1, a18);
  MEMORY[0x259CA30C0](a15, 1, a15, 1, v29, 1, a18);
  v30 = (*a19)[27];
  MEMORY[0x259CA30B0](v28, 1, v29, 1, v30, 1, a18);
  v43 = **a19;
  v31 = (*a19)[3];
  v32 = (*a19)[6];
  v33 = (*a19)[9];
  v34 = (*a19)[12];
  ULRFGroupGenerator::getCovarianceInverseElements((*a19)[3], (*a19)[6], (*a19)[9], (*a19)[12], **a19, v42, v26, v27, v30, a18, (*a19 + 30));
  v35 = (*a19)[15];
  v36 = (*a19)[18];
  v37 = (*a19)[21];
  MEMORY[0x259CA30E0](a5, 1, a1, 1, v35, 1, a18);
  MEMORY[0x259CA30B0](v35, 1, a4, 1, v35, 1, a18);
  MEMORY[0x259CA30E0](a7, 1, a2, 1, v36, 1, a18);
  MEMORY[0x259CA30B0](v36, 1, a6, 1, v36, 1, a18);
  MEMORY[0x259CA30E0](a9, 1, a3, 1, v37, 1, a18);
  MEMORY[0x259CA30B0](v37, 1, a8, 1, v37, 1, a18);
  v38 = (*a19)[24];
  ULRFGroupGenerator::getGaussianExponent((*a19)[24], v31, v32, v33, v34, v35, v36, v37, a18, *a19 + 27);
  v39 = (*a19)[27];
  v40 = (*a19)[30];
  vvlogf(v39, v43, v54);
  v53 = -1090519040;
  MEMORY[0x259CA30D0](v39, 1, &v53, v39, 1, a18);
  MEMORY[0x259CA30B0](v38, 1, v39, 1, v40, 1, a18);
  v53 = -1082130432;
  MEMORY[0x259CA30D0](v40, 1, &v53, v40, 1, a18);
  __C = 0.0;
  vDSP_sve(v40, 1, &__C, a18);
  return __C / a18;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_6()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259035A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MinimizerFunc::MinimizerFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 24), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 48), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 72), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 96), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 2);
  *(a1 + 128) = 0u;
  *(a1 + 120) = a7;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v14 = 14;
  do
  {
    std::vector<float>::vector[abi:ne200100](&__p, (*(a2 + 8) - *a2) >> 2);
    std::vector<std::vector<float>>::push_back[abi:ne200100]((a1 + 128), &__p);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    --v14;
  }

  while (v14);
  v15 = 13;
  do
  {
    std::vector<float>::vector[abi:ne200100](&__p, (*(a2 + 8) - *a2) >> 2);
    std::vector<std::vector<float>>::push_back[abi:ne200100]((a1 + 152), &__p);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    --v15;
  }

  while (v15);
  return a1;
}

void sub_259035BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v16 = *v14;
  if (*v14)
  {
    *(v11 + 80) = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    *(v11 + 56) = v17;
    operator delete(v17);
  }

  v18 = *v12;
  if (*v12)
  {
    *(v11 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MinimizerFunc::~MinimizerFunc(MinimizerFunc *this)
{
  v7 = (this + 152);
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 128);
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

float MinimizerFunc::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    MinimizerFunc::operator()(a1);
  }

  MinimizerFunc::targetFuncValue(a1, a2);
  v7 = v6;
  v8 = *(a2 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(__dst, v8);
  if (v8)
  {
    memcpy(__dst[0], *a2, 4 * v8);
  }

  v9 = *(a2 + 16);
  v15 = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      if (v10 >= v9)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      *(__dst[0] + v10) = *(__dst[0] + v10) + 0.00001;
      MinimizerFunc::targetFuncValue(a1, __dst);
      if (v10 >= *(a3 + 16) || (*(*a3 + 4 * v10) = (v11 - v7) / 0.00001, v9 = v15, v10 >= v15))
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v12 = __dst[0];
      *(__dst[0] + v10) = *(__dst[0] + v10) + -0.00001;
      ++v10;
    }

    while (v10 < *(a2 + 16));
  }

  else
  {
    v12 = __dst[0];
  }

  free(v12);
  return v7;
}

void LBFGSpp::LineSearchMoreThuente<float>::LineSearch<MinimizerFunc,LBFGSpp::LBFGSBParam<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float **a4, float *a5, float *a6, float *a7, uint64_t a8, float *a9, uint64_t a10)
{
  if (*a6 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'step' must be positive");
LABEL_161:
    v113 = off_2798D4070;
    v114 = MEMORY[0x277D82610];
    goto LABEL_163;
  }

  if (*a6 > *a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'step' exceeds 'step_max'");
    goto LABEL_161;
  }

  v11 = *a9;
  if (*a9 >= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "the moving direction does not decrease the objective function value");
    v113 = MEMORY[0x277D82750];
    v114 = MEMORY[0x277D825D8];
LABEL_163:
    __cxa_throw(exception, v113, v114);
  }

  v18 = *a7;
  v19 = *(a2 + 40);
  v20 = *(a2 + 44);
  v129 = 2139095040;
  v130 = 0.0;
  v127 = 2139095040;
  v128 = 0.0;
  v126 = v11 * (1.0 - v19);
  v125 = 2139095040;
  v21 = *(a3 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(__dst, v21);
  if (v21)
  {
    memcpy(__dst[0], *a3, 4 * v21);
  }

  v124 = *(a3 + 16);
  v22 = *(a8 + 16);
  v121[0] = 0;
  v121[1] = 0;
  v23 = cva::MatrixData<float,0ul,0ul,false>::allocate(v121, v22);
  if (v22)
  {
    v23 = memcpy(v121[0], *a8, 4 * v22);
  }

  v122 = *(a8 + 16);
  __src[0] = 0;
  __src[1] = 0;
  v120 = 0;
  v24 = *a6;
  v25 = *(a3 + 16);
  if (v25 != *(a4 + 4))
  {
    v26 = cva::Logger::instance(v23);
    cva::Logger::logInCategory(v26, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a3 + 16), 1, *(a4 + 4), 1);
    v25 = *(a3 + 16);
    if (v25 != *(a4 + 4))
    {
      goto LABEL_19;
    }
  }

  if (v25 == *(a10 + 16))
  {
    goto LABEL_11;
  }

  if (*a3 != *a10 && *a4 != *a10)
  {
    *(a10 + 16) = v25;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v25);
    v25 = *(a3 + 16);
    if (*(a10 + 16) == v25 || (v36 = cva::Logger::instance(v35), cva::Logger::logInCategory(v36, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a10 + 16), 1, *(a3 + 16), 1), v25 = *(a10 + 16), v25 == *(a3 + 16)))
    {
LABEL_11:
      if (v25)
      {
        v27 = *a10;
        v28 = v25;
        v29 = *a4;
        v30 = *a3;
        v31 = 4 * v28;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v29++;
          *v27++ = v33 + (v24 * v34);
          v31 -= 4;
        }

        while (v31);
      }

      goto LABEL_25;
    }

LABEL_19:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v131 = 0;
  v132 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v131, v25);
  v37 = *(a3 + 16);
  v38 = v131;
  if (v37)
  {
    v39 = *a4;
    v40 = *a3;
    v41 = 4 * v37;
    do
    {
      v42 = *v40++;
      v43 = v42;
      v44 = *v39++;
      *v38++ = v43 + (v24 * v44);
      v41 -= 4;
    }

    while (v41);
    v38 = v131;
  }

  v45 = *a10;
  v46 = *(a10 + 8);
  v47 = v132;
  *a10 = v38;
  *(a10 + 8) = v47;
  v131 = v45;
  v132 = v46;
  *(a10 + 16) = v37;
  v133 = 0;
  free(v45);
LABEL_25:
  *a7 = MinimizerFunc::operator()(a1, a10, a8);
  v48 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a8, a4);
  v49 = v11 * v19;
  v50 = -(v20 * v11);
  *a9 = *&v48;
  v51 = *a7;
  v52 = *a6;
  v53 = fabsf(*&v48);
  if (*a7 <= (v18 + (*a6 * (v11 * v19))) && v53 <= v50)
  {
    goto LABEL_154;
  }

  if (*(a2 + 28) >= 1)
  {
    v55 = 0;
    v56 = v18;
    v57 = v11;
    while (1)
    {
      v58 = (v51 - v18) - (v52 * v49);
      v59 = *&v48 - (*(a2 + 40) * v11);
      v117 = v59;
      v118 = v58;
      if (v58 <= v128)
      {
        break;
      }

      v61 = LBFGSpp::LineSearchMoreThuente<float>::step_selection(&v130, &v129, a6, &v128, &v127, &v118, &v126, &v125, &v117);
      if (v61 <= *(a2 + 32))
      {
        v62 = (v130 + *a6) * 0.5;
      }

      else
      {
        v62 = v61;
      }

      v129 = *a6;
      v127 = LODWORD(v118);
      v125 = LODWORD(v117);
LABEL_80:
      if (*a6 == *a5 && v62 >= *a5)
      {
        v105 = v124;
        cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v124);
        if (v105)
        {
          memcpy(__src[0], __dst[0], 4 * v105);
        }

        v120 = v124;
        if (__dst != a10)
        {
          v106 = *(a10 + 16);
          cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v106);
          if (v106)
          {
            memcpy(__dst[0], *a10, 4 * v106);
          }

          v124 = *(a10 + 16);
        }

        if (__src != a10)
        {
          v107 = v120;
          cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v120);
          if (v107)
          {
            memcpy(*a10, __src[0], 4 * v107);
          }

          *(a10 + 16) = v120;
        }

        v108 = v122;
        cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v122);
        if (v108)
        {
          memcpy(__src[0], v121[0], 4 * v108);
        }

        v120 = v122;
        if (v121 != a8)
        {
          v109 = *(a8 + 16);
          cva::MatrixData<float,0ul,0ul,false>::reserve(v121, v109);
          if (v109)
          {
            memcpy(v121[0], *a8, 4 * v109);
          }

          v122 = *(a8 + 16);
        }

        if (__src != a8)
        {
          goto LABEL_151;
        }

        goto LABEL_154;
      }

      *a6 = v62;
      if (v62 < *(a2 + 32))
      {
        v111 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x259CA1C30](v111, "the line search step became smaller than the minimum value allowed");
        goto LABEL_157;
      }

      if (v62 > *(a2 + 36))
      {
        v111 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x259CA1C30](v111, "the line search step became larger than the maximum value allowed");
LABEL_157:
        __cxa_throw(v111, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v76 = *(a3 + 16);
      if (v76 != *(a4 + 4))
      {
        v77 = cva::Logger::instance(v60);
        cva::Logger::logInCategory(v77, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a3 + 16), 1, *(a4 + 4), 1);
        v76 = *(a3 + 16);
        if (v76 != *(a4 + 4))
        {
LABEL_158:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

      if (v76 == *(a10 + 16))
      {
        goto LABEL_90;
      }

      if (*a3 != *a10 && *a4 != *a10)
      {
        *(a10 + 16) = v76;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v76);
        v76 = *(a3 + 16);
        if (*(a10 + 16) != v76)
        {
          v86 = cva::Logger::instance(v85);
          cva::Logger::logInCategory(v86, 1, *MEMORY[0x277CFD380], "%u x %u <-> %u x %u\n", *(a10 + 16), 1, *(a3 + 16), 1);
          v76 = *(a10 + 16);
          if (v76 != *(a3 + 16))
          {
            goto LABEL_158;
          }
        }

LABEL_90:
        if (v76)
        {
          v78 = *a10;
          v79 = *a4;
          v80 = 4 * v76;
          v81 = *a3;
          do
          {
            v82 = *v81++;
            v83 = v82;
            v84 = *v79++;
            *v78++ = v83 + (v62 * v84);
            v80 -= 4;
          }

          while (v80);
        }

        goto LABEL_104;
      }

      v131 = 0;
      v132 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v131, v76);
      v87 = *(a3 + 16);
      v88 = v131;
      if (v87)
      {
        v89 = *a4;
        v90 = *a3;
        v91 = 4 * v87;
        do
        {
          v92 = *v90++;
          v93 = v92;
          v94 = *v89++;
          *v88++ = v93 + (v62 * v94);
          v91 -= 4;
        }

        while (v91);
        v88 = v131;
      }

      v95 = *a10;
      v96 = *(a10 + 8);
      v97 = v132;
      *a10 = v88;
      *(a10 + 8) = v97;
      v131 = v95;
      v132 = v96;
      *(a10 + 16) = v87;
      v133 = 0;
      free(v95);
LABEL_104:
      *a7 = MinimizerFunc::operator()(a1, a10, a8);
      v48 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a8, a4);
      *a9 = *&v48;
      v51 = *a7;
      v52 = *a6;
      v98 = fabsf(*&v48);
      v99 = *a7 > (v18 + (*a6 * v49)) || v98 > v50;
      if (!v99 || v52 >= *a5 && ((v51 - v18) - (v52 * v49)) <= v128)
      {
        goto LABEL_154;
      }

      if (++v55 >= *(a2 + 28))
      {
        goto LABEL_114;
      }
    }

    if ((v59 * (v130 - v52)) <= 0.0)
    {
      v62 = LBFGSpp::LineSearchMoreThuente<float>::step_selection(&v130, &v129, a6, &v128, &v127, &v118, &v126, &v125, &v117);
      v68 = *a6;
      v129 = LODWORD(v130);
      v130 = v68;
      v127 = LODWORD(v128);
      v128 = v118;
      v125 = LODWORD(v126);
      v126 = v117;
      v69 = v124;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v124);
      if (v69)
      {
        memcpy(__src[0], __dst[0], 4 * v69);
      }

      v120 = v124;
      if (__dst != a10)
      {
        v70 = *(a10 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v70);
        if (v70)
        {
          memcpy(__dst[0], *a10, 4 * v70);
        }

        v124 = *(a10 + 16);
      }

      if (__src != a10)
      {
        v71 = v120;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v120);
        if (v71)
        {
          memcpy(*a10, __src[0], 4 * v71);
        }

        *(a10 + 16) = v120;
      }

      v72 = v122;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v122);
      if (v72)
      {
        v60 = memcpy(__src[0], v121[0], 4 * v72);
      }

      v120 = v122;
      if (v121 != a8)
      {
        v73 = *(a8 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(v121, v73);
        if (v73)
        {
          v60 = memcpy(v121[0], *a8, 4 * v73);
        }

        v122 = *(a8 + 16);
      }

      if (__src == a8)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v52 + ((v52 - v130) * 1.1)) >= *a5)
      {
        v62 = *a5;
      }

      else
      {
        v62 = v52 + ((v52 - v130) * 1.1);
      }

      v130 = v52;
      v128 = v58;
      v126 = v59;
      v63 = v124;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v124);
      if (v63)
      {
        memcpy(__src[0], __dst[0], 4 * v63);
      }

      v120 = v124;
      if (__dst != a10)
      {
        v64 = *(a10 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v64);
        if (v64)
        {
          memcpy(__dst[0], *a10, 4 * v64);
        }

        v124 = *(a10 + 16);
      }

      if (__src != a10)
      {
        v65 = v120;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v120);
        if (v65)
        {
          memcpy(*a10, __src[0], 4 * v65);
        }

        *(a10 + 16) = v120;
      }

      v66 = v122;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v122);
      if (v66)
      {
        v60 = memcpy(__src[0], v121[0], 4 * v66);
      }

      v120 = v122;
      if (v121 != a8)
      {
        v67 = *(a8 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(v121, v67);
        if (v67)
        {
          v60 = memcpy(v121[0], *a8, 4 * v67);
        }

        v122 = *(a8 + 16);
      }

      if (__src == a8)
      {
        goto LABEL_79;
      }
    }

    v74 = v120;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a8, v120);
    if (v74)
    {
      v60 = memcpy(*a8, __src[0], 4 * v74);
    }

    *(a8 + 16) = v120;
LABEL_79:
    v56 = *a7;
    v57 = *a9;
    goto LABEL_80;
  }

  v57 = v11;
  v56 = v18;
LABEL_114:
  if (((v51 - v18) - (v52 * v49)) > v128)
  {
    if (v130 <= 0.0)
    {
      v115 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x259CA1C30](v115, "the line search routine is unable to sufficiently decrease the function value");
      __cxa_throw(v115, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a6 = v130;
    *a7 = v56;
    *a9 = v57;
    v100 = v124;
    cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v124);
    if (v100)
    {
      memcpy(__src[0], __dst[0], 4 * v100);
    }

    v120 = v124;
    if (__dst != a10)
    {
      v101 = *(a10 + 16);
      cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v101);
      if (v101)
      {
        memcpy(__dst[0], *a10, 4 * v101);
      }

      v124 = *(a10 + 16);
    }

    if (__src != a10)
    {
      v102 = v120;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v120);
      if (v102)
      {
        memcpy(*a10, __src[0], 4 * v102);
      }

      *(a10 + 16) = v120;
    }

    v103 = v122;
    cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v122);
    if (v103)
    {
      memcpy(__src[0], v121[0], 4 * v103);
    }

    v120 = v122;
    if (v121 != a8)
    {
      v104 = *(a8 + 16);
      cva::MatrixData<float,0ul,0ul,false>::reserve(v121, v104);
      if (v104)
      {
        memcpy(v121[0], *a8, 4 * v104);
      }

      v122 = *(a8 + 16);
    }

    if (__src != a8)
    {
LABEL_151:
      v110 = v120;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a8, v120);
      if (v110)
      {
        memcpy(*a8, __src[0], 4 * v110);
      }

      *(a8 + 16) = v120;
    }
  }

LABEL_154:
  free(__src[0]);
  free(v121[0]);
  free(__dst[0]);
}

void sub_259036B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  __cxa_free_exception(v23);
  free(a17);
  free(a20);
  free(a23);
  _Unwind_Resume(a1);
}

void MinimizerFunc::targetFuncValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (*(a2 + 16) == 7 * v2)
  {
    ULRFGroupGenerator::clusterGaussiansSegmentsLikelihood(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), *a2, *a2 + 4 * v2, *a2 + 8 * v2, *a2 + 12 * v2, *a2 + 16 * v2, *a2 + 20 * v2, *a2 + 24 * v2, v2, (a1 + 128), (a1 + 152));
  }

  else
  {
    v3 = MinimizerFunc::targetFuncValue();
    ULSegmentGenerator::generateSegments(v3, v4, v5);
  }
}

void ULSegmentGenerator::generateSegments(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  ULSegmentGenerator::SegmentGeneratorLocalParams::SegmentGeneratorLocalParams(v11);
  v9 = 0uLL;
  v10 = 0;
  if (v12 == 1)
  {
    ULSegmentGenerator::generateNPDRStaticIntervals(a1, v11, buf);
    std::vector<ULStaticIntervalObject>::__vdeallocate(&v9);
    v9 = *buf;
    v10 = v15;
    v15 = 0;
    memset(buf, 0, sizeof(buf));
    *v13 = buf;
    std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](v13);
  }

  else
  {
    ULSegmentGenerator::generateStaticIntervals(a1, v11, buf);
    std::vector<ULStaticIntervalObject>::__vdeallocate(&v9);
    v9 = *buf;
    v10 = v15;
    v15 = 0;
    memset(buf, 0, sizeof(buf));
    *v13 = buf;
    std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](v13);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULSegmentGenerator::generateSegments();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = 0xF0F0F0F0F0F0F0F1 * ((*(&v9 + 1) - v9) >> 3);
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "#HomeSlam Mapper, generated %zu static intervals with IO logic", buf, 0xCu);
    }
  }

  ULSegmentGenerator::addFPsToStaticIntervals(&v9, a2, v11, v6);
  ULSegmentGenerator::generateSegmentsFromStaticIntervals(&v9, v11, buf);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULSegmentGenerator::generateSegments();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134217984;
    *&v13[4] = 0x4EC4EC4EC4EC4EC5 * ((*&buf[8] - *buf) >> 3);
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "#HomeSlam Mapper, generated %zu segments", v13, 0xCu);
  }

  *a3 = *buf;
  *(a3 + 16) = v15;
  v15 = 0;
  memset(buf, 0, sizeof(buf));
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  v9 = 0uLL;
  v10 = 0;
  *v13 = buf;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](v13);
  *buf = &v9;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_259036F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 96) = &a9;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100]((v9 - 96));
  _Unwind_Resume(a1);
}

void ULSegmentGenerator::generateNPDRStaticIntervals(uint64_t *a1@<X0>, double *a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v62 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    goto LABEL_66;
  }

  v8 = 0;
  v9 = a2[13];
  v10 = 0.0;
  v11 = 1;
  v59 = 0.0;
  v60 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v58 = 0.0;
  v56 = v9;
  v57 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    LOBYTE(v8) = v8 == 1;
    v18 = v7;
    v7 += 64;
    while ((v8 & 1) == 0)
    {
      v19 = a2[13];
      NumberOfUpdatesInWindow = ULSegmentGenerator::getNumberOfUpdatesInWindow(v18, v6, a2[12]);
      if (ULSegmentGenerator::didExitBubble(v18, NumberOfUpdatesInWindow, v19) || (v21 = *(v7 - 16), [MEMORY[0x277CCAD78] nilUUID], v22 = objc_claimAutoreleasedReturnValue(), LOBYTE(v21) = objc_msgSend(v21, "isEqual:", v22), v22, (v21 & 1) != 0))
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v62 = *(v7 - 24);
        v23 = *(v7 - 16);

        v17 = 0.0;
        LODWORD(v8) = 1;
        v11 = 1;
        v16 = 0.0;
        v15 = 0.0;
        v5 = v23;
      }

      v24 = *(v7 - 40);
      v25 = *(v7 - 36);
      v26 = *(v7 - 32);
      v27 = fmaxf(fabsf(v24), fmaxf(fabsf(v25), fabsf(v26)));
      if (v27 <= 1.8447e19)
      {
        v29 = 1.0;
        if (v27 >= 5.421e-20)
        {
          goto LABEL_14;
        }

        *&v28 = 1.9343e25;
      }

      else
      {
        *&v28 = 5.1699e-26;
      }

      v29 = *&v28;
LABEL_14:
      v14 = v14 + v24;
      v13 = v13 + v25;
      v12 = v12 + v26;
      v10 = v10 + (sqrtf((((v25 * v29) * (v25 * v29)) + ((v24 * v29) * (v24 * v29))) + ((v26 * v29) * (v26 * v29))) / v29);
      if (v8)
      {
        v57 = v12;
        v58 = v13;
        v59 = v14;
        v60 = v10;
        v8 = 1;
        goto LABEL_51;
      }

      v6 = a1[1];
      v18 += 64;
      v30 = v7 == v6;
      v7 += 64;
      if (v30)
      {
        goto LABEL_66;
      }
    }

    v31 = *(v7 - 40);
    v32 = *(v7 - 36);
    v33 = *(v7 - 32);
    if (*(v7 - 24) - v62 < a2[12] * 0.5)
    {
      v34 = fmaxf(fabsf(v31), fmaxf(fabsf(v32), fabsf(v33)));
      if (v34 > 1.8447e19)
      {
        *&v35 = 5.1699e-26;
        goto LABEL_24;
      }

      v36 = 1.0;
      if (v34 < 5.421e-20)
      {
        *&v35 = 1.9343e25;
LABEL_24:
        v36 = *&v35;
      }

      v58 = v58 + v32;
      v59 = v59 + v31;
      v57 = v57 + v33;
      v60 = v60 + (sqrtf((((v32 * v36) * (v32 * v36)) + ((v31 * v36) * (v31 * v36))) + ((v33 * v36) * (v33 * v36))) / v36);
    }

    v15 = v15 + v31;
    v16 = v16 + v32;
    v17 = v17 + v33;
    if ((v11 & 1) == 0)
    {
      goto LABEL_33;
    }

    v37 = fmaxf(fabsf(v15), fmaxf(fabsf(v16), fabsf(v17)));
    if (v37 > 1.8447e19)
    {
      *&v38 = 5.1699e-26;
      goto LABEL_31;
    }

    v39 = 1.0;
    if (v37 < 5.421e-20)
    {
      *&v38 = 1.9343e25;
LABEL_31:
      v39 = *&v38;
    }

    if ((sqrtf((((v16 * v39) * (v16 * v39)) + ((v15 * v39) * (v15 * v39))) + ((v17 * v39) * (v17 * v39))) / v39) <= v56)
    {
      v50 = *(v7 - 16);
      v51 = [MEMORY[0x277CCAD78] nilUUID];
      LODWORD(v50) = [v50 isEqual:v51];

      v11 = 1;
      if (v50)
      {
        goto LABEL_34;
      }

      v8 = 1;
    }

    else
    {
LABEL_33:
      v11 = 0;
LABEL_34:
      if (([*(v7 - 16) isEqual:v5] & 1) != 0 || (v40 = *(v7 - 16), objc_msgSend(MEMORY[0x277CCAD78], "nilUUID"), v41 = objc_claimAutoreleasedReturnValue(), LODWORD(v40) = objc_msgSend(v40, "isEqual:", v41), v41, v40))
      {
        *&v63 = v62;
        *(&v63 + 1) = *(v7 - 24);
        v64 = *(&v63 + 1) - v62;
        v65 = v59;
        v66 = v58;
        v67 = v57;
        v68 = v60;
        v69 = [v5 copy];
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v42 = a3[1];
        if (v42 >= a3[2])
        {
          v43 = std::vector<ULStaticIntervalObject>::__emplace_back_slow_path<ULStaticIntervalObject&>(a3, &v63);
        }

        else
        {
          std::vector<ULStaticIntervalObject>::__construct_one_at_end[abi:ne200100]<ULStaticIntervalObject&>(a3, &v63);
          v43 = v42 + 136;
        }

        a3[1] = v43;
        if (*(&v75 + 1))
        {
          *&v76 = *(&v75 + 1);
          operator delete(*(&v75 + 1));
        }

        if (v74[0])
        {
          v74[1] = v74[0];
          operator delete(v74[0]);
        }
      }

      v8 = 0;
    }

    v44 = *(v7 - 40);
    v45 = *(v7 - 36);
    v46 = *(v7 - 32);
    v47 = fmaxf(fabsf(v44), fmaxf(fabsf(v45), fabsf(v46)));
    if (v47 > 1.8447e19)
    {
      *&v48 = 5.1699e-26;
      goto LABEL_49;
    }

    v49 = 1.0;
    if (v47 < 5.421e-20)
    {
      *&v48 = 1.9343e25;
LABEL_49:
      v49 = *&v48;
    }

    v14 = v14 + v44;
    v13 = v13 + v45;
    v12 = v12 + v46;
    v10 = v10 + (sqrtf((((v45 * v49) * (v45 * v49)) + ((v44 * v49) * (v44 * v49))) + ((v46 * v49) * (v46 * v49))) / v49);
LABEL_51:
    v6 = a1[1];
  }

  while (v7 != v6);
  if (v8)
  {
    if (([*(v7 - 16) isEqual:v5] & 1) != 0 || (v52 = *(v7 - 16), objc_msgSend(MEMORY[0x277CCAD78], "nilUUID"), v53 = objc_claimAutoreleasedReturnValue(), LODWORD(v52) = objc_msgSend(v52, "isEqual:", v53), v53, v52))
    {
      *&v63 = v62;
      *(&v63 + 1) = *(v7 - 24);
      v64 = *(&v63 + 1) - v62;
      v65 = v14;
      v66 = v13;
      v67 = v12;
      v68 = v10;
      v69 = [v5 copy];
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      *v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v54 = a3[1];
      if (v54 >= a3[2])
      {
        v55 = std::vector<ULStaticIntervalObject>::__emplace_back_slow_path<ULStaticIntervalObject&>(a3, &v63);
      }

      else
      {
        std::vector<ULStaticIntervalObject>::__construct_one_at_end[abi:ne200100]<ULStaticIntervalObject&>(a3, &v63);
        v55 = v54 + 136;
      }

      a3[1] = v55;
      if (*(&v75 + 1))
      {
        *&v76 = *(&v75 + 1);
        operator delete(*(&v75 + 1));
      }

      if (v74[0])
      {
        v74[1] = v74[0];
        operator delete(v74[0]);
      }
    }
  }

LABEL_66:
  ULSegmentGenerator::filterShortIntervalsInPlace(a3, a2);
}

void sub_25903756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, void **a15)
{
  a15 = a13;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void ULSegmentGenerator::generateStaticIntervals(uint64_t *a1@<X0>, double *a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  __src = 0;
  v77 = 0;
  v78 = 0;
  v9 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 1;
    v13 = 0.0;
    while (1)
    {
      if (v12 == 1)
      {
        v14 = a2[3];
        NumberOfUpdatesInWindow = ULSegmentGenerator::getNumberOfUpdatesInWindow(v9, v8, a2[2]);
        if ((ULSegmentGenerator::didExitBubble(v9, NumberOfUpdatesInWindow, v14) || (v16 = *(v9 + 48), [MEMORY[0x277CCAD78] nilUUID], v17 = objc_claimAutoreleasedReturnValue(), LODWORD(v16) = objc_msgSend(v16, "isEqual:", v17), v17, v16)) && ((v18 = a2[7], v19 = ULSegmentGenerator::getNumberOfUpdatesInWindow(v9, a1[1], a2[6]), ULSegmentGenerator::didCrossMaxPathLength(v9, v19, v18)) || (v20 = *(v9 + 48), objc_msgSend(MEMORY[0x277CCAD78], "nilUUID"), v21 = objc_claimAutoreleasedReturnValue(), LODWORD(v20) = objc_msgSend(v20, "isEqual:", v21), v21, v20)))
        {
          v22 = __src;
          v23 = v77;
          if (__src != v77)
          {
            while (1)
            {
              v24 = *v22;
              if (v24 - v6 < ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>())
              {
                break;
              }

              v25 = *(v9 + 40);
              v26 = *v22;
              if (v25 - v26 < ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>())
              {
                break;
              }

              if (++v22 == v23)
              {
                v22 = v23;
                goto LABEL_23;
              }
            }
          }

          if (v22 != v23)
          {
            for (i = v22 + 1; i != v23; ++i)
            {
              v32 = *i;
              if (v32 - v6 >= ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>())
              {
                v33 = *(v9 + 40);
                v34 = *i;
                if (v33 - v34 >= ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>())
                {
                  *v22++ = *i;
                }
              }
            }
          }

LABEL_23:
          if (v22 != v77)
          {
            v77 = v22;
          }

          if (([*(v9 + 48) isEqual:{v7, v62}] & 1) != 0 || (v35 = *(v9 + 48), objc_msgSend(MEMORY[0x277CCAD78], "nilUUID"), v36 = objc_claimAutoreleasedReturnValue(), LODWORD(v35) = objc_msgSend(v35, "isEqual:", v36), v36, v35))
          {
            *&v63 = v6;
            *(&v63 + 1) = *(v9 + 40);
            v64 = *(&v63 + 1) - v6;
            v65 = v10;
            v66 = v13;
            v67 = v11;
            v68 = [v7 copy];
            if (__src == v77)
            {
              v37 = 0;
              LOBYTE(v69) = 0;
              v70 = 0;
              LOBYTE(v71) = 0;
            }

            else
            {
              v69 = *__src;
              v37 = 1;
              v70 = 1;
              v71 = *(v77 - 1);
            }

            v72 = v37;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v44 = a3[1];
            if (v44 >= a3[2])
            {
              v46 = std::vector<ULStaticIntervalObject>::__emplace_back_slow_path<ULStaticIntervalObject&>(a3, &v63);
            }

            else
            {
              std::vector<ULStaticIntervalObject>::__construct_one_at_end[abi:ne200100]<ULStaticIntervalObject&>(a3, &v63);
              v46 = v44 + 136;
            }

            a3[1] = v46;
            *&v45 = *(v9 + 24);
            v47 = *(v9 + 32);
            v62 = v45;
            v48 = *(&v45 + 1);
            v49 = fmaxf(fabsf(*&v45), fmaxf(fabsf(*(&v45 + 1)), fabsf(v47)));
            if (v49 > 1.8447e19)
            {
              *&v50 = 5.1699e-26;
              goto LABEL_45;
            }

            v51 = 1.0;
            if (v49 < 5.421e-20)
            {
              *&v50 = 1.9343e25;
LABEL_45:
              v51 = *&v50;
            }

            if (*(&v74 + 1))
            {
              *&v75 = *(&v74 + 1);
              operator delete(*(&v74 + 1));
            }

            if (v73)
            {
              *(&v73 + 1) = v73;
              operator delete(v73);
            }

            v10 = vadd_f32(v10, *&v62);
            v13 = v13 + v47;
            v11 = v11 + (sqrtf((((v48 * v51) * (v48 * v51)) + ((*&v62 * v51) * (*&v62 * v51))) + ((v47 * v51) * (v47 * v51))) / v51);
          }

          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        if (ULSegmentGenerator::isHiddenMotion(v9, a1[1], a2))
        {
          v52 = v77;
          if (v77 >= v78)
          {
            v54 = __src;
            v55 = v77 - __src;
            v56 = (v77 - __src) >> 3;
            v57 = v56 + 1;
            if ((v56 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v58 = v78 - __src;
            if ((v78 - __src) >> 2 > v57)
            {
              v57 = v58 >> 2;
            }

            v59 = v58 >= 0x7FFFFFFFFFFFFFF8;
            v60 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v59)
            {
              v60 = v57;
            }

            if (v60)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v60);
            }

            *(8 * v56) = *(v9 + 40);
            v53 = 8 * v56 + 8;
            memcpy(0, v54, v55);
            v61 = __src;
            __src = 0;
            v77 = v53;
            v78 = 0;
            if (v61)
            {
              operator delete(v61);
            }
          }

          else
          {
            *v77 = *(v9 + 40);
            v53 = (v52 + 8);
          }

          v77 = v53;
        }

        goto LABEL_65;
      }

      v27 = a2[5];
      v28 = ULSegmentGenerator::getNumberOfUpdatesInWindow(v9, v8, a2[4]);
      if (ULSegmentGenerator::didExitBubble(v9, v28, v27) || (v29 = *(v9 + 48), [MEMORY[0x277CCAD78] nilUUID], v30 = objc_claimAutoreleasedReturnValue(), LOBYTE(v29) = objc_msgSend(v29, "isEqual:", v30), v30, (v29 & 1) != 0))
      {
        v12 = 0;
      }

      else
      {
        v6 = *(v9 + 40);
        v38 = *(v9 + 48);

        v77 = __src;
        v12 = 1;
        v7 = v38;
      }

      v39 = *(v9 + 24);
      v40 = *(v9 + 32);
      v41 = fmaxf(fabsf(v39.f32[0]), fmaxf(fabsf(v39.f32[1]), fabsf(v40)));
      if (v41 > 1.8447e19)
      {
        break;
      }

      v43 = 1.0;
      if (v41 < 5.421e-20)
      {
        *&v42 = 1.9343e25;
        goto LABEL_35;
      }

LABEL_36:
      v10 = vadd_f32(v10, v39);
      v13 = v13 + v40;
      v11 = v11 + (sqrtf((((v39.f32[1] * v43) * (v39.f32[1] * v43)) + ((v39.f32[0] * v43) * (v39.f32[0] * v43))) + ((v40 * v43) * (v40 * v43))) / v43);
LABEL_65:
      v9 += 64;
      v8 = a1[1];
      if (v9 == v8)
      {
        goto LABEL_66;
      }
    }

    *&v42 = 5.1699e-26;
LABEL_35:
    v43 = *&v42;
    goto LABEL_36;
  }

LABEL_66:
  ULSegmentGenerator::filterShortIntervalsInPlace(a3, a2);
  if (__src)
  {
    v77 = __src;
    operator delete(__src);
  }
}

void sub_259037B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void ULSegmentGenerator::addFPsToStaticIntervals(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v32 = *MEMORY[0x277D85DE8];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v9 = v6[11].n128_u64[0];
      v8 = v6[11].n128_u64[1];
      v31 = v6[1];
      if (v7 >= v30)
      {
        v10 = (v7 - __p) >> 5;
        if ((v10 + 1) >> 59)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v11 = (v30 - __p) >> 4;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v30 - __p >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(&__p, v12);
        }

        v13 = 32 * v10;
        *v13 = v9;
        *(v13 + 8) = v8;
        *(v13 + 16) = v31;
        v7 = 32 * v10 + 32;
        v14 = (v13 - (v29 - __p));
        memcpy(v14, __p, v29 - __p);
        v15 = __p;
        __p = v14;
        v29 = v7;
        v30 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v9;
        *(v7 + 8) = v8;
        a4 = v31;
        *(v7 + 16) = v31;
        v7 += 32;
      }

      v29 = v7;
      v6 = v6->n128_u64[0];
    }

    while (v6);
    v16 = __p;
  }

  else
  {
    v7 = 0;
    v16 = 0;
  }

  v17 = 126 - 2 * __clz((v7 - v16) >> 5);
  if (v7 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  std::__introsort<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,false>(v16, v7, v18, 1, a4);
  v19 = __p;
  if (__p != v29)
  {
    v20 = 0;
    v21 = *a1;
    while (1)
    {
      if (v21 == a1[1])
      {
LABEL_55:
        v19 = __p;
        break;
      }

      v22 = *v21;
      v23 = *v19;
      v24 = *v21 - *v19;
      v25 = v24 < *(a3 + 88);
      if (v24 <= 0.0)
      {
        v25 = 0;
      }

      if (*(v21 + 64))
      {
        if (!v25)
        {
          if (v23 > v22 && v23 < *(v21 + 56))
          {
            if (v20)
            {
              *(v21 + 96) = *(v21 + 88);
            }

            std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 88, v19 + 1);
            goto LABEL_45;
          }

          v26 = *(v21 + 8);
          if (v23 >= v26)
          {
            goto LABEL_51;
          }

          if ((*(v21 + 80) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (v23 <= *(v21 + 72))
          {
LABEL_51:
            if (v23 <= v26)
            {
              v19 += 4;
            }

            else
            {
              v21 += 136;
              v20 = 0;
            }

            goto LABEL_54;
          }

          std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 112, v19 + 1);
LABEL_46:
          v19 += 4;
          goto LABEL_54;
        }

        std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 88, v19 + 1);
      }

      else
      {
        if (!v25)
        {
          v26 = *(v21 + 8);
          if (v23 <= v22 || v23 >= v26)
          {
            goto LABEL_51;
          }

          if (v20)
          {
            *(v21 + 96) = *(v21 + 88);
            *(v21 + 120) = *(v21 + 112);
          }

          std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 88, v19 + 1);
          std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 112, v19 + 1);
LABEL_45:
          v20 = 0;
          goto LABEL_46;
        }

        std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 88, v19 + 1);
        std::vector<boost::uuids::uuid>::push_back[abi:ne200100](v21 + 112, v19 + 1);
      }

      v19 += 4;
      v20 = 1;
LABEL_54:
      if (v19 == v29)
      {
        goto LABEL_55;
      }
    }
  }

  if (v19)
  {
    v29 = v19;
    operator delete(v19);
  }
}

void sub_259037F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ULSegmentGenerator::generateSegmentsFromStaticIntervals(uint64_t *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[8];
  v4 = a2[9];
  v5 = a2[10];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v9 = v7 + 136;
      if (*(v7 + 120) != *(v7 + 112))
      {
        v10 = v7 + 136;
        do
        {
          if (v10 == a1[1])
          {
            break;
          }

          if (*v10 - *(v7 + 8) >= v3)
          {
            break;
          }

          if (![*(v10 + 48) isEqual:*(v7 + 48)])
          {
            break;
          }

          v11 = *(v10 + 40) - *(v7 + 40);
          if (v11 >= v4)
          {
            break;
          }

          if (v11 > v5 && *(v10 + 96) != *(v10 + 88))
          {
            *&v25 = *(v7 + 8);
            *(&v25 + 1) = *v10;
            v26 = vsub_f32(*(v10 + 24), *(v7 + 24));
            v27 = *(v10 + 32) - *(v7 + 32);
            v29 = 0;
            v30 = 0;
            v28 = 0;
            std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v28, *(v7 + 112), *(v7 + 120), (*(v7 + 120) - *(v7 + 112)) >> 4);
            __p = 0;
            v32 = 0;
            v33 = 0;
            std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&__p, *(v10 + 88), *(v10 + 96), (*(v10 + 96) - *(v10 + 88)) >> 4);
            __src = 0;
            v35 = 0;
            v36 = 0;
            if (v10 > v9)
            {
              v12 = 0;
              v13 = (v7 + 136);
              do
              {
                if (v12 >= v36)
                {
                  v14 = __src;
                  v15 = v12 - __src;
                  v16 = (v12 - __src) >> 4;
                  v17 = v16 + 1;
                  if ((v16 + 1) >> 60)
                  {
                    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                  }

                  v18 = v36 - __src;
                  if ((v36 - __src) >> 3 > v17)
                  {
                    v17 = v18 >> 3;
                  }

                  if (v18 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v19 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v19 = v17;
                  }

                  if (v19)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__src, v19);
                  }

                  v20 = (v12 - __src) >> 4;
                  v21 = (16 * v16);
                  v22 = (16 * v16 - 16 * v20);
                  *v21 = *v13;
                  v12 = (v21 + 1);
                  memcpy(v22, v14, v15);
                  v23 = __src;
                  __src = v22;
                  v35 = v12;
                  v36 = 0;
                  if (v23)
                  {
                    operator delete(v23);
                  }
                }

                else
                {
                  *v12 = *v13;
                  v12 += 16;
                }

                v35 = v12;
                v13 = (v13 + 136);
              }

              while (v13 < v10);
            }

            std::vector<ULSegment>::push_back[abi:ne200100](a3, &v25);
            if (__src)
            {
              v35 = __src;
              operator delete(__src);
            }

            if (__p)
            {
              v32 = __p;
              operator delete(__p);
            }

            if (v28)
            {
              v29 = v28;
              operator delete(v28);
            }
          }

          if (*(v10 + 64) == 1)
          {
            break;
          }

          v10 += 136;
        }

        while (*(v7 + 120) != *(v7 + 112));
        v6 = a1[1];
      }

      v7 += 136;
    }

    while (v9 != v6);
  }
}

void sub_259038204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  ULSegment::~ULSegment(&a13);
  a13 = a10;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void ULStaticIntervalObject::~ULStaticIntervalObject(ULStaticIntervalObject *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }
}

void ULSegmentGenerator::filterShortIntervalsInPlace(uint64_t *a1, double *a2)
{
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    v5 = *(v2 + 16);
    std::__tree<double>::__emplace_multi<double>(&v3, &v5);
  }
}

BOOL ULSegmentGenerator::isHiddenMotion(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  NumberOfUpdatesInWindow = ULSegmentGenerator::getNumberOfUpdatesInWindow(a1, a2, *(a3 + 16));
  if (NumberOfUpdatesInWindow >= 1)
  {
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
    v9 = 0.0;
    v10 = 0.0;
    while (1)
    {
      v10 = v10 + v3[6];
      v9 = v9 + v3[7];
      v6 = v6 + v3[8];
      v11 = fmaxf(fabsf(v10), fmaxf(fabsf(v9), fabsf(v6)));
      if (v11 <= 1.8447e19)
      {
        v13 = 1.0;
        if (v11 >= 5.421e-20)
        {
          goto LABEL_8;
        }

        v12 = 1769996288;
      }

      else
      {
        v12 = 360710144;
      }

      v13 = *&v12;
LABEL_8:
      if (v4 >= (sqrtf((((v9 * v13) * (v9 * v13)) + ((v10 * v13) * (v10 * v13))) + ((v6 * v13) * (v6 * v13))) / v13))
      {
        v8 = v7 < NumberOfUpdatesInWindow;
        v3 += 16;
        if (++v7 - NumberOfUpdatesInWindow != 1)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 0;
}

__int128 *std::vector<ULStaticIntervalObject>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULStaticIntervalObject *,ULStaticIntervalObject *,ULStaticIntervalObject *>(&v7, a3, *(a1 + 8), a2);
    std::vector<ULStaticIntervalObject>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

uint64_t ULSegmentGenerator::getNumberOfUpdatesInWindow(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {
    ULSegmentGenerator::getNumberOfUpdatesInWindow(a1);
    return std::vector<ULSegment>::push_back[abi:ne200100](v6);
  }

  else
  {
    v3 = a1;
    if (a1 == a2)
    {
      return 0;
    }

    else
    {
      result = 0;
      v5 = *(v3 + 40);
      do
      {
        if (*(v3 + 40) - v5 >= a3)
        {
          break;
        }

        ++result;
        v3 += 64;
      }

      while (a2 != v3);
    }
  }

  return result;
}

uint64_t std::vector<ULSegment>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULSegment>::__emplace_back_slow_path<ULSegment const&>(a1, a2);
  }

  else
  {
    std::vector<ULSegment>::__construct_one_at_end[abi:ne200100]<ULSegment const&>(a1, a2);
    result = v3 + 104;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL ULSegmentGenerator::didExitBubble(uint64_t a1, unsigned int a2, double a3)
{
  if (a2 >= 2)
  {
    v3 = (a1 + 64);
    v4 = 1;
    v5 = 0.0;
    v6 = 2;
    v7 = 0.0;
    v8 = 0.0;
    while (1)
    {
      v8 = v8 + v3[6];
      v7 = v7 + v3[7];
      v5 = v5 + v3[8];
      v9 = fmaxf(fabsf(v8), fmaxf(fabsf(v7), fabsf(v5)));
      if (v9 <= 1.8447e19)
      {
        v11 = 1.0;
        if (v9 >= 5.421e-20)
        {
          goto LABEL_8;
        }

        v10 = 1769996288;
      }

      else
      {
        v10 = 360710144;
      }

      v11 = *&v10;
LABEL_8:
      if ((sqrtf((((v7 * v11) * (v7 * v11)) + ((v8 * v11) * (v8 * v11))) + ((v5 * v11) * (v5 * v11))) / v11) <= a3)
      {
        v4 = v6 < a2;
        v3 += 16;
        ++v6;
        if (1 - a2 + v6 != 2)
        {
          continue;
        }
      }

      return v4;
    }
  }

  return 0;
}

BOOL ULSegmentGenerator::didCrossMaxPathLength(uint64_t a1, unsigned int a2, double a3)
{
  v3 = 0.0;
  if (a2 >= 2)
  {
    v4 = (a1 + 64);
    v5 = a2 - 1;
    v6 = 0.0;
    while (1)
    {
      v7 = v4[6];
      v8 = v4[7];
      v9 = v4[8];
      v10 = fmaxf(fabsf(v7), fmaxf(fabsf(v8), fabsf(v9)));
      if (v10 > 1.8447e19)
      {
        break;
      }

      v12 = 1.0;
      if (v10 < 5.421e-20)
      {
        v11 = 1769996288;
        goto LABEL_7;
      }

LABEL_8:
      v6 = v6 + (sqrtf((((v8 * v12) * (v8 * v12)) + ((v7 * v12) * (v7 * v12))) + ((v9 * v12) * (v9 * v12))) / v12);
      v4 += 16;
      if (!--v5)
      {
        v3 = v6;
        return v3 > a3;
      }
    }

    v11 = 360710144;
LABEL_7:
    v12 = *&v11;
    goto LABEL_8;
  }

  return v3 > a3;
}

ULSegmentGenerator::SegmentGeneratorLocalParams *ULSegmentGenerator::SegmentGeneratorLocalParams::SegmentGeneratorLocalParams(ULSegmentGenerator::SegmentGeneratorLocalParams *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamStaticIntervalTimePercentile"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
  }

  else
  {
    [&unk_286A72C60 doubleValue];
  }

  v7 = v6;

  *this = v7;
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamStaticIntervalTimeMin"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v11 doubleValue];
  }

  else
  {
    [&unk_286A715C8 doubleValue];
  }

  v13 = v12;

  *(this + 1) = v13;
  *(this + 2) = ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>();
  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentStaticBubbleSizeMeters"];
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v17 doubleValue];
  }

  else
  {
    [&unk_286A72C80 doubleValue];
  }

  v19 = v18;

  *(this + 3) = v19;
  v20 = +[ULDefaultsSingleton shared];
  v21 = [v20 defaultsDictionary];

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentMotionBubbleTime"];
  v23 = [v21 objectForKey:v22];
  if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v23 doubleValue];
  }

  else
  {
    [&unk_286A72CA0 doubleValue];
  }

  v25 = v24;

  *(this + 4) = v25;
  v26 = +[ULDefaultsSingleton shared];
  v27 = [v26 defaultsDictionary];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentMotionBubbleSizeMeters"];
  v29 = [v27 objectForKey:v28];
  if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v29 doubleValue];
  }

  else
  {
    [&unk_286A72C50 doubleValue];
  }

  v31 = v30;

  *(this + 5) = v31;
  v32 = +[ULDefaultsSingleton shared];
  v33 = [v32 defaultsDictionary];

  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentStaticCumulativePathTime"];
  v35 = [v33 objectForKey:v34];
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v35 doubleValue];
  }

  else
  {
    [&unk_286A72CB0 doubleValue];
  }

  v37 = v36;

  *(this + 6) = v37;
  v38 = +[ULDefaultsSingleton shared];
  v39 = [v38 defaultsDictionary];

  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentStaticCumulativePathSizeMeters"];
  v41 = [v39 objectForKey:v40];
  if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v41 doubleValue];
  }

  else
  {
    [&unk_286A72C70 doubleValue];
  }

  v43 = v42;

  *(this + 7) = v43;
  v44 = +[ULDefaultsSingleton shared];
  v45 = [v44 defaultsDictionary];

  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentMaximumTime"];
  v47 = [v45 objectForKey:v46];
  if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v47 doubleValue];
  }

  else
  {
    [&unk_286A71628 doubleValue];
  }

  v49 = v48;

  *(this + 8) = v49;
  v50 = +[ULDefaultsSingleton shared];
  v51 = [v50 defaultsDictionary];

  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentMaximumLength"];
  v53 = [v51 objectForKey:v52];
  if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v53 doubleValue];
  }

  else
  {
    [&unk_286A715E0 doubleValue];
  }

  v55 = v54;

  *(this + 9) = v55;
  v56 = +[ULDefaultsSingleton shared];
  v57 = [v56 defaultsDictionary];

  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentMinimumLength"];
  v59 = [v57 objectForKey:v58];
  if (v59 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v59 doubleValue];
  }

  else
  {
    [&unk_286A71610 doubleValue];
  }

  v61 = v60;

  *(this + 10) = v61;
  v62 = +[ULDefaultsSingleton shared];
  v63 = [v62 defaultsDictionary];

  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamStaticIntervalFallbackFingerprintTime"];
  v65 = [v63 objectForKey:v64];
  if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v65 doubleValue];
  }

  else
  {
    [&unk_286A715F8 doubleValue];
  }

  v67 = v66;

  *(this + 11) = v67;
  *(this + 6) = xmmword_25921C4D0;
  *(this + 112) = 0;
  return this;
}

double ULSettings::get<ULSettings::HomeSlamSegmentStaticBubbleTime>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSegmentStaticBubbleTime"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72C90 doubleValue];
  }

  v5 = v4;

  return v5;
}

void std::allocator_traits<std::allocator<ULStaticIntervalObject>>::destroy[abi:ne200100]<ULStaticIntervalObject,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[14];
  if (v3)
  {
    a2[15] = v3;
    operator delete(v3);
  }

  v4 = a2[11];
  if (v4)
  {
    a2[12] = v4;
    operator delete(v4);
  }

  v5 = a2[6];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_7()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<ULStaticIntervalObject>::__construct_one_at_end[abi:ne200100]<ULStaticIntervalObject&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 48) = *(a2 + 6);
  v7 = *(a2 + 65);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 65) = v7;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v4 + 88), *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 4);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  result = std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v4 + 112), *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 4);
  *(a1 + 8) = v4 + 136;
  return result;
}

void sub_2590391CC(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULStaticIntervalObject>::__emplace_back_slow_path<ULStaticIntervalObject&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULStaticIntervalObject>>(a1, v6);
  }

  v7 = 136 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 136 * v2;
  v8 = *a2;
  v9 = a2[2];
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v9;
  *v7 = v8;
  *(v7 + 48) = *(a2 + 6);
  v10 = *(a2 + 65);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 65) = v10;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((136 * v2 + 88), *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 4);
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((136 * v2 + 112), *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 4);
  *&v19 = v19 + 136;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULStaticIntervalObject>::~__split_buffer(&v17);
  return v16;
}

void sub_259039374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULStaticIntervalObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 2);
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = v7[6];
      v7[6] = 0;
      *(a4 + 48) = v10;
      v11 = *(v7 + 7);
      *(a4 + 65) = *(v7 + 65);
      *(a4 + 56) = v11;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v7 + 11);
      *(a4 + 104) = v7[13];
      v7[11] = 0;
      v7[12] = 0;
      v7[13] = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = *(v7 + 7);
      *(a4 + 128) = v7[16];
      v7[14] = 0;
      v7[15] = 0;
      v7[16] = 0;
      v7 += 17;
      a4 += 136;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULStaticIntervalObject>>::destroy[abi:ne200100]<ULStaticIntervalObject,void,0>(a1, v5);
      v5 += 17;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__split_buffer<ULStaticIntervalObject>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULStaticIntervalObject>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULStaticIntervalObject>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    std::allocator_traits<std::allocator<ULStaticIntervalObject>>::destroy[abi:ne200100]<ULStaticIntervalObject,void,0>(v5, (v4 - 136));
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULStaticIntervalObject *,ULStaticIntervalObject *,ULStaticIntervalObject *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
    v8 = v5[2];
    *(a4 + 16) = v5[1];
    *(a4 + 32) = v8;
    *a4 = v7;
    v9 = *(v5 + 6);
    *(v5 + 6) = 0;
    v10 = *(a4 + 48);
    *(a4 + 48) = v9;

    v11 = *(v5 + 56);
    *(a4 + 65) = *(v5 + 65);
    *(a4 + 56) = v11;
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a4 + 88, (v5 + 88));
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a4 + 112, v5 + 7);
    a4 += 136;
    v5 = (v5 + 136);
  }

  while (v5 != v6);
  return v6;
}

uint64_t *std::vector<ULSegment>::__construct_one_at_end[abi:ne200100]<ULSegment const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 12) = *(a2 + 12);
  *v4 = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v4 + 32), *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v4 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  result = std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__init_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>((v4 + 80), *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 4);
  *(a1 + 8) = v4 + 104;
  return result;
}

void sub_2590396A4(_Unwind_Exception *exception_object)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 64) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v4 + 40) = v7;
    operator delete(v7);
  }

  *(v1 + 8) = v4;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULSegment>::__emplace_back_slow_path<ULSegment const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULSegment>>(a1, v6);
  }

  v7 = 104 * v2;
  v16 = 0;
  v17 = v7;
  v18 = (104 * v2);
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  v9 = 104 * v2;
  *(v9 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v9 + 32), *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v7 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__init_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>((v7 + 80), *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 4);
  *&v18 = v18 + 104;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULSegment>,ULSegment*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULSegment>::~__split_buffer(&v16);
  return v15;
}

void sub_259039880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v11 = *v8;
  if (*v8)
  {
    *(v9 + 64) = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    *(v9 + 40) = v12;
    operator delete(v12);
  }

  std::__split_buffer<ULSegment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v87 = a2[-2].n128_f64[0];
        v86 = a2 - 2;
        result.n128_f64[0] = v87;
        if (v87 >= *v12)
        {
          return result;
        }

LABEL_106:
        v177 = *v12;
        v210 = *(v12 + 16);
        v91 = v86[1];
        *v12 = *v86;
        *(v12 + 16) = v91;
        result = v177;
        v92 = v210;
LABEL_107:
        *v86 = result;
        v86[1] = v92;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v88 = (v12 + 32);
      v93 = *(v12 + 32);
      v94 = (v12 + 64);
      v95 = *(v12 + 64);
      if (v93 >= *v12)
      {
        if (v95 < v93)
        {
          v136 = *v88;
          result = *(v12 + 48);
          v137 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v137;
          *v94 = v136;
          *(v12 + 80) = result;
          if (*(v12 + 32) < *v12)
          {
            v182 = *v12;
            v216 = *(v12 + 16);
            v138 = *(v12 + 48);
            *v12 = *v88;
            *(v12 + 16) = v138;
            result.n128_u64[1] = v182.n128_u64[1];
            *v88 = v182;
            *(v12 + 48) = v216;
          }
        }
      }

      else if (v95 >= v93)
      {
        v185 = *v12;
        v219 = *(v12 + 16);
        v145 = *(v12 + 48);
        *v12 = *v88;
        *(v12 + 16) = v145;
        *v88 = v185;
        *(v12 + 48) = v219;
        if (v95 < *(v12 + 32))
        {
          v146 = *v88;
          result = *(v12 + 48);
          v147 = *(v12 + 80);
          *v88 = *v94;
          *(v12 + 48) = v147;
          *v94 = v146;
          *(v12 + 80) = result;
        }
      }

      else
      {
        v178 = *v12;
        v211 = *(v12 + 16);
        v96 = *(v12 + 80);
        *v12 = *v94;
        *(v12 + 16) = v96;
        result.n128_u64[1] = v178.n128_u64[1];
        *v94 = v178;
        *(v12 + 80) = v211;
      }

      result.n128_u64[0] = v9->n128_u64[0];
      if (v9->n128_f64[0] >= v94->n128_f64[0])
      {
        return result;
      }

      result = *v94;
      v220 = *(v12 + 80);
      v148 = a2[-1];
      *v94 = *v9;
      *(v12 + 80) = v148;
      *v9 = result;
      a2[-1] = v220;
      result.n128_u64[0] = v94->n128_u64[0];
      if (v94->n128_f64[0] >= v88->n128_f64[0])
      {
        return result;
      }

      v149 = *v88;
      result = *(v12 + 48);
      v150 = *(v12 + 80);
      *v88 = *v94;
      *(v12 + 48) = v150;
      *v94 = v149;
      *(v12 + 80) = result;
LABEL_179:
      result.n128_u64[0] = *(v12 + 32);
      if (result.n128_f64[0] < *v12)
      {
        v186 = *v12;
        v221 = *(v12 + 16);
        v151 = v88[1];
        *v12 = *v88;
        *(v12 + 16) = v151;
        result = v186;
        *v88 = v186;
        v88[1] = v221;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v97 = (v12 + 32);
      v99 = v12 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v12;
          do
          {
            v102 = v97;
            result.n128_u64[0] = *(v101 + 32);
            if (result.n128_f64[0] < *v101)
            {
              v179 = *(v101 + 40);
              v212 = *(v101 + 56);
              v103 = v100;
              while (1)
              {
                v104 = v12 + v103;
                v105 = *(v12 + v103 + 16);
                *(v104 + 32) = *(v12 + v103);
                *(v104 + 48) = v105;
                if (!v103)
                {
                  break;
                }

                v103 -= 32;
                if (result.n128_f64[0] >= *(v104 - 32))
                {
                  v106 = v12 + v103 + 32;
                  goto LABEL_126;
                }
              }

              v106 = v12;
LABEL_126:
              *v106 = result.n128_u64[0];
              result = v179;
              *(v106 + 24) = v212;
              *(v106 + 8) = v179;
            }

            v97 = v102 + 2;
            v100 += 32;
            v101 = v102;
          }

          while (&v102[2] != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v139 = v97;
          result.n128_u64[0] = *(a1 + 32);
          if (result.n128_f64[0] < *a1)
          {
            v183 = *(a1 + 40);
            v217 = *(a1 + 56);
            v140 = v97;
            do
            {
              v141 = v140[-1];
              *v140 = v140[-2];
              v140[1] = v141;
              v142 = v140[-4].n128_f64[0];
              v140 -= 2;
            }

            while (result.n128_f64[0] < v142);
            v140->n128_u64[0] = result.n128_u64[0];
            result = v183;
            v140[1].n128_u64[1] = v217;
            *(v140 + 8) = v183;
          }

          v97 += 2;
          a1 = v139;
        }

        while (&v139[2] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v107 = (v13 - 2) >> 1;
        v108 = v107;
        do
        {
          v109 = v108;
          if (v107 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = v12 + 32 * v110;
            if (2 * v109 + 2 < v13 && *v111 < *(v111 + 32))
            {
              v111 += 32;
              v110 = 2 * v109 + 2;
            }

            v112 = v12 + 32 * v109;
            v113 = *v112;
            if (*v111 >= *v112)
            {
              v213 = *(v112 + 24);
              v180 = *(v112 + 8);
              do
              {
                v114 = v112;
                v112 = v111;
                v115 = *(v111 + 16);
                *v114 = *v111;
                v114[1] = v115;
                if (v107 < v110)
                {
                  break;
                }

                v116 = 2 * v110;
                v110 = (2 * v110) | 1;
                v111 = v12 + 32 * v110;
                v117 = v116 + 2;
                if (v117 < v13 && *v111 < *(v111 + 32))
                {
                  v111 += 32;
                  v110 = v117;
                }
              }

              while (*v111 >= v113);
              *v112 = v113;
              *(v112 + 24) = v213;
              *(v112 + 8) = v180;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        do
        {
          v118 = 0;
          v181 = *v12;
          v214 = *(v12 + 16);
          v119 = v12;
          do
          {
            v120 = v119;
            v121 = &v119[2 * v118];
            v119 = v121 + 2;
            v122 = 2 * v118;
            v118 = (2 * v118) | 1;
            v123 = v122 + 2;
            if (v123 < v13)
            {
              v125 = v121[4].n128_f64[0];
              v124 = v121 + 4;
              if (v124[-2].n128_f64[0] < v125)
              {
                v119 = v124;
                v118 = v123;
              }
            }

            v126 = v119[1];
            *v120 = *v119;
            v120[1] = v126;
          }

          while (v118 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v119 == a2)
          {
            result = v181;
            *v119 = v181;
            v119[1] = v214;
          }

          else
          {
            v127 = a2[1];
            *v119 = *a2;
            v119[1] = v127;
            result = v181;
            *a2 = v181;
            a2[1] = v214;
            v128 = (&v119[2] - v12) >> 5;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = (v12 + 32 * v131);
              result.n128_u64[0] = v119->n128_u64[0];
              if (v132->n128_f64[0] < v119->n128_f64[0])
              {
                v157 = v119[1].n128_i64[1];
                v154 = *(v119 + 8);
                do
                {
                  v133 = v119;
                  v119 = v132;
                  v134 = v132[1];
                  *v133 = *v132;
                  v133[1] = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = (v12 + 32 * v131);
                }

                while (v132->n128_f64[0] < result.n128_f64[0]);
                v119->n128_u64[0] = result.n128_u64[0];
                result = v154;
                v119[1].n128_u64[1] = v157;
                *(v119 + 8) = v154;
              }
            }
          }

          v129 = v13-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v14 = (v12 + 32 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_f64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_f64[0];
      if (v14->n128_f64[0] >= *v12)
      {
        if (v16 < v17)
        {
          v160 = *v14;
          v189 = v14[1];
          v21 = a2[-1];
          *v14 = *v9;
          v14[1] = v21;
          *v9 = v160;
          a2[-1] = v189;
          if (v14->n128_f64[0] < *v12)
          {
            v161 = *v12;
            v190 = *(v12 + 16);
            v22 = v14[1];
            *v12 = *v14;
            *(v12 + 16) = v22;
            *v14 = v161;
            v14[1] = v190;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v158 = *v12;
          v187 = *(v12 + 16);
          v18 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v18;
          goto LABEL_26;
        }

        v164 = *v12;
        v193 = *(v12 + 16);
        v25 = v14[1];
        *v12 = *v14;
        *(v12 + 16) = v25;
        *v14 = v164;
        v14[1] = v193;
        if (v9->n128_f64[0] < v14->n128_f64[0])
        {
          v158 = *v14;
          v187 = v14[1];
          v26 = a2[-1];
          *v14 = *v9;
          v14[1] = v26;
LABEL_26:
          *v9 = v158;
          a2[-1] = v187;
        }
      }

      v27 = (v12 + 32);
      v28 = v14 - 2;
      v29 = v14[-2].n128_f64[0];
      v30 = v10->n128_f64[0];
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v165 = *v28;
          v194 = v14[-1];
          v34 = a2[-3];
          *v28 = *v10;
          v14[-1] = v34;
          *v10 = v165;
          a2[-3] = v194;
          if (v28->n128_f64[0] < v27->n128_f64[0])
          {
            v35 = *v27;
            v195 = *(v12 + 48);
            v36 = v14[-1];
            *v27 = *v28;
            *(v12 + 48) = v36;
            *v28 = v35;
            v14[-1] = v195;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          v32 = *(v12 + 48);
          v33 = a2[-3];
          *v27 = *v10;
          *(v12 + 48) = v33;
          goto LABEL_38;
        }

        v39 = *v27;
        v197 = *(v12 + 48);
        v40 = v14[-1];
        *v27 = *v28;
        *(v12 + 48) = v40;
        *v28 = v39;
        v14[-1] = v197;
        if (v10->n128_f64[0] < v28->n128_f64[0])
        {
          v167 = *v28;
          v198 = v14[-1];
          v41 = a2[-3];
          *v28 = *v10;
          v14[-1] = v41;
          v31 = v167;
          v32 = v198;
LABEL_38:
          *v10 = v31;
          a2[-3] = v32;
        }
      }

      v42 = (v12 + 64);
      v44 = v14[2].n128_f64[0];
      v43 = v14 + 2;
      v45 = v44;
      v46 = v11->n128_f64[0];
      if (v44 >= *(v12 + 64))
      {
        if (v46 < v45)
        {
          v168 = *v43;
          v199 = v43[1];
          v50 = a2[-5];
          *v43 = *v11;
          v43[1] = v50;
          *v11 = v168;
          a2[-5] = v199;
          if (v43->n128_f64[0] < v42->n128_f64[0])
          {
            v51 = *v42;
            v200 = *(v12 + 80);
            v52 = v43[1];
            *v42 = *v43;
            *(v12 + 80) = v52;
            *v43 = v51;
            v43[1] = v200;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *v42;
          v48 = *(v12 + 80);
          v49 = a2[-5];
          *v42 = *v11;
          *(v12 + 80) = v49;
          goto LABEL_47;
        }

        v53 = *v42;
        v201 = *(v12 + 80);
        v54 = v43[1];
        *v42 = *v43;
        *(v12 + 80) = v54;
        *v43 = v53;
        v43[1] = v201;
        if (v11->n128_f64[0] < v43->n128_f64[0])
        {
          v169 = *v43;
          v202 = v43[1];
          v55 = a2[-5];
          *v43 = *v11;
          v43[1] = v55;
          v47 = v169;
          v48 = v202;
LABEL_47:
          *v11 = v47;
          a2[-5] = v48;
        }
      }

      v56 = v15->n128_f64[0];
      v57 = v43->n128_f64[0];
      if (v15->n128_f64[0] >= v28->n128_f64[0])
      {
        if (v57 < v56)
        {
          v171 = *v15;
          v204 = v15[1];
          v59 = v43[1];
          *v15 = *v43;
          v15[1] = v59;
          *v43 = v171;
          v43[1] = v204;
          if (v15->n128_f64[0] < v28->n128_f64[0])
          {
            v172 = *v28;
            v205 = v28[1];
            v60 = v15[1];
            *v28 = *v15;
            v28[1] = v60;
            *v15 = v172;
            v15[1] = v205;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v170 = *v28;
          v203 = v28[1];
          v58 = v43[1];
          *v28 = *v43;
          v28[1] = v58;
          goto LABEL_56;
        }

        v173 = *v28;
        v206 = v28[1];
        v61 = v15[1];
        *v28 = *v15;
        v28[1] = v61;
        *v15 = v173;
        v15[1] = v206;
        if (v43->n128_f64[0] < v15->n128_f64[0])
        {
          v170 = *v15;
          v203 = v15[1];
          v62 = v43[1];
          *v15 = *v43;
          v15[1] = v62;
LABEL_56:
          *v43 = v170;
          v43[1] = v203;
        }
      }

      v174 = *v12;
      v207 = *(v12 + 16);
      v63 = v15[1];
      *v12 = *v15;
      *(v12 + 16) = v63;
      *v15 = v174;
      v15[1] = v207;
      goto LABEL_58;
    }

    v19 = *v12;
    if (*v12 >= v14->n128_f64[0])
    {
      if (v16 < v19)
      {
        v162 = *v12;
        v191 = *(v12 + 16);
        v23 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v23;
        *v9 = v162;
        a2[-1] = v191;
        if (*v12 < v14->n128_f64[0])
        {
          v163 = *v14;
          v192 = v14[1];
          v24 = *(v12 + 16);
          *v14 = *v12;
          v14[1] = v24;
          *v12 = v163;
          *(v12 + 16) = v192;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v19)
    {
      v166 = *v14;
      v196 = v14[1];
      v37 = *(v12 + 16);
      *v14 = *v12;
      v14[1] = v37;
      *v12 = v166;
      *(v12 + 16) = v196;
      if (v9->n128_f64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v159 = *v12;
      v188 = *(v12 + 16);
      v38 = a2[-1];
      *v12 = *v9;
      *(v12 + 16) = v38;
    }

    else
    {
      v159 = *v14;
      v188 = v14[1];
      v20 = a2[-1];
      *v14 = *v9;
      v14[1] = v20;
    }

    *v9 = v159;
    a2[-1] = v188;
LABEL_58:
    --a3;
    v64 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 32) < v64)
    {
      v65 = 0;
      v155 = *(v12 + 24);
      v152 = *(v12 + 8);
      do
      {
        v66 = *(v12 + v65 + 32);
        v65 += 32;
      }

      while (v66 < v64);
      v67 = v12 + v65;
      v68 = a2;
      if (v65 == 32)
      {
        v68 = a2;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v70 >= v64);
      }

      else
      {
        do
        {
          v69 = v68[-2].n128_f64[0];
          v68 -= 2;
        }

        while (v69 >= v64);
      }

      v12 += v65;
      if (v67 < v68)
      {
        v71 = v68;
        do
        {
          v175 = *v12;
          v208 = *(v12 + 16);
          v72 = v71[1];
          *v12 = *v71;
          *(v12 + 16) = v72;
          *v71 = v175;
          v71[1] = v208;
          do
          {
            v73 = *(v12 + 32);
            v12 += 32;
          }

          while (v73 < v64);
          do
          {
            v74 = v71[-2].n128_f64[0];
            v71 -= 2;
          }

          while (v74 >= v64);
        }

        while (v12 < v71);
      }

      if (v12 - 32 != a1)
      {
        v75 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v75;
      }

      *(v12 - 32) = v64;
      result = v152;
      *(v12 - 8) = v155;
      *(v12 - 24) = v152;
      if (v67 < v68)
      {
        goto LABEL_79;
      }

      v76 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *>(a1, v12 - 32, v152);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *>(v12, a2, v77))
      {
        a2 = (v12 - 32);
        if (!v76)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v76)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,false>(a1, (v12 - 32), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v156 = *(v12 + 24);
      v153 = *(v12 + 8);
      if (v64 >= v9->n128_f64[0])
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 32;
        }

        while (v64 >= *v12);
      }

      else
      {
        do
        {
          v78 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v78);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v81 = v80[-2].n128_f64[0];
          v80 -= 2;
        }

        while (v64 < v81);
      }

      while (v12 < v80)
      {
        v176 = *v12;
        v209 = *(v12 + 16);
        v82 = v80[1];
        *v12 = *v80;
        *(v12 + 16) = v82;
        *v80 = v176;
        v80[1] = v209;
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v83);
        do
        {
          v84 = v80[-2].n128_f64[0];
          v80 -= 2;
        }

        while (v64 < v84);
      }

      if (v12 - 32 != a1)
      {
        v85 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v85;
      }

      a4 = 0;
      *(v12 - 32) = v64;
      result = v153;
      *(v12 - 8) = v156;
      *(v12 - 24) = v153;
    }
  }

  v88 = (v12 + 32);
  result.n128_u64[0] = *(v12 + 32);
  v89 = a2[-2].n128_u64[0];
  v86 = a2 - 2;
  v90 = *&v89;
  if (result.n128_f64[0] >= *v12)
  {
    if (v90 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v88;
    v215 = *(v12 + 48);
    v135 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v135;
    *v86 = result;
    v86[1] = v215;
    goto LABEL_179;
  }

  if (v90 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v184 = *v12;
  v218 = *(v12 + 16);
  v143 = *(v12 + 48);
  *v12 = *v88;
  *(v12 + 16) = v143;
  result.n128_u64[1] = v184.n128_u64[1];
  *v88 = v184;
  *(v12 + 48) = v218;
  result.n128_u64[0] = v86->n128_u64[0];
  if (v86->n128_f64[0] < *(v12 + 32))
  {
    result = *v88;
    v92 = *(v12 + 48);
    v144 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v144;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[0];
  if (a5->n128_f64[0] < a4->n128_f64[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v8 = *(a2 - 32);
      v4 = a2 - 32;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v45 = *a1;
          v44 = *(a1 + 16);
          v46 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v46;
          *v6 = v45;
          *(a1 + 48) = v44;
          if (*v4 >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *v6;
          v10 = *(a1 + 48);
          v47 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 48) = v47;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = *(a1 + 16);
        v12 = *(v4 + 16);
        *a1 = *v4;
        *(a1 + 16) = v12;
LABEL_13:
        *v4 = v11;
        *(v4 + 16) = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v30 = *v6;
      v29 = *(a1 + 48);
      v31 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 48) = v31;
      *v4 = v30;
      *(v4 + 16) = v29;
LABEL_50:
      if (*(a1 + 32) < *a1)
      {
        v71 = *a1;
        v70 = *(a1 + 16);
        v72 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v72;
        *v6 = v71;
        v6[1] = v70;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ULSegmentGenerator::addFPsToStaticIntervals(std::vector<ULStaticIntervalObject> &,std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,ULSegmentGenerator::SegmentGeneratorLocalParams const&)::$_1 &,ULSegmentGenerator::FingerprintUUIDAndTimestamp *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
    }

    v6 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a1 + 64);
    v23 = *(a1 + 64);
    v24 = (a2 - 32);
    v25 = *a1;
    if (v21 >= *a1)
    {
      if (v23 < v21)
      {
        v39 = *v6;
        v38 = *(a1 + 48);
        v40 = *(a1 + 80);
        *v6 = *v22;
        *(a1 + 48) = v40;
        *v22 = v39;
        *(a1 + 80) = v38;
        if (v6->n128_f64[0] < v25)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v43;
          *v6 = v42;
          *(a1 + 48) = v41;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v21)
    {
      v61 = *a1;
      v60 = *(a1 + 16);
      v62 = *(a1 + 48);
      *a1 = *v6;
      *(a1 + 16) = v62;
      *v6 = v61;
      *(a1 + 48) = v60;
      if (v23 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v27 = *v6;
      v26 = *(a1 + 48);
      v63 = *(a1 + 80);
      *v6 = *v22;
      *(a1 + 48) = v63;
    }

    else
    {
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 80);
      *a1 = *v22;
      *(a1 + 16) = v28;
    }

    *v22 = v27;
    *(a1 + 80) = v26;
LABEL_47:
    if (*v24 >= v22->n128_f64[0])
    {
      return 1;
    }

    v65 = *v22;
    v64 = *(a1 + 80);
    v66 = *(a2 - 16);
    *v22 = *v24;
    *(a1 + 80) = v66;
    *v24 = v65;
    *(a2 - 16) = v64;
    if (v22->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v68 = *v6;
    v67 = *(a1 + 48);
    v69 = *(a1 + 80);
    *v6 = *v22;
    *(a1 + 48) = v69;
    *v22 = v68;
    *(a1 + 80) = v67;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = a2 - 32;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v33 = *v15;
      v32 = *(a1 + 48);
      v34 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v34;
      *v13 = v33;
      *(a1 + 80) = v32;
      if (v15->n128_f64[0] < v17)
      {
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 48);
        *a1 = *v15;
        *(a1 + 16) = v37;
        *v15 = v36;
        *(a1 + 48) = v35;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v49 = *a1;
      v48 = *(a1 + 16);
      v50 = *(a1 + 48);
      *a1 = *v15;
      *(a1 + 16) = v50;
      *v15 = v49;
      *(a1 + 48) = v48;
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v19 = *v15;
      v18 = *(a1 + 48);
      v51 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v51;
    }

    else
    {
      v19 = *a1;
      v18 = *(a1 + 16);
      v20 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v20;
    }

    *v13 = v19;
    *(a1 + 80) = v18;
  }

LABEL_33:
  v52 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    if (*v52 < v13->n128_f64[0])
    {
      v74 = *(v52 + 8);
      v75 = *(v52 + 24);
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(a1 + v56 + 80);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (v55 >= *(v57 + 32))
        {
          v59 = a1 + v56 + 96;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v55;
      *(v59 + 8) = v74;
      *(v59 + 24) = v75;
      if (++v54 == 8)
      {
        return v52 + 32 == a2;
      }
    }

    v13 = v52;
    v53 += 32;
    v52 += 32;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

void ULWalkwayGenerator::createWalkways(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, ULTrajectoryPointCloud *a4@<X8>)
{
  v119 = *MEMORY[0x277D85DE8];
  if (a1[1] == *a1 || a2[1] == *a2 || a3[1] == *a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWalkwayGenerator::createWalkways();
    }

    v78 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v79 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 2);
      v80 = (a2[1] - *a2) >> 6;
      v81 = 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3);
      *v113 = 134218496;
      v114 = v79;
      v115 = 2048;
      v116 = v80;
      v117 = 2048;
      v118 = v81;
      _os_log_impl(&dword_258FE9000, v78, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, got %zu clusteredPlacements, %zu odometryEntries, %zu segments, returning nil", v113, 0x20u);
    }

    *a4 = 0;
    *(a4 + 32) = 0;
    return;
  }

  ULWalkwayGenerator::findGeoClusterCenters(a1, v113);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWalkwayGenerator::createWalkways();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v118;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, found %zu geo clusters", &buf, 0xCu);
  }

  buf = 0u;
  v111 = 0u;
  v112 = 1065353216;
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      if (*(v9 + 32) == 1)
      {
        v11 = *(v9 + 28);
        *v108 = v9 + 12;
        *(std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&buf, (v9 + 12), &std::piecewise_construct, v108) + 8) = v11;
      }

      v9 += 44;
    }

    while (v9 != v10);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWalkwayGenerator::createWalkways();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v108 = 134217984;
    *&v108[4] = *(&v111 + 1);
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, found %zu FPs with geo clusters", v108, 0xCu);
  }

  v105 = 0;
  __dst = 0;
  v107 = 0;
  v14 = *a3;
  v13 = a3[1];
  if (*a3 == v13)
  {
    goto LABEL_99;
  }

  v84 = vdupq_n_s32(0x40490FDBu);
  v85 = vdupq_n_s32(0x43340000u);
  v86 = vdup_n_s32(0x40490FDBu);
  v87 = vdup_n_s32(0x43340000u);
  do
  {
    if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(&buf, *(v14 + 32)) || !std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(&buf, *(v14 + 56)))
    {
      goto LABEL_79;
    }

    v15 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(&buf, *(v14 + 32));
    if (!v15)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v104 = *(v15 + 8);
    v16 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(&buf, *(v14 + 56));
    if (!v16)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v103 = *(v16 + 8);
    if (v104 == v103)
    {
      goto LABEL_79;
    }

    *v108 = &v103;
    v17 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v113, &v103, &std::piecewise_construct, v108);
    *v108 = &v104;
    v18 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v113, &v104, &std::piecewise_construct, v108);
    v20 = *a2;
    v19 = a2[1];
    if (v19 == *a2)
    {
      __src = 0;
      v101 = 0;
      v102 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_77;
    }

    v88 = vsub_f32(vsub_f32(*(v17 + 20), *(v18 + 20)), *(v14 + 16));
    v21 = (*(v17 + 7) - *(v18 + 7)) - *(v14 + 24);
    v22 = (v19 - *a2) >> 6;
    do
    {
      v23 = v22 >> 1;
      v24 = v20 + (v22 >> 1 << 6);
      v25 = *(v24 + 40);
      v26 = v24 + 64;
      v22 += ~(v22 >> 1);
      if (v25 < *v14)
      {
        v20 = v26;
      }

      else
      {
        v22 = v23;
      }
    }

    while (v22);
    __src = 0;
    v101 = 0;
    v102 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    if (v20 == v19)
    {
      goto LABEL_77;
    }

    do
    {
      v27 = *(v20 + 40);
      if (v27 > *(v14 + 8))
      {
        break;
      }

      for (i = *(v14 + 80); i != *(v14 + 88); i += 2)
      {
        if (v27 > *i && v27 < i[1])
        {
          goto LABEL_55;
        }
      }

      v30 = *(v20 + 24);
      v31 = *(v20 + 28);
      v32 = *(v20 + 32);
      v33 = fmaxf(fabsf(v30), fmaxf(fabsf(v31), fabsf(v32)));
      if (v33 <= 1.8447e19)
      {
        v35 = 1.0;
        if (v33 >= 5.421e-20)
        {
          goto LABEL_43;
        }

        *&v34 = 1.9343e25;
      }

      else
      {
        *&v34 = 5.1699e-26;
      }

      v35 = *&v34;
LABEL_43:
      v36 = sqrtf((((v31 * v35) * (v31 * v35)) + ((v30 * v35) * (v30 * v35))) + ((v32 * v35) * (v32 * v35))) / v35;
      v37 = v101;
      if (v101 >= v102)
      {
        v39 = __src;
        v40 = v101 - __src;
        v41 = (v101 - __src) >> 2;
        v42 = v41 + 1;
        if ((v41 + 1) >> 62)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v43 = v102 - __src;
        if ((v102 - __src) >> 1 > v42)
        {
          v42 = v43 >> 1;
        }

        v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
        v45 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v44)
        {
          v45 = v42;
        }

        if (v45)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v45);
        }

        *(4 * v41) = v36;
        v38 = 4 * v41 + 4;
        memcpy(0, v39, v40);
        v46 = __src;
        __src = 0;
        v101 = v38;
        v102 = 0;
        if (v46)
        {
          operator delete(v46);
        }
      }

      else
      {
        *v101 = v36;
        v38 = (v37 + 1);
      }

      v101 = v38;
      std::vector<ULOdometryDO>::push_back[abi:ne200100](&v97, v20);
      v19 = a2[1];
LABEL_55:
      v20 += 64;
    }

    while (v20 != v19);
    if (v98 != v97)
    {
      v47 = 0.0;
      if (__src != v101)
      {
        v48 = __src;
        do
        {
          v49 = *v48++;
          v47 = v47 + v49;
        }

        while (v48 != v101);
      }

      std::vector<float>::vector[abi:ne200100](v96, (v101 - __src) >> 2);
      v50 = __src;
      v51 = v101;
      if (__src != v101)
      {
        v52 = v96[0];
        do
        {
          v53 = *v50++;
          *v52++ = v53 / v47;
        }

        while (v50 != v51);
      }

      __p = &v104;
      v54 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v113, &v104, &std::piecewise_construct, &__p);
      v55 = *(v54 + 20);
      v56 = *(v54 + 7);
      __p = 0;
      v94 = 0;
      v95 = 0;
      std::vector<ULTrajectoryPoint>::reserve(&__p, ((v98 - v97) >> 6) + 1);
      v57 = v97;
      if (v98 == v97)
      {
        v69 = 0.0;
        v67 = 0.0;
        v66 = 0.0;
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
        do
        {
          v63 = &v57[v58];
          v64 = *(v96[0] + v59);
          v65 = vmla_n_f32(v63[3], v88, v64);
          v66 = v63[4].f32[0] + (v64 * v21);
          *v108 = v55;
          *&v108[8] = v56;
          v67 = v65.f32[1];
          v89 = v65;
          v90 = atan2f(v65.f32[1], v65.f32[0]);
          *v109 = vdiv_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(atanf(v66)), LODWORD(v90)), v87), v86);
          if (v59)
          {
            v91 = atan2f(-v61, -v62);
            v68 = vdiv_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(atanf(-v60)), LODWORD(v91)), v87), v86);
          }

          else
          {
            v68 = *v109;
          }

          *&v109[8] = v68;
          std::vector<ULTrajectoryPoint>::push_back[abi:ne200100](&__p, v108);
          v69 = v89.f32[0];
          v55 = vadd_f32(v55, v89);
          v56 = v56 + v66;
          ++v59;
          v57 = v97;
          v58 += 8;
          v60 = v66;
          v61 = v67;
          v62 = v89.f32[0];
        }

        while (v59 < (v98 - v97) >> 6);
      }

      *v108 = v55;
      *&v108[8] = v56;
      v92 = atan2f(-v67, -v69);
      v70.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(atanf(-v66)), LODWORD(v92));
      v70.i64[1] = v70.i64[0];
      *v109 = vdivq_f32(vmulq_f32(v70, v85), v84);
      std::vector<ULTrajectoryPoint>::push_back[abi:ne200100](&__p, v108);
      std::vector<ULTrajectoryPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULTrajectoryPoint*>,std::__wrap_iter<ULTrajectoryPoint*>>(&v105, __dst, __p, v94, 0x6DB6DB6DB6DB6DB7 * ((v94 - __p) >> 2));
      if (__p)
      {
        v94 = __p;
        operator delete(__p);
      }

      if (v96[0])
      {
        v96[1] = v96[0];
        operator delete(v96[0]);
      }
    }

LABEL_77:
    *v108 = &v97;
    std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](v108);
    if (__src)
    {
      v101 = __src;
      operator delete(__src);
    }

LABEL_79:
    v14 += 104;
  }

  while (v14 != v13);
  if (__dst != v105)
  {
    if (onceToken_MicroLocation_Default == -1)
    {
      v71 = &unk_281455000;
    }

    else
    {
      ULWalkwayGenerator::createWalkways();
      v71 = &unk_281455000;
    }

    v72 = *(v71 + 143);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v108 = 134217984;
      *&v108[4] = 0x6DB6DB6DB6DB6DB7 * ((__dst - v105) >> 2);
      _os_log_impl(&dword_258FE9000, v72, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, got %zu point cloud points", v108, 0xCu);
    }

    ULWalkwayGenerator::reducePoints(&v105, &__src);
    v73 = __src;
    if (v101 == __src)
    {
      *a4 = 0;
      *(a4 + 32) = 0;
      if (!v73)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULWalkwayGenerator::createWalkways();
      }

      v74 = *(v71 + 143);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *v108 = 134217984;
        *&v108[4] = 0x6DB6DB6DB6DB6DB7 * ((__dst - v105) >> 2);
        _os_log_impl(&dword_258FE9000, v74, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, reduced points to %zu point cloud points", v108, 0xCu);
      }

      ULWalkwayGenerator::createPointCloud(&__src, v108, v75, v76);
      ULTrajectoryPointCloud::ULTrajectoryPointCloud(a4, v108);
      *(a4 + 32) = 1;
      v77 = *&v109[12];
      *&v109[12] = 0;
      if (v77)
      {
        v97 = (v77 + 80);
        std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](&v97);
        v97 = (v77 + 56);
        std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v97);
        MEMORY[0x259CA1F90](v77, 0x1020C40B3163EAALL);
      }

      v97 = v108;
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v97);
      v73 = __src;
      if (!__src)
      {
        goto LABEL_106;
      }
    }

    v101 = v73;
    operator delete(v73);
    goto LABEL_106;
  }

LABEL_99:
  if (onceToken_MicroLocation_Default == -1)
  {
    v82 = &unk_281455000;
  }

  else
  {
    ULWalkwayGenerator::createWalkways();
    v82 = &unk_281455000;
  }

  v83 = *(v82 + 143);
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *v108 = 0;
    _os_log_impl(&dword_258FE9000, v83, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, got zero point cloud points", v108, 2u);
  }

  *a4 = 0;
  *(a4 + 32) = 0;
LABEL_106:
  if (v105)
  {
    __dst = v105;
    operator delete(v105);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v113);
}

void sub_25903B4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ULTrajectoryPointCloud::~ULTrajectoryPointCloud(&a39);
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v39 - 256);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v39 - 208);
  _Unwind_Resume(a1);
}

uint64_t ULWalkwayGenerator::findGeoClusterCenters@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = *a1 + 28;
    do
    {
      if (*(v4 + 4) == 1)
      {
        v5 = *(v4 - 28);
        v18 = v4;
        v6 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v4, &std::piecewise_construct, &v18);
        *(v6 + 5) = v5 + *(v6 + 5);
        if ((*(v4 + 4) & 1) == 0 || (v7 = *(v4 - 24), v18 = v4, v8 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v4, &std::piecewise_construct, &v18), *(v8 + 6) = v7 + *(v8 + 6), *(v4 + 4) != 1) || (v9 = *(v4 - 20), v18 = v4, v10 = std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v4, &std::piecewise_construct, &v18), *(v10 + 7) = v9 + *(v10 + 7), *(v4 + 4) != 1))
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v18 = v4;
        v11 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v16, v4, &std::piecewise_construct, &v18);
        ++*(v11 + 5);
      }

      v12 = v4 + 16;
      v4 += 44;
    }

    while (v12 != v3);
    for (i = *(a2 + 16); i; i = *i)
    {
      v15 = *(i + 4);
      v18 = &v15;
      *(i + 5) = *(i + 5) / *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v16, &v15, &std::piecewise_construct, &v18) + 5);
      v18 = &v15;
      *(i + 6) = *(i + 6) / *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v16, &v15, &std::piecewise_construct, &v18) + 5);
      v18 = &v15;
      *(i + 7) = *(i + 7) / *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v16, &v15, &std::piecewise_construct, &v18) + 5);
    }
  }

  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v16);
}

void sub_25903B810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v5);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULOdometryDO>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULOdometryDO>::__emplace_back_slow_path<ULOdometryDO const&>(a1, a2);
  }

  else
  {
    std::vector<ULOdometryDO>::__construct_one_at_end[abi:ne200100]<ULOdometryDO const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULOdometryDO>::__emplace_back_slow_path<ULOdometryDO>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
    v6 = *(a2 + 6);
    v7 = *(a2 + 7);
    *(a2 + 6) = 0;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void std::vector<ULTrajectoryPoint>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x924924924924925)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(a1, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<ULTrajectoryPoint>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x924924924924924)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(a1, v11);
    }

    v12 = 28 * v8;
    v13 = *a2;
    *(v12 + 12) = *(a2 + 12);
    *v12 = v13;
    v7 = 28 * v8 + 28;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 12) = *(a2 + 12);
    *v5 = v6;
    v7 = v5 + 28;
  }

  *(a1 + 8) = v7;
}

void ULWalkwayGenerator::reducePoints(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperWalkwayClusteringOnDirectionDistanceThreshholdMeters"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
  }

  else
  {
    [&unk_286A72CC0 floatValue];
  }

  v118 = v8;

  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperWalkwayClusteringOrthDistanceThreshholdMeters"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 floatValue];
  }

  else
  {
    [&unk_286A72CC0 floatValue];
  }

  v117 = v13;

  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperWalkwayClusteringAngleDiffThreshholdDegrees"];
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v17 floatValue];
  }

  else
  {
    [&unk_286A71658 floatValue];
  }

  v116 = v18;

  v20 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  v148 = v20;
  memset(&v149, 0, sizeof(v149));
  v21 = v20 + v20 * v20;
  __x[0] = 0;
  if (v21 >= 2)
  {
    std::vector<char>::__append(&v149, v21 >> 1, __x);
    v20 = v148;
  }

  v115 = a2;
  if (v20)
  {
    v22 = 0;
    v23 = 0;
    v24 = 2;
    do
    {
      if (v23)
      {
        v25 = 0;
        v26 = v22 >> 1;
        v27 = (*a1 + 28 * v23);
        v124 = v27[5];
        v125 = v27[6];
        v122 = v27[3];
        v123 = v27[4];
        v120 = v27[1];
        v121 = v27[2];
        v119 = *v27;
        v28 = v23 + 1;
        v29 = v23;
        do
        {
          v30 = (*a1 + v25);
          v127 = v30[6];
          v128 = v30[5];
          v31 = v30[1];
          v126 = *v30;
          v32 = v30[2];
          v33 = ULWalkwayGenerator::calcDistance(v122, v123, v30[3], v30[4], v119, v120, v121, v19, *v30, v31, v32, v118, v117, v116);
          v35 = ULWalkwayGenerator::calcDistance(v124, v125, v128, v127, v119, v120, v121, v34, v126, v31, v32, v118, v117, v116);
          v149.__begin_[v26++] = v33 || v35;
          v25 += 28;
          --v29;
        }

        while (v29);
        v20 = v148;
      }

      else
      {
        v28 = 1;
      }

      ++v23;
      v22 += v24;
      v24 += 2;
    }

    while (v28 < v20);
  }

  v145 = 0;
  v146 = 0;
  v147 = 0;
  std::vector<BOOL>::vector(v144, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2));
  std::vector<double>::reserve(&v145, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2));
  v36 = a1[1] - *a1;
  if (v36)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0x6DB6DB6DB6DB6DB7 * (v36 >> 2);
    v41 = 2;
    do
    {
      __x[0] = 1;
      std::vector<BOOL>::assign(v144, v40, __x);
      if (v39)
      {
        v42 = 0;
        v43 = v145;
        v44 = v144[0];
        v45 = &v149.__begin_[v37 >> 1];
        do
        {
          if (v45[v42])
          {
            *&v44[(v43[v42] >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v43[v42]);
          }

          ++v42;
        }

        while (v39 != v42);
      }

      if (v38)
      {
        v46 = 0;
        while (((*(v144[0] + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          if (v38 == ++v46)
          {
            goto LABEL_34;
          }
        }

        v56 = v146;
        if (v146 >= v147)
        {
          v57 = v145;
          v58 = v146 - v145;
          v59 = v146 - v145;
          v60 = v59 + 1;
          if ((v59 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v61 = v147 - v145;
          if ((v147 - v145) >> 2 > v60)
          {
            v60 = v61 >> 2;
          }

          v54 = v61 >= 0x7FFFFFFFFFFFFFF8;
          v62 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v54)
          {
            v62 = v60;
          }

          if (v62)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v145, v62);
          }

          *(8 * v59) = v46;
          v48 = (8 * v59 + 8);
          memcpy(0, v57, v58);
          v64 = v145;
          v145 = 0;
          v146 = v48;
          v147 = 0;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          *v146 = v46;
          v48 = v56 + 1;
        }

        v146 = v48;
      }

      else
      {
LABEL_34:
        v47 = v146;
        if (v146 >= v147)
        {
          v49 = v145;
          v50 = v146 - v145;
          v51 = v146 - v145;
          v52 = v51 + 1;
          if ((v51 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v53 = v147 - v145;
          if ((v147 - v145) >> 2 > v52)
          {
            v52 = v53 >> 2;
          }

          v54 = v53 >= 0x7FFFFFFFFFFFFFF8;
          v55 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v54)
          {
            v55 = v52;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v145, v55);
          }

          *(8 * v51) = v38;
          v48 = (8 * v51 + 8);
          memcpy(0, v49, v50);
          v63 = v145;
          v145 = 0;
          v146 = v48;
          v147 = 0;
          if (v63)
          {
            operator delete(v63);
          }
        }

        else
        {
          *v146 = v38;
          v48 = v47 + 1;
        }

        v146 = v48;
        ++v38;
      }

      ++v39;
      v40 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
      v37 += v41;
      v41 += 2;
    }

    while (v39 < v40);
  }

  else
  {
    v38 = 0;
    v48 = v146;
  }

  *__x = 0u;
  v142 = 0u;
  v143 = 1065353216;
  v65 = v145;
  if (v48 != v145)
  {
    v66 = 0;
    v67 = 0;
    do
    {
      v140[0] = &v65[v66];
      v68 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &v65[v66], &std::piecewise_construct, v140);
      ++v68[3];
      ++v67;
      v65 = v145;
      ++v66;
    }

    while (v67 < v146 - v145);
  }

  v69 = +[ULDefaultsSingleton shared];
  v70 = [v69 defaultsDictionary];

  v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperWalkwayClusteringPruneClusterMinSize"];
  v72 = [v70 objectForKey:v71];
  if (v72 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v73 = [v72 unsignedLongValue];
  }

  else
  {
    v73 = [&unk_286A71640 unsignedLongValue];
  }

  v74 = v73;

  if (v74)
  {
    v75 = v142;
    if (v142)
    {
      v76 = 0;
      v77 = v115;
      do
      {
        if (v75[3] >= v74)
        {
          ++v76;
        }

        v75 = *v75;
      }

      while (v75);
    }

    else
    {
      v76 = 0;
      v77 = v115;
    }

    *v77 = 0;
    v77[1] = 0;
    v77[2] = 0;
    std::vector<ULTrajectoryPoint>::reserve(v77, v76);
    LODWORD(v139[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v140, v38, v139);
    LODWORD(v138[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v139, v38, v138);
    v137[0] = 0;
    std::vector<float>::vector[abi:ne200100](v138, v38, v137);
    __p = 0;
    v135 = 0;
    v136 = 0;
    std::vector<std::vector<float>>::vector[abi:ne200100](v137, v38, &__p);
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }

    v133[0] = 0;
    std::vector<float>::vector[abi:ne200100](&__p, v38, v133);
    v130 = 0;
    v131 = 0;
    v132 = 0;
    std::vector<std::vector<float>>::vector[abi:ne200100](v133, v38, &v130);
    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }

    v150[0] = 0;
    std::vector<float>::vector[abi:ne200100](&v130, v38, v150);
    if (a1[1] != *a1)
    {
      v78 = 0;
      do
      {
        *v150 = &v145[v78];
        v79 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, *v150, &std::piecewise_construct, v150);
        v80 = *a1;
        if (v79[3] >= v74)
        {
          v81 = v80 + 28 * v78;
          v82 = v145[v78];
          *(v140[0] + v82) = *v81 + *(v140[0] + v82);
          *(v139[0] + v82) = *(v81 + 4) + *(v139[0] + v82);
          *(v138[0] + v82) = *(v81 + 8) + *(v138[0] + v82);
          std::vector<float>::push_back[abi:ne200100]((*v137 + 24 * v82), (v81 + 12));
          std::vector<float>::push_back[abi:ne200100]((*v133 + 24 * v145[v78]), (*a1 + 28 * v78 + 20));
          v80 = *a1;
          v83 = *a1 + 28 * v78;
          v84 = v145[v78];
          *(__p + v84) = *(v83 + 16) + *(__p + v84);
          *(v130 + v84) = *(v83 + 24) + *(v130 + v84);
        }

        ++v78;
      }

      while (v78 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - v80) >> 2));
    }

    for (i = 0; i < v38; ++i)
    {
      *v150 = &i;
      if (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150)[3] >= v74)
      {
        v85 = *(v140[0] + i);
        *v150 = &i;
        v86 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150)[3];
        v87 = *(v139[0] + i);
        *v150 = &i;
        v88 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150)[3];
        v89 = *(v138[0] + i);
        *v150 = &i;
        v90 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150)[3];
        v91 = i;
        v92 = ULWalkwayGenerator::averageAngleVector((*v137 + 24 * i));
        v93 = *(__p + v91);
        *v150 = &i;
        v94 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150)[3];
        v95 = i;
        v96 = ULWalkwayGenerator::averageAngleVector((*v133 + 24 * i));
        v97 = *(v130 + v95);
        *v150 = &i;
        v98 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__x, &i, &std::piecewise_construct, v150);
        v99 = v85 / v86;
        v100 = v87 / v88;
        v101 = v89 / v90;
        v102 = v93 / v94;
        v103 = v115;
        v104 = v115[1];
        v105 = v115[2];
        v106 = v97 / v98[3];
        if (v104 >= v105)
        {
          v108 = *v115;
          v109 = v104 - *v115;
          v110 = 0x6DB6DB6DB6DB6DB7 * (v109 >> 2) + 1;
          if (v110 > 0x924924924924924)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v111 = 0x6DB6DB6DB6DB6DB7 * ((v105 - v108) >> 2);
          if (2 * v111 > v110)
          {
            v110 = 2 * v111;
          }

          if (v111 >= 0x492492492492492)
          {
            v110 = 0x924924924924924;
          }

          if (v110)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(v115, v110);
          }

          v112 = 4 * (v109 >> 2);
          *v112 = v99;
          *(v112 + 4) = v100;
          *(v112 + 8) = v101;
          *(v112 + 12) = v92;
          *(v112 + 16) = v102;
          *(v112 + 20) = v96;
          *(v112 + 24) = v106;
          v107 = v112 + 28;
          v113 = v112 - v109;
          memcpy((v112 - v109), v108, v109);
          v114 = *v115;
          *v115 = v113;
          v115[1] = v107;
          v115[2] = 0;
          v103 = v115;
          if (v114)
          {
            operator delete(v114);
          }
        }

        else
        {
          *v104 = v99;
          v104[1] = v100;
          v104[2] = v101;
          v104[3] = v92;
          v104[4] = v102;
          v104[5] = v96;
          v107 = (v104 + 7);
          v104[6] = v106;
        }

        v103[1] = v107;
      }
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }

    v130 = v133;
    std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v130);
    if (__p)
    {
      v135 = __p;
      operator delete(__p);
    }

    __p = v137;
    std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v138[0])
    {
      v138[1] = v138[0];
      operator delete(v138[0]);
    }

    if (v139[0])
    {
      v139[1] = v139[0];
      operator delete(v139[0]);
    }

    if (v140[0])
    {
      v140[1] = v140[0];
      operator delete(v140[0]);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(__x);
    if (v144[0])
    {
      operator delete(v144[0]);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    if (v149.__begin_)
    {
      v149.__end_ = v149.__begin_;
      operator delete(v149.__begin_);
    }
  }

  else
  {
    ULWalkwayGenerator::reducePoints(v140);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/HomeSlam/Mapper/ULWalkwayGenerator.mm", 385, "reducePoints");
    __break(1u);
  }
}

void sub_25903C730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  v47 = *(v45 - 248);
  if (v47)
  {
    operator delete(v47);
  }

  v48 = *(v45 - 224);
  if (v48)
  {
    *(v45 - 216) = v48;
    operator delete(v48);
  }

  v49 = *(v45 - 192);
  if (v49)
  {
    *(v45 - 184) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(a1);
}

void ULWalkwayGenerator::createPointCloud(float **a1@<X0>, ULTrajectoryPointCloud *a2@<X8>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v18 = *a1;
    v19 = *a1;
    v10 = *a1;
    v9 = *a1;
LABEL_79:
    v35 = v6;
    goto LABEL_83;
  }

  v8 = v6 + 7;
  v9 = *a1;
  v10 = *a1;
  if (v6 + 7 != v7)
  {
    v11 = v6[7];
    v10 = v11 >= *v6 ? *a1 : v6 + 7;
    v9 = v11 >= *v6 ? v6 + 7 : *a1;
    v12 = v6 + 14;
    if (v6 + 14 != v7)
    {
      if (v11 >= *v6)
      {
        v11 = *v6;
      }

      v13 = *a1;
      while (1)
      {
        v14 = v12;
        v15 = v12 + 7;
        if (v15 == v7)
        {
          break;
        }

        v16 = v14[7];
        v17 = *v14;
        if (v16 >= *v14)
        {
          if (v17 < v11)
          {
            v11 = *v14;
            v10 = v14;
          }

          if (v16 >= *v9)
          {
            v9 = v13 + 21;
          }
        }

        else
        {
          v11 = *v10;
          if (v16 < *v10)
          {
            v11 = v14[7];
            v10 = v15;
          }

          if (v17 >= *v9)
          {
            v9 = v14;
          }
        }

        v12 = v14 + 14;
        v13 = v14;
        if (v14 + 14 == v7)
        {
          goto LABEL_31;
        }
      }

      if (*v14 >= *v10)
      {
        if (*v14 >= *v9)
        {
          v9 = v14;
        }
      }

      else
      {
        v10 = v14;
      }
    }
  }

LABEL_31:
  v18 = *a1;
  v19 = *a1;
  if (v8 != v7)
  {
    v20 = v6[8];
    v21 = v6[1];
    v19 = v20 >= v21 ? *a1 : v6 + 7;
    v18 = v20 >= v21 ? v6 + 7 : *a1;
    v22 = v6 + 14;
    if (v6 + 14 != v7)
    {
      v23 = *a1;
      while (1)
      {
        v24 = v22;
        v25 = v22 + 7;
        if (v25 == v7)
        {
          break;
        }

        v26 = v23 + 21;
        v27 = v24[8];
        v28 = v24[1];
        v29 = v19[1];
        v30 = v18[1];
        if (v28 >= v29)
        {
          v31 = v19;
        }

        else
        {
          v31 = v24;
        }

        if (v27 < v30)
        {
          v26 = v18;
        }

        if (v27 < v29)
        {
          v19 = v25;
        }

        if (v28 >= v30)
        {
          v18 = v24;
        }

        if (v27 >= v28)
        {
          v19 = v31;
          v18 = v26;
        }

        v22 = v24 + 14;
        v23 = v24;
        if (v24 + 14 == v7)
        {
          goto LABEL_58;
        }
      }

      v32 = v24[1];
      if (v32 >= v19[1])
      {
        if (v32 >= v18[1])
        {
          v18 = v24;
        }
      }

      else
      {
        v19 = v24;
      }
    }
  }

LABEL_58:
  if (v8 == v7)
  {
    goto LABEL_79;
  }

  v33 = v6[9];
  v34 = v6[2];
  if (v33 >= v34)
  {
    v35 = v6;
  }

  else
  {
    v35 = v6 + 7;
  }

  if (v33 < v34)
  {
    v8 = v6;
  }

  v36 = v6 + 14;
  while (1)
  {
    if (v36 == v7)
    {
      goto LABEL_82;
    }

    v37 = v36;
    v38 = v36 + 7;
    if (v38 == v7)
    {
      break;
    }

    v39 = v6 + 21;
    v40 = v37[9];
    v41 = v37[2];
    v42 = v35[2];
    v43 = v8[2];
    if (v41 >= v42)
    {
      v44 = v35;
    }

    else
    {
      v44 = v37;
    }

    if (v40 < v43)
    {
      v39 = v8;
    }

    if (v40 < v42)
    {
      v35 = v38;
    }

    if (v41 >= v43)
    {
      v8 = v37;
    }

    if (v40 >= v41)
    {
      v35 = v44;
      v8 = v39;
    }

    v36 = v37 + 14;
    v6 = v37;
  }

  v45 = v37[2];
  if (v45 < v35[2])
  {
    v35 = v37;
LABEL_82:
    v6 = v8;
    goto LABEL_83;
  }

  if (v45 >= v8[2])
  {
    v6 = v37;
  }

  else
  {
    v6 = v8;
  }

LABEL_83:
  v62 = 0;
  v63 = 0uLL;
  v46 = *v10;
  a3.f32[0] = *v9;
  v47.f32[0] = v19[1];
  v48.f32[0] = v18[1];
  *&v62 = (*v10 + *v9) * 0.5;
  *(&v62 + 1) = (v47.f32[0] + v48.f32[0]) * 0.5;
  a4.f32[0] = v35[2];
  v49 = vabds_f32(v46, a3.f32[0]);
  v47.i32[1] = a4.i32[0];
  v48.f32[1] = v6[2];
  *a3.f32 = vsub_f32(v47, v48);
  v50.i64[1] = 0x3F0000003F000000;
  v50.i64[0] = v48.u32[1] | 0x3F00000000000000;
  v51 = vaddq_f32(a4, v50);
  a4.f32[1] = v49;
  v52 = vzip1q_s64(a4, vabsq_f32(a3));
  v53.i64[0] = 0x3F0000003F000000;
  v53.i64[1] = 0x3F0000003F000000;
  v54.i64[0] = 0x4000000040000000;
  v54.i64[1] = 0x4000000040000000;
  v55 = vaddq_f32(vmulq_f32(v52, v53), v54);
  v55.i32[0] = vmulq_f32(v51, v53).u32[0];
  v63 = v55;
  v60 = xmmword_25921C4F8;
  v61 = 0x3F8000003F800000;
  ULTrajectoryPointCloud::ULTrajectoryPointCloud(a2, &v62, &v60, 1);
  v56 = *a1;
  if (*a1 != a1[1])
  {
    v57 = *v56;
    *(buf + 12) = *(v56 + 3);
    buf[0] = v57;
    ULTrajectoryPointCloud::addPoint(a2, buf);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWalkwayGenerator::createWalkways();
  }

  v58 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 0x6DB6DB6DB6DB6DB7 * (a1[1] - *a1);
    LODWORD(buf[0]) = 134219520;
    *(buf + 4) = v59;
    WORD6(buf[0]) = 2048;
    *(buf + 14) = (*&v62 - v63.f32[1]);
    WORD3(buf[1]) = 2048;
    *(&buf[1] + 1) = (*(&v62 + 1) - v63.f32[2]);
    v65 = 2048;
    v66 = (v63.f32[0] - v63.f32[3]);
    v67 = 2048;
    v68 = (*&v62 + v63.f32[1]);
    v69 = 2048;
    v70 = (*(&v62 + 1) + v63.f32[2]);
    v71 = 2048;
    v72 = (v63.f32[0] + v63.f32[3]);
    _os_log_impl(&dword_258FE9000, v58, OS_LOG_TYPE_DEFAULT, "#HomeSlam Walkways, generated map with %zu points, bottom corner (%f, %f, %f) top corner (%f, %f, %f)", buf, 0x48u);
  }
}

float ULWalkwayGenerator::averageAngle(ULWalkwayGenerator *this, float a2, float a3)
{
  v3 = a3 * 3.14159265 / 180.0;
  v4 = __sincosf_stret((a2 * 3.1416) / 180.0);
  v5 = __sincosf_stret(v3);
  return (atan2f((v4.__sinval + v5.__sinval) * 0.5, (v4.__cosval + v5.__cosval) * 0.5) * 180.0) / 3.1416;
}

float ULWalkwayGenerator::averageAngleVector(float **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    do
    {
      v5 = *v1++;
      v6 = __sincosf_stret((v5 * 3.1416) / 180.0);
      v3 = v3 + v6.__sinval;
      v4 = v4 + v6.__cosval;
    }

    while (v1 != v2);
  }

  return atan2f(v3, v4) * 180.0 / 3.14159265;
}

BOOL ULWalkwayGenerator::calcDistance(float a1, float a2, float a3, float a4, float a5, float a6, float a7, double a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = __sincosf_stret((a2 * 3.1416) / 180.0);
  v19 = __sincosf_stret((a1 * 3.1416) / 180.0);
  v20 = __sincosf_stret((a4 * 3.1416) / 180.0);
  v21 = __sincosf_stret((a3 * 3.1416) / 180.0);
  v23 = (ULWalkwayGenerator::averageAngle(v22, a1, a3) * 3.1416) / 180.0;
  v24 = __sincosf_stret((((a2 + a4) * 3.1416) / 180.0) * 0.5);
  v25 = __sincosf_stret(v23);
  v26 = fabsf((((a10 - a6) * (v24.__cosval * v25.__sinval)) + ((a9 - a5) * (v24.__cosval * v25.__cosval))) + ((a11 - a7) * v24.__sinval));
  v27 = fmaxf(vabds_f32(a9, a5), fmaxf(vabds_f32(a10, a6), vabds_f32(a11, a7)));
  if (v27 <= 1.8447e19)
  {
    v29 = 1.0;
    if (v27 >= 5.421e-20)
    {
      goto LABEL_6;
    }

    v28 = 1769996288;
  }

  else
  {
    v28 = 360710144;
  }

  v29 = *&v28;
LABEL_6:
  result = 1;
  if (v26 <= a12 && vabds_f32(sqrtf(((((a10 - a6) * v29) * ((a10 - a6) * v29)) + (((a9 - a5) * v29) * ((a9 - a5) * v29))) + (((a11 - a7) * v29) * ((a11 - a7) * v29))) / v29, v26) <= a13)
  {
    return ((acosf((((v18.__cosval * v19.__sinval) * (v20.__cosval * v21.__sinval)) + ((v18.__cosval * v19.__cosval) * (v20.__cosval * v21.__cosval))) + (v18.__sinval * v20.__sinval)) * 180.0) / 3.1416) > a14;
  }

  return result;
}

void std::vector<BOOL>::assign(uint64_t result, unint64_t a2, _BYTE *a3)
{
  *(result + 8) = 0;
  if (a2)
  {
    v6 = *(result + 16);
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      *(result + 8) = a2;
    }

    else
    {
      v14 = 0;
      v15 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&v14, v9);
      v11 = v14;
      v12 = *(&v15 + 1);
      v14 = *result;
      v10 = v14;
      v13 = *(result + 8);
      *result = v11;
      *(result + 8) = a2;
      *(result + 16) = v12;
      v15 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    if (*a3 == 1)
    {
      v14 = *result;
      LODWORD(v15) = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v14, a2);
    }

    else
    {
      v14 = *result;
      LODWORD(v15) = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v14, a2);
    }
  }
}

void sub_25903D224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_8()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

id std::vector<ULOdometryDO>::__construct_one_at_end[abi:ne200100]<ULOdometryDO const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = v6;
  result = *(a2 + 6);
  v8 = *(a2 + 7);
  *(v4 + 48) = result;
  *(v4 + 56) = v8;
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t std::vector<ULOdometryDO>::__emplace_back_slow_path<ULOdometryDO const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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

  v24 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(a1, v7);
  }

  v8 = v2 << 6;
  v21 = 0;
  v22 = v8;
  v23 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v10 = v22;
    v11 = v23;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  v12 = *(a2 + 24);
  *(v8 + 40) = *(a2 + 5);
  *(v8 + 24) = v12;
  v13 = *(a2 + 6);
  v14 = *(a2 + 7);
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *&v23 = v11 + 64;
  v15 = a1[1];
  v16 = v10 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<ULOdometryDO>::~__split_buffer(&v21);
  return v20;
}

void sub_25903D450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULOdometryDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);
      *(v6 + 48) = 0;
      *(a4 + 48) = v9;
      *(a4 + 56) = v10;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v5);
      v5 += 64;
    }
  }
}

uint64_t std::__split_buffer<ULOdometryDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<ULTrajectoryPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULTrajectoryPoint*>,std::__wrap_iter<ULTrajectoryPoint*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 2) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 2);
    if (v12 > 0x924924924924924)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x492492492492492)
    {
      v15 = 0x924924924924924;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(a1, v15);
    }

    v34 = 4 * (v13 >> 2);
    v35 = 28 * a5;
    v36 = v34;
    do
    {
      v37 = *v7;
      *(v36 + 12) = *(v7 + 12);
      *v36 = v37;
      v36 = (v36 + 28);
      v7 += 28;
      v35 -= 28;
    }

    while (v35);
    memcpy((v34 + 28 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + 28 * a5 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v34 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v34;
  }

  v16 = v10 - __dst;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - __dst) >> 2) >= a5)
  {
    v29 = 28 * a5;
    v30 = &__dst[28 * a5];
    v31 = (v10 - 28 * a5);
    v32 = a1[1];
    while (v31 < v10)
    {
      v33 = *v31;
      *(v32 + 12) = *(v31 + 12);
      *v32 = v33;
      v32 = (v32 + 28);
      v31 = (v31 + 28);
    }

    a1[1] = v32;
    if (v10 != v30)
    {
      memmove(&__dst[v29], __dst, v10 - v30);
    }

    v26 = v5;
    v27 = v7;
    v28 = v29;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(a1[1], &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  a1[1] = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[28 * a5];
    v21 = v10 + v18;
    if (&v19[-28 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -28 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        *(v24 + 12) = *(v23 - v7 + 12);
        *v24 = v25;
        v23 += 28;
        v22 += 28;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    a1[1] = v21;
    if (v19 != v20)
    {
      memmove(&v5[28 * a5], v5, v19 - v20);
    }

    v26 = v5;
    v27 = v7;
    v28 = v10 - v5;
LABEL_28:
    memmove(v26, v27, v28);
  }

  return v5;
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25903DB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = 0;
  for (i = 0; i != 16; ++i)
  {
    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + *(a2 + i);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
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
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v10;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t ULHomeSlamModel::ULHomeSlamModel(uint64_t a1, const ULTrajectoryPointCloud *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t **a6)
{
  v11 = std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](a1, a2);
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0;
  std::vector<ULROI>::__init_with_size[abi:ne200100]<ULROI*,ULROI*>(v11 + 5, *a3, a3[1], (a3[1] - *a3) >> 5);
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 64, a4);
  *(a1 + 104) = *(a4 + 40);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 136) = *(a5 + 2);
    *(a1 + 120) = v12;
  }

  v13 = *(a5 + 24);
  v14 = *(a5 + 40);
  v15 = *(a5 + 14);
  *(a1 + 184) = 0;
  *(a1 + 176) = v15;
  *(a1 + 160) = v14;
  *(a1 + 144) = v13;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<ULPositionedImage>::__init_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>((a1 + 184), *a6, a6[1], 0xEEEEEEEEEEEEEEEFLL * ((a6[1] - *a6) >> 4));
  return a1;
}