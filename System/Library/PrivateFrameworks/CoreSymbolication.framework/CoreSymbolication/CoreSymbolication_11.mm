unint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4, unint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = *a3;
  v9 = **a3;
  if (v7 >= **result)
  {
    if (v9 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < *v6)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *>(unint64_t **a1, unint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = *(a2 - 1);
      v9 = *v8;
      if (*v6 >= **a1)
      {
        if (v9 < v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v25 = *a1;
          v24 = a1[1];
          if (*v24 < **a1)
          {
            *a1 = v24;
            a1[1] = v25;
          }
        }

        return 1;
      }

      if (v9 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v27 = *(a2 - 1);
        if (*v27 >= *v5)
        {
          return 1;
        }

        a1[1] = v27;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v17 = a1 + 1;
    v18 = a1[1];
    v19 = a1 + 2;
    v20 = a1[2];
    v21 = *a1;
    v22 = *v18;
    v23 = *v20;
    if (*v18 >= **a1)
    {
      if (v23 < v22)
      {
        *v17 = v20;
        *v19 = v18;
        if (*v20 >= *v21)
        {
LABEL_50:
          v20 = v18;
          goto LABEL_51;
        }

        *a1 = v20;
        v26 = a1 + 1;
LABEL_49:
        *v26 = v21;
        goto LABEL_50;
      }
    }

    else
    {
      if (v23 < v22)
      {
        *a1 = v20;
LABEL_48:
        v26 = a1 + 2;
        v18 = v21;
        goto LABEL_49;
      }

      *a1 = v18;
      a1[1] = v21;
      if (*v20 < *v21)
      {
        *v17 = v20;
        goto LABEL_48;
      }
    }

LABEL_51:
    v35 = *(a2 - 1);
    if (*v35 < *v20)
    {
      *v19 = v35;
      *(a2 - 1) = v20;
      v36 = *v19;
      v37 = *v17;
      if (*v36 < *v37)
      {
        a1[1] = v36;
        a1[2] = v37;
        v38 = *a1;
        if (*v36 < **a1)
        {
          *a1 = v36;
          a1[1] = v38;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 2;
  v11 = a1[2];
  v12 = a1 + 1;
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = *v11;
  if (*v13 < **a1)
  {
    if (v16 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      if (*v11 >= *v14)
      {
        goto LABEL_35;
      }

      *v12 = v11;
    }

    else
    {
      *a1 = v11;
    }

    v12 = a1 + 2;
    goto LABEL_34;
  }

  if (v16 < v15)
  {
    *v12 = v11;
    *v10 = v13;
    if (*v11 < *v14)
    {
      *a1 = v11;
LABEL_34:
      *v12 = v14;
    }
  }

LABEL_35:
  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    v32 = *v10;
    if (**v28 < *v32)
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 24) = v32;
        if (v33 == -16)
        {
          break;
        }

        v32 = *(a1 + v33 + 8);
        v33 -= 8;
        if (*v31 >= *v32)
        {
          v34 = (a1 + v33 + 24);
          goto LABEL_43;
        }
      }

      v34 = a1;
LABEL_43:
      *v34 = v31;
      if (++v30 == 8)
      {
        return v28 + 1 == a2;
      }
    }

    v10 = v28;
    v29 += 8;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

void cpp_region_info_for_portable_region(char const*,portable_region_info_t const&)::$_0::operator()(char **a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == -1 || (v5 = a3) == 0)
  {
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    v7 = 2 * a3;
    CSCppFileMemory::CSCppFileMemory(v24, *a1, a2, 2 * a3, 1);
    v9 = CSCppFileMemory::bytes_at(v24, a2, 2 * v5);
    if (v9 && v8 >= v7)
    {
      __src = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned short>::reserve(&__src, v5);
      v10 = v22;
      do
      {
        if (v10 >= v23)
        {
          v11 = __src;
          v12 = v10 - __src;
          v13 = (v10 - __src) >> 1;
          if (v13 <= -2)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          if (v23 - __src <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v23 - __src;
          }

          if (v23 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::allocator<unsigned short>::allocate_at_least[abi:ne200100](&__src, v15);
          }

          v16 = (v10 - __src) >> 1;
          v17 = (2 * v13);
          v18 = (2 * v13 - 2 * v16);
          *v17 = *v9;
          v10 = (v17 + 1);
          memcpy(v18, v11, v12);
          v19 = __src;
          __src = v18;
          v22 = v10;
          v23 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v10 = *v9;
          v10 += 2;
        }

        v22 = v10;
        ++v9;
        --v5;
      }

      while (v5);
      v20 = v23;
      *a4 = __src;
      *(a4 + 8) = v10;
      *(a4 + 16) = v20;
      *(a4 + 24) = 1;
    }

    else
    {
      *a4 = 0;
      *(a4 + 24) = 0;
    }

    CSCppFileMemory::~CSCppFileMemory(v24);
  }
}

void sub_1D978FFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  CSCppFileMemory::~CSCppFileMemory(&a12);
  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<unsigned short>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned short>,false> const&>(a1, a2);
  return a1;
}

void sub_1D97900E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__optional_storage_base<std::vector<unsigned short>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned short>,false> const&>(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97901B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__emplace_back_slow_path<CSCppCoreFileRegionInfo const&>(void *a1, const CSCppCoreFileRegionInfo *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
    std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1D9790340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(CSCppCoreFileRegionInfo *this, const CSCppCoreFileRegionInfo *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  *this = v4;
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(this + 12) = *(a2 + 12);
  *(this + 4) = v7;
  *(this + 5) = v8;
  *(this + 3) = v6;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 104), (a2 + 104));
  std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](this + 17, a2 + 136);
  std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](this + 21, a2 + 168);
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(this + 25, *(a2 + 25), *(a2 + 26), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 26) - *(a2 + 25)) >> 5));
}

void sub_1D97903F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 192) == 1)
  {
    v3 = *(v1 + 168);
    if (v3)
    {
      *(v1 + 176) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 160) == 1)
  {
    v4 = *(v1 + 136);
    if (v4)
    {
      *(v1 + 144) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 128) == 1 && *(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a4;
  v22[0] = a1;
  v22[1] = &v24;
  v22[2] = &v25;
  if (a2 == a3)
  {
    v23 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 32);
      *(v9 + 16) = *(a2 + v7 + 16);
      *(v9 + 32) = v11;
      *v9 = v10;
      v12 = *(a2 + v7 + 48);
      v13 = *(a2 + v7 + 64);
      v14 = *(a2 + v7 + 80);
      *(v9 + 96) = *(a2 + v7 + 96);
      *(v9 + 64) = v13;
      *(v9 + 80) = v14;
      *(v9 + 48) = v12;
      *(a4 + v7 + 104) = 0;
      *(v9 + 128) = 0;
      if (*(a2 + v7 + 128) == 1)
      {
        v15 = *(v8 + 104);
        *(a4 + v7 + 120) = *(v8 + 120);
        *(a4 + v7 + 104) = v15;
        *(v8 + 112) = 0;
        *(v8 + 120) = 0;
        *(v8 + 104) = 0;
        *(v9 + 128) = 1;
      }

      *(v9 + 136) = 0;
      v16 = (v9 + 136);
      *(v9 + 160) = 0;
      if (*(v8 + 160) == 1)
      {
        v17 = (a2 + v7);
        *v16 = 0;
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *v16 = *(a2 + v7 + 136);
        *(a4 + v7 + 152) = *(a2 + v7 + 152);
        v17[17] = 0;
        v17[18] = 0;
        v17[19] = 0;
        *(v9 + 160) = 1;
      }

      v18 = a4 + v7;
      *(a4 + v7 + 168) = 0;
      v19 = (a4 + v7 + 168);
      *(a4 + v7 + 192) = 0;
      if (*(v8 + 192) == 1)
      {
        v20 = (a2 + v7);
        *v19 = 0;
        *(a4 + v7 + 176) = 0;
        *(a4 + v7 + 184) = 0;
        *v19 = *(a2 + v7 + 168);
        *(v18 + 184) = *(a2 + v7 + 184);
        v20[21] = 0;
        v20[22] = 0;
        v20[23] = 0;
        *(v18 + 192) = 1;
      }

      *(v18 + 200) = 0;
      *(v18 + 208) = 0;
      *(v18 + 216) = 0;
      *(v18 + 200) = *(v8 + 200);
      *(v18 + 216) = *(v8 + 216);
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      v7 += 224;
    }

    while (v8 + 224 != a3);
    v25 = a4 + v7;
    v23 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(a1, v5);
      v5 += 224;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](v22);
}

void std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 200);
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a2 + 192) == 1)
  {
    v3 = *(a2 + 168);
    if (v3)
    {
      *(a2 + 176) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 160) == 1)
  {
    v4 = *(a2 + 136);
    if (v4)
    {
      *(a2 + 144) = v4;
      operator delete(v4);
    }
  }

  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 224;
      std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CSCppCoreFileRegionInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CSCppCoreFileRegionInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 224;
    std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(v5, v4 - 224);
  }
}

uint64_t std::optional<CSCppCoreFileRegionInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    v5 = (a1 + 200);
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 192) == 1)
    {
      v2 = *(a1 + 168);
      if (v2)
      {
        *(a1 + 176) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 160) == 1)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        *(a1 + 144) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }
  }

  return a1;
}

