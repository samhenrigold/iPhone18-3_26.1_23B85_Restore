uint64_t std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, const ULLabelDO *a6, _OWORD *a7)
{
  v7 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v11 = 0x11A7B9611A7B961;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(a1, v11);
  }

  v18 = 0;
  v19 = 232 * v7;
  std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(232 * v7, a2, a3, a4, a5, a6, a7);
  v20 = (232 * v7 + 232);
  v12 = *(a1 + 8);
  v13 = (232 * v7 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDO>,ULMapLabelDO*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(&v18);
  return v17;
}

void sub_25915CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, const ULLabelDO *a6, _OWORD *a7)
{
  *&v13 = *a2;
  DWORD2(v13) = *(a2 + 8);
  BYTE12(v13) = 1;
  LOBYTE(v11[0]) = 0;
  v12 = 0;
  LOBYTE(__p[0]) = 0;
  v10 = 0;
  ULMapLabelDO::ULMapLabelDO(a1, &v13, v11, __p, a5, a6, a7);
  if (v10 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12 == 1 && v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  return a1;
}

void sub_25915CC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (a12 == 1)
  {
    std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(&a9);
  }

  if (a16 == 1)
  {
    if (__p)
    {
      a14 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v3 - 40);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(v5 + 23) = 0;
      *v5 = 0;
      v8 = *(v5 + 24);
      v9 = *(v5 + 40);
      v10 = *(v5 + 56);
      *(a4 + 72) = *(v5 + 72);
      *(a4 + 56) = v10;
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v11 = *(v5 + 10);
      *(v5 + 10) = 0;
      v12 = *(a4 + 80);
      *(a4 + 80) = v11;

      if (*(a4 + 111) < 0)
      {
        operator delete(*(a4 + 88));
      }

      v13 = *(v5 + 88);
      *(a4 + 104) = *(v5 + 13);
      *(a4 + 88) = v13;
      *(v5 + 111) = 0;
      *(v5 + 88) = 0;
      v5 += 7;
      a4 += 112;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<ULServiceManagerConnectionRequestParams>::__emplace_back_slow_path<ULServiceManagerConnectionRequestParams>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>>(a1, v6);
  }

  v7 = 112 * v2;
  v20 = 0;
  v21 = v7;
  *(&v22 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 56) = v11;
  *(v7 + 40) = v10;
  *(v7 + 24) = v9;
  v12 = *(a2 + 10);
  *(a2 + 10) = 0;
  *(v7 + 80) = v12;
  v13 = *(a2 + 88);
  *(v7 + 104) = *(a2 + 13);
  *(v7 + 88) = v13;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *&v22 = 112 * v2 + 112;
  v14 = a1[1];
  v15 = 112 * v2 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(&v20);
  return v19;
}

void sub_25915CF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      v10 = *(v7 + 40);
      v11 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v11;
      *(a4 + 40) = v10;
      *(a4 + 24) = v9;
      v12 = *(v7 + 80);
      *(v7 + 80) = 0;
      *(a4 + 80) = v12;
      v13 = *(v7 + 88);
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 88) = v13;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 88) = 0;
      v7 += 112;
      a4 += 112;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(a1, v5);
      v5 += 112;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 112;
      std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULServiceManagerConnectionRequestParams>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(v5, v4 - 112);
  }
}

void ULServiceManagerConnectionRequestParams::~ULServiceManagerConnectionRequestParams(void **this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum const*,ULLocationTypeEnum const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915D2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ULServiceDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULServiceDO,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      *(a2 + 55) = 0;
      *(a2 + 32) = 0;
      *(a1 + 56) = *(a2 + 56);
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      result = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = result;
      *(a2 + 87) = 0;
      *(a2 + 64) = 0;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v8;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = *(a2 + 56);
    result = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = result;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  return result;
}

void **std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15++ = v16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__erase_unique<ULDeviceClass>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t ULService::ULService(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 136) = *(a2 + 17);
  v8 = *(a2 + 19);
  *(a1 + 144) = *(a2 + 18);
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a1 + 152) = v8;
  v9 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a1 + 168) = v9;
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 184) = *(a2 + 23);
  v10 = *(a2 + 25);
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a1 + 200) = v10;
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  v13 = *(a2 + 33);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  *(a1 + 264) = v13;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 304) = a2[19];
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a1 + 320, a2 + 40);
  return a1;
}

void sub_25915DA98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__emplace_unique_key_args<ULContextLayerEnum,ULContextLayerEnum const&>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

__n128 std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<ULService::OutstandingRequest *>::emplace_back<ULService::OutstandingRequest *&>(a1, &v9);
}

void sub_25915DEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ULServiceManager::localize(ULScanningEventDO const&)::$_0,std::allocator<ULServiceManager::localize(ULScanningEventDO const&)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ULServiceManager::localize(ULVisualMappingKitLocation *)::$_0,std::allocator<ULServiceManager::localize(ULVisualMappingKitLocation *)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 136 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(a1, a2);
      a2 += 17;
      v5 -= 136;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__function::__func<ULServiceManager::onInvalidateLastScanEvent(void)::$_0,std::allocator<ULServiceManager::onInvalidateLastScanEvent(void)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULServiceManager::onIOD(ULOdometryStatus const*,NSError *)::$_0,std::allocator<ULServiceManager::onIOD(ULOdometryStatus const*,NSError *)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid,ULVisualMappingKitModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::allocator<ULModelAndStates>,0>(void *a1, _OWORD *a2, uint64_t a3, double *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates((a1 + 3), *a4, a2);
  return a1;
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_0,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_1,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_1>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_25915E8C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_2,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_2>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__emplace_unique_key_args<std::pair<boost::uuids::uuid,boost::uuids::uuid>,std::pair<boost::uuids::uuid,boost::uuids::uuid>>(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__find_equal<std::pair<boost::uuids::uuid,boost::uuids::uuid>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__find_equal<std::pair<boost::uuids::uuid,boost::uuids::uuid>>(uint64_t a1, void *a2, unint64_t *a3)
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
        if ((std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>(a3, (v4 + 25)) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>((v7 + 25), a3) & 0x80) == 0)
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

uint64_t std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 != v3 || (v2 = bswap64(a1[1]), v3 = bswap64(a2[1]), v2 != v3))
  {
    v4 = v2 < v3 ? -1 : 1;
    if (v4 < 0)
    {
      return 255;
    }
  }

  v5 = bswap64(*a2);
  v6 = bswap64(*a1);
  if (v5 != v6 || (v5 = bswap64(a2[1]), v6 = bswap64(a1[1]), v5 != v6))
  {
    v7 = v5 < v6 ? -1 : 1;
    if ((v7 & 0x80000000) != 0)
    {
      return v7 >> 31;
    }
  }

  v8 = bswap64(a1[2]);
  v9 = bswap64(a2[2]);
  if (v8 != v9 || (v8 = bswap64(a1[3]), v9 = bswap64(a2[3]), v8 != v9))
  {
    v11 = v8 < v9 ? -1 : 1;
    if (v11 < 0)
    {
      return 255;
    }
  }

  v12 = bswap64(a2[2]);
  v13 = bswap64(a1[2]);
  if (v12 == v13 && (v12 = bswap64(a2[3]), v13 = bswap64(a1[3]), v12 == v13))
  {
    v7 = 0;
  }

  else if (v12 < v13)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7 >> 31;
}

unint64_t ULStaticTokenHelper::staticServiceTypeById(ULStaticTokenHelper *this, uuid a2)
{
  v108[2] = *MEMORY[0x277D85DE8];
  v108[0] = this;
  v108[1] = *a2.data;
  v2 = [@"00000000-0000-0000-0000-000000000001" UTF8String];
  v3 = strlen(v2);
  v107[0] = boost::uuids::string_generator::operator()<char const*>(&v105, v2, &v2[v3]);
  v107[1] = v4;
  v107[2] = 4;
  v5 = [@"00000000-0000-0000-0000-000000000002" UTF8String];
  v6 = strlen(v5);
  v107[3] = boost::uuids::string_generator::operator()<char const*>(&v104, v5, &v5[v6]);
  v107[4] = v7;
  v107[5] = 4;
  v8 = [@"00000000-0000-0000-0000-000000000003" UTF8String];
  v9 = strlen(v8);
  v107[6] = boost::uuids::string_generator::operator()<char const*>(&v103, v8, &v8[v9]);
  v107[7] = v10;
  v107[8] = 4;
  v11 = [@"00000000-0000-0000-0000-000000000004" UTF8String];
  v12 = strlen(v11);
  v107[9] = boost::uuids::string_generator::operator()<char const*>(&v102, v11, &v11[v12]);
  v107[10] = v13;
  v107[11] = 4;
  v14 = [@"00000000-0000-0000-0000-000000000005" UTF8String];
  v15 = strlen(v14);
  v107[12] = boost::uuids::string_generator::operator()<char const*>(&v101, v14, &v14[v15]);
  v107[13] = v16;
  v107[14] = 4;
  v17 = [@"00000000-0000-0000-0000-000000000006" UTF8String];
  v18 = strlen(v17);
  v107[15] = boost::uuids::string_generator::operator()<char const*>(&v100, v17, &v17[v18]);
  v107[16] = v19;
  v107[17] = 4;
  v20 = [@"00000000-0000-0000-0000-000000000007" UTF8String];
  v21 = strlen(v20);
  v107[18] = boost::uuids::string_generator::operator()<char const*>(&v99, v20, &v20[v21]);
  v107[19] = v22;
  v107[20] = 4;
  v23 = [@"00000000-0000-0000-0000-000000000008" UTF8String];
  v24 = strlen(v23);
  v107[21] = boost::uuids::string_generator::operator()<char const*>(&v98, v23, &v23[v24]);
  v107[22] = v25;
  v107[23] = 4;
  v26 = [@"00000000-0000-0000-0000-000000000009" UTF8String];
  v27 = strlen(v26);
  v107[24] = boost::uuids::string_generator::operator()<char const*>(&v97, v26, &v26[v27]);
  v107[25] = v28;
  v107[26] = 4;
  v29 = [@"00000000-0000-0000-0000-000000000025" UTF8String];
  v30 = strlen(v29);
  v107[27] = boost::uuids::string_generator::operator()<char const*>(&v96, v29, &v29[v30]);
  v107[28] = v31;
  v107[29] = 4;
  v32 = [@"00000000-0000-0000-0000-000000000010" UTF8String];
  v33 = strlen(v32);
  v107[30] = boost::uuids::string_generator::operator()<char const*>(&v95, v32, &v32[v33]);
  v107[31] = v34;
  v107[32] = 4;
  v35 = [@"00000000-0000-0000-0000-000000000023" UTF8String];
  v36 = strlen(v35);
  v107[33] = boost::uuids::string_generator::operator()<char const*>(&v94, v35, &v35[v36]);
  v107[34] = v37;
  v107[35] = 4;
  v38 = [@"00000000-0000-0000-0000-000000000024" UTF8String];
  v39 = strlen(v38);
  v107[36] = boost::uuids::string_generator::operator()<char const*>(&v93, v38, &v38[v39]);
  v107[37] = v40;
  v107[38] = 4;
  v41 = [@"00000000-0000-0000-0000-000000000022" UTF8String];
  v42 = strlen(v41);
  v107[39] = boost::uuids::string_generator::operator()<char const*>(&v92, v41, &v41[v42]);
  v107[40] = v43;
  v107[41] = 4;
  v44 = [@"00000000-0000-0000-0000-000000000011" UTF8String];
  v45 = strlen(v44);
  v107[42] = boost::uuids::string_generator::operator()<char const*>(&v91, v44, &v44[v45]);
  v107[43] = v46;
  v107[44] = 4;
  v47 = [@"00000000-0000-0000-0000-000000000012" UTF8String];
  v48 = strlen(v47);
  v107[45] = boost::uuids::string_generator::operator()<char const*>(&v90, v47, &v47[v48]);
  v107[46] = v49;
  v107[47] = 1;
  v50 = [@"00000000-0000-0000-0000-000000000013" UTF8String];
  v51 = strlen(v50);
  v107[48] = boost::uuids::string_generator::operator()<char const*>(&v89, v50, &v50[v51]);
  v107[49] = v52;
  v107[50] = 2;
  v53 = [@"00000000-0000-0000-0000-000000000014" UTF8String];
  v54 = strlen(v53);
  v107[51] = boost::uuids::string_generator::operator()<char const*>(&v88, v53, &v53[v54]);
  v107[52] = v55;
  v107[53] = 3;
  v56 = [@"00000000-0000-0000-0000-000000000015" UTF8String];
  v57 = strlen(v56);
  v107[54] = boost::uuids::string_generator::operator()<char const*>(&v87, v56, &v56[v57]);
  v107[55] = v58;
  v107[56] = 4;
  v59 = [@"00000000-0000-0000-0000-000000000016" UTF8String];
  v60 = strlen(v59);
  v107[57] = boost::uuids::string_generator::operator()<char const*>(&v86, v59, &v59[v60]);
  v107[58] = v61;
  v107[59] = 1;
  v62 = [@"00000000-0000-0000-0000-000000000017" UTF8String];
  v63 = strlen(v62);
  v107[60] = boost::uuids::string_generator::operator()<char const*>(&v85, v62, &v62[v63]);
  v107[61] = v64;
  v107[62] = 4;
  v65 = [@"00000000-0000-0000-0000-000000000018" UTF8String];
  v66 = strlen(v65);
  v107[63] = boost::uuids::string_generator::operator()<char const*>(&v84, v65, &v65[v66]);
  v107[64] = v67;
  v107[65] = 4;
  v68 = [@"00000000-0000-0000-0000-000000000019" UTF8String];
  v69 = strlen(v68);
  v107[66] = boost::uuids::string_generator::operator()<char const*>(&v83, v68, &v68[v69]);
  v107[67] = v70;
  v107[68] = 1;
  v71 = [@"00000000-0000-0000-0000-000000000020" UTF8String];
  v72 = strlen(v71);
  v107[69] = boost::uuids::string_generator::operator()<char const*>(&v82, v71, &v71[v72]);
  v107[70] = v73;
  v107[71] = 4;
  v74 = [@"00000000-0000-0000-0000-000000000021" UTF8String];
  v75 = strlen(v74);
  v107[72] = boost::uuids::string_generator::operator()<char const*>(&v81, v74, &v74[v75]);
  v107[73] = v76;
  v107[74] = 4;
  std::unordered_map<boost::uuids::uuid,ULServiceType>::unordered_map(v106, v107, 25);
  v77 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v106, v108);
  if (v77)
  {
    v78 = v77[4] & 0xFFFFFFFFFFFFFF00;
    v79 = v77[4];
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v106);
  return v78 | v79;
}