uint64_t *std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(uint64_t *result, CSCppCoreFileRegionInfo *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppCoreFileRegionInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9790928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<CSCppCoreFileRegionInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

CSCppCoreFileRegionInfo *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(uint64_t a1, CSCppCoreFileRegionInfo *a2, CSCppCoreFileRegionInfo *a3, CSCppCoreFileRegionInfo *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 120;
      do
      {
        v10 = (v6 + 96);
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
        if (*(v6 + 88) == 1)
        {
          v7 = *(v6 + 64);
          if (v7)
          {
            *(v6 + 72) = v7;
            operator delete(v7);
          }
        }

        if (*(v6 + 56) == 1)
        {
          v8 = *(v6 + 32);
          if (v8)
          {
            *(v6 + 40) = v8;
            operator delete(v8);
          }
        }

        if (*(v6 + 24) == 1 && *(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v9 = (v6 - 104);
        v6 -= 224;
      }

      while (v9 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7;
      v7 += 2;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t CSCppSymbolOwnerTimeline::CSCppSymbolOwnerTimeline(uint64_t a1, uint64_t **a2)
{
  *a1 = &unk_1F5507FC8;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v10 = 0;
      }

      v9 = v6;
      CSCppSymbolOwnerTimeline::add_symbol_owner(a1, &v9);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::clear[abi:ne200100](a2);
  return a1;
}

void sub_1D9791000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  a12 = (v12 + 80);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = (v12 + 56);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(v13, *(v12 + 16));
  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolOwnerTimeline::add_symbol_owner(uint64_t **a1, std::__shared_weak_count **a2)
{
  shared_owners = (*a2)[1].__shared_owners_;
  shared_weak_owners = (*a2)[1].__shared_weak_owners_;
  if (shared_owners == shared_weak_owners)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 0;
  shared_owners_high = HIDWORD((*a2)[4].__shared_owners_);
  do
  {
    if (!CSCppSegmentRange::is_valid_address_query_target(shared_owners, shared_owners_high))
    {
      goto LABEL_17;
    }

    if (!v6)
    {
      goto LABEL_16;
    }

    v9 = v6 + v7;
    if (v6 + v7 != *shared_owners)
    {
      v11 = a2[1];
      v19[0] = *a2;
      v19[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      inserted = CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(a1, v7, v6, v19);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if ((inserted & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_16:
      v7 = *shared_owners;
      v6 = *(shared_owners + 1);
      goto LABEL_17;
    }

    v10 = *(shared_owners + 1) + v9;
    if (v9 > v10)
    {
      v10 = v6 + v7;
    }

    if (v7 >= v9)
    {
      v7 += v6;
    }

    v6 = v10 - v7;
LABEL_17:
    shared_owners = (shared_owners + 32);
  }

  while (shared_owners != shared_weak_owners);
  if (v6)
  {
    v13 = a2[1];
    v18[0] = *a2;
    v18[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(a1, v7, v6, v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if ((v14 & 1) == 0)
    {
LABEL_25:
      v15 = 0;
      v16 = 10;
      goto LABEL_26;
    }
  }

LABEL_24:
  v15 = 1;
  v16 = 7;
LABEL_26:
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&a1[v16], a2);
  return v15;
}

void sub_1D97911C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwnerTimeline::CSCppSymbolOwnerTimeline(CSCppSymbolOwnerTimeline *this, const CSCppSymbolOwnerTimeline *a2)
{
  *this = &unk_1F5507FC8;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  v4 = (this + 8);
  *(this + 3) = 0;
  *(this + 2) = 0u;
  v5 = (this + 32);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 4);
  if (this != a2)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__tree_node<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,void *> *,long>>(v4, *(a2 + 1), a2 + 2);
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__assign_with_size[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  }
}

void sub_1D97912D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(v3, *v4);
  _Unwind_Resume(a1);
}

CSCppSymbolOwner *CSCppSymbolOwnerTimeline::symbol_owner_with_address_at_time(CSCppSymbolOwnerTimeline *this, unint64_t a2, unint64_t a3)
{
  result = 0;
  if (a2 == -1 || a3 == 0x8000000000000001)
  {
    return result;
  }

  if (!*(this + 3))
  {
    return 0;
  }

  v6 = a3 - 0x7FFFFFFFFFFFFFFFLL;
  if (a3 - 0x7FFFFFFFFFFFFFFFLL >= 2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFDLL;
  }

  v8 = (this + 16);
  for (i = *(this + 2); i; i = i[v12])
  {
    v10 = i[4];
    v11 = v10 > a2;
    v12 = v10 <= a2;
    if (v11)
    {
      v8 = i;
    }
  }

  if (v8 == *(this + 1))
  {
    goto LABEL_19;
  }

  v13 = *v8;
  if (*v8)
  {
    do
    {
      v14 = v13;
      v13 = *(v13 + 8);
    }

    while (v13);
  }

  else
  {
    do
    {
      v14 = v8[2];
      v15 = *v14 == v8;
      v8 = v14;
    }

    while (v15);
  }

  if (a2 - *(v14 + 32) >= *(v14 + 40))
  {
LABEL_19:
    if (v6 < 2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*(v14 + 48));
  if (v7 - unload_timestamp_range < v17)
  {
    return *(v14 + 48);
  }

  result = 0;
  if (v6 >= 2 && v7 <= *(*(v14 + 48) + 88))
  {
LABEL_20:
    v18 = *(this + 4);
    v19 = *(this + 5);
    if (v18 != v19)
    {
      for (j = v18 + 2; ; j += 4)
      {
        v21 = j - 2;
        if (a2 - *(j - 2) < *(j - 1))
        {
          v22 = CSCppSymbolOwner::load_unload_timestamp_range(*j);
          if (v7 - v22 < v23)
          {
            break;
          }
        }

        if (v21 + 4 == v19)
        {
          return 0;
        }
      }

      return *j;
    }

    return 0;
  }

  return result;
}

uint64_t CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v7 = (a1 + 2);
  v8 = a1[2];
  v9 = a1 + 1;
  if (!v8)
  {
    goto LABEL_35;
  }

  v11 = (a1 + 2);
  do
  {
    v12 = v8[4];
    v53 = v12 >= a2;
    v13 = v12 < a2;
    if (v53)
    {
      v11 = v8;
    }

    v8 = v8[v13];
  }

  while (v8);
  if (v11 == v7)
  {
    goto LABEL_35;
  }

  v14 = v11[4];
  v15 = a3 + a2;
  if (v14 >= a3 + a2 || (v16 = v11[5], a2 >= v16 + v14))
  {
    v18 = v11[1];
    if (v18)
    {
      do
      {
        v17 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      v19 = v11;
      do
      {
        v17 = v19[2];
        v20 = *v17 == v19;
        v19 = v17;
      }

      while (!v20);
    }

    if (v17 == v7 || (v14 = v17[4], v14 >= v15) || (v16 = v17[5], a2 >= v16 + v14))
    {
      v7 = v11;
      goto LABEL_35;
    }
  }

  else
  {
    v17 = v11;
  }

  v20 = v17 == v7;
  v7 = v11;
  if (v20)
  {
LABEL_35:
    *buf = a2;
    *&buf[8] = a3;
    v38 = *(a4 + 8);
    *&buf[16] = *a4;
    v95 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_hint_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(a1 + 1, v7, buf, buf);
    if (v95)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v95);
    }

    return 1;
  }

  v90 = v16;
  v21 = v17[6];
  v22 = v17[7];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v91 = v22;
  v92 = v21;
  unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(v21);
  v25 = v24;
  v26 = CSCppSymbolOwner::load_unload_timestamp_range(*a4);
  if (unload_timestamp_range >= v27 + v26 || v26 >= v25 + unload_timestamp_range)
  {
    v40 = *a4;
    v41 = (a1 + 4);
    if (*(v92 + 11) < *(*a4 + 88))
    {
      v42 = v91;
      if (v91)
      {
        atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = a1[5];
      v44 = a1[6];
      if (v43 >= v44)
      {
        v58 = *v41;
        v59 = v43 - *v41;
        v60 = v59 >> 5;
        v61 = (v59 >> 5) + 1;
        if (v61 >> 59)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v62 = v44 - v58;
        if (v62 >> 4 > v61)
        {
          v61 = v62 >> 4;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFE0)
        {
          v61 = 0x7FFFFFFFFFFFFFFLL;
        }

        *v96 = a1 + 4;
        if (v61)
        {
          std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](v41, v61);
        }

        v68 = (32 * v60);
        *v68 = v14;
        v68[1] = v90;
        v68[2] = v92;
        v68[3] = v91;
        v45 = 32 * v60 + 32;
        v69 = &v68[-4 * (v59 >> 5)];
        memcpy(v69, v58, v59);
        v70 = a1[4];
        a1[4] = v69;
        a1[5] = v45;
        v71 = a1[6];
        a1[6] = 0;
        *&buf[16] = v70;
        v95 = v71;
        *buf = v70;
        *&buf[8] = v70;
        std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(buf);
      }

      else
      {
        *v43 = v14;
        v43[1] = v90;
        v45 = (v43 + 4);
        v43[2] = v92;
        v43[3] = v91;
      }

      a1[5] = v45;
      std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase(v9, v17);
      *buf = a2;
      *&buf[8] = a3;
      v72 = *(a4 + 8);
      *&buf[16] = *a4;
      v95 = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(v9, buf, buf);
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v95);
      }

      v37 = 1;
      if (v91)
      {
        goto LABEL_85;
      }

      return v37;
    }

    v93 = (a1 + 4);
    v46 = a1[4];
    v47 = a1[5];
    if (v46 != v47)
    {
      v42 = v91;
      while (1)
      {
        if (*v46 < v15 && a2 < v46[1] + *v46)
        {
          v48 = CSCppSymbolOwner::load_unload_timestamp_range(v46[2]);
          v50 = v49;
          v51 = CSCppSymbolOwner::load_unload_timestamp_range(*a4);
          v53 = v48 >= v52 + v51 || v51 >= v50 + v48;
          if (!v53)
          {
            break;
          }
        }

        v46 += 4;
        if (v46 == v47)
        {
          v40 = *a4;
          goto LABEL_57;
        }
      }

      v77 = *v46;
      v78 = v46[1];
      v79 = (v78 + *v46);
      if (v15 <= v79)
      {
        v80 = v78 + *v46;
      }

      else
      {
        v80 = a3 + a2;
      }

      if (a2 >= v77)
      {
        v81 = *v46;
      }

      else
      {
        v81 = a2;
      }

      v82 = v80 - v81;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v83 = v46[2];
        v84 = v83[11];
        v85 = v83[12];
        v86 = v83[15];
        v87 = *(*a4 + 88);
        v88 = *(*a4 + 96);
        v89 = *(*a4 + 120);
        *buf = 134221058;
        *&buf[4] = v82;
        *&buf[12] = 2048;
        *&buf[14] = v77;
        *&buf[22] = 2048;
        v95 = v79;
        *v96 = 2048;
        *&v96[2] = v78;
        v97 = 2048;
        v98 = v84;
        v99 = 2048;
        v100 = v85;
        v101 = 2080;
        v102 = v86;
        v103 = 2048;
        v104 = a2;
        v105 = 2048;
        v106 = a3 + a2;
        v107 = 2048;
        v108 = a3;
        v109 = 2048;
        v110 = v87;
        v111 = 2048;
        v112 = v88;
        v113 = 2080;
        v114 = v89;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Historical timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", buf, 0x84u);
        v77 = *v46;
        v78 = v46[1];
        v79 = (v78 + *v46);
      }

      fprintf(*MEMORY[0x1E69E9848], "Historical timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", v82, v77, v79, v78, *(v46[2] + 88), *(v46[2] + 96), *(v46[2] + 120), a2, a3 + a2, a3, *(*a4 + 88), *(*a4 + 96), *(*a4 + 120));
      v37 = 0;
      if (v91)
      {
        goto LABEL_85;
      }

      return v37;
    }

LABEL_57:
    v54 = *(a4 + 8);
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = a1[5];
    v56 = a1[6];
    if (v55 >= v56)
    {
      v63 = *v93;
      v64 = v55 - *v93;
      v65 = v64 >> 5;
      v66 = (v64 >> 5) + 1;
      if (v66 >> 59)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v67 = v56 - v63;
      if (v67 >> 4 > v66)
      {
        v66 = v67 >> 4;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFE0)
      {
        v66 = 0x7FFFFFFFFFFFFFFLL;
      }

      *v96 = a1 + 4;
      if (v66)
      {
        std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](v93, v66);
      }

      v73 = (32 * v65);
      *v73 = a2;
      v73[1] = a3;
      v73[2] = v40;
      v73[3] = v54;
      v57 = 32 * v65 + 32;
      v74 = &v73[-4 * (v64 >> 5)];
      memcpy(v74, v63, v64);
      v75 = a1[4];
      a1[4] = v74;
      a1[5] = v57;
      v76 = a1[6];
      a1[6] = 0;
      *&buf[16] = v75;
      v95 = v76;
      *buf = v75;
      *&buf[8] = v75;
      std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(buf);
    }

    else
    {
      *v55 = a2;
      v55[1] = a3;
      v57 = (v55 + 4);
      v55[2] = v40;
      v55[3] = v54;
    }

    a1[5] = v57;
    v37 = 1;
  }

  else
  {
    if (v15 <= v90 + v14)
    {
      v28 = v90 + v14;
    }

    else
    {
      v28 = a3 + a2;
    }

    if (a2 >= v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = a2;
    }

    v30 = v28 - v29;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = *(v92 + 11);
      v32 = *(v92 + 12);
      v33 = *(v92 + 15);
      v34 = *(*a4 + 88);
      v35 = *(*a4 + 96);
      v36 = *(*a4 + 120);
      *buf = 134221058;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      v95 = (v90 + v14);
      *v96 = 2048;
      *&v96[2] = v90;
      v97 = 2048;
      v98 = v31;
      v99 = 2048;
      v100 = v32;
      v101 = 2080;
      v102 = v33;
      v103 = 2048;
      v104 = a2;
      v105 = 2048;
      v106 = a3 + a2;
      v107 = 2048;
      v108 = a3;
      v109 = 2048;
      v110 = v34;
      v111 = 2048;
      v112 = v35;
      v113 = 2080;
      v114 = v36;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", buf, 0x84u);
    }

    fprintf(*MEMORY[0x1E69E9848], "Timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", v30, v14, v90 + v14, v90, *(v92 + 11), *(v92 + 12), *(v92 + 15), a2, a3 + a2, a3, *(*a4 + 88), *(*a4 + 96), *(*a4 + 120));
    v37 = 0;
  }

  v42 = v91;
  if (v91)
  {
LABEL_85:
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  return v37;
}

void sub_1D9791B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppSegmentRange::is_valid_address_query_target(CSCppSegmentRange *this, __int16 a2)
{
  v4 = *(this + 3);
  v5 = v4;
  if (!v4)
  {
    v5 = *(this + 2);
  }

  result = strncmp(v5, "__PAGEZERO", 0xBuLL);
  if (result)
  {
    if ((a2 & 0x1200) == 0)
    {
      return 1;
    }

    v7 = v4;
    if (!v4)
    {
      v7 = *(this + 2);
    }

    if (!strncmp(v7, "__LINKEDIT", 0xBuLL))
    {
      return 0;
    }

    if (*this)
    {
      return 1;
    }

    if (!v4)
    {
      v4 = *(this + 2);
    }

    return !strncmp(v4, "__TEXT", 7uLL);
  }

  return result;
}

BOOL CSCppSymbolOwnerTimeline::remove_symbol_owner(uint64_t a1, __int128 *a2)
{
  v4 = std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<CSCppSymbolOwner> *>,std::shared_ptr<CSCppSymbolOwner>>(*(a1 + 56), *(a1 + 64), a2);
  v5 = *(a1 + 64);
  if (v5 != v4)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v25, v4 + 1, *(a1 + 64), v4);
    v7 = v6;
    v8 = *(a1 + 64);
    if (v8 != v6)
    {
      do
      {
        v9 = *(v8 - 8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v8 -= 16;
      }

      while (v8 != v7);
    }

    *(a1 + 64) = v7;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((a1 + 80), a2);
    v11 = *a2;
    v10 = *(a2 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 8);
    if (v12 != (a1 + 16))
    {
      do
      {
        if (v12[6] == v11)
        {
          v14 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase((a1 + 8), v12);
        }

        else
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v12[2];
              v15 = *v14 == v12;
              v12 = v14;
            }

            while (!v15);
          }
        }

        v12 = v14;
      }

      while (v14 != (a1 + 16));
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    if (v17 != v16)
    {
      v19 = *a2;
      v18 = *(a2 + 1);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v16 + 32;
      while (*(v20 - 16) != v19)
      {
        v15 = v20 == v17;
        v20 += 32;
        if (v15)
        {
          v21 = v17;
          goto LABEL_35;
        }
      }

      v21 = v20 - 32;
      if (v20 - 32 != v17)
      {
        while (v20 != v17)
        {
          if (*(v20 + 16) != v19)
          {
            *v21 = *v20;
            v22 = *(v20 + 16);
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            v23 = *(v21 + 24);
            *(v21 + 16) = v22;
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            v21 += 32;
          }

          v20 += 32;
        }
      }

LABEL_35:
      std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::erase(a1 + 32, v21, *(a1 + 40));
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  return v5 != v4;
}

void sub_1D9791EA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<CSCppSymbolOwner> *>,std::shared_ptr<CSCppSymbolOwner>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != *a3)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = *i;
        if (*i != *a3)
        {
          v9 = i[1];
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v8;
          v3[1] = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CSCppSymbolOwnerTimeline::~CSCppSymbolOwnerTimeline(CSCppSymbolOwnerTimeline *this)
{
  CSCppSymbolOwnerTimeline::~CSCppSymbolOwnerTimeline(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F5507FC8;
  v2 = (this + 80);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 56);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(this + 8, *(this + 2));
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__assign_with_size[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vdeallocate(a1);
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

      std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v15 = *(v12 - 8);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    if (v12 == v8)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 + v13;
      do
      {
        std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 32;
        v13 -= 32;
      }

      while (v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(a1, v14, a3, v12);
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v8 = *(a4 + 24);
      *(a4 + 16) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__tree_node<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 6;
          std::pair<TRange<Pointer64> &,std::shared_ptr<CSCppSymbolOwner> &>::operator=[abi:ne200100]<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>,0>(v15, (v9 + 4));
          std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_multi<std::pair<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>> const&>(v5, (a2 + 4));
  }

  return result;
}

void sub_1D9792780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<TRange<Pointer64>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::pair<TRange<Pointer64> &,std::shared_ptr<CSCppSymbolOwner> &>::operator=[abi:ne200100]<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>,0>(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_hint_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__find_equal<TRange<Pointer64>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__find_equal<TRange<Pointer64>>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CSSymbolicatorCreateWithCoreFilePathAndFlags(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v257 = *MEMORY[0x1E69E9840];
  CSCppFileMemory::CSCppFileMemory(v201, a1, 0, 0x1CuLL, 1);
  v11 = (*(v201[0] + 4))(v201, 0, 28);
  if (!v11 || *v11 != -17958194)
  {
    CSCppFileMemory::CSCppFileMemory(&v235, v10, 0, 0x20uLL, 1);
    v42 = (*(v235 + 32))(&v235, 0, 32);
    if (!v42 || *v42 != -17958193)
    {
      v73 = 0;
      goto LABEL_371;
    }

    CSCppFileMemory::CSCppFileMemory(v213, v10, 0, v42[5] + 32, 1);
    v212 = v213;
    v43 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v212, 0, 1);
    if (!v43 || (v192 = v43, v43[3] != 4))
    {
      v73 = 0;
      goto LABEL_370;
    }

    v209 = 0u;
    v210 = 0u;
    v211 = 1065353216;
    if (a4)
    {
      v44 = (a3 + 8);
      do
      {
        v45 = *v44;
        v44 += 2;
        *&v248 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 16;
        std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&v209, v248, &std::piecewise_construct, &v248)[4] = v45 & 0xFFFFFFFFFFFFFFFCLL;
        --a4;
      }

      while (a4);
    }

    mapped_memory_cache_for_core_file_without_exclave_metadata = create_mapped_memory_cache_for_core_file_without_exclave_metadata(v10, "CSSymbolicator for core file");
    if (!mapped_memory_cache_for_core_file_without_exclave_metadata)
    {
      v73 = 0;
      goto LABEL_369;
    }

    CSCppCoreFileMemory::CSCppCoreFileMemory(v241, mapped_memory_cache_for_core_file_without_exclave_metadata);
    release_core_file_mapped_memory_cache(mapped_memory_cache_for_core_file_without_exclave_metadata);
    *&v248 = 0;
    unretained_reconstructed_core_file_memory = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v241);
    if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(unretained_reconstructed_core_file_memory, &v248))
    {
      LOBYTE(__p) = 0;
      v208 = 0;
      v123 = (*(*&v241[0] + 32))(v241, v248, 368);
      if (v124 > 0x16F)
      {
        v125 = v10;
        v126 = *v123;
        v127 = *(v123 + 4);
        v128 = *(v123 + 8);
        v129 = *(v123 + 32);
        v130 = *(v123 + 136);
        v253 = *(v123 + 120);
        v254 = v130;
        v255 = *(v123 + 152);
        v256 = *(v123 + 168);
        v131 = *(v123 + 72);
        v249 = *(v123 + 56);
        v250 = v131;
        v132 = *(v123 + 104);
        v251 = *(v123 + 88);
        v252 = v132;
        v133 = *(v123 + 40);
        v134 = *(v123 + 192);
        v135 = *(v123 + 320);
        v247 = *(v123 + 352);
        v248 = v133;
        if (v126 > 0x10 && v128)
        {
          v200 = v135;
          v233 = 0;
          __src = 0;
          v234 = 0;
          v136 = (*(*&v241[0] + 32))(v241, v128, 24 * v127);
          if (v136)
          {
            if (v127)
            {
              v137 = v233;
              do
              {
                if (v137 >= v234)
                {
                  v139 = 0xAAAAAAAAAAAAAAABLL * ((v137 - __src) >> 3);
                  v140 = v139 + 1;
                  if (v139 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v234 - __src) >> 3) > v140)
                  {
                    v140 = 0x5555555555555556 * ((v234 - __src) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v234 - __src) >> 3) >= 0x555555555555555)
                  {
                    v141 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v141 = v140;
                  }

                  if (v141)
                  {
                    std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](&__src, v141);
                  }

                  v142 = 8 * ((v137 - __src) >> 3);
                  v143 = *v136;
                  *(v142 + 16) = *(v136 + 16);
                  *v142 = v143;
                  v137 = (24 * v139 + 24);
                  v144 = (24 * v139 - (v233 - __src));
                  memcpy((v142 - (v233 - __src)), __src, v233 - __src);
                  v145 = __src;
                  __src = v144;
                  v233 = v137;
                  v234 = 0;
                  if (v145)
                  {
                    operator delete(v145);
                  }
                }

                else
                {
                  v138 = *v136;
                  *(v137 + 2) = *(v136 + 16);
                  *v137 = v138;
                  v137 += 24;
                }

                v233 = v137;
                v136 += 24;
                --v127;
              }

              while (v127);
            }

            *&v228 = 0;
            *(&v228 + 1) = &v228;
            *&v229 = 0x4002000000;
            *(&v229 + 1) = __Block_byref_object_copy__59;
            v230 = __Block_byref_object_dispose__60;
            memset(v231, 0, sizeof(v231));
            LOBYTE(v242) = 0;
            BYTE8(v243) = 0;
            if (v200 <= 0x18 && ((1 << v200) & 0x1550000) != 0)
            {
              std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(&v242, "/usr/lib/dyld");
            }

            create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v241, v134, v129, &v242, &v222);
            v10 = v125;
            v146 = v222;
            if (v222)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(&v228 + 1) + 40), &v222);
            }

            else
            {
              LOBYTE(v202[0]) = 0;
              v205 = 0;
            }

            a2 = a2;
            if (*(&v222 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v222 + 1));
            }

            if (BYTE8(v243) == 1 && SBYTE7(v243) < 0)
            {
              operator delete(v242);
            }

            if (v146)
            {
              *&v222 = 0;
              *(&v222 + 1) = &v222;
              *&v223 = 0x5002000000;
              *(&v223 + 1) = __Block_byref_object_copy__62;
              v224 = __Block_byref_object_dispose__63;
              v225 = 0u;
              v226 = 0u;
              v227 = 1065353216;
              v218 = 0;
              v219 = &v218;
              v220 = 0x2000000000;
              LOBYTE(v221) = 1;
              v165 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v241);
              *&v242 = MEMORY[0x1E69E9820];
              *(&v242 + 1) = 1174405120;
              *&v243 = ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke;
              *(&v243 + 1) = &unk_1F5508028;
              memset(&v245[8], 0, 24);
              std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(&v245[8], __src, v233, 0xAAAAAAAAAAAAAAABLL * ((v233 - __src) >> 3));
              *&v244 = &v222;
              *(&v244 + 1) = &v218;
              v246 = v241;
              *v245 = &v228;
              enumerate_mapped_memory_core_file_dumped_regions(v165, &v242);
              if (v219[3])
              {
                operator new();
              }

              LOBYTE(v202[0]) = 0;
              v205 = 0;
              if (*&v245[8])
              {
                *&v245[16] = *&v245[8];
                operator delete(*&v245[8]);
              }

              _Block_object_dispose(&v218, 8);
              _Block_object_dispose(&v222, 8);
              std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v225);
            }

            _Block_object_dispose(&v228, 8);
            *&v222 = v231;
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v222);
          }

          else
          {
            LOBYTE(v202[0]) = 0;
            v205 = 0;
            v10 = v125;
          }

          if (__src)
          {
            v233 = __src;
            operator delete(__src);
          }
        }

        else
        {
          LOBYTE(v202[0]) = 0;
          v205 = 0;
          v10 = v125;
        }
      }

      else
      {
        LOBYTE(v202[0]) = 0;
        v205 = 0;
      }

      std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, v202);
      if (v205 != 1)
      {
        goto LABEL_344;
      }

      *&v248 = &v202[1];
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
      v166 = v202[0];
      v202[0] = 0;
      if (!v166)
      {
        goto LABEL_344;
      }

      goto LABEL_343;
    }

    v48 = *(v192 + 20);
    LODWORD(v222) = *(v192 + 16);
    *(&v222 + 1) = v192;
    *&v223 = v192 + 32 + v48;
    *(&v223 + 1) = v192 + 32;
    while (2)
    {
      v49 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v222);
      v50 = v49;
      if (!v49)
      {
        goto LABEL_146;
      }

      if (*v49 != 49 || strncmp((v49 + 8), "all image infos", 0x10uLL))
      {
        v51 = 2;
        goto LABEL_80;
      }

      v4 = v4 & 0xFFFFFFFFFFFFFF00 | 1;
      read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(v10, *(v50 + 24), *(v50 + 32), v4, &v228);
      v51 = 1;
      if (BYTE8(v229) != 1 || v228 != 1)
      {
        v5 = 0;
        v188 = 0;
        goto LABEL_80;
      }

      v196 = DWORD1(v228);
      if (!DWORD1(v228))
      {
        v51 = 3;
        goto LABEL_80;
      }

      v181 = v5;
      v183 = v4;
      v198 = v10;
      v52 = 0;
      v194 = *(&v228 + 1);
      v53 = v229;
      v6 = v6 & 0xFFFFFFFFFFFFFF00 | 1;
      v190 = a2;
      while (1)
      {
        read_type_from_raw_core_file_bytes<CS_image_entry>(v198, v194 + (v53 * v52), v53, v6, &v242);
        v54 = v245[0];
        if (v245[0] != 1)
        {
          v5 = 0;
          goto LABEL_130;
        }

        v55 = v242;
        if (v242 != -1)
        {
          break;
        }

LABEL_121:
        if (++v52 == v196)
        {
          v51 = 3;
          v10 = v198;
          v5 = v181;
          v4 = v183;
          goto LABEL_80;
        }
      }

      v56 = CSCppFileMemory::CSCppFileMemory(&v248, v198, v242, 0x401uLL, 1);
      read_path_from_offset_in_cpp_memory(v56, v55, &__p);
      if (BYTE8(v207) != 1)
      {
LABEL_120:
        CSCppFileMemory::~CSCppFileMemory(&v248);
        goto LABEL_121;
      }

      v57 = v6;
      std::string::basic_string[abi:ne200100]<0>(v202, "/dyld");
      v58 = SHIBYTE(v203);
      if (v203 >= 0)
      {
        v59 = HIBYTE(v203);
      }

      else
      {
        v59 = v202[1];
      }

      v60 = BYTE7(v207);
      if ((SBYTE7(v207) & 0x8000000000000000) != 0)
      {
        v62 = *(&__p + 1);
        if (v59 <= *(&__p + 1))
        {
          p_p = __p;
LABEL_99:
          v64 = v62 - v59;
          if (v203 >= 0)
          {
            v65 = v202;
          }

          else
          {
            v65 = v202[0];
          }

          if (v59)
          {
            v187 = SHIBYTE(v203);
            v66 = (p_p + v62);
            v185 = p_p;
            v67 = (p_p + v64);
            v68 = *v65;
            v69 = v59;
            do
            {
              v70 = v69 - v59;
              if (v70 == -1)
              {
                break;
              }

              v71 = memchr(v67, v68, v70 + 1);
              if (!v71)
              {
                break;
              }

              v72 = v71;
              if (!memcmp(v71, v65, v59))
              {
                goto LABEL_109;
              }

              v67 = v72 + 1;
              v69 = v66 - (v72 + 1);
            }

            while (v69 >= v59);
            v72 = v66;
LABEL_109:
            v58 = v187;
            if (v72 == v66)
            {
              v64 = -1;
            }

            else
            {
              v64 = &v72[-v185];
            }

            a2 = v190;
          }

          else
          {
            a2 = v190;
          }

          v6 = v57;
          v63 = v64 != -1;
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_116;
          }

          break;
        }
      }

      else if (v59 <= SBYTE7(v207))
      {
        p_p = &__p;
        v62 = SBYTE7(v207);
        goto LABEL_99;
      }

      v63 = 0;
      v6 = v57;
      if ((SHIBYTE(v203) & 0x80000000) == 0)
      {
LABEL_116:
        if (v63)
        {
          v5 = *(&v243 + 1);
          if ((BYTE8(v207) & 1) != 0 && v60 < 0)
          {
            operator delete(__p);
          }

          v179 = v5 >> 8;
          CSCppFileMemory::~CSCppFileMemory(&v248);
LABEL_130:
          v10 = v198;
          v4 = v183;
          v51 = 1;
          v188 = v54;
LABEL_80:
          if (v51 != 2)
          {
            if (v51 != 3 && (v188 & 1) != 0)
            {
              v79 = v5 | (v179 << 8);
              goto LABEL_179;
            }

LABEL_146:
            *&v248 = 0;
            v80 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v241);
            if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(v80, &v248))
            {
              v79 = v248;
              goto LABEL_179;
            }

            address_from_main_bin_spec_lcnote_with_matching = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(v192, v10, 1);
            if (v82)
            {
              v83 = address_from_main_bin_spec_lcnote_with_matching;
LABEL_259:
              LOBYTE(__p) = 0;
              v208 = 0;
              v222 = 0uLL;
              *&v223 = 0;
              create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>(v241, v83, "__kernel__", &v209, v202);
              if (v202[0])
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v222, v202);
                if (v202[1])
                {
                  atomic_fetch_add_explicit(v202[1] + 1, 1uLL, memory_order_relaxed);
                }

                std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,CSCppSymbolOwner&,0>();
              }

              LOBYTE(v242) = 0;
              LOBYTE(v244) = 0;
              if (v202[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v202[1]);
              }

              *&v248 = &v222;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
              std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, &v242);
              if (v244 == 1)
              {
                *&v248 = &v242 + 8;
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
                v148 = v242;
                *&v242 = 0;
                if (v148)
                {
                  (*(*v148 + 8))(v148);
                }
              }

              v147 = 1;
LABEL_345:
              if (v208 == 1)
              {
                v167 = __p;
                __p = 0uLL;
                v222 = v167;
                v223 = v207;
                v207 = 0uLL;
                if (v147)
                {
                  v168 = v10;
                  v169 = *(v192 + 20);
                  LODWORD(v242) = *(v192 + 16);
                  *(&v242 + 1) = v192;
                  *&v243 = v192 + 32 + v169;
                  *(&v243 + 1) = v192 + 32;
                  for (i = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v242); i; i = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v242))
                  {
                    if (*i == 49 && !strncmp((i + 8), "load binary", 0x10uLL))
                    {
                      v10 = v10 & 0xFFFFFFFFFFFFFF00 | 1;
                      read_type_from_raw_core_file_bytes<CS_load_binary_note>(v168, *(i + 24), *(i + 32), v10, &v248);
                      if (BYTE4(v252) == 1 && *(&v249 + 4) && (!(DWORD1(v250) ^ 0x6D747073 | BYTE8(v250)) || DWORD1(v250) == 7174260))
                      {
                        create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>(v241, *(&v249 + 4), &v250 + 4, &v209, &v228);
                        if (v228)
                        {
                          std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v222 + 1, &v228);
                        }

                        if (*(&v228 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v228 + 1));
                        }
                      }
                    }
                  }

                  a2 = a2 | 2;
                }

                CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v241);
                v171 = v222;
                *&v222 = 0;
                *&v228 = v171;
                v73 = CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(&v222 + 1, &v228, a2, 0);
                v173 = v172;
                v174 = v228;
                *&v228 = 0;
                if (v174)
                {
                  (*(*v174 + 8))(v174);
                }

                v175 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v241);
                release_core_file_mapped_memory_cache(*((v173 & 0xFFFFFFFFFFFFFFFCLL) + 144));
                *((v173 & 0xFFFFFFFFFFFFFFFCLL) + 144) = retain_mapped_memory_cache(v175);
                *&v248 = MEMORY[0x1E69E9820];
                *(&v248 + 1) = 0x40000000;
                *&v249 = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke;
                *(&v249 + 1) = &__block_descriptor_tmp_71;
                *&v250 = v73;
                *(&v250 + 1) = v173;
                CSSymbolicatorApplyMutableContextBlock(v73, v173, &v248);
                *&v242 = &v222 + 8;
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
                v176 = v222;
                *&v222 = 0;
                if (v176)
                {
                  (*(*v176 + 8))(v176);
                }

                if (v208)
                {
                  *&v242 = &__p + 8;
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
                  v177 = __p;
                  *&__p = 0;
                  if (v177)
                  {
                    (*(*v177 + 8))(v177);
                  }
                }
              }

              else
              {
                v73 = 0;
              }

              CSCppCoreFileMemory::~CSCppCoreFileMemory(v241);
LABEL_369:
              std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v209);
LABEL_370:
              CSCppFileMemory::~CSCppFileMemory(v213);
LABEL_371:
              v164 = &v235;
              goto LABEL_372;
            }

            for (j = 0; j != 7; ++j)
            {
              v92 = (*(*&v241[0] + 32))(v241, qword_1D97E42A0[j] - 16, 40);
              if (v93 >= 0x28)
              {
                v83 = v92[2];
                v94 = *v92 == 0x2068736966746143 || *v92 == 0x20206E656B61724BLL;
                if (v94 && v83 != 0)
                {
                  goto LABEL_259;
                }
              }
            }

            *&v248 = 0;
            *(&v248 + 1) = &v248;
            *&v249 = 0x3802000000;
            *(&v249 + 1) = __Block_byref_object_copy__9;
            *&v250 = __Block_byref_object_dispose__9;
            BYTE8(v250) = 0;
            LOBYTE(v251) = 0;
            v96 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v241);
            *&v242 = MEMORY[0x1E69E9820];
            *(&v242 + 1) = 0x40000000;
            *&v243 = ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke;
            *(&v243 + 1) = &unk_1E8584400;
            *(&v244 + 1) = v241;
            *&v244 = &v248;
            enumerate_mapped_memory_core_file_dumped_regions(v96, &v242);
            v79 = *(*(&v248 + 1) + 40);
            v97 = *(*(&v248 + 1) + 48);
            _Block_object_dispose(&v248, 8);
            if (v97)
            {
LABEL_179:
              LOBYTE(__p) = 0;
              v208 = 0;
              *&v222 = 0;
              if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(v241, v79, "<unknown>", &v222))
              {
                TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v222);
              }

              if (v222)
              {
                (*(*v222 + 8))(v222);
              }

              v147 = 0;
              goto LABEL_345;
            }

            v149 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(v192, v10, 3);
            LOBYTE(__p) = 0;
            v208 = 0;
            if ((v150 & 1) == 0)
            {
              goto LABEL_344;
            }

            LOBYTE(v242) = 0;
            BYTE8(v243) = 0;
            create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v241, 0, v149, &v242, &v228);
            if (BYTE8(v243) == 1 && SBYTE7(v243) < 0)
            {
              operator delete(v242);
            }

            if (v228)
            {
              v242 = v228;
              if (*(&v228 + 1))
              {
                atomic_fetch_add_explicit((*(&v228 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v222 = 0uLL;
              *&v223 = 0;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(&v222, &v242, &v243, 1uLL);
              if (*(&v242 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v242 + 1));
              }

              operator new();
            }

            LOBYTE(v248) = 0;
            LOBYTE(v250) = 0;
            if (*(&v228 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v228 + 1));
            }

            std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, &v248);
            if (v250 != 1 || (*&v242 = &v248 + 8, std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242), v166 = v248, *&v248 = 0, !v166))
            {
LABEL_344:
              v147 = 0;
              goto LABEL_345;
            }

LABEL_343:
            (*(*v166 + 8))(v166);
            goto LABEL_344;
          }

          continue;
        }

        if ((BYTE8(v207) & 1) != 0 && v60 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_120;
      }

      break;
    }

    operator delete(v202[0]);
    v60 = BYTE7(v207);
    goto LABEL_116;
  }

  CSCppFileMemory::CSCppFileMemory(v213, v10, 0, v11[5] + 28, 1);
  v217 = v213;
  v12 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v217, 0, 1);
  if (!v12 || (v191 = v12, v12[3] != 4))
  {
    v73 = 0;
    goto LABEL_325;
  }

  v228 = 0u;
  v229 = 0u;
  LODWORD(v230) = 1065353216;
  if (a4)
  {
    v13 = (a3 + 8);
    do
    {
      v14 = *v13;
      v13 += 2;
      *&v248 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 16;
      std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&v228, v248, &std::piecewise_construct, &v248)[4] = v14 & 0xFFFFFFFFFFFFFFFCLL;
      --a4;
    }

    while (a4);
  }

  v15 = create_mapped_memory_cache_for_core_file_without_exclave_metadata(v10, "CSSymbolicator for core file");
  if (!v15)
  {
    v73 = 0;
    goto LABEL_324;
  }

  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v15);
  release_core_file_mapped_memory_cache(v15);
  *&v248 = 0;
  v16 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
  if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(v16, &v248))
  {
    LOBYTE(v209) = 0;
    LOBYTE(v211) = 0;
    v98 = (*(__src + 4))(&__src, v248, 224);
    if (v99 > 0xDF)
    {
      v100 = v10;
      v101 = *v98;
      v102 = *(v98 + 4);
      v103 = *(v98 + 8);
      v104 = *(v98 + 20);
      v105 = *(v98 + 56);
      v243 = *(v98 + 40);
      v244 = v105;
      *v245 = *(v98 + 72);
      *&v245[12] = *(v98 + 84);
      v242 = *(v98 + 24);
      v106 = *(v98 + 112);
      v107 = *(v98 + 176);
      v241[0] = *(v98 + 204);
      if (v101 > 0x10 && v103)
      {
        v199 = v107;
        v214 = 0;
        v215 = 0;
        v216 = 0;
        v108 = (*(__src + 4))(&__src, v103, 12 * v102);
        if (v108)
        {
          if (v102)
          {
            v109 = v215;
            do
            {
              if (v109 >= v216)
              {
                v111 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v214) >> 2);
                v112 = v111 + 1;
                if (v111 + 1 > 0x1555555555555555)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v216 - v214) >> 2) > v112)
                {
                  v112 = 0x5555555555555556 * ((v216 - v214) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v216 - v214) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v113 = 0x1555555555555555;
                }

                else
                {
                  v113 = v112;
                }

                if (v113)
                {
                  std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](&v214, v113);
                }

                v114 = 4 * ((v109 - v214) >> 2);
                v115 = *v108;
                *(v114 + 8) = *(v108 + 8);
                *v114 = v115;
                v109 = (12 * v111 + 12);
                v116 = (12 * v111 - (v215 - v214));
                memcpy((v114 - (v215 - v214)), v214, v215 - v214);
                v117 = v214;
                v214 = v116;
                v215 = v109;
                v216 = 0;
                if (v117)
                {
                  operator delete(v117);
                }
              }

              else
              {
                v110 = *v108;
                *(v109 + 2) = *(v108 + 8);
                *v109 = v110;
                v109 += 12;
              }

              v215 = v109;
              v108 += 12;
              --v102;
            }

            while (v102);
          }

          *&v222 = 0;
          *(&v222 + 1) = &v222;
          *&v223 = 0x4002000000;
          *(&v223 + 1) = __Block_byref_object_copy__59;
          v224 = __Block_byref_object_dispose__60;
          v225 = 0uLL;
          *&v226 = 0;
          LOBYTE(v248) = 0;
          BYTE8(v249) = 0;
          if (v199 <= 0x18 && ((1 << v199) & 0x1550000) != 0)
          {
            std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(&v248, "/usr/lib/dyld");
          }

          create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v106, v104, &v248, &v235);
          v10 = v100;
          v118 = v235;
          if (v235)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(&v222 + 1) + 40), &v235);
          }

          else
          {
            LOBYTE(__p) = 0;
            v208 = 0;
          }

          a2 = a2;
          if (*(&v235 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v235 + 1));
          }

          if (BYTE8(v249) == 1 && SBYTE7(v249) < 0)
          {
            operator delete(v248);
          }

          if (v118)
          {
            *&v235 = 0;
            *(&v235 + 1) = &v235;
            v236 = 0x5002000000;
            v237 = __Block_byref_object_copy__62;
            v238 = __Block_byref_object_dispose__63;
            memset(v239, 0, sizeof(v239));
            v240 = 1065353216;
            v202[0] = 0;
            v202[1] = v202;
            v203 = 0x2000000000;
            v204 = 1;
            v151 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
            *&v248 = MEMORY[0x1E69E9820];
            *(&v248 + 1) = 1174405120;
            *&v249 = ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke;
            *(&v249 + 1) = &unk_1F5507FF0;
            v252 = 0uLL;
            *(&v251 + 1) = 0;
            std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(&v251 + 1, v214, v215, 0xAAAAAAAAAAAAAAABLL * ((v215 - v214) >> 2));
            *&v250 = &v235;
            *(&v250 + 1) = v202;
            *&v253 = &__src;
            *&v251 = &v222;
            enumerate_mapped_memory_core_file_dumped_regions(v151, &v248);
            if (*(v202[1] + 24))
            {
              operator new();
            }

            LOBYTE(__p) = 0;
            v208 = 0;
            if (*(&v251 + 1))
            {
              *&v252 = *(&v251 + 1);
              operator delete(*(&v251 + 1));
            }

            _Block_object_dispose(v202, 8);
            _Block_object_dispose(&v235, 8);
            std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v239);
          }

          _Block_object_dispose(&v222, 8);
          *&v235 = &v225;
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v235);
        }

        else
        {
          LOBYTE(__p) = 0;
          v208 = 0;
          v10 = v100;
        }

        if (v214)
        {
          v215 = v214;
          operator delete(v214);
        }
      }

      else
      {
        LOBYTE(__p) = 0;
        v208 = 0;
        v10 = v100;
      }
    }

    else
    {
      LOBYTE(__p) = 0;
      v208 = 0;
    }

    std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v209, &__p);
    if (v208 == 1)
    {
      *&v248 = &__p + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
      v152 = __p;
      *&__p = 0;
      if (v152)
      {
LABEL_298:
        (*(*v152 + 8))(v152);
      }
    }