void sub_25915F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<boost::uuids::uuid,ULServiceType>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULServiceType>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,ULServiceType> const&>(a1, a2, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULServiceType>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,ULServiceType> const&>(void *a1, void *a2, uint64_t a3)
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

void ULWifiHistogramLoader::loadWifiChannelHistogram(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int ***a4@<X3>, void **a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = a2;
  v50 = a3;
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    objc_msgSend_fetchMostRecentWifiHistogramAtLoiGroupId_beforeTime_(v7);
  }

  else
  {
    v48 = 0u;
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
  }

  *buf = xmmword_259220BF0;
  v37 = xmmword_259220C00;
  v38 = xmmword_259220C10;
  v39 = xmmword_259220C20;
  *__src = xmmword_259220C30;
  v41 = xmmword_259220C40;
  *&v42 = 13;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(a5, buf, &v42 + 1, 0xDuLL);
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (a4[1] != 6)
    {
      goto LABEL_15;
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v9 != 6)
    {
      goto LABEL_15;
    }
  }

  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 == 1953723747 && v12 == 28015)
  {
    *buf = xmmword_259220BF0;
    v37 = xmmword_259220C00;
    v38 = xmmword_259220C10;
    v39 = xmmword_259220C20;
    *__src = xmmword_259220C30;
    v41 = xmmword_259220C40;
    v42 = xmmword_259220C50;
    v43 = xmmword_259220C60;
    v44[0] = xmmword_259220C70;
    v44[1] = xmmword_259220C80;
    v44[2] = xmmword_259220C90;
    v44[3] = xmmword_259220CA0;
    v44[4] = xmmword_259220CB0;
    std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(a5, buf, v45, 0x1AuLL);
  }

LABEL_15:
  if (BYTE8(v48) == 1)
  {
    ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(&v47[8], a4, buf);
    v14 = *a5;
    if (*a5)
    {
      a5[1] = v14;
      operator delete(v14);
    }

    *a5 = *buf;
    a5[2] = v37;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWifiHistogramLoader::loadWifiChannelHistogram();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "Reloaded wifi channel histogram", buf, 2u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWifiHistogramLoader::loadWifiChannelHistogram();
  }

  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v16 = *a5;
    v17 = a5[1];
    if (*a5 != v17)
    {
      do
      {
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "channel: ", 9);
        v19 = MEMORY[0x259CA1DC0](v18, *v16);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " count: ", 8);
        v21 = MEMORY[0x259CA1DC0](v20, v16[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
        v16 += 2;
      }

      while (v16 != v17);
    }

    if ((BYTE8(v43) & 0x10) != 0)
    {
      v23 = v43;
      if (v43 < __src[1])
      {
        *&v43 = __src[1];
        v23 = __src[1];
      }

      v24 = __src[0];
    }

    else
    {
      if ((BYTE8(v43) & 8) == 0)
      {
        v22 = 0;
        v29 = 0;
LABEL_41:
        *(&__dst + v22) = 0;
        if (onceToken_MicroLocation_Default != -1)
        {
          ULWifiHistogramLoader::loadWifiChannelHistogram();
        }

        v25 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
        {
          p_dst = &__dst;
          if (v29 < 0)
          {
            p_dst = __dst;
          }

          *v30 = 68289283;
          v31 = 0;
          v32 = 2082;
          v33 = "";
          v34 = 2081;
          v35 = p_dst;
          _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi channel histogram:, Histogram:%{private, location:escape_only}s}", v30, 0x1Cu);
        }

        if (v29 < 0)
        {
          operator delete(__dst);
        }

        *buf = *MEMORY[0x277D82818];
        v27 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v37 = v27;
        *(&v37 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(*(&v41 + 1));
        }

        *(&v37 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v38);
        std::iostream::~basic_iostream();
        MEMORY[0x259CA1EE0](v44);
        goto LABEL_52;
      }

      v24 = *(&v38 + 1);
      v23 = *(&v39 + 1);
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v29 = v23 - v24;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_41;
  }

LABEL_52:
  if (BYTE8(v48) == 1)
  {
    CLMicroLocationProto::WifiHistogram::~WifiHistogram(&v47[8]);
  }
}

void sub_25915FC40(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  if (*(v3 - 136) == 1)
  {
    CLMicroLocationProto::WifiHistogram::~WifiHistogram((v3 - 184));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915FD18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(void **result, char *__src, char *a3, unint64_t a4)
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

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_113()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

id ULSettings::getFingerprintDistanceFunctionParamsForType(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      v3 = MEMORY[0x277CBEC10];
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v8 = +[ULDefaultsSingleton shared];
      v5 = [v8 defaultsDictionary];

      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWeightedEuclideanJaccardParams"];
      v7 = [v5 objectForKey:v6];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v3 = &unk_286A734F8;
        goto LABEL_17;
      }

LABEL_15:
      v3 = v7;
      v7 = v3;
      goto LABEL_17;
    }

LABEL_21:
    ULSettings::getFingerprintDistanceFunctionParamsForType(a1);
    v12 = v11;

    _Unwind_Resume(v12);
  }

  if (a1 == 3)
  {
    v9 = +[ULDefaultsSingleton shared];
    v5 = [v9 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxLikelihoodDistanceFunctionParams"];
    v7 = [v5 objectForKey:v6];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v3 = MEMORY[0x277CBEC10];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_21;
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWeightedEuclideanJaccardIndicativeAPsParams"];
  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }
  }

  v3 = &unk_286A73610;
LABEL_17:

LABEL_18:

  return v3;
}

void ULSettings::refresh(ULSettings *this)
{
  v1 = +[ULDefaultsSingleton shared];
  [v1 refresh];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_114()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULDiskUtils::removeAllTrackedTempFiles(ULDiskUtils *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULDiskUtils::removeAllTrackedTempFiles();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Tracked temp file cleanup}", buf, 0x12u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = tempFilePaths;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v5)
  {
    v7 = *v23;
    *&v6 = 68289539;
    v20 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v21 = v4;
        v10 = [v1 removeItemAtPath:v9 error:{&v21, v20}];
        v11 = v21;

        v4 = v11;
        if (v10)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDiskUtils::removeAllTrackedTempFiles();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v9;
            v14 = [v9 UTF8String];
            *buf = 68289283;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v30 = 2081;
            v31 = v14;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Removed file:, FilePath:%{private, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_21;
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDiskUtils::removeAllTrackedTempFiles();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v9;
            v16 = [v9 UTF8String];
            v17 = [v4 localizedDescription];
            v18 = v17;
            v19 = [v17 UTF8String];
            *buf = v20;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v30 = 2081;
            v31 = v16;
            v32 = 2081;
            v33 = v19;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to remove file:, FilePath:%{private, location:escape_only}s, Error: :%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

LABEL_21:
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v5);
  }
}

void ULDiskUtils::trackTempFileWithCleanup(ULDiskUtils *this, NSString *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = tempFilePaths;
  if (!tempFilePaths)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = tempFilePaths;
    tempFilePaths = v4;

    v3 = tempFilePaths;
  }

  [v3 addObject:v2];
  v6 = [tempFilePaths count];
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSaveSensitiveImagesMaxCount"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 unsignedLongValue];
  }

  else
  {
    v11 = [&unk_286A723A8 unsignedLongValue];
  }

  v12 = v11;

  if (v6 > v12)
  {
    v13 = [tempFilePaths firstObject];
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    [v14 removeItemAtPath:v13 error:0];
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDiskUtils::removeAllTrackedTempFiles();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: delete old file from disk: %@, ", &v16, 0xCu);
    }

    [tempFilePaths removeObjectAtIndex:0];
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_115()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULPowerAssertion::~ULPowerAssertion(id *this)
{
  ULPowerAssertion::releaseOSTransaction(this);
  ULPowerAssertion::releasePowerAssertion(this);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t ULPowerAssertion::releaseOSTransaction(ULPowerAssertion *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = (this + 16);
  if (*(this + 39) < 0)
  {
    v1 = *v1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v3 = +[ULTransactionManager shared];
  [v3 endTransaction:v2];

  if (onceToken_MicroLocation_Default != -1)
  {
    ULPowerAssertion::releaseOSTransaction();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#pa release os transaction for %@", &v6, 0xCu);
  }

  return 1;
}

void sub_2591610B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL ULPowerAssertion::releasePowerAssertion(IOPMAssertionID *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerAssertion::releaseOSTransaction();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = this + 4;
      if (*(this + 39) < 0)
      {
        v10 = *v10;
      }

      v14 = 136315138;
      *v15 = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#pa power assertion ID is already null for %s", &v14, 0xCu);
    }

    return 1;
  }

  v3 = IOPMAssertionRelease(v2);
  if (!v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerAssertion::releaseOSTransaction();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *this;
      v13 = this + 4;
      if (*(this + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = 67109378;
      *v15 = v12;
      *&v15[4] = 2080;
      *&v15[6] = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#pa Successfully released powerAssertionId (%u) for %s", &v14, 0x12u);
    }

    *this = 0;
    return 1;
  }

  v4 = v3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULPowerAssertion::releaseOSTransaction();
  }

  v5 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7 = *this;
    v8 = this + 4;
    if (*(this + 39) < 0)
    {
      v8 = *v8;
    }

    v14 = 67109634;
    *v15 = v7;
    *&v15[4] = 2080;
    *&v15[6] = v8;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "#pa Failed to release powerAssertionId (%u) for %s, return value: 0x%x", &v14, 0x18u);
    return 0;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_116()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULThrottle::ULThrottle(uint64_t result, double a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_117()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *CLMicroLocationAnalytics::CLMicroLocationAnalytics(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  a1[1] = a3;
  v6[0] = &unk_286A5C6E0;
  v6[1] = a1;
  v6[3] = v6;
  v7[0] = &unk_286A5C770;
  v7[1] = a1;
  v7[3] = v7;
  v8[0] = &unk_286A5C7F0;
  v8[1] = a1;
  v8[3] = v8;
  v9[0] = &unk_286A5C870;
  v9[1] = a1;
  v9[3] = v9;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(a1 + 2, v6, &v10, 4uLL);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v6[i]);
  }

  return a1;
}

void sub_2591614A0(_Unwind_Exception *a1)
{
  for (i = 96; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationAnalytics::executeWorkItems(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  for (i = *(result + 24); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v6);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void CLMicroLocationAnalytics::analyzeAssociationState(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v17, a2);
    CLMicroLocationAnalytics::analyzeAssociationStateInternal(a1, v17, &v10);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v17);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v4 = logObject_MicroLocation_Default;
    v5 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    v6 = v10;
    v7 = v11;
    if (v5)
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v11 - v10;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending CoreAnalytics com.apple.MicroLocation.AssociatedState, num events:%{public}lu}", buf, 0x1Cu);
    }

    for (; v6 != v7; ++v6)
    {
      v9 = *v6;
      AnalyticsSendEvent();
    }

    *buf = &v10;
    std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not analyzing associated state, since sending to core-analytics is disabled}", buf, 0x12u);
    }
  }
}

void sub_259161794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AnalyticsSendEventEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationAnalytics::analyzeAssociationStateInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    *buf_8 = 2082;
    *&buf_8[2] = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing associated state}", &buf, 0x12u);
  }

  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v7 = v6;
  if (v6)
  {
    objc_msgSend_getAllDistinctAssociatedStateLoiIds(v6);
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  if (v63 == v64)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeAssociationState, no LOI IDs found}", &buf, 0x12u);
    }
  }

  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeAssociationState"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = [&unk_286A72408 intValue];
  }

  v14 = v13;

  v15 = [MEMORY[0x277CBEAA8] date];
  v61 = 0uLL;
  v62 = 0;
  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(&buf);
  v16 = buf;
  v17 = *buf_8;
  while (v16 != v17)
  {
    LOBYTE(p_buf) = 0;
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(&v59, v16, v16, &p_buf);
    v16 += 3;
  }

  p_buf = &buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_buf);
  v58[0] = 0;
  v58[1] = 0;
  p_buf = v58;
  ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(&buf);
  v18 = buf;
  v19 = *buf_8;
  while (v18 != v19)
  {
    LOBYTE(v54) = 0;
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(&p_buf, v18, v18, &v54);
    v18 += 3;
  }

  v54 = &buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
  v20 = v63;
  v21 = v64;
  if (v63 == v64)
  {
LABEL_64:
    v55 = 0;
    v56 = 0;
    v54 = &v55;
    LODWORD(buf) = 2;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(&v54, &buf, &buf, &v59);
    LODWORD(buf) = 5;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(&v54, &buf, &buf, &p_buf);
    v36 = v54;
    if (v54 != &v55)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&buf, "");
        v68 = 0;
        v69 = 0;
        *&buf_8[16] = 0;
        v37 = v36[5];
        if (v37 != v36 + 6)
        {
          do
          {
            if ((v37[7] & 1) == 0)
            {
              std::string::operator=(&buf, (v37 + 4));
              v38 = *(v36 + 8);
              v39 = std::string::basic_string[abi:ne200100]<0>(v47, "");
              v51 = CLMicroLocationAnalytics::createMetricDicts(v39, &buf, v38, v47);
              if (v48 < 0)
              {
                operator delete(v47[0]);
              }

              std::vector<NSMutableDictionary * {__strong}>::push_back[abi:ne200100](&v61, &v51);
            }

            v40 = v37[1];
            if (v40)
            {
              do
              {
                v41 = v40;
                v40 = *v40;
              }

              while (v40);
            }

            else
            {
              do
              {
                v41 = v37[2];
                v32 = *v41 == v37;
                v37 = v41;
              }

              while (!v32);
            }

            v37 = v41;
          }

          while (v41 != v36 + 6);
        }

        if ((buf_8[15] & 0x80000000) != 0)
        {
          operator delete(buf);
        }

        v42 = v36[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v36[2];
            v32 = *v43 == v36;
            v36 = v43;
          }

          while (!v32);
        }

        v36 = v43;
      }

      while (v43 != &v55);
    }

    *a3 = v61;
    *(a3 + 16) = v62;
    v62 = 0;
    v61 = 0uLL;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(&v54, v55);
  }

  else
  {
    v45 = xmmword_25921C590;
    while (1)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      if (v14 >= 1)
      {
        break;
      }

      v50 = v20;
LABEL_57:
      if (v52 != v51)
      {
        CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()(&v51, &p_buf, &buf);
        if (v70 == 1)
        {
          operator new();
        }

        if ((v70 & 1) != 0 && (buf_8[15] & 0x80000000) != 0)
        {
          operator delete(buf);
        }
      }

      buf = &v51;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
      buf = &v54;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
      v20 += 16;
      if (v20 == v21)
      {
        goto LABEL_64;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 24);
      if (!v23)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v23 + 48))(v23))
      {
        break;
      }

      CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v15, ~v22);
      v25 = v24;
      CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v15, -v22);
      v27 = v26;
      v28 = (*(**(a1 + 8) + 24))(*(a1 + 8));
      v29 = v28;
      if (v28)
      {
        objc_msgSend_fetchAllAssociatedStateBetweenTimes_toTime_atLoiGroupId_(v28, v25, v27, v45);
      }

      else
      {
        buf = 0;
        *buf_8 = 0;
        *&buf_8[8] = 0;
      }

      v30 = *buf_8;
      v31 = buf;
      if (buf != *buf_8)
      {
        do
        {
          v32 = *(v31 + 48) == 1 && *(v31 + 64) == 2;
          if (v32)
          {
            std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](&v54, v31);
          }

          v31 += 72;
        }

        while (v31 != v30);
        v34 = buf;
        v33 = *buf_8;
        while (v34 != v33)
        {
          if (*(v34 + 48) == 1 && *(v34 + 64) == 5)
          {
            std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](&v51, v34);
          }

          v34 += 72;
        }
      }

      v49 = &buf;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&v49);
      if (++v22 == v14)
      {
        v50 = v20;
        if (v55 != v54)
        {
          CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()(&v54, &v59, &buf);
          if (v70 == 1)
          {
            operator new();
          }

          if ((v70 & 1) != 0 && (buf_8[15] & 0x80000000) != 0)
          {
            operator delete(buf);
          }
        }

        goto LABEL_57;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v44 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      *&buf_8[10] = 2082;
      *&buf_8[12] = "MicroLocationAnalytics";
      _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeAssociationState cancelled, Activity:%{public, location:escape_only}s}", &buf, 0x1Cu);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    buf = &v51;
    std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf = &v54;
    std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&p_buf, v58[0]);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v59, v60[0]);
  buf = &v61;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&buf);

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_259162208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, uint64_t a48, char *a49)
{
  if (*(v50 - 128) == 1 && *(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  *(v50 - 176) = &a39;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100]((v50 - 176));
  *(v50 - 176) = &a42;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100]((v50 - 176));
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a45, a46);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a48, a49);
  a48 = v50 - 224;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a48);

  v52 = *(v50 - 200);
  if (v52)
  {
    *(v50 - 192) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

void ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(std::vector<std::string> *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAssociatedStateCALoiTypes"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    memset(&v12, 0, sizeof(v12));
    std::vector<std::string>::reserve(&v12, [v6 count]);
    v15 = 0u;
    v16 = 0u;
    memset(v14, 0, sizeof(v14));
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:v14 objects:v17 count:16];
    if (v8)
    {
      v9 = **&v14[16];
      do
      {
        v10 = 0;
        do
        {
          if (**&v14[16] != v9)
          {
            objc_enumerationMutation(v7);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v14[8] + 8 * v10) UTF8String]);
          std::vector<std::string>::push_back[abi:ne200100](&v12, &__p);
          if (SHIBYTE(__p.__end_cap_.__value_) < 0)
          {
            operator delete(__p.__begin_);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:v14 objects:v17 count:16];
      }

      while (v8);
    }

    *a1 = v12;
    memset(&v12, 0, sizeof(v12));
    v17[0] = &v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  else
  {
    memset(v14, 0, 24);
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::reserve(&__p, 8uLL);
    for (i = 0; i != 8; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(v17, _ZGRN10ULSettings14SettingsTraitsINS_25AssociatedStateCALoiTypesEE12defaultValueE_[i]);
      std::vector<std::string>::push_back[abi:ne200100](&__p, v17);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    std::vector<std::string>::__vdeallocate(v14);
    *v14 = __p;
    memset(&__p, 0, sizeof(__p));
    v17[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
    *&a1->__begin_ = *v14;
    a1->__end_cap_.__value_ = *&v14[16];
    memset(v14, 0, 24);
    v17[0] = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }
}

void sub_2591626FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a13 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void **CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()@<X0>(CLMacAddress **a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (v6 == *a2)
  {
    *a4 = 0;
    *(a4 + 48) = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 1065353216;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    v18 = 0u;
    v19 = 0u;
    v20 = 1065353216;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v24, v5, v5);
      v8 = (v5 + 7);
      __p.__r_.__value_.__r.__words[0] = CLMacAddress::toUint64(v8);
      buf.__r_.__value_.__r.__words[0] = &__p;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v18, &__p, &std::piecewise_construct, &buf);
      v8 = (v8 + 12);
      std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>((v9 + 3), v8, v8);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v21, v8, v8);
      v5 = (&v8->var0 + 4);
    }

    while (v5 != v6);
    if (*(&v25 + 1) <= 1uLL)
    {
      if (*(v25 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v25 + 16), *(v25 + 24));
      }

      else
      {
        __p = *(v25 + 16);
      }

      buf.__r_.__value_.__r.__words[0] = &__p;
      *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &__p, &std::piecewise_construct, &buf, &v27) + 56) = 1;
      v12 = v19;
      if (v19)
      {
        v13 = 0;
        do
        {
          if (v12[5] > 1uLL)
          {
            ++v13;
          }

          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(&v19 + 1);
      v15 = *(&v22 + 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      *&v29 = v14;
      *(&v29 + 1) = v15;
      *a4 = buf;
      *(a4 + 40) = v13;
      *(a4 + 24) = v29;
      *(a4 + 48) = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        operator new();
      }

      *a4 = 0;
      *(a4 + 48) = 0;
    }

    std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(&v18);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v21);
    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v24);
  }

  return v16;
}

void sub_259162C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(&a16);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a22);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a28);
  _Unwind_Resume(a1);
}

id CLMicroLocationAnalytics::createMetricDicts(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v7 setObject:v8 forKeyedSubscript:@"Band"];

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [v7 setObject:v10 forKeyedSubscript:@"rtLoiType"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[3]];
  [v7 setObject:v11 forKeyedSubscript:@"NumberOfMacAddresses"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[4]];
  [v7 setObject:v12 forKeyedSubscript:@"NumberOfChannels"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[5]];
  [v7 setObject:v13 forKeyedSubscript:@"NumberOfMacAddressAppearingOnMultipleChannels"];

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    v20[0] = 68290563;
    v20[1] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2081;
    v24 = a4;
    v25 = 2082;
    v26 = v15;
    v27 = 1026;
    v28 = a3;
    v29 = 2050;
    v30 = v16;
    v31 = 2050;
    v32 = v17;
    v33 = 2050;
    v34 = v18;
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationAnalytics, analyzeAssociationState, rtGroupLoiId:%{private, location:escape_only}s, rtLoiType:%{public, location:escape_only}s, Band:%{public}d, numberOfMacAddresses:%{public}llu, NumberOfChannels:%{public}llu, NumberOfMacAddressAppearingOnMultipleChannels:%{public}llu}", v20, 0x4Au);
  }

  return v7;
}

id std::vector<NSMutableDictionary * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_25916302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeLocationOfInterestUsage(CLMicroLocationAnalytics *a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v39 = 2082;
    *&v39[2] = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing LOI usage}", buf, 0x12u);
  }

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v5 + 48))(v5))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v39 = 2082;
        *&v39[2] = "";
        *&v39[10] = 2082;
        *&v39[12] = "MicroLocationAnalytics";
        v7 = "{msg%{public}.0s:LOI usage analytics canceled, Activity:%{public, location:escape_only}s}";
        v8 = v6;
        v9 = 28;
LABEL_16:
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else
    {
      v31 = CLMicroLocationAnalytics::createLoiVisitsEvent(a1);
      if (v31)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [@"com.apple.MicroLocation.Visit" UTF8String];
          *buf = 68289282;
          *&buf[4] = 0;
          *v39 = 2082;
          *&v39[2] = "";
          *&v39[10] = 2082;
          *&v39[12] = v12;
          _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics event., Event name:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        AnalyticsSendEvent();
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      v13 = (*(**(a1 + 1) + 64))(*(a1 + 1));
      v14 = v13;
      if (v13)
      {
        objc_msgSend_fetchAllDistinctLoiGroups(v13);
      }

      else
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      v15 = v32;
      v16 = v33;
      if (v32 == v33)
      {
LABEL_43:
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [@"com.apple.MicroLocation.Location" UTF8String];
          *buf = 68289538;
          *&buf[4] = 0;
          *v39 = 2082;
          *&v39[2] = "";
          *&v39[10] = 2082;
          *&v39[12] = v27;
          *&v39[20] = 2050;
          *&v39[22] = v36 - v35;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics events., Event name:%{public, location:escape_only}s, Number of events:%{public}lu}", buf, 0x26u);
        }

        v28 = v35;
        for (i = v36; v28 != i; ++v28)
        {
          AnalyticsSendEvent();
        }
      }

      else
      {
        while (1)
        {
          v17 = *(a2 + 24);
          if (!v17)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v17 + 48))(v17))
          {
            break;
          }

          v18 = CLMicroLocationAnalytics::createLoiInformationEvent(a1, (v15 + 24));
          v19 = v18;
          if (v18)
          {
            v20 = v18;
            v21 = v36;
            if (v36 >= v37)
            {
              v23 = v36 - v35;
              if ((v23 + 1) >> 61)
              {
                std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
              }

              v24 = (v37 - v35) >> 2;
              if (v24 <= v23 + 1)
              {
                v24 = v23 + 1;
              }

              if (v37 - v35 >= 0x7FFFFFFFFFFFFFF8)
              {
                v25 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              *&v39[24] = &v35;
              if (v25)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(&v35, v25);
              }

              *buf = 0;
              *v39 = 8 * v23;
              *&v39[16] = 0;
              **v39 = v20;
              *&v39[8] = 8 * v23 + 8;
              std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(&v35, buf);
              v22 = v36;
              std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(buf);
            }

            else
            {
              *v36 = v20;
              v22 = v21 + 1;
            }

            v36 = v22;
          }

          v15 += 64;
          if (v15 == v16)
          {
            goto LABEL_43;
          }
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v30 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *v39 = 2082;
          *&v39[2] = "";
          *&v39[10] = 2082;
          *&v39[12] = "MicroLocationAnalytics";
          _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI usage analytics canceled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
        }
      }

      *buf = &v32;
      std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v35;
      std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v39 = 2082;
      *&v39[2] = "";
      v7 = "{msg%{public}.0s:not analyzing Locations of Interest usage, since sending to core-analytics is disabled}";
      v8 = v10;
      v9 = 18;
      goto LABEL_16;
    }
  }
}

id CLMicroLocationAnalytics::createLoiVisitsEvent(CLMicroLocationAnalytics *this)
{
  v43 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = [@"com.apple.MicroLocation.Visit" UTF8String];
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating analytics event., Event name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v3 = (*(**(this + 1) + 64))(*(this + 1));
  v4 = v3;
  if (v3)
  {
    objc_msgSend_fetchAllDistinctLoiGroups(v3);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  v6 = v37;
  v5 = v38;
  if (v37 == v38)
  {
    v8 = 0;
  }

  else
  {
    v7 = v37 + 4;
    do
    {
      v8 = *(v7 - 40) == 0;
      v9 = *(v7 - 40) == 0 || v7 == v38;
      v7 += 4;
    }

    while (!v9);
    while (*(v6 + 24) != 0)
    {
      v6 += 4;
      if (v6 == v38)
      {
        v6 = v38;
        goto LABEL_28;
      }
    }

    if (v6 != v38)
    {
      v10 = v6 + 4;
      if (v6 + 4 != v38)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          if (*(v10 + 24) != 0)
          {
            v11 = *v10;
            v12 = v10[1];
            *(v6 + 4) = *(v10 + 4);
            *v6 = v11;
            v6[1] = v12;
            if (*(v6 + 63) < 0)
            {
              operator delete(*(v6 + 5));
            }

            v13 = *(v10 + 40);
            *(v6 + 7) = *(v10 + 7);
            *(v6 + 40) = v13;
            *(v10 + 63) = 0;
            *(v10 + 40) = 0;
            v6 += 4;
          }

          v10 += 4;
        }

        while (v10 != v5);
        v5 = v38;
      }
    }
  }