LABEL_299:
    v119 = 0;
    goto LABEL_300;
  }

  v17 = *(v191 + 20);
  LODWORD(v242) = *(v191 + 16);
  *(&v242 + 1) = v191;
  *&v243 = v191 + 28 + v17;
  *(&v243 + 1) = v191 + 28;
  do
  {
    v18 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v242);
    v19 = v18;
    if (!v18)
    {
      goto LABEL_139;
    }

    if (*v18 != 49 || strncmp((v18 + 8), "all image infos", 0x10uLL))
    {
      v20 = 2;
      continue;
    }

    v4 = v4 & 0xFFFFFFFFFFFFFF00 | 1;
    read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(v10, *(v19 + 24), *(v19 + 32), v4, &v222);
    v20 = 1;
    if (BYTE8(v223) != 1 || v222 != 1)
    {
      v5 = 0;
      v188 = 0;
      continue;
    }

    v195 = DWORD1(v222);
    if (!DWORD1(v222))
    {
      v20 = 3;
      continue;
    }

    v180 = v5;
    v182 = v4;
    v197 = v10;
    v21 = 0;
    v193 = *(&v222 + 1);
    v22 = v223;
    v6 = v6 & 0xFFFFFFFFFFFFFF00 | 1;
    v189 = a2;
    while (1)
    {
      read_type_from_raw_core_file_bytes<CS_image_entry>(v197, v193 + (v22 * v21), v22, v6, &v235);
      v23 = v239[1];
      if (LOBYTE(v239[1]) != 1)
      {
        v5 = 0;
        goto LABEL_65;
      }

      v24 = v235;
      if (v235 != -1)
      {
        break;
      }

LABEL_56:
      if (++v21 == v195)
      {
        v20 = 3;
        v10 = v197;
        v5 = v180;
        v4 = v182;
        goto LABEL_15;
      }
    }

    v25 = CSCppFileMemory::CSCppFileMemory(&v248, v197, v235, 0x401uLL, 1);
    read_path_from_offset_in_cpp_memory(v25, v24, &v209);
    if (BYTE8(v210) != 1)
    {
      goto LABEL_55;
    }

    v26 = v6;
    std::string::basic_string[abi:ne200100]<0>(&__p, "/dyld");
    v27 = SBYTE7(v207);
    if ((SBYTE7(v207) & 0x80u) == 0)
    {
      v28 = BYTE7(v207);
    }

    else
    {
      v28 = *(&__p + 1);
    }

    v29 = BYTE7(v210);
    if ((SBYTE7(v210) & 0x8000000000000000) != 0)
    {
      v31 = *(&v209 + 1);
      if (v28 > *(&v209 + 1))
      {
LABEL_31:
        v32 = 0;
        v6 = v26;
        if ((SBYTE7(v207) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_50:
        operator delete(__p);
        v29 = BYTE7(v210);
        goto LABEL_51;
      }

      v30 = v209;
    }

    else
    {
      if (v28 > SBYTE7(v210))
      {
        goto LABEL_31;
      }

      v30 = &v209;
      v31 = SBYTE7(v210);
    }

    v33 = v31 - v28;
    if ((SBYTE7(v207) & 0x80u) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p;
    }

    if (v28)
    {
      v186 = SBYTE7(v207);
      v35 = &v30[v31];
      v184 = v30;
      v36 = &v30[v33];
      v37 = *v34;
      v38 = v28;
      do
      {
        v39 = v38 - v28;
        if (v39 == -1)
        {
          break;
        }

        v40 = memchr(v36, v37, v39 + 1);
        if (!v40)
        {
          break;
        }

        v41 = v40;
        if (!memcmp(v40, v34, v28))
        {
          goto LABEL_44;
        }

        v36 = v41 + 1;
        v38 = v35 - (v41 + 1);
      }

      while (v38 >= v28);
      v41 = v35;
LABEL_44:
      v27 = v186;
      if (v41 == v35)
      {
        v33 = -1;
      }

      else
      {
        v33 = v41 - v184;
      }

      a2 = v189;
    }

    else
    {
      a2 = v189;
    }

    v6 = v26;
    v32 = v33 != -1;
    if (v27 < 0)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (!v32)
    {
      if ((BYTE8(v210) & 1) != 0 && v29 < 0)
      {
        operator delete(v209);
      }

LABEL_55:
      CSCppFileMemory::~CSCppFileMemory(&v248);
      goto LABEL_56;
    }

    v5 = v237;
    if ((BYTE8(v210) & 1) != 0 && v29 < 0)
    {
      operator delete(v209);
    }

    v179 = v5 >> 8;
    CSCppFileMemory::~CSCppFileMemory(&v248);
LABEL_65:
    v10 = v197;
    v4 = v182;
    v20 = 1;
    v188 = v23;
LABEL_15:
    ;
  }

  while (v20 == 2);
  if (v20 != 3 && (v188 & 1) != 0)
  {
    v74 = v5 | (v179 << 8);
    goto LABEL_163;
  }

LABEL_139:
  *&v248 = 0;
  v75 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
  if (mapped_memory_core_file_get_dyld_all_image_infos_addr(v75, &v248))
  {
    v76 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(v191, v10, 1);
    if (v77)
    {
      v78 = v76;
    }

    else
    {
      v84 = 0;
      while (1)
      {
        v85 = (*(__src + 4))(&__src, qword_1D97E42A0[v84] - 16, 40);
        if (v86 >= 0x28)
        {
          v78 = v85[2];
          v87 = *v85 == 0x2068736966746143 || *v85 == 0x20206E656B61724BLL;
          if (v87 && v78 != 0)
          {
            break;
          }
        }

        if (++v84 == 7)
        {
          *&v248 = 0;
          *(&v248 + 1) = &v248;
          *&v249 = 0x3802000000;
          *(&v249 + 1) = __Block_byref_object_copy__9;
          *&v250 = __Block_byref_object_dispose__9;
          BYTE8(v250) = 0;
          LOBYTE(v251) = 0;
          v89 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
          *&v235 = MEMORY[0x1E69E9820];
          *(&v235 + 1) = 0x40000000;
          v236 = ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke;
          v237 = &unk_1E8584398;
          v239[0] = &__src;
          v238 = &v248;
          enumerate_mapped_memory_core_file_dumped_regions(v89, &v235);
          v74 = *(*(&v248 + 1) + 40);
          v90 = *(*(&v248 + 1) + 48);
          _Block_object_dispose(&v248, 8);
          if (v90)
          {
            goto LABEL_163;
          }

          v121 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(v191, v10, 3);
          LOBYTE(v209) = 0;
          LOBYTE(v211) = 0;
          if (v122)
          {
            LOBYTE(v235) = 0;
            LOBYTE(v237) = 0;
            create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, 0, v121, &v235, &v222);
            if (v237 == 1 && SHIBYTE(v236) < 0)
            {
              operator delete(v235);
            }

            if (v222)
            {
              v235 = v222;
              if (*(&v222 + 1))
              {
                atomic_fetch_add_explicit((*(&v222 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v242 = 0uLL;
              *&v243 = 0;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(&v242, &v235, &v236, 1uLL);
              if (*(&v235 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v235 + 1));
              }

              operator new();
            }

            LOBYTE(v248) = 0;
            LOBYTE(v250) = 0;
            if (*(&v222 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v222 + 1));
            }

            std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v209, &v248);
            if (v250 == 1)
            {
              *&v235 = &v248 + 8;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v235);
              v152 = v248;
              *&v248 = 0;
              if (v152)
              {
                goto LABEL_298;
              }
            }
          }

          goto LABEL_299;
        }
      }
    }

    LOBYTE(v209) = 0;
    LOBYTE(v211) = 0;
    v242 = 0uLL;
    *&v243 = 0;
    create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v78, "__kernel__", &v228, &__p);
    if (__p)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v242, &__p);
      if (*(&__p + 1))
      {
        atomic_fetch_add_explicit((*(&__p + 1) + 8), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,CSCppSymbolOwner&,0>();
    }

    LOBYTE(v235) = 0;
    LOBYTE(v238) = 0;
    if (*(&__p + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
    }

    *&v248 = &v242;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
    std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v209, &v235);
    if (v238 == 1)
    {
      *&v248 = &v235 + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v248);
      v120 = v235;
      *&v235 = 0;
      if (v120)
      {
        (*(*v120 + 8))(v120);
      }
    }

    v119 = 1;
  }

  else
  {
    v74 = v248;
LABEL_163:
    LOBYTE(v209) = 0;
    LOBYTE(v211) = 0;
    *&v242 = 0;
    if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v74, "<unknown>", &v242))
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v242);
    }

    if (v242)
    {
      (*(*v242 + 8))(v242);
    }

    v119 = 0;
  }

LABEL_300:
  if (v211 == 1)
  {
    v153 = v209;
    v209 = 0uLL;
    v242 = v153;
    v243 = v210;
    v210 = 0uLL;
    if (v119)
    {
      v154 = v10;
      v155 = *(v191 + 20);
      LODWORD(v235) = *(v191 + 16);
      *(&v235 + 1) = v191;
      v236 = v191 + 28 + v155;
      v237 = (v191 + 28);
      for (k = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v235); k; k = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v235))
      {
        if (*k == 49 && !strncmp((k + 8), "load binary", 0x10uLL))
        {
          v10 = v10 & 0xFFFFFFFFFFFFFF00 | 1;
          read_type_from_raw_core_file_bytes<CS_load_binary_note>(v154, *(k + 24), *(k + 32), v10, &v248);
          if (BYTE4(v252) == 1 && *(&v249 + 4) && (!(DWORD1(v250) ^ 0x6D747073 | BYTE8(v250)) || DWORD1(v250) == 7174260))
          {
            create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, *(&v249 + 4), &v250 + 4, &v228, &v222);
            if (v222)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v242 + 1, &v222);
            }

            if (*(&v222 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v222 + 1));
            }
          }
        }
      }

      a2 = a2 | 2;
    }

    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(&__src);
    v157 = v242;
    *&v242 = 0;
    *&v222 = v157;
    v73 = CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(&v242 + 1, &v222, a2, 0);
    v159 = v158;
    v160 = v222;
    *&v222 = 0;
    if (v160)
    {
      (*(*v160 + 8))(v160);
    }

    v161 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
    release_core_file_mapped_memory_cache(*((v159 & 0xFFFFFFFFFFFFFFFCLL) + 144));
    *((v159 & 0xFFFFFFFFFFFFFFFCLL) + 144) = retain_mapped_memory_cache(v161);
    *&v248 = MEMORY[0x1E69E9820];
    *(&v248 + 1) = 0x40000000;
    *&v249 = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke;
    *(&v249 + 1) = &__block_descriptor_tmp_4_1;
    *&v250 = v73;
    *(&v250 + 1) = v159;
    CSSymbolicatorApplyMutableContextBlock(v73, v159, &v248);
    *&v235 = &v242 + 8;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v235);
    v162 = v242;
    *&v242 = 0;
    if (v162)
    {
      (*(*v162 + 8))(v162);
    }

    if (v211)
    {
      *&v235 = &v209 + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v235);
      v163 = v209;
      *&v209 = 0;
      if (v163)
      {
        (*(*v163 + 8))(v163);
      }
    }
  }

  else
  {
    v73 = 0;
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
LABEL_324:
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v228);
LABEL_325:
  v164 = v213;
LABEL_372:
  CSCppFileMemory::~CSCppFileMemory(v164);
  CSCppFileMemory::~CSCppFileMemory(v201);
  return v73;
}

void sub_1D9795FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  v57 = STACK[0x380];
  if (STACK[0x380])
  {
    STACK[0x388] = v57;
    operator delete(v57);
  }

  STACK[0x380] = v55 - 256;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x380]);
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::optional<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>::~optional(&a41);
  CSCppCoreFileMemory::~CSCppCoreFileMemory(&STACK[0x360]);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a47);
  CSCppFileMemory::~CSCppFileMemory(&a54);
  CSCppFileMemory::~CSCppFileMemory(&STACK[0x2E0]);
  CSCppFileMemory::~CSCppFileMemory(&a20);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 20);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = a1 + 28 + v5;
  v14 = a1 + 28;
  address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (address_from_main_bin_spec_lcnote_with_matching_type)
  {
    v7 = address_from_main_bin_spec_lcnote_with_matching_type;
    while (*v7 != 49 || strncmp((v7 + 8), "main bin spec", 0x10uLL))
    {
      address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v7 = address_from_main_bin_spec_lcnote_with_matching_type;
      if (!address_from_main_bin_spec_lcnote_with_matching_type)
      {
        goto LABEL_6;
      }
    }

    type_from_raw_core_file = read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(a2, *(v7 + 24), *(v7 + 32), 1);
    if ((type_from_raw_core_file & 0x100000000) != 0)
    {
      if (type_from_raw_core_file == 2)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(a2, v7, v3);
        goto LABEL_14;
      }

      if (type_from_raw_core_file == 1)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(a2, v7, v3);
LABEL_14:
        v8 = address_from_main_bin_spec_lcnote_with_matching_type & 0xFFFFFFFFFFFFFF00;
        return address_from_main_bin_spec_lcnote_with_matching_type | v8;
      }
    }

    v8 = 0;
    LOBYTE(address_from_main_bin_spec_lcnote_with_matching_type) = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return address_from_main_bin_spec_lcnote_with_matching_type | v8;
}

uint64_t *std::optional<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>::~optional(uint64_t *a1)
{
  if (*(a1 + 32) == 1)
  {
    v4 = (a1 + 1);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_14;
  v5[4] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000000, v5);
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  result = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
  if (result)
  {
    result = CSGetBinaryPathForExclaveWithUUIDBytes(result);
    if (result)
    {
      v7 = result;
      MutableInContext = CSSymbolOwnerMakeMutableInContext(a2, a3, *(a1 + 32));
      v10 = v9;
      CSSymbolOwnerSetPathForSymbolication(MutableInContext, v9, v7);
      Path = CSSymbolOwnerGetPath(MutableInContext, v10);
      if (!Path || (result = strcmp(Path, "<unknown>"), !result))
      {

        return CSSymbolOwnerSetPath(MutableInContext, v10, v7);
      }
    }
  }

  return result;
}

uint64_t *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::~pair(uint64_t *a1)
{
  v4 = (a1 + 1);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x17)
  {
    *a5 = 0;
    *(a5 + 24) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v10, a1, a2, 0x18uLL, 1);
    v7 = (*(v10[0] + 4))(v10, a2, 24);
    if (v8 > 0x17)
    {
      *a5 = *v7;
      *(a5 + 16) = *(v7 + 16);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 24) = v9;
    CSCppFileMemory::~CSCppFileMemory(v10);
  }
}

void sub_1D9796EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

void read_type_from_raw_core_file_bytes<CS_image_entry>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x2F)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v11, a1, a2, 0x30uLL, 1);
    v7 = (*(v11[0] + 4))(v11, a2, 48);
    if (v8 > 0x2F)
    {
      v10 = v7[1];
      *a5 = *v7;
      *(a5 + 16) = v10;
      *(a5 + 32) = v7[2];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 48) = v9;
    CSCppFileMemory::~CSCppFileMemory(v11);
  }
}

void sub_1D9796FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

uint64_t read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(char *a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) != 0 && a3 < 4)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v11, a1, a2, 4uLL, 1);
    v8 = (*(v11[0] + 4))(v11, a2, 4);
    if (v9 >= 4)
    {
      v6 = *v8;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v4 = v6 >> 8;
    CSCppFileMemory::~CSCppFileMemory(v11);
  }

  return (v7 << 32) | ((*&v4 & 0xFFFFFFLL) << 8) | v6;
}