LABEL_28:
  std::vector<ULLoiDO>::erase(&v37, v6, v5);
  memset(buf, 0, sizeof(buf));
  v42 = 1065353216;
  v15 = v37;
  v14 = v38;
  if (v37 == v38)
  {
    v17 = v37;
  }

  else
  {
    do
    {
      __p[0] = v15 + 40;
      v16 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(buf, v15 + 5, &std::piecewise_construct, __p, &v40);
      v16[5] = v16[5] + 1;
      v15 += 4;
    }

    while (v15 != v14);
    v15 = v37;
    v17 = v38;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "home");
  v40 = __p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p, &std::piecewise_construct, &v40)[5];
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "work");
  v40 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p, &std::piecewise_construct, &v40)[5];
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "airplay");
  v40 = __p;
  v20 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p, &std::piecewise_construct, &v40)[5];
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = (*(**(this + 1) + 64))(*(this + 1));
  v22 = [v21 count];
  v23 = (*(**(this + 1) + 64))(*(this + 1));
  v24 = [v23 countDistinctLoiGroups];

  v25 = [MEMORY[0x277CBEB38] dictionary];
  v26 = (v17 - v15) >> 6;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
  [v25 setObject:v27 forKeyedSubscript:@"loiCount"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18];
  [v25 setObject:v28 forKeyedSubscript:@"loiHomeCount"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
  [v25 setObject:v29 forKeyedSubscript:@"loiWorkCount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
  [v25 setObject:v30 forKeyedSubscript:@"loiAirplayCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26 - v18];
  [v25 setObject:v31 forKeyedSubscript:@"loiNotHomeCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v25 setObject:v32 forKeyedSubscript:@"hasLegacy"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v22 - v24)];
  [v25 setObject:v33 forKeyedSubscript:@"deduplicatedLoiCount"];

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(buf);
  *buf = &v37;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);

  return v25;
}

id CLMicroLocationAnalytics::createLoiInformationEvent(CLMicroLocationAnalytics *this, const uuid *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v65);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [@"com.apple.MicroLocation.Location" UTF8String];
    v6 = &v65;
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v65.__r_.__value_.__r.__words[0];
    }

    buf[0].__r_.__value_.__r.__words[0] = 68289538;
    LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v5;
    WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2082;
    *(buf[1].__r_.__value_.__r.__words + 6) = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating analytics event., Event name:%{public, location:escape_only}s, LOI Group ID:%{public, location:escape_only}s}", buf, 0x26u);
  }

  v7 = (*(**(this + 1) + 64))(*(this + 1));
  v8 = v7;
  if (v7)
  {
    objc_msgSend_fetchLoiIdEntriesInLoiGroupId_(v7);
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  v10 = v62;
  v9 = v63;
  if (v63 == v62)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v37 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v61);
      v38 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
      buf[0].__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v38;
      _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:No LOI entries for specified LOI Group ID, LOIGroupId:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v39 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v39))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v61);
      v40 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
      buf[0].__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v40;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No LOI entries for specified LOI Group ID", "{msg%{public}.0s:No LOI entries for specified LOI Group ID, LOIGroupId:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v41 = 0;
  }

  else
  {
    memset(&v61, 0, sizeof(v61));
    do
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>((v10 + 1), buf);
      std::vector<std::string>::push_back[abi:ne200100](&v61, buf);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      v10 += 8;
    }

    while (v10 != v9);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
      v13 = v65.__r_.__value_.__r.__words[0];
      boost::algorithm::join<std::vector<std::string>,char [2]>(&__p, ",", &v61);
      v14 = &v65;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      buf[0].__r_.__value_.__r.__words[0] = 68289538;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v14;
      WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2082;
      *(buf[1].__r_.__value_.__r.__words + 6) = p_p;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LOIs for LOI Group Id, LOI Group ID:%{public, location:escape_only}s, LOI IDs:%{public, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = (*(**(this + 1) + 144))(*(this + 1));
    v17 = COERCE_DOUBLE([v16 getMostRecentScanTimeForLoiGroupId:a2]);
    v19 = v18;

    memset(&__p, 0, sizeof(__p));
    v20 = v62;
    v21 = v63;
    if (v62 == v63)
    {
      v34 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = *v20;
        if (v22 >= __p.__r_.__value_.__r.__words[2])
        {
          v24 = __p.__r_.__value_.__r.__words[0];
          v25 = v22 - __p.__r_.__value_.__r.__words[0];
          v26 = (v22 - __p.__r_.__value_.__r.__words[0]) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v28 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, v29);
          }

          v30 = (v22 - __p.__r_.__value_.__r.__words[0]) >> 3;
          v31 = (8 * v26);
          v32 = (8 * v26 - 8 * v30);
          *v31 = v23;
          v22 = v31 + 1;
          memcpy(v32, v24, v25);
          v33 = __p.__r_.__value_.__r.__words[0];
          __p.__r_.__value_.__r.__words[0] = v32;
          *&__p.__r_.__value_.__r.__words[1] = v22;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v22++ = v23;
        }

        __p.__r_.__value_.__l.__size_ = v22;
        v20 += 8;
      }

      while (v20 != v21);
      v34 = __p.__r_.__value_.__r.__words[0];
      v35 = __p.__r_.__value_.__r.__words[0] + 8;
      if (__p.__r_.__value_.__l.__data_ != v22 && v35 != v22)
      {
        v42 = *__p.__r_.__value_.__l.__data_;
        v43 = (__p.__r_.__value_.__r.__words[0] + 8);
        do
        {
          v44 = *v43++;
          v45 = v44;
          if (v42 < v44)
          {
            v42 = v45;
            v34 = v35;
          }

          v35 = v43;
        }

        while (v43 != v22);
      }
    }

    v46 = cl::chrono::CFAbsoluteTimeClock::now();
    v47 = (*(**(this + 1) + 80))(*(this + 1));
    v48 = v47;
    v66 = *a2;
    v67 = 1;
    if (v47)
    {
      objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v47);
    }

    else
    {
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      *v81 = 0u;
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
      v69 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v41 = [MEMORY[0x277CBEB38] dictionary];
    if (a2->data[0])
    {
      v49 = 0;
    }

    else
    {
      v50 = 0;
      do
      {
        v51 = v50;
        if (v50 == 15)
        {
          break;
        }

        ++v50;
      }

      while (!a2->data[v51 + 1]);
      v49 = v51 > 0xE;
    }

    v52 = [MEMORY[0x277CCABB0] numberWithBool:v49];
    [v41 setObject:v52 forKeyedSubscript:@"isLoiLegacy"];

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((v63 - v62) >> 6) - 1];
    [v41 setObject:v53 forKeyedSubscript:@"deduplicatedLoiCount"];

    if (v34 != __p.__r_.__value_.__l.__size_)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithDouble:v46 - *v34];
      [v41 setObject:v54 forKeyedSubscript:@"lastSeenAge"];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithBool:v19 & 1];
    [v41 setObject:v55 forKeyedSubscript:@"hasRecordings"];

    if (v19)
    {
      v56 = [MEMORY[0x277CCABB0] numberWithDouble:v46 - v17];
      [v41 setObject:v56 forKeyedSubscript:@"lastRecordingAge"];
    }

    v57 = [MEMORY[0x277CCABB0] numberWithBool:v86];
    [v41 setObject:v57 forKeyedSubscript:@"isModelExists"];

    if (v86 == 1)
    {
      if (LODWORD(v81[0]))
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v58 = [MEMORY[0x277CCABB0] numberWithBool:BYTE8(v74)];
      [v41 setObject:v58 forKeyedSubscript:@"isModelStable"];
    }

    if (v86 == 1)
    {
      if (v83 == 1 && SHIBYTE(v82) < 0)
      {
        operator delete(v81[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[1].__r_.__value_.__r.__words[1]);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    buf[0].__r_.__value_.__r.__words[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  buf[0].__r_.__value_.__r.__words[0] = &v62;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  return v41;
}

void sub_259164588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a14 = &a17;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__int128 *std::vector<ULLoiDO>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULLoiDO *,ULLoiDO *,ULLoiDO *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 24));
        }

        v7 -= 64;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t **boost::algorithm::join<std::vector<std::string>,char [2]>@<X0>(std::string *__return_ptr a1@<X8>, std::string *__s@<X1>, uint64_t **result@<X0>)
{
  v5 = *result;
  v6 = result[1];
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

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

  for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a1, v8, &v8[v9], v9); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(__s);
    std::string::__insert_with_size<char const*,char const*>(a1, v11 + size, __s, __s + v13, v13);
    v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_25916485C(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeTriggerTypes(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing daily trigger usage}", &v12, 0x12u);
    }

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v20, a2);
    v5 = CLMicroLocationAnalytics::analyzeTriggerTypesInternal(a1, v20);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v20);
    if (v5)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if (!(*(*v6 + 48))(v6))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [@"com.apple.Microlocation.ScanEvents.daily" UTF8String];
          v12 = 68289539;
          v13 = 0;
          v14 = 2082;
          v15 = "";
          v16 = 2082;
          v17 = v11;
          v18 = 2113;
          v19 = v5;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics event, Event name:%{public, location:escape_only}s, event:%{private, location:escape_only}@}", &v12, 0x26u);
        }

        AnalyticsSendEvent();
        goto LABEL_27;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v7 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        return;
      }

      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v8 = "{msg%{public}.0s:Trigger types analytics canceled}";
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v7 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v8 = "{msg%{public}.0s:daily trigger analytics event was not created.}";
    }

    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x12u);
    goto LABEL_27;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not analyzing trigger types, since sending to core-analytics is disabled}", &v12, 0x12u);
  }
}

id CLMicroLocationAnalytics::analyzeTriggerTypesInternal(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v4, 0xFFFFFFFFLL);
  v6 = v5;
  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v4, 0);
  v8 = v7;
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsTriggerCountThreshold"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = [&unk_286A723D8 unsignedIntValue];
  }

  v14 = v13;

  v15 = *(a2 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v15 + 48))(v15))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v94 = 0;
      v95 = 2082;
      v96 = "";
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Trigger types analytics canceled}", buf, 0x12u);
    }

    v17 = 0;
  }

  else
  {
    v89 = v4;
    SpecificAnalyticsCount = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0, v6, v8);
    v91 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0, v6, v8);
    v87 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10000u, 0, 0, v6, v8);
    v86 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10001u, 0, 0, v6, v8);
    v19 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0, 0, v6, v8);
    v88 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10000u, 0x10001u, 0, v6, v8);
    v92 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0x10001u, 0, v6, v8);
    v20 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10001u, 0x10001u, 0, v6, v8);
    v85 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0x10000u, 0, v6, v8);
    v84 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10005u, 0, 0, v6, v8);
    v83 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10005u, 0, 0, v6, v8);
    v82 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10006u, 0, 0, v6, v8);
    v81 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10006u, 0, 0, v6, v8);
    v80 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10003u, 0, 0, v6, v8);
    v79 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10003u, 0, 0, v6, v8);
    v78 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0, 0x10004u, 0, 0, v6, v8);
    v21 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10004u, v6, v8);
    v75 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10004u, v6, v8);
    v76 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10003u, v6, v8);
    v74 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10003u, v6, v8);
    v73 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10002u, v6, v8);
    v72 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10002u, v6, v8);
    v71 = v21;
    v77 = [ULHomeSlamAnalyticEventAnalyzer countEventOccurrences:20 fromDate:*(a1 + 8) untilDate:v6 fromDBStore:v8];
    v90 = v14;
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:14 andEvent:15 startDate:v22 endDate:v23 withDBStore:*(a1 + 8)];
    v25 = v24;

    v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:18 andEvent:19 startDate:v26 endDate:v27 withDBStore:*(a1 + 8)];
    v29 = v28;

    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:16 andEvent:17 startDate:v30 endDate:v31 withDBStore:*(a1 + 8)];
    v33 = v32;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = v89;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SpecificAnalyticsCount];
    [v17 setObject:v34 forKeyedSubscript:@"TotalRecordings"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v91];
    [v17 setObject:v35 forKeyedSubscript:@"TotalLocalizations"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
    [v17 setObject:v36 forKeyedSubscript:@"TotalStopMotionLocalizations"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v86 + v87 + v19];
    [v17 setObject:v37 forKeyedSubscript:@"TotalMotionLocalizations"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v88];
    [v17 setObject:v38 forKeyedSubscript:@"TotalStartMotionLocalizationsWhileDisplayOn"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
    [v17 setObject:v39 forKeyedSubscript:@"TotalInMotionLocalizationsWhileDisplayOn"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
    [v17 setObject:v40 forKeyedSubscript:@"TotalStopMotionLocalizationsWhileDisplayOn"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92 + v88 + v20];
    [v17 setObject:v41 forKeyedSubscript:@"TotalMotionLocalizationsWhileDisplayOn"];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v85];
    [v17 setObject:v42 forKeyedSubscript:@"TotalStopMotionLocalizationWhileDisplayOff"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v84];
    [v17 setObject:v43 forKeyedSubscript:@"TotalRecordingPeriodicTriggers"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v83];
    [v17 setObject:v44 forKeyedSubscript:@"TotalLocalizationPeriodicTriggers"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v82];
    [v17 setObject:v45 forKeyedSubscript:@"TotalRecordingSystemTriggers"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v81];
    [v17 setObject:v46 forKeyedSubscript:@"TotalLocalizationSystemTriggers"];

    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v80];
    [v17 setObject:v47 forKeyedSubscript:@"TotalRecordingClientRequestTriggers"];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v79];
    [v17 setObject:v48 forKeyedSubscript:@"TotalLocalizationClientRequestTriggers"];

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:v77];
    [v17 setObject:v49 forKeyedSubscript:@"TotalLocalizationsWhenDisplayTurnedOn"];

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v78];
    [v17 setObject:v50 forKeyedSubscript:@"TotalLocalizationsWhenRetried"];

    *&v51 = v33;
    v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
    [v17 setObject:v52 forKeyedSubscript:@"TotalAcceleratedTriggerDuration"];

    *&v53 = v25;
    v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
    [v17 setObject:v54 forKeyedSubscript:@"MotionDuration"];

    v55 = [MEMORY[0x277CCABB0] numberWithInt:v25];
    [v17 setObject:v55 forKeyedSubscript:@"MotionDurationBounded"];

    *&v56 = v29;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
    [v17 setObject:v57 forKeyedSubscript:@"Duration"];

    v58 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    [v17 setObject:v58 forKeyedSubscript:@"DurationBounded"];

    v59 = [MEMORY[0x277CCABB0] numberWithBool:v25 > 0.0];
    [v17 setObject:v59 forKeyedSubscript:@"LowLatencyEnabled"];

    v60 = [MEMORY[0x277CCABB0] numberWithBool:v33 > 0.0];
    [v17 setObject:v60 forKeyedSubscript:@"AcceleratedTriggeringEnabled"];

    v62 = v91 + SpecificAnalyticsCount;
    if (v91 + SpecificAnalyticsCount >= v90)
    {
      v63 = v62;
      *&v61 = (v74 + v76) / v62;
      v64 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
      [v17 setObject:v64 forKeyedSubscript:@"ScanEventsWithWiFiErrorAndTotalScanEventsRatio"];

      *&v65 = (v72 + v73) / v63;
      v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
      [v17 setObject:v66 forKeyedSubscript:@"ScanEventsTimeoutAndTotalScanEventsRatio"];

      *&v67 = (v75 + v71) / v63;
      v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
      [v17 setObject:v68 forKeyedSubscript:@"ScanEventsAbortedAndTotalScanEventsRatio"];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v69 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      v94 = 0;
      v95 = 2082;
      v96 = "";
      v97 = 1026;
      v98 = v90;
      v99 = 2050;
      v100 = v86 + v87 + v19;
      _os_log_impl(&dword_258FE9000, v69, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Adding ratios to trigger analytics if appropriate, TriggerThreshold:%{public}d, TotalMotionLocalizations:%{public}lu}", buf, 0x22u);
    }
  }

  return v17;
}

uint64_t CLMicroLocationAnalytics::getSpecificAnalyticsCount(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6, double a7)
{
  v9 = (*(**(a1 + 8) + 216))(*(a1 + 8));
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a6];
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a7];
  if (v9)
  {
    objc_msgSend_fetchScanningServiceEventsForType_triggerType_displayState_scanResult_startDate_endDate_(v9);
    v12 = v15;
    v13 = v16;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return (v13 - v12) >> 4;
}

void **CLMicroLocationAnalytics::generateWiFiChannelHistogramForBlueAtlas@<X0>(CLMicroLocationAnalytics *this@<X0>, uuid a2@<0:X1, 8:X2>, uint64_t a4@<X8>)
{
  v4 = *&a2.data[8];
  v74 = *MEMORY[0x277D85DE8];
  *&v73 = this;
  *(&v73 + 1) = *a2.data;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    operator new();
  }

  memset(v43, 0, sizeof(v43));
  v44 = 1065353216;
  v7 = (*(*v4 + 80))(v4);
  v8 = v7;
  v62 = v73;
  v63 = 1;
  if (v7)
  {
    objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(v7);
  }

  else
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    memset(v66, 0, sizeof(v66));
    buf = 0u;
    v65 = 0u;
  }

  if (v72)
  {
    if (v67)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    CLMicroLocationModel::fromProtobuf(&__p, v66, v43);
    if ((v55 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      *a4 = 0;
      *(a4 + 24) = 0;
      goto LABEL_64;
    }

    v42[0] = 0;
    v42[1] = 0;
    v41 = v42;
    v9 = v53;
    v10 = v54;
    while (v9 != v10)
    {
      *v46 = *v9;
      *&v36[0] = CLMacAddress::toUint64(v46);
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(&v41, v36, v36);
      ++v9;
    }

    v13 = (*(*v4 + 176))(v4);
    std::set<unsigned long long>::set[abi:ne200100](v46, &v41);
    LOBYTE(v50) = 1;
    if (v13)
    {
      objc_msgSend_getChannelsUsedByMeasurementsAtLoiGroupID_withSourceBSSIDinSet_fromScanTime_toScanTime_(v13);
      if ((v50 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v46, v47);
LABEL_29:

    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    ULWiFiChannelHistogramAnalyzer::update(v36, &v38);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    if (ULWiFiChannelHistogramAnalyzer::isEmpty(v36))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      *a4 = 0;
      *(a4 + 24) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v46, "custom");
      ULWiFiChannelHistogramAnalyzer::getHistogram(v36, v46, &v31);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(*v46);
      }

      CLMicroLocationProto::WifiHistogram::WifiHistogram(v46);
      v15 = v31;
      v16 = v32;
      if (v31 != v32)
      {
        v17 = v48;
        do
        {
          v18 = v49;
          if (v17 >= v49)
          {
            if (v49 == v50)
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v47);
              v18 = v49;
            }

            v49 = v18 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ChannelAndCount>::New();
          }

          v48 = v17 + 1;
          v19 = v47[v17++];
          v20 = *v15;
          v21 = *(v19 + 24);
          *(v19 + 24) = v21 | 1;
          *(v19 + 16) = v20;
          v22 = v15[1];
          *(v19 + 24) = v21 | 3;
          *(v19 + 8) = v22;
          v15 += 2;
        }

        while (v15 != v16);
      }

      *v45 = cl::chrono::CFAbsoluteTimeClock::now();
      v23 = v34;
      if (v34 >= v35)
      {
        v24 = std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(&v33, v45, &v73, v46);
      }

      else
      {
        ULWiFiHistogramDO::ULWiFiHistogramDO(v34, v45, &v73, v46);
        v24 = v23 + 72;
      }

      v34 = v24;
      v25 = (*(*v4 + 160))(v4);
      v26 = [v25 insertDataObjects:&v33 atLoiUUID:&v73];

      if (v26)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v27 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          operator new();
        }

        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(a4, v31, v32, (v32 - v31) >> 3);
        v28 = 1;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v29 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        v28 = 0;
        *a4 = 0;
      }

      *(a4 + 24) = v28;
      CLMicroLocationProto::WifiHistogram::~WifiHistogram(v46);
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }
    }

    *v46 = &v33;
    std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](v46);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v36);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v41, v42[0]);
LABEL_64:
    if (v61 < 0)
    {
      operator delete(v60);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v57);
    *v46 = &v56;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v46);
    if (v55 == 1 && v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v52);
    goto LABEL_72;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  *a4 = 0;
  *(a4 + 24) = 0;
LABEL_72:
  if (v72 == 1)
  {
    if (v69 == 1 && SHIBYTE(v68) < 0)
    {
      operator delete(*(&v67 + 1));
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v66);
  }

  return std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v43);
}

void sub_2591664E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  operator delete(v50);

  CLMicroLocationProto::WifiHistogram::~WifiHistogram(&a43);
  if (__p)
  {
    operator delete(__p);
  }

  a43 = &a16;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&a43);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a19);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a28, a29);
  CLMicroLocationModel::~CLMicroLocationModel(&a49);
  std::optional<ULModelDO>::~optional(&STACK[0x290]);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeModelLoiTypes(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  v3 = CLMicroLocationAnalytics::analyzeModelLoiTypesInternal(a1, v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
  if (v3 && ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    AnalyticsSendEvent();
  }
}

id CLMicroLocationAnalytics::analyzeModelLoiTypesInternal(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = *(a2 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      *v49 = "MicroLocationAnalytics";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeModelLoiTypes cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
    goto LABEL_55;
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeWiFiChannels"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = [&unk_286A723C0 intValue];
  }

  v14 = v13;

  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v8, -v14);
  v16 = v15;
  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v20 unsignedIntValue];
  }

  else
  {
    [&unk_286A723F0 unsignedIntValue];
  }

  v21 = (*(**(a1 + 8) + 144))(*(a1 + 8));
  v22 = v21;
  if (v21)
  {
    objc_msgSend_selectAllScanningLOITypesFromTime_withLimit_(v21, v16);
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  v24 = v42;
  v23 = v43;
  if (v42 != v43)
  {
    v25 = v42;
    while (1)
    {
      v26 = *(v25 + 23);
      if (v26 < 0)
      {
        if (*(v25 + 8) == 4)
        {
          v27 = *v25;
LABEL_26:
          if (*v27 == 1701670760)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v27 = v25;
        if (v26 == 4)
        {
          goto LABEL_26;
        }
      }

      v25 += 24;
      if (v25 == v43)
      {
        v25 = v43;
LABEL_29:
        v28 = v25 != v43;
        v29 = v42;
        while (2)
        {
          v30 = *(v29 + 23);
          if (v30 < 0)
          {
            if (*(v29 + 8) != 4)
            {
              goto LABEL_36;
            }

            v31 = *v29;
          }

          else
          {
            v31 = v29;
            if (v30 != 4)
            {
              goto LABEL_36;
            }
          }

          if (*v31 == 1802661751)
          {
            goto LABEL_38;
          }

LABEL_36:
          v29 += 24;
          if (v29 != v43)
          {
            continue;
          }

          break;
        }

        v29 = v43;
LABEL_38:
        while (2)
        {
          v32 = *(v24 + 23);
          if (v32 < 0)
          {
            if (*(v24 + 8) != 7)
            {
              goto LABEL_47;
            }

            v33 = *v24;
          }

          else
          {
            v33 = v24;
            if (v32 != 7)
            {
              goto LABEL_47;
            }
          }

          v34 = *v33;
          v35 = *(v33 + 3);
          if (v34 == 1886546273 && v35 == 2036427888)
          {
            goto LABEL_50;
          }

LABEL_47:
          v24 += 24;
          if (v24 == v43)
          {
            v24 = v43;
            goto LABEL_50;
          }

          continue;
        }
      }
    }
  }

  v28 = 0;
  v29 = v42;
LABEL_50:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v37 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v46 = 2082;
    v47 = "";
    v48 = 1025;
    *v49 = v28;
    *&v49[4] = 1025;
    *&v49[6] = v29 != v43;
    v50 = 1025;
    v51 = v24 != v43;
    _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending Model LOI Types event, foundHome:%{private}hhd, foundWork:%{private}hhd, foundAirPlay:%{private}hhd}", buf, 0x24u);
  }

  v38 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  [v4 setObject:v38 forKeyedSubscript:@"foundHome"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:v29 != v23];
  [v4 setObject:v39 forKeyedSubscript:@"foundWork"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:v24 != v23];
  [v4 setObject:v40 forKeyedSubscript:@"foundAirPlay"];

  v7 = v4;
  *buf = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);

LABEL_55:

  return v7;
}

uint64_t *std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259166E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>,std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::__value_func[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_259166F24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_118()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO const&>(a1, a2);
  }

  else
  {
    std::vector<ULAssociatedStateDO>::__construct_one_at_end[abi:ne200100]<ULAssociatedStateDO const&>(a1, a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

__n128 std::vector<ULAssociatedStateDO>::__construct_one_at_end[abi:ne200100]<ULAssociatedStateDO const&>(uint64_t a1, __int128 *a2)
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

  result = *(a2 + 24);
  v7 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 40) = v7;
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(a1, v6);
  }

  v7 = 72 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v20;
    v10 = v21;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v12;
  *(v7 + 56) = v11;
  *&v21 = v10 + 72;
  v13 = *(a1 + 8);
  v14 = v9 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(&v19);
  return v18;
}

void sub_259167254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::join<std::unordered_set<std::string>,char [2]>@<X0>(uint64_t result@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v3 = *(result + 16);
  *&a3->__r_.__value_.__r.__words[1] = 0uLL;
  a3->__r_.__value_.__r.__words[0] = 0;
  if (v3)
  {
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = (v3 + 2);
    }

    else
    {
      v7 = v3[2];
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = v3[3];
    }

    for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, a3, v7, &v7[v8], v8); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, v14 + v13, v16, &v16[v17], v17))
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      v9 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v9 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = a3->__r_.__value_.__r.__words[0];
      }

      if (v9 >= 0)
      {
        size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      v12 = strlen(a2);
      std::string::__insert_with_size<char const*,char const*>(a3, v10 + size, a2, a2 + v12, v12);
      v13 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = a3->__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = a3->__r_.__value_.__l.__size_;
      }

      v15 = *(v3 + 39);
      if (v15 >= 0)
      {
        v16 = (v3 + 2);
      }

      else
      {
        v16 = v3[2];
      }

      if (v15 >= 0)
      {
        v17 = *(v3 + 39);
      }

      else
      {
        v17 = v3[3];
      }
    }
  }

  return result;
}