void sub_1D97970AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(char *a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) < 0x24uLL)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 24);
  CSCppFileMemory::CSCppFileMemory(v13, a1, v4, 0x24uLL, 1);
  v5 = (*(v13[0] + 4))(v13, v4, 36);
  if (v6 < 0x24)
  {
    CSCppFileMemory::~CSCppFileMemory(v13);
LABEL_9:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  v7 = *(v5 + 4);
  v8 = *(v5 + 8);
  CSCppFileMemory::~CSCppFileMemory(v13);
  if (v7 != a3 || v8 == -1)
  {
    goto LABEL_9;
  }

  v11 = v8 & 0xFFFFFFFFFFFFFF00;
  v12 = v8;
  return v11 | v12;
}

void sub_1D97971A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(char *a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) < 0x30uLL)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 24);
  CSCppFileMemory::CSCppFileMemory(v13, a1, v4, 0x30uLL, 1);
  v5 = (*(v13[0] + 4))(v13, v4, 48);
  if (v6 < 0x30)
  {
    CSCppFileMemory::~CSCppFileMemory(v13);
LABEL_9:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  v7 = *(v5 + 4);
  v8 = *(v5 + 8);
  CSCppFileMemory::~CSCppFileMemory(v13);
  if (v7 != a3 || v8 == -1)
  {
    goto LABEL_9;
  }

  v11 = v8 & 0xFFFFFFFFFFFFFF00;
  v12 = v8;
  return v11 | v12;
}

void sub_1D9797294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = (*a2 + 4095) & 0xFFFFFFFFFFFFF000;
  if (v4 < *a2 + a2[3] - 28)
  {
    while (1)
    {
      v13 = 0;
      mach_header_and_cmds_from = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(*(a1 + 40), v4, "<unknown>", &v13);
      if (mach_header_and_cmds_from)
      {
        break;
      }

      v9 = v13[3];
      if (*(v9 + 12) == 7)
      {
        v10 = *(*(a1 + 32) + 8);
        *(v10 + 40) = v4;
        v8 = 1;
        *(v10 + 48) = 1;
LABEL_8:
        *a3 = 1;
        goto LABEL_9;
      }

      v11 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(v9, "__TEXT");
      v8 = 0;
      if (v11)
      {
        v4 = (v4 + *(v11 + 28) + 4095) & 0xFFFFFFFFFFFFF000;
      }

      else
      {
        v4 += 4096;
      }

LABEL_9:
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if ((v8 | 2) != 2)
      {
        return;
      }

      if (v4 >= *a2 + a2[3] - 28)
      {
        goto LABEL_17;
      }
    }

    if (mach_header_and_cmds_from == 29)
    {
      v4 += 4096;
      v8 = 2;
      goto LABEL_9;
    }

    v8 = 1;
    goto LABEL_8;
  }

LABEL_17:
  v12 = *(a1 + 40);

  CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v12);
}

uint64_t read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2;
  v6 = (*(*a1 + 32))(a1, a2, 28);
  if (!v6)
  {
    return 5;
  }

  if (*v6 == -17958194)
  {
    v8 = a1;
    if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v8, v4, 1))
    {
      operator new();
    }

    return 5;
  }

  return 29;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

__n128 __Block_byref_object_copy__59(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, a2);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a4, *(a4 + 8));
    }

    else
    {
      v11 = *a4;
    }

    v12 = 1;
  }

  else
  {
    read_path_from_offset_in_cpp_memory(a1, a2, &v11);
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v11, "<unknown>", &__p);
  v9 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a3, p_p, &v9))
  {
    TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v9);
  }

  *a5 = 0;
  a5[1] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1D97978BC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v25 = *(v22 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23)
  {
    (*(*v23 + 8))(v23, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 == v5)
  {
LABEL_6:
    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(*(a1 + 80));
  }

  else
  {
    while (*v4 - *a2 >= a2[1])
    {
      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    v6 = *(*(a1 + 32) + 8);
    __p = *v4;
    if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((v6 + 40), &__p))
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_impl<unsigned int const&>(*(*(a1 + 32) + 8) + 40, v4);
    }
  }
}

void sub_1D9797A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *__copy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer32ENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 2));
}

void __destroy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer32ENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
    }

    else
    {
      *a3 = *a1;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, a2);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
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
      if (result[2] == v3)
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

uint64_t *std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer32,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9797CD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(a1 + 1, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D9797D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(void **a1, uint64_t *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {

      std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::operator=[abi:ne200100](a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    v6 = a1 + 1;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    result = *(a2 + 1);
    *(a1 + 1) = result;
    a1[3] = a2[3];
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

void **std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::operator=[abi:ne200100](void **a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  return a1;
}

void create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void ***a6@<X8>)
{
  v9 = 0;
  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2, a3, &v9))
  {
    v8 = v9;
    v10 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(*(v9 + 24));
    std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a4, v10, &std::piecewise_construct, &v10);
    TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v8);
  }

  *a6 = 0;
  a6[1] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void sub_1D97980B4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppFakeTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppFakeTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(a1 + 1, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D9798160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>> const,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(a1 + 1, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D97981C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

void read_type_from_raw_core_file_bytes<CS_load_binary_note>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x43)
  {
    *a5 = 0;
    *(a5 + 68) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v12, a1, a2, 0x44uLL, 1);
    v7 = (*(v12[0] + 4))(v12, a2, 68);
    if (v8 > 0x43)
    {
      v10 = *(v7 + 48);
      *(a5 + 32) = *(v7 + 32);
      *(a5 + 48) = v10;
      *(a5 + 64) = *(v7 + 64);
      v11 = *(v7 + 16);
      *a5 = *v7;
      *(a5 + 16) = v11;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 68) = v9;
    CSCppFileMemory::~CSCppFileMemory(v12);
  }
}

void sub_1D97982B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, char *a2, int a3)
{
  v5 = *(a1 + 20);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = a1 + 32 + v5;
  v14 = a1 + 32;
  address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (address_from_main_bin_spec_lcnote_with_matching_type)
  {
    v7 = address_from_main_bin_spec_lcnote_with_matching_type;
    while (*v7 != 49 || strncmp((v7 + 8), "main bin spec", 0x10uLL))
    {
      address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v7 = address_from_main_bin_spec_lcnote_with_matching_type;
      if (!address_from_main_bin_spec_lcnote_with_matching_type)
      {
        goto LABEL_6;
      }
    }

    type_from_raw_core_file = read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(a2, *(v7 + 24), *(v7 + 32), 1);
    if ((type_from_raw_core_file & 0x100000000) != 0)
    {
      if (type_from_raw_core_file == 2)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(a2, v7, a3);
        goto LABEL_14;
      }

      if (type_from_raw_core_file == 1)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(a2, v7, a3);
LABEL_14:
        v8 = address_from_main_bin_spec_lcnote_with_matching_type & 0xFFFFFFFFFFFFFF00;
        return address_from_main_bin_spec_lcnote_with_matching_type | v8;
      }
    }

    v8 = 0;
    LOBYTE(address_from_main_bin_spec_lcnote_with_matching_type) = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return address_from_main_bin_spec_lcnote_with_matching_type | v8;
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_70_0;
  v5[4] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000000, v5);
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  result = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
  if (result)
  {
    result = CSGetBinaryPathForExclaveWithUUIDBytes(result);
    if (result)
    {
      v7 = result;
      MutableInContext = CSSymbolOwnerMakeMutableInContext(a2, a3, *(a1 + 32));
      v10 = v9;
      CSSymbolOwnerSetPathForSymbolication(MutableInContext, v9, v7);
      Path = CSSymbolOwnerGetPath(MutableInContext, v10);
      if (!Path || (result = strcmp(Path, "<unknown>"), !result))
      {

        return CSSymbolOwnerSetPath(MutableInContext, v10, v7);
      }
    }
  }

  return result;
}

void ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = (*a2 + 4095) & 0xFFFFFFFFFFFFF000;
  if (v4 < *a2 + a2[3] - 32)
  {
    while (1)
    {
      v13 = 0;
      mach_header_and_cmds_from = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(*(a1 + 40), v4, "<unknown>", &v13);
      if (mach_header_and_cmds_from)
      {
        break;
      }

      v9 = v13[3];
      if (*(v9 + 12) == 7)
      {
        v10 = *(*(a1 + 32) + 8);
        *(v10 + 40) = v4;
        v8 = 1;
        *(v10 + 48) = 1;
LABEL_8:
        *a3 = 1;
        goto LABEL_9;
      }

      v11 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(v9, "__TEXT");
      v8 = 0;
      if (v11)
      {
        v4 = (v4 + *(v11 + 32) + 4095) & 0xFFFFFFFFFFFFF000;
      }

      else
      {
        v4 += 4096;
      }

LABEL_9:
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if ((v8 | 2) != 2)
      {
        return;
      }

      if (v4 >= *a2 + a2[3] - 32)
      {
        goto LABEL_17;
      }
    }

    if (mach_header_and_cmds_from == 29)
    {
      v4 += 4096;
      v8 = 2;
      goto LABEL_9;
    }

    v8 = 1;
    goto LABEL_8;
  }

LABEL_17:
  v12 = *(a1 + 40);

  CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v12);
}

uint64_t read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = (*(*a1 + 32))(a1, a2, 32);
  if (!v6)
  {
    return 5;
  }

  if (*v6 == -17958193)
  {
    v8 = a1;
    if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v8, a2, 1))
    {
      operator new();
    }

    return 5;
  }

  return 29;
}

void create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a4, *(a4 + 8));
    }

    else
    {
      v11 = *a4;
    }

    v12 = 1;
  }

  else
  {
    read_path_from_offset_in_cpp_memory(a1, a2, &v11);
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v11, "<unknown>", &__p);
  v9 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a3, p_p, &v9))
  {
    TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v9);
  }

  *a5 = 0;
  a5[1] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1D9798990(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v25 = *(v22 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23)
  {
    (*(*v23 + 8))(v23, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 == v5)
  {
LABEL_15:
    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(*(a1 + 80));
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    while (1)
    {
      if (*v4 - v7 < v8)
      {
        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((*(*(a1 + 32) + 8) + 40), v4))
        {
          break;
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((*(*(a1 + 32) + 8) + 40), v4, v4);
        v9 = *(a1 + 80);
        v11 = *v4;
        v10 = v4[1];
        LOBYTE(__p) = 0;
        v15 = 0;
        create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v9, v10, v11, &__p, &v16);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(__p);
        }

        v12 = v16;
        if (v16)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(*(a1 + 48) + 8) + 40), &v16);
        }

        else
        {
          *a3 = 1;
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        if (*(&v16 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }

        if (!v12)
        {
          break;
        }
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_15;
      }
    }
  }
}

void sub_1D9798B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *__copy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer64ENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
}

void __destroy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer64ENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2, void *a3)
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

uint64_t *std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer64,unsigned long long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9798E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void ***a6@<X8>)
{
  v9 = 0;
  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2, a3, &v9))
  {
    v8 = v9;
    v10 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(*(v9 + 24));
    std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a4, v10, &std::piecewise_construct, &v10);
    TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v8);
  }

  *a6 = 0;
  a6[1] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void sub_1D9799060(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void CSCppTaskMemory::CSCppTaskMemory(CSCppTaskMemory *this, const CSCppMachTaskContainer *a2, int a3)
{
  *this = &unk_1F5508068;
  v5 = (this + 8);
  CSCppMachTaskContainer::CSCppMachTaskContainer((this + 8), a2);
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (a3)
  {
    task_suspend2(*(this + 4), this + 28);
  }

  task_info_outCnt = 5;
  if (!CSCppMachTaskContainer::is_self_task(v5))
  {
    if (CSTaskIs64Bit(*(this + 4)))
    {
      if ((CSTaskIsTranslated(*(this + 4)) & 1) == 0 && !task_info(*MEMORY[0x1E69E9A60], 0x11u, task_info_out, &task_info_outCnt))
      {
        v6 = *task_info_out;
        v13 = 0;
        shared_cache_range = _dyld_get_shared_cache_range();
        if (shared_cache_range)
        {
          v8 = v13;
          if (CSCppTaskMemory::region_at_address(this, shared_cache_range, 1) == shared_cache_range)
          {
            *(this + 9) = shared_cache_range;
            *(this + 10) = v8;
            v12 = this;
            v9 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v12, shared_cache_range);
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 0x40000000;
            v11[2] = ___ZN15CSCppTaskMemoryC2ERK22CSCppMachTaskContainerb_block_invoke;
            v11[3] = &__block_descriptor_tmp_15;
            v11[4] = this;
            v11[5] = v6;
            CSCppDyldSharedCache::for_each_mapped_cache(v9, v11);
            for (i = *(this + 11); i != *(this + 12); i += 2)
            {
              if (*i)
              {
                return;
              }
            }

            *(this + 9) = 0;
            *(this + 10) = 0;
          }
        }
      }
    }
  }
}

void sub_1D979926C(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    v1[12] = v5;
    operator delete(v5);
  }

  v6 = v1[6];
  if (v6)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  CSCppMachTaskContainer::~CSCppMachTaskContainer(v2);
  _Unwind_Resume(a1);
}

void CSCppTaskMemory::CSCppTaskMemory(CSCppTaskMemory *this, mach_port_name_t a2, int a3, int a4)
{
  CSCppMachTaskContainer::CSCppMachTaskContainer(v6, a2, a3);
  CSCppTaskMemory::CSCppTaskMemory(this, v6, a4);
  CSCppMachTaskContainer::~CSCppMachTaskContainer(v6);
}

mach_vm_address_t CSCppTaskMemory::region_at_address(CSCppTaskMemory *this, mach_vm_address_t a2, int a3)
{
  nesting_depth = 999999;
  address = a2;
  size = 0;
  infoCnt = 12;
  if (mach_vm_region_recurse(*(this + 4), &address, &size, &nesting_depth, info, &infoCnt) || address > a2 || size + address <= a2)
  {
    return 0;
  }

  if ((info[0] & a3) == a3)
  {
    return address;
  }

  return 0;
}

void ___ZN15CSCppTaskMemoryC2ERK22CSCppMachTaskContainerb_block_invoke(uint64_t a1, CSCppDyldSharedCache *this)
{
  v3 = *(a1 + 32);
  CSCppDyldSharedCache::data_segment_ranges(&v20, this);
  v4 = v20;
  v5 = v21;
  if (v20 != v21)
  {
    v6 = v3[12];
    do
    {
      v7 = v4[1];
      v8 = *(*(a1 + 40) + 152) + *v4;
      v9 = v3[13];
      if (v6 >= v9)
      {
        v10 = v3[11];
        v11 = v6 - v10;
        v12 = (v6 - v10) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v3 + 11), v15);
        }

        v16 = v12;
        v17 = (16 * v12);
        *v17 = v8;
        v17[1] = v7;
        v6 = (16 * v12 + 16);
        v18 = &v17[-2 * v16];
        memcpy(v18, v10, v11);
        v19 = v3[11];
        v3[11] = v18;
        v3[12] = v6;
        v3[13] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v6 = v8;
        *(v6 + 1) = v7;
        v6 += 16;
      }

      v3[12] = v6;
      v4 += 2;
    }

    while (v4 != v5);
    v4 = v20;
  }

  if (v4)
  {
    v21 = v4;
    operator delete(v4);
  }
}

void sub_1D9799514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppTaskMemory::~CSCppTaskMemory(CSCppTaskMemory *this)
{
  *this = &unk_1F5508068;
  v2 = *(this + 28);
  if (v2 + 1 >= 2)
  {
    task_resume2(v2);
    *(this + 28) = 0;
  }

  if (!CSCppMachTaskContainer::is_self_task((this + 8)))
  {
    v3 = *(this + 3);
    if (v3 != *(this + 4))
    {
      v4 = MEMORY[0x1E69E9A60];
      do
      {
        mach_vm_deallocate(*v4, *(v3 + 16), *(v3 + 8));
        v3 += 24;
      }

      while (v3 != *(this + 4));
    }

    v5 = *(this + 6);
    if (v5 != *(this + 7))
    {
      v6 = MEMORY[0x1E69E9A60];
      do
      {
        mach_vm_deallocate(*v6, *(v5 + 16), *(v5 + 8));
        v5 += 24;
      }

      while (v5 != *(this + 7));
    }
  }

  *(this + 4) = *(this + 3);
  v7 = *(this + 6);
  *(this + 7) = v7;
  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
    v7 = *(this + 6);
  }

  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  CSCppMachTaskContainer::~CSCppMachTaskContainer((this + 8));
}