void sub_259167368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2591675C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259167688(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::set<int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

uint64_t std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_259167A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_259167BF4(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::string::__insert_with_size<char const*,char const*>(std::string *this, uint64_t a2, std::string *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && (&v9->__r_.__value_.__l.__data_ + size + 1) > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<char const*,char const*>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_259167D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_with_sentinel[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_259167DA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_259167F0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(void **a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULLoiDO *,ULLoiDO *,ULLoiDO *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = v5[1];
      *(a4 + 32) = *(v5 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      if (*(a4 + 63) < 0)
      {
        operator delete(*(a4 + 40));
      }

      v9 = *(v5 + 40);
      *(a4 + 56) = *(v5 + 7);
      *(a4 + 40) = v9;
      *(v5 + 63) = 0;
      *(v5 + 40) = 0;
      v5 += 4;
      a4 += 64;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(uint64_t *a1, void *a2, _OWORD *a3, CLMicroLocationProto::WifiHistogram *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v8 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiHistogramDO>>(a1, v8);
  }

  v15 = 0;
  v16 = 72 * v4;
  ULWiFiHistogramDO::ULWiFiHistogramDO(72 * v4, a2, a3, a4);
  v17 = 72 * v4 + 72;
  v9 = a1[1];
  v10 = 72 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULWiFiHistogramDO>,ULWiFiHistogramDO*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(&v15);
  return v14;
}

void sub_259168364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591683D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C6E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationAnalytics::analyzeAssociationState(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259168518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C770;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationAnalytics::analyzeLocationOfInterestUsage(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_25916872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C7F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationAnalytics::analyzeTriggerTypes(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2591688C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C870;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationAnalytics::analyzeModelLoiTypes(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_259168A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::string const&,BOOL>();
  }

  return result;
}

void sub_259168BEC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__construct_node<int,std::map<std::string,BOOL>&>();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
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

void sub_259168DA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,BOOL>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,BOOL>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL>,std::__tree_node<std::__value_type<std::string,BOOL>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL>,std::__tree_node<std::__value_type<std::string,BOOL>,void *> *,long>>>(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::pair<std::string const,BOOL> const&>();
  }

  return result;
}

void sub_259168FC0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,BOOL>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_259169290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259169358(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsNumDaysToKeepEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsNumDaysToKeepEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72420 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsNumValidDaysForPurging>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsNumValidDaysForPurging"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72450 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsMaxEntriesInAppearanceMap>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsMaxEntriesInAppearanceMap"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72438 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(CLMicroLocationAnchorAppearanceMap *this)
{
  v2 = ULSettings::get<ULSettings::AdaptiveAnchorsNumDaysToKeepEnabled>();
  valid = ULSettings::get<ULSettings::AdaptiveAnchorsNumValidDaysForPurging>();
  v4 = ULSettings::get<ULSettings::AdaptiveAnchorsMaxEntriesInAppearanceMap>();
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 10) = v2;
  *(this + 11) = valid;
  *(this + 6) = v4;
}

void CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(CLMicroLocationAnchorAppearanceMap *this, const CLMicroLocationProto::anchorAppearancesVector *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(this);
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(a2 + 1);
    for (i = 8 * v4; i; i -= 8)
    {
      v7 = *v5;
      v8 = *(*v5 + 24);
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] != 16)
        {
LABEL_9:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13[0]) = 0;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf Anchor Appearance struct does not have a valid device ID", v13, 2u);
          }

          goto LABEL_13;
        }

        v8 = *v8;
      }

      else if (v9 != 16)
      {
        goto LABEL_9;
      }

      v15 = *v8;
      v10 = *(v7 + 32);
      v11 = *(v7 + 8);
      v13[0] = v15;
      v13[1] = v11;
      v14 = v10;
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(this, v13, v13);
LABEL_13:
      ++v5;
    }
  }
}

void CLMicroLocationAnchorAppearanceMap::toProtobuf(CLMicroLocationAnchorAppearanceMap *this@<X0>, int *a2@<X8>)
{
  CLMicroLocationProto::anchorAppearancesVector::anchorAppearancesVector(a2);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2));
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::AnchorAppearance>::New();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        CLMicroLocationProto::AnchorAppearance::AnchorAppearance(v13);
        v14 = *(v4 + 2);
        v10 = *(v4 + 12);
        v16 |= 7u;
        v15 = v10;
        CLMicroLocationProto::AnchorAppearance::CopyFrom(v9, v13);
        CLMicroLocationProto::AnchorAppearance::~AnchorAppearance(v13);
        *(v9 + 40) |= 8u;
        v11 = *(v9 + 24);
        if (v11 == v5)
        {
          operator new();
        }

        if (*(v11 + 23) < 0)
        {
          v11[1] = 16;
          v11 = *v11;
        }

        else
        {
          *(v11 + 23) = 16;
        }

        *v11 = *(v4 + 1);
        *(v11 + 16) = 0;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "Got nullptr from CLMicroLocationProto add_anchorappearances", v13, 2u);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }
}

double *CLMicroLocationAnchorAppearanceMap::updateSeenAnchor(void *a1, void *a2, double a3, double a4)
{
  v13 = *MEMORY[0x277D85DE8];
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, a2);
  if (result)
  {
    result[5] = a4;
    *(result + 12) = 0;
  }

  else
  {
    v9 = *a2;
    v10 = a3;
    v11 = a4;
    v12 = 0;
    return std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(a1, &v9, &v9);
  }

  return result;
}

void CLMicroLocationAnchorAppearanceMap::updateSeenAnchors(void *updated, void *a2, int a3, double a4, double a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = updated[3];
  if (a3)
  {
    for (i = updated[2]; i; i = *i)
    {
      if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, i + 2))
      {
        __src = i + 2;
        v11 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(updated, i + 2, &std::piecewise_construct, &__src);
        ++*(v11 + 12);
      }
    }
  }

  for (j = a2[2]; j; j = *j)
  {
    CLMicroLocationAnchorAppearanceMap::updateSeenAnchor(updated, j + 2, a4, a5);
  }

  v13 = updated[2];
  v14 = updated[3];
  v15 = v14;
  if (v13)
  {
    do
    {
      if (*(v13 + 48) >= *(updated + 11))
      {
        v13 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(updated, v13);
      }

      else
      {
        v13 = *v13;
      }
    }

    while (v13);
    v15 = updated[3];
  }

  v16 = updated[6];
  v17 = v15 - v16;
  if (v15 > v16 && v16 != 0)
  {
    __src = 0;
    *v42 = 0;
    *&v42[8] = 0;
    std::vector<double>::reserve(&__src, v15);
    v39 = v14;
    v19 = updated[2];
    if (v19)
    {
      v20 = *v42;
      do
      {
        if (v20 >= *&v42[8])
        {
          v21 = __src;
          v22 = v20 - __src;
          v23 = (v20 - __src) >> 3;
          v24 = v23 + 1;
          if ((v23 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v25 = *&v42[8] - __src;
          if ((*&v42[8] - __src) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v26);
          }

          v27 = v23;
          v28 = (8 * v23);
          v29 = &v28[-v27];
          *v28 = v19[5];
          v20 = (v28 + 1);
          memcpy(v29, v21, v22);
          v30 = __src;
          __src = v29;
          *v42 = v20;
          *&v42[8] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v20 = v19[5];
          v20 += 8;
        }

        *v42 = v20;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      v20 = *v42;
    }

    v31 = 126 - 2 * __clz((v20 - __src) >> 3);
    v32 = v20 == __src ? 0 : v31;
    std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(__src, v20, &v40, v32, 1);
    v14 = v39;
    v33 = __src;
    v34 = updated[2];
    if (!v34 || !v17)
    {
      goto LABEL_47;
    }

    v35 = *(__src + updated[6] - 1);
    do
    {
      if (*(v34 + 40) <= v35)
      {
        v34 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(updated, v34);
        --v17;
        if (!v34)
        {
          break;
        }
      }

      else
      {
        v34 = *v34;
        if (!v34)
        {
          break;
        }
      }
    }

    while (v17);
    v33 = __src;
    if (__src)
    {
LABEL_47:
      *v42 = v33;
      operator delete(v33);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
  }

  v36 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v37 = a2[3];
    v38 = updated[3];
    __src = 68290307;
    *v42 = 2082;
    *&v42[2] = "";
    *&v42[10] = 2049;
    *&v42[12] = v9;
    v43 = 2049;
    v44 = v37;
    v45 = 2049;
    v46 = v14;
    v47 = 2049;
    v48 = v15;
    v49 = 2049;
    v50 = v38;
    _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updateSeenAnchors, Anchors map initial size:%{private}lu, Received daily IDS ID set size:%{private}lu, Size with new anchors:%{private}lu, Size after purging:%{private}lu, Size after max entries limit:%{private}lu}", &__src, 0x44u);
  }
}

void sub_25916A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationAnchorAppearanceMap::isAnchorValid(uint64_t a1, uint64_t a2, double *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 8) - 5) > 1)
  {
    return 1;
  }

  if (*(a2 + 40) != 1)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, &v9);
  if (!result)
  {
    return result;
  }

  if ((v7 = *(result + 32), v7 <= *a2) && ((v8 = *(result + 40), *a2 <= v8) || *(result + 48) < *(a1 + 40)) && v7 <= *a3 && (*a3 <= v8 || *(result + 48) < *(a1 + 40)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void *CLMicroLocationAnchorAppearanceMap::updateAnchorIdSetFromMeasurements(void *result, void *a2)
{
  v3 = result;
  v4 = a2[14];
  v5 = a2[15];
  while (v4 != v5)
  {
    result = std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v3, (v4 + 12), (v4 + 12));
    v4 += 32;
  }

  v7 = a2[17];
  v6 = a2[18];
  while (v7 != v6)
  {
    result = std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v3, (v7 + 12), (v7 + 12));
    v7 += 32;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_119()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(uint64_t result, double *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v57 = *(a2 - 1);
        v58 = *v9;
        if (v57 > *v9)
        {
          *v9 = v57;
          *(a2 - 1) = v58;
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
      v59 = v9 + 1;
      v60 = v9[1];
      v61 = v9 + 2;
      v62 = v9[2];
      v63 = *v9;
      if (v60 <= *v9)
      {
        if (v62 <= v60)
        {
          goto LABEL_121;
        }

        *v59 = v62;
        *v61 = v60;
        v64 = v9;
        v65 = v9 + 1;
        v66 = v60;
        if (v62 > v63)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v64 = v9;
        v65 = v9 + 2;
        v66 = *v9;
        if (v62 <= v60)
        {
          *v9 = v60;
          v9[1] = v63;
          v64 = v9 + 1;
          v65 = v9 + 2;
          v66 = v63;
          if (v62 <= v63)
          {
LABEL_121:
            v60 = v62;
            goto LABEL_122;
          }
        }

LABEL_113:
        *v64 = v62;
        *v65 = v63;
        v60 = v66;
      }

LABEL_122:
      v80 = *(a2 - 1);
      if (v80 <= v60)
      {
        return result;
      }

      *v61 = v80;
      *(a2 - 1) = v60;
      v76 = *v61;
      v81 = *v59;
      goto LABEL_139;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v49 = v9 + 2;
      v50 = v9[2];
      v51 = *v9;
      if (v48 <= *v9)
      {
        if (v50 <= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          *v47 = v50;
          *v49 = v48;
          v52 = v9;
          v53 = v9 + 1;
          v54 = v50;
          v55 = v51;
          v56 = v48;
          if (v50 > v51)
          {
            goto LABEL_128;
          }

          v54 = v51;
          v51 = v50;
          v50 = v48;
        }
      }

      else
      {
        if (v50 > v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          v55 = v9[1];
          v56 = *v9;
          goto LABEL_128;
        }

        *v9 = v48;
        v9[1] = v51;
        v52 = v9 + 1;
        v53 = v9 + 2;
        v54 = v48;
        v55 = v50;
        v56 = v51;
        if (v50 <= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_128:
          *v52 = v50;
          *v53 = v51;
          v51 = v55;
          v50 = v56;
        }
      }

      v83 = v9[3];
      if (v83 <= v50)
      {
        v50 = v9[3];
      }

      else
      {
        v9[2] = v83;
        v9[3] = v50;
        if (v83 > v51)
        {
          *v47 = v83;
          *v49 = v51;
          if (v83 > v54)
          {
            *v9 = v83;
            v9[1] = v54;
          }
        }
      }

      v84 = *(a2 - 1);
      if (v84 <= v50)
      {
        return result;
      }

      v9[3] = v84;
      *(a2 - 1) = v50;
      v85 = v9[2];
      v76 = v9[3];
      if (v76 <= v85)
      {
        return result;
      }

      v9[2] = v76;
      v9[3] = v85;
      v81 = v9[1];
LABEL_139:
      if (v76 <= v81)
      {
        return result;
      }

      v9[1] = v76;
      v9[2] = v81;
LABEL_141:
      v86 = *v9;
      if (v76 > *v9)
      {
        *v9 = v76;
        *(v9 + 1) = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v67 = v9 + 1;
      v69 = v9 == a2 || v67 == a2;
      if (a5)
      {
        if (!v69)
        {
          v70 = 0;
          v71 = v9;
          do
          {
            v73 = *v71;
            v72 = v71[1];
            v71 = v67;
            if (v72 > v73)
            {
              v74 = v70;
              while (1)
              {
                *(v9 + v74 + 8) = v73;
                if (!v74)
                {
                  break;
                }

                v73 = *(v9 + v74 - 8);
                v74 -= 8;
                if (v73 >= v72)
                {
                  v75 = (v9 + v74 + 8);
                  goto LABEL_99;
                }
              }

              v75 = v9;
LABEL_99:
              *v75 = v72;
            }

            v67 = v71 + 1;
            v70 += 8;
          }

          while (v71 + 1 != a2);
        }
      }

      else if (!v69)
      {
        do
        {
          v78 = *v8;
          v77 = v8[1];
          v8 = v67;
          if (v77 > v78)
          {
            v79 = v67;
            do
            {
              *v79 = v78;
              v78 = *(v79 - 2);
              --v79;
            }

            while (v78 < v77);
            *v79 = v77;
          }

          ++v67;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 <= *v9)
      {
        if (v15 > v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 > *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 > v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 > v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 <= v25)
      {
        if (v26 > v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 > v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 > v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 > v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v31 = v13[1];
      v30 = v13 + 1;
      v32 = v31;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v31 <= v33)
      {
        if (v34 > v32)
        {
          *v30 = v34;
          *(a2 - 3) = v32;
          v35 = v9[2];
          if (*v30 > v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 > v32)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v32;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 > v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 <= *v23)
      {
        if (v39 > v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 > v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 <= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 <= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 > *v13)
    {
      if (v15 > v18)
      {
        *v13 = v15;
        goto LABEL_38;
      }

      *v13 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 > v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 <= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v13;
    if (*v9 <= *v13)
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 <= *v9)
  {
    if (v46 <= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v76 = v9[1];
    goto LABEL_141;
  }

  if (v46 <= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v82 = *(a2 - 1);
    if (v82 <= v44)
    {
      return result;
    }

    v9[1] = v82;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

double *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*(a2 - 1) >= *a1)
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

    while (*v4 >= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v5 >= v3);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 < v3);
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v10 >= v3);
      do
      {
        v11 = *--a2;
        v12 = v11;
      }

      while (v11 < v3);
      v9 = v12;
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

double *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v5 > v4);
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

      v9 = *--a2;
    }

    while (v9 <= v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (v8 <= v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while (v13 > v4);
      do
      {
        v14 = *--v12;
        v15 = v14;
      }

      while (v14 <= v4);
      v10 = v15;
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 > *a1)
      {
        if (v18 <= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v44 = *(a2 - 1);
          if (v44 <= v16)
          {
            return 1;
          }

          a1[1] = v44;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 <= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_67:
      v48 = *a1;
      if (v33 > *a1)
      {
        *a1 = v33;
        *(a1 + 1) = v48;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v6 = a1 + 2;
      v7 = a1[2];
      v8 = *a1;
      if (v5 <= *a1)
      {
        if (v7 <= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_57;
        }

        *v4 = v7;
        *v6 = v5;
        v9 = a1;
        v10 = a1 + 1;
        v11 = v7;
        v12 = v8;
        v13 = v5;
        if (v7 <= v8)
        {
          v11 = v8;
          v8 = v7;
          v7 = v5;
LABEL_57:
          v45 = a1[3];
          if (v45 <= v7)
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v45;
            a1[3] = v7;
            if (v45 > v8)
            {
              *v4 = v45;
              *v6 = v8;
              if (v45 > v11)
              {
                *a1 = v45;
                a1[1] = v11;
              }
            }
          }

          v46 = *(a2 - 1);
          if (v46 <= v7)
          {
            return 1;
          }

          a1[3] = v46;
          *(a2 - 1) = v7;
          v47 = a1[2];
          v33 = a1[3];
          if (v33 <= v47)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v47;
          v43 = a1[1];
LABEL_65:
          if (v33 <= v43)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v43;
          goto LABEL_67;
        }
      }

      else if (v7 <= v5)
      {
        *a1 = v5;
        a1[1] = v8;
        v9 = a1 + 1;
        v10 = a1 + 2;
        v11 = v5;
        v12 = v7;
        v13 = v8;
        if (v7 <= v8)
        {
          v11 = v5;
          goto LABEL_57;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v7;
      *v10 = v8;
      v8 = v12;
      v7 = v13;
      goto LABEL_57;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 <= *a1)
    {
      if (v28 <= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 <= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 <= v26)
        {
          return 1;
        }

        *v27 = v42;
        *(a2 - 1) = v26;
        v33 = *v27;
        v43 = *v25;
        goto LABEL_65;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 <= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 <= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 > *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v19 = a1 + 2;
  v20 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 > *a1)
  {
    v23 = a1;
    v24 = a1 + 2;
    if (v20 <= v21)
    {
      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
      if (v20 <= v22)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    *v23 = v20;
    *v24 = v22;
    goto LABEL_29;
  }

  if (v20 > v21)
  {
    a1[1] = v20;
    *v19 = v21;
    v23 = a1;
    v24 = a1 + 1;
    if (v20 > v22)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v19;
    if (*v34 > *v19)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= v37)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v19 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

double *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(double *a1, double *a2, double *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(a1, a4, v8, v11--);
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
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(a1, a4, v8, a1);
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
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(void *a1, void *a2, uint64_t a3)
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

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, __int128 **a4)
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

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(uint64_t a1@<X0>, uint64_t a2@<X1>, CLMicroLocationFingerprintPool *a3@<X2>, uuid *a4@<X3>, uint64_t a5@<X8>)
{
  v233 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v6 + 48))(v6))
  {
    *a5 = 0;
    *(a5 + 344) = 0;
    return;
  }

  v232 = 0uLL;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  *&v232 = boost::uuids::random_generator_pure::operator()(buf);
  *(&v232 + 1) = v9;
  boost::uuids::detail::random_provider_base::destroy(buf);
  CLMicroLocationModel::CLMicroLocationModel(&v189);
  v188 = 0;
  v186 = &v187;
  v187 = 0;
  v182 = 0;
  LOBYTE(v183.var0) = 0;
  v184 = 0;
  v179 = 0;
  v180 = 0;
  v178 = 0;
  v181 = 0;
  v185 = -3.4028e38;
  v10 = std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v231, a1);
  CLMicroLocationBlueAtlasAlgorithms::getBlueAtlasScanningData(v10, a2, a4, &v232, v175);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v231);
  v11 = *(a1 + 24);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v11 + 48))(v11) & 1) != 0 || (v177 & 1) == 0)
  {
    *a5 = 0;
    *(a5 + 344) = 0;
LABEL_172:
    if (v177 == 1)
    {
      *buf = &v176;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = v175;
      std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    if (v178)
    {
      v179 = v178;
      operator delete(v178);
    }

    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(&v186, v187);
    if (v207 < 0)
    {
      operator delete(v206);
    }

    if (v204)
    {
      v205 = v204;
      operator delete(v204);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v203);
    *buf = &v202;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v194 == 1)
    {
      if (v193[0])
      {
        v193[1] = v193[0];
        operator delete(v193[0]);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v192);
    return;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::__tuple_impl(&v169, v175);
  v12 = v174;
  if (!v174)
  {
LABEL_158:
    v189 = 0x300000005;
    v190 = 1;
    v191 = 1;
    v195 = v12;
    v196 = -1227133513 * ((v170 - v169) >> 5);
    v197 = v196;
    v198 = 0;
    v199 = (v179 - v178) >> 3;
    v201 = 0;
    v200 = 0;
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(v193, &v178);
    *v229.data = 0;
    *&v229.data[8] = 0;
    *buf = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    *v229.data = boost::uuids::random_generator_pure::operator()(buf);
    *&v229.data[8] = v139;
    boost::uuids::detail::random_provider_base::destroy(buf);
    v141 = v169;
    for (i = v170; v141 != i; v141 = (v141 + 224))
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(buf, v141);
      CLMicroLocationModel::addFingerprint(&v189, buf, &v229, a3);
      CLMicroLocationModel::addRecording(&v189, &v229, &buf[40]);
      *&v167 = &v219 + 8;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v167);
      if (*&v218[8])
      {
        *&v218[16] = *&v218[8];
        operator delete(*&v218[8]);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v213);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v211);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
    }

    CLMicroLocationBlueAtlasAlgorithms::validateBlueAtlasModelQuality(&v189, v140);
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN5boost5uuids4uuidE20CLMicroLocationModelNS_6vectorI28ULMapLabelDOAndLabelObjectIDNS_9allocatorIS8_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS5_S6_SB_EJEJEJRS5_RS6_RSB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(buf, &v232, &v189, v171);
    v143 = *&buf[16];
    *a5 = *buf;
    *(a5 + 16) = v143;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a5 + 32, &buf[32]);
    *(a5 + 72) = *&v211[8];
    *(a5 + 88) = 0;
    *(a5 + 152) = 0;
    if (v217 == 1)
    {
      *(a5 + 88) = v212;
      *(a5 + 104) = v213;
      v213 = 0;
      v212 = 0uLL;
      v144 = v215;
      *(a5 + 112) = v214;
      *(a5 + 128) = v144;
      *(a5 + 144) = v216;
      *(a5 + 152) = 1;
    }

    *(a5 + 160) = *v218;
    *(a5 + 172) = *&v218[12];
    *(a5 + 192) = v219;
    *(a5 + 208) = v220;
    v219 = 0uLL;
    v220 = 0;
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a5 + 216, v221);
    v145 = v223;
    *(a5 + 256) = v221[5];
    *(a5 + 264) = v222;
    *(a5 + 280) = v145;
    v222 = 0uLL;
    *(a5 + 288) = v224;
    *(a5 + 304) = v225;
    v223 = 0;
    v224 = 0uLL;
    v225 = 0;
    *(a5 + 312) = v226;
    *(a5 + 320) = v227;
    *(a5 + 336) = v228;
    v227 = 0uLL;
    v228 = 0;
    *(a5 + 344) = 1;
    *&v167 = &v227;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v167);
    if (SHIBYTE(v225) < 0)
    {
      operator delete(v224);
    }

    if (v222)
    {
      *(&v222 + 1) = v222;
      operator delete(v222);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v221);
    *&v167 = &v219;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v167);
    if (v217 == 1 && v212)
    {
      *(&v212 + 1) = v212;
      operator delete(v212);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf[32]);
    *buf = v171;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v169;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_172;
  }

  v13 = v169;
  for (j = v170; v13 != j; v13 = (v13 + 224))
  {
    for (k = *(v13 + 2); k; k = *k)
    {
      if (*(k + 6) == 1)
      {
        if (*(k + 14))
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        *v229.data = k[4];
        v15 = *(k + 7);
        *buf = &v229;
        v16 = std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v186, v229.data, &std::piecewise_construct, buf);
        v17 = v16;
        v19 = v16[6];
        v18 = v16[7];
        if (v19 >= v18)
        {
          v21 = v16[5];
          v22 = v19 - v21;
          v23 = (v19 - v21) >> 2;
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v25 = v18 - v21;
          if (v25 >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>((v16 + 5), v26);
          }

          v27 = (v19 - v21) >> 2;
          v28 = (4 * v23);
          v29 = (4 * v23 - 4 * v27);
          *v28 = v15;
          v20 = v28 + 1;
          memcpy(v29, v21, v22);
          v30 = v17[5];
          v17[5] = v29;
          v17[6] = v20;
          v17[7] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v19 = v15;
          v20 = v19 + 4;
        }

        v17[6] = v20;
      }
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
  }

  v31 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = v188;
    _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num unique APs:%{public}lu}", buf, 0x1Cu);
  }

  v32 = +[ULDefaultsSingleton shared];
  v33 = [v32 defaultsDictionary];

  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAppearanceRateThresholds"];
  v35 = [v33 objectForKey:v34];
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v35, buf);
    v229 = *buf;
    v36 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33BlueAtlasAppearanceRateThresholdsEE12defaultValueE_, 2uLL, buf);
    v36 = *&buf[16];
    v229 = *buf;
  }

  v230 = v36;

  v37 = +[ULDefaultsSingleton shared];
  v38 = [v37 defaultsDictionary];

  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAppearanceRateScores"];
  v40 = [v38 objectForKey:v39];
  if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v40, buf);
    v151 = *buf;
    v167 = *buf;
    v41 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_29BlueAtlasAppearanceRateScoresEE12defaultValueE_, 2uLL, buf);
    v41 = *&buf[16];
    v151 = *buf;
    v167 = *buf;
  }

  v168 = v41;

  v42 = +[ULDefaultsSingleton shared];
  v43 = [v42 defaultsDictionary];

  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasRssiThresholds"];
  v45 = [v43 objectForKey:v44];
  if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v45, buf);
    v154 = *buf;
    v165 = *buf;
    v46 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_23BlueAtlasRssiThresholdsEE12defaultValueE_, 4uLL, buf);
    v46 = *&buf[16];
    v154 = *buf;
    v165 = *buf;
  }

  v166 = v46;

  v152 = v154;
  v47 = +[ULDefaultsSingleton shared];
  v48 = [v47 defaultsDictionary];

  v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasRssiScores"];
  v50 = [v48 objectForKey:v49];
  if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v50, buf);
    v155 = *buf;
    v163 = *buf;
    v51 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_19BlueAtlasRssiScoresEE12defaultValueE_, 4uLL, buf);
    v51 = *&buf[16];
    v155 = *buf;
    v163 = *buf;
  }

  v164 = v51;

  v53.n128_u64[1] = *(&v155 + 1);
  __src = 0;
  v161 = 0;
  v162 = 0;
  v54 = v186;
  if (v186 == &v187)
  {
    v88 = 0;
    v87 = 0;
  }

  else
  {
    do
    {
      v56 = v54[5];
      v55 = v54[6];
      v57 = v55 - v56;
      if (v55 == v56)
      {
        v60 = 0.0;
      }

      else
      {
        v58 = 0.0;
        do
        {
          v59 = *v56++;
          v52.n128_f32[0] = v59;
          v58 = v58 + v59;
        }

        while (v56 != v55);
        v60 = v58;
      }

      v61 = (v57 >> 2);
      v53.n128_f64[0] = v61 / v174;
      CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v229, &v167, v53, v52);
      v63 = v62;
      v64.n128_f64[0] = v60 / v61;
      CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v165, &v163, v64, v65);
      v67 = (v63 + v66) * 0.5;
      v68 = v54[4];
      v69 = v161;
      if (v161 >= v162)
      {
        v71 = __src;
        v72 = v161 - __src;
        v73 = (v161 - __src) >> 4;
        v74 = v73 + 1;
        if ((v73 + 1) >> 60)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v75 = v162 - __src;
        if ((v162 - __src) >> 3 > v74)
        {
          v74 = v75 >> 3;
        }

        if (v75 >= 0x7FFFFFFFFFFFFFF0)
        {
          v76 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v74;
        }

        if (v76)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__src, v76);
        }

        v77 = (v161 - __src) >> 4;
        v78 = 16 * v73;
        *v78 = v68;
        *(v78 + 8) = v67;
        v70 = 16 * v73 + 16;
        v79 = (16 * v73 - 16 * v77);
        memcpy((v78 - 16 * v77), v71, v72);
        v80 = __src;
        __src = v79;
        v161 = v70;
        v162 = 0;
        if (v80)
        {
          operator delete(v80);
        }
      }

      else
      {
        *v161 = v68;
        *(v69 + 1) = v67;
        v70 = (v69 + 16);
      }

      v161 = v70;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
      }

      v81 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        ULHomeSlamModel::getTrajectoryPointCloud(v54[4]);
        v158.var0 = v82;
        CLMacAddress::toPrettyStr(&v158, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = p_p;
        *&buf[28] = 2050;
        *&buf[30] = v67;
        _os_log_impl(&dword_258FE9000, v81, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, bssid:%{public, location:escape_only}s, score:%{public}f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v84 = v54[1];
      if (v84)
      {
        do
        {
          v85 = v84;
          v84 = *v84;
        }

        while (v84);
      }

      else
      {
        do
        {
          v85 = v54[2];
          v86 = *v85 == v54;
          v54 = v85;
        }

        while (!v86);
      }

      v54 = v85;
    }

    while (v85 != &v187);
    v87 = __src;
    v88 = v161;
  }

  v89 = 126 - 2 * __clz((v88 - v87) >> 4);
  if (v88 == v87)
  {
    v90 = 0;
  }

  else
  {
    v90 = v89;
  }

  std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(v87, v88, v90, 1);
  v91 = +[ULDefaultsSingleton shared];
  v92 = [v91 defaultsDictionary];

  v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMaxSources"];
  v94 = [v92 objectForKey:v93];
  if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v95 = [v94 intValue];
  }

  else
  {
    v95 = [&unk_286A724C8 intValue];
  }

  v96 = v95;

  v98 = __src;
  v99 = v161;
  v100 = (v161 - __src) >> 4;
  if (v100 <= v96)
  {
    goto LABEL_95;
  }

  v101 = __src + 16 * v96;
  if (v101 != v161)
  {
    v102 = __src + 16 * v96;
    for (m = &v102[v161 - v101]; m != v99; m += 16)
    {
      *v102 = *m;
      *(v102 + 1) = *(m + 1);
      v102 += 16;
    }

    v161 = v102;
    v100 = (v102 - v98) >> 4;
  }

  if (v100 == v96)
  {
LABEL_95:
    v104 = ULSettings::get<ULSettings::BlueAtlasModelMinSources>();
    if (v104 < (v161 - __src) >> 4)
    {
      v105 = +[ULDefaultsSingleton shared];
      v106 = [v105 defaultsDictionary];

      v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasApSelectionScoreThreshold"];
      v108 = [v106 objectForKey:v107];
      if (v108 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v108 floatValue];
      }

      else
      {
        [&unk_286A72F10 floatValue];
      }

      v110 = v109;

      v111 = v161;
      v112 = __src + 16 * v104;
      if (v112 != v161)
      {
        v113 = v110;
        v114 = v112 + 16;
        while (*(v114 - 1) >= v113)
        {
          v86 = v114 == v161;
          v114 += 16;
          if (v86)
          {
            goto LABEL_113;
          }
        }

        v115 = v114 - 16;
        if (v114 - 16 != v161)
        {
          while (v114 != v111)
          {
            v116 = *(v114 + 1);
            if (v116 >= v113)
            {
              *v115 = *v114;
              *(v115 + 1) = v116;
              v115 += 16;
            }

            v114 += 16;
          }
        }

        if (v115 != v111)
        {
          v161 = v115;
        }
      }
    }