{
  CSCppTaskMemory::~CSCppTaskMemory(this);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCppTaskMemory::map_task_memory(uint64_t a1, mach_vm_address_t a2, mach_vm_size_t a3, mach_vm_address_t *a4, _DWORD *a5)
{
  if (CSCppMachTaskContainer::is_self_task((a1 + 8)))
  {
    result = 0;
    *a4 = a2;
    *a5 = a3;
  }

  else
  {
    *a4 = 0;
    *a5 = a3;
    v12 = 1;
    cur_protection = 0;
    v11 = 0;
    result = remap_memory_from_target(*MEMORY[0x1E69E9A60], &v11, a3, 0, 33, *(a1 + 16), a2, 1, &cur_protection, &v12, 1u);
    if (!result)
    {
      *a4 = v11;
    }
  }

  return result;
}

uint64_t CSCppTaskMemory::resume(CSCppTaskMemory *this)
{
  result = *(this + 28);
  if ((result + 1) >= 2)
  {
    result = task_resume2(result);
    *(this + 28) = 0;
  }

  return result;
}

mach_vm_address_t CSCppTaskMemory::bytes_at(CSCppTaskMemory *this, mach_vm_address_t a2, mach_vm_address_t a3)
{
  v3 = a3;
  v4 = a2;
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(this + 9);
  v7 = a3 + a2;
  if (a2 >= v6 && v7 <= *(this + 10) + v6)
  {
    for (i = *(this + 11); i != *(this + 12); i += 2)
    {
      if (a2 >= *i && v7 <= i[1] + *i)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v8 = *(this + 3);
    v9 = *(this + 4);
    v10 = v9;
    if (v9 != v8)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v10 = *(this + 3);
      do
      {
        v12 = v11 >> 1;
        v13 = &v10->n128_u64[3 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 3);
        v11 += ~(v11 >> 1);
        if (v15 < v7)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    if (v10 == v8 || (v16 = v10[-2].n128_u64[1], a2 < v16) || v7 > v10[-1].n128_u64[0] + v16)
    {
      if (a2 >= v7)
      {
        v18 = a2;
LABEL_23:
        if (v9 != v8)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
          v9 = v8;
          do
          {
            v23 = v22 >> 1;
            v24 = &v9->n128_u64[3 * (v22 >> 1)];
            v26 = *v24;
            v25 = (v24 + 3);
            v22 += ~(v22 >> 1);
            if (v26 < v7)
            {
              v9 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v27 = v9;
        do
        {
          v28 = v27;
          if (v27 == v8)
          {
            break;
          }

          v27 = (v27 - 24);
        }

        while (v18 < v28[-1].n128_u64[0] + v28[-2].n128_u64[1]);
        if (v28 != v9)
        {
          v55 = v4;
          v29 = *(this + 7);
          v30 = v28;
          do
          {
            v31 = *(this + 8);
            if (v29 >= v31)
            {
              v33 = *(this + 6);
              v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v33) >> 3);
              v35 = v34 + 1;
              if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 3);
              if (2 * v36 > v35)
              {
                v35 = 2 * v36;
              }

              if (v36 >= 0x555555555555555)
              {
                v37 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](this + 48, v37);
              }

              v38 = 8 * ((v29 - v33) >> 3);
              v39 = *v30;
              *(v38 + 16) = v30[1].n128_u64[0];
              *v38 = v39;
              v29 = v38 + 24;
              v40 = *(this + 6);
              v41 = *(this + 7) - v40;
              v42 = 24 * v34 - v41;
              memcpy((v38 - v41), v40, v41);
              v43 = *(this + 6);
              *(this + 6) = v42;
              *(this + 7) = v29;
              *(this + 8) = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              v32 = *v30;
              *(v29 + 16) = v30[1].n128_u64[0];
              *v29 = v32;
              v29 += 24;
            }

            *(this + 7) = v29;
            v44 = v3 + v18;
            v45 = v30->n128_u64[0];
            v46 = v30->n128_u64[1];
            v30 = (v30 + 24);
            v47 = v46 + v45;
            if (v3 + v18 <= v47)
            {
              v44 = v47;
            }

            if (v18 >= v45)
            {
              v18 = v45;
            }

            v3 = v44 - v18;
          }

          while (v30 != v9);
          v4 = v55;
          if (v9 != v28)
          {
            v48 = *(this + 4);
            v49 = v48 - v9;
            if (v48 != v9)
            {
              memmove(v28, v9, v48 - v9);
            }

            *(this + 4) = v28 + v49;
          }
        }

        v59 = 0;
        v58 = 0;
        v50 = (*(*this + 56))(this, v18, v3, &v59, &v58);
        v51 = 0;
        if (!v50 && v59 && v58)
        {
          outsize = 0;
          v57 = 0;
          if (mach_vm_read_overwrite(*(this + 4), v4, 1uLL, &v57, &outsize))
          {
            if (os_variant_has_internal_content())
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                buf.n128_u32[0] = 134217984;
                *(buf.n128_u64 + 4) = v4;
                _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Remapped bytes from target are not valid at %#llx", &buf, 0xCu);
              }

              fprintf(*MEMORY[0x1E69E9848], "Remapped bytes from target are not valid at %#llx", v4);
            }

            return 0;
          }

          else
          {
            buf.n128_u64[0] = v18;
            buf.n128_u64[1] = v3;
            v61 = v59;
            std::vector<TRangeValue<Pointer64,unsigned char *>>::insert(this + 3, v28, &buf);
            return v4 - v18 + v61;
          }
        }

        return v51;
      }

      else
      {
        v17 = a2;
        v18 = a2;
        while (1)
        {
          v19 = CSCppTaskMemory::region_at_address(this, v17, 1);
          if (v17 - v19 >= v20)
          {
            return 0;
          }

          v17 = v20 + v19;
          if (v3 + v18 <= v20 + v19)
          {
            v21 = v20 + v19;
          }

          else
          {
            v21 = v3 + v18;
          }

          if (v18 >= v19)
          {
            v18 = v19;
          }

          v3 = v21 - v18;
          if (v17 >= v7)
          {
            v8 = *(this + 3);
            v9 = *(this + 4);
            v7 = v21;
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      return a2 - v16 + v10[-1].n128_u64[1];
    }
  }

  return v4;
}

__n128 *std::vector<TRangeValue<Pointer64,unsigned char *>>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<TRangeValue<Pointer64,unsigned char *>>::emplace_back<TRangeValue<Pointer64,unsigned char *> const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    *(v6 + 16) = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = &__src[1].n128_i8[8];
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = (v6 + 24);
      v10 = *(v6 - 24);
      *(v6 + 16) = *(v6 - 8);
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_1D9799E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppTaskMemory::footprint(CSCppTaskMemory *this)
{
  v2 = *(this + 4) - *(this + 3) + *(this + 7) - *(this + 6) + 120;
  if (!CSCppMachTaskContainer::is_self_task((this + 8)))
  {
    for (i = *(this + 3); i != *(this + 4); i += 24)
    {
      v2 += *(i + 8);
    }

    for (j = *(this + 6); j != *(this + 7); j += 24)
    {
      v2 += *(j + 8);
    }
  }

  return v2;
}

uint64_t CSCppTaskMemory::to_string@<X0>(CSCppTaskMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "CSCppTaskMemory pid:", 20);
  MEMORY[0x1DA7365D0](v4, *(this + 5));
  if ((v16 & 0x10) != 0)
  {
    v6 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v6 = v12;
    }

    locale = v11[4].__locale_;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v11[1].__locale_;
    v6 = v11[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_14:
  a2[v5] = 0;
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v17);
}

void sub_1D979A118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *CSCppTaskMemory::validate(void *this)
{
  v1 = this[3];
  v2 = this[4];
  if (v1 != v2)
  {
    v3 = v1 + 3;
    v4 = this[3];
    do
    {
      if (v2 != v3 && *v4 < v3[1] + *v3 && *v3 < v4[1] + *v4)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "CSCppTaskMemory: range values must not overlap", 46);
        std::ostringstream::str[abi:ne200100](v19, &v18);
        Exception::Exception(v17, &v18);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v17);
      }

      v4 += 3;
      v3 += 3;
    }

    while (v4 != v2);
  }

  v5 = this[6];
  for (i = this[7]; v5 != i; v5 += 3)
  {
    v7 = v5[1] + *v5;
    v8 = v2;
    if (v1 != v2)
    {
      v8 = v1;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v2 - v1);
      do
      {
        v10 = v9 >> 1;
        v11 = &v8[3 * (v9 >> 1)];
        v13 = *v11;
        v12 = v11 + 3;
        v9 += ~(v9 >> 1);
        if (v13 < v7)
        {
          v8 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
    }

    if (v8 == v1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x1FFFFFFFFFFFFFFDLL;
    }

    this = &v8[v14];
    if (*v5 < *this || v7 > this[1] + *this)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "CSCppTaskMemory: retired memory must be contained by live memory", 64);
      std::ostringstream::str[abi:ne200100](v19, &v18);
      Exception::Exception(v17, &v18);
      v15 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v15, v17);
    }
  }

  return this;
}

void sub_1D979A320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<TRangeValue<Pointer64,unsigned char *>>::emplace_back<TRangeValue<Pointer64,unsigned char *> const&>(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5->n128_u64[3 * v7];
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] += 24;
  return result;
}

char *DemanglingUtilities::demangle_with_reusable_buffer(char *this, char *a2, char **a3, unint64_t *a4)
{
  if (!this)
  {
    return this;
  }

  v6 = *this;
  if (v6 != 95 && v6 != 36)
  {
    return 0;
  }

  if (this[1] == 95)
  {
    v7 = this + 1;
  }

  else
  {
    v7 = this;
  }

  status = -3;
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;
  if (a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  if (atomic_load_explicit(&call_external_swift_demangle(char const*,char *,unsigned long *,int *)::onceFlag, memory_order_acquire) != -1)
  {
    v23 = &v21;
    v22 = &v23;
    std::__call_once(&call_external_swift_demangle(char const*,char *,unsigned long *,int *)::onceFlag, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<call_external_swift_demangle(char const*,char *,unsigned long *,int *)::$_0 &&>>);
  }

  if (demanglerLibraryFunctions)
  {
    if (v9)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    v13 = demanglerLibraryFunctions(v7, v12, v10);
    if (!v13)
    {
      v16 = -2;
      goto LABEL_33;
    }

    if (v13 < v10)
    {
      goto LABEL_29;
    }

    v14 = (v13 + 1);
    v15 = malloc_type_realloc(v9, v13 + 1, 0x100004077774924uLL);
    if (v15)
    {
      v12 = v15;
      demanglerLibraryFunctions(v7, v15, v14);
      v19 = v14;
LABEL_29:
      this = v12;
      if (!a2)
      {
        return this;
      }

      goto LABEL_48;
    }
  }

  v16 = -3;
LABEL_33:
  status = v16;
  if (*v7 != 95)
  {
    return 0;
  }

  if (*v7 != 23135)
  {
    v17 = *v7 == 24415 && v7[2] == 90;
    if (!v17 && *v7 != 1516199775)
    {
      return 0;
    }
  }

  if (a2)
  {
    v18 = *a2;
  }

  else
  {
    v18 = 0;
  }

  this = __cxa_demangle(v7, v18, &v19, &status);
  v12 = this;
  if (status)
  {
    this = 0;
  }

  if (a2 && !status)
  {
LABEL_48:
    if (v12 != *a2)
    {
      *a2 = v12;
      if (a3)
      {
        *a3 = v19;
      }
    }

    return v12;
  }

  return this;
}

BOOL stringByAppendingPathComponents(char *__s1, size_t __n, const char *__source, const char *a4)
{
  if (__s1 == __source)
  {
    v7 = strnlen(__s1, __n);
  }

  else
  {
    v7 = strlcpy(__s1, __source, __n);
  }

  if (v7 < __n)
  {
    if (!v7 || __s1[v7 - 1] == 47)
    {
      return strlcpy(&__s1[v7], a4, __n - v7) < __n - v7;
    }

    if (v7 < __n - 2)
    {
      *&__s1[v7++] = 47;
      return strlcpy(&__s1[v7], a4, __n - v7) < __n - v7;
    }
  }

  return 0;
}

const char *filename_from_path(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2)
  {
    while (v1[v2] != 47)
    {
      if (!--v2)
      {
        return v1;
      }
    }

    v1 += v2 + 1;
  }

  return v1;
}

char *system_dyld_shared_cache_path(void)
{
  {
    system_dyld_shared_cache_path(void)::$_0::operator()();
  }

  return system_dyld_shared_cache_path(void)::shared_cache_dir;
}

void system_dyld_shared_cache_path(void)::$_0::operator()()
{
  v0 = dyld_shared_cache_file_path();
  if (v0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v0);
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v3 = &p_p[-1].__r_.__value_.__r.__words[2] + 7;
    while (size)
    {
      v4 = v3[size--];
      if (v4 == 47)
      {
        v5 = size + 1;
        goto LABEL_14;
      }
    }

    v5 = 0;
LABEL_14:
    std::string::basic_string(system_dyld_shared_cache_path(void)::shared_cache_dir, &__p, 0, v5, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(system_dyld_shared_cache_path(void)::shared_cache_dir, "");
  }
}

void sub_1D979AA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this, const char *a2)
{
  v7 = 0;
  pthread_threadid_np(0, &v7);
  pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  v4 = qword_1EDADA590;
  *(this + 1) = qword_1EDADA590;
  v5 = v7;
  if (v4)
  {
    v6 = CSCppCrashReporterInfoSetter::crash_reporter_owner == v7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    qword_1EDADA590 = a2;
    *this = 1;
    CSCppCrashReporterInfoSetter::crash_reporter_owner = v5;
  }

  else
  {
    *this = 0;
  }

  pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
}

void CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this)
{
  if (*this == 1)
  {
    pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
    qword_1EDADA590 = *(this + 1);
    pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  }
}