LABEL_113:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
    }

    v117 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = (v161 - __src) >> 4;
      _os_log_impl(&dword_258FE9000, v117, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num dominant APs:%{public}lu}", buf, 0x1Cu);
    }

    v118 = __src;
    v119 = v161;
    if (__src != v161)
    {
      do
      {
        ULHomeSlamModel::getTrajectoryPointCloud(*v118);
        v121 = v179;
        if (v179 >= v180)
        {
          v123 = v178;
          v124 = v179 - v178;
          v125 = (v179 - v178) >> 3;
          v126 = v125 + 1;
          if ((v125 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v127 = v180 - v178;
          if ((v180 - v178) >> 2 > v126)
          {
            v126 = v127 >> 2;
          }

          if (v127 >= 0x7FFFFFFFFFFFFFF8)
          {
            v128 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v128 = v126;
          }

          if (v128)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v178, v128);
          }

          *(8 * v125) = v120;
          v122 = 8 * v125 + 8;
          memcpy(0, v123, v124);
          v129 = v178;
          v178 = 0;
          v179 = v122;
          v180 = 0;
          if (v129)
          {
            operator delete(v129);
          }
        }

        else
        {
          *v179 = v120;
          v122 = (v121 + 8);
        }

        v179 = v122;
        v118 += 2;
      }

      while (v118 != v119);
    }

    v130 = +[ULDefaultsSingleton shared];
    v131 = [v130 defaultsDictionary];

    v132 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAssociatedAccessPointLocalizerEnabled"];
    v133 = [v131 objectForKey:v132];
    if (v133 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v134 = [v133 BOOLValue];
    }

    else
    {
      v134 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v135 = v134;

    if (v135 && v173 == 1)
    {
      if ((v184 & 1) == 0)
      {
        v184 = 1;
      }

      v183.var0 = v171[3];
      v185 = v172;
      v137 = _CLLogObjectForCategory_MicroLocation_Default(v136);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        if ((v184 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        CLMacAddress::toCLStr(&v183, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v138 = &__p;
        }

        else
        {
          v138 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v138;
        *&buf[28] = 2050;
        *&buf[30] = v185;
        _os_log_impl(&dword_258FE9000, v137, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, updating associated AP, MAC Address:%{private, location:escape_only}s, Rssi:%{public}f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (__src)
    {
      v161 = __src;
      operator delete(__src);
    }

    if (v155)
    {
      operator delete(v155);
    }

    if (v152)
    {
      operator delete(v152);
    }

    if (v151)
    {
      operator delete(v151);
    }

    if (*v229.data)
    {
      operator delete(*v229.data);
    }

    v12 = v174;
    goto LABEL_158;
  }

  v146 = _CLLogObjectForCategory_MicroLocation_Default(v97);
  if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v161 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v96;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v209 = 2081;
    v210 = "apScores.size() == (size_t)maxSources";
    _os_log_impl(&dword_258FE9000, v146, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  v148 = _CLLogObjectForCategory_MicroLocation_Default(v147);
  if (os_signpost_enabled(v148))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v161 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v96;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v209 = 2081;
    v210 = "apScores.size() == (size_t)maxSources";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v148, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected remaining number of sources", "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  v150 = _CLLogObjectForCategory_MicroLocation_Default(v149);
  if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v161 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v96;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v209 = 2081;
    v210 = "apScores.size() == (size_t)maxSources";
    _os_log_impl(&dword_258FE9000, v150, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationBlueAtlasAlgorithms.mm", 117, "learnBlueAtlasModel");
  __break(1u);
}

void sub_25916CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v71 = *(v69 - 208);
  if (v71)
  {
    operator delete(v71);
  }

  std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::~tuple(&a43);
  std::optional<std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>>::~optional(&a53);
  if (a64)
  {
    a65 = a64;
    operator delete(a64);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(&a66, STACK[0x200]);
  CLMicroLocationModel::~CLMicroLocationModel(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::getBlueAtlasScanningData@<X0>(CLMicroLocationFingerprintConfiguration *a1@<X0>, uint64_t a2@<X1>, uuid *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v104[3] = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintConfiguration::getCustomLoiRecordingConfigurationFromSettings(&v55);
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningRecordingLimit"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v11 unsignedIntValue];
  }

  else
  {
    [&unk_286A72498 unsignedIntValue];
  }

  v12 = (*(*a2 + 144))(a2);
  v13 = v12;
  __p.var0 = *a3;
  __p.var1.var0.var0.var0[0] = 1;
  if (v12)
  {
    objc_msgSend_getScanningEventUUIDsAtLoiGroupId_withScanType_startDate_endDate_onlyScansWithLabels_Limit_(v12);
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  LOBYTE(v44) = 0;
  v45 = 0;
  *__p.var0.data = 1065353216;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v41, &__p, &__p.var0.data[4], 1uLL);
  v14 = v52;
  v15 = v53;
  if (v52 == v53)
  {
    v25 = v52;
LABEL_84:
    v26 = (v25 - v14) >> 4;
    v56 = v26;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *__p.var0.data = 68289538;
      *&__p.var0.data[8] = 2082;
      *&__p.var0.data[10] = "";
      WORD1(__p.var1.var0.var1.var0) = 2050;
      *(&__p.var1.var0.var1.var0 + 4) = v26;
      WORD2(__p.var1.var0.var1.var1) = 2050;
      *(&__p.var1.var0.var1.var1 + 6) = 0x6DB6DB6DB6DB6DB7 * ((v50 - v49) >> 5);
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num recording entries:%{public}lu, Num valid fingerprints:%{public}lu}", __p.var0.data, 0x26u);
    }

    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorI26CLMicroLocationFingerprintNS_9allocatorIS4_EEEENS3_I28ULMapLabelDOAndLabelObjectIDNS5_IS8_EEEENS_8optionalI25AssociatedAccessPointInfoEEmEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS7_SA_SD_mEJEJEJRS7_RSA_RSD_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(&__p, &v49, &v46, &v44, &v56);
    *v31 = __p.var0;
    v28 = v94;
    *(v31 + 16) = __p.var1.var0.var1.var0;
    *&__p.var0.data[8] = 0;
    *__p.var0.data = 0;
    *(v31 + 24) = *&__p.var1.var0.var1.var1;
    *(v31 + 40) = v28;
    memset(&__p.var1, 0, sizeof(__p.var1));
    v94 = 0;
    *(v31 + 48) = v95;
    v29 = v96[1];
    *(v31 + 64) = v96[0];
    *(v31 + 72) = v29;
    *(v31 + 80) = 1;
    *v81.var0.data = &__p.var1.var0.var1.var1;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v81);
    *v81.var0.data = &__p;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v81);
  }

  else
  {
    v32 = 0;
    while (1)
    {
      v16 = *(a1 + 3);
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v16 + 48))(v16))
      {
        break;
      }

      v17 = (*(*a2 + 144))(a2);
      v81.var0 = *v14;
      memset(&__p, 0, 24);
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v81, v81.var1.var0.var0.var0, 1uLL);
      if (v17)
      {
        objc_msgSend_fetchScanningEventsWithLabelObjectIDsForUUIDs_(v17);
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      if (*__p.var0.data)
      {
        *&__p.var0.data[8] = *__p.var0.data;
        operator delete(*__p.var0.data);
      }

      if (v39 != v38)
      {
        std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](&__p, v38);
        ULScanningEventDO::ULScanningEventDO(&v81, &__p);
        CLMicroLocationFingerprint::create(v74, &v81, &v55);
        if (v80 == 1)
        {
          v18 = v50;
          if (v50 >= v51)
          {
            v19 = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(&v49, v74);
          }

          else
          {
            std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(&v49, v50, v74);
            v19 = v18 + 224;
          }

          v50 = v19;
        }

        if (v83 != v82)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            LOBYTE(v37) = 0;
            BYTE12(v37) = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v56, v41, v42, (v42 - v41) >> 2);
            LOBYTE(v59) = 1;
            LOBYTE(v35[0]) = 0;
            v36 = 0;
            v34 = cl::chrono::CFAbsoluteTimeClock::now();
            ULMapLabelDO::ULMapLabelDO(&v69, &v37, &v56, v35, &v34, (v82 + v20), a4);
            if (v36 == 1 && v35[0])
            {
              v35[1] = v35[0];
              operator delete(v35[0]);
            }

            if (v59 == 1 && v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&v56, &v69, *(v104[0] + 8 * v21));
            v22 = v47;
            if (v47 >= v48)
            {
              v24 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(&v46, &v56);
            }

            else
            {
              ULMapLabelDO::ULMapLabelDO(v47, &v56);
              v23 = v68;
              v68 = 0;
              *(v22 + 232) = v23;
              v24 = v22 + 240;
            }

            v47 = v24;

            if (v67 == 1)
            {
              v66 = -1;
            }

            if (v65 < 0)
            {
              operator delete(v64);
            }

            if (v63 == 1 && v61)
            {
              v62 = v61;
              operator delete(v61);
            }

            if (v60 == 1 && v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v73 == 1)
            {
              v72 = -1;
            }

            if (v71 < 0)
            {
              operator delete(v70);
            }

            if (v69.var2.var1 && v69.var2.var0.var1.var0)
            {
              v69.var2.var0.var1.var1 = v69.var2.var0.var1.var0;
              operator delete(v69.var2.var0.var1.var0);
            }

            if (v69.var1.var1 && v69.var1.var0.var1.var0)
            {
              v69.var1.var0.var1.var1 = v69.var1.var0.var1.var0;
              operator delete(v69.var1.var0.var1.var0);
            }

            ++v21;
            v20 += 128;
          }

          while (v21 < (v83 - v82) >> 7);
        }

        if (v91)
        {
          if (v32)
          {
            if (SDWORD2(v90) > SDWORD2(v44))
            {
              *&v44 = v90;
              DWORD2(v44) = DWORD2(v90);
            }

            v32 = 1;
          }

          else
          {
            v44 = v90;
            v32 = 1;
            v45 = 1;
          }
        }

        if (v80 == 1)
        {
          v56 = &v79;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v56);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v76);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v75);
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v74);
        }

        v56 = &v92;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v56);
        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        v56 = &v82;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v56);
        if (*(&v81.var1.var0.var1 + 23) < 0)
        {
          operator delete(v81.var1.var0.var1.var0);
        }

        *v81.var0.data = v104;
        std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);
        *v81.var0.data = &v103;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v81);
        if (v101)
        {
          v102 = v101;
          operator delete(v101);
        }

        if (v99)
        {
          v100 = v99;
          operator delete(v99);
        }

        if (v97)
        {
          v98 = v97;
          operator delete(v97);
        }

        *v81.var0.data = v96;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v81);
        if (*(&__p.var1.var0.var1 + 23) < 0)
        {
          operator delete(__p.var1.var0.var1.var0);
        }
      }

      *__p.var0.data = &v38;
      std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v14 == v15)
      {
        v14 = v52;
        v25 = v53;
        goto LABEL_84;
      }
    }

    *v31 = 0;
    *(v31 + 80) = 0;
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  *__p.var0.data = &v46;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
  *__p.var0.data = &v49;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v55.var1);
}