uint64_t convert_symbol_flags_to_symbolic_representation(char *__dst, size_t __size, int a3)
{
  *__dst = 0;
  if (a3)
  {
    result = strlcat(__dst, "IsFunction, ", __size);
    if ((a3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((a3 & 2) != 0)
  {
LABEL_5:
    result = strlcat(__dst, "IsDyldStub, ", __size);
  }

LABEL_6:
  if ((a3 & 4) != 0)
  {
    result = strlcat(__dst, "IsObjcMethod, ", __size);
    if ((a3 & 8) == 0)
    {
LABEL_8:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = strlcat(__dst, "IsJavaMethod, ", __size);
  if ((a3 & 0x10) == 0)
  {
LABEL_9:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = strlcat(__dst, "IsExternal, ", __size);
  if ((a3 & 0x20) == 0)
  {
LABEL_10:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = strlcat(__dst, "IsPrivateExternal, ", __size);
  if ((a3 & 0x40) == 0)
  {
LABEL_11:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = strlcat(__dst, "IsThumb, ", __size);
  if ((a3 & 0x80) == 0)
  {
LABEL_12:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = strlcat(__dst, "IsOmitFramePointer, ", __size);
  if ((a3 & 0x100) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = strlcat(__dst, "IsKnownLength, ", __size);
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = strlcat(__dst, "IsMarked, ", __size);
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = strlcat(__dst, "Lock, ", __size);
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = strlcat(__dst, "NameSourceNlist, ", __size);
  if ((a3 & 0x8000) == 0)
  {
LABEL_17:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = strlcat(__dst, "NameSourceDwarf, ", __size);
  if ((a3 & 0x10000) == 0)
  {
LABEL_18:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = strlcat(__dst, "NameSourceDwarfMIPSLinkage, ", __size);
  if ((a3 & 0x20000) == 0)
  {
LABEL_19:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = strlcat(__dst, "NameValid, ", __size);
  if ((a3 & 0x40000) == 0)
  {
LABEL_20:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = strlcat(__dst, "NameAllocated, ", __size);
  if ((a3 & 0x80000) == 0)
  {
LABEL_21:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = strlcat(__dst, "MangledNameSourceNlist, ", __size);
  if ((a3 & 0x100000) == 0)
  {
LABEL_22:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = strlcat(__dst, "MangledNameSourceDwarf, ", __size);
  if ((a3 & 0x200000) == 0)
  {
LABEL_23:
    if ((a3 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = strlcat(__dst, "MangledNameSourceDwarfMIPSLinkage, ", __size);
  if ((a3 & 0x400000) == 0)
  {
LABEL_24:
    if ((a3 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = strlcat(__dst, "MangledNameValid, ", __size);
  if ((a3 & 0x800000) == 0)
  {
LABEL_25:
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = strlcat(__dst, "MangledNameAllocated, ", __size);
  if ((a3 & 0x1000000) == 0)
  {
LABEL_26:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = strlcat(__dst, "IsObjcMethodValid, ", __size);
  if ((a3 & 0x2000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = strlcat(__dst, "NList, ", __size);
  if ((a3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((a3 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = strlcat(__dst, "Dwarf, ", __size);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_29:
    if ((a3 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    result = strlcat(__dst, "FunctionStarts, ", __size);
    if ((a3 & 0x20000000) == 0)
    {
      return result;
    }

    goto LABEL_56;
  }

LABEL_54:
  result = strlcat(__dst, "DebugMap, ", __size);
  if ((a3 & 0x10000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  if ((a3 & 0x20000000) == 0)
  {
    return result;
  }

LABEL_56:

  return strlcat(__dst, "Merged, ", __size);
}

void find_accessible_exclave_cryptex(std::string *a1@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v11, "/System/Volumes/Preboot/Cryptexes/ExclaveOS");
  std::string::basic_string[abi:ne200100]<0>(v12, "/private/preboot/Cryptexes/ExclaveOS");
  std::string::basic_string[abi:ne200100]<0>(v13, "/System/Cryptexes/ExclaveOS");
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v8, v11, &v14, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v13[i + 2]) < 0)
    {
      operator delete(v13[i]);
    }
  }

  v3 = v8;
  v4 = v9;
  while (1)
  {
    if (v3 == v4)
    {
      v6 = 0;
      a1->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_16;
    }

    v5 = v3;
    if (*(v3 + 23) < 0)
    {
      v5 = *v3;
    }

    if (!access(v5, 4))
    {
      break;
    }

    v3 += 24;
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *v3, *(v3 + 8));
  }

  else
  {
    v7 = *v3;
    a1->__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&a1->__r_.__value_.__l.__data_ = v7;
  }

  v6 = 1;
LABEL_16:
  a1[1].__r_.__value_.__s.__data_[0] = v6;
  v11[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
}

void sub_1D979AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void shared_cache_search_directories(uint64_t *a1@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  system_dyld_shared_cache_path();
  v2 = system_dyld_shared_cache_path(void)::shared_cache_dir[23];
  if (system_dyld_shared_cache_path(void)::shared_cache_dir[23] >= 0)
  {
    v3 = system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  else
  {
    v2 = *&system_dyld_shared_cache_path(void)::shared_cache_dir[8];
    v3 = *system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  v42.__r_.__value_.__r.__words[0] = v3;
  v42.__r_.__value_.__l.__size_ = v2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view const*,std::string_view const*>(a1, &v42, &v42.__r_.__value_.__r.__words[2], 1uLL);
  v34 = a1;
  std::string::basic_string[abi:ne200100]<0>(&v42, "/System/Volumes/Preboot/Cryptexes/OS");
  std::string::basic_string[abi:ne200100]<0>(&__p, "/private/preboot/Cryptexes/OS");
  std::string::basic_string[abi:ne200100]<0>(v44, "/System/Cryptexes/OS");
  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v39, &v42, &v45, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v44[i + 2]) < 0)
    {
      operator delete(v44[i]);
    }
  }

  memset(&v42, 0, sizeof(v42));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v42, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
  if (system_dyld_shared_cache_path(void)::shared_cache_dir[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *system_dyld_shared_cache_path(void)::shared_cache_dir, *&system_dyld_shared_cache_path(void)::shared_cache_dir[8]);
  }

  else
  {
    __p = *system_dyld_shared_cache_path(void)::shared_cache_dir;
  }

  size = v42.__r_.__value_.__l.__size_;
  v5 = v42.__r_.__value_.__r.__words[0];
  if (v42.__r_.__value_.__r.__words[0] == v42.__r_.__value_.__l.__size_)
  {
LABEL_41:
    std::string::basic_string[abi:ne200100]<0>(&v38, "");
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, *v5, *(v5 + 8));
      }

      else
      {
        v6 = *v5;
        v38.__r_.__value_.__r.__words[2] = *(v5 + 16);
        *&v38.__r_.__value_.__l.__data_ = v6;
      }

      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
        v7 = __p.__r_.__value_.__l.__size_;
      }

      v10 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
      v11 = v38.__r_.__value_.__r.__words[0];
      v12 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v38 : v38.__r_.__value_.__r.__words[0];
      v13 = (v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v38.__r_.__value_.__r.__words[2]) : v38.__r_.__value_.__l.__size_;
      if (!v13)
      {
        break;
      }

      if (v7 >= v13)
      {
        v14 = p_p + v7;
        v15 = v12->__r_.__value_.__s.__data_[0];
        v16 = p_p;
        do
        {
          v17 = v7 - v13;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v15, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v13))
          {
            if (v19 == v14 || v19 - p_p == -1)
            {
              break;
            }

            goto LABEL_42;
          }

          v16 = (v19 + 1);
          v7 = v14 - (v19 + 1);
        }

        while (v7 >= v13);
      }

      if (v10 < 0)
      {
        operator delete(v11);
      }

      v5 += 24;
      if (v5 == size)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v36[0] = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v36);
  v20 = v34;
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, "/System/DriverKit/System/Library/dyld/");
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v42;
    }

    else
    {
      v26 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v42.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v38, v26, v27);
    if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&shared_cache_search_directories(void)::final_driverkit_path, v28->__r_.__value_.__l.__data_, v28->__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = *&v28->__r_.__value_.__l.__data_;
      unk_1EDADA818 = *(&v28->__r_.__value_.__l + 2);
      shared_cache_search_directories(void)::final_driverkit_path = v29;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v20 = v34;
  }

  v21 = byte_1EDADA81F;
  if (byte_1EDADA81F >= 0)
  {
    v22 = &shared_cache_search_directories(void)::final_driverkit_path;
  }

  else
  {
    v21 = *(&shared_cache_search_directories(void)::final_driverkit_path + 1);
    v22 = shared_cache_search_directories(void)::final_driverkit_path;
  }

  v42.__r_.__value_.__r.__words[0] = v22;
  v42.__r_.__value_.__l.__size_ = v21;
  std::vector<std::string_view>::push_back[abi:ne200100](v20, &v42);
  find_accessible_exclave_cryptex(&v42);
  v23 = __p.__r_.__value_.__s.__data_[0];
  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    {
      std::string::basic_string[abi:ne200100]<0>(v36, "/System/ExclaveKit/System/Library/dyld/");
      if ((v37 & 0x80u) == 0)
      {
        v30 = v36;
      }

      else
      {
        v30 = v36[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v31 = v37;
      }

      else
      {
        v31 = v36[1];
      }

      v32 = std::string::append(&v42, v30, v31);
      if (SHIBYTE(v32->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&shared_cache_search_directories(void)::final_exclavekit_path, v32->__r_.__value_.__l.__data_, v32->__r_.__value_.__l.__size_);
      }

      else
      {
        v33 = *&v32->__r_.__value_.__l.__data_;
        unk_1ECB40AE8 = *(&v32->__r_.__value_.__l + 2);
        shared_cache_search_directories(void)::final_exclavekit_path = v33;
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      v20 = v34;
    }

    v24 = byte_1ECB40AEF;
    if (byte_1ECB40AEF >= 0)
    {
      v25 = &shared_cache_search_directories(void)::final_exclavekit_path;
    }

    else
    {
      v24 = *(&shared_cache_search_directories(void)::final_exclavekit_path + 1);
      v25 = shared_cache_search_directories(void)::final_exclavekit_path;
    }

    v36[0] = v25;
    v36[1] = v24;
    std::vector<std::string_view>::push_back[abi:ne200100](v20, v36);
    v23 = __p.__r_.__value_.__s.__data_[0];
  }

  if ((v23 & 1) != 0 && SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v42.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
}

void sub_1D979B508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a34 == 1 && a33 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  __p = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v35 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t shared_cache_search_directories(void)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<std::string_view>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::string_view>::allocate_at_least[abi:ne200100](a1, v10);
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

uint64_t with_primary_shared_cache_uuid_and_unslid_base_from_path(UUID *a1, uint64_t a2)
{
  v4 = UUID::null_uuid(a1);
  v5 = open(a1, 0x1000000);
  if (v5 == -1)
  {
    *&v12.st_dev = v4;
    v14 = 0;
    v11 = *(a2 + 24);
    if (!v11)
    {
      goto LABEL_13;
    }

    return (*(*v11 + 48))(v11, &v12, &v14);
  }

  else
  {
    v6 = v5;
    if (fstat(v5, &v12) || v12.st_size <= 0x227uLL || (v7 = mmap(0, 0x228uLL, 1, 1, v6, 0)) == 0 || (v8 = v7, v7 == -1) || strncmp(v7, "dyld_v", 6uLL))
    {
      v13 = 0;
      v14 = v4;
      v9 = *(a2 + 24);
      if (v9)
      {
        (*(*v9 + 48))(v9, &v14, &v13);
        return close(v6);
      }

LABEL_13:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = *(v8 + 28);
    v14 = (v8 + 88);
    std::__function::__value_func<void ()(UUID const*,unsigned long long)>::operator()[abi:ne200100](a2);
    close(v6);
    return munmap(v8, 0x228uLL);
  }
}

uint64_t is_device_exclave_enabled(void)
{
  if (atomic_load_explicit(&is_device_exclave_enabled(void)::once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&is_device_exclave_enabled(void)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<is_device_exclave_enabled(void)::$_0 &&>>);
  }

  return is_device_exclave_enabled(void)::exclaves_enabled;
}

DemanglingUtilities::CSCppReusableDemanglingBuffer *DemanglingUtilities::CSCppReusableDemanglingBuffer::CSCppReusableDemanglingBuffer(DemanglingUtilities::CSCppReusableDemanglingBuffer *this)
{
  *this = 4096;
  *(this + 1) = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  return this;
}

char *DemanglingUtilities::create_dyld_stub_name(DemanglingUtilities *this, const char *a2)
{
  v3 = strlen(this);
  v4 = malloc_type_malloc(v3 + 12, 0x100004077774924uLL);
  strcpy(v4, "DYLD-STUB$$");
  strcpy(v4 + 11, this);
  return v4;
}

BOOL DemanglingUtilities::is_simple_mangled_name(DemanglingUtilities *this, const char *a2)
{
  if ((a2 & 2) != 0)
  {
    return 0;
  }

  v2 = *this;
  if (v2 != 95 && v2 != 36)
  {
    return 1;
  }

  v3 = 0;
  if (*(this + 1) == 95)
  {
    v4 = this + 1;
  }

  else
  {
    v4 = this;
  }

  do
  {
    v5 = strlen((&off_1E8584440)[v3]);
    v6 = strncmp(v4, (&off_1E8584440)[v3], v5);
    result = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = v3 == 12;
    v3 += 2;
  }

  while (!v8);
  return result;
}

_BYTE *DemanglingUtilities::simple_demangle(_BYTE *this, const char *a2)
{
  if ((a2 & 0x380000) != 0 && *this == 95)
  {
    ++this;
  }

  return this;
}

uint64_t *std::vector<std::string_view>::__init_with_size[abi:ne200100]<std::string_view const*,std::string_view const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string_view>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D979BB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string_view>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::string_view>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::string_view>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int8 *std::__call_once_proxy[abi:ne200100]<std::tuple<call_external_swift_demangle(char const*,char *,unsigned long *,int *)::$_0 &&>>()
{
  result = getenv("CS_DO_NOT_DEMANGLE_SWIFT");
  if (!result || ((v1 = *result - 48, v2 = v1 > 0x3E, v3 = (1 << v1) & 0x4000000040000001, !v2) ? (v4 = v3 == 0) : (v4 = 1), !v4))
  {
    result = dlopen("/usr/lib/swift/libswiftDemangle.dylib", 1);
    if (result || (result = dlopen("/System/Library/PrivateFrameworks/Swift/libswiftDemangle.dylib", 1)) != 0)
    {
      result = dlsym(result, "swift_demangle_getSimplifiedDemangledName");
      demanglerLibraryFunctions = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(UUID const*,unsigned long long)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<is_device_exclave_enabled(void)::$_0 &&>>()
{
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kern.exclaves_status", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4 == 1;
  }

  v2 = v1;
  is_device_exclave_enabled(void)::exclaves_enabled = v2;
  return result;
}

uint64_t CSSymbolicatorIsKernelSymbolicator(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 24))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorIsTaskValid(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 32))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetPid(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32)) + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetTask(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return *((*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32)) + 8);
  }

  else
  {
    return 0;
  }
}

UUID *CSSymbolicatorGetSharedCacheUUID(char a1, uint64_t a2)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v2 = (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 48))(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32));
  if (UUID::is_null(v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CSSymbolicatorGetSharedCacheBaseAddress(char a1, uint64_t a2)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return (*(**((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 64))();
  }

  else
  {
    return 0;
  }
}

uint64_t CSSymbolicatorGetTaskIsTranslated(char a1, uint64_t a2)
{
  v2 = a1 & 7 | (8 * (a2 & 3));
  if (v2)
  {
    LOBYTE(v2) = *(*((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32) + 16);
  }

  return v2 & 1;
}

uint64_t CSSymbolicatorForeachSymbolOwnerWithUUIDAtTime(char a1, uint64_t a2, CFUUIDRef uuid, uint64_t a4, uint64_t a5)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v10 = CFUUIDGetUUIDBytes(uuid);
  return CSSymbolicatorForeachSymbolOwnerWithCFUUIDBytesAtTime(a1, a2, &v10, a4, a5);
}

uint64_t CSSymbolicatorGetSymbolOwnerWithUUIDAtTime(char a1, uint64_t a2, const __CFUUID *a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CSSymbolicatorGetSymbolOwnerWithUUIDAtTime_block_invoke;
  v6[3] = &unk_1E85844B8;
  v6[4] = &v7;
  if (CSSymbolicatorForeachSymbolOwnerWithUUIDAtTime(a1, a2, a3, a4, v6) == 1)
  {
    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1D979C0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __CSSymbolicatorGetSymbolOwnerWithUUIDAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime_block_invoke;
  v6[3] = &unk_1E85844E0;
  v6[4] = &v7;
  if (CSSymbolicatorForeachSymbolOwnerWithCFUUIDBytesAtTime(a1, a2, a3, a4, v6) == 1)
  {
    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1D979C208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t WriteMMapArchiveToDirectory(CSCppSymbolOwner *a1, TMMapArchive *a2, const char *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  CFUUIDBytesToString((a2 + 52), __s, 0x28uLL);
  v6 = strlen(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__dst, a3, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  p_dst = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (p_dst->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(&__dst, 47);
  }

  v10 = strlen(__s);
  std::string::append(&__dst, __s, v10);
  std::string::append(&__dst, ".symbolsarchive", 0xFuLL);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__dst;
  }

  else
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
  }

  v12 = open(v11, 16777730, 432);
  v13 = v12;
  if (v12 == -1)
  {
    goto LABEL_17;
  }

  if (fstat(v12, &v20) == -1)
  {
    goto LABEL_17;
  }

  v14 = *(a2 + 1);
  if (v20.st_size == v14 || a1 && v20.st_size && (*(a1 + 110) & 4) == 0)
  {
    goto LABEL_17;
  }

  v19 = 0;
  if (!*(a2 + 20))
  {
    v18 = TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2, v14, v13, &v19);
    goto LABEL_34;
  }

  if (!TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2, 4uLL, v13, &v19) || (__buf = *(a2 + 1) - *(a2 + 20), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&__buf, 4uLL, v13, &v19)) || !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 8, 0x28uLL, v13, &v19) || (v23 = TMMapArchive::calculate_checksum(a2) - *(a2 + 20), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&v23, 4uLL, v13, &v19)) || !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 52, 0x18uLL, v13, &v19) || (v22 = 0, !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(&v22, 8uLL, v13, &v19)) || (v17 = (4 * *(a2 + 4)) + TMMapArchive::by_mangled_name_map(a2), !TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>(a2 + 84, v17 - (a2 + 84), v13, &v19)))
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v18 = TMMapArchiveSerialization::_invoke_supplied_callback<WriteMMapArchiveToDirectory(CSCppSymbolOwner *,TMMapArchive &,char const*)::$_1>((v17 + *(a2 + 20)), a2 + v14 - v17 - *(a2 + 20), v13, &v19);
LABEL_34:
  v15 = v18;
LABEL_18:
  close(v13);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1D979C55C(_Unwind_Exception *a1)
{
  close(v1);
  if (*(v2 - 129) < 0)
  {
    operator delete(*(v2 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t AddMmapArchiveToDirectory(CSCppSymbolOwner *a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 110) & 1) == 0 || (UUID::is_null((a1 + 1)) & 1) != 0 || !*(a1 + 10))
  {
    return 0;
  }

  v6 = CSCppSymbolOwner::data(a1, v4, v5);
  if ((*(*v6 + 24))(v6) == 4)
  {
    v7 = v6[11];
    if (v7)
    {
      WriteMMapArchiveToDirectory(a1, v7, a2);
      return 1;
    }

    return 0;
  }

  if ((*(*v6 + 24))(v6) != 1)
  {
    if ((*(*v6 + 24))(v6) != 2)
    {
      return 0;
    }

    CFUUIDBytesToString(a1 + 1, v24, 0x28uLL);
    v11 = TRawSymbolOwnerData<Pointer64>::mutable_sorted_symbols(v6);
    if (*v11 != v11[1])
    {
      CSCppAddressSet::CSCppAddressSet(v21);
      v13 = *(a1 + 4);
      v12 = *(a1 + 5);
      if (v12 - v13 == 32)
      {
        if (v13 == v12)
        {
          v13 = *(a1 + 5);
        }

        else
        {
          do
          {
            v23 = *v13;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v22, &v23, &v23);
            v13 += 32;
          }

          while (v13 != v12);
          v13 = *(a1 + 4);
          v12 = *(a1 + 5);
        }
      }

      if (v12 - v13 == 32)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(a1, v6, v19, 0);
      goto LABEL_30;
    }

LABEL_19:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_31;
  }

  CFUUIDBytesToString(a1 + 1, v24, 0x28uLL);
  v8 = TRawSymbolOwnerData<Pointer32>::mutable_sorted_symbols(v6);
  if (*v8 == v8[1])
  {
    goto LABEL_19;
  }

  CSCppAddressSet::CSCppAddressSet(v21);
  v10 = *(a1 + 4);
  v9 = *(a1 + 5);
  if (v9 - v10 == 32)
  {
    if (v10 == v9)
    {
      v10 = *(a1 + 5);
    }

    else
    {
      do
      {
        v23 = *v10;
        std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v22, &v23, &v23);
        v10 += 32;
      }

      while (v10 != v9);
      v10 = *(a1 + 4);
      v9 = *(a1 + 5);
    }
  }

  if (v9 - v10 == 32)
  {
    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

  mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(a1, v6, v17, 0);
LABEL_30:
  v16 = mmap_archive_arch;
  v14 = mmap_archive_arch != 0;
  v15 = 4 * v14;
  CSCppAddressSet::~CSCppAddressSet(v21);
LABEL_31:
  if (v16)
  {
    if (v15 == 4)
    {
      WriteMMapArchiveToDirectory(a1, v16, a2);
      if (!v14)
      {
        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v16, v16[1]);
    return 1;
  }

  return 0;
}

void sub_1D979C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CSCppAddressSet::~CSCppAddressSet(va);
  _Unwind_Resume(a1);
}

void CSCppAddMmapArchivesFromSymbolicatorToDirectory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __CSCppAddMmapArchivesFromSymbolicatorToDirectory_block_invoke;
  v3[3] = &__block_descriptor_tmp_17;
  v3[4] = a3;
  CSCppForEachMMapArchiveInSymbolicator(a1, a2, v3);
}

void CSCppForEachMMapArchiveInSymbolicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSCppSymbolicator::get_symbol_owners(&v12, (a2 & 0xFFFFFFFFFFFFFFFCLL));
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v4 = v12;
  for (i = v13; v4 != i; v4 += 2)
  {
    if (!std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(v10, (*v4 + 16)))
    {
      v6 = v4[1];
      v8 = *v4;
      v9 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (*(a3 + 16))(a3, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v7)
      {
        std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::__emplace_unique_key_args<UUID,UUID const&>(v10, (*v4 + 16), (*v4 + 16));
      }
    }
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v10);
  *&v10[0] = &v12;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1D979CA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a11);
  a11 = &a16;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t CSCppAddMmapArchivesToDirectory(uint64_t result, uint64_t a2, char *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = (result + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      result = AddMmapArchiveToDirectory((v6 & 0xFFFFFFFFFFFFFFFCLL), a3);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _findPrimarySharedCacheInFlatbufferSymbolicator(const FlatbufferSymbols::Symbolicator *a1)
{
  v3 = (a1 - *a1);
  if (*v3 < 0xBu)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v9[3] = v1;
  v9[4] = v2;
  v5 = (a1 + v4 + *(a1 + v4));
  if (*v5 == 1)
  {
    return v5 + v5[1] + 4;
  }

  v7 = (v5 + (4 * *v5) + 4);
  v8 = v5 + 1;
  _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>(&v8, &v7, "dyld_shared_cache", 0x11uLL, v9);
  if (v9[0] == (v5 + (4 * *v5) + 4))
  {
    return 0;
  }

  else
  {
    return v9[0] + *v9[0];
  }
}

uint64_t _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>@<X0>(uint64_t result@<X0>, unsigned int **a2@<X1>, const char *a3@<X2>, size_t a4@<X3>, unsigned int **a5@<X8>)
{
  v6 = *result;
  for (i = *a2; v6 != i; ++v6)
  {
    result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata((v6 + *v6));
    if (result)
    {
      v10 = (result - *result);
      if (*v10 >= 0x13u)
      {
        v11 = v10[9];
        if (v11)
        {
          result = strncmp((result + v11 + *(result + v11) + 4), a3, a4);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  *a5 = v6;
  return result;
}

char *_findAOTSharedCacheInFlatbufferSymbolicator(int *a1)
{
  v3 = (a1 - *a1);
  if (*v3 < 0xBu)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v9[3] = v1;
  v9[4] = v2;
  v5 = (a1 + v4 + *(a1 + v4));
  v7 = (v5 + (4 * *v5) + 4);
  v8 = v5 + 1;
  _findSharedCacheWithNamePrefix<flatbuffers::VectorIterator<flatbuffers::Offset<FlatbufferSymbols::SharedCache>,FlatbufferSymbols::SharedCache const*,unsigned char const*,unsigned int>>(&v8, &v7, "aot_shared_cache", 0x10uLL, v9);
  if (v9[0] == (v5 + (4 * *v5) + 4))
  {
    return 0;
  }

  else
  {
    return v9[0] + *v9[0];
  }
}

void _assignArchivesToSymbolOwners(void *a1, TMMapArchive *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((UUID::is_null(v6 + 1) & 1) == 0 && std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(a1, &(*v6)[16]))
      {
        CSCppSymbolOwner::data_claim_empty(v6, a2, v7);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  for (i = a1[2]; i; i = *i)
  {
    CSCppMMapArchiveCache::release_archive(i[4], a2);
  }
}

void sub_1D979CD6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double CSCppSignatureEncodeSymbolicator<__CFData *>(const __CFData *a1, int a2, int a3, int a4, int a5)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + 24);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  *&result = 0x1FF01FF02;
  *MutableBytePtr = 0x1FF01FF02;
  *(MutableBytePtr + 2) = a2;
  *(MutableBytePtr + 3) = a3;
  *(MutableBytePtr + 4) = a4;
  *(MutableBytePtr + 5) = a5;
  return result;
}

char *CSCppSignatureEncodeSymbolOwner<__CFData *>(const __CFData *a1, _OWORD *a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, const char *a8, void *a9, uint64_t a10)
{
  v11 = a7;
  v17 = HIDWORD(a7);
  Length = CFDataGetLength(a1);
  v19 = strlen(a8);
  CFDataSetLength(a1, Length + (v19 & 0xFFFFFFFFFFFFFFF8) + ((a9[1] - *a9) & 0x1FFFFFFFE0) + 64);
  v20 = &CFDataGetMutableBytePtr(a1)[Length];
  *v20 = *a2;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4 & 0xFFFBFFFF;
  *(v20 + 3) = a5;
  *(v20 + 4) = a6;
  *(v20 + 10) = v11;
  *(v20 + 11) = v17;
  *(v20 + 12) = (a9[1] - *a9) >> 5;
  v21 = (strlen(a8) & 0xFFFFFFF8) + 8;
  *(v20 + 13) = v21;
  result = strcpy(v20 + 56, a8);
  v23 = *a9;
  if (*a9 < a9[1])
  {
    result += v21;
    do
    {
      v24 = v23[3];
      if (!v24)
      {
        v24 = v23[2];
      }

      v25 = strncpy(result, v24, 0x10uLL);
      *(v25 + 2) = *v23 + a10;
      *(v25 + 3) = v23[1];
      result = v25 + 32;
      v23 += 4;
    }

    while (v23 < a9[1]);
  }

  return result;
}

void *CSCppSignatureEncodeMMapArchive<__CFData *>(const __CFData *a1, _DWORD *a2)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + ((a2[1] + 23) & 0xFFFFFFF8));
  v5 = &CFDataGetMutableBytePtr(a1)[Length];
  *v5 = 0x7A1B22B1ALL;
  v6 = a2[1];
  *(v5 + 2) = -1582159078;
  *(v5 + 3) = (v6 + 23) & 0xFFFFFFF8;

  return memcpy(v5 + 16, a2, v6);
}

UInt8 *CSCppSignatureEncodeOptionalDataHeader<__CFData *>(const __CFData *a1, uint64_t a2)
{
  Length = CFDataGetLength(a1);
  CFDataSetLength(a1, Length + 8);
  result = CFDataGetMutableBytePtr(a1);
  *&result[Length] = (a2 << 32) | 0xC0FFEE;
  return result;
}

void CSCppSignatureEncodeOptionalData<__CFData *>(const __CFData *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  CSCppSignatureEncodeOptionalDataHeader<__CFData *>(a1, a2);
  Length = CFDataGetLength(a1);
  v16 = *a3;
  v49 = *a5;
  v50 = v16;
  v41 = 0;
  v42 = &v41;
  v43 = 0x4002000000;
  v44 = __Block_byref_object_copy__29;
  v45 = __Block_byref_object_dispose__30;
  __p = 0;
  v47 = 0;
  v48 = 0;
  v36 = MEMORY[0x1E69E9820];
  v37 = 0x40000000;
  v38 = ___ZL31_addAotImageInfosToOptionalDataR37SignatureOptionalDataEncodingVersion310_CSTypeRefP8__CFDatam_block_invoke;
  v39 = &unk_1E8584638;
  v40 = &v41;
  CSSymbolicatorForEachAotImage();
  v17 = a6;
  v19 = v42[5];
  v18 = v42[6];
  Task = CSSymbolicatorGetTask(a7, a8);
  LOBYTE(a3) = CSTaskIsTranslated(Task);
  v21 = v18 - v19;
  v22 = (v18 - v19 + 56);
  v23 = v22 + Length;
  CFDataSetLength(a1, v22 + Length);
  v24 = &CFDataGetMutableBytePtr(a1)[Length];
  v25 = v49;
  *v24 = v50;
  *(v24 + 2) = a4;
  *(v24 + 24) = v25;
  *(v24 + 5) = v17;
  v24[48] = a3;
  *(v24 + 13) = -1431655765 * (v21 >> 5);
  memcpy(v24 + 56, v42[5], v22 - 56);
  _Block_object_dispose(&v41, 8);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x4002000000;
  v44 = __Block_byref_object_copy__11;
  v45 = __Block_byref_object_dispose__11;
  __p = 0;
  v47 = 0;
  v48 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  LODWORD(v39) = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = ___Z32CSCppSignatureEncodeOptionalDataIP8__CFDataEvT_jPKhyS4_y10_CSTypeRef_block_invoke;
  v35[3] = &unk_1E8584528;
  v35[4] = &v36;
  v35[5] = &v41;
  CSSymbolicatorForeachSymbolOwnerAtTime(a7, a8, 0x8000000000000001, v35);
  v26 = ((*(v37 + 24) - 1) | 7) + 1;
  CFDataSetLength(a1, v23 + v26 + 4);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  *&MutableBytePtr[v23] = v26;
  v28 = &MutableBytePtr[v23 + 4];
  v29 = v42[5];
  v30 = v42[6];
  while (v29 != v30)
  {
    v31 = *v29++;
    v32 = strlen(v31) + 1;
    memcpy(v28, v31, v32);
    v28 += v32;
  }

  v33 = v26 - *(v37 + 24);
  if (v33)
  {
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    bzero(v28, v34);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v41, 8);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_1D979D3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___Z32CSCppSignatureEncodeOptionalDataIP8__CFDataEvT_jPKhyS4_y10_CSTypeRef_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  Version = CSSymbolOwnerGetVersion(a2, a3);
  if (Version)
  {
    v5 = Version;
  }

  else
  {
    v5 = "";
  }

  *(*(*(a1 + 32) + 8) + 24) += strlen(v5) + 1;
  v6 = *(*(a1 + 40) + 8);
  v8 = v6[6];
  v7 = v6[7];
  if (v8 >= v7)
  {
    v10 = v6[5];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::allocator<char const*>::allocate_at_least[abi:ne200100]((v6 + 5), v14);
    }

    v15 = (8 * v11);
    *v15 = v5;
    v9 = 8 * v11 + 8;
    v16 = v6[5];
    v17 = v6[6] - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = v6[5];
    v6[5] = v18;
    v6[6] = v9;
    v6[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = v5;
    v9 = (v8 + 1);
  }

  v6[6] = v9;
}

uint64_t CSCppSignatureDecodeSymbolicator<__CFData const*>(const __CFData *a1, unint64_t *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v16 = *a2 + 24;
  if (v16 > Length)
  {
    return 0;
  }

  v17 = &BytePtr[*a2];
  v23 = *(v17 + 1);
  v22 = *(v17 + 2);
  v21 = *(v17 + 3);
  v20 = *(v17 + 4);
  v19 = *(v17 + 5);
  if (*v17 != -16646398)
  {
    return 0;
  }

  *a3 = v23;
  if (v23 > 1)
  {
    return 0;
  }

  *a4 = v22;
  *a5 = v21;
  *a6 = v20;
  *a7 = v19;
  *a2 = v16;
  return 1;
}

uint64_t CSCppDetermineSignatureType<__CFData const*>(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!strncmp(BytePtr + 4, "SYMB", 4uLL))
  {
    return 2;
  }

  else
  {
    return *BytePtr == -16646398;
  }
}

uint64_t CSCppSignatureDecodeSymbolOwner<__CFData const*>(const __CFData *a1, unint64_t *a2, const UInt8 **a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7, unint64_t *a8, void *a9, const void **a10)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v20 = *a2;
  if (*a2 + 64 > Length)
  {
    return 0;
  }

  v21 = &BytePtr[v20];
  v22 = *&BytePtr[v20 + 48];
  v23 = v20 + *(v21 + 13) + 32 * v22 + 56;
  if (v23 > Length)
  {
    return 0;
  }

  v40 = v23;
  *a3 = v21;
  *a4 = *(v21 + 4);
  *a5 = *(v21 + 5);
  *a6 = *(v21 + 3);
  *a7 = *(v21 + 4);
  *a8 = *(v21 + 10) | (*(v21 + 11) << 32);
  v25 = v21 + 56;
  *a9 = v21 + 56;
  if ((*a7 & 0x8000000000000000) != 0)
  {
    *a7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a5 &= ~0x80000000;
  v26 = *(v21 + 13);
  std::vector<CSCppSegmentRange>::reserve(a10, v22);
  if (v22)
  {
    v27 = &v25[v26];
    v28 = a10[1];
    do
    {
      v29 = *(v27 + 2);
      v30 = *(v27 + 3);
      v31 = a10[2];
      if (v28 >= v31)
      {
        v32 = (v28 - *a10) >> 5;
        if ((v32 + 1) >> 59)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v33 = v31 - *a10;
        v34 = v33 >> 4;
        if (v33 >> 4 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFE0)
        {
          v35 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](a10, v35);
        }

        v36 = (32 * v32);
        *v36 = v29;
        v36[1] = v30;
        v36[2] = CSCppNamedRange::unique_macho_string(v27, "SEGMENT", 0x10);
        v36[3] = CSCppNamedRange::unique_macho_string(v27, 0, 0x10);
        v28 = (v36 + 4);
        v37 = a10[1] - *a10;
        v38 = v36 - v37;
        memcpy(v36 - v37, *a10, v37);
        v39 = *a10;
        *a10 = v38;
        a10[1] = v36 + 4;
        a10[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v28 = v29;
        *(v28 + 1) = v30;
        *(v28 + 2) = CSCppNamedRange::unique_macho_string(v27, "SEGMENT", 0x10);
        *(v28 + 3) = CSCppNamedRange::unique_macho_string(v27, 0, 0x10);
        v28 += 32;
        a10[1] = v28;
      }

      a10[1] = v28;
      v27 = (v27 + 32);
      LODWORD(v22) = v22 - 1;
    }

    while (v22);
  }

  *a2 = v40;
  return 1;
}

int32x4_t *CSCppSignatureDecodeMMapArchive<__CFData const*>(const __CFData *a1, void *a2, BOOL *a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (*a2 + 16 > Length)
  {
    return 0;
  }

  result = MMapArchiveEncoding::mmap_archive(&BytePtr[*a2], Length - *a2, a3);
  if (result)
  {
    *a2 += (result->i32[1] + 23) & 0xFFFFFFF8;
  }

  return result;
}

int32x4_t *MMapArchiveEncoding::mmap_archive(MMapArchiveEncoding *this, unint64_t a2, BOOL *a3)
{
  if (*(this + 3) > a2)
  {
    return 0;
  }

  if (*this == -1582159078)
  {
    v6 = *(this + 2);
    if (v6 <= 6)
    {
      result = MMapArchiveEncoding::_migrate_legacy_archive(this);
      if (!result)
      {
        return result;
      }

      *a3 = 1;
LABEL_9:
      if (*(this + 2) == -1582159078)
      {
        return result;
      }

      return 0;
    }

    *a3 = 0;
    if (v6 == 7)
    {
      result = (this + 16);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t _CSCppAddMMapArchiveToSignatureFromCSCppSymbolOwner<__CFData *>(char **a1, const __CFData *a2, int a3)
{
  v6 = CSCppSymbolOwner::data(a1, a2, a3);
  if ((atomic_load_explicit(v6 + 3, memory_order_acquire) & 0x80) != 0)
  {
    return 0;
  }

  v7 = v6;
  if ((*(*v6 + 24))(v6) != 4)
  {
    if ((*(*v7 + 24))(v7) == 1)
    {
      CSCppAddressSet::CSCppAddressSet(v18);
      v10 = a1[4];
      v9 = a1[5];
      if (v9 - v10 == 32)
      {
        if (v10 == v9)
        {
          v10 = a1[5];
        }

        else
        {
          do
          {
            v20 = *v10;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v19, &v20, &v20);
            v10 += 32;
          }

          while (v10 != v9);
          v10 = a1[4];
          v9 = a1[5];
        }
      }

      if (v9 - v10 == 32)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(a1, v7, v14, a3);
LABEL_26:
      v17 = mmap_archive_arch;
      CSCppAddressSet::~CSCppAddressSet(v18);
      if (v17)
      {
        if (v17[4])
        {
          CSCppSignatureEncodeMMapArchive<__CFData *>(a2, v17);
        }

        mach_vm_deallocate(*MEMORY[0x1E69E9A60], v17, v17[1]);
      }

      return 1;
    }

    if ((*(*v7 + 24))(v7) == 2)
    {
      CSCppAddressSet::CSCppAddressSet(v18);
      v12 = a1[4];
      v11 = a1[5];
      if (v11 - v12 == 32)
      {
        if (v12 == v11)
        {
          v12 = a1[5];
        }

        else
        {
          do
          {
            v20 = *v12;
            std::__tree<TRange<Pointer64>>::__emplace_unique_key_args<TRange<Pointer64>,TRange<Pointer64> const&>(v19, &v20, &v20);
            v12 += 32;
          }

          while (v12 != v11);
          v12 = a1[4];
          v11 = a1[5];
        }
      }

      if (v11 - v12 == 32)
      {
        v16 = v18;
      }

      else
      {
        v16 = 0;
      }

      mmap_archive_arch = CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(a1, v7, v16, a3);
      goto LABEL_26;
    }

    return 0;
  }

  v8 = *(v7 + 11);
  if (v8[4])
  {
    CSCppSignatureEncodeMMapArchive<__CFData *>(a2, v8);
  }

  return 1;
}